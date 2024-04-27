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
-- Name: animal; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.animal (
    animal_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text
);


ALTER TABLE public.animal OWNER TO freecodecamp;

--
-- Name: animal_animal_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.animal_animal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.animal_animal_id_seq OWNER TO freecodecamp;

--
-- Name: animal_animal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.animal_animal_id_seq OWNED BY public.animal.animal_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    description text,
    is_spherical boolean,
    has_life boolean
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
    name character varying(100) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    description text,
    is_spherical boolean,
    has_life boolean,
    planet_id integer
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
    name character varying(100) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    description text,
    is_spherical boolean,
    has_life boolean,
    star_id integer
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    description text,
    is_spherical boolean,
    has_life boolean,
    galaxy_id integer
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
-- Name: animal animal_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.animal ALTER COLUMN animal_id SET DEFAULT nextval('public.animal_animal_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: animal; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.animal VALUES (1, 'dog', 'a domesticated carnivorous mammal that typically has a long snout, an acute sense of smell, and a barking, howling, or whining voice.');
INSERT INTO public.animal VALUES (2, 'cat', 'a small domesticated carnivorous mammal with soft fur, a short snout, and retractile claws. It is widely kept as a pet or for catching mice, and many breeds have been developed.');
INSERT INTO public.animal VALUES (3, 'elephant', 'a heavy plant-eating mammal with a prehensile trunk, long curved ivory tusks, and large ears, native to Africa and southern Asia. It is the largest living land animal.');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13000, 100000, 'The Milky Way is the galaxy that contains our Solar System. The descriptive "milky" is derived from the appearance from Earth of the galaxy – a band of light seen in the night sky formed from stars that cannot be individually distinguished by the naked eye.', true, false);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 13000, 100000, 'The Andromeda Galaxy, also known as Messier 31, M31, or NGC 224, is a spiral galaxy approximately 780 kiloparsecs (2.5 million light-years) from Earth, and the nearest major galaxy to the Milky Way.', true, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 13000, 100000, 'The Triangulum Galaxy is a spiral galaxy approximately 3 million light-years (ly) from Earth in the constellation Triangulum. It is catalogued as Messier 33 or NGC 598.', true, false);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 13000, 100000, 'Messier 87 is a supergiant elliptical galaxy in the constellation Virgo. One of the most massive galaxies in the local Universe, it has a large population of globular clusters—about 12,000 compared with the 150–200 orbiting the Milky Way—and a jet of energetic plasma that originates at the core and extends at least 4,900 light-years.', true, false);
INSERT INTO public.galaxy VALUES (5, 'Messier 82', 13000, 100000, 'Messier 82 (also known as NGC 3034, Cigar Galaxy or M82) is a starburst galaxy about 12 million light-years away in the constellation Ursa Major. It is about five times more luminous than the whole Milky Way and has a center one hundred times more luminous than our galaxy.', true, false);
INSERT INTO public.galaxy VALUES (6, 'Messier 81', 13000, 100000, 'Messier 81 (also known as NGC 3031 or Bode''s Galaxy) is a spiral galaxy about 12 million light-years away in the constellation Ursa Major. Due to its proximity to Earth, large size, and active galactic nucleus (which harbors a 70 million M☉ supermassive black hole), Messier 81 has been studied extensively by professional astronomers.', true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 4500, 238855, 'The Moon is a spherical body that orbits the Earth.', true, false, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 4500, 9376, 'Phobos is a non-spherical body that orbits Mars.', false, false, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 4500, 23463, 'Deimos is a non-spherical body that orbits Mars.', false, false, 2);
INSERT INTO public.moon VALUES (4, 'Europa', 4500, 671100, 'Europa is a non-spherical body that orbits Jupiter.', false, false, 3);
INSERT INTO public.moon VALUES (5, 'Ganymede', 4500, 1070400, 'Ganymede is a non-spherical body that orbits Jupiter.', false, false, 3);
INSERT INTO public.moon VALUES (6, 'Callisto', 4500, 1882700, 'Callisto is a non-spherical body that orbits Jupiter.', false, false, 3);
INSERT INTO public.moon VALUES (7, 'Titan', 4500, 1257060, 'Titan is a non-spherical body that orbits Saturn.', false, false, 4);
INSERT INTO public.moon VALUES (8, 'Enceladus', 4500, 147940, 'Enceladus is a non-spherical body that orbits Saturn.', false, false, 4);
INSERT INTO public.moon VALUES (9, 'Mimas', 4500, 185520, 'Mimas is a non-spherical body that orbits Saturn.', false, false, 4);
INSERT INTO public.moon VALUES (10, 'Triton', 4500, 354760, 'Triton is a non-spherical body that orbits Neptune.', false, false, 5);
INSERT INTO public.moon VALUES (11, 'Proteus', 4500, 117647, 'Proteus is a non-spherical body that orbits Neptune.', false, false, 5);
INSERT INTO public.moon VALUES (12, 'Nereid', 4500, 551381, 'Nereid is a non-spherical body that orbits Neptune.', false, false, 5);
INSERT INTO public.moon VALUES (13, 'Charon', 4500, 19571, 'Charon is a non-spherical body that orbits Pluto.', false, false, 6);
INSERT INTO public.moon VALUES (14, 'Styx', 4500, 42300, 'Styx is a non-spherical body that orbits Pluto.', false, false, 6);
INSERT INTO public.moon VALUES (15, 'Nix', 4500, 48694, 'Nix is a non-spherical body that orbits Pluto.', false, false, 6);
INSERT INTO public.moon VALUES (16, 'Kerberos', 4500, 57783, 'Kerberos is a non-spherical body that orbits Pluto.', false, false, 6);
INSERT INTO public.moon VALUES (17, 'Hydra', 4500, 64500, 'Hydra is a non-spherical body that orbits Pluto.', false, false, 6);
INSERT INTO public.moon VALUES (18, 'Phobos 2', 4500, 9376, 'Phobos is a non-spherical body that orbits Mars.', false, false, 7);
INSERT INTO public.moon VALUES (19, 'Deimos 2', 4500, 23463, 'Deimos is a non-spherical body that orbits Mars.', false, false, 7);
INSERT INTO public.moon VALUES (20, 'Europa 2', 4500, 671100, 'Europa is a non-spherical body that orbits Jupiter.', false, false, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4500, 1, 'The only known planet with life', true, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 4500, 1, 'The red planet', true, false, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 4500, 1, 'The largest planet in the solar system', true, false, 1);
INSERT INTO public.planet VALUES (4, 'Saturn', 4500, 1, 'The planet with the most moons', true, false, 1);
INSERT INTO public.planet VALUES (5, 'Uranus', 4500, 1, 'The planet that rotates on its side', true, false, 1);
INSERT INTO public.planet VALUES (6, 'Neptune', 4500, 1, 'The planet with the fastest winds', true, false, 1);
INSERT INTO public.planet VALUES (7, 'Pluto', 4500, 1, 'The dwarf planet', true, false, 1);
INSERT INTO public.planet VALUES (8, 'Mercury', 4500, 1, 'The closest planet to the sun', true, false, 1);
INSERT INTO public.planet VALUES (9, 'Venus', 4500, 1, 'The hottest planet in the solar system', true, false, 1);
INSERT INTO public.planet VALUES (10, 'Sun', 4500, 1, 'The star at the center of the solar system', true, false, 1);
INSERT INTO public.planet VALUES (11, 'Moon', 4500, 1, 'The Earth''s only natural satellite', true, false, 1);
INSERT INTO public.planet VALUES (12, 'Io', 4500, 1, 'The most volcanically active body in the solar system', true, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600000, 149.6, 'The Sun is the star at the center of the Solar System. It is a nearly perfect sphere of hot plasma, with internal convective motion that generates a magnetic field via a dynamo process. It is by far the most important source of energy for life on Earth.', true, false, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 6000000, 4.37, 'Alpha Centauri is a triple star system, consisting of three stars: Alpha Centauri A, Alpha Centauri B, and Proxima Centauri. The system is located in the constellation of Centaurus, which is visible from the southern hemisphere.', true, false, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 8000000, 643.3, 'Betelgeuse is a red supergiant star in the constellation of Orion. It is one of the largest and most luminous stars known, and is expected to explode as a supernova in the near future.', true, false, 1);
INSERT INTO public.star VALUES (4, 'Sirius', 9000000, 8.6, 'Sirius is a binary star system consisting of two stars, Sirius A and Sirius B. It is the brightest star in the night sky, and is known as the "Dog Star" in the constellation Canis Major.', true, false, 1);
INSERT INTO public.star VALUES (5, 'Vega', 10000000, 25.3, 'Vega is a bright star in the constellation of Lyra. It is one of the most luminous stars in the sky, and is known for its blue-white color and high rotation speed.', true, false, 1);
INSERT INTO public.star VALUES (6, 'Arcturus', 11000000, 36.7, 'Arcturus is a red giant star in the constellation of Boötes. It is the fourth brightest star in the night sky, and is known for its distinctive orange-red color.', true, false, 1);


--
-- Name: animal_animal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.animal_animal_id_seq', 3, true);


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
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: animal animal_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.animal
    ADD CONSTRAINT animal_name_unique UNIQUE (name);


--
-- Name: animal animal_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.animal
    ADD CONSTRAINT animal_pkey PRIMARY KEY (animal_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


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

