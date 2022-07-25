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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    galaxy_type character varying(20) NOT NULL,
    constellation character varying(30) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    planet_id integer NOT NULL,
    has_water_once boolean NOT NULL,
    number_of_cheese integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    star_id integer NOT NULL,
    has_life boolean NOT NULL,
    radius_in_km integer,
    price_of_beer_in_usd numeric(3,2)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: sattelite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sattelite (
    sattelite_id integer NOT NULL,
    planet_id integer NOT NULL,
    since_in_years integer NOT NULL,
    name character varying(40) NOT NULL
);


ALTER TABLE public.sattelite OWNER TO freecodecamp;

--
-- Name: sattelite_sattelite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sattelite_sattelite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sattelite_sattelite_id_seq OWNER TO freecodecamp;

--
-- Name: sattelite_sattelite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sattelite_sattelite_id_seq OWNED BY public.sattelite.sattelite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    galaxy_id integer NOT NULL,
    magnitude numeric(5,2) NOT NULL,
    distance_in_lightyears numeric(10,3) NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: sattelite sattelite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sattelite ALTER COLUMN sattelite_id SET DEFAULT nextval('public.sattelite_sattelite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Humans live in this galaxy', 'Spiral', 'Sagittarius');
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', '', 'Spiral', 'Andromeda');
INSERT INTO public.galaxy VALUES (3, 'Large Magellanic Cloud', '', 'Satellite dwarf', 'Dorado');
INSERT INTO public.galaxy VALUES (4, 'Sombrero Galaxy', 'It looks like a sombrero', 'Spiral', 'Virgo');
INSERT INTO public.galaxy VALUES (5, 'Whirlpool Galaxy', '', 'Spiral', 'Canes Venatici');
INSERT INTO public.galaxy VALUES (6, 'Tadpole Galaxy', '', 'Spiral', 'Draco');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 7, false, 12);
INSERT INTO public.moon VALUES (2, 'Phobos', 8, false, 7);
INSERT INTO public.moon VALUES (3, 'Deimos', 8, false, 19);
INSERT INTO public.moon VALUES (4, 'Io', 9, false, NULL);
INSERT INTO public.moon VALUES (5, 'Europa', 9, true, NULL);
INSERT INTO public.moon VALUES (6, 'Ganymede', 9, true, NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', 9, true, NULL);
INSERT INTO public.moon VALUES (8, 'Mimas', 10, true, NULL);
INSERT INTO public.moon VALUES (9, 'Enceladus', 10, true, NULL);
INSERT INTO public.moon VALUES (10, 'Tethys', 10, true, NULL);
INSERT INTO public.moon VALUES (11, 'Dione', 10, true, NULL);
INSERT INTO public.moon VALUES (12, 'Rhea', 10, true, NULL);
INSERT INTO public.moon VALUES (13, 'Titan', 10, true, NULL);
INSERT INTO public.moon VALUES (14, 'Iapetus', 10, true, NULL);
INSERT INTO public.moon VALUES (15, 'Titania', 11, true, NULL);
INSERT INTO public.moon VALUES (16, 'Oberon', 11, true, NULL);
INSERT INTO public.moon VALUES (17, 'Ariel', 11, true, NULL);
INSERT INTO public.moon VALUES (18, 'Umbriel', 11, true, NULL);
INSERT INTO public.moon VALUES (19, 'Triton', 12, true, NULL);
INSERT INTO public.moon VALUES (20, 'Nereid', 12, true, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'K2-138g', 7, false, 21916, NULL);
INSERT INTO public.planet VALUES (2, 'WASP-47b', 6, false, 80529, NULL);
INSERT INTO public.planet VALUES (3, 'TOI-700d', 4, false, 7581, NULL);
INSERT INTO public.planet VALUES (4, 'Kepler-11f', 3, false, 15864, NULL);
INSERT INTO public.planet VALUES (5, 'TRAPPIST-1b', 2, false, 7110, NULL);
INSERT INTO public.planet VALUES (6, 'TRAPPIST-1c', 2, false, 6989, NULL);
INSERT INTO public.planet VALUES (7, 'Earth', 1, true, 6371, 1.02);
INSERT INTO public.planet VALUES (8, 'Mars', 1, false, 3390, NULL);
INSERT INTO public.planet VALUES (9, 'Jupiter', 1, false, 69911, NULL);
INSERT INTO public.planet VALUES (10, 'Saturn', 1, false, 58232, NULL);
INSERT INTO public.planet VALUES (11, 'Uranus', 1, false, 25362, NULL);
INSERT INTO public.planet VALUES (12, 'Neptune', 1, false, 24622, NULL);


--
-- Data for Name: sattelite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sattelite VALUES (1, 8, 2001, 'Mars Odyssey');
INSERT INTO public.sattelite VALUES (2, 8, 2003, 'Mars Express');
INSERT INTO public.sattelite VALUES (3, 8, 2021, 'Tianwen 1');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 4.83, 0.000);
INSERT INTO public.star VALUES (2, 'TRAPPIST-1', 1, 18.79, 40.660);
INSERT INTO public.star VALUES (3, 'Kepler-11', 1, 14.20, 1998.000);
INSERT INTO public.star VALUES (4, 'TOI 700', 1, 13.10, 101.610);
INSERT INTO public.star VALUES (5, 'Vega', 1, 0.03, 25.040);
INSERT INTO public.star VALUES (6, 'WASP-47', 1, 11.99, 870.000);
INSERT INTO public.star VALUES (7, 'K2-138', 1, 12.21, 597.000);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: sattelite_sattelite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sattelite_sattelite_id_seq', 4, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 7, true);


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
-- Name: sattelite sattelite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sattelite
    ADD CONSTRAINT sattelite_name_key UNIQUE (name);


--
-- Name: sattelite sattelite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sattelite
    ADD CONSTRAINT sattelite_pkey PRIMARY KEY (sattelite_id);


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
-- Name: sattelite sattelite_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sattelite
    ADD CONSTRAINT sattelite_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

