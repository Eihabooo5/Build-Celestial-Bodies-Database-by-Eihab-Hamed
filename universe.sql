# Build-Celestial-Bodies-Database-by-Eihab-Hamed

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(50) NOT NULL,
    galaxy_types character varying(30) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    dimensions_size integer NOT NULL,
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
    name character varying(50) NOT NULL,
    moon_types character varying(30) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    dimensions_size integer NOT NULL,
    description text,
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
    name character varying(50) NOT NULL,
    planet_types character varying(30) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    dimensions_size integer NOT NULL,
    description text,
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
-- Name: sky; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sky (
    sky_id integer NOT NULL,
    name character varying(50) NOT NULL,
    sky_types character varying(30) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    dimensions_size integer NOT NULL,
    description text
);


ALTER TABLE public.sky OWNER TO freecodecamp;

--
-- Name: sky_sky_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sky_sky_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sky_sky_id_seq OWNER TO freecodecamp;

--
-- Name: sky_sky_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sky_sky_id_seq OWNED BY public.sky.sky_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    star_types character varying(30) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    dimensions_size integer NOT NULL,
    description text,
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
-- Name: sky sky_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sky ALTER COLUMN sky_id SET DEFAULT nextval('public.sky_sky_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Second Galaxy', 'Third Galaxy Type', 255, 25198, false, true, 130, NULL);
INSERT INTO public.galaxy VALUES (3, 'Third Galaxy', 'Second Galaxy Type', 63, 18053, false, true, 251, NULL);
INSERT INTO public.galaxy VALUES (4, 'Fourth Galaxy', 'Second Galaxy Type', 51, 16361, false, true, 62, NULL);
INSERT INTO public.galaxy VALUES (5, 'Fifth Galaxy', 'First Galaxy Type', 61, 20241, false, true, 211, NULL);
INSERT INTO public.galaxy VALUES (6, 'Sixth Galaxy', 'First Galaxy Type', 25, 21864, false, true, 421, NULL);
INSERT INTO public.galaxy VALUES (1, 'First Galaxy', 'First Galaxy Type', 1000, 0, true, true, 389, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Second Moon', 'First Moon Type', 211, 3819, false, false, 515, NULL, 1);
INSERT INTO public.moon VALUES (3, 'Third Moon', 'First Moon Type', 255, 5215, false, true, 412, NULL, 1);
INSERT INTO public.moon VALUES (8, 'Eighth Moon', 'First Moon Type', 251, 5216, false, false, 616, NULL, 1);
INSERT INTO public.moon VALUES (13, 'Thirteenth Moon', 'First Moon Type', 504, 5129, false, true, 215, NULL, 1);
INSERT INTO public.moon VALUES (14, 'Fourtheenth Moon', 'First Moon Type', 515, 5218, false, false, 821, NULL, 1);
INSERT INTO public.moon VALUES (19, 'Nineteenth Moon', 'First Moon Type', 284, 2084, false, false, 289, NULL, 1);
INSERT INTO public.moon VALUES (1, 'First Moon', 'Second Moon Type', 521, 2414, false, true, 512, NULL, 2);
INSERT INTO public.moon VALUES (4, 'Fourth Moon', 'Second Moon Type', 521, 2115, false, false, 512, NULL, 2);
INSERT INTO public.moon VALUES (5, 'Fifth Moon', 'Second Moon Type', 524, 2515, false, false, 512, NULL, 2);
INSERT INTO public.moon VALUES (6, 'Sixth Moon', 'Second Moon Type', 72, 2815, false, false, 251, NULL, 2);
INSERT INTO public.moon VALUES (7, 'Seventh Moon', 'Second Moon Type', 125, 2141, false, true, 261, NULL, 2);
INSERT INTO public.moon VALUES (9, 'Nineth Moon', 'Second Moon Type', 521, 5151, false, true, 616, NULL, 2);
INSERT INTO public.moon VALUES (10, 'Tenth Moon', 'Second Moon Type', 219, 2418, false, false, 902, NULL, 2);
INSERT INTO public.moon VALUES (11, 'Eleventh Moon', 'Second Moon Type', 125, 5421, false, false, 421, NULL, 2);
INSERT INTO public.moon VALUES (12, 'Twelveth Moon', 'Second Moon Type', 21, 1425, false, false, 515, NULL, 2);
INSERT INTO public.moon VALUES (15, 'Fiftheenth Moon', 'Second Moon Type', 500, 4124, false, true, 2155, NULL, 2);
INSERT INTO public.moon VALUES (16, 'Sixtheenth Moon', 'Second Moon Type', 424, 5122, false, false, 242, NULL, 2);
INSERT INTO public.moon VALUES (17, 'Seventheenth Moon', 'Second Moon Type', 521, 2498, false, false, 244, NULL, 2);
INSERT INTO public.moon VALUES (18, 'Eighteenth Moon', 'Second Moon Type', 91, 2421, false, false, 282, NULL, 2);
INSERT INTO public.moon VALUES (20, 'Twentieth Moon', 'Second Moon Type', 289, 284, false, false, 210, NULL, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'First Planet', 'First Planet Type', 516, 5166, true, true, 773, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Third Planet', 'First Planet Type', 168, 2415, false, true, 261, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Fifth Planet', 'First Planet Type', 215, 5161, false, false, 251, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Nineth Planet', 'First Planet Type', 216, 2825, false, true, 215, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Second Planet', 'Second Planet Type', 521, 2516, false, false, 161, NULL, 2);
INSERT INTO public.planet VALUES (4, 'Fourth Planet', 'Second Planet Type', 126, 6126, false, false, 261, NULL, 2);
INSERT INTO public.planet VALUES (6, 'Sixth Planet', 'Second Planet Type', 52, 5151, false, false, 212, NULL, 2);
INSERT INTO public.planet VALUES (7, 'Seventh Planet', 'Second Planet Type', 579, 2182, false, true, 512, NULL, 2);
INSERT INTO public.planet VALUES (8, 'Eighth Planet', 'Second Planet Type', 828, 2892, false, false, 161, NULL, 2);
INSERT INTO public.planet VALUES (10, 'Tenth Planet', 'Second Planet Type', 215, 5218, false, false, 215, NULL, 2);
INSERT INTO public.planet VALUES (11, 'Eleventh Planet', 'Second Planet Type', 125, 5219, false, false, 214, NULL, 2);
INSERT INTO public.planet VALUES (12, 'Twelveth Planet', 'Second Planet Type', 21, 5151, false, false, 515, NULL, 2);


--
-- Data for Name: sky; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sky VALUES (1, 'First Sky', 'First Sky Type', 521, 5290, true, true, 140, NULL);
INSERT INTO public.sky VALUES (2, 'Second Sky', 'Second Sky Type', 919, 219, false, false, 218, NULL);
INSERT INTO public.sky VALUES (3, 'Third Sky', 'Second Sky Type', 521, 2410, false, false, 2415, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (3, 'Third Star', 'First Star Type', 161, 6108, false, false, 251, NULL, 1);
INSERT INTO public.star VALUES (5, 'Fifth Star', 'First Star Type', 421, 2189, false, false, 258, NULL, 1);
INSERT INTO public.star VALUES (2, 'Second Star', 'Second Star Type', 215, 1580, false, false, 248, NULL, 2);
INSERT INTO public.star VALUES (4, 'Fourth Star', 'Second Star Type', 214, 8501, false, false, 518, NULL, 2);
INSERT INTO public.star VALUES (6, 'Sixth Star', 'Second Star Type', 215, 2150, false, false, 272, NULL, 2);
INSERT INTO public.star VALUES (1, 'First Star', 'Second Star Type', 152, 1256, false, false, 166, NULL, 2);


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
-- Name: sky_sky_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sky_sky_id_seq', 3, true);


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
-- Name: sky sky_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sky
    ADD CONSTRAINT sky_name_key UNIQUE (name);


--
-- Name: sky sky_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sky
    ADD CONSTRAINT sky_pkey PRIMARY KEY (sky_id);


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

