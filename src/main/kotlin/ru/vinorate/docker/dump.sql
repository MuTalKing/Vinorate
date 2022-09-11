--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Debian 14.5-1.pgdg110+1)
-- Dumped by pg_dump version 14.5 (Debian 14.5-1.pgdg110+1)

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
-- Name: perekrestok; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.perekrestok (
    id integer NOT NULL,
    name character varying(150) NOT NULL,
    rate character varying(150),
    price character varying(150),
    picture character varying(150)
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
-- Name: perekrestok id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.perekrestok ALTER COLUMN id SET DEFAULT nextval('public.perekrestok_id_seq'::regclass);


--
-- Data for Name: perekrestok; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.perekrestok (id, name, rate, price, picture) FROM stdin;
1	Le Grand Noir Cabernet Sauvignon 	3,9	659,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/46/84/c4f2e59aa4284d46042822c49697.jpg
2	Le Grand Noir Pinot Noir 	3,9	659,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/96/f5/01f47cc9cf17ebe631aedb07f22e.jpg
3	Pirovano Nero d'Avola 	3,7	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d6/d8/761173d06950de5182e9c0db2456.jpg
4	Elegido Tempranillo 	3,8	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/26/b8/f2958ef064a6e9854f30f04b487c.jpg
5	Highway to Hell 	3,8	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/fb/f8/d0f832d1d173b42bf0f4c005666b.jpg
6	Don Florencio Crianza Tarragona DO 	3,7	549,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/dd/c9/3677e9ee6bf564dd15751d061abd.jpg
7	Rouge de Talu 	3,7	399,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/62/2f/2f5758cdf3660494bf22c6b0b3bc.jpg
8	Rauli Syrah 	3,4	429,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/89/ee/75c6e623a53cccd68ed240193745.jpg
9	Appassionatamente Rosso 	3,8	839,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/1e/97/cd314ff4266afcfcd6470f41565b.jpg
10	Poggio Tosco Chianti DOCG 	3,8	669,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ce/34/3b241e4b740fb1a0abb699f6c887.jpg
11	Musita Organic Nero d'Avola 	3,4	549,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/bd/62/4ea5df03ce36b48159cf5134d7fb.jpg
12	АСТ Саперави 	3,5	419,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/6d/56/daa237ee484c3392a7aaafea7dac.jpg
13	Remole Toscana 	3,7	1 369,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/39/06/ac972023f80989bcdd07d3aa50a5.jpg
14	Fetzer Zinfandel Valley Oaks 	4,0	1 149,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/3b/41/2c0375fb3e904e6a133c47bc0d86.jpg
15	TINI Rosso 	3,5	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/43/aa/613f55095a14bc06426c165734e8.jpg
16	19 Crimes 	3,9	1 899,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e7/9f/be22e700af14f9971e60715e6b0c.jpg
17	Ca'Del Poggio Terre Siciliane 	3,5	659,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d7/c0/b06b95732ca1f09cba97fe4c2ff3.jpg
18	Sobreiro de Pegoes Premium 	3,7	679,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/8d/cb/64f84045e3ec26f3257bdffcc284.jpg
19	Karas 	4,0	1 599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/24/78/87d0bd596eabca885xd6762fb331.jpg
20	Solano Monastrell Jumilla DO 	3,4	379,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/11/99/1da0959338fe3da9be1e9d2dfb85.jpg
21	Barefoot Zinfandel 	3,6	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7f/a0/4bb76e978c7de5974dd26e8ca35e.jpg
22	Pirovano Sangiovese Rubicone 	3,4	584,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d7/c4/68fb27e1ef415d2df6ed14fdbf45.jpg
23	Luna Valley 	3,6	549,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/26/51/73a854fd4cb97067409fa372fdc5.jpg
24	Eugene Martin Cotes du Rhone AOC 	3,6	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0c/c9/fef6a48fa6b77a1d63a966faf9e5.jpg
25	Don Florencio Reserva Tarragona DO 	4,0	699,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/cd/89/595e6e3d189a3be3538a1dbc7890.jpg
26	Alma Valley Red 	3,2	549,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/23/90/fc0e7714b6577c6a2aec553d2d36.jpg
27	Gran Passione Appassimento Rosso 	4,0	1 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/27/9b/4a5xd40d26a92d741d2cb931140e.jpg
28	Castillo Santa Barbara Reserva Valdepenas DO 	3,6	579,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d6/48/e25f8ff0456a0ceed5b751535409.jpg
29	Castillo Santa Barbara Crianza Valdepenas DO 	3,6	499,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/97/de/0d7dd71709809ef671c57b0f5908.jpg
30	19 Crimes The Banished 	4,0	1 949,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/03/7e/92d3bc15993655439fa40a4709bf.jpg
31	Raices Reserva Valdepenas DO 	3,7	854,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7d/3d/57fc0d3e7c233ceaca2f52eac867.png
32	Ed Knows Мерло 	3,7	659,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/14/4f/fa5e0b94058529fd2b10cb6ea213.jpg
33	Takar Арени 	3,9	699,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/97/2e/a8210xd277ec134480da7c01c560.jpg
34	Chateau Pinot Гравитация Пино Нуар/Саперави 	3,7	799,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9a/b0/d5f13ccbf5926de5962ec2fbaafd.jpg
35	Negrar Corvina 	3,6	799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/87/72/65997ae34ae80cf83ca2bcdbf3f1.jpg
36	Monte Real Tempranillo Rioja DOC 	3,4	1 059,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/8f/d5/961553da0d04c62369a665a99b3d.jpg
37	Pais El Autoctono Secano Interior DO 	3,7	629,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/50/bc/354c6xd84f621bcf44881681dd86.jpg
38	Mr. Jenares Seleccion 	3,8	829,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/36/73/be9120d5d1d1a2f2ece99be17570.jpg
39	Heinz Eifel Spatburgunder 	3,8	979,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/6d/6a/2d95a54e10b58f7142da796b2b25.jpg
40	Poggio Tosco Chianti DOCG Riserva 	4,1	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4f/c6/f47506a90xdec0332f91a24bd681.jpg
41	Fort du Mirail Bergerac AOC 	3,4	849,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9d/c7/4c2c1e7f349d515e8f98912a8c9d.jpg
42	Astrale 	4,1	1 599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ee/1e/a4b9f63c3d1666b3c05796d44924.jpg
43	Appassimento Segreto Rosso Salento 	4,1	1 149,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/32/a2/79b852e0d51b300914529c7604fc.jpg
44	Pirovano Collezione Primitivo Puglia 	3,7	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7c/fe/200e68ea84d56866d627f78206ce.jpg
45	Collezione Costantino Primitivo Di Manduria DOC 	3,9	939,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b3/3f/1d42b8690e241acc1b1ed544e92e.jpg
46	Chateau Tamagne Красностоп-Анчелотта 	3,3	309,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0f/b8/0a7f234bac40dcfcd075a66bec3b.jpg
47	Oyster Bay Pinot Noir Marlborough 	3,5	1 779,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/06/b5/928d6c7d1dd3xdcc93119d92f41e.jpg
48	Cа' Del Poggio Nerello Mascalese 	3,5	659,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0f/70/cbfeb633a153d218db7f8de448f2.jpg
49	Inspirado Carmenere 	3,6	399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4a/9e/78d5948e10c9975418af24fa7436.jpg
50	Paladin Drago Rosso столовое 	4,1	1 319,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a4/12/144963bda82122147d9c494bdb52.jpg
51	Badagoni Саперави 	3,6	319,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/31/98/94a5acf162f2082857f7581b7b26.jpg
52	Ionos Red 	3,3	699,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e0/f6/43237be3d5f5b73ae749d8588c02.jpg
53	Wine in Tube Tempranillo 	3,3	1 849,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/db/43/e044984490a6eab3973c6a55cc8d.jpg
54	Cultus Organic Tempranillo 	3,6	829,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/40/59/f3ffa6a9ba6c5bab91c12c2790cd.jpg
55	Beefsteak Club The Mini Malbec 	3,4	449,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a3/7a/dcb44b8a0439be29546638e37185.jpg
56	Quinta das Amoras Tinto 	3,7	889,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b0/bc/fe5cb5c787cce7479469bf1fb53f.jpg
57	Rauli Merlot 	3,4	419,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/de/83/3c2d8530ed01327114a88d57d1c0.jpg
58	Matsu El Picaro Toro DO 	3,9	1 479,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/43/68/2a2561a2cffe1a1482bfc3eaa84f.jpg
59	Chateau Tamagne Каберне 	3,4	349,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/57/87/b73e00dd2c71b6cdd2e12b46def8.jpg
60	Raices Gran Reserva Valdepenas DO 	3,5	914,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5a/18/c2f51064c2ae6a418da16f314392.jpg
61	Cuvee Blanc Terrier Rouge 	3,6	699,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a5/6f/5235f10bfa08cf08f80c2ca53595.jpg
62	Sant'Orsola Montepulciano d'Abruzzo DOC 	3,4	799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/xd/bc/c51ebd88e877ab49561e98d136b7.jpg
63	Vespucci Chianti DOCG 	-	917,81 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/8b/3f/0d83b9c7551172d48f656929b6fe.jpg
64	Villa Antinori Rosso 	-	2 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/95/cc/48de6a056077f628817c448ea682.jpg
65	J.Bouchon Cabernet Sauvignon Reserva Maule Valley DO 	3,5	1 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ed/fa/7ab5a7d6bbde80470bf1ff9326fc.jpg
66	Melini Chianti Riserva DOCG 	3,6	959,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/06/b9/17498d780a9a5b7aafac001a94cd.jpg
67	Dos Caprichos Crianza Rioja DOC 	4,1	769,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/8e/37/9407f02d74a399bf2801c5b02f8c.jpg
68	Fyi Red Blend 	3,8	1 349,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/06/ca/436e9d8eb05518263d75c8d62e49.jpg
69	Chateau De Talu Море волнуется два 	3,6	499,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/35/e5/a91b4db8d15d571615cf48470837.jpg
70	Солнечная Долина ПТИ ВЕРДО 	3,4	799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/85/01/77b2013ca61566ba1972076572f8.jpg
71	Septimania Пино Нуар 	3,4	799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/94/c4/9cc8e1dcecae9e2c026399495c3f.jpg
72	Castillo de Ayud Calatayud 	3,9	1 290,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c4/2c/f8d20babf832ed818fabee7e8845.jpg
73	Aristov Anima Ancellotta 	3,6	549,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a3/14/e83c83b7b8553dcbdfae7c9a861c.jpg
74	De Wetshof Danie de Wet Pinotage 	3,7	1 249,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e4/5c/bd01b928fd28282f56007bb8b24a.jpg
75	Poggio Passo Malvasia Nera 	3,7	829,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/53/c2/68af61615274037ab07ebcaa1a0c.jpg
76	Negrar Amarone della Valpolicella DOCG 	4,0	1 899,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/df/73/57bdf4fa3b135e76a87aee3dc3ce.jpg
77	Lunatico Primitivo 	3,6	929,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c7/08/f807d2c9f6799103de8e0111efe5.jpg
78	Maradi Саперави 	3,1	619,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/fa/78/98f162aac6ab0233b696e2e4ffa4.jpg
79	Tre Stelle Aglianico del Vulture DOC полусухое 13.5%, 750мл	3,7	999,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9d/60/5ea6d53572c55f86dd56f9625a92.jpg
80	Lunatico Negroamaro 	3,9	919,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/54/6b/d4135f9c704caa0d5a218e59eaa2.jpg
81	Negrar Appassimento 	4,1	939,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/1b/13/5b5bd348683b17e1f95591e3fb73.jpg
82	Septimania Сира 	3,7	799,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b4/76/6c0734d2dbc3df1c87d320ec3722.jpg
83	Mayrik 	3,7	449,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a9/18/c216d9b5d33fc5bd0cfa2b5b3d9d.jpg
84	La Miranda Secastilla Garnacha Somontano DO 	3,8	929,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c1/bd/1ca39a2b2f04ed9749c67a3e8077.jpg
85	Born to be Wild 	3,8	939,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/91/85/9bb1b8db4b4474495aa5ca613eb8.jpg
86	Pas si Vite Grande Reserve 	4,2	889,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a1/76/d58239655abd806b96f7fa9ec870.jpg
87	Tentation du Sud 	4,2	899,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/28/1f/b738451b3637dcbf4a7cfe22a369.jpg
88	Gulfstream Cabernet Sauvignon-Shiraz 	4,2	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/af/f0/af3743eddb000e497251b64607a9.jpg
89	Mr. Jenares Monastrell 	3,7	829,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ac/f1/5a582bc6d93c5b22f24cb8926bef.jpg
90	Yalumba Organic Shiraz 	3,6	2 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/62/25/f4348cf0abfc553aa95bb191a34b.jpg
91	Fetzer Zinfandel Valley Oaks 	3,4	1 499,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/2a/62/5e641b7162b9802eaf0e0dae566d.jpg
92	Chocoholic Pinotage 	3,7	999,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/6a/ea/4857be81c559b30f71a1e4fce3d8.jpg
93	Masseria Doppio Passo Primitivo-Zinfandel 	4,0	1 319,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4a/a8/cac0b8ce54ed1e51c8dee21d860d.jpg
94	Masseria Doppio Passo Copertino DOC Riserva 	4,0	1 149,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/74/a0/1xda73c630d8950e1b4027f08513.jpg
95	Simonsig Cabernet Sauvignon-Shiraz 	3,6	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/22/ac/4a09314525800861124a23992d94.jpg
96	Doppio Passo Primitivo BIO 	3,9	1 249,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4a/b8/fbd6d7edaaa83dc168ffac31afac.jpg
97	Norton Reserva Malbec 	3,9	2 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/bd/22/604d36427269ed3216bd275ff4d0.jpg
98	Signos Red Blend 	3,6	1 449,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ea/21/2xd91d3b41d206977212ef3209b3.jpg
99	Signos Malbec 	3,7	1 449,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0b/7d/fb763abe3e67268e075f05aae542.jpg
100	Cranswick Lakefield Shiraz 	3,5	969,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9b/a5/092606718bfcxd21e8de6c174ff5.jpg
101	Vecchia Cantina Chianti DOCG Riserva 	3,7	1 699,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/23/80/1f9bccb15c42953c48366d2b0ba9.jpg
102	Vecchia Cantina Chianti DOCG Bio 	3,7	1 549,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7a/a2/9c2e5c86de9629a2b574c9346af4.jpg
103	Gamla Cabernet Sauvignon 	3,9	2 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e3/6e/89362540b8dd21cfeaccc012730d.jpg
104	Catena Malbec Mendoza 	4,0	2 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/6c/01/bf356751b148c7b00b09ae8c7ecf.jpg
105	Escudo Rojo Carmenere Reserva Colchagua Valley DO 	3,8	2 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b7/ae/8e26dc0da180b193bbe2ee2f821c.jpg
106	Little Beauty Pinot Noir Marlborough 	4,0	3 699,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/32/6f/869fd14d41bfe9d76a34efd6e706.jpg
107	19 Crimes The Uprising 	4,0	1 949,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/57/c8/cba3c39a55d3ddf72471c4ab5e0c.jpg
108	Alamos Malbec 	3,7	1 499,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/83/7d/6b97a4cf109b50cea7a5b1881ea8.jpg
109	La Braccesca Vino Nobile di Montepulciano DOCG 	3,9	2 799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0d/c0/cca2d5e512c2a92cface647e10a8.jpg
110	Barahonda Summum Monastrel Yecla DO 	4,2	3 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/77/bd/04cbd399988eb3b685xdf27c79c4.jpg
111	Barahonda El Bicho Raro Yecla DO 	3,9	2 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/1e/ea/d6734c1c6561ddedd5e71e7de096.jpg
112	d`Arenberg The Footbolt Shiraz 	3,7	2 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c2/8f/f3d4460333dd5ce8dda5d4d9bb22.jpg
113	Boyante Tempranillo Organico Ribera del Duero DO 	3,6	979,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/83/9e/daa81ef9bfb8ccfd525892419264.jpg
114	Boyante Roble Ribera del Duero DO 	3,8	979,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ae/8b/6a56c70d124ace0f0c8e6c5747e7.jpg
115	Neprica Primitivo 	3,8	1 599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f6/9b/8f49e6dc6729e32xd098b8493c7d.jpg
116	Pagos del Rey Condado de Oriza Tempranillo Ribera del Duero DO 	3,5	1 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9d/26/3ee79b69e74cd2108a43fdb57b4f.jpg
117	Point Blauer Zweigelt 	3,8	1 799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/25/aa/f23807a6fcfb7784be319e6be628.jpg
118	Louis Jadot Couvent des Jacobins Bourgogne AOC Rouge 	3,6	2 799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9f/51/9e323e9696e5fa029512257782c1.jpg
119	Lucente Toscana IGT 	4,4	3 599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ac/e0/5587ec765418a101b50f10d40d97.png
120	Pianirossi Sidus Montecucco DOC 	3,8	2 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f5/6f/520525036f362cb74b18251f759b.jpg
121	Долина Привидений Каберне Совиньон 	2,4	279,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f2/79/f48064c5f7fc511fdf11ff1bd408.jpg
122	Tenuta il Poggione Brunello di Montalcino DOCG 	4,2	4 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d1/41/8e92b6228caedc76f143a6d1bde0.jpg
123	Stobi Verdot Private Reserve 	3,7	1 799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/16/50/01c709f2d5647277c8933f41dd26.jpg
124	Cristo di Campobello C’D’C’ Rosso 	3,8	1 999,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/29/5b/f872539dbf574e92c17e71b54466.jpg
125	Ramon Bilbao Edicion Limitada 	4,0	2 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ab/75/966be5128087e0e4d3536081c1cb.jpg
126	Simonsig Redhill Pinotage 	4,2	2 899,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e9/ef/46742958588f1218a1995221d085.jpg
127	Simonsig Merindol Syrah 	4,0	3 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c1/ef/4d68b0bf1c0f44edac17f8cc3620.jpg
128	d`Arenberg The Laughing Magpie 	3,7	3 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/42/1d/680c39a76b8b10fc7683e26bf652.jpg
129	Vajra Dolcetto d'Alba DOC 	3,8	2 599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/15/27/7a99c30c7ebdaea56e126a8a3202.jpg
130	Vajra Langhe Rosso DOC 	3,8	2 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/85/14/3dfdff1362ae3a0055xda937f3ec.jpg
131	Sela Rioja DOC 	3,9	3 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/43/3a/ee9cd42916644c081xd21501324c.jpg
132	Yalumba The Y Series Shiraz 	3,6	1 699,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/8b/fb/db89419763a5aa9cf5f6ee778266.jpg
133	Tchotiashvili Саперави Рчеули Квеври 	4,0	2 899,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d8/49/7af634d013496c08d6fb3751ec55.jpg
134	Beck Blaufränkisch 	3,8	3 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/60/e0/733671d213516c2182baba0d4137.jpg
135	Gentleman Oltrepo Pavese DOC 	3,5	1 899,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/55/db/72db29c0e7925686b1e4a3032285.jpg
136	Alta Vista Vive Malbec 	3,6	1 499,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/86/c6/f3f36cd7c1a99fb14ac6a2ba1db7.jpg
137	Резерв Винодела Каберне Совиньон 	3,4	299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e8/b3/5c0546e3b3a2d7910a936a8442ca.jpg
138	Резерв Винодела Мерло 	3,4	299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ee/d2/d1f309b07a1f1bbcf340119a9145.jpg
139	Romain Duvernay Cotes-du-Rhone Villages AOC Seguret 	3,7	1 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/8c/3d/dacf3ebea56ce0d570c19cc4816e.jpg
140	Jardin Fleury Syrah 	3,7	849,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/25/36/ce140edba40ab777a3022585d1d6.jpg
141	The Wine System Tinturio Navarra DO 	3,7	699,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/76/55/48bd10c19d4c4e481ca95d7e2df5.jpg
142	Bründy Zweigelt 	3,7	899,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4f/bc/9d165a232d7c8806879a3071e0d6.jpg
143	Mapu Cabernet Sauvignon Maule Valley DO 	3,5	1 149,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/76/e9/0a2ccc66a998a2b9c3da91261f6b.jpg
144	El Pacto Rioja DOC 14%, 750мл	3,9	2 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/39/02/ba65f6fe9835cc6cefc3a15c093c.jpg
145	Абрау-Дюрсо Каберне Совиньон 	3,5	1 449,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4c/a0/dc6135af271c0edb6b52006061d0.jpg
146	Corvo Rosso 	3,5	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a8/55/728f3e27257011b8a271c58c5055.jpg
147	Мысхако Quintessence Cabernet Sauvignon 	4,1	749,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/90/01/f91968330191b8c7c2755f2f62f0.jpg
148	Collezione Costantino Organic Amorcor 	3,9	789,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4e/16/55df87a6bc12c81a038e317ff912.jpg
149	Chateau Pinot Pinot Noir 	-	959,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/27/4a/22950eec696f1aeeeef1052c2731.jpg
150	Chateau Pinot Shiraz 	-	959,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7a/f6/46750b5bb3142553455eb289axd7.jpg
151	Suggestion du Chef Merlot 	3,8	799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4d/cb/22ed8b27a94f8482bc2c0b4b55af.jpg
152	Musita Regieterre Nerello Mascalese 	3,7	959,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/99/0b/7cd0c24697c8eb187cefd48d7cac.jpg
153	Gaetano Montepulciano d'Abruzzo DOC 	3,3	899,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/2e/57/42ea15d9cbb60630c0dc1e8d8c22.jpg
154	Имение Сикоры Каберне Совиньон 	3,9	1 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f0/d3/cee47e3997e5e6dd9fcf0fdd2b8f.jpg
155	Инкерман Каберне Резерв 	3,9	819,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c7/3d/27ec2363af17baaa4f4dc1f01e6c.jpg
156	Инкерман Каберне 	3,9	399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b9/63/b3326f6c9ec2df314265e6b98281.jpg
157	B.IO Sangiovese di Romagna DOC 	3,6	1 039,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9c/9b/ee68811ee996d8f39425bd24150a.jpg
158	Terre de Schiste 	3,6	1 019,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/64/e7/6xd06d6fe3649a1ced1f6fdf1c01.jpg
159	Duca di Saragnano Governo Rosso Toscano 	3,6	859,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b1/4f/814f3321c6b8b01e558d92558478.jpg
160	Conti Sani Chianti Classico DOCG Primum 	4,0	989,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/98/41/01e54f58ab29ceb0555285234fe8.jpg
161	Podere Montepulciano d'Abruzzo DOC 	3,6	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0a/e4/9bf4d41385c8e74b7ab53fae4217.jpg
162	Camins del Priorat DOC 	4,0	3 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/6b/bc/7d086ac83303d55xd0e9b9514ebb.jpg
163	Emilio Moro Ribera del Duero DO 	4,0	3 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/40/23/b15edfcea0ea05d2156a5edee3ab.jpg
164	Ahso Саперави 	3,5	989,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/78/0c/c678466489xd94ba0da7bde8f9b9.jpg
165	Kvareli 	4,1	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a7/6a/cd6b3960084c964a49230e313beb.jpg
166	B.IO Nero d'Avola Cabernet 	3,3	829,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c7/4e/42ee07f48b91a57384dec9cfb509.jpg
167	B.IO Nero d'Avola Il Nero 	3,3	1 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/cb/94/5f4d4810a835518abb5c5e2d54a8.jpg
168	Planeta La Segreta Nero d'Avola 	3,5	1 649,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/98/15/41fe599e96a3a2475ed4a06ef27c.jpg
169	47 Anno Domini Piantaferro Syrah Sicilia IGT 	3,7	859,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/1d/06/d804b68de09f3e0a4ca7bd05183b.jpg
170	Passo Sardo Cannonau di Sardegna DOC 	3,6	1 449,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f0/19/acb3523cb015eccf6684d98cf7c2.jpg
171	KWV Classic Collection Cabernet Sauvignon 	3,5	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/da/a4/1c03d0680064f0a33e3198df13c6.jpg
172	Vega Sindoa Tempranillo Navarra DO 	3,4	799,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/29/fa/3d2fe47ba6e78fe574acee1457e8.jpg
173	Masi Modello Trevenezie IGT 	3,4	869,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/39/a4/3b8d6828243ce5fbb3a21b021bf7.jpg
174	Claroscuro Malbec Mendoza 	3,9	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a1/10/f638d2b2cf32xda8428775d0c0a8.jpg
175	Fontanafredda Briccotondo Barbera Piemonte DOC 	3,6	1 499,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d0/68/9c8117e26d6a3727eb917d606156.jpg
176	Turtle Dreaming Cabernet Sauvignon-Shiraz 	3,8	929,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f9/20/228b26960d70e245702e3b6db876.jpg
177	Diaz Bayo 8 Meses Barrica Ribera del Duero DO 	3,8	1 649,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/31/36/1c8e1551cb1e402e269dd2dc8718.jpg
178	Tavernello Sangiovese Organico 	3,6	869,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/eb/30/8990489ce6f21ddcc4173a88be2e.jpg
179	MV Malbec Reserve 	3,7	799,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/75/5a/1749a8e70cc09bafc4aa97ed81e7.jpg
180	Chateau Tamagne Reserve Premier Rouge 	3,7	779,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/17/8b/9cdbe4a20b5301d370e8a63b2ef6.jpg
181	Tavernello Syrah Organico 	3,9	869,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c1/01/e00ab4da0fa9b86bf6ed38960f5f.jpg
182	Вина Тавадзе Мукузани 	3,7	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5c/b4/9ddc8bd35ccc6fc8e38ae4f5fbd6.jpg
183	Destination Rouge Bordeaux AOC 	3,7	859,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/cb/c4/6c4b04983c29a3f9xd28055f318d.jpg
184	Cono Sur Tocornal Cabernet Sauvignon 	3,3	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/26/f2/59495078edf4862b2f66ed148827.jpg
185	Chateau Tamagne Терруарное Саперави - Красностоп 	3,8	999,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a0/11/6cdee7712d98f970007e87ae3ced.jpg
186	Salida Tannat 	3,6	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9b/c7/b43f546f5afdec29b69ae76285e0.jpg
187	Эшера 	3,8	499,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9b/b0/192fa64d301851ca6e040bc69fb5.jpg
188	Ликурия Терруар 	3,6	859,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/64/53/c345c412c49655249bc92e2b0c6f.jpg
189	Chateau Moulin Riche Saint-Julien AOC 	4,1	3 599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9d/91/95f057b1aac42aa4498cfb72xd4c.jpg
190	Masi Bonacosta Valpolicella Classico DOC 	3,5	1 899,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c9/14/78c21f29b2ee4e19b235421b7140.jpg
191	Masi Modello Corvina Verona IGT 	3,6	1 669,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/88/21/c9654c06cc03781d42026dc7b3e4.jpg
192	Barefoot Cabernet Sauvignon 	3,3	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/1b/be/cb455968a189113d1aeb415a796e.jpg
193	Matsu El Viejo Toro DO 	4,3	5 599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/97/d6/e966e814a44f6222f1afa87c2576.jpg
194	Chateau Tamagne Каберне 	3,4	136,95 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4a/26/bac99c02ccc9c2838c79d287543a.jpg
195	Raices Gran Reserva Valdepenas DO 	3,5	914,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5a/18/c2f51064c2ae6a418da16f314392.jpg
196	Cuvee Blanc Terrier Rouge 	3,6	699,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a5/6f/5235f10bfa08cf08f80c2ca53595.jpg
197	Sant'Orsola Montepulciano d'Abruzzo DOC 	3,4	799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/xd/bc/c51ebd88e877ab49561e98d136b7.jpg
198	Vespucci Chianti DOCG 	-	917,81 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/8b/3f/0d83b9c7551172d48f656929b6fe.jpg
199	Villa Antinori Rosso 	-	2 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/95/cc/48de6a056077f628817c448ea682.jpg
200	J.Bouchon Cabernet Sauvignon Reserva Maule Valley DO 	3,5	1 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ed/fa/7ab5a7d6bbde80470bf1ff9326fc.jpg
201	Melini Chianti Riserva DOCG 	3,6	959,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/06/b9/17498d780a9a5b7aafac001a94cd.jpg
202	Dos Caprichos Crianza Rioja DOC 	4,1	769,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/8e/37/9407f02d74a399bf2801c5b02f8c.jpg
203	Fyi Red Blend 	4,1	1 349,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/06/ca/436e9d8eb05518263d75c8d62e49.jpg
204	Chateau De Talu Море волнуется два 	3,6	499,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/35/e5/a91b4db8d15d571615cf48470837.jpg
205	Солнечная Долина ПТИ ВЕРДО 	3,4	799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/85/01/77b2013ca61566ba1972076572f8.jpg
206	Septimania Пино Нуар 	3,4	799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/94/c4/9cc8e1dcecae9e2c026399495c3f.jpg
207	Castillo de Ayud Calatayud 	3,9	1 290,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c4/2c/f8d20babf832ed818fabee7e8845.jpg
208	Aristov Anima Ancellotta 	3,9	549,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a3/14/e83c83b7b8553dcbdfae7c9a861c.jpg
209	De Wetshof Danie de Wet Pinotage 	3,7	1 249,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e4/5c/bd01b928fd28282f56007bb8b24a.jpg
210	Poggio Passo Malvasia Nera 	3,7	829,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/53/c2/68af61615274037ab07ebcaa1a0c.jpg
211	Negrar Amarone della Valpolicella DOCG 	4,0	1 899,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/df/73/57bdf4fa3b135e76a87aee3dc3ce.jpg
212	Lunatico Primitivo 	3,6	929,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c7/08/f807d2c9f6799103de8e0111efe5.jpg
213	Maradi Саперави 	3,1	619,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/fa/78/98f162aac6ab0233b696e2e4ffa4.jpg
214	Tre Stelle Aglianico del Vulture DOC полусухое 13.5%, 750мл	3,7	999,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9d/60/5ea6d53572c55f86dd56f9625a92.jpg
215	Lunatico Negroamaro 	3,9	919,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/54/6b/d4135f9c704caa0d5a218e59eaa2.jpg
216	Negrar Appassimento 	4,1	939,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/1b/13/5b5bd348683b17e1f95591e3fb73.jpg
217	Septimania Сира 	3,7	799,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b4/76/6c0734d2dbc3df1c87d320ec3722.jpg
218	Mayrik 	3,7	449,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a9/18/c216d9b5d33fc5bd0cfa2b5b3d9d.jpg
219	La Miranda Secastilla Garnacha Somontano DO 	3,8	929,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c1/bd/1ca39a2b2f04ed9749c67a3e8077.jpg
220	Born to be Wild 	3,8	939,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/91/85/9bb1b8db4b4474495aa5ca613eb8.jpg
221	Pas si Vite Grande Reserve 	4,2	889,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a1/76/d58239655abd806b96f7fa9ec870.jpg
222	Tentation du Sud 	4,2	899,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/28/1f/b738451b3637dcbf4a7cfe22a369.jpg
223	Gulfstream Cabernet Sauvignon-Shiraz 	4,2	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/af/f0/af3743eddb000e497251b64607a9.jpg
224	Mr. Jenares Monastrell 	3,7	829,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ac/f1/5a582bc6d93c5b22f24cb8926bef.jpg
225	Yalumba Organic Shiraz 	3,6	2 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/62/25/f4348cf0abfc553aa95bb191a34b.jpg
226	Fetzer Zinfandel Valley Oaks 	4,0	1 499,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/2a/62/5e641b7162b9802eaf0e0dae566d.jpg
227	Chocoholic Pinotage 	3,7	999,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/6a/ea/4857be81c559b30f71a1e4fce3d8.jpg
228	Masseria Doppio Passo Primitivo-Zinfandel 	4,0	1 319,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4a/a8/cac0b8ce54ed1e51c8dee21d860d.jpg
229	Masseria Doppio Passo Copertino DOC Riserva 	4,0	1 149,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/74/a0/1xda73c630d8950e1b4027f08513.jpg
230	Doppio Passo Primitivo BIO 	4,0	1 249,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4a/b8/fbd6d7edaaa83dc168ffac31afac.jpg
231	Norton Reserva Malbec 	3,7	2 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/bd/22/604d36427269ed3216bd275ff4d0.jpg
232	Signos Red Blend 	-	1 449,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ea/21/2xd91d3b41d206977212ef3209b3.jpg
233	Signos Malbec 	-	1 449,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0b/7d/fb763abe3e67268e075f05aae542.jpg
234	Cranswick Lakefield Shiraz 	3,5	969,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9b/a5/092606718bfcxd21e8de6c174ff5.jpg
235	Vecchia Cantina Chianti DOCG Riserva 	3,7	1 699,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/23/80/1f9bccb15c42953c48366d2b0ba9.jpg
236	Vecchia Cantina Chianti DOCG Bio 	3,7	1 549,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7a/a2/9c2e5c86de9629a2b574c9346af4.jpg
237	Gamla Cabernet Sauvignon 	3,9	2 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e3/6e/89362540b8dd21cfeaccc012730d.jpg
238	Catena Malbec Mendoza 	4,0	2 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/6c/01/bf356751b148c7b00b09ae8c7ecf.jpg
239	Escudo Rojo Carmenere Reserva Colchagua Valley DO 	3,8	2 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b7/ae/8e26dc0da180b193bbe2ee2f821c.jpg
240	Little Beauty Pinot Noir Marlborough 	4,0	3 699,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/32/6f/869fd14d41bfe9d76a34efd6e706.jpg
241	19 Crimes The Uprising 	4,0	1 949,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/57/c8/cba3c39a55d3ddf72471c4ab5e0c.jpg
242	Alamos Malbec 	3,7	1 499,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/83/7d/6b97a4cf109b50cea7a5b1881ea8.jpg
243	La Braccesca Vino Nobile di Montepulciano DOCG 	3,9	2 799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0d/c0/cca2d5e512c2a92cface647e10a8.jpg
244	Barahonda Summum Monastrel Yecla DO 	4,2	3 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/77/bd/04cbd399988eb3b685xdf27c79c4.jpg
245	Barahonda El Bicho Raro Yecla DO 	3,9	2 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/1e/ea/d6734c1c6561ddedd5e71e7de096.jpg
246	d`Arenberg The Footbolt Shiraz 	3,7	2 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c2/8f/f3d4460333dd5ce8dda5d4d9bb22.jpg
247	Boyante Tempranillo Organico Ribera del Duero DO 	3,6	979,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/83/9e/daa81ef9bfb8ccfd525892419264.jpg
248	Boyante Roble Ribera del Duero DO 	3,8	979,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ae/8b/6a56c70d124ace0f0c8e6c5747e7.jpg
249	Neprica Primitivo 	3,8	1 599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f6/9b/8f49e6dc6729e32xd098b8493c7d.jpg
250	Pagos del Rey Condado de Oriza Tempranillo Ribera del Duero DO 	3,5	1 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9d/26/3ee79b69e74cd2108a43fdb57b4f.jpg
251	Point Blauer Zweigelt 	3,8	1 799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/25/aa/f23807a6fcfb7784be319e6be628.jpg
252	Louis Jadot Couvent des Jacobins Bourgogne AOC Rouge 	3,6	2 799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9f/51/9e323e9696e5fa029512257782c1.jpg
253	Lucente Toscana IGT 	4,4	3 599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ac/e0/5587ec765418a101b50f10d40d97.png
254	Pianirossi Sidus Montecucco DOC 	3,8	2 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f5/6f/520525036f362cb74b18251f759b.jpg
255	Долина Привидений Каберне Совиньон 	2,4	279,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f2/79/f48064c5f7fc511fdf11ff1bd408.jpg
256	Tenuta il Poggione Brunello di Montalcino DOCG 	4,2	4 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d1/41/8e92b6228caedc76f143a6d1bde0.jpg
257	Stobi Verdot Private Reserve 	3,7	1 799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/16/50/01c709f2d5647277c8933f41dd26.jpg
258	Cristo di Campobello C’D’C’ Rosso 	3,8	1 999,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/29/5b/f872539dbf574e92c17e71b54466.jpg
259	Ramon Bilbao Edicion Limitada 	4,0	2 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ab/75/966be5128087e0e4d3536081c1cb.jpg
260	Simonsig Redhill Pinotage 	4,2	2 899,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e9/ef/46742958588f1218a1995221d085.jpg
261	Simonsig Merindol Syrah 	4,0	3 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c1/ef/4d68b0bf1c0f44edac17f8cc3620.jpg
262	d`Arenberg The Laughing Magpie 	3,7	3 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/42/1d/680c39a76b8b10fc7683e26bf652.jpg
263	Vajra Dolcetto d'Alba DOC 	3,8	2 599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/15/27/7a99c30c7ebdaea56e126a8a3202.jpg
264	Vajra Langhe Rosso DOC 	3,8	2 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/85/14/3dfdff1362ae3a0055xda937f3ec.jpg
265	Sela Rioja DOC 	3,9	3 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/43/3a/ee9cd42916644c081xd21501324c.jpg
266	Yalumba The Y Series Shiraz 	3,6	1 699,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/8b/fb/db89419763a5aa9cf5f6ee778266.jpg
267	Tchotiashvili Саперави Рчеули Квеври 	4,0	2 899,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d8/49/7af634d013496c08d6fb3751ec55.jpg
268	Beck Blaufränkisch 	3,8	3 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/60/e0/733671d213516c2182baba0d4137.jpg
269	Gentleman Oltrepo Pavese DOC 	3,5	1 899,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/55/db/72db29c0e7925686b1e4a3032285.jpg
270	Alta Vista Vive Malbec 	3,6	1 499,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/86/c6/f3f36cd7c1a99fb14ac6a2ba1db7.jpg
271	Резерв Винодела Каберне Совиньон 	3,4	299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e8/b3/5c0546e3b3a2d7910a936a8442ca.jpg
272	Резерв Винодела Мерло 	3,4	299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ee/d2/d1f309b07a1f1bbcf340119a9145.jpg
273	Jardin Fleury Syrah 	3,7	849,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/25/36/ce140edba40ab777a3022585d1d6.jpg
274	The Wine System Tinturio Navarra DO 	3,7	699,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/76/55/48bd10c19d4c4e481ca95d7e2df5.jpg
275	Bründy Zweigelt 	3,7	899,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4f/bc/9d165a232d7c8806879a3071e0d6.jpg
276	Mapu Cabernet Sauvignon Maule Valley DO 	3,5	1 149,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/76/e9/0a2ccc66a998a2b9c3da91261f6b.jpg
277	El Pacto Rioja DOC 14%, 750мл	3,9	2 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/39/02/ba65f6fe9835cc6cefc3a15c093c.jpg
278	Абрау-Дюрсо Каберне Совиньон 	3,5	1 449,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4c/a0/dc6135af271c0edb6b52006061d0.jpg
279	Corvo Rosso 	3,5	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a8/55/728f3e27257011b8a271c58c5055.jpg
280	Мысхако Quintessence Cabernet Sauvignon 	4,1	749,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/90/01/f91968330191b8c7c2755f2f62f0.jpg
281	Chateau Pinot Pinot Noir 	-	959,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/27/4a/22950eec696f1aeeeef1052c2731.jpg
282	Chateau Pinot Shiraz 	-	959,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7a/f6/46750b5bb3142553455eb289axd7.jpg
283	Musita Regieterre Nerello Mascalese 	3,7	959,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/99/0b/7cd0c24697c8eb187cefd48d7cac.jpg
284	Gaetano Montepulciano d'Abruzzo DOC 	3,3	899,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/2e/57/42ea15d9cbb60630c0dc1e8d8c22.jpg
285	Имение Сикоры Каберне Совиньон 	3,9	1 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f0/d3/cee47e3997e5e6dd9fcf0fdd2b8f.jpg
286	Инкерман Каберне Резерв 	3,9	819,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c7/3d/27ec2363af17baaa4f4dc1f01e6c.jpg
287	B.IO Sangiovese di Romagna DOC 	3,6	1 039,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9c/9b/ee68811ee996d8f39425bd24150a.jpg
288	Terre de Schiste 	3,6	1 019,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/64/e7/6xd06d6fe3649a1ced1f6fdf1c01.jpg
289	Duca di Saragnano Governo Rosso Toscano 	3,6	859,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b1/4f/814f3321c6b8b01e558d92558478.jpg
290	Conti Sani Chianti Classico DOCG Primum 	3,7	989,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/98/41/01e54f58ab29ceb0555285234fe8.jpg
291	Podere Montepulciano d'Abruzzo DOC 	3,6	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0a/e4/9bf4d41385c8e74b7ab53fae4217.jpg
292	Camins del Priorat DOC 	4,0	3 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/6b/bc/7d086ac83303d55xd0e9b9514ebb.jpg
293	Emilio Moro Ribera del Duero DO 	4,0	3 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/40/23/b15edfcea0ea05d2156a5edee3ab.jpg
294	Ahso Саперави 	3,5	989,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/78/0c/c678466489xd94ba0da7bde8f9b9.jpg
295	Kvareli 	4,1	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a7/6a/cd6b3960084c964a49230e313beb.jpg
296	B.IO Nero d'Avola Cabernet 	3,3	829,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c7/4e/42ee07f48b91a57384dec9cfb509.jpg
297	B.IO Nero d'Avola Il Nero 	3,6	1 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/cb/94/5f4d4810a835518abb5c5e2d54a8.jpg
298	Planeta La Segreta Nero d'Avola 	3,5	1 649,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/98/15/41fe599e96a3a2475ed4a06ef27c.jpg
299	47 Anno Domini Piantaferro Syrah Sicilia IGT 	3,7	859,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/1d/06/d804b68de09f3e0a4ca7bd05183b.jpg
300	Passo Sardo Cannonau di Sardegna DOC 	3,6	1 449,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f0/19/acb3523cb015eccf6684d98cf7c2.jpg
301	KWV Classic Collection Cabernet Sauvignon 	3,5	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/da/a4/1c03d0680064f0a33e3198df13c6.jpg
302	Vega Sindoa Tempranillo Navarra DO 	-	799,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/29/fa/3d2fe47ba6e78fe574acee1457e8.jpg
303	Masi Modello Trevenezie IGT 	3,4	869,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/39/a4/3b8d6828243ce5fbb3a21b021bf7.jpg
304	Claroscuro Malbec Mendoza 	3,9	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a1/10/f638d2b2cf32xda8428775d0c0a8.jpg
305	Fontanafredda Briccotondo Barbera Piemonte DOC 	3,6	1 499,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d0/68/9c8117e26d6a3727eb917d606156.jpg
306	Turtle Dreaming Cabernet Sauvignon-Shiraz 	3,8	929,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f9/20/228b26960d70e245702e3b6db876.jpg
307	Diaz Bayo 8 Meses Barrica Ribera del Duero DO 	3,8	1 649,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/31/36/1c8e1551cb1e402e269dd2dc8718.jpg
308	Tavernello Sangiovese Organico 	3,6	869,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/eb/30/8990489ce6f21ddcc4173a88be2e.jpg
309	MV Malbec Reserve 	3,7	799,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/75/5a/1749a8e70cc09bafc4aa97ed81e7.jpg
310	Chateau Tamagne Reserve Premier Rouge 	3,7	779,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/17/8b/9cdbe4a20b5301d370e8a63b2ef6.jpg
311	Tavernello Syrah Organico 	3,9	869,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c1/01/e00ab4da0fa9b86bf6ed38960f5f.jpg
312	Вина Тавадзе Мукузани 	3,7	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5c/b4/9ddc8bd35ccc6fc8e38ae4f5fbd6.jpg
313	Destination Rouge Bordeaux AOC 	3,7	859,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/cb/c4/6c4b04983c29a3f9xd28055f318d.jpg
314	Мысхако Каберне Фран 	3,7	659,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/63/5b/64e23dd1bd624649aa4febb70d3a.jpg
315	Cono Sur Tocornal Cabernet Sauvignon 	3,3	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/26/f2/59495078edf4862b2f66ed148827.jpg
316	Chateau Tamagne Терруарное Саперави - Красностоп 	3,8	999,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a0/11/6cdee7712d98f970007e87ae3ced.jpg
317	Salida Tannat 	3,6	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9b/c7/b43f546f5afdec29b69ae76285e0.jpg
318	Эшера 	3,8	499,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9b/b0/192fa64d301851ca6e040bc69fb5.jpg
319	Ликурия Терруар 	3,6	859,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/64/53/c345c412c49655249bc92e2b0c6f.jpg
320	Chateau Moulin Riche Saint-Julien AOC 	4,1	3 599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9d/91/95f057b1aac42aa4498cfb72xd4c.jpg
321	Masi Bonacosta Valpolicella Classico DOC 	3,5	1 899,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c9/14/78c21f29b2ee4e19b235421b7140.jpg
322	Masi Modello Corvina Verona IGT 	3,5	1 669,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/88/21/c9654c06cc03781d42026dc7b3e4.jpg
323	Barefoot Cabernet Sauvignon 	3,3	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/1b/be/cb455968a189113d1aeb415a796e.jpg
324	Matsu El Viejo Toro DO 	4,3	5 599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/97/d6/e966e814a44f6222f1afa87c2576.jpg
325	Chateau Tamagne Каберне 	3,4	136,95 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4a/26/bac99c02ccc9c2838c79d287543a.jpg
326	Chateau Tamagne Саперави 	3,8	469,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/46/25/0ed8e1977288aa2aa49216ebd888.jpg
327	Faustino VII Tempranillo Rioja DOC 	3,5	819,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f5/d7/4a733847da03ca309912e36873c4.jpg
328	Montecillo Reserva Rioja DOC 	3,5	2 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/25/1b/20212222a29f8a6f2dda988966f9.jpg
329	Las Casitas 	3,8	479,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/80/ee/b663851e97ed7f21c2df926af978.jpg
330	Pearly Bay Dry Red 	3,3	649,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f2/f4/b6e7c945588ca098bde928c553a0.jpg
331	Тайна Колхиды Мукузани 	3,7	859,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b0/f7/d42d7d3f4614da6dded77a8249e9.jpg
332	Les Chartrons Lussac Saint-Emilion AOC 	3,5	1 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/06/af/ebbfxd4252e03c7fdf26812320cc.jpg
333	Valiko Саперави 	2,8	359,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b7/66/6781367a3154058b6f1924967f8c.jpg
334	Ca'Del Poggio Montepulciano d'Abruzzo DOC 	3,3	659,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f1/2f/41ffddc2752461xd09aaf7326a36.jpg
335	Les Chartrons Bordeaux Superieur AOC 	3,4	979,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9d/53/7070b7bed803021db996600ebaf8.jpg
336	Racimo de Uva Tempranillo-Garnacha Carinena DO 	3,4	359,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a2/76/ab04854eb4144646d2fd87b5f5cc.jpg
337	Telavi Wine Cellar Marani Mukuzani 	3,8	1 239,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/19/b2/a09f35c3d23e57b339e17f57a3f5.jpg
338	Ramon Bilbao Crianza Rioja DOC 	3,8	1 449,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/75/80/a4737ca267bbcd29df8946d34663.jpg
339	Heredad Mestral Priorat DOC 	3,8	1 389,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e7/ce/447efbcd85b58c153d45c0122e74.jpg
340	Solar de Alarcos Rioja DOC 	3,8	1 229,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a5/51/b33cc30e53a3a51d00bcffd0bd5b.jpg
341	Solar de Alarcos Rioja DOC 	3,7	999,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/63/3a/08c0b676cf86dba085528d5031b7.jpg
342	Chateau La Monge Cotes de Bourg AOC 	3,4	899,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f8/f9/f276634c4d4e933665ee655e5403.jpg
343	Borie-Manoux Chateau Le Joyeux Bordeaux AOC 	3,4	1 290,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/2f/02/6c4bbf8a4ffae354e2f9f466b79f.jpg
344	Batono Мукузани 	3,4	619,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/8e/d3/670535819ffd289c315575d2e36e.jpg
345	Mildiani Пиросмани 	4,0	859,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/79/bb/c4e50140e50334a03283988cee6c.jpg
346	Redwood Vineyards Pinot Noir 	3,9	939,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ba/02/66ec29f2a8fd6a2f68429855ed97.jpg
347	Vivanco Reserva Rioja DOC 	4,0	1 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/11/39/5de221a62cceaf6960c4ff203b2a.jpg
348	Feudo Maccari Saia Nero d'Avola 	3,6	3 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/d1/eb/28064c94f09572d69f178909a2c3.jpg
349	Tinto Pesquera Crianza Ribera del Duero DO 	4,0	3 699,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0a/62/4c4509de94a5f8c4d5b2218e7b94.jpg
350	Barkan Classic Cabernet Sauvignon 	3,5	1 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9b/13/fxdeab05e4030364af99f8e58467.jpg
351	Tancia Chianti DOCG 	3,7	1 149,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/8b/31/261e8ed8bdd9284352c1947fa375.jpg
352	Castellare Chianti Classico DOCG 	3,7	2 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/64/db/70b4fe7b16c19ab0220ff58ea84c.jpg
353	Sant'Orsola Chianti DOCG 	3,8	949,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/11/0e/22120bb08fa2b12df3ba325db293.jpg
354	Chateau Haut Bon Fils Bordeaux AOC Rouge 	3,7	989,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/1a/36/424676cd52c06795ff1401975c32.jpg
355	Chateau Garriga Saint Martin Bordeaux AOC 	3,5	979,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/af/7e/67ce0c8999def5734df2836f81c5.jpg
356	L'Aurore Bourgogne AOC Pinot Noir 	3,6	1 749,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/01/51/eebfb9fd71b29982a430313809e2.jpg
357	Frontera Cabernet Sauvignon 	3,2	759,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ce/c1/141xd0667980cc4ae07582d85d06.jpg
358	Don Simon 	2,9	439,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/af/cf/ca614652929e4208c17c610fdd48.jpg
359	Askaneli Brothers Саперави 	3,6	969,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5b/ea/691ec8a656de3d15c161365a0295.jpg
360	Astrale 	4,1	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b4/62/4007a514e745a77115000c0bdf66.jpg
361	Beefsteak Club Beef&Liberty Malbec 	3,7	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/60/a0/b8cdeac818b95c2905202dc57985.jpg
362	Zonin Montepulciano d'Abruzzo DOC 	3,4	299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/24/92/dcfcb4654a7409eef7f6d0243a2e.jpg
363	Vranec Vilarov 	3,9	834,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/c6/92/c7d72fddeb645e28c66523a0b076.jpg
364	Arrivederci 	3,9	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b7/81/d0c9574127d3a39b971e03800a76.jpg
365	Sangre de Toro Tempranillo La Mancha DO 	3,9	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/80/a4/ffc27d855625383c495ef6da6036.jpg
366	Ведерниковъ Губернаторское Голубок 	3,6	799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/18/5d/13499e7cd80142ea3bf2484e4ae4.jpg
367	GRW Мукузани 	3,8	929,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/4f/5c/1da279b1ca1b5f4505e1fd8e83bc.jpg
368	Vivanco Crianza 	3,7	1 229,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/8e/b5/3c947f51c95f1349f9a658dd1e92.jpg
369	Chateau Giscours Margaux AOC 3-me Grand Cru 	4,2	6 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/9d/48/13d8e84f13254737858ea8b02c79.jpg
370	Dauphin de Grand-Puy Ducasse Pauillac AOC 	4,0	3 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ed/3b/4c13f526246b1a99cb656d548f21.jpg
371	Chateau Le Crock Saint Estephe 	4,0	3 599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/0f/d4/e409237e1e2e7c314b861f2c0d09.jpg
372	La Reserve de Malartic Pessac-Leognan AOC 	3,9	3 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/24/b3/b6814289e6c1a3fa1ef0c810772a.jpg
373	Chateau Marjosse Bordeaux AOC 	3,7	1 939,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/43/77/619b02e49dca0588faab7f6491f0.jpg
374	Chateau La Croix St.Estephe Saint-Estephe AOC 	3,9	1 759,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/cd/0d/bcfa37ec7519805d9f5e142bc289.jpg
375	Leonardo Chianti Riserva DOCG 	3,5	1 599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/b4/8c/cf27a6324d5a0f0625af766413c6.jpg
376	Leonardo Chianti DOCG 	3,5	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f9/b5/851bb93df93e8f47174ec361f311.jpg
377	Pianirossi Solus Maremma Toscana 	3,9	2 599,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ea/0e/1fab962efc8d21125a35756cd68c.jpg
378	Pianirossi Maremma Toscana 	3,9	4 699,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/73/d2/9fa09xdfc00fc0edxd3a1d71f20e.jpg
379	Muga Reserva Rioja DOC 	4,0	3 499,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5d/68/69ac42840c02da7cabbde28df698.jpg
380	Tamari Malbec 	3,4	1 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/61/54/70b4896fxdfaac58055ef2da89ca.jpg
381	Poggerino Bugialla Chianti Classico Riserva DOCG 	4,1	3 699,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/27/07/01078d15ec4f8db7cd68338b711a.jpg
382	Santa Cristina Chianti Superiore DOCG 	3,7	1 709,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/21/91/fa20cd2f591b041e91d0eabfcdbe.jpg
383	Barkan Classic Shiraz 	3,6	1 499,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/af/a0/25cae0785769c15250b1bf92e0e6.jpg
384	Speri Amarone della Valpolicella DOCG 	3,9	5 699,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/58/6d/6b4ab423c61b03d1a38d7cae250e.jpg
385	Domaine des Chanssaud Chateauneuf-du-Pape AOC 	4,2	4 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/08/34/a8c58a4a2e8ace70d7f1773c33f9.jpg
386	Salvalai Amarone della Valpolicella Classico DOCG 	4,1	4 699,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/21/82/26ce3f733c95b8955dfdac28816c.jpg
387	San Valentin Garnacha Catalunya DO 	3,9	1 229,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/02/91/5a6c50aa09ac04714b6a38dc311a.jpg
388	La Casada Cabernet Sauvignon 	3,1	839,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/54/0e/f5d2cfc9cd4199716f9b4f742c80.jpg
389	Chateau Haut Maginet Bordeaux AOC 	3,4	1 199,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/af/02/0c43e02f30f245638ae1576b64b1.jpg
390	La Croix du Pin Cabernet Sauvignon 	3,1	899,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/e7/0f/cfb43b72af51497c6b2d7d7bb0bf.jpg
391	J.Bouchon Merlot Reserva Maule Valley DO 	3,4	1 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/be/5d/938278377d0fecb1ffe3c212605f.jpg
392	Tenuta Cantagallo Chianti Montalbano DOCG 	3,6	1 399,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/79/65/dd009648f61ca89bc101c1c8cdc9.jpg
393	Tour de Mandelotte Medoc AOC 	3,6	1 499,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a7/77/52bdb059f12004eaf8e99f57a3a9.jpg
394	Domaine La Suffrene Bandol AOC 	3,8	2 799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/a6/a7/8029c267d0d786e1f290574cf709.jpg
395	Primasole Primitivo 	3,9	1 099,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/88/a8/12a75a8c8f6d669a5f09468a1fbf.jpg
396	Nipozzano Chianti Rufina Riserva DOCG 	3,8	2 799,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/f4/35/ebe13297e687f36f4b985f9f4ae0.jpg
397	Baluarte Roble Navarra DO 	3,6	1 049,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/78/0c/919dd8e45ec87dbe76a64a8c44a1.jpg
398	Siglo Crianza Rioja DOC 	3,5	909,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/91/93/35c8d052c2c94f88b714e5743bca.jpg
399	Col di Sasso 	3,5	1 369,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/33/3b/52d54xdf582c49fa4bab2c1fecd5.jpg
400	Conti Serristori Chianti DOCG 	3,4	1 029,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/ec/6b/bb75d0422bc3a0b329596dd3f5b2.jpg
401	Jardin de la Taur Grenache-Syrah 	3,9	859,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/1d/95/83fb52b400cf72e2d00f80d97352.jpg
402	Bruni Sangiovese Rubicone 	3,9	659,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/86/b1/110f1ec027dd1e2016328daa573c.jpg
403	Canti Merlot 	3,9	749,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/7f/df/2ee3eddd8e15c3c764073c34c093.jpg
404	Canti Cabernet 	3,3	749,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/49/3b/f7d7ac10ab44fc9d584874c7eb42.jpg
405	Steakwine Cabernet Sauvignon 	3,3	829,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/dd/4a/6af461ac376270c5822d4ca5bafb.jpg
406	Freschello Rosso 	2,7	599,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/94/xd/d63b46e51d267f3c8889ab906b39.jpg
407	Tini Rosso 	2,7	659,99 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/5c/f6/74d67455d7037a42156a68136117.jpg
408	Gerard Bertrand Cote des Roses Pinot Noir 	3,6	1 299,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/6f/b4/60a1c2b23dda0f0d61865e6c5ac5.jpg
409	Dominio de la Abadesa Roble 	3,6	1 179,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/74/54/308731b7dbe5xd3390730e127356.jpg
410	Claroscuro Tintas de Uco 	4,0	1 649,00 ₽	https://cdn-img.perekrestok.ru/i/400x400-fit/xdelivery/files/11/a9/2c897839a72cb05bcd22697648b3.jpg
\.


--
-- Name: perekrestok_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.perekrestok_id_seq', 1, false);


--
-- Name: perekrestok perekrestok_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.perekrestok
    ADD CONSTRAINT perekrestok_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

