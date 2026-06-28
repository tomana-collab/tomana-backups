


SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


CREATE EXTENSION IF NOT EXISTS "pg_cron" WITH SCHEMA "pg_catalog";






COMMENT ON SCHEMA "public" IS 'standard public schema';



CREATE EXTENSION IF NOT EXISTS "pg_net" WITH SCHEMA "public";






CREATE EXTENSION IF NOT EXISTS "pg_stat_statements" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgcrypto" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "supabase_vault" WITH SCHEMA "vault";






CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA "extensions";






CREATE TYPE "public"."app_role" AS ENUM (
    'admin',
    'employee',
    'client',
    'freelancer',
    'client_employee'
);


ALTER TYPE "public"."app_role" OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."can_access_business"("_user_id" "uuid", "_business_id" "uuid") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    SET "search_path" TO 'public'
    AS $$
  SELECT public.has_role(_user_id, 'admin'::app_role)
      OR public.has_role(_user_id, 'employee'::app_role)
      OR (_business_id IS NOT NULL AND _business_id = ANY(public.get_allowed_business_ids(_user_id)))
$$;


ALTER FUNCTION "public"."can_access_business"("_user_id" "uuid", "_business_id" "uuid") OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."cleanup_client_employee_user"() RETURNS "trigger"
    LANGUAGE "plpgsql" SECURITY DEFINER
    SET "search_path" TO 'public'
    AS $$
DECLARE _other_role_count int;
BEGIN
  DELETE FROM public.user_roles WHERE user_id = OLD.user_id AND role = 'client_employee'::app_role;
  SELECT COUNT(*) INTO _other_role_count FROM public.user_roles WHERE user_id = OLD.user_id;
  IF _other_role_count = 0 THEN
    DELETE FROM auth.users WHERE id = OLD.user_id;
  END IF;
  RETURN OLD;
END$$;


ALTER FUNCTION "public"."cleanup_client_employee_user"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."get_allowed_business_ids"("_user_id" "uuid") RETURNS "uuid"[]
    LANGUAGE "plpgsql" STABLE SECURITY DEFINER
    SET "search_path" TO 'public'
    AS $$
DECLARE
  _client_id uuid;
  _employee_bids uuid[];
BEGIN
  SELECT id INTO _client_id FROM public.clients WHERE user_id = _user_id LIMIT 1;
  IF _client_id IS NOT NULL THEN
    RETURN COALESCE(ARRAY(SELECT id FROM public.businesses WHERE client_id = _client_id), '{}');
  END IF;

  SELECT client_id, business_ids INTO _client_id, _employee_bids
  FROM public.client_employees WHERE user_id = _user_id LIMIT 1;

  IF _client_id IS NOT NULL THEN
    IF _employee_bids IS NULL OR array_length(_employee_bids, 1) IS NULL THEN
      RETURN COALESCE(ARRAY(SELECT id FROM public.businesses WHERE client_id = _client_id), '{}');
    END IF;
    RETURN _employee_bids;
  END IF;
  RETURN '{}'::uuid[];
END$$;


ALTER FUNCTION "public"."get_allowed_business_ids"("_user_id" "uuid") OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."get_freelancer_task_entities"("_task_ids" "uuid"[]) RETURNS TABLE("task_id" "uuid", "client_name" "text", "business_name" "text")
    LANGUAGE "sql" STABLE SECURITY DEFINER
    SET "search_path" TO 'public'
    AS $$
  SELECT
    ft.id AS task_id,
    c.name AS client_name,
    b.name AS business_name
  FROM public.freelancer_tasks ft
  JOIN public.clients c ON c.id = ft.client_id
  LEFT JOIN public.businesses b ON b.id = ft.business_id
  WHERE ft.id = ANY(COALESCE(_task_ids, '{}'::uuid[]))
    AND (
      ft.freelancer_user_id = auth.uid()
      OR public.has_role(auth.uid(), 'admin'::public.app_role)
      OR public.has_role(auth.uid(), 'employee'::public.app_role)
    );
$$;


ALTER FUNCTION "public"."get_freelancer_task_entities"("_task_ids" "uuid"[]) OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."get_owner_client_id"("_user_id" "uuid") RETURNS "uuid"
    LANGUAGE "sql" STABLE SECURITY DEFINER
    SET "search_path" TO 'public'
    AS $$
  SELECT id FROM public.clients WHERE user_id = _user_id
  UNION ALL
  SELECT client_id FROM public.client_employees WHERE user_id = _user_id
  LIMIT 1
$$;


ALTER FUNCTION "public"."get_owner_client_id"("_user_id" "uuid") OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."get_public_agency_info"() RETURNS TABLE("company_name" "text", "phone" "text", "website" "text")
    LANGUAGE "sql" STABLE SECURITY DEFINER
    SET "search_path" TO 'public'
    AS $$
  SELECT company_name, phone, website
  FROM public.agency_settings
  LIMIT 1;
$$;


ALTER FUNCTION "public"."get_public_agency_info"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."get_safe_team_details"("_user_ids" "uuid"[]) RETURNS TABLE("td_user_id" "uuid", "td_position" "text", "td_specialization" "text", "td_status" "text", "td_currency" "text")
    LANGUAGE "sql" STABLE SECURITY DEFINER
    SET "search_path" TO 'public'
    AS $$
  SELECT td.user_id, td.position, td.specialization, td.status, td.currency
  FROM public.team_details td
  WHERE td.user_id = ANY(_user_ids)
    AND (
      public.has_role(auth.uid(), 'admin'::app_role)
      OR public.has_role(auth.uid(), 'employee'::app_role)
    );
$$;


ALTER FUNCTION "public"."get_safe_team_details"("_user_ids" "uuid"[]) OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."get_team_member_position"("_user_id" "uuid") RETURNS TABLE("member_position" "text", "member_specialization" "text", "member_status" "text")
    LANGUAGE "sql" STABLE SECURITY DEFINER
    SET "search_path" TO 'public'
    AS $$
  SELECT td.position, td.specialization, td.status
  FROM public.team_details td
  WHERE td.user_id = _user_id
    AND EXISTS (
      SELECT 1
      FROM public.freelancer_tasks ft
      JOIN public.clients c ON c.id = ft.client_id
      WHERE ft.freelancer_user_id = _user_id
        AND c.user_id = auth.uid()
    )
  LIMIT 1;
$$;


ALTER FUNCTION "public"."get_team_member_position"("_user_id" "uuid") OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."handle_new_user"() RETURNS "trigger"
    LANGUAGE "plpgsql" SECURITY DEFINER
    SET "search_path" TO 'public'
    AS $$
BEGIN
  INSERT INTO public.profiles (user_id, full_name, email)
  VALUES (NEW.id, COALESCE(NEW.raw_user_meta_data->>'full_name', ''), NEW.email)
  ON CONFLICT (user_id) DO NOTHING;
  RETURN NEW;
END;
$$;


ALTER FUNCTION "public"."handle_new_user"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."has_role"("_user_id" "uuid", "_role" "public"."app_role") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    SET "search_path" TO 'public'
    AS $$
  SELECT EXISTS (
    SELECT 1 FROM public.user_roles WHERE user_id = _user_id AND role = _role
  )
$$;


ALTER FUNCTION "public"."has_role"("_user_id" "uuid", "_role" "public"."app_role") OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."is_client_employee"("_user_id" "uuid") RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    SET "search_path" TO 'public'
    AS $$
  SELECT EXISTS (SELECT 1 FROM public.client_employees WHERE user_id = _user_id)
$$;


ALTER FUNCTION "public"."is_client_employee"("_user_id" "uuid") OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."rls_auto_enable"() RETURNS "event_trigger"
    LANGUAGE "plpgsql" SECURITY DEFINER
    SET "search_path" TO 'pg_catalog'
    AS $$
DECLARE
  cmd record;
BEGIN
  FOR cmd IN
    SELECT *
    FROM pg_event_trigger_ddl_commands()
    WHERE command_tag IN ('CREATE TABLE', 'CREATE TABLE AS', 'SELECT INTO')
      AND object_type IN ('table','partitioned table')
  LOOP
     IF cmd.schema_name IS NOT NULL AND cmd.schema_name IN ('public') AND cmd.schema_name NOT IN ('pg_catalog','information_schema') AND cmd.schema_name NOT LIKE 'pg_toast%' AND cmd.schema_name NOT LIKE 'pg_temp%' THEN
      BEGIN
        EXECUTE format('alter table if exists %s enable row level security', cmd.object_identity);
        RAISE LOG 'rls_auto_enable: enabled RLS on %', cmd.object_identity;
      EXCEPTION
        WHEN OTHERS THEN
          RAISE LOG 'rls_auto_enable: failed to enable RLS on %', cmd.object_identity;
      END;
     ELSE
        RAISE LOG 'rls_auto_enable: skip % (either system schema or not in enforced list: %.)', cmd.object_identity, cmd.schema_name;
     END IF;
  END LOOP;
END;
$$;


ALTER FUNCTION "public"."rls_auto_enable"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."update_lead_status_updated_at"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    SET "search_path" TO 'public'
    AS $$
BEGIN
    IF NEW.status IS DISTINCT FROM OLD.status THEN
        NEW.status_updated_at = now();
    END IF;
    RETURN NEW;
END;
$$;


