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
-- Name: fleet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fleet (
    name character varying(50) NOT NULL,
    ships_numbers integer,
    fleet_id integer NOT NULL,
    planet_id integer
);


ALTER TABLE public.fleet OWNER TO freecodecamp;

--
-- Name: fleet_fleet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fleet_fleet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fleet_fleet_id_seq OWNER TO freecodecamp;

--
-- Name: fleet_fleet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fleet_fleet_id_seq OWNED BY public.fleet.fleet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(50) NOT NULL,
    massifs integer,
    popuation integer,
    galaxy_id integer NOT NULL,
    diameter numeric
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
    name character varying(50) NOT NULL,
    massifs integer,
    popuation integer,
    moon_id integer NOT NULL,
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
    massifs integer,
    popuation integer,
    diameter numeric,
    liveable boolean,
    atmosphere boolean,
    planet_id integer NOT NULL,
    star_id integer,
    species text
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
    popuation integer,
    massifs integer,
    star_id integer NOT NULL,
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
-- Name: fleet fleet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fleet ALTER COLUMN fleet_id SET DEFAULT nextval('public.fleet_fleet_id_seq'::regclass);


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
-- Data for Name: fleet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fleet VALUES ('111', 1, 1, 1);
INSERT INTO public.fleet VALUES ('112', 2, 2, 2);
INSERT INTO public.fleet VALUES ('113', 3, 3, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('abcd', 1, 200, 1, NULL);
INSERT INTO public.galaxy VALUES ('gdf', 4, 122, 2, 0.0001);
INSERT INTO public.galaxy VALUES ('qqwer', 45412, 224456, 3, 111123);
INSERT INTO public.galaxy VALUES ('qqqwetas', 454654, 124543, 4, 1145643);
INSERT INTO public.galaxy VALUES ('as', 467345, 441235, 5, 1112351.2);
INSERT INTO public.galaxy VALUES ('eras', 53262, 5234, 6, 1234553);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('ggg', 2, 0, 1, 1);
INSERT INTO public.moon VALUES ('frwfr', 5123, 123, 2, 2);
INSERT INTO public.moon VALUES ('frdsfsdfwfr', 5123, 1223, 3, 3);
INSERT INTO public.moon VALUES ('213asdr', 5123, 123, 4, 4);
INSERT INTO public.moon VALUES ('ffgh213123', 5123, 123, 5, 5);
INSERT INTO public.moon VALUES ('frwdfssdfsffr', 5123, 123, 6, 6);
INSERT INTO public.moon VALUES ('fr', 5123, 123, 7, NULL);
INSERT INTO public.moon VALUES ('frdsfsd', 5123, 1223, 8, NULL);
INSERT INTO public.moon VALUES ('213dr', 5123, 123, 9, NULL);
INSERT INTO public.moon VALUES ('ff13123', 5123, 123, 10, NULL);
INSERT INTO public.moon VALUES ('frwdfssfr', 5123, 123, 11, NULL);
INSERT INTO public.moon VALUES ('frasfd', 5123, 123, 12, NULL);
INSERT INTO public.moon VALUES ('frdsd', 5123, 1223, 13, NULL);
INSERT INTO public.moon VALUES ('213', 5123, 123, 14, NULL);
INSERT INTO public.moon VALUES ('13123', 5123, 123, 15, NULL);
INSERT INTO public.moon VALUES ('frsfr', 5123, 123, 16, NULL);
INSERT INTO public.moon VALUES ('fras', 5123, 123, 17, NULL);
INSERT INTO public.moon VALUES ('fsd', 5123, 1223, 18, NULL);
INSERT INTO public.moon VALUES ('213123', 5123, 123, 19, NULL);
INSERT INTO public.moon VALUES ('13', 5123, 123, 20, NULL);
INSERT INTO public.moon VALUES ('ffr', 5123, 123, 21, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('mnnv', 133, 4556, 1, true, true, 1, 1, NULL);
INSERT INTO public.planet VALUES ('ggg', 1, 4, 1.4, true, true, 2, 2, 'sfff');
INSERT INTO public.planet VALUES ('qqwe', 112534, 123454, 1223.4, true, true, 3, 3, 'ffqwef');
INSERT INTO public.planet VALUES ('ghgfh', 10000, 4223, 4534.123, true, true, 4, 4, 'fsfseqwe4');
INSERT INTO public.planet VALUES ('tgrtyq', 0, 756, 4000, false, false, 5, 5, 'ffghgfh');
INSERT INTO public.planet VALUES ('fdgfdghj', 234, 341, 1.4, false, true, 6, 6, 'hgjhgj');
INSERT INTO public.planet VALUES ('gfhgh00', 112534, 123454, 1223.4, true, true, 9, NULL, 'ffqwef');
INSERT INTO public.planet VALUES ('ghgfhgfhwer', 10000, 4223, 4534.123, true, true, 10, NULL, 'fsfseqwe4');
INSERT INTO public.planet VALUES ('qwtrtert', 0, 756, 4000, false, false, 11, NULL, 'ffghgfh');
INSERT INTO public.planet VALUES ('saeqwe', 234, 341, 1.4, false, true, 12, NULL, 'hgjhgj');
INSERT INTO public.planet VALUES ('1235h00', 112534, 123454, 1223.4, true, true, 13, NULL, 'ffqwef');
INSERT INTO public.planet VALUES ('ghfgdhgfhfhwer', 10000, 4223, 4534.123, true, true, 14, NULL, 'fsfseqwe4');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('bedc', 2222, 45, 1, 1);
INSERT INTO public.star VALUES ('ggase', 123, 4523, 2, 2);
INSERT INTO public.star VALUES ('hhjgd', 34123, 454413, 3, 3);
INSERT INTO public.star VALUES ('hjgjghjesasa', 36666, 12343, 4, 4);
INSERT INTO public.star VALUES ('gaswqa', 67513, 754623, 5, 5);
INSERT INTO public.star VALUES ('ghghgsq', 45345, 123123, 6, 6);


--
-- Name: fleet_fleet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fleet_fleet_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: fleet fleet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fleet
    ADD CONSTRAINT fleet_name_key UNIQUE (name);


--
-- Name: fleet fleet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fleet
    ADD CONSTRAINT fleet_pkey PRIMARY KEY (fleet_id);


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
-- Name: fleet fleet_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fleet
    ADD CONSTRAINT fleet_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet_id_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fk_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fk_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fk_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

