--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(50) NOT NULL,
    galaxy_id integer NOT NULL,
    temperature integer,
    distance_from_earth numeric NOT NULL,
    type text,
    hasellipticalspace boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_gal_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_gal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_gal_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_gal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_gal_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(50) NOT NULL,
    moon_id integer NOT NULL,
    temperature integer,
    distance_from_earth numeric NOT NULL,
    color text,
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
    name character varying(50) NOT NULL,
    planet_id integer NOT NULL,
    temperature integer,
    distance_from_earth numeric NOT NULL,
    color text,
    habitable boolean,
    hasmoon boolean,
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
    name character varying(50) NOT NULL,
    star_id integer NOT NULL,
    temperature integer,
    distance_from_earth numeric NOT NULL,
    color text,
    visibility boolean,
    ismagnetar boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_galaxy_info (
    name character varying(50) NOT NULL,
    star_galaxy_info_id integer NOT NULL,
    star_temperature integer,
    star_color character varying(50),
    galaxy_type character varying(50),
    has_elliptical_space boolean
);


ALTER TABLE public.star_galaxy_info OWNER TO freecodecamp;

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

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_gal_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, 5000, 0, 'Spiral', true);
INSERT INTO public.galaxy VALUES ('Andromeda', 2, 4000, 2500000, 'Spiral', false);
INSERT INTO public.galaxy VALUES ('Messier 87', 3, 6000, 53000000, 'Elliptical', true);
INSERT INTO public.galaxy VALUES ('Triangulum Galaxy', 4, 20000, 3000000, 'Spiral', false);
INSERT INTO public.galaxy VALUES ('Whirlpool Galaxy', 5, 22000, 23000000, 'Spiral', false);
INSERT INTO public.galaxy VALUES ('Whirlpooly Galaxy', 6, 22700, 23000000, 'Spiral', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 1, -20, 0.384, 'Gray', 3);
INSERT INTO public.moon VALUES ('Phobos', 2, -4, 0.00009, 'Gray', 4);
INSERT INTO public.moon VALUES ('Deimos', 3, -30, 0.00023, 'Gray', 4);
INSERT INTO public.moon VALUES ('Io', 4, -143, 0.0042, 'Yellow', 5);
INSERT INTO public.moon VALUES ('Europa', 5, -160, 0.0060, 'White', 5);
INSERT INTO public.moon VALUES ('Ganymede', 6, -170, 0.0092, 'Gray', 5);
INSERT INTO public.moon VALUES ('Callisto', 7, -139, 0.0095, 'Gray', 5);
INSERT INTO public.moon VALUES ('Titan', 8, -179, 0.0121, 'Orange', 6);
INSERT INTO public.moon VALUES ('Rhea', 9, -174, 0.0097, 'Gray', 6);
INSERT INTO public.moon VALUES ('Iapetus', 10, -148, 0.0143, 'Gray', 6);
INSERT INTO public.moon VALUES ('Mimas', 11, -188, 0.0078, 'Gray', 6);
INSERT INTO public.moon VALUES ('Enceladus', 12, -201, 0.0149, 'White', 6);
INSERT INTO public.moon VALUES ('Triton', 13, -235, 0.0224, 'Pink', 7);
INSERT INTO public.moon VALUES ('Charon', 14, -223, 0.00007, 'Gray', 8);
INSERT INTO public.moon VALUES ('Proteus', 15, -210, 0.00009, 'Gray', 9);
INSERT INTO public.moon VALUES ('Nereid', 16, -226, 0.00012, 'Gray', 9);
INSERT INTO public.moon VALUES ('Ceres', 17, -108, 0.00015, 'Gray', 10);
INSERT INTO public.moon VALUES ('Haumea', 18, -120, 0.00018, 'Gray', 11);
INSERT INTO public.moon VALUES ('Makemake', 19, -130, 0.00020, 'Gray', 12);
INSERT INTO public.moon VALUES ('Eris', 20, -250, 0.00025, 'Gray', 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', 1, 430, 0.39, 'Gray', false, false, 1);
INSERT INTO public.planet VALUES ('Venus', 2, 735, 0.72, 'Yellowish', false, false, 1);
INSERT INTO public.planet VALUES ('Earth', 3, 15, 1.00, 'Blue', true, true, 1);
INSERT INTO public.planet VALUES ('Mars', 4, -65, 1.52, 'Red', false, true, 1);
INSERT INTO public.planet VALUES ('Jupiter', 5, -145, 5.20, 'Orange-Brown', false, true, 1);
INSERT INTO public.planet VALUES ('Saturn', 6, -178, 9.58, 'Pale Yellow', false, true, 1);
INSERT INTO public.planet VALUES ('Uranus', 7, -197, 19.22, 'Light Blue', false, false, 1);
INSERT INTO public.planet VALUES ('Neptune', 8, -201, 30.05, 'Blue', false, false, 1);
INSERT INTO public.planet VALUES ('Proxima b', 9, -40, 4.24, 'Red', true, false, 2);
INSERT INTO public.planet VALUES ('Kepler-22b', 10, 22, 620, 'Blue-Green', true, false, 3);
INSERT INTO public.planet VALUES ('HD 209458 b', 11, 1000, 150, 'Gray', false, true, 4);
INSERT INTO public.planet VALUES ('TRAPPIST-1d', 12, -30, 39.5, 'Red', true, true, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sirius', 1, 9940, 8.6, 'Blue-White', true, false, 1);
INSERT INTO public.star VALUES ('Canopus', 2, 7370, 310, 'Yellow-White', true, false, 3);
INSERT INTO public.star VALUES ('Arcturus', 3, 4280, 37, 'Orange', true, false, 2);
INSERT INTO public.star VALUES ('Alpha Centauri', 4, 5790, 4.37, 'Yellow', true, false, 1);
INSERT INTO public.star VALUES ('Vega', 5, 9600, 25, 'Blue-White', true, false, 3);
INSERT INTO public.star VALUES ('Capella', 6, 4700, 42, 'Yellow-White', true, false, 2);
INSERT INTO public.star VALUES ('Rigel', 7, 12000, 860, 'Blue', true, false, 2);
INSERT INTO public.star VALUES ('Betelgeuse', 8, 3500, 640, 'Red', true, false, 2);
INSERT INTO public.star VALUES ('Pulsar X-1', 9, 12000, 7500, 'Blue', false, true, 3);
INSERT INTO public.star VALUES ('Magnetar A-7', 10, 10000, 4000, 'Blue', false, true, 1);


--
-- Data for Name: star_galaxy_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_galaxy_info VALUES ('Sirius', 1, 9940, 'Blue-White', 'Spiral', true);
INSERT INTO public.star_galaxy_info VALUES ('Canopus', 2, 7370, 'Yellow-White', 'Spiral', false);
INSERT INTO public.star_galaxy_info VALUES ('Arcturus', 3, 4280, 'Orange', 'Elliptical', true);
INSERT INTO public.star_galaxy_info VALUES ('Alpha Centauri', 4, 5790, 'Yellow', 'Spiral', true);
INSERT INTO public.star_galaxy_info VALUES ('Vega', 5, 9600, 'Blue-White', 'Spiral', false);
INSERT INTO public.star_galaxy_info VALUES ('Capella', 6, 4700, 'Yellow-White', 'Elliptical', true);
INSERT INTO public.star_galaxy_info VALUES ('Rigel', 7, 12000, 'Blue', 'Elliptical', true);
INSERT INTO public.star_galaxy_info VALUES ('Betelgeuse', 8, 3500, 'Red', 'Elliptical', true);
INSERT INTO public.star_galaxy_info VALUES ('Pulsar X-1', 9, 12000, 'Blue', 'Spiral', false);
INSERT INTO public.star_galaxy_info VALUES ('Magnetar A-7', 10, 10000, 'Blue', 'Spiral', true);


--
-- Name: galaxy_gal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_gal_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_gal_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_gal_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star_galaxy_info star_galaxy_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_galaxy_info
    ADD CONSTRAINT star_galaxy_info_pkey PRIMARY KEY (star_galaxy_info_id);


--
-- Name: star_galaxy_info star_galaxy_info_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_galaxy_info
    ADD CONSTRAINT star_galaxy_info_star_id_key UNIQUE (star_galaxy_info_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

