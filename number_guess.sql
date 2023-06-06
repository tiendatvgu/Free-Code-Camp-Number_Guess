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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    point integer,
    user_id integer NOT NULL,
    game_id integer NOT NULL
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
-- Name: games_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_user_id_seq OWNER TO freecodecamp;

--
-- Name: games_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_user_id_seq OWNED BY public.games.user_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    name character varying(30),
    user_id integer NOT NULL
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
-- Name: games user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN user_id SET DEFAULT nextval('public.games_user_id_seq'::regclass);


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (6, 1, 1);
INSERT INTO public.games VALUES (721, 2, 2);
INSERT INTO public.games VALUES (143, 2, 3);
INSERT INTO public.games VALUES (99, 3, 4);
INSERT INTO public.games VALUES (576, 3, 5);
INSERT INTO public.games VALUES (939, 2, 6);
INSERT INTO public.games VALUES (163, 2, 7);
INSERT INTO public.games VALUES (761, 2, 8);
INSERT INTO public.games VALUES (27, 1, 9);
INSERT INTO public.games VALUES (661, 4, 10);
INSERT INTO public.games VALUES (29, 4, 11);
INSERT INTO public.games VALUES (789, 5, 12);
INSERT INTO public.games VALUES (390, 5, 13);
INSERT INTO public.games VALUES (677, 4, 14);
INSERT INTO public.games VALUES (893, 4, 15);
INSERT INTO public.games VALUES (884, 4, 16);
INSERT INTO public.games VALUES (826, 6, 17);
INSERT INTO public.games VALUES (177, 6, 18);
INSERT INTO public.games VALUES (363, 7, 19);
INSERT INTO public.games VALUES (687, 7, 20);
INSERT INTO public.games VALUES (513, 6, 21);
INSERT INTO public.games VALUES (369, 6, 22);
INSERT INTO public.games VALUES (829, 6, 23);
INSERT INTO public.games VALUES (1, 1, 24);
INSERT INTO public.games VALUES (2, 1, 25);
INSERT INTO public.games VALUES (3, 1, 26);
INSERT INTO public.games VALUES (4, 1, 27);
INSERT INTO public.games VALUES (5, 1, 28);
INSERT INTO public.games VALUES (6, 1, 29);
INSERT INTO public.games VALUES (7, 1, 30);
INSERT INTO public.games VALUES (8, 1, 31);
INSERT INTO public.games VALUES (9, 1, 32);
INSERT INTO public.games VALUES (10, 1, 33);
INSERT INTO public.games VALUES (11, 1, 34);
INSERT INTO public.games VALUES (12, 1, 35);
INSERT INTO public.games VALUES (13, 1, 36);
INSERT INTO public.games VALUES (14, 1, 37);
INSERT INTO public.games VALUES (15, 1, 38);
INSERT INTO public.games VALUES (1, 8, 39);
INSERT INTO public.games VALUES (2, 8, 40);
INSERT INTO public.games VALUES (3, 8, 41);
INSERT INTO public.games VALUES (4, 8, 42);
INSERT INTO public.games VALUES (5, 8, 43);
INSERT INTO public.games VALUES (6, 8, 44);
INSERT INTO public.games VALUES (7, 8, 45);
INSERT INTO public.games VALUES (8, 8, 46);
INSERT INTO public.games VALUES (9, 8, 47);
INSERT INTO public.games VALUES (10, 8, 48);
INSERT INTO public.games VALUES (11, 8, 49);
INSERT INTO public.games VALUES (12, 8, 50);
INSERT INTO public.games VALUES (13, 8, 51);
INSERT INTO public.games VALUES (14, 8, 52);
INSERT INTO public.games VALUES (15, 8, 53);
INSERT INTO public.games VALUES (16, 8, 54);
INSERT INTO public.games VALUES (17, 8, 55);
INSERT INTO public.games VALUES (18, 8, 56);
INSERT INTO public.games VALUES (19, 8, 57);
INSERT INTO public.games VALUES (20, 8, 58);
INSERT INTO public.games VALUES (21, 8, 59);
INSERT INTO public.games VALUES (22, 8, 60);
INSERT INTO public.games VALUES (23, 8, 61);
INSERT INTO public.games VALUES (24, 8, 62);
INSERT INTO public.games VALUES (16, 1, 63);
INSERT INTO public.games VALUES (25, 8, 64);
INSERT INTO public.games VALUES (26, 8, 65);
INSERT INTO public.games VALUES (27, 8, 66);
INSERT INTO public.games VALUES (28, 8, 67);
INSERT INTO public.games VALUES (29, 8, 68);
INSERT INTO public.games VALUES (30, 8, 69);
INSERT INTO public.games VALUES (31, 8, 70);
INSERT INTO public.games VALUES (32, 8, 71);
INSERT INTO public.games VALUES (33, 8, 72);
INSERT INTO public.games VALUES (34, 8, 73);
INSERT INTO public.games VALUES (35, 8, 74);
INSERT INTO public.games VALUES (36, 8, 75);
INSERT INTO public.games VALUES (37, 8, 76);
INSERT INTO public.games VALUES (38, 8, 77);
INSERT INTO public.games VALUES (39, 8, 78);
INSERT INTO public.games VALUES (40, 8, 79);
INSERT INTO public.games VALUES (41, 8, 80);
INSERT INTO public.games VALUES (42, 8, 81);
INSERT INTO public.games VALUES (43, 8, 82);
INSERT INTO public.games VALUES (44, 8, 83);
INSERT INTO public.games VALUES (45, 8, 84);
INSERT INTO public.games VALUES (1, 8, 85);
INSERT INTO public.games VALUES (46, 8, 86);
INSERT INTO public.games VALUES (2, 8, 87);
INSERT INTO public.games VALUES (47, 8, 88);
INSERT INTO public.games VALUES (3, 8, 89);
INSERT INTO public.games VALUES (48, 8, 90);
INSERT INTO public.games VALUES (4, 8, 91);
INSERT INTO public.games VALUES (49, 8, 92);
INSERT INTO public.games VALUES (5, 8, 93);
INSERT INTO public.games VALUES (50, 8, 94);
INSERT INTO public.games VALUES (6, 8, 95);
INSERT INTO public.games VALUES (51, 8, 96);
INSERT INTO public.games VALUES (7, 8, 97);
INSERT INTO public.games VALUES (52, 8, 98);
INSERT INTO public.games VALUES (8, 8, 99);
INSERT INTO public.games VALUES (53, 8, 100);
INSERT INTO public.games VALUES (9, 8, 101);
INSERT INTO public.games VALUES (54, 8, 102);
INSERT INTO public.games VALUES (10, 8, 103);
INSERT INTO public.games VALUES (55, 8, 104);
INSERT INTO public.games VALUES (11, 8, 105);
INSERT INTO public.games VALUES (17, 1, 106);
INSERT INTO public.games VALUES (56, 8, 107);
INSERT INTO public.games VALUES (12, 8, 108);
INSERT INTO public.games VALUES (18, 1, 109);
INSERT INTO public.games VALUES (57, 8, 110);
INSERT INTO public.games VALUES (13, 8, 111);
INSERT INTO public.games VALUES (58, 8, 112);
INSERT INTO public.games VALUES (14, 8, 113);
INSERT INTO public.games VALUES (59, 8, 114);
INSERT INTO public.games VALUES (15, 8, 115);
INSERT INTO public.games VALUES (60, 8, 116);
INSERT INTO public.games VALUES (16, 8, 117);
INSERT INTO public.games VALUES (61, 8, 118);
INSERT INTO public.games VALUES (17, 8, 119);
INSERT INTO public.games VALUES (62, 8, 120);
INSERT INTO public.games VALUES (18, 8, 121);
INSERT INTO public.games VALUES (63, 8, 122);
INSERT INTO public.games VALUES (19, 8, 123);
INSERT INTO public.games VALUES (64, 8, 124);
INSERT INTO public.games VALUES (20, 8, 125);
INSERT INTO public.games VALUES (65, 8, 126);
INSERT INTO public.games VALUES (19, 1, 127);
INSERT INTO public.games VALUES (21, 8, 128);
INSERT INTO public.games VALUES (66, 8, 129);
INSERT INTO public.games VALUES (741, 9, 130);
INSERT INTO public.games VALUES (22, 8, 131);
INSERT INTO public.games VALUES (67, 8, 132);
INSERT INTO public.games VALUES (23, 8, 133);
INSERT INTO public.games VALUES (68, 8, 134);
INSERT INTO public.games VALUES (24, 8, 135);
INSERT INTO public.games VALUES (69, 8, 136);
INSERT INTO public.games VALUES (560, 9, 137);
INSERT INTO public.games VALUES (25, 8, 138);
INSERT INTO public.games VALUES (70, 8, 139);
INSERT INTO public.games VALUES (26, 8, 140);
INSERT INTO public.games VALUES (71, 8, 141);
INSERT INTO public.games VALUES (68, 8, 142);
INSERT INTO public.games VALUES (27, 8, 143);
INSERT INTO public.games VALUES (72, 8, 144);
INSERT INTO public.games VALUES (902, 8, 145);
INSERT INTO public.games VALUES (28, 8, 146);
INSERT INTO public.games VALUES (73, 8, 147);
INSERT INTO public.games VALUES (29, 8, 148);
INSERT INTO public.games VALUES (74, 8, 149);
INSERT INTO public.games VALUES (30, 8, 150);
INSERT INTO public.games VALUES (392, 8, 151);
INSERT INTO public.games VALUES (75, 8, 152);
INSERT INTO public.games VALUES (31, 8, 153);
INSERT INTO public.games VALUES (76, 8, 154);
INSERT INTO public.games VALUES (532, 10, 155);
INSERT INTO public.games VALUES (315, 10, 156);
INSERT INTO public.games VALUES (364, 11, 157);
INSERT INTO public.games VALUES (116, 11, 158);
INSERT INTO public.games VALUES (595, 10, 159);
INSERT INTO public.games VALUES (911, 10, 160);
INSERT INTO public.games VALUES (575, 10, 161);
INSERT INTO public.games VALUES (323, 12, 162);
INSERT INTO public.games VALUES (939, 12, 163);
INSERT INTO public.games VALUES (246, 13, 164);
INSERT INTO public.games VALUES (845, 13, 165);
INSERT INTO public.games VALUES (710, 12, 166);
INSERT INTO public.games VALUES (526, 12, 167);
INSERT INTO public.games VALUES (668, 12, 168);
INSERT INTO public.games VALUES (12, 14, 169);
INSERT INTO public.games VALUES (456, 14, 170);
INSERT INTO public.games VALUES (589, 15, 171);
INSERT INTO public.games VALUES (144, 15, 172);
INSERT INTO public.games VALUES (149, 14, 173);
INSERT INTO public.games VALUES (788, 14, 174);
INSERT INTO public.games VALUES (4, 14, 175);
INSERT INTO public.games VALUES (362, 16, 176);
INSERT INTO public.games VALUES (951, 16, 177);
INSERT INTO public.games VALUES (686, 17, 178);
INSERT INTO public.games VALUES (785, 17, 179);
INSERT INTO public.games VALUES (557, 16, 180);
INSERT INTO public.games VALUES (669, 16, 181);
INSERT INTO public.games VALUES (950, 16, 182);
INSERT INTO public.games VALUES (767, 18, 183);
INSERT INTO public.games VALUES (596, 18, 184);
INSERT INTO public.games VALUES (423, 19, 185);
INSERT INTO public.games VALUES (176, 19, 186);
INSERT INTO public.games VALUES (868, 18, 187);
INSERT INTO public.games VALUES (718, 18, 188);
INSERT INTO public.games VALUES (180, 18, 189);
INSERT INTO public.games VALUES (428, 20, 190);
INSERT INTO public.games VALUES (999, 20, 191);
INSERT INTO public.games VALUES (406, 21, 192);
INSERT INTO public.games VALUES (306, 21, 193);
INSERT INTO public.games VALUES (412, 20, 194);
INSERT INTO public.games VALUES (140, 20, 195);
INSERT INTO public.games VALUES (791, 20, 196);
INSERT INTO public.games VALUES (196, 22, 197);
INSERT INTO public.games VALUES (841, 22, 198);
INSERT INTO public.games VALUES (214, 23, 199);
INSERT INTO public.games VALUES (722, 23, 200);
INSERT INTO public.games VALUES (976, 22, 201);
INSERT INTO public.games VALUES (807, 22, 202);
INSERT INTO public.games VALUES (174, 22, 203);
INSERT INTO public.games VALUES (860, 24, 204);
INSERT INTO public.games VALUES (84, 24, 205);
INSERT INTO public.games VALUES (835, 25, 206);
INSERT INTO public.games VALUES (766, 25, 207);
INSERT INTO public.games VALUES (187, 24, 208);
INSERT INTO public.games VALUES (820, 24, 209);
INSERT INTO public.games VALUES (470, 24, 210);
INSERT INTO public.games VALUES (515, 26, 211);
INSERT INTO public.games VALUES (372, 26, 212);
INSERT INTO public.games VALUES (996, 27, 213);
INSERT INTO public.games VALUES (700, 27, 214);
INSERT INTO public.games VALUES (247, 26, 215);
INSERT INTO public.games VALUES (471, 26, 216);
INSERT INTO public.games VALUES (676, 26, 217);
INSERT INTO public.games VALUES (168, 28, 218);
INSERT INTO public.games VALUES (379, 29, 219);
INSERT INTO public.games VALUES (131, 29, 220);
INSERT INTO public.games VALUES (440, 28, 221);
INSERT INTO public.games VALUES (925, 28, 222);
INSERT INTO public.games VALUES (102, 28, 223);
INSERT INTO public.games VALUES (219, 30, 224);
INSERT INTO public.games VALUES (69, 30, 225);
INSERT INTO public.games VALUES (330, 31, 226);
INSERT INTO public.games VALUES (119, 31, 227);
INSERT INTO public.games VALUES (668, 30, 228);
INSERT INTO public.games VALUES (27, 30, 229);
INSERT INTO public.games VALUES (301, 30, 230);
INSERT INTO public.games VALUES (752, 32, 231);
INSERT INTO public.games VALUES (853, 33, 232);
INSERT INTO public.games VALUES (524, 33, 233);
INSERT INTO public.games VALUES (88, 32, 234);
INSERT INTO public.games VALUES (600, 32, 235);
INSERT INTO public.games VALUES (340, 32, 236);
INSERT INTO public.games VALUES (482, 34, 237);
INSERT INTO public.games VALUES (898, 34, 238);
INSERT INTO public.games VALUES (470, 35, 239);
INSERT INTO public.games VALUES (47, 35, 240);
INSERT INTO public.games VALUES (56, 34, 241);
INSERT INTO public.games VALUES (693, 34, 242);
INSERT INTO public.games VALUES (1000, 34, 243);
INSERT INTO public.games VALUES (527, 36, 244);
INSERT INTO public.games VALUES (930, 36, 245);
INSERT INTO public.games VALUES (1000, 37, 246);
INSERT INTO public.games VALUES (254, 37, 247);
INSERT INTO public.games VALUES (30, 36, 248);
INSERT INTO public.games VALUES (898, 36, 249);
INSERT INTO public.games VALUES (474, 36, 250);
INSERT INTO public.games VALUES (876, 38, 251);
INSERT INTO public.games VALUES (773, 38, 252);
INSERT INTO public.games VALUES (870, 39, 253);
INSERT INTO public.games VALUES (518, 39, 254);
INSERT INTO public.games VALUES (796, 38, 255);
INSERT INTO public.games VALUES (560, 38, 256);
INSERT INTO public.games VALUES (236, 38, 257);
INSERT INTO public.games VALUES (73, 40, 258);
INSERT INTO public.games VALUES (414, 41, 259);
INSERT INTO public.games VALUES (666, 41, 260);
INSERT INTO public.games VALUES (267, 40, 261);
INSERT INTO public.games VALUES (494, 40, 262);
INSERT INTO public.games VALUES (119, 40, 263);
INSERT INTO public.games VALUES (107, 42, 264);
INSERT INTO public.games VALUES (957, 43, 265);
INSERT INTO public.games VALUES (957, 43, 266);
INSERT INTO public.games VALUES (686, 42, 267);
INSERT INTO public.games VALUES (635, 42, 268);
INSERT INTO public.games VALUES (961, 42, 269);
INSERT INTO public.games VALUES (6, 44, 270);
INSERT INTO public.games VALUES (748, 44, 271);
INSERT INTO public.games VALUES (421, 45, 272);
INSERT INTO public.games VALUES (605, 45, 273);
INSERT INTO public.games VALUES (609, 44, 274);
INSERT INTO public.games VALUES (961, 44, 275);
INSERT INTO public.games VALUES (205, 44, 276);
INSERT INTO public.games VALUES (167, 46, 277);
INSERT INTO public.games VALUES (479, 46, 278);
INSERT INTO public.games VALUES (745, 47, 279);
INSERT INTO public.games VALUES (326, 47, 280);
INSERT INTO public.games VALUES (377, 46, 281);
INSERT INTO public.games VALUES (13, 46, 282);
INSERT INTO public.games VALUES (411, 46, 283);
INSERT INTO public.games VALUES (43, 48, 284);
INSERT INTO public.games VALUES (981, 49, 285);
INSERT INTO public.games VALUES (515, 49, 286);
INSERT INTO public.games VALUES (322, 48, 287);
INSERT INTO public.games VALUES (480, 48, 288);
INSERT INTO public.games VALUES (427, 50, 289);
INSERT INTO public.games VALUES (11, 50, 290);
INSERT INTO public.games VALUES (800, 51, 291);
INSERT INTO public.games VALUES (844, 51, 292);
INSERT INTO public.games VALUES (35, 50, 293);
INSERT INTO public.games VALUES (972, 50, 294);
INSERT INTO public.games VALUES (222, 50, 295);
INSERT INTO public.games VALUES (90, 52, 296);
INSERT INTO public.games VALUES (12, 53, 297);
INSERT INTO public.games VALUES (433, 53, 298);
INSERT INTO public.games VALUES (145, 52, 299);
INSERT INTO public.games VALUES (756, 52, 300);
INSERT INTO public.games VALUES (405, 52, 301);
INSERT INTO public.games VALUES (48, 54, 302);
INSERT INTO public.games VALUES (235, 54, 303);
INSERT INTO public.games VALUES (311, 55, 304);
INSERT INTO public.games VALUES (124, 55, 305);
INSERT INTO public.games VALUES (800, 54, 306);
INSERT INTO public.games VALUES (923, 54, 307);
INSERT INTO public.games VALUES (490, 54, 308);
INSERT INTO public.games VALUES (179, 56, 309);
INSERT INTO public.games VALUES (825, 56, 310);
INSERT INTO public.games VALUES (477, 57, 311);
INSERT INTO public.games VALUES (406, 57, 312);
INSERT INTO public.games VALUES (566, 56, 313);
INSERT INTO public.games VALUES (664, 56, 314);
INSERT INTO public.games VALUES (908, 56, 315);
INSERT INTO public.games VALUES (631, 58, 316);
INSERT INTO public.games VALUES (478, 58, 317);
INSERT INTO public.games VALUES (184, 59, 318);
INSERT INTO public.games VALUES (699, 59, 319);
INSERT INTO public.games VALUES (991, 58, 320);
INSERT INTO public.games VALUES (763, 58, 321);
INSERT INTO public.games VALUES (476, 58, 322);
INSERT INTO public.games VALUES (916, 60, 323);
INSERT INTO public.games VALUES (167, 61, 324);
INSERT INTO public.games VALUES (971, 61, 325);
INSERT INTO public.games VALUES (668, 60, 326);
INSERT INTO public.games VALUES (594, 60, 327);
INSERT INTO public.games VALUES (909, 60, 328);
INSERT INTO public.games VALUES (603, 62, 329);
INSERT INTO public.games VALUES (301, 63, 330);
INSERT INTO public.games VALUES (107, 63, 331);
INSERT INTO public.games VALUES (237, 62, 332);
INSERT INTO public.games VALUES (727, 62, 333);
INSERT INTO public.games VALUES (790, 62, 334);
INSERT INTO public.games VALUES (855, 64, 335);
INSERT INTO public.games VALUES (715, 64, 336);
INSERT INTO public.games VALUES (343, 65, 337);
INSERT INTO public.games VALUES (522, 65, 338);
INSERT INTO public.games VALUES (64, 64, 339);
INSERT INTO public.games VALUES (965, 64, 340);
INSERT INTO public.games VALUES (951, 64, 341);
INSERT INTO public.games VALUES (17, 1, 342);
INSERT INTO public.games VALUES (419, 66, 343);
INSERT INTO public.games VALUES (543, 66, 344);
INSERT INTO public.games VALUES (762, 67, 345);
INSERT INTO public.games VALUES (872, 67, 346);
INSERT INTO public.games VALUES (177, 66, 347);
INSERT INTO public.games VALUES (140, 66, 348);
INSERT INTO public.games VALUES (995, 66, 349);
INSERT INTO public.games VALUES (474, 68, 350);
INSERT INTO public.games VALUES (472, 68, 351);
INSERT INTO public.games VALUES (31, 69, 352);
INSERT INTO public.games VALUES (671, 69, 353);
INSERT INTO public.games VALUES (857, 68, 354);
INSERT INTO public.games VALUES (685, 68, 355);
INSERT INTO public.games VALUES (652, 68, 356);
INSERT INTO public.games VALUES (69, 70, 357);
INSERT INTO public.games VALUES (20, 71, 358);
INSERT INTO public.games VALUES (312, 71, 359);
INSERT INTO public.games VALUES (469, 70, 360);
INSERT INTO public.games VALUES (201, 70, 361);
INSERT INTO public.games VALUES (121, 70, 362);
INSERT INTO public.games VALUES (81, 72, 363);
INSERT INTO public.games VALUES (333, 72, 364);
INSERT INTO public.games VALUES (670, 73, 365);
INSERT INTO public.games VALUES (521, 73, 366);
INSERT INTO public.games VALUES (511, 72, 367);
INSERT INTO public.games VALUES (196, 72, 368);
INSERT INTO public.games VALUES (473, 72, 369);
INSERT INTO public.games VALUES (298, 74, 370);
INSERT INTO public.games VALUES (474, 74, 371);
INSERT INTO public.games VALUES (588, 75, 372);
INSERT INTO public.games VALUES (632, 75, 373);
INSERT INTO public.games VALUES (204, 74, 374);
INSERT INTO public.games VALUES (899, 74, 375);
INSERT INTO public.games VALUES (772, 74, 376);
INSERT INTO public.games VALUES (553, 76, 377);
INSERT INTO public.games VALUES (874, 77, 378);
INSERT INTO public.games VALUES (422, 77, 379);
INSERT INTO public.games VALUES (646, 76, 380);
INSERT INTO public.games VALUES (780, 76, 381);
INSERT INTO public.games VALUES (958, 76, 382);
INSERT INTO public.games VALUES (418, 78, 383);
INSERT INTO public.games VALUES (846, 78, 384);
INSERT INTO public.games VALUES (429, 79, 385);
INSERT INTO public.games VALUES (642, 79, 386);
INSERT INTO public.games VALUES (195, 78, 387);
INSERT INTO public.games VALUES (545, 78, 388);
INSERT INTO public.games VALUES (201, 78, 389);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('dat', 1);
INSERT INTO public.users VALUES ('user_1686079664248', 2);
INSERT INTO public.users VALUES ('user_1686079664247', 3);
INSERT INTO public.users VALUES ('user_1686079767122', 4);
INSERT INTO public.users VALUES ('user_1686079767121', 5);
INSERT INTO public.users VALUES ('user_1686079846082', 6);
INSERT INTO public.users VALUES ('user_1686079846081', 7);
INSERT INTO public.users VALUES ('user_1686080027821', 8);
INSERT INTO public.users VALUES ('user_1686080027820', 9);
INSERT INTO public.users VALUES ('user_1686080655727', 10);
INSERT INTO public.users VALUES ('user_1686080655726', 11);
INSERT INTO public.users VALUES ('user_1686080678374', 12);
INSERT INTO public.users VALUES ('user_1686080678373', 13);
INSERT INTO public.users VALUES ('user_1686080750355', 14);
INSERT INTO public.users VALUES ('user_1686080750354', 15);
INSERT INTO public.users VALUES ('user_1686080802428', 16);
INSERT INTO public.users VALUES ('user_1686080802427', 17);
INSERT INTO public.users VALUES ('user_1686080833879', 18);
INSERT INTO public.users VALUES ('user_1686080833878', 19);
INSERT INTO public.users VALUES ('user_1686080853441', 20);
INSERT INTO public.users VALUES ('user_1686080853440', 21);
INSERT INTO public.users VALUES ('user_1686080859197', 22);
INSERT INTO public.users VALUES ('user_1686080859196', 23);
INSERT INTO public.users VALUES ('user_1686080883314', 24);
INSERT INTO public.users VALUES ('user_1686080883313', 25);
INSERT INTO public.users VALUES ('user_1686080975530', 26);
INSERT INTO public.users VALUES ('user_1686080975529', 27);
INSERT INTO public.users VALUES ('user_1686080992216', 28);
INSERT INTO public.users VALUES ('user_1686080992215', 29);
INSERT INTO public.users VALUES ('user_1686081010154', 30);
INSERT INTO public.users VALUES ('user_1686081010153', 31);
INSERT INTO public.users VALUES ('user_1686081018282', 32);
INSERT INTO public.users VALUES ('user_1686081018281', 33);
INSERT INTO public.users VALUES ('user_1686081034872', 34);
INSERT INTO public.users VALUES ('user_1686081034871', 35);
INSERT INTO public.users VALUES ('user_1686081044521', 36);
INSERT INTO public.users VALUES ('user_1686081044520', 37);
INSERT INTO public.users VALUES ('user_1686081053447', 38);
INSERT INTO public.users VALUES ('user_1686081053446', 39);
INSERT INTO public.users VALUES ('user_1686081065116', 40);
INSERT INTO public.users VALUES ('user_1686081065115', 41);
INSERT INTO public.users VALUES ('user_1686081079105', 42);
INSERT INTO public.users VALUES ('user_1686081079104', 43);
INSERT INTO public.users VALUES ('user_1686081097447', 44);
INSERT INTO public.users VALUES ('user_1686081097446', 45);
INSERT INTO public.users VALUES ('user_1686081302744', 46);
INSERT INTO public.users VALUES ('user_1686081302743', 47);
INSERT INTO public.users VALUES ('user_1686081356216', 48);
INSERT INTO public.users VALUES ('user_1686081356215', 49);
INSERT INTO public.users VALUES ('user_1686081381679', 50);
INSERT INTO public.users VALUES ('user_1686081381678', 51);
INSERT INTO public.users VALUES ('user_1686081401715', 52);
INSERT INTO public.users VALUES ('user_1686081401714', 53);
INSERT INTO public.users VALUES ('user_1686081415371', 54);
INSERT INTO public.users VALUES ('user_1686081415370', 55);
INSERT INTO public.users VALUES ('user_1686081442278', 56);
INSERT INTO public.users VALUES ('user_1686081442277', 57);
INSERT INTO public.users VALUES ('user_1686081462942', 58);
INSERT INTO public.users VALUES ('user_1686081462941', 59);
INSERT INTO public.users VALUES ('user_1686081472842', 60);
INSERT INTO public.users VALUES ('user_1686081472841', 61);
INSERT INTO public.users VALUES ('user_1686081489040', 62);
INSERT INTO public.users VALUES ('user_1686081489039', 63);
INSERT INTO public.users VALUES ('user_1686081508383', 64);
INSERT INTO public.users VALUES ('user_1686081508382', 65);
INSERT INTO public.users VALUES ('user_1686081572960', 66);
INSERT INTO public.users VALUES ('user_1686081572959', 67);
INSERT INTO public.users VALUES ('user_1686081742795', 68);
INSERT INTO public.users VALUES ('user_1686081742794', 69);
INSERT INTO public.users VALUES ('user_1686081757227', 70);
INSERT INTO public.users VALUES ('user_1686081757226', 71);
INSERT INTO public.users VALUES ('user_1686081771932', 72);
INSERT INTO public.users VALUES ('user_1686081771931', 73);
INSERT INTO public.users VALUES ('user_1686081793956', 74);
INSERT INTO public.users VALUES ('user_1686081793955', 75);
INSERT INTO public.users VALUES ('user_1686081808395', 76);
INSERT INTO public.users VALUES ('user_1686081808394', 77);
INSERT INTO public.users VALUES ('user_1686081828067', 78);
INSERT INTO public.users VALUES ('user_1686081828066', 79);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 389, true);


--
-- Name: games_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_user_id_seq', 1, false);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 79, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

