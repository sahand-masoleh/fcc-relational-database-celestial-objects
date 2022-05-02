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
    description text,
    magnitude numeric(3,2),
    name character varying(15) NOT NULL,
    distance_kpc integer
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
    name character varying(10) NOT NULL,
    age_b numeric(5,3),
    distance_km integer,
    diameter_km integer,
    description text,
    haslife boolean,
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
-- Name: person; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.person (
    person_id integer NOT NULL,
    name character varying(15) NOT NULL,
    age numeric(3,1),
    wealth integer,
    height integer,
    city text,
    haslife boolean,
    planet_id integer
);


ALTER TABLE public.person OWNER TO freecodecamp;

--
-- Name: person_person_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.person_person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.person_person_id_seq OWNER TO freecodecamp;

--
-- Name: person_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.person_person_id_seq OWNED BY public.person.person_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_b numeric(5,3),
    distance_mkm integer,
    diameter_km integer,
    description text,
    haslife boolean,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_b numeric(5,3),
    distance_mkm integer,
    diameter_km integer,
    description text,
    haslife boolean,
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
-- Name: person person_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.person ALTER COLUMN person_id SET DEFAULT nextval('public.person_person_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, -6.50, 'Milky Way', 0);
INSERT INTO public.galaxy VALUES (2, NULL, 3.40, 'Andromeda', 770);
INSERT INTO public.galaxy VALUES (3, NULL, 5.70, 'Triangulum', 890);
INSERT INTO public.galaxy VALUES (5, NULL, 6.94, 'Bode-s', 3700);
INSERT INTO public.galaxy VALUES (4, NULL, 5.70, 'Centaurus A', 4200);
INSERT INTO public.galaxy VALUES (6, NULL, 7.20, 'Sculptor', 3700);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (3, 'Deimos', 1.000, 23460, 12, NULL, false, 4);
INSERT INTO public.moon VALUES (1, 'Moon', 4.853, 384400, 3474, NULL, false, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 4.503, 6000, 22, NULL, false, 4);
INSERT INTO public.moon VALUES (4, 'Metis', NULL, 128000, 86, NULL, false, 5);
INSERT INTO public.moon VALUES (5, 'Adrastea', NULL, 129000, 33, NULL, false, 5);
INSERT INTO public.moon VALUES (6, 'Amalthea', NULL, 181000, 334, NULL, false, 5);
INSERT INTO public.moon VALUES (7, 'Thebe', NULL, 222000, 198, NULL, false, 5);
INSERT INTO public.moon VALUES (8, 'Io', NULL, 421800, 7286, NULL, false, 5);
INSERT INTO public.moon VALUES (9, 'Europa', NULL, 761100, 6242, NULL, false, 5);
INSERT INTO public.moon VALUES (10, 'Ganymede', NULL, 107040, 10536, NULL, false, 5);
INSERT INTO public.moon VALUES (11, 'Callisto', NULL, 1882700, 9640, NULL, false, 5);
INSERT INTO public.moon VALUES (12, 'Themisto', NULL, 7398500, 18, NULL, false, 5);
INSERT INTO public.moon VALUES (13, 'Leda', NULL, 11146400, 43, NULL, false, 5);
INSERT INTO public.moon VALUES (14, 'Ersa', NULL, 11401000, 6, NULL, false, 5);
INSERT INTO public.moon VALUES (15, 'Himalia', NULL, 11440600, 280, NULL, false, 5);
INSERT INTO public.moon VALUES (16, 'Pandia', NULL, 11481000, 6, NULL, false, 5);
INSERT INTO public.moon VALUES (17, 'Lysithea', NULL, 11700800, 85, NULL, false, 5);
INSERT INTO public.moon VALUES (18, 'Elara', NULL, 11712300, 160, NULL, false, 5);
INSERT INTO public.moon VALUES (19, 'Dia', NULL, 12260300, 8, NULL, false, 5);
INSERT INTO public.moon VALUES (20, 'Carpo', NULL, 17042300, 6, NULL, false, 5);


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.person VALUES (1, 'Numba One', 20.0, 0, 200, 'Zagreb', true, 3);
INSERT INTO public.person VALUES (2, 'Numba Two', 30.0, 10000, 180, 'Zagreb', true, 3);
INSERT INTO public.person VALUES (3, 'Numba Three', 40.0, 30000, 190, 'Zagreb', true, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (7, 'Uranus', 4.503, 2871, 51118, NULL, false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 4.503, 4498, 49528, NULL, false, 1);
INSERT INTO public.planet VALUES (1, 'Mercury', 4.503, 58, 4880, NULL, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 4.503, 108, 12104, NULL, false, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 4.603, 227, 8792, NULL, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 4.603, 778, 142984, NULL, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 4.503, 1462, 120536, NULL, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 4.543, 149, 12756, NULL, true, 1);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 4.850, 8, 13776, NULL, false, 2);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri c', 4.850, 223, 28602, NULL, false, 2);
INSERT INTO public.planet VALUES (11, 'Wolf 359 b', 0.350, 276008071, NULL, NULL, false, 3);
INSERT INTO public.planet VALUES (12, 'Wolf 359 c', 0.350, 119678296, NULL, NULL, false, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4.600, 0, 1392700, NULL, false, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 4.853, 0, 215550, NULL, false, 1);
INSERT INTO public.star VALUES (3, 'Wolf 359', 0.350, 0, 22620, NULL, false, 1);
INSERT INTO public.star VALUES (6, 'Bernard-s Star', 10.000, 0, 272710, NULL, false, 1);
INSERT INTO public.star VALUES (5, 'Toliman', 5.300, 0, 1201600, NULL, false, 1);
INSERT INTO public.star VALUES (4, 'Rigil Kentaurus', 9.200, 0, 1702200, NULL, false, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: person_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.person_person_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_uniqueid_const; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_uniqueid_const UNIQUE (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_uniqueid_const; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_uniqueid_const UNIQUE (moon_id);


--
-- Name: person person_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (person_id);


--
-- Name: person person_uniqueid_const; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_uniqueid_const UNIQUE (person_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_uniqueid_const; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_uniqueid_const UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_uniqueid_const; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_uniqueid_const UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: person person_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

