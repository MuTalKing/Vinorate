--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2 (Debian 15.2-1.pgdg110+1)
-- Dumped by pg_dump version 15.2 (Debian 15.2-1.pgdg110+1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: globus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.globus (
    id integer NOT NULL,
    name character varying(150) NOT NULL,
    rate character varying(150),
    price character varying(150),
    picture character varying(150),
    shop_logo character varying(150)
);


ALTER TABLE public.globus OWNER TO postgres;

--
-- Name: globus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.globus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.globus_id_seq OWNER TO postgres;

--
-- Name: globus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.globus_id_seq OWNED BY public.globus.id;


--
-- Name: perekrestok; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.perekrestok (
    id integer NOT NULL,
    name character varying(150) NOT NULL,
    rate character varying(150),
    price character varying(150),
    picture character varying(150),
    shop_logo character varying(150)
);


ALTER TABLE public.perekrestok OWNER TO postgres;

--
-- Name: perekrestok_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.perekrestok_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.perekrestok_id_seq OWNER TO postgres;

--
-- Name: perekrestok_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.perekrestok_id_seq OWNED BY public.perekrestok.id;


--
-- Name: vivino; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vivino (
    id integer NOT NULL,
    name character varying(150) NOT NULL,
    rate character varying(150)
);


ALTER TABLE public.vivino OWNER TO postgres;

--
-- Name: vivino_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vivino_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vivino_id_seq OWNER TO postgres;

--
-- Name: vivino_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vivino_id_seq OWNED BY public.vivino.id;


--
-- Name: globus id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.globus ALTER COLUMN id SET DEFAULT nextval('public.globus_id_seq'::regclass);


--
-- Name: perekrestok id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.perekrestok ALTER COLUMN id SET DEFAULT nextval('public.perekrestok_id_seq'::regclass);


--
-- Name: vivino id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vivino ALTER COLUMN id SET DEFAULT nextval('public.vivino_id_seq'::regclass);


--
-- Data for Name: globus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.globus (id, name, rate, price, picture, shop_logo) FROM stdin;
2	Zinfandel 	4,1	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/981/1559914.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
3	Mucho Mas 	4,2	1 699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/0eb/593619.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
5	Espiritu de Chile Gran Reserva Merlot 	3,9	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/710/241921.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
6	Astrale 	4,1	1 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/975/191883.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
7	Bravo Trade Mucho Mas 	4,2	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/9f3/363182.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
8	Chateau Tour Verite Bordeaux 	3,3	449,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/45d/232008.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
9	Don Batisto Rioja 	3,6	1 799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/240/260354.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
10	Tbilisi Peak Саперави 	3,6	579,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/fbf/144256.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
11	Don Batisto Rioja Cosecha 	3,6	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/581/164316.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
12	Chateau Le Rimensac 	3,6	549,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/fce/232009.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
13	Chateau de Cach Haut-Medoc 	3,6	1 199,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/256/344699.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
14	Chateau Les Nauds Bordeaux Merlot 	3,6	449,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/659/515844.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
15	El Jamon Tinto 	4,0	1 599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/43d/1873469.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
16	Chateau Haut Fontenelle Bordeaux 	3,6	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/692/233718.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
17	Butcher's Cut Malbec 	3,6	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a44/1288883.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
18	Care Tinto Roble 	3,6	1 399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/7aa/781048.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
19	Ignacio Marin Castillo Peracense Crianza 	3,5	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/628/959595.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
20	Conde Otinano Tinto Rioja 	3,4	679,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/f50/758909.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
21	Silverboom Black Label Cabernet Sauvignon 	3,8	1 199,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ffb/1559912.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
22	Golubitskoe Estate Cabernet Sauvignon 	3,8	949,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/179/410992.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
23	Flor De La Mar Reserva 	3,8	854,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/838/496151.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
24	Fanagoria Cru Lermont Cabernet Sauvignon 	3,8	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/854/1092833.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
26	Pagos Hispanos Tempranillo 	3,7	549,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/eb2/970715.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
27	Bouchard Aine & Fils Cotes-du-Rhone 	3,7	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/4de/578459.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
28	Crystal Bay Shiraz 	3,3	849,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d49/prd_668329000.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
29	Solarita Chianti 	3,3	869,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c87/176673.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
30	Lenz Moser Zweigelt 	3,9	1 099,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/0f7/365987.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
31	El Pescaito Bobal Cabernet Sauvignon 	3,4	479,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/718/403724.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
32	Quinta das Amoras 	3,8	749,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/5f1/496084.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
33	Tbilisi Peak Пиросмани 	4,0	579,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/3a7/223569.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
34	Medoc Chateau Bois du Fil 	3,5	1 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/afa/378908.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
35	Beiral Vineyards Escolha Beira Atlantico 	4,0	649,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/005/338782.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
36	Barista Pinotage 	4,1	849,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/0d3/379126.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
37	Ca'Delle Rose Bardolino Classico 	3,6	689,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/5e4/225933.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
38	Дербент Кара-Койсу 	3,2	219,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/fa8/379013.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
39	Глобус Вита Para Celsus Tempranillo 	3,1	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/76b/404061.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
40	Глобус Corte Vinaia Merlot 	-	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/6e3/455377.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
41	Глобус Corte Vinaia Sangiovese 	3,9	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ea1/455381.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
42	Delampa Monastrell 	4,0	629,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/2ca/650544.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
43	Глобус Пиросмани 	3,8	449,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/39d/2404934.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
44	Глобус Саперави 	3,5	449,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/2d4/2404932.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
45	Matsu El Picaro 	3,9	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b9d/206632.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
46	Fassini Chianti Rizerva 	3,9	1 249,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/983/164351.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
47	Castillo Santa Barbara Crianza 	3,5	359,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/177/201467.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
48	Piccini Chianti 	3,3	959,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/58b/353246.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
49	Majano Крианца 	-	579,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b04/1900192.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
50	Agora Бастардо 	3,5	349,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/63d/2018356.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
52	Don Simon Tinto 	3,0	419,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/54a/139513.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
53	Novecento23 Rosso Veneto 	3,0	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ecf/225936.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
54	Masi CampoFiorin 	3,7	1 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/df4/357568.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
55	Don Batisto Rioja Crianza 	3,6	1 099,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d61/164317.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
56	Fetzer Valley Oaks Zinfandel 	4,0	1 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/274/1145310.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
112	Chianti Riserva 	3,8	1 199,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/972/236314.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
58	Sun Gate Red Zinfandel 	3,4	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/016/577958.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
59	Villa Fassini Sangiovese-Cabernet S. Toscana 	3,5	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a73/322412.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
60	Chateau Pericou Bordeaux 	3,6	799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/39e/176641.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
61	Le Grand Noir Pinot Noir 	3,7	849,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/f01/358823.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
62	Gaetano Montepulciano D'abruzzo 	3,3	629,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/8ac/627444.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
63	Tbilisi Peak Мукузани 	4,0	1 599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/534/223578.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
64	Мысхако Кюве 	3,7	349,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/7b4/623804.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
65	Palazzo Nobile Chianti Riserva 	3,7	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/6a5/293172.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
66	San Valentin Garnacha Torres 	3,9	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/276/176681.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
67	KG Gries Lagrein 	3,9	1 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d05/455355.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
68	Castelvecchio Barolo 	3,9	1 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/8f2/228789.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
69	Clos Gebrat Priorat DOCa Crianza 	3,9	2 399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b5c/2535474.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
70	Escal Roja Crianza 	3,9	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/182/496072.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
71	Castillo de Clavijo Reserva 	4,0	969,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/1c7/236318.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
72	Крымвинторг Мерло 	2,5	329,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/642/277370.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
73	Don Ramon 	3,8	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/13e/291170.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
74	Terras do Po Reserva 	3,8	549,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/8fa/201510.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
76	Mas Momentos Tempranillo 	3,7	649,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a49/1562161.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
77	El Circo Acrobata Garnacha 	3,4	1 899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/5d5/773984.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
78	Brunello di Montalcino Territori Vocati 	-	3 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/cad/496222.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
79	Nuviana Tempranillo Cabernet Sauvignon 	3,6	464,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b64/369792.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
80	Astrale Special Edition 	4,2	1 279,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/3b1/1181127.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
81	The Collection The Bean Coffee Pinotage 	3,8	1 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/623/433290.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
82	Silverboom Shiraz-Merlot 	3,7	849,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/8fc/1559916.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
83	Garnachas de Espana La Garnacha Olvidada de Aragon 	3,7	1 669,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/055/176666.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
84	Observer Malbek 	3,5	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/6a4/387032.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
85	Castillo Santa Barbara Gran Reserva 	3,7	449,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/383/260350.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
86	Palazzo Nobile Chianti Classico Riserva 	3,9	1 099,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/65a/369808.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
87	Antico Portico Primitivo Salento 	4,1	679,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a15/225945.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
88	Броjаница Вранац 	3,7	529,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/645/312975.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
89	Majano Темпранильо Робле 	4,0	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/302/1900187.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
90	Ignacio Marin Castillo de Embid Crianza 	4,0	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d4e/959598.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
91	Tussock Jumper Malbec 	3,8	1 119,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/de7/310812.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
92	Louis Eschenauer Medoc 	3,8	1 429,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/4f8/198372.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
93	Canada Tempranillo 	3,6	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/0f1/156976.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
95	Reserva da Familia 	4,1	1 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/123/2337386.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
96	Pirineos Roble Somontano 14 % алк., Испания, 0,75 л	3,8	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/024/461551.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
97	Inkerman Каберне Гранд Резерв 	4,0	799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/74f/607370.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
98	Solarita Nero D'Avola Sicilia 	3,9	739,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ea8/1092848.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
99	Кубань-Вина Тамани Мерло 	2,8	284,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/9f5/766879.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
100	Haussmann Merlot 	3,5	384,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/4f0/3118619.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
101	Chateau Brehat 	3,7	1 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/129/518627.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
102	Castelvecchio Barbera D'asti 	3,5	679,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/98f/228793.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
103	Prototype Pinot Noir 	3,7	1 399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/35d/3355228.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
104	Каберне 	3,5	199,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/f10/535238.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
105	Zarafa Pinotage 	3,5	479,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/85a/562894.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
106	Tavridia Бастардо Каберне 	3,5	399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/8bf/729946.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
107	Fanagoria Авторское Каберне-Мерло 	3,5	399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b9f/1092836.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
108	Palavani Саперави Кверви 	4,0	1 199,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/9a9/363296.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
109	Arena de Oro Tempranillo 	3,1	449,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d46/173976.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
110	Flor De La Mar 	4,0	654,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/373/496149.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
111	Askaneli Brothers Saperavi Premium 	4,0	1 339,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/549/246831.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
115	Beronia Reserva 	4,0	2 229,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/083/1241617.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
116	Cape Zebra Pinotage 	3,5	619,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/4c2/1092843.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
117	Vylyan Macska 	3,5	649,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/df0/496019.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
118	Morgado da Vila Vinhao 	3,2	844,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a4c/198433.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
119	Torres Altos Ibericos 	3,7	1 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b92/176642.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
120	Ciconia Touriga Nacional 	3,6	949,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/0c7/252127.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
121	Eventorosso 	3,8	524,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/72c/435158.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
122	Observer Syrah 	3,7	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/4c1/338714.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
123	Domaine bel Avenir Beaujolais-Villages 	3,9	799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/542/837766.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
124	Vicente Gandia Finca del mar Tempranillo Crianza 	3,5	1 399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e55/259428.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
125	Orion Salento Primitivo 	3,5	1 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/5ab/576363.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
126	Sonovino Россо 	3,3	469,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/161/1900315.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
127	Pierre Dumont Bourgogne Pinot Noir 	4,0	2 659,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e4b/2270279.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
128	Peccatore Douro 	3,6	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/02d/325231.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
129	Finca Del Sol Vino de Mesa 	3,9	469,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/41e/176643.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
130	Inkerman 	3,8	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/84d/607369.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
131	Balaklava Loco Cimbal I Reserve Repin 	3,8	1 379,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b3c/946986.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
132	Chevalier Alexis Lichine Chateau Charrier 	3,6	1 489,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e42/356702.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
133	Цард Саперави 	3,9	439,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b5b/775550.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
135	Majano Темпранильо 	4,0	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/346/1900177.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
136	Millaman Estate Reserve 	3,6	1 199,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/dec/539578.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
137	Golubitskoe Estate Мерло 	3,6	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/cc1/607372.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
138	Ballaro Primitivo Salento 	4,2	799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/603/545206.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
139	Ignacio Marin Castillo Peracense Reserva 	3,5	584,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/855/959599.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
140	Premium 1904 Graciano 	3,9	799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/044/496067.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
141	Nero D`Avola Merlot 	3,4	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/146/1509346.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
142	Ca'Delle Rose Valpolicella 	3,6	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/2cf/225932.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
143	Calderona Joven 	3,3	799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/66d/970712.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
144	by Haussmann Cabernet Sauvignon 	3,4	384,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b04/3118615.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
145	Grona Барбера Д'асти 	3,5	1 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/cfb/1900162.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
146	Gaetano Sangiovese Puglia 	3,6	549,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/61b/627621.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
147	La Piuma Монтепульч 	3,4	1 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ff4/1925588.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
148	San Valentin Tempranillo 14,5 % алк., Испания, 0,75 л	3,9	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/692/3402884.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
149	Ramon Bilbao Rioja Reserva 	3,9	2 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/29f/410984.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
150	Stellenbosch Hills 1707 Reserve 	4,1	1 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ff1/576017.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
151	Solarita Montepulciano d'Abruzzo 	3,5	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/587/206083.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
152	Villa Krim Cabernet 	3,2	379,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c49/3431412.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
153	Castillo Santa Barbara Reserva 	3,6	419,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/9e5/204488.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
154	Territorio 	4,1	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/5b5/598026.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
155	Clemente VII Chianti Classico Riserva 	3,8	2 599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/af0/267681.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
156	Inkerman Рубин Античный 	3,6	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/cb7/700735.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
157	Excelsis 	3,7	1 099,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e38/3176706.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
158	Stobi Makedonsko Crveno 	4,1	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/4c3/174002.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
160	Beiral Vineyards 	3,9	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/911/766690.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
161	Cuvee de la Guinchule Saint-Amour 	3,9	1 399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/403/837767.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
162	Viu Manent Reserva Malbec 	3,6	1 099,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/dce/539654.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
163	Villa Antinori Toscana Rosso 	3,8	2 399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/5df/435141.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
164	Barone Ricasoli Chianti 	3,7	1 599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/90b/576365.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
165	Kindzmarauli Marani Saperavi 	3,8	849,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/4ea/650532.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
166	Castillo de Clavijo Crianza 	3,6	719,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ff3/236317.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
167	Campero Карменер 	3,7	799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/6db/2561491.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
168	Palazzo Nobile Valpolicella 	3,3	669,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/7e8/176683.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
169	Valserrano Crianza Rioja 	3,8	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/2bf/1024504.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
171	Ханджлури Сувенирная серия Саперави 	-	974,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e90/289894.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
172	Mas Momentos Syrah 	-	649,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/94e/1026178.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
173	Le Grand Noir Cabernet Sauvignon 	4,1	849,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/eaf/641638.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
174	Ведерниковъ Губернаторское 	3,4	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c22/229174.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
175	Sazyk Dere Мерло марочное 	3,1	299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/fa5/262092.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
176	Trapiche Malbec 	3,4	739,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/f57/496127.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
177	Pradorey Origen Roble 	3,5	1 559,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b35/1509350.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
178	Chacabuco Malbec 	-	799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c8f/461556.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
179	Doudet-Naudin Pinot Noir 	3,7	1 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/013/2270315.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
181	Astrale Rosso 	4,1	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/76d/206628.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
182	Fanagoria 100 оттенков красного Каберне 	4,0	1 449,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ce2/1092837.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
183	Los Condes Gran Reserva 	3,5	1 139,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/020/863865.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
184	La Piuma Санджовезе 	3,4	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/af6/1900303.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
185	Tavernello 	3,2	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/8b7/577967.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
186	Vinha Do Fava 	4,0	479,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/2db/198440.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
187	Clos Gebrat Priorat 	4,0	1 699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/20d/244640.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
188	Il Sarone Россо 	3,6	744,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/02e/1900311.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
189	Michel Дорнфельдер 	3,6	749,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/553/3400287.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
190	Tavridia Каберне 	2,9	399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ea9/201382.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
191	Barkan Classic Каберне Совиньон 	3,2	1 389,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/094/397553.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
192	G7 Carmenere 	3,4	589,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d24/759033.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
193	Inkerman Saperavi 	3,6	559,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/84d/564163.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
194	Salida Tannat 	3,6	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/336/317550.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
195	Monfort Village 	3,4	799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d70/589987.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
196	Mora Vista Malbec 	3,1	849,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a35/2434271.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
197	Ballaro Nero di Troia 	4,2	799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/cc3/512706.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
198	Les Jamelles Syrah 	3,8	1 139,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ae4/538734.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
200	Matsu El Recio 	4,1	1 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/f7b/206633.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
202	Observer Carmenere 	3,7	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/10f/338713.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
203	Chateau Tamagne Fleurs du Sud Rouge de Tamagne 	3,4	331,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/00e/436153.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
204		3,4	1 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/cc2/3176653.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
205	Protos Roble Ribera Duero 	3,7	1 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/eee/520975.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
206	Batasiolo Barolo 	4,0	4 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/1b2/289756.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
207	Bastardo 	3,8	349,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/2f6/1925608.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
208	Don Simon Cabernet Sauvignon 	3,4	539,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/79a/1171433.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
209	Conti Zecca Zinfandel 	3,7	1 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e95/607397.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
210	Крымский погребок Бастардо 	3,1	329,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/08f/736777.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
211	Capellana Tempranilo 	3,7	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/07e/562420.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
212	Inkerman Каберне 	3,6	299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/191/3427829.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
213	Cellier des Dauphins Prestige 	3,4	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/98c/226971.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
214	Stobi Vranec Vilarov 	3,9	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d3f/173999.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
215	Mas Momentos Malbec 	3,6	649,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/3d4/970713.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
216	Valserrano Reserva Rioja 	4,0	1 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/620/1024508.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
217	Joy Тинто 	3,8	749,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/914/3431459.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
218	Villa Krim Merlot 	3,2	379,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/661/3431701.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
219	Altissimo Chianti Classico 	4,0	979,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b31/696697.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
221	Loving Vincent Des Gracieuses Vignes Rouge 13,5 % алк., Франция, 0,75 л	4,0	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ed1/1900251.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
222	Tour de Mandelotte Medoc 	3,6	1 339,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/765/235850.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
223	Podere Montepulciano D'Abruzzo 	3,6	1 099,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/0aa/289734.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
224	Valserrano Mazuelo Rioja 	4,1	2 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e09/1024510.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
225	Traversa Tannat Uruguay 	3,6	799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ac1/1900156.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
226	Alma River Пино Нуар 	3,8	529,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/35c/1925673.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
201	Tarapaca Carmenere 	3,7	859,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/6c4/539656.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
229	Vipra Rossa Bigi 	3,5	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/440/895985.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
230	Quinta da Mimosa Palmela DOC 	4,0	949,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/83d/3400288.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
231	J.P. Chenet Cabernet-Syrah 	3,4	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/19a/383884.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
232	KG Gries Pinot Nero Riserva 	3,6	2 799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d7b/455365.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
233	Palabra de Caballero Tempranillo La Mancha 	3,1	549,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/7e1/206658.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
234	S!gnature Lesquerde 	-	559,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/4c0/518870.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
235	Antano Tempranillo 	3,3	249,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a8a/3431023.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
236	Chateau des Grands Moines 	3,6	1 699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ca9/232007.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
237	Famille Sadel Côtes Du Rhône 	4,0	1 369,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/1bc/317685.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
239	Vol I Dol Negre сухое 	3,3	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/62b/717959.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
240	Ханджлури Пиросмани 	-	674,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a77/174025.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
241	Sella & Mosca I Piani Rosso 	3,3	849,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/895/401664.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
242	Santa Hortensia Merlot 	3,6	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a08/241918.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
243	Vylyan Ordog 	3,6	484,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/83a/496020.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
244	Marani Saperavi 	3,7	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/4ca/1900215.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
245	Muenzenrieder Neusiedlersee 	3,5	759,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/74e/1925385.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
246	Redwood Vineyards California Pinot Noir 	3,9	849,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/422/520961.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
247	Monasterio de las Viñas Reserva Carinena 	3,7	1 149,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/814/246749.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
248	Fleur de la Reine 	3,4	749,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/8c2/1900265.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
249	Ciconia 	3,6	799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/f6f/191999.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
250	Nobilomo Raboso Veneto 	3,6	519,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/914/636575.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
251	Az Abrau Madrasa 	3,6	399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b7e/3399462.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
252	Make It Big Pinot Noir 	3,4	649,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/28a/prd_668363004.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
253	Conti Antico 	4,2	1 599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/10b/2270303.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
254	Fado Reserva 	3,9	1 119,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/f17/2270319.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
255	Bad Brothers 	3,8	589,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/083/3269636.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
256	Colle dei Cipressi Montepulciano D'Abruzzo 	3,5	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/64f/317539.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
257	Flor De La Mar Castelao 	4,0	654,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e39/3400289.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
258	Frescobaldi Remole Toscana 	3,6	839,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/657/318490.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
259	Gandin Filare Nero 	-	1 199,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/433/2577660.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
260	Chateau les Eyquem Hautes Graves Margaux 	3,9	1 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/1dd/515840.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
261	Territori Vocati Sangiovese 	-	1 199,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c21/1559781.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
262	Brolio Chianti Classico 	3,7	2 799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/399/576360.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
263	Мысхако Pinot Noir Reserve 	4,0	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/89d/953061.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
264	Venta Real Резерва 	3,4	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/290/1900173.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
266	Радеда 	-	549,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/cff/236182.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
267	Fattolia del Cerro Nobile di Montepulciano 	3,7	2 599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/16c/289713.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
268	Le Bel Tout Costieres de Nimes 	3,7	1 099,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e63/1900083.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
269	Acharuli Саперави 	3,5	134,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/f97/1900275.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
270	Броjаница Каберне Совиньон 	-	399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/491/973688.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
271	Sazyk Dere Каберне марочное 	3,5	299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/1b7/262090.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
272	Good Steak Мерло 	3,2	124,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/fd4/1766369.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
274	Casa Castellano Garnacha 	4,1	549,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/634/496066.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
273	Грузвинпром Саперави 	-	734,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/79d/1900232.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
275	el Gordo Garnacha 	3,3	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ea3/1562165.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
276	Beefsteak Club Malbec 	3,7	299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e63/3431024.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
277	Sol De Chile Cabernet Sauvignon Reserva 	3,3	779,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/354/3431586.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
278	La Croix du Pin Merlot 	3,3	759,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/518/3405428.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
279	Chateau Vieux Duc Montagne Saint-Emilion 	-	1 899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/34d/317684.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
280	Marques de Abadia Rioja Crianza 	3,6	749,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/286/246751.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
281	Виноград Don Simon Tempranillo 	3,0	539,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e24/1171662.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
282	Gran Reserva 	4,0	674,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/fd9/3176708.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
228	Prototype Zinfandel 	3,8	1 399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e21/3422433.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
285	Observer Cabernet Sauvignon - Merlot 	3,7	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/7ca/323260.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
286	Rocca Alata Valpolicella Superiore 	3,3	1 339,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/209/763103.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
287	La Maridelle Pays D'OC Cabernet Sauvignon 	3,0	379,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a68/435201.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
288	Finca el Rejoneo Crianza 	3,3	1 399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/4e6/387021.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
289	Высокий берег Каберне Совиньон 	3,4	459,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a76/824978.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
290	Di Caspico Special Edition 	3,9	429,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/091/1171133.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
291	Muelle Tempranillo Syrah сухое 	3,7	559,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/54b/590005.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
293	Castelvecchio Barbera D'alba 	3,7	849,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/897/228791.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
294	Codici Россо 	4,1	524,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/516/1900309.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
295	Cuatro Ojos Cabernet Sauvignon 	3,8	479,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/490/338711.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
296	Il Poggio dei Vigneti Nero d'Avola Sicilia 	2,7	649,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/1ed/650530.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
297	Ramon Bilbao Crianza Rioha 	3,9	1 269,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b5f/287190.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
298	Matsu El Viego 	3,9	4 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/829/260353.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
299	Marchesi di Barolo Ruvei 	3,8	2 639,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/01e/236423.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
300	Barone Montalto Неро 	4,0	684,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/893/1900300.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
301	Cimmeria Бастардо Белой Скалы 	3,3	369,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ded/508787.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
302	Inkerman Шато Руж 	3,2	349,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d21/3427830.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
303	Chateau Tamagne Cabernet 	3,3	449,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b24/436163.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
304	Trivento Malbec Reserve 	3,6	1 249,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/edd/360591.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
305	Bricco Rosso Suagna Langhe Rosso 	3,7	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/6ca/438692.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
306	Chateau D'Arvigny Haut-Médoc 	3,9	2 149,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/5d3/291195.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
307	Moulin de Gassac Classic 	3,5	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/2ed/3269626.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
308	Faustino Crianza Rioja 	3,6	1 199,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/948/353261.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
309	Taboadella Villae 	4,0	1 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/80c/3399460.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
310	Murviedro Reserva 	3,7	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/86b/495939.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
311	Big Mouth 	3,0	1 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/99f/1814089.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
312	Antico Portico Montepulciano d'Abruzzo 	3,9	799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/637/225941.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
314	Tres Amigos 	3,5	549,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/757/780384.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
315	Gran Cita Del Sol Tempranillo 	3,4	549,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ce0/282565.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
316	Fanagoria Style Merlot 	3,6	509,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/577/1092821.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
317	Чегем 	-	449,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/5c3/236181.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
319	Грузвинпром Мукузани 	4,0	944,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/749/1900230.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
320	Domini Veneti Valpolicella Ripasso la Casetta 	4,2	2 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/f7c/366452.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
321	Авторское Саперави 	3,5	249,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c7e/1766372.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
322	Trenel Beaujolais Villages 	3,5	1 479,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/6aa/593636.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
323	Castello Banfi Brunello di Montalcino 	4,2	5 799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e26/665044.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
324	The Ned Pinot Noir 	3,7	1 799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/543/3430259.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
325	Inkerman Каберне Резерв 	4,0	659,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d15/700796.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
326	Tussock Jumper Tempranillo 	3,5	799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/fb3/310813.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
327	Chateau Tamagne Krasnostop 	3,5	454,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b8f/436164.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
328	Donna Marzia Salento 	3,7	1 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/651/614586.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
329	Yerevan Areni Karmrahyut 	3,8	589,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/cdc/379245.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
330	Muenzenrieder Heideoden classic 	-	799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ccf/1925383.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
331	Авторское Каберне Совиньон 	3,8	379,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/5fe/1766373.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
332	Marques de Villanueva Tempranillo Carinena 	3,4	439,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d18/139572.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
333	Calderona Crianza 	3,6	1 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/cf9/1562169.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
334	Tarapaca Cabernet Sauvignon 	3,9	789,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e0c/539658.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
335	Art.Terra Alentejo 	-	749,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/0cd/1785087.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
336	Simonsig Stellenbosch 	3,6	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/bbe/575758.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
337	Col di Sasso Toscana 	3,6	1 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/362/369809.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
284	Campo Viejo Tempranillo Rioja 	3,6	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c1c/217819.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
340	Амра 	-	549,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/56c/236255.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
341	Quinta Nova Reserva 	4,1	2 399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/680/3399464.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
342	Jean-Pierre Moueix Pomerol 	3,9	4 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/af7/649207.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
383	Beaujolais-Villages 	3,7	1 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/116/3269680.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
343	Rioja Aldea Real Tempranillo 	2,9	689,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/86f/1559932.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
344	KG Gries Lagrein Riserva 	4,1	1 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/6e8/455359.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
345	Cambridge Crossing Shiraz 2018 	3,7	1 119,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a02/584717.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
346	Chateau Labarrade Malbec 	3,5	1 099,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d3d/575761.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
347	Cavino Ionos 	3,8	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a93/246722.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
348	Сихарули Мукузани 	3,8	669,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/7ef/206197.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
349	Palazzo Nobile Chianti Classico 	3,9	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/9a7/244636.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
350	Sancho Garces Rioja 	3,6	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/2c9/363054.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
351	Domaine des Chanssaud Chateauneuf du Pape 	4,2	3 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/5e2/763407.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
352	Balance Pinotage Shiraz 	3,5	589,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/5b5/1109845.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
353	Butterfly Ridge Shiraz Cabernet 	3,7	839,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/898/758908.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
354	Casa de la Ermita Seleccion Rey Limitada 	3,8	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/873/3420299.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
355	The Wedge Shiraz Mourvedre Viognier 	3,8	949,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d62/3269638.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
357	Vol d'Anima de Raimat 	3,7	1 489,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e99/363295.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
358	Cuatro Ojos Merlot 	3,7	479,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ce5/323259.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
359	Криница Rivage 	4,1	3 799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/9d8/3430258.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
360	Vina Albali Темпранильо Шираз 	3,3	299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a53/1900198.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
361	Clemente VII Chianti Classico 	3,8	1 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/01b/1900157.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
362	Chateau Pessan Saint-Hilaire Graves 	3,7	1 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/5ec/733723.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
363	JP. Chenet Cabernet-Syrah 	3,4	279,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a7a/1509355.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
364	Frog's Return Cite de Carcassonne 	3,9	749,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/09d/410988.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
365	Высокий берег Мерло 	3,5	459,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/05d/775601.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
366	Fairview Пинотаж 	3,4	2 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/79d/2777330.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
367	Sol De Chile Carmenere 	3,2	779,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b1c/3431583.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
368	Escal Roja Tempranillo 	3,2	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/472/496069.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
369	Domaine d'Andezon Signargues Cotes-du-Rhone Villages 	3,7	2 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/4cc/246614.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
370	Ca'Delle Rose Pinot Nero Trevenezie IGP 	3,8	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c51/438686.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
371	1000 Stories Zinfandel 	4,1	3 599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/0c1/593763.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
372	Marques de Caceres Reserva Rioja 	3,9	2 879,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e42/225795.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
373	Proximo Риоха 	3,7	1 199,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/7f5/1145301.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
374	Cellier des Dauphins Cotes du Rhone Prestige 	3,4	379,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/af3/403725.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
375	Chateau de Landure Minervois 	3,6	979,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a68/1900225.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
376	Belagaio Primario 	-	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/8ce/3431380.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
377	Каспийская коллекция 	3,4	369,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ba3/1900195.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
378	Gustave Lorentz Pinot Noir 	3,6	2 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b01/3355225.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
379	Villa de Corgos Reserva Bairrada 	4,1	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/620/338781.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
380	Torres Coronas Tempranillo 	3,5	1 399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/85c/260348.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
381	Machiavellico Toscana 	3,9	1 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d65/2270322.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
382	Momentum Solare Grenache Syrah Mourvedre 	3,7	799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/f11/3436952.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
384	El Sotillo 	2,3	449,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c5d/3092594.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
385	Faina 	3,1	449,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/664/317648.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
386	Solarita Chianti Riserva 	3,6	779,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/480/176674.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
388	Crudo Nero d'Avola Cabernet Sauvignon 	3,9	1 199,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/56b/613612.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
389	Bravo Trade Саперави 	-	919,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/6c4/1509294.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
390	Premium 1904 Tempranillo Syrah 	3,7	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/43d/496068.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
391	Freschello Rosso 	3,6	419,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/3f4/1647368.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
392	Castillo de Fuendejalon Crianza 	3,8	1 129,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ad7/520962.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
339	Mildiani Пиросмани 	4,0	659,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/0f6/512811.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
394	Marques de Aldeanueva Crianza Rioja 	3,7	1 119,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c85/1509347.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
395	Hoya De Cadenas Reserva Tempranillo 	3,4	649,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/cdd/135065.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
396	Castelvecchio Barbaresco 	3,4	1 199,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/bc7/228790.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
398	Valserrano Finca Monteviejo 	4,3	2 799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/776/1024503.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
399	Chateau Le Faure Bordeaux 	3,4	1 349,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c22/1170999.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
400	La Piuma Монтепульчано 	3,4	624,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ccf/1900307.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
401	Tussock Jumper Pinot Noir 	3,5	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b46/416166.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
402	Venta Real Крианца 	3,4	629,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/0b9/1900174.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
403	Sol De Chile Syrah Reserva 	3,5	779,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/49d/3431585.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
404	Sankt Anna Dornfelder Halbtrocken 	3,9	779,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/af0/676593.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
405	Vinedos del Villar Tempranillo 	3,8	949,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/805/3420303.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
406	Prototype Cabernet Sauvignon 	3,7	1 399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c75/3422434.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
407	Fassini Montepulciano D'abruzzo 	3,4	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/770/164350.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
408	Gurpegui Garnacha 	3,7	749,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d06/3418756.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
409	Jardin Fleury Syrah 	3,7	629,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/175/780383.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
410	Vinum Nobile Каберне 	3,3	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/4fb/512707.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
411	Vivo Greto 	3,2	449,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/954/1900274.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
413	Vicente Gandia Finca del mar Tempranillo 	3,5	799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/3ed/763107.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
414	Maison du Soleil Cabernet Sauvignon 	3,4	549,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c46/685533.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
415	Flor Morena Tempranillo 	3,4	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/375/1783769.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
416	Estaciones Tempranillo 	3,4	799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/34f/1900254.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
417	Castelvecchio Nebbiolo D'alba 	3,4	1 199,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/7e2/228792.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
418	Antico Portico Aglianico Beneventano 	3,7	679,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a8d/225929.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
419	Fanagoria 100 оттенков красного Саперави 	4,1	1 449,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/281/1092838.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
420	Territori Vocati Chianti 	3,5	779,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b16/225931.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
421	Gran Cita Del Sol Crianza 	3,7	479,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/14d/144223.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
422	Tresors de Loire Saumur Champigny 	3,6	1 379,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/837/496081.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
423	Arnaldo-Caprai Montefalco Rosso 	3,7	2 229,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/db6/606036.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
424	Bravo Trade Castillo De Ayud 	3,9	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/740/1509297.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
425	Bertinga Сасси Кьюзи 	4,1	2 899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/fde/2777331.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
426	Maison Givas №3 Bordeaux 	3,6	1 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/265/317686.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
427	Ballaro Nerello Mascalese 	4,0	799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/885/512704.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
428	el Gordo Tempranillo 	3,5	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/556/1562167.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
429	Buttafuoco 	4,0	1 269,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/27e/435200.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
430	Chateau Tour Verite 	3,3	1 449,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/85f/806163.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
431	ординарное Mamiko Саперави 	3,7	519,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a2f/1460384.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
432	E Arte Puglia Rosso 	3,7	1 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/609/2270321.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
433	Les Halles Cotes de Gascogne 	3,9	949,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a37/3420306.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
434	M.Chapoutier Luberon La Ciboise 	3,6	1 419,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/f0b/576381.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
435	Gerardo Cesari Justo 	3,6	1 319,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e29/905499.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
437	Marques de Riscal Gran Reserva 	4,2	6 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/411/562461.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
438	Faustino VII Tempranillo 	4,2	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/af6/357455.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
440	Askaneli Brothers Ахашени Красное полусладкое 12 % алк., Грузия, 0,75 л	4,0	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/9cb/1766378.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
441	Gabriel Meffre Châteauneuf-du-Pape Laurus 	3,7	5 399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ea9/289689.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
442	Dance Del Mar 	3,7	1 099,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/928/2270323.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
443	Domaine de Tara Hautes Pierres Ventoux 	3,8	2 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/4e3/461555.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
444	Bierzo Luna Beberide 	3,4	939,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a35/2270316.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
445	Care Tinto Sobre Lias 	3,8	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e79/2810845.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
446	Bodegas Emilio Moro Finca Resalso 	3,8	1 799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a0d/291191.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
447	Murviedro Bobal Roble 	3,7	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/49f/325236.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
436	Lolita 	3,9	659,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/cfa/789084.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
449	Vigne-Lourac Duras Cabernet 	4,0	749,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a0a/924799.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
450	Carson's Cabernet-Sauvignon Shiraz 	3,6	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a82/780358.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
452	Muelle Tempranillo Gran Seleccion сухое 	3,9	559,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/18d/590007.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
453	Arrivederci полусухое 	3,9	799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/cc5/606027.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
454	Chateau Haut Rocher 	4,1	2 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/7e3/515842.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
455	Джейран Матраса 	3,4	449,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/182/401217.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
456	Криница Arena 	4,0	1 899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/099/3430257.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
457	Саперави 	3,4	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/55b/201371.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
458	Marques de Caceres Crianza Rioja 	3,6	1 799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/fa5/763401.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
459	Domus Vini Refosco 	3,5	549,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/82e/229660.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
460	Lirico Bobal Cabernet Sauvignon 	3,1	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/fc1/139574.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
461	Sobremonte Tempranillo 	3,3	479,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/887/201496.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
462	Chateau Barre Gentillot Graves de Vayres 	3,9	1 199,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a3d/515846.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
463	Талавари Саперави 	3,7	539,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/58b/1836553.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
464	Muenzenrieder Pinot Noir 	3,6	749,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/929/1925387.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
465	Garnachas de Espana La Garnatxa Fosca del Priorat 	3,8	1 699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/5a7/324816.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
466	Sol De Chile Syrah Merlot 	3,4	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/9f4/1092845.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
467	Vylyan Hegy 	3,7	484,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/72f/939093.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
468	Сихарули Саперави 	3,7	274,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/60e/1814090.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
469	Stobi Vranec 	3,9	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e40/308260.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
470	G7 Cabernet Sauvignon 	3,2	344,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c56/1766375.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
471	Vylyan Villany Cabernet Franc 	3,6	649,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/22d/496018.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
472	Art.Terra Amphora 	-	749,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/787/1785091.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
474	Композиция №1 	-	399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/84e/1925583.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
475	el Gordo Syrah 	3,6	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c34/1562171.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
476	Gurpegui Tempranillo 	3,0	749,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/f55/3418753.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
477	Belagaio 5Cento 	-	1 119,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/afc/3431379.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
478	Sankt Anna Spatburgunder Pfalz 	3,5	779,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/260/381536.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
479	S!gnature Caramany 	-	559,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/6fe/520882.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
480	Bouchard Aine & Fils Les Vendangeurs Bourgogne Pinot Noir 	3,4	1 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/1e0/314401.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
481	Domaine d'Andezon Cotes-Du-Rhone 	3,7	1 899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/5e5/379132.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
482	Conde Otinano Reserva Rioja 	3,7	1 389,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/9c6/322439.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
483	Frescobaldi di Castiglioni 	4,0	3 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ce2/3418757.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
484	Castelvecchio Grignolino D'asti 	3,3	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/85e/228794.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
485	Villa de Corgos Bairrada 	3,8	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/0dd/342162.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
486	Rioja Mil Hojas Tempranillo 	3,1	849,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/897/1784318.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
487	Tussock Jumper Touriga Nacional 	3,6	849,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/26a/575760.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
488	Chateau Grand Moulinet 	3,9	2 799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/324/3400276.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
4	Chateau Barre Gentillot Graves De Vayres 	3,9	549,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a35/970560.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
25	Antico Portico Syrah Terre Siciliane 	4,1	679,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a26/225930.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
51	Tour de Mandelotte Bordeaux 	3,7	979,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/072/139533.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
57	Солнечная Долина Пти Вердо 	3,4	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/458/868150.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
75	Ciconia The Reserva Blend 	3,8	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/970/252128.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
94	Santa Hortensia Carmenere-Cabernet Sauvignon 	3,1	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ff0/241917.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
113	Chateau Tamagne Saperavi 	4,0	449,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/f50/436162.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
114	Aretino Tipici Chianti Riserva 	3,7	769,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e45/164248.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
134	Venta Real Гран Резерва 	3,4	749,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/3fd/1925670.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
159	Santa Hortensia Cabernet Sauvignon 	3,3	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a90/173974.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
180	Fassini Chianti 	3,6	1 199,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/0ac/225862.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
439	ликёрное Oloroso Aurora Jerez-Xeres-Sherry сухое 17,5 % алк., Испания,...	4,2	2 899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e6e/299067.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
448	Ionos Cabernet S.-Merlot 	4,0	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/1ea/3430253.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
199	Монастырская трапеза 	3,3	249,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ff2/378906.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
220	Redwood Cabernet Sauvignon 	3,3	619,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/6fb/696701.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
227	Baluarte Roble 	3,6	879,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/71a/641636.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
238	Sikory Премиум Каберне Совиньон Семигорье 	3,9	1 099,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/dbc/225892.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
265	Gato Negro Cabernet Sauvignon 	3,4	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d51/1647361.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
451	Con un Par Monastrell Petit Verdot 	3,5	1 249,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/fb0/650534.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
473	Bierzo Finca Luna Beberide 	3,5	1 379,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/946/2270317.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
170	Albert Bichot Chateau de Dracy Pinot Noir Bourgogne 	3,6	2 639,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e0a/267348.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
283	Belisario Колламато 	4,0	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c06/1900164.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
292	Novacorte Amarone Della Valpolicella Classico 	4,3	2 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/fac/484539.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
313	PMC Neubruch Pinot Noir 14 % алк., Австрия, 0,75 л	4,1	1 599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a3e/2337394.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
318	выдержанное Escal Roja Special Selection Grenache Tempranillo 	3,9	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/1cc/496070.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
338	Fetzer Cabernet Sauvignon 	3,5	1 379,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/199/1145309.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
356	Флейта-Позвоночник Каберне Мерло 	-	549,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/7de/3393366.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
387	Antico Portico Nero d'Avola Terre Siciliane 	4,0	679,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/f46/225943.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
393	Palabra de Caballero Crianza La Mancha 	3,7	399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/72f/201477.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
397	Passo Sardo Cannonau di Sardegna 	3,6	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d66/401226.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
412	Garnachas de Espana La Garnacha Salvaje Del Moncayo 	3,7	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e1a/176667.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
1	Marques de Abadia Rioja Reserva 	4,0	1 599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/f15/244639.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg
\.


--
-- Data for Name: perekrestok; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.perekrestok (id, name, rate, price, picture, shop_logo) FROM stdin;
9	Jardin de la Taur Grenache-Syrah 	3,9	549,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/16/a3/619714a31413103f6ab657e40875.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
10	La Miranda Secastilla Garnacha Somontano DO 	3,8	579,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c1/bd/1ca39a2b2f04ed9749c67a3e8077.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
11	Molom Tinto 	3,8	759,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a0/99/a301fe4d9f565ff60e90cacd1f50.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
12	Cuvee Blanc Terrier Rouge 	3,6	429,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/99/f8/ed6ce3a845987c64c4ed8c2788c3.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
13	Redwood Vineyards Pinot Noir 	3,9	939,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b7/98/b1482a0674622edf2983fbcfe982.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
14	Takar Арени 	3,9	579,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/97/2e/a8210xd277ec134480da7c01c560.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
15	Matsu El Recio Toro DO 	4,1	1 999,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b2/9f/8697a4f3b7b626da0fa2be2208c0.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
16	Matsu El Viejo Toro DO 	4,3	4 499,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e5/7f/d79ab19086a1b07d479082ae4d9b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
17	Primasole Primitivo 	3,9	719,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/88/a8/12a75a8c8f6d669a5f09468a1fbf.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
18	Chateau l'Eclair Cabernet ординарное 	2,9	299,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/3a/bd/9676ba6134f0ee03ebec4f65e999.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
19	Rouge de Talu 	3,6	579,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/79/02/34910056001a853c662d8cfb15e4.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
20	Тифлисский Дворик Саперави 	3,2	349,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/2e/d8/0f44047755xd78ccba8f98f02197.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
21	Chateau Tamagne Терруарное Саперави - Красностоп 	3,8	999,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/15/fe/fcc486e058xd62xde009bb451da7.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
22	Sobreiro de Pegoes Premium 	3,7	529,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/8d/cb/64f84045e3ec26f3257bdffcc284.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
23	Appassionatamente Rosso 	3,8	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0f/5b/2cbea626738063f1052a73c6901e.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
24	Мысхако Quintessence Cabernet Sauvignon 	4,1	759,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/3f/9f/1a3daca2b81412fe63c748f7b777.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
25	Loggia del Sole Chianti DOCG 	3,1	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ed/0e/4138c5db1f488c2dfe52774328f2.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
26	Negrar Valpolicella Ripasso Classico Superiore DOCG 	3,8	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ff/b3/15220bcf4a1095e7da443f30e310.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
27	Highway to Hell 	3,8	799,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/fb/f8/d0f832d1d173b42bf0f4c005666b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
28	Bründy Zweigelt 	3,7	659,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4f/bc/9d165a232d7c8806879a3071e0d6.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
29	Musita Rabah Nero d'Avola 	3,7	529,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5d/96/1770xd729e13455e0a3e880f01d7.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
30	Inspirado Carmenere 	3,6	429,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4a/9e/78d5948e10c9975418af24fa7436.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
31	B.IO Sangiovese di Romagna DOC 	3,6	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9c/9b/ee68811ee996d8f39425bd24150a.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
32	MV Malbec Reserve 	3,7	859,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/cd/63/42b0963016b8842467fe4c3cc3f4.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
34	Maradi Саперави 	3,6	499,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/fa/78/98f162aac6ab0233b696e2e4ffa4.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
35	Jardin Fleury Syrah 	3,7	499,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/fb/1d/5d52b896f8c2e0f44b42d9a9581d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
36	Chateau Tamagne Красностоп-Анчелотта 	3,3	299,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f9/91/7ab2e16b9e1eb3b9b09544802856.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
37	Гранд Резерв Атаман Красностоп 	3,6	729,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/2c/5e/af55exdf3e51285be12a0aexd7b5.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
38	Солнечная Долина Меганом 	-	759,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/89/61/e4ebd2af6f58fb618b415f5d7167.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
39	Высокий Берег Каберне Совиньон 	3,4	569,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/6b/69/9892a3c1922956a58ff29bb697b7.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
40	19 Crimes 	3,9	1 799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d6/bc/2f3b83ca94256e6d2e67f072e5eb.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
41	Don Simon 	3,0	439,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/89/bb/4ac504aa22755d8d689b2bfc530e.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
42	Beefsteak Club Beef&Liberty Malbec 	3,7	889,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/49/4c/9e45c0xdbe6748bb13bdcf5d8b59.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
43	Q.S.S. Рар 	3,8	799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/29/87/dff915c5ede95a9aebc60114e192.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
44	Ed Knows Мерло 	3,8	659,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/14/4f/fa5e0b94058529fd2b10cb6ea213.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
45	Fetzer Zinfandel Valley Oaks 	4,0	1 349,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/2a/62/5e641b7162b9802eaf0e0dae566d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
87	Bouchard Aine&Fils Cotes du Rhone AOC 	3,7	749,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9e/f1/2d93d3c8161d488bf18b7d587dcb.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
48	Saveurs d’Autrefois 	3,9	879,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a5/f1/42bc74e56dc7bf3b7691b56ede3c.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
49	Loggia Del Sole Chianti DOCG 	3,1	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/fe/ae/5b717d8697f118exd2301d16769f.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
50	Le Grand Noir Pinot Noir 	3,7	659,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/14/68/f174fd9d5e10f53c13ff6dcb714c.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
51	Solano Monastrell Jumilla DO 	3,5	359,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/11/99/1da0959338fe3da9be1e9d2dfb85.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
53	Cape Art Pinotage 	3,2	399,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/64/12/735ee86abcf3de7a276e1cd499c7.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
54	Ликурия Терруар 	3,6	699,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/64/53/c345c412c49655249bc92e2b0c6f.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
55	Elegido Tempranillo 	3,8	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f6/48/248395b37c74a8ee771ef8bed0e3.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
56	Vivanco Reserva Rioja DOC 	-	1 799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/09/f5/7e4d1aa467615f094c2a06d0c466.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
57	Sangre de Toro Tempranillo La Mancha DO 	3,7	749,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/94/c6/4603bf486ba995acf864f4dfa219.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
58	Lindeman's Bin 50 Shiraz 	3,5	1 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ac/2b/45e0b6865a49c6109041c221da64.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
59	Chateau De Talu Море волнуется два 	3,5	499,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/35/e5/a91b4db8d15d571615cf48470837.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
60	Авторское Саперави 	3,5	409,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a0/8b/95e49fa375056a7a1d2dd22b61ca.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
61	Солнечная Долина ПТИ ВЕРДО 	3,4	759,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/85/01/77b2013ca61566ba1972076572f8.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
62	Chateau Pinot Гравитация Пино Нуар/Саперави 	3,7	799,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9a/b0/d5f13ccbf5926de5962ec2fbaafd.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
63	Negrar Appassimento 	4,1	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/1b/13/5b5bd348683b17e1f95591e3fb73.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
64	Mayrik 	-	449,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a9/18/c216d9b5d33fc5bd0cfa2b5b3d9d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
65	Rutini Wines Trumpeter Malbec 	3,8	1 039,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0d/5f/6a14836de752xd7cc0bd13f1f890.png	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
66	Point Blauer Zweigelt 	3,8	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/be/a4/3048d2cdebdfb592b52d51cd4f2c.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
67	Karas 	4,0	1 499,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e7/a1/4124d224140ea5bdebe389aee8f0.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
68	Резерв Винодела Каберне Совиньон 	3,4	269,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e8/b3/5c0546e3b3a2d7910a936a8442ca.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
69	Mapu Cabernet Sauvignon Maule Valley DO 	3,5	1 029,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/98/83/11712c856f214fa192fb6b8xd4b7.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
70	Astrale 	4,1	1 549,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f2/61/xda1e076bc949e327992822277b0.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
71	Pirovano Collezione Primitivo Puglia 	4,0	759,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7c/fe/200e68ea84d56866d627f78206ce.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
72	Collezione Costantino Organic Amorcor 	3,9	649,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4e/16/55df87a6bc12c81a038e317ff912.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
73	Имение Сикоры Каберне Совиньон 	3,9	1 149,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f0/d3/cee47e3997e5e6dd9fcf0fdd2b8f.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
74	Инкерман Каберне Резерв 	-	759,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/72/cd/c8eba2496c295b8531fd89883161.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
75	Loggia del Sole Chianti Riserva DOCG 	3,2	759,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/8b/ee/eb2896e734f3fb917ef413658b32.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
76	Conti Sani Chianti Classico DOCG Primum 	3,7	989,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/17/de/e435c9bcac288990617fcb6d3b33.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
77	Атаман Гранд Резерв Цимлянский черный 	4,1	959,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/63/0c/7213d125900447005f2571f3e9b5.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
78	Альтос Иберикос Крианса 	-	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/bb/0d/9335efd7c687a0f48143cf4b75ba.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
79	Gran Passione Appassimento Rosso 	4,0	1 249,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/cf/7c/beba56331cd02db06cbf6933f005.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
80	Cacciata Chianti Classico DOCG Riserva 	3,6	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7a/9e/f5289d41ea8813bc220829716185.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
81	Tavernello Syrah Organico 	3,9	619,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c1/01/e00ab4da0fa9b86bf6ed38960f5f.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
82	Destination Rouge Bordeaux AOC 	3,7	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/61/06/3cbbbc6bc5288e302a8a11b94546.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
83	Rauli Merlot 	3,4	399,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/cc/24/7f4fc2e085d7f542a18150cc79e9.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
84	Masi Bonacosta Valpolicella Classico DOC 	3,5	1 249,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f8/00/fa63ea2064467593a13b6ba44609.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
85	Barefoot Zinfandel 	3,6	739,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/48/f7/db81968992d608a6f38f97132b07.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
86	Chateau Tamagne Каберне 	3,4	169,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/bb/15/978337c379c9bdb215ddd974908e.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
88	Tavernello 	3,2	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7b/bd/dd9774436a6257a6a8db56454616.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
89	Riecine Chianti Classico DOCG 	4,0	3 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b4/39/70675eb7dd8c40159fb4af5aa08b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
47	Резерв Винодела Мерло 	2,8	269,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ee/d2/d1f309b07a1f1bbcf340119a9145.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
92	Тавквери-Мерло Цард марочное 	-	599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/29/11/2383fe04c1f43f24022a0c991b30.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
93	Yali Уайлд Свон Каберне Совиньон 	3,8	1 149,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5f/21/7bf42e9ce1b61048a962bbd667fc.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
94	Кубань Таманский полуостров Шато Сенной 	-	499,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/44/51/c968350eb5f4ee83f609515421df.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
95	Цард Ломиаури-Саперави 	-	599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c2/2b/eb85fc4b7c40432d5a4d2efe3be2.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
96	Цард Саперави-Аладастури 	-	599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0c/18/ddf8692302c3ffdcf79cd94acc61.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
97	Medija 	-	539,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/32/aa/6e38d49167703d318124310a18e9.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
98	Quintessence Шторм Шираз 	-	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/22/62/190407f9b3aaff1e61e178a199c0.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
99	Castillo de Ayud Calatayud 	3,9	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c4/2c/f8d20babf832ed818fabee7e8845.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
100	Aristov Anima Ancellotta 	3,7	549,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a3/14/e83c83b7b8553dcbdfae7c9a861c.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
101	De Wetshof Danie de Wet Pinotage 	3,7	1 029,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e4/5c/bd01b928fd28282f56007bb8b24a.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
102	Poggio Passo Malvasia Nera 	3,7	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/53/c2/68af61615274037ab07ebcaa1a0c.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
104	Lunatico Primitivo 	3,9	859,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c7/08/f807d2c9f6799103de8e0111efe5.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
105	Lunatico Negroamaro 	3,9	859,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/54/6b/d4135f9c704caa0d5a218e59eaa2.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
106	Negrar Corvina 	3,6	779,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/87/72/65997ae34ae80cf83ca2bcdbf3f1.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
107	Rabo de Gala 	4,1	499,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ee/db/d87ed13d73b56d4b13588dc25b7d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
108	Monte Real Tempranillo Rioja DOC 	3,4	1 799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/8f/d5/961553da0d04c62369a665a99b3d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
109	Claroscuro Tintas de Uco 	4,0	1 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/11/a9/2c897839a72cb05bcd22697648b3.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
110	Finca Constanсia Parcela 23 	3,6	1 149,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d3/80/3c32845976e4cbd8dbac50543645.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
111	Finca Constanсia Seleccion 	3,7	959,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/2c/00/bcc58b0dc9e8b7d289abdfb4d0f7.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
112	Born to be Wild 	4,0	799,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/91/85/9bb1b8db4b4474495aa5ca613eb8.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
113	Tentation du Sud 	3,9	899,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/28/1f/b738451b3637dcbf4a7cfe22a369.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
114	Pais El Autoctono Secano Interior DO 	3,7	1 049,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/50/bc/354c6xd84f621bcf44881681dd86.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
115	Gulfstream Cabernet Sauvignon-Shiraz 	3,6	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/af/f0/af3743eddb000e497251b64607a9.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
116	35° South Cabernet Sauvignon 	3,3	539,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a4/0c/b6f8262c2f01e97b2c407a534295.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
118	Chocoholic Pinotage 	3,7	999,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f7/ac/b6e4f891709b9168e8a7cc0fd2f7.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
119	Masseria Doppio Passo Primitivo-Zinfandel 	4,0	919,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4a/a8/cac0b8ce54ed1e51c8dee21d860d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
120	Masseria Doppio Passo Copertino DOC Riserva 	4,1	1 349,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/74/a0/1xda73c630d8950e1b4027f08513.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
121	Simonsig Cabernet Sauvignon-Shiraz 	3,6	1 149,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/32/9a/13da0fdca508ed39ae9b542e691f.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
122	Doppio Passo Primitivo BIO 	3,9	919,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ff/9a/713fe5e528e10824283faf5d8e3d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
123	Signos Red Blend 	3,6	1 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ea/21/2xd91d3b41d206977212ef3209b3.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
124	Signos Malbec 	3,7	1 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0b/7d/fb763abe3e67268e075f05aae542.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
125	Cranswick Lakefield Shiraz 	3,5	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9b/a5/092606718bfcxd21e8de6c174ff5.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
126	Petalos del Bierzo DO 	3,8	2 999,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e6/52/161fcfd790e9c49f3d350d329c0a.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
128	Masserie Pizari Primitivo 	3,8	1 459,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/36/d2/c56c65d04637304162e8d0de8b6a.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
129	El Vinculo Crianza La Mancha DO 	3,9	1 699,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b0/35/0a15f5bd3ece32ef2acda5458f75.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
130	Gamla Cabernet Sauvignon 	3,9	1 969,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e3/6e/89362540b8dd21cfeaccc012730d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
131	Catena Malbec Mendoza 	4,0	2 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/6c/01/bf356751b148c7b00b09ae8c7ecf.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
132	Escudo Rojo Carmenere Reserva Colchagua Valley DO 	3,8	2 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9c/a0/e7335ae5a410947548935d3b1f0d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
133	Little Beauty Pinot Noir Marlborough 	4,0	3 349,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/32/6f/869fd14d41bfe9d76a34efd6e706.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
90	Steakwine Cabernet Sauvignon 	3,8	759,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e7/34/b2c46b127e572262ab4e7a4015bc.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
135	Alamos Malbec 	3,7	1 349,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/81/2a/91360f6fbfe7fea1055b9bb80f84.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
136	La Braccesca Vino Nobile di Montepulciano DOCG 	3,9	2 699,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0d/c0/cca2d5e512c2a92cface647e10a8.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
137	Mataca 	-	1 799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/eb/fc/cbf33e94c021cabd8bed554fc07a.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
138	Barahonda Summum Monastrel Yecla DO 	4,2	2 749,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/77/bd/04cbd399988eb3b685xdf27c79c4.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
139	Barahonda El Bicho Raro Yecla DO 	3,9	2 059,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/1e/ea/d6734c1c6561ddedd5e71e7de096.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
140	d`Arenberg The Footbolt Shiraz 	3,7	1 699,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c2/8f/f3d4460333dd5ce8dda5d4d9bb22.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
142	Boyante Tempranillo Organico Ribera del Duero DO 	3,8	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/6a/95/312299a4f2289a79812143d48fdc.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
143	Boyante Roble Ribera del Duero DO 	3,8	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0a/ca/4ff005c61f8xdba5c4cec44cff2a.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
144	Neprica Primitivo 	3,8	1 369,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0c/a2/b109ba19b191fd8c5f6b2521a417.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
145	Pagos del Rey Condado de Oriza Tempranillo Ribera del Duero DO 	3,5	1 049,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a5/5b/40fcac7d54844ff99557565b32ac.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
146	Alma Valley Red 	3,2	639,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/23/90/fc0e7714b6577c6a2aec553d2d36.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
147	Tenuta il Poggione Rosso di Montalcino DOC 	3,9	2 229,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/66/aa/7e846cc47f0b56aa8857c278e9ee.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
148	Lucente Toscana IGT 	4,0	5 599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ac/e0/5587ec765418a101b50f10d40d97.png	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
149	Pianirossi Sidus Montecucco DOC 	3,8	2 139,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7c/a4/76a4eab5d635c5af4c7d5d9a3764.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
150	Contrada Maestra Barbera d'Asti DOC 	3,8	1 349,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/50/5f/51488f7066dbda01b324bae69724.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
151	Amaranta Pinotage 	3,6	439,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/66/ed/c77f4a3911c4186d97ef837b88a8.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
152	Долина Привидений Каберне Совиньон 	2,5	349,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d5/5e/71fddd13abd3d9a093aeb37f556a.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
153	Tenuta il Poggione Brunello di Montalcino DOCG 	4,2	4 039,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/61/f4/b50f8e8d409b31bd215da857c209.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
154	Stobi Verdot Private Reserve 	3,8	1 459,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/16/50/01c709f2d5647277c8933f41dd26.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
155	Silverado Cabernet Sauvignon Napa Valley AVA 	4,4	4 999,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/22/9c/c20b4507ca2665109acd65d604d0.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
156	La Matiniere Crozes-Hermitage AOP 	3,7	3 049,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/92/73/60234a65391a37c4d62ab10dcf3b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
157	Инкерман Каберне Гранд Резерв 	-	1 049,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/11/e6/fded63788c52d3babf60b5b8a6f3.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
158	Cristo di Campobello C’D’C’ Rosso 	3,8	1 629,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7c/3e/192714d5db245eecbafb9a5f9ffd.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
159	Ramon Bilbao Edicion Limitada 	4,0	1 889,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/2e/ce/e9deaecf7a364fa44ba4a28879c9.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
160	Simonsig Redhill Pinotage 	4,2	2 319,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/38/2c/dff9cfba9604567818b84d3a7e4a.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
161	Simonsig Merindol Syrah 	4,2	2 829,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c1/ef/4d68b0bf1c0f44edac17f8cc3620.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
162	d`Arenberg The Laughing Magpie 	3,7	2 919,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/1a/5b/34a69cbc13c08f1d090e7bb5ea4d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
163	Vajra Langhe Rosso DOC 	3,8	1 889,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/85/77/f9c35b2452407d0875d18a65fbe3.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
164	Sela Rioja DOC 	3,9	2 749,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/43/3a/ee9cd42916644c081xd21501324c.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
165	Yalumba The Y Series Shiraz 	3,6	1 369,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/64/8c/de325f4b449ab433c427b215a3a2.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
166	Tchotiashvili Саперави Рчеули Квеври 	4,0	2 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d8/49/7af634d013496c08d6fb3751ec55.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
167	Beck Blaufränkisch 	3,8	2 569,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/20/5d/070e63c1823837071b700ddc6e93.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
168	Gentleman Oltrepo Pavese DOC 	3,5	1 499,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/55/db/72db29c0e7925686b1e4a3032285.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
169	Alta Vista Vive Malbec 	3,7	1 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/91/2c/5772a55be9470fc4c2fb1366f18a.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
170	Chateau Frederic Monplaisir 	3,5	939,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e9/f1/982d6c0ba3d6918f907080196d6b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
171	Disueri Sicilia DOC 	3,6	1 539,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5c/57/22c0296faf2ec98cab5e744a3341.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
172	Roda I Reserva Rioja DOC 	4,4	4 799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/93/3e/d472ec1b71ff531f531b824e9051.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
174	The Wine System Tinturio Navarra DO 	3,7	579,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0f/c0/a140536125c660191ae007c947c9.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
175	Mapu Carmenere Maule Valley DO 	3,8	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/90/e8/362307b944a987610dd77c7cb8dc.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
176	El Pacto Rioja DOC 14%, 750мл	3,9	2 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d2/17/bfa30469d1932643xd5156762525.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
177	Абрау-Дюрсо Каберне Совиньон 	3,5	1 649,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/3c/f1/ae3967667e21ba7ff50ab88c62a8.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
180	Suggestion du Chef Merlot 	3,7	679,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4d/cb/22ed8b27a94f8482bc2c0b4b55af.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
181	Musita Regieterre Nerello Mascalese 	3,8	589,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/23/8e/d7bxd365d75837af7ff6ea9f67fd.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
182	Инкерман 	-	519,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/23/8b/dd359f1a8141e25582bc9cd9b40b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
183	Paladin Salbonello 	3,7	919,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0c/b9/4c45d538079cf00bf28b0b72f5bd.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
184	Musita Organic Nero d'Avola 	3,6	739,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/xd/93/b4c55fee221feb323d6b90ed33e6.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
185	Oyster Bay Pinot Noir Marlborough 	3,5	1 779,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/06/b5/928d6c7d1dd3xdcc93119d92f41e.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
186	Инкерман Каберне 	-	399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b9/ba/cf1df504e87ef25245ddf57b3920.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
187	Cа' Del Poggio Nerello Mascalese 	3,7	699,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/86/49/xd914f400168540176e2e50c519b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
188	Поместье Голубицкое Мерло ЗНМП Голубицкая стрелка 	3,9	799,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0a/e7/138265f23387e40a6e45345baed0.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
189	Paladin Drago Rosso столовое 	4,1	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b1/2a/1465c51460c0e66d996308afb03c.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
190	Musita Amal Syrah 	3,8	529,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f4/97/8fdab3f01bf0b994ae5db585a475.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
191	Gai-Kodzor Terroir 	3,7	959,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/78/8c/bb9a4b50e592f63f0f36fcb10d83.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
192	Podere Montepulciano d'Abruzzo DOC 	3,6	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0a/e4/9bf4d41385c8e74b7ab53fae4217.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
193	Emilio Moro Ribera del Duero DO 	4,1	2 999,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/03/e8/c1b83e8c3f1ba3fcfb6d1a26ef3c.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
194	Традиции Абхазии Каберне Сухумское 	3,0	539,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/cf/ee/da0501a3b949a256ed013b17142b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
195	Черноморская Истина Каберне 	-	379,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/6e/da/7b329f24de99d387901e6f706906.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
196	Georges Duboeuf Beaujolais Nouveau 	3,4	1 749,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/fa/ff/bfd95624c20763d59496a587d3ed.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
197	Chateau Tamagne Молодое 	3,6	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0f/64/f8aec0ed8d375a7882608da0ebe9.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
198	B.IO Nero d'Avola Cabernet 	-	1 029,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c7/4e/42ee07f48b91a57384dec9cfb509.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
200	B.IO Nero d'Avola Il Nero 	3,6	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5c/ec/21f4dba3ae72aa261a9acd4438ea.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
202	Badagoni Саперави 	3,6	299,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b4/5f/600e0c5114c72d120302903fb4fe.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
203	Passo Sardo Cannonau di Sardegna DOC 	3,6	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f0/19/acb3523cb015eccf6684d98cf7c2.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
204	Vega Sindoa Tempranillo Navarra DO 	3,5	749,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/29/fa/3d2fe47ba6e78fe574acee1457e8.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
205	Claroscuro Malbec Mendoza 	3,9	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f6/4e/a42c6894c8a355d6ed658c83d15e.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
206	Yamana Malbec-Merlot 	3,5	679,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e5/e5/56416d9bfdcd60a396b382e1b9e2.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
207	Fontanafredda Briccotondo Barbera Piemonte DOC 	3,6	1 449,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/58/ae/efd41b8a28cce975903f0b4cd695.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
208	Turtle Dreaming Cabernet Sauvignon-Shiraz 	3,8	749,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/63/9b/2cc25688f792868af221c4ac3d98.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
209	Ionos Red 	3,3	579,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4d/e5/c390afd28d40743f51c2e282ca71.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
210	Джейран Матраса 	3,4	469,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5b/2d/34173dc4a2a8465bcf053cfb4646.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
211	Pirovano Nero d'Avola 	3,7	659,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/62/62/698fd2ca14398bfd646d3c8e5c5d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
212	Diaz Bayo 8 Meses Barrica Ribera del Duero DO 	3,8	1 499,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/32/c4/fb1f57e1243cacc142xd236dc5xd.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
213	Tavernello Sangiovese Organico 	3,6	619,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/eb/30/8990489ce6f21ddcc4173a88be2e.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
214	Cultus Organic Tempranillo 	3,6	799,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/78/5b/bc8f377aef6ddcfdf44418bc0c72.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
215	Chateau Tamagne Reserve Premier Rouge 	3,7	779,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/32/20/8ed258cc94367e018e1105e089bf.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
216	Beefsteak Club The Mini Malbec 	3,4	429,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/12/40/98f21461743f5da3a424ffb94c05.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
217	Rauli Syrah 	3,4	489,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/cf/dc/6698f1348144f1a1844c7bcbb450.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
1	Murviedro Пасьон Монастрель Гарнача 	3,8	529,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/2d/70/4868bxd729e603f1c34f5ae94418.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
2	San Valentin Garnacha Catalunya DO 	3,9	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/1f/8f/b9db2d5d7df213a1647758f6e0d4.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
3	Don Garcia 	2,9	329,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b3/51/086e1d37b9fb44bd2873d462e92d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
5	Villa Antinori Rosso 	3,8	1 849,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/8a/10/c02988dc2e0cf11f230e19a36457.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
6	Мысхако Марселан 	3,7	549,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/af/e9/8397dc6604d2c557794c0368f7f5.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
218	Радеда 	-	619,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c4/b4/2c4c7ae8d1107bbd3347e401b60c.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
219	Masi Modello Corvina Verona IGT 	3,6	779,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e6/53/c4246d46c84cexd4d28ea66f448e.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
220	Barefoot Cabernet Sauvignon 	3,3	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/68/93/b9ab0eb647d6445117e246b12acd.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
221	Borsao Crianza Seleccion Campo de Borja DO 	3,9	779,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/00/09/a8df8fdceb2c8b304f4e896ea3e8.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
179	Chateau Pinot Pinot Noir 	3,6	959,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e0/98/9fccdf8fd73e3de9f65d0046170b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
242	Champs des Rois 	3,6	759,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c0/7d/deccfc56cb8b6xd0a8ee47967ce7.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
224	19 Crimes The Banished 	4,0	1 949,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/41/f4/6bb522bd0f719cb0fe6f6f418b01.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
226	Pirovano Montepulciano D'Abruzzo DOC 	3,5	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/3d/d8/e66a0af0a2e9a178d994d16b14ee.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
227	Pirovano Collezione Nero d'Avola 	3,7	629,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/cc/66/20ab76e0722fa2a54c5020dd480e.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
228	Montecillo Reserva Rioja DOC 	3,9	1 749,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5c/12/f5c6fc3dd6dd7a5fbf40b803d86c.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
229	Фанагория Авторское вино Каберне-Мерло 	3,4	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4e/c6/b661899e25574c0b9f954e10ef41.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
230	Pearly Bay Dry Red 	3,3	649,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/13/7e/7ff7eabb6bbebf8fc12b466b9c9b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
231	Тайна Колхиды Мукузани 	3,7	799,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/27/95/fe065654f82958f93ef3f56937a1.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
232	Luna Valley 	3,4	549,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/26/51/73a854fd4cb97067409fa372fdc5.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
233	Les Chartrons Lussac Saint-Emilion AOC 	3,6	839,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c5/42/88b6e7e33208f427cb0851ba510f.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
234	Ca'Del Poggio Montepulciano d'Abruzzo DOC 	3,3	679,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d9/79/5a5b8b556xd78ed564affd6410c5.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
235	Ca'Del Poggio Terre Siciliane 	3,5	699,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/2a/82/afeda5d6f45da26d570477a24611.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
236	Racimo de Uva Tempranillo-Garnacha Carinena DO 	3,3	359,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c2/9a/223a19abff0572d5f822f1569df4.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
237	Villa Alberti Chianti DOCG 	3,4	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/59/23/d5d726a202ee6203ce585746ca77.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
238	Telavi Wine Cellar Marani Mukuzani 	4,0	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/6c/df/7680c28ab40481af01557a6ccb7b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
239	Ramon Bilbao Crianza Rioja DOC 	3,9	1 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7e/fe/fa08e9ee567afe63f6a37b6f837b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
7	Cape Art Shiraz 	3,5	399,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/42/47/279f0758fc7b59369d7650073550.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
91	Fyi Red Blend 	3,8	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/06/ca/436e9d8eb05518263d75c8d62e49.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
117	Yalumba Organic Shiraz 	3,6	2 059,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/62/25/f4348cf0abfc553aa95bb191a34b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
201	Planeta La Segreta Nero d'Avola 	3,5	1 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ae/e2/579e28646e4eca1a4e61b26d542d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
240	Don Florencio Reserva Tarragona DO 	3,9	759,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/2b/21/d19505b2926471ec6da86d27403a.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
241	Solar de Alarcos Rioja DOC 	3,7	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/91/12/1ff15b2c4e3a25236f813383b0b2.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
243	Mildiani Пиросмани 	4,0	799,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/79/bb/c4e50140e50334a03283988cee6c.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
244	Feudo Maccari Saia Nero d'Avola 	3,6	2 749,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d1/eb/28064c94f09572d69f178909a2c3.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
245	Barkan Classic Cabernet Sauvignon 	3,5	1 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/22/05/9ef7bf0ba3f32c3593e9bc874851.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
246	Tancia Chianti Riserva DOCG 	3,5	1 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/2b/bf/35d514d1077b316db0929457e6xd.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
247	Castellare Chianti Classico DOCG 	3,8	2 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c2/a0/4280f661e92fa7bbe30e8edb1c1e.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
248	Chateau Haut Bon Fils Bordeaux AOC Rouge 	3,8	799,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/85/36/54f7eac755ba33dc9ca330b47a33.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
250	Raices Reserva Valdepenas DO 	3,7	854,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/44/60/23610ee169de68de36facb392276.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
251	Raices Tempranillo Valdepenas DO 	3,3	719,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/49/62/fbbdbe78b99cca89089edb8d74c3.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
252	Argiolas Costera Cannonau di Sardegna DOC 	-	1 699,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/81/c6/bd1a18607aeae971c6ed7b6d2ec8.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
253	L'Aurore Bourgogne AOC Pinot Noir 	3,6	1 569,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/56/ba/5ca6568a0b6a4eae3376b6429db4.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
254	Frontera Cabernet Sauvignon 	3,2	699,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/2e/af/4033e1cec1b435e98877faae768d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
255	Чегем 	-	559,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/3c/18/5bf87f6dff88c46df4c4b21dbe86.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
256	Zonin Montepulciano d'Abruzzo DOC 	3,5	299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4c/06/bacbac08f2a987a57ba657b34d60.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
257	Vranec Vilarov 	3,9	759,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/6a/ce/0270b49ffbac094aa8cdfffaf598.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
258	Arrivederci 	3,9	809,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e3/2e/ff476e58976700f280b2cd87ec6d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
259	Roccialta Chianti DOCG 	3,4	1 049,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/95/e4/631b685621e753911f1c4bb576e5.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
260	Ведерниковъ Губернаторское Голубок 	3,6	799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0a/bb/057748c9ec84742e07374c10f651.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
261	GRW Мукузани 	3,8	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/21/02/fac273a8dddddb9c625b01e3d1fd.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
262	Luna Valley Selection Carmenere 	3,7	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/cd/19/e3f3cefe8b65f8b3302838b65b44.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
263	Vivanco Crianza 	3,8	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b0/93/5509477fdc364a78xd5004b7d2a1.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
264	La Reserve de Malartic Pessac-Leognan AOC 	3,9	2 799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0e/4b/d0cd639cda61b5f6690b1f72609d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
265	Leonardo Chianti Riserva DOCG 	3,7	1 499,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/58/c1/fe5934edbe3a796a387f613f949a.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
266	Leonardo Chianti DOCG 	3,5	1 149,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f1/6a/61928b0569be621159b05295fc77.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
223	Chateau Tamagne Саперави 	3,8	449,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/87/be/9024af4572c227d6b22e28bfb8c1.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
269	Pianirossi Maremma Toscana 	3,9	4 289,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/73/d2/9fa09xdfc00fc0edxd3a1d71f20e.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
270	Tamari Malbec 	3,4	959,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/75/77/0c589a25dec71015ffa399c04b4d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
271	Barkan Classic Shiraz 	3,6	1 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/af/a0/25cae0785769c15250b1bf92e0e6.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
272	Bouchard Aine&Fils Pommard AOC 	3,9	5 799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/50/e3/xd1a19793a8a3331e8192277435c.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
273	Speri Amarone della Valpolicella DOCG 	4,4	5 699,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/58/6d/6b4ab423c61b03d1a38d7cae250e.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
274	Domaine des Chanssaud Chateauneuf-du-Pape AOC 	4,2	3 799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4b/41/1c0969bc1019bc24c027b5d2ec97.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
275	Salvalai Amarone della Valpolicella Classico DOCG 	4,1	4 999,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4d/c4/5bc98e57a21b7bbeb2866b9af5e4.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
276	La Casada Cabernet Sauvignon 	3,1	799,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/04/21/93998058f7df4c712dd0205b7db1.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
277	Chateau Haut Maginet Bordeaux AOC 	3,5	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a5/88/3ef762089b8db0f93164208f3e65.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
278	La Croix du Pin Cabernet Sauvignon 	3,2	799,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/21/0e/a8986c23f0ea03ea0171ec6dbe0d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
279	J.Bouchon Merlot Reserva Maule Valley DO 	3,4	1 249,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b0/a8/27c6297200519b1568d5ff60d8e8.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
280	J.Bouchon Cabernet Sauvignon Reserva Maule Valley DO 	3,5	1 249,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d3/32/86f1dc901f410fb57c550a10b311.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
281	Tenuta Cantagallo Chianti Montalbano DOCG 	3,6	1 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/cc/85/6c3a4656a5798d63ef9923b4d458.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
282	Tour de Mandelotte Medoc AOC 	3,6	1 349,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/73/aa/12f5406d34aee076203b02be0ece.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
283	Joseph Verdier Anjou Rouge 	3,8	989,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b0/d0/a0e52ac545c1dc0fc70faea228ba.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
284	S'arai Isola Dei Nuraghi 	-	2 999,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/75/d2/7afb2cd8225007ee7669e530174b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
285	Domaine La Suffrene Bandol AOC 	3,8	2 499,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/1e/2f/66de9603d92f7baafa10d8b9943f.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
286	Chevalier d'Anthelme 	3,6	979,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/09/38/74478d576df5b62a24e68e7c4927.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
287	Nipozzano Chianti Rufina Riserva DOCG 	3,8	3 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/6d/5a/250f0c5251fc50fa69393c1f4f48.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
288	Finca El Encinal Roble Ribera del Duero DO 	3,8	1 349,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/77/3d/e990a64f45d6be3d79895194f52a.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
289	Baluarte Roble Navarra DO 	3,6	699,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/78/0c/919dd8e45ec87dbe76a64a8c44a1.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
290	Conti Serristori Chianti Classico DOCG 	3,5	1 289,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/22/0a/1e803db416a067549d9478b09939.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
291	Melini Chianti Riserva DOCG 	3,7	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/06/b9/17498d780a9a5b7aafac001a94cd.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
292	Siglo Crianza Rioja DOC 	3,5	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/91/93/35c8d052c2c94f88b714e5743bca.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
293	Gato Negro Cabernet Sauvignon 	3,4	669,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/cf/79/74c6deaa7e6060a7b66cc08ee9a6.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
294	Col di Sasso 	3,6	1 249,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/56/04/aaaf8e609a5b7bea74cdd50a74aa.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
296	Canti Merlot 	3,4	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7f/df/2ee3eddd8e15c3c764073c34c093.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
297	Steakwine Malbec 	3,9	759,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e9/b0/45d29e4c21bb77364b6d5aa6bbbe.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
4	Matsu El Picaro Toro DO 	3,9	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4b/c7/57e8468ba771d3a5512da80bd353.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
8	Le Grand Noir Cabernet Sauvignon 	4,1	659,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c1/ba/c1ee8f549d7cfefd35aedc8eca03.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
33	Tour De Mandelotte Bordeaux AOC Rouge 	3,7	859,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e2/0a/0e4d300317153c619d8cfaa880c1.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
46	Camden Park Shiraz 	3,7	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e3/bb/9bd9317e4cb4b5c954893bdba0ee.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
52	Поместье Голубицкое Каберне Совиньон ЗНМП Голубицкая стрелка 	3,9	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d6/88/8bf5aa85cf74dbe159edf5573c23.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
103	Poggio Passo Primitivo 	-	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4e/0d/4a90d0ba13f0959c57116fdcf470.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
127	Beringer Founder's Estate Cabernet Sauvignon 	3,6	1 699,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9c/fc/186fce63c907dc1031312a8aceec.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
134	Pi π - 3.1415 Tinto 	3,9	1 969,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0a/52/d9e34e0eae677043a1b20c72c862.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
141	Klein Constantia КК Каберне Совиньон Мерло Стелленбош 	3,7	2 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ab/5b/2690c18b783b58d2a0af9bee3855.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
173	Romain Duvernay Cotes-du-Rhone Villages AOC Seguret 	3,7	1 139,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/26/c0/d810220935330091570648aef0cc.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
178	Appassimento Segreto Rosso Salento 	4,1	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9b/4d/c74c4e348ed870b73e821dc7b790.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
199	Фанагория Номерной Резерв Каберне 	-	459,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c3/52/022b1db7f1344c2fbfd6acbee5cb.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
222	Высокий Берег Мерло 	3,5	659,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/12/a3/9d7a2cc50e0b50c7e5f77aa6dfc2.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
249	Monte Clavijo Tempranillo Rioja DOC 	3,4	914,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0d/93/399e03ef8805bca8ee33105314d9.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
267	La Gerla Brunello di Montalcino 	4,2	6 869,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7c/83/e07277fa79a29183d86edd67e84e.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
268	Pianirossi Solus Maremma Toscana 	3,9	2 319,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ea/0e/1fab962efc8d21125a35756cd68c.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
295	Dos Caprichos Crianza Rioja DOC 	4,1	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/6b/34/dbecxd5011f6001fd4518d487811.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
225	Faustino VII Tempranillo Rioja DOC 	3,5	1 249,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/13/23/99138eb5f840e892ba7f10598c2c.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png
\.


--
-- Data for Name: vivino; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vivino (id, name, rate) FROM stdin;
1	Zinfandel 	4,1
2	Mucho Mas 	4,2
3	Chateau Barre Gentillot Graves De Vayres 	3,9
4	Espiritu de Chile Gran Reserva Merlot 	3,9
5	Astrale 	4,1
6	Bravo Trade Mucho Mas 	4,2
7	Chateau Tour Verite Bordeaux 	3,3
8	Don Batisto Rioja 	3,6
9	Tbilisi Peak Саперави 	3,6
10	Don Batisto Rioja Cosecha 	3,6
11	Chateau Le Rimensac 	3,6
12	Chateau de Cach Haut-Medoc 	3,6
13	Chateau Les Nauds Bordeaux Merlot 	3,6
14	El Jamon Tinto 	4,0
15	Chateau Haut Fontenelle Bordeaux 	3,6
16	Butcher's Cut Malbec 	3,6
17	Care Tinto Roble 	3,6
18	Ignacio Marin Castillo Peracense Crianza 	3,5
19	Conde Otinano Tinto Rioja 	3,4
20	Silverboom Black Label Cabernet Sauvignon 	3,8
21	Golubitskoe Estate Cabernet Sauvignon 	3,8
22	Flor De La Mar Reserva 	3,8
23	Fanagoria Cru Lermont Cabernet Sauvignon 	3,8
24	Antico Portico Syrah Terre Siciliane 	4,1
25	Pagos Hispanos Tempranillo 	3,7
26	Bouchard Aine & Fils Cotes-du-Rhone 	3,7
27	Crystal Bay Shiraz 	3,3
28	Solarita Chianti 	3,3
29	Lenz Moser Zweigelt 	3,9
30	El Pescaito Bobal Cabernet Sauvignon 	3,4
31	Quinta das Amoras 	3,8
32	Tbilisi Peak Пиросмани 	4,0
33	Medoc Chateau Bois du Fil 	3,5
34	Beiral Vineyards Escolha Beira Atlantico 	4,0
35	Barista Pinotage 	4,1
36	Ca'Delle Rose Bardolino Classico 	3,6
37	Дербент Кара-Койсу 	3,2
38	Глобус Вита Para Celsus Tempranillo 	3,1
39	Глобус Corte Vinaia Merlot 	-
41	Delampa Monastrell 	4,0
42	Глобус Пиросмани 	3,8
43	Глобус Саперави 	3,5
44	Matsu El Picaro 	3,9
45	Fassini Chianti Rizerva 	3,9
46	Castillo Santa Barbara Crianza 	3,5
47	Piccini Chianti 	3,3
48	Majano Крианца 	-
49	Agora Бастардо 	3,5
50	Tour de Mandelotte Bordeaux 	3,7
51	Don Simon Tinto 	3,0
52	Novecento23 Rosso Veneto 	3,0
53	Masi CampoFiorin 	3,7
54	Don Batisto Rioja Crianza 	3,6
55	Fetzer Valley Oaks Zinfandel 	4,0
56	Chianti Riserva 	3,8
57	Солнечная Долина Пти Вердо 	3,4
58	Sun Gate Red Zinfandel 	3,4
60	Chateau Pericou Bordeaux 	3,6
61	Le Grand Noir Pinot Noir 	3,7
63	Tbilisi Peak Мукузани 	4,0
64	Мысхако Кюве 	3,7
65	Palazzo Nobile Chianti Riserva 	3,7
66	San Valentin Garnacha Torres 	3,9
67	KG Gries Lagrein 	3,9
68	Castelvecchio Barolo 	3,9
69	Clos Gebrat Priorat DOCa Crianza 	3,9
70	Escal Roja Crianza 	3,9
71	Castillo de Clavijo Reserva 	4,0
72	Крымвинторг Мерло 	2,5
73	Don Ramon 	3,8
74	Terras do Po Reserva 	3,8
75	Ciconia The Reserva Blend 	3,8
76	Mas Momentos Tempranillo 	3,7
77	El Circo Acrobata Garnacha 	3,4
78	Brunello di Montalcino Territori Vocati 	-
79	Nuviana Tempranillo Cabernet Sauvignon 	3,6
80	Astrale Special Edition 	4,2
81	The Collection The Bean Coffee Pinotage 	3,8
82	Silverboom Shiraz-Merlot 	3,7
83	Garnachas de Espana La Garnacha Olvidada de Aragon 	3,7
84	Observer Malbek 	3,5
85	Castillo Santa Barbara Gran Reserva 	3,7
86	Palazzo Nobile Chianti Classico Riserva 	3,9
87	Antico Portico Primitivo Salento 	4,1
89	Majano Темпранильо Робле 	4,0
90	Ignacio Marin Castillo de Embid Crianza 	4,0
91	Tussock Jumper Malbec 	3,8
92	Louis Eschenauer Medoc 	3,8
93	Canada Tempranillo 	3,6
94	Santa Hortensia Carmenere-Cabernet Sauvignon 	3,1
95	Reserva da Familia 	4,1
96	Pirineos Roble Somontano 14 % алк., Испания, 0,75 л	3,8
97	Inkerman Каберне Гранд Резерв 	4,0
98	Solarita Nero D'Avola Sicilia 	3,9
100	Haussmann Merlot 	3,5
102	Castelvecchio Barbera D'asti 	3,5
103	Prototype Pinot Noir 	3,7
104	Каберне 	3,5
105	Zarafa Pinotage 	3,5
106	Tavridia Бастардо Каберне 	3,5
107	Fanagoria Авторское Каберне-Мерло 	3,5
109	Arena de Oro Tempranillo 	3,1
110	Flor De La Mar 	4,0
111	Askaneli Brothers Saperavi Premium 	4,0
112	Chateau Tamagne Saperavi 	4,0
114	Beronia Reserva 	4,0
115	Cape Zebra Pinotage 	3,5
116	Vylyan Macska 	3,5
117	Morgado da Vila Vinhao 	3,2
118	Torres Altos Ibericos 	3,7
108	Palavani Саперави Кверви 	4,0
101	Chateau Brehat 	3,7
99	Кубань-Вина Тамани Мерло 	2,8
88	Броjаница Вранац 	3,7
62	Gaetano Montepulciano D'abruzzo 	3,3
59	Villa Fassini Sangiovese-Cabernet S. Toscana 	3,5
40	Глобус Corte Vinaia Sangiovese 	3,9
119	Ciconia Touriga Nacional 	3,6
121	Observer Syrah 	3,7
122	Domaine bel Avenir Beaujolais-Villages 	3,9
123	Vicente Gandia Finca del mar Tempranillo Crianza 	3,5
124	Orion Salento Primitivo 	3,5
125	Sonovino Россо 	3,3
126	Pierre Dumont Bourgogne Pinot Noir 	4,0
127	Peccatore Douro 	3,6
128	Finca Del Sol Vino de Mesa 	3,9
129	Inkerman 	3,8
130	Balaklava Loco Cimbal I Reserve Repin 	3,8
120	Eventorosso 	3,8
113	Aretino Tipici Chianti Riserva 	3,7
131	Chevalier Alexis Lichine Chateau Charrier 	3,6
133	Venta Real Гран Резерва 	3,4
134	Majano Темпранильо 	4,0
135	Millaman Estate Reserve 	3,6
136	Golubitskoe Estate Мерло 	3,6
138	Ignacio Marin Castillo Peracense Reserva 	3,5
139	Premium 1904 Graciano 	3,9
140	Nero D`Avola Merlot 	3,4
141	Ca'Delle Rose Valpolicella 	3,6
142	Calderona Joven 	3,3
143	by Haussmann Cabernet Sauvignon 	3,4
144	Grona Барбера Д'асти 	3,5
145	Gaetano Sangiovese Puglia 	3,6
146	La Piuma Монтепульч 	3,4
147	San Valentin Tempranillo 14,5 % алк., Испания, 0,75 л	3,9
148	Ramon Bilbao Rioja Reserva 	3,9
150	Solarita Montepulciano d'Abruzzo 	3,5
151	Villa Krim Cabernet 	3,2
152	Castillo Santa Barbara Reserva 	3,6
153	Territorio 	4,1
154	Clemente VII Chianti Classico Riserva 	3,8
155	Inkerman Рубин Античный 	3,6
157	Stobi Makedonsko Crveno 	4,1
158	Santa Hortensia Cabernet Sauvignon 	3,3
159	Beiral Vineyards 	3,9
160	Cuvee de la Guinchule Saint-Amour 	3,9
162	Villa Antinori Toscana Rosso 	3,8
163	Barone Ricasoli Chianti 	3,7
164	Kindzmarauli Marani Saperavi 	3,8
165	Castillo de Clavijo Crianza 	3,6
166	Campero Карменер 	3,7
167	Palazzo Nobile Valpolicella 	3,3
168	Valserrano Crianza Rioja 	3,8
169	Albert Bichot Chateau de Dracy Pinot Noir Bourgogne 	3,6
170	Ханджлури Сувенирная серия Саперави 	-
171	Mas Momentos Syrah 	-
173	Ведерниковъ Губернаторское 	3,4
174	Sazyk Dere Мерло марочное 	3,1
175	Trapiche Malbec 	3,4
132	Цард Саперави 	3,9
137	Ballaro Primitivo Salento 	4,2
149	Stellenbosch Hills 1707 Reserve 	4,1
156	Excelsis 	3,7
177	Marques de Abadia Rioja Reserva 	4,0
176	Pradorey Origen Roble 	3,5
172	Le Grand Noir Cabernet Sauvignon 	4,1
161	Viu Manent Reserva Malbec 	3,6
179	Doudet-Naudin Pinot Noir 	3,7
180	Fassini Chianti 	3,6
181	Astrale Rosso 	4,1
182	Fanagoria 100 оттенков красного Каберне 	4,0
183	Los Condes Gran Reserva 	3,5
184	La Piuma Санджовезе 	3,4
185	Tavernello 	3,2
186	Vinha Do Fava 	4,0
187	Clos Gebrat Priorat 	4,0
188	Il Sarone Россо 	3,6
189	Michel Дорнфельдер 	3,6
190	Tavridia Каберне 	2,9
191	Barkan Classic Каберне Совиньон 	3,2
192	G7 Carmenere 	3,4
193	Inkerman Saperavi 	3,6
194	Salida Tannat 	3,6
195	Monfort Village 	3,4
196	Mora Vista Malbec 	3,1
197	Ballaro Nero di Troia 	4,2
198	Les Jamelles Syrah 	3,8
199	Монастырская трапеза 	3,3
200	Matsu El Recio 	4,1
202	Observer Carmenere 	3,7
203	Chateau Tamagne Fleurs du Sud Rouge de Tamagne 	3,4
204		3,4
205	Protos Roble Ribera Duero 	3,7
206	Batasiolo Barolo 	4,0
207	Bastardo 	3,8
208	Don Simon Cabernet Sauvignon 	3,4
209	Conti Zecca Zinfandel 	3,7
210	Крымский погребок Бастардо 	3,1
211	Capellana Tempranilo 	3,7
212	Inkerman Каберне 	3,6
213	Cellier des Dauphins Prestige 	3,4
214	Stobi Vranec Vilarov 	3,9
215	Mas Momentos Malbec 	3,6
216	Valserrano Reserva Rioja 	4,0
217	Joy Тинто 	3,8
218	Villa Krim Merlot 	3,2
219	Altissimo Chianti Classico 	4,0
220	Redwood Cabernet Sauvignon 	3,3
221	Loving Vincent Des Gracieuses Vignes Rouge 13,5 % алк., Франция, 0,75 л	4,0
222	Tour de Mandelotte Medoc 	3,6
223	Podere Montepulciano D'Abruzzo 	3,6
224	Valserrano Mazuelo Rioja 	4,1
225	Traversa Tannat Uruguay 	3,6
226	Alma River Пино Нуар 	3,8
227	Baluarte Roble 	3,6
228	Prototype Zinfandel 	3,8
229	Vipra Rossa Bigi 	3,5
230	Quinta da Mimosa Palmela DOC 	4,0
231	J.P. Chenet Cabernet-Syrah 	3,4
232	KG Gries Pinot Nero Riserva 	3,6
233	Palabra de Caballero Tempranillo La Mancha 	3,1
235	Antano Tempranillo 	3,3
236	Chateau des Grands Moines 	3,6
201	Tarapaca Carmenere 	3,7
178	Chacabuco Malbec 	3,5
237	Famille Sadel Côtes Du Rhône 	4,0
238	Sikory Премиум Каберне Совиньон Семигорье 	3,9
239	Vol I Dol Negre сухое 	3,3
240	Ханджлури Пиросмани 	-
241	Sella & Mosca I Piani Rosso 	3,3
242	Santa Hortensia Merlot 	3,6
243	Vylyan Ordog 	3,6
244	Marani Saperavi 	3,7
245	Muenzenrieder Neusiedlersee 	3,5
246	Redwood Vineyards California Pinot Noir 	3,9
247	Monasterio de las Viñas Reserva Carinena 	3,7
248	Fleur de la Reine 	3,4
249	Ciconia 	3,6
250	Nobilomo Raboso Veneto 	3,6
251	Az Abrau Madrasa 	3,6
252	Make It Big Pinot Noir 	3,4
253	Conti Antico 	4,2
254	Fado Reserva 	3,9
255	Bad Brothers 	3,8
256	Colle dei Cipressi Montepulciano D'Abruzzo 	3,5
257	Flor De La Mar Castelao 	4,0
258	Frescobaldi Remole Toscana 	3,6
259	Gandin Filare Nero 	-
260	Chateau les Eyquem Hautes Graves Margaux 	3,9
261	Territori Vocati Sangiovese 	-
262	Brolio Chianti Classico 	3,7
263	Мысхако Pinot Noir Reserve 	4,0
264	Venta Real Резерва 	3,4
265	Gato Negro Cabernet Sauvignon 	3,4
266	Радеда 	-
267	Fattolia del Cerro Nobile di Montepulciano 	3,7
268	Le Bel Tout Costieres de Nimes 	3,7
269	Acharuli Саперави 	3,5
271	Sazyk Dere Каберне марочное 	3,5
272	Good Steak Мерло 	3,2
275	Casa Castellano Garnacha 	4,1
276	el Gordo Garnacha 	3,3
277	Beefsteak Club Malbec 	3,7
278	Sol De Chile Cabernet Sauvignon Reserva 	3,3
279	La Croix du Pin Merlot 	3,3
280	Chateau Vieux Duc Montagne Saint-Emilion 	-
281	Marques de Abadia Rioja Crianza 	3,6
282	Виноград Don Simon Tempranillo 	3,0
283	Gran Reserva 	4,0
284	Belisario Колламато 	4,0
285	Campo Viejo Tempranillo Rioja 	3,6
286	Observer Cabernet Sauvignon - Merlot 	3,7
287	Rocca Alata Valpolicella Superiore 	3,3
288	La Maridelle Pays D'OC Cabernet Sauvignon 	3,0
289	Finca el Rejoneo Crianza 	3,3
290	Высокий берег Каберне Совиньон 	3,4
291	Di Caspico Special Edition 	3,9
292	Muelle Tempranillo Syrah сухое 	3,7
293	Novacorte Amarone Della Valpolicella Classico 	4,3
294	Castelvecchio Barbera D'alba 	3,7
295	Codici Россо 	4,1
296	Cuatro Ojos Cabernet Sauvignon 	3,8
297	Il Poggio dei Vigneti Nero d'Avola Sicilia 	2,7
298	Ramon Bilbao Crianza Rioha 	3,9
300	Marchesi di Barolo Ruvei 	3,8
301	Barone Montalto Неро 	4,0
302	Cimmeria Бастардо Белой Скалы 	3,3
303	Inkerman Шато Руж 	3,2
304	Chateau Tamagne Cabernet 	3,3
305	Trivento Malbec Reserve 	3,6
306	Bricco Rosso Suagna Langhe Rosso 	3,7
307	Chateau D'Arvigny Haut-Médoc 	3,9
308	Moulin de Gassac Classic 	3,5
309	Faustino Crianza Rioja 	3,6
311	Murviedro Reserva 	3,7
312	Big Mouth 	3,0
313	Antico Portico Montepulciano d'Abruzzo 	3,9
314	PMC Neubruch Pinot Noir 14 % алк., Австрия, 0,75 л	4,1
315	Tres Amigos 	3,5
316	Gran Cita Del Sol Tempranillo 	3,4
317	Fanagoria Style Merlot 	3,6
318	Чегем 	-
319	выдержанное Escal Roja Special Selection Grenache Tempranillo 	3,9
320	Грузвинпром Мукузани 	4,0
321	Domini Veneti Valpolicella Ripasso la Casetta 	4,2
322	Авторское Саперави 	3,5
323	Trenel Beaujolais Villages 	3,5
324	Castello Banfi Brunello di Montalcino 	4,2
325	The Ned Pinot Noir 	3,7
326	Inkerman Каберне Резерв 	4,0
327	Tussock Jumper Tempranillo 	3,5
328	Chateau Tamagne Krasnostop 	3,5
329	Donna Marzia Salento 	3,7
330	Yerevan Areni Karmrahyut 	3,8
234	S!gnature Lesquerde 	3,6
270	Броjаница Каберне Совиньон 	3,6
273	Грузвинпром Саперави 	3,6
274	Грузвинпром Саперави 	3,6
332	Авторское Каберне Совиньон 	3,8
333	Marques de Villanueva Tempranillo Carinena 	3,4
310	Taboadella Villae 	4,0
334	Calderona Crianza 	3,6
335	Tarapaca Cabernet Sauvignon 	3,9
336	Art.Terra Alentejo 	-
337	Simonsig Stellenbosch 	3,6
338	Col di Sasso Toscana 	3,6
339	Fetzer Cabernet Sauvignon 	3,5
340	Mildiani Пиросмани 	4,0
341	Амра 	-
342	Quinta Nova Reserva 	4,1
343	Jean-Pierre Moueix Pomerol 	3,9
344	Rioja Aldea Real Tempranillo 	2,9
331	Muenzenrieder Heideoden classic 	3,6
345	KG Gries Lagrein Riserva 	4,1
346	Cambridge Crossing Shiraz 2018 	3,7
347	Chateau Labarrade Malbec 	3,5
348	Cavino Ionos 	3,8
349	Сихарули Мукузани 	3,8
350	Palazzo Nobile Chianti Classico 	3,9
351	Sancho Garces Rioja 	3,6
689	Yamana Malbec-Merlot 	3,5
352	Domaine des Chanssaud Chateauneuf du Pape 	4,2
354	Butterfly Ridge Shiraz Cabernet 	3,7
355	Casa de la Ermita Seleccion Rey Limitada 	3,8
356	The Wedge Shiraz Mourvedre Viognier 	3,8
357	Флейта-Позвоночник Каберне Мерло 	-
358	Vol d'Anima de Raimat 	3,7
359	Cuatro Ojos Merlot 	3,7
360	Криница Rivage 	4,1
361	Vina Albali Темпранильо Шираз 	3,3
362	Clemente VII Chianti Classico 	3,8
363	Chateau Pessan Saint-Hilaire Graves 	3,7
364	JP. Chenet Cabernet-Syrah 	3,4
365	Frog's Return Cite de Carcassonne 	3,9
366	Высокий берег Мерло 	3,5
367	Fairview Пинотаж 	3,4
368	Sol De Chile Carmenere 	3,2
369	Escal Roja Tempranillo 	3,2
370	Domaine d'Andezon Signargues Cotes-du-Rhone Villages 	3,7
371	Ca'Delle Rose Pinot Nero Trevenezie IGP 	3,8
372	1000 Stories Zinfandel 	4,1
373	Marques de Caceres Reserva Rioja 	3,9
374	Proximo Риоха 	3,7
375	Cellier des Dauphins Cotes du Rhone Prestige 	3,4
376	Chateau de Landure Minervois 	3,6
377	Belagaio Primario 	-
378	Каспийская коллекция 	3,4
379	Gustave Lorentz Pinot Noir 	3,6
380	Villa de Corgos Reserva Bairrada 	4,1
381	Torres Coronas Tempranillo 	3,5
382	Machiavellico Toscana 	3,9
383	Momentum Solare Grenache Syrah Mourvedre 	3,7
384	Beaujolais-Villages 	3,7
385	El Sotillo 	2,3
353	Balance Pinotage Shiraz 	3,5
386	Faina 	3,1
387	Solarita Chianti Riserva 	3,6
388	Antico Portico Nero d'Avola Terre Siciliane 	4,0
389	Crudo Nero d'Avola Cabernet Sauvignon 	3,9
390	Bravo Trade Саперави 	-
391	Premium 1904 Tempranillo Syrah 	3,7
392	Freschello Rosso 	3,6
393	Castillo de Fuendejalon Crianza 	3,8
394	Palabra de Caballero Crianza La Mancha 	3,7
395	Marques de Aldeanueva Crianza Rioja 	3,7
396	Hoya De Cadenas Reserva Tempranillo 	3,4
397	Castelvecchio Barbaresco 	3,4
398	Passo Sardo Cannonau di Sardegna 	3,6
399	Valserrano Finca Monteviejo 	4,3
400	Chateau Le Faure Bordeaux 	3,4
401	La Piuma Монтепульчано 	3,4
402	Tussock Jumper Pinot Noir 	3,5
403	Venta Real Крианца 	3,4
404	Sol De Chile Syrah Reserva 	3,5
405	Sankt Anna Dornfelder Halbtrocken 	3,9
406	Vinedos del Villar Tempranillo 	3,8
407	Prototype Cabernet Sauvignon 	3,7
408	Fassini Montepulciano D'abruzzo 	3,4
409	Gurpegui Garnacha 	3,7
410	Jardin Fleury Syrah 	3,7
411	Vinum Nobile Каберне 	3,3
412	Vivo Greto 	3,2
413	Garnachas de Espana La Garnacha Salvaje Del Moncayo 	3,7
414	Vicente Gandia Finca del mar Tempranillo 	3,5
415	Maison du Soleil Cabernet Sauvignon 	3,4
416	Flor Morena Tempranillo 	3,4
417	Estaciones Tempranillo 	3,4
418	Castelvecchio Nebbiolo D'alba 	3,4
419	Antico Portico Aglianico Beneventano 	3,7
420	Fanagoria 100 оттенков красного Саперави 	4,1
421	Territori Vocati Chianti 	3,5
422	Gran Cita Del Sol Crianza 	3,7
423	Tresors de Loire Saumur Champigny 	3,6
424	Arnaldo-Caprai Montefalco Rosso 	3,7
425	Bravo Trade Castillo De Ayud 	3,9
426	Bertinga Сасси Кьюзи 	4,1
427	Maison Givas №3 Bordeaux 	3,6
428	Ballaro Nerello Mascalese 	4,0
429	el Gordo Tempranillo 	3,5
430	Buttafuoco 	4,0
431	Chateau Tour Verite 	3,3
432	ординарное Mamiko Саперави 	3,7
433	E Arte Puglia Rosso 	3,7
434	Les Halles Cotes de Gascogne 	3,9
435	M.Chapoutier Luberon La Ciboise 	3,6
436	Gerardo Cesari Justo 	3,6
438	Marques de Riscal Gran Reserva 	4,2
440	ликёрное Oloroso Aurora Jerez-Xeres-Sherry сухое 17,5 % алк., Испания,...	4,2
441	Askaneli Brothers Ахашени Красное полусладкое 12 % алк., Грузия, 0,75 л	4,0
442	Gabriel Meffre Châteauneuf-du-Pape Laurus 	3,7
443	Dance Del Mar 	3,7
444	Domaine de Tara Hautes Pierres Ventoux 	3,8
445	Bierzo Luna Beberide 	3,4
446	Care Tinto Sobre Lias 	3,8
447	Bodegas Emilio Moro Finca Resalso 	3,8
448	Murviedro Bobal Roble 	3,7
449	Ionos Cabernet S.-Merlot 	4,0
450	Vigne-Lourac Duras Cabernet 	4,0
451	Carson's Cabernet-Sauvignon Shiraz 	3,6
452	Con un Par Monastrell Petit Verdot 	3,5
453	Muelle Tempranillo Gran Seleccion сухое 	3,9
455	Chateau Haut Rocher 	4,1
456	Джейран Матраса 	3,4
457	Криница Arena 	4,0
458	Саперави 	3,4
459	Marques de Caceres Crianza Rioja 	3,6
460	Domus Vini Refosco 	3,5
461	Lirico Bobal Cabernet Sauvignon 	3,1
462	Sobremonte Tempranillo 	3,3
463	Chateau Barre Gentillot Graves de Vayres 	3,9
464	Талавари Саперави 	3,7
465	Muenzenrieder Pinot Noir 	3,6
437	Lolita 	3,9
439	Faustino VII Tempranillo 	3,5
466	Garnachas de Espana La Garnatxa Fosca del Priorat 	3,8
467	Sol De Chile Syrah Merlot 	3,4
468	Vylyan Hegy 	3,7
469	Сихарули Саперави 	3,7
470	Stobi Vranec 	3,9
471	G7 Cabernet Sauvignon 	3,2
472	Vylyan Villany Cabernet Franc 	3,6
474	Bierzo Finca Luna Beberide 	3,5
475	Композиция №1 	-
476	el Gordo Syrah 	3,6
477	Gurpegui Tempranillo 	3,0
478	Belagaio 5Cento 	-
479	Sankt Anna Spatburgunder Pfalz 	3,5
480	S!gnature Caramany 	-
481	Bouchard Aine & Fils Les Vendangeurs Bourgogne Pinot Noir 	3,4
482	Domaine d'Andezon Cotes-Du-Rhone 	3,7
483	Conde Otinano Reserva Rioja 	3,7
484	Frescobaldi di Castiglioni 	4,0
485	Castelvecchio Grignolino D'asti 	3,3
486	Villa de Corgos Bairrada 	3,8
487	Rioja Mil Hojas Tempranillo 	3,1
488	Tussock Jumper Touriga Nacional 	3,6
489	Chateau Grand Moulinet 	3,9
454	Arrivederci полусухое 	3,9
473	Art.Terra Amphora 	3,5
490	Murviedro Пасьон Монастрель Гарнача 	3,8
491	San Valentin Garnacha Catalunya DO 	3,9
492	Don Garcia 	2,9
493	Matsu El Picaro Toro DO 	3,9
494	Villa Antinori Rosso 	3,8
495	Мысхако Марселан 	3,7
496	Cape Art Shiraz 	3,5
497	Jardin de la Taur Grenache-Syrah 	3,9
498	La Miranda Secastilla Garnacha Somontano DO 	3,8
499	Molom Tinto 	3,8
500	Cuvee Blanc Terrier Rouge 	3,6
501	Redwood Vineyards Pinot Noir 	3,9
502	Takar Арени 	3,9
503	Matsu El Recio Toro DO 	4,1
504	Matsu El Viejo Toro DO 	4,3
505	Primasole Primitivo 	3,9
506	Chateau l'Eclair Cabernet ординарное 	2,9
507	Rouge de Talu 	3,6
508	Тифлисский Дворик Саперави 	3,2
509	Chateau Tamagne Терруарное Саперави - Красностоп 	3,8
510	Sobreiro de Pegoes Premium 	3,7
511	Appassionatamente Rosso 	3,8
512	Мысхако Quintessence Cabernet Sauvignon 	4,1
513	Loggia del Sole Chianti DOCG 	3,1
514	Negrar Valpolicella Ripasso Classico Superiore DOCG 	3,8
515	Highway to Hell 	3,8
516	Bründy Zweigelt 	3,7
517	Musita Rabah Nero d'Avola 	3,7
518	Inspirado Carmenere 	3,6
519	B.IO Sangiovese di Romagna DOC 	3,6
520	MV Malbec Reserve 	3,7
521	Tour De Mandelotte Bordeaux AOC Rouge 	3,7
522	Maradi Саперави 	3,6
523	Chateau Tamagne Красностоп-Анчелотта 	3,3
524	Гранд Резерв Атаман Красностоп 	3,6
525	Солнечная Долина Меганом 	-
526	Высокий Берег Каберне Совиньон 	3,4
527	19 Crimes 	3,9
528	Don Simon 	3,0
529	Beefsteak Club Beef&Liberty Malbec 	3,7
530	Q.S.S. Рар 	3,8
531	Ed Knows Мерло 	3,8
532	Fetzer Zinfandel Valley Oaks 	4,0
533	Camden Park Shiraz 	3,7
534	Резерв Винодела Мерло 	2,8
535	Saveurs d’Autrefois 	3,9
536	Loggia Del Sole Chianti DOCG 	3,1
537	Solano Monastrell Jumilla DO 	3,5
538	Поместье Голубицкое Каберне Совиньон ЗНМП Голубицкая стрелка 	3,9
539	Cape Art Pinotage 	3,2
540	Ликурия Терруар 	3,6
541	Elegido Tempranillo 	3,8
543	Sangre de Toro Tempranillo La Mancha DO 	3,7
544	Lindeman's Bin 50 Shiraz 	3,5
545	Chateau De Talu Море волнуется два 	3,5
546	Солнечная Долина ПТИ ВЕРДО 	3,4
547	Chateau Pinot Гравитация Пино Нуар/Саперави 	3,7
548	Negrar Appassimento 	4,1
550	Rutini Wines Trumpeter Malbec 	3,8
551	Point Blauer Zweigelt 	3,8
552	Karas 	4,0
553	Резерв Винодела Каберне Совиньон 	3,4
554	Mapu Cabernet Sauvignon Maule Valley DO 	3,5
555	Pirovano Collezione Primitivo Puglia 	4,0
556	Collezione Costantino Organic Amorcor 	3,9
557	Имение Сикоры Каберне Совиньон 	3,9
559	Loggia del Sole Chianti Riserva DOCG 	3,2
560	Conti Sani Chianti Classico DOCG Primum 	3,7
562	Альтос Иберикос Крианса 	-
563	Gran Passione Appassimento Rosso 	4,0
564	Cacciata Chianti Classico DOCG Riserva 	3,6
565	Tavernello Syrah Organico 	3,9
566	Destination Rouge Bordeaux AOC 	3,7
567	Rauli Merlot 	3,4
568	Masi Bonacosta Valpolicella Classico DOC 	3,5
569	Barefoot Zinfandel 	3,6
570	Chateau Tamagne Каберне 	3,4
571	Bouchard Aine&Fils Cotes du Rhone AOC 	3,7
572	Riecine Chianti Classico DOCG 	4,0
573	Steakwine Cabernet Sauvignon 	3,8
574	Fyi Red Blend 	3,8
576	Yali Уайлд Свон Каберне Совиньон 	3,8
558	Инкерман Каберне Резерв 	4,0
549	Mayrik 	3,6
542	Vivanco Reserva Rioja DOC 	3,9
561	Атаман Гранд Резерв Цимлянский черный 	3,3
577	Кубань Таманский полуостров Шато Сенной 	-
578	Цард Ломиаури-Саперави 	-
581	Quintessence Шторм Шираз 	-
582	Castillo de Ayud Calatayud 	3,9
583	Aristov Anima Ancellotta 	3,7
584	De Wetshof Danie de Wet Pinotage 	3,7
585	Poggio Passo Malvasia Nera 	3,7
587	Lunatico Primitivo 	3,9
588	Lunatico Negroamaro 	3,9
589	Negrar Corvina 	3,6
591	Monte Real Tempranillo Rioja DOC 	3,4
592	Claroscuro Tintas de Uco 	4,0
593	Finca Constanсia Parcela 23 	3,6
594	Finca Constanсia Seleccion 	3,7
595	Born to be Wild 	4,0
596	Tentation du Sud 	3,9
597	Pais El Autoctono Secano Interior DO 	3,7
598	Gulfstream Cabernet Sauvignon-Shiraz 	3,6
599	35° South Cabernet Sauvignon 	3,3
600	Yalumba Organic Shiraz 	3,6
601	Chocoholic Pinotage 	3,7
602	Masseria Doppio Passo Primitivo-Zinfandel 	4,0
603	Masseria Doppio Passo Copertino DOC Riserva 	4,1
604	Simonsig Cabernet Sauvignon-Shiraz 	3,6
605	Doppio Passo Primitivo BIO 	3,9
606	Signos Red Blend 	3,6
607	Signos Malbec 	3,7
608	Cranswick Lakefield Shiraz 	3,5
609	Petalos del Bierzo DO 	3,8
610	Beringer Founder's Estate Cabernet Sauvignon 	3,6
611	Masserie Pizari Primitivo 	3,8
612	El Vinculo Crianza La Mancha DO 	3,9
613	Gamla Cabernet Sauvignon 	3,9
614	Catena Malbec Mendoza 	4,0
615	Escudo Rojo Carmenere Reserva Colchagua Valley DO 	3,8
616	Little Beauty Pinot Noir Marlborough 	4,0
617	Pi π - 3.1415 Tinto 	3,9
618	Alamos Malbec 	3,7
619	La Braccesca Vino Nobile di Montepulciano DOCG 	3,9
621	Barahonda Summum Monastrel Yecla DO 	4,2
622	Barahonda El Bicho Raro Yecla DO 	3,9
623	d`Arenberg The Footbolt Shiraz 	3,7
624	Klein Constantia КК Каберне Совиньон Мерло Стелленбош 	3,7
625	Boyante Tempranillo Organico Ribera del Duero DO 	3,8
626	Boyante Roble Ribera del Duero DO 	3,8
627	Neprica Primitivo 	3,8
628	Pagos del Rey Condado de Oriza Tempranillo Ribera del Duero DO 	3,5
629	Alma Valley Red 	3,2
630	Tenuta il Poggione Rosso di Montalcino DOC 	3,9
631	Lucente Toscana IGT 	4,0
632	Pianirossi Sidus Montecucco DOC 	3,8
633	Contrada Maestra Barbera d'Asti DOC 	3,8
634	Amaranta Pinotage 	3,6
635	Долина Привидений Каберне Совиньон 	2,5
636	Tenuta il Poggione Brunello di Montalcino DOCG 	4,2
637	Stobi Verdot Private Reserve 	3,8
638	Silverado Cabernet Sauvignon Napa Valley AVA 	4,4
639	La Matiniere Crozes-Hermitage AOP 	3,7
641	Cristo di Campobello C’D’C’ Rosso 	3,8
642	Ramon Bilbao Edicion Limitada 	4,0
643	Simonsig Redhill Pinotage 	4,2
644	Simonsig Merindol Syrah 	4,2
645	d`Arenberg The Laughing Magpie 	3,7
646	Vajra Langhe Rosso DOC 	3,8
647	Sela Rioja DOC 	3,9
648	Yalumba The Y Series Shiraz 	3,6
649	Tchotiashvili Саперави Рчеули Квеври 	4,0
650	Beck Blaufränkisch 	3,8
651	Gentleman Oltrepo Pavese DOC 	3,5
652	Alta Vista Vive Malbec 	3,7
653	Chateau Frederic Monplaisir 	3,5
654	Disueri Sicilia DOC 	3,6
655	Roda I Reserva Rioja DOC 	4,4
656	Romain Duvernay Cotes-du-Rhone Villages AOC Seguret 	3,7
657	The Wine System Tinturio Navarra DO 	3,7
658	Mapu Carmenere Maule Valley DO 	3,8
659	El Pacto Rioja DOC 14%, 750мл	3,9
660	Абрау-Дюрсо Каберне Совиньон 	3,5
661	Appassimento Segreto Rosso Salento 	4,1
662	Chateau Pinot Pinot Noir 	3,6
663	Suggestion du Chef Merlot 	3,7
664	Musita Regieterre Nerello Mascalese 	3,8
665	Инкерман 	-
666	Paladin Salbonello 	3,7
667	Musita Organic Nero d'Avola 	3,6
668	Oyster Bay Pinot Noir Marlborough 	3,5
670	Cа' Del Poggio Nerello Mascalese 	3,7
671	Поместье Голубицкое Мерло ЗНМП Голубицкая стрелка 	3,9
672	Paladin Drago Rosso столовое 	4,1
673	Musita Amal Syrah 	3,8
674	Gai-Kodzor Terroir 	3,7
675	Podere Montepulciano d'Abruzzo DOC 	3,6
676	Emilio Moro Ribera del Duero DO 	4,1
677	Традиции Абхазии Каберне Сухумское 	3,0
678	Черноморская Истина Каберне 	-
679	Georges Duboeuf Beaujolais Nouveau 	3,4
680	Chateau Tamagne Молодое 	3,6
682	Фанагория Номерной Резерв Каберне 	-
683	B.IO Nero d'Avola Il Nero 	3,6
684	Planeta La Segreta Nero d'Avola 	3,5
685	Badagoni Саперави 	3,6
686	Passo Sardo Cannonau di Sardegna DOC 	3,6
687	Vega Sindoa Tempranillo Navarra DO 	3,5
688	Claroscuro Malbec Mendoza 	3,9
669	Инкерман Каберне 	3,6
620	Mataca 	3,8
586	Poggio Passo Primitivo 	3,6
580	Medija 	3,5
579	Цард Саперави-Аладастури 	3,9
590	Rabo de Gala 	3,8
690	Fontanafredda Briccotondo Barbera Piemonte DOC 	3,6
691	Turtle Dreaming Cabernet Sauvignon-Shiraz 	3,8
692	Ionos Red 	3,3
693	Pirovano Nero d'Avola 	3,7
694	Diaz Bayo 8 Meses Barrica Ribera del Duero DO 	3,8
695	Tavernello Sangiovese Organico 	3,6
696	Cultus Organic Tempranillo 	3,6
697	Chateau Tamagne Reserve Premier Rouge 	3,7
698	Beefsteak Club The Mini Malbec 	3,4
699	Rauli Syrah 	3,4
700	Masi Modello Corvina Verona IGT 	3,6
701	Barefoot Cabernet Sauvignon 	3,3
702	Borsao Crianza Seleccion Campo de Borja DO 	3,9
703	Высокий Берег Мерло 	3,5
704	Chateau Tamagne Саперави 	3,8
705	19 Crimes The Banished 	4,0
706	Faustino VII Tempranillo Rioja DOC 	3,5
707	Pirovano Montepulciano D'Abruzzo DOC 	3,5
708	Pirovano Collezione Nero d'Avola 	3,7
709	Montecillo Reserva Rioja DOC 	3,9
710	Фанагория Авторское вино Каберне-Мерло 	3,4
711	Pearly Bay Dry Red 	3,3
712	Тайна Колхиды Мукузани 	3,7
713	Luna Valley 	3,4
714	Les Chartrons Lussac Saint-Emilion AOC 	3,6
715	Ca'Del Poggio Montepulciano d'Abruzzo DOC 	3,3
716	Ca'Del Poggio Terre Siciliane 	3,5
717	Racimo de Uva Tempranillo-Garnacha Carinena DO 	3,3
718	Villa Alberti Chianti DOCG 	3,4
719	Telavi Wine Cellar Marani Mukuzani 	4,0
720	Ramon Bilbao Crianza Rioja DOC 	3,9
721	Don Florencio Reserva Tarragona DO 	3,9
722	Solar de Alarcos Rioja DOC 	3,7
723	Champs des Rois 	3,6
724	Feudo Maccari Saia Nero d'Avola 	3,6
725	Barkan Classic Cabernet Sauvignon 	3,5
726	Tancia Chianti Riserva DOCG 	3,5
727	Castellare Chianti Classico DOCG 	3,8
728	Chateau Haut Bon Fils Bordeaux AOC Rouge 	3,8
729	Monte Clavijo Tempranillo Rioja DOC 	3,4
730	Raices Reserva Valdepenas DO 	3,7
731	Raices Tempranillo Valdepenas DO 	3,3
733	L'Aurore Bourgogne AOC Pinot Noir 	3,6
734	Frontera Cabernet Sauvignon 	3,2
735	Zonin Montepulciano d'Abruzzo DOC 	3,5
736	Vranec Vilarov 	3,9
737	Arrivederci 	3,9
738	Roccialta Chianti DOCG 	3,4
739	Ведерниковъ Губернаторское Голубок 	3,6
740	GRW Мукузани 	3,8
741	Luna Valley Selection Carmenere 	3,7
742	Vivanco Crianza 	3,8
743	La Reserve de Malartic Pessac-Leognan AOC 	3,9
744	Leonardo Chianti Riserva DOCG 	3,7
745	Leonardo Chianti DOCG 	3,5
746	La Gerla Brunello di Montalcino 	4,2
747	Pianirossi Solus Maremma Toscana 	3,9
748	Pianirossi Maremma Toscana 	3,9
749	Tamari Malbec 	3,4
750	Barkan Classic Shiraz 	3,6
751	Bouchard Aine&Fils Pommard AOC 	3,9
752	Speri Amarone della Valpolicella DOCG 	4,4
753	Domaine des Chanssaud Chateauneuf-du-Pape AOC 	4,2
754	Salvalai Amarone della Valpolicella Classico DOCG 	4,1
755	La Casada Cabernet Sauvignon 	3,1
756	Chateau Haut Maginet Bordeaux AOC 	3,5
757	La Croix du Pin Cabernet Sauvignon 	3,2
758	J.Bouchon Merlot Reserva Maule Valley DO 	3,4
759	J.Bouchon Cabernet Sauvignon Reserva Maule Valley DO 	3,5
760	Tenuta Cantagallo Chianti Montalbano DOCG 	3,6
761	Tour de Mandelotte Medoc AOC 	3,6
762	Joseph Verdier Anjou Rouge 	3,8
764	Domaine La Suffrene Bandol AOC 	3,8
765	Chevalier d'Anthelme 	3,6
766	Nipozzano Chianti Rufina Riserva DOCG 	3,8
767	Finca El Encinal Roble Ribera del Duero DO 	3,8
768	Baluarte Roble Navarra DO 	3,6
769	Conti Serristori Chianti Classico DOCG 	3,5
770	Melini Chianti Riserva DOCG 	3,7
771	Siglo Crianza Rioja DOC 	3,5
772	Col di Sasso 	3,6
773	Dos Caprichos Crianza Rioja DOC 	4,1
774	Canti Merlot 	3,4
775	Steakwine Malbec 	3,9
763	S'arai Isola Dei Nuraghi 	4,1
732	Argiolas Costera Cannonau di Sardegna DOC 	3,8
681	B.IO Nero d'Avola Cabernet 	3,8
640	Инкерман Каберне Гранд Резерв 	4,0
575	Тавквери-Мерло Цард марочное 	4,0
299	Matsu El Viego 	4,3
\.


--
-- Name: globus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.globus_id_seq', 1, false);


--
-- Name: perekrestok_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.perekrestok_id_seq', 1, false);


--
-- Name: vivino_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vivino_id_seq', 1, false);


--
-- Name: globus globus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.globus
    ADD CONSTRAINT globus_pkey PRIMARY KEY (id);


--
-- Name: perekrestok perekrestok_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.perekrestok
    ADD CONSTRAINT perekrestok_pkey PRIMARY KEY (id);


--
-- Name: vivino vivino_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vivino
    ADD CONSTRAINT vivino_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

