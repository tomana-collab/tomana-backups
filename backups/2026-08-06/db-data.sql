SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict pu3SiFqMZNT1YNQxJd4qdVZ1frmRfGnbJcvSzP9sW3gijj4i3SRbgALbgObnyQh

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: custom_oauth_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."custom_oauth_providers" ("id", "provider_type", "identifier", "name", "client_id", "client_secret", "acceptable_client_ids", "scopes", "pkce_enabled", "attribute_mapping", "authorization_params", "enabled", "email_optional", "issuer", "discovery_url", "skip_nonce_check", "cached_discovery", "discovery_cached_at", "authorization_url", "token_url", "userinfo_url", "jwks_uri", "created_at", "updated_at", "custom_claims_allowlist") FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at", "invite_token", "referrer", "oauth_client_state_id", "linking_target_id", "email_optional") FROM stdin;
236da42f-d044-4d50-8c65-b16a6bdf275f	\N	\N	\N	\N	google			2026-06-22 05:32:36.451411+00	2026-06-22 05:32:36.451411+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
69066494-35b0-45f4-bb3d-c92fd33976d1	\N	\N	\N	\N	google			2026-06-17 12:12:45.057336+00	2026-06-17 12:12:45.057336+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
9d234c20-7895-4a66-9033-78b15906ca5f	\N	\N	\N	\N	google			2026-06-17 12:13:18.82589+00	2026-06-17 12:13:18.82589+00	oauth	\N	\N	https://tomana.vercel.app/login	\N	\N	f
67b3b2ee-156b-41d4-8bf1-b6868b236cb6	\N	\N	\N	\N	google			2026-06-17 12:16:50.11842+00	2026-06-17 12:16:50.11842+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
467e1cc3-4d37-422e-9c8a-286e9c55bb00	\N	\N	\N	\N	google			2026-06-17 12:16:58.173581+00	2026-06-17 12:16:58.173581+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
31c2024a-8e43-4dfe-bbd5-9ce9888d1457	\N	\N	\N	\N	google			2026-06-17 12:17:05.158213+00	2026-06-17 12:17:05.158213+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
a0954b95-71c1-4d79-b911-7af1e6dce8c7	\N	\N	\N	\N	google			2026-06-17 12:17:19.964714+00	2026-06-17 12:17:19.964714+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
681fa10b-b9b6-4320-ac08-fb1cd7491e54	\N	\N	\N	\N	google			2026-06-22 15:25:31.638412+00	2026-06-22 15:25:31.638412+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
e920b9ca-0b8e-4d63-984f-a35bb0c8b606	\N	\N	\N	\N	google			2026-06-17 14:25:33.895464+00	2026-06-17 14:25:33.895464+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
c1aaf14a-0c30-4c6e-9c39-ef7770b2986b	\N	\N	\N	\N	google			2026-06-17 15:22:38.094237+00	2026-06-17 15:22:38.094237+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
26c9c2eb-2607-49b9-b43d-e1b75012e286	\N	\N	\N	\N	google			2026-06-23 04:47:16.840004+00	2026-06-23 04:47:16.840004+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
9187cb9d-5338-41d1-adf6-60e2f8e9a0b1	\N	\N	\N	\N	google			2026-06-17 18:40:06.269715+00	2026-06-17 18:40:06.269715+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
37b3b0c7-5636-420c-8357-8b76c1550413	\N	\N	\N	\N	google			2026-06-17 18:42:36.831966+00	2026-06-17 18:42:36.831966+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
0bb0b86e-9348-4b78-8be0-260c07c6592b	\N	\N	\N	\N	google			2026-06-17 18:42:46.703473+00	2026-06-17 18:42:46.703473+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
c0981352-ad40-4507-b75d-1ae9d4729ed1	\N	\N	\N	\N	google			2026-06-17 19:03:59.759341+00	2026-06-17 19:03:59.759341+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
6a92b5a5-ac67-4606-aa02-1312a8a9462d	\N	\N	\N	\N	google			2026-06-17 19:04:15.900472+00	2026-06-17 19:04:15.900472+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
a0f386be-f4c8-4089-bce0-78ac11dca5fe	\N	\N	\N	\N	google			2026-06-18 04:51:23.076087+00	2026-06-18 04:51:23.076087+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
8b12b1fb-b478-45f7-90b0-3e4482465f89	\N	\N	\N	\N	google			2026-06-24 04:40:12.853571+00	2026-06-24 04:40:12.853571+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
82ec9f74-d963-4958-a5fa-d3153567a60c	\N	\N	\N	\N	google			2026-06-27 04:26:29.898394+00	2026-06-27 04:26:29.898394+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
0afa2c67-2531-4b42-af07-b2cba6760271	\N	\N	\N	\N	google			2026-06-28 16:00:40.121916+00	2026-06-28 16:00:40.121916+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
6a48833a-44d3-45d0-912e-6f025aaf712c	\N	\N	\N	\N	google			2026-06-18 17:07:45.77458+00	2026-06-18 17:07:45.77458+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
5665f391-6dec-4667-83d5-32a55ec9a564	\N	\N	\N	\N	google			2026-06-18 17:08:10.918192+00	2026-06-18 17:08:10.918192+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
c2101085-d7f1-4224-ac1e-0dcf74bcaffb	\N	\N	\N	\N	google			2026-06-28 18:23:52.158503+00	2026-06-28 18:23:52.158503+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
9014047c-1207-4de2-a4d3-cedb1fe8b49a	\N	\N	\N	\N	google			2026-06-28 18:25:53.276341+00	2026-06-28 18:25:53.276341+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
88b6b4c8-ccad-402a-8b4d-104ea7fa8acc	\N	\N	\N	\N	google			2026-06-28 18:28:07.309628+00	2026-06-28 18:28:07.309628+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
b25345d9-cc16-4c19-9559-98bbf791fd4c	\N	\N	\N	\N	google			2026-06-29 04:57:14.015156+00	2026-06-29 04:57:14.015156+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
b8dcc8f5-88cb-489e-8bb2-83e961eed2af	\N	\N	\N	\N	google			2026-06-19 04:17:14.376826+00	2026-06-19 04:17:14.376826+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
34a3a220-f62c-489a-8a32-e3ae577bc5ae	\N	\N	\N	\N	google			2026-06-19 04:17:26.263354+00	2026-06-19 04:17:26.263354+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
eb0a6dd7-8403-4fb7-a78c-f8fd0258d239	\N	\N	\N	\N	google			2026-06-19 05:13:41.57161+00	2026-06-19 05:13:41.57161+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
17835e3e-c7b7-4c54-b1df-1c37f5fab636	\N	\N	\N	\N	google			2026-06-20 14:51:38.159997+00	2026-06-20 14:51:38.159997+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
89ce27b4-b7f4-4664-9630-33eb9013ab9e	\N	\N	\N	\N	google			2026-07-22 11:32:00.206916+00	2026-07-22 11:32:00.206916+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
c5116639-b58f-414a-9071-4fc4a057f950	\N	\N	\N	\N	google			2026-07-22 17:28:35.522744+00	2026-07-22 17:28:35.522744+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
de540dbf-7d4c-47ba-a0af-d9f1bf5d67ae	\N	\N	\N	\N	google			2026-07-27 05:15:54.461504+00	2026-07-27 05:15:54.461504+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
da523ed6-36e8-4d87-b183-0312840161a2	\N	\N	\N	\N	google			2026-08-05 15:50:40.247976+00	2026-08-05 15:50:40.247976+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
ee4ffa79-caba-47f3-9c41-9bd2b584525c	\N	\N	\N	\N	google			2026-08-05 15:51:19.108103+00	2026-08-05 15:51:19.108103+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
915c4016-0e14-4a8d-b54a-05dd01796aa2	\N	\N	\N	\N	google			2026-08-05 18:31:51.052219+00	2026-08-05 18:31:51.052219+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
c03cb502-a41f-4021-887d-2e7ee19824e3	\N	\N	\N	\N	google			2026-06-21 21:13:31.50286+00	2026-06-21 21:13:31.50286+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
f1d0f0e5-c7eb-4126-a188-5ec9b860b218	\N	\N	\N	\N	google			2026-06-21 21:25:58.964908+00	2026-06-21 21:25:58.964908+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
4aa1be7b-0016-42af-8849-7de63ce46ab2	\N	\N	\N	\N	google			2026-06-22 02:56:17.170166+00	2026-06-22 02:56:17.170166+00	oauth	\N	\N	https://tomana.vercel.app	\N	\N	f
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
00000000-0000-0000-0000-000000000000	e6c020a1-5884-4382-ab5f-353a58fd04fd	authenticated	authenticated	demo@tomana.co.il	$2a$10$idI/JKCXXqkMh7r60e8XYOoHfqkPslikY2jFbGJtMU5g6OLL45dn.	2026-06-17 11:20:29.280167+00	\N		\N		\N			\N	\N	{"provider": "email", "providers": ["email"]}	{"full_name": "לקוח לדוגמא", "email_verified": true}	\N	2026-06-17 11:20:29.277425+00	2026-06-17 11:20:29.282201+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	02265bc4-2916-41a3-aa4d-6e3b7a326b2e	authenticated	authenticated	pisga.shop@gmail.com	$2a$10$gn7DMxQ5eEMwOLLM7ZPhYO9QlFfs9oxVVCDTi7mvysCpklaZMZ6O.	2026-06-17 11:20:29.705665+00	\N		\N		\N			\N	2026-08-05 18:29:20.507382+00	{"provider": "email", "providers": ["email"]}	{"full_name": "לירן", "email_verified": true}	\N	2026-06-17 11:20:29.702373+00	2026-08-05 18:29:20.535015+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	1b3b0616-bc59-4a17-92ee-448088b3abab	authenticated	authenticated	barak@barak.com	$2a$10$PAuS38ZhrgBS0fLkQgc4Gefrhhyg2Tm8tV6GGTI4XFVHfD1i5hm0O	2026-06-17 11:20:29.061111+00	\N		\N		\N			\N	\N	{"provider": "email", "providers": ["email"]}	{"full_name": "ברק אמנו", "email_verified": true}	\N	2026-06-17 11:20:29.05816+00	2026-06-17 11:20:29.061856+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	f65946fa-d83d-4cb0-923b-68df36d6d131	authenticated	authenticated	taltal1@icloouad.com	$2a$10$j.wuySFSYeZCFyxQHkrwg.7yP38B/GlSm19Bgc0YBXCTDc7LYvjQq	2026-06-17 11:20:30.118033+00	\N		\N		\N			\N	2026-06-22 04:42:01.881775+00	{"provider": "email", "providers": ["email"]}	{"full_name": "", "email_verified": true}	\N	2026-06-17 11:20:30.115507+00	2026-06-22 04:42:01.912565+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	05fdc66b-c181-456a-8c28-4a00e2dbe240	authenticated	authenticated	avivzisman27@gmail.com	$2a$10$S7hcwAY//01/C9Ob/PZV8.yJpLgAlj6uUuEueofllo87.CGQiES7q	2026-06-17 11:20:30.328711+00	\N		\N		\N			\N	\N	{"provider": "email", "providers": ["email"]}	{"full_name": "אביב זיסמן", "email_verified": true}	\N	2026-06-17 11:20:30.326173+00	2026-06-17 11:20:30.329413+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	4fcb69ea-2c5f-44b0-958c-b013c6d93300	authenticated	authenticated	rpahima@gmail.com	$2a$10$KzinMXqUGfO8RYzxAzucdeURQwcrbGRIeNYypyKfCNEJCpgABBtRW	2026-06-17 11:20:29.911708+00	\N		\N	632a19aad3f579e8db9932121ea43093810871906f5bb6a9c38ac2b5	2026-06-17 11:36:35.843352+00			\N	2026-08-05 18:32:00.901699+00	{"provider": "email", "providers": ["email", "google"]}	{"iss": "https://accounts.google.com", "sub": "116302392840817859029", "name": "Roi Pahima", "email": "rpahima@gmail.com", "full_name": "Roi Pahima", "provider_id": "116302392840817859029", "email_verified": true, "phone_verified": false}	\N	2026-06-17 11:20:29.909181+00	2026-08-05 18:32:00.940818+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	77f3ae32-c3a1-4dc6-9fe2-ab60e149e31b	authenticated	authenticated	manager@mercaz-galay.co.il	$2a$10$tvCwAohnyBThp0qV2KOsXuGp.BPRdvXDNiYJwE8jDpAZoGgjwAutS	2026-06-17 11:20:29.491587+00	\N		\N		\N			\N	2026-08-05 20:17:28.443661+00	{"provider": "email", "providers": ["email"]}	{"full_name": "", "email_verified": true}	\N	2026-06-17 11:20:29.488912+00	2026-08-05 20:17:28.468293+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	e0eff06b-2096-4e02-bfba-53b87597a600	authenticated	authenticated	g.projakt@gmail.com	$2a$10$bROnV1fqsdQKiAwCWX3iouTkSGc/PtRrtKWwjV7qRqZuyk3AIiAoi	2026-07-22 12:00:50.22846+00	\N		\N		\N			\N	2026-07-26 10:55:44.408152+00	{"provider": "email", "providers": ["email"]}	{"email_verified": true}	\N	2026-07-22 12:00:50.19531+00	2026-08-02 13:40:41.958569+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	561619ad-f3bd-405f-8869-421845e3bf37	authenticated	authenticated	mercazgalay@gmail.com	$2a$10$N9TS5Rm4gmi1SGZe/1R3r.C71/1BqPR0ghYw5Ky6/yP5rAFynpF8S	2026-06-23 13:16:23.51801+00	\N		\N		\N			\N	2026-08-05 17:44:05.555271+00	{"provider": "email", "providers": ["email"]}	{"full_name": "גלית מרכז גלאי", "email_verified": true, "client_employee": true}	\N	2026-06-23 13:16:23.479943+00	2026-08-05 17:44:05.596645+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	599209a7-ebe3-4ddf-90ba-a50cca55271c	authenticated	authenticated	roi@tomana.co.il	$2a$10$PVTBkMlLnZbuGHYn6tsEsOyRQwJAtzzOkKwQrru6sjk7sY/mdnrMi	2026-06-17 11:20:28.831612+00	\N		\N		2026-06-18 17:39:49.655896+00			\N	2026-08-06 08:06:56.043554+00	{"provider": "email", "providers": ["email", "google"]}	{"iss": "https://accounts.google.com", "sub": "111981191532739772105", "name": "Roi Pahima", "email": "roi@tomana.co.il", "picture": "https://lh3.googleusercontent.com/a/ACg8ocKSGMZYsLDo9HojQnc149UQT81HLcIQrRlzRnFePUvgFAYj1Do=s96-c", "full_name": "Roi Pahima", "avatar_url": "https://lh3.googleusercontent.com/a/ACg8ocKSGMZYsLDo9HojQnc149UQT81HLcIQrRlzRnFePUvgFAYj1Do=s96-c", "provider_id": "111981191532739772105", "custom_claims": {"hd": "tomana.co.il"}, "email_verified": true, "phone_verified": false}	\N	2026-06-17 11:20:28.827908+00	2026-08-06 08:06:56.086008+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	7002569b-d5e0-47ad-b392-cc47d63e7bb9	authenticated	authenticated	tal1hazut1@gmail.com	$2a$10$0kFiIIodA4OAe0622YgW5ekKBZHH37gB4DzJCMRrdsH5eoTTAOoum	2026-08-05 19:55:32.072283+00	\N		\N		\N			\N	\N	{"provider": "email", "providers": ["email"]}	{"email_verified": true}	\N	2026-08-05 19:55:32.040219+00	2026-08-05 19:55:32.073235+00	\N	\N			\N		0	\N		\N	f	\N	f
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
599209a7-ebe3-4ddf-90ba-a50cca55271c	599209a7-ebe3-4ddf-90ba-a50cca55271c	{"sub": "599209a7-ebe3-4ddf-90ba-a50cca55271c", "email": "roi@tomana.co.il", "email_verified": false, "phone_verified": false}	email	2026-06-17 11:20:28.830181+00	2026-06-17 11:20:28.830235+00	2026-06-17 11:20:28.830235+00	9fb605a9-5fd5-47a5-b245-4e4b4a17d33f
1b3b0616-bc59-4a17-92ee-448088b3abab	1b3b0616-bc59-4a17-92ee-448088b3abab	{"sub": "1b3b0616-bc59-4a17-92ee-448088b3abab", "email": "barak@barak.com", "email_verified": false, "phone_verified": false}	email	2026-06-17 11:20:29.059522+00	2026-06-17 11:20:29.059574+00	2026-06-17 11:20:29.059574+00	e23a6372-e82c-4108-9dd6-be8267547837
e6c020a1-5884-4382-ab5f-353a58fd04fd	e6c020a1-5884-4382-ab5f-353a58fd04fd	{"sub": "e6c020a1-5884-4382-ab5f-353a58fd04fd", "email": "demo@tomana.co.il", "email_verified": false, "phone_verified": false}	email	2026-06-17 11:20:29.278665+00	2026-06-17 11:20:29.278714+00	2026-06-17 11:20:29.278714+00	ce3bbd5b-448b-4846-9b46-054038431031
4fcb69ea-2c5f-44b0-958c-b013c6d93300	4fcb69ea-2c5f-44b0-958c-b013c6d93300	{"sub": "4fcb69ea-2c5f-44b0-958c-b013c6d93300", "email": "rpahima@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-06-17 11:20:29.910454+00	2026-06-17 11:20:29.9105+00	2026-06-17 11:20:29.9105+00	ab259323-fa95-497f-b896-b40a0647a595
05fdc66b-c181-456a-8c28-4a00e2dbe240	05fdc66b-c181-456a-8c28-4a00e2dbe240	{"sub": "05fdc66b-c181-456a-8c28-4a00e2dbe240", "email": "avivzisman27@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-06-17 11:20:30.327472+00	2026-06-17 11:20:30.327524+00	2026-06-17 11:20:30.327524+00	4b1b5807-0b25-488d-85c3-cff209ba184a
02265bc4-2916-41a3-aa4d-6e3b7a326b2e	02265bc4-2916-41a3-aa4d-6e3b7a326b2e	{"sub": "02265bc4-2916-41a3-aa4d-6e3b7a326b2e", "email": "pisga.shop@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-06-17 11:20:29.70361+00	2026-06-17 11:20:29.703695+00	2026-06-17 11:20:29.703695+00	c4b313e3-7275-48d7-a2c9-43a5735baff1
f65946fa-d83d-4cb0-923b-68df36d6d131	f65946fa-d83d-4cb0-923b-68df36d6d131	{"sub": "f65946fa-d83d-4cb0-923b-68df36d6d131", "email": "taltal1@icloouad.com", "email_verified": false, "phone_verified": false}	email	2026-06-17 11:20:30.116737+00	2026-06-17 11:20:30.116809+00	2026-06-17 11:20:30.116809+00	8a6ecb20-7502-4d5f-9b34-31a5effd137f
7002569b-d5e0-47ad-b392-cc47d63e7bb9	7002569b-d5e0-47ad-b392-cc47d63e7bb9	{"sub": "7002569b-d5e0-47ad-b392-cc47d63e7bb9", "email": "tal1hazut1@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-08-05 19:55:32.064086+00	2026-08-05 19:55:32.064141+00	2026-08-05 19:55:32.064141+00	b596606f-8ad7-4abc-b26b-771e22aad2f8
e0eff06b-2096-4e02-bfba-53b87597a600	e0eff06b-2096-4e02-bfba-53b87597a600	{"sub": "e0eff06b-2096-4e02-bfba-53b87597a600", "email": "g.projakt@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-07-22 12:00:50.216937+00	2026-07-22 12:00:50.216993+00	2026-07-22 12:00:50.216993+00	99ce7117-ce4b-422a-9d65-9abcfcde817c
111981191532739772105	599209a7-ebe3-4ddf-90ba-a50cca55271c	{"iss": "https://accounts.google.com", "sub": "111981191532739772105", "name": "Roi Pahima", "email": "roi@tomana.co.il", "picture": "https://lh3.googleusercontent.com/a/ACg8ocKSGMZYsLDo9HojQnc149UQT81HLcIQrRlzRnFePUvgFAYj1Do=s96-c", "full_name": "Roi Pahima", "avatar_url": "https://lh3.googleusercontent.com/a/ACg8ocKSGMZYsLDo9HojQnc149UQT81HLcIQrRlzRnFePUvgFAYj1Do=s96-c", "provider_id": "111981191532739772105", "custom_claims": {"hd": "tomana.co.il"}, "email_verified": true, "phone_verified": false}	google	2026-06-17 11:40:28.782632+00	2026-06-17 11:40:28.782682+00	2026-08-06 08:06:56.023197+00	3dd1a4d5-11c5-4105-8afa-5dfddfac0fbd
77f3ae32-c3a1-4dc6-9fe2-ab60e149e31b	77f3ae32-c3a1-4dc6-9fe2-ab60e149e31b	{"sub": "77f3ae32-c3a1-4dc6-9fe2-ab60e149e31b", "email": "manager@mercaz-galay.co.il", "email_verified": false, "phone_verified": false}	email	2026-06-17 11:20:29.490123+00	2026-06-17 11:20:29.490177+00	2026-06-17 11:20:29.490177+00	2e2b3642-c22f-4043-84ae-560ecb31c66f
116302392840817859029	4fcb69ea-2c5f-44b0-958c-b013c6d93300	{"iss": "https://accounts.google.com", "sub": "116302392840817859029", "name": "Roi Pahima", "email": "rpahima@gmail.com", "full_name": "Roi Pahima", "provider_id": "116302392840817859029", "email_verified": true, "phone_verified": false}	google	2026-06-28 17:01:23.784672+00	2026-06-28 17:01:23.784725+00	2026-08-05 18:32:00.882216+00	456acff0-44a3-491e-b21f-7f4bb018c2d8
561619ad-f3bd-405f-8869-421845e3bf37	561619ad-f3bd-405f-8869-421845e3bf37	{"sub": "561619ad-f3bd-405f-8869-421845e3bf37", "email": "mercazgalay@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-06-23 13:16:23.510668+00	2026-06-23 13:16:23.510722+00	2026-06-23 13:16:23.510722+00	7137197c-1d0f-4262-bdbf-9f5d2292eff3
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_clients" ("id", "client_secret_hash", "registration_type", "redirect_uris", "grant_types", "client_name", "client_uri", "logo_uri", "created_at", "updated_at", "deleted_at", "client_type", "token_endpoint_auth_method") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag", "oauth_client_id", "refresh_token_hmac_key", "refresh_token_counter", "scopes") FROM stdin;
74de6d08-2037-4203-8e60-07280b0ab79a	599209a7-ebe3-4ddf-90ba-a50cca55271c	2026-08-05 21:29:11.6163+00	2026-08-06 05:55:35.235893+00	\N	aal1	\N	2026-08-06 05:55:35.235794	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36	89.139.43.33	\N	\N	\N	\N	\N
c4d7e9c3-ab32-45b7-9634-92f05cb84de2	599209a7-ebe3-4ddf-90ba-a50cca55271c	2026-08-06 08:06:56.045983+00	2026-08-06 08:06:56.045983+00	\N	aal1	\N	\N	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36	188.120.150.175	\N	\N	\N	\N	\N
9e978ebd-5553-4a47-8be6-a41f8a8d84e8	77f3ae32-c3a1-4dc6-9fe2-ab60e149e31b	2026-08-05 20:17:28.447913+00	2026-08-05 20:17:28.447913+00	\N	aal1	\N	\N	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36	89.139.43.33	\N	\N	\N	\N	\N
211f8026-faca-43a3-98d0-5501e0557047	e0eff06b-2096-4e02-bfba-53b87597a600	2026-07-26 10:55:44.410536+00	2026-08-02 10:54:27.610049+00	\N	aal1	\N	2026-08-02 10:54:27.609942	Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.5.2 Mobile/15E148 Safari/604.1	141.226.89.127	\N	\N	\N	\N	\N
4977acb2-bd6a-472a-9c7e-2e21c686aba4	e0eff06b-2096-4e02-bfba-53b87597a600	2026-07-22 14:38:35.268809+00	2026-08-02 13:40:41.974728+00	\N	aal1	\N	2026-08-02 13:40:41.974616	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36	37.60.47.88	\N	\N	\N	\N	\N
066933c3-5f4b-4ac6-9e84-460264585857	e0eff06b-2096-4e02-bfba-53b87597a600	2026-07-22 12:50:54.835184+00	2026-07-22 12:50:54.835184+00	\N	aal1	\N	\N	Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.5 Mobile/15E148 Safari/604.1	141.226.89.184	\N	\N	\N	\N	\N
1ead2378-0ff9-4210-b876-0ad6a03d9519	599209a7-ebe3-4ddf-90ba-a50cca55271c	2026-08-05 21:31:02.578079+00	2026-08-06 04:35:22.595543+00	\N	aal1	\N	2026-08-06 04:35:22.595434	Mozilla/5.0 (iPhone; CPU iPhone OS 26_5_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/150.0.7871.113 Mobile/15E148 Safari/604.1	89.139.43.33	\N	\N	\N	\N	\N
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
066933c3-5f4b-4ac6-9e84-460264585857	2026-07-22 12:50:54.887997+00	2026-07-22 12:50:54.887997+00	password	b84b7e95-537d-4e24-89dc-0b37687dd743
4977acb2-bd6a-472a-9c7e-2e21c686aba4	2026-07-22 14:38:35.34728+00	2026-07-22 14:38:35.34728+00	password	2188e619-557c-43ca-a489-86faf0ccec42
211f8026-faca-43a3-98d0-5501e0557047	2026-07-26 10:55:44.49807+00	2026-07-26 10:55:44.49807+00	password	6c197f67-cc02-4aa5-85b3-bc140044d68f
9e978ebd-5553-4a47-8be6-a41f8a8d84e8	2026-08-05 20:17:28.473501+00	2026-08-05 20:17:28.473501+00	password	b3a59c68-7085-45a8-a131-9e04a41d13e5
74de6d08-2037-4203-8e60-07280b0ab79a	2026-08-05 21:29:11.656674+00	2026-08-05 21:29:11.656674+00	oauth	a4fd0950-328c-462f-bff9-56f75f1ae76b
1ead2378-0ff9-4210-b876-0ad6a03d9519	2026-08-05 21:31:02.605883+00	2026-08-05 21:31:02.605883+00	oauth	e184f4af-354c-45a9-8c06-76459992e648
c4d7e9c3-ab32-45b7-9634-92f05cb84de2	2026-08-06 08:06:56.094104+00	2026-08-06 08:06:56.094104+00	oauth	8a5a37a7-89cc-4fcc-9ace-6cb8837b96e1
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid", "last_webauthn_challenge_data") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_authorizations" ("id", "authorization_id", "client_id", "user_id", "redirect_uri", "scope", "state", "resource", "code_challenge", "code_challenge_method", "response_type", "status", "authorization_code", "created_at", "expires_at", "approved_at", "nonce") FROM stdin;
\.


--
-- Data for Name: oauth_client_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_client_states" ("id", "provider_type", "code_verifier", "created_at") FROM stdin;
\.


--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_consents" ("id", "user_id", "client_id", "scopes", "granted_at", "revoked_at") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
ad9125e7-b3b7-475d-8aa7-270ab9392181	4fcb69ea-2c5f-44b0-958c-b013c6d93300	recovery_token	632a19aad3f579e8db9932121ea43093810871906f5bb6a9c38ac2b5	rpahima@gmail.com	2026-06-17 11:36:38.608629	2026-06-17 11:36:38.608629
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
00000000-0000-0000-0000-000000000000	372	bdlpnahzmpje	e0eff06b-2096-4e02-bfba-53b87597a600	t	2026-07-22 14:38:35.305386+00	2026-07-23 15:40:31.720782+00	\N	4977acb2-bd6a-472a-9c7e-2e21c686aba4
00000000-0000-0000-0000-000000000000	424	wpxzkus65r6r	599209a7-ebe3-4ddf-90ba-a50cca55271c	t	2026-08-06 00:34:20.556188+00	2026-08-06 01:32:42.294007+00	s33hi4cg75ns	74de6d08-2037-4203-8e60-07280b0ab79a
00000000-0000-0000-0000-000000000000	425	3orfidcjrdby	599209a7-ebe3-4ddf-90ba-a50cca55271c	t	2026-08-06 01:32:42.316939+00	2026-08-06 02:30:52.298962+00	wpxzkus65r6r	74de6d08-2037-4203-8e60-07280b0ab79a
00000000-0000-0000-0000-000000000000	377	bsntl4rv6ap2	e0eff06b-2096-4e02-bfba-53b87597a600	t	2026-07-23 15:40:31.741358+00	2026-07-25 21:46:50.083176+00	bdlpnahzmpje	4977acb2-bd6a-472a-9c7e-2e21c686aba4
00000000-0000-0000-0000-000000000000	426	njdgwcbbrvpi	599209a7-ebe3-4ddf-90ba-a50cca55271c	t	2026-08-06 02:30:52.320792+00	2026-08-06 03:41:02.313432+00	3orfidcjrdby	74de6d08-2037-4203-8e60-07280b0ab79a
00000000-0000-0000-0000-000000000000	421	slqquz73fos7	599209a7-ebe3-4ddf-90ba-a50cca55271c	t	2026-08-05 21:31:02.592635+00	2026-08-06 04:35:22.544764+00	\N	1ead2378-0ff9-4210-b876-0ad6a03d9519
00000000-0000-0000-0000-000000000000	428	hvwo2nfrjg27	599209a7-ebe3-4ddf-90ba-a50cca55271c	f	2026-08-06 04:35:22.562923+00	2026-08-06 04:35:22.562923+00	slqquz73fos7	1ead2378-0ff9-4210-b876-0ad6a03d9519
00000000-0000-0000-0000-000000000000	427	2vrrlouq6rce	599209a7-ebe3-4ddf-90ba-a50cca55271c	t	2026-08-06 03:41:02.333504+00	2026-08-06 04:39:47.75158+00	njdgwcbbrvpi	74de6d08-2037-4203-8e60-07280b0ab79a
00000000-0000-0000-0000-000000000000	382	4onnvchzpq77	e0eff06b-2096-4e02-bfba-53b87597a600	t	2026-07-26 10:55:44.455249+00	2026-07-27 04:26:00.049148+00	\N	211f8026-faca-43a3-98d0-5501e0557047
00000000-0000-0000-0000-000000000000	429	k75e6gtnpags	599209a7-ebe3-4ddf-90ba-a50cca55271c	t	2026-08-06 04:39:47.758483+00	2026-08-06 05:55:35.158902+00	2vrrlouq6rce	74de6d08-2037-4203-8e60-07280b0ab79a
00000000-0000-0000-0000-000000000000	430	5qgr5g46dccq	599209a7-ebe3-4ddf-90ba-a50cca55271c	f	2026-08-06 05:55:35.182999+00	2026-08-06 05:55:35.182999+00	k75e6gtnpags	74de6d08-2037-4203-8e60-07280b0ab79a
00000000-0000-0000-0000-000000000000	379	s7owtz2mut64	e0eff06b-2096-4e02-bfba-53b87597a600	t	2026-07-25 21:46:50.104522+00	2026-07-27 06:58:03.854849+00	bsntl4rv6ap2	4977acb2-bd6a-472a-9c7e-2e21c686aba4
00000000-0000-0000-0000-000000000000	431	3by6lefgr6c4	599209a7-ebe3-4ddf-90ba-a50cca55271c	f	2026-08-06 08:06:56.069354+00	2026-08-06 08:06:56.069354+00	\N	c4d7e9c3-ab32-45b7-9634-92f05cb84de2
00000000-0000-0000-0000-000000000000	383	vxa6lcmoef3p	e0eff06b-2096-4e02-bfba-53b87597a600	t	2026-07-27 04:26:00.074308+00	2026-07-27 07:58:15.972086+00	4onnvchzpq77	211f8026-faca-43a3-98d0-5501e0557047
00000000-0000-0000-0000-000000000000	385	iqly2cx5grcu	e0eff06b-2096-4e02-bfba-53b87597a600	t	2026-07-27 06:58:03.879095+00	2026-07-27 09:17:10.966205+00	s7owtz2mut64	4977acb2-bd6a-472a-9c7e-2e21c686aba4
00000000-0000-0000-0000-000000000000	386	kcgfo6wklhrt	e0eff06b-2096-4e02-bfba-53b87597a600	t	2026-07-27 07:58:15.98968+00	2026-07-27 11:47:31.276878+00	vxa6lcmoef3p	211f8026-faca-43a3-98d0-5501e0557047
00000000-0000-0000-0000-000000000000	387	uodjeu3rrfiz	e0eff06b-2096-4e02-bfba-53b87597a600	t	2026-07-27 09:17:10.986336+00	2026-07-28 06:01:32.80204+00	iqly2cx5grcu	4977acb2-bd6a-472a-9c7e-2e21c686aba4
00000000-0000-0000-0000-000000000000	389	2hidsnes6vu5	e0eff06b-2096-4e02-bfba-53b87597a600	t	2026-07-28 06:01:32.82236+00	2026-07-28 07:56:56.527919+00	uodjeu3rrfiz	4977acb2-bd6a-472a-9c7e-2e21c686aba4
00000000-0000-0000-0000-000000000000	388	mteh4lztgkyu	e0eff06b-2096-4e02-bfba-53b87597a600	t	2026-07-27 11:47:31.297528+00	2026-07-29 14:07:13.524868+00	kcgfo6wklhrt	211f8026-faca-43a3-98d0-5501e0557047
00000000-0000-0000-0000-000000000000	391	7lmyplf77qhh	e0eff06b-2096-4e02-bfba-53b87597a600	t	2026-07-29 14:07:13.541986+00	2026-07-30 17:21:48.889881+00	mteh4lztgkyu	211f8026-faca-43a3-98d0-5501e0557047
00000000-0000-0000-0000-000000000000	392	cirkruxbykda	e0eff06b-2096-4e02-bfba-53b87597a600	t	2026-07-30 17:21:48.905927+00	2026-08-02 10:54:27.562269+00	7lmyplf77qhh	211f8026-faca-43a3-98d0-5501e0557047
00000000-0000-0000-0000-000000000000	393	typclnqpqiyr	e0eff06b-2096-4e02-bfba-53b87597a600	f	2026-08-02 10:54:27.583577+00	2026-08-02 10:54:27.583577+00	cirkruxbykda	211f8026-faca-43a3-98d0-5501e0557047
00000000-0000-0000-0000-000000000000	390	7ihidapwwcif	e0eff06b-2096-4e02-bfba-53b87597a600	t	2026-07-28 07:56:56.550223+00	2026-08-02 13:40:41.931645+00	2hidsnes6vu5	4977acb2-bd6a-472a-9c7e-2e21c686aba4
00000000-0000-0000-0000-000000000000	394	o7z4l2xdfgd7	e0eff06b-2096-4e02-bfba-53b87597a600	f	2026-08-02 13:40:41.950917+00	2026-08-02 13:40:41.950917+00	7ihidapwwcif	4977acb2-bd6a-472a-9c7e-2e21c686aba4
00000000-0000-0000-0000-000000000000	371	jwf3yhnoobrr	e0eff06b-2096-4e02-bfba-53b87597a600	f	2026-07-22 12:50:54.858621+00	2026-07-22 12:50:54.858621+00	\N	066933c3-5f4b-4ac6-9e84-460264585857
00000000-0000-0000-0000-000000000000	415	z2wheia2gzbp	77f3ae32-c3a1-4dc6-9fe2-ab60e149e31b	f	2026-08-05 20:17:28.459445+00	2026-08-05 20:17:28.459445+00	\N	9e978ebd-5553-4a47-8be6-a41f8a8d84e8
00000000-0000-0000-0000-000000000000	420	4hing4r22zza	599209a7-ebe3-4ddf-90ba-a50cca55271c	t	2026-08-05 21:29:11.628002+00	2026-08-05 22:27:21.877556+00	\N	74de6d08-2037-4203-8e60-07280b0ab79a
00000000-0000-0000-0000-000000000000	422	zsnv7ka7pcen	599209a7-ebe3-4ddf-90ba-a50cca55271c	t	2026-08-05 22:27:21.902799+00	2026-08-05 23:35:56.985475+00	4hing4r22zza	74de6d08-2037-4203-8e60-07280b0ab79a
00000000-0000-0000-0000-000000000000	423	s33hi4cg75ns	599209a7-ebe3-4ddf-90ba-a50cca55271c	t	2026-08-05 23:35:57.005506+00	2026-08-06 00:34:20.53188+00	zsnv7ka7pcen	74de6d08-2037-4203-8e60-07280b0ab79a
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at", "disabled") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: webauthn_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_challenges" ("id", "user_id", "challenge_type", "session_data", "created_at", "expires_at") FROM stdin;
\.


--
-- Data for Name: webauthn_credentials; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_credentials" ("id", "user_id", "credential_id", "public_key", "attestation_type", "aaguid", "sign_count", "transports", "backup_eligible", "backed_up", "friendly_name", "created_at", "updated_at", "last_used_at") FROM stdin;
\.


--
-- Data for Name: admin_audit_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."admin_audit_log" ("id", "admin_user_id", "action", "target_type", "target_id", "target_label", "created_at") FROM stdin;
\.


--
-- Data for Name: agency_settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agency_settings" ("id", "user_id", "company_name", "email", "phone", "website", "created_at", "updated_at", "notifications_webhook_url", "meta_pixel_id", "google_tag_id", "custom_tracking_html") FROM stdin;
0ada3883-580e-46fd-8458-c524132a4e1b	599209a7-ebe3-4ddf-90ba-a50cca55271c	טומנה	roi@tomana.co.il	0527777101	tomana.co.il	2026-03-08 21:53:09.999487+00	2026-06-28 18:06:19.905778+00	https://hook.us1.make.com/w5iqyn4m45kxl4usz571c7t5a9pjtstk	1173796043333150	AW-17523974998	
\.


--
-- Data for Name: clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."clients" ("id", "user_id", "name", "contact_name", "email", "phone", "status", "created_at", "updated_at", "client_type", "health_status", "health_reasons", "health_checked_at", "health_alerted_at") FROM stdin;
3ba7243c-854f-4969-bb7b-6a1b748ac214	\N	amigo tatto	אמיר סלאח	Ameersa7@gmail.com	\N	פעיל	2026-08-05 21:03:47.993416+00	2026-08-06 07:00:02.899977+00	לידים	ok	{}	2026-08-06 07:00:01.702+00	\N
fb4caee1-63fb-4e1e-8281-3e1d651fccba	1b3b0616-bc59-4a17-92ee-448088b3abab	רד ברי	ברק אמנו	barak@barak.com	0000000	לא פעיל	2026-03-31 06:54:07.522165+00	2026-06-18 04:52:52.361694+00	לידים	ok	{}	\N	\N
8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	77f3ae32-c3a1-4dc6-9fe2-ab60e149e31b	מרכז גלאי בע״מ	רוויטל	manager@mercaz-galay.co.il	052-587-7525	לא פעיל	2026-06-17 08:46:36.129706+00	2026-08-05 18:25:52.737868+00	לידים	at_risk	{"ירידה בלידים בעסק 'מרכז גלאי בע״מ' (130 מול 197 בחודש קודם)"}	2026-08-05 07:00:01.025+00	\N
a248ecae-9af4-4056-8fc9-668ca0377228	e6c020a1-5884-4382-ab5f-353a58fd04fd	עסק לדוגמא בע״מ	ישראל ישראלים	demo@tomana.co.il	050-0000000	פעיל	2026-04-15 08:16:29.501475+00	2026-08-05 21:23:09.651237+00	לידים	ok	{}	2026-08-05 07:00:01.025+00	\N
b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	02265bc4-2916-41a3-aa4d-6e3b7a326b2e	לירן ענבר	לירן	pisga.shop@gmail.com	052-848-5559	פעיל	2026-03-08 22:38:59.147088+00	2026-08-06 07:00:02.283925+00	מכירות	ok	{}	2026-08-06 07:00:01.702+00	\N
8f21c002-2efd-4224-ac09-47432a41923d	e0eff06b-2096-4e02-bfba-53b87597a600	יג פרוייקטים	טל ועידן	g.projakt@gmail.com	\N	פעיל	2026-07-22 12:00:51.367054+00	2026-08-06 07:00:02.491946+00	לידים	at_risk	{"ירידה בלידים בעסק 'יג פרוייקטים' (1 מול 12 בחודש קודם)"}	2026-08-06 07:00:01.702+00	\N
202abebc-93a9-4fb9-926a-8c7677282aca	f65946fa-d83d-4cb0-923b-68df36d6d131	טל והבה	טל והנה	taltal1@icloouad.com	roi@tomana.co.il	פעיל	2026-03-10 20:26:47.624878+00	2026-08-06 07:00:02.646284+00	לידים	at_risk	{"ירידה בלידים בעסק 'חוות בניה' (6 מול 62 בחודש קודם)","אין כניסה לפורטל מעל 30 יום"}	2026-08-06 07:00:01.702+00	\N
acc67398-d73a-407a-a801-76c172c544d8	4fcb69ea-2c5f-44b0-958c-b013c6d93300	רועי פחימה	רועי פחימה	rpahimקa@gmail.com	000000	לא פעיל	2026-03-29 07:02:10.100864+00	2026-06-28 18:00:02.977626+00	שירות	ok	{}	\N	\N
01a6c28f-4761-4b65-97d8-db27e6752927	7002569b-d5e0-47ad-b392-cc47d63e7bb9	טל מרום	טל חזוט	tal1hazut1@Gmail.com	0545818593	פעיל	2026-08-05 19:55:05.894596+00	2026-08-06 07:00:02.791954+00	לידים	at_risk	{"הלקוח עדיין לא נכנס לפורטל"}	2026-08-06 07:00:01.702+00	\N
\.


--
-- Data for Name: businesses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."businesses" ("id", "client_id", "name", "status", "client_type", "created_at", "updated_at", "contact_name", "email", "phone", "address", "ad_platforms") FROM stdin;
c9bcd1b4-f452-43db-bb47-027e9b26f22e	acc67398-d73a-407a-a801-76c172c544d8	רועי פחימה	פעיל	שירות	2026-03-29 07:02:10.584348+00	2026-03-29 07:02:10.584348+00					{}
9e64b292-5106-4613-825a-76363729547a	fb4caee1-63fb-4e1e-8281-3e1d651fccba	רד ברי	פעיל	לידים	2026-03-31 06:54:07.683781+00	2026-03-31 06:54:07.683781+00					{}
bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	a248ecae-9af4-4056-8fc9-668ca0377228	סוכנות דיגיטל - הדגמה	פעיל	לידים	2026-04-15 08:16:29.642298+00	2026-04-15 08:16:29.642298+00	ישראל ישראלי	demo@tomana.co.il	050-0000000		{}
1286fd00-4d4c-40db-961c-63b72e38d8ac	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	אלקטריק סייל	פעיל	מכירות	2026-03-10 18:54:15.618938+00	2026-06-18 18:30:30.049817+00					{Meta}
32351ab5-411c-440c-9bae-70e504d4052f	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	פסגת החשמל	פעיל	מכירות	2026-03-10 19:01:31.878256+00	2026-06-18 18:30:37.090027+00					{Meta}
800b0aec-5843-4002-a897-4d5827bd22b0	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	מרכז גלאי בע״מ	פעיל	לידים	2026-06-17 08:46:36.327635+00	2026-06-18 18:31:19.700425+00		mercazgalay@gmail.com	052-587-7525		{"Google Ads",Meta}
45942137-54f7-4fd1-8227-472c92c86933	202abebc-93a9-4fb9-926a-8c7677282aca	אקסטרים אילת	פעיל	לידים	2026-03-30 07:41:13.149973+00	2026-06-18 18:31:44.576848+00	טל	taltal1988@icloud.com	0523423472	קאופמן 12 אילת	{"Google Ads"}
5fb4e556-2df8-4c32-a693-c7bae38af54b	8f21c002-2efd-4224-ac09-47432a41923d	יג פרוייקטים	פעיל	לידים	2026-07-22 12:00:51.572941+00	2026-07-22 12:00:51.572941+00			\N	\N	{}
43dda6fd-1ba7-40df-a704-b1ab7bb5c305	01a6c28f-4761-4b65-97d8-db27e6752927	livo	פעיל	לידים	2026-08-05 19:55:06.170874+00	2026-08-05 19:55:50.631812+00					{"Google Ads",Meta}
425385ec-6f88-459c-a25e-abc8627ba78e	202abebc-93a9-4fb9-926a-8c7677282aca	חוות בניה	פעיל	לידים	2026-03-10 20:26:47.846196+00	2026-08-05 20:51:14.2044+00					{Meta}
55095605-0118-4308-af9f-5b71c7015423	3ba7243c-854f-4969-bb7b-6a1b748ac214	amigo tatto	פעיל	לידים	2026-08-05 21:03:48.426603+00	2026-08-05 21:04:05.967779+00					{"Google Ads"}
\.


--
-- Data for Name: business_metrics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."business_metrics" ("id", "business_id", "client_id", "month", "platform", "leads_count", "cost_per_lead", "paying_customers", "ad_spend", "impressions", "clicks", "sales_count", "revenue", "cost_per_customer", "notes", "created_at", "updated_at", "ctr") FROM stdin;
35da69a9-881e-4de7-8754-b190e078eb16	9e64b292-5106-4613-825a-76363729547a	fb4caee1-63fb-4e1e-8281-3e1d651fccba	2026-04	Google Ads	8	98	0	786	914	95	0	0	0		2026-04-19 10:55:46.535226+00	2026-04-19 10:55:46.535226+00	0.0000
7a768b37-61c8-4241-88bd-6e3b82b173af	32351ab5-411c-440c-9bae-70e504d4052f	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	2026-05	Meta	0	0	0	4936.38	0	0	20	58927	0		2026-05-10 07:00:26.160105+00	2026-06-01 10:00:30.967971+00	0.0000
0c9e79bc-a834-43aa-9f28-a0dff292e094	45942137-54f7-4fd1-8227-472c92c86933	202abebc-93a9-4fb9-926a-8c7677282aca	2026-04	Google Ads	167	12	0	2167	4631	732	0	0	0		2026-04-19 10:48:01.346165+00	2026-04-26 07:00:07.214148+00	0.0000
f461c988-e250-4de1-9f97-2667c8ee84d6	32351ab5-411c-440c-9bae-70e504d4052f	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	2026-04	Meta	0	0	0	4825.57	0	0	40	108179	0		2026-04-05 07:00:27.323471+00	2026-05-01 10:00:26.809839+00	0.0000
49893b7a-44b1-4947-981b-9223c146d2b6	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	a248ecae-9af4-4056-8fc9-668ca0377228	2025-05	TikTok	42	125.64	12	5277	34246	1328	0	51102	0		2026-04-15 08:16:29.758609+00	2026-04-15 08:16:29.758609+00	0.0000
4356dfa8-359b-4c0a-9cef-7cb9e3c4a479	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	a248ecae-9af4-4056-8fc9-668ca0377228	2025-06	Instagram	31	101.58	5	3149	35377	1007	0	33660	0		2026-04-15 08:16:29.758609+00	2026-04-15 08:16:29.758609+00	0.0000
66aefbe8-565e-4ff2-82c3-dc0bd005a001	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	a248ecae-9af4-4056-8fc9-668ca0377228	2025-07	Facebook	24	234.42	7	5626	29015	1037	0	32737	0		2026-04-15 08:16:29.758609+00	2026-04-15 08:16:29.758609+00	0.0000
39353c2f-6c71-4f2b-8c69-07f04a26d191	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	a248ecae-9af4-4056-8fc9-668ca0377228	2025-08	Google Ads	20	164.65	5	3293	30918	757	0	18122	0		2026-04-15 08:16:29.758609+00	2026-04-15 08:16:29.758609+00	0.0000
b1f84134-5887-4ff7-a8fd-80ee9da64b13	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	a248ecae-9af4-4056-8fc9-668ca0377228	2025-09	TikTok	26	245.46	7	6382	25512	1245	0	33588	0		2026-04-15 08:16:29.758609+00	2026-04-15 08:16:29.758609+00	0.0000
9cfe4915-95df-40a6-86d3-9a73ff9a29b0	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	a248ecae-9af4-4056-8fc9-668ca0377228	2025-10	Instagram	35	198.83	10	6959	31424	1356	0	28194	0		2026-04-15 08:16:29.758609+00	2026-04-15 08:16:29.758609+00	0.0000
872ea577-defb-4dca-a74b-b9d668b1c5e3	32351ab5-411c-440c-9bae-70e504d4052f	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	2025-09	Meta	0	0	0	4725	0	0	28	86426	0		2026-03-15 21:00:34.253552+00	2026-03-15 21:06:44.22684+00	0.0000
b874de6b-f8f2-44f2-bcf5-1b2e021ab211	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	a248ecae-9af4-4056-8fc9-668ca0377228	2025-11	Facebook	26	277.77	4	7222	26528	1018	0	27372	0		2026-04-15 08:16:29.758609+00	2026-04-15 08:16:29.758609+00	0.0000
ab677c1c-acb0-409b-b8d7-92de122df1f0	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	a248ecae-9af4-4056-8fc9-668ca0377228	2025-12	Google Ads	26	213.81	7	5559	25798	816	0	29882	0		2026-04-15 08:16:29.758609+00	2026-04-15 08:16:29.758609+00	0.0000
5feeb13c-24b7-44d7-a95e-83cdc7130377	32351ab5-411c-440c-9bae-70e504d4052f	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	2025-10	Meta	0	0	41	4125	0	0	41	121202	101		2026-03-15 21:23:27.801173+00	2026-03-15 21:25:42.651009+00	0.0000
1e5ff62a-e110-43b4-b6cc-5e4fac8e3e1b	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	a248ecae-9af4-4056-8fc9-668ca0377228	2026-01	TikTok	43	72.28	12	3108	26653	583	0	44612	0		2026-04-15 08:16:29.758609+00	2026-04-15 08:16:29.758609+00	0.0000
10a473b3-3be6-4150-9eae-304d0b3a14b1	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	a248ecae-9af4-4056-8fc9-668ca0377228	2026-02	Instagram	37	178.7	9	6612	22692	874	0	32518	0		2026-04-15 08:16:29.758609+00	2026-04-15 08:16:29.758609+00	0.0000
87e329da-5a83-4366-ad8d-f97a431240bb	32351ab5-411c-440c-9bae-70e504d4052f	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	2025-11	Meta	0	0	56	6127	0	0	56	142264	109		2026-03-15 21:26:40.627686+00	2026-03-15 21:28:56.528236+00	0.0000
ae432faa-90ad-451c-a750-9b392eaa56da	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	a248ecae-9af4-4056-8fc9-668ca0377228	2026-03	Facebook	26	165.08	5	4292	21121	621	0	22834	0		2026-04-15 08:16:29.758609+00	2026-04-15 08:16:29.758609+00	0.0000
1cdaf6bc-7f67-4eed-954f-8f22cc7e368c	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	a248ecae-9af4-4056-8fc9-668ca0377228	2026-04	Google Ads	21	262.76	3	5518	20541	960	0	25516	0		2026-04-15 08:16:29.758609+00	2026-04-15 08:16:29.758609+00	0.0000
b8b4d9ae-af06-48dc-8a4e-df45549ef059	32351ab5-411c-440c-9bae-70e504d4052f	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	2025-12	Meta	0	0	44	5040	0	0	44	118383	115		2026-03-15 21:29:34.640729+00	2026-03-15 21:31:12.195994+00	0.0000
af37f932-fc02-4c08-8a05-342e12d5cc2c	45942137-54f7-4fd1-8227-472c92c86933	202abebc-93a9-4fb9-926a-8c7677282aca	2026-05	Google Ads	177	14	0	2530	5030	822	0	0	0		2026-05-03 07:00:06.539146+00	2026-05-31 07:00:10.272285+00	0.0000
bd5dd393-63a4-47ac-8691-a33931da520f	32351ab5-411c-440c-9bae-70e504d4052f	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	2026-01	Meta	0	0	55	4583	0	0	55	144981	83		2026-03-15 21:31:46.779276+00	2026-03-15 21:33:26.226012+00	0.0000
b41778a8-0b5a-4cde-ac30-a2167c1810a3	32351ab5-411c-440c-9bae-70e504d4052f	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	2026-02	Meta	0	0	14	4265	0	0	14	44592	305		2026-03-15 21:34:21.320084+00	2026-03-15 21:35:59.549338+00	0.0000
a392067e-68e4-4af6-b1f8-9148004d3931	c9bcd1b4-f452-43db-bb47-027e9b26f22e	acc67398-d73a-407a-a801-76c172c544d8	2026-03	ד	22	2	2	2	0	0	0	0	1		2026-03-29 09:31:50.351603+00	2026-03-29 09:31:50.351603+00	0.0000
acdd9de3-4314-45e8-805d-93983993ad75	c9bcd1b4-f452-43db-bb47-027e9b26f22e	acc67398-d73a-407a-a801-76c172c544d8	2026-04	ד	0	0	0	0	0	0	0	0	0		2026-03-29 09:38:36.947322+00	2026-03-29 09:38:36.947322+00	0.0000
1e718b2d-c78c-43f4-bc3d-6c05406689b9	9e64b292-5106-4613-825a-76363729547a	fb4caee1-63fb-4e1e-8281-3e1d651fccba	2026-05	Google ads	7	100	0	703	1155	104	0	0	0		2026-05-03 09:00:05.835723+00	2026-06-01 09:00:09.903559+00	0.0000
1edce637-3950-4820-ac76-b2c46871eb1b	9e64b292-5106-4613-825a-76363729547a	fb4caee1-63fb-4e1e-8281-3e1d651fccba	2026-04	Google ads	21	61	0	1300	1677	184	0	0	0		2026-04-05 09:00:05.876565+00	2026-05-01 09:00:05.657472+00	0.0000
e6c38f1d-82d7-4305-9435-813bd237f5af	1286fd00-4d4c-40db-961c-63b72e38d8ac	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	2026-04	Meta	0	0	0	5257.7	0	0	50	138836	0		2026-04-05 07:00:27.415135+00	2026-05-01 09:00:27.224478+00	0.0000
befc6c66-97b9-40b7-8f27-10768fa5aa88	9e64b292-5106-4613-825a-76363729547a	fb4caee1-63fb-4e1e-8281-3e1d651fccba	2026-03	Google ads	19	72	0	1376	2208	203	0	0	0		2026-03-31 09:22:48.894823+00	2026-04-01 09:00:04.704879+00	0.0000
97693d23-6731-4c4d-9b16-324e239a073e	1286fd00-4d4c-40db-961c-63b72e38d8ac	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	2026-02	Meta	0	0	51	4974	0	0	51	128603	98		2026-03-30 09:35:17.355237+00	2026-03-30 10:24:25.433484+00	0.0000
3074d32f-ea26-49a7-a4f3-fa0931e6e5c0	1286fd00-4d4c-40db-961c-63b72e38d8ac	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	2026-01	Meta	0	0	43	5270	0	0	43	119594	123		2026-03-10 22:06:26.458183+00	2026-03-30 10:24:27.813225+00	0.0000
f5c1f38d-cda5-4801-999d-1fb3000d0ecb	1286fd00-4d4c-40db-961c-63b72e38d8ac	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	2025-12	Meta	0	0	40	4865	0	0	40	125990	122		2026-03-30 09:40:41.088671+00	2026-03-30 10:24:32.888027+00	0.0000
9946bc7d-8e66-419d-a9cf-d4310537fcaf	1286fd00-4d4c-40db-961c-63b72e38d8ac	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	2025-11	Meta	0	0	62	6257	0	0	62	180197	101		2026-03-30 09:44:11.218058+00	2026-03-30 10:24:36.79364+00	0.0000
2339963d-8ac0-4118-8f51-eccbd6559123	1286fd00-4d4c-40db-961c-63b72e38d8ac	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	2025-10	Meta	0	0	60	4823	0	0	60	164718	80		2026-03-30 09:46:11.032648+00	2026-03-30 10:24:39.90166+00	0.0000
bb40572f-a929-44a3-8e3d-a8360885050f	1286fd00-4d4c-40db-961c-63b72e38d8ac	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	2026-05	Meta	0	0	0	4103.05	0	0	34	118006	0		2026-05-03 07:00:25.851031+00	2026-06-01 09:00:28.749585+00	0.0000
0916249e-da68-40d0-84ae-2d61d15ebde7	32351ab5-411c-440c-9bae-70e504d4052f	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	2026-03	Meta	0	0	0	5708.11	0	0	30	93111	0		2026-03-30 21:12:34.393316+00	2026-04-01 10:12:15.608646+00	0.0000
c5044d05-aa5d-4625-b7f0-d9071eda84b2	9e64b292-5106-4613-825a-76363729547a	fb4caee1-63fb-4e1e-8281-3e1d651fccba	2026-02	Google ads	26	41	0	1078	2846	314	0	0	0		2026-03-31 19:43:42.680561+00	2026-03-31 20:02:41.796491+00	0.0000
8f29bf4d-f0fd-4d8f-a39f-bf2033d1eb20	1286fd00-4d4c-40db-961c-63b72e38d8ac	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	2026-03	Meta	0	0	45	4814.86	0	0	49	134200	101		2026-03-30 09:32:37.898069+00	2026-04-01 10:12:39.251628+00	0.0000
da1b6ba5-9606-4cdc-8b08-b98c57ff23e4	9e64b292-5106-4613-825a-76363729547a	fb4caee1-63fb-4e1e-8281-3e1d651fccba	2026-01	Google ads	42	30	0	1272	3053	337	0	0	0		2026-03-31 20:20:38.182263+00	2026-03-31 20:20:38.182263+00	0.0000
318295d6-8203-4c5b-9f0d-2f313b83207e	9e64b292-5106-4613-825a-76363729547a	fb4caee1-63fb-4e1e-8281-3e1d651fccba	2025-12	Google ads	43	30	0	1293	2807	305	0	0	0		2026-03-31 20:21:18.572196+00	2026-03-31 20:21:18.572196+00	0.0000
d2c80409-2911-4a5d-ae86-07d6401596fb	800b0aec-5843-4002-a897-4d5827bd22b0	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	2026-06	Google ads	37	21	0	782	1438	199	0	0	0		2026-06-21 15:43:23.86537+00	2026-06-28 09:00:09.079451+00	13.8400
610f6574-e6a8-4a3b-927b-1d80b19baed2	1286fd00-4d4c-40db-961c-63b72e38d8ac	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	2026-07	Meta	0	0	0	4442.76	0	0	37	102790	0		2026-07-05 07:00:27.831334+00	2026-08-03 06:10:27.708869+00	0.0000
ae25f6d0-dc86-4b3a-a69d-2bdea375e96e	32351ab5-411c-440c-9bae-70e504d4052f	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	2026-06	Meta	0	0	0	5268.49	0	0	16	52865	0		2026-06-07 07:00:25.060307+00	2026-07-01 17:35:07.940791+00	0.0000
88f744e9-a8ad-456d-a03d-5bac292f5bde	1286fd00-4d4c-40db-961c-63b72e38d8ac	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	2026-06	Meta	0	0	0	4298.95	0	0	32	85543	0		2026-06-07 07:00:25.069308+00	2026-07-01 09:00:31.778401+00	0.0000
dd66429e-6350-4b6e-acce-53636901ea86	32351ab5-411c-440c-9bae-70e504d4052f	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	2026-07	Meta	0	0	0	6643.34	0	0	25	78343	0		2026-07-05 07:00:28.188024+00	2026-08-01 10:00:33.026431+00	0.0000
a6336084-84be-4282-9ebe-d0e9ca7901d1	800b0aec-5843-4002-a897-4d5827bd22b0	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	2026-07	Google ads	114	30	0	3496	6049	740	0	0	0		2026-07-05 09:00:11.404463+00	2026-07-26 09:00:06.028376+00	12.2300
1df2baba-bdd2-40ff-8038-4bed896ce7dc	800b0aec-5843-4002-a897-4d5827bd22b0	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	2026-08	Google ads	123	31	0	3827	6702	800	0	0	0		2026-08-02 09:00:07.801146+00	2026-08-02 09:00:07.801146+00	11.9400
510e738d-c4fd-4e11-885c-84fb0e3c6a71	45942137-54f7-4fd1-8227-472c92c86933	202abebc-93a9-4fb9-926a-8c7677282aca	2026-08	Google Ads	56	6	0	355	694	132	0	0	0		2026-08-05 20:38:36.994789+00	2026-08-05 20:38:36.994789+00	19.0200
6f81919c-fa35-4048-9abf-4adacfbf2b5d	5fb4e556-2df8-4c32-a693-c7bae38af54b	8f21c002-2efd-4224-ac09-47432a41923d	2026-08	Google Ads	1	455	0	455	2670	93	0	0	0		2026-08-05 21:10:22.129232+00	2026-08-05 21:10:22.129232+00	3.4800
cdba98a1-19c3-4002-8697-8a242b93b132	32351ab5-411c-440c-9bae-70e504d4052f	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	2026-08	Meta	0	0	0	0	0	0	4	0	0		2026-08-02 07:00:29.815405+00	2026-08-05 21:26:11.293395+00	0.0000
01e9d674-aba9-4983-813e-30dfab9cf685	5fb4e556-2df8-4c32-a693-c7bae38af54b	8f21c002-2efd-4224-ac09-47432a41923d	2026-07	Google Ads	10	121	0	1211	2129	111	0	0	0		2026-08-05 21:13:25.344661+00	2026-08-05 21:13:25.344661+00	5.2100
8ce815f0-0baa-40c6-b384-3405f7bbd34c	1286fd00-4d4c-40db-961c-63b72e38d8ac	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	2026-08	Meta	0	0	0	0	0	0	5	0	0		2026-08-02 07:00:24.820809+00	2026-08-05 21:25:09.973384+00	0.0000
\.


--
-- Data for Name: business_targets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."business_targets" ("id", "business_id", "client_id", "month", "target_leads", "target_sales", "target_revenue", "created_at", "updated_at") FROM stdin;
9fbf922e-fc41-497b-8ac6-35a8e365f42e	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	a248ecae-9af4-4056-8fc9-668ca0377228	2026-01	50	11	45000	2026-04-15 08:16:29.879445+00	2026-04-15 08:16:29.879445+00
c739a395-c760-4f65-9b61-b300b53ec297	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	a248ecae-9af4-4056-8fc9-668ca0377228	2026-02	45	10	40000	2026-04-15 08:16:29.879445+00	2026-04-15 08:16:29.879445+00
9181de93-19d6-4f24-84f9-feb560b34bb2	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	a248ecae-9af4-4056-8fc9-668ca0377228	2026-03	40	9	35000	2026-04-15 08:16:29.879445+00	2026-04-15 08:16:29.879445+00
067f6bdc-4f92-476f-ac4f-8a90f59cd86a	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	a248ecae-9af4-4056-8fc9-668ca0377228	2026-04	35	8	30000	2026-04-15 08:16:29.879445+00	2026-04-15 08:16:29.879445+00
\.


--
-- Data for Name: incoming_call_webhook_keys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."incoming_call_webhook_keys" ("id", "token", "name", "client_id", "business_id", "is_active", "created_by", "created_at", "updated_at") FROM stdin;
2440d0fc-8120-4ac1-882e-405db4dacf44	ad1901debb71b1ebd1188253d3bea678ab913b3c4f4e1d01	maskyoo	8f21c002-2efd-4224-ac09-47432a41923d	5fb4e556-2df8-4c32-a693-c7bae38af54b	t	599209a7-ebe3-4ddf-90ba-a50cca55271c	2026-08-05 17:23:34.239294+00	2026-08-05 17:23:34.239294+00
a5a65b91-6484-4b38-a8ae-26792d10dc84	b6b13ac574b3277dc873f8304e5fa7e7b89cd5a0589af090	חוות בניה maskyoo	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	t	599209a7-ebe3-4ddf-90ba-a50cca55271c	2026-08-05 17:39:49.246757+00	2026-08-05 17:39:49.246757+00
c08f8725-1d6d-4c01-b161-626bb137d26d	c76154b35b38b55aaff12aa47971efea43d2a44e80f095d1	סוכנות דיגיטל - הדגמה	a248ecae-9af4-4056-8fc9-668ca0377228	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	t	599209a7-ebe3-4ddf-90ba-a50cca55271c	2026-08-05 17:52:14.660865+00	2026-08-05 17:52:14.660865+00
2051b8d8-ecce-4713-9ba0-8b8b42799a93	ffc39ed4b50941715f37c6d6237ad92e776a9ea3c7739cc0	livo	01a6c28f-4761-4b65-97d8-db27e6752927	43dda6fd-1ba7-40df-a704-b1ab7bb5c305	t	599209a7-ebe3-4ddf-90ba-a50cca55271c	2026-08-05 19:56:59.691097+00	2026-08-05 19:56:59.691097+00
d8883cc0-7e5f-4a5d-a06f-26c7ccbd9921	40330f88af705239fb8bf7899f0ea97598a50c10da6f7665	amigo tatto	3ba7243c-854f-4969-bb7b-6a1b748ac214	55095605-0118-4308-af9f-5b71c7015423	t	599209a7-ebe3-4ddf-90ba-a50cca55271c	2026-08-05 21:04:19.316408+00	2026-08-05 21:04:19.316408+00
\.


--
-- Data for Name: call_webhook_logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."call_webhook_logs" ("id", "webhook_key_id", "status", "http_status", "error_message", "raw_query", "ip_address", "processing_ms", "created_at") FROM stdin;
89529a08-10ce-4f03-a735-4985aa5fb8d2	\N	error	401	Invalid token	{"cli": "0501234567", "date": "2026-08-05", "time": "10:00", "token": "test", "callstatus": "ANSWERED"}	89.139.43.33	740	2026-08-05 17:12:46.686756+00
535ef264-d01c-42f6-a165-7252ecbdb927	c08f8725-1d6d-4c01-b161-626bb137d26d	success	200	\N	{"token": "c76154b35b38b55aaff12aa47971efea43d2a44e80f095d1"}	188.208.133.101	1872	2026-08-05 17:54:27.240637+00
8ba8bdee-1573-4c7b-ab45-1129b01e7d50	c08f8725-1d6d-4c01-b161-626bb137d26d	success	200	\N	{"token": "c76154b35b38b55aaff12aa47971efea43d2a44e80f095d1"}	188.208.133.101	2369	2026-08-05 17:54:59.693895+00
1d82e616-f891-4aa2-aa40-917882dc278d	c08f8725-1d6d-4c01-b161-626bb137d26d	success	200	\N	{"CLI": "549007467", "DDI": "554569777", "cli": "054-9007467", "DEST": "527777101", "UUID": "1785952773.4313044", "date": "05/08/2026", "time": "20:59:33", "token": "c76154b35b38b55aaff12aa47971efea43d2a44e80f095d1", "CALLSTATUS": "BUSY", "callstatus": "BUSY", "user_fild1": "", "destination": "052-7777101", "CALLDURATION": "0"}	188.208.133.101	1325	2026-08-05 17:59:43.933993+00
566bf79c-dfb3-4a62-8f1e-26cf037cfba1	a5a65b91-6484-4b38-a8ae-26792d10dc84	success	200	\N	{"CLI": "544450448", "DDI": "554334771", "cli": "054-4450448", "DEST": "534696446", "UUID": "1785999029.888527", "date": "06/08/2026", "time": "09:50:29", "token": "b6b13ac574b3277dc873f8304e5fa7e7b89cd5a0589af090", "CALLSTATUS": "CALLER+CANCEL", "callstatus": "CALLER CANCEL", "user_fild1": "", "destination": "053-4696446", "CALLDURATION": "0"}	188.208.133.101	2094	2026-08-06 06:50:35.205616+00
15bc88a9-562f-4dc0-8aec-7dafa505ee80	a5a65b91-6484-4b38-a8ae-26792d10dc84	success	200	\N	{"CLI": "524708643", "DDI": "554334771", "cli": "052-4708643", "DEST": "534696446", "UUID": "1785999768.4340112", "date": "06/08/2026", "time": "10:02:48", "token": "b6b13ac574b3277dc873f8304e5fa7e7b89cd5a0589af090", "CALLSTATUS": "NOANSWER", "callstatus": "NOANSWER", "user_fild1": "", "destination": "053-4696446", "CALLDURATION": "0"}	188.208.133.101	2083	2026-08-06 07:03:20.458173+00
45e16318-d9df-4278-9751-a4559521f06e	2051b8d8-ecce-4713-9ba0-8b8b42799a93	success	200	\N	{"CLI": "504575751", "DDI": "554334787", "cli": "050-4575751", "DEST": "507801370", "UUID": "1786002925.4361022", "date": "06/08/2026", "time": "10:55:25", "token": "ffc39ed4b50941715f37c6d6237ad92e776a9ea3c7739cc0", "CALLSTATUS": "CALLER+CANCEL", "callstatus": "CALLER CANCEL", "user_fild1": "", "destination": "050-7801370", "CALLDURATION": "0"}	188.208.133.101	2607	2026-08-06 07:55:30.146243+00
62eeafcc-0537-4ddf-8350-b4223dbcb0f9	2051b8d8-ecce-4713-9ba0-8b8b42799a93	success	200	\N	{"CLI": "547737090", "DDI": "554334787", "cli": "054-7737090", "DEST": "507801370", "UUID": "1786002941.915916", "date": "06/08/2026", "time": "10:55:41", "token": "ffc39ed4b50941715f37c6d6237ad92e776a9ea3c7739cc0", "CALLSTATUS": "ANSWER", "callstatus": "ANSWER", "user_fild1": "", "destination": "050-7801370", "CALLDURATION": "95"}	188.208.133.101	2119	2026-08-06 07:57:35.11948+00
\.


--
-- Data for Name: call_webhook_rate_limits; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."call_webhook_rate_limits" ("webhook_key_id", "window_start", "request_count", "updated_at") FROM stdin;
c08f8725-1d6d-4c01-b161-626bb137d26d	2026-08-05 17:59:43.011+00	1	2026-08-05 17:59:43.011+00
a5a65b91-6484-4b38-a8ae-26792d10dc84	2026-08-06 07:03:19.249+00	1	2026-08-06 07:03:19.249+00
2051b8d8-ecce-4713-9ba0-8b8b42799a93	2026-08-06 07:57:34.212+00	1	2026-08-06 07:57:34.212+00
\.


--
-- Data for Name: leads; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."leads" ("id", "client_id", "full_name", "phone", "email", "source", "status", "notes", "created_at", "updated_at", "business_id", "status_updated_at", "additional_details") FROM stdin;
6b446ee5-a5de-4238-92e1-c90ee2085907	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	בר פפר	0558838590		דף נחיתה	ללא מענה	אין מענה. נשלחה הודעה	2026-06-25 17:45:22.079101+00	2026-06-26 09:14:30.24326+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-26 09:14:30.24326+00	
1e8107d2-929b-4eb9-bfe1-05b79c318917	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	ישראל ישראלי	050-2386694		דף נחיתה	ללא מענה	המנוי לא זמין. לא ניתן לשלוח הודעה	2026-06-29 07:47:23.632456+00	2026-06-29 08:46:05.976354+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-29 08:45:55.809751+00	
29161582-80b6-49c1-94cc-5575817bd3ea	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	Anna	508111641	annarabaev09@walla.co.il	Facebook	ללא מענה	אין מענה. נשלחה הודעה	2026-06-26 07:43:17.926642+00	2026-06-26 09:15:50.895903+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-26 09:15:50.895903+00	
3765ca3c-f4bc-4bcd-9c17-15365ac34ac4	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	רותם ויסמן	0545693575		דף נחיתה	נסגר	נסגר מוקסו+ הפניה מגמהור	2026-06-27 19:03:15.348027+00	2026-06-28 13:37:50.729499+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-28 13:37:50.729499+00	
b10dd5fd-dce8-410c-986e-28ad12888d11	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	אבישג דמרי	0502227232		דף נחיתה	בטיפול	תבדוק מול הבית ספר מה הם צריכים ותעדכן אותי	2026-06-26 09:02:47.13984+00	2026-06-26 09:42:16.186526+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-26 09:32:36.693098+00	
a3dbd3f9-40f7-415d-81af-5e6d47989ffe	202abebc-93a9-4fb9-926a-8c7677282aca	Galit Cohen	525344510		Facebook	חדש		2026-08-05 19:09:00.966938+00	2026-08-05 19:09:00.966938+00	425385ec-6f88-459c-a25e-abc8627ba78e	\N	
8301863f-a1a9-4a70-ab2e-7412ace0da83	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	שיימא יוניס	0525175366		דף נחיתה	נסגר	נסגר מוקסו + פיענוח	2026-06-27 16:06:33.262083+00	2026-06-28 14:15:13.857591+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-28 14:15:13.857591+00	
0aaa9430-5ea0-433e-befd-dba39851405b	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	שלום טוב	0548447089		דף נחיתה	בטיפול	יבדוק עם המכללה ויעדכן אותי	2026-06-24 07:42:48.816724+00	2026-06-26 09:58:57.701642+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-26 09:58:57.701642+00	
9a787d0c-8043-414d-8430-0c6a44f2942f	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	אורין עובדיה	0507622282		דף נחיתה	בטיפול	לא   יכולה לדבר. תחזור אלי	2026-06-21 08:34:46.25614+00	2026-06-24 06:13:16.248238+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-24 06:04:53.182346+00	
e1847e80-b05b-4edc-92fb-a1ffd53bed35	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	חוילה פולין	0542026694		דף נחיתה	לא רלוונטי לעסק		2026-06-18 20:30:53.47916+00	2026-06-24 06:49:37.494697+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-24 06:49:37.494697+00	
568a08a0-e414-45ee-ae74-41d3e681f442	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	סתיו לוי	0533343043		דף נחיתה	ללא מענה	אין מענה. נשלחה הודעה	2026-06-20 11:29:21.750401+00	2026-06-24 06:59:19.302479+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-24 06:59:19.302479+00	
4642997d-bf3e-4e39-8e6b-22b186134b77	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	כנרת	0507390178		דף נחיתה	לא רלוונטי לעסק	אמרה שתחזור אם יהיה רלונטי. לא רצתה לפרט	2026-06-22 08:04:22.81813+00	2026-06-24 07:20:37.098088+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-24 07:20:37.098088+00	
901d3ae0-3d8d-4471-b8cb-27196760654d	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	תמרה זויגין גורליק	0548820717		דף נחיתה	ללא מענה	נשלחה הודעה	2026-06-28 08:32:39.923642+00	2026-06-28 14:24:37.463057+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-28 14:24:37.463057+00	אני צריכה לבצע אבחון עבור הבן שלי (עולה לכיתה ז)
71017940-4b23-4e50-8487-13c1a53bd835	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	יחיאל רוט	0542240784		דף נחיתה	נסגר	נסגר מוסקו	2026-06-29 12:00:10.349562+00	2026-06-30 06:06:21.666541+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-30 06:06:21.666541+00	
ec594b95-7b17-4da9-ab3e-2f2e824b9974	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	אביחי ביגל	0545842432		דף נחיתה	חדש	עבור : ילד /ילדה	2026-07-02 13:18:15.963695+00	2026-07-02 13:18:15.963695+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
bb22cb68-85a3-4a31-9fe7-197a4eb041fa	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	אפרת ינאי	0526044465		דף נחיתה	בטיפול	ניתן מידע אל אבחון קשב מלא.+ פסיכודידקטי. תתייעץ עם בעלה ותחזור אלינו	2026-06-24 06:37:52.415785+00	2026-06-24 11:09:39.126969+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-24 11:09:39.126969+00	
f91e8ecd-49bd-45d5-aa22-50f709afdee7	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	מרים עווד	0533411220		דף נחיתה	נסגר	אין מענה. נשלחה הודעה	2026-06-23 09:17:13.075389+00	2026-06-28 12:12:56.315907+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-28 12:12:56.315907+00	
ede21fd1-7c6c-4155-9bcc-eed67ad16faa	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	בצלאל	0504107920		דף נחיתה	נסגר	מוקסו+ פיענוח	2026-06-25 09:57:40.162839+00	2026-06-28 14:57:38.073931+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-28 14:57:38.073931+00	יש לי הפניה למוקסו בלי ועם כדור פניתי אליכם פעמיים דרך המייל ולא קבלתי מענה, האבחון דחוף נא צרו קשר תודה
4d78cad6-f7a4-43ba-9e8b-6ed23de07edc	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	יוליה אלעזר	0505072602		דף נחיתה	בטיפול	הוסבר קשב. תביא התחייבות.	2026-06-26 19:03:13.536093+00	2026-06-28 13:13:11.359726+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-28 13:13:11.359726+00	
3a102a0e-d26a-44c3-8878-de64723a761e	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	מיכל פריסמן	0523994416		דף נחיתה	לא רלוונטי לעסק	סגרה במקום אחר	2026-06-23 05:11:21.088925+00	2026-06-25 06:35:15.321121+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-25 06:35:15.321121+00	
a0868153-20b3-447a-8f5f-21bf01fd6a09	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	רותם חוברה	0544660175		דף נחיתה	חדש	עבור : מבוגר/ת	2026-07-04 21:41:50.97804+00	2026-07-04 21:41:50.97804+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
d287512a-e4ec-4832-8e30-677d6ad218a4	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	חלי בן הראש	0542243313		דף נחיתה	בטיפול	הוסבר הליך קשב	2026-06-29 14:44:15.202531+00	2026-06-30 06:23:25.856202+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-30 06:23:25.856202+00	
a714325b-fc91-4f16-925a-144932ae24e3	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	לאה	0545969636		דף נחיתה	בטיפול	הוסבר אבחון קשב מלא	2026-06-28 22:26:50.503663+00	2026-06-29 07:24:14.950777+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-29 07:24:14.950777+00	
4f0c99e5-fcf3-44c8-84ad-790da206032f	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	מיטל	0526666969		דף נחיתה	חדש		2026-06-30 07:55:07.869408+00	2026-06-30 07:55:07.869408+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
2e52b903-20f7-4d7c-bdd2-62a90cc230dd	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	גד ברין	0542443662		דף נחיתה	חדש		2026-06-30 09:32:05.166271+00	2026-06-30 09:32:05.166271+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
69a7a0e7-9a98-41ab-9f8b-0c24d5195513	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	Adi Baruch	508447818	adibar700@gmail.com	Facebook	חדש		2026-07-02 19:38:40.973167+00	2026-07-02 19:38:40.973167+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
cbbad7b9-3afe-41cc-97ca-5f20b7adc598	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	יעל ביגל	0546559625		דף נחיתה	חדש		2026-07-01 09:18:31.816131+00	2026-07-01 09:18:31.816131+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
68d27ae3-17a3-49a4-bc3c-3e6c5378300e	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	מעיין ביטון	545654782	maayan110404@walla.co.il	Facebook	חדש		2026-07-03 09:27:40.145752+00	2026-07-03 09:27:40.145752+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
8221d0b4-54c1-4650-adfe-53e3b3703d7e	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	אליס הימן	0528055093		דף נחיתה	חדש	עבור : ילד /ילדה	2026-07-04 04:10:14.622222+00	2026-07-04 04:10:14.622222+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
676b2f85-cfae-43ab-86d4-2808cf577d48	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	אורה אסרף	0527694548		דף נחיתה	חדש	עבור : ילד /ילדה	2026-07-05 07:00:34.455301+00	2026-07-05 07:00:34.455301+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
34ba48a0-cdb5-4a4a-a77a-db41a0651e68	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	איליה	0509550024		דף נחיתה	חדש	עבור : ילד /ילדה	2026-07-05 09:19:22.277832+00	2026-07-05 09:19:22.277832+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
6cccd08a-d1e4-4a15-a6cb-df33ebb7df65	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	שלומי מולוקנדוב	0528262678		דף נחיתה	חדש	עבור : ילד /ילדה	2026-07-05 10:13:42.291458+00	2026-07-05 10:13:42.291458+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
79da5aa5-9234-47eb-a48e-2971fb817ff3	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	שרה דרעי	0526077050		דף נחיתה	חדש	עבור : ילד /ילדה	2026-07-05 10:17:27.112191+00	2026-07-05 10:17:27.112191+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
8aaf42c0-6695-443a-a428-70a3959d2a67	202abebc-93a9-4fb9-926a-8c7677282aca	054-4450448	054-4450448		שיחה נכנסת (Maskyo)	חדש	06/08/2026 09:50:29 · סטטוס שיחה: CALLER CANCEL · יעד: 053-4696446	2026-08-06 06:50:34.767001+00	2026-08-06 06:50:34.767001+00	425385ec-6f88-459c-a25e-abc8627ba78e	\N	
022eeb8b-b228-4d5b-9a63-b14b4ce7c391	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	אביטל שיין	0584116061		דף נחיתה	בטיפול	ניתן מידע לגבי מומחה קשב. תחשוב ותחזור אלי	2026-06-24 05:50:53.373482+00	2026-06-24 06:11:06.726645+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-24 06:11:06.726645+00	
0ee0e99b-6bbd-47af-b95b-3699092afe75	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	נטע פרינץ	0539013833		דף נחיתה	בטיפול	אין מענה. נשלחה הודעה	2026-06-20 13:28:19.030286+00	2026-06-24 06:39:36.548373+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-24 06:39:36.548373+00	
50378fd4-a048-437d-a92a-3d3c1370b247	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	ליזט גזר	0586958052		דף נחיתה	בטיפול	הוסבר הליך קשב ועלויות	2026-06-29 09:37:42.321195+00	2026-06-29 13:42:43.384915+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-29 13:42:43.384915+00	
aabdb4b1-0464-4670-be82-6c3489d7b97b	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	מיטל תרום	0545363843		דף נחיתה	לא עומד בתנאים	הילד לא בן 6. קטן יותר	2026-06-20 08:07:22.150353+00	2026-06-24 07:21:30.444585+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-24 07:21:30.444585+00	
5b9219a2-01c8-44b8-99bc-bbf3c0ae9b0e	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	הילה גבאי	054-4230171		דף נחיתה	בטיפול	התקשרו אליה כבר אתמול.  תחשוב ותחזור אלינו.	2026-06-23 05:45:10.666729+00	2026-06-24 07:32:20.778914+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-24 07:32:20.778914+00	
52e2172e-f4fc-4bee-8f38-d751e93032ba	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	אילה כהן	0523257798		דף נחיתה	נסגר	נסגר מוקסו	2026-06-23 11:06:20.973854+00	2026-06-24 10:57:27.764932+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-24 10:57:27.764932+00	
944c8c73-9c1b-49b3-b2d9-bf25b3a179b4	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	נטלי	052-6598992		דף נחיתה	בטיפול	תחזור אלי עוד כמה דקות	2026-06-27 21:18:52.996382+00	2026-06-28 14:23:11.904666+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-28 14:23:11.904666+00	שלום, בני בן הכמעט 15 אובחן לאחרונה עם הפרעת קשב וריכוז. הומלץ לנו לעשות מבחן מוקסו וטובה + הייתי רוצה לקראת המעבר לתיכון לבצע גם אבחון פסיכודידקטי ע"מ למקסם את הזכאויות שלו
7c557964-507f-4bba-9cc9-0279d5084fbf	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	סטפני חבש	0542106960		דף נחיתה	ללא מענה	מוקסו פרטי	2026-06-24 09:06:40.02858+00	2026-06-30 04:46:08.302378+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-30 04:46:08.302378+00	
2b7923a1-5a82-4f96-9451-1e0637a6002c	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	Bara'ah Tareq Massalha	558810817	baraahy94@gmail.com	Facebook	חדש		2026-06-30 10:23:09.835428+00	2026-06-30 11:28:39.613882+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	לילד/ה_בגיל_7–16\nבית_הספר_ביקש_אבחון_/_התאמות
bedad1b9-dc51-448b-96e4-edd27fae0d9f	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	הילה בריגה	0526841190		דף נחיתה	בטיפול	תתייעץ עם בעלה ותחזור אלי. אבחון קשב מלא	2026-06-24 15:48:48.722278+00	2026-06-25 06:08:04.362292+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-25 06:08:04.362292+00	
c190a92f-cdc1-486a-91b0-54462bdef018	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	מיכל אטלן זרביב	0507562339		דף נחיתה	לא רלוונטי לעסק	כבר עשו במקום אחר	2026-06-25 08:07:41.530086+00	2026-06-26 08:30:48.918004+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-26 08:30:48.918004+00	
af2456e8-e673-4ed4-b202-7ebb30542c95	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	הילה בן מויאל	0528534411		דף נחיתה	לא רלוונטי לעסק	סגרה במקום אחר	2026-06-28 13:06:43.08001+00	2026-06-28 14:38:40.728561+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-28 14:38:40.728561+00	
bfcedf32-25e5-463f-9dea-18e95ca7628e	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	רבקה	0544388473		דף נחיתה	בטיפול	הוסבר על אבחון קשב מלא. תתייעץ עם בעלה	2026-06-25 13:08:40.365118+00	2026-06-26 09:07:50.706641+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-26 09:07:50.706641+00	
849f8cdd-4750-48d6-8e5f-c45ecafd38bf	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	סרה	584083112	askrsara840@gmail.com	Facebook	בטיפול	הוסבר אבחון קשב מלא. רוצה לקבוע רק בעוד שבועיים.	2026-06-26 08:21:12.069671+00	2026-06-26 09:20:04.365372+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-26 09:20:04.365372+00	
a0aa2244-d1c7-479f-a457-56644d3e57b9	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	נתנאל	0507317262		דף נחיתה	לא עומד בתנאים	מעוניין במבחן הכנה לכיתה א. הוסבר על פסיכודידקטי. הילד בן 5	2026-06-22 12:50:31.895893+00	2026-06-26 09:35:24.228346+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-26 09:35:24.228346+00	
1ad24625-a586-43af-ac66-b90d8202a14a	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	אדוה אלקיים	523269458	amstmb1234@gmail.com	Facebook	חדש		2026-06-30 23:44:23.634817+00	2026-06-30 23:44:23.634817+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
1fd8a280-5910-4a8c-9ec7-8d82c1f51da0	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	אדוה סנקר	0524256073		דף נחיתה	בטיפול	תבדוק לגבי מתי היא יכולה לקחת חופש מהעבודה ותחזור אלי	2026-06-29 06:38:39.493038+00	2026-06-29 07:13:22.168597+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-29 07:13:22.168597+00	
f07864d6-50e7-4c5f-8a58-757e3ae4cac3	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	הודיה כהן	0546622197		דף נחיתה	חדש		2026-07-01 08:12:50.798893+00	2026-07-01 08:12:50.798893+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
fb18f952-9aab-4e22-b43f-121583302baf	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	אושרית דנינן	0547217330		דף נחיתה	ללא מענה	נשלחה הודעה	2026-06-29 14:46:56.029397+00	2026-06-30 06:18:38.588729+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-30 06:18:38.588729+00	
a0240e69-cfbd-44e9-967a-870d1d9229dd	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	עומרי איאש	0542286886		דף נחיתה	חדש		2026-07-01 12:06:46.898338+00	2026-07-01 12:06:46.898338+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
625a4f1f-e652-4abb-9758-d640328a08f3	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	קורל בוקר	0505941441		דף נחיתה	ללא מענה	נשלחה הודעה	2026-06-30 06:10:18.509783+00	2026-06-30 06:23:09.800999+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-30 06:23:09.800999+00	
6bfda475-cdf6-45c6-9b69-496adb0912f9	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	אייברי	0545946965		דף נחיתה	נסגר	נקבע מוקסו+ פיענוח	2026-06-29 21:41:48.492557+00	2026-06-30 07:59:11.398373+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-30 07:59:11.398373+00	
47830f1d-45a3-4388-b8b2-f44c1b843e17	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	חני	0545433136		דף נחיתה	חדש		2026-06-30 08:09:33.669527+00	2026-06-30 08:09:33.669527+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
0f8673de-b6ac-4033-ba4e-db687ec778cd	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	יעל הירש בידרמן	0526161299			חדש		2026-07-01 19:18:51.536193+00	2026-07-01 19:19:23.585377+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	עבור הילד
bfdc3d9b-edb5-4e24-855d-e6b2caa76d66	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	אילנית נסיבוב	0502622112		דף נחיתה	חדש	עבור : ילד /ילדה	2026-07-02 13:22:23.373422+00	2026-07-02 13:22:23.373422+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
18ff7d61-acb2-4ade-8963-7517fd165272	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	שירן קפלן	0558823420		דף נחיתה	חדש	עבור : סטודנט/ית	2026-07-02 16:07:20.335606+00	2026-07-02 16:07:20.335606+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
038a76bd-a602-4301-a2b6-4821cf6957c4	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	ניקיטה מורוז	0532718731		דף נחיתה	חדש		2026-07-01 15:52:58.847421+00	2026-07-01 18:02:04.415906+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	אבחון למבוגר
455ddc70-e74c-4596-82de-9e08ffca8b46	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	לימור כהןמ	503999688	limimor38@gmail.com	Facebook	חדש		2026-07-03 04:42:27.874787+00	2026-07-03 04:42:27.874787+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
8c4498f4-f5bc-45b8-a25c-9dde612aa0ef	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	יפית מרנדה	525931415	ypyttys@gmail.com	Facebook	חדש		2026-07-03 06:17:35.284522+00	2026-07-03 06:17:35.284522+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
5d8d0c3d-253f-4a86-9a29-bfc4d98de6f8	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	Катерина Нафтали	528854055	ctefani200503@gmail.com	Facebook	חדש		2026-07-03 17:30:40.294878+00	2026-07-03 17:30:40.294878+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
9a80edd5-7c22-443c-bfb3-d5f62ecd1adf	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	לישי	0503688885		דף נחיתה	חדש	עבור : סטודנט/ית	2026-07-03 22:19:05.204069+00	2026-07-03 22:19:05.204069+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
023b9183-db50-4dfc-a83a-50bc9ca5585f	202abebc-93a9-4fb9-926a-8c7677282aca	052-4708643	052-4708643		שיחה נכנסת (Maskyo)	חדש	06/08/2026 10:02:48 · סטטוס שיחה: NOANSWER · יעד: 053-4696446	2026-08-06 07:03:20.025573+00	2026-08-06 07:03:20.025573+00	425385ec-6f88-459c-a25e-abc8627ba78e	\N	
1a563136-2150-49ee-8c70-1e3397a179ff	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	בדיקה	0501234567	test@test.com	webhook-test	חדש		2026-03-15 12:37:07.984385+00	2026-06-18 19:22:20.203629+00	32351ab5-411c-440c-9bae-70e504d4052f	\N	
e7e1c9b1-a658-43ba-b283-8bfdbcb3abc5	a248ecae-9af4-4056-8fc9-668ca0377228	מיכל לוי	051-2350016	מיכל1@example.com	Facebook	מתעניין		2026-01-17 08:16:29.651+00	2026-06-18 19:22:20.203629+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	\N	
36585b8f-9859-4977-a310-d5ad077cf306	a248ecae-9af4-4056-8fc9-668ca0377228	אורי מזרחי	058-2360831	אורי2@example.com	אתר	חדש		2026-04-11 08:16:29.651+00	2026-06-18 19:22:20.203629+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	\N	
5e602b4d-88a4-4f32-b353-dbea3c8ba254	a248ecae-9af4-4056-8fc9-668ca0377228	יוסי ביטון	057-7354337	יוסי4@example.com	Instagram	לקוח		2025-10-21 08:16:29.651+00	2026-06-18 19:22:20.203629+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	\N	
2b89002c-f3e9-4a90-90f9-6ec276b72c42	a248ecae-9af4-4056-8fc9-668ca0377228	רונית אברהם	059-8547889	רונית5@example.com	Google Ads	פנייה ראשונה		2026-02-17 08:16:29.651+00	2026-06-18 19:22:20.203629+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	\N	
e68b1d75-e492-4b2e-8ce6-87473ec1d403	a248ecae-9af4-4056-8fc9-668ca0377228	נעמה חיים	057-5865929	נעמה7@example.com	אתר	מתעניין		2026-02-08 08:16:29.651+00	2026-06-18 19:22:20.203629+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	\N	
b404bbb7-0900-4ad8-8125-1696e6bc2a33	a248ecae-9af4-4056-8fc9-668ca0377228	גיל שלום	051-4953731	גיל8@example.com	הפניה	סגירה		2026-01-14 08:16:29.651+00	2026-06-18 19:22:20.203629+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	\N	
581b9e82-1c55-49d0-8810-3e65c9a1671b	a248ecae-9af4-4056-8fc9-668ca0377228	טלי אלון	059-6112375	טלי9@example.com	Instagram	לקוח		2025-10-29 08:16:29.651+00	2026-06-18 19:22:20.203629+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	\N	
b6c65370-13b9-438c-9f05-5587047a8a64	a248ecae-9af4-4056-8fc9-668ca0377228	עומר גולן	056-5253258	עומר10@example.com	Google Ads	מתעניין		2026-02-06 08:16:29.651+00	2026-06-18 19:22:20.203629+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	\N	
39085fe8-830a-4f49-bf82-342422341be8	a248ecae-9af4-4056-8fc9-668ca0377228	הדר ברק	050-8483166	הדר11@example.com	Facebook	פנייה ראשונה		2026-03-12 08:16:29.651+00	2026-06-18 19:22:20.203629+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	\N	
7ed6f462-842e-4b28-9b9f-c413413240f0	a248ecae-9af4-4056-8fc9-668ca0377228	איתי סגל	052-8392078	איתי12@example.com	אתר	פנייה ראשונה		2026-03-05 08:16:29.651+00	2026-06-18 19:22:20.203629+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	\N	
8ed1fd6b-f16c-401c-aaad-21a06ed638d7	a248ecae-9af4-4056-8fc9-668ca0377228	ליאת עזרא	052-0303361	ליאת13@example.com	הפניה	מתעניין		2026-01-18 08:16:29.651+00	2026-06-18 19:22:20.203629+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	\N	
200b058c-602c-4a7c-a640-f69b8d2d02a0	a248ecae-9af4-4056-8fc9-668ca0377228	רועי נחום	057-6607939	רועי14@example.com	Instagram	חדש		2026-03-19 08:16:29.651+00	2026-06-18 19:22:20.203629+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	\N	
ad68e11a-64c4-4440-ba83-23b56809b58b	a248ecae-9af4-4056-8fc9-668ca0377228	תומר רוזן	054-5524391	תומר16@example.com	Facebook	סגירה		2026-01-10 08:16:29.651+00	2026-06-18 19:22:20.203629+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	\N	
0a134932-55b8-4ee7-b1e8-baa2854ea32d	a248ecae-9af4-4056-8fc9-668ca0377228	ענבל שפירא	056-5438544	ענבל17@example.com	אתר	סגירה		2025-12-31 08:16:29.651+00	2026-06-18 19:22:20.203629+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	\N	
5f7be8cf-6e3f-49ff-b3c3-a5be4026c22c	a248ecae-9af4-4056-8fc9-668ca0377228	ניר פרידמן	051-1204498	ניר18@example.com	הפניה	סגירה		2026-01-13 08:16:29.651+00	2026-06-18 19:22:20.203629+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	\N	
1b9b7076-7adc-4f06-bd60-bbfe7f2bc3be	a248ecae-9af4-4056-8fc9-668ca0377228	מאיה גרוס	054-0233103	מאיה19@example.com	Instagram	מתעניין		2026-01-18 08:16:29.651+00	2026-06-18 19:22:20.203629+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	\N	
df71f362-06a5-458d-ac14-d60979200008	a248ecae-9af4-4056-8fc9-668ca0377228	דנה וייס	050-5325463	דנה21@example.com	Facebook	סגירה		2025-12-23 08:16:29.651+00	2026-06-18 19:22:20.203629+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	\N	
e0b28bfe-3941-46cb-bce4-78a2cdc3680c	a248ecae-9af4-4056-8fc9-668ca0377228	יעל שטרן	058-1148377	יעל23@example.com	הפניה	לקוח		2025-11-26 08:16:29.651+00	2026-06-18 19:22:20.203629+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	\N	
55b6d222-a678-4402-849b-e5c393b61314	a248ecae-9af4-4056-8fc9-668ca0377228	בן הרשקו	055-4284456	בן24@example.com	Instagram	פנייה ראשונה		2026-03-09 08:16:29.651+00	2026-06-18 19:22:20.203629+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	\N	
eeadf153-15e4-4537-8ce8-a3eadd3b461d	a248ecae-9af4-4056-8fc9-668ca0377228	נועה אוחיון	057-9701100	נועה25@example.com	Google Ads	לקוח		2025-11-25 08:16:29.651+00	2026-06-18 19:22:20.203629+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	\N	
6a717764-c45b-4046-87ea-a474cb405d8b	a248ecae-9af4-4056-8fc9-668ca0377228	לירון אזולאי	059-1479818	לירון29@example.com	Instagram	פנייה ראשונה		2026-03-11 08:16:29.651+00	2026-06-18 19:22:20.203629+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	\N	
5cf2bd65-e004-4659-b4ab-b235016fe692	a248ecae-9af4-4056-8fc9-668ca0377228	אלון דוד	053-6624550	אלון6@example.com	Facebook	חדש		2025-12-13 08:16:29.651+00	2026-06-18 19:22:20.203629+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	\N	
e55b13ed-84fb-4a52-b231-285e6674f802	a248ecae-9af4-4056-8fc9-668ca0377228	שירה צור	056-6109733	שירה15@example.com	Google Ads	מתעניין		2026-03-29 08:16:29.651+00	2026-06-18 19:22:20.203629+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	\N	
dcafdc7e-3272-4c16-9a21-a146e22a07a0	a248ecae-9af4-4056-8fc9-668ca0377228	רון מלכה	055-7385693	רון26@example.com	Facebook	סגור		2025-11-24 08:16:29.651+00	2026-06-18 19:22:20.203629+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	\N	
b46f0512-8dd7-40d5-aeee-79ea2c6d85b1	a248ecae-9af4-4056-8fc9-668ca0377228	אדם בלום	059-7030133	אדם20@example.com	Google Ads	סגור		2026-01-26 08:16:29.651+00	2026-06-18 19:22:20.203629+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	\N	
6e163d68-545d-4cdf-8f95-087b76fe3028	a248ecae-9af4-4056-8fc9-668ca0377228	עידו קליין	057-5262052	עידו22@example.com	אתר	סגור		2026-03-27 08:16:29.651+00	2026-06-18 19:22:20.203629+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	\N	
4ee754c4-3659-4d8c-9c38-d4b4042a8901	a248ecae-9af4-4056-8fc9-668ca0377228	שרה פרץ	055-4781503	שרה3@example.com	הפניה	סגור		2026-02-20 08:16:29.651+00	2026-06-18 19:22:20.203629+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	\N	
131f3cbf-0b26-4b8b-8d13-edd41a28d802	a248ecae-9af4-4056-8fc9-668ca0377228	אפרת יוסף	053-7573379	אפרת27@example.com	אתר	סגור		2025-12-20 08:16:29.651+00	2026-06-18 19:22:20.203629+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	\N	
2b51fa18-281c-48bd-9125-647a8505d984	a248ecae-9af4-4056-8fc9-668ca0377228	דני כהן	055-6939912	דני0@example.com	Google Ads	פנייה ראשונה		2026-03-29 08:16:29.651+00	2026-06-18 19:22:20.203629+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	\N	
903c9c13-6148-41c5-bab6-dffd7cac7578	a248ecae-9af4-4056-8fc9-668ca0377228	עמית חדד	053-5501420	עמית28@example.com	הפניה	סגור		2025-11-20 08:16:29.651+00	2026-06-18 19:22:20.203629+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	\N	
f0b86691-4783-43f3-bfaa-2ee7da5975b8	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	תתיעץ ותחזור אלי	0522010843		דף נחיתה	בטיפול	תחזור אלי	2026-06-20 19:52:24.677915+00	2026-06-24 07:13:26.25188+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-24 06:37:38.791934+00	
1e6d34a6-42c5-4547-b271-13f79918cceb	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	חני וחניש	0522295363		דף נחיתה	לא רלוונטי לעסק	סגרה במקום אחר	2026-06-18 17:06:11.700294+00	2026-06-24 07:25:25.31587+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-24 06:47:18.791425+00	
14bea7ce-8080-439a-9072-7106a092fe57	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	אלירן דוד	0553723627		דף נחיתה	ללא מענה	המספר איננו מחובר	2026-06-20 08:51:46.919979+00	2026-06-24 06:52:26.969379+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-24 06:52:26.969379+00	
8677d21f-16c7-44d0-938f-c37127f423b2	202abebc-93a9-4fb9-926a-8c7677282aca	Sandra Golan	508913434		Facebook	בטיפול		2026-06-16 11:16:02.593492+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
6747dbea-4147-41d1-81cf-cbcd20a606eb	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	ליאורה קריאף	0549885660		דף נחיתה	נסגר	סגרה מוקסו	2026-06-23 07:21:30.050556+00	2026-06-24 07:49:23.152078+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-24 07:49:23.152078+00	
282daf42-c574-44d5-a95d-31de61defb22	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	אדיר הווארד	0548829933		דף נחיתה	נסגר	נסגר מוקסו+ פיענוח	2026-06-24 15:56:32.689645+00	2026-06-25 06:25:17.429053+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-25 06:25:17.429053+00	
8762951b-0cf3-4679-a0e5-5602f80949dc	202abebc-93a9-4fb9-926a-8c7677282aca	רועי פחימה	0527777101		Facebook	בטיפול		2026-04-19 11:07:43.297454+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
31ea3ba0-18d7-4824-b25d-460e4f7ea31c	01a6c28f-4761-4b65-97d8-db27e6752927	050-4575751	050-4575751		שיחה נכנסת (Maskyo)	חדש	06/08/2026 10:55:25 · סטטוס שיחה: CALLER CANCEL · יעד: 050-7801370	2026-08-06 07:55:29.930253+00	2026-08-06 07:55:29.930253+00	43dda6fd-1ba7-40df-a704-b1ab7bb5c305	\N	
6755cdd7-69c7-4294-bbfc-2eaa11739626	01a6c28f-4761-4b65-97d8-db27e6752927	054-7737090	054-7737090		שיחה נכנסת (Maskyo)	חדש	06/08/2026 10:55:41 · סטטוס שיחה: ANSWER · יעד: 050-7801370	2026-08-06 07:57:34.953793+00	2026-08-06 07:57:34.953793+00	43dda6fd-1ba7-40df-a704-b1ab7bb5c305	\N	
cf9fdd3d-d44e-4035-8f2d-4ea681447f94	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	סופיה מגריסו	0542495429		דף נחיתה	בטיפול	בודקת עם בעלה לגבי תאריך תור	2026-06-23 11:50:35.815719+00	2026-06-24 11:02:00.693232+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-24 11:02:00.693232+00	
664b7ed6-c1cd-4a6b-8ca3-8e1bec5873aa	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	חביבה קרתא	0524608094		דף נחיתה	בטיפול	לחזור אליה ביום ראשון	2026-06-21 04:47:45.804388+00	2026-06-24 06:22:47.616468+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-24 06:22:47.616468+00	
5c1f3e94-9f81-40a1-a786-ebf2d6b4a81c	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	עדי ענתות	0526682370		דף נחיתה	בטיפול	ניתן מידע לגבי פסיכודידקטי. תחזור אלינו.	2026-06-25 08:17:35.33207+00	2026-06-26 08:38:58.250554+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-26 08:38:58.250554+00	
6065f0a6-aa8e-4761-92e4-db911cf999ef	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	נועה חדד	0508813055		דף נחיתה	בטיפול	תביא הפניה ותחזור אלינו	2026-06-23 21:40:13.032522+00	2026-06-24 11:04:13.325755+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-24 11:04:13.325755+00	
bf1cee24-e530-412a-87bd-c3c862819677	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	אמילי מלינובסקי	0504336134		דף נחיתה	לא רלוונטי לעסק	סגרה עם מישהו אחר	2026-06-25 08:38:16.83597+00	2026-06-26 09:04:43.074378+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-26 09:04:43.074378+00	
37dc75aa-3f0b-45da-930b-2ad517d6b771	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	קרן כהן	0547771832		דף נחיתה	בטיפול	הוסבר אבחון קשב מלא. תתייעץ ותחזור אלי	2026-06-24 06:56:01.715813+00	2026-06-24 07:00:42.694143+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-24 07:00:42.694143+00	
18844f82-385c-4331-85fc-3799bdec4ce6	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	פנינה קליין	0504100324		דף נחיתה	לא רלוונטי לעסק	כרגע זה לא רלוונטי כי התחילו את התהליך בצורה אחרת. יחזרו בעתיד אם יהיה רלונטי	2026-06-18 17:37:54.434082+00	2026-06-25 06:32:02.203913+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-25 06:32:02.203913+00	
74717d93-67c5-4c1b-831f-bd8c87b165a6	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	שלום אפרתי	0522453096		דף נחיתה	בטיפול	אישתו תחזור אלי	2026-06-22 07:49:19.5943+00	2026-06-24 07:03:36.259057+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-24 07:03:36.259057+00	
351b419a-c5be-4626-89ea-03404c66230c	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	אושרית וינגרטן	0505989444		דף נחיתה	נסגר	נקבע תור למוקסו מקוון לפני מספר ימים	2026-06-20 09:32:00.738759+00	2026-06-24 07:17:32.607576+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-24 07:17:06.427795+00	
93724071-3e14-4769-832e-3abde47e192a	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	שלומית מוזס	0529451249		דף נחיתה	לא רלוונטי לעסק	סגרה במקום אחר	2026-06-22 14:24:02.448524+00	2026-06-24 07:28:59.298024+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-24 07:28:59.298024+00	
8523e394-67bd-43c3-97d5-313ec0f7f02f	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	שגיא נעה	0528480866		דף נחיתה	לא רלוונטי לעסק	טעות במספר	2026-06-24 19:40:24.396426+00	2026-06-26 10:42:38.908401+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-26 10:42:38.908401+00	
10e01c1c-e5c3-4285-a71c-381a57356da5	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	אלונה אמויאל	0526468505		דף נחיתה	בטיפול	הוסבר אבחון קשב מלא. תחזור אלינו.	2026-06-27 18:21:27.331987+00	2026-06-28 13:20:33.09399+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-28 13:20:33.09399+00	
cd548519-227a-49e9-9479-7336f8af080a	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	יעל ברון זילכה	0547532221		דף נחיתה	בטיפול	לא יכולה לדבר כרגע	2026-06-28 09:03:34.963518+00	2026-06-28 14:25:12.476336+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-28 14:25:12.476336+00	
d7cf05f6-7782-49fb-8ce9-2952334b16a6	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	איתי כהן	0544550089		דף נחיתה	בטיפול	הוסבר אבחון קשב מלא	2026-06-28 13:51:26.384532+00	2026-06-28 15:10:30.481518+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-28 15:10:30.481518+00	
0f61b087-6b33-4323-9544-420806b5ed1f	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	אושרת כהן	0502428699		דף נחיתה	בטיפול	הוסבר על מומחה קשב. תחשוב ..לחזור אליה עוד כמה ימים	2026-06-29 06:59:48.186488+00	2026-06-29 07:21:20.951506+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-29 07:21:20.951506+00	
c640ed21-2b76-4e1e-8e2c-54e7c1a2c25e	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	פלג גלעדי	0528728740		דף נחיתה	חדש		2026-06-30 06:52:57.28446+00	2026-06-30 06:52:57.28446+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
90f27e9d-b46e-41d4-96bb-737c4dd11e3a	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	ליאת שהרבני זיו	0544598889		דף נחיתה	בטיפול	תשלח הפניה	2026-06-29 12:00:37.824637+00	2026-06-30 06:08:24.627083+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-30 06:08:24.627083+00	
2dcb967c-3874-49c3-8aea-cfef7d28b9aa	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	נטלי אברזל	0504225020		דף נחיתה	ללא מענה	נשלחה הודעה	2026-06-29 15:48:05.255804+00	2026-06-30 06:20:06.317216+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-30 06:20:06.317216+00	
c1f903ac-3214-417a-9b5a-8b383dbdc00c	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	דבורי שטיינברג	0533216899		דף נחיתה	חדש	עבור : ילד /ילדה	2026-07-05 12:15:54.334963+00	2026-07-05 12:15:54.334963+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
ee107755-d24f-4a6d-9b62-e8636d76937d	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	קרן הודס	0544624488		דף נחיתה	חדש	עבור : מבוגר/ת	2026-07-06 07:08:14.419129+00	2026-07-06 07:08:14.419129+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
51861b8d-bd42-4f09-9864-39e13cfd3670	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	AHARON SABAG	0507969999		דף נחיתה	חדש	עבור : ילד /ילדה	2026-07-06 10:20:59.100159+00	2026-07-06 10:20:59.100159+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
401376d6-674c-4765-9a38-4665f45f5906	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	אביבה גונן	0522507995		דף נחיתה	חדש	עבור : מבוגר/ת	2026-07-06 10:24:25.48656+00	2026-07-06 10:24:25.48656+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
22d6d9c7-1527-4f8e-a5ba-cbca981b0e73	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	אביחי ביגל	0545842432		דף נחיתה	חדש	עבור : ילד /ילדה	2026-07-06 13:41:36.346208+00	2026-07-06 13:41:36.346208+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
1acdd684-2af4-4c47-ae98-835157a88b18	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	נטעאפרת	533039595	nettaefratlevy@gmail.com	Facebook	חדש		2026-07-07 02:02:51.213684+00	2026-07-07 02:02:51.213684+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
6064aa6a-a3a7-4e75-9d39-715350a8b98a	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	גפן עוזיאל	0558818080		דף נחיתה	חדש	עבור : ילד /ילדה	2026-07-07 04:31:00.162736+00	2026-07-07 04:31:00.162736+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
11f563a6-dff1-40d8-abac-ecf63d81fbd4	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	אלישבע סרור	0545423852		דף נחיתה	חדש	עבור : ילד /ילדה	2026-07-07 10:50:39.880375+00	2026-07-07 10:50:39.880375+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
23667601-1d20-49bb-90f1-6cff4a514e86	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	אלישבע סרור	0545423852		דף נחיתה	חדש	עבור : מבוגר/ת	2026-07-07 10:50:47.283198+00	2026-07-07 10:50:47.283198+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
22a9d4cd-cc25-4a5e-ab0a-af90837b6857	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	נוי דן	0542476007		דף נחיתה	חדש	עבור : סטודנט/ית	2026-07-08 11:37:09.578456+00	2026-07-08 11:37:09.578456+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
d16e684c-d495-4bf0-895d-e72d8ce72656	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	ולרי	0524641951		דף נחיתה	חדש	עבור : ילד /ילדה	2026-07-10 09:16:38.457261+00	2026-07-10 09:16:38.457261+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
deda9a18-3a95-4125-bcd9-bb67d5ff4bc5	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	חיה דינה עבאדי	0587703647		דף נחיתה	חדש	עבור : מבוגר/ת	2026-07-10 15:20:57.466327+00	2026-07-10 15:20:57.466327+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
9a0c6fe7-3276-414b-b1d8-4adfe7ae3f69	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	עמית ארנון	0542010455		דף נחיתה	חדש	עבור : מבוגר/ת	2026-07-10 20:22:26.262295+00	2026-07-10 20:22:26.262295+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
0c722215-fb54-47df-a256-c92dd4577e1a	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	גל חדד	050-7336252		דף נחיתה	חדש	עבור : ילד /ילדה	2026-07-13 09:38:32.045969+00	2026-07-13 09:38:32.045969+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
05896c39-be44-43e1-bcda-dee7656e905b	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	ארי נהרי	054-7794461		דף נחיתה	נסגר	עבור : ילד /ילדה	2026-07-08 08:33:38.13309+00	2026-07-15 07:46:10.560294+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-15 07:46:10.560294+00	אבחון דיגיטלי מלא
bec31da5-ecb9-4616-8576-ab791dfcc8ed	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	Anastasia Zilber	0537377072		דף נחיתה	נסגר	עבור : מבוגר/ת	2026-07-06 16:09:24.539737+00	2026-07-15 07:44:38.956468+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-15 07:44:27.88292+00	אבחון קשב דיגיטלי מלא
c954c8c7-b1e8-42e8-a0dd-b8c0a980fdaa	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	אולגה דאין דאין	0585502147		דף נחיתה	בטיפול	עבור :	2026-07-08 10:29:11.468419+00	2026-07-15 07:46:56.467657+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-15 07:46:56.467657+00	
9a669c00-ee1c-4a03-81c8-eccc4d07817f	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	אפרת כפרי	0528677796		דף נחיתה	נסגר	עבור : מבוגר/ת	2026-07-08 10:57:56.415404+00	2026-07-15 07:47:27.674245+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-15 07:47:27.674245+00	נסגר אבחון דיגיטלי מלא
d4419f6c-b09f-4e3b-89e2-f0c6b11fa643	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	אורן טל	0549119097		דף נחיתה	בטיפול	עבור : מבוגר/ת	2026-07-08 11:39:28.973502+00	2026-07-15 07:48:24.695442+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-15 07:48:24.695442+00	
2aacb7c6-913a-45e5-9367-de38ea346211	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	צילה	0525253735		דף נחיתה	בטיפול	עבור : ילד /ילדה	2026-07-08 15:39:10.932294+00	2026-07-15 07:48:49.204012+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-15 07:48:49.204012+00	
893961a1-dd1f-4b5c-b227-7de32f202340	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	רווית	0533336624		דף נחיתה	ללא מענה	עבור : ילד /ילדה	2026-07-09 14:49:36.240357+00	2026-07-15 07:49:09.615376+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-15 07:49:09.615376+00	
1b0abbc1-edeb-4dd9-b4ce-9979a3ecf847	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	בנימין זאב נודלמן	0547420063		דף נחיתה	בטיפול	עבור : מבוגר/ת	2026-07-10 10:47:24.026085+00	2026-07-15 07:50:06.047307+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-15 07:50:06.047307+00	
c4f19cd4-ac78-4fe7-bdad-d7b70cdc0e2f	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	רעות	0549508899		דף נחיתה	בטיפול	עבור : 	2026-07-11 05:42:49.133387+00	2026-07-15 07:50:11.582052+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-15 07:50:11.582052+00	
ae1ba825-178b-457f-8d19-590a30f7e9a4	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	מיכל קהא	0528540599		דף נחיתה	בטיפול	עבור : ילד /ילדה	2026-07-11 22:16:21.822329+00	2026-07-15 07:50:17.478529+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-15 07:50:17.478529+00	
ec36d97a-9d07-4fa6-b69c-a7ce710e542a	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	Itamar Friedman	0545069966		דף נחיתה	נסגר	עבור : סטודנט/ית	2026-07-12 00:57:25.043925+00	2026-07-15 07:50:32.535468+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-15 07:50:32.535468+00	אבחון קשב מלא דיגיטלי
292ff1e3-ed1e-4de2-9855-fe479c775ae7	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	ברטה	0545546114		דף נחיתה	נסגר	עבור : ילד /ילדה	2026-07-12 07:19:08.542937+00	2026-07-15 07:50:49.008841+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-15 07:50:49.008841+00	אבחון קשב דיגיטלי מלא
ad1677e9-ed77-475f-9b43-59507e518502	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	קוטב עומר	0507155855		דף נחיתה	בטיפול	עבור : ילד /ילדה	2026-07-12 10:01:27.154785+00	2026-07-15 07:50:53.018479+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-15 07:50:53.018479+00	
71807b91-446d-4b2e-9e05-7429bcc4bdad	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	עדי קורינו	0524388551		דף נחיתה	ללא מענה	עבור : ילד /ילדה	2026-07-12 13:34:19.417035+00	2026-07-15 07:51:18.612137+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-15 07:51:18.612137+00	
0e807a72-d0d3-4b83-a5b5-93bc1dad04bc	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	יוסי ציקו	0549004702		דף נחיתה	בטיפול	עבור : ילד /ילדה	2026-07-12 13:39:57.398382+00	2026-07-15 07:51:24.159736+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-15 07:51:24.159736+00	
105d8290-8742-4277-b02e-014ac5a39f31	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	יוסי דניס	0545302625		דף נחיתה	ללא מענה	עבור : מבוגר/ת	2026-07-12 18:34:06.616708+00	2026-07-15 07:51:27.552195+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-15 07:51:27.552195+00	
2cbbe6af-e9cd-49fe-8dab-a6c5ef18b6ce	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	נטלי ברייר	0506615331		דף נחיתה	בטיפול	עבור : מבוגר/ת	2026-07-13 04:47:20.588921+00	2026-07-15 07:51:46.179663+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-15 07:51:46.179663+00	
06894c66-da9e-46f9-a8df-0afd0b4dc994	202abebc-93a9-4fb9-926a-8c7677282aca	שירן	536228518		Facebook	בטיפול		2026-07-06 22:05:23.605183+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
c0000c6a-2459-40df-aba1-21a1f9817700	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	עומרי והבה	0536262668		דף נחיתה	חדש	עבור : מבוגר/ת	2026-07-14 10:42:37.414725+00	2026-07-14 10:42:37.414725+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
2693b52a-cc90-490a-a8a5-56994cef5da8	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	גוני סער רייס	0544591911		דף נחיתה	חדש	עבור : מבוגר/ת	2026-07-15 07:27:42.273247+00	2026-07-15 07:27:42.273247+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
77fae371-a2c6-41dd-bc5c-99e5125c4ac7	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	גלית ראם רחמים	0542430004		דף נחיתה	נסגר	עבור : ילד /ילדה	2026-07-07 15:20:28.911754+00	2026-07-15 07:43:46.268682+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-15 07:43:34.545726+00	סגרה מוקסו + פיענוח
78224363-d36e-4acb-8c01-2a04a9bb2391	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	ויקטוריה ישייב	0506460071		דף נחיתה	נסגר	עבור : ילד /ילדה	2026-07-08 14:31:08.89628+00	2026-07-15 07:48:13.498356+00	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-15 07:48:13.498356+00	אבחון קשב מלא
d20d8a9d-8c6d-4276-a6be-5e5d837c3be6	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	עמית ארנון	0542010455		דף נחיתה	חדש	עבור : מבוגר/ת	2026-07-15 08:02:40.294083+00	2026-07-15 08:02:40.294083+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
aebcfdb1-ef1c-4ea2-ab78-c8b50ab959b9	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	דניאל סדן רפ	0547434839		דף נחיתה	חדש	עבור : ילד /ילדה	2026-07-16 06:37:40.078606+00	2026-07-16 06:37:40.078606+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
7a9ba823-34fe-4b60-a7a2-3887413ad5c6	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	מרים טזייב	0552436310		דף נחיתה	חדש	עבור : ילד /ילדה	2026-07-16 07:33:05.051831+00	2026-07-16 07:33:05.051831+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
64c2ec4e-b229-439a-ae57-6e2cd78303fb	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	דורון כהן	0526844496		דף נחיתה	חדש	עבור : מבוגר/ת	2026-07-16 12:22:33.915239+00	2026-07-16 12:22:33.915239+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
a8abcb0e-1bba-4c83-b9ac-4bd99ded0f05	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	רנין	0522941075		דף נחיתה	חדש	עבור : סטודנט/ית	2026-07-17 17:14:30.327718+00	2026-07-17 17:14:30.327718+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
6ede76ae-0187-4d0d-a775-a7ab9c8620f1	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	ענת קיבץ	0537275504		דף נחיתה	חדש	עבור : ילד /ילדה	2026-07-17 20:23:12.932632+00	2026-07-17 20:23:12.932632+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
0974e548-782e-4d5b-8cfc-184de59f68ee	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	עדי גולן	0542224213		דף נחיתה	חדש	עבור : ילד /ילדה	2026-07-18 08:50:35.27569+00	2026-07-18 08:50:35.27569+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
f9f92fce-dfc8-4454-b6ba-06361f3fed79	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	ליאורה סטודנטסקי	0506242870		דף נחיתה	חדש	עבור : ילד /ילדה	2026-07-19 09:22:49.013081+00	2026-07-19 09:22:49.013081+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
a77d2f50-2105-4675-bd74-5c3083ad02e4	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	יעל פאוקטיסטוב	0549777307		דף נחיתה	חדש	עבור : סטודנט/ית	2026-07-19 10:02:31.318724+00	2026-07-19 10:02:31.318724+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
f6230617-9c3b-4501-9bfc-cdb49916d7c6	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	אנה צוקרמן	0546477482		דף נחיתה	חדש	עבור : ילד /ילדה	2026-07-19 12:08:27.470219+00	2026-07-19 12:08:27.470219+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
882088b0-041f-4d6b-b6b7-cd29f1ee7aa5	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	טטרו שמואל	0546532523		דף נחיתה	חדש	עבור : ילד /ילדה	2026-07-20 10:24:55.613152+00	2026-07-20 10:24:55.613152+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
cba3edab-f90d-49af-a631-40256e955111	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	יוסי ציקו	0549004702		דף נחיתה	חדש	עבור : ילד /ילדה	2026-07-20 15:02:52.198395+00	2026-07-20 15:02:52.198395+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
b51c9ef6-a8de-4c93-b1d8-3d79f521b950	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	סבריה אבו שהאב	0502228014		דף נחיתה	חדש	עבור : ילד /ילדה	2026-07-20 17:05:18.323436+00	2026-07-20 17:05:18.323436+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
ceb8a335-20d9-49c9-86a0-9b58c4100209	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	איריס כהן	522053163	shlomocohen71@gmail.com	Facebook	חדש		2026-07-21 04:29:47.267841+00	2026-07-21 04:29:47.267841+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
ef30430d-6658-4a1b-89b5-ab414d776f5e	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	איזבל	532289338	Khouryizabell@gmail.com	Facebook	חדש		2026-07-21 11:18:46.528058+00	2026-07-21 11:18:46.528058+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
3f362835-9dc5-4a5a-a0e6-f4e4478ae7fe	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	חופית	0545364963		דף נחיתה	חדש	עבור : ילד /ילדה	2026-07-22 07:36:33.626838+00	2026-07-22 07:36:33.626838+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
e5de2402-5630-43e7-8098-3446c433b1d1	8f21c002-2efd-4224-ac09-47432a41923d	הילה לביא	0525282890	hilab1979@gmail.com	טופס באתר	לא רלוונטי לעסק	רשתות יונים	2026-07-22 12:11:56.127465+00	2026-07-27 09:34:45.280619+00	5fb4e556-2df8-4c32-a693-c7bae38af54b	2026-07-27 09:34:45.280619+00	
626b5f1e-6306-4b6e-b7f1-293354700783	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	מריה	0528596561		דף נחיתה	חדש	עבור : מבוגר/ת	2026-07-23 14:36:00.441949+00	2026-07-23 14:36:00.441949+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
2529b3e1-ccac-4337-9a64-a2070a509e66	202abebc-93a9-4fb9-926a-8c7677282aca	בתאל עמוס	528820270		Facebook	בטיפול		2026-07-23 06:21:36.929533+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
4ded0097-14bf-4998-9f4f-6276dc05840f	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	תמר נצר	05251561222		דף נחיתה	חדש	עבור : מבוגר/ת	2026-07-24 09:07:46.746575+00	2026-07-24 09:07:46.746575+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
d069b386-ee02-4d0c-a3dc-693010c203d7	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	בדיקה גל	0549849196		דף נחיתה	חדש	עבור : מבוגר/ת	2026-08-05 07:10:29.02181+00	2026-08-05 07:10:29.02181+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
311f221e-1311-44b0-b3d1-960ccb8dd940	202abebc-93a9-4fb9-926a-8c7677282aca	Lea Naouri Simeoni	506342152		Facebook	חדש		2026-08-05 15:36:43.53472+00	2026-08-05 15:36:43.53472+00	425385ec-6f88-459c-a25e-abc8627ba78e	\N	
90356ce2-1dfb-4007-85a8-9b49203d86b2	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	סיניה בן שושן	0542297032		דף נחיתה	חדש	עבור : ילד /ילדה	2026-07-26 06:00:13.941274+00	2026-07-26 06:00:13.941274+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
c597b52b-da4e-4f24-bdbb-e06951f704cd	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	נופר ברוג	0509561771		דף נחיתה	חדש	עבור : ילד /ילדה	2026-07-27 07:17:38.720047+00	2026-07-27 07:17:38.720047+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
dd9d8b20-f0b2-46e8-bfce-417c8dd6797d	8f21c002-2efd-4224-ac09-47432a41923d	טל בר	0544431312	talbar26@gmail.com	טופס באתר	בטיפול	רשתות יונים	2026-07-22 17:27:11.505953+00	2026-07-28 06:01:57.499764+00	5fb4e556-2df8-4c32-a693-c7bae38af54b	2026-07-28 06:01:57.499764+00	
e276d036-46ba-42ae-b711-fb02086762d7	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	מעין גבאי	0504818648		דף נחיתה	חדש	עבור : 	2026-07-30 01:25:47.237253+00	2026-07-30 01:25:47.237253+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
ef2b3395-bd36-4208-9668-1a913304f1bc	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	אלינור איגנטוב	0522209980		דף נחיתה	חדש	עבור : ילד /ילדה	2026-07-30 07:12:43.995709+00	2026-07-30 07:12:43.995709+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
41b263cb-ac15-403a-8c04-c2ead6c0d845	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	דנה ששון	0528285350		דף נחיתה	חדש	עבור : ילד /ילדה	2026-07-30 10:16:19.067518+00	2026-07-30 10:16:19.067518+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
28214800-7ec6-4ee4-a39a-b3410a21c514	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	נועם עציון	0545924014		דף נחיתה	חדש	עבור : מבוגר/ת	2026-07-30 10:50:09.445372+00	2026-07-30 10:50:09.445372+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
3eb212c4-f0af-436f-b1b0-92af604821b3	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	אניה	0524261249		דף נחיתה	חדש	עבור : סטודנט/ית	2026-07-30 12:09:11.234672+00	2026-07-30 12:09:11.234672+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
2e4474f5-098b-42c0-a546-b5befcd93fa4	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	שלהבת לוי	0544671387		דף נחיתה	חדש	עבור : ילד /ילדה	2026-07-30 12:35:34.249379+00	2026-07-30 12:35:34.249379+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
49c1f7fc-61e9-41eb-8942-dfec070e01e7	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	נועם עציון	0545924014		דף נחיתה	חדש	עבור : מבוגר/ת	2026-07-30 13:11:07.462957+00	2026-07-30 13:11:07.462957+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
e9485520-e5e7-4f27-8f92-d106a7a9636a	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	קובי בן חמו	0503331712		דף נחיתה	חדש	עבור : מבוגר/ת	2026-07-31 04:42:02.940189+00	2026-07-31 04:42:02.940189+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
f62cadbc-a83e-404a-921b-04c3e6562003	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	קארין צימט	0505230674		דף נחיתה	חדש	עבור : ילד /ילדה	2026-08-01 14:48:51.461816+00	2026-08-01 14:48:51.461816+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
0daa6bf2-e8c5-4c6b-8757-0704f7406ade	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	עלמה גלאון	0552783155		דף נחיתה	חדש	עבור : מבוגר/ת	2026-08-02 15:31:41.423237+00	2026-08-02 15:31:41.423237+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
b65f3f03-9ee6-486b-bae0-f3f22d5e9447	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	תומר צאיק	0522501108		דף נחיתה	חדש	עבור : ילד /ילדה	2026-08-03 16:56:41.291232+00	2026-08-03 16:56:41.291232+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
d0078b2d-66e8-4455-ac20-fa1bc5585d0e	202abebc-93a9-4fb9-926a-8c7677282aca	מאיה כהן	524776483		Facebook	חדש		2026-08-04 04:00:24.7737+00	2026-08-04 04:00:24.7737+00	425385ec-6f88-459c-a25e-abc8627ba78e	\N	
68e7c683-cd38-4c81-8105-c025d15d8ca3	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	זלצר חגית	0508710102		דף נחיתה	חדש	עבור : מבוגר/ת	2026-08-04 10:55:40.648408+00	2026-08-04 10:55:40.648408+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
ea152523-018e-4b52-a91c-4533fa825efe	202abebc-93a9-4fb9-926a-8c7677282aca	ילנה ברין	544747786		Facebook	חדש		2026-08-04 20:37:01.09825+00	2026-08-04 20:37:01.09825+00	425385ec-6f88-459c-a25e-abc8627ba78e	\N	
480c8798-a51e-44a1-83d4-0c86f7ebcb87	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	אליחי מאיקס	0544544934		דף נחיתה	חדש	עבור : מבוגר/ת	2026-08-04 21:01:51.540032+00	2026-08-04 21:01:51.540032+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
bb1e28bc-1eab-4593-9ce9-96e6ad6cd0c6	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	סרבינוז	0526160858		דף נחיתה	חדש	עבור : סטודנט/ית	2026-08-04 21:13:35.449327+00	2026-08-04 21:13:35.449327+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
1f733d05-4f2d-4201-a995-2e8e6f387382	202abebc-93a9-4fb9-926a-8c7677282aca	Nurit Lebar	537082710		Facebook	חדש		2026-08-05 03:33:37.95364+00	2026-08-05 03:33:37.95364+00	425385ec-6f88-459c-a25e-abc8627ba78e	\N	
57acb6ef-b131-4535-afb7-95b0b9dae8a0	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	איריס ליברמן	0502224777		דף נחיתה	חדש	עבור : מבוגר/ת	2026-08-05 06:54:05.638179+00	2026-08-05 06:54:05.638179+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
dfc75368-1021-41f8-9320-0c18be94291c	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	2	2		דף נחיתה	חדש	עבור : 	2026-08-05 16:01:03.533251+00	2026-08-05 16:01:03.533251+00	800b0aec-5843-4002-a897-4d5827bd22b0	\N	
013932a1-ecdc-4ba9-9855-b6f3d3d2cd1b	202abebc-93a9-4fb9-926a-8c7677282aca	Yair Atias	544397298		Facebook	בטיפול		2026-05-15 16:24:51.639064+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
0330caa5-2075-4f18-a567-1c36a3b8d0a6	202abebc-93a9-4fb9-926a-8c7677282aca	נטליה	524449136		Facebook	בטיפול		2026-07-28 11:37:59.449284+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
04f4a349-7ebe-4070-8804-4ef78803e984	202abebc-93a9-4fb9-926a-8c7677282aca	Moran Levi Busani	505967755		Facebook	בטיפול		2026-05-15 04:14:51.772962+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
05208674-25f1-463f-ae18-6a66864bae68	202abebc-93a9-4fb9-926a-8c7677282aca	Mishel Fridman	504584412		Facebook	בטיפול		2026-06-15 14:14:16.593705+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
05b31d20-c6c3-492b-bfea-5db0342690a2	202abebc-93a9-4fb9-926a-8c7677282aca	אמאני	525999944		Facebook	בטיפול		2026-06-10 08:19:59.087602+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
0621a2a9-e998-4116-8a4f-c534429e7169	202abebc-93a9-4fb9-926a-8c7677282aca	רחלי אטיה	544221701		Facebook	בטיפול		2026-04-24 10:07:31.484207+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
083ecbc0-adb4-4341-95b8-5b558ff6c5e3	202abebc-93a9-4fb9-926a-8c7677282aca	sʜɪʀᴀᴢ	524815506		Facebook	בטיפול		2026-07-31 03:53:50.132469+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
0b444f51-039a-4ebe-bd4d-7c0cf9fef131	202abebc-93a9-4fb9-926a-8c7677282aca	הילה כספי	555665946		Facebook	בטיפול		2026-05-06 03:34:41.903084+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
0f40eb7b-e452-48d8-8670-d392c114b2c2	202abebc-93a9-4fb9-926a-8c7677282aca	Liron Lugasi Seti	534305306		Facebook	בטיפול		2026-05-13 11:52:06.708089+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
129f7c20-b554-4656-8044-56c528054f7a	202abebc-93a9-4fb9-926a-8c7677282aca	שירה לביא	534912232		Facebook	בטיפול		2026-04-20 18:19:00.83237+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
14f1f43a-d990-43ac-9e5f-c600815cfe6b	202abebc-93a9-4fb9-926a-8c7677282aca	Michal Ben Atar Buchacho	523675217		Facebook	בטיפול		2026-06-25 17:34:40.75969+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
165520af-4367-496e-8b2a-49418066bebc	202abebc-93a9-4fb9-926a-8c7677282aca	חי טייב	539988959		Facebook	בטיפול		2026-06-11 14:51:14.247771+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
18b1a967-94d2-4bb6-bb42-24bf68506c73	202abebc-93a9-4fb9-926a-8c7677282aca	Natali Ashkenazi	505888748		Facebook	בטיפול		2026-04-21 04:35:05.029879+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
1a035939-303e-4c11-a17d-aab8d8279293	202abebc-93a9-4fb9-926a-8c7677282aca	יוסף	503666128		Facebook	בטיפול		2026-05-17 19:42:04.229834+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
1bc92071-f55c-490d-8fd0-d63634b5409e	202abebc-93a9-4fb9-926a-8c7677282aca	נועה אלקיים	508589904		Facebook	בטיפול		2026-04-24 16:11:29.918087+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
1c0892b8-38b9-4424-8a7d-92fef5430012	202abebc-93a9-4fb9-926a-8c7677282aca	סילבי אברבוך	546586022		Facebook	בטיפול		2026-05-05 11:52:54.063156+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
1c829b46-0c82-4a3a-b869-2e4622155afe	202abebc-93a9-4fb9-926a-8c7677282aca	חן עזרן	527020650		Facebook	בטיפול		2026-07-23 21:58:47.775581+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
22583314-c710-4e4f-b04f-498c754a8e4b	202abebc-93a9-4fb9-926a-8c7677282aca	מעיין	548300989		Facebook	בטיפול		2026-05-21 08:36:56.495863+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
22f54f97-6dcb-4de3-8a26-905558412297	202abebc-93a9-4fb9-926a-8c7677282aca	ISABELLA Eilat	528486600		Facebook	בטיפול		2026-05-03 07:21:05.499136+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
23193edd-e9fc-441a-981a-3d07a67dffb4	202abebc-93a9-4fb9-926a-8c7677282aca	אוריה	525285618		Facebook	בטיפול		2026-07-10 11:04:04.831183+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
235d9e02-f0dc-4790-b878-f14042e636c8	202abebc-93a9-4fb9-926a-8c7677282aca	ברוריה מרים כהן..	523950572		Facebook	בטיפול		2026-06-14 11:07:40.790605+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
2800986a-6ef9-49d0-9870-f4be66a0fabb	202abebc-93a9-4fb9-926a-8c7677282aca	Mikaamar	542890263		Facebook	בטיפול		2026-07-20 20:52:28.211762+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
2b069be5-007c-4e9a-896a-1a49899d56fe	202abebc-93a9-4fb9-926a-8c7677282aca	Alona Perez	523444242		Facebook	בטיפול		2026-07-01 18:04:42.499722+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
2d6ea9df-71b5-4669-981f-0b023d77babc	202abebc-93a9-4fb9-926a-8c7677282aca	Lilach Kokuashvili	544447217		Facebook	בטיפול		2026-05-02 21:56:41.833898+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
2e85ba90-24f3-41e8-a490-2b22e9d2dadb	202abebc-93a9-4fb9-926a-8c7677282aca	לוי משאלי	527756742		Facebook	בטיפול		2026-06-10 16:00:28.399095+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
2edd8289-28bd-4130-99b0-6e596ff41880	202abebc-93a9-4fb9-926a-8c7677282aca	עדי טסלר	523602419		Facebook	בטיפול		2026-06-01 20:36:50.648547+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
2fcbc763-cfb1-4049-b7da-0f952924bce5	202abebc-93a9-4fb9-926a-8c7677282aca	Liat Ita Malul	527480919		Facebook	בטיפול		2026-06-02 06:20:41.164225+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
31452064-a793-4fb0-bbce-82f7d8834554	202abebc-93a9-4fb9-926a-8c7677282aca	אגיד פוארסה	505070412		Facebook	בטיפול		2026-05-09 18:55:35.175994+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
3549fb21-85b8-4d83-9d1e-7e5ebfd88edb	202abebc-93a9-4fb9-926a-8c7677282aca	עינבל מזרחי	506718108		Facebook	בטיפול		2026-05-05 07:29:32.536348+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
359a9b3b-bd12-4be3-9ad2-9db6f2a9098e	202abebc-93a9-4fb9-926a-8c7677282aca	Yam Mashiah	524668643		Facebook	בטיפול		2026-07-29 09:01:19.860859+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
372abd8e-ca0b-4b34-86c7-da95deecc3b5	202abebc-93a9-4fb9-926a-8c7677282aca	Ilana Itzik	524670070		Facebook	בטיפול		2026-06-14 07:02:28.571762+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
38f2f048-d8cc-4527-980f-0bd4d1fcc5c2	202abebc-93a9-4fb9-926a-8c7677282aca	בריס רואיס	509876103		Facebook	בטיפול		2026-06-23 07:52:24.716631+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
39546c33-c652-463f-833c-297f3375033e	202abebc-93a9-4fb9-926a-8c7677282aca	Sima Levy Furman	547300333		Facebook	בטיפול		2026-06-15 11:21:15.405445+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
3d93418e-abf9-40f1-aa04-2f8437afe6b5	202abebc-93a9-4fb9-926a-8c7677282aca	מיירן בריקלין	538454531		Facebook	בטיפול		2026-07-18 18:33:26.417772+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
3efbe2cb-3f9a-47e9-a4fe-6c310fc8d515	202abebc-93a9-4fb9-926a-8c7677282aca	אירית דימר אזרזר	505735461		Facebook	בטיפול		2026-07-29 07:35:52.028802+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
427e40d9-82b6-4b0d-bf05-718765305613	202abebc-93a9-4fb9-926a-8c7677282aca	סיגל	532244280		Facebook	בטיפול		2026-05-11 07:59:15.601783+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
4525090a-fc2c-4601-9db9-82f92f0e4288	202abebc-93a9-4fb9-926a-8c7677282aca	Yosef Hason	535254248		Facebook	בטיפול		2026-07-21 18:16:20.869579+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
455ce010-bdcf-4c1d-a4a9-c51d334e75f1	202abebc-93a9-4fb9-926a-8c7677282aca	נריה חדד	526072229		Facebook	בטיפול		2026-07-22 06:20:23.351948+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
45b10f94-5560-46f3-81e1-adf4e1d64917	202abebc-93a9-4fb9-926a-8c7677282aca	בנימין	528080668		Facebook	בטיפול		2026-05-09 11:25:18.962344+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
47012603-6a9c-4d9b-a203-55a128468987	202abebc-93a9-4fb9-926a-8c7677282aca	ופאא ששתאווי	527855009		Facebook	בטיפול		2026-07-03 04:58:09.646348+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
4866519a-9ba6-4558-a78a-b360a4948bca	202abebc-93a9-4fb9-926a-8c7677282aca	Tomer Sharon	503383830		Facebook	בטיפול		2026-05-18 11:42:40.923858+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
488e4dc5-2c78-4a60-98e2-07f879d35eb0	202abebc-93a9-4fb9-926a-8c7677282aca	Adam Sayyad	522400263		Facebook	בטיפול		2026-04-28 23:12:38.086996+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
49c035cf-706d-4ad4-aa0e-ca7a21580818	202abebc-93a9-4fb9-926a-8c7677282aca	אושר גל	559599809		Facebook	בטיפול		2026-06-09 05:25:17.526522+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
4c4c77fa-2cf7-4fa6-bbc7-88a1ab38a05c	202abebc-93a9-4fb9-926a-8c7677282aca	אירינה קישינבסקי	544722513		Facebook	בטיפול		2026-04-27 14:47:14.346464+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
56c0114f-a242-4d1b-9c1c-8194521fef00	202abebc-93a9-4fb9-926a-8c7677282aca	רפי בן עמי	505665728		Facebook	בטיפול		2026-05-01 07:10:01.654973+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
56c97b35-7902-4e20-beff-622ca1b56f6a	202abebc-93a9-4fb9-926a-8c7677282aca	Cindy Mizrahi Lévy	532844608		Facebook	בטיפול		2026-07-12 15:37:05.201942+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
56fcb9c0-654e-4d97-aa6b-3882111bcec0	202abebc-93a9-4fb9-926a-8c7677282aca	ליאת צור	506459006		Facebook	בטיפול		2026-07-18 21:37:59.137184+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
57285581-b896-4091-84da-46a4de064edf	202abebc-93a9-4fb9-926a-8c7677282aca	קירשמן יאנה	547681362		Facebook	בטיפול		2026-07-31 16:36:25.158537+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
5cff9b76-0fbc-41e4-b1a7-1d1d4ec5748f	202abebc-93a9-4fb9-926a-8c7677282aca	Clara Rossia Raban	522284148		Facebook	בטיפול		2026-07-21 07:04:27.207977+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
5e05c941-f79f-4c0e-ad0a-91cd973c3e7b	202abebc-93a9-4fb9-926a-8c7677282aca	שני דורני	537534212		Facebook	בטיפול		2026-07-20 10:07:47.653977+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
5f2f0b76-857c-46ea-94bd-086f0b5cf64c	202abebc-93a9-4fb9-926a-8c7677282aca	Liron Shtainbach	525809595		Facebook	בטיפול		2026-07-18 18:33:28.001635+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
62603826-1d21-4f52-8a47-ff6cde70ddef	202abebc-93a9-4fb9-926a-8c7677282aca	Israel Meller	547217573		Facebook	בטיפול		2026-05-02 08:46:47.52015+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
653a0c56-d851-4a10-b147-cc12302422c3	202abebc-93a9-4fb9-926a-8c7677282aca	אושרת חנה יצחקי	544770550		Facebook	בטיפול		2026-04-23 16:53:55.400156+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
6570e0de-a84c-4673-b98a-e82f9160956a	202abebc-93a9-4fb9-926a-8c7677282aca	Sharon hazan barad	503031200		Facebook	בטיפול		2026-06-25 05:28:03.399351+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
66685fb1-bc5c-4870-ae06-37cb84ce24ea	202abebc-93a9-4fb9-926a-8c7677282aca	דימה	535970269		Facebook	בטיפול		2026-04-22 19:05:42.419403+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
66cb7802-a9ce-4a52-b62f-376045ec30bf	202abebc-93a9-4fb9-926a-8c7677282aca	Meirav Heimann	544340105		Facebook	בטיפול		2026-07-01 13:57:45.685881+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
676fdf41-3ea5-4b36-80da-8a7dd0798948	202abebc-93a9-4fb9-926a-8c7677282aca	בדר אבו ג'ומעה	502694714		Facebook	בטיפול		2026-06-03 03:46:14.587877+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
687008c1-07ed-46d0-8712-a093c00f8c9a	202abebc-93a9-4fb9-926a-8c7677282aca	Eva Hamama	506569150		Facebook	בטיפול		2026-07-24 03:42:26.789936+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
6a95bc04-6682-478b-b283-ca447c8387df	202abebc-93a9-4fb9-926a-8c7677282aca	Nella Preger uzana	547453055		Facebook	בטיפול		2026-07-12 10:57:35.21831+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
6c98534d-e0dc-4eff-9a66-8546b465fdfe	202abebc-93a9-4fb9-926a-8c7677282aca	Freik Led Zeplien	538693411		Facebook	בטיפול		2026-06-22 11:11:45.022509+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
6f088f21-2e4e-455c-8640-0b54cb201404	202abebc-93a9-4fb9-926a-8c7677282aca	דנה אדרי	503511010		Facebook	בטיפול		2026-07-18 18:32:50.098363+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
6f221112-b23e-44fe-be3d-ac8eb5761849	202abebc-93a9-4fb9-926a-8c7677282aca	Gal Itach	523444935		Facebook	בטיפול		2026-04-21 10:38:03.872491+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
6f4be6c9-9de5-4f85-a72d-143208f2c8bd	202abebc-93a9-4fb9-926a-8c7677282aca	Maria Abitbul	527889767		Facebook	בטיפול		2026-06-10 13:24:16.780805+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
6fa4e581-2a69-4fc9-8913-37aa01e914df	202abebc-93a9-4fb9-926a-8c7677282aca	Shlomit Watter	526737222		Facebook	בטיפול		2026-06-21 16:11:14.029574+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
70398dec-959e-4ba7-8f6d-f2c07e032418	202abebc-93a9-4fb9-926a-8c7677282aca	אנסטסיה דרוגנוב	537263117		Facebook	בטיפול		2026-05-05 06:59:43.317646+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
72b7f17f-7b50-4839-872f-5f22594ee79b	202abebc-93a9-4fb9-926a-8c7677282aca	רזי	527342462		Facebook	בטיפול		2026-06-13 18:36:33.91111+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
74a1b0da-13e3-46c4-b5af-db99b977be26	202abebc-93a9-4fb9-926a-8c7677282aca	מקס דרקין	503189813		Facebook	בטיפול		2026-07-10 13:42:45.437442+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
7558c09b-9ab5-4817-91b9-e7732e226f1f	202abebc-93a9-4fb9-926a-8c7677282aca	Omnia Alhozail	546804646		Facebook	בטיפול		2026-07-25 11:55:13.336695+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
76667a9b-5d0d-44ed-bc35-9a245ce5ab00	202abebc-93a9-4fb9-926a-8c7677282aca	שחף טליאס || 𝐒𝐡𝐚𝐡𝐚𝐟 𝐓𝐞𝐥𝐢𝐚𝐬	506863035		Facebook	בטיפול		2026-07-29 04:46:58.233864+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
771fcc0f-49a2-47a9-8e7a-de794791736e	202abebc-93a9-4fb9-926a-8c7677282aca	שירה אטיאס	587815072		Facebook	בטיפול		2026-05-07 12:23:05.644976+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
7c9a6fd0-8461-4145-860c-7857a857690b	202abebc-93a9-4fb9-926a-8c7677282aca	ליאת טלקר פרץ	555569809		Facebook	בטיפול		2026-07-26 16:19:58.90931+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
7d7851f9-cf67-43a7-ac78-fdb8b449914c	202abebc-93a9-4fb9-926a-8c7677282aca	Ismael Ghnam	504300653		Facebook	בטיפול		2026-07-24 08:06:05.377294+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
7de6a560-8db1-4882-9503-e5617bdf2404	202abebc-93a9-4fb9-926a-8c7677282aca	אורי חיים	544836226		Facebook	בטיפול		2026-05-21 00:04:52.982517+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
7dfdf4df-4e75-48ea-b380-b47af01e1b02	202abebc-93a9-4fb9-926a-8c7677282aca	Pninit Lavi	545451785		Facebook	בטיפול		2026-05-04 09:27:16.497929+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
7e6a9d4b-c6cd-4fda-a144-e3a8a3f220a2	202abebc-93a9-4fb9-926a-8c7677282aca	סטפני איילון	533320533		Facebook	בטיפול		2026-06-02 16:08:18.762489+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
7f97ea48-a5e5-45fa-b443-d424792e2b82	202abebc-93a9-4fb9-926a-8c7677282aca	Анита Файницкий	547671712		Facebook	בטיפול		2026-06-26 00:07:03.453325+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
81f8cc69-fb85-4cbd-bbd8-286133b914b1	202abebc-93a9-4fb9-926a-8c7677282aca	טלי ברנס	535203544		Facebook	בטיפול		2026-05-21 03:45:49.30278+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
83a9557e-559a-41d5-bff2-66f12cda9217	202abebc-93a9-4fb9-926a-8c7677282aca	יפה טוויזר	534323375		Facebook	בטיפול		2026-07-18 22:33:09.703349+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
8780135f-2386-46c9-8f35-b779689b7416	202abebc-93a9-4fb9-926a-8c7677282aca	Hani	524221632		Facebook	בטיפול		2026-07-18 18:33:21.159002+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
8ed7460c-c01f-46f2-a549-be23dc5faaef	202abebc-93a9-4fb9-926a-8c7677282aca	טלי	543833899		Facebook	בטיפול		2026-06-27 08:03:23.944076+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
8f91e872-41e1-4af2-8a74-1a71657b446a	202abebc-93a9-4fb9-926a-8c7677282aca	Svetlana Zelikman Nedrega	545908563		Facebook	בטיפול		2026-05-11 20:04:06.47848+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
927180b0-cb00-4af8-937b-acc7686914da	202abebc-93a9-4fb9-926a-8c7677282aca	איטה רוט	507211185		Facebook	בטיפול		2026-07-02 13:47:47.869909+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
958e0d47-c3f9-4289-a17f-80b4fcfd141a	202abebc-93a9-4fb9-926a-8c7677282aca	Анжелина Абрамово	547650610		Facebook	בטיפול		2026-06-27 15:11:54.220362+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
991bf3f9-5f13-4f46-b7e1-12193cd1a0d9	202abebc-93a9-4fb9-926a-8c7677282aca	Liza Lea Ben Simon	552223311		Facebook	בטיפול		2026-06-26 10:54:20.464722+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
995aa9a5-29c0-4b90-8ffc-cd28ec698253	202abebc-93a9-4fb9-926a-8c7677282aca	michal	585454030		Facebook	בטיפול		2026-06-10 08:04:31.050687+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
9b507067-b0bb-460d-9e31-10e61076a83d	202abebc-93a9-4fb9-926a-8c7677282aca	ליאת	544339900		Facebook	בטיפול		2026-06-25 16:34:12.393542+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
9bc55269-9a22-439e-bf49-3131a2d880ef	202abebc-93a9-4fb9-926a-8c7677282aca	Shada Masood	526603604		Facebook	בטיפול		2026-04-24 09:10:20.649203+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
9cc3bc12-f6b4-4f9a-b57a-6a8a1cc4ffd9	202abebc-93a9-4fb9-926a-8c7677282aca	אילן	537774848		Facebook	בטיפול		2026-05-20 11:55:11.062325+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
a1aef816-9d4a-413b-b6d5-9dd0e441f173	202abebc-93a9-4fb9-926a-8c7677282aca	רעות	508817441		Facebook	בטיפול		2026-05-10 10:38:52.743119+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
a2b402f3-d982-4361-81e4-3ef360e79e43	202abebc-93a9-4fb9-926a-8c7677282aca	Anna	506577795		Facebook	בטיפול		2026-05-20 17:52:42.793824+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
a4b9a0eb-8aab-4cdd-ae99-5fcd820ed54f	202abebc-93a9-4fb9-926a-8c7677282aca	שריקי לאה	536660670		Facebook	בטיפול		2026-07-01 08:58:43.579139+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
a601f920-b317-49e5-bb86-a5af539fdbe2	202abebc-93a9-4fb9-926a-8c7677282aca	Olga Verlinsky	546283802		Facebook	בטיפול		2026-07-30 17:27:51.040983+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
a636b6a9-379c-4cab-8434-ae6b09e7e6ed	202abebc-93a9-4fb9-926a-8c7677282aca	אלין	532812320		Facebook	בטיפול		2026-05-01 07:00:35.989703+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
a847acb0-72c3-4384-89e3-f0dcac976bbd	202abebc-93a9-4fb9-926a-8c7677282aca	𝓮𝓭𝓮𝓷𖣂	528010117		Facebook	בטיפול		2026-07-11 11:24:56.456652+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
a8814bfe-b523-4a48-99e6-c8a22ac3e3bb	202abebc-93a9-4fb9-926a-8c7677282aca	דוד ביטון	528944777		Facebook	בטיפול		2026-05-18 18:48:54.622547+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
ae1485ae-3b0a-4170-9d19-3d9045e91123	202abebc-93a9-4fb9-926a-8c7677282aca	דניאל ארביב	522835785		Facebook	בטיפול		2026-06-22 04:26:47.246768+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
b01aea34-a855-4fe6-bea0-b67191f0f49a	202abebc-93a9-4fb9-926a-8c7677282aca	יעל	508695917		Facebook	בטיפול		2026-06-02 05:06:05.584189+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
b1444b1a-fac1-4314-a9d4-a8a4a1c29cfa	202abebc-93a9-4fb9-926a-8c7677282aca	Hayeem Koleno Yolka Ilana	509463806		Facebook	בטיפול		2026-06-15 04:04:34.848066+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
b2a911c4-9db5-497b-a86e-e99df84a0cd5	202abebc-93a9-4fb9-926a-8c7677282aca	מיירן בריקלין	538454531		Facebook	בטיפול		2026-07-18 18:33:28.301155+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
b3020d1d-25dd-402e-aec1-6f17e170c9a2	202abebc-93a9-4fb9-926a-8c7677282aca	יורם אוזן	509180918		Facebook	בטיפול		2026-04-26 03:45:03.75075+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
b38510e5-b628-48e6-a2d7-47fde5731055	202abebc-93a9-4fb9-926a-8c7677282aca	שאננה ריד בת ישראל	515228329		Facebook	בטיפול		2026-07-18 18:33:21.172033+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
b4eefcdb-433c-44f1-af74-efbe532684c5	202abebc-93a9-4fb9-926a-8c7677282aca	Kristina	528128233		Facebook	בטיפול		2026-04-24 18:30:52.636062+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
b5cc1207-2ab6-4764-b3fe-b74f32acff87	202abebc-93a9-4fb9-926a-8c7677282aca	דינה וחידי	546533373		Facebook	בטיפול		2026-05-13 11:52:06.384413+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
b60d0d6e-2ce3-4446-8790-c1e7caad3a04	202abebc-93a9-4fb9-926a-8c7677282aca	Dalia Izhiman	504342545		Facebook	בטיפול		2026-06-25 22:25:41.742505+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
b65db499-fc7a-4260-8494-74ca874eaf99	202abebc-93a9-4fb9-926a-8c7677282aca	Amir khoury	547391641		Facebook	בטיפול		2026-07-28 16:31:26.083432+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
b6fcdbe9-4b99-4ee6-b110-d32f7019be3a	202abebc-93a9-4fb9-926a-8c7677282aca	Solit Shchori	508182076		Facebook	בטיפול		2026-05-09 13:28:44.273542+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
b7345525-a708-4338-b50c-6ac8997c608c	202abebc-93a9-4fb9-926a-8c7677282aca	דריה מרים קרפילובסקי	539243130		Facebook	בטיפול		2026-05-14 06:28:54.703844+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
b8415f4e-2b28-4783-b04f-7e970d699966	202abebc-93a9-4fb9-926a-8c7677282aca	Yuliya Bystritsky	506911694		Facebook	בטיפול		2026-06-02 16:06:49.500738+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
ba1a67b7-a15a-49e5-89ee-5bc4b7ccf0ea	202abebc-93a9-4fb9-926a-8c7677282aca	רועי חוברה	508232249		Facebook	בטיפול		2026-07-22 17:23:57.984561+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
bb55a69b-d384-402b-ac64-8680a58d159a	202abebc-93a9-4fb9-926a-8c7677282aca	Aryella Gutman	543963551		Facebook	בטיפול		2026-07-03 18:28:07.491448+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
bc69d314-27a9-423f-9bec-d1a0186ef6d4	202abebc-93a9-4fb9-926a-8c7677282aca	אלה ווזאנה	6135515150		Facebook	בטיפול		2026-07-26 14:58:28.741919+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
bd4aa636-6510-45b1-801b-aa1df681e32b	202abebc-93a9-4fb9-926a-8c7677282aca	מזל פדידה	504450017		Facebook	בטיפול		2026-06-11 13:24:51.270824+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
bddfdde6-f662-4baa-9cb8-bf51ec462654	202abebc-93a9-4fb9-926a-8c7677282aca	Ida Gorohovski	545658613		Facebook	בטיפול		2026-06-10 11:47:12.070546+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
c2469572-049f-487d-a17c-8c407dcad3c6	202abebc-93a9-4fb9-926a-8c7677282aca	רותם ס	508811604		Facebook	בטיפול		2026-07-31 11:45:47.419592+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
c27b4fad-b769-43e6-8412-b61425ec181f	202abebc-93a9-4fb9-926a-8c7677282aca	סיון אוזל	506463628		Facebook	בטיפול		2026-07-01 10:42:30.381869+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
c2ba27d4-f34c-423c-a1df-e2b8d17083d0	202abebc-93a9-4fb9-926a-8c7677282aca	Levi Orliאורלי לוי	503681893		Facebook	בטיפול		2026-06-12 12:13:28.430859+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
c3340b71-246b-4eac-b8c4-ff95898b2f2f	202abebc-93a9-4fb9-926a-8c7677282aca	שוש שחק	544768881		Facebook	בטיפול		2026-06-16 04:21:36.15315+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
c3d91174-a8ac-40dd-9b50-acdda116d37b	202abebc-93a9-4fb9-926a-8c7677282aca	שרוק גבלי	542402011		Facebook	בטיפול		2026-07-28 07:34:30.350799+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
c449ffb0-ccb2-4a8e-a81d-fed89019c7b8	202abebc-93a9-4fb9-926a-8c7677282aca	Liron Shtainbach	525809595		Facebook	בטיפול		2026-07-18 18:33:19.68821+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
c4650187-4718-43a6-a126-8790637eec4c	202abebc-93a9-4fb9-926a-8c7677282aca	חנה קטמאו	549115212		Facebook	בטיפול		2026-07-27 23:20:30.783917+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
c52b24a0-3483-4df3-8e36-5bc258ac85b2	202abebc-93a9-4fb9-926a-8c7677282aca	דן נפתלייב	544371512		Facebook	בטיפול		2026-05-13 11:52:06.703471+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
ca59801b-0e44-4084-aa40-bbb684d7fc8c	202abebc-93a9-4fb9-926a-8c7677282aca	אסתר יצחק חיים	505366717		Facebook	בטיפול		2026-04-30 03:53:54.805086+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
cf2f766b-1c99-4e44-b756-24d4da2a80ba	202abebc-93a9-4fb9-926a-8c7677282aca	צופית ברוך	502728128		Facebook	בטיפול		2026-07-12 14:54:35.327158+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
cf59a95d-e90c-4cb6-a490-a1323b5a9bc1	202abebc-93a9-4fb9-926a-8c7677282aca	Molly Slavin Maimon	544242018		Facebook	בטיפול		2026-07-19 12:14:03.581765+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
cf7ef2cf-32b6-4c77-bf79-554431c4200f	202abebc-93a9-4fb9-926a-8c7677282aca	חגית דהן כרמלי	539591217		Facebook	בטיפול		2026-07-04 14:03:35.303252+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
d105660d-9435-475f-8317-5266e7e93706	202abebc-93a9-4fb9-926a-8c7677282aca	Medor Ah	508630193		Facebook	בטיפול		2026-04-23 21:05:35.742754+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
d1c4e6f6-6de8-4bd7-a028-3fe1ece1bda3	202abebc-93a9-4fb9-926a-8c7677282aca	מתן בינימין סבג	526188101		Facebook	בטיפול		2026-05-10 17:11:43.279952+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
d2b85a27-5ed4-4992-b228-86d5a8b6933e	202abebc-93a9-4fb9-926a-8c7677282aca	מזל יבדייבה	557756328		Facebook	בטיפול		2026-05-08 12:05:59.619454+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
d39b7f29-a39b-4a83-8595-1b3fe3e7bc3a	202abebc-93a9-4fb9-926a-8c7677282aca	Meital Zano	537253672		Facebook	בטיפול		2026-07-31 09:18:06.748668+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
d5513906-b592-4908-9b42-99f0cedc10ce	202abebc-93a9-4fb9-926a-8c7677282aca	גל אורן	544505351		Facebook	בטיפול		2026-07-21 06:42:24.252886+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
d5c6dd7a-e879-4d07-8ff5-80cb636e8921	202abebc-93a9-4fb9-926a-8c7677282aca	Dani Mihitan	532209513		Facebook	בטיפול		2026-04-26 07:28:53.272596+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
d6f6e3da-7ea5-4717-864c-b768ffa58a5f	202abebc-93a9-4fb9-926a-8c7677282aca	Shelly ovadya	524411062		Facebook	בטיפול		2026-04-25 18:22:10.581239+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
d7b83a24-04e8-438e-9930-11925613c04a	202abebc-93a9-4fb9-926a-8c7677282aca	Malka Levi	508719071		Facebook	בטיפול		2026-06-12 13:25:48.833525+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
d9eb04fe-ec4f-457b-a029-6c77419840ae	202abebc-93a9-4fb9-926a-8c7677282aca	יפית ויצמן	544547613		Facebook	בטיפול		2026-06-10 03:56:48.253221+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
da802555-8bb6-4941-a557-c725fec48971	202abebc-93a9-4fb9-926a-8c7677282aca	Yarden Ratner	545088804		Facebook	בטיפול		2026-06-30 17:54:49.349008+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
dbd5eb06-672e-45fe-960c-3e155a289f29	202abebc-93a9-4fb9-926a-8c7677282aca	לירז שיקלי	528184788		Facebook	בטיפול		2026-06-17 02:36:30.519473+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
dcb3cdbb-499a-4263-9365-658895843721	202abebc-93a9-4fb9-926a-8c7677282aca	ליאת קידר	523219012		Facebook	בטיפול		2026-06-16 18:43:01.323955+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
de06a7cb-a052-4a82-b339-7a5deb2b0eb0	202abebc-93a9-4fb9-926a-8c7677282aca	חוות בניה סוסים	546996829		Facebook	בטיפול		2026-07-18 18:33:07.805013+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
e0713a55-8e77-43dd-ad74-1a65b1e9c53c	202abebc-93a9-4fb9-926a-8c7677282aca	פניאל שרה	507337707		Facebook	בטיפול		2026-04-20 05:31:18.883787+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
e316a282-3cec-40f6-b2bf-5781542927c2	202abebc-93a9-4fb9-926a-8c7677282aca	Jan Ramati	506707078		Facebook	בטיפול		2026-07-18 18:33:20.949284+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
e6fe2394-1be8-4580-8d99-835d9cfd64ac	202abebc-93a9-4fb9-926a-8c7677282aca	Talia	509548627		Facebook	בטיפול		2026-06-30 15:32:28.319585+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
e8687bd6-7a39-488e-9749-93e77a4aceb7	202abebc-93a9-4fb9-926a-8c7677282aca	Natalie Ankona	504222728		Facebook	בטיפול		2026-04-24 20:30:25.287535+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
e8ac0669-3321-450a-9d73-b11b0240055e	202abebc-93a9-4fb9-926a-8c7677282aca	בוזגלו רווח מירי	545411948		Facebook	בטיפול		2026-07-11 17:00:45.402013+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
e9f3888d-c51b-4fc0-8785-113e26dcf012	202abebc-93a9-4fb9-926a-8c7677282aca	Guy Shoval0523463170	523463170		Facebook	בטיפול		2026-07-10 18:10:45.84899+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
eabc7c13-c773-4458-aaeb-0c53ee90b3ca	202abebc-93a9-4fb9-926a-8c7677282aca	רזניצקי נטליה	537339041		Facebook	בטיפול		2026-07-19 01:35:16.775252+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
ed03a71b-a364-4bf9-9858-c30d7d4f8258	202abebc-93a9-4fb9-926a-8c7677282aca	סיגל אילת	526664997		Facebook	בטיפול		2026-07-25 06:13:11.670359+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
eef9c2f3-139b-4d49-9884-5eb9dcea94b8	202abebc-93a9-4fb9-926a-8c7677282aca	Eden Haspel	538686008		Facebook	בטיפול		2026-07-27 08:04:37.312904+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
f2c9fd03-d5ef-49f8-a023-b72d4cf49b71	202abebc-93a9-4fb9-926a-8c7677282aca	Lauren Cohen	532343096		Facebook	בטיפול		2026-07-18 18:32:59.150604+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
f71fa7e1-a94c-44ba-a76c-f7ff9eb05c32	202abebc-93a9-4fb9-926a-8c7677282aca	אלי ברסלביץ	542065544		Facebook	בטיפול		2026-06-30 17:00:01.67333+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
f842613f-3aa1-4214-9641-3279a5607015	202abebc-93a9-4fb9-926a-8c7677282aca	Ksenia Avia Ben David	547971342		Facebook	בטיפול		2026-04-26 12:16:13.88327+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
fadf90d0-8ed0-420b-b117-7cd3f6baa923	202abebc-93a9-4fb9-926a-8c7677282aca	אלישבע	545373990		Facebook	בטיפול		2026-07-07 13:29:55.851238+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
faec5a29-15ab-4859-8b10-3db918c93ddc	202abebc-93a9-4fb9-926a-8c7677282aca	Sarah Juliana Hason	543099307		Facebook	בטיפול		2026-07-13 11:49:48.02764+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
fcedb133-769e-4d16-bc8d-7204f7ffd292	202abebc-93a9-4fb9-926a-8c7677282aca	Оля Романова	992719770		Facebook	בטיפול		2026-07-18 21:53:09.31882+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
fe7c69c5-43f4-4a1f-a8c7-466f7f6a850c	202abebc-93a9-4fb9-926a-8c7677282aca	Aliza_Ir	526468758		Facebook	בטיפול		2026-05-20 07:43:00.297582+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
ff87e895-8514-4353-9187-5d2fc0b87ae8	202abebc-93a9-4fb9-926a-8c7677282aca	סיגלית סולומון	523682503		Facebook	בטיפול		2026-05-07 09:00:43.397846+00	2026-08-05 19:08:28.408237+00	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:08:28.408237+00	
\.


--
-- Data for Name: calls; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."calls" ("id", "client_id", "business_id", "webhook_key_id", "cli", "destination", "call_status", "user_fild1", "call_date", "call_time", "received_at", "lead_id", "created_at") FROM stdin;
7000e587-1f15-4e2a-882e-78d477223107	a248ecae-9af4-4056-8fc9-668ca0377228	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	c08f8725-1d6d-4c01-b161-626bb137d26d	054-9007467	052-7777101	BUSY		05/08/2026	20:59:33	2026-08-05 17:59:43.768054+00	\N	2026-08-05 17:59:43.768054+00
db8bc1a5-abbb-41ea-aa14-a3c71a62d332	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	a5a65b91-6484-4b38-a8ae-26792d10dc84	054-4450448	053-4696446	CALLER CANCEL		06/08/2026	09:50:29	2026-08-06 06:50:34.767001+00	8aaf42c0-6695-443a-a428-70a3959d2a67	2026-08-06 06:50:34.767001+00
9bddd09f-2b5a-44e5-8883-e6752e6cf039	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	a5a65b91-6484-4b38-a8ae-26792d10dc84	052-4708643	053-4696446	NOANSWER		06/08/2026	10:02:48	2026-08-06 07:03:20.025573+00	023b9183-db50-4dfc-a83a-50bc9ca5585f	2026-08-06 07:03:20.025573+00
9cd47c91-3ee0-42cd-beed-93394e99d308	01a6c28f-4761-4b65-97d8-db27e6752927	43dda6fd-1ba7-40df-a704-b1ab7bb5c305	2051b8d8-ecce-4713-9ba0-8b8b42799a93	050-4575751	050-7801370	CALLER CANCEL		06/08/2026	10:55:25	2026-08-06 07:55:29.930253+00	31ea3ba0-18d7-4824-b25d-460e4f7ea31c	2026-08-06 07:55:29.930253+00
745918bd-fdcb-46fd-baa2-4fbe5ab37d0f	01a6c28f-4761-4b65-97d8-db27e6752927	43dda6fd-1ba7-40df-a704-b1ab7bb5c305	2051b8d8-ecce-4713-9ba0-8b8b42799a93	054-7737090	050-7801370	ANSWER		06/08/2026	10:55:41	2026-08-06 07:57:34.953793+00	6755cdd7-69c7-4294-bbfc-2eaa11739626	2026-08-06 07:57:34.953793+00
\.


--
-- Data for Name: client_employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."client_employees" ("id", "client_id", "user_id", "display_name", "email", "business_ids", "permissions", "created_at", "updated_at") FROM stdin;
fef7a594-82db-4bbd-9adf-df4c512aa329	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	561619ad-f3bd-405f-8869-421845e3bf37	גלית מרכז גלאי	mercazgalay@gmail.com	{800b0aec-5843-4002-a897-4d5827bd22b0}	{"leads": {"edit": true, "view": true}, "reports": {"edit": false, "view": true}, "updates": {"edit": false, "view": true}, "pipeline": {"edit": false, "view": true}, "projects": {"edit": false, "view": false}, "requests": {"edit": true, "view": true}, "settings": {"edit": false, "view": false}, "analytics": {"edit": true, "view": true}, "dashboard": {"edit": false, "view": false}, "documents": {"edit": false, "view": false}}	2026-06-23 13:16:23.865866+00	2026-06-23 13:16:23.865866+00
\.


--
-- Data for Name: data_integrity_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."data_integrity_log" ("id", "check_name", "severity", "details", "created_at") FROM stdin;
40010583-09b1-4c28-9f7f-799a61aa1400	stale_business_metrics	warning	{"count": 1, "businesses": [{"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}]}	2026-06-22 04:56:17.557841+00
ab16276e-d40c-4988-95a5-778adce7323e	clients_at_risk_snapshot	info	{"count": 2, "clients": [{"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["ירידה בלידים בעסק 'חוות בניה' (29 מול 35 בחודש קודם)"]}, {"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}]}	2026-06-22 04:56:17.557841+00
fd5eec70-3765-4736-99f6-226800ec8a0d	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-06-22 04:56:17.557841+00
f8af22cd-dd0c-44b4-af84-a96a40340bc2	stale_business_metrics	warning	{"count": 1, "businesses": [{"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}]}	2026-06-22 07:30:02.699738+00
e1d80ee0-e8b1-4c9d-a923-c7fa9f4742cc	clients_at_risk_snapshot	info	{"count": 2, "clients": [{"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["ירידה בלידים בעסק 'חוות בניה' (29 מול 35 בחודש קודם)"]}]}	2026-06-22 07:30:02.699738+00
3a939fd6-5f29-48c7-ab76-ea15d0ee2d52	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-06-22 07:30:02.699738+00
44c5fbce-9f2d-4f3e-a3e2-f0984d1dd3b7	stale_business_metrics	warning	{"count": 1, "businesses": [{"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}]}	2026-06-23 07:30:02.516124+00
b73ba713-b976-49be-a097-2d898739deda	clients_at_risk_snapshot	info	{"count": 2, "clients": [{"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["ירידה בלידים בעסק 'חוות בניה' (30 מול 35 בחודש קודם)"]}]}	2026-06-23 07:30:02.516124+00
b6a2bc4d-d566-4223-98af-50b7b02f83be	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-06-23 07:30:02.516124+00
ff0a3bb7-1977-4c85-a909-df067cc3074e	stale_business_metrics	warning	{"count": 1, "businesses": [{"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}]}	2026-06-24 07:30:01.942247+00
90d9ba68-0ffa-4a15-9b0b-ec981ecdbd07	clients_at_risk_snapshot	info	{"count": 2, "clients": [{"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["ירידה בלידים בעסק 'חוות בניה' (31 מול 35 בחודש קודם)"]}]}	2026-06-24 07:30:01.942247+00
efaf2ae7-87e6-45bc-bc0e-f382de984cf5	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-06-24 07:30:01.942247+00
aad1390d-02b2-4f9b-87c4-b2dae1a53003	stale_business_metrics	warning	{"count": 1, "businesses": [{"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}]}	2026-06-25 07:30:01.810107+00
00a34553-5093-46c9-94d7-a64f6b8811df	clients_at_risk_snapshot	info	{"count": 2, "clients": [{"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["ירידה בלידים בעסק 'חוות בניה' (32 מול 35 בחודש קודם)"]}]}	2026-06-25 07:30:01.810107+00
1dda0ede-a10a-4f1a-89af-5c4ac02cb6fc	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-06-25 07:30:01.810107+00
9f78cea7-82d4-4750-be8a-b29685ca0e03	stale_business_metrics	warning	{"count": 1, "businesses": [{"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}]}	2026-06-26 07:30:01.298845+00
60964a28-aa23-44af-abbc-33b79daf32cf	clients_at_risk_snapshot	info	{"count": 1, "clients": [{"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}]}	2026-06-26 07:30:01.298845+00
9f7ac931-8e02-4c4d-90ad-d9134642a760	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-06-26 07:30:01.298845+00
8da32d0c-1bc9-44c6-aae2-039c42000add	stale_business_metrics	warning	{"count": 1, "businesses": [{"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}]}	2026-06-27 07:30:01.634484+00
1a2d0221-7906-4d8d-87c9-0b0102308b87	clients_at_risk_snapshot	info	{"count": 1, "clients": [{"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}]}	2026-06-27 07:30:01.634484+00
9ca1db72-f076-4308-b619-4df085fa5728	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-06-27 07:30:01.634484+00
6fa200cc-8162-4c16-8b77-18f501d3976e	stale_business_metrics	warning	{"count": 1, "businesses": [{"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}]}	2026-06-28 07:30:01.728357+00
05af0b6d-bdb2-42b3-a18f-46fb0a9bde5f	clients_at_risk_snapshot	info	{"count": 1, "clients": [{"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}]}	2026-06-28 07:30:01.728357+00
c1821396-d127-495a-8ccf-5b27267e30be	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-06-28 07:30:01.728357+00
a2413a7b-1871-47de-8d16-67898e286a1e	stale_business_metrics	warning	{"count": 1, "businesses": [{"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}]}	2026-06-29 07:30:01.711138+00
ec3b94f5-1449-4c76-8268-bebb9e9f4e2d	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-07-11 07:30:02.147425+00
b8469a01-da37-4b97-8fd1-98a6a1adb27e	clients_at_risk_snapshot	info	{"count": 1, "clients": [{"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}]}	2026-06-29 07:30:01.711138+00
b5038ee2-149f-4c91-b323-6fab12a15a93	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-06-29 07:30:01.711138+00
c91811b6-3593-4680-a4d1-f845fe1fef65	stale_business_metrics	warning	{"count": 1, "businesses": [{"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}]}	2026-06-30 07:30:02.178812+00
b550866c-ef40-407c-bd27-12a6c917b2bb	clients_at_risk_snapshot	info	{"count": 1, "clients": [{"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}]}	2026-06-30 07:30:02.178812+00
93e9cff9-b3c9-4291-b19c-6c0add99363e	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-06-30 07:30:02.178812+00
ece7dae8-4300-4bee-8e7a-e24ff538760e	stale_business_metrics	warning	{"count": 1, "businesses": [{"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}]}	2026-07-01 07:30:02.328133+00
f5e95b53-4463-41c5-b123-84f1bca278f9	clients_at_risk_snapshot	info	{"count": 2, "clients": [{"id": "8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b", "name": "מרכז גלאי בע״מ", "health_reasons": ["ירידה בלידים בעסק 'מרכז גלאי בע״מ' (1 מול 104 בחודש קודם)"]}, {"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}]}	2026-07-01 07:30:02.328133+00
12af202f-ae9f-4f36-b799-11e3c4886ef5	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-07-01 07:30:02.328133+00
6690f95a-6c0f-4f95-a2bf-c5778a279d77	stale_business_metrics	warning	{"count": 1, "businesses": [{"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}]}	2026-07-02 07:30:03.585291+00
b7dc60a2-2315-4c7d-9f9b-0b7ce9abba28	clients_at_risk_snapshot	info	{"count": 3, "clients": [{"id": "8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b", "name": "מרכז גלאי בע״מ", "health_reasons": ["ירידה בלידים בעסק 'מרכז גלאי בע״מ' (5 מול 103 בחודש קודם)"]}, {"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["ירידה בלידים בעסק 'חוות בניה' (4 מול 42 בחודש קודם)"]}]}	2026-07-02 07:30:03.585291+00
09018562-f644-4241-9acc-73a0c31f016a	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-07-02 07:30:03.585291+00
6c85fe38-025d-4eb3-81f0-e24a00e7415a	stale_business_metrics	warning	{"count": 1, "businesses": [{"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}]}	2026-07-03 07:30:01.864431+00
aabaaef6-8cbc-4646-85cd-5a06b40b1867	clients_at_risk_snapshot	info	{"count": 3, "clients": [{"id": "8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b", "name": "מרכז גלאי בע״מ", "health_reasons": ["ירידה בלידים בעסק 'מרכז גלאי בע״מ' (11 מול 103 בחודש קודם)"]}, {"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["ירידה בלידים בעסק 'חוות בניה' (6 מול 42 בחודש קודם)"]}]}	2026-07-03 07:30:01.864431+00
d8d929c8-bc77-48ba-83fe-c77490750365	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-07-03 07:30:01.864431+00
4ad9c370-35ae-48e1-94ff-caa771648113	stale_business_metrics	warning	{"count": 1, "businesses": [{"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}]}	2026-07-04 07:30:01.784519+00
70b09747-40ca-48b5-8a20-6754bdf0618c	clients_at_risk_snapshot	info	{"count": 3, "clients": [{"id": "8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b", "name": "מרכז גלאי בע״מ", "health_reasons": ["ירידה בלידים בעסק 'מרכז גלאי בע״מ' (15 מול 103 בחודש קודם)"]}, {"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["ירידה בלידים בעסק 'חוות בניה' (7 מול 42 בחודש קודם)"]}]}	2026-07-04 07:30:01.784519+00
8255179f-576a-4491-b127-40093aad86e1	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-07-04 07:30:01.784519+00
dba48f5b-3264-4d9c-b4db-03d529629485	stale_business_metrics	warning	{"count": 2, "businesses": [{"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}, {"business_id": "45942137-54f7-4fd1-8227-472c92c86933", "client_name": "טל והבה", "business_name": "אקסטרים אילת", "last_metric_at": "2026-05-31T07:00:10.272285+00:00"}]}	2026-07-05 07:30:01.948466+00
4a604113-47e0-4dd5-bee5-efe74dd842b3	clients_at_risk_snapshot	info	{"count": 3, "clients": [{"id": "8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b", "name": "מרכז גלאי בע״מ", "health_reasons": ["ירידה בלידים בעסק 'מרכז גלאי בע״מ' (16 מול 103 בחודש קודם)"]}, {"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["ירידה בלידים בעסק 'חוות בניה' (8 מול 42 בחודש קודם)"]}]}	2026-07-05 07:30:01.948466+00
f5419e69-e97f-414f-88b8-1ffe1554baff	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-07-05 07:30:01.948466+00
aa3e2a25-d91a-4d84-8416-43c888ae8e64	stale_business_metrics	warning	{"count": 2, "businesses": [{"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}, {"business_id": "45942137-54f7-4fd1-8227-472c92c86933", "client_name": "טל והבה", "business_name": "אקסטרים אילת", "last_metric_at": "2026-05-31T07:00:10.272285+00:00"}]}	2026-07-06 07:30:01.800456+00
c9dfb90e-0fcd-466a-a9a6-7f6053a05152	clients_at_risk_snapshot	info	{"count": 3, "clients": [{"id": "8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b", "name": "מרכז גלאי בע״מ", "health_reasons": ["ירידה בלידים בעסק 'מרכז גלאי בע״מ' (87 מול 103 בחודש קודם)"]}, {"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["ירידה בלידים בעסק 'חוות בניה' (8 מול 42 בחודש קודם)"]}]}	2026-07-06 07:30:01.800456+00
9a3727a7-9e53-4076-988b-c228cfe9c802	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-07-06 07:30:01.800456+00
7fec7c89-d4cd-4f8d-9532-add8eed7c895	stale_business_metrics	warning	{"count": 3, "businesses": [{"business_id": "9e64b292-5106-4613-825a-76363729547a", "client_name": "רד ברי", "business_name": "רד ברי", "last_metric_at": "2026-06-01T09:00:09.903559+00:00"}, {"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}, {"business_id": "45942137-54f7-4fd1-8227-472c92c86933", "client_name": "טל והבה", "business_name": "אקסטרים אילת", "last_metric_at": "2026-05-31T07:00:10.272285+00:00"}]}	2026-07-07 07:30:02.225887+00
9eb30edb-ab84-4a1a-bd10-b567b4dc66a5	clients_at_risk_snapshot	info	{"count": 3, "clients": [{"id": "8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b", "name": "מרכז גלאי בע״מ", "health_reasons": ["ירידה בלידים בעסק 'מרכז גלאי בע״מ' (94 מול 103 בחודש קודם)"]}, {"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["ירידה בלידים בעסק 'חוות בניה' (9 מול 42 בחודש קודם)"]}]}	2026-07-07 07:30:02.225887+00
a35e90f4-a1a7-4277-99ce-a2f9bc272bef	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-07-07 07:30:02.225887+00
6e11e37a-2ef6-4911-a818-b12bf35a4877	stale_business_metrics	warning	{"count": 3, "businesses": [{"business_id": "9e64b292-5106-4613-825a-76363729547a", "client_name": "רד ברי", "business_name": "רד ברי", "last_metric_at": "2026-06-01T09:00:09.903559+00:00"}, {"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}, {"business_id": "45942137-54f7-4fd1-8227-472c92c86933", "client_name": "טל והבה", "business_name": "אקסטרים אילת", "last_metric_at": "2026-05-31T07:00:10.272285+00:00"}]}	2026-07-08 07:30:01.806436+00
3c5fae63-457b-42e1-aba9-d07efa81f900	clients_at_risk_snapshot	info	{"count": 3, "clients": [{"id": "8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b", "name": "מרכז גלאי בע״מ", "health_reasons": ["ירידה בלידים בעסק 'מרכז גלאי בע״מ' (97 מול 103 בחודש קודם)"]}, {"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["ירידה בלידים בעסק 'חוות בניה' (10 מול 42 בחודש קודם)"]}]}	2026-07-08 07:30:01.806436+00
aeb9986a-ea90-4ed3-8731-2f5a8e3fc8e4	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-07-08 07:30:01.806436+00
513e687b-e7f6-4e73-9ccd-58b0fce3eaf7	stale_business_metrics	warning	{"count": 3, "businesses": [{"business_id": "9e64b292-5106-4613-825a-76363729547a", "client_name": "רד ברי", "business_name": "רד ברי", "last_metric_at": "2026-06-01T09:00:09.903559+00:00"}, {"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}, {"business_id": "45942137-54f7-4fd1-8227-472c92c86933", "client_name": "טל והבה", "business_name": "אקסטרים אילת", "last_metric_at": "2026-05-31T07:00:10.272285+00:00"}]}	2026-07-09 07:30:01.789511+00
7bf6d235-6417-4217-8170-1b43462df015	clients_at_risk_snapshot	info	{"count": 2, "clients": [{"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["ירידה בלידים בעסק 'חוות בניה' (10 מול 42 בחודש קודם)"]}]}	2026-07-09 07:30:01.789511+00
5175583f-43b2-4c97-8cb5-be6f9008f0bc	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-07-09 07:30:01.789511+00
8e0dcd72-a803-4e95-ba8f-f5c98833690f	stale_business_metrics	warning	{"count": 3, "businesses": [{"business_id": "9e64b292-5106-4613-825a-76363729547a", "client_name": "רד ברי", "business_name": "רד ברי", "last_metric_at": "2026-06-01T09:00:09.903559+00:00"}, {"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}, {"business_id": "45942137-54f7-4fd1-8227-472c92c86933", "client_name": "טל והבה", "business_name": "אקסטרים אילת", "last_metric_at": "2026-05-31T07:00:10.272285+00:00"}]}	2026-07-10 07:30:01.807741+00
cc077bf0-c908-4426-85a0-923d8e65b79e	clients_at_risk_snapshot	info	{"count": 2, "clients": [{"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["ירידה בלידים בעסק 'חוות בניה' (10 מול 42 בחודש קודם)"]}]}	2026-07-10 07:30:01.807741+00
a63c2a4d-fa0c-452e-a3d3-9615c2705e08	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-07-10 07:30:01.807741+00
881fae59-f97b-44f8-b557-8ecc1752c71e	stale_business_metrics	warning	{"count": 3, "businesses": [{"business_id": "9e64b292-5106-4613-825a-76363729547a", "client_name": "רד ברי", "business_name": "רד ברי", "last_metric_at": "2026-06-01T09:00:09.903559+00:00"}, {"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}, {"business_id": "45942137-54f7-4fd1-8227-472c92c86933", "client_name": "טל והבה", "business_name": "אקסטרים אילת", "last_metric_at": "2026-05-31T07:00:10.272285+00:00"}]}	2026-07-11 07:30:02.147425+00
fb6fb058-4b37-4b87-a1cb-37e503020510	clients_at_risk_snapshot	info	{"count": 2, "clients": [{"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["ירידה בלידים בעסק 'חוות בניה' (13 מול 42 בחודש קודם)"]}]}	2026-07-11 07:30:02.147425+00
37a16d7d-8dea-4de3-9289-1c87e8f4e96c	stale_business_metrics	warning	{"count": 3, "businesses": [{"business_id": "9e64b292-5106-4613-825a-76363729547a", "client_name": "רד ברי", "business_name": "רד ברי", "last_metric_at": "2026-06-01T09:00:09.903559+00:00"}, {"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}, {"business_id": "45942137-54f7-4fd1-8227-472c92c86933", "client_name": "טל והבה", "business_name": "אקסטרים אילת", "last_metric_at": "2026-05-31T07:00:10.272285+00:00"}]}	2026-07-12 07:30:02.058476+00
db2a3b6c-e5d3-4ed9-b67e-cb9236778727	clients_at_risk_snapshot	info	{"count": 2, "clients": [{"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["ירידה בלידים בעסק 'חוות בניה' (15 מול 42 בחודש קודם)"]}]}	2026-07-12 07:30:02.058476+00
46220d29-eb17-4bb6-b572-84184a2eae9e	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-07-12 07:30:02.058476+00
213b4da7-659a-416a-81a9-7185a4e5de62	stale_business_metrics	warning	{"count": 3, "businesses": [{"business_id": "9e64b292-5106-4613-825a-76363729547a", "client_name": "רד ברי", "business_name": "רד ברי", "last_metric_at": "2026-06-01T09:00:09.903559+00:00"}, {"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}, {"business_id": "45942137-54f7-4fd1-8227-472c92c86933", "client_name": "טל והבה", "business_name": "אקסטרים אילת", "last_metric_at": "2026-05-31T07:00:10.272285+00:00"}]}	2026-07-13 07:30:02.697197+00
185be62e-c452-48f3-8c4b-e80d9f121c6c	clients_at_risk_snapshot	info	{"count": 2, "clients": [{"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["ירידה בלידים בעסק 'חוות בניה' (18 מול 42 בחודש קודם)"]}]}	2026-07-13 07:30:02.697197+00
7c3b93f2-b8be-4973-b945-0b969914fbd4	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-07-13 07:30:02.697197+00
2b857691-11c7-4102-8875-6e1d889f1d6b	stale_business_metrics	warning	{"count": 3, "businesses": [{"business_id": "9e64b292-5106-4613-825a-76363729547a", "client_name": "רד ברי", "business_name": "רד ברי", "last_metric_at": "2026-06-01T09:00:09.903559+00:00"}, {"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}, {"business_id": "45942137-54f7-4fd1-8227-472c92c86933", "client_name": "טל והבה", "business_name": "אקסטרים אילת", "last_metric_at": "2026-05-31T07:00:10.272285+00:00"}]}	2026-07-14 07:30:02.038099+00
0604d031-258a-434b-8713-764277471007	clients_at_risk_snapshot	info	{"count": 2, "clients": [{"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["ירידה בלידים בעסק 'חוות בניה' (19 מול 42 בחודש קודם)"]}]}	2026-07-14 07:30:02.038099+00
4cce8c74-3eac-411a-a1e6-4650f4401e03	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-07-14 07:30:02.038099+00
dbd78e8f-0c38-4bd1-ba80-fafa2fb30332	stale_business_metrics	warning	{"count": 3, "businesses": [{"business_id": "9e64b292-5106-4613-825a-76363729547a", "client_name": "רד ברי", "business_name": "רד ברי", "last_metric_at": "2026-06-01T09:00:09.903559+00:00"}, {"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}, {"business_id": "45942137-54f7-4fd1-8227-472c92c86933", "client_name": "טל והבה", "business_name": "אקסטרים אילת", "last_metric_at": "2026-05-31T07:00:10.272285+00:00"}]}	2026-07-15 07:30:01.422047+00
c2f1e056-cd9d-4ad9-b69c-f40edf822eae	clients_at_risk_snapshot	info	{"count": 2, "clients": [{"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["ירידה בלידים בעסק 'חוות בניה' (19 מול 42 בחודש קודם)"]}]}	2026-07-15 07:30:01.422047+00
9e6e0866-6871-42b1-9974-a9ecaad97ff7	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-07-15 07:30:01.422047+00
fd1bdea3-36e8-4e4b-bb33-efb40e1e5229	stale_business_metrics	warning	{"count": 3, "businesses": [{"business_id": "9e64b292-5106-4613-825a-76363729547a", "client_name": "רד ברי", "business_name": "רד ברי", "last_metric_at": "2026-06-01T09:00:09.903559+00:00"}, {"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}, {"business_id": "45942137-54f7-4fd1-8227-472c92c86933", "client_name": "טל והבה", "business_name": "אקסטרים אילת", "last_metric_at": "2026-05-31T07:00:10.272285+00:00"}]}	2026-07-16 07:30:01.676105+00
6a83eb20-03fb-4cbf-ae3c-f79ca73f7511	clients_at_risk_snapshot	info	{"count": 2, "clients": [{"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["ירידה בלידים בעסק 'חוות בניה' (19 מול 42 בחודש קודם)"]}]}	2026-07-16 07:30:01.676105+00
3055b77a-9cf4-4d62-903c-08a590e30180	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-07-16 07:30:01.676105+00
d828efa8-3449-4975-b825-ab8155813482	stale_business_metrics	warning	{"count": 3, "businesses": [{"business_id": "9e64b292-5106-4613-825a-76363729547a", "client_name": "רד ברי", "business_name": "רד ברי", "last_metric_at": "2026-06-01T09:00:09.903559+00:00"}, {"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}, {"business_id": "45942137-54f7-4fd1-8227-472c92c86933", "client_name": "טל והבה", "business_name": "אקסטרים אילת", "last_metric_at": "2026-05-31T07:00:10.272285+00:00"}]}	2026-07-17 07:30:01.862232+00
ca4661a6-2393-407a-a582-a88996b20a95	clients_at_risk_snapshot	info	{"count": 2, "clients": [{"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["ירידה בלידים בעסק 'חוות בניה' (19 מול 42 בחודש קודם)"]}]}	2026-07-17 07:30:01.862232+00
530a912a-32ca-4f6a-bb7b-1179216bf9b2	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-07-17 07:30:01.862232+00
8eb01613-afd6-41b1-9b5b-f2c6ab89447b	stale_business_metrics	warning	{"count": 3, "businesses": [{"business_id": "9e64b292-5106-4613-825a-76363729547a", "client_name": "רד ברי", "business_name": "רד ברי", "last_metric_at": "2026-06-01T09:00:09.903559+00:00"}, {"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}, {"business_id": "45942137-54f7-4fd1-8227-472c92c86933", "client_name": "טל והבה", "business_name": "אקסטרים אילת", "last_metric_at": "2026-05-31T07:00:10.272285+00:00"}]}	2026-07-18 07:30:02.087701+00
0543a0eb-33a2-43ad-adf6-e3856673a7f5	clients_at_risk_snapshot	info	{"count": 2, "clients": [{"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["ירידה בלידים בעסק 'חוות בניה' (19 מול 42 בחודש קודם)"]}]}	2026-07-18 07:30:02.087701+00
39c3c56e-ff4c-4883-9c76-a476e1bc11d1	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-07-18 07:30:02.087701+00
91dcab60-be3b-409d-9a09-cb1fae4b5112	stale_business_metrics	warning	{"count": 3, "businesses": [{"business_id": "9e64b292-5106-4613-825a-76363729547a", "client_name": "רד ברי", "business_name": "רד ברי", "last_metric_at": "2026-06-01T09:00:09.903559+00:00"}, {"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}, {"business_id": "45942137-54f7-4fd1-8227-472c92c86933", "client_name": "טל והבה", "business_name": "אקסטרים אילת", "last_metric_at": "2026-05-31T07:00:10.272285+00:00"}]}	2026-07-19 07:30:01.579136+00
d6d91e4d-6f12-44bc-84b2-1995e380e823	clients_at_risk_snapshot	info	{"count": 2, "clients": [{"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["ירידה בלידים בעסק 'חוות בניה' (33 מול 42 בחודש קודם)"]}]}	2026-07-19 07:30:01.579136+00
18e5ed18-d010-4512-9deb-4602ce8f0bc8	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-07-19 07:30:01.579136+00
62d1d9da-bd8c-4938-a9d6-f1abe7aa265a	stale_business_metrics	warning	{"count": 3, "businesses": [{"business_id": "9e64b292-5106-4613-825a-76363729547a", "client_name": "רד ברי", "business_name": "רד ברי", "last_metric_at": "2026-06-01T09:00:09.903559+00:00"}, {"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}, {"business_id": "45942137-54f7-4fd1-8227-472c92c86933", "client_name": "טל והבה", "business_name": "אקסטרים אילת", "last_metric_at": "2026-05-31T07:00:10.272285+00:00"}]}	2026-07-20 07:30:02.383874+00
834ba511-8b8b-4719-ba3e-c47d9d9bd8a9	clients_at_risk_snapshot	info	{"count": 2, "clients": [{"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["ירידה בלידים בעסק 'חוות בניה' (34 מול 42 בחודש קודם)"]}]}	2026-07-20 07:30:02.383874+00
b1b98ed5-d15c-48da-be04-96ea2577e4a3	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-07-20 07:30:02.383874+00
5c36c0ed-e7e5-4bb1-ad8d-8e17bfbcd000	stale_business_metrics	warning	{"count": 3, "businesses": [{"business_id": "9e64b292-5106-4613-825a-76363729547a", "client_name": "רד ברי", "business_name": "רד ברי", "last_metric_at": "2026-06-01T09:00:09.903559+00:00"}, {"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}, {"business_id": "45942137-54f7-4fd1-8227-472c92c86933", "client_name": "טל והבה", "business_name": "אקסטרים אילת", "last_metric_at": "2026-05-31T07:00:10.272285+00:00"}]}	2026-07-21 07:30:02.0767+00
0711ceda-018b-433a-b54b-501ea05d6202	clients_at_risk_snapshot	info	{"count": 2, "clients": [{"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["ירידה בלידים בעסק 'חוות בניה' (37 מול 42 בחודש קודם)"]}]}	2026-07-21 07:30:02.0767+00
64161f4e-3224-42e1-b0ed-1bfa751a0dbb	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-07-21 07:30:02.0767+00
b79bb50f-6526-414b-896e-d275a98adbe2	stale_business_metrics	warning	{"count": 3, "businesses": [{"business_id": "9e64b292-5106-4613-825a-76363729547a", "client_name": "רד ברי", "business_name": "רד ברי", "last_metric_at": "2026-06-01T09:00:09.903559+00:00"}, {"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}, {"business_id": "45942137-54f7-4fd1-8227-472c92c86933", "client_name": "טל והבה", "business_name": "אקסטרים אילת", "last_metric_at": "2026-05-31T07:00:10.272285+00:00"}]}	2026-07-22 07:30:01.864257+00
18eb6f86-6086-40f2-9a43-ef15a5a0f774	clients_at_risk_snapshot	info	{"count": 2, "clients": [{"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["ירידה בלידים בעסק 'חוות בניה' (40 מול 42 בחודש קודם)", "אין כניסה לפורטל מעל 30 יום"]}]}	2026-07-22 07:30:01.864257+00
1ffb89a7-108e-4e16-b9f6-20ad55ae5e70	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-07-22 07:30:01.864257+00
36661ab3-f132-4c79-8cdb-b742b55b21f2	clients_at_risk_snapshot	info	{"count": 2, "clients": [{"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["אין כניסה לפורטל מעל 30 יום"]}]}	2026-07-28 07:30:02.110087+00
9d2858cd-7807-45f1-97fe-02d352760298	stale_business_metrics	warning	{"count": 3, "businesses": [{"business_id": "9e64b292-5106-4613-825a-76363729547a", "client_name": "רד ברי", "business_name": "רד ברי", "last_metric_at": "2026-06-01T09:00:09.903559+00:00"}, {"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}, {"business_id": "45942137-54f7-4fd1-8227-472c92c86933", "client_name": "טל והבה", "business_name": "אקסטרים אילת", "last_metric_at": "2026-05-31T07:00:10.272285+00:00"}]}	2026-07-23 07:30:02.320375+00
c8555d86-a820-4278-8bc1-c38fe4ab553a	clients_at_risk_snapshot	info	{"count": 2, "clients": [{"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["אין כניסה לפורטל מעל 30 יום"]}]}	2026-07-23 07:30:02.320375+00
e3c29435-09a7-41a7-bab1-49101aafa6be	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-07-23 07:30:02.320375+00
a6c90e16-1f11-47c3-9825-75aa416882d4	stale_business_metrics	warning	{"count": 3, "businesses": [{"business_id": "9e64b292-5106-4613-825a-76363729547a", "client_name": "רד ברי", "business_name": "רד ברי", "last_metric_at": "2026-06-01T09:00:09.903559+00:00"}, {"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}, {"business_id": "45942137-54f7-4fd1-8227-472c92c86933", "client_name": "טל והבה", "business_name": "אקסטרים אילת", "last_metric_at": "2026-05-31T07:00:10.272285+00:00"}]}	2026-07-24 07:30:01.795525+00
669b3ac7-68f7-416b-b928-fdbb1ae9a9a2	clients_at_risk_snapshot	info	{"count": 2, "clients": [{"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["אין כניסה לפורטל מעל 30 יום"]}]}	2026-07-24 07:30:01.795525+00
9404fb45-0c9f-46d5-aa3d-4c8b7d3af8b8	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-07-24 07:30:01.795525+00
08a9fd37-d9c7-4d45-87ca-e99ffb3700dd	stale_business_metrics	warning	{"count": 3, "businesses": [{"business_id": "9e64b292-5106-4613-825a-76363729547a", "client_name": "רד ברי", "business_name": "רד ברי", "last_metric_at": "2026-06-01T09:00:09.903559+00:00"}, {"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}, {"business_id": "45942137-54f7-4fd1-8227-472c92c86933", "client_name": "טל והבה", "business_name": "אקסטרים אילת", "last_metric_at": "2026-05-31T07:00:10.272285+00:00"}]}	2026-07-25 07:30:02.006501+00
630e9cfb-b653-42dd-b167-891c133ae7da	clients_at_risk_snapshot	info	{"count": 4, "clients": [{"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["אין כניסה לפורטל מעל 30 יום"]}, {"id": "b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd", "name": "לירן ענבר", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "8f21c002-2efd-4224-ac09-47432a41923d", "name": "יג פרוייקטים", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}]}	2026-07-25 07:30:02.006501+00
f0e13d63-9049-4bff-ab83-841f945070f7	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-07-25 07:30:02.006501+00
25d30b1f-b80f-4f93-982c-12575884728f	stale_business_metrics	warning	{"count": 3, "businesses": [{"business_id": "9e64b292-5106-4613-825a-76363729547a", "client_name": "רד ברי", "business_name": "רד ברי", "last_metric_at": "2026-06-01T09:00:09.903559+00:00"}, {"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}, {"business_id": "45942137-54f7-4fd1-8227-472c92c86933", "client_name": "טל והבה", "business_name": "אקסטרים אילת", "last_metric_at": "2026-05-31T07:00:10.272285+00:00"}]}	2026-07-26 07:30:01.892297+00
ad260a7f-e42d-4f5b-aa1e-11fd882c59f5	clients_at_risk_snapshot	info	{"count": 2, "clients": [{"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["אין כניסה לפורטל מעל 30 יום"]}]}	2026-07-26 07:30:01.892297+00
57f7ae28-38ae-4429-b6f5-74700cd0cf8f	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-07-26 07:30:01.892297+00
db67c3e4-f952-469e-b4dd-9d7268efea0f	stale_business_metrics	warning	{"count": 3, "businesses": [{"business_id": "9e64b292-5106-4613-825a-76363729547a", "client_name": "רד ברי", "business_name": "רד ברי", "last_metric_at": "2026-06-01T09:00:09.903559+00:00"}, {"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}, {"business_id": "45942137-54f7-4fd1-8227-472c92c86933", "client_name": "טל והבה", "business_name": "אקסטרים אילת", "last_metric_at": "2026-05-31T07:00:10.272285+00:00"}]}	2026-07-27 07:30:02.199609+00
5bdd0983-cd04-416d-9122-6c2a298b95f5	clients_at_risk_snapshot	info	{"count": 2, "clients": [{"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["אין כניסה לפורטל מעל 30 יום"]}]}	2026-07-27 07:30:02.199609+00
8c24d3b6-8f4f-4a53-85ff-8850c9224a28	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-07-27 07:30:02.199609+00
d6fe3197-8729-46fa-8a5d-e39ff0e15d3d	stale_business_metrics	warning	{"count": 3, "businesses": [{"business_id": "9e64b292-5106-4613-825a-76363729547a", "client_name": "רד ברי", "business_name": "רד ברי", "last_metric_at": "2026-06-01T09:00:09.903559+00:00"}, {"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}, {"business_id": "45942137-54f7-4fd1-8227-472c92c86933", "client_name": "טל והבה", "business_name": "אקסטרים אילת", "last_metric_at": "2026-05-31T07:00:10.272285+00:00"}]}	2026-07-28 07:30:02.110087+00
8090ac9c-71be-4cff-8089-ff5f3db5b29e	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-07-28 07:30:02.110087+00
614efd7a-0bed-4133-b148-2b88b3bb6554	stale_business_metrics	warning	{"count": 3, "businesses": [{"business_id": "9e64b292-5106-4613-825a-76363729547a", "client_name": "רד ברי", "business_name": "רד ברי", "last_metric_at": "2026-06-01T09:00:09.903559+00:00"}, {"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}, {"business_id": "45942137-54f7-4fd1-8227-472c92c86933", "client_name": "טל והבה", "business_name": "אקסטרים אילת", "last_metric_at": "2026-05-31T07:00:10.272285+00:00"}]}	2026-07-29 07:30:02.19896+00
963177e0-3654-4d11-adcc-c6103005bfc4	clients_at_risk_snapshot	info	{"count": 3, "clients": [{"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["אין כניסה לפורטל מעל 30 יום"]}, {"id": "b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd", "name": "לירן ענבר", "health_reasons": ["אין כניסה לפורטל מעל 30 יום"]}]}	2026-07-29 07:30:02.19896+00
ffaa1d4c-c0d6-49ef-a9ad-fa655ca9cbad	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-07-29 07:30:02.19896+00
e00eb3fb-8715-4276-8182-7361d5ddc543	stale_business_metrics	warning	{"count": 3, "businesses": [{"business_id": "9e64b292-5106-4613-825a-76363729547a", "client_name": "רד ברי", "business_name": "רד ברי", "last_metric_at": "2026-06-01T09:00:09.903559+00:00"}, {"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}, {"business_id": "45942137-54f7-4fd1-8227-472c92c86933", "client_name": "טל והבה", "business_name": "אקסטרים אילת", "last_metric_at": "2026-05-31T07:00:10.272285+00:00"}]}	2026-07-30 07:30:02.377654+00
37d1f5c9-5e86-4cc7-9ef5-7141e6b22a7a	clients_at_risk_snapshot	info	{"count": 3, "clients": [{"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["אין כניסה לפורטל מעל 30 יום"]}, {"id": "b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd", "name": "לירן ענבר", "health_reasons": ["אין כניסה לפורטל מעל 30 יום"]}]}	2026-07-30 07:30:02.377654+00
7d03f1d0-ec7f-4619-8b58-9edd4fc20df8	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-07-30 07:30:02.377654+00
49d00ca5-2c56-4f0b-8e81-7728173abd00	stale_business_metrics	warning	{"count": 3, "businesses": [{"business_id": "9e64b292-5106-4613-825a-76363729547a", "client_name": "רד ברי", "business_name": "רד ברי", "last_metric_at": "2026-06-01T09:00:09.903559+00:00"}, {"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}, {"business_id": "45942137-54f7-4fd1-8227-472c92c86933", "client_name": "טל והבה", "business_name": "אקסטרים אילת", "last_metric_at": "2026-05-31T07:00:10.272285+00:00"}]}	2026-07-31 07:30:02.115985+00
53e0aa2f-dafa-4b27-82fc-d850c495a08b	clients_at_risk_snapshot	info	{"count": 3, "clients": [{"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["אין כניסה לפורטל מעל 30 יום"]}, {"id": "b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd", "name": "לירן ענבר", "health_reasons": ["אין כניסה לפורטל מעל 30 יום"]}]}	2026-07-31 07:30:02.115985+00
37814999-326f-4d3d-a5d2-25ee92ac77ee	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-07-31 07:30:02.115985+00
5a3c7c79-8f0f-476b-85c1-c2ec1023684c	stale_business_metrics	warning	{"count": 3, "businesses": [{"business_id": "9e64b292-5106-4613-825a-76363729547a", "client_name": "רד ברי", "business_name": "רד ברי", "last_metric_at": "2026-06-01T09:00:09.903559+00:00"}, {"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}, {"business_id": "45942137-54f7-4fd1-8227-472c92c86933", "client_name": "טל והבה", "business_name": "אקסטרים אילת", "last_metric_at": "2026-05-31T07:00:10.272285+00:00"}]}	2026-08-01 07:30:04.19675+00
02fc8eda-b429-43f3-8375-0deaba2501fb	clients_at_risk_snapshot	info	{"count": 3, "clients": [{"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["אין כניסה לפורטל מעל 30 יום"]}, {"id": "b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd", "name": "לירן ענבר", "health_reasons": ["אין כניסה לפורטל מעל 30 יום"]}]}	2026-08-01 07:30:04.19675+00
3470ab0b-6e5f-4c32-a410-8ab58dbced82	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-08-01 07:30:04.19675+00
d5602f06-b432-492f-8e3c-ae59812e5e76	stale_business_metrics	warning	{"count": 3, "businesses": [{"business_id": "9e64b292-5106-4613-825a-76363729547a", "client_name": "רד ברי", "business_name": "רד ברי", "last_metric_at": "2026-06-01T09:00:09.903559+00:00"}, {"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}, {"business_id": "45942137-54f7-4fd1-8227-472c92c86933", "client_name": "טל והבה", "business_name": "אקסטרים אילת", "last_metric_at": "2026-05-31T07:00:10.272285+00:00"}]}	2026-08-02 07:30:02.266595+00
0cadffe9-36ca-44b6-b9d9-8498aa2bb23c	clients_at_risk_snapshot	info	{"count": 4, "clients": [{"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["אין כניסה לפורטל מעל 30 יום"]}, {"id": "b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd", "name": "לירן ענבר", "health_reasons": ["אין כניסה לפורטל מעל 30 יום"]}, {"id": "8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b", "name": "מרכז גלאי בע״מ", "health_reasons": ["ירידה בלידים בעסק 'מרכז גלאי בע״מ' (1 מול 197 בחודש קודם)"]}]}	2026-08-02 07:30:02.266595+00
e703e75e-82a2-44e4-aa75-6e3a9c564754	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-08-02 07:30:02.266595+00
931db019-9e38-4c64-975c-af03d31f7593	stale_business_metrics	warning	{"count": 3, "businesses": [{"business_id": "9e64b292-5106-4613-825a-76363729547a", "client_name": "רד ברי", "business_name": "רד ברי", "last_metric_at": "2026-06-01T09:00:09.903559+00:00"}, {"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}, {"business_id": "45942137-54f7-4fd1-8227-472c92c86933", "client_name": "טל והבה", "business_name": "אקסטרים אילת", "last_metric_at": "2026-05-31T07:00:10.272285+00:00"}]}	2026-08-03 07:30:02.250327+00
40fc2d13-e82c-4fa0-a67f-f7da14f7960f	clients_at_risk_snapshot	info	{"count": 4, "clients": [{"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["אין כניסה לפורטל מעל 30 יום"]}, {"id": "b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd", "name": "לירן ענבר", "health_reasons": ["אין כניסה לפורטל מעל 30 יום"]}, {"id": "8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b", "name": "מרכז גלאי בע״מ", "health_reasons": ["ירידה בלידים בעסק 'מרכז גלאי בע״מ' (125 מול 197 בחודש קודם)"]}]}	2026-08-03 07:30:02.250327+00
0651be1c-912c-493c-9444-f7723b00d8eb	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-08-03 07:30:02.250327+00
7a5d245d-58ab-48b2-9bb5-d8576c228160	stale_business_metrics	warning	{"count": 3, "businesses": [{"business_id": "9e64b292-5106-4613-825a-76363729547a", "client_name": "רד ברי", "business_name": "רד ברי", "last_metric_at": "2026-06-01T09:00:09.903559+00:00"}, {"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}, {"business_id": "45942137-54f7-4fd1-8227-472c92c86933", "client_name": "טל והבה", "business_name": "אקסטרים אילת", "last_metric_at": "2026-05-31T07:00:10.272285+00:00"}]}	2026-08-04 07:30:02.170732+00
cb256857-ce22-4895-bc9c-c4d2901573d3	clients_at_risk_snapshot	info	{"count": 4, "clients": [{"id": "b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd", "name": "לירן ענבר", "health_reasons": ["אין כניסה לפורטל מעל 30 יום"]}, {"id": "8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b", "name": "מרכז גלאי בע״מ", "health_reasons": ["ירידה בלידים בעסק 'מרכז גלאי בע״מ' (126 מול 197 בחודש קודם)"]}, {"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["ירידה בלידים בעסק 'חוות בניה' (1 מול 62 בחודש קודם)", "אין כניסה לפורטל מעל 30 יום"]}]}	2026-08-04 07:30:02.170732+00
ce1eea4d-dd54-42b1-bcf6-184ff06c922b	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-08-04 07:30:02.170732+00
b006618a-cd0b-451c-9327-d8a91b5fceb5	stale_business_metrics	warning	{"count": 3, "businesses": [{"business_id": "9e64b292-5106-4613-825a-76363729547a", "client_name": "רד ברי", "business_name": "רד ברי", "last_metric_at": "2026-06-01T09:00:09.903559+00:00"}, {"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}, {"business_id": "45942137-54f7-4fd1-8227-472c92c86933", "client_name": "טל והבה", "business_name": "אקסטרים אילת", "last_metric_at": "2026-05-31T07:00:10.272285+00:00"}]}	2026-08-05 07:30:02.259665+00
02c1d880-7bb7-4da9-beeb-6ce87900a889	clients_at_risk_snapshot	info	{"count": 4, "clients": [{"id": "b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd", "name": "לירן ענבר", "health_reasons": ["אין כניסה לפורטל מעל 30 יום"]}, {"id": "8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b", "name": "מרכז גלאי בע״מ", "health_reasons": ["ירידה בלידים בעסק 'מרכז גלאי בע״מ' (130 מול 197 בחודש קודם)"]}, {"id": "a248ecae-9af4-4056-8fc9-668ca0377228", "name": "עסק לדוגמא בע״מ", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["ירידה בלידים בעסק 'חוות בניה' (3 מול 62 בחודש קודם)", "אין כניסה לפורטל מעל 30 יום"]}]}	2026-08-05 07:30:02.259665+00
ba6bc390-b4e0-4a3a-9ba1-ce5f0553856e	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-08-05 07:30:02.259665+00
c36e3b6a-797d-455b-8ba6-46ebad8fa56d	stale_business_metrics	warning	{"count": 2, "businesses": [{"business_id": "9e64b292-5106-4613-825a-76363729547a", "client_name": "רד ברי", "business_name": "רד ברי", "last_metric_at": "2026-06-01T09:00:09.903559+00:00"}, {"business_id": "bb7f3cce-abe0-4393-b15b-17ead3c2d6ad", "client_name": "עסק לדוגמא בע״מ", "business_name": "סוכנות דיגיטל - הדגמה", "last_metric_at": "2026-04-15T08:16:29.758609+00:00"}]}	2026-08-06 07:30:03.313682+00
0fa55197-7caa-4baa-8366-d6466ce536ae	clients_at_risk_snapshot	info	{"count": 3, "clients": [{"id": "8f21c002-2efd-4224-ac09-47432a41923d", "name": "יג פרוייקטים", "health_reasons": ["ירידה בלידים בעסק 'יג פרוייקטים' (1 מול 12 בחודש קודם)"]}, {"id": "202abebc-93a9-4fb9-926a-8c7677282aca", "name": "טל והבה", "health_reasons": ["ירידה בלידים בעסק 'חוות בניה' (6 מול 62 בחודש קודם)", "אין כניסה לפורטל מעל 30 יום"]}, {"id": "01a6c28f-4761-4b65-97d8-db27e6752927", "name": "טל מרום", "health_reasons": ["הלקוח עדיין לא נכנס לפורטל"]}]}	2026-08-06 07:30:03.313682+00
e3bb5e5b-2c4b-4e2e-8d42-fd33a0c9ae72	webhook_error_rate_24h	info	{"incoming_errors": 0, "outgoing_errors": 0}	2026-08-06 07:30:03.313682+00
\.


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."projects" ("id", "client_id", "name", "description", "status", "start_date", "end_date", "created_at", "updated_at", "business_id") FROM stdin;
\.


--
-- Data for Name: documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."documents" ("id", "client_id", "project_id", "name", "file_url", "file_type", "uploaded_by", "created_at", "category", "business_id") FROM stdin;
b82c869e-0e17-4b85-b4f6-a69b6bbb0137	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	\N	הסכם שיווק טומנה מרכז גלאי.pdf	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b/contract-1782072777156.pdf	pdf	\N	2026-06-21 20:12:58.954077+00	contract	800b0aec-5843-4002-a897-4d5827bd22b0
f015d8d1-1596-4e13-9236-806f79fe7eaa	8f21c002-2efd-4224-ac09-47432a41923d	\N	הסכם-שיווק-2026-דף-אתר.pdf	8f21c002-2efd-4224-ac09-47432a41923d/contract-1785964715355.pdf	pdf	\N	2026-08-05 21:18:36.460801+00	contract	5fb4e556-2df8-4c32-a693-c7bae38af54b
\.


--
-- Data for Name: freelancer_messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."freelancer_messages" ("id", "freelancer_user_id", "sender_id", "content", "created_at") FROM stdin;
ae233c0f-fbbc-426e-b83f-19aa53f9a638	8e01e849-b66f-4f88-ba71-88dbf23753e4	599209a7-ebe3-4ddf-90ba-a50cca55271c	[משימה: עיצוב פסח] רועי	2026-03-09 13:11:44.932204+00
11d0fb4d-90cb-49a5-bea6-01ac5bc0d946	8e01e849-b66f-4f88-ba71-88dbf23753e4	599209a7-ebe3-4ddf-90ba-a50cca55271c	[משימה: עיצוב פסח] בדיקה	2026-03-09 13:21:19.594585+00
9ec9578f-4774-46e7-8252-9cba3ae1b50f	05fdc66b-c181-456a-8c28-4a00e2dbe240	05fdc66b-c181-456a-8c28-4a00e2dbe240	הי	2026-03-09 15:01:21.422036+00
\.


--
-- Data for Name: freelancer_services; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."freelancer_services" ("id", "freelancer_user_id", "service_name", "price", "currency", "created_at", "updated_at") FROM stdin;
7751d663-2de0-45b4-bfcd-4dfe82897277	8e01e849-b66f-4f88-ba71-88dbf23753e4	פוסט	130	ILS	2026-03-08 22:01:53.180894+00	2026-03-08 22:01:53.180894+00
80277037-c42d-43d8-abc0-eb79cef05e7f	05fdc66b-c181-456a-8c28-4a00e2dbe240	פוסט לסושיאל כולל התאמה	130	ILS	2026-03-09 17:54:12.070623+00	2026-03-09 17:54:12.070623+00
79644cec-1a68-4a9f-aae6-3600bdee8c5f	05fdc66b-c181-456a-8c28-4a00e2dbe240	לוגו	500	ILS	2026-03-09 17:54:55.044234+00	2026-03-09 17:54:55.044234+00
b8f63215-44d9-47cd-85a4-ea6464fcc3ab	05fdc66b-c181-456a-8c28-4a00e2dbe240	באנר לאתר	180	ILS	2026-03-09 17:55:28.174348+00	2026-03-09 17:55:28.174348+00
da284823-8e91-4cfb-9d7b-6713c94590e2	05fdc66b-c181-456a-8c28-4a00e2dbe240	דף נחיתה	700	ILS	2026-03-09 17:55:47.609253+00	2026-03-09 17:55:47.609253+00
\.


--
-- Data for Name: freelancer_tasks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."freelancer_tasks" ("id", "freelancer_user_id", "client_id", "title", "description", "status", "priority", "due_date", "created_at", "updated_at", "service_type", "price", "currency", "link_url", "admin_approved", "business_id", "payment_status", "work_started_at", "total_work_seconds") FROM stdin;
6db405c4-33ef-4d4c-b961-415446ba5b26	05fdc66b-c181-456a-8c28-4a00e2dbe240	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	אלקטריק סייל | פסח 2026	כותרת : רוצים להתחדש לחג בלי לשלם ביוקר?,\nאלקטריק סייל הכי זולים לחג!,\nאל תתנו למחירי החג "לנקות" לכם את הכיס.,\nקוד קופון R99,\nכפתור : תתחדשו לפני החג!,\nאיקון של אספקה תוך 72 שעות,\nלמטה כוכבית ,\n*האספקה בהתאם למדיניות פיקוד העורף	הושלם	גבוה	2026-03-17	2026-03-15 21:18:00+00	2026-04-12 13:21:49.820582+00	פוסט לסושיאל כולל התאמה	130	ILS	https://drive.google.com/drive/folders/1qTiQ9WbFAQDB7ZaJleSbEC34-XXl3A2P	t	1286fd00-4d4c-40db-961c-63b72e38d8ac	paid	\N	0
ad94457d-1cd9-4bff-aa08-efa476a32ba9	05fdc66b-c181-456a-8c28-4a00e2dbe240	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	אלקטריק סייל פסח	כולם יקרים ואין להם מלאי?,\nאפילו איראן לא יעצרו אותנו !,\n קונים היום - מקבלים לפני החג!,\nתמונה של מחסן עם ערימות של קרטוני מוצרי חשמל (שמשדר מלאי ענק) ובחזית תמונה של 3 מוצרי חשמל ,\nלהוסיף באנר  "במלאי לאספקה מיידית". ,\nכוכבית : *האספקה בהתאם למדיניות פיקוד העורף	הושלם	גבוה	2026-02-12	2026-03-15 17:17:00+00	2026-04-12 13:21:49.820582+00	פוסט לסושיאל כולל התאמה	130	ILS	https://drive.google.com/drive/folders/1qTiQ9WbFAQDB7ZaJleSbEC34-XXl3A2P	t	1286fd00-4d4c-40db-961c-63b72e38d8ac	paid	\N	0
b3fe849f-5874-4567-9482-f2704c41a963	05fdc66b-c181-456a-8c28-4a00e2dbe240	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	פסח 2026	מארחים בפסח ואין מקום במקרר?,\nמקרר חדש אצלכם עד -72 שעות!,\nמקרר 4 דלתות יוקרתי (פרימיום) פתוח לרווחה או אחד סגור אחד פתוח, נקי ומסודר, כשהוא מואר מבפנים בצורה מרשימה. הטקסט מונח בצד בצורה בולטת. חותמת "אספקה ב-72 שעות" חייבת להיות האלמנט הכי בולט אחרי הכותרת.,\nלהוסיף באנר או עיגול ורשום מה נשתנה החג הזה ? המקרר שלכם !,\nלהוסיף למטה כוכבית - זמני האספקה בהתאם למדיניות פיקוד העורף,\n	חדש	רגיל	2026-03-12	2026-03-08 04:28:00+00	2026-04-12 13:21:49.820582+00	פוסט לסושיאל כולל התאמה	130	ILS	\N	t	32351ab5-411c-440c-9bae-70e504d4052f	paid	\N	0
015999b4-5ce3-46cb-b102-03480fefb882	05fdc66b-c181-456a-8c28-4a00e2dbe240	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	אלקטריקסייל מכירות קיץ	הקיץ כבר בפתח,\nהמקפיא שלכם כבר לא מקפיא ?,\nאל תתנו לבשר ולדגים שלכם להפשיר,\nמגוון ענק של מקפיאים ומקררים מהמותגים המובילים בעולם,\nאספקה תוך 72 שעות ,\nט.ל.ח מימוש הקופון החל מ 2300 ש״ח	הושלם	דחוף	2026-04-13	2026-04-13 02:27:00+00	2026-06-21 20:46:09.152902+00	פוסט לסושיאל כולל התאמה	130	ILS	\N	t	1286fd00-4d4c-40db-961c-63b72e38d8ac	paid	\N	0
2fadaf14-a71c-4ac5-8633-bba963a3ddf4	05fdc66b-c181-456a-8c28-4a00e2dbe240	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	פסגת החשמל חוגגת עצמאןת	כותרת,\nיום עצמאות מחשמל ,\nטקסט,\nלכבוד יום ההולדת למדינה, חתכנו את המחירים על המוצרים הכי מבוקשים באתר ובחנות.,\nאספקה תוך 3 ימי עסקים,\nשימי את הקוד קופון הקודם,\nשירות ואחריות המובילים בישראל,\nנראות תחושה של יום העצמאות אבל בשפה של פסגת החשמל ואפשר לשים גם מוצרי חשמל 	הושלם	דחוף	2026-04-13	2026-04-12 01:27:00+00	2026-06-21 20:46:09.152902+00	פוסט לסושיאל כולל התאמה	130	ILS	\N	t	32351ab5-411c-440c-9bae-70e504d4052f	paid	\N	0
4ad7e450-97bd-4adc-acd3-a4bc6352a345	05fdc66b-c181-456a-8c28-4a00e2dbe240	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	אלקטריקסייל עצמאות	גם בעצמאות ה 78 למדינה,\nאלקטריקסייל במקום הראשון במחירים ובשירות !,\nכל הישראלים כבר יודעים,\nמוצרי חשמל קונים רק באלקטריקסיל.,\nעד 50% הנחה,\nקוד קופון e100,\n	הושלם	דחוף	2026-04-13	2026-04-13 02:22:00+00	2026-06-21 20:46:09.152902+00	פוסט לסושיאל כולל התאמה	130	ILS	\N	t	1286fd00-4d4c-40db-961c-63b72e38d8ac	paid	\N	0
c8229322-24da-4288-9585-80cfcd2e6472	05fdc66b-c181-456a-8c28-4a00e2dbe240	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	פסגת החשמל בית חדש	כותרת : עוברים לבית חדש? מוצרי החשמל אצלכם תוך 72 שעות!,\nמוצרי החשמל אצלכם לפני שהאורחים מגיעים.,\nלהשתמש באייקון של שעון או סטופר מעוצב שלידו כתוב בבולטות "אספקה תוך 72 שעות". ,\nאווירת מעבר דירה , סגנון פסגת החשמל	הושלם	דחוף	2026-04-13	2026-04-13 02:15:00+00	2026-06-21 20:46:09.152902+00	פוסט לסושיאל כולל התאמה	130	ILS	\N	t	32351ab5-411c-440c-9bae-70e504d4052f	paid	\N	0
\.


--
-- Data for Name: freelancer_task_comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."freelancer_task_comments" ("id", "task_id", "sender_id", "content", "created_at") FROM stdin;
\.


--
-- Data for Name: incoming_webhook_keys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."incoming_webhook_keys" ("id", "api_key", "name", "client_id", "business_id", "allowed_types", "is_active", "created_by", "created_at", "updated_at", "webhook_secret") FROM stdin;
ef3dbae3-4c0a-48d1-8625-c5eee3991419	bce06f29-892f-4301-bbdf-73a69a655f24	פסגת החשמל מכירות	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	32351ab5-411c-440c-9bae-70e504d4052f	{metrics}	t	599209a7-ebe3-4ddf-90ba-a50cca55271c	2026-03-30 19:49:36.659026+00	2026-03-30 19:49:36.659026+00	\N
c2773722-a11a-4128-acf1-1c9dff50f8be	429dbe54-093c-4f0a-9cfe-468c88641483	אלקטריקסייל עדכון מכירות	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	1286fd00-4d4c-40db-961c-63b72e38d8ac	{metrics}	t	599209a7-ebe3-4ddf-90ba-a50cca55271c	2026-03-30 21:23:56.532144+00	2026-03-30 21:23:56.532144+00	\N
82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20-1970-44f9-9d5b-7d322c8bd1e1	חוות בניה לידים פייסבוק	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	{lead}	t	599209a7-ebe3-4ddf-90ba-a50cca55271c	2026-04-19 11:06:33.965611+00	2026-04-19 11:06:33.965611+00	\N
40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03-d0b6-4c4d-9811-e39ab7136c92	מרכז גלאי - לידים	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	{lead}	f	3d5e1ab3-326b-493d-8af2-d64b483697c3	2026-06-18 11:19:13.3503+00	2026-06-18 11:19:13.3503+00	\N
b838c315-89ca-4c83-a262-9658a212fd57	db97da22-9b5b-4780-bd85-1433bce55b82	מרכז גלאי - נתונים	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	{metrics}	f	599209a7-ebe3-4ddf-90ba-a50cca55271c	2026-06-17 14:08:01.800124+00	2026-06-17 14:08:01.800124+00	\N
90daa8dd-342c-438c-904b-3792f9514796	1af2bc82-c306-45f4-a0b6-602f226000a7	סוכנות דיגיטל - הדגמה	a248ecae-9af4-4056-8fc9-668ca0377228	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	{lead,metrics,request}	t	599209a7-ebe3-4ddf-90ba-a50cca55271c	2026-08-05 17:52:02.424962+00	2026-08-05 17:52:02.424962+00	\N
40aedf2b-30a3-49a1-8146-4423b4a9a04a	4a9240a7-c609-474f-90ca-e23e8aa88201	אקסטרים אילת	202abebc-93a9-4fb9-926a-8c7677282aca	45942137-54f7-4fd1-8227-472c92c86933	{metrics,lead}	t	599209a7-ebe3-4ddf-90ba-a50cca55271c	2026-03-31 20:43:53.595161+00	2026-03-31 20:43:53.595161+00	\N
c3b8ad43-f33a-4f89-b521-826fbaa00169	d409902c-e953-46cb-8de8-55806494cf22	קבלת לידים igproject	8f21c002-2efd-4224-ac09-47432a41923d	5fb4e556-2df8-4c32-a693-c7bae38af54b	{lead,metrics}	t	599209a7-ebe3-4ddf-90ba-a50cca55271c	2026-07-22 12:06:56.699849+00	2026-07-22 12:06:56.699849+00	\N
\.


--
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."messages" ("id", "client_id", "sender_id", "content", "created_at", "business_id") FROM stdin;
cc646ae1-f370-47e2-9359-cf4941ed970d	acc67398-d73a-407a-a801-76c172c544d8	599209a7-ebe3-4ddf-90ba-a50cca55271c	היי	2026-03-29 09:34:06.918825+00	\N
7f3f7016-2340-4c19-a34a-5947f1cb94fe	acc67398-d73a-407a-a801-76c172c544d8	599209a7-ebe3-4ddf-90ba-a50cca55271c	הה	2026-03-29 09:35:29.562312+00	\N
\.


--
-- Data for Name: webhook_configs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."webhook_configs" ("id", "user_id", "name", "url", "events", "is_active", "created_at", "updated_at", "consecutive_failures", "circuit_open_until") FROM stdin;
b5b65936-3583-46e4-8ec6-fed861ebff9e	599209a7-ebe3-4ddf-90ba-a50cca55271c	דד	https://hook.us1.make.com/w5iqyn4m45kxl4usz571c7t5a9pjtstk	{new_request,task_status_changed,new_metrics,new_message}	t	2026-03-29 09:35:17.505307+00	2026-03-29 09:35:17.505307+00	0	\N
\.


--
-- Data for Name: outgoing_webhook_attempts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."outgoing_webhook_attempts" ("id", "webhook_config_id", "event_type", "payload", "attempt_number", "status", "response_status", "error_message", "duration_ms", "created_at") FROM stdin;
\.


--
-- Data for Name: peer_reviews; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."peer_reviews" ("id", "reviewer_user_id", "reviewee_user_id", "task_id", "rating", "comment", "created_at") FROM stdin;
\.


--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."profiles" ("id", "user_id", "full_name", "email", "phone", "avatar_url", "created_at", "updated_at") FROM stdin;
3d5e1ab3-326b-493d-8af2-d64b483697c3	27faf5f3-c8fc-4026-a7d4-aeecdc8cbe2a	Roi	roi@tomana.co.il	\N		2026-03-08 20:56:35.587718+00	2026-03-08 20:56:35.587718+00
9157a82c-5614-48af-9678-37248d56ed89	ef0d1de7-cfd7-4f13-9eef-d1c35fa43ab0	Roi	roi@tomana.co.il	\N		2026-03-08 20:56:55.748752+00	2026-03-08 20:56:55.748752+00
65f3a3f2-c7fa-4da6-82ea-44ff97d1d22d	49f9d0f2-caf6-4120-b719-a3369862776c	Roi	roi@tomana.co.il	\N		2026-03-08 20:58:10.992892+00	2026-03-08 20:58:10.992892+00
37a7e55c-aa07-4cef-8ad7-4bd39390b9e9	2f5f459a-dd5c-4840-89e0-d74ee32a35dd	אביב זיסמן		\N		2026-03-08 21:29:56.493909+00	2026-03-08 21:29:56.493909+00
b7af332d-639b-4b2e-a496-08048dbb238d	20edeb92-795d-4d85-b31c-7d2d4988e712	אביב זיסמן		\N		2026-03-08 21:30:34.380799+00	2026-03-08 21:30:34.380799+00
e8b3a29b-50a0-49ad-bdff-8dacc5bdd009	986e73a4-5c28-4f39-8057-68393d2f8610	אביב זיסמן		\N		2026-03-08 21:30:46.806177+00	2026-03-08 21:30:46.806177+00
b1f6f1f0-ff2e-4d78-ac48-0b1ee91a7e7e	8e01e849-b66f-4f88-ba71-88dbf23753e4	אביב זיסמן	avivzisman27@gmail.com	\N		2026-03-08 21:31:02.091603+00	2026-03-09 14:09:10.128589+00
2de48386-b463-47b1-9631-86d3be820951	599209a7-ebe3-4ddf-90ba-a50cca55271c	Roi	roi@tomana.co.il	\N		2026-03-08 19:28:57.842022+00	2026-03-10 16:48:52.57357+00
537f1027-611a-41ec-9029-c9723e44f2d5	05fdc66b-c181-456a-8c28-4a00e2dbe240	אביב זיסמן	avivzisman27@gmail.com	0509190147		2026-03-09 14:09:17.610962+00	2026-03-11 09:40:56.513614+00
12a0a366-b41d-43b9-ba98-4abc54470f76	1b3b0616-bc59-4a17-92ee-448088b3abab	ברק אמנו	barak@barak.com	0000000		2026-03-31 06:54:07.027071+00	2026-03-31 06:54:07.371514+00
b600a57e-db18-446d-8de3-c2a225df196c	415e5f36-24e6-4d29-a218-6d92b746b22f		test123@tomana.co.il	\N		2026-06-17 11:19:51.385824+00	2026-06-17 11:19:51.385824+00
540eb79b-aeca-4afc-9cca-a4e67083021f	77f3ae32-c3a1-4dc6-9fe2-ab60e149e31b		manager@mercaz-galay.co.il			2026-06-17 08:47:10.391468+00	2026-06-18 17:56:52.752963+00
568dc1ad-8e9c-4ecb-88d1-4177e8712111	02265bc4-2916-41a3-aa4d-6e3b7a326b2e	לירן	pisga.shop@gmail.com	052-848-5559		2026-03-15 20:45:27.937338+00	2026-06-18 18:24:48.239329+00
8994feff-aeb0-4ea6-8e2f-52fdc1dcb678	7940ad8f-3aa4-47cd-b963-39ea79f3b68b	גלית	sdf@sdf.com	\N		2026-06-21 12:16:39.337306+00	2026-06-21 12:16:39.337306+00
01ce5f81-c7c1-4585-a33c-69324274cf67	f65946fa-d83d-4cb0-923b-68df36d6d131		taltal1@icloouad.com			2026-03-31 20:38:18.186906+00	2026-06-22 04:41:49.311047+00
de2d31d4-eb8c-499f-a1a1-1d17c7db2d57	561619ad-f3bd-405f-8869-421845e3bf37	גלית מרכז גלאי	mercazgalay@gmail.com	\N		2026-06-23 13:16:23.479572+00	2026-06-23 13:16:23.479572+00
26c13a44-8984-45f8-a20e-1b6a73b5afae	4fcb69ea-2c5f-44b0-958c-b013c6d93300	רועי פחימה	rpahimקa@gmail.com	000000		2026-03-29 07:02:09.002694+00	2026-06-28 18:00:03.182666+00
92e8df7b-2a78-4914-a73a-dac6ff71ffed	e0eff06b-2096-4e02-bfba-53b87597a600	טל ועידן	g.projakt@gmail.com	\N		2026-07-22 12:00:50.194964+00	2026-07-22 12:00:51.16013+00
4d9dacd5-2633-425e-a99c-3bf4f2bf7b29	e6c020a1-5884-4382-ab5f-353a58fd04fd	ישראל ישראלים	demo@tomana.co.il	050-0000000		2026-04-15 08:16:28.998361+00	2026-08-05 18:32:33.289492+00
1a5902aa-6778-450b-8d5e-97d6879994d4	7002569b-d5e0-47ad-b392-cc47d63e7bb9		tal1hazut1@gmail.com	\N		2026-08-05 19:55:32.039795+00	2026-08-05 19:55:32.482777+00
\.


--
-- Data for Name: reminders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."reminders" ("id", "user_id", "title", "notes", "due_at", "related_client_id", "completed", "created_at", "updated_at", "alerted_at") FROM stdin;
\.


--
-- Data for Name: reports; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."reports" ("id", "client_id", "project_id", "title", "content", "file_url", "created_at", "business_id", "report_month") FROM stdin;
3cf510cb-6a3b-4365-a5f4-b6ece31fc3a2	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	\N	דוח ביצועים Meta ינואר 2026		https://pnaoiieniymwndtuedse.supabase.co/storage/v1/object/public/client-documents/b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd/reports/2026-01-1773175395381.pdf	2026-03-10 20:43:17.130127+00	32351ab5-411c-440c-9bae-70e504d4052f	2026-01
eb524059-79d5-4c4a-9a5d-53df15a740a3	a248ecae-9af4-4056-8fc9-668ca0377228	\N	דוח חודשי - נובמבר 2025	סיכום ביצועים לחודש נובמבר. הקמפיינים הניבו תוצאות טובות עם עלייה בלידים ושיפור ביחס ההמרה.		2025-12-05 00:00:00+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	2025-11
06f523a0-d06f-4153-a1d0-c09c0d0ec706	a248ecae-9af4-4056-8fc9-668ca0377228	\N	דוח חודשי - דצמבר 2025	סיכום ביצועים לחודש דצמבר. הקמפיינים הניבו תוצאות טובות עם עלייה בלידים ושיפור ביחס ההמרה.		2026-01-05 00:00:00+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	2025-12
286d8af5-e9c0-4972-9a2b-3a547b6687b1	a248ecae-9af4-4056-8fc9-668ca0377228	\N	דוח חודשי - ינואר 2026	סיכום ביצועים לחודש ינואר. הקמפיינים הניבו תוצאות טובות עם עלייה בלידים ושיפור ביחס ההמרה.		2026-02-05 00:00:00+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	2026-01
bcf868ef-7552-4811-ae57-a412095ce5ff	a248ecae-9af4-4056-8fc9-668ca0377228	\N	דוח חודשי - פברואר 2026	סיכום ביצועים לחודש פברואר. הקמפיינים הניבו תוצאות טובות עם עלייה בלידים ושיפור ביחס ההמרה.		2026-03-05 00:00:00+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	2026-02
00be1fb1-2cce-4d31-8264-4fbfcfc13f83	a248ecae-9af4-4056-8fc9-668ca0377228	\N	דוח חודשי - מרץ 2026	סיכום ביצועים לחודש מרץ. הקמפיינים הניבו תוצאות טובות עם עלייה בלידים ושיפור ביחס ההמרה.		2026-04-05 00:00:00+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	2026-03
aed9688d-f2cb-4d6d-8734-ac5a9fa20fae	a248ecae-9af4-4056-8fc9-668ca0377228	\N	דוח חודשי - אפריל 2026	סיכום ביצועים לחודש אפריל. הקמפיינים הניבו תוצאות טובות עם עלייה בלידים ושיפור ביחס ההמרה.		2026-05-05 00:00:00+00	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad	2026-04
\.


--
-- Data for Name: requests; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."requests" ("id", "client_id", "project_id", "title", "description", "status", "priority", "created_at", "updated_at", "sender_id", "business_id") FROM stdin;
0696f3bf-5f6d-483e-8f8a-73a7a67ae7e4	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	\N	נפתחה בקשה חדשה למעצב/ת גרפי: אלקטריקסייל עצמאות	[task_ref:4ad7e450-97bd-4adc-acd3-a4bc6352a345],\nגם בעצמאות הזה ,\nאלקטריקסייל הזולים ביותר בישראל	הושלם	רגיל	2026-04-13 11:22:59.87093+00	2026-04-19 14:57:45.990719+00	\N	1286fd00-4d4c-40db-961c-63b72e38d8ac
094c4761-8dd5-4a15-b070-37e95d6eb53c	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	\N	נפתחה בקשה חדשה למעצב/ת גרפי: פסגת החשמל בית חדש	[task_ref:c8229322-24da-4288-9585-80cfcd2e6472],\nכותרת : עברתם לבית חדש? מוצרי החשמל אצלכם תוך 72 שעות!	הושלם	רגיל	2026-04-13 11:15:45.007417+00	2026-04-19 14:57:55.675502+00	\N	32351ab5-411c-440c-9bae-70e504d4052f
01ac39b8-c716-40b6-8dd0-4271d5ea7fdd	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	\N	נפתחה בקשה חדשה למעצב/ת גרפי: פסגת החשמל חוגגת עצמאןת	[task_ref:2fadaf14-a71c-4ac5-8633-bba963a3ddf4],\nכותרת,\nיום עצמאות מחשמל 	הושלם	רגיל	2026-04-12 13:27:09.460028+00	2026-04-19 14:58:04.478429+00	\N	32351ab5-411c-440c-9bae-70e504d4052f
350b0837-de63-4250-bb33-8402aa5513ab	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	\N	נפתחה בקשה חדשה למעצב/ת גרפי: פסח 2026	[task_ref:b3fe849f-5874-4567-9482-f2704c41a963],\nמקרר ענק ב-72 שעות!	הושלם	רגיל	2026-03-11 06:28:54.699891+00	2026-03-15 20:34:39.164408+00	\N	32351ab5-411c-440c-9bae-70e504d4052f
e1ab05a2-14db-4472-a439-071c5568acf9	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	\N	לסדר הודעת וואטסאפ	בדיקה 	הושלם	רגיל	2026-03-24 10:55:38.444481+00	2026-03-25 13:43:39.507702+00	02265bc4-2916-41a3-aa4d-6e3b7a326b2e	32351ab5-411c-440c-9bae-70e504d4052f
3ae85003-0bca-4aaa-bf22-415e7893a9e6	a248ecae-9af4-4056-8fc9-668ca0377228	\N	הוספת פיקסל פייסבוק	פירוט הבקשה: הוספת פיקסל פייסבוק	הושלם	רגיל	2026-02-13 08:16:29.651+00	2026-04-15 08:16:30.058364+00	e6c020a1-5884-4382-ab5f-353a58fd04fd	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad
5ab4f6b7-b30d-45d1-bd46-9c72f5cc6f99	a248ecae-9af4-4056-8fc9-668ca0377228	\N	בדיקת מהירות אתר	פירוט הבקשה: בדיקת מהירות אתר	הושלם	רגיל	2026-02-03 08:16:29.651+00	2026-04-15 08:16:30.058364+00	e6c020a1-5884-4382-ab5f-353a58fd04fd	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad
eaade839-9277-49b0-b606-fdea6e753010	a248ecae-9af4-4056-8fc9-668ca0377228	\N	שיפור SEO	פירוט הבקשה: שיפור SEO	הושלם	רגיל	2026-02-14 08:16:29.651+00	2026-04-15 08:16:30.058364+00	e6c020a1-5884-4382-ab5f-353a58fd04fd	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad
aee1c023-45bf-4bd4-9858-c77ee93da9bd	a248ecae-9af4-4056-8fc9-668ca0377228	\N	עדכון לוגו באתר	פירוט הבקשה: עדכון לוגו באתר	הושלם	דחוף	2026-01-25 08:16:29.651+00	2026-06-17 07:14:53.452268+00	e6c020a1-5884-4382-ab5f-353a58fd04fd	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad
e48172f7-e420-48ca-a51f-714ef50f8b2d	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	\N	נפתחה בקשה חדשה למעצב/ת גרפי: אלקטריקסייל מכירות קיץ	[task_ref:015999b4-5ce3-46cb-b102-03480fefb882],\nהקיץ כבר בפתח,\nהמקפיא שלכם כבר לא מקפיא ?,\nאל תתנו לבשר ולדגים שלכם להפשיר,\nמגוון ענק של מקפיאים ומקררים מהמותגים המובילים בעולם,\nאספקה תוך 72 שעות ,\n	הושלם	רגיל	2026-04-13 11:27:09.99544+00	2026-04-19 14:57:39.574916+00	\N	1286fd00-4d4c-40db-961c-63b72e38d8ac
427b0e4c-27ad-4b4b-86cb-35656399d4b8	a248ecae-9af4-4056-8fc9-668ca0377228	\N	הוספת מספר טלפון	פירוט הבקשה: הוספת מספר טלפון	הושלם	רגיל	2026-02-25 08:16:29.651+00	2026-06-17 07:15:05.245327+00	e6c020a1-5884-4382-ab5f-353a58fd04fd	bb7f3cce-abe0-4393-b15b-17ead3c2d6ad
2a32468f-3510-4347-bc50-ea05a7d6a911	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	\N	יש תור ללא פרטים במערכת	לטיפולכם המסור אודה	הושלם	רגיל	2026-06-26 10:41:27.214701+00	2026-06-28 10:38:27.719027+00	77f3ae32-c3a1-4dc6-9fe2-ab60e149e31b	800b0aec-5843-4002-a897-4d5827bd22b0
\.


--
-- Data for Name: request_replies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."request_replies" ("id", "request_id", "sender_id", "content", "is_read", "created_at") FROM stdin;
03418eda-7ce7-4897-b7ae-d242b7e0871a	350b0837-de63-4250-bb33-8402aa5513ab	599209a7-ebe3-4ddf-90ba-a50cca55271c	העיצוב "פסח 2026" אושר סופית ✅ — מוכן לשימוש.	t	2026-03-15 20:34:39.505421+00
bc277f2b-253e-40ab-a7e1-6890aa98344d	094c4761-8dd5-4a15-b070-37e95d6eb53c	599209a7-ebe3-4ddf-90ba-a50cca55271c	העיצוב "פסגת החשמל בית חדש" אושר סופית ✅ — מוכן לשימוש.	f	2026-04-19 14:57:55.932523+00
20c6bd5b-bae8-44a4-89d5-621c3a08dd87	01ac39b8-c716-40b6-8dd0-4271d5ea7fdd	599209a7-ebe3-4ddf-90ba-a50cca55271c	העיצוב "פסגת החשמל חוגגת עצמאןת" אושר סופית ✅ — מוכן לשימוש.	f	2026-04-19 14:58:04.736495+00
da809b22-ecee-4da3-a15c-89275fbb06c1	0696f3bf-5f6d-483e-8f8a-73a7a67ae7e4	599209a7-ebe3-4ddf-90ba-a50cca55271c	העיצוב "אלקטריקסייל עצמאות" אושר סופית ✅ — מוכן לשימוש.	t	2026-04-19 14:57:46.202003+00
be6d6796-7246-4deb-843e-6f92590feb5b	e48172f7-e420-48ca-a51f-714ef50f8b2d	599209a7-ebe3-4ddf-90ba-a50cca55271c	העיצוב "אלקטריקסייל מכירות קיץ" אושר סופית ✅ — מוכן לשימוש.	t	2026-04-19 14:57:40.141617+00
\.


--
-- Data for Name: team_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."team_details" ("id", "user_id", "position", "specialization", "id_number", "address", "bank_name", "bank_branch", "bank_account", "payment_method", "payment_terms", "hourly_rate", "monthly_rate", "project_rate", "currency", "tax_exempt", "notes", "contract_start", "contract_end", "created_at", "updated_at", "status") FROM stdin;
b44461a3-f18f-4efb-975a-e3be15f8a719	599209a7-ebe3-4ddf-90ba-a50cca55271c								העברה בנקאית	שוטף+30	0.00	0.00	0.00	ILS	f		\N	\N	2026-03-08 20:57:09.008082+00	2026-03-10 16:48:52.903997+00	פעיל
34abef1c-0f11-4e69-ab40-22820fe9662e	05fdc66b-c181-456a-8c28-4a00e2dbe240	מעצב/ת גרפי							העברה בנקאית	שוטף+0	0.00	0.00	0.00	ILS	f		\N	\N	2026-03-08 21:31:02.356047+00	2026-03-11 09:40:56.879066+00	פעיל
\.


--
-- Data for Name: user_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_roles" ("id", "user_id", "role") FROM stdin;
f99264cf-25f6-4f2c-a615-7e594247c2fa	3fe21628-0033-41ce-8030-f415b7b1523a	freelancer
7113812c-bc74-4754-b225-518e6989a233	599209a7-ebe3-4ddf-90ba-a50cca55271c	admin
fb646b30-49ef-4cdf-8fd4-22c71490e922	05fdc66b-c181-456a-8c28-4a00e2dbe240	freelancer
596e2cba-ad4e-485b-adea-8e31459431f8	02265bc4-2916-41a3-aa4d-6e3b7a326b2e	client
578ae58d-2dec-4cf7-b158-7ebba55bc281	4fcb69ea-2c5f-44b0-958c-b013c6d93300	client
5dd86796-aec8-451b-9d4f-3fb153612198	1b3b0616-bc59-4a17-92ee-448088b3abab	client
176fbbc5-5e60-4339-8046-31e5dfdde45b	f65946fa-d83d-4cb0-923b-68df36d6d131	client
d8a7e7b4-1b6a-4f28-9b91-a1fb12cf7e62	e6c020a1-5884-4382-ab5f-353a58fd04fd	client
0aaf0bb7-3b36-403d-b153-06fdb6ff9aa5	77f3ae32-c3a1-4dc6-9fe2-ab60e149e31b	client
abb0e16b-7e51-44db-b9d2-2eba1eede5d6	561619ad-f3bd-405f-8869-421845e3bf37	client_employee
6c373ffa-7b6f-4468-8559-47355dcbcd0c	e0eff06b-2096-4e02-bfba-53b87597a600	client
4ca9353f-020e-486c-9965-3d74261ed4c9	7002569b-d5e0-47ad-b392-cc47d63e7bb9	client
\.


--
-- Data for Name: webhook_dlq; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."webhook_dlq" ("id", "webhook_config_id", "event_type", "payload", "last_error", "attempts", "resolved", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: webhook_logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."webhook_logs" ("id", "webhook_key_id", "api_key_used", "event_type", "status", "error_message", "request_body", "client_id", "business_id", "created_at", "idempotency_key", "response_status", "processing_ms", "ip_address") FROM stdin;
0dc1743e-c687-470f-a5cc-9cb087b56418	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "522835785", "source": "Facebook", "status": "חדש", "full_name": "דניאל ארביב"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-06-22 04:26:47.920794+00	\N	200	1934	54.209.79.175
2f54c171-5e11-414c-a63a-60397ecaef7a	ef3dbae3-4c0a-48d1-8625-c5eee3991419	bce06f29...	metrics	success	\N	{"month": "2026-06", "platform": "Meta", "sales_count": 12}	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	32351ab5-411c-440c-9bae-70e504d4052f	2026-06-22 04:51:23.031792+00	\N	200	2173	54.80.47.193
b852cef0-8449-4bd2-96df-8e24a2e6b9fe	c2773722-a11a-4128-acf1-1c9dff50f8be	429dbe54...	metrics	success	\N	{"month": "2026-06", "platform": "Meta", "sales_count": 26}	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	1286fd00-4d4c-40db-961c-63b72e38d8ac	2026-06-22 04:52:53.303384+00	\N	200	2012	54.209.79.175
540d244b-09af-4f36-b198-f5f491730152	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0522453096", "source": "דף נחיתה", "status": "חדש", "full_name": "שלום אפרתי"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-22 07:49:19.859336+00	\N	\N	\N	\N
15380243-6dc4-4154-aef8-39d1d35dd2f0	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0507390178", "source": "דף נחיתה", "status": "חדש", "full_name": "כנרת"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-22 08:04:23.613495+00	\N	\N	\N	\N
724580e6-7a1d-4bb6-bb6a-a380a100b1e8	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "538693411", "source": "Facebook", "status": "חדש", "full_name": "Freik Led Zeplien"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-06-22 11:11:45.328471+00	\N	200	3589	54.161.178.114
7da96c08-b1be-4236-ad23-f73c9506c78a	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0507317262", "source": "דף נחיתה", "status": "חדש", "full_name": "נתנאל"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-22 12:50:32.668867+00	\N	\N	\N	\N
402ba9bb-5db4-4778-bdea-d088de9c29b6	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0529451249", "source": "דף נחיתה", "status": "חדש", "full_name": "שלומית מוזס"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-22 14:24:02.783089+00	\N	\N	\N	\N
4fe6d094-5a8c-45b3-b3b4-905979942128	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0523994416", "source": "דף נחיתה", "status": "חדש", "full_name": "מיכל פריסמן"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-23 05:11:21.617816+00	\N	\N	\N	\N
f8657eee-9d1d-438e-88a8-2cc1477bac35	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "054-4230171", "source": "דף נחיתה", "status": "חדש", "full_name": "הילה גבאי"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-23 05:45:11.406296+00	\N	\N	\N	\N
8e3fd2e1-74c2-46b9-b52b-0d26e09fb422	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0549885660", "source": "דף נחיתה", "status": "חדש", "full_name": "ליאורה קריאף"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-23 07:21:30.852031+00	\N	\N	\N	\N
e45a1c9b-e857-4ade-ab77-90fc0e226392	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "509876103", "source": "Facebook", "status": "חדש", "full_name": "בריס רואיס"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-06-23 07:52:25.4051+00	\N	200	3119	54.161.178.114
865cef8f-ee4f-43d6-a9a2-5104a12b6400	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0533411220", "source": "דף נחיתה", "status": "חדש", "full_name": "מרים עווד"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-23 09:17:13.68661+00	\N	\N	\N	\N
afea47c3-c5d6-45a1-97ed-e59cfe642857	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0523257798", "source": "דף נחיתה", "status": "חדש", "full_name": "אילה כהן"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-23 11:06:21.763182+00	\N	\N	\N	\N
fbf29618-f6b1-4334-8941-14725915ec7d	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0542495429", "source": "דף נחיתה", "status": "חדש", "full_name": "סופיה מגריסו"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-23 11:50:36.517124+00	\N	\N	\N	\N
b0cde78b-7a92-4861-b2f9-fe5974376833	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "", "source": "דף נחיתה", "status": "חדש", "full_name": ""}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-23 12:39:57.009429+00	\N	\N	\N	\N
4ca82f87-eb21-40ce-b8ee-84df356f6834	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0508813055", "source": "דף נחיתה", "status": "חדש", "full_name": "נועה חדד"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-23 21:40:13.32208+00	\N	\N	\N	\N
61423665-2e66-41a3-92d3-d712e30cd24f	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0584116061", "source": "דף נחיתה", "status": "חדש", "full_name": "אביטל שיין"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-24 05:50:54.073799+00	\N	\N	\N	\N
9001d86e-b778-431e-9caa-d9d8110ca01c	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0526044465", "source": "דף נחיתה", "status": "חדש", "full_name": "אפרת ינאי"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-24 06:37:52.661056+00	\N	\N	\N	\N
1998679c-d4cf-426f-9305-e90588fcd904	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0547771832", "source": "דף נחיתה", "status": "חדש", "full_name": "קרן כהן"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-24 06:56:02.361807+00	\N	\N	\N	\N
6783ddc6-580a-4cd2-9a57-12c1923dfe87	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0548447089", "source": "דף נחיתה", "status": "חדש", "full_name": "שלום טוב"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-24 07:42:49.623246+00	\N	\N	\N	\N
e00908d3-ed72-43f9-8e4e-11c78ec88804	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0542106960", "source": "דף נחיתה", "status": "חדש", "full_name": "סטפני חבש"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-24 09:06:40.866766+00	\N	\N	\N	\N
68cfc783-d325-45f9-b5e5-027d578866eb	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0526841190", "source": "דף נחיתה", "status": "חדש", "full_name": "הילה בריגה"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-24 15:48:49.48356+00	\N	\N	\N	\N
174815b6-c439-451a-bc71-ebf33183677a	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0548829933", "source": "דף נחיתה", "status": "חדש", "full_name": "אדיר הווארד"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-24 15:56:33.570219+00	\N	\N	\N	\N
631dc83d-fad9-4bad-a940-573d2c522ca7	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0528480866", "source": "דף נחיתה", "status": "חדש", "full_name": "שגיא נעה"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-24 19:40:24.729337+00	\N	\N	\N	\N
a783c4dc-fb7b-4d97-9b40-2c5f43c22289	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "503031200", "source": "Facebook", "status": "חדש", "full_name": "Sharon hazan barad"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-06-25 05:28:03.661924+00	\N	200	2582	54.80.47.193
d1c8dac4-2d78-43ff-88b5-45a367024c5b	b838c315-89ca-4c83-a262-9658a212fd57	db97da22...	metrics	success	\N	{"month": "2026-06", "clicks": 153, "ad_spend": 627, "platform": "Google ads", "impressions": 1062, "leads_count": 27, "cost_per_lead": 23}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-25 07:04:35.882698+00	\N	200	3770	54.209.79.175
ffce58be-a40d-4c54-88ce-55bf23e06b98	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0507562339", "source": "דף נחיתה", "status": "חדש", "full_name": "מיכל אטלן זרביב"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-25 08:07:41.833734+00	\N	\N	\N	\N
d5520880-f7fb-409b-ab56-80bd21616120	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0526682370", "source": "דף נחיתה", "status": "חדש", "full_name": "עדי ענתות"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-25 08:17:35.622142+00	\N	\N	\N	\N
c9bfa54c-fe95-4168-8b89-7f3481ed6994	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0504336134", "source": "דף נחיתה", "status": "חדש", "full_name": "אמילי מלינובסקי"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-25 08:38:17.638718+00	\N	\N	\N	\N
bb0bb829-79f7-49f0-b9d4-3c8122639e68	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "", "source": "דף נחיתה", "status": "חדש", "full_name": ""}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-25 09:57:40.896119+00	\N	\N	\N	\N
772d0e74-31a3-4c9f-912f-cb96623f4a49	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0544388473", "source": "דף נחיתה", "status": "חדש", "full_name": "רבקה"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-25 13:08:41.272294+00	\N	\N	\N	\N
ee66bbf8-df10-42e4-ba14-7b12437240c3	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "544339900", "source": "Facebook", "status": "חדש", "full_name": "ליאת"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-06-25 16:34:12.689692+00	\N	200	3337	54.80.47.193
b4872e5a-c71f-4486-ba94-afbf0c5e9c6e	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "523675217", "source": "Facebook", "status": "חדש", "full_name": "Michal Ben Atar Buchacho"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-06-25 17:34:41.625433+00	\N	200	2997	54.80.47.193
142ee397-ea21-47c5-8d18-72a4674924f8	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0558838590", "source": "דף נחיתה", "status": "חדש", "full_name": "בר פפר"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-25 17:45:22.380217+00	\N	\N	\N	\N
fa9f3e70-2b88-4484-a6c7-a179412a9940	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "504342545", "source": "Facebook", "status": "חדש", "full_name": "Dalia Izhiman"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-06-25 22:25:41.987+00	\N	200	2375	54.80.47.193
26363ef3-17b9-4918-98b9-8627806f9d74	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "547671712", "source": "Facebook", "status": "חדש", "full_name": "Анита Файницкий"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-06-26 00:07:04.051498+00	\N	200	3125	54.80.47.193
f45d6bb5-9d70-49aa-94d4-8ef10b94d8f7	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"email": "annarabaev09@walla.co.il", "notes": "", "phone": "508111641", "source": "Facebook", "status": "חדש", "full_name": "Anna"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-26 07:43:18.251128+00	\N	\N	\N	\N
c9083eb0-3eaf-4916-959f-070a17340607	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"email": "askrsara840@gmail.com", "notes": "", "phone": "584083112", "source": "Facebook", "status": "חדש", "full_name": "סרה"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-26 08:21:12.375136+00	\N	\N	\N	\N
86fd77f6-81c5-474c-880b-41d6ac7717ad	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0502227232", "source": "דף נחיתה", "status": "חדש", "full_name": "אבישג דמרי"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-26 09:02:47.921953+00	\N	\N	\N	\N
dda784af-8c77-4b6c-8bd2-769d676dac80	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "552223311", "source": "Facebook", "status": "חדש", "full_name": "Liza Lea Ben Simon"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-06-26 10:54:21.294171+00	\N	200	3231	54.161.178.114
9744b149-2772-4823-b5ff-de30a80d5afc	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0505072602", "source": "דף נחיתה", "status": "חדש", "full_name": "יוליה אלעזר"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-26 19:03:14.319551+00	\N	\N	\N	\N
17083fd1-97cd-4a04-8a6b-6f7e7f5b04f3	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "543833899", "source": "Facebook", "status": "חדש", "full_name": "טלי"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-06-27 08:03:24.229279+00	\N	200	3224	54.161.178.114
d5362b10-0fbf-4c08-9e4c-5aef66f86fba	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "547650610", "source": "Facebook", "status": "חדש", "full_name": "Анжелина Абрамово"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-06-27 15:11:54.498714+00	\N	200	2582	54.80.47.193
ca0e724e-324f-439a-bfb3-7ccaf6b3e806	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0525175366", "source": "דף נחיתה", "status": "חדש", "full_name": "שיימא יוניס"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-27 16:06:34.088529+00	\N	\N	\N	\N
61dfe96a-7968-4404-8097-87e9477770fc	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "", "source": "דף נחיתה", "status": "חדש", "full_name": ""}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-27 17:39:13.202305+00	\N	\N	\N	\N
71fc369e-24b9-462f-affa-76c71abd5933	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0526468505", "source": "דף נחיתה", "status": "חדש", "full_name": "אלונה אמויאל"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-27 18:21:27.609686+00	\N	\N	\N	\N
7fb600d4-643b-401f-ac27-a690c2e95f34	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0545693575", "source": "דף נחיתה", "status": "חדש", "full_name": "רותם ויסמן"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-27 19:03:16.067394+00	\N	\N	\N	\N
eb14947b-55de-4832-8ef6-44df42421ca2	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "", "source": "דף נחיתה", "status": "חדש", "full_name": ""}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-27 21:18:53.637838+00	\N	\N	\N	\N
ed9c8258-8ec1-4794-a17d-42043d88567d	ef3dbae3-4c0a-48d1-8625-c5eee3991419	bce06f29...	metrics	success	\N	{"month": "2026-06", "platform": "Meta", "sales_count": 14}	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	32351ab5-411c-440c-9bae-70e504d4052f	2026-06-28 07:00:27.295777+00	\N	200	1669	54.80.47.193
92184b31-6fa7-41af-bc38-2bb20cbc004c	c2773722-a11a-4128-acf1-1c9dff50f8be	429dbe54...	metrics	success	\N	{"month": "2026-06", "platform": "Meta", "sales_count": 29}	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	1286fd00-4d4c-40db-961c-63b72e38d8ac	2026-06-28 07:00:27.368682+00	\N	200	1720	54.80.47.193
bf97a9fc-f7a4-409a-be70-5c4b3198c405	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "", "source": "דף נחיתה", "status": "חדש", "full_name": ""}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-28 08:32:40.197961+00	\N	\N	\N	\N
c2e81c66-601d-4478-bedb-e05025a3000c	b838c315-89ca-4c83-a262-9658a212fd57	db97da22...	metrics	success	\N	{"month": "2026-06", "clicks": 199, "ad_spend": 782, "platform": "Google ads", "impressions": 1438, "leads_count": 37, "cost_per_lead": 21}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-28 09:00:09.717974+00	\N	200	1764	54.209.79.175
4116366d-c5de-4a0c-9280-3b8f8611b966	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0547532221", "source": "דף נחיתה", "status": "חדש", "full_name": "יעל ברון זילכה"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-28 09:03:35.790144+00	\N	\N	\N	\N
64a262e8-54ee-4d9b-8e22-fe63fc6eb03d	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0528534411", "source": "דף נחיתה", "status": "חדש", "full_name": "הילה בן מויאל"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-28 13:06:43.889247+00	\N	\N	\N	\N
b2d0f35b-ece7-480f-8dfa-737f8580cb8b	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0544550089", "source": "דף נחיתה", "status": "חדש", "full_name": "איתי כהן"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-28 13:51:27.166428+00	\N	\N	\N	\N
a1575e1d-6201-48ac-99db-82bdaf742bcc	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0545969636", "source": "דף נחיתה", "status": "חדש", "full_name": "לאה"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-28 22:26:50.875892+00	\N	\N	\N	\N
9afbaebf-d1c9-4302-85d2-cd5ffc69f318	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0524256073", "source": "דף נחיתה", "status": "חדש", "full_name": "אדוה סנקר"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-29 06:38:39.792616+00	\N	\N	\N	\N
636ccac6-5587-4349-b3ca-987afb322b92	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0502428699", "source": "דף נחיתה", "status": "חדש", "full_name": "אושרת כהן"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-29 06:59:48.989405+00	\N	\N	\N	\N
6f85b503-d6e9-404d-bb1d-77473634ffac	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "050-2386694", "source": "דף נחיתה", "status": "חדש", "full_name": "ישראל ישראלי"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-29 07:47:24.469827+00	\N	\N	\N	\N
1a318253-b36f-4d91-a4ab-d59ef25ea3a8	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0586958052", "source": "דף נחיתה", "status": "חדש", "full_name": "ליזט גזר"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-29 09:37:43.100976+00	\N	\N	\N	\N
4d0b2271-2aab-4ac4-b80b-26340b8c4641	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0542240784", "source": "דף נחיתה", "status": "חדש", "full_name": "יחיאל רוט"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-29 12:00:11.132114+00	\N	\N	\N	\N
50fda8b9-3186-4908-9b87-1e733e27a0c9	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0544598889", "source": "דף נחיתה", "status": "חדש", "full_name": "ליאת שהרבני זיו"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-29 12:00:38.733367+00	\N	\N	\N	\N
49a19e95-2c7a-4263-88be-9ff0f629d506	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0542243313", "source": "דף נחיתה", "status": "חדש", "full_name": "חלי בן הראש"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-29 14:44:16.043829+00	\N	\N	\N	\N
63882a38-c4b2-4c20-8147-3bb7e9481b24	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0547217330", "source": "דף נחיתה", "status": "חדש", "full_name": "אושרית דנינן"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-29 14:46:56.874395+00	\N	\N	\N	\N
acda347b-e176-4c97-a9be-40577d3b43cc	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0504225020", "source": "דף נחיתה", "status": "חדש", "full_name": "נטלי אברזל"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-29 15:48:06.098593+00	\N	\N	\N	\N
9f6ad140-7c78-4b4e-a5eb-179f96e84ebc	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "", "source": "דף נחיתה", "status": "חדש", "full_name": ""}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-29 16:21:24.620893+00	\N	\N	\N	\N
ebfd2313-3976-447d-bdbc-b49792700018	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0545946965", "source": "דף נחיתה", "status": "חדש", "full_name": "אייברי"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-29 21:41:48.812132+00	\N	\N	\N	\N
ca6438f0-b5cb-4cca-ad4c-833787210792	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0505941441", "source": "דף נחיתה", "status": "חדש", "full_name": "קורל בוקר"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-30 06:10:19.294988+00	\N	\N	\N	\N
30cced7b-5447-4e07-a6db-50b073c0b3ee	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0528728740", "source": "דף נחיתה", "status": "חדש", "full_name": "פלג גלעדי"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-30 06:52:58.125421+00	\N	\N	\N	\N
4cef5a5e-5f48-4e01-ac96-a21c67e97971	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0526666969", "source": "דף נחיתה", "status": "חדש", "full_name": "מיטל"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-30 07:55:08.532043+00	\N	\N	\N	\N
fbd43209-248c-4896-bfb8-1cd26b5c0b9d	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0545433136", "source": "דף נחיתה", "status": "חדש", "full_name": "חני"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-30 08:09:33.998201+00	\N	\N	\N	\N
3f90e72d-1847-4caf-88ce-a442940f0f38	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0542443662", "source": "דף נחיתה", "status": "חדש", "full_name": "גד ברין"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-30 09:32:06.053546+00	\N	\N	\N	\N
2a41e414-73f1-42c8-a5d9-dbcc9b8c8040	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"email": "baraahy94@gmail.com", "notes": "", "phone": "558810817", "source": "Facebook", "status": "חדש", "full_name": "Bara'ah Tareq Massalha"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-30 10:23:10.681821+00	\N	\N	\N	\N
144b4b72-976d-4cb7-84c0-862e204b97ee	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "509548627", "source": "Facebook", "status": "חדש", "full_name": "Talia"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-06-30 15:32:29.16524+00	\N	200	2643	54.80.47.193
0d8db0ac-f9e8-46d1-9f8b-01748629b508	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "542065544", "source": "Facebook", "status": "חדש", "full_name": "אלי ברסלביץ"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-06-30 17:00:01.97081+00	\N	200	3419	54.80.47.193
44bccac4-27fd-42fd-b0ad-db47f72064a3	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "545088804", "source": "Facebook", "status": "חדש", "full_name": "Yarden Ratner"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-06-30 17:54:50.152372+00	\N	200	2857	54.161.178.114
3caf1e8f-1fcf-496e-9b76-3d696a2ff12b	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"email": "amstmb1234@gmail.com", "notes": "", "phone": "523269458", "source": "Facebook", "status": "חדש", "full_name": "אדוה אלקיים"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-06-30 23:44:24.332219+00	\N	\N	\N	\N
79b8133d-db3a-42e3-99c5-a01c0595ef1f	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "", "source": "דף נחיתה", "status": "חדש", "full_name": ""}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-01 02:59:22.136099+00	\N	\N	\N	\N
e672b90a-84f4-4a9a-8d89-6ffa89205f80	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0546622197", "source": "דף נחיתה", "status": "חדש", "full_name": "הודיה כהן"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-01 08:12:51.449461+00	\N	\N	\N	\N
a5cf0224-acb9-486f-9cf3-20c939ba6f9a	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "", "source": "דף נחיתה", "status": "חדש", "full_name": ""}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-01 08:50:47.272981+00	\N	\N	\N	\N
63f85e60-616c-49e0-bd5a-a63e62b64dd7	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "536660670", "source": "Facebook", "status": "חדש", "full_name": "שריקי לאה"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-01 08:58:43.828479+00	\N	200	2744	54.209.79.175
5fa1789c-cfa6-491d-a824-f176a921bf20	c2773722-a11a-4128-acf1-1c9dff50f8be	429dbe54...	metrics	success	\N	{"month": "2026-06", "platform": "Meta", "sales_count": 32}	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	1286fd00-4d4c-40db-961c-63b72e38d8ac	2026-07-01 09:00:28.914513+00	\N	200	2000	54.209.79.175
695d34f8-b2f8-4029-9e22-3596dbc36414	c2773722-a11a-4128-acf1-1c9dff50f8be	429dbe54...	metrics	success	\N	{"month": "2026-06", "revenue": 85543, "ad_spend": 4298.95, "platform": "Meta"}	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	1286fd00-4d4c-40db-961c-63b72e38d8ac	2026-07-01 09:00:32.495198+00	\N	200	2733	54.209.79.175
5f43934f-82db-44ff-bedf-03d65d033a46	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0546559625", "source": "דף נחיתה", "status": "חדש", "full_name": "יעל ביגל"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-01 09:18:32.530222+00	\N	\N	\N	\N
d52640e3-838c-4df6-bd24-78d0eeba6f9d	ef3dbae3-4c0a-48d1-8625-c5eee3991419	bce06f29...	metrics	success	\N	{"month": "2026-06", "platform": "Meta", "sales_count": 16}	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	32351ab5-411c-440c-9bae-70e504d4052f	2026-07-01 10:00:25.786201+00	\N	200	2806	54.161.178.114
274b4d8b-0fd8-43b7-8e6d-0c82f2e46516	ef3dbae3-4c0a-48d1-8625-c5eee3991419	bce06f29...	metrics	success	\N	{"month": "2026-06", "revenue": 52865, "ad_spend": 5268.47, "platform": "Meta"}	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	32351ab5-411c-440c-9bae-70e504d4052f	2026-07-01 10:00:28.908669+00	\N	200	2722	54.161.178.114
cbbba98f-4c3b-4377-a38b-04b40448d610	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "506463628", "source": "Facebook", "status": "חדש", "full_name": "סיון אוזל"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-01 10:42:31.09426+00	\N	200	3157	54.80.47.193
edee2436-8f21-4bf8-a440-62516aca9938	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "", "source": "דף נחיתה", "status": "חדש", "full_name": ""}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-01 11:24:53.905558+00	\N	\N	\N	\N
1227ffa2-1d7f-4930-9fff-abde86b9c57f	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "0542286886", "source": "דף נחיתה", "status": "חדש", "full_name": "עומרי איאש"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-01 12:06:47.69569+00	\N	\N	\N	\N
0b7f9277-5995-4e4c-9b90-8e135141b621	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "544340105", "source": "Facebook", "status": "חדש", "full_name": "Meirav Heimann"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-01 13:57:46.476994+00	\N	200	3476	54.80.47.193
23b8e307-aa20-4486-a48e-6e64ad44fd4c	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "", "phone": "", "source": "דף נחיתה", "status": "חדש", "full_name": ""}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-01 15:52:59.564841+00	\N	\N	\N	\N
d83c8561-1cda-4d78-8265-0edd6839e354	ef3dbae3-4c0a-48d1-8625-c5eee3991419	bce06f29...	metrics	success	\N	{"month": "2026-06", "platform": "Meta", "sales_count": 16}	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	32351ab5-411c-440c-9bae-70e504d4052f	2026-07-01 17:35:03.406891+00	\N	200	5366	54.80.47.193
e650142f-5cae-47e3-95f0-6f94c5876d92	ef3dbae3-4c0a-48d1-8625-c5eee3991419	bce06f29...	metrics	success	\N	{"month": "2026-06", "revenue": 52865, "ad_spend": 5268.49, "platform": "Meta"}	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	32351ab5-411c-440c-9bae-70e504d4052f	2026-07-01 17:35:08.662596+00	\N	200	3711	54.80.47.193
0fb744fc-df0d-46f3-9279-103ec20af1d1	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "523444242", "source": "Facebook", "status": "חדש", "full_name": "Alona Perez"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-01 18:04:42.760555+00	\N	200	2835	54.209.79.175
996a7a7a-c5e5-435f-836c-fcbe2c44b56d	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0545842432", "source": "דף נחיתה", "status": "חדש", "full_name": "אביחי ביגל"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-02 13:18:16.298197+00	\N	\N	\N	\N
211ca1b6-d069-4407-9145-6ea9375d6a54	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0502622112", "source": "דף נחיתה", "status": "חדש", "full_name": "אילנית נסיבוב"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-02 13:22:23.663396+00	\N	\N	\N	\N
704b711e-959d-4408-ac9b-a6763561a47e	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "507211185", "source": "Facebook", "status": "חדש", "full_name": "איטה רוט"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-02 13:47:48.66192+00	\N	200	3503	54.80.47.193
db10733f-2d64-461e-9bba-e9ace421ff17	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : סטודנט/ית", "phone": "0558823420", "source": "דף נחיתה", "status": "חדש", "full_name": "שירן קפלן"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-02 16:07:21.158834+00	\N	\N	\N	\N
af1b60ee-1f7e-4e24-aad9-487c81338da8	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"email": "adibar700@gmail.com", "notes": "", "phone": "508447818", "source": "Facebook", "status": "חדש", "full_name": "Adi Baruch"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-02 19:38:41.296825+00	\N	\N	\N	\N
ae5e5cba-1118-4996-9981-e29bfb90f967	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"email": "limimor38@gmail.com", "notes": "", "phone": "503999688", "source": "Facebook", "status": "חדש", "full_name": "לימור כהןמ"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-03 04:42:29.232795+00	\N	\N	\N	\N
139602e9-5dab-4a52-a7fc-65b8069680c5	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "527855009", "source": "Facebook", "status": "חדש", "full_name": "ופאא ששתאווי"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-03 04:58:10.44829+00	\N	200	3746	54.161.178.114
832fc049-0c31-427f-933a-79197fc4de11	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"email": "ypyttys@gmail.com", "notes": "", "phone": "525931415", "source": "Facebook", "status": "חדש", "full_name": "יפית מרנדה"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-03 06:17:35.552085+00	\N	\N	\N	\N
84c9db93-b9d4-4a34-b010-11c4265874de	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"email": "maayan110404@walla.co.il", "notes": "", "phone": "545654782", "source": "Facebook", "status": "חדש", "full_name": "מעיין ביטון"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-03 09:27:40.483062+00	\N	\N	\N	\N
59f48d5f-d08c-4579-9d7f-d2e03d96b686	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"email": "ctefani200503@gmail.com", "notes": "", "phone": "528854055", "source": "Facebook", "status": "חדש", "full_name": "Катерина Нафтали"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-03 17:30:41.072256+00	\N	\N	\N	\N
53e57ffb-399c-437d-9cd7-52dcd1198c4d	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "543963551", "source": "Facebook", "status": "חדש", "full_name": "Aryella Gutman"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-03 18:28:08.228468+00	\N	200	3251	54.161.178.114
f87906eb-dcaa-46d3-b8a4-2e4eef3e7c81	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : סטודנט/ית", "phone": "0503688885", "source": "דף נחיתה", "status": "חדש", "full_name": "לישי"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-03 22:19:06.089404+00	\N	\N	\N	\N
1d181fb7-fbd0-43e4-96e9-0079d1432923	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0528055093", "source": "דף נחיתה", "status": "חדש", "full_name": "אליס הימן"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-04 04:10:15.324478+00	\N	\N	\N	\N
ee181775-4aa7-430a-86d2-c93f889038cd	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "539591217", "source": "Facebook", "status": "חדש", "full_name": "חגית דהן כרמלי"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-04 14:03:35.98583+00	\N	200	2575	54.161.178.114
d67074d9-a0a7-4e82-bc06-3eeee09cc7e1	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : מבוגר/ת", "phone": "0544660175", "source": "דף נחיתה", "status": "חדש", "full_name": "רותם חוברה"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-04 21:41:51.669053+00	\N	\N	\N	\N
95efebe3-d7c7-484f-9fbb-8732d8abcf5a	c2773722-a11a-4128-acf1-1c9dff50f8be	429dbe54...	metrics	success	\N	{"month": "2026-07", "platform": "Meta", "sales_count": 7}	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	1286fd00-4d4c-40db-961c-63b72e38d8ac	2026-07-05 07:00:28.065743+00	\N	200	2735	54.209.79.175
fc2b4a11-563e-4d57-9335-c89701ea2e33	ef3dbae3-4c0a-48d1-8625-c5eee3991419	bce06f29...	metrics	success	\N	{"month": "2026-07", "platform": "Meta", "sales_count": 3}	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	32351ab5-411c-440c-9bae-70e504d4052f	2026-07-05 07:00:28.802981+00	\N	200	3300	54.161.178.114
f0b8adb6-941e-4c1f-a42b-00660ab44d43	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0527694548", "source": "דף נחיתה", "status": "חדש", "full_name": "אורה אסרף"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-05 07:00:35.102157+00	\N	\N	\N	\N
703e53be-7405-451d-b5ce-ee48b1c333be	b838c315-89ca-4c83-a262-9658a212fd57	db97da22...	metrics	success	\N	{"month": "2026-07", "clicks": 379, "ad_spend": 1512, "platform": "Google ads", "impressions": 2618, "leads_count": 66, "cost_per_lead": 22}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-05 09:00:12.029+00	\N	200	2541	54.80.47.193
2bb94e94-1bdb-4495-9a50-3f9d8bfa2aec	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0509550024", "source": "דף נחיתה", "status": "חדש", "full_name": "איליה"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-05 09:19:22.91067+00	\N	\N	\N	\N
6fe1e873-bd6a-44e9-add5-549e7484958d	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0528262678", "source": "דף נחיתה", "status": "חדש", "full_name": "שלומי מולוקנדוב"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-05 10:13:42.562781+00	\N	\N	\N	\N
71fe35f2-350a-49be-8adc-0d87e092314c	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0526077050", "source": "דף נחיתה", "status": "חדש", "full_name": "שרה דרעי"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-05 10:17:27.77894+00	\N	\N	\N	\N
de6a31cc-9866-411f-a059-0a771bc1bf29	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0533216899", "source": "דף נחיתה", "status": "חדש", "full_name": "דבורי שטיינברג"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-05 12:15:54.577519+00	\N	\N	\N	\N
310d60ca-42b4-4595-868f-4deaa32ad765	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : מבוגר/ת", "phone": "0544624488", "source": "דף נחיתה", "status": "חדש", "full_name": "קרן הודס"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-06 07:08:15.080022+00	\N	\N	\N	\N
3741ae88-cd8d-4079-a4e8-5a595760d8ef	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0507969999", "source": "דף נחיתה", "status": "חדש", "full_name": "AHARON SABAG"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-06 10:20:59.799151+00	\N	\N	\N	\N
2715519c-f4c4-4768-82e2-3f4fa273d0b7	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : מבוגר/ת", "phone": "0522507995", "source": "דף נחיתה", "status": "חדש", "full_name": "אביבה גונן"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-06 10:24:25.739269+00	\N	\N	\N	\N
307174c9-7e53-45a0-bf49-7347fc9fc55f	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0545842432", "source": "דף נחיתה", "status": "חדש", "full_name": "אביחי ביגל"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-06 13:41:37.223748+00	\N	\N	\N	\N
a65f2549-2f59-46af-a15c-6a5b0bcc07fb	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : מבוגר/ת", "phone": "0537377072", "source": "דף נחיתה", "status": "חדש", "full_name": "Anastasia Zilber"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-06 16:09:25.366966+00	\N	\N	\N	\N
5033d518-f562-424f-be56-c9fe21ceba9a	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "536228518", "source": "Facebook", "status": "חדש", "full_name": "שירן"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-06 22:05:24.246344+00	\N	200	3592	54.161.178.114
2138ca31-4bb1-4ef1-9e67-fe17132b5703	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"email": "nettaefratlevy@gmail.com", "notes": "", "phone": "533039595", "source": "Facebook", "status": "חדש", "full_name": "נטעאפרת"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-07 02:02:51.927126+00	\N	\N	\N	\N
05b3cb4d-7da9-478b-a2d1-2d569b66369f	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0558818080", "source": "דף נחיתה", "status": "חדש", "full_name": "גפן עוזיאל"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-07 04:31:00.856962+00	\N	\N	\N	\N
1ea265e1-0afc-4b90-9381-7ac1979c37e2	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0545423852", "source": "דף נחיתה", "status": "חדש", "full_name": "אלישבע סרור"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-07 10:50:40.741417+00	\N	\N	\N	\N
93d638af-b426-4242-9ff5-787d0cf671e6	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : מבוגר/ת", "phone": "0545423852", "source": "דף נחיתה", "status": "חדש", "full_name": "אלישבע סרור"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-07 10:50:48.028293+00	\N	\N	\N	\N
4f8e95de-92df-47cb-a283-e3b999851150	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "545373990", "source": "Facebook", "status": "חדש", "full_name": "אלישבע"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-07 13:29:56.673533+00	\N	200	3746	54.209.79.175
6f4e9919-b185-485f-9dd1-3f9a2c355572	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0542430004", "source": "דף נחיתה", "status": "חדש", "full_name": "גלית ראם רחמים"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-07 15:20:29.761365+00	\N	\N	\N	\N
0b59d0bf-9161-4505-8210-bc869612fd19	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "054-7794461", "source": "דף נחיתה", "status": "חדש", "full_name": "ארי נהרי"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-08 08:33:38.786975+00	\N	\N	\N	\N
9df8a5cf-fdbb-44f2-89d1-4eacaa08d016	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ", "phone": "0585502147", "source": "דף נחיתה", "status": "חדש", "full_name": "אולגה דאין דאין"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-08 10:29:12.197046+00	\N	\N	\N	\N
0394e4e5-eaab-4d80-8d82-6f358a245a19	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : מבוגר/ת", "phone": "0528677796", "source": "דף נחיתה", "status": "חדש", "full_name": "אפרת כפרי"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-08 10:57:57.254305+00	\N	\N	\N	\N
ca591849-d463-44c0-ae43-966d9af08150	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : סטודנט/ית", "phone": "0542476007", "source": "דף נחיתה", "status": "חדש", "full_name": "נוי דן"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-08 11:37:10.386978+00	\N	\N	\N	\N
81e0e0ae-af43-4f90-b5e6-351661bb272f	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : מבוגר/ת", "phone": "0549119097", "source": "דף נחיתה", "status": "חדש", "full_name": "אורן טל"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-08 11:39:29.813732+00	\N	\N	\N	\N
d4dd0733-062f-45ea-90f1-82d8a599b3fc	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0506460071", "source": "דף נחיתה", "status": "חדש", "full_name": "ויקטוריה ישייב"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-08 14:31:09.254391+00	\N	\N	\N	\N
4287ff01-f1d1-4a14-bcf1-0d73a5bda1b9	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0525253735", "source": "דף נחיתה", "status": "חדש", "full_name": "צילה"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-08 15:39:11.745035+00	\N	\N	\N	\N
e982b9ca-f34b-456a-80af-d5bbed861ed3	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0533336624", "source": "דף נחיתה", "status": "חדש", "full_name": "רווית"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-09 14:49:37.580674+00	\N	\N	\N	\N
447ea144-2585-4e26-bba4-bcfe5d8a2d49	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0524641951", "source": "דף נחיתה", "status": "חדש", "full_name": "ולרי"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-10 09:16:39.164075+00	\N	\N	\N	\N
d0adad0f-135e-44ca-8abf-6a23443f94ed	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : מבוגר/ת", "phone": "0547420063", "source": "דף נחיתה", "status": "חדש", "full_name": "בנימין זאב נודלמן"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-10 10:47:24.264909+00	\N	\N	\N	\N
0c3cfc5c-fdd0-4b10-8edf-8856d01b1d4b	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "525285618", "source": "Facebook", "status": "חדש", "full_name": "אוריה"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-10 11:04:05.464097+00	\N	200	3108	54.161.178.114
d0fff1ef-abbc-490e-8571-915e6de18c36	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "503189813", "source": "Facebook", "status": "חדש", "full_name": "מקס דרקין"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-10 13:42:46.112594+00	\N	200	3294	54.80.47.193
c932bcc7-c4ab-4b4c-9aff-89015d26c5a7	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : מבוגר/ת", "phone": "0587703647", "source": "דף נחיתה", "status": "חדש", "full_name": "חיה דינה עבאדי"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-10 15:20:58.172698+00	\N	\N	\N	\N
ca814ca9-286f-41d8-831a-ab5605a463b8	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "523463170", "source": "Facebook", "status": "חדש", "full_name": "Guy Shoval0523463170"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-10 18:10:46.515905+00	\N	200	3313	54.161.178.114
1b25da27-b385-4d0c-9e5a-1ec4533c216c	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : מבוגר/ת", "phone": "0542010455", "source": "דף נחיתה", "status": "חדש", "full_name": "עמית ארנון"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-10 20:22:26.96201+00	\N	\N	\N	\N
5d11cf10-03f5-4cff-b288-46216f8aca4a	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ", "phone": "0549508899", "source": "דף נחיתה", "status": "חדש", "full_name": "רעות"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-11 05:42:49.805593+00	\N	\N	\N	\N
4c8c5e8d-c14f-4461-9009-e22f8b925f4f	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "528010117", "source": "Facebook", "status": "חדש", "full_name": "𝓮𝓭𝓮𝓷𖣂"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-11 11:24:57.144108+00	\N	200	3324	54.161.178.114
5f2e313b-96b0-4af5-88d8-231d78692a04	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "545411948", "source": "Facebook", "status": "חדש", "full_name": "בוזגלו רווח מירי"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-11 17:00:45.665999+00	\N	200	2598	54.161.178.114
fde81506-11fa-4fcb-a9a3-de0040724192	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0528540599", "source": "דף נחיתה", "status": "חדש", "full_name": "מיכל קהא"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-11 22:16:22.539856+00	\N	\N	\N	\N
60cccaa8-5b45-4b79-905f-b08a0d3dfa3c	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : סטודנט/ית", "phone": "0545069966", "source": "דף נחיתה", "status": "חדש", "full_name": "Itamar Friedman"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-12 00:57:25.713698+00	\N	\N	\N	\N
2d0775b5-be8e-4263-951c-59a12cd659d9	c2773722-a11a-4128-acf1-1c9dff50f8be	429dbe54...	metrics	success	\N	{"month": "2026-07", "platform": "Meta", "sales_count": 16}	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	1286fd00-4d4c-40db-961c-63b72e38d8ac	2026-07-12 07:00:29.053067+00	\N	200	3233	54.161.178.114
422b468c-9680-4937-a7bc-ce3960319cb8	ef3dbae3-4c0a-48d1-8625-c5eee3991419	bce06f29...	metrics	success	\N	{"month": "2026-07", "platform": "Meta", "sales_count": 9}	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	32351ab5-411c-440c-9bae-70e504d4052f	2026-07-12 07:00:29.962348+00	\N	200	4167	54.161.178.114
366fd50f-90e5-4aee-996f-8596f727d140	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0545546114", "source": "דף נחיתה", "status": "חדש", "full_name": "ברטה"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-12 07:19:09.170146+00	\N	\N	\N	\N
b9e511a7-8fe2-49ff-b9f3-440d44f63d00	b838c315-89ca-4c83-a262-9658a212fd57	db97da22...	metrics	success	\N	{"month": "2026-07", "clicks": 521, "ad_spend": 2215, "platform": "Google ads", "impressions": 3987, "leads_count": 93, "cost_per_lead": 23}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-12 09:00:09.099844+00	\N	200	3410	54.161.178.114
da8e0a05-d891-4f81-b1f4-97a4327d5f76	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0507155855", "source": "דף נחיתה", "status": "חדש", "full_name": "קוטב עומר"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-12 10:01:27.828778+00	\N	\N	\N	\N
843929cb-58b6-4e34-88a5-522546d554bd	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "547453055", "source": "Facebook", "status": "חדש", "full_name": "Nella Preger uzana"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-12 10:57:35.822419+00	\N	200	3256	54.209.79.175
7aa260da-e8d4-4c60-9bc4-e8aa5906806c	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0524388551", "source": "דף נחיתה", "status": "חדש", "full_name": "עדי קורינו"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-12 13:34:20.087921+00	\N	\N	\N	\N
d59e225c-f8c7-4741-b0d9-c7e6bbb06fe1	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0549004702", "source": "דף נחיתה", "status": "חדש", "full_name": "יוסי ציקו"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-12 13:39:58.063606+00	\N	\N	\N	\N
c682074b-a143-43c7-93f8-ad46ab79d6a9	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "502728128", "source": "Facebook", "status": "חדש", "full_name": "צופית ברוך"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-12 14:54:35.591839+00	\N	200	3425	54.161.178.114
3c20320c-cb12-4c71-beb8-0e754222f6a9	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "532844608", "source": "Facebook", "status": "חדש", "full_name": "Cindy Mizrahi Lévy"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-12 15:37:05.89849+00	\N	200	3331	54.209.79.175
858d272d-a0fe-46dc-b408-c538367c2dbc	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : מבוגר/ת", "phone": "0545302625", "source": "דף נחיתה", "status": "חדש", "full_name": "יוסי דניס"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-12 18:34:07.308368+00	\N	\N	\N	\N
b01fa161-2820-435c-8343-a446db5574f1	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : מבוגר/ת", "phone": "0506615331", "source": "דף נחיתה", "status": "חדש", "full_name": "נטלי ברייר"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-13 04:47:21.262798+00	\N	\N	\N	\N
d4712738-5006-4562-98f8-fede546f52d9	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "050-7336252", "source": "דף נחיתה", "status": "חדש", "full_name": "גל חדד"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-13 09:38:32.365411+00	\N	\N	\N	\N
70ae3201-fb2b-4318-8432-7581096c090e	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "543099307", "source": "Facebook", "status": "חדש", "full_name": "Sarah Juliana Hason"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-13 11:49:48.863131+00	\N	200	3711	54.209.79.175
e85d08c8-0750-498b-8952-47ab0e806c85	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : מבוגר/ת", "phone": "0536262668", "source": "דף נחיתה", "status": "חדש", "full_name": "עומרי והבה"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-14 10:42:38.225687+00	\N	\N	\N	\N
b849ecfc-3a4f-42c6-bc93-f5a8eae75e74	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : מבוגר/ת", "phone": "0544591911", "source": "דף נחיתה", "status": "חדש", "full_name": "גוני סער רייס"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-15 07:27:43.041177+00	\N	\N	\N	\N
fd46ebef-62b5-46bd-9863-04fdf3d1f557	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : מבוגר/ת", "phone": "0542010455", "source": "דף נחיתה", "status": "חדש", "full_name": "עמית ארנון"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-15 08:02:41.11529+00	\N	\N	\N	\N
4ce4ef85-750e-4216-83bc-10f44fca0354	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0547434839", "source": "דף נחיתה", "status": "חדש", "full_name": "דניאל סדן רפ"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-16 06:37:40.784373+00	\N	\N	\N	\N
e502b84e-5152-4539-bdbb-09bf7e06b1e0	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0552436310", "source": "דף נחיתה", "status": "חדש", "full_name": "מרים טזייב"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-16 07:33:05.329656+00	\N	\N	\N	\N
9759e189-9a87-4319-9db8-043395f3abd6	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : מבוגר/ת", "phone": "0526844496", "source": "דף נחיתה", "status": "חדש", "full_name": "דורון כהן"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-16 12:22:34.645612+00	\N	\N	\N	\N
512668e3-f972-427c-9070-1ada661c8fee	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : סטודנט/ית", "phone": "0522941075", "source": "דף נחיתה", "status": "חדש", "full_name": "רנין"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-17 17:14:31.050097+00	\N	\N	\N	\N
ca780e4e-8763-4522-9339-ab6ccb3d2a66	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0537275504", "source": "דף נחיתה", "status": "חדש", "full_name": "ענת קיבץ"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-17 20:23:13.601985+00	\N	\N	\N	\N
e9e5cff0-53c3-4196-a5b3-045af7830c22	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0542224213", "source": "דף נחיתה", "status": "חדש", "full_name": "עדי גולן"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-18 08:50:35.572847+00	\N	\N	\N	\N
c0204e8a-4b7b-4798-be5d-8b90e0b21d02	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "503511010", "source": "Facebook", "status": "חדש", "full_name": "דנה אדרי"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-18 18:32:50.771149+00	\N	200	3332	54.161.178.114
e74082d3-d1c7-400f-a224-7cd44f80d2dd	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "532343096", "source": "Facebook", "status": "חדש", "full_name": "Lauren Cohen"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-18 18:32:59.754209+00	\N	200	2254	54.209.79.175
74936e27-91f3-4af7-84c2-32d9f79cf3af	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "546996829", "source": "Facebook", "status": "חדש", "full_name": "חוות בניה סוסים"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-18 18:33:08.385379+00	\N	200	2573	54.161.178.114
2e9800f2-3867-455c-ac87-17492ae2d8d7	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "525809595", "source": "Facebook", "status": "חדש", "full_name": "Liron Shtainbach"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-18 18:33:19.911498+00	\N	200	2470	54.209.79.175
84fbf0ad-edc7-47c2-b525-bae7e47f0a56	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "506707078", "source": "Facebook", "status": "חדש", "full_name": "Jan Ramati"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-18 18:33:21.182813+00	\N	200	1377	54.80.47.193
70e46513-8201-4983-864c-183e6c390991	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "515228329", "source": "Facebook", "status": "חדש", "full_name": "שאננה ריד בת ישראל"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-18 18:33:21.412834+00	\N	200	2055	54.161.178.114
3c8ca5e5-5e76-4c71-ab46-95f297e615c7	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "524221632", "source": "Facebook", "status": "חדש", "full_name": "Hani"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-18 18:33:21.816457+00	\N	200	2209	54.209.79.175
8f3edfd8-53b3-453b-b4c0-0b87142dc444	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "538454531", "source": "Facebook", "status": "חדש", "full_name": "מיירן בריקלין"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-18 18:33:28.659465+00	\N	200	9072	54.161.178.114
4e0cdb3f-6e7d-4a4c-83bf-6b67f6811d7c	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "538454531", "source": "Facebook", "status": "חדש", "full_name": "מיירן בריקלין"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-18 18:33:28.922779+00	\N	200	2508	54.161.178.114
7645cd85-4ed7-4286-8892-97494c4a0cc1	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "525809595", "source": "Facebook", "status": "חדש", "full_name": "Liron Shtainbach"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-18 18:33:35.527146+00	\N	200	14621	54.209.79.175
b611aeea-4943-4e99-82c7-74792a8ce8c7	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "506459006", "source": "Facebook", "status": "חדש", "full_name": "ליאת צור"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-18 21:37:59.411878+00	\N	200	3383	54.161.178.114
32528813-c7ce-488a-a9f8-00ddc93c3132	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "992719770", "source": "Facebook", "status": "חדש", "full_name": "Оля Романова"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-18 21:53:09.966582+00	\N	200	2816	54.80.47.193
8956c8e4-5eaf-4821-a487-40f9fcc9e984	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "534323375", "source": "Facebook", "status": "חדש", "full_name": "יפה טוויזר"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-18 22:33:10.386476+00	\N	200	3395	54.209.79.175
c12f9067-1259-4796-8eaa-841f7bea7254	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "537339041", "source": "Facebook", "status": "חדש", "full_name": "רזניצקי נטליה"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-19 01:35:17.457607+00	\N	200	2911	54.161.178.114
007de180-cd4d-4314-bba7-e8bea3db5075	c2773722-a11a-4128-acf1-1c9dff50f8be	429dbe54...	metrics	success	\N	{"month": "2026-07", "platform": "Meta", "sales_count": 23}	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	1286fd00-4d4c-40db-961c-63b72e38d8ac	2026-07-19 07:00:29.555325+00	\N	200	3449	54.161.178.114
5e9a6866-6b4b-4e53-854e-ec537c6d93c8	ef3dbae3-4c0a-48d1-8625-c5eee3991419	bce06f29...	metrics	success	\N	{"month": "2026-07", "platform": "Meta", "sales_count": 15}	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	32351ab5-411c-440c-9bae-70e504d4052f	2026-07-19 07:00:29.886867+00	\N	200	3607	54.80.47.193
3945ec8f-a741-4b9d-bc4e-3c50485c3335	b838c315-89ca-4c83-a262-9658a212fd57	db97da22...	metrics	success	\N	{"month": "2026-07", "clicks": 658, "ad_spend": 2909, "platform": "Google ads", "impressions": 5313, "leads_count": 107, "cost_per_lead": 27}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-19 09:00:08.332152+00	\N	200	2572	54.161.178.114
8d1f6a43-66cd-44c0-8332-b31431828c8b	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0506242870", "source": "דף נחיתה", "status": "חדש", "full_name": "ליאורה סטודנטסקי"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-19 09:22:49.707123+00	\N	\N	\N	\N
62cd2d00-7e85-4bda-b048-061f28df03f7	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : סטודנט/ית", "phone": "0549777307", "source": "דף נחיתה", "status": "חדש", "full_name": "יעל פאוקטיסטוב"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-19 10:02:32.001449+00	\N	\N	\N	\N
7548f268-3702-4bd3-881b-26b50344a342	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0546477482", "source": "דף נחיתה", "status": "חדש", "full_name": "אנה צוקרמן"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-19 12:08:28.12526+00	\N	\N	\N	\N
cd5f4dd9-c1b8-422d-8825-63f24dddff0e	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "544242018", "source": "Facebook", "status": "חדש", "full_name": "Molly Slavin Maimon"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-19 12:14:03.809378+00	\N	200	3356	54.209.79.175
864098af-d723-41d1-9ca7-a0238cc278e5	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "537534212", "source": "Facebook", "status": "חדש", "full_name": "שני דורני"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-20 10:07:48.381841+00	\N	200	3365	54.161.178.114
ddce94bd-b1c6-44bf-b89a-4d69240c4276	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0546532523", "source": "דף נחיתה", "status": "חדש", "full_name": "טטרו שמואל"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-20 10:24:56.333405+00	\N	\N	\N	\N
7da85817-ea76-4730-bfd4-696de0eee278	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0549004702", "source": "דף נחיתה", "status": "חדש", "full_name": "יוסי ציקו"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-20 15:02:52.876396+00	\N	\N	\N	\N
4fe9f5c5-49e5-4dbf-95b0-cdf86475a463	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0502228014", "source": "דף נחיתה", "status": "חדש", "full_name": "סבריה אבו שהאב"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-20 17:05:19.036092+00	\N	\N	\N	\N
ffbdbefe-125b-4b64-a24c-776f94c85b1b	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "542890263", "source": "Facebook", "status": "חדש", "full_name": "Mikaamar"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-20 20:52:28.855959+00	\N	200	3315	54.209.79.175
8d623cab-87a9-4e7a-87de-b3429ff9e0e5	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"email": "shlomocohen71@gmail.com", "notes": "", "phone": "522053163", "source": "Facebook", "status": "חדש", "full_name": "איריס כהן"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-21 04:29:47.949729+00	\N	\N	\N	\N
74db9425-0ca5-4087-a93f-6dcaa4baa97b	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "544505351", "source": "Facebook", "status": "חדש", "full_name": "גל אורן"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-21 06:42:24.484077+00	\N	200	2327	54.209.79.175
bdffcff6-ff0f-4adc-9fa3-4e0169ba9769	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "522284148", "source": "Facebook", "status": "חדש", "full_name": "Clara Rossia Raban"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-21 07:04:27.994415+00	\N	200	3098	54.161.178.114
23e779b9-7bf7-4415-ab98-a2740e3e46ed	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"email": "Khouryizabell@gmail.com", "notes": "", "phone": "532289338", "source": "Facebook", "status": "חדש", "full_name": "איזבל"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-21 11:18:46.815818+00	\N	\N	\N	\N
f301a323-13ea-4992-8e05-fc7b8ec150c8	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "535254248", "source": "Facebook", "status": "חדש", "full_name": "Yosef Hason"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-21 18:16:23.375936+00	\N	200	4115	54.161.178.114
aa96ee64-eb58-4e28-a90d-7a252a07951a	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "526072229", "source": "Facebook", "status": "חדש", "full_name": "נריה חדד"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-22 06:20:24.057354+00	\N	200	4138	54.209.79.175
257d7ea2-3dbb-4d21-9a01-05a60077d4a6	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0545364963", "source": "דף נחיתה", "status": "חדש", "full_name": "חופית"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-22 07:36:34.271414+00	\N	\N	\N	\N
43370ffa-9b1f-4fb8-a864-0eaed2be65a7	c3b8ad43-f33a-4f89-b521-826fbaa00169	d409902c...	lead	success	\N	{"email": "hilab1979@gmail.com", "notes": " רשתות יונים", "phone": "0525282890 ", "source": "טופס באתר", "status": "חדש", "full_name": ": הילה לביא"}	8f21c002-2efd-4224-ac09-47432a41923d	5fb4e556-2df8-4c32-a693-c7bae38af54b	2026-07-22 12:11:56.824671+00	\N	\N	\N	\N
56b1e596-963a-47d6-b301-37b57eeabec0	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "508232249", "source": "Facebook", "status": "חדש", "full_name": "רועי חוברה"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-22 17:23:58.675645+00	\N	200	3352	54.161.178.114
b057fb5a-dcb2-4caf-9345-f85896a38447	c3b8ad43-f33a-4f89-b521-826fbaa00169	d409902c...	lead	success	\N	{"email": "talbar26@gmail.com", "notes": " רשתות יונים", "phone": "0544431312 ", "source": "טופס באתר", "status": "חדש", "full_name": ": טל בר"}	8f21c002-2efd-4224-ac09-47432a41923d	5fb4e556-2df8-4c32-a693-c7bae38af54b	2026-07-22 17:27:12.419121+00	\N	\N	\N	\N
10a6fa88-3318-4719-933f-efa987d0a71d	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "528820270", "source": "Facebook", "status": "חדש", "full_name": "בתאל עמוס"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-23 06:21:37.55988+00	\N	200	2822	54.161.178.114
5ac4e1a2-9c15-4f43-a1ef-e8eff86b09e8	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : מבוגר/ת", "phone": "0528596561", "source": "דף נחיתה", "status": "חדש", "full_name": "מריה"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-23 14:36:01.138459+00	\N	\N	\N	\N
11997d44-2f68-4550-97e0-69af6f8b2ea0	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "527020650", "source": "Facebook", "status": "חדש", "full_name": "חן עזרן"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-23 21:58:48.041129+00	\N	200	3299	54.80.47.193
faf4506e-f0e0-452b-b2dc-1fe794a65533	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "506569150", "source": "Facebook", "status": "חדש", "full_name": "Eva Hamama"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-24 03:42:27.041172+00	\N	200	2896	54.80.47.193
40375aa5-4f3d-4ba6-98bf-dcd536608e6a	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "504300653", "source": "Facebook", "status": "חדש", "full_name": "Ismael Ghnam"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-24 08:06:05.6137+00	\N	200	2766	54.161.178.114
f357955c-5b82-4392-9d21-9b9009707744	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : מבוגר/ת", "phone": "05251561222", "source": "דף נחיתה", "status": "חדש", "full_name": "תמר נצר"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-24 09:07:47.384051+00	\N	\N	\N	\N
b3b2a919-b91e-4078-a438-c42dd895c368	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "526664997", "source": "Facebook", "status": "חדש", "full_name": "סיגל אילת"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-25 06:13:11.959915+00	\N	200	2224	54.80.47.193
034f6bf2-2afe-467a-a47b-88d6c3ed7384	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "546804646", "source": "Facebook", "status": "חדש", "full_name": "Omnia Alhozail"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-25 11:55:14.028215+00	\N	200	2859	54.161.178.114
ea33187a-22c5-483c-a97b-44c8722af00c	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0542297032", "source": "דף נחיתה", "status": "חדש", "full_name": "סיניה בן שושן"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-26 06:00:14.63857+00	\N	\N	\N	\N
66c13659-2683-41f1-9109-74786bf13d2a	ef3dbae3-4c0a-48d1-8625-c5eee3991419	bce06f29...	metrics	success	\N	{"month": "2026-07", "platform": "Meta", "sales_count": 22}	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	32351ab5-411c-440c-9bae-70e504d4052f	2026-07-26 07:00:27.488086+00	\N	200	2881	54.209.79.175
59eb58e2-7040-4ce7-b1f5-cff76989d9df	c2773722-a11a-4128-acf1-1c9dff50f8be	429dbe54...	metrics	success	\N	{"month": "2026-07", "platform": "Meta", "sales_count": 33}	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	1286fd00-4d4c-40db-961c-63b72e38d8ac	2026-07-26 07:00:28.525542+00	\N	200	3428	54.161.178.114
549e74f0-0412-4af6-bc57-e0c979774611	b838c315-89ca-4c83-a262-9658a212fd57	db97da22...	metrics	success	\N	{"month": "2026-07", "clicks": 740, "ad_spend": 3496, "platform": "Google ads", "impressions": 6049, "leads_count": 114, "cost_per_lead": 30}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-26 09:00:06.251389+00	\N	200	2214	54.209.79.175
988a84e6-1d37-42cf-b8d4-bcddd2072ef1	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "6135515150", "source": "Facebook", "status": "חדש", "full_name": "אלה ווזאנה"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-26 14:58:28.990855+00	\N	200	2766	54.209.79.175
201e49b4-ef4e-415e-bbae-61655d15d80b	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "555569809", "source": "Facebook", "status": "חדש", "full_name": "ליאת טלקר פרץ"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-26 16:19:59.596007+00	\N	200	2409	54.209.79.175
6bfc0698-5867-41e8-92e8-802f44fd6f74	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0509561771", "source": "דף נחיתה", "status": "חדש", "full_name": "נופר ברוג"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-27 07:17:38.993203+00	\N	\N	\N	\N
9a6ebbc9-2676-4d1d-b298-86eb236923c4	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "538686008", "source": "Facebook", "status": "חדש", "full_name": "Eden Haspel"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-27 08:04:37.592661+00	\N	200	3419	54.209.79.175
1bdec9d2-f479-404c-b65d-bdce882854e1	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "549115212", "source": "Facebook", "status": "חדש", "full_name": "חנה קטמאו"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-27 23:20:31.064874+00	\N	200	2610	54.80.47.193
9085a8f5-0178-42f3-9a7f-261764371f79	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "542402011", "source": "Facebook", "status": "חדש", "full_name": "שרוק גבלי"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-28 07:34:30.616192+00	\N	200	3300	54.209.79.175
984ea5dc-31cc-4a01-bc3d-564f7bb6b406	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "524449136", "source": "Facebook", "status": "חדש", "full_name": "נטליה"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-28 11:37:59.71347+00	\N	200	2831	54.80.47.193
01e4356b-91a4-4380-958e-c80579b36cde	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "547391641", "source": "Facebook", "status": "חדש", "full_name": "Amir khoury"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-28 16:31:26.755647+00	\N	200	3346	54.80.47.193
f392ccdb-48c0-4a79-b095-1c4f42672207	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "506863035", "source": "Facebook", "status": "חדש", "full_name": "שחף טליאס || 𝐒𝐡𝐚𝐡𝐚𝐟 𝐓𝐞𝐥𝐢𝐚𝐬"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-29 04:46:58.90537+00	\N	200	2163	54.209.79.175
435ea874-cbb0-4e5e-800f-fb5d8fb3dc77	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "505735461", "source": "Facebook", "status": "חדש", "full_name": "אירית דימר אזרזר"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-29 07:35:52.619387+00	\N	200	1902	54.209.79.175
88e92340-d834-4807-8c4c-3bc9894ff99b	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "524668643", "source": "Facebook", "status": "חדש", "full_name": "Yam Mashiah"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-29 09:01:20.522768+00	\N	200	2826	54.209.79.175
5bc7c86c-ebe9-443a-81fb-5ba6fef10764	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ", "phone": "0504818648", "source": "דף נחיתה", "status": "חדש", "full_name": "מעין גבאי"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-30 01:25:47.965702+00	\N	\N	\N	\N
f83ea238-f936-4743-8f27-669adb4d1665	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0522209980", "source": "דף נחיתה", "status": "חדש", "full_name": "אלינור איגנטוב"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-30 07:12:44.641799+00	\N	\N	\N	\N
dbc1b9f0-367c-4491-9e4c-b9a600afc960	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0528285350", "source": "דף נחיתה", "status": "חדש", "full_name": "דנה ששון"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-30 10:16:19.347436+00	\N	\N	\N	\N
be8e96e2-b2cf-440a-9b9b-49e8ddbe9711	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : מבוגר/ת", "phone": "0545924014", "source": "דף נחיתה", "status": "חדש", "full_name": "נועם עציון"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-30 10:50:10.143878+00	\N	\N	\N	\N
44cd1afa-e7fd-4094-a3c0-6c8d501f8c99	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : סטודנט/ית", "phone": "0524261249", "source": "דף נחיתה", "status": "חדש", "full_name": "אניה"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-30 12:09:11.522251+00	\N	\N	\N	\N
da6f4fe9-5e28-4701-a1c4-96c458599d22	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0544671387", "source": "דף נחיתה", "status": "חדש", "full_name": "שלהבת לוי"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-30 12:35:34.531516+00	\N	\N	\N	\N
2cb3c6fa-fb0c-45fe-afc7-4a3902479722	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : מבוגר/ת", "phone": "0545924014", "source": "דף נחיתה", "status": "חדש", "full_name": "נועם עציון"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-30 13:11:08.859604+00	\N	\N	\N	\N
252cff6c-f90e-4ea8-b5fd-489fe645cc31	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "546283802", "source": "Facebook", "status": "חדש", "full_name": "Olga Verlinsky"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-30 17:27:51.306435+00	\N	200	2829	54.161.178.114
b746ee57-7ec7-4dd0-b7f9-eb44e095c3da	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "524815506", "source": "Facebook", "status": "חדש", "full_name": "sʜɪʀᴀᴢ"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-31 03:53:50.418689+00	\N	200	2462	54.161.178.114
ceac54cf-d1a7-418c-9c19-8d33a7db98c1	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : מבוגר/ת", "phone": "0503331712", "source": "דף נחיתה", "status": "חדש", "full_name": "קובי בן חמו"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-07-31 04:42:03.217939+00	\N	\N	\N	\N
ed051504-70c7-4044-a437-a4ea2abfda5c	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "537253672", "source": "Facebook", "status": "חדש", "full_name": "Meital Zano"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-31 09:18:07.464639+00	\N	200	2429	54.161.178.114
be636225-6471-4b4b-88f6-f9146eecb6d9	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "508811604", "source": "Facebook", "status": "חדש", "full_name": "רותם ס"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-31 11:45:48.081488+00	\N	200	2724	54.161.178.114
a3641036-3ee7-4b33-b52d-5f49ec843c82	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "547681362", "source": "Facebook", "status": "חדש", "full_name": "קירשמן יאנה"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-07-31 16:36:26.129601+00	\N	200	6488	54.80.47.193
bbe1c1b0-2a01-4850-81fa-38e48f669107	c2773722-a11a-4128-acf1-1c9dff50f8be	429dbe54...	metrics	success	\N	{"month": "2026-07", "platform": "Meta", "sales_count": 37}	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	1286fd00-4d4c-40db-961c-63b72e38d8ac	2026-08-01 09:00:32.05969+00	\N	200	2993	54.80.47.193
d9332cbb-073b-4675-a14b-75a55954b04b	c2773722-a11a-4128-acf1-1c9dff50f8be	429dbe54...	metrics	success	\N	{"month": "2026-07", "revenue": 102790, "ad_spend": 4442.44, "platform": "Meta"}	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	1286fd00-4d4c-40db-961c-63b72e38d8ac	2026-08-01 09:00:35.222781+00	\N	200	2414	54.80.47.193
839915bd-7fc9-471a-a47b-625a031ead79	ef3dbae3-4c0a-48d1-8625-c5eee3991419	bce06f29...	metrics	success	\N	{"month": "2026-07", "platform": "Meta", "sales_count": 25}	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	32351ab5-411c-440c-9bae-70e504d4052f	2026-08-01 10:00:29.551522+00	\N	200	3723	54.80.47.193
27a676ef-161d-4b12-8fa4-9dae1d72fa69	ef3dbae3-4c0a-48d1-8625-c5eee3991419	bce06f29...	metrics	success	\N	{"month": "2026-07", "revenue": 78343, "ad_spend": 6643.34, "platform": "Meta"}	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	32351ab5-411c-440c-9bae-70e504d4052f	2026-08-01 10:00:33.604864+00	\N	200	3224	54.80.47.193
0ffc3bd2-df2b-48ff-b9ba-beb6b6337ed9	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0505230674", "source": "דף נחיתה", "status": "חדש", "full_name": "קארין צימט"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-08-01 14:48:52.154+00	\N	\N	\N	\N
5162883e-626f-4930-835d-39886a00d701	c2773722-a11a-4128-acf1-1c9dff50f8be	429dbe54...	metrics	success	\N	{"month": "2026-08", "platform": "Meta", "sales_count": 2}	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	1286fd00-4d4c-40db-961c-63b72e38d8ac	2026-08-02 07:00:25.058743+00	\N	200	2598	54.80.47.193
7d353038-b055-4470-9e77-b2f7374142aa	ef3dbae3-4c0a-48d1-8625-c5eee3991419	bce06f29...	metrics	success	\N	{"month": "2026-08", "platform": "Meta", "sales_count": 1}	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	32351ab5-411c-440c-9bae-70e504d4052f	2026-08-02 07:00:30.040779+00	\N	200	3009	54.161.178.114
4bf793d5-416a-4096-a583-3af1be611443	b838c315-89ca-4c83-a262-9658a212fd57	db97da22...	metrics	success	\N	{"month": "2026-08", "clicks": 800, "ad_spend": 3827, "platform": "Google ads", "impressions": 6702, "leads_count": 123, "cost_per_lead": 31}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-08-02 09:00:08.04362+00	\N	200	2946	54.161.178.114
71517474-8170-4fbf-b30b-2d7d2470486e	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : מבוגר/ת", "phone": "0552783155", "source": "דף נחיתה", "status": "חדש", "full_name": "עלמה גלאון"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-08-02 15:31:42.127896+00	\N	\N	\N	\N
16d8f331-42dd-4a90-96bb-0e80a49d576b	c2773722-a11a-4128-acf1-1c9dff50f8be	429dbe54...	metrics	success	\N	{"month": "2026-07", "platform": "Meta", "sales_count": 37}	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	1286fd00-4d4c-40db-961c-63b72e38d8ac	2026-08-03 06:10:24.855061+00	\N	200	2446	54.80.47.193
0fa99504-6248-4d0a-980e-a5e6b9207185	c2773722-a11a-4128-acf1-1c9dff50f8be	429dbe54...	metrics	success	\N	{"month": "2026-07", "revenue": 102790, "ad_spend": 4442.76, "platform": "Meta"}	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	1286fd00-4d4c-40db-961c-63b72e38d8ac	2026-08-03 06:10:28.351917+00	\N	200	2713	54.80.47.193
706b974a-2a6e-4e59-93a4-7ae9426971f1	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ילד /ילדה", "phone": "0522501108", "source": "דף נחיתה", "status": "חדש", "full_name": "תומר צאיק"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-08-03 16:56:41.57079+00	\N	\N	\N	\N
b2a98637-2655-4088-86b5-4cdabef1e7e5	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "524776483", "source": "Facebook", "status": "חדש", "full_name": "מאיה כהן"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-04 04:00:25.033795+00	\N	200	2849	54.161.178.114
837660c2-d1f8-42a6-96f9-5409d5603e66	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : מבוגר/ת", "phone": "0508710102", "source": "דף נחיתה", "status": "חדש", "full_name": "זלצר חגית"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-08-04 10:55:41.332438+00	\N	\N	\N	\N
b2e1efc3-cf46-4b94-87ea-d4580092bf8b	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "544747786", "source": "Facebook", "status": "חדש", "full_name": "ילנה ברין"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-04 20:37:01.785469+00	\N	200	3250	54.80.47.193
e9efd4ab-be87-4292-b4b7-e7822155d7ce	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : מבוגר/ת", "phone": "0544544934", "source": "דף נחיתה", "status": "חדש", "full_name": "אליחי מאיקס"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-08-04 21:01:52.239652+00	\N	\N	\N	\N
b28000de-a8e7-40fe-8b7c-31862716fd2d	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : סטודנט/ית", "phone": "0526160858", "source": "דף נחיתה", "status": "חדש", "full_name": "סרבינוז"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-08-04 21:13:36.170748+00	\N	\N	\N	\N
eb743423-2a8c-4408-bd8c-81ff2592b7e7	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "537082710", "source": "Facebook", "status": "חדש", "full_name": "Nurit Lebar"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 03:33:38.204294+00	\N	200	2908	54.209.79.175
a18941ca-dfd5-4318-804b-b88e4232d8be	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : מבוגר/ת", "phone": "0502224777", "source": "דף נחיתה", "status": "חדש", "full_name": "איריס ליברמן"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-08-05 06:54:06.3319+00	\N	\N	\N	\N
1341837a-fd3f-4ef3-9c9a-3e34c096a2b2	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : מבוגר/ת", "phone": "0549849196", "source": "דף נחיתה", "status": "חדש", "full_name": "בדיקה גל"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-08-05 07:10:29.279001+00	\N	\N	\N	\N
364bee63-839f-4fbe-9ee0-0bde27564da2	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "506342152", "source": "Facebook", "status": "חדש", "full_name": "Lea Naouri Simeoni"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 15:36:43.761772+00	\N	200	1978	54.161.178.114
9f4a2dfe-98d8-4bfe-922d-c03c3d74087a	40caef26-bba8-46aa-87ef-717da2cd4222	3283bf03...	lead	success	\N	{"notes": "עבור : ", "phone": "2", "source": "דף נחיתה", "status": "חדש", "full_name": "2"}	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b	800b0aec-5843-4002-a897-4d5827bd22b0	2026-08-05 16:01:04.254863+00	\N	\N	\N	\N
4cb5d3c5-a7b6-40ec-a1fc-82c886e533a9	82d80633-57a8-4ff4-a14b-ccd729d57a82	c76aab20...	lead	success	\N	{"email": "", "notes": "", "phone": "525344510", "source": "Facebook", "status": "חדש", "full_name": "Galit Cohen"}	202abebc-93a9-4fb9-926a-8c7677282aca	425385ec-6f88-459c-a25e-abc8627ba78e	2026-08-05 19:09:01.198966+00	\N	200	2502	54.161.178.114
7230fe40-91a0-46f9-954d-8fa2bc9884d9	40aedf2b-30a3-49a1-8146-4423b4a9a04a	4a9240a7...	metrics	success	\N	{"month": "2026-08", "clicks": 132, "ad_spend": 355, "platform": "Google Ads", "impressions": 694, "leads_count": 56, "cost_per_lead": 6}	202abebc-93a9-4fb9-926a-8c7677282aca	45942137-54f7-4fd1-8227-472c92c86933	2026-08-05 20:38:37.650101+00	\N	\N	\N	\N
94acbf0b-31fc-4fc6-859e-9ee308d843ac	c3b8ad43-f33a-4f89-b521-826fbaa00169	d409902c...	metrics	success	\N	{"month": "2026-08", "clicks": 93, "ad_spend": 455, "platform": "Google Ads", "impressions": 2670, "leads_count": 1, "cost_per_lead": 455}	8f21c002-2efd-4224-ac09-47432a41923d	5fb4e556-2df8-4c32-a693-c7bae38af54b	2026-08-05 21:10:22.81394+00	\N	\N	\N	\N
df1b1439-5737-4ff6-b86c-37845826298b	c3b8ad43-f33a-4f89-b521-826fbaa00169	d409902c...	metrics	success	\N	{"month": "2026-07", "clicks": 111, "ad_spend": 1211, "platform": "Google Ads", "impressions": 2129, "leads_count": 10, "cost_per_lead": 121}	8f21c002-2efd-4224-ac09-47432a41923d	5fb4e556-2df8-4c32-a693-c7bae38af54b	2026-08-05 21:13:25.578916+00	\N	\N	\N	\N
5a66a0cd-eba1-489a-8234-1539bc523046	c2773722-a11a-4128-acf1-1c9dff50f8be	429dbe54...	metrics	success	\N	{"month": "2026-08", "platform": "Meta", "sales_count": 5}	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	1286fd00-4d4c-40db-961c-63b72e38d8ac	2026-08-05 21:25:10.197894+00	\N	200	2528	54.80.47.193
022354d2-93e8-417e-9e20-3988ea89af78	ef3dbae3-4c0a-48d1-8625-c5eee3991419	bce06f29...	metrics	success	\N	{"month": "2026-08", "platform": "Meta", "sales_count": 4}	b46f5b40-d7ec-482f-8aa9-31ed81a3bbcd	32351ab5-411c-440c-9bae-70e504d4052f	2026-08-05 21:26:11.930135+00	\N	200	2760	54.80.47.193
\.


--
-- Data for Name: webhook_rate_limits; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."webhook_rate_limits" ("webhook_key_id", "window_start", "request_count", "updated_at") FROM stdin;
b838c315-89ca-4c83-a262-9658a212fd57	2026-08-02 09:00:06.402+00	1	2026-08-02 09:00:06.402+00
82d80633-57a8-4ff4-a14b-ccd729d57a82	2026-08-05 19:09:00.171+00	1	2026-08-05 19:09:00.171+00
c2773722-a11a-4128-acf1-1c9dff50f8be	2026-08-05 21:25:09.005+00	1	2026-08-05 21:25:09.005+00
ef3dbae3-4c0a-48d1-8625-c5eee3991419	2026-08-05 21:26:09.568+00	1	2026-08-05 21:26:09.568+00
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id", "type") FROM stdin;
client-documents	client-documents	\N	2026-06-17 10:35:52.118651+00	2026-06-17 10:35:52.118651+00	f	f	\N	\N	\N	STANDARD
portal-assets	portal-assets	\N	2026-06-21 09:09:17.47902+00	2026-06-21 09:09:17.47902+00	t	f	52428800	{image/png,image/jpeg,image/webp,video/mp4,video/webm}	\N	STANDARD
\.


--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_analytics" ("name", "type", "format", "created_at", "updated_at", "id", "deleted_at") FROM stdin;
\.


--
-- Data for Name: buckets_vectors; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_vectors" ("id", "type", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") FROM stdin;
097c438d-3cb7-4a37-8656-b24803367077	portal-assets	tombri-mascot-transparent.png	\N	2026-06-21 09:15:24.321564+00	2026-06-21 09:15:24.321564+00	2026-06-21 09:15:24.321564+00	{"eTag": "\\"4251d1736f753af5773e62eeca198e10-1\\"", "size": 686419, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2026-06-21T09:15:24.000Z", "contentLength": 686419, "httpStatusCode": 200}	b2efe8e2-408f-4403-b1b7-abd9e4d65195	\N	\N
b83bc6f4-1441-4eee-8cd4-f01260ac80f3	portal-assets	tomana-logo-white.png	\N	2026-06-21 09:17:21.972489+00	2026-06-21 09:17:21.972489+00	2026-06-21 09:17:21.972489+00	{"eTag": "\\"d1f7388a2966ea88085f6fdf6a0582c9-1\\"", "size": 123847, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2026-06-21T09:17:22.000Z", "contentLength": 123847, "httpStatusCode": 200}	2ea0747b-adad-47e5-a4f9-c160a3a19a5b	\N	\N
a23cec33-3c06-4062-b2db-e0ba933ec86c	client-documents	8c08f233-3a2f-4f30-ab17-9b79ad7f2c2b/contract-1782072777156.pdf	599209a7-ebe3-4ddf-90ba-a50cca55271c	2026-06-21 20:12:58.729687+00	2026-06-21 20:12:58.729687+00	2026-06-21 20:12:58.729687+00	{"eTag": "\\"9067a194cc91395736da95cd4bab8e14\\"", "size": 869806, "mimetype": "application/pdf", "cacheControl": "max-age=3600", "lastModified": "2026-06-21T20:12:59.000Z", "contentLength": 869806, "httpStatusCode": 200}	d761bcb1-8c00-4e1b-98d1-66656865a986	599209a7-ebe3-4ddf-90ba-a50cca55271c	{}
3627d4d2-d879-45b9-88d4-b94f56ba452d	client-documents	8f21c002-2efd-4224-ac09-47432a41923d/1785964687523.pdf	599209a7-ebe3-4ddf-90ba-a50cca55271c	2026-08-05 21:18:08.556649+00	2026-08-05 21:18:08.556649+00	2026-08-05 21:18:08.556649+00	{"eTag": "\\"f108bcbaddd2ae2c06ab22814af88c14\\"", "size": 875069, "mimetype": "application/pdf", "cacheControl": "max-age=3600", "lastModified": "2026-08-05T21:18:09.000Z", "contentLength": 875069, "httpStatusCode": 200}	d3b92e3a-0f5b-4f12-8c95-a90938f07293	599209a7-ebe3-4ddf-90ba-a50cca55271c	{}
a3163a49-6ad0-41fc-897d-d692843a0ab8	client-documents	8f21c002-2efd-4224-ac09-47432a41923d/contract-1785964699028.pdf	599209a7-ebe3-4ddf-90ba-a50cca55271c	2026-08-05 21:18:19.709814+00	2026-08-05 21:18:19.709814+00	2026-08-05 21:18:19.709814+00	{"eTag": "\\"f108bcbaddd2ae2c06ab22814af88c14\\"", "size": 875069, "mimetype": "application/pdf", "cacheControl": "max-age=3600", "lastModified": "2026-08-05T21:18:20.000Z", "contentLength": 875069, "httpStatusCode": 200}	581fbfad-8cd8-4818-8010-6e88a9e90ca0	599209a7-ebe3-4ddf-90ba-a50cca55271c	{}
87957958-7d65-43c5-b2ed-cc5aff070d7b	client-documents	8f21c002-2efd-4224-ac09-47432a41923d/contract-1785964715355.pdf	599209a7-ebe3-4ddf-90ba-a50cca55271c	2026-08-05 21:18:36.243007+00	2026-08-05 21:18:36.243007+00	2026-08-05 21:18:36.243007+00	{"eTag": "\\"f108bcbaddd2ae2c06ab22814af88c14\\"", "size": 875069, "mimetype": "application/pdf", "cacheControl": "max-age=3600", "lastModified": "2026-08-05T21:18:37.000Z", "contentLength": 875069, "httpStatusCode": 200}	90ec1d19-0ad8-4d81-b358-0585336450df	599209a7-ebe3-4ddf-90ba-a50cca55271c	{}
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata", "metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Data for Name: vector_indexes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."vector_indexes" ("id", "name", "bucket_id", "data_type", "dimension", "distance_metric", "metadata_configuration", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 431, true);


--
-- PostgreSQL database dump complete
--

-- \unrestrict pu3SiFqMZNT1YNQxJd4qdVZ1frmRfGnbJcvSzP9sW3gijj4i3SRbgALbgObnyQh

RESET ALL;