ALTER FUNCTION "public"."update_lead_status_updated_at"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."update_updated_at_column"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    SET "search_path" TO 'public'
    AS $$
BEGIN
  NEW.updated_at = now();
  RETURN NEW;
END;
$$;


ALTER FUNCTION "public"."update_updated_at_column"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."validate_client_employee_businesses"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    SET "search_path" TO 'public'
    AS $$
DECLARE _bad_count int;
BEGIN
  IF NEW.business_ids IS NOT NULL AND array_length(NEW.business_ids,1) IS NOT NULL THEN
    SELECT COUNT(*) INTO _bad_count
    FROM unnest(NEW.business_ids) AS bid
    WHERE NOT EXISTS (SELECT 1 FROM public.businesses b WHERE b.id = bid AND b.client_id = NEW.client_id);
    IF _bad_count > 0 THEN
      RAISE EXCEPTION 'business_ids must all belong to client_id %', NEW.client_id;
    END IF;
  END IF;
  RETURN NEW;
END$$;


ALTER FUNCTION "public"."validate_client_employee_businesses"() OWNER TO "postgres";

SET default_tablespace = '';

SET default_table_access_method = "heap";


CREATE TABLE IF NOT EXISTS "public"."admin_audit_log" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "admin_user_id" "uuid" NOT NULL,
    "action" "text" NOT NULL,
    "target_type" "text",
    "target_id" "uuid",
    "target_label" "text",
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."admin_audit_log" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."agency_settings" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "user_id" "uuid" NOT NULL,
    "company_name" "text" DEFAULT ''::"text" NOT NULL,
    "email" "text" DEFAULT ''::"text" NOT NULL,
    "phone" "text" DEFAULT ''::"text" NOT NULL,
    "website" "text" DEFAULT ''::"text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "notifications_webhook_url" "text"
);


ALTER TABLE "public"."agency_settings" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."business_metrics" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "business_id" "uuid" NOT NULL,
    "client_id" "uuid" NOT NULL,
    "month" "text" NOT NULL,
    "platform" "text" DEFAULT ''::"text",
    "leads_count" integer DEFAULT 0,
    "cost_per_lead" numeric DEFAULT 0,
    "paying_customers" integer DEFAULT 0,
    "ad_spend" numeric DEFAULT 0,
    "impressions" integer DEFAULT 0,
    "clicks" integer DEFAULT 0,
    "sales_count" integer DEFAULT 0,
    "revenue" numeric DEFAULT 0,
    "cost_per_customer" numeric DEFAULT 0,
    "notes" "text" DEFAULT ''::"text",
    "created_at" timestamp with time zone DEFAULT "now"(),
    "updated_at" timestamp with time zone DEFAULT "now"(),
    "ctr" numeric(10,4) DEFAULT 0
);

ALTER TABLE ONLY "public"."business_metrics" REPLICA IDENTITY FULL;


ALTER TABLE "public"."business_metrics" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."business_targets" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "business_id" "uuid" NOT NULL,
    "client_id" "uuid" NOT NULL,
    "month" "text" NOT NULL,
    "target_leads" integer DEFAULT 0,
    "target_sales" integer DEFAULT 0,
    "target_revenue" numeric DEFAULT 0,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."business_targets" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."businesses" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "client_id" "uuid" NOT NULL,
    "name" "text" NOT NULL,
    "status" "text" DEFAULT 'פעיל'::"text" NOT NULL,
    "client_type" "text" DEFAULT 'שירות'::"text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "contact_name" "text" DEFAULT ''::"text" NOT NULL,
    "email" "text" DEFAULT ''::"text" NOT NULL,
    "phone" "text",
    "address" "text",
    "ad_platforms" "text"[] DEFAULT '{}'::"text"[] NOT NULL
);

ALTER TABLE ONLY "public"."businesses" REPLICA IDENTITY FULL;


ALTER TABLE "public"."businesses" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."client_employees" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "client_id" "uuid" NOT NULL,
    "user_id" "uuid" NOT NULL,
    "display_name" "text" DEFAULT ''::"text" NOT NULL,
    "email" "text" DEFAULT ''::"text" NOT NULL,
    "business_ids" "uuid"[] DEFAULT '{}'::"uuid"[] NOT NULL,
    "permissions" "jsonb" DEFAULT '{}'::"jsonb" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."client_employees" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."clients" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "user_id" "uuid",
    "name" "text" NOT NULL,
    "contact_name" "text" DEFAULT ''::"text" NOT NULL,
    "email" "text" DEFAULT ''::"text" NOT NULL,
    "phone" "text",
    "status" "text" DEFAULT 'חדש'::"text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "client_type" "text" DEFAULT 'שירות'::"text" NOT NULL,
    "health_status" "text" DEFAULT 'ok'::"text" NOT NULL,
    "health_reasons" "text"[] DEFAULT '{}'::"text"[] NOT NULL,
    "health_checked_at" timestamp with time zone,
    "health_alerted_at" timestamp with time zone
);

ALTER TABLE ONLY "public"."clients" REPLICA IDENTITY FULL;


ALTER TABLE "public"."clients" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."data_integrity_log" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "check_name" "text" NOT NULL,
    "severity" "text" DEFAULT 'info'::"text" NOT NULL,
    "details" "jsonb" DEFAULT '{}'::"jsonb" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."data_integrity_log" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."documents" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "client_id" "uuid" NOT NULL,
    "project_id" "uuid",
    "name" "text" NOT NULL,
    "file_url" "text" NOT NULL,
    "file_type" "text" DEFAULT ''::"text",
    "uploaded_by" "uuid",
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "category" "text",
    "business_id" "uuid"
);


ALTER TABLE "public"."documents" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."freelancer_messages" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "freelancer_user_id" "uuid" NOT NULL,
    "sender_id" "uuid" NOT NULL,
    "content" "text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL
);

ALTER TABLE ONLY "public"."freelancer_messages" REPLICA IDENTITY FULL;


ALTER TABLE "public"."freelancer_messages" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."freelancer_services" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "freelancer_user_id" "uuid" NOT NULL,
    "service_name" "text" NOT NULL,
    "price" numeric DEFAULT 0 NOT NULL,
    "currency" "text" DEFAULT 'ILS'::"text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."freelancer_services" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."freelancer_task_comments" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "task_id" "uuid" NOT NULL,
    "sender_id" "uuid" NOT NULL,
    "content" "text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."freelancer_task_comments" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."freelancer_tasks" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "freelancer_user_id" "uuid" NOT NULL,
    "client_id" "uuid" NOT NULL,
    "title" "text" NOT NULL,
    "description" "text" DEFAULT ''::"text",
    "status" "text" DEFAULT 'חדש'::"text" NOT NULL,
    "priority" "text" DEFAULT 'רגיל'::"text" NOT NULL,
    "due_date" "date",
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "service_type" "text" DEFAULT ''::"text",
    "price" numeric DEFAULT 0,
    "currency" "text" DEFAULT 'ILS'::"text",
    "link_url" "text",
    "admin_approved" boolean DEFAULT false NOT NULL,
    "business_id" "uuid",
    "payment_status" "text",
    "work_started_at" timestamp with time zone,
    "total_work_seconds" integer DEFAULT 0 NOT NULL
);

ALTER TABLE ONLY "public"."freelancer_tasks" REPLICA IDENTITY FULL;


ALTER TABLE "public"."freelancer_tasks" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."incoming_webhook_keys" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "api_key" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" DEFAULT ''::"text" NOT NULL,
    "client_id" "uuid" NOT NULL,
    "business_id" "uuid" NOT NULL,
    "allowed_types" "text"[] DEFAULT '{lead}'::"text"[] NOT NULL,
    "is_active" boolean DEFAULT true NOT NULL,
    "created_by" "uuid" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "webhook_secret" "text"
);


ALTER TABLE "public"."incoming_webhook_keys" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."leads" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "client_id" "uuid" NOT NULL,
    "full_name" "text" DEFAULT ''::"text" NOT NULL,
    "phone" "text" DEFAULT ''::"text" NOT NULL,
    "email" "text" DEFAULT ''::"text" NOT NULL,
    "source" "text" DEFAULT ''::"text" NOT NULL,
    "status" "text" DEFAULT 'חדש'::"text" NOT NULL,
    "notes" "text" DEFAULT ''::"text",
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "business_id" "uuid",
    "status_updated_at" timestamp with time zone
);

ALTER TABLE ONLY "public"."leads" REPLICA IDENTITY FULL;


ALTER TABLE "public"."leads" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."messages" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "client_id" "uuid" NOT NULL,
    "sender_id" "uuid" NOT NULL,
    "content" "text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "business_id" "uuid"
);

ALTER TABLE ONLY "public"."messages" REPLICA IDENTITY FULL;


ALTER TABLE "public"."messages" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."outgoing_webhook_attempts" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "webhook_config_id" "uuid",
    "event_type" "text" NOT NULL,
    "payload" "jsonb" NOT NULL,
    "attempt_number" integer DEFAULT 1 NOT NULL,
    "status" "text" NOT NULL,
    "response_status" integer,
    "error_message" "text",
    "duration_ms" integer,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."outgoing_webhook_attempts" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."peer_reviews" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "reviewer_user_id" "uuid" NOT NULL,
    "reviewee_user_id" "uuid" NOT NULL,
    "task_id" "uuid",
    "rating" integer NOT NULL,
    "comment" "text",
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    CONSTRAINT "peer_reviews_rating_check" CHECK ((("rating" >= 1) AND ("rating" <= 5)))
);


