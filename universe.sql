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
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    age_in_million_years integer,
    weight_in_tonnes integer,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean
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
-- Name: habitants; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.habitants (
    habitants_id integer NOT NULL,
    name character varying NOT NULL,
    habitant_types text NOT NULL
);


ALTER TABLE public.habitants OWNER TO freecodecamp;

--
-- Name: habitants_habitants_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.habitants_habitants_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.habitants_habitants_id_seq OWNER TO freecodecamp;

--
-- Name: habitants_habitants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.habitants_habitants_id_seq OWNED BY public.habitants.habitants_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    has_life boolean,
    is_spherical boolean,
    description text NOT NULL,
    distance_from_earth integer,
    age_in_million_years integer,
    average_temperature numeric,
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
    name character varying NOT NULL,
    has_life boolean,
    is_spherical boolean,
    description text NOT NULL,
    distance_from_earth integer,
    age_in_million_years integer,
    average_temperature numeric,
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
    name character varying NOT NULL,
    does_shine boolean,
    is_hot boolean,
    description text NOT NULL,
    distance_from_earth integer,
    age_in_million_years integer,
    average_temperature numeric,
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
-- Name: habitants habitants_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.habitants ALTER COLUMN habitants_id SET DEFAULT nextval('public.habitants_habitants_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13700, 345, 'Our home galaxy, contains our solar system.', true, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10000, 1234, 'Closest spiral galaxy to the Milky Way.', false, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 3000, 510, 'Third largest in the Local Group.', false, true);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 8900, 811, 'Unusually large central bulge.', false, false);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 400, 1411, 'Famous for its classic spiral structure.', false, true);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 10000, 111, 'Located in the constellation Ursa Major.', false, true);


--
-- Data for Name: habitants; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.habitants VALUES (1, 'Humans', 'Sentient Beings');
INSERT INTO public.habitants VALUES (2, 'Martians', 'Fictional Lifeforms');
INSERT INTO public.habitants VALUES (3, 'Aliens', 'Extraterrestrial Life');
INSERT INTO public.habitants VALUES (4, 'Robots', 'Artificial Intelligence');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (43, 'Luna', true, true, 'Earths only natural satellite', 3844, 45, 25, 3);
INSERT INTO public.moon VALUES (44, 'Phobos', false, true, 'Mars closest moon', 9377, 450, 4, 18);
INSERT INTO public.moon VALUES (45, 'Deimos', false, true, 'Mars second moon', 23460, 10, 20, 18);
INSERT INTO public.moon VALUES (46, 'Io', false, true, 'Most volcanic moon', 4217, 46, 143, 20);
INSERT INTO public.moon VALUES (47, 'Europa', false, true, 'Icy moon with potential ocean', 6711, 46, 160, 23);
INSERT INTO public.moon VALUES (48, 'Ganymede', false, true, 'Largest moon in the solar system', 10704, 46, 130, 22);
INSERT INTO public.moon VALUES (49, 'Callisto', false, true, 'Heavily cratered moon', 18827, 46, 139, 21);
INSERT INTO public.moon VALUES (50, 'Titan', false, true, 'Largest moon of Saturn', 1221870, 46, 179, 19);
INSERT INTO public.moon VALUES (51, 'Rhea', false, true, 'Second largest moon of Saturn', 527040, 46, 220, 18);
INSERT INTO public.moon VALUES (52, 'Iapetus', false, true, 'Moon with twotone coloration', 35613, 46, 160, 16);
INSERT INTO public.moon VALUES (53, 'Enceladus', false, true, 'Moon with water geysers', 2379480, 46, 201, 16);
INSERT INTO public.moon VALUES (54, 'Mimas', false, true, 'Moon with a large crater', 18552, 46, 2, 16);
INSERT INTO public.moon VALUES (55, 'Tethys', false, true, 'Moon with a giant rift', 29466, 46, 206, 16);
INSERT INTO public.moon VALUES (56, 'Miranda', false, true, 'Small, irregular moon of Uranus', 1290, 46, 184, 17);
INSERT INTO public.moon VALUES (57, 'Ariel', false, true, 'Brightest moon of Uranus', 1910, 46, 178, 17);
INSERT INTO public.moon VALUES (58, 'Umbriel', false, true, 'Dark moon of Uranus', 2660, 46, 198, 17);
INSERT INTO public.moon VALUES (59, 'Titania', false, true, 'Largest moon of Uranus', 4360, 46, 190, 1);
INSERT INTO public.moon VALUES (60, 'Oberon', false, true, 'Second largest moon of Uranus', 5830, 46, 198, 22);
INSERT INTO public.moon VALUES (61, 'Triton', false, true, 'Largest moon of Neptune', 35480, 46, 235, 23);
INSERT INTO public.moon VALUES (62, 'Nereid', false, true, 'Moon with highly elliptical orbit', 117647, 46, 227, 23);
INSERT INTO public.moon VALUES (63, 'Proteus', false, true, 'Large irregular moon of Neptune', 117647, 46, 230, 24);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, true, 'Our home planet, the third from the Sun.', 0, 4500, 288, 1);
INSERT INTO public.planet VALUES (2, 'Proxima b', false, true, 'An exoplanet orbiting the red dwarf star Proxima Centauri.', 4240, 4500, 234, 6);
INSERT INTO public.planet VALUES (3, 'Alpha Centauri Bb', false, true, 'An exoplanet orbiting the star Alpha Centauri B.', 4300, 5500, 223, 5);
INSERT INTO public.planet VALUES (16, 'Mercury', false, true, 'Closest planet to the sun', 91700, 4600, 167, 1);
INSERT INTO public.planet VALUES (17, 'Venus', false, true, 'Earths sister planet', 41400, 4600, 464, 1);
INSERT INTO public.planet VALUES (18, 'Mars', false, true, 'Red planet with two moons', 78300, 4500, 60, 1);
INSERT INTO public.planet VALUES (19, 'Jupiter', false, true, 'Largest planet in the solar system', 628730, 4600, 110, 1);
INSERT INTO public.planet VALUES (20, 'Saturn', false, true, 'Planet with prominent rings', 1275000, 4600, 140, 1);
INSERT INTO public.planet VALUES (21, 'Uranus', false, true, 'Ice giant with tilted axis', 2723950, 4600, 195, 2);
INSERT INTO public.planet VALUES (22, 'Neptune', false, true, 'Farthest planet from the sun', 4271000, 4600, 214, 2);
INSERT INTO public.planet VALUES (23, 'Pluto', false, true, 'Dwarf planet in the Kuiper belt', 5913000, 4600, 229, 2);
INSERT INTO public.planet VALUES (24, 'Kepler 22b', false, true, 'Exoplanet in the habitable zone', 620000, 600, 15, 3);
INSERT INTO public.planet VALUES (25, 'HD 209458 b', false, true, 'Exoplanet known as Osiris', 1500, 400, 1100, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', true, true, 'The star at the center of our solar system.', NULL, 4600, 5778, 1);
INSERT INTO public.star VALUES (2, 'Sirius', true, true, 'The brightest star in the night sky.', NULL, 242, 9940, 2);
INSERT INTO public.star VALUES (3, 'Betelgeuse', true, true, 'A red supergiant star in the constellation Orion.', NULL, 8000, 3500, 3);
INSERT INTO public.star VALUES (4, 'Rigel', true, true, 'A blue supergiant star also in Orion.', NULL, 860, 11000, 4);
INSERT INTO public.star VALUES (5, 'Alpha Centauri', true, true, 'The closest star system to the Solar System.', NULL, 5500, 5790, 5);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', true, true, 'The closest known star to the Sun.', NULL, 4500, 3042, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: habitants_habitants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.habitants_habitants_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 63, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 25, true);


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
-- Name: habitants habitants_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.habitants
    ADD CONSTRAINT habitants_name_key UNIQUE (name);


--
-- Name: habitants habitants_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.habitants
    ADD CONSTRAINT habitants_pkey PRIMARY KEY (habitants_id);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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
-- PostgreSQL database dump complete
--

