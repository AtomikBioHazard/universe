--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: dwarfs; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dwarfs (
    dwarfs_id integer NOT NULL,
    name character varying(30),
    diameter numeric(4,1) NOT NULL,
    age integer NOT NULL,
    close_to_earth boolean
);


ALTER TABLE public.dwarfs OWNER TO freecodecamp;

--
-- Name: dwarfs_dawrf_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dwarfs_dawrf_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dwarfs_dawrf_id_seq OWNER TO freecodecamp;

--
-- Name: dwarfs_dawrf_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dwarfs_dawrf_id_seq OWNED BY public.dwarfs.dwarfs_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    black_holes boolean NOT NULL,
    planet_types text NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    diameter numeric(4,1),
    age integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    diameter numeric(4,1),
    has_life boolean,
    age integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    is_sppherical boolean,
    age integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: dwarfs dwarfs_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarfs ALTER COLUMN dwarfs_id SET DEFAULT nextval('public.dwarfs_dawrf_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: dwarfs; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dwarfs VALUES (1, 'one', 123.0, 100, true);
INSERT INTO public.dwarfs VALUES (2, 'two', 125.0, 120, false);
INSERT INTO public.dwarfs VALUES (3, 'three', 126.0, 130, true);
INSERT INTO public.dwarfs VALUES (4, 'four', 127.0, 140, false);
INSERT INTO public.dwarfs VALUES (5, 'five', 128.0, 150, true);
INSERT INTO public.dwarfs VALUES (6, 'six', 129.0, 160, false);
INSERT INTO public.dwarfs VALUES (7, 'seven', 130.0, 170, true);
INSERT INTO public.dwarfs VALUES (8, 'eight', 131.0, 180, true);
INSERT INTO public.dwarfs VALUES (9, 'nine', 132.0, 190, false);
INSERT INTO public.dwarfs VALUES (10, 'ten', 133.0, 200, false);
INSERT INTO public.dwarfs VALUES (11, 'eleven', 134.0, 210, true);
INSERT INTO public.dwarfs VALUES (12, 'twelve', 135.0, 220, true);
INSERT INTO public.dwarfs VALUES (13, 'thirteen', 136.0, 230, false);
INSERT INTO public.dwarfs VALUES (14, 'fourteen', 137.0, 240, true);
INSERT INTO public.dwarfs VALUES (15, 'fiveteen', 138.0, 250, false);
INSERT INTO public.dwarfs VALUES (16, 'sixteen', 139.0, 260, true);
INSERT INTO public.dwarfs VALUES (17, 'seventeen', 140.0, 270, true);
INSERT INTO public.dwarfs VALUES (18, 'eighteen', 141.0, 280, true);
INSERT INTO public.dwarfs VALUES (19, 'nineteen', 142.0, 290, false);
INSERT INTO public.dwarfs VALUES (20, 'twenty', 143.0, 300, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'twenty one', 'galaxy numer one', true, 'smtg');
INSERT INTO public.galaxy VALUES (2, 'twenty two', 'galaxy numer two', false, 'smtg');
INSERT INTO public.galaxy VALUES (3, 'twenty three', 'galaxy numer three', true, 'smtg');
INSERT INTO public.galaxy VALUES (4, 'twenty four', 'galaxy numer four', false, 'smtg');
INSERT INTO public.galaxy VALUES (5, 'twenty five', 'galaxy numer five', true, 'smtg');
INSERT INTO public.galaxy VALUES (6, 'twenty six', 'galaxy numer six', false, 'smtg');
INSERT INTO public.galaxy VALUES (7, 'twenty seven', 'galaxy numer seven', true, 'smtg');
INSERT INTO public.galaxy VALUES (8, 'twenty eight', 'galaxy numer eight', true, 'smtg');
INSERT INTO public.galaxy VALUES (9, 'twenty nine', 'galaxy numer nine', false, 'smtg');
INSERT INTO public.galaxy VALUES (10, 'thirty', 'galaxy numer ten', false, 'smtg');
INSERT INTO public.galaxy VALUES (11, 'thirty one', 'galaxy numer eleven', true, 'smtg');
INSERT INTO public.galaxy VALUES (12, 'thirty two', 'galaxy numer twelve', true, 'smtg');
INSERT INTO public.galaxy VALUES (13, 'thirty three', 'galaxy numer thirteen', false, 'smtg');
INSERT INTO public.galaxy VALUES (14, 'thirty four', 'galaxy numer fourteen', true, 'smtg');
INSERT INTO public.galaxy VALUES (15, 'thirty five', 'galaxy numer fifteen', false, 'smtg');
INSERT INTO public.galaxy VALUES (16, 'thirty six', 'galaxy numer sixteen', true, 'smtg');
INSERT INTO public.galaxy VALUES (17, 'thirty seven', 'galaxy numer seventeen', true, 'smtg');
INSERT INTO public.galaxy VALUES (18, 'thirty eight', 'galaxy numer eighteen', true, 'smtg');
INSERT INTO public.galaxy VALUES (19, 'thirty nine', 'galaxy numer nineteen', false, 'smtg');
INSERT INTO public.galaxy VALUES (20, 'fourty', 'galaxy numer twenty', true, 'smtg');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'mlp', 1, 12.0, 1019);
INSERT INTO public.moon VALUES (2, 'mko', 2, 22.0, 1018);
INSERT INTO public.moon VALUES (3, 'nko', 3, 33.0, 1017);
INSERT INTO public.moon VALUES (4, 'nji', 4, 44.0, 1016);
INSERT INTO public.moon VALUES (5, 'bji', 5, 55.0, 1015);
INSERT INTO public.moon VALUES (6, 'bhu', 6, 66.0, 1014);
INSERT INTO public.moon VALUES (7, 'vhu', 7, 77.0, 1013);
INSERT INTO public.moon VALUES (8, 'vgy', 8, 88.0, 1012);
INSERT INTO public.moon VALUES (9, 'cgy', 9, 99.0, 1011);
INSERT INTO public.moon VALUES (10, 'cft', 10, 95.0, 1010);
INSERT INTO public.moon VALUES (11, 'xft', 11, 84.0, 1009);
INSERT INTO public.moon VALUES (12, 'xdr', 12, 76.0, 1008);
INSERT INTO public.moon VALUES (13, 'zdr', 13, 62.0, 1007);
INSERT INTO public.moon VALUES (14, 'zse', 14, 51.0, 1006);
INSERT INTO public.moon VALUES (15, 'ase', 15, 43.0, 1005);
INSERT INTO public.moon VALUES (16, 'aqw', 16, 26.0, 1004);
INSERT INTO public.moon VALUES (17, 'yhb', 17, 34.0, 1003);
INSERT INTO public.moon VALUES (18, 'ijm', 18, 57.0, 1002);
INSERT INTO public.moon VALUES (19, 'wdx', 19, 49.0, 1001);
INSERT INTO public.moon VALUES (20, 'xhp', 20, 10.0, 1000);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', 1, 139.0, true, 1019);
INSERT INTO public.planet VALUES (2, 'venus', 2, 139.0, false, 1018);
INSERT INTO public.planet VALUES (3, 'earth', 3, 149.0, true, 1017);
INSERT INTO public.planet VALUES (4, 'mars', 4, 139.0, false, 1016);
INSERT INTO public.planet VALUES (5, 'saturn', 5, 189.0, true, 1015);
INSERT INTO public.planet VALUES (6, 'jupiter', 6, 189.0, false, 1014);
INSERT INTO public.planet VALUES (7, 'uranus', 7, 129.0, true, 1013);
INSERT INTO public.planet VALUES (8, 'neptune', 8, 189.0, true, 1012);
INSERT INTO public.planet VALUES (9, 'pluto', 9, 139.0, false, 1011);
INSERT INTO public.planet VALUES (10, 'mercurio', 10, 189.0, false, 1010);
INSERT INTO public.planet VALUES (11, 'venus1', 11, 129.0, true, 1009);
INSERT INTO public.planet VALUES (12, 'tierra', 12, 139.0, true, 1008);
INSERT INTO public.planet VALUES (13, 'marte', 13, 159.0, false, 1007);
INSERT INTO public.planet VALUES (14, 'saturno', 14, 189.0, true, 1006);
INSERT INTO public.planet VALUES (15, 'jupiter2', 15, 189.0, false, 1005);
INSERT INTO public.planet VALUES (16, 'urano', 16, 134.0, true, 1004);
INSERT INTO public.planet VALUES (17, 'neptuno', 17, 189.0, true, 1003);
INSERT INTO public.planet VALUES (18, 'pluton', 18, 159.0, true, 1002);
INSERT INTO public.planet VALUES (19, 'tattoine', 19, 189.0, false, 1001);
INSERT INTO public.planet VALUES (20, 'namekusein', 20, 189.0, true, 1000);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'mlp', 1, true, 1019);
INSERT INTO public.star VALUES (2, 'mko', 2, false, 1018);
INSERT INTO public.star VALUES (3, 'nko', 3, true, 1017);
INSERT INTO public.star VALUES (4, 'nji', 4, false, 1016);
INSERT INTO public.star VALUES (5, 'bji', 5, true, 1015);
INSERT INTO public.star VALUES (6, 'bhu', 6, false, 1014);
INSERT INTO public.star VALUES (7, 'vhu', 7, true, 1013);
INSERT INTO public.star VALUES (8, 'vgy', 8, true, 1012);
INSERT INTO public.star VALUES (9, 'cgy', 9, false, 1011);
INSERT INTO public.star VALUES (10, 'cft', 10, false, 1010);
INSERT INTO public.star VALUES (11, 'xft', 11, true, 1009);
INSERT INTO public.star VALUES (12, 'xdr', 12, true, 1008);
INSERT INTO public.star VALUES (13, 'zdr', 13, false, 1007);
INSERT INTO public.star VALUES (14, 'zse', 14, true, 1006);
INSERT INTO public.star VALUES (15, 'ase', 15, false, 1005);
INSERT INTO public.star VALUES (16, 'aqw', 16, true, 1004);
INSERT INTO public.star VALUES (17, 'yhb', 17, true, 1003);
INSERT INTO public.star VALUES (18, 'ijm', 18, true, 1002);
INSERT INTO public.star VALUES (19, 'wdx', 19, false, 1001);
INSERT INTO public.star VALUES (20, 'xhp', 20, true, 1000);


--
-- Name: dwarfs_dawrf_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dwarfs_dawrf_id_seq', 20, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 20, true);


--
-- Name: dwarfs dwarfs_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarfs
    ADD CONSTRAINT dwarfs_name_key UNIQUE (name);


--
-- Name: dwarfs dwarfs_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarfs
    ADD CONSTRAINT dwarfs_pkey PRIMARY KEY (dwarfs_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