ALTER TABLE "public"."peer_reviews" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."profiles" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "user_id" "uuid" NOT NULL,
    "full_name" "text" DEFAULT ''::"text" NOT NULL,
    "email" "text" DEFAULT ''::"text" NOT NULL,
    "phone" "text",
    "avatar_url" "text" DEFAULT ''::"text",
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."profiles" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."projects" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "client_id" "uuid" NOT NULL,
    "name" "text" NOT NULL,
    "description" "text" DEFAULT ''::"text",
    "status" "text" DEFAULT 'חדש'::"text" NOT NULL,
    "start_date" "date",
    "end_date" "date",
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "business_id" "uuid"
);


ALTER TABLE "public"."projects" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."reminders" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "user_id" "uuid" NOT NULL,
    "title" "text" NOT NULL,
    "notes" "text",
    "due_at" timestamp with time zone NOT NULL,
    "related_client_id" "uuid",
    "completed" boolean DEFAULT false NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "alerted_at" timestamp with time zone
);

ALTER TABLE ONLY "public"."reminders" REPLICA IDENTITY FULL;


ALTER TABLE "public"."reminders" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."reports" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "client_id" "uuid" NOT NULL,
    "project_id" "uuid",
    "title" "text" NOT NULL,
    "content" "text" DEFAULT ''::"text",
    "file_url" "text" DEFAULT ''::"text",
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "business_id" "uuid",
    "report_month" "text" DEFAULT "to_char"("now"(), 'YYYY-MM'::"text") NOT NULL
);


ALTER TABLE "public"."reports" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."request_replies" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "request_id" "uuid" NOT NULL,
    "sender_id" "uuid" NOT NULL,
    "content" "text" NOT NULL,
    "is_read" boolean DEFAULT false NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL
);

ALTER TABLE ONLY "public"."request_replies" REPLICA IDENTITY FULL;


ALTER TABLE "public"."request_replies" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."requests" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "client_id" "uuid" NOT NULL,
    "project_id" "uuid",
    "title" "text" NOT NULL,
    "description" "text" DEFAULT ''::"text",
    "status" "text" DEFAULT 'חדש'::"text" NOT NULL,
    "priority" "text" DEFAULT 'רגיל'::"text" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "sender_id" "uuid",
    "business_id" "uuid"
);

ALTER TABLE ONLY "public"."requests" REPLICA IDENTITY FULL;


ALTER TABLE "public"."requests" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."team_details" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "user_id" "uuid" NOT NULL,
    "position" "text" DEFAULT ''::"text",
    "specialization" "text" DEFAULT ''::"text",
    "id_number" "text" DEFAULT ''::"text",
    "address" "text" DEFAULT ''::"text",
    "bank_name" "text" DEFAULT ''::"text",
    "bank_branch" "text" DEFAULT ''::"text",
    "bank_account" "text" DEFAULT ''::"text",
    "payment_method" "text" DEFAULT 'העברה בנקאית'::"text",
    "payment_terms" "text" DEFAULT 'שוטף+30'::"text",
    "hourly_rate" numeric(10,2) DEFAULT 0,
    "monthly_rate" numeric(10,2) DEFAULT 0,
    "project_rate" numeric(10,2) DEFAULT 0,
    "currency" "text" DEFAULT 'ILS'::"text",
    "tax_exempt" boolean DEFAULT false,
    "notes" "text" DEFAULT ''::"text",
    "contract_start" "date",
    "contract_end" "date",
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "status" "text" DEFAULT 'פעיל'::"text" NOT NULL
);


ALTER TABLE "public"."team_details" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."user_roles" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "user_id" "uuid" NOT NULL,
    "role" "public"."app_role" NOT NULL
);


ALTER TABLE "public"."user_roles" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."webhook_configs" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "user_id" "uuid" NOT NULL,
    "name" "text" DEFAULT ''::"text" NOT NULL,
    "url" "text" NOT NULL,
    "events" "text"[] DEFAULT '{}'::"text"[] NOT NULL,
    "is_active" boolean DEFAULT true NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"(),
    "updated_at" timestamp with time zone DEFAULT "now"(),
    "consecutive_failures" integer DEFAULT 0 NOT NULL,
    "circuit_open_until" timestamp with time zone
);


ALTER TABLE "public"."webhook_configs" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."webhook_dlq" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "webhook_config_id" "uuid",
    "event_type" "text" NOT NULL,
    "payload" "jsonb" NOT NULL,
    "last_error" "text",
    "attempts" integer DEFAULT 0 NOT NULL,
    "resolved" boolean DEFAULT false NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."webhook_dlq" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."webhook_logs" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "webhook_key_id" "uuid",
    "api_key_used" "text" DEFAULT ''::"text" NOT NULL,
    "event_type" "text" DEFAULT ''::"text" NOT NULL,
    "status" "text" DEFAULT 'success'::"text" NOT NULL,
    "error_message" "text",
    "request_body" "jsonb",
    "client_id" "uuid",
    "business_id" "uuid",
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "idempotency_key" "text",
    "response_status" integer,
    "processing_ms" integer,
    "ip_address" "text"
);


