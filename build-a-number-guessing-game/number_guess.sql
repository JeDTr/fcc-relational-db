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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: number_guess; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.number_guess (
    user_id integer,
    number_guess integer
);


ALTER TABLE public.number_guess OWNER TO freecodecamp;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: number_guess; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.number_guess VALUES (5, 392);
INSERT INTO public.number_guess VALUES (5, 419);
INSERT INTO public.number_guess VALUES (6, 153);
INSERT INTO public.number_guess VALUES (6, 665);
INSERT INTO public.number_guess VALUES (5, 884);
INSERT INTO public.number_guess VALUES (5, 144);
INSERT INTO public.number_guess VALUES (5, 297);
INSERT INTO public.number_guess VALUES (7, 260);
INSERT INTO public.number_guess VALUES (7, 471);
INSERT INTO public.number_guess VALUES (8, 25);
INSERT INTO public.number_guess VALUES (8, 759);
INSERT INTO public.number_guess VALUES (7, 470);
INSERT INTO public.number_guess VALUES (7, 149);
INSERT INTO public.number_guess VALUES (7, 327);
INSERT INTO public.number_guess VALUES (4, 16);
INSERT INTO public.number_guess VALUES (9, 443);
INSERT INTO public.number_guess VALUES (9, 510);
INSERT INTO public.number_guess VALUES (10, 894);
INSERT INTO public.number_guess VALUES (10, 487);
INSERT INTO public.number_guess VALUES (9, 586);
INSERT INTO public.number_guess VALUES (9, 826);
INSERT INTO public.number_guess VALUES (9, 325);
INSERT INTO public.number_guess VALUES (11, 718);
INSERT INTO public.number_guess VALUES (11, 517);
INSERT INTO public.number_guess VALUES (12, 786);
INSERT INTO public.number_guess VALUES (12, 764);
INSERT INTO public.number_guess VALUES (11, 679);
INSERT INTO public.number_guess VALUES (11, 864);
INSERT INTO public.number_guess VALUES (11, 504);
INSERT INTO public.number_guess VALUES (4, 10);
INSERT INTO public.number_guess VALUES (13, 554);
INSERT INTO public.number_guess VALUES (13, 72);
INSERT INTO public.number_guess VALUES (14, 223);
INSERT INTO public.number_guess VALUES (14, 325);
INSERT INTO public.number_guess VALUES (13, 419);
INSERT INTO public.number_guess VALUES (13, 233);
INSERT INTO public.number_guess VALUES (13, 798);
INSERT INTO public.number_guess VALUES (15, 572);
INSERT INTO public.number_guess VALUES (15, 884);
INSERT INTO public.number_guess VALUES (16, 452);
INSERT INTO public.number_guess VALUES (16, 759);
INSERT INTO public.number_guess VALUES (15, 408);
INSERT INTO public.number_guess VALUES (15, 525);
INSERT INTO public.number_guess VALUES (15, 850);
INSERT INTO public.number_guess VALUES (17, 508);
INSERT INTO public.number_guess VALUES (17, 959);
INSERT INTO public.number_guess VALUES (18, 551);
INSERT INTO public.number_guess VALUES (18, 875);
INSERT INTO public.number_guess VALUES (17, 306);
INSERT INTO public.number_guess VALUES (17, 105);
INSERT INTO public.number_guess VALUES (17, 564);
INSERT INTO public.number_guess VALUES (19, 736);
INSERT INTO public.number_guess VALUES (19, 943);
INSERT INTO public.number_guess VALUES (20, 70);
INSERT INTO public.number_guess VALUES (20, 371);
INSERT INTO public.number_guess VALUES (19, 242);
INSERT INTO public.number_guess VALUES (19, 945);
INSERT INTO public.number_guess VALUES (19, 206);
INSERT INTO public.number_guess VALUES (21, 592);
INSERT INTO public.number_guess VALUES (21, 811);
INSERT INTO public.number_guess VALUES (22, 475);
INSERT INTO public.number_guess VALUES (22, 178);
INSERT INTO public.number_guess VALUES (21, 551);
INSERT INTO public.number_guess VALUES (21, 970);
INSERT INTO public.number_guess VALUES (21, 139);
INSERT INTO public.number_guess VALUES (23, 1);
INSERT INTO public.number_guess VALUES (24, 310);
INSERT INTO public.number_guess VALUES (24, 607);
INSERT INTO public.number_guess VALUES (25, 676);
INSERT INTO public.number_guess VALUES (25, 459);
INSERT INTO public.number_guess VALUES (24, 193);
INSERT INTO public.number_guess VALUES (24, 530);
INSERT INTO public.number_guess VALUES (24, 126);
INSERT INTO public.number_guess VALUES (26, 870);
INSERT INTO public.number_guess VALUES (26, 766);
INSERT INTO public.number_guess VALUES (27, 848);
INSERT INTO public.number_guess VALUES (27, 562);
INSERT INTO public.number_guess VALUES (26, 712);
INSERT INTO public.number_guess VALUES (26, 432);
INSERT INTO public.number_guess VALUES (26, 360);
INSERT INTO public.number_guess VALUES (28, 254);
INSERT INTO public.number_guess VALUES (28, 492);
INSERT INTO public.number_guess VALUES (29, 758);
INSERT INTO public.number_guess VALUES (29, 465);
INSERT INTO public.number_guess VALUES (28, 477);
INSERT INTO public.number_guess VALUES (28, 753);
INSERT INTO public.number_guess VALUES (28, 726);
INSERT INTO public.number_guess VALUES (30, 967);
INSERT INTO public.number_guess VALUES (30, 249);
INSERT INTO public.number_guess VALUES (31, 748);
INSERT INTO public.number_guess VALUES (31, 559);
INSERT INTO public.number_guess VALUES (30, 371);
INSERT INTO public.number_guess VALUES (30, 203);
INSERT INTO public.number_guess VALUES (30, 793);
INSERT INTO public.number_guess VALUES (4, 10);
INSERT INTO public.number_guess VALUES (32, 576);
INSERT INTO public.number_guess VALUES (32, 635);
INSERT INTO public.number_guess VALUES (33, 499);
INSERT INTO public.number_guess VALUES (33, 362);
INSERT INTO public.number_guess VALUES (32, 814);
INSERT INTO public.number_guess VALUES (32, 183);
INSERT INTO public.number_guess VALUES (32, 865);
INSERT INTO public.number_guess VALUES (34, 716);
INSERT INTO public.number_guess VALUES (34, 260);
INSERT INTO public.number_guess VALUES (35, 655);
INSERT INTO public.number_guess VALUES (35, 331);
INSERT INTO public.number_guess VALUES (34, 696);
INSERT INTO public.number_guess VALUES (34, 561);
INSERT INTO public.number_guess VALUES (34, 136);
INSERT INTO public.number_guess VALUES (36, 775);
INSERT INTO public.number_guess VALUES (36, 760);
INSERT INTO public.number_guess VALUES (37, 811);
INSERT INTO public.number_guess VALUES (37, 116);
INSERT INTO public.number_guess VALUES (36, 398);
INSERT INTO public.number_guess VALUES (36, 341);
INSERT INTO public.number_guess VALUES (36, 918);
INSERT INTO public.number_guess VALUES (38, 421);
INSERT INTO public.number_guess VALUES (38, 595);
INSERT INTO public.number_guess VALUES (39, 464);
INSERT INTO public.number_guess VALUES (39, 305);
INSERT INTO public.number_guess VALUES (38, 163);
INSERT INTO public.number_guess VALUES (38, 674);
INSERT INTO public.number_guess VALUES (38, 135);
INSERT INTO public.number_guess VALUES (4, 10);
INSERT INTO public.number_guess VALUES (40, 44);
INSERT INTO public.number_guess VALUES (40, 799);
INSERT INTO public.number_guess VALUES (41, 61);
INSERT INTO public.number_guess VALUES (41, 374);
INSERT INTO public.number_guess VALUES (40, 534);
INSERT INTO public.number_guess VALUES (40, 43);
INSERT INTO public.number_guess VALUES (40, 348);
INSERT INTO public.number_guess VALUES (42, 784);
INSERT INTO public.number_guess VALUES (42, 701);
INSERT INTO public.number_guess VALUES (43, 454);
INSERT INTO public.number_guess VALUES (43, 386);
INSERT INTO public.number_guess VALUES (42, 643);
INSERT INTO public.number_guess VALUES (42, 998);
INSERT INTO public.number_guess VALUES (42, 207);
INSERT INTO public.number_guess VALUES (44, 681);
INSERT INTO public.number_guess VALUES (44, 915);
INSERT INTO public.number_guess VALUES (45, 870);
INSERT INTO public.number_guess VALUES (45, 521);
INSERT INTO public.number_guess VALUES (44, 482);
INSERT INTO public.number_guess VALUES (44, 52);
INSERT INTO public.number_guess VALUES (44, 232);
INSERT INTO public.number_guess VALUES (4, 9);
INSERT INTO public.number_guess VALUES (46, 827);
INSERT INTO public.number_guess VALUES (46, 196);
INSERT INTO public.number_guess VALUES (47, 218);
INSERT INTO public.number_guess VALUES (47, 733);
INSERT INTO public.number_guess VALUES (46, 897);
INSERT INTO public.number_guess VALUES (46, 753);
INSERT INTO public.number_guess VALUES (46, 419);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (4, 'thongtv');
INSERT INTO public.users VALUES (5, 'user_1715052001818');
INSERT INTO public.users VALUES (6, 'user_1715052001817');
INSERT INTO public.users VALUES (7, 'user_1715052024059');
INSERT INTO public.users VALUES (8, 'user_1715052024058');
INSERT INTO public.users VALUES (9, 'user_1715052095094');
INSERT INTO public.users VALUES (10, 'user_1715052095093');
INSERT INTO public.users VALUES (11, 'user_1715052157793');
INSERT INTO public.users VALUES (12, 'user_1715052157792');
INSERT INTO public.users VALUES (13, 'user_1715052209676');
INSERT INTO public.users VALUES (14, 'user_1715052209675');
INSERT INTO public.users VALUES (15, 'user_1715052249186');
INSERT INTO public.users VALUES (16, 'user_1715052249185');
INSERT INTO public.users VALUES (17, 'user_1715052317862');
INSERT INTO public.users VALUES (18, 'user_1715052317861');
INSERT INTO public.users VALUES (19, 'user_1715052339117');
INSERT INTO public.users VALUES (20, 'user_1715052339116');
INSERT INTO public.users VALUES (21, 'user_1715052354747');
INSERT INTO public.users VALUES (22, 'user_1715052354746');
INSERT INTO public.users VALUES (23, 'zed');
INSERT INTO public.users VALUES (24, 'user_1715052472497');
INSERT INTO public.users VALUES (25, 'user_1715052472496');
INSERT INTO public.users VALUES (26, 'user_1715052481230');
INSERT INTO public.users VALUES (27, 'user_1715052481229');
INSERT INTO public.users VALUES (28, 'user_1715052514769');
INSERT INTO public.users VALUES (29, 'user_1715052514768');
INSERT INTO public.users VALUES (30, 'user_1715052539100');
INSERT INTO public.users VALUES (31, 'user_1715052539099');
INSERT INTO public.users VALUES (32, 'user_1715052586449');
INSERT INTO public.users VALUES (33, 'user_1715052586448');
INSERT INTO public.users VALUES (34, 'user_1715052818031');
INSERT INTO public.users VALUES (35, 'user_1715052818030');
INSERT INTO public.users VALUES (36, 'user_1715052828396');
INSERT INTO public.users VALUES (37, 'user_1715052828395');
INSERT INTO public.users VALUES (38, 'user_1715052870153');
INSERT INTO public.users VALUES (39, 'user_1715052870152');
INSERT INTO public.users VALUES (40, 'user_1715053046188');
INSERT INTO public.users VALUES (41, 'user_1715053046187');
INSERT INTO public.users VALUES (42, 'user_1715053075097');
INSERT INTO public.users VALUES (43, 'user_1715053075096');
INSERT INTO public.users VALUES (44, 'user_1715053093990');
INSERT INTO public.users VALUES (45, 'user_1715053093989');
INSERT INTO public.users VALUES (46, 'user_1715053143584');
INSERT INTO public.users VALUES (47, 'user_1715053143583');


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 47, true);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: number_guess number_guess_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.number_guess
    ADD CONSTRAINT number_guess_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

