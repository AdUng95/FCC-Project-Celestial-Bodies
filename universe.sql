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
-- Name: asteroids; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroids (
    asteroids_id integer NOT NULL,
    name character varying NOT NULL,
    size integer NOT NULL,
    mass numeric NOT NULL,
    description text NOT NULL,
    has_one_moon boolean NOT NULL,
    has_ring boolean NOT NULL,
    age character varying
);


ALTER TABLE public.asteroids OWNER TO freecodecamp;

--
-- Name: asteroids_asteroids_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroids_asteroids_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroids_asteroids_id_seq OWNER TO freecodecamp;

--
-- Name: asteroids_asteroids_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroids_asteroids_id_seq OWNED BY public.asteroids.asteroids_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying NOT NULL,
    size integer NOT NULL,
    mass numeric NOT NULL,
    description text NOT NULL,
    galaxy_id integer NOT NULL,
    age character varying
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
    name character varying NOT NULL,
    size integer NOT NULL,
    mass numeric NOT NULL,
    description text NOT NULL,
    has_ring boolean NOT NULL,
    is_spherical boolean NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer,
    age character varying
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
    name character varying NOT NULL,
    size integer NOT NULL,
    mass numeric NOT NULL,
    description text NOT NULL,
    has_life boolean NOT NULL,
    has_ring boolean NOT NULL,
    planet_id integer NOT NULL,
    star_id integer,
    age character varying
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
    name character varying NOT NULL,
    size integer NOT NULL,
    mass numeric NOT NULL,
    description text NOT NULL,
    in_our_solar_system boolean NOT NULL,
    within_10_light_years boolean NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer,
    age character varying
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
-- Name: asteroids asteroids_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids ALTER COLUMN asteroids_id SET DEFAULT nextval('public.asteroids_asteroids_id_seq'::regclass);


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
-- Data for Name: asteroids; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroids VALUES (1, '10199 Chariklo', 94, 1, 'largest confirmed centaur', false, true, NULL);
INSERT INTO public.asteroids VALUES (2, '243 Ida', 10, 4.2, 'in the Koronis family of the asteroid belt', true, false, NULL);
INSERT INTO public.asteroids VALUES (3, '4 Vesta', 163, 2.589, 'one of the largest objects in the asteroid belt', false, false, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 52850, -21, 'spiral', 1, NULL);
INSERT INTO public.galaxy VALUES ('Andromeda', 110000, 3.44, 'M3 Spiral', 3, NULL);
INSERT INTO public.galaxy VALUES ('Cigar', 18500, 50000000000, 'Starburst in Ursa Major', 4, NULL);
INSERT INTO public.galaxy VALUES ('Pinwheel', 85000, 1000000000000, 'Face-on spiral in Ursa Major', 5, NULL);
INSERT INTO public.galaxy VALUES ('Sombrero', 25000, 0.0000008, '9.55 megaparsecs from Milky Way', 6, NULL);
INSERT INTO public.galaxy VALUES ('Whirlpool', 30000, 160, 'Messier 51a grand-design spiral', 7, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Europa', 969, 3.01, 'smallest of four moons orbiting Jupiter', false, true, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('Titan', 1600, 1.3452, 'largest moon of Saturn', false, true, 2, NULL, NULL);
INSERT INTO public.moon VALUES ('Rhea', 475, 2.3065, 'second-largest moon of Saturn', true, true, 3, NULL, NULL);
INSERT INTO public.moon VALUES ('Luna', 1737, 7.349, 'Earths moon', false, true, 4, NULL, NULL);
INSERT INTO public.moon VALUES ('Phobos', 7, 1.08, 'Mars largest innermost moon', false, true, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('Deimos', 4, 1.8, 'Mars outermost moon', false, true, 6, NULL, NULL);
INSERT INTO public.moon VALUES ('Ganymede', 1637, 1.48, 'largest of the four Galilean moons of Jupiter', false, true, 7, NULL, NULL);
INSERT INTO public.moon VALUES ('Callisto', 1498, 1.076, 'second-largest Jupiter moon', false, true, 8, NULL, NULL);
INSERT INTO public.moon VALUES ('Io', 1132, 8.93, 'innermost third-largest Jupiter moon', false, true, 9, NULL, NULL);
INSERT INTO public.moon VALUES ('Amalthea', 52, 2.08, 'third closest moon of Jupiter', false, true, 10, NULL, NULL);
INSERT INTO public.moon VALUES ('Elara', 27, 8.7, 'prograde irregular satellite of Jupiter', false, false, 11, NULL, NULL);
INSERT INTO public.moon VALUES ('Himalia', 53, 2.3, 'largest irregular satellite of Jupiter', false, false, 12, NULL, NULL);
INSERT INTO public.moon VALUES ('Thebe', 31, 4.3, 'known as Jupiter XIV', true, false, 13, NULL, NULL);
INSERT INTO public.moon VALUES ('Pasiphae', 19, 1.91, 'retrograde irregular of Jupiter', false, false, 14, NULL, NULL);
INSERT INTO public.moon VALUES ('Metis', 13, 3.6, 'Jupiter XVI innermost moon', false, false, 15, NULL, NULL);
INSERT INTO public.moon VALUES ('Iapetus', 456, 1.806, 'third-largest moon of Saturn', false, true, 16, NULL, NULL);
INSERT INTO public.moon VALUES ('Dione', 349, 1.095, 'designated as Saturn IV', false, true, 17, NULL, NULL);
INSERT INTO public.moon VALUES ('Titania', 490, 3.527, 'largest moon of Uranus', false, true, 18, NULL, NULL);
INSERT INTO public.moon VALUES ('Oberon', 473, 3.076, 'second largest Uranian moon', true, true, 19, NULL, NULL);
INSERT INTO public.moon VALUES ('Triton', 841, 0.0000000015, 'largest natural satellite of Neptune', false, true, 20, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', 1516, 3.285, 'smallest and first planet', false, false, 5, NULL, NULL);
INSERT INTO public.planet VALUES ('Earth', 3959, 5.972, 'third planet', true, false, 6, NULL, NULL);
INSERT INTO public.planet VALUES ('Jupiter', 43441, 1.898, 'fifth planet and largest in Solar System', false, true, 7, NULL, NULL);
INSERT INTO public.planet VALUES ('Venus', 3760, 4.867, 'second planet known as Earths twin', false, false, 8, NULL, NULL);
INSERT INTO public.planet VALUES ('Mars', 2106, 6.39, 'fourth planet and second smallest', false, false, 9, NULL, NULL);
INSERT INTO public.planet VALUES ('Saturn', 36184, 5.683, 'sixth planet and second largest', false, true, 10, NULL, NULL);
INSERT INTO public.planet VALUES ('Uranus', 15759, 8.681, 'seventh planet and third largest', false, true, 11, NULL, NULL);
INSERT INTO public.planet VALUES ('Neptune', 15299, 1.024, 'eighth planet and densest giant planet', false, true, 12, NULL, NULL);
INSERT INTO public.planet VALUES ('Pluto', 738, 1.309, 'dwarf planet in Kuiper belt', false, false, 13, NULL, NULL);
INSERT INTO public.planet VALUES ('Eris', 723, 1.27, 'second largest known dwarf planet', false, false, 14, NULL, NULL);
INSERT INTO public.planet VALUES ('Kepler-186f', 4632, 1.71, 'exoplanet orbiting red dwarf', false, false, 15, NULL, NULL);
INSERT INTO public.planet VALUES ('Kepler-22b', 9501, 36, 'located 600 light years from Earth', false, false, 16, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 432690, 1.989, 'Center of Solar System', true, true, 1, NULL, NULL);
INSERT INTO public.star VALUES ('Arcturus', 10980000, 2.188, 'Brightest star in the northern constellation of Bootes', false, false, 3, NULL, NULL);
INSERT INTO public.star VALUES ('Sirius', 1500000, 2.063, 'Brightest star in the night sky', false, true, 4, NULL, NULL);
INSERT INTO public.star VALUES ('Canopus', 30692000, 1.949, 'Brightest star in the southern constellation of Carina', false, false, 5, NULL, NULL);
INSERT INTO public.star VALUES ('Alpha Centauri A', 528860, 2.188, 'Slightly bigger than the Sun and is of the same stellar type G2', false, true, 6, NULL, NULL);
INSERT INTO public.star VALUES ('Rigel', 34110000, 3.58, 'Blue supergiant in constellation of Orion', false, false, 7, NULL, NULL);


--
-- Name: asteroids_asteroids_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroids_asteroids_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 7, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: asteroids asteroids_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_age_key UNIQUE (age);


--
-- Name: asteroids asteroids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_pkey PRIMARY KEY (asteroids_id);


--
-- Name: galaxy galaxy_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_age_key UNIQUE (age);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_age_key UNIQUE (age);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_age_key UNIQUE (age);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_age_key UNIQUE (age);


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