ALTER TABLE "public"."webhook_logs" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."webhook_rate_limits" (
    "webhook_key_id" "uuid" NOT NULL,
    "window_start" timestamp with time zone DEFAULT "now"() NOT NULL,
    "request_count" integer DEFAULT 0 NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."webhook_rate_limits" OWNER TO "postgres";


ALTER TABLE ONLY "public"."admin_audit_log"
    ADD CONSTRAINT "admin_audit_log_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."agency_settings"
    ADD CONSTRAINT "agency_settings_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."agency_settings"
    ADD CONSTRAINT "agency_settings_user_id_key" UNIQUE ("user_id");



ALTER TABLE ONLY "public"."business_metrics"
    ADD CONSTRAINT "business_metrics_business_id_month_platform_key" UNIQUE ("business_id", "month", "platform");



ALTER TABLE ONLY "public"."business_metrics"
    ADD CONSTRAINT "business_metrics_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."business_targets"
    ADD CONSTRAINT "business_targets_business_id_month_key" UNIQUE ("business_id", "month");



ALTER TABLE ONLY "public"."business_targets"
    ADD CONSTRAINT "business_targets_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."businesses"
    ADD CONSTRAINT "businesses_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."client_employees"
    ADD CONSTRAINT "client_employees_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."client_employees"
    ADD CONSTRAINT "client_employees_user_id_key" UNIQUE ("user_id");



ALTER TABLE ONLY "public"."clients"
    ADD CONSTRAINT "clients_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."clients"
    ADD CONSTRAINT "clients_user_id_key" UNIQUE ("user_id");



ALTER TABLE ONLY "public"."data_integrity_log"
    ADD CONSTRAINT "data_integrity_log_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."documents"
    ADD CONSTRAINT "documents_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."freelancer_messages"
    ADD CONSTRAINT "freelancer_messages_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."freelancer_services"
    ADD CONSTRAINT "freelancer_services_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."freelancer_task_comments"
    ADD CONSTRAINT "freelancer_task_comments_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."freelancer_tasks"
    ADD CONSTRAINT "freelancer_tasks_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."incoming_webhook_keys"
    ADD CONSTRAINT "incoming_webhook_keys_api_key_key" UNIQUE ("api_key");



ALTER TABLE ONLY "public"."incoming_webhook_keys"
    ADD CONSTRAINT "incoming_webhook_keys_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."leads"
    ADD CONSTRAINT "leads_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."messages"
    ADD CONSTRAINT "messages_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."outgoing_webhook_attempts"
    ADD CONSTRAINT "outgoing_webhook_attempts_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."peer_reviews"
    ADD CONSTRAINT "peer_reviews_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."peer_reviews"
    ADD CONSTRAINT "peer_reviews_reviewer_user_id_reviewee_user_id_task_id_key" UNIQUE ("reviewer_user_id", "reviewee_user_id", "task_id");



ALTER TABLE ONLY "public"."profiles"
    ADD CONSTRAINT "profiles_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."profiles"
    ADD CONSTRAINT "profiles_user_id_key" UNIQUE ("user_id");



ALTER TABLE ONLY "public"."projects"
    ADD CONSTRAINT "projects_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."reminders"
    ADD CONSTRAINT "reminders_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."reports"
    ADD CONSTRAINT "reports_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."request_replies"
    ADD CONSTRAINT "request_replies_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."requests"
    ADD CONSTRAINT "requests_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."team_details"
    ADD CONSTRAINT "team_details_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."team_details"
    ADD CONSTRAINT "team_details_user_id_key" UNIQUE ("user_id");



ALTER TABLE ONLY "public"."user_roles"
    ADD CONSTRAINT "user_roles_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."user_roles"
    ADD CONSTRAINT "user_roles_user_id_role_key" UNIQUE ("user_id", "role");



ALTER TABLE ONLY "public"."webhook_configs"
    ADD CONSTRAINT "webhook_configs_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."webhook_dlq"
    ADD CONSTRAINT "webhook_dlq_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."webhook_logs"
    ADD CONSTRAINT "webhook_logs_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."webhook_rate_limits"
    ADD CONSTRAINT "webhook_rate_limits_pkey" PRIMARY KEY ("webhook_key_id");



CREATE INDEX "idx_admin_audit_log_created_at" ON "public"."admin_audit_log" USING "btree" ("created_at" DESC);



CREATE INDEX "idx_client_employees_client_id" ON "public"."client_employees" USING "btree" ("client_id");



CREATE INDEX "idx_client_employees_user_id" ON "public"."client_employees" USING "btree" ("user_id");



CREATE INDEX "idx_data_integrity_log_created_at" ON "public"."data_integrity_log" USING "btree" ("created_at" DESC);



CREATE INDEX "idx_webhook_logs_created_at" ON "public"."webhook_logs" USING "btree" ("created_at" DESC);



CREATE INDEX "idx_webhook_logs_key_id" ON "public"."webhook_logs" USING "btree" ("webhook_key_id");



CREATE INDEX "outgoing_webhook_attempts_created_idx" ON "public"."outgoing_webhook_attempts" USING "btree" ("created_at" DESC);



CREATE INDEX "webhook_logs_created_at_idx" ON "public"."webhook_logs" USING "btree" ("created_at" DESC);



CREATE UNIQUE INDEX "webhook_logs_idempotency_key_uidx" ON "public"."webhook_logs" USING "btree" ("webhook_key_id", "idempotency_key") WHERE ("idempotency_key" IS NOT NULL);



CREATE OR REPLACE TRIGGER "leads_status_updated_at" BEFORE UPDATE ON "public"."leads" FOR EACH ROW EXECUTE FUNCTION "public"."update_lead_status_updated_at"();



CREATE OR REPLACE TRIGGER "trg_cleanup_client_employee_user" AFTER DELETE ON "public"."client_employees" FOR EACH ROW EXECUTE FUNCTION "public"."cleanup_client_employee_user"();



CREATE OR REPLACE TRIGGER "trg_client_employees_updated_at" BEFORE UPDATE ON "public"."client_employees" FOR EACH ROW EXECUTE FUNCTION "public"."update_updated_at_column"();



CREATE OR REPLACE TRIGGER "trg_validate_client_employee_businesses" BEFORE INSERT OR UPDATE ON "public"."client_employees" FOR EACH ROW EXECUTE FUNCTION "public"."validate_client_employee_businesses"();



CREATE OR REPLACE TRIGGER "trg_webhook_dlq_updated_at" BEFORE UPDATE ON "public"."webhook_dlq" FOR EACH ROW EXECUTE FUNCTION "public"."update_updated_at_column"();



CREATE OR REPLACE TRIGGER "update_agency_settings_updated_at" BEFORE UPDATE ON "public"."agency_settings" FOR EACH ROW EXECUTE FUNCTION "public"."update_updated_at_column"();



CREATE OR REPLACE TRIGGER "update_business_metrics_updated_at" BEFORE UPDATE ON "public"."business_metrics" FOR EACH ROW EXECUTE FUNCTION "public"."update_updated_at_column"();



CREATE OR REPLACE TRIGGER "update_business_targets_updated_at" BEFORE UPDATE ON "public"."business_targets" FOR EACH ROW EXECUTE FUNCTION "public"."update_updated_at_column"();



CREATE OR REPLACE TRIGGER "update_businesses_updated_at" BEFORE UPDATE ON "public"."businesses" FOR EACH ROW EXECUTE FUNCTION "public"."update_updated_at_column"();



CREATE OR REPLACE TRIGGER "update_clients_updated_at" BEFORE UPDATE ON "public"."clients" FOR EACH ROW EXECUTE FUNCTION "public"."update_updated_at_column"();



CREATE OR REPLACE TRIGGER "update_freelancer_services_updated_at" BEFORE UPDATE ON "public"."freelancer_services" FOR EACH ROW EXECUTE FUNCTION "public"."update_updated_at_column"();



CREATE OR REPLACE TRIGGER "update_freelancer_tasks_updated_at" BEFORE UPDATE ON "public"."freelancer_tasks" FOR EACH ROW EXECUTE FUNCTION "public"."update_updated_at_column"();



CREATE OR REPLACE TRIGGER "update_leads_updated_at" BEFORE UPDATE ON "public"."leads" FOR EACH ROW EXECUTE FUNCTION "public"."update_updated_at_column"();



CREATE OR REPLACE TRIGGER "update_profiles_updated_at" BEFORE UPDATE ON "public"."profiles" FOR EACH ROW EXECUTE FUNCTION "public"."update_updated_at_column"();



CREATE OR REPLACE TRIGGER "update_projects_updated_at" BEFORE UPDATE ON "public"."projects" FOR EACH ROW EXECUTE FUNCTION "public"."update_updated_at_column"();



CREATE OR REPLACE TRIGGER "update_reminders_updated_at" BEFORE UPDATE ON "public"."reminders" FOR EACH ROW EXECUTE FUNCTION "public"."update_updated_at_column"();



CREATE OR REPLACE TRIGGER "update_requests_updated_at" BEFORE UPDATE ON "public"."requests" FOR EACH ROW EXECUTE FUNCTION "public"."update_updated_at_column"();



CREATE OR REPLACE TRIGGER "update_team_details_updated_at" BEFORE UPDATE ON "public"."team_details" FOR EACH ROW EXECUTE FUNCTION "public"."update_updated_at_column"();



ALTER TABLE ONLY "public"."business_metrics"
    ADD CONSTRAINT "business_metrics_business_id_fkey" FOREIGN KEY ("business_id") REFERENCES "public"."businesses"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."business_metrics"
    ADD CONSTRAINT "business_metrics_client_id_fkey" FOREIGN KEY ("client_id") REFERENCES "public"."clients"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."business_targets"
    ADD CONSTRAINT "business_targets_business_id_fkey" FOREIGN KEY ("business_id") REFERENCES "public"."businesses"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."business_targets"
    ADD CONSTRAINT "business_targets_client_id_fkey" FOREIGN KEY ("client_id") REFERENCES "public"."clients"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."businesses"
    ADD CONSTRAINT "businesses_client_id_fkey" FOREIGN KEY ("client_id") REFERENCES "public"."clients"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."client_employees"
    ADD CONSTRAINT "client_employees_client_id_fkey" FOREIGN KEY ("client_id") REFERENCES "public"."clients"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."client_employees"
    ADD CONSTRAINT "client_employees_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "auth"."users"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."clients"
    ADD CONSTRAINT "clients_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "auth"."users"("id") ON DELETE SET NULL;



ALTER TABLE ONLY "public"."documents"
    ADD CONSTRAINT "documents_business_id_fkey" FOREIGN KEY ("business_id") REFERENCES "public"."businesses"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."documents"
    ADD CONSTRAINT "documents_client_id_fkey" FOREIGN KEY ("client_id") REFERENCES "public"."clients"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."documents"
    ADD CONSTRAINT "documents_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "public"."projects"("id") ON DELETE SET NULL;



ALTER TABLE ONLY "public"."documents"
    ADD CONSTRAINT "documents_uploaded_by_fkey" FOREIGN KEY ("uploaded_by") REFERENCES "auth"."users"("id");



ALTER TABLE ONLY "public"."freelancer_task_comments"
    ADD CONSTRAINT "freelancer_task_comments_task_id_fkey" FOREIGN KEY ("task_id") REFERENCES "public"."freelancer_tasks"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."freelancer_tasks"
    ADD CONSTRAINT "freelancer_tasks_business_id_fkey" FOREIGN KEY ("business_id") REFERENCES "public"."businesses"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."freelancer_tasks"
    ADD CONSTRAINT "freelancer_tasks_client_id_fkey" FOREIGN KEY ("client_id") REFERENCES "public"."clients"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."incoming_webhook_keys"
    ADD CONSTRAINT "incoming_webhook_keys_business_id_fkey" FOREIGN KEY ("business_id") REFERENCES "public"."businesses"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."incoming_webhook_keys"
    ADD CONSTRAINT "incoming_webhook_keys_client_id_fkey" FOREIGN KEY ("client_id") REFERENCES "public"."clients"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."leads"
    ADD CONSTRAINT "leads_business_id_fkey" FOREIGN KEY ("business_id") REFERENCES "public"."businesses"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."leads"
    ADD CONSTRAINT "leads_client_id_fkey" FOREIGN KEY ("client_id") REFERENCES "public"."clients"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."messages"
    ADD CONSTRAINT "messages_business_id_fkey" FOREIGN KEY ("business_id") REFERENCES "public"."businesses"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."messages"
    ADD CONSTRAINT "messages_client_id_fkey" FOREIGN KEY ("client_id") REFERENCES "public"."clients"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."messages"
    ADD CONSTRAINT "messages_sender_id_fkey" FOREIGN KEY ("sender_id") REFERENCES "auth"."users"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."outgoing_webhook_attempts"
    ADD CONSTRAINT "outgoing_webhook_attempts_webhook_config_id_fkey" FOREIGN KEY ("webhook_config_id") REFERENCES "public"."webhook_configs"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."peer_reviews"
    ADD CONSTRAINT "peer_reviews_task_id_fkey" FOREIGN KEY ("task_id") REFERENCES "public"."freelancer_tasks"("id") ON DELETE SET NULL;



ALTER TABLE ONLY "public"."projects"
    ADD CONSTRAINT "projects_business_id_fkey" FOREIGN KEY ("business_id") REFERENCES "public"."businesses"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."projects"
    ADD CONSTRAINT "projects_client_id_fkey" FOREIGN KEY ("client_id") REFERENCES "public"."clients"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."reports"
    ADD CONSTRAINT "reports_business_id_fkey" FOREIGN KEY ("business_id") REFERENCES "public"."businesses"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."reports"
    ADD CONSTRAINT "reports_client_id_fkey" FOREIGN KEY ("client_id") REFERENCES "public"."clients"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."reports"
    ADD CONSTRAINT "reports_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "public"."projects"("id") ON DELETE SET NULL;



ALTER TABLE ONLY "public"."request_replies"
    ADD CONSTRAINT "request_replies_request_id_fkey" FOREIGN KEY ("request_id") REFERENCES "public"."requests"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."requests"
    ADD CONSTRAINT "requests_business_id_fkey" FOREIGN KEY ("business_id") REFERENCES "public"."businesses"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."requests"
    ADD CONSTRAINT "requests_client_id_fkey" FOREIGN KEY ("client_id") REFERENCES "public"."clients"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."requests"
    ADD CONSTRAINT "requests_project_id_fkey" FOREIGN KEY ("project_id") REFERENCES "public"."projects"("id") ON DELETE SET NULL;



ALTER TABLE ONLY "public"."webhook_dlq"
    ADD CONSTRAINT "webhook_dlq_webhook_config_id_fkey" FOREIGN KEY ("webhook_config_id") REFERENCES "public"."webhook_configs"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."webhook_logs"
    ADD CONSTRAINT "webhook_logs_business_id_fkey" FOREIGN KEY ("business_id") REFERENCES "public"."businesses"("id") ON DELETE SET NULL;



ALTER TABLE ONLY "public"."webhook_logs"
    ADD CONSTRAINT "webhook_logs_client_id_fkey" FOREIGN KEY ("client_id") REFERENCES "public"."clients"("id") ON DELETE SET NULL;



ALTER TABLE ONLY "public"."webhook_logs"
    ADD CONSTRAINT "webhook_logs_webhook_key_id_fkey" FOREIGN KEY ("webhook_key_id") REFERENCES "public"."incoming_webhook_keys"("id") ON DELETE SET NULL;



ALTER TABLE ONLY "public"."webhook_rate_limits"
    ADD CONSTRAINT "webhook_rate_limits_webhook_key_id_fkey" FOREIGN KEY ("webhook_key_id") REFERENCES "public"."incoming_webhook_keys"("id") ON DELETE CASCADE;



CREATE POLICY "Admins and employees see all reviews" ON "public"."peer_reviews" FOR SELECT TO "authenticated" USING (("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role") OR "public"."has_role"("auth"."uid"(), 'employee'::"public"."app_role")));



