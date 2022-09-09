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

CREATE TABLE IF NOT EXISTS public.perekrestok (
    id bigint NOT NULL,
    name character varying(255),
    rate character varying(255)
);


ALTER TABLE public.perekrestok OWNER TO postgres;

--
-- Data for Name: perekrestok; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.perekrestok (id, name, rate) FROM stdin;
1	Poggio Tosco Chianti DOCG 	3,8
2	Le Grand Noir Cabernet Sauvignon 	3,9
3	Elegido Tempranillo 	3,8
4	Highway to Hell 	3,8
5	Le Grand Noir Pinot Noir 	3,7
6	Pirovano Nero d'Avola 	3,7
7	Don Florencio Crianza Tarragona DO 	3,7
8	Rauli Syrah 	3,4
9	Chateau Tamagne Каберне 	3,4
10	Remole Toscana 	3,7
11	Fetzer Zinfandel Valley Oaks 	4,0
12	Rouge de Talu 	4,0
13	АСТ Саперави 	3,5
14	Sobreiro de Pegoes Premium 	3,7
15	Karas 	4,0
16	Gran Passione Appassimento Rosso 	4,0
17	Castillo Santa Barbara Reserva Valdepenas DO 	3,6
18	Sant'Orsola Montepulciano d'Abruzzo DOC 	3,4
19	TINI Rosso 	3,5
20	Alma Valley Red 	3,2
21	Suggestion du Chef Merlot 	3,8
22	Destination Rouge Bordeaux AOC 	3,7
23	Barefoot Zinfandel 	3,6
24	19 Crimes The Banished 	4,0
25	Pirovano Sangiovese Rubicone 	3,4
26	Luna Valley 	3,4
27	Conti Serristori Chianti DOCG 	3,4
28	Ed Knows Мерло 	3,7
29	Chateau Pinot Гравитация Пино Нуар/Саперави 	3,7
30	Negrar Corvina 	3,6
31	Monte Real Tempranillo Rioja DOC 	3,4
32	Mr. Jenares Seleccion 	3,8
33	Heinz Eifel Spatburgunder 	-
34	Pirovano Collezione Primitivo Puglia 	3,7
35	Collezione Costantino Primitivo Di Manduria DOC 	3,9
36	Chateau Tamagne Красностоп-Анчелотта 	3,3
37	Oyster Bay Pinot Noir Marlborough 	3,5
38	Inspirado Carmenere 	3,4
39	Paladin Drago Rosso столовое 	4,1
40	Ionos Red 	3,3
41	Wine in Tube Tempranillo 	3,3
42	Cacciata Chianti Classico DOCG Riserva 	3,6
\.


--
-- Name: perekrestok perekrestok_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--


--
-- PostgreSQL database dump complete
--

