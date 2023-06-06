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
    name character varying(50),
    number_of_planets integer NOT NULL,
    number_of_stars integer NOT NULL,
    size_lightyears numeric(10,5),
    explored boolean,
    aliens_spotted boolean,
    description text
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
    name character varying(50),
    number_of_craters integer NOT NULL,
    number_hours integer NOT NULL,
    size numeric(10,5),
    explored boolean,
    dangerous boolean,
    planet_id integer
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
    name character varying(50),
    number_of_species integer NOT NULL,
    number_of_moons integer NOT NULL,
    size numeric(10,5),
    explored boolean,
    dangerous boolean,
    star_id integer
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
-- Name: species; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.species (
    species_id integer NOT NULL,
    name character varying(50) NOT NULL,
    population integer NOT NULL,
    lifespan integer,
    dangerous boolean,
    description text
);


ALTER TABLE public.species OWNER TO freecodecamp;

--
-- Name: species_species_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.species_species_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.species_species_id_seq OWNER TO freecodecamp;

--
-- Name: species_species_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.species_species_id_seq OWNED BY public.species.species_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50),
    number_of_planets_orbiting integer NOT NULL,
    number_of_year_alive integer NOT NULL,
    size numeric(10,5),
    explored boolean,
    dangerous boolean,
    galaxy_id integer
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
-- Name: species species_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species ALTER COLUMN species_id SET DEFAULT nextval('public.species_species_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 8, 1, 50.30000, true, false, 'Our galaxy, it is home!');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 20, 2, 10002.50000, false, true, 'This place is huge holy moly');
INSERT INTO public.galaxy VALUES (3, 'Triagulum', 5, 1, 30.40000, false, true, 'Tiny lil place, but can park my car');
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 6, 1, 20.70000, false, false, 'Nice big fart cloud');
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', 3, 0, 15.50000, false, true, 'Small fart cloud');
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 15, 3, 10521.30000, false, false, 'Looks like a nice place to start a family');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 102, 692, 0.30000, true, false, 5);
INSERT INTO public.moon VALUES (2, 'Titan', 48, 160, 0.80000, true, false, 1);
INSERT INTO public.moon VALUES (3, 'Europa', 67, 456, 0.50000, true, false, 12);
INSERT INTO public.moon VALUES (4, 'Triton', 79, 384, 0.70000, true, false, 4);
INSERT INTO public.moon VALUES (5, 'Ganymede', 124, 628, 0.90000, true, false, 2);
INSERT INTO public.moon VALUES (6, 'Calisto', 96, 612, 0.60000, true, false, 3);
INSERT INTO public.moon VALUES (7, 'lo', 53, 420, 0.40000, true, true, 2);
INSERT INTO public.moon VALUES (8, 'Phobos', 17, 42, 0.20000, false, false, 5);
INSERT INTO public.moon VALUES (9, 'Deimos', 8, 30, 0.10000, false, false, 4);
INSERT INTO public.moon VALUES (10, 'Encladus', 35, 192, 0.30000, true, false, 10);
INSERT INTO public.moon VALUES (11, 'Hyperion', 102, 692, 0.30000, true, false, 5);
INSERT INTO public.moon VALUES (12, 'Charon', 48, 160, 0.80000, true, false, 1);
INSERT INTO public.moon VALUES (13, 'Titania', 67, 456, 0.50000, true, false, 9);
INSERT INTO public.moon VALUES (14, 'Oberon', 79, 384, 0.70000, true, false, 7);
INSERT INTO public.moon VALUES (15, 'Umbriel', 124, 628, 0.90000, true, false, 8);
INSERT INTO public.moon VALUES (16, 'Ariel', 96, 612, 0.60000, true, false, 7);
INSERT INTO public.moon VALUES (17, 'Miranda', 53, 420, 0.40000, true, true, 6);
INSERT INTO public.moon VALUES (18, 'Iapetus', 17, 42, 0.20000, false, false, 9);
INSERT INTO public.moon VALUES (19, 'Rhea', 8, 30, 0.10000, false, false, 11);
INSERT INTO public.moon VALUES (20, 'Mimas', 35, 192, 0.30000, true, false, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Terra', 3, 1, 0.80000, true, false, 1);
INSERT INTO public.planet VALUES (2, 'Veridian', 5, 2, 1.20000, false, true, 1);
INSERT INTO public.planet VALUES (3, 'Novus', 1, 0, 0.50000, true, true, 2);
INSERT INTO public.planet VALUES (4, 'Aurora', 2, 3, 0.90000, true, false, 3);
INSERT INTO public.planet VALUES (5, 'Celestia', 4, 1, 1.50000, false, false, 4);
INSERT INTO public.planet VALUES (6, 'Epsilon', 0, 0, 0.30000, false, false, 5);
INSERT INTO public.planet VALUES (7, 'Paradisus', 3, 2, 1.10000, true, false, 6);
INSERT INTO public.planet VALUES (8, 'Zephyr', 1, 0, 0.60000, false, true, 2);
INSERT INTO public.planet VALUES (9, 'Seraphina', 2, 1, 0.70000, false, true, 5);
INSERT INTO public.planet VALUES (10, 'Glactica', 0, 4, 1.30000, true, false, 4);
INSERT INTO public.planet VALUES (11, 'Aquaterra', 3, 2, 0.90000, true, false, 1);
INSERT INTO public.planet VALUES (12, 'Astralis', 1, 1, 0.80000, true, false, 2);


--
-- Data for Name: species; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.species VALUES (1, 'Humans', 7, 80, false, 'Sentient beings known for their adaptability');
INSERT INTO public.species VALUES (2, 'Xelarans', 12, 150, false, 'Highly intelligent and technologically advanced');
INSERT INTO public.species VALUES (3, 'Zorblorians', 5, 120, false, 'Peaceful species known for their artisitic talents');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 8, 3000, 15.00000, true, true, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 20, 50, 10002.50000, false, true, 2);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 5, 1, 30.40000, false, true, 3);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 6, 1, 20.70000, false, false, 4);
INSERT INTO public.star VALUES (5, 'Polaris', 3, 0, 15.50000, false, true, 5);
INSERT INTO public.star VALUES (6, 'Spectacularus', 15, 3, 10521.30000, false, false, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: species_species_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.species_species_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: species species_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_name_key UNIQUE (name);


--
-- Name: species species_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_pkey PRIMARY KEY (species_id);


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
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