CREATE POLICY "Admins can manage agency settings" ON "public"."agency_settings" TO "authenticated" USING ("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role")) WITH CHECK ("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role"));



CREATE POLICY "Admins can manage freelancer services" ON "public"."freelancer_services" TO "authenticated" USING ("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role")) WITH CHECK ("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role"));



CREATE POLICY "Admins can manage freelancer tasks" ON "public"."freelancer_tasks" TO "authenticated" USING ("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role")) WITH CHECK ("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role"));



CREATE POLICY "Admins can manage incoming webhook keys" ON "public"."incoming_webhook_keys" TO "authenticated" USING ("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role")) WITH CHECK ("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role"));



CREATE POLICY "Admins can manage profiles" ON "public"."profiles" TO "authenticated" USING ("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role")) WITH CHECK ("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role"));



CREATE POLICY "Admins can manage roles" ON "public"."user_roles" TO "authenticated" USING ("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role")) WITH CHECK ("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role"));



CREATE POLICY "Admins can manage team details" ON "public"."team_details" TO "authenticated" USING ("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role")) WITH CHECK ("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role"));



CREATE POLICY "Admins can manage webhook configs" ON "public"."webhook_configs" TO "authenticated" USING ("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role")) WITH CHECK ("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role"));



CREATE POLICY "Admins can manage webhook logs" ON "public"."webhook_logs" TO "authenticated" USING ("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role")) WITH CHECK ("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role"));



CREATE POLICY "Admins can read all roles" ON "public"."user_roles" FOR SELECT TO "authenticated" USING ("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role"));



CREATE POLICY "Admins can view outgoing attempts" ON "public"."outgoing_webhook_attempts" FOR SELECT TO "authenticated" USING ("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role"));



CREATE POLICY "Admins can view rate limits" ON "public"."webhook_rate_limits" FOR SELECT TO "authenticated" USING ("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role"));



CREATE POLICY "Admins manage DLQ" ON "public"."webhook_dlq" TO "authenticated" USING ("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role")) WITH CHECK ("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role"));



CREATE POLICY "Admins manage client employees" ON "public"."client_employees" TO "authenticated" USING ("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role")) WITH CHECK ("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role"));



CREATE POLICY "Admins view all reminders" ON "public"."reminders" FOR SELECT USING ("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role"));



CREATE POLICY "Admins view audit log" ON "public"."admin_audit_log" FOR SELECT TO "authenticated" USING ("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role"));



CREATE POLICY "Admins view data integrity log" ON "public"."data_integrity_log" FOR SELECT TO "authenticated" USING ("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role"));



CREATE POLICY "Admins write own audit entries" ON "public"."admin_audit_log" FOR INSERT TO "authenticated" WITH CHECK ((("admin_user_id" = "auth"."uid"()) AND "public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role")));



CREATE POLICY "Client can create own requests" ON "public"."requests" FOR INSERT TO "authenticated" WITH CHECK ((EXISTS ( SELECT 1
   FROM "public"."clients"
  WHERE (("clients"."id" = "requests"."client_id") AND ("clients"."user_id" = "auth"."uid"())))));



CREATE POLICY "Client can insert own leads" ON "public"."leads" FOR INSERT TO "authenticated" WITH CHECK ((EXISTS ( SELECT 1
   FROM "public"."clients"
  WHERE (("clients"."id" = "leads"."client_id") AND ("clients"."user_id" = "auth"."uid"())))));



CREATE POLICY "Client can send messages" ON "public"."messages" FOR INSERT TO "authenticated" WITH CHECK ((EXISTS ( SELECT 1
   FROM "public"."clients"
  WHERE (("clients"."id" = "messages"."client_id") AND ("clients"."user_id" = "auth"."uid"())))));



CREATE POLICY "Client can update own leads" ON "public"."leads" FOR UPDATE TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."clients"
  WHERE (("clients"."id" = "leads"."client_id") AND ("clients"."user_id" = "auth"."uid"()))))) WITH CHECK ((EXISTS ( SELECT 1
   FROM "public"."clients"
  WHERE (("clients"."id" = "leads"."client_id") AND ("clients"."user_id" = "auth"."uid"())))));



CREATE POLICY "Client can view own businesses" ON "public"."businesses" FOR SELECT TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."clients"
  WHERE (("clients"."id" = "businesses"."client_id") AND ("clients"."user_id" = "auth"."uid"())))));



CREATE POLICY "Client can view own documents" ON "public"."documents" FOR SELECT TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."clients"
  WHERE (("clients"."id" = "documents"."client_id") AND ("clients"."user_id" = "auth"."uid"())))));



CREATE POLICY "Client can view own leads" ON "public"."leads" FOR SELECT TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."clients"
  WHERE (("clients"."id" = "leads"."client_id") AND ("clients"."user_id" = "auth"."uid"())))));



CREATE POLICY "Client can view own linked tasks" ON "public"."freelancer_tasks" FOR SELECT TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."clients"
  WHERE (("clients"."id" = "freelancer_tasks"."client_id") AND ("clients"."user_id" = "auth"."uid"())))));



CREATE POLICY "Client can view own messages" ON "public"."messages" FOR SELECT TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."clients"
  WHERE (("clients"."id" = "messages"."client_id") AND ("clients"."user_id" = "auth"."uid"())))));



CREATE POLICY "Client can view own metrics" ON "public"."business_metrics" FOR SELECT TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."clients"
  WHERE (("clients"."id" = "business_metrics"."client_id") AND ("clients"."user_id" = "auth"."uid"())))));



CREATE POLICY "Client can view own projects" ON "public"."projects" FOR SELECT TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."clients"
  WHERE (("clients"."id" = "projects"."client_id") AND ("clients"."user_id" = "auth"."uid"())))));



CREATE POLICY "Client can view own record" ON "public"."clients" FOR SELECT TO "authenticated" USING (("auth"."uid"() = "user_id"));



CREATE POLICY "Client can view own reports" ON "public"."reports" FOR SELECT TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."clients"
  WHERE (("clients"."id" = "reports"."client_id") AND ("clients"."user_id" = "auth"."uid"())))));



CREATE POLICY "Client can view own request replies" ON "public"."request_replies" FOR SELECT TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM ("public"."requests" "r"
     JOIN "public"."clients" "c" ON (("c"."id" = "r"."client_id")))
  WHERE (("r"."id" = "request_replies"."request_id") AND ("c"."user_id" = "auth"."uid"())))));



