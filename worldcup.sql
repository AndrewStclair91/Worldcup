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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(40) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(40) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (449, 2018, 'Final', 4, 2, 1796, 1797);
INSERT INTO public.games VALUES (450, 2018, 'Third Place', 2, 0, 1798, 1799);
INSERT INTO public.games VALUES (451, 2018, 'Semi-Final', 2, 1, 1797, 1799);
INSERT INTO public.games VALUES (452, 2018, 'Semi-Final', 1, 0, 1796, 1798);
INSERT INTO public.games VALUES (453, 2018, 'Quarter-Final', 3, 2, 1797, 1803);
INSERT INTO public.games VALUES (454, 2018, 'Quarter-Final', 2, 0, 1799, 1805);
INSERT INTO public.games VALUES (455, 2018, 'Quarter-Final', 2, 1, 1798, 1807);
INSERT INTO public.games VALUES (456, 2018, 'Quarter-Final', 2, 0, 1796, 1809);
INSERT INTO public.games VALUES (457, 2018, 'Eighth-Final', 2, 1, 1799, 1811);
INSERT INTO public.games VALUES (458, 2018, 'Eighth-Final', 1, 0, 1805, 1813);
INSERT INTO public.games VALUES (459, 2018, 'Eighth-Final', 3, 2, 1798, 1815);
INSERT INTO public.games VALUES (460, 2018, 'Eighth-Final', 2, 0, 1807, 1817);
INSERT INTO public.games VALUES (461, 2018, 'Eighth-Final', 2, 1, 1797, 1819);
INSERT INTO public.games VALUES (462, 2018, 'Eighth-Final', 2, 1, 1803, 1821);
INSERT INTO public.games VALUES (463, 2018, 'Eighth-Final', 2, 1, 1809, 1823);
INSERT INTO public.games VALUES (464, 2018, 'Eighth-Final', 4, 3, 1796, 1825);
INSERT INTO public.games VALUES (465, 2014, 'Final', 1, 0, 1826, 1825);
INSERT INTO public.games VALUES (466, 2014, 'Third Place', 3, 0, 1827, 1807);
INSERT INTO public.games VALUES (467, 2014, 'Semi-Final', 1, 0, 1825, 1827);
INSERT INTO public.games VALUES (468, 2014, 'Semi-Final', 7, 1, 1826, 1807);
INSERT INTO public.games VALUES (469, 2014, 'Quarter-Final', 1, 0, 1827, 1831);
INSERT INTO public.games VALUES (470, 2014, 'Quarter-Final', 1, 0, 1825, 1798);
INSERT INTO public.games VALUES (471, 2014, 'Quarter-Final', 2, 1, 1807, 1811);
INSERT INTO public.games VALUES (472, 2014, 'Quarter-Final', 1, 0, 1826, 1796);
INSERT INTO public.games VALUES (473, 2014, 'Eighth-Final', 2, 1, 1807, 1836);
INSERT INTO public.games VALUES (474, 2014, 'Eighth-Final', 2, 0, 1811, 1809);
INSERT INTO public.games VALUES (475, 2014, 'Eighth-Final', 2, 0, 1796, 1839);
INSERT INTO public.games VALUES (476, 2014, 'Eighth-Final', 2, 1, 1826, 1841);
INSERT INTO public.games VALUES (477, 2014, 'Eighth-Final', 2, 1, 1827, 1817);
INSERT INTO public.games VALUES (478, 2014, 'Eighth-Final', 2, 1, 1831, 1844);
INSERT INTO public.games VALUES (479, 2014, 'Eighth-Final', 1, 0, 1825, 1813);
INSERT INTO public.games VALUES (480, 2014, 'Eighth-Final', 2, 1, 1798, 1847);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1796, 'France');
INSERT INTO public.teams VALUES (1797, 'Croatia');
INSERT INTO public.teams VALUES (1798, 'Belgium');
INSERT INTO public.teams VALUES (1799, 'England');
INSERT INTO public.teams VALUES (1803, 'Russia');
INSERT INTO public.teams VALUES (1805, 'Sweden');
INSERT INTO public.teams VALUES (1807, 'Brazil');
INSERT INTO public.teams VALUES (1809, 'Uruguay');
INSERT INTO public.teams VALUES (1811, 'Colombia');
INSERT INTO public.teams VALUES (1813, 'Switzerland');
INSERT INTO public.teams VALUES (1815, 'Japan');
INSERT INTO public.teams VALUES (1817, 'Mexico');
INSERT INTO public.teams VALUES (1819, 'Denmark');
INSERT INTO public.teams VALUES (1821, 'Spain');
INSERT INTO public.teams VALUES (1823, 'Portugal');
INSERT INTO public.teams VALUES (1825, 'Argentina');
INSERT INTO public.teams VALUES (1826, 'Germany');
INSERT INTO public.teams VALUES (1827, 'Netherlands');
INSERT INTO public.teams VALUES (1831, 'Costa Rica');
INSERT INTO public.teams VALUES (1836, 'Chile');
INSERT INTO public.teams VALUES (1839, 'Nigeria');
INSERT INTO public.teams VALUES (1841, 'Algeria');
INSERT INTO public.teams VALUES (1844, 'Greece');
INSERT INTO public.teams VALUES (1847, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 480, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 32, true);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1847, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- PostgreSQL database dump complete
--
