--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.3
-- Dumped by pg_dump version 9.5.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
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


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: Istatistik; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Istatistik" (
    "Ist_id" integer NOT NULL,
    "Kadi_id" integer NOT NULL,
    ap integer NOT NULL,
    bp integer NOT NULL,
    cp integer NOT NULL,
    dp integer NOT NULL
);


ALTER TABLE "Istatistik" OWNER TO postgres;

--
-- Name: k_yanit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE k_yanit (
    "Yanit_id" integer NOT NULL,
    "Kadi_id" integer NOT NULL,
    "Soru_id" integer NOT NULL,
    "Ilk" integer NOT NULL,
    "Ikıncı" integer NOT NULL
);


ALTER TABLE k_yanit OWNER TO postgres;

--
-- Name: kar_tip_oz; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE kar_tip_oz (
    "Oz_id" integer NOT NULL,
    "Kar_Tipi_id" integer NOT NULL,
    "Oz_txt" text NOT NULL
);


ALTER TABLE kar_tip_oz OWNER TO postgres;

--
-- Name: karakter_tipi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE karakter_tipi (
    "Kar_id" integer NOT NULL,
    "Kar_Renk" character varying(2044) NOT NULL,
    "Kar_Tipi_id" integer NOT NULL
);


ALTER TABLE karakter_tipi OWNER TO postgres;

--
-- Name: kullanici; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE kullanici (
    "Kadi_id" integer NOT NULL,
    "Ad_Soyad" character varying(2044) NOT NULL,
    "Mail_Kullanici" character varying(2044) NOT NULL,
    "Proje_y_id" integer NOT NULL
);


ALTER TABLE kullanici OWNER TO postgres;

--
-- Name: proje_yonet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE proje_yonet (
    "Proje_y_id" integer NOT NULL,
    "Ad_Soyad" character varying(2044) NOT NULL,
    "Mail_Yonetici" character varying(2044) NOT NULL,
    "Is_Ceo" boolean NOT NULL,
    "Sifre" character varying(2044) NOT NULL
);


ALTER TABLE proje_yonet OWNER TO postgres;

--
-- Name: secenek; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE secenek (
    "Sec_id" integer NOT NULL,
    "Soru_id" integer NOT NULL,
    "Sec_txt" character varying(2044) NOT NULL,
    "Kar_Tipi_id" integer NOT NULL
);


ALTER TABLE secenek OWNER TO postgres;

--
-- Name: soru; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE soru (
    "Soru_id" integer NOT NULL,
    "Soru_txt" text NOT NULL
);


ALTER TABLE soru OWNER TO postgres;

--
-- Name: tavsiye; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tavsiye (
    "Tavsiye_id" integer NOT NULL,
    "Tavsiye_txt" text NOT NULL,
    "Kar_id" integer NOT NULL
);


ALTER TABLE tavsiye OWNER TO postgres;

--
-- Data for Name: Istatistik; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: k_yanit; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: kar_tip_oz; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: karakter_tipi; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: kullanici; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: proje_yonet; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: secenek; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: soru; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: tavsiye; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: Istatistik_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Istatistik"
    ADD CONSTRAINT "Istatistik_pkey" PRIMARY KEY ("Ist_id");


--
-- Name: k_yanit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY k_yanit
    ADD CONSTRAINT k_yanit_pkey PRIMARY KEY ("Yanit_id");


--
-- Name: kar_tip_oz_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY kar_tip_oz
    ADD CONSTRAINT kar_tip_oz_pkey PRIMARY KEY ("Oz_id");


--
-- Name: kullanici_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY kullanici
    ADD CONSTRAINT kullanici_pkey PRIMARY KEY ("Kadi_id");


--
-- Name: proje_yonet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY proje_yonet
    ADD CONSTRAINT proje_yonet_pkey PRIMARY KEY ("Proje_y_id");


--
-- Name: secenek_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY secenek
    ADD CONSTRAINT secenek_pkey PRIMARY KEY ("Sec_id");


--
-- Name: soru_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY soru
    ADD CONSTRAINT soru_pkey PRIMARY KEY ("Soru_id");


--
-- Name: tavsiye_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tavsiye
    ADD CONSTRAINT tavsiye_pkey PRIMARY KEY ("Tavsiye_id");


--
-- Name: unique_Kar_Renk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY karakter_tipi
    ADD CONSTRAINT "unique_Kar_Renk" UNIQUE ("Kar_Renk");


--
-- Name: unique_Kar_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY karakter_tipi
    ADD CONSTRAINT "unique_Kar_id" PRIMARY KEY ("Kar_id");


--
-- Name: unique_Mail; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY kullanici
    ADD CONSTRAINT "unique_Mail" UNIQUE ("Mail_Kullanici");


--
-- Name: unique_Mail_Yonetici; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY proje_yonet
    ADD CONSTRAINT "unique_Mail_Yonetici" UNIQUE ("Mail_Yonetici");


--
-- Name: lnk_karakter_tipi_kar_tip_oz; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY kar_tip_oz
    ADD CONSTRAINT lnk_karakter_tipi_kar_tip_oz FOREIGN KEY ("Kar_Tipi_id") REFERENCES karakter_tipi("Kar_id") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: lnk_karakter_tipi_secenek; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY secenek
    ADD CONSTRAINT lnk_karakter_tipi_secenek FOREIGN KEY ("Kar_Tipi_id") REFERENCES karakter_tipi("Kar_id") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: lnk_karakter_tipi_tavsiye; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tavsiye
    ADD CONSTRAINT lnk_karakter_tipi_tavsiye FOREIGN KEY ("Kar_id") REFERENCES karakter_tipi("Kar_id") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: lnk_kullanici_Istatistik; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Istatistik"
    ADD CONSTRAINT "lnk_kullanici_Istatistik" FOREIGN KEY ("Kadi_id") REFERENCES kullanici("Kadi_id") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: lnk_kullanici_k_yanit; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY k_yanit
    ADD CONSTRAINT lnk_kullanici_k_yanit FOREIGN KEY ("Kadi_id") REFERENCES kullanici("Kadi_id") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: lnk_proje_yonet_kullanici; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY kullanici
    ADD CONSTRAINT lnk_proje_yonet_kullanici FOREIGN KEY ("Proje_y_id") REFERENCES proje_yonet("Proje_y_id") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: lnk_soru_secenek; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY secenek
    ADD CONSTRAINT lnk_soru_secenek FOREIGN KEY ("Soru_id") REFERENCES soru("Soru_id") MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