CREATE POLICY "Client can view own requests" ON "public"."requests" FOR SELECT TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."clients"
  WHERE (("clients"."id" = "requests"."client_id") AND ("clients"."user_id" = "auth"."uid"())))));



CREATE POLICY "Client can view own targets" ON "public"."business_targets" FOR SELECT TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."clients"
  WHERE (("clients"."id" = "business_targets"."client_id") AND ("clients"."user_id" = "auth"."uid"())))));



CREATE POLICY "Client employee can create requests" ON "public"."requests" FOR INSERT TO "authenticated" WITH CHECK ((("client_id" = "public"."get_owner_client_id"("auth"."uid"())) AND "public"."is_client_employee"("auth"."uid"())));



CREATE POLICY "Client employee can delete leads" ON "public"."leads" FOR DELETE TO "authenticated" USING ((("client_id" = "public"."get_owner_client_id"("auth"."uid"())) AND "public"."is_client_employee"("auth"."uid"()) AND (("business_id" IS NULL) OR ("business_id" = ANY ("public"."get_allowed_business_ids"("auth"."uid"()))))));



CREATE POLICY "Client employee can insert leads" ON "public"."leads" FOR INSERT TO "authenticated" WITH CHECK ((("client_id" = "public"."get_owner_client_id"("auth"."uid"())) AND "public"."is_client_employee"("auth"."uid"()) AND (("business_id" IS NULL) OR ("business_id" = ANY ("public"."get_allowed_business_ids"("auth"."uid"()))))));



CREATE POLICY "Client employee can update leads" ON "public"."leads" FOR UPDATE TO "authenticated" USING ((("client_id" = "public"."get_owner_client_id"("auth"."uid"())) AND "public"."is_client_employee"("auth"."uid"()) AND (("business_id" IS NULL) OR ("business_id" = ANY ("public"."get_allowed_business_ids"("auth"."uid"())))))) WITH CHECK ((("client_id" = "public"."get_owner_client_id"("auth"."uid"())) AND (("business_id" IS NULL) OR ("business_id" = ANY ("public"."get_allowed_business_ids"("auth"."uid"()))))));



CREATE POLICY "Client employee can view businesses" ON "public"."businesses" FOR SELECT TO "authenticated" USING ((("client_id" = "public"."get_owner_client_id"("auth"."uid"())) AND "public"."is_client_employee"("auth"."uid"()) AND ("id" = ANY ("public"."get_allowed_business_ids"("auth"."uid"())))));



CREATE POLICY "Client employee can view documents" ON "public"."documents" FOR SELECT TO "authenticated" USING ((("client_id" = "public"."get_owner_client_id"("auth"."uid"())) AND "public"."is_client_employee"("auth"."uid"()) AND (("business_id" IS NULL) OR ("business_id" = ANY ("public"."get_allowed_business_ids"("auth"."uid"()))))));



CREATE POLICY "Client employee can view leads" ON "public"."leads" FOR SELECT TO "authenticated" USING ((("client_id" = "public"."get_owner_client_id"("auth"."uid"())) AND "public"."is_client_employee"("auth"."uid"()) AND (("business_id" IS NULL) OR ("business_id" = ANY ("public"."get_allowed_business_ids"("auth"."uid"()))))));



CREATE POLICY "Client employee can view linked tasks" ON "public"."freelancer_tasks" FOR SELECT TO "authenticated" USING ((("client_id" = "public"."get_owner_client_id"("auth"."uid"())) AND "public"."is_client_employee"("auth"."uid"()) AND (("business_id" IS NULL) OR ("business_id" = ANY ("public"."get_allowed_business_ids"("auth"."uid"()))))));



CREATE POLICY "Client employee can view metrics" ON "public"."business_metrics" FOR SELECT TO "authenticated" USING ((("client_id" = "public"."get_owner_client_id"("auth"."uid"())) AND "public"."is_client_employee"("auth"."uid"()) AND (("business_id" IS NULL) OR ("business_id" = ANY ("public"."get_allowed_business_ids"("auth"."uid"()))))));



CREATE POLICY "Client employee can view owner client" ON "public"."clients" FOR SELECT TO "authenticated" USING ((("id" = "public"."get_owner_client_id"("auth"."uid"())) AND "public"."is_client_employee"("auth"."uid"())));



CREATE POLICY "Client employee can view projects" ON "public"."projects" FOR SELECT TO "authenticated" USING ((("client_id" = "public"."get_owner_client_id"("auth"."uid"())) AND "public"."is_client_employee"("auth"."uid"())));



CREATE POLICY "Client employee can view reports" ON "public"."reports" FOR SELECT TO "authenticated" USING ((("client_id" = "public"."get_owner_client_id"("auth"."uid"())) AND "public"."is_client_employee"("auth"."uid"())));



CREATE POLICY "Client employee can view requests" ON "public"."requests" FOR SELECT TO "authenticated" USING ((("client_id" = "public"."get_owner_client_id"("auth"."uid"())) AND "public"."is_client_employee"("auth"."uid"())));



CREATE POLICY "Client employee can view targets" ON "public"."business_targets" FOR SELECT TO "authenticated" USING ((("client_id" = "public"."get_owner_client_id"("auth"."uid"())) AND "public"."is_client_employee"("auth"."uid"()) AND (("business_id" IS NULL) OR ("business_id" = ANY ("public"."get_allowed_business_ids"("auth"."uid"()))))));



CREATE POLICY "Employee can view own record" ON "public"."client_employees" FOR SELECT TO "authenticated" USING (("user_id" = "auth"."uid"()));



CREATE POLICY "Employees can view freelancer services" ON "public"."freelancer_services" FOR SELECT TO "authenticated" USING ("public"."has_role"("auth"."uid"(), 'employee'::"public"."app_role"));



CREATE POLICY "Employees can view freelancer tasks" ON "public"."freelancer_tasks" FOR SELECT TO "authenticated" USING ("public"."has_role"("auth"."uid"(), 'employee'::"public"."app_role"));



CREATE POLICY "Freelancers can insert own task comments" ON "public"."freelancer_task_comments" FOR INSERT TO "authenticated" WITH CHECK ((EXISTS ( SELECT 1
   FROM "public"."freelancer_tasks"
  WHERE (("freelancer_tasks"."id" = "freelancer_task_comments"."task_id") AND ("freelancer_tasks"."freelancer_user_id" = "auth"."uid"())))));



CREATE POLICY "Freelancers can send messages" ON "public"."freelancer_messages" FOR INSERT TO "authenticated" WITH CHECK (("freelancer_user_id" = "auth"."uid"()));



CREATE POLICY "Freelancers can update own task status" ON "public"."freelancer_tasks" FOR UPDATE TO "authenticated" USING (("freelancer_user_id" = "auth"."uid"())) WITH CHECK (("freelancer_user_id" = "auth"."uid"()));



CREATE POLICY "Freelancers can view own messages" ON "public"."freelancer_messages" FOR SELECT TO "authenticated" USING ((("freelancer_user_id" = "auth"."uid"()) OR "public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role") OR "public"."has_role"("auth"."uid"(), 'employee'::"public"."app_role")));



CREATE POLICY "Freelancers can view own services" ON "public"."freelancer_services" FOR SELECT TO "authenticated" USING (("freelancer_user_id" = "auth"."uid"()));



CREATE POLICY "Freelancers can view own task comments" ON "public"."freelancer_task_comments" FOR SELECT TO "authenticated" USING (((EXISTS ( SELECT 1
   FROM "public"."freelancer_tasks"
  WHERE (("freelancer_tasks"."id" = "freelancer_task_comments"."task_id") AND ("freelancer_tasks"."freelancer_user_id" = "auth"."uid"())))) OR "public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role") OR "public"."has_role"("auth"."uid"(), 'employee'::"public"."app_role")));



CREATE POLICY "Freelancers can view own tasks" ON "public"."freelancer_tasks" FOR SELECT TO "authenticated" USING (("freelancer_user_id" = "auth"."uid"()));



CREATE POLICY "Freelancers can view own team details" ON "public"."team_details" FOR SELECT TO "authenticated" USING (("user_id" = "auth"."uid"()));



CREATE POLICY "Only admins can delete roles" ON "public"."user_roles" AS RESTRICTIVE FOR DELETE TO "authenticated" USING ("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role"));



CREATE POLICY "Only admins can insert roles" ON "public"."user_roles" AS RESTRICTIVE FOR INSERT TO "authenticated" WITH CHECK ("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role"));



CREATE POLICY "Only admins can update roles" ON "public"."user_roles" AS RESTRICTIVE FOR UPDATE TO "authenticated" USING ("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role")) WITH CHECK ("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role"));



CREATE POLICY "Owner can view own employees" ON "public"."client_employees" FOR SELECT TO "authenticated" USING ((EXISTS ( SELECT 1
   FROM "public"."clients" "c"
  WHERE (("c"."id" = "client_employees"."client_id") AND ("c"."user_id" = "auth"."uid"())))));



CREATE POLICY "Reviewees can see their own reviews" ON "public"."peer_reviews" FOR SELECT TO "authenticated" USING (("auth"."uid"() = "reviewee_user_id"));



