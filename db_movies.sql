--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5 (Ubuntu 11.5-0ubuntu0.19.04.1)
-- Dumped by pg_dump version 11.5 (Ubuntu 11.5-0ubuntu0.19.04.1)

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

SET default_with_oids = false;

--
-- Name: actors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actors (
    id integer NOT NULL,
    born json NOT NULL,
    nationality character varying(80) NOT NULL,
    education character varying(80) NOT NULL,
    alma_mater character varying(80) NOT NULL,
    occupation json NOT NULL,
    years_active date NOT NULL,
    works character varying(80) NOT NULL,
    residence text NOT NULL,
    net_worth money NOT NULL,
    spouse json NOT NULL,
    children integer NOT NULL,
    relatives json NOT NULL,
    filmography json NOT NULL
);


ALTER TABLE public.actors OWNER TO postgres;

--
-- Name: actors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.actors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.actors_id_seq OWNER TO postgres;

--
-- Name: actors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.actors_id_seq OWNED BY public.actors.id;


--
-- Name: filmmakers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.filmmakers (
    id integer NOT NULL,
    born json NOT NULL,
    nationality character varying(80) NOT NULL,
    alma_mater character varying(80) NOT NULL,
    occupation json NOT NULL,
    years_active date NOT NULL,
    works character varying(80) NOT NULL,
    residence text NOT NULL,
    net_worth money NOT NULL,
    spouse json NOT NULL,
    children integer NOT NULL,
    relatives json NOT NULL,
    filmography json NOT NULL
);


ALTER TABLE public.filmmakers OWNER TO postgres;

--
-- Name: filmmakers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.filmmakers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filmmakers_id_seq OWNER TO postgres;

--
-- Name: filmmakers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.filmmakers_id_seq OWNED BY public.filmmakers.id;


--
-- Name: franchise; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.franchise (
    id integer NOT NULL,
    film character varying(80) NOT NULL,
    release_date date NOT NULL,
    director json NOT NULL,
    screenwriter json NOT NULL,
    story_by json NOT NULL,
    producer json NOT NULL
);


ALTER TABLE public.franchise OWNER TO postgres;

--
-- Name: franchise_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.franchise_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.franchise_id_seq OWNER TO postgres;

--
-- Name: franchise_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.franchise_id_seq OWNED BY public.franchise.id;


--
-- Name: movie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movie (
    id integer NOT NULL,
    titles text NOT NULL,
    directed text NOT NULL,
    produced text NOT NULL,
    starring text NOT NULL,
    distributed text NOT NULL,
    release date NOT NULL,
    running time without time zone NOT NULL,
    country character varying(20) NOT NULL,
    language character varying(20) NOT NULL,
    budget money NOT NULL,
    box_office money NOT NULL
);


ALTER TABLE public.movie OWNER TO postgres;

--
-- Name: movie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.movie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movie_id_seq OWNER TO postgres;

--
-- Name: movie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.movie_id_seq OWNED BY public.movie.id;


--
-- Name: actors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actors ALTER COLUMN id SET DEFAULT nextval('public.actors_id_seq'::regclass);


--
-- Name: filmmakers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filmmakers ALTER COLUMN id SET DEFAULT nextval('public.filmmakers_id_seq'::regclass);


--
-- Name: franchise id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.franchise ALTER COLUMN id SET DEFAULT nextval('public.franchise_id_seq'::regclass);


--
-- Name: movie id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie ALTER COLUMN id SET DEFAULT nextval('public.movie_id_seq'::regclass);


--
-- Data for Name: actors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.actors (id, born, nationality, education, alma_mater, occupation, years_active, works, residence, net_worth, spouse, children, relatives, filmography) FROM stdin;
\.


--
-- Data for Name: filmmakers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.filmmakers (id, born, nationality, alma_mater, occupation, years_active, works, residence, net_worth, spouse, children, relatives, filmography) FROM stdin;
\.


--
-- Data for Name: franchise; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.franchise (id, film, release_date, director, screenwriter, story_by, producer) FROM stdin;
\.


--
-- Data for Name: movie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movie (id, titles, directed, produced, starring, distributed, release, running, country, language, budget, box_office) FROM stdin;
\.


--
-- Name: actors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.actors_id_seq', 1, false);


--
-- Name: filmmakers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.filmmakers_id_seq', 1, false);


--
-- Name: franchise_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.franchise_id_seq', 1, false);


--
-- Name: movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.movie_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

