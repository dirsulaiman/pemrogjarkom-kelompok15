--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)

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

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: liga_ingris; Type: TABLE; Schema: public; Owner: dir
--

CREATE TABLE public.liga_ingris (
    id integer NOT NULL,
    matchday character varying(25),
    is_pass boolean DEFAULT false,
    team1 character varying(50),
    team2 character varying(50),
    score_team1 integer,
    score_team2 integer,
    date character varying(10),
    "time" character varying(5)
);


ALTER TABLE public.liga_ingris OWNER TO dir;

--
-- Name: liga_ingris_id_seq; Type: SEQUENCE; Schema: public; Owner: dir
--

CREATE SEQUENCE public.liga_ingris_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.liga_ingris_id_seq OWNER TO dir;

--
-- Name: liga_ingris_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dir
--

ALTER SEQUENCE public.liga_ingris_id_seq OWNED BY public.liga_ingris.id;


--
-- Name: liga_ingris id; Type: DEFAULT; Schema: public; Owner: dir
--

ALTER TABLE ONLY public.liga_ingris ALTER COLUMN id SET DEFAULT nextval('public.liga_ingris_id_seq'::regclass);


--
-- Data for Name: liga_ingris; Type: TABLE DATA; Schema: public; Owner: dir
--

COPY public.liga_ingris (id, matchday, is_pass, team1, team2, score_team1, score_team2, date, "time") FROM stdin;
83	Matchday 17 of 38	f	Crystal Palace FC	Brighton & Hove Albion FC	\N	\N	17/12/19	03:00
84	Matchday 17 of 38	f	Arsenal FC	Manchester City FC	\N	\N	15/12/19	23:30
85	Matchday 17 of 38	f	Wolverhampton Wanderers	Tottenham Hotspur FC	\N	\N	15/12/19	21:00
86	Matchday 17 of 38	f	Manchester United FC	Everton FC	\N	\N	15/12/19	21:00
87	Matchday 17 of 38	f	Southampton FC	West Ham United FC	\N	\N	15/12/19	00:30
88	Matchday 17 of 38	f	Sheffield United FC	Aston Villa FC	\N	\N	14/12/19	22:00
89	Matchday 17 of 38	f	Leicester City FC	Norwich City FC	\N	\N	14/12/19	22:00
90	Matchday 17 of 38	f	Chelsea FC	AFC Bournemouth	\N	\N	14/12/19	22:00
91	Matchday 17 of 38	f	Burnley FC	Newcastle United FC	\N	\N	14/12/19	22:00
92	Matchday 17 of 38	f	Liverpool FC	Watford FC	\N	\N	14/12/19	19:30
93	Matchday 16 of 38	f	West Ham United FC	Arsenal FC	\N	\N	10/12/19	03:00
94	Matchday 16 of 38	f	Brighton & Hove Albion FC	Wolverhampton Wanderers	\N	\N	08/12/19	23:30
95	Matchday 16 of 38	f	Norwich City FC	Sheffield United FC	\N	\N	08/12/19	21:00
96	Matchday 16 of 38	f	Newcastle United FC	Southampton FC	\N	\N	08/12/19	21:00
97	Matchday 16 of 38	f	Aston Villa FC	Leicester City FC	\N	\N	08/12/19	21:00
98	Matchday 16 of 38	f	Manchester City FC	Manchester United FC	\N	\N	08/12/19	00:30
99	Matchday 16 of 38	f	Watford FC	Crystal Palace FC	\N	\N	07/12/19	22:00
100	Matchday 16 of 38	f	Tottenham Hotspur FC	Burnley FC	\N	\N	07/12/19	22:00
101	Matchday 16 of 38	f	AFC Bournemouth	Liverpool FC	\N	\N	07/12/19	22:00
102	Matchday 16 of 38	f	Everton FC	Chelsea FC	\N	\N	07/12/19	19:30
103	Matchday 15 of 38	f	Arsenal FC	Brighton & Hove Albion FC	\N	\N	06/12/19	03:15
104	Matchday 15 of 38	f	Sheffield United FC	Newcastle United FC	\N	\N	06/12/19	02:30
105	Matchday 15 of 38	f	Liverpool FC	Everton FC	\N	\N	05/12/19	03:15
106	Matchday 15 of 38	f	Southampton FC	Norwich City FC	\N	\N	05/12/19	02:30
107	Matchday 15 of 38	f	Chelsea FC	Aston Villa FC	\N	\N	05/12/19	02:30
108	Matchday 15 of 38	f	Wolverhampton Wanderers	West Ham United FC	\N	\N	05/12/19	02:30
109	Matchday 15 of 38	f	Manchester United FC	Tottenham Hotspur FC	\N	\N	05/12/19	02:30
110	Matchday 15 of 38	f	Leicester City FC	Watford FC	\N	\N	05/12/19	02:30
111	Matchday 15 of 38	f	Burnley FC	Manchester City FC	\N	\N	04/12/19	03:15
112	Matchday 15 of 38	f	Crystal Palace FC	AFC Bournemouth	\N	\N	04/12/19	02:30
113	Matchday 14 of 38	f	Manchester United FC	Aston Villa FC	\N	\N	01/12/19	23:30
114	Matchday 14 of 38	f	Leicester City FC	Everton FC	\N	\N	01/12/19	23:30
115	Matchday 14 of 38	f	Wolverhampton Wanderers	Sheffield United FC	\N	\N	01/12/19	21:00
116	Matchday 14 of 38	f	Norwich City FC	Arsenal FC	\N	\N	01/12/19	21:00
117	Matchday 14 of 38	f	Southampton FC	Watford FC	\N	\N	01/12/19	00:30
118	Matchday 14 of 38	f	Tottenham Hotspur FC	AFC Bournemouth	\N	\N	30/11/19	22:00
119	Matchday 14 of 38	f	Liverpool FC	Brighton & Hove Albion FC	\N	\N	30/11/19	22:00
120	Matchday 14 of 38	f	Chelsea FC	West Ham United FC	\N	\N	30/11/19	22:00
121	Matchday 14 of 38	f	Burnley FC	Crystal Palace FC	\N	\N	30/11/19	22:00
122	Matchday 14 of 38	f	Newcastle United FC	Manchester City FC	\N	\N	30/11/19	19:30
123	Matchday 13 of 38	f	Aston Villa FC	Newcastle United FC	\N	\N	26/11/19	03:00
124	Matchday 13 of 38	f	Sheffield United FC	Manchester United FC	\N	\N	24/11/19	23:30
125	Matchday 13 of 38	f	Manchester City FC	Chelsea FC	\N	\N	24/11/19	00:30
126	Matchday 13 of 38	f	Watford FC	Burnley FC	\N	\N	23/11/19	22:00
127	Matchday 13 of 38	f	Everton FC	Norwich City FC	\N	\N	23/11/19	22:00
128	Matchday 13 of 38	f	Crystal Palace FC	Liverpool FC	\N	\N	23/11/19	22:00
129	Matchday 13 of 38	f	Brighton & Hove Albion FC	Leicester City FC	\N	\N	23/11/19	22:00
130	Matchday 13 of 38	f	Arsenal FC	Southampton FC	\N	\N	23/11/19	22:00
131	Matchday 13 of 38	f	AFC Bournemouth	Wolverhampton Wanderers	\N	\N	23/11/19	22:00
132	Matchday 13 of 38	f	West Ham United FC	Tottenham Hotspur FC	\N	\N	23/11/19	19:30
133	Matchday 12 of 38	t	Liverpool FC	Manchester City FC	3	1	10/11/19	\N
134	Matchday 12 of 38	t	Wolverhampton Wanderers	Aston Villa FC	2	1	10/11/19	\N
135	Matchday 12 of 38	t	Manchester United FC	Brighton & Hove Albion FC	3	1	10/11/19	\N
136	Matchday 12 of 38	t	Leicester City FC	Arsenal FC	2	0	10/11/19	\N
137	Matchday 12 of 38	t	Tottenham Hotspur FC	Sheffield United FC	1	1	09/11/19	\N
138	Matchday 12 of 38	t	Southampton FC	Everton FC	1	2	09/11/19	\N
139	Matchday 12 of 38	t	Newcastle United FC	AFC Bournemouth	2	1	09/11/19	\N
140	Matchday 12 of 38	t	Burnley FC	West Ham United FC	3	0	09/11/19	\N
141	Matchday 12 of 38	t	Chelsea FC	Crystal Palace FC	2	0	09/11/19	\N
142	Matchday 12 of 38	t	Norwich City FC	Watford FC	0	2	09/11/19	\N
143	Matchday 11 of 38	t	Everton FC	Tottenham Hotspur FC	1	1	03/11/19	\N
144	Matchday 11 of 38	t	Crystal Palace FC	Leicester City FC	0	2	03/11/19	\N
145	Matchday 11 of 38	t	Watford FC	Chelsea FC	1	2	03/11/19	\N
146	Matchday 11 of 38	t	West Ham United FC	Newcastle United FC	2	3	02/11/19	\N
147	Matchday 11 of 38	t	Sheffield United FC	Burnley FC	3	0	02/11/19	\N
148	Matchday 11 of 38	t	Manchester City FC	Southampton FC	2	1	02/11/19	\N
149	Matchday 11 of 38	t	Brighton & Hove Albion FC	Norwich City FC	2	0	02/11/19	\N
150	Matchday 11 of 38	t	Aston Villa FC	Liverpool FC	1	2	02/11/19	\N
151	Matchday 11 of 38	t	Arsenal FC	Wolverhampton Wanderers	1	1	02/11/19	\N
152	Matchday 11 of 38	t	AFC Bournemouth	Manchester United FC	1	0	02/11/19	\N
153	Matchday 10 of 38	t	Norwich City FC	Manchester United FC	1	3	27/10/19	\N
154	Matchday 10 of 38	t	Liverpool FC	Tottenham Hotspur FC	2	1	27/10/19	\N
155	Matchday 10 of 38	t	Arsenal FC	Crystal Palace FC	2	2	27/10/19	\N
156	Matchday 10 of 38	t	Newcastle United FC	Wolverhampton Wanderers	1	1	27/10/19	\N
157	Matchday 10 of 38	t	Burnley FC	Chelsea FC	2	4	26/10/19	\N
158	Matchday 10 of 38	t	West Ham United FC	Sheffield United FC	1	1	26/10/19	\N
159	Matchday 10 of 38	t	Watford FC	AFC Bournemouth	0	0	26/10/19	\N
160	Matchday 10 of 38	t	Brighton & Hove Albion FC	Everton FC	3	2	26/10/19	\N
161	Matchday 10 of 38	t	Manchester City FC	Aston Villa FC	3	0	26/10/19	\N
162	Matchday 10 of 38	t	Southampton FC	Leicester City FC	0	9	26/10/19	\N
163	Matchday 9 of 38	t	Sheffield United FC	Arsenal FC	1	0	22/10/19	\N
\.


--
-- Name: liga_ingris_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dir
--

SELECT pg_catalog.setval('public.liga_ingris_id_seq', 163, true);


--
-- Name: liga_ingris liga_ingris_pkey; Type: CONSTRAINT; Schema: public; Owner: dir
--

ALTER TABLE ONLY public.liga_ingris
    ADD CONSTRAINT liga_ingris_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