CREATE POLICY "Reviewers manage their own reviews" ON "public"."peer_reviews" TO "authenticated" USING (("auth"."uid"() = "reviewer_user_id")) WITH CHECK (("auth"."uid"() = "reviewer_user_id"));



CREATE POLICY "Staff can manage business metrics" ON "public"."business_metrics" TO "authenticated" USING (("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role") OR "public"."has_role"("auth"."uid"(), 'employee'::"public"."app_role"))) WITH CHECK (("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role") OR "public"."has_role"("auth"."uid"(), 'employee'::"public"."app_role")));



CREATE POLICY "Staff can manage business targets" ON "public"."business_targets" TO "authenticated" USING (("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role") OR "public"."has_role"("auth"."uid"(), 'employee'::"public"."app_role"))) WITH CHECK (("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role") OR "public"."has_role"("auth"."uid"(), 'employee'::"public"."app_role")));



CREATE POLICY "Staff can manage businesses" ON "public"."businesses" TO "authenticated" USING (("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role") OR "public"."has_role"("auth"."uid"(), 'employee'::"public"."app_role"))) WITH CHECK (("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role") OR "public"."has_role"("auth"."uid"(), 'employee'::"public"."app_role")));



CREATE POLICY "Staff can manage clients" ON "public"."clients" TO "authenticated" USING (("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role") OR "public"."has_role"("auth"."uid"(), 'employee'::"public"."app_role"))) WITH CHECK (("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role") OR "public"."has_role"("auth"."uid"(), 'employee'::"public"."app_role")));



CREATE POLICY "Staff can manage documents" ON "public"."documents" TO "authenticated" USING (("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role") OR "public"."has_role"("auth"."uid"(), 'employee'::"public"."app_role"))) WITH CHECK (("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role") OR "public"."has_role"("auth"."uid"(), 'employee'::"public"."app_role")));



CREATE POLICY "Staff can manage freelancer messages" ON "public"."freelancer_messages" TO "authenticated" USING (("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role") OR "public"."has_role"("auth"."uid"(), 'employee'::"public"."app_role"))) WITH CHECK (("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role") OR "public"."has_role"("auth"."uid"(), 'employee'::"public"."app_role")));



CREATE POLICY "Staff can manage leads" ON "public"."leads" TO "authenticated" USING (("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role") OR "public"."has_role"("auth"."uid"(), 'employee'::"public"."app_role"))) WITH CHECK (("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role") OR "public"."has_role"("auth"."uid"(), 'employee'::"public"."app_role")));



CREATE POLICY "Staff can manage messages" ON "public"."messages" TO "authenticated" USING (("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role") OR "public"."has_role"("auth"."uid"(), 'employee'::"public"."app_role"))) WITH CHECK (("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role") OR "public"."has_role"("auth"."uid"(), 'employee'::"public"."app_role")));



CREATE POLICY "Staff can manage projects" ON "public"."projects" TO "authenticated" USING (("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role") OR "public"."has_role"("auth"."uid"(), 'employee'::"public"."app_role"))) WITH CHECK (("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role") OR "public"."has_role"("auth"."uid"(), 'employee'::"public"."app_role")));



CREATE POLICY "Staff can manage replies" ON "public"."request_replies" TO "authenticated" USING (("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role") OR "public"."has_role"("auth"."uid"(), 'employee'::"public"."app_role"))) WITH CHECK (("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role") OR "public"."has_role"("auth"."uid"(), 'employee'::"public"."app_role")));



CREATE POLICY "Staff can manage reports" ON "public"."reports" TO "authenticated" USING (("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role") OR "public"."has_role"("auth"."uid"(), 'employee'::"public"."app_role"))) WITH CHECK (("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role") OR "public"."has_role"("auth"."uid"(), 'employee'::"public"."app_role")));



CREATE POLICY "Staff can manage requests" ON "public"."requests" TO "authenticated" USING (("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role") OR "public"."has_role"("auth"."uid"(), 'employee'::"public"."app_role"))) WITH CHECK (("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role") OR "public"."has_role"("auth"."uid"(), 'employee'::"public"."app_role")));



CREATE POLICY "Staff can manage task comments" ON "public"."freelancer_task_comments" TO "authenticated" USING (("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role") OR "public"."has_role"("auth"."uid"(), 'employee'::"public"."app_role"))) WITH CHECK (("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role") OR "public"."has_role"("auth"."uid"(), 'employee'::"public"."app_role")));



CREATE POLICY "Staff can view agency settings" ON "public"."agency_settings" FOR SELECT TO "authenticated" USING (("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role") OR "public"."has_role"("auth"."uid"(), 'employee'::"public"."app_role")));



CREATE POLICY "Staff can view all profiles" ON "public"."profiles" FOR SELECT TO "authenticated" USING (("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role") OR "public"."has_role"("auth"."uid"(), 'employee'::"public"."app_role")));



CREATE POLICY "Staff can view all team details" ON "public"."team_details" FOR SELECT TO "authenticated" USING (("public"."has_role"("auth"."uid"(), 'admin'::"public"."app_role") OR "public"."has_role"("auth"."uid"(), 'employee'::"public"."app_role")));



CREATE POLICY "System inserts profiles" ON "public"."profiles" FOR INSERT TO "authenticated" WITH CHECK (("auth"."uid"() = "user_id"));



CREATE POLICY "Users can read own roles" ON "public"."user_roles" FOR SELECT TO "authenticated" USING (("auth"."uid"() = "user_id"));



CREATE POLICY "Users can update own profile" ON "public"."profiles" FOR UPDATE TO "authenticated" USING (("auth"."uid"() = "user_id")) WITH CHECK (("auth"."uid"() = "user_id"));



CREATE POLICY "Users can view own profile" ON "public"."profiles" FOR SELECT TO "authenticated" USING (("auth"."uid"() = "user_id"));



CREATE POLICY "Users can view own roles" ON "public"."user_roles" FOR SELECT TO "authenticated" USING (("auth"."uid"() = "user_id"));



CREATE POLICY "Users manage their own reminders" ON "public"."reminders" USING (("auth"."uid"() = "user_id")) WITH CHECK (("auth"."uid"() = "user_id"));



ALTER TABLE "public"."admin_audit_log" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."agency_settings" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."business_metrics" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."business_targets" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."businesses" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."client_employees" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."clients" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."data_integrity_log" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."documents" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."freelancer_messages" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."freelancer_services" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."freelancer_task_comments" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."freelancer_tasks" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."incoming_webhook_keys" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."leads" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."messages" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."outgoing_webhook_attempts" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."peer_reviews" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."profiles" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."projects" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."reminders" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."reports" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."request_replies" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."requests" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."team_details" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."user_roles" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."webhook_configs" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."webhook_dlq" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."webhook_logs" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."webhook_rate_limits" ENABLE ROW LEVEL SECURITY;




ALTER PUBLICATION "supabase_realtime" OWNER TO "postgres";






ALTER PUBLICATION "supabase_realtime" ADD TABLE ONLY "public"."business_metrics";



ALTER PUBLICATION "supabase_realtime" ADD TABLE ONLY "public"."businesses";



ALTER PUBLICATION "supabase_realtime" ADD TABLE ONLY "public"."clients";



ALTER PUBLICATION "supabase_realtime" ADD TABLE ONLY "public"."freelancer_messages";



ALTER PUBLICATION "supabase_realtime" ADD TABLE ONLY "public"."freelancer_tasks";



ALTER PUBLICATION "supabase_realtime" ADD TABLE ONLY "public"."leads";



ALTER PUBLICATION "supabase_realtime" ADD TABLE ONLY "public"."messages";



ALTER PUBLICATION "supabase_realtime" ADD TABLE ONLY "public"."peer_reviews";



ALTER PUBLICATION "supabase_realtime" ADD TABLE ONLY "public"."reminders";



ALTER PUBLICATION "supabase_realtime" ADD TABLE ONLY "public"."request_replies";



ALTER PUBLICATION "supabase_realtime" ADD TABLE ONLY "public"."requests";






GRANT USAGE ON SCHEMA "public" TO "postgres";
GRANT USAGE ON SCHEMA "public" TO "anon";
GRANT USAGE ON SCHEMA "public" TO "authenticated";
GRANT USAGE ON SCHEMA "public" TO "service_role";














































































































































































GRANT ALL ON FUNCTION "public"."can_access_business"("_user_id" "uuid", "_business_id" "uuid") TO "authenticated";
GRANT ALL ON FUNCTION "public"."can_access_business"("_user_id" "uuid", "_business_id" "uuid") TO "service_role";



GRANT ALL ON FUNCTION "public"."cleanup_client_employee_user"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."cleanup_client_employee_user"() TO "service_role";



GRANT ALL ON FUNCTION "public"."get_allowed_business_ids"("_user_id" "uuid") TO "authenticated";
GRANT ALL ON FUNCTION "public"."get_allowed_business_ids"("_user_id" "uuid") TO "service_role";



GRANT ALL ON FUNCTION "public"."get_freelancer_task_entities"("_task_ids" "uuid"[]) TO "authenticated";
GRANT ALL ON FUNCTION "public"."get_freelancer_task_entities"("_task_ids" "uuid"[]) TO "service_role";



GRANT ALL ON FUNCTION "public"."get_owner_client_id"("_user_id" "uuid") TO "authenticated";
GRANT ALL ON FUNCTION "public"."get_owner_client_id"("_user_id" "uuid") TO "service_role";



