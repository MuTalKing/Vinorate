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
    shop_logo character varying(150),
    color character varying(150),
    sugar character varying(150)
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
    shop_logo character varying(150),
    color character varying(150),
    sugar character varying(150)
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

COPY public.globus (id, name, rate, price, picture, shop_logo, color, sugar) FROM stdin;
25	Antico Portico Primitivo Salento 	4,1	524,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a15/225945.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
11	Tbilisi Peak Киндзмараули 	4,0	849,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/2d4/144253.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
20	Ciconia 	3,6	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a8a/3497085.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
1	Глобус Алазанская долина 	3,8	449,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/807/2404939.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
2	Marques de Abadia Rioja Crianza 	3,6	1 199,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/286/246751.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
3	Bravo Trade Mucho Mas 	4,2	749,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/9f3/363182.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
4	Palazzo Nobile Valpolicella 	3,3	1 049,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/7e8/176683.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
5	Wines & Beverages of Abkhazia Лыхны 	3,8	469,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/cfe/236253.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
6	Villa de Corgos Reserva Bairrada 	4,1	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/620/338781.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
7	Matsu El Picaro 	3,9	1 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b9d/206632.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
9	Nobilomo Marzemino 	4,3	799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/653/139599.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
10	Prototype Zinfandel 	3,8	1 399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e21/3422433.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
12	Chateau Tour Verite 	3,3	1 199,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/85f/806163.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
15	Terras do Po Reserva 	3,8	739,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/8fa/201510.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
16	Espiritu de Chile Cabernet Sauvignon 	3,8	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d1f/119384.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
17	Trivento Malbec Reserve 	3,6	939,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/edd/360591.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
18	Сихарули Киндзмараули 	3,5	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/66b/155393.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
19	Chateau Blancard 	3,5	949,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/7e0/3400275.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
21	Fanagoria Авторское Каберне-Мерло 	3,5	469,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b9f/1092836.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
22	от Валерия Захарьина Бастардо Кефесия 	3,9	1 289,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/76c/759119.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
23	by Haussmann Cabernet Sauvignon 	3,4	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b04/3118615.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
24	Golubitskoe Estate Cabernet Sauvignon 	3,8	789,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/179/410992.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
26	Novacorte Valpolicella Ripasso classico superiore 	3,9	1 549,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/7dc/320128.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
27	Don Simon Tinto 	3,0	419,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/54a/139513.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
28	Кахетинские подвалы Киндзмараули 	4,2	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/bac/515828.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
29	Haussmann Merlot 	3,5	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/4f0/3118619.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
30	Chateau La Croix Des Ducs Ля Круа Де Дюк 	3,7	1 249,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/482/3553216.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
31	Fassini Chianti Rizerva 	3,9	1 249,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/983/164351.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
32	Портвейн Агдам белый 19 % алк., Азербайджан, 0,75 л	-	379,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/702/3399461.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	-
33	Barista Pinotage 	4,1	849,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/0d3/379126.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
34	El Pescaito Bobal Cabernet Sauvignon 	3,4	479,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/718/403724.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
8	Tbilisi Peak Саперави 	3,6	579,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/fbf/144256.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
35	Castillo de Almansa Крианса 	3,6	829,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e3c/3511451.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
36	Chateau Le Tertre De Leyle 	3,8	849,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b27/3269648.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
38	выдержанное Escal Roja Special Selection Grenache Tempranillo 	3,9	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/1cc/496070.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	-
39	ликёрное Массандра Портвейн красный Алушта 17 % алк., Россия, 0,75 л	3,8	509,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/90c/339027.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	-
40	Глобус Вита Para Celsus Tempranillo 	3,1	329,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/76b/404061.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
41	Глобус Rouge Moelleux 	3,7	419,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/dc3/279384.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
42	Глобус Corte Vinaia Rosso 	-	449,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/51d/453030.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
43	Глобус Corte Vinaia Merlot 	-	449,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/6e3/455377.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
44	Глобус Corte Vinaia Sangiovese 	3,9	549,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ea1/455381.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
45	Глобус Пиросмани 	3,8	449,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/39d/2404934.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
46	Глобус Хванчкара 	3,9	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/f71/2404935.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
47	Глобус Киндзмараули 	3,5	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/80b/2404938.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
48	Глобус Саперави 	3,5	449,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/2d4/2404932.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
49	домашнее Driada Изабелла Молдавская 	3,9	689,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/780/338578.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
50	Arena de Oro Tempranillo 	3,1	399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d46/173976.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
51	Chateau des Grands Moines 	3,6	1 699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ca9/232007.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
52	Мысхако Кюве 	3,7	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a1c/623804.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
54	Дербент Кара-Койсу 	3,2	219,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/fa8/379013.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
56	Alma River Пино Нуар 	3,8	529,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/35c/1925673.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
57	Vinha do Rosario Touriga Nacional 	3,7	639,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/eb7/206688.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
58	Fanagoria Каберне 	3,5	389,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b8a/733275.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
59	Campo de Vides 	3,8	484,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ce4/176780.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
60	Palazzo Nobile Chianti Riserva 	3,7	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/6a5/293172.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
61	Kindzmarauli Marani Kindzmarauli 	4,3	1 399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/f22/619139.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
62	Fanagoria Cru Lermont Cabernet Sauvignon 	3,8	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/854/1092833.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
63	Криница Arena 	4,0	1 899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/099/3430257.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
64	Inkerman Saperavi 	3,6	569,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/84d/564163.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
65	Viu Manent Reserva Malbec 	3,6	1 099,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/dce/539654.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
66	Chateau de Cach Haut-Medoc 	3,6	949,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/256/344699.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
67	ликёрное Villa de Corgos Reserva Bairrada 	4,1	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/eac/338783.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сладкое
55	Tbilisi Peak Алазанская долина 	-	579,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/db8/156980.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
68	Observer Malbek 	3,5	549,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/6a4/387032.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
69	Majano Темпранильо Робле 	4,0	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/302/1900187.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
70	Усадьба Дивноморское Вторая лиия Вечерница 	3,9	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/6a5/3430255.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
71	Flor De La Mar 	4,0	654,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/373/496149.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
72	Sun Gate Red Zinfandel 	3,4	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/016/577958.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
73	Az Abrau Madrasa 	3,6	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b7e/3399462.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
75	Finca Del Sol Vino de Mesa 	3,9	399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/41e/176643.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
76	Villa Antinori Toscana Rosso 	3,8	2 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/5df/435141.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
77	Каберне 	3,5	199,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/f10/535238.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
79	Pierre Dumont Bourgogne Pinot Noir 	4,0	2 899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e4b/2270279.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
80	Silverboom Shiraz-Merlot 	3,7	849,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/8fc/1559916.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
14	Territori Vocati Chianti 	3,5	849,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b16/225931.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
81	Solarita Montepulciano d'Abruzzo 	3,5	769,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/587/206083.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
82	Antico Portico Nero d'Avola Terre Siciliane 	4,0	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/f46/225943.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
83	La Marquesa 	3,5	1 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/cc2/3176653.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
84	Castelvecchio Barolo 	3,9	1 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/8f2/228789.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
85	Mucho Mas 	4,2	1 699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/0eb/593619.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
86	Wine Day Bastardo 	2,2	349,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/2f6/1925608.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
87	ликёрное Солнечная Долина Черный Полковник 	4,2	819,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/fa1/174011.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	-
88	Chateau Tour Verite Bordeaux 	3,3	749,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/45d/232008.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
89	Torres Altos Ibericos 	3,7	1 419,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b92/176642.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
90	Monasterio de las Viñas Reserva Carinena 	3,7	1 199,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/814/246749.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
91	Escal Roja Crianza 	3,9	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/182/496072.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
92	Портвейн Hooper's Ruby Porto 19 % алк., Португалия, 0,75 л	4,1	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/01f/3454573.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	-
93	Gran Cita Del Sol Tempranillo 	3,4	549,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ce0/282565.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
94	Agora Мускат чёрный 	4,0	479,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/4c3/2018360.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сладкое
95	Villa Fassini Sangiovese-Cabernet S. Toscana 	3,5	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a73/322412.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
96	Tussock Jumper Malbec 	3,8	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/de7/310812.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
97	Prototype Cabernet Sauvignon 	3,7	1 399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c75/3422434.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
98	Marques de Abadia Rioja Reserva 	4,0	1 599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/f15/244639.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
99	Ciconia The Reserva Blend 	3,8	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/970/252128.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
100	Majano Темпранильо 	4,0	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/346/1900177.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
101	Inkerman 	3,8	509,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/84d/607369.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
102	Кубань-Вина Тамани Мерло 	2,8	284,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/9f5/766879.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
103	Haussmann Барон Эжен 	3,5	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/da6/3553221.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
104	Terras do Po 	3,4	539,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/eca/214655.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
105	Batasiolo Barolo 	4,0	4 599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/1b2/289756.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
106	Chateau Pericou Bordeaux 	3,6	929,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/39e/176641.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
107	Zinfandel 	4,1	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/981/1559914.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
108	Marani Kindzmarauli 	4,3	749,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/17d/1900216.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
109	Muenzenrieder Pinot Noir 	3,6	1 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/929/1925387.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
110	Vinha do Rosario Reserva 	3,6	784,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/271/214654.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
111	J.P. Chenet Original Shiraz 	3,7	879,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c39/789862.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
112	Ханджлури Киндзмараули 	4,5	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/076/135187.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
113	Fanagoria Saperavi 	3,6	389,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a2f/1092823.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
114	Stobi Makedonsko Crveno 	4,1	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/4c3/174002.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
115	Brunello di Montalcino Territori Vocati 	-	3 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/cad/496222.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
116	Ca'Delle Rose Bardolino 	3,6	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c67/1522909.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
117	Chateau Grand Moulinet 	3,9	2 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/767/3400276.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
118	Vicente Gandia Finca del mar Tempranillo Crianza 	3,5	1 799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e55/259428.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
37	Tbilisi Peak Пиросмани 	4,0	579,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/3a7/223569.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
119	Clos Gebrat Priorat 	4,0	1 699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/20d/244640.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
120	Pearly Bay 	3,4	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/97b/428205.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
121	Observer Carmenere 	3,7	549,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/10f/338713.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
123	Tour de Mandelotte Bordeaux 	3,7	979,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/072/139533.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
124	Gagauzia Reserve Cabernet Sauvignon 	3,4	399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/8f5/228782.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
125	Beiral Vineyards 	3,9	679,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/911/766690.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
126	Monfort Village 	3,4	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d70/589987.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
127	Tavridia Саперави Мерло 	3,3	299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/032/729945.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
129	Villa Grande 	2,9	319,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a13/139509.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
130	Kindzmarauli Marani Saperavi 	3,8	849,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/4ea/650532.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
131	KG Gries Lagrein 	3,9	1 599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d05/455355.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
132	Trapiche Malbec 	3,4	739,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/f57/496127.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
133	Care Tinto Sobre Lias 	3,8	949,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e79/2810845.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
134	Novecento23 Rosso Veneto 	3,0	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ecf/225936.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
135	Domus Vini Rosso 	4,1	799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/8cd/866463.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
136	Traversa Tannat Uruguay 	3,6	869,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ac1/1900156.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
137	Сихарули Мукузани 	3,8	879,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/7ef/206197.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
138	Crystal Bay Shiraz 	3,3	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d36/3458353.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
140	Chateau Pessan Saint-Hilaire Graves 	3,7	1 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/5ec/733723.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
141	Массандра 	3,8	349,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/fae/3431391.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
142	Chateau Tamagne Saperavi 	4,0	349,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/f50/436162.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
143	Castillo de Almansa Roble 	3,7	749,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e19/3511455.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
144	Fetzer Valley Oaks Zinfandel 	4,0	1 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/274/1145310.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
145	Valserrano Finca Monteviejo 	4,3	3 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/776/1024503.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
146	Don Simon Cabernet Sauvignon 	3,4	539,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/79a/1171433.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
147	Garnachas de Espana La Garnacha Olvidada de Aragon 	3,7	1 839,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/055/176666.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
148	Ca'Delle Rose Bardolino Classico 	3,6	524,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/5e4/225933.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
149	Territori Vocati Россо Монтальчино 	3,5	1 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/12c/3493606.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
150	Tbilisi Peak Хванчкара 	4,0	1 749,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/436/144257.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
151	Observer Syrah 	3,7	549,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/4c1/338714.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
152	Цард Саперави 	3,9	439,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b5b/775550.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
153	Монастырская трапеза 	3,3	259,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/708/378884.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
154	La Grupa Syrah Malbec 	3,7	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/420/3475128.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
155	Medoc Chateau Bois du Fil 	3,5	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/afa/378908.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
156	Солнечная Долина Пти Вердо 	3,4	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/458/868150.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
157	Espiritu de Chile Gran Reserva Merlot 	3,9	859,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/710/241921.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
158	Matsu El Recio 	4,1	2 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/f7b/206633.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
160	Vinha do Rosario Syrah 	3,8	639,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b53/206687.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
161	Quinta das Amoras 	3,8	749,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/5f1/496084.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
162	Domaines Arnaud Cuvee Finesse 	3,9	739,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/13c/287156.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
163	Inkerman Каберне Гранд Резерв 	4,0	969,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/74f/607370.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
164	Majano Крианца 	-	579,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b04/1900192.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
165	Villa Krim Merlot 	3,2	379,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/661/3431701.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
166	Sol De Chile Carmenere 	3,2	859,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b1c/3431583.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
167	Antico Portico Syrah Terre Siciliane 	4,1	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a26/225930.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
168	Prototype Pinot Noir 	3,7	1 399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/35d/3355228.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
169	Tikves Македонско Чрвено 	-	749,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/111/1900161.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
170	Piccini Chianti 	3,3	749,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/58b/353246.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
172	ликёрное Altra Terra Kagor 	4,3	1 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/448/206025.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сладкое
173	Gran Cita Del Sol Crianza 	3,7	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/14d/144223.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
174	Palabra de Caballero Tempranillo La Mancha 	3,1	549,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/7e1/206658.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
175	Lesehof Zweigelt Edition №12 	3,9	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/836/3511407.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
176	Fernweh Pinot Noir 	4,1	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/8e5/3553224.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
177	Santa Hortensia Merlot 	3,6	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a08/241918.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
178	Masi CampoFiorin 	3,7	1 589,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/df4/357568.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
179	Mildiani Пиросмани 	4,0	659,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/0f6/512811.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
180	Babalu Tropical 	3,9	539,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c29/1900093.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сладкое
181	Ханджлури Сувенирная серия Киндзмараули 	4,5	1 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/92c/289893.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
182	Sazyk Dere Мерло марочное 	3,1	399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/fa5/262092.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
183	Крымский погребок Саперави 	3,0	279,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/519/736776.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
184	ликёрное Массандра 	-	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/40b/344293.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	-
185	Крымская Трапеза Саперави 	-	319,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/8e8/236197.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
186	Броjаница Изабелла 	-	449,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/3ad/145475.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
187	Chateau Barre Gentillot Graves de Vayres 	3,9	1 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a3d/515846.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
188	Domaine bel Avenir Beaujolais-Villages 	3,9	1 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/542/837766.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
189	Villa de Corgos Bairrada 	3,8	749,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/0dd/342162.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
190	Altissimo Chianti Classico 	4,0	1 029,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b31/696697.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
191	Крымвинторг Мерло 	2,5	329,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/642/277370.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
192	Kagor Meteora освящённое 	4,4	1 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/db1/1523014.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сладкое
193	Georgian Wines Киндзмараули 	3,9	799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/818/3535622.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
194	Juste Du Bon Vin Изабелла 	-	649,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/bea/2270304.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
195	Chafariz D.Maria 	3,3	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d93/3176667.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
74	Vinha Do Fava 	4,0	449,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/2db/198440.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
196	Morgado da Vila Vinhao 	3,2	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a4c/198433.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
197	Cambridge Crossing Shiraz 2018 	3,7	1 119,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a02/584717.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
128	Chateau Le Rimensac 	3,6	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/82f/806164.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
198	Muenzenrieder Heideoden classic 	3,6	949,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ccf/1925383.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
199	Портвейн Vintage Vintage Port 2004 20 % алк., Португалия, 0,75 л	4,0	5 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c5c/3454576.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	-
200	креплёное Hooper's Constitutional Port 10 years old Tawny 	4,0	2 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/79c/3458351.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	-
202	Big Mouth 	3,0	2 199,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/99f/1814089.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
203	Armenia 	3,9	369,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/6c4/769807.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
204	Territori Vocati Sangiovese 	-	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c21/1559781.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
205	Grona Барбера Д'асти 	3,5	1 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/cfb/1900162.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
206	Castelvecchio Barbaresco 	3,4	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/bc7/228790.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
207	Villa Del Sol 	4,0	399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/4e8/176645.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
208	Сихарули Алазанская долина 	3,8	629,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/60e/206143.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
209	Frescobaldi Remole Toscana 	3,6	859,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/657/318490.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
210	Tresors de Loire Saumur Champigny 	3,6	1 379,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/837/496081.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
211	Chateau Haut Rocher 	4,1	2 799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/7e3/515842.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
212	Chateau Vieux Duc Montagne Saint-Emilion 	-	1 899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/34d/317684.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
213	El Jamon Tinto 	4,0	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/43d/1873469.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
214	Escal Roja Tempranillo 	3,2	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/472/496069.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
215	Emporio Nero D`Avola Merlot 	3,3	799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/146/1509346.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
216	Podere Montepulciano D'Abruzzo 	3,6	1 099,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/0aa/289734.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
217	Lenz Moser Zweigelt 	3,9	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/0f7/365987.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
219	Pradorey Origen Roble 	3,5	1 389,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b35/1509350.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
220	Sankt Anna Spatburgunder Pfalz 	3,5	849,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/260/381536.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
221	Gagauzia Reserve Merlot 	3,2	399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d7c/228785.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
222	Codici Россо 	4,1	524,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/516/1900309.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
223	Le Grand Noir Pinot Noir 	3,7	849,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/f01/358823.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
224	Arena de Oro Garnacha 	3,1	399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/984/3497125.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
225	Palavani Саперави Кверви 	4,0	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/9a9/363296.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
226	Вина Тамани Мерло 	-	284,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c4c/806098.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
227	Butcher's Cut Malbec 	3,6	799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a44/1288883.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
228	Ведерниковъ Губернаторское 	3,4	549,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c22/229174.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
229	Tavernello 	3,2	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/8b7/577967.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
231	Desono Каберне Совиньон 	3,8	579,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/7d0/3530769.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
232	Agora Бастардо 	3,5	459,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/63d/2018356.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
233	Cavino Ionos 	3,8	549,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a93/246722.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
234	Astrale 	4,1	1 119,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/975/191883.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
235	Stellenbosch Hills 1707 Reserve 	4,1	2 199,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ff1/576017.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
236	Сихарули Хванчкара 	3,9	2 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d72/206144.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
238	Casa de Santar Reserva 	4,0	1 899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/9f3/3497157.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
239	Domus Vini Raboso 	3,6	399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/aec/229658.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
240	Cuatro Ojos Merlot 	3,7	359,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ce5/323259.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
241	Faina 	3,1	399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/664/317648.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
242	Rocca Alata Valpolicella Superiore 	3,3	949,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/209/763103.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
243	Коктебель Кагор высшего качества, 	4,0	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/5a9/733641.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	-
244	Inkerman Каберне Резерв 	4,0	689,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d15/700796.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
245	Chateau Tamagne Krasnostop 	3,5	349,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b8f/436164.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
246	Castillo de Clavijo Reserva 	4,0	1 199,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/1c7/236318.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
247	Antico Portico Aglianico Beneventano 	3,7	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a8d/225929.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
248	Castelvecchio Nebbiolo D'alba 	3,4	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/7e2/228792.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
250	Vol d'Anima de Raimat 	3,7	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e99/363295.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
251	Sol De Chile Cabernet Sauvignon Reserva 	3,3	859,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/354/3431586.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
252	Bravo Trade Киндзмараули 	-	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/841/1560068.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
253	Villa Krim Cabernet 	3,2	379,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c49/3431412.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
254	Domini Veneti Valpolicella Ripasso la Casetta 	4,2	2 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/f7c/366452.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
255	Lirico Bobal Cabernet Sauvignon 	3,1	399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/fc1/139574.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
256	Bleu Merlot 	3,9	1 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/4cd/484631.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
257	Ballaro Nero di Troia 	4,2	799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/cc3/512706.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
258	Palazzo Nobile Chianti Classico 	3,9	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/9a7/244636.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
259	Col di Sasso Toscana 	3,6	1 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/362/369809.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
260	Виноград Don Simon Tempranillo 	3,0	539,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e24/1171662.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
261	Традиции Абхазии Изабелла Абхазская 	4,1	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/94c/3411441.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
262	Silverboom Black Label Cabernet Sauvignon 	3,8	1 199,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ffb/1559912.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
263	Vylyan Hegy 	3,7	649,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/72f/939093.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
264	Gaetano Montepulciano D'abruzzo 	3,3	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/8ac/627444.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
265	Chateau Les Nauds Bordeaux Merlot 	3,6	524,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/659/515844.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
266	Clemente VII Chianti Classico Riserva 	3,8	2 759,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/af0/267681.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
267	G7 Carmenere 	3,4	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d24/759033.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
268	Pedras Negras 	3,3	769,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/7b1/3176674.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
269	Care Tinto Roble 	3,6	1 399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/7aa/781048.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
270	Askaneli Brothers Saperavi Premium 	4,0	1 339,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/549/246831.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
271	Bouchard Aine & Fils Cotes-du-Rhone 	3,7	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/4de/578459.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
273	M.Chapoutier Luberon La Ciboise 	3,6	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/f0b/576381.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
274	Quinta dos Aciprestes 	3,8	749,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/fd1/3497128.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
275	Santa Hortensia Cabernet Sauvignon 	3,3	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a90/173974.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
276	Castillo Santa Barbara Crianza 	3,5	649,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/177/201467.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
278	Chateau Barre Gentillot Graves De Vayres 	3,9	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a35/970560.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
279	Tancia Chianti Riserva 	3,6	1 259,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/972/236314.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
280	Observer Grand Reserve Petit Verdot-Cabernet Sauvignon 	3,8	799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d10/338715.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
281	Conde Otinano Tinto Rioja 	3,4	679,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/f50/758909.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
282	Флейта-Позвоночник Каберне Мерло 	-	569,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/7de/3393366.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
283	Solarita Nero D'Avola Sicilia 	3,9	819,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ea8/1092848.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
284	San Valentin Garnacha Torres 	3,9	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/276/176681.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
285	Цард Шираз 	-	439,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/41b/775610.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
286	Gabriel Meffre Châteauneuf-du-Pape Laurus 	3,7	4 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ea9/289689.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
287	Alma River Шираз 	3,9	529,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/09b/1900218.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
288	Castelvecchio Barbera D'alba 	3,7	849,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/897/228791.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
289	Cellier des Dauphins Cotes du Rhone Prestige 	3,4	299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/af3/403725.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
290	ликёрное Barros Porto Ruby 19,5 % алк., Португалия, 0,75 л	3,8	1 379,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/fb2/627442.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	-
291	Quinta de Cidro Rufete 	3,8	1 249,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/419/3497127.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
292	Ignacio Marin Castillo Peracense Reserva 	3,5	779,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/855/959599.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
293	Ozzy Shiraz 	4,1	1 219,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/796/636580.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
294	Marani Saperavi 	3,7	559,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/4ca/1900215.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
295	Tbilisi Peak Оджалеши 	4,2	849,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/3b1/289818.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
296	La Piuma Монтепульчано 	3,4	624,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ccf/1900307.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
297	Tarapaca Cabernet Sauvignon 	3,9	789,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e0c/539658.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
298	Vinha do Rosario 	3,6	559,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/f8a/201511.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
299	Криница Rivage 	4,1	3 799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/9d8/3430258.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
300	Escal Roja 	3,2	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/cde/3176693.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
301	Les Halles Cotes de Gascogne 	3,9	949,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a37/3420306.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
302	Чайка Изабелла 	-	369,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d70/3602951.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
303	J.P. Chenet Cabernet-Syrah 	3,4	879,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/19a/383884.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
304	Асканели Алазанская Долина полусладкое 	3,8	659,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/0d4/841538.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
305	ликёрное Sol de Malaga Original сладкое 15 % алк., Испания, 0,75 л	3,6	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e38/571881.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сладкое
307	Fanagoria Style Merlot 	3,6	509,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/577/1092821.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
308	Domaine d'Andezon Cotes-Du-Rhone 	3,7	1 599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/5e5/379132.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
309	Doudet-Naudin Pinot Noir 	3,7	1 349,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/013/2270315.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
310	Cape Zebra Pinotage 	3,5	659,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/4c2/1092843.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
311	Inkerman Шато Руж 	3,2	369,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d21/3427830.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
312	Premium 1904 Graciano 	3,9	799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/044/496067.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
313	Tavridia Бастардо Каберне 	3,5	299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/8bf/729946.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
314	Antico Portico Montepulciano d'Abruzzo 	3,9	524,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/637/225941.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
315	Observer Grand Reserve Carmenere-Cabernet Sauvignon 	4,1	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/1d1/323262.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
316	Balance Pinotage Shiraz 	3,5	629,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/5b5/1109845.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
317	Barone Montalto Неро 	4,0	684,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/893/1900300.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
318	Conde de Tresaguas 	3,6	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/f89/3539443.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
319	Observer Reserve Cabernet Sauvignon 	3,7	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/308/320748.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
321	Redwood Cabernet Sauvignon 	3,3	849,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/6fb/696701.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
322	The Collection The Bean Coffee Pinotage 	3,8	1 369,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/623/433290.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
323	Louis Eschenauer Medoc 	3,8	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/4f8/198372.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
324	Pagos Hispanos Tempranillo 	3,7	549,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/dcb/970715.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
325	Valserrano Graciano 	4,0	2 249,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/cf6/3431438.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
326	Сихарули Ахашени 	4,0	879,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/88c/206198.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
327	Askaneli Brothers Ахашени Красное полусладкое 12 % алк., Грузия, 0,75 л	4,0	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/9cb/1766378.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
328	Dama de Toro Roble 	3,5	949,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/de5/3511453.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
329	ликёрное Elegante Cream 17 % алк., Испания, 0,75 л	4,4	1 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/95a/476082.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	-
330	Mildiani Киндзмараули 	4,2	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/054/515812.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
331	Agora Саперави 	3,7	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/41c/2018362.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
332	Chateau Tamagne Fleurs du Sud Rouge de Tamagne 	3,4	331,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/00e/436153.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
333	Di Caspico special edition 	3,9	429,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/1b5/3436039.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
334	Le Grand Noir Cabernet Sauvignon 	4,1	849,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/eaf/641638.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
335	Крымский погребок Бастардо 	3,1	279,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/08f/736777.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
336	Bravo Trade Хванчкара 	-	1 699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/06a/1509296.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
337	Ca'Delle Rose Valpolicella 	3,6	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/2cf/225932.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
338	Observer Reserve Syrah 	3,7	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c11/320786.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
339	Casa Castellano Garnacha 	4,1	799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/634/496066.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
340	Solarita Chianti 	3,3	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c87/176673.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
341	Eventorosso 	3,8	549,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/72c/435158.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
342	Delampa Monastrell 	4,0	659,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/2ca/650544.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
343	Fassini Chianti 	3,6	1 199,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/0ac/225862.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
344	Acharuli Саперави 	3,5	149,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/f97/1900275.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
345	The Wedge Shiraz Mourvedre Viognier 	3,8	1 099,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d62/3269638.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
346	Joy Тинто 	3,8	749,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/914/3431459.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
347	Beefsteak Club Malbec 	3,7	299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e63/3431024.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
348	Inkerman Каберне 	3,6	369,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/191/3427829.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
349	el Gordo Garnacha 	3,3	649,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ea3/1562165.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
350	Tour de Mandelotte Medoc 	3,6	1 419,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/765/235850.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
351	Flor De La Mar Reserva 	3,8	854,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/838/496151.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
353	Ignacio Marin Castillo Peracense Crianza 	3,5	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/628/959595.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
355	Crudo Nero d'Avola Cabernet Sauvignon 	3,9	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/56b/613612.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
357	Sol De Chile Syrah Reserva 	3,5	859,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/49d/3431585.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
159	Tbilisi Peak Мукузани 	4,0	849,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/938/144255.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
358	Villa Krim Shevalie Rouge 	3,5	379,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/7c9/3431682.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
359	Arnaldo-Caprai Montefalco Rosso 	3,7	1 799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/db6/606036.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
360	Sonovino Россо 	3,3	469,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/161/1900315.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
361	ликёрное Солнечная Долина Черный Доктор 	4,3	1 599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a94/321658.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	-
362	Protos Roble Ribera Duero 	3,7	1 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/eee/520975.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
363	Les Jamelles Syrah 	3,8	1 139,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ae4/538734.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
364	Askaneli Brothers Саперави 	3,6	799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/55b/201371.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
365	Don Batisto Rioja Cosecha 	3,6	549,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/581/164316.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
366	Zarafa Pinotage 	3,5	659,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/85a/562894.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
367	Ханджлури Хванчкара 	-	1 799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/084/156982.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
368	Canada Tempranillo-Garnacha 	-	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/bba/3431449.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
369	Good Steak Мерло 	3,2	129,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/fd4/1766369.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
370	Murviedro Reserva 	3,7	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/86b/495939.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
371	Appassionante Veneto Cielo e Terra Rosso 	4,1	889,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c8e/3463216.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
372	Conti Zecca Zinfandel 	3,7	1 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e95/607397.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
373	Campero Карменер 	3,7	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/6db/2561491.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
356	Yerevan Areni Karmrahyut 	3,8	589,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/cdc/379245.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
374	Wines & Beverages of Abkhazia Эшера 	3,9	559,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/9e2/236162.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
375	Портвейн Hooper's 2003 Colheita Port сладкий 20 % алк., Португалия, 0,75 л	4,1	2 599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/083/3436010.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	-
376	El Circo Acrobata Garnacha 	3,4	1 899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/5d5/773984.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
377	Ramon Bilbao Crianza Rioha 	3,9	1 199,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b5f/287190.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
378	Bodegas Emilio Moro Finca Resalso 	3,8	1 799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a0d/291191.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
379	Coteaux Bourguignons Кюве де Тэп де Шатнэ 	3,6	1 399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/5aa/3553222.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
380	Stobi Vranec Vilarov 	3,9	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d3f/173999.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
381	Marques de Caceres Crianza Rioja 	3,6	1 799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/fa5/763401.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
382	Inkerman Пинно Крымское 	3,5	369,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a97/3427831.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
383	Авторское Саперави 	3,5	399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c7e/1766372.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
384	Castelvecchio Langhe Dolcetto 	-	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/0ef/3431445.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
385	Tres Amigos 	3,5	549,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/757/780384.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
387	Colle dei Cipressi Montepulciano D'Abruzzo 	3,5	639,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/64f/317539.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
388	Цард Ломиаури 	-	439,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/2c0/775611.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
389	Andre Millot Moelleux 	3,9	589,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/394/191757.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
390	Wine Day Rouge 	2,2	349,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a27/1925602.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
391	Hamelin Bourgogne Pinot Noir 	3,6	1 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/f91/3431382.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
392	Palabra de Caballero Crianza La Mancha 	3,7	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/72f/201477.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
394	Beyond Big! Каберне Совиньон 	3,8	1 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/786/3431440.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
395	Bricco Rosso Suagna Langhe Rosso 	3,7	799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/6ca/438692.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
396	Desono Мерло 	3,5	579,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/096/3530768.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
397	Bad Brothers 	3,8	949,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/083/3269636.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
398	Портвейн Calem Fine Ruby Porto красный 19,5 % алк., Португалия, 0,75 л	4,1	1 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c4d/293152.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	-
399	Fanagoria 100 оттенков красного Саперави 	4,1	1 449,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/281/1092838.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
400	Vylyan Ordog 	3,6	649,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/83a/496020.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
401	Kindzmarauli Marani Mukuzani 	3,8	1 199,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/298/3604942.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
402	Tavridia Каберне 	2,9	299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ea9/201382.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
403	Territorio 	4,1	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/5b5/598026.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
404	Condesa Luna 	3,6	539,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/bd1/3539445.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
405	Don Ramon 	3,8	749,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/13e/291170.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
406	Vino Kalem Вранец 	3,6	529,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/4b0/1900184.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
407	Domus Vini Refosco 	3,5	399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/82e/229660.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
409	Barkan Classic Каберне Совиньон 	3,2	1 389,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/094/397553.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
410	Lorch Шпетбургундер 	3,2	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/529/3503086.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
411	ликёрное Contrabandista Valdespino Jerez полусухое 18 % алк., Испания,...	3,8	2 699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ff1/332463.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
412	Calderona Crianza 	3,6	1 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/cf9/1562169.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
413	Los Condes Gran Reserva 	3,5	1 229,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/020/863865.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
414	Castelvecchio Piemonte Dolcetto 	-	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/834/3431443.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
415	Marchesi di Barolo Ruvei 	3,8	2 639,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/01e/236423.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
416	Bravo Trade Саперави 	-	919,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/6c4/1509294.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
417	Casa de Santar Амореш 	3,8	2 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c6c/3497158.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
418	Vol I Dol Negre сухое 	3,3	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/62b/717959.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
419	Vina Albali Темпранильо Шираз 	3,3	299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a53/1900198.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
420	Castillo Santa Barbara Gran Reserva 	3,7	839,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/383/260350.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
421	Gerardo Cesari Justo 	3,6	1 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e29/905499.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
422	Портвейн Массандра Ливадия красный 18,5 % алк., Россия, 0,75 л	-	839,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/15a/939096.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	-
423	Gato Negro Cabernet Sauvignon 	3,4	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d51/1647361.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
424	Chateau Tamagne Cabernet 	3,3	349,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b24/436163.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
425	Il Poggio dei Vigneti Nero d'Avola Sicilia 	2,7	649,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/1ed/650530.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
426	JP. Chenet Cabernet-Syrah 	3,4	299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a7a/1509355.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
427	Каспийская коллекция 	3,4	369,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ba3/1900195.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
428	Джейран Чинар 	-	469,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/457/680474.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
429	Venta Real Гран Резерва 	3,4	749,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/3fd/1925670.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
430	Las Pizarras Alarba Garnacha 	3,9	1 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b15/3511462.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
431	Marques de Villanueva Tempranillo Carinena 	3,4	659,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d18/139572.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
432	Bertinga Сасси Кьюзи 	4,1	4 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/fde/2777331.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
433	Sancho Garces Rioja 	3,6	1 099,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/2c9/363054.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
434	San Valentin Tempranillo 14,5 % алк., Испания, 0,75 л	3,9	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/692/3402884.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	-
435	Observer Grand Reserve Syrah-Cabernet Sauvignon 	4,2	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d05/338712.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
436	Tussock Jumper Pinot Noir 	3,5	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b46/416166.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
437	Beronia Reserva 	4,0	2 229,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/083/1241617.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
438	Грузвинпром Хванчкара 	4,0	1 749,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a90/2270318.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
439	Vinum Nobile Каберне 	3,3	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/4fb/512707.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
475	Mascaradas 	3,7	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/872/3511456.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
442	Valserrano Mazuelo Rioja 	4,1	2 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e09/1024510.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
443	Броjаница Кадарка 	-	449,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/5a1/145476.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
444	Clos Gebrat Priorat DOCa Crianza 	3,9	1 899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b5c/2535474.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
445	Cellier des Dauphins Prestige 	3,4	949,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/98c/226971.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
446	ликёрное Malaga Virgen Pedro Ximenez 	3,7	659,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/6f9/571889.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сладкое
447	Orion Salento Primitivo 	3,5	1 799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/5ab/576363.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
448	Santa Hortensia Carmenere-Cabernet Sauvignon 	3,1	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ff0/241917.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
449	el Gordo Tempranillo 	3,5	649,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/556/1562167.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
450	Wines & Beverages of Abkhazia Радеда 	3,7	559,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/cff/236182.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
451	Observer Reserve Carmenere 	3,7	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/9f7/320788.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
452	Ballaro Primitivo Salento 	4,2	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/603/545206.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
453	La Piuma Монтепульч 	3,4	1 699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ff4/1925588.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
454	Muenzenrieder Neusiedlersee 	3,5	949,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/74e/1925385.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
455	Territori Vocati Chianti Classico 	3,8	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/028/225937.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
456	Domaine des Chanssaud Chateauneuf du Pape 	4,2	4 199,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/5e2/763407.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
457	Di Caspico Special Edition 	3,9	429,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/091/1171133.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
458	Chevalier Alexis Lichine Chateau Charrier 	3,6	1 559,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e42/356702.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
459	Palazzo Nobile Chianti Classico Riserva 	3,9	1 099,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/65a/369808.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
460	The Mark Merlot-Cabernet 	3,9	749,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/431/3431441.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
461	Грузвинпром Киндзмараули 	3,8	799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/6b7/1900235.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
462	Albert Bichot Chateau de Dracy Pinot Noir Bourgogne 	3,6	2 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e0a/267348.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
463	Esteban Tempranillo Syrah 	3,6	799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a68/3511460.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
465	Fado Reserva 	3,9	1 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/f17/2270319.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
466	Donna Marzia Salento 	3,7	1 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/651/614586.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
467	Conte Emo Capodilista La Montecchia Ca'Emo 	3,7	1 399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/001/3530706.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
468	Frog's Return Cite de Carcassonne 	3,9	749,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/09d/410988.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
469	Matsu El Viego 	4,3	5 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/829/260353.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
470	Taboadella Villae 	4,0	1 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/80c/3399460.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
471	La Cova Priorat 	3,8	1 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/4c3/3530709.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
472	Castillo de Clavijo Crianza 	3,6	969,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ff3/236317.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
473	Millaman Estate Reserve 	3,6	1 259,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/dec/539578.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
474	Chateau Jeandeman Тур Де Ля Тунелль 	3,6	1 199,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/6e6/3400274.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
476	PMC Neubruch Pinot Noir 14 % алк., Австрия, 0,75 л	4,1	1 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a3e/2337394.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	-
477	Marani Alazani Valley 	4,0	559,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/aa3/1900214.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
478	ликёрное Oloroso Aurora Jerez-Xeres-Sherry сухое 17,5 % алк., Испания,...	4,2	2 399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e6e/299067.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
479	KG Gries Pinot Nero Riserva 	3,6	2 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d7b/455365.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
480	Make It Big Pinot Noir 	3,4	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/28a/prd_668363004.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
481	Observer Reserve Pinot Noir 	3,4	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/663/320784.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
482	Premium 1904 Tempranillo Syrah 	3,7	674,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/43d/496068.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
483	Chateau Labarrade Malbec 	3,5	1 099,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d3d/575761.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
484	Belisario Колламато 	4,0	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c06/1900164.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
485	Casa de la Ermita Seleccion Rey Limitada 	3,8	1 099,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/873/3420299.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
486	Carson's Cabernet-Sauvignon Shiraz 	3,6	849,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a82/780358.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
487	Quinta Nova Reserva 	4,1	2 399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/680/3399464.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
488	Sol De Chile Syrah Merlot 	3,4	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/9f4/1092845.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
489	Valserrano Reserva Rioja 	4,0	1 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/620/1024508.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
490	Il Sarone Россо 	3,6	744,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/02e/1900311.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
491	Chateau Le Faure Bordeaux 	3,4	1 149,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c22/1170999.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
492	Ca'Delle Rose Pinot Nero Trevenezie IGP 	3,8	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c51/438686.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
493	Machiavellico Toscana 	3,9	1 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d65/2270322.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
495	Salida Tannat 	3,6	739,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/336/317550.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
354	Броjаница Вранац 	3,7	449,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/91e/145474.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
496	Observer Cabernet Sauvignon - Merlot 	3,7	549,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/7ca/323260.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
497	Bosca Stories of Italy Negroamaro 	3,6	589,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/833/650531.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
386	Fleur de la Reine 	3,4	759,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/8c2/1900265.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
499	Fanagoria 100 оттенков красного Каберне 	4,0	1 449,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ce2/1092837.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
249	Sobremonte Tempranillo 	3,3	449,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a2b/201497.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
500	ликёрное Royal Madeira 17,5 % алк., Португалия, 0,75 л	4,4	1 699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ad7/435202.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	-
501	E Arte Puglia Rosso 	3,7	1 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/609/2270321.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
502	El Sotillo 	2,3	449,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c5d/3092594.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
503	Vylyan Macska 	3,5	649,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/df0/496019.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
504	ликёрное Gonzales Byass Elegante Medium Sherry 17 % алк., Испания, 0,7...	3,9	1 439,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/423/636584.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	-
505	Calderona Joven 	3,3	799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/66d/970712.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
506	Antano Tempranillo 	3,3	249,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a8a/3431023.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
507	Trenel Beaujolais Villages 	3,5	1 249,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/6aa/593636.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
508	Majano Tempranillo-Merlot 	2,8	1 199,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b3d/3553290.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
509	Chateau Brehat 	3,7	1 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d4c/518627.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
510	Domaine de Tara Hautes Pierres Ventoux 	3,8	2 099,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/4e3/461555.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
511	Aretino Tipici Chianti Riserva 	3,7	1 319,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e45/164248.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
512	Famille Sadel Côtes Du Rhône 	4,0	1 399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/1bc/317685.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
513	Hoya De Cadenas Reserva Tempranillo 	3,4	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/cdd/135065.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
514	Mas Oliveras Tempranillo 	3,4	1 199,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/5d8/3553301.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
515	Stobi Vranec 	3,9	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e40/308260.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
517	Tarapaca Carmenere 	3,7	789,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/6c4/539656.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
518	Capellana Tempranilo 	3,7	549,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/07e/562420.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
519	Casa de Santar 	3,8	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/fee/3497159.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
520	Vinedos del Villar Tempranillo 	3,8	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/805/3420303.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
521	Art.Terra Amphora 	3,5	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/787/1785091.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
522	Loving Vincent Des Gracieuses Vignes Rouge 13,5 % алк., Франция, 0,75 л	4,0	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ed1/1900251.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	-
523	La Croix du Pin Merlot 	3,3	829,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/518/3405428.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
524	Bravo Trade Castillo De Ayud 	3,9	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/740/1509297.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
525	Territori Vocati Россо Тоскана 	3,5	1 199,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/27e/3493609.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
526	Dama de Toro Crianza 	3,7	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/4bc/3511449.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
527	Vipra Rossa Bigi 	3,5	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/440/895985.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
528	Acharuli Домашнее 	3,3	149,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/70b/1900280.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
529	Jardin Fleury Syrah 	3,7	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/175/780383.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
530	Ciconia Touriga Nacional 	3,6	949,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/0c7/252127.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
531	Don Batisto Rioja Crianza 	3,6	749,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d61/164317.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
532	La Piuma Санджовезе 	3,4	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/af6/1900303.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
534	Lorch Dornfelder Trocken 	3,3	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/3e9/3503080.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
535	Rudolf Muller Pinot Noir 	3,2	549,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e8e/3497124.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
536	Inkerman Рубин Античный 	3,6	519,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/cb7/700735.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
537	Апацха 	3,8	489,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ee9/461564.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
538	Грузвинпром Алазанская долина 	3,9	639,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/984/1900236.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
539	Ханджлури Пиросмани 	-	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a77/174025.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
540	Castillo Santa Barbara Reserva 	3,6	739,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/9e5/204488.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
541	Chateau Beaumont Chateau D'Arvigny Haut-Médoc 	-	2 149,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/5d3/291195.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
542	Venta Real Резерва 	3,4	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/290/1900173.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
543	Askaneli Brothers Saperavi Muscat 	4,2	979,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ebd/246829.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
544	Броjаница Каберне Совиньон 	3,6	449,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/491/973688.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
545	Gustave Lorentz Pinot Noir 	3,6	2 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b01/3355225.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
546	Chateau Haut Fontenelle Bordeaux 	3,6	1 119,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/692/233718.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
547	Fattolia del Cerro Nobile di Montepulciano 	3,7	2 599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/16c/289713.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
548	Tres Amigos Tinto Seco сухое 	3,5	449,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/117/3431408.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
230	Tbilisi Peak Ахашени 	4,0	849,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/720/201493.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
549	Messias Porto Ruby 	3,7	1 399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/9c3/3431396.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
550	Castello Banfi Brunello di Montalcino 	4,2	5 799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e26/665044.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
551	Garnachas de Espana La Garnacha Salvaje Del Moncayo 	3,7	1 129,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e1a/176667.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
552	Casa Ermelinda Freitas Terras do Po 	3,4	679,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/28d/853478.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
553	Ionos Cabernet S.-Merlot 	4,0	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/1ea/3430253.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
554	Moulin de Gassac Classic 	3,5	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/2ed/3269626.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
555	Buttafuoco 	4,0	1 269,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/27e/435200.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
556	Gandin Filare Nero 	-	1 399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/433/2577660.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
558	Closerie des Alisiers Bourgogne Pinot Noir 	3,3	1 799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/9e9/520886.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
559	Beaujolais-Villages 	3,7	1 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/116/3269680.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
560	G7 Cabernet Sauvignon 	3,2	299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c56/1766375.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
561	Castelvecchio Grignolino D'asti 	3,3	859,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/85e/228794.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
563	Fairview Пинотаж 	3,4	2 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/79d/2777330.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
564	Портвейн Массандра Южнобережный красный сладкий 18 % алк., Россия, 0,75 л	4,1	839,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/8d1/927687.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	-
498	Clemente VII Chianti Classico 	3,8	1 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c4f/461552.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
565	Ballaro Nerello Mascalese 	4,0	549,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/885/512704.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
566	Chateau les Eyquem Hautes Graves Margaux 	3,9	1 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/1dd/515840.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
567	Nobilomo Raboso Veneto 	3,6	799,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/914/636575.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
568	Bierzo Finca Luna Beberide 	3,5	1 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/946/2270317.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
569	Sancerre Domaine Franck Millet 	4,0	2 199,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/f17/3461916.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
570	Cuvee de la Guinchule Saint-Amour 	3,9	1 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/432/837767.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
571	Rioja Bodegas De Abalos Tempranillo 	3,2	859,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/1f2/prd_659346009.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
572	Bouchard Aine & Fils Les Vendangeurs Bourgogne Pinot Noir 	3,4	1 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/1e0/314401.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	-
573	Marques de Riscal Gran Reserva 	4,2	6 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/411/562461.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
575	Michel Дорнфельдер 	3,6	749,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/553/3400287.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
576	Pirineos Roble Somontano 14 % алк., Испания, 0,75 л	3,8	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/024/461551.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	-
577	Грузвинпром Мукузани 	4,0	944,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/749/1900230.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
578	Canada Tempranillo 	3,6	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/0f1/156976.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
579	Castelvecchio Piemonte Rosso 	3,5	599,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c21/3431444.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
581	Талавари Алазанская долина 	4,0	299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/5a2/1836555.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
582	Tussock Jumper Tempranillo 	3,5	839,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/fb3/310813.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
583	Solarita Chianti Riserva 	3,6	1 169,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/480/176674.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
584	Dama de Toro Reserva 	-	1 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/56d/3511448.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
585	Ignacio Marin Castillo de Embid Crianza 	4,0	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d4e/959598.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
586	Don Batisto Rioja 	3,6	1 139,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/240/260354.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
587	Trenel Coteaux Bourguignons 	3,6	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/efe/3461915.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
588	Murviedro Bobal Roble 	3,7	899,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/49f/325236.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
589	Art.Terra Alentejo 	-	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/0cd/1785087.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
590	Beiral Vineyards Escolha Beira Atlantico 	4,0	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/005/338782.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
591	Sankt Anna Dornfelder Halbtrocken 	3,9	849,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/af0/676593.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
592	Gaetano Sangiovese Puglia 	3,6	549,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/61b/627621.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
593	Vylyan Villany Cabernet Franc 	3,6	484,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/22d/496018.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
594	Сихарули Саперави 	3,7	299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/60e/1814090.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
595	Грузвинпром Саперави 	3,6	734,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/79d/1900232.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
596	Bravo Trade Алазанская Долина 	3,8	879,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/897/1509295.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
597	Paco das Cortes Reserva da Familia 	4,0	1 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/123/2337386.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
598	Джейран Матраса 	3,4	449,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/182/401217.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
599	Valserrano Crianza Rioja 	3,8	1 124,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/2bf/1024504.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
600	Frescobaldi di Castiglioni 	4,0	3 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ce2/3418757.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
601	Castillo de Almansa Seleccion 	3,8	1 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/ebc/3511458.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
602	Ramon Bilbao Rioja Reserva 	3,9	2 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/29f/410984.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
603	Belagaio 5Cento 	-	1 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/afc/3431379.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
604	Kindzmarauli Marani Kvareli 	3,8	1 149,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/792/3604940.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
605	ликёрное M.Chapoutier Rivesaltes сладкое 	3,9	1 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/351/379274.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сладкое
606	ликёрное Malaga Virgen Dunkel Pedro Ximenez сладкое 17 % алк., Испания...	3,7	1 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/7c0/571897.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сладкое
607	Venta Real Крианца 	3,4	629,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/0b9/1900174.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
13	Nuviana Tempranillo Cabernet Sauvignon 	3,6	669,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/b64/369792.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
53	Портвейн Hooper's Lord Mayor Tawny Porto сладкое 19 % алк., Португалия, 0,7...	3,4	749,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c02/3436006.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сладкое
78	Astrale Special Edition 	4,2	1 279,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/3b1/1181127.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
122	Wines & Beverages of Abkhazia Чегем 	3,7	469,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/5c3/236181.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
139	Wines & Beverages of Abkhazia Апсны 	3,7	469,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/89f/236254.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
171	Портвейн Valdouro Porto Tawny Port красный 19 % алк., Португалия, 0,75 л	4,1	1 099,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/db5/322380.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	-
201	ликёрное Pedro Ximenez Reserva de Familia сладкое 15 % алк., Испания,...	4,0	879,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/f4d/571891.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сладкое
218	Inkerman Древний город 	4,0	549,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/7ab/607371.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
237	Массандра Жемчужина Массандры 	4,1	479,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/843/3431394.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
272	Campo Viejo Tempranillo Rioja 	3,6	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c1c/217819.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
277	Sazyk Dere Каберне марочное 	3,5	399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/1b7/262090.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
306	Las Pizarras Fabla 	3,7	749,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/5e8/3511461.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
320	La Maridelle Pays D'OC Cabernet Sauvignon 	3,0	379,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a68/435201.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
608	Novacorte Amarone Della Valpolicella Classico 	4,3	3 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/fac/484539.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
609	Messias Porto Tawny 19.5 % алк., Португалия, 0,75 л	3,3	1 399,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/7fc/3431397.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	-
610	Garnachas de Espana La Garnatxa Fosca del Priorat 	3,8	2 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/5a7/324816.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
611	Wines & Beverages of Abkhazia Амра 	3,7	559,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/56c/236255.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
612	el Gordo Syrah 	3,6	649,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c34/1562171.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
613	KG Gries Lagrein Riserva 	4,1	2 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/6e8/455359.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
614	Castelvecchio Barbera D'asti 	3,5	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/98f/228793.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
615	Талавари Саперави 	3,7	339,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/58b/1836553.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
440	Cuatro Ojos Cabernet Sauvignon 	3,8	359,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/490/338711.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
616	Majano Tempranillo 	2,8	949,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/fa7/3553289.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
617	Isla Oro Темпранильо 	3,1	479,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/1cc/3605576.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
618	Malgre Органик 	3,7	649,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/5db/3605577.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
562	Castillo de Almansa Reserva 	3,6	674,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/7b3/3511457.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
619	Clefs Des Legats Кот Дю Рон 	3,3	999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/087/3604794.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
620	BW Eclectic Каберне 	3,6	429,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/a54/3604905.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
621	BW Eclectic Изабелла 	3,1	429,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/93b/3604906.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
622	Codos de Larouco Менсия 	3,8	1 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/1d9/3553683.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
623	Tempo & Tierra Tempranillo 	3,4	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/9f8/3553685.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
624	Tempo & Tierra Crianza 	3,4	699,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d73/3553687.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
352	Ханджлури Сувенирная серия Саперави 	-	1 299,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e90/289894.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
393	Georgian Wines Алазанская долина 	3,3	649,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/e71/3535621.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
408	Крымвинторг Пино-Фран крымский 	3,2	329,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/c4e/277372.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
441	Традиции Абхазии Саперави 	3,4	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/7ab/3411446.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
464	Талавари Киндзамараули 	-	449,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d02/1836554.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
494	Blandy's Madeira Duke of Clarence Rich 	3,9	1 999,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/617/2810846.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сладкое
516	Passo Sardo Cannonau di Sardegna 	3,6	1 099,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/d66/401226.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусухое
557	Традиции Абхазии Апхын 	3,6	499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/435/3411444.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
574	Belagaio Primario 	-	1 349,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/8ce/3431380.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	сухое
580	Портвейн Calem Fine Tawny Porto красный 19,5 % алк., Португалия, 0,75 л	4,1	1 499,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/f72/293153.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	-
533	Vivo Greto 	3,2	659,99 ₽	https://online.globus.ru/s180x160/upload/pim_images/369/1900261.jpg	https://toplogos.ru/images/thumbs/preview-logo-globus.jpg	Красное	полусладкое
\.


--
-- Data for Name: perekrestok; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.perekrestok (id, name, rate, price, picture, shop_logo, color, sugar) FROM stdin;
3	Киндзмараули 	4,2	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/25/1a/38c88a4807bc00711779fcafef19.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусладкое
5	Ramon Bilbao Crianza Rioja DOC 	3,9	969,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7e/fe/fa08e9ee567afe63f6a37b6f837b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
6	Ikhalto Киндзмараули 	3,8	499,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/49/92/ca7b555e66af45c77a17d43a8506.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусладкое
29	Sobreiro de Pegoes Premium 	3,7	549,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/8d/cb/64f84045e3ec26f3257bdffcc284.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
8	Chateau Tamagne Терруарное Саперави - Красностоп 	3,8	699,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/15/fe/fcc486e058xd62xde009bb451da7.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
7	Don Garcia 	2,9	299,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b3/51/086e1d37b9fb44bd2873d462e92d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
10	Лыхны 	3,8	559,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/bf/bb/226f2c676xd98816dc86b215db78.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусладкое
11	Q.S.S. Рар 	3,8	459,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/29/87/dff915c5ede95a9aebc60114e192.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
12	Tres Amigos сортовое ординарное 	3,7	339,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a4/3e/2d456d1a03c7a4f082f3104111f6.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусладкое
13	Maradi Киндзмараули 	-	459,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4b/6a/55f7e2f203164816d6a40a2963da.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусладкое
14	Tavernello 	3,2	399,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7b/bd/dd9774436a6257a6a8db56454616.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
15	San Valentin Garnacha Catalunya DO 	3,9	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/1f/8f/b9db2d5d7df213a1647758f6e0d4.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
16	Highway to Hell 	3,8	589,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/fb/f8/d0f832d1d173b42bf0f4c005666b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
17	Fetzer Zinfandel Valley Oaks 	4,0	1 349,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/2a/62/5e641b7162b9802eaf0e0dae566d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
18	Murviedro Пасьон Монастрель Гарнача 	3,8	549,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/2d/70/4868bxd729e603f1c34f5ae94418.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
19	B.IO Nero d'Avola Cabernet 	3,8	739,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c7/4e/42ee07f48b91a57384dec9cfb509.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
20	Destination Rouge Bordeaux AOC 	3,7	649,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/61/06/3cbbbc6bc5288e302a8a11b94546.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
21	Pirovano Collezione Nero d'Avola 	3,7	459,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/cc/66/20ab76e0722fa2a54c5020dd480e.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
23	Finca Constanсia Parcela 23 	3,6	769,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d3/80/3c32845976e4cbd8dbac50543645.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
24	La Miranda Secastilla Garnacha Somontano DO 	3,8	659,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c1/bd/1ca39a2b2f04ed9749c67a3e8077.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
25	Chocoholic Pinotage 	3,7	829,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f7/ac/b6e4f891709b9168e8a7cc0fd2f7.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
26	Elegido Tempranillo 	3,8	449,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f6/48/248395b37c74a8ee771ef8bed0e3.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
27	Sant'Orsola Chianti DOCG 	3,3	719,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a1/fe/81ab30d2a7a9f2e1e592489ce42a.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
28	Steakwine Cabernet Sauvignon 	3,8	559,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e7/34/b2c46b127e572262ab4e7a4015bc.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
1	Elegido Tinto 	4,3	399,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/11/da/c8399707ea398879ea1a79999a62.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусладкое
2	Chateau l'Eclair Merlot ординарное 	3,6	299,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/44/79/652c95006165e213f8651daf0bf1.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусладкое
9	Mayrik 	3,6	379,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a9/18/c216d9b5d33fc5bd0cfa2b5b3d9d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
33	Альтос Иберикос Крианса 	-	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/bb/0d/9335efd7c687a0f48143cf4b75ba.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
34	ликерное Солнечная Долина Черный Полковник 	4,2	909,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7c/19/a8f620ab2fdee2b6771b16d3b127.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сладкое
35	Cape Art Shiraz 	3,5	449,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/42/47/279f0758fc7b59369d7650073550.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
36	Faustino VII Tempranillo Rioja DOC 	3,5	729,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/13/23/99138eb5f840e892ba7f10598c2c.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
37	Les Chartrons Lussac Saint-Emilion AOC 	3,6	949,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c5/42/88b6e7e33208f427cb0851ba510f.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
38	Batono Алазанская Долина 	3,3	579,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/83/f0/71b4f8f3aa3757ea1b1f63283e5b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусладкое
39	Redwood Vineyards Pinot Noir 	3,9	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b7/98/b1482a0674622edf2983fbcfe982.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
40	Tour De Mandelotte Bordeaux AOC Rouge 	3,7	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e2/0a/0e4d300317153c619d8cfaa880c1.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
41	Dos Caprichos Crianza Rioja DOC 	4,1	759,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/6b/34/dbecxd5011f6001fd4518d487811.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
42	Цард Ломиаури-Саперави 	-	599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c2/2b/eb85fc4b7c40432d5a4d2efe3be2.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
43	Aristov Анима Анчелотта 	3,3	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/14/fd/d332d0f3xdfc402c80b27206d722.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сладкое
44	Negrar Corvina 	3,6	549,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/87/72/65997ae34ae80cf83ca2bcdbf3f1.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
45	Negrar Appassimento 	4,1	619,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/1b/13/5b5bd348683b17e1f95591e3fb73.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
46	Chateau l'Eclair Cabernet ординарное 	2,9	299,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/3a/bd/9676ba6134f0ee03ebec4f65e999.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
47	Masseria Doppio Passo Primitivo-Zinfandel 	4,0	1 249,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4a/a8/cac0b8ce54ed1e51c8dee21d860d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
48	Karas 	4,0	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e7/a1/4124d224140ea5bdebe389aee8f0.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
49	Amaranta Pinotage 	3,6	499,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/66/ed/c77f4a3911c4186d97ef837b88a8.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
50	Rouge de Talu 	3,6	639,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/79/02/34910056001a853c662d8cfb15e4.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
51	Podere Montepulciano d'Abruzzo DOC 	3,6	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0a/e4/9bf4d41385c8e74b7ab53fae4217.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
52	Поместье Голубицкое Каберне Совиньон ЗНМП Голубицкая стрелка 	3,9	699,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d6/88/8bf5aa85cf74dbe159edf5573c23.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
53	Vinogor Изабелла 	2,3	199,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c9/44/0f6c4d30ee25b29aff3e5fa27321.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусладкое
55	Barkan Classic Cabernet Sauvignon 	3,5	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/22/05/9ef7bf0ba3f32c3593e9bc874851.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
56	Beefsteak Club Beef&Liberty Malbec 	3,7	1 149,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/49/4c/9e45c0xdbe6748bb13bdcf5d8b59.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
57	Ведерниковъ Губернаторское Голубок 	3,6	619,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0a/bb/057748c9ec84742e07374c10f651.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
30	Fort du Mirail Bergerac AOC 	3,4	839,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9d/c7/4c2c1e7f349d515e8f98912a8c9d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
31	Винный напиток Sangria Fresh Wine in Tube 	3,7	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4d/43/00f22fbda8a6ec2e2b2c2626b9c5.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусладкое
32	ликерное Солнечная Долина Черный Доктор Солнечной Долины 	-	1 549,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/29/67/b055f9724aae713b4be3ab03becf.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сладкое
61	19 Crimes Snoop Cali Red 	3,6	2 599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/10/67/d6cfe2ace33c9c2f1361e193c433.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусладкое
62	Finca Constanсia Seleccion 	3,7	729,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/2c/00/bcc58b0dc9e8b7d289abdfb4d0f7.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
63	Born to be Wild 	4,0	769,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/91/85/9bb1b8db4b4474495aa5ca613eb8.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
64	Tentation du Sud 	3,9	759,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/28/1f/b738451b3637dcbf4a7cfe22a369.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
65	Плодовый алкогольный напиток Дерево Жизни Гранат красный полусладкий, 12%, 750мл	-	369,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5f/ce/57889e24af79a293cf7ba71fe17f.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	-
67	Solvino Каберне 	3,5	199,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/88/69/454359ed882bee283748e086227b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусладкое
68	Pagos del Rey Condado de Oriza Tempranillo Ribera del Duero DO 	3,5	799,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a5/5b/40fcac7d54844ff99557565b32ac.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
69	Camden Park Shiraz 	3,7	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e3/bb/9bd9317e4cb4b5c954893bdba0ee.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
70	Jardin Fleury Syrah 	3,7	799,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/fb/1d/5d52b896f8c2e0f44b42d9a9581d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
71	Terramia 	3,2	369,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/cc/48/3fed58f584a22374798b4fd5b07d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусладкое
72	Inspirado Carmenere 	3,6	499,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4a/9e/78d5948e10c9975418af24fa7436.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
73	Гранд Резерв Атаман Красностоп 	3,6	839,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/2c/5e/af55exdf3e51285be12a0aexd7b5.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
74	Le Grand Noir Pinot Noir 	3,7	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/14/68/f174fd9d5e10f53c13ff6dcb714c.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
75	Turtle Dreaming Cabernet Sauvignon-Shiraz 	3,8	769,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/63/9b/2cc25688f792868af221c4ac3d98.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
76	Pirovano Nero d'Avola 	3,7	469,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/62/62/698fd2ca14398bfd646d3c8e5c5d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
77	Beefsteak Club The Mini Malbec 	3,4	319,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/12/40/98f21461743f5da3a424ffb94c05.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
78	Cape Art Pinotage 	3,2	449,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/64/12/735ee86abcf3de7a276e1cd499c7.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
80	Chateau Tamagne Саперави 	3,8	469,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/87/be/9024af4572c227d6b22e28bfb8c1.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
81	19 Crimes 	3,9	1 799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d6/bc/2f3b83ca94256e6d2e67f072e5eb.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
82	Cuvee Blanc Terrier Rouge 	3,6	659,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/99/f8/ed6ce3a845987c64c4ed8c2788c3.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
83	АСТ Саперави 	3,5	379,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/78/9e/9e269c5f92fe221edc30d964f184.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
84	Raices Reserva Valdepenas DO 	3,7	699,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/44/60/23610ee169de68de36facb392276.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
85	Frontera Cabernet Sauvignon 	3,2	529,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/2e/af/4033e1cec1b435e98877faae768d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
86	Villa Antinori Rosso 	3,8	1 699,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/8a/10/c02988dc2e0cf11f230e19a36457.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
58	Batiscafo Garnacha сортовое 	4,0	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4e/18/707a813a3b381c3d96cfbfae4c1e.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
59	Yali Уайлд Свон Каберне Совиньон 	3,8	739,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5f/21/7bf42e9ce1b61048a962bbd667fc.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
60	Цард Саперави-Аладастури 	3,9	599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0c/18/ddf8692302c3ffdcf79cd94acc61.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
92	Фруктовый Взрыв российское сухое 	-	569,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d8/d6/2392c163e6938dc6b1a1be734464.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
93	Карменер Квинтэссенция российское 	-	739,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9e/ea/7cc5aa02576528576c2e07b2d2d8.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
94	Марселан российское вино 	3,1	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/72/f7/c585f4e0xd58xd11cde49ff8ba19.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
96	Fyi Red Blend 	3,8	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/06/ca/436e9d8eb05518263d75c8d62e49.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
97	Chateau De Talu Море волнуется два 	3,5	499,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/35/e5/a91b4db8d15d571615cf48470837.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
98	Авторское Саперави 	3,5	489,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a0/8b/95e49fa375056a7a1d2dd22b61ca.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
99	Тавквери-Мерло Цард марочное 	4,0	599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/29/11/2383fe04c1f43f24022a0c991b30.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
100	Кубань Таманский полуостров Шато Сенной 	-	499,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/44/51/c968350eb5f4ee83f609515421df.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
101	Солнечная Долина ПТИ ВЕРДО 	3,4	759,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/85/01/77b2013ca61566ba1972076572f8.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
102	Medija 	3,5	539,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/32/aa/6e38d49167703d318124310a18e9.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
103	Quintessence Шторм Мерло 	-	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/3e/9f/4cfdfe107b901b01013260b49f40.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сладкое
104	Castillo de Ayud Calatayud 	3,9	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c4/2c/f8d20babf832ed818fabee7e8845.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
105	Aristov Anima Ancellotta 	3,7	549,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a3/14/e83c83b7b8553dcbdfae7c9a861c.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
106	Ed Knows Мерло 	3,8	659,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/14/4f/fa5e0b94058529fd2b10cb6ea213.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
107	Carlos Serres Ономастика Резерва марочное 	3,8	1 899,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/1e/3d/1a26c43bf6d2b72ab12fce026be0.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
109	Takar Арени 	3,9	629,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/97/2e/a8210xd277ec134480da7c01c560.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
110	De Wetshof Danie de Wet Pinotage 	3,7	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e4/5c/bd01b928fd28282f56007bb8b24a.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
91	Ахоеби сортовое выдержанное 	3,7	1 349,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/38/76/ab5eec95ba252327fe9f395ef0ba.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
111	Chateau Pinot Гравитация Пино Нуар/Саперави 	3,7	699,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9a/b0/d5f13ccbf5926de5962ec2fbaafd.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
112	Poggio Passo Malvasia Nera 	3,7	729,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/53/c2/68af61615274037ab07ebcaa1a0c.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
113	Negrar Amarone della Valpolicella DOCG 	4,0	1 899,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/df/73/57bdf4fa3b135e76a87aee3dc3ce.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
114	Poggio Passo Primitivo 	3,6	759,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4e/0d/4a90d0ba13f0959c57116fdcf470.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
142	Alamos Malbec 	3,7	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/81/2a/91360f6fbfe7fea1055b9bb80f84.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
89	Le Grand Noir Cabernet Sauvignon 	4,1	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c1/ba/c1ee8f549d7cfefd35aedc8eca03.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
90	Саперави сортовое выдержанное 	3,6	1 149,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b0/e5/259d73b510293b46a02fb0fbfa45.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
108	Brumes De Gascogne 	3,8	779,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/65/f9/b67027e0e327ea2def45e30ae2ab.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
119	Negrar Valpolicella Ripasso Classico Superiore DOCG 	3,8	759,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ff/b3/15220bcf4a1095e7da443f30e310.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
120	Rabo de Gala 	3,8	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ee/db/d87ed13d73b56d4b13588dc25b7d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
121	TINI Rosso 	3,5	499,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/43/aa/613f55095a14bc06426c165734e8.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
122	Dominio de la Abadesa Roble 	3,7	1 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/74/54/308731b7dbe5xd3390730e127356.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
124	Claroscuro Tintas de Uco 	4,0	1 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/11/a9/2c897839a72cb05bcd22697648b3.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
125	Claroscuro Tintas de Uco Malbec 	3,5	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/de/49/7b257d437d1e4c869f7618440fb6.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
116	Maradi Саперави 	3,6	359,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/fa/78/98f162aac6ab0233b696e2e4ffa4.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
126	Pais El Autoctono Secano Interior DO 	3,7	629,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/50/bc/354c6xd84f621bcf44881681dd86.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
127	Напиток виноградосодержащий Don Simon Sangria красный сладкий 7%, 1л	4,3	499,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/27/34/5d4888a6a41d1e92c126657f6d82.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	-
128	35° South Cabernet Sauvignon 	3,3	539,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a4/0c/b6f8262c2f01e97b2c407a534295.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
79	Matsu El Recio Toro DO 	4,1	2 499,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b2/9f/8697a4f3b7b626da0fa2be2208c0.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
115	Lunatico Primitivo 	3,9	799,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c7/08/f807d2c9f6799103de8e0111efe5.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
131	Masseria Doppio Passo Copertino DOC Riserva 	4,1	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/74/a0/1xda73c630d8950e1b4027f08513.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
132	Simonsig Cabernet Sauvignon-Shiraz 	3,6	1 049,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/32/9a/13da0fdca508ed39ae9b542e691f.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
133	Doppio Passo Primitivo BIO 	3,9	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ff/9a/713fe5e528e10824283faf5d8e3d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
134	Signos Red Blend 	3,6	1 149,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ea/21/2xd91d3b41d206977212ef3209b3.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
135	Cranswick Lakefield Shiraz 	3,5	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9b/a5/092606718bfcxd21e8de6c174ff5.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
136	Heinz Eifel Spatburgunder 	3,6	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d2/ef/0328179de0b625c4bd99e137483f.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
137	Coleccion 125 Reserva 	3,9	4 590,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a9/85/3376b041b571083c6f630560361a.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
138	Vecchia Cantina Chianti DOCG Riserva 	3,7	1 599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/23/80/1f9bccb15c42953c48366d2b0ba9.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
139	Masserie Pizari Primitivo 	3,8	1 699,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/36/d2/c56c65d04637304162e8d0de8b6a.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
140	Gamla Cabernet Sauvignon 	3,9	2 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e3/6e/89362540b8dd21cfeaccc012730d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
141	Esse Cabernet 	3,8	799,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ab/e6/bd4c83c49c1678ef307b37f61441.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
129	Yalumba Organic Shiraz 	3,6	2 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/62/25/f4348cf0abfc553aa95bb191a34b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
130	Rutini Wines Trumpeter Malbec 	3,8	1 249,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0d/5f/6a14836de752xd7cc0bd13f1f890.png	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
123	Ikhalto Алазанская Долина 	4,1	389,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/aa/a4/ec4c06388f75580649bc4b3004cc.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусладкое
118	Lunatico Negroamaro 	3,9	799,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/54/6b/d4135f9c704caa0d5a218e59eaa2.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
148	Boyante Roble Ribera del Duero DO 	3,8	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0a/ca/4ff005c61f8xdba5c4cec44cff2a.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
149	Point Blauer Zweigelt 	3,8	1 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/be/a4/3048d2cdebdfb592b52d51cd4f2c.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
150	Alma Valley Red 	3,2	639,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/23/90/fc0e7714b6577c6a2aec553d2d36.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
151	Tenuta il Poggione Rosso di Montalcino DOC 	3,9	2 599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/66/aa/7e846cc47f0b56aa8857c278e9ee.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
152	Lucente Toscana IGT 	4,0	3 649,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ac/e0/5587ec765418a101b50f10d40d97.png	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
153	Pianirossi Sidus Montecucco DOC 	3,8	2 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7c/a4/76a4eab5d635c5af4c7d5d9a3764.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
154	Appassionatamente Rosso 	3,8	859,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0f/5b/2cbea626738063f1052a73c6901e.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
155	Вина Тамани Мерло 	-	279,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e5/9d/68ceeb1d9c9c20a9e26be3a1b20f.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусладкое
156	Долина Привидений Каберне Совиньон 	2,5	279,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d5/5e/71fddd13abd3d9a093aeb37f556a.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
157	Tenuta il Poggione Brunello di Montalcino DOCG 	4,2	3 999,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/61/f4/b50f8e8d409b31bd215da857c209.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
158	Stobi Verdot Private Reserve 	3,8	1 699,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/16/50/01c709f2d5647277c8933f41dd26.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
159	Silverado Cabernet Sauvignon Napa Valley AVA 	4,4	6 599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/22/9c/c20b4507ca2665109acd65d604d0.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
160	Инкерман Каберне Гранд Резерв 	4,0	829,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/11/e6/fded63788c52d3babf60b5b8a6f3.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
161	Ramon Bilbao Edicion Limitada 	4,0	2 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/2e/ce/e9deaecf7a364fa44ba4a28879c9.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
162	Simonsig Merindol Syrah 	4,2	3 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c1/ef/4d68b0bf1c0f44edac17f8cc3620.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
163	Vajra Langhe Rosso DOC 	3,8	2 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/85/77/f9c35b2452407d0875d18a65fbe3.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
164	Sela Rioja DOC 	3,9	2 499,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/43/3a/ee9cd42916644c081xd21501324c.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
166	Gentleman Oltrepo Pavese DOC 	3,5	1 549,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/55/db/72db29c0e7925686b1e4a3032285.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
167	Alta Vista Vive Malbec 	3,7	1 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/91/2c/5772a55be9470fc4c2fb1366f18a.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
168	Резерв Винодела Каберне Совиньон 	3,4	269,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e8/b3/5c0546e3b3a2d7910a936a8442ca.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
169	Резерв Винодела Мерло 	2,8	269,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ee/d2/d1f309b07a1f1bbcf340119a9145.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
170	Roda I Reserva Rioja DOC 	4,4	3 799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/93/3e/d472ec1b71ff531f531b824e9051.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
171	The Wine System Tinturio Navarra DO 	3,7	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0f/c0/a140536125c660191ae007c947c9.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
144	Mataca 	3,8	1 849,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/eb/fc/cbf33e94c021cabd8bed554fc07a.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
145	d`Arenberg The Footbolt Shiraz 	3,7	1 999,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c2/8f/f3d4460333dd5ce8dda5d4d9bb22.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
146	Klein Constantia КК Каберне Совиньон Мерло Стелленбош 	3,7	1 949,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ab/5b/2690c18b783b58d2a0af9bee3855.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
147	Boyante Tempranillo Organico Ribera del Duero DO 	3,8	639,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/6a/95/312299a4f2289a79812143d48fdc.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
178	Мысхако Quintessence Cabernet Sauvignon 	4,1	759,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/3f/9f/1a3daca2b81412fe63c748f7b777.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
179	Pirovano Collezione Primitivo Puglia 	4,0	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7c/fe/200e68ea84d56866d627f78206ce.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
180	Collezione Costantino Primitivo Di Manduria DOC 	3,9	679,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f1/87/b720681ca17b26c6ddf4d138b7fe.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
181	Collezione Costantino Organic Amorcor 	3,9	669,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4e/16/55df87a6bc12c81a038e317ff912.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
182	Chateau Tamagne Красностоп-Анчелотта 	3,3	349,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f9/91/7ab2e16b9e1eb3b9b09544802856.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
183	Chateau Pinot Pinot Noir 	3,6	879,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e0/98/9fccdf8fd73e3de9f65d0046170b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
184	Suggestion du Chef Merlot 	3,7	679,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4d/cb/22ed8b27a94f8482bc2c0b4b55af.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
185	Musita Rabah Nero d'Avola 	3,7	549,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5d/96/1770xd729e13455e0a3e880f01d7.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
186	Инкерман 	-	549,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/23/8b/dd359f1a8141e25582bc9cd9b40b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
187	Инкерман Пино Нуар 	-	699,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/2e/e9/42f243e7f50b3dfaae63861e49b1.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусладкое
188	Paladin Syrah 	3,9	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/70/42/08cd35d431fd3be1ee7e4ee15966.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусладкое
189	Paladin Salbonello 	3,7	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0c/b9/4c45d538079cf00bf28b0b72f5bd.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
190	Gaetano Montepulciano d'Abruzzo DOC 	3,3	589,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9c/79/6af6ffea5e16b5497ce5bc7151f5.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
191	Loggia del Sole Chianti DOCG 	3,1	1 249,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ed/0e/4138c5db1f488c2dfe52774328f2.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
192	Имение Сикоры Каберне Совиньон 	3,9	1 149,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f0/d3/cee47e3997e5e6dd9fcf0fdd2b8f.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
193	Инкерман Каберне Резерв 	4,0	559,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/72/cd/c8eba2496c295b8531fd89883161.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
194	Поместье Голубицкое Мерло ЗНМП Голубицкая стрелка 	3,9	1 049,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0a/e7/138265f23387e40a6e45345baed0.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
195	Paladin Drago Rosso столовое 	4,1	1 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b1/2a/1465c51460c0e66d996308afb03c.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
196	B.IO Sangiovese di Romagna DOC 	3,6	759,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9c/9b/ee68811ee996d8f39425bd24150a.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
197	Musita Amal Syrah 	3,8	549,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f4/97/8fdab3f01bf0b994ae5db585a475.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
198	Loggia del Sole Chianti Riserva DOCG 	3,2	859,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/8b/ee/eb2896e734f3fb917ef413658b32.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
199	Conti Sani Chianti Classico DOCG Primum 	3,7	1 049,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/17/de/e435c9bcac288990617fcb6d3b33.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
200	Chateau Pinot Гравитация Каберне Фран Каберне Совиньон 	3,7	699,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a5/70/c6164040717555da01c575404bcd.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
173	El Pacto Rioja DOC 14%, 750мл	3,9	2 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d2/17/bfa30469d1932643xd5156762525.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	-
174	Абрау-Дюрсо Каберне Совиньон 	3,5	1 649,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/3c/f1/ae3967667e21ba7ff50ab88c62a8.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
175	Appassimento Segreto Rosso Salento 	4,1	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9b/4d/c74c4e348ed870b73e821dc7b790.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
177	Винный напиток Вермут Martini Rosso 14,4%, 500мл	4,4	599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/72/2b/1b57f2b2651510a1fe6464ed5007.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	-
207	Kvareli 	4,1	779,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/32/64/b054767ba2b04baf7878993265a2.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
208	Sol Valley Cabernet Sauvignon 	3,3	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/94/84/454a15645e4d7e6b511f38b93e46.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусладкое
209	Fanagoria столовое 	3,5	149,90 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a6/ef/3149248d636ccc0cd60834d1d183.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусладкое
210	Solano Monastrell Jumilla DO 	3,5	349,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/11/99/1da0959338fe3da9be1e9d2dfb85.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
211	Фанагория Номерной Резерв Каберне 	-	459,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c3/52/022b1db7f1344c2fbfd6acbee5cb.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
212	B.IO Nero d'Avola Il Nero 	3,6	949,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5c/ec/21f4dba3ae72aa261a9acd4438ea.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
213	Planeta La Segreta Nero d'Avola 	3,5	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ae/e2/579e28646e4eca1a4e61b26d542d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
214	Badagoni Саперави 	3,6	299,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b4/5f/600e0c5114c72d120302903fb4fe.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
215	Vega Sindoa Tempranillo Navarra DO 	3,5	759,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/29/fa/3d2fe47ba6e78fe574acee1457e8.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
216	Claroscuro Malbec Mendoza 	3,9	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f6/4e/a42c6894c8a355d6ed658c83d15e.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
217	Джейран Чинар 	-	369,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/15/74/56e0f66a3ce0fbc956c874eb919f.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусладкое
218	Fontanafredda Briccotondo Barbera Piemonte DOC 	3,6	1 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/58/ae/efd41b8a28cce975903f0b4cd695.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
219	Ionos Red 	3,3	579,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4d/e5/c390afd28d40743f51c2e282ca71.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
220	Diaz Bayo 8 Meses Barrica Ribera del Duero DO 	3,8	1 599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/32/c4/fb1f57e1243cacc142xd236dc5xd.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
221	Wine in Tube Tempranillo 	-	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/db/43/e044984490a6eab3973c6a55cc8d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
222	Gran Passione Appassimento Rosso 	4,0	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/cf/7c/beba56331cd02db06cbf6933f005.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
223	Cacciata Chianti Classico DOCG Riserva 	3,6	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7a/9e/f5289d41ea8813bc220829716185.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
224	Tavernello Sangiovese Organico 	3,6	869,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/eb/30/8990489ce6f21ddcc4173a88be2e.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
225	Броjaница Вранац 	-	559,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e2/04/69033415ed682b87d8244a49c21c.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
226	Солнечная Долина Саперави 	4,2	619,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e3/37/d4bd880417xd6b6ecc309b57ce93.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
227	MV Malbec Reserve 	3,7	799,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/cd/63/42b0963016b8842467fe4c3cc3f4.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
228	Cultus Organic Tempranillo 	3,6	619,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/78/5b/bc8f377aef6ddcfdf44418bc0c72.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
229	Chateau Tamagne Reserve Premier Rouge 	3,7	779,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/32/20/8ed258cc94367e018e1105e089bf.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
230	Tavernello Syrah Organico 	3,9	869,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c1/01/e00ab4da0fa9b86bf6ed38960f5f.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
203	Villa Krim Shevalie Rouge 	3,5	449,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/6f/35/f99e166cd8e417128a9c1a84f9cb.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусладкое
204	Emilio Moro Ribera del Duero DO 	4,1	2 999,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/03/e8/c1b83e8c3f1ba3fcfb6d1a26ef3c.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
205	Атаман Гранд Резерв Цимлянский черный 	3,3	959,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/63/0c/7213d125900447005f2571f3e9b5.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
206	Ahso Саперави 	3,6	1 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/56/ae/b07d222bd55f50ea552a3dd21551.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
235	Броjaница Кадарка 	-	619,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/2a/03/a21033e100871977ef456a012b37.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусладкое
236	Tierra De Almas Rioja DOC 	3,5	499,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7e/f2/3bd7698f94300122d4ef0d45971f.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
237	Espiritu de Chile Cabernet Sauvignon 	3,8	699,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e6/cb/c1fa128ca44cfe8fa6d9c0d1d0ab.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусладкое
238	Ликурия Терруар 	3,6	699,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/64/53/c345c412c49655249bc92e2b0c6f.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
239	Masi Bonacosta Valpolicella Classico DOC 	3,5	1 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f8/00/fa63ea2064467593a13b6ba44609.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
240	Masi Modello Corvina Verona IGT 	3,6	779,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e6/53/c4246d46c84cexd4d28ea66f448e.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
241	Borsao Crianza Seleccion Campo de Borja DO 	3,9	779,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/00/09/a8df8fdceb2c8b304f4e896ea3e8.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
242	Pirovano Montepulciano D'Abruzzo DOC 	3,5	449,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/3d/d8/e66a0af0a2e9a178d994d16b14ee.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
244	Тайна Колхиды Хванчкара 	4,3	2 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/01/98/26c319c487d2456c213f2fa7e061.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусладкое
245	Тайна Колхиды Киндзмараули 	3,9	899,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b9/f4/b54e4f6e186b45cd03280164b24f.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусладкое
246	Wine Guide Бастардо 	3,1	319,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7e/3c/7f726a824c1a8f6daa074b1d37c8.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусладкое
247	Pearly Bay Dry Red 	3,3	439,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/13/7e/7ff7eabb6bbebf8fc12b466b9c9b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
248	Тайна Колхиды Мукузани 	3,7	799,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/27/95/fe065654f82958f93ef3f56937a1.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
249	Ca'Del Poggio Montepulciano d'Abruzzo DOC 	3,3	499,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d9/79/5a5b8b556xd78ed564affd6410c5.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
250	Ca'Del Poggio Terre Siciliane 	3,5	499,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/2a/82/afeda5d6f45da26d570477a24611.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
251	Racimo de Uva Tempranillo-Garnacha Carinena DO 	3,3	309,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c2/9a/223a19abff0572d5f822f1569df4.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
252	Telavi Wine Cellar Marani Mukuzani 	4,0	859,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/6c/df/7680c28ab40481af01557a6ccb7b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
253	Monte Llano de Ramon Bilbao Rioja 	3,7	979,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7b/46/c312e390a62522998a3904a616c8.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
254	Champs des Rois 	3,6	759,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c0/7d/deccfc56cb8b6xd0a8ee47967ce7.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
255	Vivanco Reserva Rioja DOC 	3,9	1 349,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/09/f5/7e4d1aa467615f094c2a06d0c466.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
256	Vespucci Chianti DOCG 	3,4	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/8b/3f/0d83b9c7551172d48f656929b6fe.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
257	Castellare Chianti Classico DOCG 	3,8	2 599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c2/a0/4280f661e92fa7bbe30e8edb1c1e.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
258	Chateau Haut Bon Fils Bordeaux AOC Rouge 	3,8	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/85/36/54f7eac755ba33dc9ca330b47a33.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
231	Rauli Syrah 	3,4	459,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/cf/dc/6698f1348144f1a1844c7bcbb450.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
232	Molom Tinto 	3,8	659,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a0/99/a301fe4d9f565ff60e90cacd1f50.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
233	Quinta das Amoras Tinto 	3,8	759,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/36/de/dba337f250b7f11680eb6b304792.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
234	Rauli Merlot 	3,4	499,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/cc/24/7f4fc2e085d7f542a18150cc79e9.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
264	Vranec Vilarov 	3,9	649,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/6a/ce/0270b49ffbac094aa8cdfffaf598.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
265	J.P. Chenet Каберне-Сира 	3,4	159,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c7/f4/7acf1e0608017e56d7cd7c7e0c95.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
267	ликерное Массандра Портвейн Красный Алушта 17%, 750мл	3,8	659,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/41/2d/94ffe3172773e2546a597f461d3a.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	-
262	Чегем 	-	569,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/3c/18/5bf87f6dff88c46df4c4b21dbe86.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
268	Sangre de Toro Tempranillo La Mancha DO 	3,7	799,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/94/c6/4603bf486ba995acf864f4dfa219.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
269	GRW Мукузани 	3,8	649,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/21/02/fac273a8dddddb9c625b01e3d1fd.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
270	Luna Valley Selection Carmenere 	3,7	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/cd/19/e3f3cefe8b65f8b3302838b65b44.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
271	Vivanco Crianza 	3,8	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b0/93/5509477fdc364a78xd5004b7d2a1.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
272	Leonardo Chianti Riserva DOCG 	3,7	1 149,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/58/c1/fe5934edbe3a796a387f613f949a.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
273	Leonardo Chianti DOCG 	3,5	829,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f1/6a/61928b0569be621159b05295fc77.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
274	La Gerla Brunello di Montalcino 	4,2	7 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7c/83/e07277fa79a29183d86edd67e84e.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
275	Pianirossi Solus Maremma Toscana 	3,9	2 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ea/0e/1fab962efc8d21125a35756cd68c.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
276	Pianirossi Maremma Toscana 	3,9	4 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/73/d2/9fa09xdfc00fc0edxd3a1d71f20e.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
277	Speri Sant'Urbano Valpolicella DOC Classico Superiore 	4,0	2 499,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/69/a7/86f7a06d8cdae36cf40f3b1a083b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
278	Muga Reserva Rioja DOC 	4,1	2 999,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/be/82/db0ac776b219b75db55cd978c4aa.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
279	Tamari Malbec 	3,4	959,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/75/77/0c589a25dec71015ffa399c04b4d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
280	Barkan Classic Shiraz 	3,6	1 149,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/af/a0/25cae0785769c15250b1bf92e0e6.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
281	Bouchard Aine&Fils Pommard AOC 	3,9	4 599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/50/e3/xd1a19793a8a3331e8192277435c.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
282	Speri Amarone della Valpolicella DOCG 	4,4	4 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/58/6d/6b4ab423c61b03d1a38d7cae250e.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
283	Salvalai Amarone della Valpolicella Classico DOCG 	4,1	4 899,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4d/c4/5bc98e57a21b7bbeb2866b9af5e4.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
284	La Casada Cabernet Sauvignon 	3,1	689,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/04/21/93998058f7df4c712dd0205b7db1.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
285	Chateau Haut Maginet Bordeaux AOC 	3,5	1 149,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a5/88/3ef762089b8db0f93164208f3e65.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
286	La Croix du Pin Cabernet Sauvignon 	3,2	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/21/0e/a8986c23f0ea03ea0171ec6dbe0d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
287	J.Bouchon Cabernet Sauvignon Reserva Maule Valley DO 	3,5	1 049,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d3/32/86f1dc901f410fb57c550a10b311.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
259	Monte Clavijo Tempranillo Rioja DOC 	3,4	699,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0d/93/399e03ef8805bca8ee33105314d9.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
261	Апсны 	-	559,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/bf/9d/4bb3a9875569e87039b1d8ee9c92.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусладкое
266	Arrivederci 	3,9	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e3/2e/ff476e58976700f280b2cd87ec6d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
263	Zonin Montepulciano d'Abruzzo DOC 	3,5	209,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4c/06/bacbac08f2a987a57ba657b34d60.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
290	S'arai Isola Dei Nuraghi 	4,1	3 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/75/d2/7afb2cd8225007ee7669e530174b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
291	Domaine La Suffrene Bandol AOC 	3,8	2 599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/1e/2f/66de9603d92f7baafa10d8b9943f.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
292	Primasole Primitivo 	3,9	1 049,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/88/a8/12a75a8c8f6d669a5f09468a1fbf.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
293	Riecine Chianti Classico DOCG 	4,0	2 699,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b4/39/70675eb7dd8c40159fb4af5aa08b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
294	Chevalier d'Anthelme 	3,6	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/09/38/74478d576df5b62a24e68e7c4927.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
295	Nipozzano Chianti Rufina Riserva DOCG 	3,8	2 599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/6d/5a/250f0c5251fc50fa69393c1f4f48.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
296	Melini Chianti Riserva DOCG 	3,7	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/06/b9/17498d780a9a5b7aafac001a94cd.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
297	Siglo Crianza Rioja DOC 	3,5	799,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/91/93/35c8d052c2c94f88b714e5743bca.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
298	Lindeman's Bin 50 Shiraz 	3,5	1 269,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ac/2b/45e0b6865a49c6109041c221da64.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
299	Conti Serristori Chianti DOCG 	3,4	1 029,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ac/9b/6f2efccfbfcf03d7190220178b44.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
300	Jardin de la Taur Grenache-Syrah 	3,9	829,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/16/a3/619714a31413103f6ab657e40875.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
301	Tini Montepulciano d'Abruzzo DOC 	3,6	499,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9e/28/d8729f6ff216821999f8458c2eb1.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
143	La Braccesca Vino Nobile di Montepulciano DOCG 	3,9	2 699,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0d/c0/cca2d5e512c2a92cface647e10a8.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
165	Rkatsiteli белое сухое 13.5%, 750мл	3,5	2 699,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4e/aa/41c19785b082ff0f035380e0880e.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
88	Finca El Encinal Roble Ribera del Duero DO 	3,8	979,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/77/3d/e990a64f45d6be3d79895194f52a.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
176	Вина Тавадзе Хванчкара 	3,9	1 699,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7e/51/a0b9ed413f3268f684ce9d28849a.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусладкое
4	Matsu El Picaro Toro DO 	3,9	1 149,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4b/c7/57e8468ba771d3a5512da80bd353.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
288	Tenuta Cantagallo Chianti Montalbano DOCG 	3,6	1 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/cc/85/6c3a4656a5798d63ef9923b4d458.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
201	Gai-Kodzor Terroir 	3,7	959,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/78/8c/bb9a4b50e592f63f0f36fcb10d83.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
202	Солнечная Долина Меганом 	-	759,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/89/61/e4ebd2af6f58fb618b415f5d7167.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
54	Chateau Tamagne Каберне 	3,4	469,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e5/c9/6a56ae53f5c2f5d2568ddf09c90f.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
302	Urban Riesling Mosel 	4,2	799,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a4/df/99d25d71cc04892ff67ee58c8979.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусухое
22	Продукция Mayrik Гранатовое алкогольная красная полусладкая 12%, 750мл	3,9	259,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/6f/84/028feefac4742d669897576eb652.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	-
66	Плодовый алкогольный напиток Дерево Жизни Ежевика красный полусладкий, 12%, 750мл	-	519,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/47/d3/d968fe939d8383b6497ba4de23d7.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	-
260	Argiolas Costera Cannonau di Sardegna DOC 	3,8	1 999,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/81/c6/bd1a18607aeae971c6ed7b6d2ec8.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
289	Sunrise Carmenere 	3,3	679,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f5/62/4725d4ae463bf9d2986cxd6872f6.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
172	Astrale 	4,1	1 549,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f2/61/xda1e076bc949e327992822277b0.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
304	Mau Maria Vinho Verde DOC 	3,7	399,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0d/aa/1a02cd8e1d8362fb47ded96256df.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусухое
305	Pirovano Garda Garganega Pinot Grigio DOC 	3,6	359,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/02/b2/9c73a6a0c49f7e959c228e84302e.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
306	Elegido Airen-Verdejo 	3,7	389,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/68/b9/c9502b968c93bb962f3be28a89a0.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
307	Lago Vinho Verde DOC 	4,2	619,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ef/ca/3ea8c9ee4b7abc88a8b6d5b6c10c.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусухое
308	Destination Blanc Bordeaux AOC 	3,9	759,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/15/64/a1338028f8e8eeb110c9d96e25f5.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
309	Peter Mertes Liebfraumilch 	3,8	449,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9e/2e/49744fb2ca877eb3c03fd1b217ed.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусладкое
310	I Martz Riesling & Gewürztraminer 	-	549,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9a/16/d2ee9b49xded5d02e19ea97b94c7.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
311	Herrenstein Grüner Veltliner 	4,1	719,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/90/6b/7fa91bf319b3305b6919870973b6.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусухое
312	Taka Sauvignon Blanc 	4,5	1 499,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a3/c2/10db3e5bca3e2c137f10faed20df.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
313	Tour De Mandelotte Bordeaux AOC Blanc 	4,2	1 149,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/26/f8/03627cb3f52bf945e4884aeca429.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
315	Pirovano Collezione Pinot Grigio Delle Venezie DOC 	3,8	459,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/cb/c9/0784deac167xdf733b4e70ee5fc6.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
316	Turtle Dreaming Semillon-Sauvignon Blanc 	3,9	879,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/bb/06/5b7131f818f3ecf0f868f790dc13.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
317	San Valentin Catalunya DO 	3,9	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f9/26/2089150cd322bec7357fb6a28105.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусухое
318	Alma Valley White 	3,3	639,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/bf/b6/6369d5afd71e97ea554f75eff5f4.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
319	Banfi Principessa Gavia Gavi DOCG 	3,9	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7f/36/1c90432f91389a8f84e6e7bxd0d9.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
321	Cuvee Blanc Terrier Blanc 	3,7	659,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/eb/42/d9c3f47c9d0272805aa35549d1ab.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
322	Le Grand Noir Chardonnay 	4,0	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c1/57/321367dd6f73a76432f48e29c37d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
323	Murviedro Пасьон Мальвазия 	4,0	549,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/17/b5/f491d51836xd2a3e789f56a19749.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
324	Резерв Винодела Шардоне 	3,4	269,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e6/e4/7a7f9c418942798b40f4b04ac981.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
325	Chateau Tamagne Терруарное Шардоне 	3,7	699,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/bd/28/7d39e14320623595abfbdfe5e605.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
326	Liebe Meine Frau 	3,1	289,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/84/90/b239a3101f972af2b4326bd85f48.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусладкое
327	Olivier Tricon Petit Chablis AOC 	3,9	2 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9e/ac/4a28d4xdce845165c43064c7a628.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
328	Armenia Wine Такар Кангун 	3,9	549,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/19/f0/c07b1b51db887a0370734bc31cfc.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
329	Negrar Garganega 	3,7	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/74/39/0c036a9xd44xdd8a8b68dbbb0866.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусухое
330	Original German Riesling 	3,7	759,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c6/b9/c1a1495561a5124bba76c21c974f.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусухое
331	Долина Привидений Шардоне 	3,1	279,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/bb/c2/41a6a3fac92b6979c9c48831b0da.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
332	Sol Valley Sauvignon Blanc 	3,3	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/14/9e/596b5bbfc9d83d775c68b47a5a08.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусладкое
314	ZB Wine Riesling 	4,1	519,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/2a/b7/0d280103f392811a05ae604e4b66.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусухое
335	Aristov Anima Мюллер Тургау 	3,7	549,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/2c/bb/9467d7d7635ee4861fa838bf1157.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
336	Tre Stelle Bianco 	3,7	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/3f/7d/aac710a5c8f45368d1342cbed498.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусухое
337	Sympathy for the Devil 	3,7	619,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/1c/dc/52d7647708074a24e284a986fb09.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
339	Инкерман Мускатное 	3,6	299,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/db/91/5ccd7e4f7713943d7d0bfb625af4.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусладкое
340	Inspirado Sauvignon Blanc 	3,4	499,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/6e/a8/1ea4812a6f6309cc9430b330e81b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
341	Chateau Tamagne Верт 	3,3	469,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5c/11/d23ae375cb155e01ee039960dde9.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
342	Masi Modello Pinot Grigio delle Venezie DOC 	-	1 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/1c/0d/bfba48a470f4b2031335b7cf6d20.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусухое
343	Rauli Chardonnay 	3,5	499,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4d/56/12c21f0336194a90dd8584c8639e.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
344	ликерное Массандра Мадера Крымская 	3,7	799,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/51/2e/89dc7f2d1b6c1203bd9ce209d9ba.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	-
345	ликерное Массандра Портвейн Белый Алушта 17%, 750мл	-	499,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/21/72/efbbdb219b96df5524f75928cc21.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	-
346	Barkan Classic Emerald Riesling 	3,5	1 199,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/74/05/38acda33d7ea221637e897323312.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусухое
347	Bouchard Aine&Fils Puligny-Montrachet AOC 	4,2	5 899,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/86/92/9268a19e87c0d2a7093dc89a5cb5.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
348	Colterenzio Pfefferer 	4,3	1 599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/38/dd/f453f8e87c4752fa370f25725876.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусухое
349	Cielo Sante Rive Soave DOC 	3,8	699,90 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/26/d8/183b855533fc0b394bef8a7cdae9.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
350	Cielo Pinot Grigio 	3,7	799,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a2/57/7434854f69152a57ec9ee4293fce.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусухое
351	ZB Wine Совиньон Блан 	3,8	699,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/16/e2/247a08135874cdf0ef37aff38159.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
352	Ikhalto Цинандали 	-	379,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b6/d4/d7ee0ddfeda8de10c5f6721cf9e0.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
353	Rabl Riesling Langelois 	4,0	1 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/69/83/e5d4b2c55d4a5631d7edc63c5d7b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
354	Alamos Chardonnay 	3,6	1 349,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5c/cc/64b66d20089476b14cb0ca077f86.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
355	Masi Tupungato Passo Blanco 	3,5	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a5/33/2c11c889a8d00df019306ebb9b76.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
356	Amaranta Chardonnay-Viognier 	3,7	499,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ae/36/4a0602db1c24d4c243f4xd0d5505.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
357	Paladin Pralis 	4,0	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a4/91/dda7e58946b54a2c076402eca615.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусладкое
358	Musita Organic Cataratto 	-	589,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/08/c9/010c97f0cxdaa2f953e70ffc8dce.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
359	Ca'Del Poggio Pinot Grigio delle Venezie DOC 	3,7	419,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/1c/9d/9f81f241a699bd0b53f7b75a2bd0.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
360	19 Crimes Chardonnay 	3,7	1 749,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e6/df/fe9d38a4b84b97fed1f8f6e2ea0c.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусухое
361	Lamberti Pinot Grigio Delle Venezie DOC 	3,5	819,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e1/8a/aedbc43a94f0347513e07fa4f0bd.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусухое
362	Vina Esmeralda Catalunya DO 	4,0	1 149,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f7/91/63b5614d5ae267e25098c8b494f8.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусухое
334	Baluarte Muscat Navarra DO 	4,2	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/8c/71/cf50e3f61a2aca26bf34112bba6f.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусухое
365	La Quinta Elementa сортовое 	4,0	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b0/f1/3dcca5da29f5944d4681789077d4.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
367	Крымское Лето Сапсёрфинг 	-	369,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/3f/64/419c8c3864e5ddd5114513ae3775.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
368	Chateau De Talu Море волнуется раз 	3,4	429,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9d/fb/85550e9f8a9b744b072c105e4388.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
369	Yali Уайлд Свон Совиньон Блан 	3,7	739,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/60/1a/8b5e262a9993a39fc2564d40dd40.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
370	Алазанская Долина ординарное 	-	429,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/6b/63/1eb4abdf83740b0b3f9de04ee381.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусладкое
371	Ed Knows Мускат 	3,8	659,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/09/15/4a6e10d2dd9b0082b5ef88854bef.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусладкое
372	Ed Knows Шардоне 	3,8	449,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/bd/ce/f2c16d5df1bdb88d624b743bf582.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
373	Original German Pinot Blanc 	3,8	649,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ce/0a/96d8482dc8b28c293208bfd2aef3.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусухое
374	Villa Krim Шардоне 	3,1	449,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/87/b4/3f722521b97a3c3519e481c24aed.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
375	Monte Real Blanco Fermentado en Barrica Rioja DOC 12.5%, 750мл	3,6	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/16/4e/9020axd9ebc76f8a7db2aa9b05bb.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	-
376	Rabo de Gala Branco 	4,1	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/be/6f/a09870b185d145ce13ae90d0e4b2.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусухое
377	Fetzer Chardonnay Sundial 	3,6	1 349,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4b/a0/9ef7f7811d7045bb49875babca4f.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
378	Rabl Gruner Veltliner Langelois 	3,9	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/33/36/868e429f2e4188e70fa62d8a40cf.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
379	Karas Armavir Vineyards 	3,7	1 049,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/21/6f/e62512c34b8ef6163b12ce5f196b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
380	19 Crimes Sauvignon Block 	3,7	1 599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a6/d5/0d0887b7876773f819dc565b0e2b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
381	Beringer Founder's Estate Chardonnay 	3,6	1 799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f9/5b/6e810c1b925f1fb172356c75d577.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
382	Matteo Braidot Pinot Grigio Friuli Isonzo DOC 	3,7	1 259,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/3b/9d/dc41a34b5353b8ee03433d87a055.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
383	Gamla Sauvignon Blanc 	3,7	1 799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/17/ce/2bb3481e0297d6aba7f8b04eb9a3.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
384	Little Beauty Dry Riesling Marlborough 	3,9	2 799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b3/81/2dcefef987a33e10108a8d859e8c.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
385	Selbach Trutta Fario Riesling Kabinett 	4,0	1 849,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/04/ec/f3f224695a3703ab33cffd591b75.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусладкое
386	Selbach Riesling Incline 	3,8	1 849,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b2/34/a6f9c8c13582b401f2febc27aa7f.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
387	Ailala Treixadura Ribeiro DO 	4,1	2 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/83/9e/bf17dc5f6cd1c26107ddfaaa65d5.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
388	Bex Riesling 	3,9	799,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/47/b9/1246b5b0a5b70ef4b6f92647ce0a.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусухое
389	Livio Felluga Sharis delle Venezie 	3,8	2 899,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ab/bd/f92623f386956b092f6a29fef938.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
390	Cristo di Campobello C’D’C’ Bianco 	3,8	1 899,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c1/ca/410a47c3d7e69131b4c61a5dc09a.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
391	Tchotiashvili Ркацители Рчеули Квеври 	4,1	3 699,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a6/5c/08e4f9f1b610e956c1142f4932b4.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
392	Alta Vista Vive Torrontes 	3,7	1 349,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/63/62/82ac20aa1974d2b2282a98caa282.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
364	Freschello Bianco 	3,2	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ee/f1/de80bc83c9e5bc3b704d24d7b6d8.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусухое
396	Инкерман Кокур Белый 	-	489,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ee/6a/5dfe316b107cea9c1d5a7597917b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
397	Gaetano Pinot Grigio delle Venezie DOC 	3,3	699,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/77/a6/6a3520079cc3d9a859ef556393ea.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусухое
398	Passopasso Passito 	-	1 999,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d7/92/0de3b4e48971c67e2564706c2298.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сладкое
399	Musita Karima Grillo 	3,8	699,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/19/b5/1e04714e73de035d6a5c6bc1f56b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
400	Cа' Del Poggio Trebbiano-Pinot Bianco 	3,8	499,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c6/9d/eac08ed8dace5b7129fc2f4a0cc2.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
401	B.IO Cataratto Chardonnay 	3,8	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a2/97/50cbea3a67xd3055e813e28dddd5.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
403	Bruni Гарганега Пино Гриджио дель Венеция 	3,5	339,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/db/95/5a3fac71f417f5aa8xd1c8e33c16.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
404	KWV Classic Collection Sauvignon Blanc 	3,5	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/04/f7/df71c7bec3cd313090a9021a1d39.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
405	Фанагория Номерной Резерв Шардоне 	-	409,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f2/c6/cc715e2ee5525730cd2ba47c7c7e.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
406	Джейран Садыллы 	3,2	339,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/1b/64/5b0aa46d1acfd90b742f6ddc4301.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
407	Тифлисский Дворик Алазанская Долина 	3,5	339,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5f/e3/d4ef28e8fe1xd2c9e2d6a968924f.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусладкое
408	Gatto Matto Pinot Grigio Delle Venezie DOC 	3,7	689,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/6d/c9/9beec8825462fc1b45b144b69716.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
409	Solano Verdejo 	3,7	349,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0e/f9/9712012f7def8517f9eeb0e337db.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
410	Vinogor Мускат 	2,5	199,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e7/fd/d92c2210d4bf156ef0f216d0164f.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусладкое
411	Molom Blanco 	3,9	659,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/39/9a/7465ddee12dedcab0f040ca498b9.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
412	Chateau Tamagne Шардоне 	3,7	144,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/49/31/ebfc532cd6c21d2b02997ae5e803.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
413	Faustino VII Viura Rioja DOC 	3,5	729,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/48/66/665600e855b06f3def5674f15c58.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
414	Castillo de Chiva Blanco Semidulce 	3,9	459,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/58/b2/b25fe72e06538d5c02d5e49e6d17.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусладкое
415	Aves del Sur Sauvignon Blanc 	3,4	879,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ef/05/8b2d36184a631dfc13bd92686469.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
416	Lirico Мерсегера-Sauvignon Blanc Valencia 	3,4	229,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7c/0b/5cd1875222cf9bd5bdbce0551d2e.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
417	Luna Valley 	3,4	369,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b4/2e/50826xd296bf4b8ee0ef6845a30a.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
418	Five Heirs Chardonnay 	2,6	299,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/dd/14/f631b00642191a36685a4xd4c3d5.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
419	Les Chartrons Bordeaux AOC 	3,6	939,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5c/42/144xd7530bce1980cf75aea0a573.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
420	Henri Bourgeois Пуйи-Фюме Ан Травертен 	3,8	2 999,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c5/1a/9e7bf8fa5b3d09c055d183b055e7.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
421	Псоу 	-	559,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/83/4c/1775379b945b8983b0d2375f0976.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусладкое
87	Don Simon 	3,0	519,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/89/bb/4ac504aa22755d8d689b2bfc530e.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
395	Blanc de Talu 	3,5	519,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/xd/27/0193e88df9ed4f9c7149ef6bdf8b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
426	Monfort Village Semillon 	-	659,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/89/fc/ef7b949dbeba693c2eb89773363e.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусухое
427	J.Bouchon Sauvignon Blanc Maule Valley DO 	3,5	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ef/b1/3a366b18e8deb218ba6d2a59813d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
428	Olivier Tricon Chablis Premier Cru Montmains AOC 	4,0	3 599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/df/b7/e96b331d306b057b54725e89cffd.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
429	Olivier Tricon Chablis AOC 	3,9	2 699,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/fd/ef/301ed252767ee24140ff0973ec57.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
430	Jardin de la Taur Marsanne-Sauvignon Blanc 	3,9	839,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7d/28/af9439d338f7e57e54bdbed5ea77.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
431	Cielo Trebbiano - Pinot Grigio 	4,1	549,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e9/24/d008551929ee06bed12c8abf1d9a.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусухое
434	Напиток виноградосодержащий Фрезита 8%, 750мл	-	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/32/69/620ac48393120dab8aca22179aa0.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Розовое	-
433	Canti Chardonnay 	3,5	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c5/34/cb81db0ac9c1b31f25039b8843ea.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусухое
95	Зинфандель Резерв Лоди Калифорния Футстепс сортовое выдержанное 	-	1 244,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/dc/c8/1b31921fb735dc2e89e6730687d5.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
117	Tre Stelle Aglianico del Vulture DOC полусухое 13.5%, 750мл	3,7	699,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9d/60/5ea6d53572c55f86dd56f9625a92.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	полусухое
243	Фанагория Авторское вино Каберне-Мерло 	3,4	529,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4e/c6/b661899e25574c0b9f954e10ef41.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Красное	сухое
303	Peter Mertes Riesling 	4,1	449,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5b/b5/c1cb5d979b353ae338f98a8386cf.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусухое
320	BDX Revolution Sauvignon Blanc Bordeaux AOC 	3,8	739,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e1/bf/80f9c9772d28dd5ccd3de3482828.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
333	Villa Antinori Bianco 	3,8	1 149,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/64/2e/998817729cd3029bbe0167fbd98c.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
338	России Chateau Tamagne Ркацители-Мюллер-Тургау-Шардоне 	3,5	339,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/23/01/a26b93507e02417379ddfce4ae71.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
363	Cielo Chardonnay 	3,6	749,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a9/bf/61590750ed6dd05f8b77d39117a3.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусухое
366	Верментино Пулья IGT 	3,0	1 099,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/03/2a/edeb3fc9587b81a51efc03585945.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусухое
393	Bründy Grüner Veltliner 	3,9	699,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d7/58/6e904659dd43e2399663164fc5c5.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
394	Абрау-Дюрсо Рислинг 	3,2	1 899,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/85/f5/fd428d4055dab04a0d4db7e911e2.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
422	Фанагория Авторское вино Шардоне-Алиготе 	3,5	499,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f9/98/a6caf88e260c22309fbe949daf55.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
424	Italo Cescon Pinot Grigio Friuli Grave DOC 	4,2	1 599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/00/3b/3ed98006cbb3e2xd65cb8f88bded.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
425	Pascal Jolivet Sancerre AOC Blanc 	4,0	3 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/94/51/2b7a962354bf5fc32b81678a254d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
437	ESSE Розе 	3,6	649,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/bf/4c/xdc28793321d1eb55a5e86042eaa.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Розовое	сухое
435	Le Grand Noir Розе 	4,0	659,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/2e/3a/5a26a189b4fff698c2f3b916e61a.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Розовое	сухое
436	Pirovano Collezione Pinot Grigio delle Venezie DOC Rose 	3,8	449,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/44/8b/4340f417d011c12bab8b47282e98.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Розовое	сухое
432	Bruni Grecanico Pinot Grigio 	3,5	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/13/22/8e87e79a694e88fc384258a68605.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусухое
438	Cielo Pinot Grigio Blush 	3,9	799,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/bc/49/09d0b8a02b3e8e2725bd373fb942.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Розовое	полусухое
402	ликерное Солнечная Долина Портвейн Крымский Солнечной Долины 	4,1	799,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/50/18/3e938b71bd7cfc2a979c3074cc70.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	полусладкое
423	Sangre de Toro Verdejo Rueda DO 	3,7	1 229,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/18/02/d047856fbb9e9ca24132c6a2efd6.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Белое	сухое
439	Mau Maria Vinho Verde DOC Rose 	4,0	399,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/15/49/17e97e5aefe00e704e6410010024.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Розовое	полусухое
440	Mucho Mas Rosato 	3,9	759,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/19/8a/57baca76c512079c2c1157xda981.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Розовое	полусухое
441	Destination Rose Bordeaux AOC красное сухое 11.5%, 750мл	3,6	499,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7a/58/6011dea611c2824ac8d224c343b0.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Розовое	сухое
442	Cuvee Blanc Terrier Rose 	3,9	429,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7e/bf/5e57e6eb77f523f6f399671f354a.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Розовое	сухое
443	Цвайгельт Красностоп Каберне Шато Тамань 	3,6	349,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9d/c6/d90fc49c4403fe0a6b6e11ab3a0f.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Розовое	сухое
444	Паддл Крик Рислинг Розе Мальборо молодое 	3,6	1 049,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c5/f8/63c50679049839ffde2dd45b2ab0.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Розовое	полусухое
445	Hampton Water 	4,0	929,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/71/f4/fc711cce7e103967cec930ec9206.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Розовое	сухое
446	Rabo de Gala Rosato 	3,9	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5f/c1/88a543961f9f27ac57a0b83b20e8.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Розовое	полусухое
447	ликёрное Массандра Мускатель Розовый 	-	579,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/20/12/d6ff5edea116285ce780c2eb04da.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Розовое	сладкое
448	Gerard Bertrand Cote des Roses 	3,9	1 799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d0/e7/5688bc94428c3435d37eb6929cb7.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Розовое	сухое
449	Пфефферер Пинк молодое 	-	1 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d6/24/fe37f57eba81246cfc2ca11b7a16.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Розовое	сухое
450	Спелая роза сухое 	-	839,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0b/32/e7c7593d5bb0fa8346a72a55a432.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Розовое	сухое
451	Алазанская долина ординарное 	3,8	419,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f3/44/557fe38a4840208d49610b011e9f.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Розовое	полусладкое
452	Rabl Цвайгельт Розе сортовое ординарное 	3,6	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d7/03/508c8b6316f0c24d0e2bb86cd073.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Розовое	сухое
453	Гумиста Ашта Розе 	3,5	499,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a4/26/7590bcac3xd2809419760679f5da.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Розовое	сухое
454	Aristov Anima Цвайгельт 	3,6	549,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/76/e9/30ba4c2d65709e4b6dc1cd09f39f.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Розовое	сухое
455	Мысхако Кюве Мерло Зинфандель 	3,7	499,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/3b/34/210de46dbc744612f27cc67c0d62.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Розовое	сухое
456	Whalebone Bay Sauvignon Blanc Blush Marlborough 	4,2	1 549,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ba/d9/8fe348f092614edb4fa3e850edb0.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Розовое	полусухое
457	Мысхако Quintessence Sauvignon Blanc 	3,7	699,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/88/bb/b9db75a33dbxd63ee5a1a6362d7d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Розовое	сухое
458	Bosco del Merlo Pinot Grigio 	3,8	1 049,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/94/19/03b238d27753edcc27a1f57efc05.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Розовое	сухое
459	Chateau Pinot Гравитация Пино Нуар/Пино Гри 	3,5	699,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d7/48/c8d813643f85fa180e361f6c1781.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Розовое	сухое
460	B.IO Nero d'Avola Organic Rosato 	3,8	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/82/30/8ac406c48ddc61184afb1bbe4f7e.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Розовое	сухое
463	игристое Мысхако Flute Gewurztraminer 	3,9	549,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e6/48/b76a6c8773ed497b6aa452b74db2.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
461	игристое Casa Coller Rose Spumante Brut Rose 	3,6	449,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0f/7e/72fac5b47735f4d25796e63ce111.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
479	игристое Di Caspico 	-	399,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/47/5a/dd86e1dca50212c713f15fab1425.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
467	игристое Vogue 	3,2	629,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7f/e5/2980ee6ae0093dc3ebfaca6a32c3.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
490	игристое Takar 	3,9	699,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/46/d8/f755de55bfbc94b40c19aff5xd20.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
464	игристое Gancia Prosecco Brut 	3,6	299,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d2/14/1f7695b7xde32594631819473b58.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
468	игристое Мысхако Flute 	3,6	549,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ce/61/1c4d21c531a0cd21813a54bfd011.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
484	игристое Максимилиан Просекко Розе 	3,4	1 049,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4a/e7/8ba5e3e0d31fa1bb5253659740ae.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	-
488	игристое Рояль Розе 	3,3	9 999,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c9/ea/37bd3a7d76bdc5281b2e6ef4a230.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
465	игристое Эндемы Рислинг 	3,8	499,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/74/65/fxd5b21513577994cd5e8662c59c.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
480	игристое Cava Jaume Serra 	3,5	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/50/0d/b7e9c38a40200fef541xdf6078c5.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
466	игристое Casa Coller Spumante Brut 	3,4	579,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/6e/1c/240xd1281410f6f4a9ed96ea023b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
469	игристое Aristov 	3,4	419,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/45/e6/22e4c76132cb3753xdb8eb0b857a.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
470	игристое Brut Dargent Chardonnay 	3,6	769,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f2/a7/4f4b1fa1a9659b98ccf8dfd26319.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
471	игристое Мысхако Квинтэссенция Совиньон Блан 	-	739,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4b/7a/3133ca90d8f16cf6e7dbda8e8591.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
472	игристое Louis Vallon Cremant de Bordeaux AOC 	3,9	1 249,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e5/54/287529d9xd20399a4e13d6d856a8.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
475	игристое Fanagoria Блан де Нуар Белое из чёрного 	3,7	859,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0f/d3/4a5431b235083a5528ace8becee4.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
476	игристое №1 	3,7	819,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/dd/67/f35340991ff277c8643289df46c5.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
477	игристое Casa Coller 	3,7	639,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/54/66/96f72dd4f478b713eb904c2f7f4b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
478	игристое Vina Esmeralda Catalunya DO 	3,8	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5c/a4/c644791b18c961bc35bcfb2c02e6.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
474	игристое Freschello Frizzante Rosato 	3,6	759,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/08/0a/3a09778aa40d879e31fcbd5770c8.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
482	игристое Vallformosa Classic Cava DO 	3,7	569,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/10/04/6f8a0c6f20a2c8a388d19750ef46.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
483	игристое Антанс Шампань АР Ленобль выдержанное 	3,8	7 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/30/0d/fff5f1db1367bfc4de9e8eeb3ec6.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
485	игристое Solvino 	3,4	349,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/1d/32/f8c625d56d893260707f42fe6e11.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
486	игристо Fanagoria Blanc de Blancs 	3,7	859,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/31/4f/884594159f81f6e34ff9750babd5.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
487	игристое Issi Просекко 	-	1 549,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ee/63/68xd361531ddxde920bbcd80d45d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
489	игристое Pommery Brut Royal 	3,9	13 999,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d3/67/41a595646db549d72ac8787f215d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
473	Chateau Tamagne Флерс Де Суд игристое 	3,3	349,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e8/66/b132101de88592a47466823afbb2.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
492	игристое Gancia Просекко 	4,0	1 149,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9e/79/68f50bb5622cd935b444bfa164a4.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
496	игристое Prosecco Ombre 	4,2	959,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d1/81/2ea74c45ec89ef6aba8d51b48db5.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
510	игристое Martini Asti DOCG 7.5%, 750мл	3,8	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/24/45/d8acb83f95374242bfef680e2c31.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	-
511	Плодовый алкогольный напиток Bosca Anna Federica Limited газированный белый сладкий 7.5% 750мл	3,4	549,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/43/12/1fab676791544e5f8fcce3d265a3.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	-
512	Напиток Martini Fiero сладкий 14.9%, 1л	4,3	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/75/3b/e809ea98d6f6e7e449a8f5650218.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	-
513	Напиток Вермут Martini Bianco 13%, 1л	3,8	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7f/d3/53e8cf359c2e7b4641b910651ef9.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	-
515	Напиток слабоалкогольный Santo Stefano Aperini Spritz особый газированный 8%, 750мл	3,1	249,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ef/c9/0531472b3d961c43479b8e95515e.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	-
516	Винный напиток Martini Semi Dolce газированный сладкий белый 8.5%, 250мл	-	299,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5d/34/af0a9c4ca651841254c77d0c76cc.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	-
517	игристое Martini Asti DOCG 12%, 187мл	3,4	439,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/cf/24/3ed68f7e116dcc1e1a53394d27b0.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	-
504	игристое Золотая Балка 	-	399,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5b/dc/d7ac26a3f45753767ce2d0fb72b8.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
493	игристое ZB Wine Спуманте брют 	3,4	479,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5a/c4/58e5572c7a12cc93b7dc591b6298.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
495	игристое Aristov Анима Брют 12%, 750мл	3,6	499,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/76/23/d16b2b97ff46447e03df01050052.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	-
494	игристое Ombre Просекко Док 	4,2	959,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b8/43/4071c55c093fa37e0376407d2ab4.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	-
497	игристое Мысхако Квинтэссенция Белое из чёрного 	3,7	589,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f3/47/da3d60b453ffae2bae5d5b033394.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
498	игристое Astrale Prosecco DOC 	4,2	1 599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/fb/88/2b73becdd6xdff766c9487b814c6.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
500	игристое Tête de Cheval Blanc de Blancs 	4,0	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e2/41/70xd042573d7f242dd6329f906f9.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
502	игристое Riondo Collezione Frizzante Brut Garda DOC 	3,7	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/3c/27/3dafffc02f3f70eb018f3792185b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
503	игристое Martini Брют 	3,4	1 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/66/51/bb72e41710xdd672310607e00acc.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
505	игристое Nuviana Cava DO 	3,7	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/46/d9/c822c8b8f8af35248675d9157347.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
506	игристое La Gioiosa Prosecco DOC Treviso 	3,7	1 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/02/ae/6144383cb70038f9b12c9e5a6368.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
507	игристое Советское Шампанское 	2,4	239,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/fc/81/a3ce2fbc58a413a26157e21ef2c6.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
508	игристое Martini Brut 	3,4	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/50/e0/3ff5374cbbfe900d609ae04e1ca1.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	-
509	игристое Gancia Asti DOCG 	3,8	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5d/7c/2f4ec0154afc9ca3e20d62209386.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	сладкое
514	игристое Tosti Asti DOCG 	3,8	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/25/fd/2e613ed6ae634d1a348aa4df330b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	сладкое
518	игристое Canti Asti DOCG 	4,0	1 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/6e/xd/62eebd4c3a94f81f96ec1eb74223.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	сладкое
501	игристое Ahso 	3,3	849,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4c/ef/46d16184ce264d74f93868cd1e90.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
523	игристое Riunite Lambrusco Rosato 	3,8	429,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/82/14/f8ab25a3f10627d1641f2b2d9b68.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	полусладкое
524	Плодовый алкогольный напиток Santo Stefano газированный белый полусладкий 8%, 750мл	3,5	259,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/81/99/251824bcb2fce2bcd030591b61c2.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	-
525	игристое ZB Wine Moscato 	3,7	459,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/64/3a/5613299d7a17f1a14d466b893fa5.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	полусладкое
526	Плодовый алкогольный напиток Pom-X газированный красный полусладкий 8%, 750мл	-	429,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0d/05/afabed1633d024e49652217352cf.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	-
527	Плодовый алкогольный напиток Bosca Anna Federica Limited газированный белый полусладкий 7.5% 750мл	3,4	549,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a4/78/2d0aa57d149a4248ceb718df7893.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	-
528	игристое Riunite Lambrusco Rosso красное полусладкое 8%, 750мл	-	739,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e7/00/aeb255de7fde8e1180dcf846ed93.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	полусладкое
529	Плодовый алкогольный напиток Santo Stefano Римские Каникулы газированный белый полусладкий 8%, 750мл	3,3	289,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/63/98/97b02ee847e4c730a3xd6328e01d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	-
530	Плодовый алкогольный напиток Allegro Crema di Vanilla газированный белый полусладкий 7%, 750мл	2,9	259,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/89/e5/c3590e27b6f6605xd960dacbe15f.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	-
531	Плодовый алкогольный напиток Santo Stefano Сицилийская Свадьба газированный белый полусладкий 8%, 750мл	3,5	259,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ee/34/7f9e9b5a0e9090506d7e51b82695.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	-
532	Напиток слабоалкогольный Санто Стефано Сиицилийская Свадьба газированный красный полусладкий 8%, 250мл	-	119,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5c/9c/a1b3488337f834ae8e9051c06956.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	-
533	Напиток слабоалкогольный Санто Стефано газированный белый полусладкий 8%, 250мл	-	119,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/db/23/fb35c8f70bd86d3fb454f66fa73f.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	-
534	Игристое вино Пом-Икс ежевичное 8%, 750мл	3,8	499,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b9/f5/b0558bcdbe6239e18b4511659d5e.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	-
536	игристое Lambrusco dell'Emilia красное полусладкое 8%, 750мл	3,1	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/dc/79/32dbab4fd015e771d32d81e2ecfb.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	полусладкое
537	Плодовый алкогольный напиток Allegro Rose газированный розовый полусладкий 7%, 750мл	3,3	229,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7d/e5/74d8f1b8191daf813befa199113b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	-
538	Плодовый алкогольный напиток Allegro Nero газированный красный полусладкий 7%, 750мл	-	259,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/fe/96/946f270677ea5ca7b43cef499xd1.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	-
522	игристое Riunite D'Oro 	4,4	429,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/66/b7/022491f8b59b4ac8b6d9f1740d79.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	полусладкое
520	игристое Гаэтано Ламбруско дель' Эмилия жемчужное красное полусладкое, 750мл	-	499,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/26/12/c6597ca6861ecc71f7bbdc36071b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	полусладкое
462	игристое Chateau Tamagne 	3,3	349,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d2/42/b8381e4ab7989d66a519fc6534a9.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
491	игристое Наследие Мастера Левъ Голицынъ Коронационное 	3,1	639,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a8/c1/67f6bb1aee04fa31c50c7f556063.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
535	игристое Di Caspico Фиори ди Маре жемчужное 	-	339,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0c/5f/bf6fd32a4d2c48288f59d39de098.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	полусладкое
521	игристое Tête de Cheval 	4,0	1 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/3a/d4/9366ea1bc11272e0e47e3f997075.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	сладкое
542	игристое Pierre Trichet l'Authentique Brut Rose Champagne AOC 	3,8	2 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ea/91/47cdc245674a242e352b0c5c0212.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	сухое
543	игристое Martini Prosecco DOC 12%, 187мл	3,6	379,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e4/ae/1b76ccd1aceeb059576b56caf623.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	-
548	игристое Martini Prosecco DOC Rose 	4,0	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/40/91/a1c20b5561e4b5c0efeca1b41b75.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	сухое
549	игристое Martini Prosecco DOC 13%, 750мл	3,6	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a9/77/b6b364599d60271xd5xd392f9f88.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	-
552	игристое Font Secco Kekfrankos Rose Frizzante 	3,4	329,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/bf/53/510e5434ba26d45027c0cd96d949.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	сухое
554	игристое Gancia Prosecco Rose DOC 	4,0	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ee/17/600267735433195d250753734575.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	сухое
556	Плодовый алкогольный напиток Santo Stefano газированный белый полусухой 8%, 750мл	3,4	289,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/10/99/35c84730a31df40481602a7c8906.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	-
557	Винный напиток Martini Secco газированный полусухой белый ж/б 10%, 250мл	3,6	299,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/1a/73/77672507445e78bc675431f5e7c7.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	-
558	игристое Martini Rose 	3,6	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a4/dd/44eb3694a2f8af079263ffbccfb8.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	полусухое
560	игристое Мысхако Квинтэссенция Зинфандель 	-	779,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/79/d5/7c9cf8d8618c6c08a7d52b8eeddc.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	полусухое
561	Винный напиток Martini Rosato газированный полусухой розовый ж/б 10%, 250мл	3,7	299,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5d/f1/7f2343581bd9e7dbfa5226d344cb.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	-
563	игристое ZB Wine Frizzante 	3,7	519,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/89/a5/27e8bc2e905a18645e08cd72233d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	полусухое
541	игристое Gancia Просекко Драй 	4,0	929,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/28/9e/ca864c505868f2fc4c07c7e091c4.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	сухое
540	Плодовый алкогольный напиток Bosca Rose Limited газированный розовый полусладкий 7.5% 750мл	-	549,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/64/a3/05e6a7814c1a894d5c6be15b4d02.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	-
544	игристое Campo Del Passo Prosecco DOC Millesimatoв п/у 	3,6	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c8/4b/d386bb525c3f6475800a0b51844d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	сухое
545	игристое Piper-Heidsieck Champagne AOC 	4,0	6 899,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/46/1c/7c11d68a04a35236048fd7c6c6a7.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	сухое
546	игристое Case Paolin Asolo Prosecco Superiore DOCG 	3,8	1 699,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/98/8c/1eb79192b79781806bef28fdd8cd.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	сухое
547	игристое ZB Wine Frizzante жемчужное 	-	539,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/fb/0d/5c7df54e041838f8885bc99beaac.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	сухое
550	игристое Campo del Passo Prosecco DOC 	3,6	1 999,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/05/10/332b9a44df26f9f363f609db2818.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	сухое
551	игристое Nino Ardevi Просекко 	3,6	1 149,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/35/e5/ca94c3e80a0532cea517280826a1.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
553	игристое Pierre Trichet l'Authentique Brut 1er Cru Champagne AOC 	3,9	4 799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c3/55/24b175419f1121c720393bcc6d22.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	сухое
555	игристое Абрау-Дюрсо 	3,3	439,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/3b/72/587936ecxd9a1f5a5fc8813e5934.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	полусухое
559	игристое Mayrik Kangun 	3,3	389,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/02/df/9a8bbdbf06f62234aa761809b3dc.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	полусухое
562	игристое Pierre Trichet l'Authentique Demi-Sec 1er Cru Champagne AOC 	3,8	4 799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/da/c3/2feb0dce8610f185b732af8f889d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	полусухое
569	Игристое вино Пом-Икс абрикоссовое полусладкий 8%, 750мл	3,5	499,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b9/a7/28934f5e519e75d1a63da26a7b75.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	-
572	игристое Гротто Бэй Совиньон Розе Селект сортовое 	4,2	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/86/19/19cfbe9429520084d8413873a44c.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	сухое
575	Игристое вино Пом-Икс гранатовое полусладкое 8%, 750мл	3,7	499,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/92/03/d861d1d7bfd5b59602be330e94a2.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	полусладкое
579	игристое Casa Coller Rose брют 	3,7	799,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/fd/e9/37ffe8330ec791b3dac3c7b119aa.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
581	игристое Ламбруско Дэль Эмилия жемчужное 	-	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d9/aa/6b6413cc4eab11b0a1ac03107be2.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	полусладкое
564	игристое Pierre Trichet La Puissance Blanc de Noirs Brut Champagne AOC Grand Cru 	4,0	2 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/30/9c/dabb90f0e0235a8xd483422a4bcc.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	сухое
580	игристое Ламбруско Дэль Эмилия 	-	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ec/3e/ed419b451cf8a0eb8873fc65f469.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	полусладкое
566	Laurel's Extra-dry 	-	569,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d8/2d/0c676fbb2bebd7f1134e1b601327.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
567	игристое Casa Coller Prosecco 	3,7	859,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/17/fa/b79374xdfff5ecc30ef588d794ac.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
570	игристое Мучо Мас 	-	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0b/af/1445e6c4d34a32a761d8955b76e8.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	-
573	игристое аэтано Ламбруско дель Эмилия жемчужное 	-	449,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/1e/69/817e52d5c15be3fd34d2ccdb9115.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	полусладкое
574	игристое Altoviso Premium выдержанное 	2,4	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/77/60/76e1cf5f0686a0fd86f970a3ddc1.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
576	игристое Saint-Hilaire Бланкет де Лиму 	3,9	1 679,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/2f/0d/3114330fbc088013b94e34a97a33.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
577	игристое Tete de Cheval Брют Резерве 	4,0	2 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7e/1e/b7d3f301c7eef39dd4af6e27f2ef.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
578	игристое Zonin Просекко 	3,7	949,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/21/45/462cf938485e3879f545ac8af255.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
582	Mar Adentro Altoviso Reserva 	3,3	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9c/6f/db082b897570f539ef9e270c28a5.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
583	игристое Chateau Tamagne белое брют 13%, 750мл	3,6	349,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d2/42/b8381e4ab7989d66a519fc6534a9.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
584	игристое Мысхако Flute Gewurztraminer белое брют 11%, 750мл	3,7	549,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e6/48/b76a6c8773ed497b6aa452b74db2.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
585	игристое Gancia Prosecco Brut белое брют, 200мл	3,7	299,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d2/14/1f7695b7xde32594631819473b58.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
586	игристое Эндемы Рислинг белое брют 12.5%, 750мл	3,6	499,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/74/65/fxd5b21513577994cd5e8662c59c.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
587	игристое Casa Coller Spumante Brut белое брют 11%, 750мл	3,7	579,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/6e/1c/240xd1281410f6f4a9ed96ea023b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
588	игристое Vogue белое брют 13%, 750мл	-	629,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7f/e5/2980ee6ae0093dc3ebfaca6a32c3.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
589	игристое Aristov белое брют 10.5%, 750мл	-	419,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/45/e6/22e4c76132cb3753xdb8eb0b857a.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
568	игристое Гротто Бэй Совиньон Розе Селект экстра брют 	3,7	1 079,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/af/02/4456f20650dc3cbb57e0efee7c0c.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
593	Chateau Tamagne Флерс Де Суд игристое белое брют, 0.75л	3,6	349,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e8/66/b132101de88592a47466823afbb2.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
594	игристое Fanagoria Блан де Нуар Белое из чёрного белое брют 11-13%, 750мл	3,7	859,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0f/d3/4a5431b235083a5528ace8becee4.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
595	игристое №1 белое брют, 750мл +бокал	-	819,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/dd/67/f35340991ff277c8643289df46c5.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
596	игристое Casa Coller белое брют в подарочной упаковке, 750мл	3,7	639,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/54/66/96f72dd4f478b713eb904c2f7f4b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
597	игристое Vina Esmeralda Catalunya DO белое брют 11.5%, 750мл	3,3	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5c/a4/c644791b18c961bc35bcfb2c02e6.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
598	игристое Di Caspico белое брют 12%, 750мл	3,6	399,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/47/5a/dd86e1dca50212c713f15fab1425.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
599	игристое Мысхако Flute белое брют 11%, 750мл	3,7	549,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5a/2b/4c2672b3da2c80bb2880ab41d5ed.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
600	игристое Cava Jaume Serra белое брют 11.5%, 750мл	3,3	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/50/0d/b7e9c38a40200fef541xdf6078c5.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
601	игристое Maschio Dei Cavalieri Valdobbiadene Prosecco Superiore DOCG Rive di Colbertaldo белое брют 11.5%, 750мл	4,1	1 499,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b0/a3/bb08393dbcd1a64f13ed7b598437.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
602	игристое Vallformosa Classic Cava DO белое брют 11.5%, 750мл	3,7	569,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/10/04/6f8a0c6f20a2c8a388d19750ef46.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
603	игристое Антанс Шампань АР Ленобль выдержанное белое экстра брют 12,5%, 750мл	3,6	7 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/30/0d/fff5f1db1367bfc4de9e8eeb3ec6.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
604	игристое Solvino белое брют, 750мл	-	349,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/1d/32/f8c625d56d893260707f42fe6e11.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
605	игристо Fanagoria Blanc de Blancs белое брют, 750мл	3,7	859,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/31/4f/884594159f81f6e34ff9750babd5.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
606	игристое Issi Просекко белое брют в подарочной упаковке, 750мл + 2 бокала	3,7	1 549,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ee/63/68xd361531ddxde920bbcd80d45d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
607	игристое Pommery Brut Royal белое брют, 1.5л	3,7	13 999,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d3/67/41a595646db549d72ac8787f215d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
608	игристое Рояль Розе белое брют 12.5%, 750мл	-	7 999,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/72/7d/410cf3451358e68f7ac0264e80d6.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
609	игристое Takar белое экстра брют, 750мл	-	699,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/46/d8/f755de55bfbc94b40c19aff5xd20.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
610	игристое Наследие Мастера Левъ Голицынъ Коронационное белое брют 11.5%, 750мл	-	639,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a8/c1/67f6bb1aee04fa31c50c7f556063.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
611	игристое Gancia Просекко белое брют 11.5%, 4х200мл	-	1 149,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9e/79/68f50bb5622cd935b444bfa164a4.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
612	игристое ZB Wine Спуманте брют белое 12.5%, 750мл	3,6	479,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5a/c4/58e5572c7a12cc93b7dc591b6298.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
613	игристое Ombre Просекко Док белое 11%, 750мл	3,7	959,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b8/43/4071c55c093fa37e0376407d2ab4.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	-
614	игристое Мысхако Квинтэссенция Белое из чёрного белое брют 11%, 750мл	3,7	589,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f3/47/da3d60b453ffae2bae5d5b033394.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
592	игристое Louis Vallon Cremant de Bordeaux AOC белое брют 11.5%, 750мл	3,9	1 249,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e5/54/287529d9xd20399a4e13d6d856a8.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
617	игристое Tête de Cheval Blanc de Blancs белое брют 12%, 750мл	4,0	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e2/41/70xd042573d7f242dd6329f906f9.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
618	игристое Ahso белое брют 12%, 750мл	-	849,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4c/ef/46d16184ce264d74f93868cd1e90.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
619	игристое Riondo Collezione Frizzante Brut Garda DOC белое брют 11%, 750мл	3,7	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/3c/27/3dafffc02f3f70eb018f3792185b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
620	игристое Martini Брют белое брют 11.5% в подарочной упаковке, 750мл	3,7	1 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/66/51/bb72e41710xdd672310607e00acc.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
621	игристое Золотая Балка белое брют 12.5%, 750мл	3,4	399,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5b/dc/d7ac26a3f45753767ce2d0fb72b8.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
622	игристое Nuviana Cava DO белое брют 11.5%, 750мл	3,7	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/46/d9/c822c8b8f8af35248675d9157347.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
623	игристое La Gioiosa Prosecco DOC Treviso белое брют 9,1-13%, 750мл	3,6	1 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/02/ae/6144383cb70038f9b12c9e5a6368.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
624	игристое Советское Шампанское белое брют 10.5-12.5%, 750мл	3,4	239,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/fc/81/a3ce2fbc58a413a26157e21ef2c6.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
625	игристое Martini Brut белое 12%, 750мл	3,6	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/50/e0/3ff5374cbbfe900d609ae04e1ca1.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	-
626	игристое Gancia Asti DOCG белое сладкое 7.5%, 750мл	3,8	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5d/7c/2f4ec0154afc9ca3e20d62209386.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	сладкое
627	игристое Tosti Asti DOCG белое сладкое, 750мл	3,3	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/25/fd/2e613ed6ae634d1a348aa4df330b.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	сладкое
628	игристое Canti Asti DOCG белое сладкое 7%, 750мл	3,3	1 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/6e/xd/62eebd4c3a94f81f96ec1eb74223.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	сладкое
629	игристое Tête de Cheval белое сладкое 12%, 750мл	4,0	1 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/3a/d4/9366ea1bc11272e0e47e3f997075.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	сладкое
630	игристое Riunite D'Oro белое полусладкое 8%, 750мл	3,4	429,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/66/b7/022491f8b59b4ac8b6d9f1740d79.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	полусладкое
631	игристое Chateau Tamagne белое полусладкое 13%, 750мл	3,7	349,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/80/a6/3494a370248510f7ba61092dexda.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	полусладкое
632	игристое Наследие Мастера Левъ Голицынъ Коронационное белое полусладкое 12.5%, 750мл	3,5	659,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b3/4a/487fe53598d27229719a614a7973.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	полусладкое
633	игристое Ahso белое полусладкое 12%, 750мл	3,3	869,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/33/83/8870dfd2b50e0049c912efe8afa4.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	полусладкое
634	игристое Di Caspico Фиори ди Маре жемчужное белое полусладкое 11%, 750мл	-	339,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0c/5f/bf6fd32a4d2c48288f59d39de098.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	полусладкое
499	игристое Наследие Мастера Левъ Голицынъ 	3,1	159,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5c/f5/2ab72f59cdc881a2dc6279abd64d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
636	игристое Gancia Просекко Драй белое сухое, 750мл	-	929,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/28/9e/ca864c505868f2fc4c07c7e091c4.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	сухое
637	игристое Campo Del Passo Prosecco DOC Millesimatoв п/у белое сухое 11%, 750мл	3,6	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c8/4b/d386bb525c3f6475800a0b51844d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	сухое
638	игристое Piper-Heidsieck Champagne AOC белое сухое в п/у 12%, 750мл	4,0	6 899,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/46/1c/7c11d68a04a35236048fd7c6c6a7.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	сухое
635	игристое Di Caspico белое полусладкое 11%, 750мл	-	439,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/1f/d7/0bc461dc4528668204f69b81fc75.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	полусладкое
641	игристое ZB Wine Frizzante жемчужное белое сухое 10%, 750мл	3,9	539,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/fb/0d/5c7df54e041838f8885bc99beaac.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	сухое
642	игристое Campo del Passo Prosecco DOC белое сухое 11%, 1.5л	3,6	1 999,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/05/10/332b9a44df26f9f363f609db2818.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	сухое
643	игристое Nino Ardevi Просекко белое брют в подарочной упаковке, 750мл + 2 бокала	3,7	1 149,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/35/e5/ca94c3e80a0532cea517280826a1.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
644	игристое Pierre Trichet l'Authentique Brut 1er Cru Champagne AOC белое сухое 12%, 750мл	3,9	4 799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c3/55/24b175419f1121c720393bcc6d22.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	сухое
645	игристое Tête de Cheval белое полусухое 12%, 750мл	4,0	1 349,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/fd/2d/7effe0806bd953c44cd614efecxd.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	полусухое
646	игристое Абрау-Дюрсо белое полусухое 12%, 750мл	3,4	439,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/3b/72/587936ecxd9a1f5a5fc8813e5934.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	полусухое
647	игристое Mayrik Kangun белое полусухое, 750мл	-	389,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/02/df/9a8bbdbf06f62234aa761809b3dc.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	полусухое
648	игристое Pierre Trichet l'Authentique Demi-Sec 1er Cru Champagne AOC белое полусухое 12%, 750мл	3,8	4 799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/da/c3/2feb0dce8610f185b732af8f889d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	полусухое
649	игристое Pierre Trichet La Puissance Blanc de Noirs Brut Champagne AOC Grand Cru белое сухое 12%, 750мл	4,0	2 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/30/9c/dabb90f0e0235a8xd483422a4bcc.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	сухое
565	игристое Эндемы Пино Нуар 	3,7	499,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d0/3a/4e02327a398c245f129b2a609dc1.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
650	Laurel's Extra-dry белое брют, 750мл	-	569,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d8/2d/0c676fbb2bebd7f1134e1b601327.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
651	игристое Casa Coller Prosecco белое брют п/у, 750мл	3,7	859,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/17/fa/b79374xdfff5ecc30ef588d794ac.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
652	игристое Мучо Мас белое экстра драй, 750мл	3,6	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0b/af/1445e6c4d34a32a761d8955b76e8.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	-
653	игристое Takar белое экстра брют 12%, 375мл	-	399,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/58/93/ff0c3c0a2d84f0c43172cda373ff.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
654	игристое аэтано Ламбруско дель Эмилия жемчужное белое полусладкое, 750мл	-	449,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/1e/69/817e52d5c15be3fd34d2ccdb9115.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	полусладкое
655	игристое Altoviso Premium выдержанное белое брют, 750мл	3,9	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/77/60/76e1cf5f0686a0fd86f970a3ddc1.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
656	игристое Saint-Hilaire Бланкет де Лиму белое брют 12.5%, 750мл	3,6	1 679,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/2f/0d/3114330fbc088013b94e34a97a33.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
657	игристое Tete de Cheval Брют Резерве белое брют 12% в подарочной упаковке, 750мл	3,6	2 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7e/1e/b7d3f301c7eef39dd4af6e27f2ef.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
658	игристое Zonin Просекко белое брют 11%, 750мл	-	949,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/21/45/462cf938485e3879f545ac8af255.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
659	игристое Zonin Просекко белое брют 11%, 200мл	-	349,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5a/57/0506a5894a6f7db25dd2a1019441.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
660	игристое Ламбруско Дэль Эмилия белое полусладкое, 750мл	3,4	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ec/3e/ed419b451cf8a0eb8873fc65f469.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	полусладкое
661	Mar Adentro Altoviso Reserva белое брют, 750мл	3,4	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9c/6f/db082b897570f539ef9e270c28a5.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
640	игристое Vogue белое полусухое 13%, 750мл	2,6	429,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/95/6b/ea99e5f69865200f2e2ddf222b19.png	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	полусухое
481	игристое Maschio Dei Cavalieri Valdobbiadene Prosecco Superiore DOCG Rive di Colbertaldo 	4,1	1 499,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b0/a3/bb08393dbcd1a64f13ed7b598437.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
519	Напиток слабоалкогольный Санто Стефано газированный красный полусладкий 8%, 250мл	-	119,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f8/ea/b659791b6595c69b43f2eeb691cc.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	-
539	Плодовый алкогольный напиток Allegro Classico газированный белый полусладкий 7%, 750мл	-	259,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9a/b8/1c08da30b6278561c3818488f0a5.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	-
571	игристое Кава Наверан Брют Винтаж Розе выдержанное экстра брют 	3,7	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/04/98/c4d841eeea18a909e3b4cxddeaf3.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
590	игристое Brut Dargent Chardonnay белое брют 11.5%, 750мл	3,7	769,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f2/a7/4f4b1fa1a9659b98ccf8dfd26319.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
591	игристое Мысхако Квинтэссенция Совиньон Блан белое брют 11.5%, 750мл	-	739,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4b/7a/3133ca90d8f16cf6e7dbda8e8591.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
615	игристое Astrale Prosecco DOC белое брют 11%, 750мл	-	1 599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/fb/88/2b73becdd6xdff766c9487b814c6.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
616	игристое Наследие Мастера Левъ Голицынъ белое брют 10.5%, 200мл	-	159,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5c/f5/2ab72f59cdc881a2dc6279abd64d.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	брют
639	игристое Case Paolin Asolo Prosecco Superiore DOCG белое сухое 11.5%, 750мл	3,8	1 699,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/98/8c/1eb79192b79781806bef28fdd8cd.jpg	https://toplogos.ru/images/thumbs/preview-logo-perekrestok.png	Игристое	сухое
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
776	Espiritu de Chile Cabernet Sauvignon 	3,8
777	Ikhalto Киндзмараули 	3,8
778	Продукция Mayrik Гранатовое алкогольная красная полусладкая 12%, 750мл	3,9
779	Лыхны 	3,8
780	ликерное Солнечная Долина Черный Полковник 	4,2
781	Киндзмараули 	4,2
782	Claroscuro Tintas de Uco Malbec 	3,5
783	Плодовый алкогольный напиток Дерево Жизни Ежевика красный полусладкий, 12%, 750мл	-
784	Nobiolomo Marzemino Colli de Scandiano e Canosa DOC 	4,3
785	Conti Serristori Chianti DOCG 	3,4
786	Solvino Каберне 	3,5
787	Винный напиток Вермут Martini Rosso 14,4%, 500мл	4,4
788	Апсны 	-
789	ликерное Массандра Портвейн Красный Алушта 17%, 750мл	3,8
790	Maradi Киндзмараули 	-
791	Плодовый алкогольный напиток Дерево Жизни Гранат красный полусладкий, 12%, 750мл	-
792	Броjaница Кадарка 	-
793	Negrar Amarone della Valpolicella DOCG 	4,0
794	ликерное Солнечная Долина Черный Доктор Солнечной Долины 	-
795	Chateau l'Eclair Merlot ординарное 	3,6
796	Вина Тавадзе Хванчкара 	3,9
797	Villa Krim Shevalie Rouge 	3,5
798	Tres Amigos сортовое ординарное 	3,7
799	Aristov Анима Анчелотта 	3,3
800	Ikhalto Алазанская Долина 	4,1
801	Винный напиток Sangria Fresh Wine in Tube 	3,7
802	Инкерман Пино Нуар 	-
803	Sol Valley Cabernet Sauvignon 	3,3
804	Тайна Колхиды Хванчкара 	4,3
805	Elegido Tinto 	4,3
806	Quintessence Шторм Мерло 	-
807	19 Crimes Snoop Cali Red 	3,6
808	Heinz Eifel Spatburgunder 	3,6
809	Vecchia Cantina Chianti DOCG Riserva 	3,7
810	Vajra Dolcetto d'Alba DOC 	3,8
811	Terramia 	3,2
812	Paladin Syrah 	3,9
813	Chateau Pinot Гравитация Каберне Совиньон 	3,7
814	Kvareli 	4,1
815	Fanagoria столовое 	3,5
816	Vina Tendida Valencia DO 	4,1
817	Джейран Чинар 	-
818	Дугладзе Киндзмараули 	-
819	Wine Guide Бастардо 	3,1
820	Batono Алазанская Долина 	3,3
821	АСТ Саперави 	3,5
822	Vespucci Chianti DOCG 	3,4
823	Tinto Pesquera Crianza Ribera del Duero DO 	4,0
824	Sant'Orsola Chianti DOCG 	3,3
826	Кахетинские подвалы Киндзмараули 	4,2
827	Nobilomo Marzemino 	4,3
828	Сихарули Киндзмараули 	3,5
829	Tbilisi Peak Киндзмараули 	4,0
830	Ханджлури Сувенирная серия Киндзмараули 	4,5
831	Tavridia Саперави Мерло 	3,3
832	Domaines Arnaud Cuvee Finesse 	3,9
833	от Валерия Захарьина Бастардо Кефесия 	3,9
834	Глобус Rouge Moelleux 	3,7
835	Глобус Corte Vinaia Rosso 	-
836	Глобус Хванчкара 	3,9
837	Глобус Киндзмараули 	3,5
838	Глобус Алазанская долина 	3,8
839	Kindzmarauli Marani Kindzmarauli 	4,3
840	Agora Мускат чёрный 	4,0
841	ликёрное Массандра 	-
842	домашнее Driada Изабелла Молдавская 	3,9
843	Грузвинпром Киндзмараули 	3,8
844	Усадьба Дивноморское Вторая лиия Вечерница 	3,9
845	Ханджлури Киндзмараули 	4,5
846	Броjаница Изабелла 	-
847	Novacorte Valpolicella Ripasso classico superiore 	3,9
848	Agora Саперави 	3,7
849	креплёное Hooper's Constitutional Port 10 years old Tawny 	4,0
850	ликёрное Массандра Портвейн красный Алушта 17 % алк., Россия, 0,75 л	3,8
851	ликёрное Barros Porto Ruby 19,5 % алк., Португалия, 0,75 л	3,8
852	Villa Del Sol 	4,0
853	Сихарули Алазанская долина 	3,8
854	Портвейн Valdouro Porto Tawny Port красный 19 % алк., Португалия, 0,75 л	4,1
855	Традиции Абхазии Изабелла Абхазская 	4,1
856	ликёрное Pedro Ximenez Reserva de Familia сладкое 15 % алк., Испания,...	4,0
857	Juste Du Bon Vin Изабелла 	-
858	Талавари Киндзамараули 	-
859	Tbilisi Peak Алазанская долина 	-
860	Georgian Royal Wine Kindzmarauli GRW 	4,3
861	Портвейн Агдам белый 19 % алк., Азербайджан, 0,75 л	-
862	Villa Grande 	2,9
863	Escal Roja 	3,2
864	ликёрное Sol de Malaga Original сладкое 15 % алк., Испания, 0,75 л	3,6
865	Andre Millot Moelleux 	3,9
866	Mildiani Киндзмараули 	4,2
867	Портвейн Массандра Южнобережный красный сладкий 18 % алк., Россия, 0,75 л	4,1
868	Крымвинторг Пино-Фран крымский 	3,2
869	Domus Vini Raboso 	3,6
870	Fanagoria Каберне 	3,5
871	Грузвинпром Хванчкара 	4,0
872	Броjаница Кадарка 	-
873	Kagor Meteora освящённое 	4,4
874	Сихарули Ахашени 	4,0
875	Bravo Trade Киндзмараули 	-
876	Observer Grand Reserve Carmenere-Cabernet Sauvignon 	4,1
877	J.P. Chenet Delicious Medium Sweet Moelleux 	3,7
878	Bleu Merlot 	3,9
879	ликёрное Malaga Virgen Pedro Ximenez 	3,7
880	Крымский погребок Саперави 	3,0
881	ликёрное Солнечная Долина Черный Доктор 	4,3
882	Коктебель Кагор высшего качества	4,0
883	Асканели Алазанская Долина	3,8
884	Babalu Tropical 	3,9
885	Lirico Bobal-Monastrell 	3,6
886	Талавари Алазанская долина 	4,0
887	Портвейн Calem Fine Ruby Porto красный 19,5 % алк., Португалия, 0,75 л	4,1
888	Tikves Македонско Чрвено 	-
889	Портвейн Массандра Ливадия красный 18,5 % алк., Россия, 0,75 л	-
890	Портвейн Hooper's Lord Mayor Tawny Porto сладкое 19 % алк., Португалия, 0,7...	3,4
891	Alma River Шираз 	3,9
892	Marani Kindzmarauli 	4,3
893	Вина Тамани Мерло 	-
894	ликёрное Royal Madeira 17,5 % алк., Португалия, 0,75 л	4,4
895	Inkerman Пинно Крымское 	3,5
896	Ханджлури Хванчкара 	-
897	АСТ Киндзмараули 	3,5
898	Askaneli Brothers Киндзмараули CA 	3,5
899	Грузвинпром Алазанская долина 	3,9
900	Tbilisi Peak Хванчкара 	4,0
901	Blandy's Madeira Duke of Clarence Rich 	3,9
902	Armenia 	3,9
903	Сихарули Хванчкара 	3,9
904	Valserrano Graciano 	4,0
905	Vol I Dol Negre	3,3
906	Традиции Абхазии Саперави 	3,4
907	Ozzy Shiraz 	4,1
908	ликёрное Villa de Corgos Reserva Bairrada 	4,1
909	Bravo Trade Хванчкара 	-
910	Marani Alazani Valley 	4,0
911	J.P. Chenet Original Shiraz 	3,7
274	Грузвинпром Саперави  	3,6
912	Golden flowers Cabernet 	3,1
913	Цард Шираз 	-
914	Golden flowers Merlot 	3,1
915	Hamelin Bourgogne Pinot Noir 	3,6
916	The Mark Merlot-Cabernet 	3,9
917	Arena de Oro Garnacha-Tempranillo 	3,1
918	ликёрное Солнечная Долина Черный Полковник 	4,2
919	M.Chapoutier Rivesaltes	3,9
920	Muelle Tempranillo Syrah	3,7
921	Arrivederci	3,9
922	Acharuli Домашнее 	3,3
923	Bravo Trade Алазанская Долина 	3,8
924	Di Caspico special edition 	3,9
925	Golden flowers Isabella 	-
926	ликёрное Contrabandista Valdespino Jerez полусухое 18 % алк., Испания,...	3,8
927	Цард Ломиаури 	-
928	Tbilisi Peak Ахашени 	4,0
929	Rioja Bodegas De Abalos Tempranillo 	3,2
930	Крымская Трапеза Саперави 	-
931	ликёрное Elegante Cream 17 % алк., Испания, 0,75 л	4,4
932	Традиции Абхазии Апхын 	3,6
933	Vino Kalem Вранец 	3,6
934	Портвейн Calem Fine Tawny Porto красный 19,5 % алк., Португалия, 0,75 л	4,1
935	Canada Syrah 	-
936	Bosca Stories of Italy Negroamaro 	3,6
937	Inkerman Древний город 	4,0
938	Tbilisi Peak Оджалеши 	4,2
939	Galo Valente Semi-Doce 	4,0
940	ликёрное Malaga Virgen Dunkel Pedro Ximenez сладкое 17 % алк., Испания...	3,7
941	Портвейн Hooper's 2003 Colheita Port сладкий 20 % алк., Португалия, 0,75 л	4,1
942	Апацха 	3,8
943	Askaneli Brothers Saperavi Muscat 	4,2
944	ликёрное Gonzales Byass Elegante Medium Sherry 17 % алк., Испания, 0,7...	3,9
945	Rouge 	3,5
946	игристое Casa Defra Prosecco DOC 	3,9
947	игристое Aristov 	3,4
948	игристое Tête de Cheval Blanc de Blancs 	4,0
949	игристое Gancia Prosecco Brut 	3,6
950	игристое Casa Coller Rose Spumante Brut Rose 	3,6
951	Riondo Spumante Organic 	-
953	Peter Mertes Riesling 	4,1
954	Cielo Pinot Grigio 	3,7
955	Urban Riesling Mosel 	4,2
956	Le Grand Noir Chardonnay 	4,0
957	San Valentin Catalunya DO 	3,9
958	Liebe Meine Frau 	3,1
959	Hans Baer Riesling 	4,0
961	Lago Vinho Verde DOC 	4,2
962	Ca'Del Poggio Pinot Grigio delle Venezie DOC 	3,7
963	Vinogor Мускат 	2,5
964	Olivier Tricon Chablis AOC 	3,9
965	Freschello Bianco 	3,2
966	Turtle Dreaming Semillon-Sauvignon Blanc 	3,9
967	Banfi Principessa Gavia Gavi DOCG 	3,9
968	Musita Karima Grillo 	3,8
969	Inspirado Sauvignon Blanc 	3,4
970	Michel Scheid Riesling 	4,0
971	Chateau De Talu Море волнуется раз 	3,4
972	Gaetano Pinot Grigio delle Venezie DOC 	3,3
973	Olivier Tricon Petit Chablis AOC 	3,9
974	Псоу 	-
975	Fetzer Chardonnay Sundial 	3,6
976	Ikhalto Цинандали 	-
978	Bex Riesling 	3,9
979	The Wine System Viuranus Navarra DO 	3,7
980	Passopasso Passito 	-
981	Pirovano Garda Garganega Pinot Grigio DOC 	3,6
983	Mau Maria Vinho Verde DOC 	3,7
984	Lirico Viura-Sauvignon Blanc Valencia DO 	4,0
985	19 Crimes Chardonnay 	3,7
986	Faustino VII Viura Rioja DOC 	3,5
987	Tour De Mandelotte Bordeaux AOC Blanc 	4,2
988	ликерное Массандра Мадера Крымская 	3,7
989	Redwood Vineyards Chardonnay 	3,4
952	игристое Ombre Просекко Док 	4,2
977	19 Crimes Sauvignon Block 	3,7
982	ZB Wine Riesling 	4,1
991	Aristov Anima Мюллер Тургау 	3,7
993	Original German Pinot Blanc 	3,8
994	Alma Valley White 	3,3
995	Selbach Trutta Fario Riesling Kabinett 	4,0
996	Amaranta Chardonnay-Viognier 	3,7
997	Solano Verdejo 	3,7
998	Peter Mertes Liebfraumilch 	3,8
999	Donnafugata Anthilia 	3,8
1000	Jardin de la Taur Marsanne-Sauvignon Blanc 	3,9
1001	Cielo Sante Rive Soave DOC 	3,8
1002	Крымское Лето Сапсёрфинг 	-
1003	Golubitskoe Estate Рислинг 	3,9
1004	Yali Уайлд Свон Совиньон Блан 	3,7
990	Le Rime 	3,6
1006	Ed Knows Мускат 	3,8
1007	Ed Knows Шардоне 	3,8
1008	Armenia Wine Такар Кангун 	3,9
1009	De Wetshof Danie de Wet Chenin Blanc 	3,9
1010	Chateau Pinot Гравитация Шардоне 	3,9
1011	Tre Stelle Bianco 	3,7
1012	Negrar Garganega 	3,7
1013	Original German Riesling 	3,7
1015	E. Guigal Cotes du Rhone AOC Blanc 	3,6
1016	Monte Real Blanco Fermentado en Barrica Rioja DOC 12.5%, 750мл	3,6
1017	La Miranda Secastilla Garnacha Blanca Somontano DO 	3,7
1018	Sympathy for the Devil 	3,7
1019	Rabl Riesling Langelois 	4,0
1020	De Wetshof Bon Vallon Chardonnay 13%, 750мл	3,9
1021	Rabl Gruner Veltliner Langelois 	3,9
1022	Karas Armavir Vineyards 	3,7
1023	Cranswick Lakefield Chardonnay 	3,3
1024	Beringer Founder's Estate Chardonnay 	3,6
1025	Matteo Braidot Ribolla Gialla Friuli Isonzo DOC 	3,6
1026	Matteo Braidot Pinot Grigio Friuli Isonzo DOC 	3,7
1027	Gamla Sauvignon Blanc 	3,7
1028	Cinzia Bergaglio Gavi del Comune di Gavi DOCG Rovereto 	3,9
1029	Little Beauty Dry Riesling Marlborough 	3,9
1030	Selbach Riesling Incline 	3,8
1031	Alamos Chardonnay 	3,6
1032	Livio Felluga Pinot Grigio Colli Orientali Friuli DOC 	4,0
1033	Ailala Treixadura Ribeiro DO 	4,1
1034	Masi Tupungato Passo Blanco 	3,5
1035	Долина Привидений Шардоне 	3,1
1036	Livio Felluga Sharis delle Venezie 	3,8
1037	Yalumba The Y Series Chardonnay 13%, 750мл	3,5
1038	Albet i Noya El Fanio Penedes DO 	3,8
1039	Cristo di Campobello C’D’C’ Bianco 	3,8
1041	Les Sarres Cotes Du Jura AOC 	-
1014	Villa Krim Шардоне 	3,1
992	ZB Wine Совиньон Блан 	3,8
1042	Резерв Винодела Шардоне 	3,4
1043	Bründy Grüner Veltliner 	3,9
1045	Абрау-Дюрсо Рислинг 	3,2
1046	Blanc de Talu 	3,5
1047	Инкерман Кокур Белый 	-
1048	BDX Revolution Sauvignon Blanc Bordeaux AOC 	3,8
1049	Paladin Pralis 	4,0
1050	Musita Organic Cataratto 	-
1051	Инкерман Мускатное 	3,6
1052	B.IO Cataratto Chardonnay 	3,8
1054	Piccini Memoro Bianco 	3,5
1055	Ahso Цинандали 	3,5
1056	Il Rocchin Gavi DOCG 	3,9
1057	Bruni Гарганега Пино Гриджио дель Венеция 	3,5
1058	KWV Classic Collection Sauvignon Blanc 	3,5
1059	Ionos White 	3,8
1060	Фанагория Номерной Резерв Шардоне 	-
1061	Gatto Matto Pinot Grigio Delle Venezie DOC 	3,7
1062	Destination Blanc Bordeaux AOC 	3,9
1063	Masi Modello Pinot Grigio delle Venezie DOC 	-
1064	Mar de Frades Albarino Rias Baixas DO 	4,1
1065	Sol Valley Sauvignon Blanc 	3,3
1066	Rauli Chardonnay 	3,5
1067	Frontera Sauvignon Blanc 	3,3
1068	Chateau Tamagne Терруарное Шардоне 	3,7
1069	Molom Blanco 	3,9
1070	Chateau Tamagne Шардоне 	3,7
1071	Pirovano Pinot Grigio Delle Venezie DOC 	3,8
1072	Castillo de Chiva Blanco Semidulce 	3,9
1073	Lirico Мерсегера-Sauvignon Blanc Valencia 	3,4
1074	Elegido Airen-Verdejo 	3,7
1075	Cuvee Blanc Terrier Blanc 	3,7
1076	G7 Chardonnay Loncomilla Valley DO 	3,3
1077	Hampton Water 	4,0
1078	Lamberti Pinot Grigio Delle Venezie DOC 	3,5
1079	Klaus Langhoff Liebfraumilch 	3,9
1080	ликерное Cossart Gordon Full Rich Madeira 	3,9
1081	Фанагория Авторское вино Шардоне-Алиготе 	3,5
1082	ликерное Массандра Портвейн Белый Алушта 17%, 750мл	-
1083	Villa Antinori Bianco 	3,8
1084	Racimo de Uva Macabeo Carinena DO 	2,9
1085	Marco Felluga Mongris Collio Pinot Grigio DOC 	3,8
1086	Pascal Jolivet Sancerre AOC Blanc 	4,0
1087	Barkan Classic Emerald Riesling 	3,5
1088	Bouchard Aine&Fils Puligny-Montrachet AOC 	4,2
1089	La Scolca Gavi DOCG Valentino 	3,8
1090	Monfort Village Semillon 	-
1091	J.Bouchon Sauvignon Blanc Maule Valley DO 	3,5
1092	Olivier Tricon Chablis Premier Cru Montmains AOC 	4,0
1093	Te Mata Cape Crest Sauvignon Blanc 	4,1
1094	Baluarte Muscat Navarra DO 	4,2
1095	Cielo Trebbiano - Pinot Grigio 	4,1
1096	Bruni Grecanico Pinot Grigio 	3,5
1097	Lago Rose Vinho Verde DOC 	3,5
1098	Cielo Pinot Grigio Blush 	3,9
1099	Mau Maria Vinho Verde DOC Rose 	4,0
1100	Pirovano Collezione Pinot Grigio delle Venezie DOC Rose 	3,8
1101	ликёрное Массандра Мускатель Розовый 	-
1102	Алазанская долина ординарное 	3,8
1103	Rabl Цвайгельт Розе сортовое ординарное 	3,6
1104	Гумиста Ашта Розе 	3,5
1105	Chateau le Grand Vostock Пино Гри Резерв 	3,4
1106	Aristov Anima Цвайгельт 	3,6
1107	Whalebone Bay Sauvignon Blanc Blush Marlborough 	4,2
1108	Ликурия Розе 	3,6
1005	Алазанская Долина ординарное 	-
1040	Tchotiashvili Ркацители Рчеули Квеври 	4,1
1044	Абрау-Дюрсо Шардоне 	3,8
1109	Мысхако Quintessence Sauvignon Blanc 	3,7
1110	Bosco del Merlo Pinot Grigio 	3,8
1111	Chateau Pinot Гравитация Пино Нуар/Пино Гри 	3,5
1112	B.IO Nero d'Avola Organic Rosato 	3,8
1113	Gerard Bertrand Cote des Roses 	3,9
1114	Cuvee Blanc Terrier Rose 	3,9
1115	Destination Rose Bordeaux AOC	3,6
1116	игристое Freschello Frizzante Rosato 	3,6
1117	игристо Fanagoria Blanc de Blancs 	3,7
1119	игристое Абрау-Дюрсо Victor Dravigny 	3,9
1120	игристое Prosecco Ombre 	4,2
1121	игристое Мысхако Квинтэссенция Совиньон Блан 	-
1122	игристое Эндемы Рислинг 	3,8
1123	игристое Chateau Tamagne Ркацители брют 	-
1124	игристое Issi Просекко 	-
1126	игристое Балаклава Шардоне 	-
1127	игристое Freixenet Cordon Negro Cava DO 	3,6
1128	игристое Louis Vallon Cremant de Bordeaux AOC 	3,9
1129	игристое Campo del Passo Prosecco Rose 	3,7
1130	игристое Cinzano Pinot Chardonnay 	3,0
1131	игристое Chateau Tamagne 	3,3
1132	игристое Наследие Мастера Левъ Голицынъ Коронационное 	3,1
1133	игристое Золотая Балка 	-
1135	игристое Vallformosa Brut Rose Cava DO 	3,7
1136	игристое Nuviana Cava DO 	3,7
1137	игристое Maschio Dei Cavalieri Valdobbiadene Prosecco Superiore DOCG Rive di Colbertaldo 	4,1
1138	игристое Vallformosa Classic Cava DO 	3,7
1139	игристое Martini Brut 	3,4
1140	игристое Zonin Просекко Розе 	3,7
1141	игристое Fanagoria Блан де Нуар Белое из чёрного 	3,7
1143	игристое Pommery Brut Royal 	3,9
1144	игристое Рояль Розе 	3,3
1145	игристое Амфитрион Лимитед выдержанное 	-
1148	игристое Mar de Frades Albarino Atlantico Brut Nature Rías Baixas DO 	3,9
1149	игристое Cornonero Franciacorta DOCG 	3,7
1150	игристое Мысхако Flute Gewurztraminer 	3,9
1153	игристое Crimea Classic 	3,3
1154	игристое Casa Coller Spumante Brut 	3,4
1155	игристое Riondo Collezione Frizzante Brut Garda DOC 	3,7
1156	игристое Абрау-Дюрсо Victor Dravigny Brut 	3,9
1157	игристое La Gioiosa Prosecco DOC Treviso 	3,7
1158	игристое Советское Шампанское 	2,4
1159	игристое La Gioiosa Rosea 	4,0
1160	игристое Di Caspico 	-
1161	игристое Mondoro Asti DOCG 	-
1162	игристое Martini Asti DOCG 7.5%, 750мл	3,8
1163	игристое Gancia Asti DOCG 	3,8
1164	Напиток Вермут Martini Bianco 13%, 1л	3,8
1165	Плодовый алкогольный напиток Bosca Anna Federica Limited газированный белый сладкий 7.5% 750мл	3,4
1166	игристое Martini Asti DOCG 12%, 187мл	3,4
1168	Напиток Martini Fiero сладкий 10%, 1л	4,3
1169	игристое Cinzano Asti DOCG 	3,9
1170	игристое Casa Coller Moscato Dolce 	3,9
1171	игристое Canti Asti DOCG 	4,0
1172	игристое Martini Асти сладкое 	-
1173	игристое Наследие Мастера Левъ Голицынъ 	3,1
1174	игристое Martini Prosecco DOC 12%, 187мл	3,6
1175	игристое Campo Del Passo Prosecco Conegliano Valdobbiadene DOCG 	3,9
1176	игристое ZB Wine Frizzante жемчужное 	-
1177	игристое Martini Prosecco DOC Rose 	4,0
1178	игристое Campo Del Passo Prosecco DOC 	3,6
1179	игристое Cinzano Prosecco DOC 	3,7
1180	игристое Pierre Trichet l'Authentique Brut Rose Champagne AOC 	3,8
1181	игристое Gancia Prosecco Rose DOC 	4,0
1182	игристое Freixenet Prosecco DOC 	3,7
1183	игристое Freixenet Rose Cava DO 	3,8
1184	игристое Nino Ardevi Просекко 	3,6
1185	игристое Tonon Villa Doral Просекко 	3,6
1186	игристое Font Secco Kekfrankos Rose Frizzante 	3,4
1187	игристое J. Lassalle Preference Brut 1er Cru Chigny-Les-Roses Champagne AOC 	4,3
1188	игристое Case Paolin Asolo Prosecco Superiore DOCG 	3,8
1189	игристое Pierre Trichet l'Authentique Brut 1er Cru Champagne AOC 	3,9
1190	игристое de Venoge Cordon Bleu Brut Rose Champagne AOC 	3,9
1191	игристое de Venoge Cordon Bleu Brut Champagne AOC 	3,9
1192	игристое Corte delle Calli Prosecco DOC Treviso 	3,9
1193	игристое Martini Rose 	3,6
1152	игристое Vogue 	3,2
1146	игристое Мысхако Квинтэссенция Белое из чёрного 	3,7
1118	игристое Acquesi Просекко 	3,8
1147	F. Dubois Blanc de Blancs Champagne AOC игристое 	3,9
1151	игристое Vina Esmeralda Catalunya DO 	3,8
1194	Винный напиток Martini Secco газированный полусухой белый ж/б 10%, 250мл	3,6
1195	Винный напиток Martini Rosato газированный полусухой розовый ж/б 10%, 250мл	3,7
1125	игристое ZB Wine Спуманте брют 	3,4
1142	игристое №1 	3,7
1134	игристое Martini Брют 	3,4
1196	игристое ZB Wine Frizzante 	3,7
1197	игристое Мысхако Квинтэссенция Зинфандель 	-
1198	игристое Pierre Trichet l'Authentique Demi-Sec 1er Cru Champagne AOC 	3,8
1200	игристое V8+ Просекко Экстра Драй 2021 	3,6
1201	игристое Casa Coller Prosecco 	3,7
1202	игристое Brut Dargent Rose Pinot Noir 	3,4
1203	игристое Tete de Cheval Брют Резерве 	4,0
1204	игристое Эндемы Пино Нуар 	3,7
1205	игристое Zonin Просекко 	3,7
1206	игристое Sensation Блан де Блан 	3,5
1207	игристое Pierre Trichet La Puissance Blanc de Noirs Brut Champagne AOC Grand Cru 	4,0
1209	игристое Saint-Hilaire Бланкет де Лиму 	3,9
1210	игристое Sensation Просекко 	3,3
1211	игристое Atelier Des Vins 	-
1212	игристое Mayrik Kangun 	3,3
1213	игристое Prevoteau-Perrier La Vallee 	3,9
1215	игристое Ruggeri Просекко Супериоре Вальдоббьядене Джалл'оро 	4,1
1216	игристое Ahso 	3,3
1217	игристое Chateau Tamagne Роза Тамани 	3,5
1218	игристое Абрау-Дюрсо 	3,3
1219	игристое Di Caspico Фиори ди Маре жемчужное 	-
1221	игристое Надежда 	-
1222	игристое Абрау-Дюрсо Виктор Дравигни Премиум 	3,3
1223	Плодовый алкогольный напиток Allegro Crema di Vanilla газированный белый полусладкий 7%, 750мл	2,9
1224	Плодовый алкогольный напиток Allegro Rose газированный розовый полусладкий 7%, 750мл	3,3
1225	игристое Золотая Балка Мускатное 	-
1226	игристое Crimea Classic Мускатное 	3,6
1228	игристое Gancia Просекко Драй 	4,0
1229	игристое Martini Prosecco DOC 13%, 750мл	3,6
1230	игристое Corte delle Calli Prosecco Valdobbiadene Superiore DOCG 	3,8
1231	игристое Tête de Cheval 	4,0
1232	игристое ZB Wine Frizzante жемчужное красное полусладкое, 10%, 750мл	4,0
1235	Плодовый алкогольный напиток Santo Stefano Сицилийская Свадьба газированный белый полусладкий 8%, 750мл	3,5
1236	Плодовый алкогольный напиток Santo Stefano газированный белый полусладкий 8%, 750мл	3,5
1237	игристое Абрау-Дюрсо Victor Dravigny Премиум Каберне красное полусладкое 11%, 750мл	3,9
1238	игристое Riunite D'Oro 	4,4
1240	игристое Riunite Lambrusco Rosato 	3,8
1241	Плодовый алкогольный напиток Bosca Anna Federica Limited газированный белый полусладкий 7.5% 750мл	3,4
1242	Плодовый алкогольный напиток Santo Stefano газированный розовый полусладкий 8%, 750мл	3,5
1244	Плодовый алкогольный напиток Santo Stefano газированный красный полусладкий 8%, 750мл	3,5
1227	игристое Балаклава Мускат 	3,8
1233	Плодовый алкогольный напиток Allegro Classico газированный белый полусладкий 7%, 750мл	-
1214	игристое St. Urbans-Hof Рислинг Зект 	4,0
1220	Плодовый алкогольный напиток Allegro Nero газированный красный полусладкий 7%, 750мл	-
1167	Винный напиток Martini Semi Dolce газированный сладкий белый 8.5%, 250мл	-
1208	игристое Солнечная Долина Меганом Блан де Бланс 	-
1245	игристое ZB Wine Moscato 	3,7
1234	Плодовый алкогольный напиток Bosca Rose Limited газированный розовый полусладкий 7.5% 750мл	-
1243	игристое Riunite Lambrusco Rosso красное полусладкое 8%, 750мл	-
1239	Плодовый алкогольный напиток Santo Stefano Римские Каникулы газированный белый полусладкий 8%, 750мл	3,3
1199	Плодовый алкогольный напиток Santo Stefano газированный белый полусухой 8%, 750мл	3,4
1053	ликерное Солнечная Долина Портвейн Крымский Солнечной Долины 	4,1
960	Murviedro Пасьон Мальвазия 	4,0
1246	Тайна Колхиды Киндзмараули 	3,9
1247	Joseph Verdier Cuvee Speciale Verdier 	4,1
1248	Destination Rose Bordeaux AOC красное сухое 11.5%, 750мл	3,6
1249	Tierra De Almas Rioja DOC 	3,5
1250	Wine in Tube Tempranillo 	-
1251	Redtree Zinfandel 	3,7
1252	Collezione Costantino Primitivo Di Manduria DOC 	3,9
1253	Dominio de la Abadesa Roble 	3,7
1254	Esse Cabernet 	3,8
1255	Tini Montepulciano d'Abruzzo DOC 	3,6
1256	Carlos Serres Ономастика Резерва марочное 	3,8
1257	Brumes De Gascogne 	3,8
1258	Tre Stelle Aglianico del Vulture DOC полусухое 13.5%, 750мл	3,7
1259	TINI Rosso 	3,5
1260	Напиток виноградосодержащий Don Simon Sangria красный сладкий 7%, 1л	4,3
1261	Coleccion 125 Reserva 	3,9
1262	Rkatsiteli белое сухое 13.5%, 750мл	3,5
1263	Fort du Mirail Bergerac AOC 	3,4
1264	Monte Llano de Ramon Bilbao Rioja 	3,7
1265	Gaetano Montepulciano d'Abruzzo DOC 	3,3
1266	J.P. Chenet Каберне-Сира 	3,4
1267	Chateau Pinot Гравитация Каберне Фран Каберне Совиньон 	3,7
1268	Speri Sant'Urbano Valpolicella DOC Classico Superiore 	4,0
1269	Ahso Саперави 	3,6
1270	Sunrise Carmenere 	3,3
1271	Броjaница Вранац 	-
1272	Солнечная Долина Саперави 	4,2
1273	Vinogor Изабелла 	2,3
1274	Quinta das Amoras Tinto 	3,8
1275	Erben Riesling QbA 	4,0
1276	Colterenzio Pfefferer 	4,3
1277	Herrenstein Grüner Veltliner 	4,1
1278	Italo Cescon Pinot Grigio Friuli Grave DOC 	4,2
1279	Quinta das Amoras Branco 	4,1
1280	TINI Bianco 	-
1281	Taka Sauvignon Blanc 	4,5
1282	Rabo de Gala Branco 	4,1
1283	России Chateau Tamagne Ркацители-Мюллер-Тургау-Шардоне 	3,5
1284	Cа' Del Poggio Trebbiano-Pinot Bianco 	3,8
1285	Chateau Tamagne Верт 	3,3
1286	Cielo Chardonnay 	3,6
1287	I Martz Riesling & Gewürztraminer 	-
1288	Джейран Садыллы 	3,2
1289	Тифлисский Дворик Алазанская Долина 	3,5
1290	Baron Liebenstein Riesling Trocken 	-
1291	Pirovano Collezione Pinot Grigio Delle Venezie DOC 	3,8
1292	Aves del Sur Sauvignon Blanc 	3,4
1293	Five Heirs Chardonnay 	2,6
1294	Мысхако Кюве Мерло Зинфандель 	3,7
1295	Mucho Mas Rosato 	3,9
1296	Rabo de Gala Rosato 	3,9
1297	ZB Wine Rose 	3,9
1298	Le Grand Noir Розе 	4,0
1299	игристое Cava Jaume Serra 	3,5
1300	игристое Brut Dargent Chardonnay 	3,6
1301	игристое Solvino 	3,4
1302	игристое Aristov Анима Брют 12%, 750мл	3,6
1303	игристое Astrale Prosecco DOC 	4,2
1304	игристое Антанс Шампань АР Ленобль выдержанное 	3,8
1305	игристое Takar 	3,9
1306	игристое Vallformosa Classic Cava DO белое брют 11.5%, 750мл	3,7
1307	игристое Максимилиан Просекко Розе 	3,4
1308	Chateau Tamagne Флерс Де Суд игристое белое брют, 0.75л	3,6
1309	Chateau Tamagne Флерс Де Суд игристое 	3,3
1310	игристое Tête de Cheval белое брют 12%, 750мл	4,0
1311	игристое Casa Coller 	3,7
1312	игристое Louis Vallon Cremant de Bordeaux AOC белое брют 11.5%, 750мл	3,9
1313	игристое Gancia Просекко 	4,0
1314	игристое Tosti Asti DOCG 	3,8
1315	игристое Ahso белое брют 12%, 750мл	-
1316	игристое Мысхако Flute 	3,6
1317	игристое Tête de Cheval Blanc de Blancs белое брют 12%, 750мл	4,0
1318	Напиток Martini Fiero сладкий 14.9%, 1л	4,3
1319	Напиток слабоалкогольный Санто Стефано газированный красный полусладкий 8%, 250мл	-
1320	игристое Гаэтано Ламбруско дель' Эмилия жемчужное красное полусладкое, 750мл	-
1321	игристое Casa Coller Spumante Brut белое брют 11%, 750мл	3,7
1322	игристое Martini Асти 	3,8
1323	Плодовый алкогольный напиток Pom-X газированный красный полусладкий 8%, 750мл	-
1324	Игристое вино Пом-Икс ежевичное 8%, 750мл	3,8
1325	игристое Эндемы Рислинг белое брют 12.5%, 750мл	3,6
1326	Напиток слабоалкогольный Санто Стефано Сиицилийская Свадьба газированный красный полусладкий 8%, 250мл	-
1327	игристое Наследие Мастера Левъ Голицынъ Коронационное белое брют 11.5%, 750мл	-
1328	Напиток слабоалкогольный Санто Стефано газированный белый полусладкий 8%, 250мл	-
1329	игристое Мысхако Квинтэссенция Белое из чёрного белое брют 11%, 750мл	3,7
1330	игристое Lambrusco dell'Emilia красное полусладкое 8%, 750мл	3,1
1331	игристое Campo del Passo Prosecco DOC 	3,6
1332	игристое Vina Esmeralda Catalunya DO белое брют 11.5%, 750мл	3,3
1333	игристое Campo Del Passo Prosecco DOC Millesimatoв п/у 	3,6
1334	игристое Piper-Heidsieck Champagne AOC 	4,0
1335	игристое Martini Brut белое 12%, 750мл	3,6
1336	игристое Ламбруско Дэль Эмилия 	-
1337	игристое Brut Dargent Chardonnay белое брют 11.5%, 750мл	3,7
1338	Laurel's Extra-dry 	-
1339	Набор Мартини Фиеро 1л + Индиан Тоник Rich, 2*330мл	3,8
1340	игристое Riondo Просекко 	4,0
1341	игристое Solvino белое брют, 750мл	-
1342	Набор Мартини Бьянко 1л + Индиан Тоник Rich, 2*330мл	3,8
1343	игристое аэтано Ламбруско дель Эмилия жемчужное 	-
1344	игристое Altoviso Premium выдержанное 	2,4
1345	игристое Рояль Розе белое брют 12.5%, 750мл	-
1346	игристое Мучо Мас 	-
1347	Mar Adentro Altoviso Reserva 	3,3
1348	игристое Casa Coller Rose брют 	3,7
1349	игристое Takar белое экстра брют, 750мл	-
1350	игристое Кава Наверан Брют Винтаж Розе выдержанное экстра брют 	3,7
1351	игристое Гротто Бэй Совиньон Розе Селект сортовое 	4,2
1352	игристое Ombre Просекко Док белое 11%, 750мл	3,7
1353	игристое Гротто Бэй Совиньон Розе Селект экстра брют 	3,7
1354	Игристое вино Пом-Икс абрикоссовое полусладкий 8%, 750мл	3,5
1355	игристое Ламбруско Дэль Эмилия жемчужное 	-
1356	игристое Astrale Prosecco DOC белое брют 11%, 750мл	-
1359	игристое Мысхако Flute Gewurztraminer белое брют 11%, 750мл	3,7
1363	игристо Fanagoria Blanc de Blancs белое брют, 750мл	3,7
1364	игристое Fanagoria Блан де Нуар Белое из чёрного белое брют 11-13%, 750мл	3,7
1365	игристое Chateau Tamagne Ркацители брют белое 11%, 750мл	3,6
1366	игристое Issi Просекко белое брют в подарочной упаковке, 750мл + 2 бокала	3,7
1367	игристое №1 белое брют, 750мл +бокал	-
1368	игристое Pommery Brut Royal белое брют, 1.5л	3,7
1369	игристое Casa Coller белое брют в подарочной упаковке, 750мл	3,7
1370	игристое Gancia Просекко белое брют 11.5%, 4х200мл	-
1371	игристое ZB Wine Спуманте брют белое 12.5%, 750мл	3,6
1372	игристое Мысхако Квинтэссенция Совиньон Блан белое брют 11.5%, 750мл	-
1373	игристое Наследие Мастера Левъ Голицынъ белое брют 10.5%, 200мл	-
1374	игристое Vogue белое брют 13%, 750мл	-
1375	игристое Di Caspico белое брют 12%, 750мл	3,6
1376	игристое Мысхако Flute белое брют 11%, 750мл	3,7
1377	игристое Martini Брют белое брют 11.5% в подарочной упаковке, 750мл	3,7
1378	игристое Gancia Prosecco Brut белое брют, 200мл	3,7
1379	игристое Золотая Балка белое брют 12.5%, 750мл	3,4
1380	игристое Nuviana Cava DO белое брют 11.5%, 750мл	3,7
1381	игристое Maschio Dei Cavalieri Valdobbiadene Prosecco Superiore DOCG Rive di Colbertaldo белое брют 11.5%, 750мл	4,1
1382	игристое La Gioiosa Prosecco DOC Treviso белое брют 9,1-13%, 750мл	3,6
1383	игристое Советское Шампанское белое брют 10.5-12.5%, 750мл	3,4
1384	игристое Tosti Asti DOCG белое сладкое, 750мл	3,3
1385	Напиток слабоалкогольный Santo Stefano Aperini Spritz особый газированный 8%, 750мл	3,1
1386	игристое Gancia Asti DOCG белое сладкое 7.5%, 750мл	3,8
1357	Claroscuro Pinot Noir игристое 	3,8
1358	игристое Cava Jaume Serra белое брют 11.5%, 750мл	3,3
1360	игристое Riondo Collezione Frizzante Brut Garda DOC белое брют 11%, 750мл	3,7
1361	игристое Chateau Tamagne белое брют 13%, 750мл	3,6
1362	игристое Антанс Шампань АР Ленобль выдержанное белое экстра брют 12,5%, 750мл	3,6
1387	игристое Tête de Cheval белое сладкое 12%, 750мл	4,0
1388	игристое Canti Asti DOCG белое сладкое 7%, 750мл	3,3
1389	игристое Riunite D'Oro белое полусладкое 8%, 750мл	3,4
1390	игристое Наследие Мастера Левъ Голицынъ белое полусладкое 10.5%, 750мл	-
1391	игристое Ahso белое полусладкое 12%, 750мл	3,3
1392	игристое Золотая Балка белое полусладкое 12.5%, 750мл	3,3
1393	игристое Di Caspico Фиори ди Маре жемчужное белое полусладкое 11%, 750мл	-
1394	игристое Наследие Мастера Левъ Голицынъ Коронационное белое полусладкое 12.5%, 750мл	3,5
1395	игристое Di Caspico белое полусладкое 11%, 750мл	-
1396	игристое Chateau Tamagne белое полусладкое 13%, 750мл	3,7
1397	игристое Martini Асти белое полусладкое 7.5% в подарочной упаковке, 750мл	3,4
1398	игристое Gancia Просекко Драй белое сухое, 750мл	-
1399	игристое Vogue белое полусухое 13%, 750мл	2,6
1400	игристое Campo del Passo Prosecco DOC белое сухое 11%, 1.5л	3,6
1401	игристое Campo Del Passo Prosecco DOC Millesimatoв п/у белое сухое 11%, 750мл	3,6
1402	игристое Абрау-Дюрсо белое полусухое 12%, 750мл	3,4
1403	игристое Piper-Heidsieck Champagne AOC белое сухое в п/у 12%, 750мл	4,0
1404	игристое Pierre Trichet l'Authentique Brut 1er Cru Champagne AOC белое сухое 12%, 750мл	3,9
1405	игристое Nino Ardevi Просекко белое брют в подарочной упаковке, 750мл + 2 бокала	3,7
1406	игристое Case Paolin Asolo Prosecco Superiore DOCG белое сухое 11.5%, 750мл	3,8
1407	игристое Tête de Cheval белое полусухое 12%, 750мл	4,0
1408	игристое Mayrik Kangun белое полусухое, 750мл	-
1409	игристое Pierre Trichet l'Authentique Demi-Sec 1er Cru Champagne AOC белое полусухое 12%, 750мл	3,8
1410	игристое Takar белое экстра брют 12%, 375мл	-
1411	игристое Ламбруско Дэль Эмилия белое полусладкое, 750мл	3,4
1412	Игристое вино Пом-Икс гранатовое полусладкое 8%, 750мл	3,7
1413	Laurel's Extra-dry белое брют, 750мл	-
1414	игристое аэтано Ламбруско дель Эмилия жемчужное белое полусладкое, 750мл	-
1415	игристое Altoviso Premium выдержанное белое брют, 750мл	3,9
1416	игристое Saint-Hilaire Бланкет де Лиму белое брют 12.5%, 750мл	3,6
1417	игристое Tete de Cheval Брют Резерве белое брют 12% в подарочной упаковке, 750мл	3,6
1418	игристое Zonin Просекко белое брют 11%, 750мл	-
1419	игристое Zonin Просекко белое брют 11%, 200мл	-
1420	игристое Мучо Мас белое экстра драй, 750мл	3,6
1421	игристое Casa Coller Prosecco белое брют п/у, 750мл	3,7
1422	Mar Adentro Altoviso Reserva белое брют, 750мл	3,4
1424	La Marquesa 	3,5
1425	Campo de Vides 	3,8
1427	Gagauzia Reserve Cabernet Sauvignon 	3,4
1428	La Grupa Syrah Malbec 	3,7
1429	Chateau Le Tertre De Leyle 	3,8
1430	Alma Valley Cabernet Sauvignon 	3,8
1431	Chateau Blancard 	3,5
1432	Gagauzia Reserve Merlot 	3,2
1433	Ca'Delle Rose Bardolino 	3,6
1434	Vinha do Rosario Reserva 	3,6
1435	Territori Vocati Россо Монтальчино 	3,5
1436	Castillo de Almansa Крианса 	3,6
1437	Terras do Po 	3,4
1438	ликёрное Altra Terra Kagor 	4,3
1439	Domus Vini Rosso 	4,1
1440	Observer Reserve Syrah 	3,7
1441	Closerie des Alisiers Bourgogne Pinot Noir 	3,3
1442	Портвейн Hooper's Ruby Porto 19 % алк., Португалия, 0,75 л	4,1
1443	Desono Каберне Совиньон 	3,8
1444	Pearly Bay 	3,4
1445	Quinta de Cidro Rufete 	3,8
1446	Alma Valley Merlot 	3,8
1447	Коктебель Кагор высшего качества, 	4,0
1448	Canada Tempranillo-Garnacha 	-
1449	Массандра 	3,8
1450	Observer Grand Reserve Petit Verdot-Cabernet Sauvignon 	3,8
1451	Castillo de Almansa Roble 	3,7
1452	Castelvecchio Piemonte Dolcetto 	-
1453	Lesehof Zweigelt Edition №12 	3,9
1454	Fanagoria Saperavi 	3,6
1455	Портвейн Vintage Vintage Port 2004 20 % алк., Португалия, 0,75 л	4,0
1456	Эшера 	3,8
1457	Quinta dos Aciprestes 	3,8
1458	Асканели Алазанская Долина полусладкое 	3,8
1459	Casa de Santar Reserva 	4,0
1460	Observer Reserve Cabernet Sauvignon 	3,7
1461	Vinha do Rosario 	3,6
1462	Las Pizarras Alarba Garnacha 	3,9
1423	Vinha do Rosario Touriga Nacional 	3,7
1463	Массандра Жемчужина Массандры 	4,1
1486	Dama de Toro Reserva 	-
1487	Dama de Toro Roble 	3,5
1488	La Cova Priorat 	3,8
1489	Appassionante Veneto Cielo e Terra Rosso 	4,1
1490	Lorch Шпетбургундер 	3,2
1491	Casa Ermelinda Freitas Terras do Po 	3,4
1492	Arena de Oro Garnacha 	3,1
1493	Castillo de Almansa Reserva 	3,6
1494	Tres Amigos Tinto Seco сухое 	3,5
1495	Messias Porto Tawny 19.5 % алк., Португалия, 0,75 л	3,3
1496	Casa de Santar 	3,8
1497	Dama de Toro Crianza 	3,7
1498	ликёрное M.Chapoutier Rivesaltes сладкое 	3,9
1499	Castillo de Almansa Seleccion 	3,8
1500	Castelvecchio Langhe Dolcetto 	-
1501	Georgian Wines Алазанская долина 	3,3
1502	Georgian Wines Киндзмараули 	3,9
1503	Chateau La Croix Des Ducs Ля Круа Де Дюк 	3,7
1464	Observer Reserve Carmenere 	3,7
1465	Conde de Tresaguas 	3,6
1466	Beyond Big! Каберне Совиньон 	3,8
1467	Desono Мерло 	3,5
1468	фруктовое Арсия Гранатовое 	4,0
1469	Lorch Dornfelder Trocken 	3,3
1470	Chateau Jeandeman Тур Де Ля Тунелль 	3,6
1471	Territori Vocati Россо Тоскана 	3,5
1472	Observer Reserve Pinot Noir 	3,4
1473	Trenel Coteaux Bourguignons 	3,6
1474	Rudolf Muller Pinot Noir 	3,2
1475	Observer Grand Reserve Syrah-Cabernet Sauvignon 	4,2
1476	Condesa Luna 	3,6
1477	Las Pizarras Fabla 	3,7
1478	Conte Emo Capodilista La Montecchia Ca'Emo 	3,7
1479	Castelvecchio Piemonte Rosso 	3,5
1480	Casa de Santar Амореш 	3,8
1481	Territori Vocati Chianti Classico 	3,8
1482	Mascaradas 	3,7
1483	Sancerre Domaine Franck Millet 	4,0
1484	Esteban Tempranillo Syrah 	3,6
1485	Chanzy Les Fortunes Pinot Noir 	4,0
1504	Mas Oliveras Tempranillo 	3,4
1505	Haussmann Барон Эжен 	3,5
1506	Coteaux Bourguignons Кюве де Тэп де Шатнэ 	3,6
1507	Fernweh Pinot Noir 	4,1
1508	Majano Tempranillo 	2,8
1426	Vinha do Rosario Syrah 	3,8
1509	Batiscafo Garnacha сортовое 	4,0
1510	Саперави сортовое выдержанное 	3,6
1511	Ахоеби сортовое выдержанное 	3,7
1512	Фруктовый Взрыв российское сухое 	-
1513	Карменер Квинтэссенция российское 	-
1514	Марселан российское вино 	3,1
1515	Зинфандель Резерв Лоди Калифорния Футстепс сортовое выдержанное 	-
825	Muga Reserva Rioja DOC 	4,1
1516	Vina Esmeralda Catalunya DO 	4,0
1517	La Quinta Elementa сортовое 	4,0
1518	Верментино Пулья IGT 	3,0
1519	Alta Vista Vive Torrontes 	3,7
1520	Les Chartrons Bordeaux AOC 	3,6
1521	Henri Bourgeois Пуйи-Фюме Ан Травертен 	3,8
1522	Sangre de Toro Verdejo Rueda DO 	3,7
1523	Canti Chardonnay 	3,5
1524	Напиток виноградосодержащий Фрезита 8%, 750мл	-
1525	ESSE Розе 	3,6
1526	Цвайгельт Красностоп Каберне Шато Тамань 	3,6
1527	Паддл Крик Рислинг Розе Мальборо молодое 	3,6
1528	Пфефферер Пинк молодое 	-
1529	Спелая роза сухое 	-
1530	игристое Aristov белое брют 10.5%, 750мл	-
1531	игристое ZB Wine Frizzante жемчужное белое сухое 10%, 750мл	3,9
1532	игристое Pierre Trichet La Puissance Blanc de Noirs Brut Champagne AOC Grand Cru белое сухое 12%, 750мл	4,0
1533	Wines & Beverages of Abkhazia Лыхны 	3,8
1534	Wine Day Bastardo 	2,2
1535	Wines & Beverages of Abkhazia Чегем 	3,7
1536	Wines & Beverages of Abkhazia Апсны 	3,7
1537	Chafariz D.Maria 	3,3
1538	Emporio Nero D`Avola Merlot 	3,3
1539	Pedras Negras 	3,3
1540	Tancia Chianti Riserva 	3,6
1541	Чайка Изабелла 	-
1542	Askaneli Brothers Саперави 	3,6
1543	Wines & Beverages of Abkhazia Эшера 	3,9
1544	Wine Day Rouge 	2,2
1545	Kindzmarauli Marani Mukuzani 	3,8
1546	Wines & Beverages of Abkhazia Радеда 	3,7
1547	Majano Tempranillo-Merlot 	2,8
1548	Chateau Beaumont Chateau D'Arvigny Haut-Médoc 	-
1549	Messias Porto Ruby 	3,7
1550	Paco das Cortes Reserva da Familia 	4,0
1551	Kindzmarauli Marani Kvareli 	3,8
1552	Wines & Beverages of Abkhazia Амра 	3,7
1553	Isla Oro Темпранильо 	3,1
1554	Malgre Органик 	3,7
1555	Clefs Des Legats Кот Дю Рон 	3,3
1556	BW Eclectic Каберне 	3,6
1557	BW Eclectic Изабелла 	3,1
1558	Codos de Larouco Менсия 	3,8
1559	Tempo & Tierra Tempranillo 	3,4
1560	Tempo & Tierra Crianza 	3,4
1561	Las Pizarras Volcan Garnacha 	3,7
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