GRANT ALL ON FUNCTION "public"."get_public_agency_info"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."get_public_agency_info"() TO "service_role";



REVOKE ALL ON FUNCTION "public"."get_safe_team_details"("_user_ids" "uuid"[]) FROM PUBLIC;
GRANT ALL ON FUNCTION "public"."get_safe_team_details"("_user_ids" "uuid"[]) TO "authenticated";
GRANT ALL ON FUNCTION "public"."get_safe_team_details"("_user_ids" "uuid"[]) TO "service_role";



REVOKE ALL ON FUNCTION "public"."get_team_member_position"("_user_id" "uuid") FROM PUBLIC;
GRANT ALL ON FUNCTION "public"."get_team_member_position"("_user_id" "uuid") TO "authenticated";
GRANT ALL ON FUNCTION "public"."get_team_member_position"("_user_id" "uuid") TO "service_role";



GRANT ALL ON FUNCTION "public"."handle_new_user"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."handle_new_user"() TO "service_role";



GRANT ALL ON FUNCTION "public"."has_role"("_user_id" "uuid", "_role" "public"."app_role") TO "authenticated";
GRANT ALL ON FUNCTION "public"."has_role"("_user_id" "uuid", "_role" "public"."app_role") TO "service_role";



GRANT ALL ON FUNCTION "public"."is_client_employee"("_user_id" "uuid") TO "authenticated";
GRANT ALL ON FUNCTION "public"."is_client_employee"("_user_id" "uuid") TO "service_role";



GRANT ALL ON FUNCTION "public"."rls_auto_enable"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."rls_auto_enable"() TO "service_role";



GRANT ALL ON FUNCTION "public"."update_lead_status_updated_at"() TO "anon";
GRANT ALL ON FUNCTION "public"."update_lead_status_updated_at"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."update_lead_status_updated_at"() TO "service_role";



GRANT ALL ON FUNCTION "public"."update_updated_at_column"() TO "anon";
GRANT ALL ON FUNCTION "public"."update_updated_at_column"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."update_updated_at_column"() TO "service_role";



GRANT ALL ON FUNCTION "public"."validate_client_employee_businesses"() TO "anon";
GRANT ALL ON FUNCTION "public"."validate_client_employee_businesses"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."validate_client_employee_businesses"() TO "service_role";
























GRANT ALL ON TABLE "public"."admin_audit_log" TO "anon";
GRANT ALL ON TABLE "public"."admin_audit_log" TO "authenticated";
GRANT ALL ON TABLE "public"."admin_audit_log" TO "service_role";



GRANT ALL ON TABLE "public"."agency_settings" TO "anon";
GRANT ALL ON TABLE "public"."agency_settings" TO "authenticated";
GRANT ALL ON TABLE "public"."agency_settings" TO "service_role";



GRANT ALL ON TABLE "public"."business_metrics" TO "anon";
GRANT ALL ON TABLE "public"."business_metrics" TO "authenticated";
GRANT ALL ON TABLE "public"."business_metrics" TO "service_role";



GRANT ALL ON TABLE "public"."business_targets" TO "anon";
GRANT ALL ON TABLE "public"."business_targets" TO "authenticated";
GRANT ALL ON TABLE "public"."business_targets" TO "service_role";



GRANT ALL ON TABLE "public"."businesses" TO "anon";
GRANT ALL ON TABLE "public"."businesses" TO "authenticated";
GRANT ALL ON TABLE "public"."businesses" TO "service_role";



GRANT ALL ON TABLE "public"."client_employees" TO "anon";
GRANT ALL ON TABLE "public"."client_employees" TO "authenticated";
GRANT ALL ON TABLE "public"."client_employees" TO "service_role";



GRANT ALL ON TABLE "public"."clients" TO "anon";
GRANT ALL ON TABLE "public"."clients" TO "authenticated";
GRANT ALL ON TABLE "public"."clients" TO "service_role";



GRANT ALL ON TABLE "public"."data_integrity_log" TO "anon";
GRANT ALL ON TABLE "public"."data_integrity_log" TO "authenticated";
GRANT ALL ON TABLE "public"."data_integrity_log" TO "service_role";



GRANT ALL ON TABLE "public"."documents" TO "anon";
GRANT ALL ON TABLE "public"."documents" TO "authenticated";
GRANT ALL ON TABLE "public"."documents" TO "service_role";



GRANT ALL ON TABLE "public"."freelancer_messages" TO "anon";
GRANT ALL ON TABLE "public"."freelancer_messages" TO "authenticated";
GRANT ALL ON TABLE "public"."freelancer_messages" TO "service_role";



GRANT ALL ON TABLE "public"."freelancer_services" TO "anon";
GRANT ALL ON TABLE "public"."freelancer_services" TO "authenticated";
GRANT ALL ON TABLE "public"."freelancer_services" TO "service_role";



GRANT ALL ON TABLE "public"."freelancer_task_comments" TO "anon";
GRANT ALL ON TABLE "public"."freelancer_task_comments" TO "authenticated";
GRANT ALL ON TABLE "public"."freelancer_task_comments" TO "service_role";



GRANT ALL ON TABLE "public"."freelancer_tasks" TO "anon";
GRANT ALL ON TABLE "public"."freelancer_tasks" TO "authenticated";
GRANT ALL ON TABLE "public"."freelancer_tasks" TO "service_role";



GRANT ALL ON TABLE "public"."incoming_webhook_keys" TO "anon";
GRANT ALL ON TABLE "public"."incoming_webhook_keys" TO "authenticated";
GRANT ALL ON TABLE "public"."incoming_webhook_keys" TO "service_role";



GRANT ALL ON TABLE "public"."leads" TO "anon";
GRANT ALL ON TABLE "public"."leads" TO "authenticated";
GRANT ALL ON TABLE "public"."leads" TO "service_role";



GRANT ALL ON TABLE "public"."messages" TO "anon";
GRANT ALL ON TABLE "public"."messages" TO "authenticated";
GRANT ALL ON TABLE "public"."messages" TO "service_role";



GRANT ALL ON TABLE "public"."outgoing_webhook_attempts" TO "anon";
GRANT ALL ON TABLE "public"."outgoing_webhook_attempts" TO "authenticated";
GRANT ALL ON TABLE "public"."outgoing_webhook_attempts" TO "service_role";



GRANT ALL ON TABLE "public"."peer_reviews" TO "anon";
GRANT ALL ON TABLE "public"."peer_reviews" TO "authenticated";
GRANT ALL ON TABLE "public"."peer_reviews" TO "service_role";



GRANT ALL ON TABLE "public"."profiles" TO "anon";
GRANT ALL ON TABLE "public"."profiles" TO "authenticated";
GRANT ALL ON TABLE "public"."profiles" TO "service_role";



GRANT ALL ON TABLE "public"."projects" TO "anon";
GRANT ALL ON TABLE "public"."projects" TO "authenticated";
GRANT ALL ON TABLE "public"."projects" TO "service_role";



GRANT ALL ON TABLE "public"."reminders" TO "anon";
GRANT ALL ON TABLE "public"."reminders" TO "authenticated";
GRANT ALL ON TABLE "public"."reminders" TO "service_role";



GRANT ALL ON TABLE "public"."reports" TO "anon";
GRANT ALL ON TABLE "public"."reports" TO "authenticated";
GRANT ALL ON TABLE "public"."reports" TO "service_role";



GRANT ALL ON TABLE "public"."request_replies" TO "anon";
GRANT ALL ON TABLE "public"."request_replies" TO "authenticated";
GRANT ALL ON TABLE "public"."request_replies" TO "service_role";



GRANT ALL ON TABLE "public"."requests" TO "anon";
GRANT ALL ON TABLE "public"."requests" TO "authenticated";
GRANT ALL ON TABLE "public"."requests" TO "service_role";



GRANT ALL ON TABLE "public"."team_details" TO "anon";
GRANT ALL ON TABLE "public"."team_details" TO "authenticated";
GRANT ALL ON TABLE "public"."team_details" TO "service_role";



GRANT ALL ON TABLE "public"."user_roles" TO "anon";
GRANT ALL ON TABLE "public"."user_roles" TO "authenticated";
GRANT ALL ON TABLE "public"."user_roles" TO "service_role";



GRANT ALL ON TABLE "public"."webhook_configs" TO "anon";
GRANT ALL ON TABLE "public"."webhook_configs" TO "authenticated";
GRANT ALL ON TABLE "public"."webhook_configs" TO "service_role";



GRANT ALL ON TABLE "public"."webhook_dlq" TO "anon";
GRANT ALL ON TABLE "public"."webhook_dlq" TO "authenticated";
GRANT ALL ON TABLE "public"."webhook_dlq" TO "service_role";



GRANT ALL ON TABLE "public"."webhook_logs" TO "anon";
GRANT ALL ON TABLE "public"."webhook_logs" TO "authenticated";
GRANT ALL ON TABLE "public"."webhook_logs" TO "service_role";



GRANT ALL ON TABLE "public"."webhook_rate_limits" TO "anon";
GRANT ALL ON TABLE "public"."webhook_rate_limits" TO "authenticated";
GRANT ALL ON TABLE "public"."webhook_rate_limits" TO "service_role";









ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "service_role";



































