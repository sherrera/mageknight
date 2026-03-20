--
-- PostgreSQL database dump
--

\restrict IAfMAS0gVO1qy4V5mdckv2VgWxTgS6QulcSkjEHi100QMxlp53D9gL2gvfOCKhh

-- Dumped from database version 14.22 (Ubuntu 14.22-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.22 (Ubuntu 14.22-0ubuntu0.22.04.1)

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

--
-- Data for Name: abilities; Type: TABLE DATA; Schema: public; Owner: mageknight_user
--

COPY public.abilities (id, name, color, weight_category) FROM stdin;
24	MAGIC LEVITATION	#00d4ff	neutral
29	POLEARM	#ff0000	medium
30	QUICKNESS	#ff0000	medium
31	RAM	#000000	medium
34	SNEAK ATTACK	#00d4ff	high
5	BOUND	#808080	high
40	WEAPON MASTER	#ff0000	high
7	COMMAND	#808080	low
1	AQUATIC	#ffff00	low
10	DEMORALIZED	#ffff00	negative
11	DODGE	#ff0000	high
12	FLAME/LIGHTNING	#ff9c05	medium
8	DEAD	#ffffff	negative
3	BATTLE FURY	#ff9c05	negative
16	INVULNERABILITY	#808080	high
18	MAGIC BLAST	#00d4ff	high
20	MAGIC ENHANCEMENT	#ffffff	low
22	MAGIC HEALING	#808080	medium
25	MAGIC RETALIATION	#00d4ff	low
26	NECROMANCY	#000000	high
27	NIMBLE	#00d4ff	low
32	REGENERATION	#000000	medium
33	SHOCKWAVE	#ffff00	low
35	STEALTH	#000000	low
36	SWEEP	#000000	medium
37	TOUGHNESS	#ff9c05	medium
38	VAMPIRISM	#000000	medium
39	VENOM	#ff0000	medium
2	BATTLE ARMOR	#00ba00	medium
4	BERSERK	#ff0000	negative
6	CHARGE	#00ba00	high
9	DEFEND	#ffff00	medium
13	FLIGHT	#ff9c05	medium
14	FORCE MARCH	#ff0000	medium
15	HEALING	#00ba00	medium
17	LIMITED INVISIBILITY	#000000	high
19	MAGIC CONFUSION	#000000	low
21	MAGIC FREEZE	#00d4ff	low
23	MAGIC IMMUNITY	#00d4ff	low
28	PIERCE	#ff0000	high
\.


--
-- Data for Name: miniatures; Type: TABLE DATA; Schema: public; Owner: mageknight_user
--

COPY public.miniatures (id, name, set_name, rank, point_cost, collector_number, frq, arc, range, range_targets, image_url, source_url, overall_score, peak_score, sustained_score) FROM stdin;
334	Soaring Crossbowman On Dragonfly Mount	lancers	WEAK	30	94	3	180	8	1	/static/images/lancers/94.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2094.html	86.9	92	89.8
330	Soaring Gunner On Dragonfly Mount	lancers	TOUGH	45	90	5	180	10	1	/static/images/lancers/90.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2090.html	90.2	83.2	50.6
332	Scorpem Crossbowman On Scorpion Mount	lancers	STANDARD	37	92	4	180	8	1	/static/images/lancers/92.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2092.html	37.4	13	5.2
333	Scorpem Crossbowman On Scorpion Mount	lancers	TOUGH	39	93	5	180	10	1	/static/images/lancers/93.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2093.html	43.1	11.9	4.3
335	Soaring Crossbowman On Dragonfly Mount	lancers	STANDARD	34	95	4	180	10	1	/static/images/lancers/95.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2095.html	89.4	64.9	54.7
326	Scorpem Gunner On Scorpion Mount	lancers	STANDARD	46	86	4	180	10	1	/static/images/lancers/86.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2086.html	47.5	23.5	10.7
327	Scorpem Gunner On Scorpion Mount	lancers	TOUGH	47	87	5	180	10	1	/static/images/lancers/87.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2087.html	53.2	24.7	12.7
336	Soaring Crossbowman On Dragonfly Mount	lancers	TOUGH	37	96	5	180	10	1	/static/images/lancers/96.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2096.html	89.5	54.4	32.4
440	Squalid Gremlin	pyramid	Standard	16	26	2	90	0	1	/static/images/pyramid/26.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2026.html	17.9	30.2	23.6
374	Techun On Dragonfly Mount	lancers	UNIQUE	96	134	6	180	12	1	/static/images/lancers/134.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/134.html	79.2	63.4	66.4
373	High Battle Mage On Scorpion Mount	lancers	UNIQUE	143	133	6	270	12	2	/static/images/lancers/133.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/133.html	3	28.5	20.5
443	Desert Ape	pyramid	Standard	24	29	2	90	0	1	/static/images/pyramid/29.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2029.html	76.6	77.2	61.2
444	Desert Ape	pyramid	Tough	28	30	3	90	0	1	/static/images/pyramid/30.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2030.html	81	45.2	19
528	Dwarven Miner	siniste	TOUGH	29	24	3	90	6	1	/static/images/siniste/24.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2024.html	38	13	0
529	Elven Recruit	siniste	WEAK	7	25	1	90	0	1	/static/images/siniste/25.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2025.html	1.3	73.3	35.3
732	Temple Blademaster	alpha	TOUGH	36	108	5	90	0	1	/static/images/alpha/108.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/108.html	93.6	71.4	44.6
474	Possessing Spirit	pyramid	Unique	60	62	6	90	0	1	/static/images/pyramid/62.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2062.html	18.7	69	86.5
475	Desert Bladestalker	pyramid	Unique	111	63	6	90	8	1	/static/images/pyramid/63.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2063.html	39.4	50.4	50.1
476	Hooded Assassin	pyramid	Unique	58	64	6	180	0	1	/static/images/pyramid/64.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2064.html	64.7	78.7	95.6
477	Jackal Guardian	pyramid	Unique	50	65	6	270	0	1	/static/images/pyramid/65.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2065.html	75	89.3	87.7
478	Hawk Guardian	pyramid	Unique	90	66	6	180	8	1	/static/images/pyramid/66.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2066.html	13.1	15.5	40.7
479	Draconum Mummy	pyramid	Unique	116	67	6	90	0	1	/static/images/pyramid/67.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2067.html	17.9	27.4	30.1
480	Revenant Draconum	pyramid	Unique	108	68	6	180	10	1	/static/images/pyramid/68.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2068.html	52.4	70.4	68.1
481	Carlana	pyramid	Unique	74	69	6	180	0	1	/static/images/pyramid/69.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2069.html	71.4	9.8	14.6
482	Jadreen	pyramid	Unique	70	70	6	90	8	1	/static/images/pyramid/70.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2070.html	32.8	25.6	12.5
483	Ravenbane	pyramid	Unique	64	71	6	90	8	1	/static/images/pyramid/71.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2071.html	39.3	33.8	31.6
484	Delara	pyramid	Unique	69	72	6	90	8	1	/static/images/pyramid/72.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2072.html	29.5	16.4	14.9
485	Seeker Azruk	pyramid	Unique	85	73	6	180	0	1	/static/images/pyramid/73.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2073.html	37.1	76.1	35
486	Seeker Contri	pyramid	Unique	70	74	6	90	8	1	/static/images/pyramid/74.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2074.html	47.9	46.5	24.3
573	Troll Zombie	siniste	TOUGH	34	69	5	90	0	1	/static/images/siniste/69.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2069.html	86.1	15.6	26.3
574	Corrupted Priest	siniste	WEAK	48	70	3	90	10	1	/static/images/siniste/70.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2070.html	23.8	55.4	8.3
575	Corrupted Priest	siniste	STANDARD	55	71	4	90	10	1	/static/images/siniste/71.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2071.html	34.5	93.2	65.4
576	Corrupted Priest	siniste	TOUGH	61	72	5	90	10	1	/static/images/siniste/72.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2072.html	28.4	77.7	50.5
577	Fanged Gunslinger	siniste	WEAK	33	73	3	90	6	2	/static/images/siniste/73.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2073.html	26.2	62.3	60.4
578	Fanged Gunslinger	siniste	STANDARD	44	74	4	90	6	3	/static/images/siniste/74.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2074.html	26	55.3	38.8
579	Fanged Gunslinger	siniste	TOUGH	56	75	5	90	6	4	/static/images/siniste/75.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2075.html	15.4	68.5	65.2
580	Detonating Zombie	siniste	WEAK	12	76	3	90	6	1	/static/images/siniste/76.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2076.html	0.3	82.7	99.3
505	Scouting Automaton	siniste	WEAK	15	1	1	90	0	1	/static/images/siniste/1.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%20%201.html	78.6	75.6	78.5
506	Scouting Automaton	siniste	STANDARD	24	2	2	90	0	1	/static/images/siniste/2.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%20%202.html	91.7	74.2	78.2
507	Scouting Automaton	siniste	TOUGH	28	3	3	90	0	1	/static/images/siniste/3.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%20%203.html	96.1	42.2	44.1
508	Fighting Automaton	siniste	WEAK	18	4	1	90	0	1	/static/images/siniste/4.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%20%204.html	91.9	40.5	42.7
509	Fighting Automaton	siniste	STANDARD	22	5	2	90	0	1	/static/images/siniste/5.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%20%205.html	97.5	92	93.7
510	Fighting Automaton	siniste	TOUGH	24	6	3	90	0	1	/static/images/siniste/6.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%20%206.html	99.3	79.3	75.5
511	Warrior Sprite	siniste	WEAK	19	7	1	90	4	1	/static/images/siniste/7.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%20%207.html	15.9	19.6	3.6
512	Warrior Sprite	siniste	STANDARD	22	8	2	90	4	1	/static/images/siniste/8.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%20%208.html	41.7	85.3	64.1
581	Detonating Zombie	siniste	STANDARD	21	77	4	90	6	1	/static/images/siniste/77.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2077.html	1.4	91.7	95.7
582	Detonating Zombie	siniste	TOUGH	25	78	5	90	6	1	/static/images/siniste/78.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2078.html	6.2	52.9	60.8
583	Golem Mechanic	siniste	WEAK	24	79	3	90	0	1	/static/images/siniste/79.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2079.html	5.4	43.5	12.4
586	Wrath Golem	siniste	WEAK	59	82	3	90	10	1	/static/images/siniste/82.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2082.html	51.1	63.2	46.5
587	Wrath Golem	siniste	STANDARD	64	83	4	90	10	1	/static/images/siniste/83.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2083.html	65.2	42.2	31.6
588	Wrath Golem	siniste	TOUGH	71	84	5	90	10	1	/static/images/siniste/84.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2084.html	52.4	26.4	6.5
589	Tomb Horror	siniste	WEAK	36	85	3	90	0	1	/static/images/siniste/85.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2085.html	25.5	22.1	21
590	Tomb Horror	siniste	STANDARD	37	86	4	90	0	1	/static/images/siniste/86.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2086.html	26.5	23.9	22.8
591	Tomb Horror	siniste	TOUGH	38	87	5	90	0	1	/static/images/siniste/87.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2087.html	38.1	17.7	32.1
592	Trog	siniste	WEAK	26	88	3	90	4	1	/static/images/siniste/88.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2088.html	20	43.9	29.4
593	Trog	siniste	STANDARD	29	89	4	90	4	1	/static/images/siniste/89.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2089.html	38.6	18.5	0
594	Trog	siniste	TOUGH	35	90	5	90	4	1	/static/images/siniste/90.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2090.html	72	49.4	5
595	Thunder Golem	siniste	UNIQUE	94	91	6	90	14	1	/static/images/siniste/91.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2091.html	76.3	24.4	33.3
596	Centaur Champion	siniste	UNIQUE	59	92	6	90	0	1	/static/images/siniste/92.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2092.html	89.6	79.3	75.8
597	Necropolis Judge	siniste	UNIQUE	87	93	6	90	10	2	/static/images/siniste/93.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2093.html	28.8	73.3	63.6
598	Dwarven Stomper	siniste	UNIQUE	94	94	6	270	12	1	/static/images/siniste/94.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2094.html	50.2	42.8	36.9
599	Mummy	siniste	UNIQUE	77	95	6	90	0	1	/static/images/siniste/95.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2095.html	79.8	80.1	92.9
600	Solonavi Avenger	siniste	UNIQUE	86	96	6	180	0	1	/static/images/siniste/96.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2096.html	79.8	91.5	100
601	Solonavi Destroyer	siniste	UNIQUE	90	97	6	180	12	1	/static/images/siniste/97.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2097.html	52	77.7	82.2
602	Solonavi Striker	siniste	UNIQUE	112	98	6	180	14	1	/static/images/siniste/98.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2098.html	44.5	91.6	91.4
603	Solonavi Tormentor	siniste	UNIQUE	121	99	6	180	0	1	/static/images/siniste/99.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2099.html	43.8	75.9	50.6
604	Solonavi Creator	siniste	UNIQUE	178	100	6	180	14	1	/static/images/siniste/100.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/100.html	23.1	96.3	95.3
605	Lord Andreus	siniste	PROMO	77	101	0	90	10	1	/static/images/siniste/101.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/101.html	63.6	100	74.8
606	Searle Of Congers	siniste	PROMO	90	102	0	90	0	1	/static/images/siniste/102.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/102.html	15.8	16.5	7.7
607	Ribhan Crag	siniste	PROMO	93	103	0	90	0	1	/static/images/siniste/103.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/103.html	37.8	33.6	21.4
608	Rax Coldstone	siniste	PROMO	97	104	0	90	0	1	/static/images/siniste/104.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/104.html	53.4	13	7.6
609	Duncan The Red	siniste	PROMO	93	105	0	180	0	1	/static/images/siniste/105.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/105.html	56.6	28.6	22.8
611	Cerberus	siniste	PROMO	75	107	0	90	10	2	/static/images/siniste/107.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/107.html	57.5	52.5	90.7
612	Gronther	siniste	PROMO	55	108	0	90	0	1	/static/images/siniste/108.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/108.html	95.2	83.7	77.3
613	Pickett	siniste	PROMO	44	109	0	90	8	1	/static/images/siniste/109.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/109.html	92.1	40	13.4
614	Crupo The Lucky	siniste	PROMO	24	110	0	90	8	1	/static/images/siniste/110.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/110.html	33.9	57.4	43.6
615	Enderek Os Fena	siniste	PROMO	29	111	0	90	10	1	/static/images/siniste/111.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/111.html	3.6	13	0
616	Amotep Norda	siniste	PROMO	55	112	0	90	6	2	/static/images/siniste/112.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/112.html	7.1	60.6	35.9
617	Midden (Zombie)	siniste	PROMO	40	113	0	90	0	1	/static/images/siniste/113.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/113.html	71.4	27.5	37.3
618	Chofni	siniste	PROMO	43	114	0	90	10	1	/static/images/siniste/114.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/114.html	48.7	88	63.9
619	Foster Gray	siniste	PROMO	63	115	0	90	10	3	/static/images/siniste/115.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/115.html	19.4	55.9	52.9
620	Razi (Zombie)	siniste	PROMO	14	116	0	90	12	1	/static/images/siniste/116.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/116.html	0.1	52.2	86.1
501	Geddion Longblade	pyramid	Unique	74	89	6	180	0	1	/static/images/pyramid/89.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2089.html	60.4	25	9.3
681	Blade Golem	alpha	TOUGH	36	57	4	90	0	1	/static/images/alpha/57.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2057.html	100	67.4	75.7
682	Altem Guardsman	alpha	WEAK	31	58	2	90	6	1	/static/images/alpha/58.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2058.html	95.8	93.7	91
683	Altem Guardsman	alpha	STANDARD	33	59	3	90	6	1	/static/images/alpha/59.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2059.html	94.6	85.7	83
684	Altem Guardsman	alpha	TOUGH	37	60	4	90	6	1	/static/images/alpha/60.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2060.html	96.5	57.4	52.3
389	Gale Bronzeboss	lancers	PROMO	24	149	0	90	0	1	/static/images/lancers/149.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/149.html	12.5	55.1	22.8
158	Spirit Taker	minions	STANDARD	23	38	3	90	0	1	/static/images/minions/38.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2038.html	28.2	85.2	66.6
159	Spirit Taker	minions	TOUGH	26	39	4	90	0	1	/static/images/minions/39.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2039.html	57.8	61.2	43.1
160	Dwarven Bombard	minions	WEAK	24	40	2	90	12	1	/static/images/minions/40.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2040.html	42.8	38.5	37.1
161	Dwarven Bombard	minions	STANDARD	27	41	3	90	12	1	/static/images/minions/41.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2041.html	54.8	18.8	13.8
162	Dwarven Bombard	minions	TOUGH	32	42	4	90	12	1	/static/images/minions/42.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2042.html	66.2	62.6	48.3
163	Glade Guardian	minions	WEAK	22	43	2	90	0	1	/static/images/minions/43.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2043.html	26.8	65.8	93.7
164	Glade Guardian	minions	STANDARD	26	44	3	90	0	1	/static/images/minions/44.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2044.html	40.3	31	50.1
165	Glade Guardian	minions	TOUGH	29	45	4	90	0	1	/static/images/minions/45.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2045.html	41.5	21.9	29.6
405	Keening Daemona	lancers	PROMO	53	165	0	180	10	1	\N	http://www.knight-ware.com/cmg/mageknight/lancers/165.html	55.9	96.7	79.1
407	Elroodon Lightfoot	lancers	PROMO	38	167	0	180	0	1	\N	http://www.knight-ware.com/cmg/mageknight/lancers/167.html	60.1	37.2	16.8
214	Galeshi Sun Prophet	minions	UNIQUE	67	94	6	90	0	1	/static/images/minions/94.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2094.html	63.4	47.6	51.9
225	Warpath	minions	PROMO	36	105	0	90	0	1	/static/images/minions/105.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/105.html	33.6	46.7	50.6
765	Werebear	alpha	TOUGH	45	141	5	90	0	1	/static/images/alpha/141.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/141.html	99.5	0.4	46.1
28	Demolishing Ape	mkd	WEAK	20	28	2	90	4	1	/static/images/mkd/28.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2028.html	39.9	88.3	77.7
29	Demolishing Ape	mkd	STANDARD	26	29	3	90	4	1	/static/images/mkd/29.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2029.html	65.4	53.2	30
30	Demolishing Ape	mkd	TOUGH	29	30	4	90	4	1	/static/images/mkd/30.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2030.html	73.8	32.5	6
31	Werecat	mkd	WEAK	19	31	2	90	0	1	/static/images/mkd/31.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2031.html	36.9	0.2	21.3
32	Werecat	mkd	STANDARD	22	32	3	90	0	1	/static/images/mkd/32.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2032.html	62.8	9.5	79.5
33	Werecat	mkd	TOUGH	25	33	4	90	0	1	/static/images/mkd/33.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2033.html	70.9	1.5	62.4
34	Minotaur Warrior	mkd	WEAK	39	34	2	90	0	1	/static/images/mkd/34.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2034.html	67.2	22.8	0.3
35	Minotaur Warrior	mkd	STANDARD	42	35	3	90	0	1	/static/images/mkd/35.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2035.html	70.4	72.4	27.5
36	Minotaur Warrior	mkd	TOUGH	49	36	4	90	0	1	/static/images/mkd/36.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2036.html	71	37.7	1.8
37	Minotaur Mage	mkd	WEAK	32	37	3	90	8	1	/static/images/mkd/37.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2037.html	52.7	78.1	55.4
38	Minotaur Mage	mkd	STANDARD	44	38	4	90	8	1	/static/images/mkd/38.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2038.html	46.2	62.4	19.5
39	Minotaur Mage	mkd	TOUGH	47	39	5	90	8	1	/static/images/mkd/39.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2039.html	48.3	47.7	12.7
787	Ramkare	alpha	PROMO	25	163	0	90	0	1	/static/images/alpha/163.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/163.html	92.6	51.9	27.4
788	Anunub	alpha	PROMO	32	164	0	90	12	1	/static/images/alpha/164.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/164.html	6.4	49.7	2.8
801	Incendiary Golem	ww	WEAK	27	1	1	90	8	1	/static/images/ww/1.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%20%201.html	87.7	23.8	38.4
40	Medusa	mkd	WEAK	19	40	3	180	0	1	/static/images/mkd/40.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2040.html	20.8	5.6	3.1
41	Medusa	mkd	STANDARD	24	41	4	180	0	1	/static/images/mkd/41.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2041.html	25.2	47.1	43.1
42	Medusa	mkd	TOUGH	29	42	5	180	0	1	/static/images/mkd/42.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2042.html	17.8	14.5	0
43	Hydra Serpent	mkd	WEAK	30	43	3	180	0	1	/static/images/mkd/43.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2043.html	46.4	75	77.7
71	Oracle Matteo	mkd	UNIQUE	61	71	6	90	8	1	/static/images/mkd/71.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2071.html	56.3	48.3	35.5
72	Arman Gessep	mkd	UNIQUE	65	72	6	90	8	1	/static/images/mkd/72.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2072.html	53.9	34.6	22.7
73	Serillia Silverblade	mkd	UNIQUE	51	73	6	90	0	1	/static/images/mkd/73.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2073.html	90.4	93.5	80.4
74	Scholar-Magus Bessa	mkd	UNIQUE	67	74	6	90	10	2	/static/images/mkd/74.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2074.html	18.4	25	0.8
75	Treesianna	mkd	UNIQUE	63	75	6	90	0	1	/static/images/mkd/75.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2075.html	37.2	54.4	34.2
76	Zenephret	mkd	UNIQUE	62	76	6	90	0	1	/static/images/mkd/76.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2076.html	70.3	69.1	57.6
77	Lord Oren	mkd	UNIQUE	74	77	6	90	0	1	/static/images/mkd/77.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2077.html	83.7	42.6	18.5
78	Joram Hawklord	mkd	UNIQUE	62	78	6	180	10	1	/static/images/mkd/78.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2078.html	55.7	66.1	43.6
79	Priest Wyndfenner	mkd	UNIQUE	72	79	6	90	6	1	/static/images/mkd/79.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2079.html	34.4	11.6	5.3
80	Secris Of Caero	mkd	UNIQUE	67	80	6	90	0	1	/static/images/mkd/80.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2080.html	51.6	52	30.5
81	Alsyn Vale	mkd	UNIQUE	63	81	6	180	0	1	/static/images/mkd/81.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2081.html	61.3	57.3	27.7
802	Incendiary Golem	ww	STANDARD	33	2	2	90	10	1	/static/images/ww/2.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%20%202.html	85.4	37.3	56.4
803	Incendiary Golem	ww	TOUGH	37	3	3	90	10	1	/static/images/ww/3.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%20%203.html	83.4	24.9	29.3
804	Elite Surok Apprentice	ww	WEAK	18	4	1	90	0	1	/static/images/ww/4.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%20%204.html	38.2	38	3.3
805	Elite Surok Apprentice	ww	STANDARD	20	5	2	90	0	1	/static/images/ww/5.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%20%205.html	72.2	100	76.3
806	Elite Surok Apprentice	ww	TOUGH	22	6	3	90	0	1	/static/images/ww/6.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%20%206.html	72.7	91.5	64.2
808	Tanglewood Spirit	ww	STANDARD	18	8	2	180	0	1	/static/images/ww/8.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%20%208.html	33	22.4	47.4
809	Tanglewood Spirit	ww	TOUGH	20	9	3	180	0	1	/static/images/ww/9.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%20%209.html	45.2	95.7	100
810	Crystal Sprite	ww	WEAK	14	10	1	90	6	1	/static/images/ww/10.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2010.html	0	59.8	10.2
811	Crystal Sprite	ww	STANDARD	16	11	2	90	6	1	/static/images/ww/11.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2011.html	2.3	30.2	6.8
82	Erithia Starsdawn	mkd	UNIQUE	66	82	6	90	8	2	/static/images/mkd/82.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2082.html	38.9	34.5	26.2
83	Priestess Wylune	mkd	UNIQUE	90	83	6	90	10	1	/static/images/mkd/83.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2083.html	23.9	19.5	5.6
84	Shayle	mkd	UNIQUE	90	84	6	90	12	1	/static/images/mkd/84.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2084.html	21	38.5	15.1
85	Hitash Levat	mkd	UNIQUE	82	85	6	90	6	1	/static/images/mkd/85.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2085.html	69.4	55.4	60
86	Avante Reaver	mkd	UNIQUE	65	86	6	90	10	1	/static/images/mkd/86.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2086.html	42	16.8	24.9
87	Daketh Zhagrim	mkd	UNIQUE	62	87	6	90	6	1	/static/images/mkd/87.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2087.html	41.6	31.7	34.9
88	Vermin Plinker	mkd	UNIQUE	68	88	6	90	6	2	/static/images/mkd/88.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2088.html	49.1	26.5	27.7
717	Dwarven Fuser	alpha	TOUGH	26	93	4	90	10	1	/static/images/alpha/93.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2093.html	46.4	33.2	11.7
718	Steam Golem	alpha	WEAK	56	94	2	90	10	1	/static/images/alpha/94.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2094.html	63.5	75.3	57.9
812	Crystal Sprite	ww	TOUGH	19	12	3	90	6	1	/static/images/ww/12.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2012.html	1.9	7.6	0
813	Zombie Hound	ww	WEAK	19	13	1	90	0	1	/static/images/ww/13.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2013.html	10.7	8.4	36.5
814	Zombie Hound	ww	STANDARD	20	14	2	90	0	1	/static/images/ww/14.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2014.html	19.6	82.3	100
815	Zombie Hound	ww	TOUGH	22	15	3	90	0	1	/static/images/ww/15.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2015.html	42.9	56.6	87.3
816	Rancid Bloodsucker	ww	WEAK	28	16	1	180	0	1	/static/images/ww/16.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2016.html	24.4	27.7	3.8
817	Rancid Bloodsucker	ww	STANDARD	33	17	2	180	0	1	/static/images/ww/17.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2017.html	34.9	65.3	32.3
818	Rancid Bloodsucker	ww	TOUGH	37	18	3	180	0	1	/static/images/ww/18.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2018.html	38.7	40.7	10.6
819	Galeshi Dervish	ww	WEAK	23	19	1	90	6	1	/static/images/ww/19.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2019.html	54.2	58.8	70.1
820	Galeshi Dervish	ww	STANDARD	26	20	2	90	6	1	/static/images/ww/20.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2020.html	71.1	37	35.7
821	Galeshi Dervish	ww	TOUGH	32	21	3	90	6	1	/static/images/ww/21.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2021.html	73.8	73.6	72.7
822	Amazon Mancatcher	ww	WEAK	16	22	1	90	0	1	/static/images/ww/22.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2022.html	61	69.6	39
823	Amazon Mancatcher	ww	STANDARD	19	23	2	90	0	1	/static/images/ww/23.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2023.html	74.9	44.6	7.3
824	Amazon Mancatcher	ww	TOUGH	24	24	3	90	0	1	/static/images/ww/24.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2024.html	66.9	91.4	55.2
826	Standard Bearer	ww	STANDARD	13	26	2	90	0	1	/static/images/ww/26.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2026.html	47.4	90.5	77.5
827	Standard Bearer	ww	TOUGH	15	27	3	90	0	1	/static/images/ww/27.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2027.html	63.8	80.2	70.5
828	Rivvenguard	ww	WEAK	16	28	1	90	0	1	/static/images/ww/28.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2028.html	48.3	48.6	49.2
829	Rivvenguard	ww	STANDARD	18	29	2	90	0	1	/static/images/ww/29.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2029.html	45.6	22.4	28.6
830	Rivvenguard	ww	TOUGH	19	30	3	90	0	1	/static/images/ww/30.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2030.html	59.1	24.3	26.2
831	Berserker	ww	WEAK	28	31	1	90	0	1	/static/images/ww/31.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2031.html	62.5	8	43.2
832	Berserker	ww	STANDARD	34	32	2	90	0	1	/static/images/ww/32.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2032.html	61.8	24.6	58.1
834	Launcher	ww	WEAK	21	34	1	90	10	1	/static/images/ww/34.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2034.html	18.2	76.6	59.5
835	Launcher	ww	STANDARD	25	35	2	90	12	1	/static/images/ww/35.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2035.html	20.7	40.7	22
836	Launcher	ww	TOUGH	31	36	3	90	12	1	/static/images/ww/36.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2036.html	32.5	60.7	44.9
837	Krugg Thug	ww	WEAK	23	37	1	90	0	1	/static/images/ww/37.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2037.html	92.8	75.7	70
838	Krugg Thug	ww	STANDARD	26	38	2	90	0	1	/static/images/ww/38.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2038.html	97.6	47.9	49.7
839	Krugg Thug	ww	TOUGH	28	39	3	90	0	1	/static/images/ww/39.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2039.html	98.1	39.2	34.2
840	Krugg Heaver	ww	WEAK	23	40	1	90	8	1	/static/images/ww/40.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2040.html	77	67.2	62.6
841	Krugg Heaver	ww	STANDARD	26	41	2	90	8	1	/static/images/ww/41.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2041.html	88	35.2	31.9
842	Krugg Heaver	ww	TOUGH	27	42	3	90	8	1	/static/images/ww/42.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2042.html	93.2	34.1	30
843	Heart Seeker	ww	WEAK	25	43	1	90	6	1	/static/images/ww/43.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2043.html	17.4	58.6	52.3
844	Heart Seeker	ww	STANDARD	29	44	2	90	6	1	/static/images/ww/44.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2044.html	31.6	20.5	11.4
845	Heart Seeker	ww	TOUGH	33	45	3	90	6	1	/static/images/ww/45.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2045.html	22.4	68.3	55
847	Bond Maker	ww	STANDARD	34	47	2	90	0	1	/static/images/ww/47.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2047.html	38.5	81.6	60.6
848	Bond Maker	ww	TOUGH	36	48	3	90	0	1	/static/images/ww/48.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2048.html	33.3	70.4	41.9
849	Battle Queen	ww	WEAK	28	49	2	90	10	1	/static/images/ww/49.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2049.html	92.9	42.2	41.8
850	Battle Queen	ww	STANDARD	43	50	3	90	10	1	/static/images/ww/50.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2050.html	89.8	60	74.3
851	Battle Queen	ww	TOUGH	47	51	4	90	10	1	/static/images/ww/51.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2051.html	90.3	30.7	50.5
852	Wild Mountain Troll	ww	WEAK	33	52	2	90	10	1	/static/images/ww/52.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2052.html	53.7	37.7	34.2
853	Wild Mountain Troll	ww	STANDARD	38	53	3	90	12	1	/static/images/ww/53.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2053.html	57.4	15.4	7.1
854	Wild Mountain Troll	ww	TOUGH	53	54	4	90	12	2	/static/images/ww/54.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2054.html	40.5	64.4	61
855	Nightwitch	ww	WEAK	32	55	2	90	8	1	/static/images/ww/55.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2055.html	19.2	81.1	41.3
856	Nightwitch	ww	STANDARD	41	56	3	90	10	1	/static/images/ww/56.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2056.html	23.5	75.5	36.9
155	Thorn Maiden	minions	STANDARD	30	35	3	180	4	1	/static/images/minions/35.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2035.html	32	100	100
156	Thorn Maiden	minions	TOUGH	32	36	4	180	4	1	/static/images/minions/36.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2036.html	50.1	99.1	100
157	Spirit Taker	minions	WEAK	18	37	2	90	0	1	/static/images/minions/37.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2037.html	12.3	38	21.4
190	Khamsin Peacekeeper	minions	WEAK	24	70	3	90	8	1	/static/images/minions/70.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2070.html	64.3	70.4	64.6
191	Khamsin Peacekeeper	minions	STANDARD	27	71	4	90	8	1	/static/images/minions/71.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2071.html	87.4	48	38.3
226	Hadim	minions	PROMO	27	106	0	90	0	1	/static/images/minions/106.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/106.html	74	54	52.8
227	Marrow	minions	PROMO	28	107	0	90	0	1	/static/images/minions/107.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/107.html	40.9	51.2	46.3
228	Grizaphus	minions	PROMO	66	108	0	180	8	1	/static/images/minions/108.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/108.html	99.7	54.4	80.8
229	Black Dirge	minions	PROMO	35	109	0	90	0	1	/static/images/minions/109.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/109.html	59.5	24.2	66.7
230	Sovalis	minions	PROMO	41	110	0	180	0	1	/static/images/minions/110.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/110.html	70.5	93.9	99.4
231	Captain Sarjhet	minions	PROMO	29	111	0	90	8	1	/static/images/minions/111.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/111.html	19.3	11.9	0
232	Torg Boneknitter	minions	PROMO	48	112	0	180	8	1	/static/images/minions/112.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/112.html	30.5	6.3	0
233	Wolfwitch	minions	PROMO	48	113	0	90	10	1	/static/images/minions/113.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/113.html	27	23	10.5
236	Boronx	minions	PROMO	54	116	0	90	0	1	/static/images/minions/116.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/116.html	71.9	91.9	82.7
237	Anopheles	minions	PROMO	43	117	0	90	4	1	/static/images/minions/117.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/117.html	75.8	49.7	89.8
238	Bloodaxe	minions	PROMO	36	118	0	180	0	1	/static/images/minions/118.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/118.html	88.7	64.8	56.6
239	Lord Chaos	minions	PROMO	58	119	0	90	8	1	/static/images/minions/119.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/119.html	97.1	65.5	95.4
240	Mondravalis	minions	PROMO	37	120	0	180	12	2	/static/images/minions/120.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/120.html	29.2	37.7	64
242	Whirling Golem	lancers	STANDARD	21	2	2	180	0	1	/static/images/lancers/2.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%20%202.html	64.2	92.3	89.5
243	Whirling Golem	lancers	TOUGH	24	3	3	180	0	1	/static/images/lancers/3.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%20%203.html	79.7	70.4	63.7
245	Iron Lung	lancers	STANDARD	13	5	2	90	0	1	/static/images/lancers/5.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%20%205.html	21.4	66.6	43.7
246	Iron Lung	lancers	TOUGH	15	6	3	90	0	1	/static/images/lancers/6.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%20%206.html	30.8	58.2	22.1
764	Werebear	alpha	STANDARD	40	140	4	90	0	1	/static/images/alpha/140.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/140.html	98.2	2.4	72.3
1	Gnoll Hunter	mkd	WEAK	8	1	1	90	0	1	/static/images/mkd/1.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%20%201.html	9.8	43.3	22
807	Tanglewood Spirit	ww	WEAK	14	7	1	180	0	1	/static/images/ww/7.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%20%207.html	10.3	64.5	79.8
858	Dwarven Rotary Fuser	ww	WEAK	29	58	2	90	10	2	/static/images/ww/58.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2058.html	21.2	12	0
859	Dwarven Rotary Fuser	ww	STANDARD	35	59	3	90	10	2	/static/images/ww/59.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2059.html	33.2	25.2	1.2
860	Dwarven Rotary Fuser	ww	TOUGH	38	60	4	90	10	2	/static/images/ww/60.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2060.html	44.4	13.7	0.8
865	Clurch Piper	ww	STANDARD	18	65	3	90	0	1	/static/images/ww/65.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2065.html	28.6	26	5.7
866	Clurch Piper	ww	TOUGH	20	66	4	90	0	1	/static/images/ww/66.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2066.html	62.1	92.3	76.5
867	Shelled One	ww	WEAK	17	67	2	90	0	1	/static/images/ww/67.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2067.html	79	39.6	28.9
869	Shelled One	ww	TOUGH	25	69	4	90	0	1	/static/images/ww/69.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2069.html	95.4	61.6	39.8
870	Thorn Crawler	ww	WEAK	33	70	2	90	8	1	/static/images/ww/70.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2070.html	70.1	0	38.6
871	Thorn Crawler	ww	STANDARD	37	71	3	90	8	1	/static/images/ww/71.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2071.html	86.2	0	14.6
872	Thorn Crawler	ww	TOUGH	38	72	4	90	8	1	/static/images/ww/72.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2072.html	87.2	0	11.9
873	Tormented Soul	ww	WEAK	28	73	2	90	0	1	/static/images/ww/73.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2073.html	0.7	62.3	100
874	Tormented Soul	ww	STANDARD	29	74	3	90	0	1	/static/images/ww/74.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2074.html	0.8	66.4	100
875	Tormented Soul	ww	TOUGH	30	75	4	90	0	1	/static/images/ww/75.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2075.html	0.5	100	100
876	Mind Thief	ww	WEAK	30	76	2	90	8	1	/static/images/ww/76.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2076.html	20.1	65.1	61.4
877	Mind Thief	ww	STANDARD	36	77	3	90	8	1	/static/images/ww/77.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2077.html	31.5	19.1	10.3
878	Mind Thief	ww	TOUGH	38	78	4	90	8	1	/static/images/ww/78.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2078.html	32.2	22.4	1.4
724	Royal Pikeman	alpha	WEAK	14	100	3	90	0	1	/static/images/alpha/100.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/100.html	36.7	66.5	64.2
218	Magestone Draconum	minions	UNIQUE	88	98	6	180	12	3	/static/images/minions/98.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2098.html	28.3	51.9	66.1
219	Vampiric Draconum	minions	UNIQUE	87	99	6	90	0	1	/static/images/minions/99.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2099.html	58.7	20.3	75.9
220	Amazon Draconum	minions	UNIQUE	108	100	6	180	12	1	/static/images/minions/100.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/100.html	22.1	64.9	89.1
723	Noble Archer	alpha	TOUGH	22	99	5	90	12	2	/static/images/alpha/99.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2099.html	24.2	76.3	65.7
626	Utem Crossbowman	alpha	Standard	11	2	2	90	8	1	/static/images/alpha/2.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%20%202.html	19.9	89.4	69.2
685	Wood Golem	alpha	WEAK	23	61	2	90	0	1	/static/images/alpha/61.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2061.html	74.8	49.8	64.6
704	Nightstalker	alpha	STANDARD	27	80	3	90	8	1	/static/images/alpha/80.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2080.html	34.1	66.1	12.1
244	Iron Lung	lancers	WEAK	11	4	1	90	0	1	/static/images/lancers/4.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%20%204.html	14.1	84.9	64.4
259	Shield Maiden	lancers	WEAK	16	19	1	90	0	1	/static/images/lancers/19.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2019.html	4.6	29.2	6.3
260	Shield Maiden	lancers	STANDARD	18	20	2	90	0	1	/static/images/lancers/20.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2020.html	16.7	18.4	0
261	Shield Maiden	lancers	TOUGH	22	21	3	90	0	1	/static/images/lancers/21.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2021.html	11.9	69.3	32.7
262	Khamsin Gunslinger	lancers	WEAK	12	22	1	90	6	1	/static/images/lancers/22.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2022.html	4.1	78.6	55.2
263	Khamsin Gunslinger	lancers	STANDARD	15	23	2	90	6	1	/static/images/lancers/23.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2023.html	14.2	49.5	24.9
264	Khamsin Gunslinger	lancers	TOUGH	17	24	3	90	6	1	/static/images/lancers/24.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2024.html	16.3	35.6	3.8
271	Longbow Archer	lancers	WEAK	16	31	1	90	14	1	/static/images/lancers/31.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2031.html	4	26.2	32.1
341	Nightmare Reaper On Nightmare	lancers	STANDARD	41	101	4	180	0	1	/static/images/lancers/101.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/101.html	30.9	64.5	43.4
879	Soul Stealer	ww	WEAK	35	79	2	90	0	1	/static/images/ww/79.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2079.html	35.6	65.1	51.1
880	Soul Stealer	ww	STANDARD	44	80	3	90	0	1	/static/images/ww/80.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2080.html	44.6	75.9	63.9
881	Soul Stealer	ww	TOUGH	49	81	4	90	0	1	/static/images/ww/81.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2081.html	36.6	47.3	23.4
882	Scalesworn Thrall	ww	WEAK	12	82	2	90	4	1	/static/images/ww/82.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2082.html	10.5	83.5	73.8
291	Technomancer	lancers	TOUGH	29	51	4	180	8	1	/static/images/lancers/51.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2051.html	15.3	14	0
298	Huntsman	lancers	WEAK	24	58	2	90	10	1	/static/images/lancers/58.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2058.html	5.1	21.2	7.9
289	Technomancer	lancers	WEAK	25	49	2	180	8	1	/static/images/lancers/49.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2049.html	6.3	37.7	6.6
290	Technomancer	lancers	STANDARD	27	50	3	180	8	1	/static/images/lancers/50.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2050.html	12	25.5	8.1
299	Huntsman	lancers	STANDARD	26	59	3	90	10	1	/static/images/lancers/59.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2059.html	12.8	14.5	3.4
300	Huntsman	lancers	TOUGH	27	60	4	90	10	1	/static/images/lancers/60.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2060.html	15.2	13.6	2.2
314	Bone Grinder	lancers	STANDARD	19	74	3	90	0	1	/static/images/lancers/74.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2074.html	35.3	5.6	0
315	Bone Grinder	lancers	TOUGH	21	75	4	90	0	1	/static/images/lancers/75.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2075.html	49	82.7	61
316	Barber-Surgeon	lancers	WEAK	14	76	2	90	0	1	/static/images/lancers/76.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2076.html	5	50.8	35.5
325	Scorpem Gunner On Scorpion Mount	lancers	WEAK	43	85	3	180	8	1	/static/images/lancers/85.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2085.html	30.7	26.7	22.7
331	Scorpem Crossbowman On Scorpion Mount	lancers	WEAK	35	91	3	180	8	1	/static/images/lancers/91.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2091.html	23.7	14.6	13.2
441	Squalid Gremlin	pyramid	Tough	21	27	3	90	0	1	/static/images/pyramid/27.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2027.html	16.7	67.1	54.9
446	Temple Cat	pyramid	Standard	24	32	2	90	0	1	/static/images/pyramid/32.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2032.html	72.3	60.4	70.7
447	Temple Cat	pyramid	Tough	29	33	3	90	0	1	/static/images/pyramid/33.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2033.html	58.1	18.5	27.2
448	Skull Warder	pyramid	Weak	30	34	1	90	0	1	/static/images/pyramid/34.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2034.html	86.3	88.2	73.1
449	Skull Warder	pyramid	Standard	35	35	2	90	0	1	/static/images/pyramid/35.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2035.html	84.4	62	18.4
451	Ironblood Ettin	pyramid	Weak	30	37	3	180	0	1	/static/images/pyramid/37.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2037.html	47.8	85	65.7
452	Ironblood Ettin	pyramid	Standard	39	38	4	180	0	1	/static/images/pyramid/38.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2038.html	50.9	27.9	0
453	Ironblood Ettin	pyramid	Tough	45	39	5	180	0	1	/static/images/pyramid/39.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2039.html	59.5	68.4	32.7
454	Gorgon	pyramid	Weak	20	40	3	180	4	1	/static/images/pyramid/40.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2040.html	11.6	86.8	77.3
456	Gorgon	pyramid	Tough	33	42	5	180	4	1	/static/images/pyramid/42.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2042.html	6.8	53	19.4
461	Acid Ooze	pyramid	Standard	23	47	4	90	4	1	/static/images/pyramid/47.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2047.html	83.1	49.8	79.1
462	Rattletail	pyramid	Weak	25	49	3	90	0	1	/static/images/pyramid/49.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2049.html	78.4	72.2	52.3
463	Rattletail	pyramid	Standard	28	50	4	90	0	1	/static/images/pyramid/50.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2050.html	85.9	39.9	15.9
464	Rattletail	pyramid	Tough	31	51	5	90	0	1	/static/images/pyramid/51.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2051.html	95.2	92.2	76
465	Vine Golem	pyramid	Weak	25	52	3	270	0	1	/static/images/pyramid/52.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2052.html	88.4	30.1	60.4
466	Vine Golem	pyramid	Standard	30	53	4	270	0	1	/static/images/pyramid/53.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2053.html	89.3	75	84.4
468	Stone Boar	pyramid	Standard	35	56	4	90	0	1	/static/images/pyramid/56.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2056.html	78.6	11	26.1
883	Scalesworn Thrall	ww	STANDARD	22	83	3	90	4	1	/static/images/ww/83.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2083.html	69.5	76.4	81.7
887	Unicorn Bladesman On Unicorn	ww	TOUGH	53	87	5	180	0	1	/static/images/ww/87.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2087.html	56.7	96.3	81
888	Sislith Bladesman On Sislith	ww	WEAK	38	88	3	180	0	1	/static/images/ww/88.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2088.html	80.5	22.8	27.2
889	Sislith Bladesman On Sislith	ww	STANDARD	43	89	4	180	0	1	/static/images/ww/89.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2089.html	78.5	52.7	38.7
890	Sislith Bladesman On Sislith	ww	TOUGH	51	90	5	180	0	1	/static/images/ww/90.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2090.html	57.2	91.5	75.7
891	Unicorn Tracker On Unicorn	ww	WEAK	37	91	3	180	8	1	/static/images/ww/91.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2091.html	64	32.9	39
469	Stone Boar	pyramid	Tough	40	57	5	90	0	1	/static/images/pyramid/57.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2057.html	80.2	42.7	54.5
892	Unicorn Tracker On Unicorn	ww	STANDARD	45	92	4	180	8	1	/static/images/ww/92.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2092.html	49.3	50.7	51.2
894	Sislith Tracker On Sislith	ww	WEAK	43	94	3	180	8	1	/static/images/ww/94.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2094.html	67.5	38.8	45.8
895	Sislith Tracker On Sislith	ww	STANDARD	47	95	4	180	8	1	/static/images/ww/95.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2095.html	51.4	24.5	10.9
897	Galeshi Cavalryman On Steam Horse	ww	WEAK	44	97	3	180	6	1	/static/images/ww/97.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2097.html	46.9	36	70.4
719	Steam Golem	alpha	STANDARD	61	95	3	90	10	1	/static/images/alpha/95.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2095.html	86.6	58.5	53.4
898	Galeshi Cavalryman On Steam Horse	ww	STANDARD	49	98	4	180	6	1	/static/images/ww/98.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2098.html	38.3	24.9	31.1
899	Galeshi Cavalryman On Steam Horse	ww	TOUGH	57	99	5	180	6	1	/static/images/ww/99.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2099.html	39.2	72.4	77.7
901	Galeshi Ram Charger On Steam Ram	ww	STANDARD	47	101	4	180	6	1	/static/images/ww/101.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/101.html	40.8	66.4	44.8
893	Unicorn Tracker On Unicorn	ww	TOUGH	52	93	5	180	8	1	/static/images/ww/93.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2093.html	47.1	88	83.7
2	Gnoll Hunter	mkd	STANDARD	10	2	2	90	0	1	/static/images/mkd/2.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%20%202.html	29.2	98.3	86.5
3	Gnoll Hunter	mkd	TOUGH	11	3	3	90	0	1	/static/images/mkd/3.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%20%203.html	55.6	91.6	84.5
4	Gnoll Fletcher	mkd	WEAK	9	4	1	90	8	1	/static/images/mkd/4.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%20%204.html	9.5	26.7	8.7
5	Gnoll Fletcher	mkd	STANDARD	10	5	2	90	8	1	/static/images/mkd/5.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%20%205.html	21.7	96.4	85.8
846	Bond Maker	ww	WEAK	31	46	1	90	0	1	/static/images/ww/46.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2046.html	17.3	100	77
896	Sislith Tracker On Sislith	ww	TOUGH	49	96	5	180	0	1	/static/images/ww/96.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2096.html	57.3	18.9	4.6
906	Dwarven Ram On Steam Ram	ww	WEAK	39	106	3	180	10	1	/static/images/ww/106.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/106.html	48.6	46.7	24.6
909	Horned Hatchetkrugg On Horned Drake	ww	WEAK	35	109	3	180	0	1	/static/images/ww/109.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/109.html	96.3	42.6	64.2
910	Horned Hatchetkrugg On Horned Drake	ww	STANDARD	42	110	4	180	0	1	/static/images/ww/110.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/110.html	96.8	65.3	72.6
911	Horned Hatchetkrugg On Horned Drake	ww	TOUGH	44	111	5	180	0	1	/static/images/ww/111.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/111.html	95.7	59.4	60.7
913	War Hatchetkrugg On War Yak	ww	STANDARD	39	113	4	180	0	1	/static/images/ww/113.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/113.html	99.2	48.7	36.8
917	Horned Impaler On Horned Drake	ww	TOUGH	49	117	5	180	10	1	/static/images/ww/117.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/117.html	82.4	18.9	14
918	War Impaler On War Yak	ww	WEAK	40	118	3	180	10	1	/static/images/ww/118.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/118.html	77.8	87.3	77.7
930	Swooping Invader On Flying Horse	ww	WEAK	36	130	3	180	0	1	/static/images/ww/130.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/130.html	58.2	84.9	75.8
931	Swooping Invader On Flying Horse	ww	STANDARD	46	131	4	180	0	1	/static/images/ww/131.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/131.html	65.1	84.6	82.1
932	Swooping Invader On Flying Horse	ww	TOUGH	55	132	5	180	0	1	/static/images/ww/132.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/132.html	61.9	97.9	91.8
934	Thunderdoom Troll On Sislith	ww	UNIQUE	90	134	6	180	0	1	/static/images/ww/134.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/134.html	66.5	33.5	61.6
936	Mountain King On Steam Ram	ww	UNIQUE	108	136	6	180	12	1	/static/images/ww/136.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/136.html	34	89.4	71.9
937	Orc Captain On Cave Runner	ww	UNIQUE	148	137	6	180	0	1	/static/images/ww/137.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/137.html	8.3	50.5	34.5
938	Half-Troll Behemoth On Ankhar	ww	UNIQUE	120	138	6	180	8	1	/static/images/ww/138.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/138.html	36.5	4.1	11.6
941	Shyft Matriarch	ww	UNIQUE	119	141	6	90	12	1	/static/images/ww/141.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/141.html	13.2	20.6	26.9
942	Mortis Draconum	ww	UNIQUE	78	142	6	90	0	1	/static/images/ww/142.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/142.html	85.7	99.8	96.9
944	Koranub	ww	PROMO	41	144	0	90	8	1	/static/images/ww/144.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/144.html	68.8	89.5	50.6
952	Yoloria The Devoted	ww	PROMO	32	152	0	90	0	1	/static/images/ww/152.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/152.html	69	90.3	69.1
960	Thaniel Sollar	ww	PROMO	64	160	0	180	10	1	/static/images/ww/160.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/160.html	43	51.5	26
964	Haagor Dunebreaker	ww	PROMO	54	164	0	180	8	1	/static/images/ww/164.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/164.html	40.4	99.4	88.9
965	Ironshod Ako Bron	ww	PROMO	71	165	0	180	10	1	/static/images/ww/165.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/165.html	17.6	22.2	16.2
470	Sun Leopard	pyramid	Weak	35	58	3	90	4	1	/static/images/pyramid/58.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2058.html	62.9	15.6	27.6
472	Sun Leopard	pyramid	Tough	54	60	5	90	4	1	/static/images/pyramid/60.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2060.html	60.7	71.6	58.1
493	Amir	pyramid	Unique	82	81	6	270	0	1	/static/images/pyramid/81.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2081.html	41	31.9	51.9
495	Khoura	pyramid	Unique	73	83	6	90	8	1	/static/images/pyramid/83.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2083.html	54.7	29.4	12.4
496	Hazna	pyramid	Unique	65	84	6	90	4	1	/static/images/pyramid/84.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2084.html	51.5	61	44.3
498	Ember	pyramid	Unique	60	86	6	90	12	1	/static/images/pyramid/86.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2086.html	71.5	82.8	57.8
499	Trollkiller	pyramid	Unique	86	87	6	180	0	1	/static/images/pyramid/87.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2087.html	63	63.5	35.8
500	Phreggs	pyramid	Unique	82	88	6	90	12	1	/static/images/pyramid/88.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2088.html	11.3	40.2	16
439	Squalid Gremlin	pyramid	Weak	12	25	1	90	0	1	/static/images/pyramid/25.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2025.html	7.6	77.8	68.8
450	Skull Warder	pyramid	Tough	39	36	3	90	0	1	/static/images/pyramid/36.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2036.html	82.1	33.1	0
100	Locksmith Karg	mkd	UNIQUE	82	100	6	90	0	1	/static/images/mkd/100.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/100.html	42.1	63.4	49
101	Tracker	mkd	PROMO	13	101	0	90	0	1	/static/images/mkd/101.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/101.html	89.7	83.7	76.4
102	Dead-Eye	mkd	PROMO	13	102	0	90	12	1	/static/images/mkd/102.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/102.html	23	72.4	67.8
103	Jawless Jenkins	mkd	PROMO	24	103	0	90	0	1	/static/images/mkd/103.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/103.html	93.3	77.2	76.2
235	Shadowbane	minions	PROMO	35	115	0	90	8	1	/static/images/minions/115.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/115.html	30.3	67.1	40.9
525	Dwarven Pikeman	siniste	TOUGH	26	21	3	90	0	1	/static/images/siniste/21.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2021.html	86.7	47.9	23
526	Dwarven Miner	siniste	WEAK	23	22	1	90	6	1	/static/images/siniste/22.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2022.html	16.1	48.8	34.5
527	Dwarven Miner	siniste	STANDARD	26	23	2	90	6	1	/static/images/siniste/23.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2023.html	38.4	27	8.9
104	Young Rich	mkd	PROMO	18	104	0	90	8	2	/static/images/mkd/104.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/104.html	7.2	22.4	47.4
105	Murrk	mkd	PROMO	21	105	0	90	0	1	/static/images/mkd/105.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/105.html	80	100	81.2
106	Headstone	mkd	PROMO	25	106	0	90	0	1	/static/images/mkd/106.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/106.html	85.3	63.6	65.7
107	Volcorga	mkd	PROMO	21	107	0	90	0	1	/static/images/mkd/107.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/107.html	94.2	86.3	100
562	Digger	siniste	WEAK	14	58	2	90	6	1	/static/images/siniste/58.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2058.html	1	59.5	44.9
563	Digger	siniste	STANDARD	18	59	3	90	6	1	/static/images/siniste/59.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2059.html	12.1	17.4	3.3
138	Mindsifter	minions	TOUGH	34	18	3	90	10	1	/static/images/minions/18.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2018.html	77.4	59.9	66
139	Dwarven Thunder Gunner	minions	WEAK	22	19	1	90	8	4	/static/images/minions/19.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2019.html	3.4	51.6	34.4
140	Dwarven Thunder Gunner	minions	STANDARD	29	20	2	90	8	4	/static/images/minions/20.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2020.html	8	6.9	0
141	Dwarven Thunder Gunner	minions	TOUGH	32	21	3	90	8	4	/static/images/minions/21.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2021.html	7.7	54.3	22.1
142	Khamsin Sniper	minions	WEAK	17	22	1	90	14	1	/static/images/minions/22.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2022.html	5.3	20.2	17
143	Khamsin Sniper	minions	STANDARD	21	23	2	90	14	1	/static/images/minions/23.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2023.html	15	77.6	50.3
144	Khamsin Sniper	minions	TOUGH	22	24	3	90	14	1	/static/images/minions/24.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2024.html	26.8	73.3	51.7
145	Wereraven	minions	WEAK	22	25	1	90	10	1	/static/images/minions/25.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2025.html	35.8	9.5	71.2
146	Wereraven	minions	STANDARD	26	26	2	90	10	1	/static/images/minions/26.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2026.html	56.2	0.6	30.1
147	Wereraven	minions	TOUGH	27	27	3	90	10	1	/static/images/minions/27.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2027.html	67.3	1.5	29.5
148	Phooka	minions	WEAK	18	28	1	90	8	1	/static/images/minions/28.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2028.html	4.8	10.1	4.3
149	Phooka	minions	STANDARD	25	29	2	90	8	1	/static/images/minions/29.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2029.html	8.9	34.1	19.1
968	Wandering Mochooch	ww	PROMO	43	168	0	180	0	1	/static/images/ww/168.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/168.html	99.1	92.9	81.5
971	Vancharlaikia	ww	PROMO	75	171	0	180	6	1	/static/images/ww/171.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/171.html	9.3	53.3	64.5
972	Flying Tarnapii	ww	PROMO	51	172	0	180	8	1	/static/images/ww/172.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/172.html	70.6	100	95.7
150	Phooka	minions	TOUGH	26	30	3	90	10	1	/static/images/minions/30.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2030.html	13.4	32	19.5
151	Brass Commander	minions	WEAK	27	31	2	90	0	1	/static/images/minions/31.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2031.html	34.6	17.6	27.3
152	Brass Commander	minions	STANDARD	36	32	3	90	0	1	/static/images/minions/32.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2032.html	19.8	10.9	28.6
153	Brass Commander	minions	TOUGH	43	33	4	90	0	1	/static/images/minions/33.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2033.html	27.4	21.9	38.7
154	Thorn Maiden	minions	WEAK	26	34	2	180	4	1	/static/images/minions/34.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2034.html	39.1	50.9	62.6
420	Gnoll Poacher	pyramid	Tough	13	6	3	90	10	1	/static/images/pyramid/6.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%20%206.html	32.1	80.3	68.7
421	Tomb Skeleton	pyramid	Weak	10	7	1	90	0	1	/static/images/pyramid/7.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%20%207.html	19.1	100	100
422	Tomb Skeleton	pyramid	Standard	14	8	2	90	0	1	/static/images/pyramid/8.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%20%208.html	44.8	66.5	71.5
423	Tomb Skeleton	pyramid	Tough	18	9	3	90	0	1	/static/images/pyramid/9.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%20%209.html	82.8	18.4	22.5
424	Stinging Skeleton	pyramid	Weak	13	10	1	90	10	1	/static/images/pyramid/10.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2010.html	3.8	68.6	91.7
425	Stinging Skeleton	pyramid	Standard	16	11	2	90	10	1	/static/images/pyramid/11.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2011.html	7.1	29.2	58.5
426	Stinging Skeleton	pyramid	Tough	18	12	3	90	10	1	/static/images/pyramid/12.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2012.html	33	18.4	47.5
427	Fire Salamander	pyramid	Weak	12	13	1	90	4	1	/static/images/pyramid/13.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2013.html	46.7	91.5	79.1
428	Fire Salamander	pyramid	Standard	14	14	2	90	4	1	/static/images/pyramid/14.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2014.html	73.6	71.5	62.3
973	Slithering Moi	ww	PROMO	72	173	0	180	0	1	/static/images/ww/173.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/173.html	35.7	14.8	15.6
975	Xandressan Diver	up	Weak	13	1	1	90	0	1	/static/images/up/1.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%20%201.html	27.7	77	71.8
884	Scalesworn Thrall	ww	TOUGH	32	84	4	90	6	1	/static/images/ww/84.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2084.html	94.1	78.3	82.3
885	Unicorn Bladesman On Unicorn	ww	WEAK	37	85	3	180	0	1	/static/images/ww/85.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2085.html	75.7	38.9	35.2
6	Gnoll Fletcher	mkd	TOUGH	11	6	3	90	8	1	/static/images/mkd/6.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%20%206.html	32.6	91.6	83.1
7	Armored Skeleton	mkd	WEAK	9	7	1	90	0	1	/static/images/mkd/7.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%20%207.html	24.6	39.7	39.7
8	Armored Skeleton	mkd	STANDARD	14	8	2	90	0	1	/static/images/mkd/8.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%20%208.html	50.7	66.5	72.2
9	Armored Skeleton	mkd	TOUGH	20	9	3	90	0	1	/static/images/mkd/9.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%20%209.html	91.2	100	97.4
10	Skeleton Archer	mkd	WEAK	7	10	1	90	8	1	/static/images/mkd/10.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2010.html	4.9	73.3	70
11	Skeleton Archer	mkd	STANDARD	10	11	2	90	8	1	/static/images/mkd/11.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2011.html	20.6	96.4	97.4
429	Fire Salamander	pyramid	Tough	17	15	3	90	4	1	/static/images/pyramid/15.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2015.html	88.3	49.2	32.7
430	Skulk	pyramid	Weak	20	16	1	90	0	1	/static/images/pyramid/16.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2016.html	43.7	94.8	100
431	Skulk	pyramid	Standard	25	17	2	90	0	1	/static/images/pyramid/17.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2017.html	56.9	49.9	59.8
432	Skulk	pyramid	Tough	28	18	3	90	0	1	/static/images/pyramid/18.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2018.html	81.1	29.8	34.2
433	Stone Golem	pyramid	Weak	14	19	1	90	0	1	/static/images/pyramid/19.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2019.html	32.9	62.4	90.3
434	Stone Golem	pyramid	Standard	17	20	2	90	0	1	/static/images/pyramid/20.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2020.html	61.5	31.4	65
435	Stone Golem	pyramid	Tough	20	21	3	90	0	1	/static/images/pyramid/21.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2021.html	78	88.8	100
436	Ram Warrior	pyramid	Weak	12	22	1	90	0	1	/static/images/pyramid/22.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2022.html	4.8	88.8	82.7
437	Ram Warrior	pyramid	Standard	15	23	2	90	0	1	/static/images/pyramid/23.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2023.html	13.8	57.6	57
12	Skeleton Archer	mkd	TOUGH	12	12	3	90	8	1	/static/images/mkd/12.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2012.html	64.8	85.8	90.6
13	Lizard Man	mkd	WEAK	10	13	1	90	0	1	/static/images/mkd/13.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2013.html	60	100	90.8
14	Lizard Man	mkd	STANDARD	13	14	2	90	0	1	/static/images/mkd/14.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2014.html	76.9	88.5	70.6
15	Lizard Man	mkd	TOUGH	15	15	3	90	0	1	/static/images/mkd/15.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2015.html	92.2	73.6	53.8
886	Unicorn Bladesman On Unicorn	ww	STANDARD	46	86	4	180	0	1	/static/images/ww/86.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2086.html	74.4	49.5	34.2
976	Xandressan Diver	up	Standard	16	2	2	90	0	1	/static/images/up/2.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%20%202.html	52.3	42.6	46.1
977	Xandressan Diver	up	Tough	17	3	3	90	0	1	/static/images/up/3.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%20%203.html	60.7	36.6	40.4
978	Forest Nymph	up	Weak	32	4	1	90	0	1	/static/images/up/4.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%20%204.html	56.1	75.1	84
979	Forest Nymph	up	Standard	38	5	2	90	0	1	/static/images/up/5.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%20%205.html	63.1	48.7	31.3
980	Forest Nymph	up	Tough	44	6	3	90	0	1	/static/images/up/6.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%20%206.html	57	73.9	68.3
981	Steam Gunner	up	Weak	16	7	1	90	8	1	/static/images/up/7.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%20%207.html	47	36.9	33.9
982	Steam Gunner	up	Standard	18	8	2	90	8	1	/static/images/up/8.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%20%208.html	46.1	11.2	15
983	Steam Gunner	up	Tough	21	9	3	90	8	1	/static/images/up/9.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%20%209.html	75	81.8	75.1
984	Whelp Alchemist	up	Weak	25	10	1	90	10	1	/static/images/up/10.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2010.html	14	52.9	40.5
985	Whelp Alchemist	up	Standard	27	11	2	90	10	1	/static/images/up/11.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2011.html	11.8	43	21.2
986	Whelp Alchemist	up	Tough	29	12	3	90	10	1	/static/images/up/12.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2012.html	31	32.4	13.6
987	Whelp Monk	up	Weak	23	13	1	90	0	1	/static/images/up/13.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2013.html	35.9	82.7	72.6
988	Whelp Monk	up	Standard	27	14	2	90	0	1	/static/images/up/14.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2014.html	23.5	49	30.2
16	Gargoyle	mkd	WEAK	14	16	1	90	0	1	/static/images/mkd/16.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2016.html	87.5	84	88.1
17	Gargoyle	mkd	STANDARD	17	17	2	90	0	1	/static/images/mkd/17.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2017.html	93	55.2	59
18	Gargoyle	mkd	TOUGH	19	18	3	90	0	1	/static/images/mkd/18.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2018.html	96.4	41.2	37.4
19	Magma Guardian	mkd	WEAK	12	19	2	90	0	1	/static/images/mkd/19.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2019.html	84.6	84.7	98
20	Magma Guardian	mkd	STANDARD	14	20	3	90	0	1	/static/images/mkd/20.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2020.html	94.8	71.5	84.5
21	Magma Guardian	mkd	TOUGH	17	21	4	90	0	1	/static/images/mkd/21.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2021.html	97.3	38.6	57.6
22	Satyr	mkd	WEAK	15	22	2	90	0	1	/static/images/mkd/22.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2022.html	7.5	68.5	65.3
23	Satyr	mkd	STANDARD	18	23	3	90	0	1	/static/images/mkd/23.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2023.html	20.5	38	37.9
24	Satyr	mkd	TOUGH	21	24	4	90	0	1	/static/images/mkd/24.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2024.html	41.4	99.2	94.3
25	Potbellied Gremlin	mkd	WEAK	14	25	2	90	0	1	/static/images/mkd/25.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2025.html	10.2	47.6	48.5
26	Potbellied Gremlin	mkd	STANDARD	19	26	3	90	0	1	/static/images/mkd/26.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2026.html	22	7	2.1
27	Potbellied Gremlin	mkd	TOUGH	25	27	4	90	0	1	/static/images/mkd/27.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2027.html	17.4	20.4	14.7
720	Steam Golem	alpha	TOUGH	69	96	4	90	10	1	/static/images/alpha/96.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2096.html	62.3	39.8	12.1
722	Noble Archer	alpha	STANDARD	17	98	4	90	12	2	/static/images/alpha/98.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2098.html	11.1	18.8	23
721	Noble Archer	alpha	WEAK	13	97	3	90	12	2	/static/images/alpha/97.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2097.html	4.5	65.6	65.3
328	Soaring Gunner On Dragonfly Mount	lancers	WEAK	40	88	3	180	10	1	/static/images/lancers/88.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2088.html	82.7	93.1	83.1
329	Soaring Gunner On Dragonfly Mount	lancers	STANDARD	44	89	4	180	10	1	/static/images/lancers/89.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2089.html	88.1	82.4	55.4
460	Acid Ooze	pyramid	Weak	18	46	3	90	4	1	/static/images/pyramid/46.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2046.html	75.9	4.7	40.9
471	Sun Leopard	pyramid	Standard	43	59	4	90	4	1	/static/images/pyramid/59.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2059.html	67.1	48	34.5
494	En-Zar	pyramid	Unique	79	82	6	180	8	1	/static/images/pyramid/82.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2082.html	10.9	50.4	37.4
390	Lightning Tallman	lancers	PROMO	25	150	0	90	6	3	/static/images/lancers/150.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/150.html	21.5	48.9	22.9
502	Rurik The Blessed	pyramid	Unique	91	90	6	90	8	1	/static/images/pyramid/90.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2090.html	23.3	41.6	7.1
503	Morvana Stormbringer	pyramid	Unique	66	91	6	90	10	1	/static/images/pyramid/91.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2091.html	27.8	31.5	17.4
504	Lyra Fairhame	pyramid	Unique	71	92	6	90	0	1	/static/images/pyramid/92.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2092.html	54.6	64.7	30.2
399	Scarabet	lancers	PROMO	53	159	0	180	10	1	/static/images/lancers/159.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/159.html	35.5	76.2	66.3
400	Abydor	lancers	PROMO	49	160	0	180	10	1	/static/images/lancers/160.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/160.html	90.5	73.7	26.8
401	Karnardria	lancers	PROMO	57	161	0	180	10	1	/static/images/lancers/161.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/161.html	14.9	46.1	41.6
402	Hierajet	lancers	PROMO	41	162	0	180	10	1	/static/images/lancers/162.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/162.html	76.8	95.2	65
415	Gnoll Robber	pyramid	Weak	9	1	1	90	0	1	/static/images/pyramid/1.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%20%201.html	16.4	13.3	2
416	Gnoll Robber	pyramid	Standard	10	2	2	90	0	1	/static/images/pyramid/2.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%20%202.html	56	93.5	85.8
417	Gnoll Robber	pyramid	Tough	11	3	3	90	0	1	/static/images/pyramid/3.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%20%203.html	51.7	91.6	84.1
418	Gnoll Poacher	pyramid	Weak	10	4	1	90	10	1	/static/images/pyramid/4.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%20%204.html	25	96.4	87.9
419	Gnoll Poacher	pyramid	Standard	12	5	2	90	10	1	/static/images/pyramid/5.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%20%205.html	18	85.8	70.8
438	Ram Warrior	pyramid	Tough	19	24	3	90	0	1	/static/images/pyramid/24.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2024.html	29.9	13.6	15.4
457	Tridrax	pyramid	Weak	24	43	3	180	0	1	/static/images/pyramid/43.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2043.html	76.2	44.2	62.9
487	Seeker Elydia	pyramid	Unique	77	75	6	180	8	1	/static/images/pyramid/75.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2075.html	25.1	40	50.5
488	Seeker Mock	pyramid	Unique	83	76	6	90	0	1	/static/images/pyramid/76.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2076.html	24	71.1	53.4
857	Nightwitch	ww	TOUGH	43	57	4	90	10	1	/static/images/ww/57.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2057.html	22.2	70.7	22.6
44	Hydra Serpent	mkd	STANDARD	34	44	4	180	0	1	/static/images/mkd/44.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2044.html	61.8	45.7	53.3
45	Hydra Serpent	mkd	TOUGH	40	45	5	180	0	1	/static/images/mkd/45.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2045.html	78.3	79.6	84.2
46	Animated Mud	mkd	WEAK	20	46	3	90	0	1	/static/images/mkd/46.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2046.html	97.7	79.3	95.6
47	Animated Mud	mkd	STANDARD	25	47	4	90	0	1	/static/images/mkd/47.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2047.html	98.4	30.1	46.4
241	Whirling Golem	lancers	WEAK	19	1	1	180	0	1	/static/images/lancers/1.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%20%201.html	45	15.3	22.2
48	Animated Mud	mkd	TOUGH	27	48	5	90	0	1	/static/images/mkd/48.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2048.html	98.8	25.5	31.8
49	Manticore	mkd	WEAK	30	49	3	180	8	1	/static/images/mkd/49.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2049.html	57.9	94.4	78.2
50	Manticore	mkd	STANDARD	35	50	4	180	8	1	/static/images/mkd/50.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2050.html	68.3	64	30.7
51	Manticore	mkd	TOUGH	40	51	5	180	8	1	/static/images/mkd/51.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2051.html	82	88.5	67.4
989	Whelp Monk	up	Tough	30	15	3	90	0	1	/static/images/up/15.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2015.html	48.2	100	85.3
990	Quarterstaff Warrior	up	Weak	24	16	1	270	0	1	/static/images/up/16.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2016.html	79.4	82.7	73.6
991	Quarterstaff Warrior	up	Standard	26	17	2	270	0	1	/static/images/up/17.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2017.html	74.6	65.3	59.6
992	Quarterstaff Warrior	up	Tough	30	18	3	270	0	1	/static/images/up/18.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2018.html	92	100	94.3
993	Impaler	up	Weak	30	19	1	90	0	1	/static/images/up/19.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2019.html	82.1	78	89.7
994	Impaler	up	Standard	33	20	2	90	0	1	/static/images/up/20.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2020.html	74	48.7	64.3
995	Impaler	up	Tough	38	21	3	90	0	1	/static/images/up/21.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2021.html	79.3	13.8	18.1
996	Succubus	up	Weak	33	22	1	90	6	1	/static/images/up/22.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2022.html	96.9	92.2	97.4
997	Succubus	up	Standard	36	23	2	90	6	1	/static/images/up/23.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2023.html	95.1	68.4	79.7
998	Succubus	up	Tough	41	24	3	90	6	1	/static/images/up/24.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2024.html	88.6	96.9	96.3
999	Goblin Runner	up	Weak	15	25	1	90	0	1	/static/images/up/25.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2025.html	24.6	60.2	68.7
1000	Goblin Runner	up	Standard	17	26	2	90	0	1	/static/images/up/26.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2026.html	43.4	38.6	50.2
1001	Goblin Runner	up	Tough	18	27	3	90	0	1	/static/images/up/27.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2027.html	43.5	34	44.4
1002	Orc Tracker	up	Weak	22	28	1	90	6	1	/static/images/up/28.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2028.html	80.7	82.4	73.8
1003	Orc Tracker	up	Standard	28	29	2	90	6	1	/static/images/up/29.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2029.html	81.5	35.7	27.9
1004	Orc Tracker	up	Tough	31	30	3	90	6	1	/static/images/up/30.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2030.html	85.2	96.9	88.1
1005	Orc Sentry	up	Weak	25	31	1	90	0	1	/static/images/up/31.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2031.html	59.8	52.6	65.5
1006	Orc Sentry	up	Standard	31	32	2	90	0	1	/static/images/up/32.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2032.html	69.1	74.1	80.9
1007	Orc Sentry	up	Tough	38	33	3	90	0	1	/static/images/up/33.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2033.html	78.2	31	38.2
1008	Shyft Piper	up	Weak	27	34	1	90	6	1	/static/images/up/34.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2034.html	25.7	41	34
1009	Shyft Piper	up	Standard	34	35	2	90	6	1	/static/images/up/35.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2035.html	37.6	60.9	61.6
1010	Shyft Piper	up	Tough	38	36	3	90	6	1	/static/images/up/36.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2036.html	33.5	20.7	25.1
1011	Prieskan Barbarian	up	Weak	31	37	2	270	0	1	/static/images/up/37.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2037.html	60.9	88.1	86.6
1012	Prieskan Barbarian	up	Standard	35	38	3	270	0	1	/static/images/up/38.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2038.html	83.5	66.1	66.6
1013	Prieskan Barbarian	up	Tough	39	39	4	270	0	1	/static/images/up/39.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2039.html	71.2	37.9	35
1014	Amazon Priestess	up	Weak	30	40	2	90	0	1	/static/images/up/40.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2040.html	52.8	99	94.6
1015	Amazon Priestess	up	Standard	33	41	3	90	0	1	/static/images/up/41.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2041.html	68.4	73.4	65.7
1016	Amazon Priestess	up	Tough	39	42	4	90	0	1	/static/images/up/42.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2042.html	53.5	34.8	15.4
489	Dagon	pyramid	Unique	69	77	6	180	0	1	/static/images/pyramid/77.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2077.html	64.6	48.4	21
490	Fathom	pyramid	Unique	70	78	6	90	10	1	/static/images/pyramid/78.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2078.html	32.7	25.7	10
491	Pearl	pyramid	Unique	82	79	6	90	8	1	/static/images/pyramid/79.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2079.html	31.7	83.7	31.6
492	Coral	pyramid	Unique	75	80	6	90	4	1	/static/images/pyramid/80.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2080.html	49.4	100	95.5
459	Tridrax	pyramid	Tough	35	45	5	180	0	1	/static/images/pyramid/45.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2045.html	81.8	34.6	46.4
1017	Elven Falconer	up	Weak	37	43	2	90	10	2	/static/images/up/43.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2043.html	5.9	10	0
571	Troll Zombie	siniste	WEAK	27	67	3	90	0	1	/static/images/siniste/67.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2067.html	51.9	5.6	11.1
1018	Elven Falconer	up	Standard	42	44	3	90	10	2	/static/images/up/44.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2044.html	16.6	26.1	21.2
1019	Elven Falconer	up	Tough	48	45	4	90	10	2	/static/images/up/45.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2045.html	11.2	12.6	2.2
1020	Gyre Falcon	up	Weak	30	46	2	180	0	1	/static/images/up/46.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2046.html	77.5	100	95.9
1021	Gyre Falcon	up	Standard	34	47	3	180	0	1	/static/images/up/47.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2047.html	86.1	81.6	68.6
1022	Gyre Falcon	up	Tough	39	48	4	180	0	1	/static/images/up/48.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2048.html	84.7	43.1	33.7
1023	Vampiric Thrall	up	Weak	33	49	2	90	0	1	/static/images/up/49.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2049.html	87.1	64.4	86.7
1024	Vampiric Thrall	up	Standard	38	50	3	90	0	1	/static/images/up/50.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2050.html	93.8	40	51.3
1025	Vampiric Thrall	up	Tough	43	51	4	90	0	1	/static/images/up/51.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2051.html	96.4	76.6	91.3
1026	Half-Troll Gorger	up	Weak	44	52	2	90	0	1	/static/images/up/52.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2052.html	90.1	30	60.8
1027	Half-Troll Gorger	up	Standard	53	53	3	90	0	1	/static/images/up/53.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2053.html	85.8	63.5	72.4
1028	Half-Troll Gorger	up	Tough	65	54	4	90	0	1	/static/images/up/54.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2054.html	79.6	20.9	34.4
1029	Half-Orc Hatcheteer	up	Weak	35	55	2	180	6	2	/static/images/up/55.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2055.html	47.6	59.4	45.1
1030	Half-Orc Hatcheteer	up	Standard	43	56	3	180	6	2	/static/images/up/56.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2056.html	54	74.9	59.5
1031	Half-Orc Hatcheteer	up	Tough	51	57	4	180	6	2	/static/images/up/57.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2057.html	62.6	97.1	85.9
1032	Solonavi Siren	up	Weak	29	58	2	90	8	1	/static/images/up/58.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2058.html	58.9	32.4	27.6
1033	Solonavi Siren	up	Standard	33	59	3	90	8	1	/static/images/up/59.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2059.html	52.2	80.7	79.8
1034	Solonavi Siren	up	Tough	40	60	4	90	8	1	/static/images/up/60.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2060.html	57.1	88.1	86.1
1035	Shield Golem	up	Weak	60	61	3	90	0	1	/static/images/up/61.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2061.html	1.5	15.3	31.5
1036	Shield Golem	up	Standard	63	62	4	90	0	1	/static/images/up/62.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2062.html	2.8	17.3	45
1037	Shield Golem	up	Tough	74	63	5	90	0	1	/static/images/up/63.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2063.html	3.1	0	0
1038	Magestone Knight	up	Weak	46	64	3	180	10	1	/static/images/up/64.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2064.html	13.5	19.5	10
1041	Amotep Maiden	up	Weak	41	67	3	90	10	2	/static/images/up/67.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2067.html	20.2	22.9	54.6
1042	Amotep Maiden	up	Standard	53	68	4	90	10	2	/static/images/up/68.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2068.html	19	49.3	66.5
1043	Amotep Maiden	up	Tough	62	69	5	90	10	2	/static/images/up/69.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2069.html	15.5	22.6	37.9
1044	Tribow	up	Weak	50	70	3	90	12	3	/static/images/up/70.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2070.html	17	64.6	76.3
1045	Tribow	up	Standard	57	71	4	90	12	3	/static/images/up/71.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2071.html	18.5	30.4	44.6
1046	Tribow	up	Tough	65	72	5	90	12	3	/static/images/up/72.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2072.html	20.4	21.4	36.6
1047	Fuser Orc	up	Weak	46	73	3	90	8	1	/static/images/up/73.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2073.html	9	21.4	0
1048	Fuser Orc	up	Standard	55	74	4	90	10	1	/static/images/up/74.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2074.html	12.6	58.6	47.8
513	Warrior Sprite	siniste	TOUGH	27	9	3	90	6	1	/static/images/siniste/9.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%20%209.html	50.3	40.1	28.5
514	Woodland Sniper	siniste	WEAK	13	10	1	90	10	1	/static/images/siniste/10.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2010.html	22.7	77	67.3
515	Woodland Sniper	siniste	STANDARD	20	11	2	90	12	1	/static/images/siniste/11.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2011.html	36.4	91.3	82.6
516	Woodland Sniper	siniste	TOUGH	24	12	3	90	12	1	/static/images/siniste/12.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2012.html	50.5	69.2	50.6
517	Gibbering Ghoul	siniste	WEAK	16	13	1	90	0	1	/static/images/siniste/13.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2013.html	27.6	50.8	30.9
518	Gibbering Ghoul	siniste	STANDARD	20	14	2	90	0	1	/static/images/siniste/14.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2014.html	27.2	97.7	78.9
519	Gibbering Ghoul	siniste	TOUGH	24	15	3	90	0	1	/static/images/siniste/15.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2015.html	62.4	79.3	57.1
520	Throttle Worms	siniste	WEAK	22	16	1	270	0	1	/static/images/siniste/16.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2016.html	0.4	4.5	3.6
521	Throttle Worms	siniste	STANDARD	27	17	2	270	0	1	/static/images/siniste/17.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2017.html	1.7	6.2	6.2
522	Throttle Worms	siniste	TOUGH	35	18	3	270	0	1	/static/images/siniste/18.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2018.html	2.6	7.6	6.7
523	Dwarven Pikeman	siniste	WEAK	18	19	1	90	0	1	/static/images/siniste/19.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2019.html	51.2	24.4	9.9
524	Dwarven Pikeman	siniste	STANDARD	22	20	2	90	0	1	/static/images/siniste/20.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2020.html	77.9	84.4	63.9
1049	Fuser Orc	up	Tough	63	75	5	90	12	1	/static/images/up/75.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2075.html	24.6	37	31.7
1050	Steppe Ranger	up	Weak	29	76	3	270	0	1	/static/images/up/76.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2076.html	49.7	17.9	19.2
1051	Steppe Ranger	up	Standard	33	77	4	270	0	1	/static/images/up/77.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2077.html	36.2	43.3	56.8
1052	Steppe Ranger	up	Tough	37	78	5	270	0	1	/static/images/up/78.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2078.html	61.3	38.9	33.2
1053	Galeshi Knife Dancer	up	Weak	29	79	3	90	0	1	/static/images/up/79.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2079.html	18.3	16.4	15.3
1054	Galeshi Knife Dancer	up	Standard	34	80	4	90	0	1	/static/images/up/80.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2080.html	24.3	45.7	40
1039	Magestone Knight	up	Standard	52	65	4	180	10	1	/static/images/up/65.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2065.html	28.6	63	74
53	Deadwood Golem	mkd	STANDARD	32	53	4	90	0	1	/static/images/mkd/53.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2053.html	97.9	78.8	80.3
54	Deadwood Golem	mkd	TOUGH	36	54	5	90	0	1	/static/images/mkd/54.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2054.html	97.2	50.3	53.7
55	Wereboar	mkd	WEAK	40	55	3	90	0	1	/static/images/mkd/55.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2055.html	80.4	5.4	63.1
56	Wereboar	mkd	STANDARD	44	56	4	90	0	1	/static/images/mkd/56.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2056.html	84.8	4.2	23.4
57	Wereboar	mkd	TOUGH	52	57	5	90	0	1	/static/images/mkd/57.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2057.html	82.3	5.9	68.3
1040	Magestone Knight	up	Tough	56	66	5	180	10	1	/static/images/up/66.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2066.html	26.9	45.5	64.3
234	Duke Skala	minions	PROMO	32	114	0	90	8	3	/static/images/minions/114.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/114.html	5.8	28.4	28.9
89	Jarl Frostriven	mkd	UNIQUE	87	89	6	90	6	1	/static/images/mkd/89.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2089.html	74.2	67.6	47.1
90	Tinker Geely	mkd	UNIQUE	65	90	6	90	10	1	/static/images/mkd/90.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2090.html	23.7	21.1	2.9
91	Tor Thundercloud	mkd	UNIQUE	68	91	6	90	6	1	/static/images/mkd/91.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2091.html	81.9	40.2	19.4
92	Kimble Garn	mkd	UNIQUE	68	92	6	90	8	1	/static/images/mkd/92.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2092.html	19	21.5	1
93	Maboc The Bully	mkd	UNIQUE	59	93	6	90	0	1	/static/images/mkd/93.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2093.html	95	68.3	49.4
94	Chaotic Grimm	mkd	UNIQUE	62	94	6	90	6	1	/static/images/mkd/94.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2094.html	95.6	76.6	62.5
95	Barber Hurgg	mkd	UNIQUE	52	95	6	90	8	1	/static/images/mkd/95.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2095.html	58.8	89.2	57.5
96	Sneaky Grook	mkd	UNIQUE	68	96	6	90	8	1	/static/images/mkd/96.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2096.html	24.8	30.2	0
97	Kamune The Mighty	mkd	UNIQUE	93	97	6	90	0	1	/static/images/mkd/97.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2097.html	56.4	43	21.2
98	Norfur Thott	mkd	UNIQUE	73	98	6	90	10	1	/static/images/mkd/98.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2098.html	50	23.5	0
99	Morg Bloodspiller	mkd	UNIQUE	89	99	6	90	8	1	/static/images/mkd/99.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2099.html	36	31.7	4.9
108	Mirajon	mkd	PROMO	17	108	0	90	8	1	/static/images/mkd/108.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/108.html	1.2	54.2	90
109	Trick	mkd	PROMO	28	109	0	90	0	1	/static/images/mkd/109.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/109.html	53.6	10.2	24.9
110	Sneenox	mkd	PROMO	32	110	0	90	4	1	/static/images/mkd/110.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/110.html	91.3	88.6	81.4
111	Ankhet	mkd	PROMO	32	111	0	90	0	1	/static/images/mkd/111.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/111.html	72.5	15.6	67.2
112	Brimbidus Grimm	mkd	PROMO	56	112	0	90	0	1	/static/images/mkd/112.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/112.html	51	77.5	50
113	Morgarius Stamp	mkd	PROMO	54	113	0	90	8	1	/static/images/mkd/113.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/113.html	50.4	79.8	57.5
114	Silver	mkd	PROMO	32	114	0	180	0	1	/static/images/mkd/114.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/114.html	71.7	72.8	60.3
313	Bone Grinder	lancers	WEAK	17	73	2	90	0	1	/static/images/lancers/73.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2073.html	15.6	23.4	5.8
1055	Galeshi Knife Dancer	up	Tough	41	81	5	90	0	1	/static/images/up/81.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2081.html	35.2	65.8	62
1056	Orc Blaster	up	Weak	38	82	3	180	6	4	/static/images/up/82.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2082.html	13.1	15.4	0
572	Troll Zombie	siniste	STANDARD	29	68	4	90	0	1	/static/images/siniste/68.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2068.html	77.7	0	3.1
458	Tridrax	pyramid	Standard	28	44	4	180	0	1	/static/images/pyramid/44.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2044.html	78.9	13.7	27.3
473	Guardian Sphinx	pyramid	Unique	79	61	6	90	10	1	/static/images/pyramid/61.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2061.html	45.8	97.4	100
584	Golem Mechanic	siniste	STANDARD	30	80	4	90	0	1	/static/images/siniste/80.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2080.html	11.9	78	40.1
585	Golem Mechanic	siniste	TOUGH	32	81	5	90	0	1	/static/images/siniste/81.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2081.html	16.2	59.3	13.9
621	Rigger Turga	siniste	PROMO	33	117	0	90	0	1	/static/images/siniste/117.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/117.html	7.3	46.7	10.4
622	Anunub'S Shield	siniste	PROMO	84	118	0	90	12	1	/static/images/siniste/118.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/118.html	29	19.4	28.3
623	Zopheratu	siniste	PROMO	34	119	0	90	0	1	/static/images/siniste/119.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/119.html	39.6	46.7	48.9
624	Bek	siniste	PROMO	45	120	0	90	6	2	/static/images/siniste/120.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/120.html	45.9	37.7	0
625	Utem Crossbowman	alpha	Weak	10	1	1	90	8	1	/static/images/alpha/1.JPG	http://www.knight-ware.com/cmg/mageknight/rebelli/%20%201.html	11.7	96.4	82.1
627	Utem Crossbowman	alpha	Tough	12	3	3	90	10	1	/static/images/alpha/3.JPG	http://www.knight-ware.com/cmg/mageknight/rebelli/%20%203.html	30.4	85.8	65.8
632	Brass Golem	alpha	Standard	21	8	2	90	0	1	/static/images/alpha/8.JPG	http://www.knight-ware.com/cmg/mageknight/rebelli/%20%208.html	69.9	66.1	88.8
638	Woodland Scout	alpha	Standard	12	14	2	90	6	1	/static/images/alpha/14.JPG	http://www.knight-ware.com/cmg/mageknight/rebelli/%2014.html	2.4	76.8	59.2
628	Utem Guardsman	alpha	Weak	11	4	1	90	0	1	/static/images/alpha/4.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%20%204.html	30	91.6	72.3
629	Utem Guardsman	alpha	Standard	13	5	2	90	0	1	/static/images/alpha/5.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%20%205.html	45.7	82.7	55.7
630	Utem Guardsman	alpha	Tough	14	6	3	90	0	1	/static/images/alpha/6.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%20%206.html	58.5	78.6	49
631	Brass Golem	alpha	Weak	18	7	1	90	0	1	/static/images/alpha/7.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%20%207.html	65.3	7.3	27.3
633	Brass Golem	alpha	Tough	23	9	3	90	0	1	/static/images/alpha/9.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%20%209.html	73	58.9	76.1
634	Demi-Magus	alpha	Weak	22	10	1	90	10	1	/static/images/alpha/10.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2010.html	8.6	66.8	20.8
635	Demi-Magus	alpha	Standard	25	11	2	90	10	1	/static/images/alpha/11.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2011.html	6	34.1	2.6
636	Demi-Magus	alpha	Tough	27	12	3	90	10	1	/static/images/alpha/12.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2012.html	9.9	24.8	5.3
637	Woodland Scout	alpha	Weak	7	13	1	90	6	1	/static/images/alpha/13.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2013.html	1.6	63.3	48.7
639	Woodland Scout	alpha	Tough	14	15	3	90	6	1	/static/images/alpha/15.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2015.html	8.7	62.4	38
640	Mending Priestess	alpha	Weak	21	16	1	90	6	1	/static/images/alpha/16.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2016.html	2.4	69.1	55.6
1057	Orc Blaster	up	Standard	48	83	4	180	6	4	/static/images/up/83.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2083.html	19.7	11.3	0
641	Mending Priestess	alpha	Standard	26	17	2	90	6	1	/static/images/alpha/17.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2017.html	4.3	31	7.3
642	Mending Priestess	alpha	Tough	29	18	3	90	6	1	/static/images/alpha/18.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2018.html	3.9	11.9	0
1058	Orc Blaster	up	Tough	57	84	5	180	6	4	/static/images/up/84.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2084.html	25.4	52.4	40
1059	General Russo	up	Unique	75	85	6	180	0	1	/static/images/up/85.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2085.html	75.3	96.9	78.1
1060	Magus Anendu	up	Unique	87	86	6	90	12	1	/static/images/up/86.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2086.html	30.1	24.3	25.9
1061	Red Duchess Of Khamsin	up	Unique	86	87	6	90	12	1	/static/images/up/87.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2087.html	45.1	23.1	10.2
1062	Queen Corella	up	Unique	74	88	6	180	0	1	/static/images/up/88.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2088.html	85.1	51.4	31.5
1063	Warrior Huhn	up	Unique	87	89	6	90	12	1	/static/images/up/89.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2089.html	53.3	59	26.1
1064	Council Lord Jamus	up	Unique	87	90	6	90	0	1	/static/images/up/90.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2090.html	56.5	66	56.3
1065	Rivvenguard Jaysa	up	Unique	76	91	6	180	0	1	/static/images/up/91.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2091.html	76.5	87.7	80.6
1066	Darq The Corrupt	up	Unique	105	92	6	90	0	1	/static/images/up/92.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2092.html	66.6	100	91.9
1067	Kzar Nabar	up	Unique	104	93	6	90	0	1	/static/images/up/93.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2093.html	61.1	77.6	92.6
1068	Patchwork	up	Unique	76	94	6	90	8	1	/static/images/up/94.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2094.html	84.2	93.6	92.3
1070	Spiritcatcher	up	Unique	64	96	6	90	6	1	/static/images/up/96.jpeg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2096.html	46.6	36.8	26.5
1069	Seeress Kess	up	Unique	67	95	6	90	8	2	/static/images/up/95.jpg	http://www.knight-ware.com/cmg/mageknight/uprisin/%2095.html	44.3	35.6	22.2
769	Magus	alpha	UNIQUE	68	145	6	180	12	2	/static/images/alpha/145.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/145.html	25	42.2	22.3
770	Storm Golem	alpha	UNIQUE	115	146	6	180	14	3	/static/images/alpha/146.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/146.html	38.8	32.1	50.9
1071	Emerald Warder	alpha	UNIQUE	68	147	6	90	10	1	/static/images/alpha/147.jpeg	http://www.knight-ware.com/cmg/mageknight/unlimit/147.html	44.7	46.6	23.8
1072	Troll Knight	alpha	UNIQUE	101	148	6	90	0	1	/static/images/alpha/148.jpeg	http://www.knight-ware.com/cmg/mageknight/unlimit/148.html	55.1	85.1	59.6
1073	Zombie Baron	alpha	UNIQUE	82	149	6	90	10	1	/static/images/alpha/149.jpeg	http://www.knight-ware.com/cmg/mageknight/unlimit/149.html	60.6	82.7	82.4
1074	Order Of Uhlrik	alpha	UNIQUE	88	150	6	90	0	1	/static/images/alpha/150.jpeg	http://www.knight-ware.com/cmg/mageknight/unlimit/150.html	46	77	74.9
1075	Dwarven Hammerskald	alpha	UNIQUE	97	151	6	180	0	1	/static/images/alpha/151.jpeg	http://www.knight-ware.com/cmg/mageknight/unlimit/151.html	66.3	49.9	44.2
58	Weresabertooth	mkd	WEAK	44	58	3	90	0	1	/static/images/mkd/58.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2058.html	81.3	5.2	42.2
59	Weresabertooth	mkd	STANDARD	50	59	4	90	0	1	/static/images/mkd/59.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2059.html	87.3	37.7	84.2
60	Weresabertooth	mkd	TOUGH	60	60	5	90	0	1	/static/images/mkd/60.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2060.html	85.6	3.5	48.1
61	Wind Minion	mkd	UNIQUE	85	61	6	90	10	1	/static/images/mkd/61.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2061.html	47.7	88	88
62	Flame Minion	mkd	UNIQUE	85	62	6	90	10	1	/static/images/mkd/62.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2062.html	40.6	78.1	89.1
63	Water Minion	mkd	UNIQUE	85	63	6	90	8	1	/static/images/mkd/63.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2063.html	63.2	92.6	95.6
1076	Amazon Huntress	alpha	UNIQUE	73	152	6	90	12	1	/static/images/alpha/152.jpeg	http://www.knight-ware.com/cmg/mageknight/unlimit/152.html	65.5	33.5	29.7
1077	Temple Lord	alpha	UNIQUE	68	153	6	90	0	1	/static/images/alpha/153.jpeg	http://www.knight-ware.com/cmg/mageknight/unlimit/153.html	67.9	71.5	49.8
1078	Summoner	alpha	UNIQUE	76	154	6	90	12	1	/static/images/alpha/154.jpeg	http://www.knight-ware.com/cmg/mageknight/unlimit/154.html	64.5	100	100
1079	Pyre Spirit	alpha	UNIQUE	87	155	6	180	0	1	/static/images/alpha/155.jpeg	http://www.knight-ware.com/cmg/mageknight/unlimit/155.html	32.1	81.1	82
1080	Whelp Master	alpha	UNIQUE	40	156	6	90	6	1	/static/images/alpha/156.jpeg	http://www.knight-ware.com/cmg/mageknight/unlimit/156.html	84.9	97.6	92.6
1081	Bladesmith Draconum	alpha	UNIQUE	58	157	6	90	6	1	/static/images/alpha/157.jpeg	http://www.knight-ware.com/cmg/mageknight/unlimit/157.html	52.1	87.5	90.5
1082	Eldritch Draconum	alpha	UNIQUE	93	158	6	180	10	1	/static/images/alpha/158.jpeg	http://www.knight-ware.com/cmg/mageknight/unlimit/158.html	36.9	39.4	47.6
1084	Regal Draconum	alpha	UNIQUE	174	160	6	180	14	4	/static/images/alpha/160.jpeg	http://www.knight-ware.com/cmg/mageknight/unlimit/160.html	10	55	56
825	Standard Bearer	ww	WEAK	11	25	1	90	0	1	/static/images/ww/25.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2025.html	25.9	98	91.9
643	Crystal Bladesman	alpha	Weak	15	19	1	90	0	1	/static/images/alpha/19.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2019.html	42.4	63.2	56.7
644	Crystal Bladesman	alpha	Standard	16	20	2	90	0	1	/static/images/alpha/20.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2020.html	68.1	59.1	43.4
645	Crystal Bladesman	alpha	Tough	17	21	3	90	0	1	/static/images/alpha/21.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2021.html	80.3	47.6	40.5
646	Ranger	alpha	Weak	15	22	1	90	8	1	/static/images/alpha/22.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2022.html	34.8	55.6	54.3
833	Berserker	ww	TOUGH	36	33	3	90	0	1	/static/images/ww/33.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2033.html	79.5	11.4	35
861	Immortal Fanatic	ww	WEAK	23	61	2	180	0	1	/static/images/ww/61.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2061.html	45.2	73.2	83.6
862	Immortal Fanatic	ww	STANDARD	25	62	3	180	0	1	/static/images/ww/62.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2062.html	53.6	74.2	77.4
863	Immortal Fanatic	ww	TOUGH	27	63	4	180	0	1	/static/images/ww/63.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2063.html	65.8	68.1	75.9
864	Clurch Piper	ww	WEAK	15	64	2	90	0	1	/static/images/ww/64.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2064.html	30.6	52.2	39.1
868	Shelled One	ww	STANDARD	21	68	3	90	0	1	/static/images/ww/68.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/%2068.html	93.5	91.7	78.2
900	Galeshi Ram Charger On Steam Ram	ww	WEAK	42	100	3	180	6	1	/static/images/ww/100.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/100.html	50	90.2	84.4
902	Galeshi Ram Charger On Steam Ram	ww	TOUGH	48	102	5	180	6	1	/static/images/ww/102.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/102.html	50.8	68.3	47.9
903	Dwarven Mounted Fuser On Steam Horse	ww	WEAK	41	103	3	180	10	1	/static/images/ww/103.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/103.html	43.2	59.8	76.9
904	Dwarven Mounted Fuser On Steam Horse	ww	STANDARD	47	104	4	180	10	1	/static/images/ww/104.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/104.html	29.6	35.2	22.2
905	Dwarven Mounted Fuser On Steam Horse	ww	TOUGH	50	105	5	180	10	1	/static/images/ww/105.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/105.html	41.8	93.8	99.1
907	Dwarven Ram On Steam Ram	ww	STANDARD	45	107	4	180	10	1	/static/images/ww/107.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/107.html	34.2	83.8	54.1
908	Dwarven Ram On Steam Ram	ww	TOUGH	53	108	5	180	10	1	/static/images/ww/108.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/108.html	34.7	100	94.2
912	War Hatchetkrugg On War Yak	ww	WEAK	36	112	3	180	0	1	/static/images/ww/112.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/112.html	95.9	61.8	61.7
914	War Hatchetkrugg On War Yak	ww	TOUGH	40	114	5	180	0	1	/static/images/ww/114.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/114.html	98.9	100	88.6
915	Horned Impaler On Horned Drake	ww	WEAK	41	115	3	180	10	1	/static/images/ww/115.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/115.html	81	53.8	77.5
916	Horned Impaler On Horned Drake	ww	STANDARD	47	116	4	180	10	1	/static/images/ww/116.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/116.html	82.2	21.7	22
920	War Impaler On War Yak	ww	TOUGH	44	120	5	180	10	1	/static/images/ww/120.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/120.html	90.5	73.9	57.9
921	Serpent Sniper On Land Serpent	ww	WEAK	52	121	3	180	6	1	/static/images/ww/121.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/121.html	39	67.3	79.1
922	Serpent Sniper On Land Serpent	ww	STANDARD	63	122	4	180	6	1	/static/images/ww/122.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/122.html	37.7	24.1	39.7
923	Serpent Sniper On Land Serpent	ww	TOUGH	67	123	5	180	6	1	/static/images/ww/123.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/123.html	32.4	15.4	24.9
924	Swooping Sniper On Flying Horse	ww	WEAK	33	124	3	180	6	1	/static/images/ww/124.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/124.html	61.2	92.2	92.2
925	Swooping Sniper On Flying Horse	ww	STANDARD	41	125	4	180	6	1	/static/images/ww/125.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/125.html	66.7	100	93.2
281	Goblin Cannibal	lancers	STANDARD	11	41	2	90	0	1	/static/images/lancers/41.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2041.html	7.9	83.6	76.7
310	Tribal Brute	lancers	WEAK	26	70	2	90	0	1	/static/images/lancers/70.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2070.html	79.9	27.2	19.7
311	Tribal Brute	lancers	STANDARD	30	71	3	90	0	1	/static/images/lancers/71.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2071.html	76	75.2	67.9
312	Tribal Brute	lancers	TOUGH	31	72	4	90	0	1	/static/images/lancers/72.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2072.html	77.6	65.7	60.6
127	Elven Acolyte	minions	WEAK	18	7	1	90	8	1	/static/images/minions/7.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%20%207.html	20.2	19.4	17.4
128	Elven Acolyte	minions	STANDARD	23	8	2	90	8	1	/static/images/minions/8.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%20%208.html	44.2	76.7	66.6
647	Ranger	alpha	Standard	18	23	2	90	8	1	/static/images/alpha/23.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2023.html	60.3	22.4	21.4
673	Amotep Gunner	alpha	WEAK	19	49	2	90	8	1	/static/images/alpha/49.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2049.html	42.3	20.3	0
674	Amotep Gunner	alpha	STANDARD	22	50	3	90	10	1	/static/images/alpha/50.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2050.html	59.9	87.5	47.7
675	Amotep Gunner	alpha	TOUGH	24	51	4	90	12	1	/static/images/alpha/51.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2051.html	72.6	79.3	31.6
676	Amotep Incinerator	alpha	WEAK	20	52	2	90	8	1	/static/images/alpha/52.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2052.html	26.2	88.8	48.2
677	Amotep Incinerator	alpha	STANDARD	24	53	3	90	8	1	/static/images/alpha/53.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2053.html	43.9	55.1	11.7
678	Amotep Incinerator	alpha	TOUGH	27	54	4	90	8	1	/static/images/alpha/54.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2054.html	47.2	25.5	2.4
679	Blade Golem	alpha	WEAK	29	55	2	90	0	1	/static/images/alpha/55.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2055.html	99.6	36.5	45.6
680	Blade Golem	alpha	STANDARD	33	56	3	90	0	1	/static/images/alpha/56.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2056.html	99.9	85	85.9
115	Susservus	mkd	PROMO	41	115	0	180	0	1	/static/images/mkd/115.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/115.html	86.9	81.4	86
116	Yumus	mkd	PROMO	35	116	0	90	0	1	/static/images/mkd/116.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/116.html	91.8	24.6	33.8
117	Draxx	mkd	PROMO	50	117	0	180	8	2	/static/images/mkd/117.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/117.html	63.2	90.9	78.5
118	Deathroot	mkd	PROMO	37	118	0	90	0	1	/static/images/mkd/118.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/118.html	94.4	23.3	27.1
129	Elven Acolyte	minions	TOUGH	26	9	3	90	8	1	/static/images/minions/9.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%20%209.html	65.7	44.3	35
130	Crystal Protector	minions	WEAK	13	10	1	90	0	1	/static/images/minions/10.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2010.html	1.1	72.8	46.1
926	Swooping Sniper On Flying Horse	ww	TOUGH	43	126	5	180	6	1	/static/images/ww/126.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/126.html	68.9	98.8	92.4
927	Serpent Invader On Land Serpent	ww	WEAK	49	127	3	180	0	1	/static/images/ww/127.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/127.html	52.5	13.7	13.5
928	Serpent Invader On Land Serpent	ww	STANDARD	57	128	4	180	0	1	/static/images/ww/128.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/128.html	59	52.5	66.2
929	Serpent Invader On Land Serpent	ww	TOUGH	62	129	5	180	0	1	/static/images/ww/129.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/129.html	54.5	36.7	56.1
933	Emerald Glade Mystery On Unicorn	ww	UNIQUE	68	133	6	180	8	1	/static/images/ww/133.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/133.html	12.4	36.2	55.4
935	Golden Orb Myrmidon On Steam Horse	ww	UNIQUE	86	135	6	180	0	1	/static/images/ww/135.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/135.html	34.5	53.4	46.1
939	Krugg Seer	ww	UNIQUE	45	139	6	90	8	1	/static/images/ww/139.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/139.html	69.7	48.7	28.7
940	Shyft Fiend	ww	UNIQUE	73	140	6	90	10	2	/static/images/ww/140.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/140.html	64.1	50.8	53.1
943	Construct Of Koranub	ww	PROMO	50	143	0	90	12	1	/static/images/ww/143.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/143.html	88.5	97.3	98.6
945	Thornhusk	ww	PROMO	44	145	0	180	4	1	/static/images/ww/145.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/145.html	31.3	56.3	48.4
946	Arial Frostfall	ww	PROMO	37	146	0	90	12	1	/static/images/ww/146.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/146.html	11.5	46.7	14.4
119	Tusk	mkd	PROMO	57	119	0	90	0	1	/static/images/mkd/119.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/119.html	80.6	5.3	52.6
120	Atayet	mkd	PROMO	73	120	0	90	0	1	/static/images/mkd/120.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/120.html	69.8	3.3	3.8
121	Xandressan Sailor	minions	WEAK	16	1	1	90	0	1	/static/images/minions/1.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%20%201.html	18.8	45.6	31.3
122	Xandressan Sailor	minions	STANDARD	18	2	2	90	0	1	/static/images/minions/2.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%20%202.html	43.5	19.4	9.7
123	Xandressan Sailor	minions	TOUGH	22	3	3	90	0	1	/static/images/minions/3.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%20%203.html	47.3	85.4	72.7
124	Submersible Golem	minions	WEAK	26	4	1	90	8	1	/static/images/minions/4.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%20%204.html	39.7	18.5	28.8
125	Submersible Golem	minions	STANDARD	31	5	2	90	8	1	/static/images/minions/5.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%20%205.html	56.8	52.7	62.2
126	Submersible Golem	minions	TOUGH	34	6	3	90	8	1	/static/images/minions/6.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%20%206.html	76.1	24.7	36.9
747	Imp	alpha	TOUGH	8	123	5	90	0	1	/static/images/alpha/123.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/123.html	8.5	56.3	18.3
779	Wraith	alpha	UNIQUE	61	155	6	90	8	1	/static/images/alpha/155.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/155.html	86.3	83.4	85.3
383	Shazardek	lancers	PROMO	25	143	0	180	0	1	/static/images/lancers/143.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/143.html	78.8	57.9	50.5
384	Jolum The Fish	lancers	PROMO	19	144	0	90	0	1	/static/images/lancers/144.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/144.html	42.9	14.6	1.3
166	Galeshi Emissary	minions	WEAK	22	46	2	90	0	1	/static/images/minions/46.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2046.html	77.4	88.3	82
167	Galeshi Emissary	minions	STANDARD	25	47	3	90	0	1	/static/images/minions/47.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2047.html	62	60.9	52.8
168	Galeshi Emissary	minions	TOUGH	28	48	4	90	0	1	/static/images/minions/48.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2048.html	81.5	41.7	25.7
182	Xandressan Captain	minions	STANDARD	28	62	4	90	8	1	/static/images/minions/62.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2062.html	78.7	33.7	23.1
183	Xandressan Captain	minions	TOUGH	31	63	5	90	8	1	/static/images/minions/63.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2063.html	83	98.2	83.2
184	Medicine Troll	minions	WEAK	36	64	3	180	0	1	/static/images/minions/64.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2064.html	35	15.1	1.7
185	Medicine Troll	minions	STANDARD	41	65	4	180	0	1	/static/images/minions/65.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2065.html	44	42.8	19.6
186	Shadow	minions	WEAK	32	55	2	90	0	1	/static/images/minions/55.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2066.html	70.2	54.7	100
947	Rottooth (Zombie)	ww	PROMO	27	147	0	90	0	1	/static/images/ww/147.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/147.html	68.5	23.8	75.1
949	Ashek Sandslayer	ww	PROMO	45	149	0	180	6	1	/static/images/ww/149.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/149.html	33.8	53.7	31.4
950	Helkate Hookjaw	ww	PROMO	31	150	0	90	0	1	/static/images/ww/150.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/150.html	79.1	100	81.2
951	Ashell The Driven	ww	PROMO	24	151	0	90	0	1	/static/images/ww/151.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/151.html	64.4	77.7	61.8
953	Krech Dartcatcher	ww	PROMO	51	153	0	90	0	1	/static/images/ww/153.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/153.html	48.8	67.5	81.3
954	Snurga Longstrike	ww	PROMO	31	154	0	90	12	1	/static/images/ww/154.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/154.html	42.2	85.1	47.1
956	Muloch	ww	PROMO	39	156	0	90	8	1	/static/images/ww/156.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/156.html	73.1	14.1	4.3
957	Methefesokoi	ww	PROMO	35	157	0	90	6	1	/static/images/ww/157.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/157.html	36.8	88.3	64.3
958	Hambulandroika	ww	PROMO	41	158	0	90	0	1	/static/images/ww/158.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/158.html	63.3	100	90.3
959	Haan Redwood	ww	PROMO	73	159	0	180	0	1	/static/images/ww/159.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/159.html	23.4	21.8	11.6
961	Aycorn Trueshot	ww	PROMO	64	161	0	180	12	1	/static/images/ww/161.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/161.html	26.6	35.8	32.1
131	Crystal Protector	minions	STANDARD	15	11	2	90	0	1	/static/images/minions/11.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2011.html	2.9	53.6	24.9
132	Crystal Protector	minions	TOUGH	17	12	3	90	0	1	/static/images/minions/12.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2012.html	6.7	25.2	11
133	Darkwing Zombie	minions	WEAK	17	13	1	90	0	1	/static/images/minions/13.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2013.html	37	21.8	42.8
134	Darkwing Zombie	minions	STANDARD	21	14	2	90	0	1	/static/images/minions/14.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2014.html	41.1	73.6	80.1
135	Darkwing Zombie	minions	TOUGH	24	15	3	90	0	1	/static/images/minions/15.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2015.html	71.3	46.2	57.7
136	Mindsifter	minions	WEAK	24	16	1	90	10	1	/static/images/minions/16.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2016.html	49.2	69.2	65.9
962	Roleric Stormborn	ww	PROMO	59	162	0	180	10	1	/static/images/ww/162.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/162.html	34.3	52.5	38.1
963	Kahlan	ww	PROMO	60	163	0	180	8	1	/static/images/ww/163.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/163.html	24.1	61.1	67.5
966	Sig Eightfingers	ww	PROMO	53	166	0	180	10	1	/static/images/ww/166.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/166.html	63.7	100	83.2
967	Booshac	ww	PROMO	52	167	0	180	0	1	/static/images/ww/167.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/167.html	87.6	88	80.8
970	Oombafoo	ww	PROMO	53	170	0	180	10	1	/static/images/ww/170.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/170.html	69.3	96	76.1
974	Pexapatia Mar	ww	PROMO	56	174	0	180	0	1	/static/images/ww/174.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/174.html	65.6	100	95.5
358	Heavy Cavalier On Heavy Warhorse	lancers	WEAK	35	118	3	180	0	1	/static/images/lancers/118.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/118.html	66.8	57.7	38.8
347	Nightmare Banshee On Nightmare	lancers	STANDARD	42	107	4	180	8	1	/static/images/lancers/107.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/107.html	17.7	25.6	21.6
353	Heavy Lancer On Heavy Warhorse	lancers	STANDARD	46	113	4	180	0	1	/static/images/lancers/113.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/113.html	48.8	34.4	11.7
360	Heavy Cavalier On Heavy Warhorse	lancers	TOUGH	47	120	5	180	0	1	/static/images/lancers/120.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/120.html	84.1	43.2	24.1
367	Cave Archer On Cave Runner	lancers	WEAK	25	127	3	180	8	1	/static/images/lancers/127.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/127.html	14.9	33.1	52
371	Ankhar Archer On Ankhar	lancers	STANDARD	33	131	4	180	8	1	/static/images/lancers/131.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/131.html	13.7	23	28.7
340	Nightmare Reaper On Nightmare	lancers	WEAK	40	100	3	180	0	1	/static/images/lancers/100.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/100.html	28	63.3	50.5
342	Nightmare Reaper On Nightmare	lancers	TOUGH	42	102	5	180	0	1	/static/images/lancers/102.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/102.html	37.3	57.3	48.2
343	Fell Banshee On Skeletal Fell Beast	lancers	WEAK	40	103	3	180	8	1	/static/images/lancers/103.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/103.html	45.4	89.5	71.6
344	Fell Banshee On Skeletal Fell Beast	lancers	STANDARD	42	104	4	180	8	1	/static/images/lancers/104.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/104.html	47.6	85.1	61.2
345	Fell Banshee On Skeletal Fell Beast	lancers	TOUGH	46	105	5	180	8	1	/static/images/lancers/105.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/105.html	55.3	74.4	47.7
346	Nightmare Banshee On Nightmare	lancers	WEAK	40	106	3	180	8	1	/static/images/lancers/106.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/106.html	15.7	31.5	34.3
348	Nightmare Banshee On Nightmare	lancers	TOUGH	45	108	5	180	8	1	/static/images/lancers/108.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/108.html	20.9	22.8	12.8
349	Light Lancer On Light Warhorse	lancers	WEAK	28	109	3	180	0	1	/static/images/lancers/109.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/109.html	49.6	21.7	15.6
350	Light Lancer On Light Warhorse	lancers	STANDARD	33	110	4	180	0	1	/static/images/lancers/110.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/110.html	43.4	51.7	47.4
351	Light Lancer On Light Warhorse	lancers	TOUGH	36	111	5	180	0	1	/static/images/lancers/111.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/111.html	58	34.1	21.7
352	Heavy Lancer On Heavy Warhorse	lancers	WEAK	35	112	3	180	0	1	/static/images/lancers/112.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/112.html	48.9	51.7	25.2
354	Heavy Lancer On Heavy Warhorse	lancers	TOUGH	51	114	5	180	0	1	/static/images/lancers/114.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/114.html	65.5	95.1	80
355	Light Cavalier On Light Warhorse	lancers	WEAK	28	115	3	180	0	1	/static/images/lancers/115.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/115.html	66.1	24.7	25
919	War Impaler On War Yak	ww	STANDARD	43	119	4	180	10	1	/static/images/ww/119.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/119.html	89	71.9	62.6
356	Light Cavalier On Light Warhorse	lancers	STANDARD	32	116	4	180	0	1	/static/images/lancers/116.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/116.html	60.5	65.3	74.9
357	Light Cavalier On Light Warhorse	lancers	TOUGH	37	117	5	180	0	1	/static/images/lancers/117.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/117.html	69	30.9	26
359	Heavy Cavalier On Heavy Warhorse	lancers	STANDARD	42	119	4	180	0	1	/static/images/lancers/119.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/119.html	76.4	71.3	53.4
362	Cave Butcher On Cave Runner	lancers	STANDARD	35	122	4	180	0	1	/static/images/lancers/122.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/122.html	29.4	34.6	25.2
363	Cave Butcher On Cave Runner	lancers	TOUGH	44	123	5	180	0	1	/static/images/lancers/123.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/123.html	18.6	32	1.3
364	Ankhar Butcher On Ankhar	lancers	WEAK	36	124	3	180	0	1	/static/images/lancers/124.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/124.html	59.6	18.1	17.3
365	Ankhar Butcher On Ankhar	lancers	STANDARD	37	125	4	180	0	1	/static/images/lancers/125.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/125.html	67.4	12.3	16.2
366	Ankhar Butcher On Ankhar	lancers	TOUGH	45	126	5	180	0	1	/static/images/lancers/126.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/126.html	72.1	24.8	21.7
369	Cave Archer On Cave Runner	lancers	TOUGH	31	129	5	180	8	1	/static/images/lancers/129.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/129.html	17.3	48.7	67.6
370	Ankhar Archer On Ankhar	lancers	WEAK	28	130	3	180	8	1	/static/images/lancers/130.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/130.html	14.6	11.8	16.3
372	Ankhar Archer On Ankhar	lancers	TOUGH	35	132	5	180	8	1	/static/images/lancers/132.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/132.html	25.6	15.2	13.6
375	King Of The Dead On Skeletal Fell Beast	lancers	UNIQUE	124	135	6	180	0	1	/static/images/lancers/135.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/135.html	27.3	45.6	51.4
376	Uhlrik Charger On Nightmare	lancers	UNIQUE	118	136	6	180	0	1	/static/images/lancers/136.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/136.html	16	22.9	13.4
361	Cave Butcher On Cave Runner	lancers	WEAK	33	121	3	180	0	1	\N	http://www.knight-ware.com/cmg/mageknight/lancers/121.html	21.6	32.3	33.2
379	High Elf General	lancers	UNIQUE	60	139	6	90	0	1	/static/images/lancers/139.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/139.html	91.7	86.3	86.3
725	Royal Pikeman	alpha	STANDARD	16	101	4	90	0	1	/static/images/alpha/101.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/101.html	68.1	50.8	43.1
187	Cursed Hag	minions	WEAK	32	67	3	90	10	1	/static/images/minions/67.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2067.html	23.2	54.3	49.8
188	Cursed Hag	minions	STANDARD	36	68	4	90	10	1	/static/images/minions/68.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2068.html	22.5	35.7	21.8
189	Cursed Hag	minions	TOUGH	43	69	5	90	10	1	/static/images/minions/69.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2069.html	37.5	59.7	46
192	Khamsin Peacekeeper	minions	TOUGH	30	72	5	90	8	1	/static/images/minions/72.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2072.html	78.1	95	89.9
193	War Bard	minions	WEAK	25	73	3	90	8	1	/static/images/minions/73.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2073.html	55.5	67.6	52.8
194	War Bard	minions	STANDARD	28	74	4	90	8	1	/static/images/minions/74.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2074.html	56	51.9	29.1
195	War Bard	minions	TOUGH	35	75	5	90	8	1	/static/images/minions/75.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2075.html	53.9	76	41.8
196	Ironclad	minions	WEAK	26	76	3	90	0	1	/static/images/minions/76.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2076.html	72.6	49.2	43.5
727	Liege Knight	alpha	WEAK	21	103	3	90	0	1	/static/images/alpha/103.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/103.html	58.4	95.2	80.8
729	Liege Knight	alpha	TOUGH	30	105	5	90	0	1	/static/images/alpha/105.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/105.html	82.6	99.4	76.1
730	Temple Blademaster	alpha	WEAK	27	106	3	90	0	1	/static/images/alpha/106.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/106.html	94.9	50.2	44.8
731	Temple Blademaster	alpha	STANDARD	30	107	4	90	0	1	/static/images/alpha/107.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/107.html	97	100	90.3
382	Arcane Draconum	lancers	UNIQUE	202	142	6	90	14	1	/static/images/lancers/142.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/142.html	2.7	32.7	35.7
377	Champion On Heavy Warhorse	lancers	UNIQUE	90	137	6	180	0	1	/static/images/lancers/137.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/137.html	26.4	23.1	30.4
378	Martyr On Light Warhorse	lancers	UNIQUE	74	138	6	180	8	1	/static/images/lancers/138.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/138.html	26.1	8	24.7
381	Lich	lancers	UNIQUE	93	141	6	180	12	1	/static/images/lancers/141.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/141.html	21.1	10.7	21.2
380	Taskmaster	lancers	UNIQUE	32	140	6	90	0	1	/static/images/lancers/140.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/140.html	46.3	73.1	48.7
386	Laurell	lancers	PROMO	34	146	0	90	10	1	/static/images/lancers/146.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/146.html	21.3	20.7	12.9
388	Rendark	lancers	PROMO	32	148	0	90	0	1	/static/images/lancers/148.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/148.html	81.2	90.3	79.6
391	Squire Thomas	lancers	PROMO	20	151	0	90	0	1	/static/images/lancers/151.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/151.html	20.3	93.3	87.2
393	Willow Nock	lancers	PROMO	23	153	0	90	14	1	/static/images/lancers/153.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/153.html	27.9	64.2	58.1
395	Boombock	lancers	PROMO	28	155	0	90	6	1	/static/images/lancers/155.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/155.html	2.5	11.2	5.6
396	Gishki	lancers	PROMO	14	156	0	90	0	1	/static/images/lancers/156.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/156.html	8.1	66.8	51.9
397	Mogga Crackshot	lancers	PROMO	19	157	0	90	8	2	/static/images/lancers/157.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/157.html	4.2	9.3	1
398	Podo	lancers	PROMO	3	158	0	90	0	1	/static/images/lancers/158.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/158.html	2	88.7	88.7
403	Doomathiak	lancers	PROMO	50	163	0	180	0	1	/static/images/lancers/163.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/163.html	83.8	100	94.4
406	Hag Hebrodia	lancers	PROMO	58	166	0	180	8	1	/static/images/lancers/166.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/166.html	16.5	52.5	42.3
137	Mindsifter	minions	STANDARD	29	17	2	90	10	1	/static/images/minions/17.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2017.html	65.9	20.5	21.2
530	Elven Recruit	siniste	STANDARD	10	26	2	90	0	1	/static/images/siniste/26.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2026.html	13.9	98.3	88.4
412	Harrowblade Broor	lancers	PROMO	48	172	0	180	0	1	/static/images/lancers/172.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/172.html	66	22	5.9
197	Ironclad	minions	STANDARD	31	77	4	90	0	1	/static/images/minions/77.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2077.html	74.7	85.9	77.7
198	Ironclad	minions	TOUGH	35	78	5	90	0	1	/static/images/minions/78.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2078.html	92.5	69.4	62.1
199	Spine Sucker	minions	WEAK	36	79	3	90	4	1	/static/images/minions/79.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2079.html	89.9	34.1	73.9
648	Ranger	alpha	Tough	20	24	3	90	8	1	/static/images/alpha/24.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2024.html	75.5	95.7	99.3
649	Zombie	alpha	Weak	11	25	1	90	0	1	/static/images/alpha/25.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2025.html	27.4	83.9	91.6
650	Zombie	alpha	Standard	12	26	2	90	0	1	/static/images/alpha/26.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2026.html	42.6	73.8	84.1
413	Snagu	lancers	PROMO	49	173	0	180	8	1	/static/images/lancers/173.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/173.html	3.7	10.4	0
414	Nuren The Tooth	lancers	PROMO	38	174	0	180	8	1	/static/images/lancers/174.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/174.html	22.7	16.8	6.4
726	Royal Pikeman	alpha	TOUGH	19	102	5	90	0	1	/static/images/alpha/102.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/102.html	67.8	13.6	3.4
728	Liege Knight	alpha	STANDARD	26	104	4	90	0	1	/static/images/alpha/104.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/104.html	59.4	57.2	29.1
385	Woodroot	lancers	PROMO	26	145	0	90	6	1	\N	http://www.knight-ware.com/cmg/mageknight/lancers/145.html	50.6	57.2	30.4
735	Slasher	alpha	TOUGH	18	111	5	90	4	1	/static/images/alpha/111.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/111.html	55.8	26	7.4
734	Slasher	alpha	STANDARD	16	110	4	90	4	1	/static/images/alpha/110.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/110.html	22.6	42.8	27.1
736	Crusher	alpha	WEAK	16	112	3	90	0	1	/static/images/alpha/112.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/112.html	11	36.6	16.3
737	Crusher	alpha	STANDARD	18	113	4	90	0	1	/static/images/alpha/113.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/113.html	31	16.4	0
738	Crusher	alpha	TOUGH	20	114	5	90	0	1	/static/images/alpha/114.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/114.html	48	89.7	68.6
740	Shaman	alpha	STANDARD	23	116	4	90	8	1	/static/images/alpha/116.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/116.html	9.5	50.8	28.5
741	Shaman	alpha	TOUGH	28	117	5	90	8	1	/static/images/alpha/117.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/117.html	8.2	20.7	0
742	Half-Troll Hacker	alpha	WEAK	21	118	3	90	0	1	/static/images/alpha/118.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/118.html	77.3	84.2	73
743	Half-Troll Hacker	alpha	STANDARD	26	119	4	90	0	1	/static/images/alpha/119.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/119.html	68.2	49.2	40.2
744	Half-Troll Hacker	alpha	TOUGH	29	120	5	90	0	1	/static/images/alpha/120.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/120.html	84.5	28.5	9.5
745	Imp	alpha	WEAK	5	121	3	90	0	1	/static/images/alpha/121.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/121.html	0.2	93	78.3
746	Imp	alpha	STANDARD	7	122	4	90	0	1	/static/images/alpha/122.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/122.html	3.3	86.3	45
748	Skeleton	alpha	WEAK	10	124	3	90	0	1	/static/images/alpha/124.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/124.html	13.6	100	100
749	Skeleton	alpha	STANDARD	15	125	4	90	0	1	/static/images/alpha/125.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/125.html	51.2	73.1	76.7
750	Skeleton	alpha	TOUGH	20	126	5	90	0	1	/static/images/alpha/126.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/126.html	88.1	100	100
751	Shade	alpha	WEAK	12	127	3	90	0	1	/static/images/alpha/127.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/127.html	28.7	97.5	85.2
752	Shade	alpha	STANDARD	16	128	4	90	0	1	/static/images/alpha/128.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/128.html	75.6	73.2	47.2
753	Shade	alpha	TOUGH	20	129	5	90	0	1	/static/images/alpha/129.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/129.html	92.4	100	87.1
754	Deep Spawn	alpha	WEAK	14	130	3	90	0	1	/static/images/alpha/130.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/130.html	14.3	70.5	43.5
755	Deep Spawn	alpha	STANDARD	17	131	4	90	0	1	/static/images/alpha/131.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/131.html	45.5	43.6	20.2
756	Deep Spawn	alpha	TOUGH	19	132	5	90	0	1	/static/images/alpha/132.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/132.html	38.1	35.2	0
757	Ki Devil	alpha	WEAK	24	133	3	90	10	1	/static/images/alpha/133.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/133.html	39.3	75.7	67.4
651	Zombie	alpha	Tough	14	27	3	90	0	1	/static/images/alpha/27.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2027.html	59.7	51.2	62.7
758	Ki Devil	alpha	STANDARD	31	134	4	90	10	1	/static/images/alpha/134.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/134.html	54.3	90.2	83.8
759	Ki Devil	alpha	TOUGH	40	135	5	90	10	1	/static/images/alpha/135.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/135.html	66.4	86.5	82.8
760	Werewolf	alpha	WEAK	22	136	3	90	0	1	/static/images/alpha/136.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/136.html	94.3	24.7	78.8
761	Werewolf	alpha	STANDARD	27	137	4	90	0	1	/static/images/alpha/137.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/137.html	98.3	2.5	50.7
762	Werewolf	alpha	TOUGH	30	138	5	90	0	1	/static/images/alpha/138.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/138.html	99	14.6	82.6
531	Elven Recruit	siniste	TOUGH	13	27	3	90	0	1	/static/images/siniste/27.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2027.html	73.4	80.3	68.2
532	Fodder	siniste	WEAK	10	28	1	90	0	1	/static/images/siniste/28.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2028.html	3.6	88.4	82.8
533	Fodder	siniste	STANDARD	14	29	2	90	0	1	/static/images/siniste/29.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2029.html	25.8	55.5	65
534	Fodder	siniste	TOUGH	18	30	3	90	0	1	/static/images/siniste/30.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2030.html	64.9	16.4	32
535	Impaling Golem	siniste	WEAK	44	31	2	90	8	2	/static/images/siniste/31.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2031.html	75.2	59.4	49.1
442	Desert Ape	pyramid	Weak	19	28	1	90	0	1	/static/images/pyramid/28.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2028.html	71.6	15.3	19.3
536	Impaling Golem	siniste	STANDARD	53	32	3	90	10	2	/static/images/siniste/32.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2032.html	77.2	90.3	86.7
537	Impaling Golem	siniste	TOUGH	59	33	4	90	10	2	/static/images/siniste/33.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2033.html	77.1	74.2	62.2
538	Magestone Lord	siniste	WEAK	23	34	2	90	10	1	/static/images/siniste/34.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2034.html	42.7	81.7	56.1
763	Werebear	alpha	WEAK	34	139	3	90	0	1	/static/images/alpha/139.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/139.html	98	0.7	59.7
766	Crypt Worm	alpha	WEAK	35	142	3	90	4	1	/static/images/alpha/142.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/142.html	93.9	0	30.4
767	Crypt Worm	alpha	STANDARD	38	143	4	90	4	1	/static/images/alpha/143.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/143.html	97.4	0	11.3
768	Crypt Worm	alpha	TOUGH	42	144	5	90	4	1	/static/images/alpha/144.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/144.html	98.8	0	52.7
771	Elemental Priest	alpha	UNIQUE	68	147	6	90	10	1	/static/images/alpha/147.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/147.html	5.7	42.2	13.1
772	Troll Chieftain	alpha	UNIQUE	73	148	6	90	6	1	/static/images/alpha/148.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/148.html	70.8	23.4	19.3
773	Necromancer	alpha	UNIQUE	60	149	6	90	0	1	/static/images/alpha/149.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/149.html	9.6	37.6	28.1
775	Dwarven Jarl	alpha	UNIQUE	77	151	6	90	12	1	/static/images/alpha/151.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/151.html	51.3	74.9	78.7
733	Slasher	alpha	WEAK	14	109	3	90	4	1	/static/images/alpha/109.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/109.html	8.8	54.4	36.7
774	Order Of Vladd	alpha	UNIQUE	96	150	6	90	0	1	/static/images/alpha/150.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/150.html	31.8	61.6	50.7
255	Marsh Zombie	lancers	TOUGH	15	15	3	90	0	1	/static/images/lancers/15.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2015.html	39.8	42.6	56
247	Centaur Outrider	lancers	WEAK	17	7	1	90	0	1	/static/images/lancers/7.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%20%207.html	55.2	44.6	36.6
252	Centaur Archer	lancers	TOUGH	32	12	3	90	8	1	/static/images/lancers/12.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2012.html	13.3	36	16
254	Marsh Zombie	lancers	STANDARD	12	14	2	90	0	1	/static/images/lancers/14.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2014.html	18.9	79.6	87.1
256	Lurker	lancers	WEAK	14	16	1	90	0	1	/static/images/lancers/16.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2016.html	44.8	69.5	62.3
258	Lurker	lancers	TOUGH	21	18	3	90	0	1	/static/images/lancers/18.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2018.html	74.1	93.2	86.3
265	Squire	lancers	WEAK	12	25	1	90	0	1	/static/images/lancers/25.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2025.html	9.4	81.6	77.9
268	Elf-At-Arms	lancers	WEAK	15	28	1	90	0	1	/static/images/lancers/28.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2028.html	67.9	61.5	52.1
270	Elf-At-Arms	lancers	TOUGH	19	30	3	90	0	1	/static/images/lancers/30.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2030.html	94	24.3	16.8
248	Centaur Outrider	lancers	STANDARD	20	8	2	90	0	1	/static/images/lancers/8.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%20%208.html	69.6	100	89.9
249	Centaur Outrider	lancers	TOUGH	21	9	3	90	0	1	/static/images/lancers/9.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%20%209.html	73.3	99	83.1
250	Centaur Archer	lancers	WEAK	25	10	1	90	8	1	/static/images/lancers/10.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2010.html	10.7	10.7	15.2
251	Centaur Archer	lancers	STANDARD	30	11	2	90	8	1	/static/images/lancers/11.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2011.html	12.2	35.6	28
652	Nightblade	alpha	Weak	12	28	1	90	0	1	/static/images/alpha/28.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2028.html	40.2	86.8	79.1
653	Nightblade	alpha	Standard	14	29	2	90	0	1	/static/images/alpha/29.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2029.html	70.7	69.5	60.3
253	Marsh Zombie	lancers	WEAK	10	13	1	90	0	1	/static/images/lancers/13.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2013.html	6	91.1	96.4
257	Lurker	lancers	STANDARD	18	17	2	90	0	1	/static/images/lancers/17.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2017.html	67	32	21.2
266	Squire	lancers	STANDARD	15	26	2	90	0	1	/static/images/lancers/26.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2026.html	14.2	52.5	43.8
267	Squire	lancers	TOUGH	18	27	3	90	0	1	/static/images/lancers/27.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2027.html	12.7	11.2	9.9
269	Elf-At-Arms	lancers	STANDARD	18	29	2	90	0	1	/static/images/lancers/29.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2029.html	91	37.5	24.9
776	Amazon Queen	alpha	UNIQUE	77	152	6	180	12	1	/static/images/alpha/152.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/152.html	29.1	100	79.3
777	Paladin Prince	alpha	UNIQUE	71	153	6	90	0	1	/static/images/alpha/153.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/153.html	49.9	47.9	26
778	Chaos Mage	alpha	UNIQUE	45	154	6	90	12	1	/static/images/alpha/154.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/154.html	81.7	67.5	61
780	Neophant	alpha	UNIQUE	32	156	6	90	6	1	/static/images/alpha/156.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/156.html	87.8	95.6	83.1
781	Magna Draconum	alpha	UNIQUE	68	157	6	90	0	1	/static/images/alpha/157.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/157.html	74.5	56.4	55.7
783	Mystic Draconum	alpha	UNIQUE	80	159	6	90	10	1	/static/images/alpha/159.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/159.html	14.5	83.7	79.3
784	Hierophant	alpha	UNIQUE	145	160	6	180	14	2	/static/images/alpha/160.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/160.html	21.8	70.5	70.5
790	Rowan	alpha	PROMO	33	166	0	90	6	1	/static/images/alpha/166.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/166.html	7.4	48.7	14.7
792	Oakes	alpha	PROMO	23	168	0	90	8	1	/static/images/alpha/168.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/168.html	86.5	83.8	69.3
793	Goltusep	alpha	PROMO	15	169	0	90	0	1	/static/images/alpha/169.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/169.html	82.5	49.5	53.1
794	Kerraii	alpha	PROMO	19	170	0	90	0	1	/static/images/alpha/170.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/170.html	90.8	34.2	8.6
795	Digger Khep	alpha	PROMO	22	171	0	90	0	1	/static/images/alpha/171.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/171.html	9.7	73.3	32.1
796	Ravarshi	alpha	PROMO	36	172	0	90	0	1	/static/images/alpha/172.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/172.html	72.8	74.6	51.8
797	Fickett Townley	alpha	PROMO	13	173	0	90	8	1	/static/images/alpha/173.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/173.html	27.5	76	57.6
798	Snow	alpha	PROMO	19	174	0	90	10	1	/static/images/alpha/174.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/174.html	68.6	24.3	11
799	Alessi Ost	alpha	PROMO	17	175	0	90	0	1	/static/images/alpha/175.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/175.html	33.4	38.6	13
789	Nessa Nettle	alpha	PROMO	18	165	0	90	8	1	\N	http://www.knight-ware.com/cmg/mageknight/rebelli/165.html	7.8	24.4	3.9
275	Deepwood Sentinel	lancers	STANDARD	17	35	2	90	0	1	/static/images/lancers/35.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2035.html	31.4	32.4	36.6
274	Deepwood Sentinel	lancers	WEAK	15	34	1	90	0	1	/static/images/lancers/34.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2034.html	31.2	53.5	54.7
276	Deepwood Sentinel	lancers	TOUGH	19	36	3	90	0	1	/static/images/lancers/36.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2036.html	55.4	14.6	12.8
278	Goblin Grenadier	lancers	STANDARD	25	38	2	90	6	1	/static/images/lancers/38.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2038.html	1.2	21.4	18.9
280	Goblin Cannibal	lancers	WEAK	10	40	1	90	0	1	/static/images/lancers/40.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2040.html	6.1	85.5	80
282	Goblin Cannibal	lancers	TOUGH	13	42	3	90	0	1	/static/images/lancers/42.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2042.html	5.2	68	58.9
287	Goblin Volunteer	lancers	STANDARD	6	47	2	90	0	1	/static/images/lancers/47.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2047.html	6.6	18.7	52.7
292	Centaur Lieutenant	lancers	WEAK	33	52	2	90	0	1	/static/images/lancers/52.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2052.html	39.5	40.3	26.6
296	Flesh Golem	lancers	STANDARD	25	56	3	90	0	1	/static/images/lancers/56.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2056.html	36.2	40.9	5.8
297	Flesh Golem	lancers	TOUGH	28	57	4	90	0	1	/static/images/lancers/57.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2057.html	69.2	20.8	8.1
304	Faith Healer	lancers	WEAK	16	64	2	90	0	1	/static/images/lancers/64.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2064.html	28.1	45.6	39.5
317	Barber-Surgeon	lancers	STANDARD	17	77	3	90	0	1	/static/images/lancers/77.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2077.html	14.7	8.2	1.8
540	Magestone Lord	siniste	TOUGH	34	36	4	90	10	1	/static/images/siniste/36.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2036.html	68.7	67.9	46.1
200	Spine Sucker	minions	STANDARD	40	80	4	90	4	1	/static/images/minions/80.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2080.html	83.2	79.2	100
654	Nightblade	alpha	Tough	16	30	3	90	0	1	/static/images/alpha/30.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2030.html	82.9	54.1	54.1
655	Grave Robber	alpha	Weak	14	31	1	90	0	1	/static/images/alpha/31.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2031.html	2.2	58.2	24.7
656	Grave Robber	alpha	Standard	16	32	2	90	0	1	/static/images/alpha/32.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2032.html	4.4	25	6.9
657	Grave Robber	alpha	Tough	19	33	3	90	0	1	/static/images/alpha/33.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2033.html	7	8	0
658	Feral Bloodsucker	alpha	Weak	26	34	1	90	0	1	/static/images/alpha/34.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2034.html	51.8	55.2	37.9
659	Feral Bloodsucker	alpha	Standard	31	35	2	90	0	1	/static/images/alpha/35.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2035.html	61.7	91.9	92.7
660	Feral Bloodsucker	alpha	Tough	33	36	3	90	0	1	/static/images/alpha/36.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2036.html	72.4	89.2	98
661	Khamsin Freelancer	alpha	Weak	9	37	1	90	6	1	/static/images/alpha/37.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2037.html	6.9	13.3	0
541	Warbear	siniste	WEAK	35	37	2	90	0	1	/static/images/siniste/37.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2037.html	92.7	69.4	51.2
542	Warbear	siniste	STANDARD	42	38	3	90	0	1	/static/images/siniste/38.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2038.html	90.7	89	61.2
319	Specter	lancers	WEAK	16	79	2	90	4	1	/static/images/lancers/79.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2079.html	88.9	71.2	61
321	Specter	lancers	TOUGH	23	81	4	90	4	1	/static/images/lancers/81.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2081.html	96.7	97.4	81
272	Longbow Archer	lancers	STANDARD	19	32	2	90	14	1	/static/images/lancers/32.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2032.html	10.8	2.4	1.9
273	Longbow Archer	lancers	TOUGH	22	33	3	90	14	1	/static/images/lancers/33.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2033.html	16.8	50.6	58.5
277	Goblin Grenadier	lancers	WEAK	24	37	1	90	6	1	/static/images/lancers/37.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2037.html	0.6	22.2	14.3
279	Goblin Grenadier	lancers	TOUGH	26	39	3	90	6	1	/static/images/lancers/39.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2039.html	3.2	15.5	12.8
283	Goblin Archer	lancers	WEAK	13	43	1	90	8	1	/static/images/lancers/43.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2043.html	1.8	74.4	65
284	Goblin Archer	lancers	STANDARD	14	44	2	90	8	1	/static/images/lancers/44.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2044.html	6.5	62.4	52.7
285	Goblin Archer	lancers	TOUGH	16	45	3	90	8	1	/static/images/lancers/45.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2045.html	5.5	44.6	30.8
286	Goblin Volunteer	lancers	WEAK	5	46	1	90	0	1	/static/images/lancers/46.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2046.html	0.9	45.3	66
288	Goblin Volunteer	lancers	TOUGH	7	48	3	90	0	1	/static/images/lancers/48.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2048.html	8.3	0	39.3
293	Centaur Lieutenant	lancers	STANDARD	36	53	3	90	0	1	/static/images/lancers/53.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2053.html	58.2	34.1	7.9
294	Centaur Lieutenant	lancers	TOUGH	37	54	4	90	0	1	/static/images/lancers/54.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2054.html	62.3	35.9	6.6
295	Flesh Golem	lancers	WEAK	20	55	2	90	0	1	/static/images/lancers/55.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2055.html	33.7	85.8	50.9
301	Elven Zealot	lancers	WEAK	27	61	2	90	0	1	/static/images/lancers/61.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2061.html	18.1	6.6	4.1
302	Elven Zealot	lancers	STANDARD	31	62	3	90	0	1	/static/images/lancers/62.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2062.html	44.1	41.7	62.8
303	Elven Zealot	lancers	TOUGH	33	63	4	90	0	1	/static/images/lancers/63.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2063.html	53	41.7	52.1
305	Faith Healer	lancers	STANDARD	20	65	3	90	0	1	/static/images/lancers/65.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2065.html	46.8	94.3	85.6
539	Magestone Lord	siniste	STANDARD	30	35	3	90	10	1	/static/images/siniste/35.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2035.html	54.4	100	67.4
306	Faith Healer	lancers	TOUGH	22	66	4	90	0	1	/static/images/lancers/66.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2066.html	54.9	85.4	74
307	Shieldwall Knight	lancers	WEAK	18	67	2	90	0	1	/static/images/lancers/67.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2067.html	85.7	24.4	31
308	Shieldwall Knight	lancers	STANDARD	20	68	3	90	0	1	/static/images/lancers/68.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2068.html	91.6	93.3	94.4
309	Shieldwall Knight	lancers	TOUGH	24	69	4	90	0	1	/static/images/lancers/69.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2069.html	89.1	71.2	66.2
318	Barber-Surgeon	lancers	TOUGH	19	78	4	90	0	1	/static/images/lancers/78.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2078.html	17.1	1.3	0
320	Specter	lancers	STANDARD	21	80	3	90	4	1	/static/images/lancers/80.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2080.html	94.7	100	95.1
688	Troll Brawler	alpha	WEAK	27	64	2	90	0	1	/static/images/alpha/64.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2064.html	52.9	17.5	6.7
687	Wood Golem	alpha	TOUGH	30	63	4	90	0	1	/static/images/alpha/63.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2063.html	90.9	66.1	65.9
689	Troll Brawler	alpha	STANDARD	29	65	3	90	0	1	/static/images/alpha/65.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2065.html	64.3	6	0
690	Troll Brawler	alpha	TOUGH	31	66	4	90	0	1	/static/images/alpha/66.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2066.html	76.7	74.1	52.4
691	Troll Artillerist	alpha	WEAK	29	67	2	90	12	1	/static/images/alpha/67.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2067.html	26.3	0.9	0
692	Troll Artillerist	alpha	STANDARD	33	68	3	90	12	1	/static/images/alpha/68.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2068.html	49.5	47	26.7
693	Troll Artillerist	alpha	TOUGH	38	69	4	90	12	1	/static/images/alpha/69.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2069.html	63.9	15.4	0
694	Living Elemental	alpha	WEAK	32	70	2	90	0	1	/static/images/alpha/70.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2070.html	91.1	78.3	85.8
543	Warbear	siniste	TOUGH	46	39	4	90	0	1	/static/images/siniste/39.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2039.html	93.1	70.4	22.3
695	Living Elemental	alpha	STANDARD	36	71	3	90	0	1	/static/images/alpha/71.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2071.html	94.5	44.3	48
696	Living Elemental	alpha	TOUGH	40	72	4	90	0	1	/static/images/alpha/72.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2072.html	96	85.5	84.9
697	Seething Knight	alpha	WEAK	25	73	2	90	0	1	/static/images/alpha/73.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2073.html	86.8	69.2	45.5
698	Seething Knight	alpha	STANDARD	28	74	3	90	0	1	/static/images/alpha/74.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2074.html	93.4	36.9	12.5
699	Seething Knight	alpha	TOUGH	31	75	4	90	0	1	/static/images/alpha/75.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2075.html	92.3	93.2	65.8
701	Bone Golem	alpha	STANDARD	32	77	3	90	0	1	/static/images/alpha/77.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2077.html	93.7	89.3	80.8
702	Bone Golem	alpha	TOUGH	36	78	4	90	0	1	/static/images/alpha/78.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2078.html	94	61.8	52.3
703	Nightstalker	alpha	WEAK	22	79	2	90	6	1	/static/images/alpha/79.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2079.html	30.2	96	45.8
705	Nightstalker	alpha	TOUGH	30	81	4	90	10	1	/static/images/alpha/81.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2081.html	40.1	100	53
715	Dwarven Fuser	alpha	WEAK	21	91	2	90	10	1	/static/images/alpha/91.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2091.html	29.8	79.8	62.3
64	Rock Minion	mkd	UNIQUE	85	64	6	90	0	1	/static/images/mkd/64.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2064.html	54.8	42.1	51
66	Thanatos Reaper	mkd	UNIQUE	99	66	6	180	0	1	/static/images/mkd/66.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2066.html	48.5	68	69.7
67	Revenant Priest	mkd	UNIQUE	93	67	6	90	12	1	/static/images/mkd/67.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2067.html	31.9	11.6	8.7
68	Gate Lord	mkd	UNIQUE	130	68	6	180	0	1	/static/images/mkd/68.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2068.html	44	91.5	94.5
69	Daren Brakensword	mkd	UNIQUE	63	69	6	90	0	1	/static/images/mkd/69.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2069.html	74.3	74.3	24.8
550	Nightfiend	siniste	WEAK	39	46	2	90	0	1	/static/images/siniste/46.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2046.html	59.2	36.1	8.4
551	Nightfiend	siniste	STANDARD	50	47	3	90	0	1	/static/images/siniste/47.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2047.html	72.9	94.9	90.9
552	Nightfiend	siniste	TOUGH	66	48	4	90	0	1	/static/images/siniste/48.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2048.html	85	50.4	47.6
553	Sentry Golem	siniste	WEAK	26	49	2	90	8	1	/static/images/siniste/49.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2049.html	73.7	35.2	52.8
554	Sentry Golem	siniste	STANDARD	29	50	3	90	8	1	/static/images/siniste/50.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2050.html	89.2	14	25.2
555	Sentry Golem	siniste	TOUGH	32	51	4	90	8	1	/static/images/siniste/51.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2051.html	87.8	64.6	81.9
662	Khamsin Freelancer	alpha	Standard	10	38	2	90	6	1	/static/images/alpha/38.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2038.html	15.1	93.5	80.2
663	Khamsin Freelancer	alpha	Tough	11	39	3	90	6	1	/static/images/alpha/39.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2039.html	22.7	89.4	72.3
664	Khamsin Fuser	alpha	Weak	13	40	1	90	10	1	/static/images/alpha/40.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2040.html	10.4	71.4	51.4
556	Dwarven Axe-Knight	siniste	WEAK	34	52	2	180	0	1	/static/images/siniste/52.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2052.html	75.1	55.3	54.4
557	Dwarven Axe-Knight	siniste	STANDARD	42	53	3	180	0	1	/static/images/siniste/53.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2053.html	85.5	75.4	69.4
558	Dwarven Axe-Knight	siniste	TOUGH	47	54	4	180	0	1	/static/images/siniste/54.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2054.html	92.9	39.7	32.1
559	Infantry Captain	siniste	WEAK	18	55	2	90	0	1	/static/images/siniste/55.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2055.html	80.1	48	36.1
560	Infantry Captain	siniste	STANDARD	23	56	3	90	0	1	/static/images/siniste/56.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2056.html	95.5	99.4	78.9
561	Infantry Captain	siniste	TOUGH	28	57	4	90	0	1	/static/images/siniste/57.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2057.html	98.7	72.5	45.2
564	Digger	siniste	TOUGH	20	60	4	90	6	1	/static/images/siniste/60.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2060.html	16.9	90.7	75.6
565	Elven Demi-Magus	siniste	WEAK	31	61	3	90	10	1	/static/images/siniste/61.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2061.html	5.6	64.7	29.3
566	Elven Demi-Magus	siniste	STANDARD	37	62	4	90	10	1	/static/images/siniste/62.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2062.html	10.1	21.3	4.9
567	Elven Demi-Magus	siniste	TOUGH	39	63	5	90	10	1	/static/images/siniste/63.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2063.html	9.1	18.9	3.1
568	Troll Gunner	siniste	WEAK	33	64	3	90	12	1	/static/images/siniste/64.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2064.html	14.4	29.3	11.9
569	Troll Gunner	siniste	STANDARD	39	65	4	90	12	1	/static/images/siniste/65.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2065.html	33.3	6.9	0
570	Troll Gunner	siniste	TOUGH	52	66	5	90	12	1	/static/images/siniste/66.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2066.html	42.5	77	61.1
387	Slurshem The Zombie	lancers	PROMO	21	147	0	90	0	1	\N	http://www.knight-ware.com/cmg/mageknight/lancers/147.html	59.2	71.6	72.8
948	Skoth Plaguebringer	ww	PROMO	37	148	0	180	0	1	/static/images/ww/148.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/148.html	40	30.3	0
955	Dargrum	ww	PROMO	34	155	0	90	0	1	/static/images/ww/155.jpg	http://www.knight-ware.com/cmg/mageknight/whirlwi/155.html	97.8	67.9	58.6
665	Khamsin Fuser	alpha	Standard	15	41	2	90	10	1	/static/images/alpha/41.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2041.html	29.7	54.6	30.2
666	Khamsin Fuser	alpha	Tough	16	42	3	90	10	1	/static/images/alpha/42.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2042.html	41.3	53.1	24.9
667	Leech Medic	alpha	Weak	11	43	1	90	0	1	/static/images/alpha/43.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2043.html	3.5	86.9	73.8
610	Sir Mishler	siniste	PROMO	77	106	0	90	0	1	/static/images/siniste/106.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/106.html	83.6	100	89.4
668	Leech Medic	alpha	Standard	12	44	2	90	0	1	/static/images/alpha/44.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2044.html	9.2	81.6	67.4
669	Leech Medic	alpha	Tough	14	45	3	90	0	1	/static/images/alpha/45.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2045.html	11.4	62.4	46.7
670	Dwarven Berserker	alpha	Weak	19	46	1	90	0	1	/static/images/alpha/46.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2046.html	40.7	7.3	0
671	Dwarven Berserker	alpha	Standard	22	47	2	90	0	1	/static/images/alpha/47.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2047.html	66.7	67.3	71.7
672	Dwarven Berserker	alpha	Tough	27	48	3	90	0	1	/static/images/alpha/48.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2048.html	53.1	23.5	30.8
445	Temple Cat	pyramid	Weak	17	31	1	90	0	1	/static/images/pyramid/31.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2031.html	32.3	39.2	39.1
455	Gorgon	pyramid	Standard	25	41	4	180	4	1	/static/images/pyramid/41.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2041.html	12.9	35.7	22.4
467	Vine Golem	pyramid	Tough	35	54	5	270	0	1	/static/images/pyramid/54.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2054.html	83.9	53.4	46.7
497	Shaman Og	pyramid	Unique	67	85	6	90	0	1	/static/images/pyramid/85.jpeg	http://www.knight-ware.com/cmg/mageknight/pyramid/%2085.html	73.2	12.4	12.8
739	Shaman	alpha	WEAK	21	115	3	90	8	1	/static/images/alpha/115.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/115.html	4.7	74.6	54.6
782	Magus Draconum	alpha	UNIQUE	93	158	6	90	12	2	/static/images/alpha/158.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/158.html	22.9	40.4	24.2
368	Cave Archer On Cave Runner	lancers	STANDARD	29	128	4	180	8	1	\N	http://www.knight-ware.com/cmg/mageknight/lancers/128.html	8.4	9.4	7.7
392	Grim Ivydown	lancers	PROMO	25	152	0	90	0	1	\N	http://www.knight-ware.com/cmg/mageknight/lancers/152.html	90.6	71.2	58.8
394	Taska Lakelore	lancers	PROMO	22	154	0	90	0	1	\N	http://www.knight-ware.com/cmg/mageknight/lancers/154.html	46.5	77.4	69.6
404	Scythapox	lancers	PROMO	59	164	0	180	0	1	\N	http://www.knight-ware.com/cmg/mageknight/lancers/164.html	19.5	57	37.4
408	Rathgad Thunderhoof	lancers	PROMO	61	168	0	180	0	1	\N	http://www.knight-ware.com/cmg/mageknight/lancers/168.html	41.9	64.2	40
409	Yanna Fairhame	lancers	PROMO	43	169	0	180	0	1	\N	http://www.knight-ware.com/cmg/mageknight/lancers/169.html	48.1	49.7	32
791	Byrch	alpha	PROMO	19	167	0	90	0	1	\N	http://www.knight-ware.com/cmg/mageknight/rebelli/167.html	67.6	30.3	14.8
800	Torengor	alpha	PROMO	31	176	0	90	0	1	\N	http://www.knight-ware.com/cmg/mageknight/rebelli/176.html	83.3	69.4	77.7
785	Khujeret	alpha	PROMO	17	161	0	90	10	2	/static/images/alpha/161.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/161.html	13	28.4	1.4
786	Djakmaukar	alpha	PROMO	17	162	0	90	0	1	/static/images/alpha/162.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/162.html	62.7	52.2	16
201	Spine Sucker	minions	TOUGH	47	81	5	90	4	1	/static/images/minions/81.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2081.html	83.3	37.2	73.3
202	Krugg Headhunter	minions	WEAK	28	82	3	180	0	1	/static/images/minions/82.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2082.html	91.5	25.7	33.7
203	Krugg Headhunter	minions	STANDARD	31	83	4	180	0	1	/static/images/minions/83.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2083.html	84.5	79.7	85.7
204	Krugg Headhunter	minions	TOUGH	37	84	5	180	0	1	/static/images/minions/84.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2084.html	91.4	35.9	35.2
205	Flayed Lord	minions	WEAK	41	85	3	90	6	1	/static/images/minions/85.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2085.html	95.3	53.8	87.8
206	Flayed Lord	minions	STANDARD	43	86	4	90	6	1	/static/images/minions/86.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2086.html	96.2	57	79
207	Flayed Lord	minions	TOUGH	48	87	5	90	6	1	/static/images/minions/87.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2087.html	98.5	30	48.9
208	Solonavi Channeler	minions	WEAK	33	88	3	180	12	1	/static/images/minions/88.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2088.html	40.5	71.7	88.4
209	Solonavi Channeler	minions	STANDARD	41	89	4	180	12	1	/static/images/minions/89.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2089.html	54.1	80.3	88.4
210	Solonavi Channeler	minions	TOUGH	53	90	5	180	12	1	/static/images/minions/90.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2090.html	57.7	91.5	89
211	Xandressan Boarder	minions	UNIQUE	57	91	6	180	0	1	/static/images/minions/91.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2091.html	80.9	88.2	75.8
212	Amethyst Knight	minions	UNIQUE	71	92	6	90	0	1	/static/images/minions/92.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2092.html	75.4	20.3	59.2
213	Sect Executioner	minions	UNIQUE	71	93	6	90	4	1	/static/images/minions/93.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2093.html	60.8	46.4	45.4
215	Paladin Priest	minions	UNIQUE	83	95	6	90	8	1	/static/images/minions/95.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2095.html	15.5	38.6	30.7
216	Orc Slaver	minions	UNIQUE	55	96	6	180	0	1	/static/images/minions/96.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2096.html	52.6	84.4	67.2
217	Draconum Guardian	minions	UNIQUE	109	97	6	90	0	1	/static/images/minions/97.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2097.html	29.8	57.1	63.4
221	Tezlacore	minions	PROMO	31	101	0	90	0	1	/static/images/minions/101.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/101.html	2	4.2	7.2
222	Splinter	minions	PROMO	38	102	0	180	4	1	/static/images/minions/102.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/102.html	35.7	53.8	58
223	Stiletto	minions	PROMO	21	103	0	90	0	1	/static/images/minions/103.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/103.html	28.5	100	90.8
224	Bombardo	minions	PROMO	30	104	0	90	8	1	/static/images/minions/104.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/104.html	55	88	76.9
969	Zechkin The Molog	ww	PROMO	65	169	0	180	10	1	/static/images/ww/169.jpeg	http://www.knight-ware.com/cmg/mageknight/whirlwi/169.html	37.9	25.1	24.3
52	Deadwood Golem	mkd	WEAK	26	52	3	90	0	1	/static/images/mkd/52.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2052.html	98.6	55.2	65.2
410	Cormelian The Savior	lancers	PROMO	58	170	0	180	0	1	/static/images/lancers/170.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/170.html	57.6	82.7	62.2
411	Gulthak Gaddar	lancers	PROMO	54	171	0	180	0	1	/static/images/lancers/171.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/171.html	10.6	72.6	40.8
70	Mage-King Alment Lan	mkd	UNIQUE	65	70	6	180	10	1	/static/images/mkd/70.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2070.html	22.3	46.7	7.1
1083	Demiphant	alpha	UNIQUE	89	159	6	90	14	2	/static/images/alpha/159.jpeg	http://www.knight-ware.com/cmg/mageknight/unlimit/159.html	31.1	60.2	49.3
544	Centaur Medic	siniste	WEAK	23	40	2	90	0	1	/static/images/siniste/40.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2040.html	21.4	30.4	40.6
545	Centaur Medic	siniste	STANDARD	29	41	3	90	0	1	/static/images/siniste/41.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2041.html	27.1	11.5	3.1
546	Centaur Medic	siniste	TOUGH	33	42	4	90	0	1	/static/images/siniste/42.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2042.html	35.4	31.9	33.2
547	Death Merchant	siniste	WEAK	32	43	2	90	0	1	/static/images/siniste/43.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2043.html	61.6	73.1	48.6
548	Death Merchant	siniste	STANDARD	41	44	3	90	0	1	/static/images/siniste/44.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2044.html	60.2	86.5	67.7
549	Death Merchant	siniste	TOUGH	50	45	4	90	0	1	/static/images/siniste/45.jpeg	http://www.knight-ware.com/cmg/mageknight/siniste/%2045.html	73.5	95.3	92.3
169	Stalking Skeleton	minions	WEAK	21	49	2	90	0	1	/static/images/minions/49.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2049.html	21.9	100	100
170	Stalking Skeleton	minions	STANDARD	23	50	3	90	0	1	/static/images/minions/50.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2050.html	57.1	95.9	92
171	Stalking Skeleton	minions	TOUGH	27	51	4	90	0	1	/static/images/minions/51.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2051.html	70	60.3	54.8
172	Chimeric Worm	minions	WEAK	52	52	2	180	8	1	/static/images/minions/52.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2052.html	96.6	91.2	88.5
173	Chimeric Worm	minions	STANDARD	55	53	3	180	8	1	/static/images/minions/53.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2053.html	97.6	83.4	86
174	Chimeric Worm	minions	TOUGH	60	54	4	180	8	1	/static/images/minions/54.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2054.html	99.4	80.8	87.9
175	Shadow	minions	WEAK	32	55	2	90	0	1	/static/images/minions/55.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2055.html	70.2	54.7	100
176	Shadow	minions	STANDARD	36	56	3	90	0	1	/static/images/minions/56.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2056.html	67.7	29.1	75.8
177	Shadow	minions	TOUGH	41	57	4	90	0	1	/static/images/minions/57.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2057.html	87	64.8	100
178	Solonavi Drone	minions	WEAK	24	58	2	180	0	1	/static/images/minions/58.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2058.html	65	78.9	89.1
179	Solonavi Drone	minions	STANDARD	34	59	3	180	0	1	/static/images/minions/59.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2059.html	84	79.6	93.3
180	Solonavi Drone	minions	TOUGH	44	60	4	180	0	1	/static/images/minions/60.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2060.html	88.2	86.1	90.5
181	Xandressan Captain	minions	WEAK	23	61	3	90	8	1	/static/images/minions/61.jpeg	http://www.knight-ware.com/cmg/mageknight/minions/%2061.html	58.6	76.7	69.6
65	Wyvern	mkd	UNIQUE	44	65	6	90	0	1	/static/images/mkd/65.jpeg	http://www.knight-ware.com/cmg/mageknight/dungeon/%2065.html	99.8	97.1	100
706	Screeching Terror	alpha	WEAK	25	82	2	90	8	1	/static/images/alpha/82.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2082.html	24.9	53.6	23.8
707	Screeching Terror	alpha	STANDARD	32	83	3	90	8	1	/static/images/alpha/83.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2083.html	45.3	85.6	49
708	Screeching Terror	alpha	TOUGH	35	84	4	90	8	1	/static/images/alpha/84.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2084.html	58.3	70.4	44.6
709	Amazon Blademistress	alpha	WEAK	20	85	2	90	6	1	/static/images/alpha/85.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2085.html	25.3	100	66
710	Amazon Blademistress	alpha	STANDARD	26	86	3	90	6	1	/static/images/alpha/86.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2086.html	28.9	50.9	8
711	Amazon Blademistress	alpha	TOUGH	30	87	4	90	6	1	/static/images/alpha/87.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2087.html	36.3	100	64.4
712	Black Powder Boomer	alpha	WEAK	18	88	2	90	10	1	/static/images/alpha/88.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2088.html	35.1	7.3	0
713	Black Powder Boomer	alpha	STANDARD	19	89	3	90	10	1	/static/images/alpha/89.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2089.html	49.8	9.3	0
714	Black Powder Boomer	alpha	TOUGH	22	90	4	90	10	1	/static/images/alpha/90.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2090.html	76.2	79.3	42.5
716	Dwarven Fuser	alpha	STANDARD	24	92	3	90	10	1	/static/images/alpha/92.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2092.html	41.7	44.2	25.3
322	Whelp	lancers	WEAK	19	82	2	90	0	1	/static/images/lancers/82.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2082.html	41.2	5.6	18.5
323	Whelp	lancers	STANDARD	23	83	3	90	0	1	/static/images/lancers/83.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2083.html	71.8	67.7	66.3
324	Whelp	lancers	TOUGH	28	84	4	90	0	1	/static/images/lancers/84.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2084.html	84.3	24.7	28.1
337	Fell Reaper On Skeletal Fell Beast	lancers	WEAK	36	97	3	180	0	1	/static/images/lancers/97.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2097.html	81.6	78.9	54.7
338	Fell Reaper On Skeletal Fell Beast	lancers	STANDARD	38	98	4	180	0	1	/static/images/lancers/98.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2098.html	80.8	71.1	36.9
339	Fell Reaper On Skeletal Fell Beast	lancers	TOUGH	43	99	5	180	0	1	/static/images/lancers/99.jpeg	http://www.knight-ware.com/cmg/mageknight/lancers/%2099.html	90	95.2	73.7
686	Wood Golem	alpha	STANDARD	26	62	3	90	0	1	/static/images/alpha/62.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2062.html	89.3	28	29.3
700	Bone Golem	alpha	WEAK	27	76	2	90	0	1	/static/images/alpha/76.jpeg	http://www.knight-ware.com/cmg/mageknight/rebelli/%2076.html	88.8	45	39.1
\.


--
-- Data for Name: click_stats; Type: TABLE DATA; Schema: public; Owner: mageknight_user
--

COPY public.click_stats (id, miniature_id, click_number, speed, attack, defense, damage, speed_ability_id, attack_ability_id, defense_ability_id, damage_ability_id) FROM stdin;
1	1	0	8	7	14	2	\N	\N	\N	\N
2	1	1	6	6	13	1	\N	\N	\N	\N
3	1	2	5	5	12	1	\N	\N	\N	\N
4	1	3	4	0	11	0	\N	\N	\N	10
5	1	4	0	0	0	0	8	8	8	8
6	1	5	0	0	0	0	8	8	8	8
7	1	6	0	0	0	0	8	8	8	8
8	1	7	0	0	0	0	8	8	8	8
9	1	8	0	0	0	0	8	8	8	8
10	1	9	0	0	0	0	8	8	8	8
11	1	10	0	0	0	0	8	8	8	8
12	1	11	0	0	0	0	8	8	8	8
13	2	0	8	7	15	2	\N	\N	\N	\N
14	2	1	6	6	14	2	\N	\N	\N	\N
15	2	2	5	5	13	1	\N	\N	\N	\N
16	2	3	4	4	12	1	\N	\N	\N	\N
17	2	4	4	0	11	0	\N	\N	\N	10
18	2	5	0	0	0	0	8	8	8	8
19	2	6	0	0	0	0	8	8	8	8
20	2	7	0	0	0	0	8	8	8	8
21	2	8	0	0	0	0	8	8	8	8
22	2	9	0	0	0	0	8	8	8	8
23	2	10	0	0	0	0	8	8	8	8
24	2	11	0	0	0	0	8	8	8	8
25	3	0	8	7	15	2	\N	\N	\N	\N
26	3	1	7	7	15	2	\N	\N	\N	\N
27	3	2	6	6	14	2	\N	\N	\N	\N
28	3	3	5	5	12	1	\N	\N	\N	\N
29	3	4	4	0	11	0	\N	\N	\N	10
30	3	5	0	0	0	0	8	8	8	8
31	3	6	0	0	0	0	8	8	8	8
32	3	7	0	0	0	0	8	8	8	8
33	3	8	0	0	0	0	8	8	8	8
34	3	9	0	0	0	0	8	8	8	8
35	3	10	0	0	0	0	8	8	8	8
36	3	11	0	0	0	0	8	8	8	8
37	4	0	8	7	14	1	\N	\N	\N	\N
38	4	1	6	6	14	1	\N	\N	\N	\N
39	4	2	5	5	13	1	\N	\N	\N	\N
40	4	3	4	0	12	0	\N	\N	\N	10
41	4	4	0	0	0	0	8	8	8	8
42	4	5	0	0	0	0	8	8	8	8
43	4	6	0	0	0	0	8	8	8	8
44	4	7	0	0	0	0	8	8	8	8
45	4	8	0	0	0	0	8	8	8	8
46	4	9	0	0	0	0	8	8	8	8
47	4	10	0	0	0	0	8	8	8	8
48	4	11	0	0	0	0	8	8	8	8
49	5	0	8	7	15	1	\N	\N	\N	\N
50	5	1	6	6	14	1	\N	\N	\N	\N
51	5	2	5	5	13	1	\N	\N	\N	\N
52	5	3	4	5	12	1	\N	\N	\N	\N
53	5	4	4	0	11	0	\N	\N	\N	10
54	5	5	0	0	0	0	8	8	8	8
55	5	6	0	0	0	0	8	8	8	8
56	5	7	0	0	0	0	8	8	8	8
57	5	8	0	0	0	0	8	8	8	8
58	5	9	0	0	0	0	8	8	8	8
59	5	10	0	0	0	0	8	8	8	8
60	5	11	0	0	0	0	8	8	8	8
61	6	0	8	8	15	1	\N	\N	\N	\N
62	6	1	7	7	14	1	\N	\N	\N	\N
63	6	2	6	6	13	1	\N	\N	\N	\N
64	6	3	5	5	12	1	\N	\N	\N	\N
65	6	4	4	0	11	0	\N	\N	\N	10
66	6	5	0	0	0	0	8	8	8	8
67	6	6	0	0	0	0	8	8	8	8
68	6	7	0	0	0	0	8	8	8	8
69	6	8	0	0	0	0	8	8	8	8
70	6	9	0	0	0	0	8	8	8	8
71	6	10	0	0	0	0	8	8	8	8
72	6	11	0	0	0	0	8	8	8	8
73	7	0	8	7	15	2	\N	\N	2	\N
74	7	1	6	6	14	1	\N	\N	2	\N
75	7	2	4	5	13	1	\N	\N	\N	\N
76	7	3	0	0	0	0	8	8	8	8
77	7	4	0	0	0	0	8	8	8	8
78	7	5	0	0	0	0	8	8	8	8
79	7	6	0	0	0	0	8	8	8	8
80	7	7	0	0	0	0	8	8	8	8
81	7	8	0	0	0	0	8	8	8	8
82	7	9	0	0	0	0	8	8	8	8
83	7	10	0	0	0	0	8	8	8	8
84	7	11	0	0	0	0	8	8	8	8
85	8	0	8	7	15	2	\N	\N	2	\N
86	8	1	6	6	14	2	\N	\N	2	\N
87	8	2	5	5	13	2	\N	\N	2	\N
88	8	3	4	5	12	1	\N	\N	2	\N
89	8	4	4	5	11	1	\N	\N	\N	\N
90	8	5	0	0	0	0	8	8	8	8
91	8	6	0	0	0	0	8	8	8	8
92	8	7	0	0	0	0	8	8	8	8
93	8	8	0	0	0	0	8	8	8	8
94	8	9	0	0	0	0	8	8	8	8
95	8	10	0	0	0	0	8	8	8	8
96	8	11	0	0	0	0	8	8	8	8
97	9	0	8	8	16	2	\N	40	2	\N
98	9	1	7	7	15	2	\N	\N	2	\N
99	9	2	6	6	14	2	\N	\N	2	\N
100	9	3	5	5	13	2	\N	\N	2	\N
101	9	4	4	5	12	1	\N	\N	\N	\N
102	9	5	4	5	11	1	\N	\N	\N	\N
103	9	6	4	5	10	1	\N	\N	\N	\N
104	9	7	0	0	0	0	8	8	8	8
105	9	8	0	0	0	0	8	8	8	8
106	9	9	0	0	0	0	8	8	8	8
107	9	10	0	0	0	0	8	8	8	8
108	9	11	0	0	0	0	8	8	8	8
109	10	0	8	7	15	1	\N	\N	\N	\N
110	10	1	6	6	14	1	\N	\N	\N	\N
111	10	2	0	0	0	0	8	8	8	8
112	10	3	0	0	0	0	8	8	8	8
113	10	4	0	0	0	0	8	8	8	8
114	10	5	0	0	0	0	8	8	8	8
115	10	6	0	0	0	0	8	8	8	8
116	10	7	0	0	0	0	8	8	8	8
117	10	8	0	0	0	0	8	8	8	8
118	10	9	0	0	0	0	8	8	8	8
119	10	10	0	0	0	0	8	8	8	8
120	10	11	0	0	0	0	8	8	8	8
121	11	0	8	7	15	1	\N	\N	\N	\N
122	11	1	6	6	14	1	\N	\N	\N	\N
123	11	2	5	5	12	1	\N	\N	\N	\N
124	11	3	4	5	11	1	\N	\N	\N	\N
125	11	4	0	0	0	0	8	8	8	8
126	11	5	0	0	0	0	8	8	8	8
127	11	6	0	0	0	0	8	8	8	8
128	11	7	0	0	0	0	8	8	8	8
129	11	8	0	0	0	0	8	8	8	8
130	11	9	0	0	0	0	8	8	8	8
131	11	10	0	0	0	0	8	8	8	8
132	11	11	0	0	0	0	8	8	8	8
133	12	0	8	8	15	1	\N	\N	\N	\N
134	12	1	7	7	15	1	\N	\N	\N	\N
135	12	2	6	6	14	1	\N	\N	\N	\N
136	12	3	5	5	13	1	\N	\N	\N	\N
137	12	4	4	5	11	1	\N	\N	\N	\N
138	12	5	0	0	0	0	8	8	8	8
139	12	6	0	0	0	0	8	8	8	8
140	12	7	0	0	0	0	8	8	8	8
141	12	8	0	0	0	0	8	8	8	8
142	12	9	0	0	0	0	8	8	8	8
143	12	10	0	0	0	0	8	8	8	8
144	12	11	0	0	0	0	8	8	8	8
145	13	0	10	8	15	2	1	\N	\N	\N
146	13	1	9	8	14	2	1	\N	\N	\N
147	13	2	8	7	13	1	\N	\N	\N	\N
148	13	3	6	0	11	0	\N	\N	\N	10
149	13	4	4	0	10	0	\N	\N	\N	10
150	13	5	0	0	0	0	8	8	8	8
151	13	6	0	0	0	0	8	8	8	8
152	13	7	0	0	0	0	8	8	8	8
153	13	8	0	0	0	0	8	8	8	8
154	13	9	0	0	0	0	8	8	8	8
155	13	10	0	0	0	0	8	8	8	8
156	13	11	0	0	0	0	8	8	8	8
157	14	0	10	8	15	2	1	\N	\N	\N
158	14	1	9	8	14	2	1	\N	\N	\N
159	14	2	8	7	13	2	1	\N	\N	\N
160	14	3	7	6	12	1	\N	\N	\N	\N
161	14	4	6	0	11	0	\N	\N	\N	10
162	14	5	4	0	10	0	\N	\N	\N	10
163	14	6	0	0	0	0	8	8	8	8
164	14	7	0	0	0	0	8	8	8	8
165	14	8	0	0	0	0	8	8	8	8
166	14	9	0	0	0	0	8	8	8	8
167	14	10	0	0	0	0	8	8	8	8
168	14	11	0	0	0	0	8	8	8	8
169	15	0	10	9	15	2	1	\N	\N	\N
170	15	1	9	8	15	2	1	\N	\N	\N
171	15	2	8	7	14	2	1	\N	\N	\N
172	15	3	7	6	13	2	1	\N	\N	\N
173	15	4	6	5	12	1	\N	\N	\N	\N
174	15	5	5	0	11	0	\N	\N	\N	10
175	15	6	4	0	10	0	\N	\N	\N	10
176	15	7	0	0	0	0	8	8	8	8
177	15	8	0	0	0	0	8	8	8	8
178	15	9	0	0	0	0	8	8	8	8
179	15	10	0	0	0	0	8	8	8	8
180	15	11	0	0	0	0	8	8	8	8
181	16	0	10	8	16	2	13	\N	\N	\N
182	16	1	9	7	15	2	13	\N	\N	\N
183	16	2	8	7	14	2	13	\N	\N	\N
184	16	3	6	5	12	1	\N	\N	\N	\N
185	16	4	4	5	11	1	\N	\N	\N	\N
186	16	5	0	0	0	0	8	8	8	8
187	16	6	0	0	0	0	8	8	8	8
188	16	7	0	0	0	0	8	8	8	8
189	16	8	0	0	0	0	8	8	8	8
190	16	9	0	0	0	0	8	8	8	8
191	16	10	0	0	0	0	8	8	8	8
192	16	11	0	0	0	0	8	8	8	8
193	17	0	10	8	16	2	13	\N	\N	\N
194	17	1	9	8	15	2	13	\N	\N	\N
195	17	2	8	7	14	2	13	\N	\N	\N
196	17	3	7	6	13	1	13	\N	\N	\N
197	17	4	6	5	12	1	\N	\N	\N	\N
198	17	5	4	5	11	1	\N	\N	\N	\N
199	17	6	0	0	0	0	8	8	8	8
200	17	7	0	0	0	0	8	8	8	8
201	17	8	0	0	0	0	8	8	8	8
202	17	9	0	0	0	0	8	8	8	8
203	17	10	0	0	0	0	8	8	8	8
204	17	11	0	0	0	0	8	8	8	8
205	18	0	10	9	16	2	13	\N	\N	\N
206	18	1	9	8	15	2	13	\N	\N	\N
207	18	2	8	7	14	2	13	\N	\N	\N
208	18	3	7	6	14	2	13	\N	\N	\N
209	18	4	6	5	13	1	\N	\N	\N	\N
210	18	5	5	5	12	1	\N	\N	\N	\N
211	18	6	4	5	11	1	\N	\N	\N	\N
212	18	7	0	0	0	0	8	8	8	8
213	18	8	0	0	0	0	8	8	8	8
214	18	9	0	0	0	0	8	8	8	8
215	18	10	0	0	0	0	8	8	8	8
216	18	11	0	0	0	0	8	8	8	8
217	19	0	6	7	16	2	\N	\N	2	\N
218	19	1	5	7	16	2	\N	\N	2	\N
219	19	2	5	7	15	2	\N	\N	\N	\N
220	19	3	4	6	15	1	\N	\N	\N	\N
221	19	4	0	0	0	0	8	8	8	8
222	19	5	0	0	0	0	8	8	8	8
223	19	6	0	0	0	0	8	8	8	8
224	19	7	0	0	0	0	8	8	8	8
225	19	8	0	0	0	0	8	8	8	8
226	19	9	0	0	0	0	8	8	8	8
227	19	10	0	0	0	0	8	8	8	8
228	19	11	0	0	0	0	8	8	8	8
229	20	0	6	8	17	2	\N	\N	2	\N
230	20	1	6	7	16	2	\N	\N	2	\N
231	20	2	5	7	15	2	\N	\N	2	\N
232	20	3	4	6	15	1	\N	\N	\N	\N
233	20	4	4	5	15	1	\N	\N	\N	\N
234	20	5	0	0	0	0	8	8	8	8
235	20	6	0	0	0	0	8	8	8	8
236	20	7	0	0	0	0	8	8	8	8
237	20	8	0	0	0	0	8	8	8	8
238	20	9	0	0	0	0	8	8	8	8
239	20	10	0	0	0	0	8	8	8	8
240	20	11	0	0	0	0	8	8	8	8
241	21	0	6	8	17	2	\N	\N	2	\N
242	21	1	6	7	16	2	\N	\N	2	\N
243	21	2	5	7	15	2	\N	\N	2	\N
244	21	3	4	6	15	2	\N	\N	2	\N
245	21	4	4	6	15	1	\N	\N	\N	\N
246	21	5	4	5	15	1	\N	\N	\N	\N
247	21	6	0	0	0	0	8	8	8	8
248	21	7	0	0	0	0	8	8	8	8
249	21	8	0	0	0	0	8	8	8	8
250	21	9	0	0	0	0	8	8	8	8
251	21	10	0	0	0	0	8	8	8	8
252	21	11	0	0	0	0	8	8	8	8
253	22	0	10	7	15	2	27	\N	11	\N
254	22	1	8	6	14	1	\N	\N	\N	\N
255	22	2	5	0	13	0	\N	\N	\N	10
256	22	3	0	0	0	0	8	8	8	8
257	22	4	0	0	0	0	8	8	8	8
258	22	5	0	0	0	0	8	8	8	8
259	22	6	0	0	0	0	8	8	8	8
260	22	7	0	0	0	0	8	8	8	8
261	22	8	0	0	0	0	8	8	8	8
262	22	9	0	0	0	0	8	8	8	8
263	22	10	0	0	0	0	8	8	8	8
264	22	11	0	0	0	0	8	8	8	8
265	23	0	10	7	15	2	27	\N	11	\N
266	23	1	9	6	15	2	27	\N	\N	\N
267	23	2	7	5	14	1	\N	\N	\N	\N
268	23	3	5	0	13	0	\N	\N	\N	10
269	23	4	0	0	0	0	8	8	8	8
270	23	5	0	0	0	0	8	8	8	8
271	23	6	0	0	0	0	8	8	8	8
272	23	7	0	0	0	0	8	8	8	8
273	23	8	0	0	0	0	8	8	8	8
274	23	9	0	0	0	0	8	8	8	8
275	23	10	0	0	0	0	8	8	8	8
276	23	11	0	0	0	0	8	8	8	8
277	24	0	10	8	15	2	27	\N	11	\N
278	24	1	9	6	15	2	27	\N	\N	\N
279	24	2	7	6	14	2	27	\N	\N	\N
280	24	3	6	5	14	1	\N	\N	\N	\N
281	24	4	5	0	13	0	\N	\N	\N	10
282	24	5	0	0	0	0	8	8	8	8
283	24	6	0	0	0	0	8	8	8	8
284	24	7	0	0	0	0	8	8	8	8
285	24	8	0	0	0	0	8	8	8	8
286	24	9	0	0	0	0	8	8	8	8
287	24	10	0	0	0	0	8	8	8	8
288	24	11	0	0	0	0	8	8	8	8
289	25	0	4	7	15	2	\N	\N	17	\N
290	25	1	4	6	15	1	\N	\N	17	\N
291	25	2	6	0	13	0	35	\N	\N	10
292	25	3	8	0	11	0	\N	\N	\N	10
293	25	4	0	0	0	0	8	8	8	8
294	25	5	0	0	0	0	8	8	8	8
295	25	6	0	0	0	0	8	8	8	8
296	25	7	0	0	0	0	8	8	8	8
297	25	8	0	0	0	0	8	8	8	8
298	25	9	0	0	0	0	8	8	8	8
299	25	10	0	0	0	0	8	8	8	8
300	25	11	0	0	0	0	8	8	8	8
301	26	0	4	8	15	2	\N	\N	17	\N
302	26	1	4	7	15	2	\N	\N	17	\N
303	26	2	4	6	14	1	\N	\N	17	\N
304	26	3	6	0	13	0	35	\N	\N	10
305	26	4	8	0	11	0	\N	\N	\N	10
306	26	5	0	0	0	0	8	8	8	8
307	26	6	0	0	0	0	8	8	8	8
308	26	7	0	0	0	0	8	8	8	8
309	26	8	0	0	0	0	8	8	8	8
310	26	9	0	0	0	0	8	8	8	8
311	26	10	0	0	0	0	8	8	8	8
312	26	11	0	0	0	0	8	8	8	8
313	27	0	4	8	15	2	\N	\N	17	\N
314	27	1	4	7	15	2	\N	\N	17	\N
315	27	2	4	6	14	1	\N	\N	17	\N
316	27	3	4	5	13	1	\N	\N	17	\N
317	27	4	6	0	12	0	35	\N	\N	10
318	27	5	8	0	11	0	\N	\N	\N	10
319	27	6	0	0	0	0	8	8	8	8
320	27	7	0	0	0	0	8	8	8	8
321	27	8	0	0	0	0	8	8	8	8
322	27	9	0	0	0	0	8	8	8	8
323	27	10	0	0	0	0	8	8	8	8
324	27	11	0	0	0	0	8	8	8	8
325	28	0	8	8	15	2	\N	\N	11	3
326	28	1	8	8	14	2	\N	\N	\N	3
327	28	2	7	7	13	2	\N	\N	\N	3
328	28	3	6	6	12	1	\N	\N	\N	3
329	28	4	5	5	11	1	\N	\N	\N	\N
330	28	5	4	0	10	0	\N	\N	\N	10
331	28	6	0	0	0	0	8	8	8	8
332	28	7	0	0	0	0	8	8	8	8
333	28	8	0	0	0	0	8	8	8	8
334	28	9	0	0	0	0	8	8	8	8
335	28	10	0	0	0	0	8	8	8	8
336	28	11	0	0	0	0	8	8	8	8
337	29	0	10	8	16	2	27	\N	11	3
338	29	1	9	8	15	2	\N	\N	\N	3
339	29	2	8	8	14	2	\N	\N	\N	3
340	29	3	7	7	13	2	\N	\N	\N	3
341	29	4	6	6	12	1	\N	\N	\N	3
342	29	5	5	5	11	1	\N	\N	\N	\N
343	29	6	4	0	10	0	\N	\N	\N	10
344	29	7	0	0	0	0	8	8	8	8
345	29	8	0	0	0	0	8	8	8	8
346	29	9	0	0	0	0	8	8	8	8
347	29	10	0	0	0	0	8	8	8	8
348	29	11	0	0	0	0	8	8	8	8
349	30	0	10	9	16	2	27	\N	11	3
350	30	1	9	8	15	2	\N	\N	\N	3
351	30	2	8	8	14	2	\N	\N	\N	3
352	30	3	8	7	13	2	\N	\N	\N	3
353	30	4	7	6	12	1	\N	\N	\N	3
354	30	5	6	6	11	1	\N	\N	\N	3
355	30	6	5	5	11	1	\N	\N	\N	\N
356	30	7	4	0	10	0	\N	\N	\N	10
357	30	8	0	0	0	0	8	8	8	8
358	30	9	0	0	0	0	8	8	8	8
359	30	10	0	0	0	0	8	8	8	8
360	30	11	0	0	0	0	8	8	8	8
361	31	0	6	6	12	1	\N	\N	\N	\N
362	31	1	10	8	16	3	27	\N	\N	3
363	31	2	9	7	15	2	27	\N	\N	3
364	31	3	8	6	14	2	\N	\N	\N	3
365	31	4	6	0	13	0	\N	\N	\N	10
366	31	5	0	0	0	0	8	8	8	8
367	31	6	0	0	0	0	8	8	8	8
368	31	7	0	0	0	0	8	8	8	8
369	31	8	0	0	0	0	8	8	8	8
370	31	9	0	0	0	0	8	8	8	8
371	31	10	0	0	0	0	8	8	8	8
372	31	11	0	0	0	0	8	8	8	8
373	32	0	6	6	12	1	\N	\N	\N	\N
374	32	1	10	8	16	3	27	\N	\N	3
375	32	2	9	8	15	2	27	\N	\N	3
376	32	3	8	7	14	2	27	\N	\N	3
377	32	4	7	7	14	1	\N	\N	\N	3
378	32	5	6	0	13	0	\N	\N	\N	10
379	32	6	0	0	0	0	8	8	8	8
380	32	7	0	0	0	0	8	8	8	8
381	32	8	0	0	0	0	8	8	8	8
382	32	9	0	0	0	0	8	8	8	8
383	32	10	0	0	0	0	8	8	8	8
384	32	11	0	0	0	0	8	8	8	8
385	33	0	6	6	12	1	\N	\N	\N	\N
386	33	1	10	9	16	3	27	40	\N	3
387	33	2	9	8	15	2	27	\N	\N	3
388	33	3	8	7	15	2	27	\N	\N	3
389	33	4	7	7	14	1	\N	\N	\N	3
390	33	5	6	0	13	0	\N	\N	\N	10
391	33	6	0	0	0	0	8	8	8	8
392	33	7	0	0	0	0	8	8	8	8
393	33	8	0	0	0	0	8	8	8	8
394	33	9	0	0	0	0	8	8	8	8
395	33	10	0	0	0	0	8	8	8	8
396	33	11	0	0	0	0	8	8	8	8
397	34	0	8	10	15	3	31	36	37	3
398	34	1	8	10	15	3	31	36	\N	3
399	34	2	7	9	14	2	31	\N	\N	3
400	34	3	7	8	14	2	\N	\N	\N	3
401	34	4	6	7	13	2	\N	\N	\N	3
402	34	5	5	6	13	2	\N	\N	\N	3
403	34	6	4	5	12	1	\N	\N	\N	\N
404	34	7	4	0	11	0	\N	\N	\N	10
405	34	8	0	0	0	0	8	8	8	8
406	34	9	0	0	0	0	8	8	8	8
407	34	10	0	0	0	0	8	8	8	8
408	34	11	0	0	0	0	8	8	8	8
409	35	0	8	11	15	3	31	36	37	3
410	35	1	8	10	15	3	31	36	\N	3
411	35	2	7	9	14	3	31	\N	\N	3
412	35	3	7	8	14	2	\N	\N	\N	3
413	35	4	6	7	13	2	\N	\N	\N	3
414	35	5	5	6	13	2	\N	\N	\N	3
415	35	6	4	5	12	1	\N	\N	\N	3
416	35	7	4	4	11	1	\N	\N	\N	\N
417	35	8	4	0	10	0	\N	\N	\N	10
418	35	9	0	0	0	0	8	8	8	8
419	35	10	0	0	0	0	8	8	8	8
420	35	11	0	0	0	0	8	8	8	8
421	36	0	8	11	16	3	31	40	37	3
422	36	1	8	10	15	3	31	36	37	3
423	36	2	8	9	14	3	31	\N	\N	3
424	36	3	7	8	14	3	31	\N	\N	3
425	36	4	6	7	13	2	\N	\N	\N	3
426	36	5	5	6	13	2	\N	\N	\N	3
427	36	6	4	6	12	2	\N	\N	\N	3
428	36	7	4	5	11	1	\N	\N	\N	\N
429	36	8	4	0	10	0	\N	\N	\N	10
430	36	9	0	0	0	0	8	8	8	8
431	36	10	0	0	0	0	8	8	8	8
432	36	11	0	0	0	0	8	8	8	8
433	37	0	8	10	15	2	31	18	\N	\N
434	37	1	8	9	15	2	31	18	\N	\N
435	37	2	7	8	14	2	\N	18	\N	\N
436	37	3	6	7	13	2	\N	\N	\N	\N
437	37	4	5	6	13	1	\N	\N	\N	\N
438	37	5	4	5	12	1	\N	\N	\N	\N
439	37	6	4	0	10	0	\N	\N	\N	10
440	37	7	0	0	0	0	8	8	8	8
441	37	8	0	0	0	0	8	8	8	8
442	37	9	0	0	0	0	8	8	8	8
443	37	10	0	0	0	0	8	8	8	8
444	37	11	0	0	0	0	8	8	8	8
445	38	0	8	10	15	3	31	18	37	\N
446	38	1	8	10	15	2	31	18	\N	\N
447	38	2	7	9	14	2	\N	18	\N	\N
448	38	3	6	8	13	2	\N	18	\N	\N
449	38	4	5	7	13	2	\N	\N	\N	\N
450	38	5	4	6	12	1	\N	\N	\N	\N
451	38	6	4	5	11	1	\N	\N	\N	\N
452	38	7	4	0	10	0	\N	\N	\N	10
453	38	8	0	0	0	0	8	8	8	8
454	38	9	0	0	0	0	8	8	8	8
455	38	10	0	0	0	0	8	8	8	8
456	38	11	0	0	0	0	8	8	8	8
457	39	0	8	11	15	3	31	18	37	\N
458	39	1	8	10	15	3	31	18	37	\N
459	39	2	8	9	14	2	\N	18	\N	\N
460	39	3	7	8	13	2	\N	18	\N	\N
461	39	4	6	7	13	2	\N	\N	\N	\N
462	39	5	5	6	12	2	\N	\N	\N	\N
463	39	6	4	5	11	1	\N	\N	\N	\N
464	39	7	4	0	10	0	\N	\N	\N	10
465	39	8	0	0	0	0	8	8	8	8
466	39	9	0	0	0	0	8	8	8	8
467	39	10	0	0	0	0	8	8	8	8
468	39	11	0	0	0	0	8	8	8	8
469	40	0	8	8	15	2	\N	39	\N	3
470	40	1	8	8	14	2	\N	39	\N	3
471	40	2	7	7	13	2	\N	\N	\N	3
472	40	3	6	6	12	1	\N	\N	\N	3
473	40	4	4	0	10	0	\N	\N	\N	10
474	40	5	0	0	0	0	8	8	8	8
475	40	6	0	0	0	0	8	8	8	8
476	40	7	0	0	0	0	8	8	8	8
477	40	8	0	0	0	0	8	8	8	8
478	40	9	0	0	0	0	8	8	8	8
479	40	10	0	0	0	0	8	8	8	8
480	40	11	0	0	0	0	8	8	8	8
481	41	0	8	8	15	2	\N	39	\N	3
482	41	1	8	8	14	2	\N	39	\N	3
483	41	2	8	7	13	2	\N	39	\N	3
484	41	3	7	6	12	2	\N	\N	\N	3
485	41	4	6	5	11	1	\N	\N	\N	3
486	41	5	4	0	10	0	\N	\N	\N	10
487	41	6	0	0	0	0	8	8	8	8
488	41	7	0	0	0	0	8	8	8	8
489	41	8	0	0	0	0	8	8	8	8
490	41	9	0	0	0	0	8	8	8	8
491	41	10	0	0	0	0	8	8	8	8
492	41	11	0	0	0	0	8	8	8	8
493	42	0	8	9	15	3	\N	39	\N	3
494	42	1	8	8	14	2	\N	39	\N	3
495	42	2	8	7	13	2	\N	39	\N	3
496	42	3	7	6	12	2	\N	39	\N	3
497	42	4	6	5	11	1	\N	\N	\N	3
498	42	5	4	0	10	0	\N	\N	\N	10
499	42	6	0	0	0	0	8	8	8	8
500	42	7	0	0	0	0	8	8	8	8
501	42	8	0	0	0	0	8	8	8	8
502	42	9	0	0	0	0	8	8	8	8
503	42	10	0	0	0	0	8	8	8	8
504	42	11	0	0	0	0	8	8	8	8
505	43	0	8	8	15	2	\N	36	\N	\N
506	43	1	8	8	14	2	\N	36	\N	\N
507	43	2	8	7	13	2	\N	36	\N	\N
508	43	3	7	6	13	2	\N	36	\N	\N
509	43	4	6	6	12	1	\N	36	\N	\N
510	43	5	5	5	11	1	\N	\N	\N	\N
511	43	6	4	5	10	1	\N	\N	\N	\N
512	43	7	0	0	0	0	8	8	8	8
513	43	8	0	0	0	0	8	8	8	8
514	43	9	0	0	0	0	8	8	8	8
515	43	10	0	0	0	0	8	8	8	8
516	43	11	0	0	0	0	8	8	8	8
517	44	0	8	8	15	3	\N	36	\N	\N
518	44	1	8	8	14	3	\N	36	\N	\N
519	44	2	8	8	13	2	\N	36	\N	\N
520	44	3	7	7	13	2	\N	36	\N	\N
521	44	4	6	6	12	2	\N	36	\N	\N
522	44	5	5	5	13	1	\N	\N	32	\N
523	44	6	4	5	10	1	\N	\N	\N	\N
524	44	7	0	0	0	0	8	8	8	8
525	44	8	0	0	0	0	8	8	8	8
526	44	9	0	0	0	0	8	8	8	8
527	44	10	0	0	0	0	8	8	8	8
528	44	11	0	0	0	0	8	8	8	8
529	45	0	8	9	16	3	\N	36	\N	\N
530	45	1	8	9	15	3	\N	36	\N	\N
531	45	2	8	8	14	3	\N	36	\N	\N
532	45	3	7	8	13	2	\N	36	\N	\N
533	45	4	7	7	13	2	\N	36	\N	\N
534	45	5	6	6	14	1	\N	\N	32	\N
535	45	6	5	5	12	1	\N	\N	32	\N
536	45	7	4	5	10	1	\N	\N	\N	\N
537	45	8	0	0	0	0	8	8	8	8
538	45	9	0	0	0	0	8	8	8	8
539	45	10	0	0	0	0	8	8	8	8
540	45	11	0	0	0	0	8	8	8	8
541	46	0	4	7	17	2	\N	\N	37	\N
542	46	1	4	7	16	1	\N	\N	37	\N
543	46	2	4	7	16	1	\N	\N	\N	\N
544	46	3	4	7	15	1	\N	\N	\N	\N
545	46	4	4	7	14	1	\N	\N	\N	\N
546	46	5	4	6	14	1	\N	\N	\N	\N
547	46	6	4	6	13	1	\N	\N	\N	\N
548	46	7	4	5	12	1	\N	\N	\N	\N
549	46	8	0	0	0	0	8	8	8	8
550	46	9	0	0	0	0	8	8	8	8
551	46	10	0	0	0	0	8	8	8	8
552	46	11	0	0	0	0	8	8	8	8
553	47	0	4	8	17	2	\N	\N	37	\N
554	47	1	4	8	17	2	\N	\N	37	\N
555	47	2	4	7	16	2	\N	\N	37	\N
556	47	3	4	7	15	1	\N	\N	\N	\N
557	47	4	4	7	14	1	\N	\N	\N	\N
558	47	5	4	6	14	1	\N	\N	\N	\N
559	47	6	4	6	14	1	\N	\N	\N	\N
560	47	7	4	6	13	1	\N	\N	\N	\N
561	47	8	4	5	12	1	\N	\N	\N	\N
562	47	9	0	0	0	0	8	8	8	8
563	47	10	0	0	0	0	8	8	8	8
564	47	11	0	0	0	0	8	8	8	8
565	48	0	4	9	18	2	\N	\N	37	\N
566	48	1	4	8	17	2	\N	\N	37	\N
567	48	2	4	8	16	2	\N	\N	37	\N
568	48	3	4	7	15	2	\N	\N	\N	\N
569	48	4	4	7	14	2	\N	\N	\N	\N
570	48	5	4	7	14	1	\N	\N	\N	\N
571	48	6	4	6	14	1	\N	\N	\N	\N
572	48	7	4	6	13	1	\N	\N	\N	\N
573	48	8	4	5	12	1	\N	\N	\N	\N
574	48	9	0	0	0	0	8	8	8	8
575	48	10	0	0	0	0	8	8	8	8
576	48	11	0	0	0	0	8	8	8	8
577	49	0	10	9	16	2	13	39	\N	3
578	49	1	10	8	15	2	13	39	\N	3
579	49	2	9	8	15	2	13	\N	\N	3
580	49	3	6	7	14	2	\N	\N	\N	3
581	49	4	6	6	13	1	\N	\N	\N	3
582	49	5	5	5	12	1	\N	\N	\N	\N
583	49	6	4	0	10	0	\N	\N	\N	10
584	49	7	0	0	0	0	8	8	8	8
585	49	8	0	0	0	0	8	8	8	8
586	49	9	0	0	0	0	8	8	8	8
587	49	10	0	0	0	0	8	8	8	8
588	49	11	0	0	0	0	8	8	8	8
589	50	0	10	9	16	3	13	39	\N	3
590	50	1	10	8	15	2	13	39	\N	3
591	50	2	9	8	15	2	13	\N	\N	3
592	50	3	8	7	14	2	13	\N	\N	3
593	50	4	6	7	13	2	\N	\N	\N	3
594	50	5	6	6	12	1	\N	\N	\N	3
595	50	6	5	5	11	1	\N	\N	\N	\N
596	50	7	4	0	10	0	\N	\N	\N	10
597	50	8	0	0	0	0	8	8	8	8
598	50	9	0	0	0	0	8	8	8	8
599	50	10	0	0	0	0	8	8	8	8
600	50	11	0	0	0	0	8	8	8	8
601	51	0	10	10	16	3	13	39	\N	3
602	51	1	10	9	16	3	13	39	\N	3
603	51	2	9	8	15	2	13	\N	\N	3
604	51	3	8	7	15	2	13	\N	\N	3
605	51	4	8	7	14	2	\N	\N	\N	3
606	51	5	6	6	13	2	\N	\N	\N	3
607	51	6	6	6	12	1	\N	\N	\N	3
608	51	7	5	5	11	1	\N	\N	\N	\N
609	51	8	4	0	10	0	\N	\N	\N	10
610	51	9	0	0	0	0	8	8	8	8
611	51	10	0	0	0	0	8	8	8	8
612	51	11	0	0	0	0	8	8	8	8
613	52	0	8	9	16	3	\N	\N	25	\N
614	52	1	8	8	15	3	\N	\N	25	\N
615	52	2	7	8	15	2	\N	\N	25	\N
616	52	3	7	8	14	2	\N	\N	\N	\N
617	52	4	7	7	14	2	\N	\N	\N	\N
618	52	5	7	6	13	2	\N	\N	\N	\N
619	52	6	6	6	12	1	\N	\N	\N	\N
620	52	7	4	5	11	1	\N	\N	\N	\N
621	52	8	0	0	0	0	8	8	8	8
622	52	9	0	0	0	0	8	8	8	8
623	52	10	0	0	0	0	8	8	8	8
624	52	11	0	0	0	0	8	8	8	8
625	53	0	8	9	16	3	\N	\N	25	\N
626	53	1	8	8	16	3	\N	\N	25	\N
627	53	2	8	8	15	3	\N	\N	25	\N
628	53	3	7	8	14	2	\N	\N	25	\N
629	53	4	7	7	14	2	\N	\N	\N	\N
630	53	5	7	6	13	2	\N	\N	\N	\N
631	53	6	6	6	13	2	\N	\N	\N	\N
632	53	7	5	5	12	1	\N	\N	\N	\N
633	53	8	4	5	11	1	\N	\N	\N	\N
634	53	9	0	0	0	0	8	8	8	8
635	53	10	0	0	0	0	8	8	8	8
636	53	11	0	0	0	0	8	8	8	8
637	54	0	8	10	16	3	\N	\N	25	\N
638	54	1	8	9	16	3	\N	\N	25	\N
639	54	2	8	8	16	3	\N	\N	25	\N
640	54	3	7	8	15	2	\N	\N	25	\N
641	54	4	7	7	15	2	\N	\N	25	\N
642	54	5	7	7	14	2	\N	\N	\N	\N
643	54	6	6	6	13	2	\N	\N	\N	\N
644	54	7	5	5	12	1	\N	\N	\N	\N
645	54	8	4	5	11	1	\N	\N	\N	\N
646	54	9	0	0	0	0	8	8	8	8
647	54	10	0	0	0	0	8	8	8	8
648	54	11	0	0	0	0	8	8	8	8
649	55	0	6	6	12	1	14	\N	\N	\N
650	55	1	6	4	11	1	\N	\N	\N	\N
651	55	2	4	11	16	4	6	\N	37	3
652	55	3	4	10	16	4	6	\N	37	3
653	55	4	8	9	15	3	\N	\N	\N	3
654	55	5	7	8	15	3	\N	\N	\N	3
655	55	6	5	7	13	2	\N	\N	\N	3
656	55	7	4	0	11	0	\N	\N	\N	10
657	55	8	0	0	0	0	8	8	8	8
658	55	9	0	0	0	0	8	8	8	8
659	55	10	0	0	0	0	8	8	8	8
660	55	11	0	0	0	0	8	8	8	8
661	56	0	6	6	12	1	14	\N	\N	\N
662	56	1	6	4	11	1	\N	\N	\N	\N
663	56	2	4	11	17	4	6	\N	37	3
664	56	3	4	10	16	4	6	\N	37	3
665	56	4	8	9	15	3	\N	\N	37	3
666	56	5	7	8	15	3	\N	\N	\N	3
667	56	6	6	7	14	2	\N	\N	\N	3
668	56	7	5	6	13	2	\N	\N	\N	3
669	56	8	4	0	11	0	\N	\N	\N	10
670	56	9	0	0	0	0	8	8	8	8
671	56	10	0	0	0	0	8	8	8	8
672	56	11	0	0	0	0	8	8	8	8
673	57	0	6	6	12	1	14	\N	\N	\N
674	57	1	6	4	11	1	\N	\N	\N	\N
675	57	2	4	12	17	4	6	\N	37	3
676	57	3	4	11	16	4	6	\N	37	3
677	57	4	4	10	16	3	6	\N	37	3
678	57	5	8	9	15	3	\N	\N	\N	3
679	57	6	7	8	14	2	\N	\N	\N	3
680	57	7	6	7	13	2	\N	\N	\N	3
681	57	8	5	6	12	2	\N	\N	\N	3
682	57	9	4	0	11	0	\N	\N	\N	10
683	57	10	0	0	0	0	8	8	8	8
684	57	11	0	0	0	0	8	8	8	8
685	58	0	8	7	13	1	\N	\N	\N	\N
686	58	1	4	11	17	3	6	40	37	3
687	58	2	4	10	17	3	6	40	37	3
688	58	3	8	9	16	3	\N	40	\N	3
689	58	4	7	8	15	3	\N	\N	\N	4
690	58	5	6	7	15	2	\N	\N	\N	4
691	58	6	5	6	13	2	\N	\N	\N	\N
692	58	7	4	0	11	0	\N	\N	\N	10
693	58	8	0	0	0	0	8	8	8	8
694	58	9	0	0	0	0	8	8	8	8
695	58	10	0	0	0	0	8	8	8	8
696	58	11	0	0	0	0	8	8	8	8
697	59	0	8	7	13	1	\N	\N	\N	\N
698	59	1	4	11	17	3	6	40	37	3
699	59	2	4	10	17	3	6	40	37	3
700	59	3	8	10	16	3	\N	40	\N	3
701	59	4	8	9	15	3	\N	40	\N	3
702	59	5	7	8	15	3	\N	\N	\N	4
703	59	6	6	7	14	2	\N	\N	\N	4
704	59	7	5	6	13	2	\N	\N	\N	\N
705	59	8	4	0	11	0	\N	\N	\N	10
706	59	9	0	0	0	0	8	8	8	8
707	59	10	0	0	0	0	8	8	8	8
708	59	11	0	0	0	0	8	8	8	8
709	60	0	8	7	13	1	\N	\N	\N	\N
710	60	1	4	12	17	3	6	40	37	3
711	60	2	4	11	17	3	6	40	37	3
712	60	3	4	10	16	3	6	40	37	3
713	60	4	8	10	15	3	\N	40	\N	3
714	60	5	7	9	15	2	\N	\N	\N	3
715	60	6	6	8	15	4	\N	\N	\N	4
716	60	7	5	7	14	3	\N	\N	\N	4
717	60	8	5	6	13	2	\N	\N	\N	\N
718	60	9	4	0	11	0	\N	\N	\N	10
719	60	10	0	0	0	0	8	8	8	8
720	60	11	0	0	0	0	8	8	8	8
721	61	0	12	10	19	3	13	33	17	3
722	61	1	11	10	18	3	13	33	17	3
723	61	2	10	9	18	2	13	33	17	3
724	61	3	10	9	17	2	13	33	17	3
725	61	4	9	9	17	2	13	33	\N	3
726	61	5	9	8	16	2	13	\N	\N	3
727	61	6	8	7	16	2	13	\N	\N	3
728	61	7	8	7	15	1	13	\N	\N	\N
729	61	8	7	6	14	1	13	\N	\N	\N
730	61	9	0	0	0	0	8	8	8	8
731	61	10	0	0	0	0	8	8	8	8
732	61	11	0	0	0	0	8	8	8	8
733	62	0	8	12	17	5	30	12	29	\N
734	62	1	8	11	17	5	30	12	29	\N
735	62	2	8	10	17	4	30	12	29	\N
736	62	3	8	9	17	4	30	12	29	\N
737	62	4	7	8	16	3	\N	12	29	\N
738	62	5	6	8	15	3	\N	12	29	\N
739	62	6	5	7	14	2	\N	12	29	\N
740	62	7	4	7	13	2	\N	12	29	\N
741	62	8	0	0	0	0	8	8	8	8
742	62	9	0	0	0	0	8	8	8	8
743	62	10	0	0	0	0	8	8	8	8
744	62	11	0	0	0	0	8	8	8	8
745	63	0	10	11	18	4	1	36	11	21
746	63	1	10	10	18	3	1	36	11	21
747	63	2	10	9	17	3	1	36	11	\N
748	63	3	10	9	17	3	1	36	\N	\N
749	63	4	10	8	16	3	1	36	\N	\N
750	63	5	9	8	16	3	1	\N	\N	\N
751	63	6	8	7	15	2	1	\N	\N	\N
752	63	7	7	7	15	2	1	\N	\N	\N
753	63	8	6	7	14	1	1	\N	\N	\N
754	63	9	0	0	0	0	8	8	8	8
755	63	10	0	0	0	0	8	8	8	8
756	63	11	0	0	0	0	8	8	8	8
757	64	0	6	11	17	4	31	\N	16	\N
758	64	1	6	10	16	4	31	\N	16	\N
759	64	2	6	9	16	4	31	\N	37	\N
760	64	3	6	8	16	3	\N	\N	37	\N
761	64	4	5	8	15	3	\N	\N	37	\N
762	64	5	5	7	15	3	\N	\N	37	\N
763	64	6	5	6	15	2	\N	\N	\N	\N
764	64	7	5	6	15	2	\N	\N	\N	\N
765	64	8	4	5	15	2	\N	\N	\N	\N
766	64	9	4	5	15	2	\N	\N	\N	\N
767	64	10	0	0	0	0	8	8	8	8
768	64	11	0	0	0	0	8	8	8	8
769	65	0	12	10	17	3	13	39	2	\N
770	65	1	11	10	17	3	13	39	2	\N
771	65	2	10	9	17	3	13	39	2	\N
772	65	3	10	9	16	2	13	39	\N	\N
773	65	4	9	8	16	2	13	\N	\N	\N
774	65	5	9	8	15	2	13	\N	\N	\N
775	65	6	8	7	15	2	13	\N	\N	\N
776	65	7	6	7	15	1	\N	\N	\N	\N
777	65	8	4	6	14	1	\N	\N	\N	\N
778	65	9	0	0	0	0	8	8	8	8
779	65	10	0	0	0	0	8	8	8	8
780	65	11	0	0	0	0	8	8	8	8
781	66	0	12	12	19	5	13	36	25	\N
782	66	1	12	11	18	4	13	36	25	\N
783	66	2	11	11	17	3	13	36	25	\N
784	66	3	10	10	17	3	13	36	25	\N
785	66	4	9	9	16	3	13	36	25	\N
786	66	5	8	9	16	2	13	\N	25	\N
787	66	6	8	8	15	2	13	\N	25	\N
788	66	7	6	7	14	2	13	\N	37	\N
789	66	8	6	7	13	2	13	\N	16	\N
790	66	9	0	0	0	0	8	8	8	8
791	66	10	0	0	0	0	8	8	8	8
792	66	11	0	0	0	0	8	8	8	8
793	67	0	6	11	16	4	24	22	23	19
794	67	1	6	10	16	4	24	22	23	19
795	67	2	6	10	16	3	\N	22	23	19
796	67	3	6	9	16	3	\N	22	23	19
797	67	4	5	8	16	3	\N	22	23	\N
798	67	5	5	8	15	2	\N	\N	23	\N
799	67	6	5	7	15	2	\N	\N	23	\N
800	67	7	4	7	15	2	\N	\N	23	\N
801	67	8	4	7	14	1	\N	\N	23	\N
802	67	9	2	6	14	1	\N	\N	23	\N
803	67	10	0	0	0	0	8	8	8	8
804	67	11	0	0	0	0	8	8	8	8
805	68	0	10	14	17	5	13	36	16	3
806	68	1	10	13	16	5	13	36	16	3
807	68	2	10	13	18	4	13	36	37	3
808	68	3	9	12	17	4	13	36	37	3
809	68	4	9	12	16	4	13	36	37	3
810	68	5	9	11	16	3	13	\N	37	3
811	68	6	9	11	15	3	13	\N	\N	3
812	68	7	8	10	15	3	13	\N	\N	3
813	68	8	8	10	15	2	13	\N	\N	3
814	68	9	5	9	15	2	\N	\N	\N	3
815	68	10	4	8	14	1	\N	\N	\N	\N
816	68	11	0	0	0	0	8	8	8	8
817	69	0	10	11	16	3	14	40	2	7
818	69	1	8	11	15	3	14	40	2	7
819	69	2	8	10	14	3	14	40	2	7
820	69	3	8	9	14	2	\N	40	2	3
821	69	4	8	8	14	2	\N	40	2	3
822	69	5	7	8	13	2	\N	\N	2	3
823	69	6	6	7	12	2	\N	\N	\N	3
824	69	7	5	10	11	4	\N	\N	\N	4
825	69	8	4	8	10	2	\N	\N	\N	4
826	69	9	4	6	10	1	\N	\N	\N	\N
827	69	10	4	0	10	0	\N	\N	\N	10
828	69	11	0	0	0	0	8	8	8	8
829	70	0	8	12	15	3	\N	18	\N	20
830	70	1	8	11	15	2	\N	18	\N	20
831	70	2	8	10	14	2	\N	18	\N	20
832	70	3	7	9	14	2	\N	18	\N	20
833	70	4	6	8	13	1	\N	18	\N	20
834	70	5	5	7	12	1	\N	\N	\N	20
835	70	6	4	6	12	1	\N	\N	\N	\N
836	70	7	4	6	11	1	\N	\N	\N	\N
837	70	8	4	6	10	1	\N	\N	\N	\N
838	70	9	4	0	10	0	\N	\N	\N	10
839	70	10	0	0	0	0	8	8	8	8
840	70	11	0	0	0	0	8	8	8	8
841	71	0	8	9	17	2	\N	22	9	\N
842	71	1	8	9	16	2	\N	22	9	\N
843	71	2	8	8	16	2	\N	22	9	\N
844	71	3	8	8	15	2	\N	22	9	\N
845	71	4	8	7	15	1	\N	15	9	\N
846	71	5	7	7	15	1	\N	15	9	\N
847	71	6	6	6	14	1	\N	\N	\N	\N
848	71	7	5	6	13	1	\N	\N	\N	\N
849	71	8	4	6	12	1	\N	\N	\N	\N
850	71	9	4	6	11	1	\N	\N	\N	\N
851	71	10	4	0	10	0	\N	\N	\N	10
852	71	11	0	0	0	0	8	8	8	8
853	72	0	8	10	16	2	35	34	11	\N
854	72	1	8	9	16	2	35	34	11	\N
855	72	2	8	9	15	2	35	34	\N	\N
856	72	3	8	8	15	2	35	34	\N	\N
857	72	4	8	7	15	2	35	34	\N	\N
858	72	5	8	7	14	2	35	\N	\N	\N
859	72	6	7	6	13	2	35	\N	\N	\N
860	72	7	6	6	12	1	35	\N	\N	\N
861	72	8	5	6	11	1	\N	\N	\N	\N
862	72	9	4	6	10	1	\N	\N	\N	\N
863	72	10	4	0	10	0	\N	\N	\N	10
864	72	11	0	0	0	0	8	8	8	8
865	73	0	10	11	16	3	27	36	2	3
866	73	1	9	10	16	3	27	36	2	3
867	73	2	9	9	16	3	27	\N	2	3
868	73	3	8	8	16	3	27	\N	2	\N
869	73	4	8	8	15	2	27	\N	2	\N
870	73	5	7	7	15	2	\N	\N	2	\N
871	73	6	6	6	14	2	\N	\N	\N	\N
872	73	7	5	6	13	2	\N	\N	\N	\N
873	73	8	4	6	12	1	\N	\N	\N	\N
874	73	9	4	0	10	0	\N	\N	\N	10
875	73	10	0	0	0	0	8	8	8	8
876	73	11	0	0	0	0	8	8	8	8
877	74	0	10	10	15	2	24	12	\N	20
878	74	1	9	9	15	2	24	12	\N	20
879	74	2	8	8	15	2	24	12	\N	20
880	74	3	8	8	15	2	24	\N	\N	20
881	74	4	8	7	14	1	\N	\N	\N	20
882	74	5	7	7	13	1	\N	\N	\N	\N
883	74	6	6	6	12	1	\N	\N	\N	\N
884	74	7	5	6	11	1	\N	\N	\N	\N
885	74	8	4	6	10	1	\N	\N	\N	\N
886	74	9	4	0	10	0	\N	\N	\N	10
887	74	10	0	0	0	0	8	8	8	8
888	74	11	0	0	0	0	8	8	8	8
889	75	0	10	10	16	2	30	15	25	\N
890	75	1	9	9	15	2	30	15	25	\N
891	75	2	8	8	15	2	30	15	25	\N
892	75	3	8	8	15	1	\N	15	25	\N
893	75	4	8	7	15	1	\N	15	25	\N
894	75	5	8	7	14	1	\N	15	\N	\N
895	75	6	7	6	14	1	\N	15	\N	\N
896	75	7	6	6	13	1	\N	15	\N	\N
897	75	8	5	6	12	1	\N	\N	\N	\N
898	75	9	4	0	11	0	\N	\N	\N	10
899	75	10	0	0	0	0	8	8	8	8
900	75	11	0	0	0	0	8	8	8	8
901	76	0	10	10	16	3	35	34	11	\N
902	76	1	10	10	16	2	35	34	\N	\N
903	76	2	10	9	15	2	35	34	\N	\N
904	76	3	9	9	15	2	35	34	\N	\N
905	76	4	8	8	15	2	35	34	\N	\N
906	76	5	8	8	14	2	35	\N	\N	\N
907	76	6	8	8	13	1	35	\N	\N	\N
908	76	7	7	7	12	1	35	\N	\N	\N
909	76	8	5	6	11	1	\N	\N	\N	\N
910	76	9	4	0	10	0	\N	\N	\N	10
911	76	10	0	0	0	0	8	8	8	8
912	76	11	0	0	0	0	8	8	8	8
913	77	0	10	12	16	4	14	36	2	7
914	77	1	9	11	16	4	14	36	2	7
915	77	2	8	11	16	4	\N	36	2	7
916	77	3	8	10	16	3	\N	36	2	\N
917	77	4	8	9	15	3	\N	36	2	\N
918	77	5	8	9	15	3	\N	\N	2	\N
919	77	6	8	8	14	2	\N	\N	2	\N
920	77	7	7	7	13	2	\N	\N	2	\N
921	77	8	6	6	13	2	\N	\N	\N	\N
922	77	9	5	6	12	2	\N	\N	\N	\N
923	77	10	4	0	10	0	\N	\N	\N	10
924	77	11	0	0	0	0	8	8	8	8
925	78	0	10	10	16	3	13	18	\N	20
926	78	1	9	10	15	3	13	18	\N	20
927	78	2	8	9	15	3	13	18	\N	20
928	78	3	8	8	14	2	13	\N	\N	20
929	78	4	8	7	14	2	13	\N	\N	20
930	78	5	8	7	14	1	13	\N	\N	20
931	78	6	8	7	13	1	13	\N	\N	\N
932	78	7	6	6	12	1	\N	\N	\N	\N
933	78	8	5	6	11	1	\N	\N	\N	\N
934	78	9	4	0	10	0	\N	\N	\N	10
935	78	10	0	0	0	0	8	8	8	8
936	78	11	0	0	0	0	8	8	8	8
937	79	0	4	11	16	2	5	22	25	\N
938	79	1	4	10	16	2	5	22	25	\N
939	79	2	8	9	16	2	\N	22	25	\N
940	79	3	8	8	15	2	\N	15	25	\N
941	79	4	8	7	15	1	\N	15	25	\N
942	79	5	8	7	14	1	\N	15	\N	\N
943	79	6	8	6	13	1	\N	15	\N	\N
944	79	7	7	6	12	1	\N	15	\N	\N
945	79	8	6	6	11	1	\N	\N	\N	\N
946	79	9	5	6	10	1	\N	\N	\N	\N
947	79	10	4	0	10	0	\N	\N	\N	10
948	79	11	0	0	0	0	8	8	8	8
949	80	0	10	10	17	2	35	34	11	\N
950	80	1	10	9	17	2	35	34	\N	\N
951	80	2	10	9	16	2	35	34	\N	\N
952	80	3	9	8	15	2	35	34	\N	\N
953	80	4	8	8	15	2	35	34	\N	\N
954	80	5	7	7	14	2	35	34	\N	\N
955	80	6	6	7	14	1	35	\N	\N	\N
956	80	7	5	6	13	1	35	\N	\N	\N
957	80	8	4	6	12	1	\N	\N	\N	\N
958	80	9	4	0	11	0	\N	\N	\N	10
959	80	10	0	0	0	0	8	8	8	8
960	80	11	0	0	0	0	8	8	8	8
961	81	0	10	11	16	3	27	36	\N	3
962	81	1	9	10	15	3	27	36	\N	3
963	81	2	8	9	15	3	\N	36	\N	3
964	81	3	8	9	15	2	\N	36	\N	3
965	81	4	8	8	15	2	\N	36	\N	3
966	81	5	8	7	14	2	\N	36	\N	\N
967	81	6	8	6	13	2	\N	36	\N	\N
968	81	7	7	6	12	2	\N	\N	\N	\N
969	81	8	6	6	11	1	\N	\N	\N	\N
970	81	9	5	6	11	1	\N	\N	\N	\N
971	81	10	4	0	10	0	\N	\N	\N	10
972	81	11	0	0	0	0	8	8	8	8
973	82	0	10	10	15	2	\N	12	17	20
974	82	1	10	9	15	2	\N	12	17	20
975	82	2	9	9	15	2	\N	12	17	\N
976	82	3	9	8	15	2	\N	12	17	\N
977	82	4	8	7	14	1	\N	12	\N	\N
978	82	5	8	7	14	1	\N	12	\N	\N
979	82	6	7	7	14	1	\N	\N	\N	\N
980	82	7	7	6	13	1	\N	\N	\N	\N
981	82	8	6	6	12	1	\N	\N	\N	\N
982	82	9	4	0	10	0	\N	\N	\N	10
983	82	10	0	0	0	0	8	8	8	8
984	82	11	0	0	0	0	8	8	8	8
985	83	0	8	10	18	2	\N	22	9	19
986	83	1	8	9	17	2	\N	22	9	19
987	83	2	8	9	17	2	\N	22	9	\N
988	83	3	8	8	16	2	\N	22	9	\N
989	83	4	8	7	16	2	\N	22	9	\N
990	83	5	8	7	16	1	\N	\N	9	\N
991	83	6	7	7	15	1	\N	\N	\N	\N
992	83	7	7	6	15	1	\N	\N	\N	\N
993	83	8	6	6	14	1	\N	\N	\N	\N
994	83	9	5	6	12	1	\N	\N	\N	\N
995	83	10	4	0	11	0	\N	\N	\N	10
996	83	11	0	0	0	0	8	8	8	8
997	84	0	10	11	16	2	30	34	11	\N
998	84	1	10	10	17	2	30	34	\N	\N
999	84	2	9	9	16	2	30	34	\N	\N
1000	84	3	8	9	16	2	30	34	\N	\N
1001	84	4	8	8	15	2	30	34	\N	\N
1002	84	5	8	8	15	2	\N	34	\N	\N
1003	84	6	7	7	14	1	\N	\N	\N	\N
1004	84	7	7	7	12	1	\N	\N	\N	\N
1005	84	8	5	6	11	1	\N	\N	\N	\N
1006	84	9	4	0	10	0	\N	\N	\N	10
1007	84	10	0	0	0	0	8	8	8	8
1008	84	11	0	0	0	0	8	8	8	8
1009	85	0	5	13	16	5	6	\N	2	3
1010	85	1	5	12	16	4	6	\N	2	3
1011	85	2	4	11	15	4	6	\N	2	3
1012	85	3	8	10	15	4	\N	\N	2	3
1013	85	4	8	9	15	3	\N	\N	2	3
1014	85	5	8	9	15	3	\N	\N	2	3
1015	85	6	8	8	14	3	\N	38	2	3
1016	85	7	7	8	14	2	\N	38	2	3
1017	85	8	6	7	13	2	\N	38	\N	3
1018	85	9	5	6	12	2	\N	\N	\N	\N
1019	85	10	4	0	11	0	\N	\N	\N	10
1020	85	11	0	0	0	0	8	8	8	8
1021	86	0	4	11	15	2	5	18	\N	\N
1022	86	1	4	10	15	2	5	18	\N	\N
1023	86	2	8	9	15	2	\N	\N	17	21
1024	86	3	8	8	15	1	\N	\N	17	21
1025	86	4	8	7	14	1	35	\N	\N	21
1026	86	5	8	7	14	1	35	\N	\N	20
1027	86	6	7	7	13	1	35	\N	\N	20
1028	86	7	7	6	12	1	\N	\N	\N	20
1029	86	8	5	6	11	1	\N	\N	\N	\N
1030	86	9	4	0	10	0	\N	\N	\N	10
1031	86	10	0	0	0	0	8	8	8	8
1032	86	11	0	0	0	0	8	8	8	8
1033	87	0	8	10	15	2	35	\N	25	\N
1034	87	1	8	9	15	2	35	\N	25	26
1035	87	2	8	8	15	2	35	\N	25	26
1036	87	3	7	8	15	2	35	\N	25	26
1037	87	4	6	8	15	1	35	\N	25	26
1038	87	5	6	8	14	1	35	38	25	\N
1039	87	6	6	7	13	1	35	38	\N	\N
1040	87	7	5	7	12	1	\N	\N	\N	\N
1041	87	8	4	6	12	1	\N	\N	\N	\N
1042	87	9	4	0	11	0	\N	\N	\N	10
1043	87	10	0	0	0	0	8	8	8	8
1044	87	11	0	0	0	0	8	8	8	8
1045	88	0	8	10	16	2	27	34	11	\N
1046	88	1	8	10	17	2	27	\N	\N	\N
1047	88	2	8	9	16	2	27	\N	\N	\N
1048	88	3	8	8	16	2	27	\N	\N	\N
1049	88	4	8	8	15	2	27	\N	\N	\N
1050	88	5	8	8	14	1	27	\N	\N	\N
1051	88	6	8	7	13	1	30	\N	\N	\N
1052	88	7	7	6	12	1	30	\N	\N	\N
1053	88	8	5	6	11	1	\N	\N	\N	\N
1054	88	9	4	0	10	0	\N	\N	\N	10
1055	88	10	0	0	0	0	8	8	8	8
1056	88	11	0	0	0	0	8	8	8	8
1057	89	0	8	12	18	4	14	36	23	7
1058	89	1	7	12	17	4	14	36	23	7
1059	89	2	6	11	16	4	\N	36	23	7
1060	89	3	6	10	15	4	\N	36	23	3
1061	89	4	6	9	15	3	\N	36	23	3
1062	89	5	6	9	15	3	\N	\N	23	3
1063	89	6	6	8	14	3	\N	\N	23	3
1064	89	7	5	8	14	2	\N	\N	\N	3
1065	89	8	5	7	13	2	\N	\N	\N	3
1066	89	9	5	9	12	4	\N	\N	\N	4
1067	89	10	4	8	11	3	\N	\N	\N	4
1068	89	11	0	0	0	0	8	8	8	8
1069	90	0	8	10	15	2	27	39	23	\N
1070	90	1	8	9	15	2	27	39	23	\N
1071	90	2	7	9	15	2	27	39	23	\N
1072	90	3	7	8	15	2	\N	39	23	\N
1073	90	4	6	7	14	2	\N	39	23	\N
1074	90	5	6	7	14	2	\N	39	23	3
1075	90	6	6	6	13	1	\N	\N	23	3
1076	90	7	5	6	13	1	\N	\N	23	3
1077	90	8	4	6	12	1	\N	\N	23	3
1078	90	9	4	0	11	0	\N	\N	\N	10
1079	90	10	0	0	0	0	8	8	8	8
1080	90	11	0	0	0	0	8	8	8	8
1081	91	0	8	11	17	3	31	33	23	\N
1082	91	1	7	10	16	3	31	33	23	\N
1083	91	2	6	10	16	3	\N	33	23	\N
1084	91	3	6	9	15	3	\N	33	23	\N
1085	91	4	6	8	15	2	\N	33	23	\N
1086	91	5	6	8	15	2	\N	15	23	\N
1087	91	6	6	7	14	2	\N	15	23	\N
1088	91	7	5	7	14	2	\N	15	23	\N
1089	91	8	5	6	14	2	\N	\N	\N	3
1090	91	9	4	6	13	2	\N	\N	\N	3
1091	91	10	4	7	12	3	\N	\N	\N	4
1092	91	11	0	0	0	0	8	8	8	8
1093	92	0	8	10	16	2	35	34	23	\N
1094	92	1	8	10	15	2	35	34	23	\N
1095	92	2	8	9	15	1	35	34	23	\N
1096	92	3	7	8	15	1	35	34	23	\N
1097	92	4	6	8	15	1	35	34	23	\N
1098	92	5	6	7	14	1	35	34	23	\N
1099	92	6	6	7	14	1	35	\N	23	\N
1100	92	7	5	0	13	0	35	\N	\N	10
1101	92	8	5	0	12	0	35	\N	\N	10
1102	92	9	4	0	11	0	35	\N	\N	10
1103	92	10	0	0	0	0	8	8	8	8
1104	92	11	0	0	0	0	8	8	8	8
1105	93	0	8	11	16	4	14	\N	2	3
1106	93	1	8	10	16	4	14	\N	2	3
1107	93	2	8	10	16	3	14	\N	2	3
1108	93	3	8	9	16	3	14	\N	2	3
1109	93	4	8	9	15	3	\N	\N	2	3
1110	93	5	8	9	15	2	\N	\N	2	3
1111	93	6	8	8	14	2	\N	\N	\N	3
1112	93	7	7	7	13	1	\N	\N	\N	3
1113	93	8	6	9	11	4	\N	\N	\N	4
1114	93	9	5	8	11	3	\N	\N	\N	4
1115	93	10	4	0	11	0	\N	\N	\N	10
1116	93	11	0	0	0	0	8	8	8	8
1117	94	0	8	13	18	3	\N	\N	9	7
1118	94	1	8	8	16	1	\N	\N	\N	26
1119	94	2	8	12	17	4	\N	33	\N	\N
1120	94	3	8	10	14	3	\N	\N	\N	19
1121	94	4	8	8	15	2	\N	18	\N	\N
1122	94	5	8	7	14	2	\N	12	\N	\N
1123	94	6	4	8	16	4	6	\N	\N	4
1124	94	7	7	6	13	2	13	\N	\N	\N
1125	94	8	6	6	17	1	\N	\N	\N	3
1126	94	9	5	6	12	3	\N	\N	\N	4
1127	94	10	4	0	10	0	\N	\N	\N	10
1128	94	11	0	0	0	0	8	8	8	8
1129	95	0	8	10	16	3	\N	22	\N	20
1130	95	1	8	10	15	2	\N	22	\N	20
1131	95	2	8	9	15	2	\N	22	\N	20
1132	95	3	8	8	15	1	\N	15	\N	20
1133	95	4	8	8	14	1	\N	15	\N	20
1134	95	5	8	7	14	1	\N	\N	\N	20
1135	95	6	7	6	13	1	\N	\N	\N	20
1136	95	7	6	5	12	1	\N	\N	\N	3
1137	95	8	5	7	10	3	\N	\N	\N	4
1138	95	9	4	0	10	0	\N	\N	\N	10
1139	95	10	0	0	0	0	8	8	8	8
1140	95	11	0	0	0	0	8	8	8	8
1141	96	0	10	10	16	2	35	34	\N	\N
1142	96	1	9	10	15	2	35	34	\N	\N
1143	96	2	8	10	15	1	\N	34	\N	\N
1144	96	3	8	9	15	1	\N	34	\N	\N
1145	96	4	8	8	14	1	\N	34	\N	\N
1146	96	5	8	7	14	1	\N	34	\N	\N
1147	96	6	7	7	13	1	\N	34	\N	\N
1148	96	7	6	6	12	1	\N	\N	\N	3
1149	96	8	5	8	11	2	\N	\N	\N	4
1150	96	9	4	0	10	0	\N	\N	\N	10
1151	96	10	0	0	0	0	8	8	8	8
1152	96	11	0	0	0	0	8	8	8	8
1153	97	0	8	13	16	5	31	\N	37	7
1154	97	1	8	12	15	4	31	\N	37	7
1155	97	2	7	11	15	4	\N	\N	37	3
1156	97	3	7	10	15	3	\N	\N	37	3
1157	97	4	6	10	15	3	\N	\N	37	3
1158	97	5	6	9	15	3	\N	\N	\N	3
1159	97	6	6	9	14	3	\N	\N	\N	3
1160	97	7	8	9	14	4	\N	\N	\N	4
1161	97	8	6	8	13	2	\N	\N	32	\N
1162	97	9	5	7	12	1	\N	\N	32	\N
1163	97	10	4	6	11	1	\N	\N	\N	\N
1164	97	11	0	0	0	0	8	8	8	8
1165	98	0	8	12	16	3	\N	18	37	\N
1166	98	1	8	11	15	3	\N	18	37	\N
1167	98	2	7	11	15	3	\N	18	37	\N
1168	98	3	7	10	15	3	\N	\N	37	3
1169	98	4	6	10	14	2	\N	\N	37	3
1170	98	5	6	9	14	2	\N	\N	\N	3
1171	98	6	8	9	13	3	\N	\N	\N	4
1172	98	7	6	8	12	2	\N	\N	32	\N
1173	98	8	5	7	11	1	\N	\N	32	\N
1174	98	9	4	0	10	0	\N	\N	\N	10
1175	98	10	0	0	0	0	8	8	8	8
1176	98	11	0	0	0	0	8	8	8	8
1177	99	0	8	12	16	3	\N	22	37	\N
1178	99	1	7	11	16	3	\N	22	37	\N
1179	99	2	7	11	15	3	\N	22	37	\N
1180	99	3	7	10	15	3	\N	22	37	\N
1181	99	4	6	10	15	2	\N	22	37	\N
1182	99	5	6	9	15	2	\N	22	\N	3
1183	99	6	6	9	14	2	\N	\N	\N	3
1184	99	7	8	8	14	3	\N	\N	\N	4
1185	99	8	5	7	13	2	\N	\N	32	\N
1186	99	9	4	6	12	1	\N	\N	32	\N
1187	99	10	4	0	11	0	\N	\N	\N	10
1188	99	11	0	0	0	0	8	8	8	8
1189	100	0	10	11	16	2	\N	34	37	\N
1190	100	1	9	11	15	2	\N	34	37	\N
1191	100	2	8	10	15	2	\N	34	37	\N
1192	100	3	8	10	15	2	\N	34	37	\N
1193	100	4	8	9	15	2	\N	34	37	\N
1194	100	5	7	9	15	3	\N	\N	\N	3
1195	100	6	7	8	14	2	\N	\N	\N	3
1196	100	7	8	9	14	3	\N	\N	\N	4
1197	100	8	6	6	13	1	\N	\N	32	\N
1198	100	9	5	6	12	1	\N	\N	32	\N
1199	100	10	4	0	11	0	\N	\N	\N	10
1200	100	11	0	0	0	0	8	8	8	8
1201	101	0	8	9	15	2	35	\N	\N	\N
1202	101	1	8	8	15	2	35	\N	\N	\N
1203	101	2	7	7	14	2	\N	\N	\N	\N
1204	101	3	6	6	13	1	\N	\N	\N	\N
1205	101	4	5	5	12	1	\N	\N	\N	\N
1206	101	5	4	0	11	0	\N	\N	\N	10
1207	101	6	0	0	0	0	8	8	8	8
1208	101	7	0	0	0	0	8	8	8	8
1209	101	8	0	0	0	0	8	8	8	8
1210	101	9	0	0	0	0	8	8	8	8
1211	101	10	0	0	0	0	8	8	8	8
1212	101	11	0	0	0	0	8	8	8	8
1213	102	0	8	8	14	1	35	\N	\N	\N
1214	102	1	8	7	14	1	35	\N	\N	\N
1215	102	2	6	6	13	1	\N	\N	\N	\N
1216	102	3	5	5	12	1	\N	\N	\N	\N
1217	102	4	4	0	11	0	\N	\N	\N	10
1218	102	5	0	0	0	0	8	8	8	8
1219	102	6	0	0	0	0	8	8	8	8
1220	102	7	0	0	0	0	8	8	8	8
1221	102	8	0	0	0	0	8	8	8	8
1222	102	9	0	0	0	0	8	8	8	8
1223	102	10	0	0	0	0	8	8	8	8
1224	102	11	0	0	0	0	8	8	8	8
1225	103	0	8	9	16	2	\N	40	2	\N
1226	103	1	8	8	15	2	\N	40	2	\N
1227	103	2	7	7	14	2	\N	\N	2	\N
1228	103	3	6	6	14	2	\N	\N	2	\N
1229	103	4	5	6	13	2	\N	\N	2	\N
1230	103	5	4	5	12	1	\N	\N	\N	\N
1231	103	6	4	5	11	1	\N	\N	\N	\N
1232	103	7	0	0	0	0	8	8	8	8
1233	103	8	0	0	0	0	8	8	8	8
1234	103	9	0	0	0	0	8	8	8	8
1235	103	10	0	0	0	0	8	8	8	8
1236	103	11	0	0	0	0	8	8	8	8
1237	104	0	8	8	15	2	27	\N	\N	\N
1238	104	1	7	7	14	2	27	\N	\N	\N
1239	104	2	5	5	13	1	27	\N	\N	\N
1240	104	3	0	0	0	0	8	8	8	8
1241	104	4	0	0	0	0	8	8	8	8
1242	104	5	0	0	0	0	8	8	8	8
1243	104	6	0	0	0	0	8	8	8	8
1244	104	7	0	0	0	0	8	8	8	8
1245	104	8	0	0	0	0	8	8	8	8
1246	104	9	0	0	0	0	8	8	8	8
1247	104	10	0	0	0	0	8	8	8	8
1248	104	11	0	0	0	0	8	8	8	8
1249	105	0	12	9	14	2	1	36	29	\N
1250	105	1	10	8	14	2	1	\N	\N	\N
1251	105	2	8	7	14	2	1	\N	\N	\N
1252	105	3	7	6	13	2	1	\N	\N	\N
1253	105	4	6	5	12	1	1	\N	\N	\N
1254	105	5	5	0	11	0	\N	\N	\N	10
1255	105	6	4	0	11	0	\N	\N	\N	10
1256	105	7	0	0	0	0	8	8	8	8
1257	105	8	0	0	0	0	8	8	8	8
1258	105	9	0	0	0	0	8	8	8	8
1259	105	10	0	0	0	0	8	8	8	8
1260	105	11	0	0	0	0	8	8	8	8
1261	106	0	8	9	16	2	13	\N	37	\N
1262	106	1	8	8	15	2	13	\N	37	\N
1263	106	2	7	7	14	2	13	\N	\N	\N
1264	106	3	6	6	14	2	13	\N	\N	\N
1265	106	4	6	5	13	1	13	\N	\N	\N
1266	106	5	5	5	12	1	\N	\N	\N	\N
1267	106	6	4	5	11	1	\N	\N	\N	\N
1268	106	7	0	0	0	0	8	8	8	8
1269	106	8	0	0	0	0	8	8	8	8
1270	106	9	0	0	0	0	8	8	8	8
1271	106	10	0	0	0	0	8	8	8	8
1272	106	11	0	0	0	0	8	8	8	8
1273	107	0	6	7	18	2	\N	\N	37	\N
1274	107	1	6	7	17	2	\N	\N	37	\N
1275	107	2	5	7	15	2	\N	\N	2	\N
1276	107	3	4	6	15	2	\N	\N	2	\N
1277	107	4	4	6	15	1	\N	\N	2	\N
1278	107	5	4	5	15	1	\N	\N	\N	\N
1279	107	6	0	0	0	0	8	8	8	8
1280	107	7	0	0	0	0	8	8	8	8
1281	107	8	0	0	0	0	8	8	8	8
1282	107	9	0	0	0	0	8	8	8	8
1283	107	10	0	0	0	0	8	8	8	8
1284	107	11	0	0	0	0	8	8	8	8
1285	108	0	10	8	15	2	27	\N	11	19
1286	108	1	0	0	0	0	8	8	8	8
1287	108	2	0	0	0	0	8	8	8	8
1288	108	3	0	0	0	0	8	8	8	8
1289	108	4	0	0	0	0	8	8	8	8
1290	108	5	0	0	0	0	8	8	8	8
1291	108	6	0	0	0	0	8	8	8	8
1292	108	7	0	0	0	0	8	8	8	8
1293	108	8	0	0	0	0	8	8	8	8
1294	108	9	0	0	0	0	8	8	8	8
1295	108	10	0	0	0	0	8	8	8	8
1296	108	11	0	0	0	0	8	8	8	8
1297	109	0	5	8	15	2	\N	\N	17	\N
1298	109	1	5	6	16	2	\N	\N	23	\N
1299	109	2	5	7	14	1	\N	\N	17	\N
1300	109	3	4	5	15	1	\N	\N	23	\N
1301	109	4	4	6	13	1	\N	\N	17	\N
1302	109	5	4	5	12	1	\N	\N	16	\N
1303	109	6	0	0	0	0	8	8	8	8
1304	109	7	0	0	0	0	8	8	8	8
1305	109	8	0	0	0	0	8	8	8	8
1306	109	9	0	0	0	0	8	8	8	8
1307	109	10	0	0	0	0	8	8	8	8
1308	109	11	0	0	0	0	8	8	8	8
1309	110	0	10	10	16	2	27	\N	11	3
1310	110	1	9	9	15	2	27	\N	\N	3
1311	110	2	8	8	14	2	\N	\N	\N	3
1312	110	3	8	8	14	2	\N	\N	\N	3
1313	110	4	7	8	13	2	\N	\N	\N	3
1314	110	5	6	7	12	1	\N	\N	\N	3
1315	110	6	5	6	12	1	\N	\N	\N	3
1316	110	7	4	5	11	1	\N	\N	\N	\N
1317	110	8	0	0	0	0	8	8	8	8
1318	110	9	0	0	0	0	8	8	8	8
1319	110	10	0	0	0	0	8	8	8	\N
1320	110	11	0	0	0	0	8	8	8	8
1321	111	0	6	8	12	2	\N	34	\N	\N
1322	111	1	10	9	16	3	27	\N	\N	3
1323	111	2	9	8	15	3	27	\N	\N	3
1324	111	3	8	8	15	2	27	\N	\N	3
1325	111	4	7	7	14	1	\N	\N	\N	3
1326	111	5	6	6	13	1	\N	\N	\N	3
1327	111	6	4	0	11	0	\N	\N	\N	10
1328	111	7	0	0	0	0	8	8	8	8
1329	111	8	0	0	0	0	8	8	8	8
1330	111	9	0	0	0	0	8	8	8	8
1331	111	10	0	0	0	0	8	8	8	8
1332	111	11	0	0	0	0	8	8	8	8
1333	112	0	8	11	16	3	31	40	37	3
1334	112	1	8	10	15	3	31	36	37	3
1335	112	2	7	9	14	3	31	36	37	3
1336	112	3	7	8	14	2	31	\N	\N	3
1337	112	4	6	7	13	2	31	\N	\N	3
1338	112	5	7	8	13	3	\N	\N	\N	4
1339	112	6	5	6	12	2	\N	\N	\N	4
1340	112	7	4	5	12	1	\N	\N	\N	\N
1341	112	8	4	0	11	0	\N	\N	\N	10
1342	112	9	0	0	0	0	8	8	8	8
1343	112	10	0	0	0	0	8	8	8	8
1344	112	11	0	0	0	0	8	8	8	8
1345	113	0	8	11	15	3	31	18	37	3
1346	113	1	8	10	15	3	31	18	37	3
1347	113	2	7	9	14	2	31	18	\N	3
1348	113	3	7	8	13	2	\N	\N	\N	19
1349	113	4	6	7	13	2	\N	\N	25	19
1350	113	5	6	6	12	1	\N	22	\N	20
1351	113	6	5	6	12	1	\N	22	\N	20
1352	113	7	6	8	11	3	\N	\N	\N	4
1353	113	8	4	0	11	0	\N	\N	\N	10
1354	113	9	0	0	0	0	8	8	8	8
1355	113	10	0	0	0	0	8	8	8	8
1356	113	11	0	0	0	0	8	8	8	8
1357	114	0	8	9	16	3	\N	39	\N	3
1358	114	1	8	8	16	3	\N	39	\N	3
1359	114	2	8	8	15	2	\N	38	\N	4
1360	114	3	7	7	14	2	\N	38	\N	4
1361	114	4	6	7	13	2	\N	38	\N	4
1362	114	5	5	6	13	1	\N	\N	32	\N
1363	114	6	4	0	12	0	\N	\N	\N	10
1364	114	7	0	0	0	0	8	8	8	8
1365	114	8	0	0	0	0	8	8	8	8
1366	114	9	0	0	0	0	8	8	8	8
1367	114	10	0	0	0	0	8	8	8	8
1368	114	11	0	0	0	0	8	8	8	8
1369	115	0	8	10	16	3	1	36	\N	\N
1370	115	1	8	9	15	3	1	36	\N	\N
1371	115	2	8	9	14	3	1	36	\N	\N
1372	115	3	7	8	16	2	1	\N	32	\N
1373	115	4	6	7	13	3	1	36	\N	\N
1374	115	5	5	6	14	2	1	\N	32	\N
1375	115	6	5	5	12	1	\N	\N	\N	\N
1376	115	7	4	5	11	1	\N	\N	\N	\N
1377	115	8	0	0	0	0	8	8	8	8
1378	115	9	0	0	0	0	8	8	8	8
1379	115	10	0	0	0	0	8	8	8	8
1380	115	11	0	0	0	0	8	8	8	8
1381	116	0	4	9	17	2	6	\N	37	\N
1382	116	1	4	8	17	2	35	\N	37	\N
1383	116	2	4	7	16	2	35	\N	37	\N
1384	116	3	4	7	15	1	35	\N	\N	\N
1385	116	4	4	7	14	1	35	\N	\N	\N
1386	116	5	4	6	14	1	35	\N	\N	\N
1387	116	6	4	6	14	1	35	\N	\N	\N
1388	116	7	4	6	13	1	\N	\N	\N	\N
1389	116	8	4	5	12	1	\N	\N	\N	\N
1390	116	9	0	0	0	0	8	8	8	8
1391	116	10	0	0	0	0	8	8	8	8
1392	116	11	0	0	0	0	8	8	8	8
1393	117	0	10	10	16	3	13	12	\N	3
1394	117	1	10	9	15	3	13	12	\N	3
1395	117	2	9	9	15	3	13	12	\N	3
1396	117	3	8	8	15	2	13	39	\N	3
1397	117	4	7	8	14	2	13	39	\N	3
1398	117	5	6	7	13	1	\N	\N	\N	3
1399	117	6	5	6	12	1	\N	\N	\N	\N
1400	117	7	4	5	12	1	\N	\N	\N	\N
1401	117	8	4	0	11	0	\N	\N	\N	10
1402	117	9	0	0	0	0	8	8	8	8
1403	117	10	0	0	0	0	8	8	8	8
1404	117	11	0	0	0	0	8	8	8	8
1405	118	0	6	9	16	2	\N	34	17	\N
1406	118	1	6	8	16	3	35	\N	25	\N
1407	118	2	6	8	15	3	35	\N	25	\N
1408	118	3	5	7	14	2	35	\N	25	\N
1409	118	4	5	7	14	2	35	\N	25	\N
1410	118	5	5	6	13	2	35	\N	\N	\N
1411	118	6	4	6	12	1	35	\N	\N	\N
1412	118	7	4	5	12	1	\N	\N	\N	\N
1413	118	8	4	5	11	1	\N	\N	\N	\N
1414	118	9	0	0	0	0	8	8	8	8
1415	118	10	0	0	0	0	8	8	8	8
1416	118	11	0	0	0	0	8	8	8	8
1417	119	0	8	6	12	1	14	\N	\N	\N
1418	119	1	8	4	11	1	14	\N	\N	\N
1419	119	2	4	12	17	4	6	\N	37	3
1420	119	3	4	12	16	4	6	\N	37	3
1421	119	4	4	11	16	3	6	\N	37	3
1422	119	5	8	10	15	2	31	\N	\N	3
1423	119	6	7	8	14	2	31	\N	\N	3
1424	119	7	6	8	13	4	\N	\N	\N	4
1425	119	8	5	7	12	3	\N	\N	\N	4
1426	119	9	4	0	11	0	\N	\N	\N	10
1427	119	10	0	0	0	0	8	8	8	8
1428	119	11	0	0	0	0	8	8	8	8
1429	120	0	8	7	13	1	14	\N	\N	\N
1430	120	1	4	12	17	3	6	40	37	3
1431	120	2	4	11	17	3	6	40	37	3
1432	120	3	4	10	16	3	6	40	37	3
1433	120	4	8	10	15	3	30	40	\N	3
1434	120	5	7	9	15	3	30	40	\N	3
1435	120	6	6	8	15	4	30	\N	\N	4
1436	120	7	5	7	14	3	30	\N	\N	4
1437	120	8	5	6	13	2	\N	\N	\N	\N
1438	120	9	4	0	11	0	\N	\N	\N	10
1439	120	10	0	0	0	0	8	8	8	8
1440	120	11	0	0	0	0	8	8	8	8
1441	121	0	8	8	14	2	1	36	\N	\N
1442	121	1	6	7	13	1	\N	36	\N	\N
1443	121	2	5	7	13	1	\N	\N	\N	\N
1444	121	3	4	5	12	1	\N	\N	\N	\N
1445	121	4	3	0	11	0	\N	\N	\N	10
1446	121	5	0	0	0	0	8	8	8	8
1447	121	6	0	0	0	0	8	8	8	8
1448	121	7	0	0	0	0	8	8	8	8
1449	121	8	0	0	0	0	8	8	8	8
1450	121	9	0	0	0	0	8	8	8	8
1451	121	10	0	0	0	0	8	8	8	8
1452	121	11	0	0	0	0	8	8	8	8
1453	122	0	8	8	14	2	1	36	\N	\N
1454	122	1	7	8	14	2	\N	36	\N	\N
1455	122	2	5	7	13	1	\N	\N	\N	\N
1456	122	3	5	6	12	1	\N	\N	\N	\N
1457	122	4	4	5	12	1	\N	\N	\N	\N
1458	122	5	3	0	11	0	\N	\N	\N	10
1459	122	6	0	0	0	0	8	8	8	8
1460	122	7	0	0	0	0	8	8	8	8
1461	122	8	0	0	0	0	8	8	8	8
1462	122	9	0	0	0	0	8	8	8	8
1463	122	10	0	0	0	0	8	8	8	8
1464	122	11	0	0	0	0	8	8	8	8
1465	123	0	9	9	14	2	1	36	\N	\N
1466	123	1	8	8	14	2	1	36	\N	\N
1467	123	2	7	8	13	2	\N	36	\N	\N
1468	123	3	6	7	13	1	\N	\N	\N	\N
1469	123	4	5	5	12	1	\N	\N	\N	\N
1470	123	5	3	0	11	0	\N	\N	\N	10
1471	123	6	0	0	0	0	8	8	8	8
1472	123	7	0	0	0	0	8	8	8	8
1473	123	8	0	0	0	0	8	8	8	8
1474	123	9	0	0	0	0	8	8	8	8
1475	123	10	0	0	0	0	8	8	8	8
1476	123	11	0	0	0	0	8	8	8	8
1477	124	0	6	7	14	2	1	\N	2	28
1478	124	1	6	7	13	2	1	\N	2	\N
1479	124	2	6	6	13	2	1	\N	2	\N
1480	124	3	5	6	12	2	1	\N	\N	\N
1481	124	4	4	6	11	2	1	\N	\N	\N
1482	124	5	3	5	10	1	1	\N	\N	\N
1483	124	6	0	0	0	0	8	8	8	8
1484	124	7	0	0	0	0	8	8	8	8
1485	124	8	0	0	0	0	8	8	8	8
1486	124	9	0	0	0	0	8	8	8	8
1487	124	10	0	0	0	0	8	8	8	8
1488	124	11	0	0	0	0	8	8	8	8
1489	125	0	6	8	15	2	1	\N	2	28
1490	125	1	6	7	14	2	1	\N	2	28
1491	125	2	6	7	13	2	1	\N	2	\N
1492	125	3	6	6	13	2	1	\N	2	\N
1493	125	4	5	6	12	2	1	\N	\N	\N
1494	125	5	4	6	11	2	1	\N	\N	\N
1495	125	6	3	5	10	1	1	\N	\N	\N
1496	125	7	0	0	0	0	8	8	8	8
1497	125	8	0	0	0	0	8	8	8	8
1498	125	9	0	0	0	0	8	8	8	8
1499	125	10	0	0	0	0	8	8	8	8
1500	125	11	0	0	0	0	8	8	8	8
1501	126	0	6	8	15	2	1	\N	2	28
1502	126	1	6	8	15	2	1	\N	2	28
1503	126	2	6	7	14	2	1	\N	2	\N
1504	126	3	6	7	13	2	1	\N	2	\N
1505	126	4	5	6	13	2	1	\N	\N	\N
1506	126	5	5	6	12	2	1	\N	\N	\N
1507	126	6	4	6	11	2	1	\N	\N	\N
1508	126	7	3	5	10	1	1	\N	\N	\N
1509	126	8	0	0	0	0	8	8	8	8
1510	126	9	0	0	0	0	8	8	8	8
1511	126	10	0	0	0	0	8	8	8	8
1512	126	11	0	0	0	0	8	8	8	8
1513	127	0	8	8	15	1	35	22	\N	\N
1514	127	1	7	7	15	1	35	\N	\N	\N
1515	127	2	6	5	14	1	35	\N	\N	\N
1516	127	3	6	4	13	1	\N	\N	\N	\N
1517	127	4	4	0	12	0	\N	\N	\N	10
1518	127	5	0	0	0	0	8	8	8	8
1519	127	6	0	0	0	0	8	8	8	8
1520	127	7	0	0	0	0	8	8	8	8
1521	127	8	0	0	0	0	8	8	8	8
1522	127	9	0	0	0	0	8	8	8	8
1523	127	10	0	0	0	0	8	8	8	8
1524	127	11	0	0	0	0	8	8	8	8
1525	128	0	8	8	16	2	35	22	\N	\N
1526	128	1	8	8	15	1	35	22	\N	\N
1527	128	2	7	7	15	1	35	\N	\N	\N
1528	128	3	6	5	14	1	\N	\N	\N	\N
1529	128	4	6	4	13	1	\N	\N	\N	\N
1530	128	5	4	0	12	0	\N	\N	\N	10
1531	128	6	0	0	0	0	8	8	8	8
1532	128	7	0	0	0	0	8	8	8	8
1533	128	8	0	0	0	0	8	8	8	8
1534	128	9	0	0	0	0	8	8	8	8
1535	128	10	0	0	0	0	8	8	8	8
1536	128	11	0	0	0	0	8	8	8	8
1537	129	0	8	8	16	2	35	22	\N	\N
1538	129	1	8	8	15	2	35	22	\N	\N
1539	129	2	7	7	15	1	35	\N	\N	\N
1540	129	3	7	6	15	1	\N	\N	\N	\N
1541	129	4	6	5	14	1	\N	\N	\N	\N
1542	129	5	6	4	13	1	\N	\N	\N	\N
1543	129	6	4	0	12	0	\N	\N	\N	10
1544	129	7	0	0	0	0	8	8	8	8
1545	129	8	0	0	0	0	8	8	8	8
1546	129	9	0	0	0	0	8	8	8	8
1547	129	10	0	0	0	0	8	8	8	8
1548	129	11	0	0	0	0	8	8	8	8
1549	130	0	8	7	14	0	13	15	17	\N
1550	130	1	2	0	10	0	\N	\N	\N	10
1551	130	2	0	0	0	0	8	8	8	8
1552	130	3	0	0	0	0	8	8	8	8
1553	130	4	0	0	0	0	8	8	8	8
1554	130	5	0	0	0	0	8	8	8	8
1555	130	6	0	0	0	0	8	8	8	8
1556	130	7	0	0	0	0	8	8	8	8
1557	130	8	0	0	0	0	8	8	8	8
1558	130	9	0	0	0	0	8	8	8	8
1559	130	10	0	0	0	0	8	8	8	8
1560	130	11	0	0	0	0	8	8	8	8
1561	131	0	8	8	14	0	13	15	17	\N
1562	131	1	4	6	12	0	13	15	\N	\N
1563	131	2	2	0	10	0	\N	\N	\N	10
1564	131	3	0	0	0	0	8	8	8	8
2010	168	5	5	6	13	2	\N	\N	\N	3
1565	131	4	0	0	0	0	8	8	8	8
1566	131	5	0	0	0	0	8	8	8	8
1567	131	6	0	0	0	0	8	8	8	8
1568	131	7	0	0	0	0	8	8	8	8
1569	131	8	0	0	0	0	8	8	8	8
1570	131	9	0	0	0	0	8	8	8	8
1571	131	10	0	0	0	0	8	8	8	8
1572	131	11	0	0	0	0	8	8	8	8
1573	132	0	8	8	14	0	13	15	17	\N
1574	132	1	6	7	13	0	13	15	\N	\N
1575	132	2	4	5	12	0	\N	15	\N	\N
1576	132	3	2	0	10	0	\N	\N	\N	10
1577	132	4	0	0	0	0	8	8	8	8
1578	132	5	0	0	0	0	8	8	8	8
1579	132	6	0	0	0	0	8	8	8	8
1580	132	7	0	0	0	0	8	8	8	8
1581	132	8	0	0	0	0	8	8	8	8
1582	132	9	0	0	0	0	8	8	8	8
1583	132	10	0	0	0	0	8	8	8	8
1584	132	11	0	0	0	0	8	8	8	8
1585	133	0	8	9	12	2	13	\N	\N	\N
1586	133	1	8	7	12	2	13	\N	\N	\N
1587	133	2	7	6	11	1	13	38	\N	\N
1588	133	3	6	5	11	1	13	\N	\N	\N
1589	133	4	5	5	10	1	\N	\N	\N	\N
1590	133	5	0	0	0	0	8	8	8	8
1591	133	6	0	0	0	0	8	8	8	8
1592	133	7	0	0	0	0	8	8	8	8
1593	133	8	0	0	0	0	8	8	8	8
1594	133	9	0	0	0	0	8	8	8	8
1595	133	10	0	0	0	0	8	8	8	8
1596	133	11	0	0	0	0	8	8	8	8
1597	134	0	8	9	12	2	13	\N	\N	\N
1598	134	1	8	8	12	2	13	\N	\N	\N
1599	134	2	7	7	11	2	13	38	\N	\N
1600	134	3	6	5	11	1	13	38	\N	\N
1601	134	4	5	5	10	1	13	\N	\N	\N
1602	134	5	4	4	10	1	\N	\N	\N	\N
1603	134	6	0	0	0	0	8	8	8	8
1604	134	7	0	0	0	0	8	8	8	8
1605	134	8	0	0	0	0	8	8	8	8
1606	134	9	0	0	0	0	8	8	8	8
1607	134	10	0	0	0	0	8	8	8	8
1608	134	11	0	0	0	0	8	8	8	8
1609	135	0	8	9	13	2	13	\N	\N	\N
1610	135	1	8	8	13	2	13	\N	\N	\N
1611	135	2	7	8	12	2	13	38	\N	\N
1612	135	3	6	7	12	2	13	38	\N	\N
1613	135	4	5	6	11	1	13	\N	\N	\N
1614	135	5	5	5	11	1	13	\N	\N	\N
1615	135	6	4	4	10	1	\N	\N	\N	\N
1616	135	7	0	0	0	0	8	8	8	8
1617	135	8	0	0	0	0	8	8	8	8
1618	135	9	0	0	0	0	8	8	8	8
1619	135	10	0	0	0	0	8	8	8	8
1620	135	11	0	0	0	0	8	8	8	8
1621	136	0	9	10	15	1	\N	\N	\N	19
1622	136	1	9	10	14	1	\N	\N	\N	19
1623	136	2	8	9	13	1	\N	\N	\N	19
1624	136	3	7	8	12	1	\N	\N	\N	\N
1625	136	4	6	7	11	1	\N	\N	32	\N
1626	136	5	5	0	11	0	\N	\N	\N	10
1627	136	6	0	0	0	0	8	8	8	8
1628	136	7	0	0	0	0	8	8	8	8
1629	136	8	0	0	0	0	8	8	8	8
1630	136	9	0	0	0	0	8	8	8	8
1631	136	10	0	0	0	0	8	8	8	8
1632	136	11	0	0	0	0	8	8	8	8
1633	137	0	9	10	15	1	\N	\N	\N	19
1634	137	1	9	10	14	1	\N	\N	\N	19
1635	137	2	8	9	14	1	\N	\N	\N	19
1636	137	3	8	9	13	1	\N	\N	\N	19
1637	137	4	7	8	13	1	\N	\N	\N	\N
1638	137	5	6	7	12	1	\N	\N	32	\N
1639	137	6	5	0	11	0	\N	\N	\N	10
1640	137	7	0	0	0	0	8	8	8	8
1641	137	8	0	0	0	0	8	8	8	8
1642	137	9	0	0	0	0	8	8	8	8
1643	137	10	0	0	0	0	8	8	8	8
1644	137	11	0	0	0	0	8	8	8	8
1645	138	0	10	10	15	1	\N	\N	\N	19
1646	138	1	9	10	15	1	\N	\N	\N	19
1647	138	2	9	9	14	1	\N	\N	\N	19
1648	138	3	8	9	14	1	\N	\N	\N	19
1649	138	4	8	8	13	1	\N	\N	\N	\N
1650	138	5	7	8	13	1	\N	\N	32	\N
1651	138	6	6	7	12	1	\N	\N	32	\N
1652	138	7	5	0	11	0	\N	\N	\N	10
1653	138	8	0	0	0	0	8	8	8	8
1654	138	9	0	0	0	0	8	8	8	8
1655	138	10	0	0	0	0	8	8	8	8
1656	138	11	0	0	0	0	8	8	8	8
1657	139	0	6	8	15	1	\N	\N	23	\N
1658	139	1	6	7	14	1	\N	\N	23	\N
1659	139	2	5	6	13	1	\N	\N	23	\N
1660	139	3	5	4	12	1	\N	\N	\N	3
1661	139	4	3	0	11	0	\N	\N	\N	10
1662	139	5	0	0	0	0	8	8	8	8
1663	139	6	0	0	0	0	8	8	8	8
1664	139	7	0	0	0	0	8	8	8	8
1665	139	8	0	0	0	0	8	8	8	8
1666	139	9	0	0	0	0	8	8	8	8
1667	139	10	0	0	0	0	8	8	8	8
1668	139	11	0	0	0	0	8	8	8	8
1669	140	0	6	8	16	2	\N	\N	23	\N
1670	140	1	6	8	15	1	\N	\N	23	\N
1671	140	2	6	7	14	1	\N	\N	23	\N
1672	140	3	5	6	13	1	\N	\N	\N	\N
1673	140	4	5	4	12	1	\N	\N	\N	3
1674	140	5	3	0	11	0	\N	\N	\N	10
1675	140	6	0	0	0	0	8	8	8	8
1676	140	7	0	0	0	0	8	8	8	8
1677	140	8	0	0	0	0	8	8	8	8
1678	140	9	0	0	0	0	8	8	8	8
1679	140	10	0	0	0	0	8	8	8	8
1680	140	11	0	0	0	0	8	8	8	8
1681	141	0	6	9	16	2	\N	\N	23	\N
1682	141	1	6	8	15	2	\N	\N	23	\N
1683	141	2	6	7	14	1	\N	\N	23	\N
1684	141	3	5	6	13	1	\N	\N	23	\N
1685	141	4	5	4	12	1	\N	\N	\N	3
1686	141	5	3	0	12	0	\N	\N	\N	10
1687	141	6	0	0	0	0	8	8	8	8
1688	141	7	0	0	0	0	8	8	8	8
1689	141	8	0	0	0	0	8	8	8	8
1690	141	9	0	0	0	0	8	8	8	8
1691	141	10	0	0	0	0	8	8	8	8
1692	141	11	0	0	0	0	8	8	8	8
1693	142	0	8	7	14	1	35	\N	\N	28
1694	142	1	7	6	13	1	35	\N	\N	\N
1695	142	2	6	5	12	1	\N	\N	\N	\N
1696	142	3	4	0	11	0	\N	\N	\N	10
1697	142	4	0	0	0	0	8	8	8	8
1698	142	5	0	0	0	0	8	8	8	8
1699	142	6	0	0	0	0	8	8	8	8
1700	142	7	0	0	0	0	8	8	8	8
1701	142	8	0	0	0	0	8	8	8	8
1702	142	9	0	0	0	0	8	8	8	8
1703	142	10	0	0	0	0	8	8	8	8
1704	142	11	0	0	0	0	8	8	8	8
1705	143	0	8	8	14	1	35	\N	\N	28
1706	143	1	7	7	14	1	35	\N	\N	\N
1707	143	2	6	6	13	1	35	\N	\N	\N
1708	143	3	5	5	12	1	\N	\N	\N	\N
1709	143	4	4	0	11	0	\N	\N	\N	10
1710	143	5	3	0	10	0	\N	\N	\N	10
1711	143	6	0	0	0	0	8	8	8	8
1712	143	7	0	0	0	0	8	8	8	8
1713	143	8	0	0	0	0	8	8	8	8
1714	143	9	0	0	0	0	8	8	8	8
1715	143	10	0	0	0	0	8	8	8	8
1716	143	11	0	0	0	0	8	8	8	8
1717	144	0	8	8	15	1	35	\N	\N	28
1718	144	1	7	8	14	1	35	\N	\N	28
1719	144	2	6	7	14	1	35	\N	\N	\N
1720	144	3	5	6	13	1	\N	\N	\N	\N
1721	144	4	4	0	12	0	\N	\N	\N	10
1722	144	5	3	0	10	0	\N	\N	\N	10
1723	144	6	0	0	0	0	8	8	8	8
1724	144	7	0	0	0	0	8	8	8	8
1725	144	8	0	0	0	0	8	8	8	8
1726	144	9	0	0	0	0	8	8	8	8
1727	144	10	0	0	0	0	8	8	8	8
1728	144	11	0	0	0	0	8	8	8	8
1729	145	0	6	6	13	0	\N	\N	\N	\N
1730	145	1	9	9	15	2	13	\N	\N	19
1731	145	2	9	8	14	2	13	\N	\N	19
1732	145	3	8	6	13	1	13	\N	\N	\N
1733	145	4	6	4	12	1	13	\N	\N	\N
1734	145	5	4	0	11	0	\N	\N	\N	10
1735	145	6	0	0	0	0	8	8	8	8
1736	145	7	0	0	0	0	8	8	8	8
1737	145	8	0	0	0	0	8	8	8	8
1738	145	9	0	0	0	0	8	8	8	8
1739	145	10	0	0	0	0	8	8	8	8
1740	145	11	0	0	0	0	8	8	8	8
1741	146	0	6	6	13	0	\N	\N	\N	\N
1742	146	1	9	9	15	2	13	\N	\N	19
1743	146	2	9	8	15	2	13	\N	\N	19
1744	146	3	8	8	14	2	13	\N	\N	19
1745	146	4	6	6	13	1	13	\N	\N	\N
1746	146	5	4	4	12	1	13	\N	\N	\N
1747	146	6	4	0	11	0	\N	\N	\N	10
1748	146	7	0	0	0	0	8	8	8	8
1749	146	8	0	0	0	0	8	8	8	8
1750	146	9	0	0	0	0	8	8	8	8
1751	146	10	0	0	0	0	8	8	8	8
1752	146	11	0	0	0	0	8	8	8	8
1753	147	0	7	7	13	0	\N	\N	\N	\N
1754	147	1	9	10	15	2	13	\N	\N	19
1755	147	2	9	9	15	2	13	\N	\N	19
1756	147	3	8	9	14	2	13	\N	\N	19
1757	147	4	6	7	13	1	13	\N	\N	\N
1758	147	5	4	5	12	1	13	\N	\N	\N
1759	147	6	4	0	11	0	\N	\N	\N	10
1760	147	7	0	0	0	0	8	8	8	8
1761	147	8	0	0	0	0	8	8	8	8
1762	147	9	0	0	0	0	8	8	8	8
1763	147	10	0	0	0	0	8	8	8	8
1764	147	11	0	0	0	0	8	8	8	8
1765	148	0	6	7	15	1	\N	\N	17	20
1766	148	1	5	6	14	1	\N	\N	17	\N
1767	148	2	4	4	13	1	35	\N	\N	\N
1768	148	3	4	0	11	0	\N	\N	\N	10
1769	148	4	0	0	0	0	8	8	8	8
1770	148	5	0	0	0	0	8	8	8	8
1771	148	6	0	0	0	0	8	8	8	8
1772	148	7	0	0	0	0	8	8	8	8
1773	148	8	0	0	0	0	8	8	8	8
1774	148	9	0	0	0	0	8	8	8	8
1775	148	10	0	0	0	0	8	8	8	8
1776	148	11	0	0	0	0	8	8	8	8
1777	149	0	6	7	16	2	\N	\N	17	20
1778	149	1	6	6	15	1	\N	\N	17	20
1779	149	2	5	5	14	1	\N	\N	17	\N
1780	149	3	4	4	13	1	35	\N	\N	\N
1781	149	4	4	0	11	0	\N	\N	\N	10
1782	149	5	0	0	0	0	8	8	8	8
1783	149	6	0	0	0	0	8	8	8	8
1784	149	7	0	0	0	0	8	8	8	8
1785	149	8	0	0	0	0	8	8	8	8
1786	149	9	0	0	0	0	8	8	8	8
1787	149	10	0	0	0	0	8	8	8	8
1788	149	11	0	0	0	0	8	8	8	8
1789	150	0	6	8	16	2	\N	\N	17	20
1790	150	1	6	7	15	2	\N	\N	17	20
1791	150	2	5	6	14	1	\N	\N	17	\N
1792	150	3	4	5	13	1	35	\N	\N	\N
1793	150	4	4	0	11	0	\N	\N	\N	10
1794	150	5	0	0	0	0	8	8	8	8
1795	150	6	0	0	0	0	8	8	8	8
1796	150	7	0	0	0	0	8	8	8	8
1797	150	8	0	0	0	0	8	8	8	8
1798	150	9	0	0	0	0	8	8	8	8
1799	150	10	0	0	0	0	8	8	8	8
1800	150	11	0	0	0	0	8	8	8	8
1801	151	0	6	9	15	1	\N	\N	37	7
1802	151	1	6	8	14	0	\N	\N	37	7
1803	151	2	6	8	13	0	\N	\N	37	7
1804	151	3	6	7	13	0	\N	\N	2	\N
1805	151	4	5	7	12	0	\N	\N	\N	\N
1806	151	5	4	7	11	0	\N	\N	\N	\N
1807	151	6	0	0	0	0	8	8	8	8
1808	151	7	0	0	0	0	8	8	8	8
1809	151	8	0	0	0	0	8	8	8	8
1810	151	9	0	0	0	0	8	8	8	8
1811	151	10	0	0	0	0	8	8	8	8
1812	151	11	0	0	0	0	8	8	8	8
1813	152	0	6	9	15	1	\N	\N	37	7
1814	152	1	6	9	14	1	\N	\N	37	7
1815	152	2	6	8	14	0	\N	\N	37	7
1816	152	3	6	8	13	0	\N	\N	37	7
1817	152	4	5	7	13	0	\N	\N	2	\N
1818	152	5	4	7	12	0	\N	\N	\N	\N
1819	152	6	0	0	0	0	8	8	8	8
1820	152	7	0	0	0	0	8	8	8	8
1821	152	8	0	0	0	0	8	8	8	8
1822	152	9	0	0	0	0	8	8	8	8
1823	152	10	0	0	0	0	8	8	8	8
1824	152	11	0	0	0	0	8	8	8	8
1825	153	0	6	10	15	1	\N	\N	37	7
1826	153	1	6	9	15	1	\N	\N	37	7
1827	153	2	6	9	14	1	\N	\N	37	7
1828	153	3	6	8	14	0	\N	\N	37	7
1829	153	4	6	8	13	0	\N	\N	2	7
1830	153	5	5	7	13	0	\N	\N	2	\N
1831	153	6	4	7	12	0	\N	\N	\N	\N
1832	153	7	0	0	0	0	8	8	8	8
1833	153	8	0	0	0	0	8	8	8	8
1834	153	9	0	0	0	0	8	8	8	8
1835	153	10	0	0	0	0	8	8	8	8
1836	153	11	0	0	0	0	8	8	8	8
1837	154	0	10	7	16	2	\N	39	29	\N
1838	154	1	8	7	15	2	\N	39	\N	\N
1839	154	2	6	6	15	1	\N	\N	\N	\N
1840	154	3	5	5	14	1	\N	\N	\N	\N
1841	154	4	4	4	13	1	\N	\N	32	\N
1842	154	5	0	0	0	0	8	8	8	8
1843	154	6	0	0	0	0	8	8	8	8
1844	154	7	0	0	0	0	8	8	8	8
1845	154	8	0	0	0	0	8	8	8	8
1846	154	9	0	0	0	0	8	8	8	8
1847	154	10	0	0	0	0	8	8	8	8
1848	154	11	0	0	0	0	8	8	8	8
1849	155	0	10	8	17	2	\N	39	29	\N
1850	155	1	8	7	16	2	\N	39	29	\N
1851	155	2	6	6	15	1	\N	39	\N	\N
1852	155	3	5	5	14	1	\N	\N	\N	\N
1853	155	4	4	4	13	1	\N	\N	32	\N
1854	155	5	0	0	0	0	8	8	8	8
1855	155	6	0	0	0	0	8	8	8	8
1856	155	7	0	0	0	0	8	8	8	8
1857	155	8	0	0	0	0	8	8	8	8
1858	155	9	0	0	0	0	8	8	8	8
1859	155	10	0	0	0	0	8	8	8	8
1860	155	11	0	0	0	0	8	8	8	8
1861	156	0	10	9	18	2	\N	39	29	\N
1862	156	1	8	8	17	2	\N	39	29	\N
1863	156	2	6	7	16	2	\N	39	\N	\N
1864	156	3	5	6	15	1	\N	\N	\N	\N
1865	156	4	4	5	14	1	\N	\N	32	\N
1866	156	5	0	0	0	0	8	8	8	8
1867	156	6	0	0	0	0	8	8	8	8
1868	156	7	0	0	0	0	8	8	8	8
1869	156	8	0	0	0	0	8	8	8	8
1870	156	9	0	0	0	0	8	8	8	8
1871	156	10	0	0	0	0	8	8	8	8
1872	156	11	0	0	0	0	8	8	8	8
1873	157	0	10	8	14	2	35	34	\N	\N
1874	157	1	8	7	14	2	35	\N	\N	\N
1875	157	2	5	6	12	1	\N	\N	\N	\N
1876	157	3	3	0	11	0	\N	\N	\N	10
1877	157	4	0	0	0	0	8	8	8	8
1878	157	5	0	0	0	0	8	8	8	8
1879	157	6	0	0	0	0	8	8	8	8
1880	157	7	0	0	0	0	8	8	8	8
1881	157	8	0	0	0	0	8	8	8	8
1882	157	9	0	0	0	0	8	8	8	8
1883	157	10	0	0	0	0	8	8	8	8
1884	157	11	0	0	0	0	8	8	8	8
1885	158	0	10	8	15	2	35	34	\N	\N
1886	158	1	8	8	14	2	35	34	\N	\N
1887	158	2	6	7	14	2	35	\N	\N	\N
1888	158	3	5	6	12	1	\N	\N	\N	\N
1889	158	4	3	0	11	0	\N	\N	\N	10
1890	158	5	0	0	0	0	8	8	8	8
1891	158	6	0	0	0	0	8	8	8	8
1892	158	7	0	0	0	0	8	8	8	8
1893	158	8	0	0	0	0	8	8	8	8
1894	158	9	0	0	0	0	8	8	8	8
1895	158	10	0	0	0	0	8	8	8	8
1896	158	11	0	0	0	0	8	8	8	8
1897	159	0	10	9	15	2	35	34	\N	\N
1898	159	1	8	8	15	2	35	34	\N	\N
1899	159	2	7	8	14	2	35	\N	\N	\N
1900	159	3	6	7	14	2	35	\N	\N	\N
1901	159	4	5	6	12	1	\N	\N	\N	\N
1902	159	5	3	0	11	0	\N	\N	\N	10
1903	159	6	0	0	0	0	8	8	8	8
1904	159	7	0	0	0	0	8	8	8	8
1905	159	8	0	0	0	0	8	8	8	8
1906	159	9	0	0	0	0	8	8	8	8
1907	159	10	0	0	0	0	8	8	8	8
1908	159	11	0	0	0	0	8	8	8	8
1909	160	0	4	8	16	3	\N	\N	23	\N
1910	160	1	4	8	15	3	\N	\N	23	\N
1911	160	2	4	7	15	2	\N	\N	23	\N
1912	160	3	4	7	14	1	\N	\N	\N	3
1913	160	4	4	6	14	1	\N	\N	\N	3
1914	160	5	4	0	13	0	\N	\N	\N	10
1915	160	6	0	0	0	0	8	8	8	8
1916	160	7	0	0	0	0	8	8	8	8
1917	160	8	0	0	0	0	8	8	8	8
1918	160	9	0	0	0	0	8	8	8	8
1919	160	10	0	0	0	0	8	8	8	8
1920	160	11	0	0	0	0	8	8	8	8
1921	161	0	4	9	16	3	\N	\N	23	\N
1922	161	1	4	8	16	3	\N	\N	23	\N
1923	161	2	4	8	15	3	\N	\N	23	\N
1924	161	3	4	7	14	2	\N	\N	23	\N
1925	161	4	4	7	14	1	\N	\N	\N	3
1926	161	5	4	0	14	0	\N	\N	\N	10
1927	161	6	0	0	0	0	8	8	8	8
1928	161	7	0	0	0	0	8	8	8	8
1929	161	8	0	0	0	0	8	8	8	8
1930	161	9	0	0	0	0	8	8	8	8
1931	161	10	0	0	0	0	8	8	8	8
1932	161	11	0	0	0	0	8	8	8	8
1933	162	0	4	10	16	4	\N	\N	23	\N
1934	162	1	4	9	16	3	\N	\N	23	\N
1935	162	2	4	8	15	3	\N	\N	23	\N
1936	162	3	4	7	15	2	\N	\N	23	\N
1937	162	4	4	7	14	2	\N	\N	\N	3
1938	162	5	4	6	14	1	\N	\N	\N	3
1939	162	6	4	0	13	0	\N	\N	\N	10
1940	162	7	0	0	0	0	8	8	8	8
1941	162	8	0	0	0	0	8	8	8	8
1942	162	9	0	0	0	0	8	8	8	8
1943	162	10	0	0	0	0	8	8	8	8
1944	162	11	0	0	0	0	8	8	8	8
1945	163	0	5	9	15	2	6	\N	\N	\N
1946	163	1	8	8	14	2	\N	\N	\N	\N
1947	163	2	7	7	12	1	\N	\N	\N	\N
1948	163	3	5	5	11	1	\N	\N	32	\N
1949	163	4	0	0	0	0	8	8	8	8
1950	163	5	0	0	0	0	8	8	8	8
1951	163	6	0	0	0	0	8	8	8	8
1952	163	7	0	0	0	0	8	8	8	8
1953	163	8	0	0	0	0	8	8	8	8
1954	163	9	0	0	0	0	8	8	8	8
1955	163	10	0	0	0	0	8	8	8	8
1956	163	11	0	0	0	0	8	8	8	8
1957	164	0	5	9	16	2	6	\N	\N	\N
1958	164	1	4	8	15	2	6	\N	\N	\N
1959	164	2	8	8	14	2	\N	\N	\N	\N
1960	164	3	6	6	12	1	\N	\N	\N	\N
1961	164	4	4	4	11	1	\N	\N	32	\N
1962	164	5	0	0	0	0	8	8	8	8
1963	164	6	0	0	0	0	8	8	8	8
1964	164	7	0	0	0	0	8	8	8	8
1965	164	8	0	0	0	0	8	8	8	8
1966	164	9	0	0	0	0	8	8	8	8
1967	164	10	0	0	0	0	8	8	8	8
1968	164	11	0	0	0	0	8	8	8	8
1969	165	0	5	10	16	3	6	\N	\N	\N
1970	165	1	4	8	15	2	6	\N	\N	\N
1971	165	2	8	8	14	2	\N	\N	\N	\N
1972	165	3	6	7	12	1	\N	\N	\N	\N
1973	165	4	4	5	11	1	\N	\N	32	\N
1974	165	5	0	0	0	0	8	8	8	8
1975	165	6	0	0	0	0	8	8	8	8
1976	165	7	0	0	0	0	8	8	8	8
1977	165	8	0	0	0	0	8	8	8	8
1978	165	9	0	0	0	0	8	8	8	8
1979	165	10	0	0	0	0	8	8	8	8
1980	165	11	0	0	0	0	8	8	8	8
1981	166	0	8	8	15	2	\N	40	11	\N
1982	166	1	7	8	15	2	\N	\N	\N	\N
1983	166	2	7	7	14	1	\N	\N	\N	\N
1984	166	3	6	7	13	1	\N	\N	\N	\N
1985	166	4	5	7	12	1	\N	\N	\N	\N
1986	166	5	4	0	12	0	\N	\N	\N	10
1987	166	6	0	0	0	0	8	8	8	8
1988	166	7	0	0	0	0	8	8	8	8
1989	166	8	0	0	0	0	8	8	8	8
1990	166	9	0	0	0	0	8	8	8	8
1991	166	10	0	0	0	0	8	8	8	8
1992	166	11	0	0	0	0	8	8	8	8
1993	167	0	8	9	15	2	\N	40	11	\N
1994	167	1	8	8	15	2	\N	40	\N	\N
1995	167	2	7	7	14	2	\N	\N	\N	3
1996	167	3	6	7	13	1	\N	\N	\N	3
1997	167	4	5	7	13	1	\N	\N	\N	3
1998	167	5	4	0	12	0	\N	\N	\N	10
1999	167	6	0	0	0	0	8	8	8	8
2000	167	7	0	0	0	0	8	8	8	8
2001	167	8	0	0	0	0	8	8	8	8
2002	167	9	0	0	0	0	8	8	8	8
2003	167	10	0	0	0	0	8	8	8	8
2004	167	11	0	0	0	0	8	8	8	8
2005	168	0	9	9	15	2	\N	40	11	\N
2006	168	1	8	9	15	2	\N	40	\N	\N
2007	168	2	8	8	14	2	\N	\N	\N	\N
2008	168	3	7	7	14	1	\N	\N	\N	3
2009	168	4	6	7	13	1	\N	\N	\N	3
2011	168	6	4	0	12	0	\N	\N	\N	10
2012	168	7	0	0	0	0	8	8	8	8
2013	168	8	0	0	0	0	8	8	8	8
2014	168	9	0	0	0	0	8	8	8	8
2015	168	10	0	0	0	0	8	8	8	8
2016	168	11	0	0	0	0	8	8	8	8
2017	169	0	10	9	14	2	30	\N	11	\N
2018	169	1	8	8	13	2	30	\N	\N	\N
2019	169	2	6	6	12	1	\N	\N	\N	\N
2020	169	3	4	4	10	1	\N	\N	\N	\N
2021	169	4	0	0	0	0	8	8	8	8
2022	169	5	0	0	0	0	8	8	8	8
2023	169	6	0	0	0	0	8	8	8	8
2024	169	7	0	0	0	0	8	8	8	8
2025	169	8	0	0	0	0	8	8	8	8
2026	169	9	0	0	0	0	8	8	8	8
2027	169	10	0	0	0	0	8	8	8	8
2028	169	11	0	0	0	0	8	8	8	8
2029	170	0	10	10	15	2	30	\N	11	\N
2030	170	1	9	9	14	2	30	\N	\N	\N
2031	170	2	8	8	13	1	\N	\N	\N	\N
2032	170	3	6	6	12	1	\N	\N	\N	\N
2033	170	4	4	4	10	1	\N	\N	\N	\N
2034	170	5	0	0	0	0	8	8	8	8
2035	170	6	0	0	0	0	8	8	8	8
2036	170	7	0	0	0	0	8	8	8	8
2037	170	8	0	0	0	0	8	8	8	8
2038	170	9	0	0	0	0	8	8	8	8
2039	170	10	0	0	0	0	8	8	8	8
2040	170	11	0	0	0	0	8	8	8	8
2041	171	0	10	10	15	2	30	\N	11	\N
2042	171	1	9	9	14	2	30	\N	\N	\N
2043	171	2	8	8	13	2	30	\N	\N	\N
2044	171	3	7	7	13	1	\N	\N	\N	\N
2045	171	4	6	6	12	1	\N	\N	\N	\N
2046	171	5	4	4	10	1	\N	\N	\N	\N
2047	171	6	0	0	0	0	8	8	8	8
2048	171	7	0	0	0	0	8	8	8	8
2049	171	8	0	0	0	0	8	8	8	8
2050	171	9	0	0	0	0	8	8	8	8
2051	171	10	0	0	0	0	8	8	8	8
2052	171	11	0	0	0	0	8	8	8	8
2053	172	0	8	10	16	3	\N	12	37	\N
2054	172	1	7	9	16	2	\N	12	\N	\N
2055	172	2	5	7	15	1	\N	12	\N	\N
2056	172	3	4	0	14	0	\N	\N	\N	10
2057	172	4	8	10	16	3	\N	\N	37	21
2058	172	5	7	9	16	2	\N	\N	\N	21
2059	172	6	5	7	15	1	\N	\N	\N	21
2060	172	7	4	0	14	0	\N	\N	\N	10
2061	172	8	8	10	16	1	\N	40	37	\N
2062	172	9	7	9	16	1	\N	40	\N	\N
2063	172	10	5	7	15	1	\N	40	\N	\N
2064	172	11	0	0	0	0	8	8	8	8
2065	173	0	8	10	17	3	\N	12	37	\N
2066	173	1	7	9	16	2	\N	12	\N	\N
2067	173	2	6	8	15	1	\N	12	\N	\N
2068	173	3	5	0	14	0	\N	\N	\N	10
2069	173	4	8	10	17	3	\N	\N	37	21
2070	173	5	7	9	16	2	\N	\N	\N	21
2071	173	6	6	8	15	1	\N	\N	\N	21
2072	173	7	5	0	14	0	\N	\N	\N	10
2073	173	8	8	10	17	2	\N	40	37	\N
2074	173	9	7	9	16	2	\N	40	\N	\N
2075	173	10	6	8	15	2	\N	40	\N	\N
2076	173	11	0	0	0	0	8	8	8	8
2077	174	0	10	11	17	3	\N	12	37	\N
2078	174	1	8	10	17	3	\N	12	\N	\N
2079	174	2	7	9	16	2	\N	12	\N	\N
2080	174	3	6	0	15	0	\N	\N	\N	10
2081	174	4	10	11	17	3	\N	\N	37	21
2082	174	5	8	10	17	3	\N	\N	\N	21
2083	174	6	7	9	16	2	\N	\N	\N	21
2084	174	7	6	0	15	0	\N	\N	\N	10
2085	174	8	10	11	17	2	\N	40	37	\N
2086	174	9	8	10	17	2	\N	40	\N	\N
2087	174	10	7	9	16	2	\N	40	\N	\N
2088	174	11	0	0	0	0	8	8	8	8
2089	175	0	6	9	15	2	6	\N	17	\N
2090	175	1	11	9	14	2	\N	\N	23	\N
2091	175	2	10	8	13	2	\N	\N	23	\N
2092	175	3	9	7	12	1	\N	\N	23	\N
2093	175	4	8	6	11	1	\N	\N	32	\N
2094	175	5	7	6	10	1	\N	\N	32	\N
2095	175	6	0	0	0	0	8	8	8	8
2096	175	7	0	0	0	0	8	8	8	8
2097	175	8	0	0	0	0	8	8	8	8
2098	175	9	0	0	0	0	8	8	8	8
2099	175	10	0	0	0	0	8	8	8	8
2100	175	11	0	0	0	0	8	8	8	8
2101	176	0	6	9	15	3	6	\N	17	\N
2102	176	1	6	9	15	2	6	\N	23	\N
2103	176	2	11	8	14	2	\N	\N	23	\N
2104	176	3	10	7	13	1	\N	\N	23	\N
2105	176	4	9	6	12	1	\N	\N	32	\N
2106	176	5	8	6	11	1	\N	\N	32	\N
2107	176	6	0	0	0	0	8	8	8	8
2108	176	7	0	0	0	0	8	8	8	8
2109	176	8	0	0	0	0	8	8	8	8
2110	176	9	0	0	0	0	8	8	8	8
2111	176	10	0	0	0	0	8	8	8	8
2112	176	11	0	0	0	0	8	8	8	8
2113	177	0	6	9	16	3	6	\N	17	\N
2114	177	1	6	9	16	3	6	\N	23	\N
2115	177	2	11	8	15	2	\N	\N	23	\N
2116	177	3	10	8	15	2	\N	\N	23	\N
2117	177	4	9	7	14	1	\N	\N	32	\N
2118	177	5	8	6	13	1	\N	\N	32	\N
2119	177	6	7	6	12	1	\N	\N	32	\N
2120	177	7	0	0	0	0	8	8	8	8
2121	177	8	0	0	0	0	8	8	8	8
2122	177	9	0	0	0	0	8	8	8	8
2123	177	10	0	0	0	0	8	8	8	8
2124	177	11	0	0	0	0	8	8	8	8
2125	178	0	10	9	16	3	\N	36	\N	3
2126	178	1	9	9	15	2	\N	\N	\N	3
2127	178	2	8	8	15	2	\N	\N	\N	3
2128	178	3	7	7	14	1	\N	\N	\N	3
2129	178	4	5	5	13	1	\N	\N	\N	\N
2130	178	5	0	0	0	0	8	8	8	8
2131	178	6	0	0	0	0	8	8	8	8
2132	178	7	0	0	0	0	8	8	8	8
2133	178	8	0	0	0	0	8	8	8	8
2134	178	9	0	0	0	0	8	8	8	8
2135	178	10	0	0	0	0	8	8	8	8
2136	178	11	0	0	0	0	8	8	8	8
2137	179	0	10	10	16	3	\N	36	2	3
2138	179	1	9	9	16	3	\N	36	\N	3
2139	179	2	8	9	15	2	\N	36	\N	3
2140	179	3	7	8	15	2	\N	\N	\N	3
2141	179	4	6	8	14	2	\N	\N	\N	3
2142	179	5	6	7	14	1	\N	\N	\N	\N
2143	179	6	0	0	0	0	8	8	8	8
2144	179	7	0	0	0	0	8	8	8	8
2145	179	8	0	0	0	0	8	8	8	8
2146	179	9	0	0	0	0	8	8	8	8
2147	179	10	0	0	0	0	8	8	8	8
2148	179	11	0	0	0	0	8	8	8	8
2149	180	0	10	12	17	3	\N	36	2	3
2150	180	1	10	10	16	3	\N	36	2	3
2151	180	2	9	9	16	3	\N	36	\N	3
2152	180	3	8	9	15	2	\N	36	\N	3
2153	180	4	7	8	15	2	\N	\N	\N	3
2154	180	5	6	8	14	2	\N	\N	\N	\N
2155	180	6	6	7	14	2	\N	\N	\N	\N
2156	180	7	0	0	0	0	8	8	8	8
2157	180	8	0	0	0	0	8	8	8	8
2158	180	9	0	0	0	0	8	8	8	8
2159	180	10	0	0	0	0	8	8	8	8
2160	180	11	0	0	0	0	8	8	8	8
2161	181	0	9	8	14	3	1	12	\N	\N
2162	181	1	9	8	14	2	1	36	\N	\N
2163	181	2	8	8	13	2	\N	36	\N	\N
2164	181	3	7	6	12	2	\N	\N	\N	\N
2165	181	4	5	5	12	1	\N	\N	\N	\N
2166	181	5	3	0	11	0	\N	\N	\N	10
2167	181	6	0	0	0	0	8	8	8	8
2168	181	7	0	0	0	0	8	8	8	8
2169	181	8	0	0	0	0	8	8	8	8
2170	181	9	0	0	0	0	8	8	8	8
2171	181	10	0	0	0	0	8	8	8	8
2172	181	11	0	0	0	0	8	8	8	8
2173	182	0	9	9	14	3	1	12	\N	\N
2174	182	1	9	9	14	3	1	12	\N	\N
2175	182	2	8	8	14	2	1	36	\N	\N
2176	182	3	7	7	13	2	\N	36	\N	\N
2177	182	4	6	6	13	2	\N	\N	\N	\N
2178	182	5	5	5	12	1	\N	\N	\N	\N
2179	182	6	3	0	11	0	\N	\N	\N	10
2180	182	7	0	0	0	0	8	8	8	8
2181	182	8	0	0	0	0	8	8	8	8
2182	182	9	0	0	0	0	8	8	8	8
2183	182	10	0	0	0	0	8	8	8	8
2184	182	11	0	0	0	0	8	8	8	8
2185	183	0	10	10	15	3	1	12	\N	\N
2186	183	1	9	10	15	3	1	12	\N	\N
2187	183	2	8	9	14	3	1	12	\N	\N
2188	183	3	7	8	13	2	1	36	\N	\N
2189	183	4	6	6	13	2	\N	36	\N	\N
2190	183	5	5	5	12	1	\N	\N	\N	\N
2191	183	6	3	0	11	0	\N	\N	\N	10
2192	183	7	0	0	0	0	8	8	8	8
2193	183	8	0	0	0	0	8	8	8	8
2194	183	9	0	0	0	0	8	8	8	8
2195	183	10	0	0	0	0	8	8	8	8
2196	183	11	0	0	0	0	8	8	8	8
2197	184	0	6	9	15	3	\N	15	37	3
2198	184	1	6	8	15	2	\N	15	\N	3
2199	184	2	5	8	15	2	\N	15	\N	3
2200	184	3	5	7	14	2	\N	15	\N	\N
2201	184	4	4	6	13	2	\N	\N	\N	\N
2202	184	5	4	5	13	1	\N	\N	32	\N
2203	184	6	2	0	11	0	\N	\N	\N	10
2204	184	7	0	0	0	0	8	8	8	8
2205	184	8	0	0	0	0	8	8	8	8
2206	184	9	0	0	0	0	8	8	8	8
2207	184	10	0	0	0	0	8	8	8	8
2208	184	11	0	0	0	0	8	8	8	8
2209	185	0	6	9	15	3	\N	15	37	3
2210	185	1	6	8	15	3	\N	15	37	3
2211	185	2	5	8	15	2	\N	15	\N	3
2212	185	3	5	7	14	2	\N	15	\N	\N
2213	185	4	5	7	13	2	\N	\N	\N	\N
2214	185	5	4	6	13	2	\N	\N	\N	\N
2215	185	6	4	5	12	1	\N	\N	32	\N
2216	185	7	2	0	11	0	\N	\N	\N	10
2217	185	8	0	0	0	0	8	8	8	8
2218	185	9	0	0	0	0	8	8	8	8
2219	185	10	0	0	0	0	8	8	8	8
2220	185	11	0	0	0	0	8	8	8	8
2221	186	0	6	9	15	2	6	\N	17	\N
2222	186	1	11	9	14	2	\N	\N	23	\N
2223	186	2	10	8	13	2	\N	\N	23	\N
2224	186	3	9	7	12	1	\N	\N	23	\N
2225	186	4	8	6	11	1	\N	\N	32	\N
2226	186	5	7	6	10	1	\N	\N	32	\N
2227	186	6	0	0	0	0	8	8	8	8
2228	186	7	0	0	0	0	8	8	8	8
2229	186	8	0	0	0	0	8	8	8	8
2230	186	9	0	0	0	0	8	8	8	8
2231	186	10	0	0	0	0	8	8	8	8
2232	186	11	0	0	0	0	8	8	8	8
2233	187	0	8	8	15	2	\N	\N	\N	21
2234	187	1	8	8	14	2	\N	\N	\N	21
2235	187	2	7	7	13	2	\N	\N	\N	\N
2236	187	3	7	6	12	2	\N	\N	\N	26
2237	187	4	6	5	11	1	\N	\N	32	\N
2238	187	5	5	0	10	0	\N	\N	\N	10
2239	187	6	0	0	0	0	8	8	8	8
2240	187	7	0	0	0	0	8	8	8	8
2241	187	8	0	0	0	0	8	8	8	8
2242	187	9	0	0	0	0	8	8	8	8
2243	187	10	0	0	0	0	8	8	8	8
2244	187	11	0	0	0	0	8	8	8	8
2245	188	0	9	9	15	2	\N	\N	\N	21
2246	188	1	8	8	14	2	\N	\N	\N	21
2247	188	2	7	7	13	3	\N	\N	\N	26
2248	188	3	7	6	12	2	\N	\N	\N	26
2249	188	4	6	5	11	2	\N	\N	32	\N
2250	188	5	5	0	10	0	\N	\N	\N	10
2251	188	6	0	0	0	0	8	8	8	8
2252	188	7	0	0	0	0	8	8	8	8
2253	188	8	0	0	0	0	8	8	8	8
2254	188	9	0	0	0	0	8	8	8	8
2255	188	10	0	0	0	0	8	8	8	8
2256	188	11	0	0	0	0	8	8	8	8
2257	189	0	9	9	16	2	\N	\N	\N	21
2258	189	1	8	9	15	2	\N	\N	\N	21
2259	189	2	8	8	14	2	\N	\N	\N	21
2260	189	3	7	8	13	3	\N	\N	\N	26
2261	189	4	7	7	12	2	\N	\N	\N	26
2262	189	5	6	6	11	1	\N	\N	32	\N
2263	189	6	5	0	10	0	\N	\N	\N	10
2264	189	7	0	0	0	0	8	8	8	8
2265	189	8	0	0	0	0	8	8	8	8
2266	189	9	0	0	0	0	8	8	8	8
2267	189	10	0	0	0	0	8	8	8	8
2268	189	11	0	0	0	0	8	8	8	8
2269	190	0	8	8	16	2	14	40	\N	\N
2270	190	1	8	7	15	2	\N	40	\N	\N
2271	190	2	7	7	14	2	\N	\N	\N	\N
2272	190	3	6	6	14	2	\N	\N	\N	\N
2273	190	4	5	5	13	1	\N	\N	\N	\N
2274	190	5	4	0	12	0	\N	\N	\N	10
2275	190	6	0	0	0	0	8	8	8	8
2276	190	7	0	0	0	0	8	8	8	8
2277	190	8	0	0	0	0	8	8	8	8
2278	190	9	0	0	0	0	8	8	8	8
2279	190	10	0	0	0	0	8	8	8	8
2280	190	11	0	0	0	0	8	8	8	8
2281	191	0	8	9	16	2	14	40	\N	\N
2282	191	1	8	8	16	2	\N	40	\N	\N
2283	191	2	8	7	15	2	\N	\N	\N	\N
2284	191	3	7	7	14	2	\N	\N	\N	\N
2285	191	4	6	6	14	2	\N	\N	\N	\N
2286	191	5	5	5	13	1	\N	\N	\N	\N
2287	191	6	4	0	12	0	\N	\N	\N	10
2288	191	7	0	0	0	0	8	8	8	8
2289	191	8	0	0	0	0	8	8	8	8
2290	191	9	0	0	0	0	8	8	8	8
2291	191	10	0	0	0	0	8	8	8	8
2292	191	11	0	0	0	0	8	8	8	8
2293	192	0	8	9	16	2	14	40	\N	\N
2294	192	1	8	8	16	2	14	40	\N	\N
2295	192	2	8	7	15	2	\N	40	\N	\N
2296	192	3	7	7	14	2	\N	\N	\N	\N
2297	192	4	6	6	14	2	\N	\N	\N	\N
2298	192	5	5	5	13	1	\N	\N	\N	\N
2299	192	6	4	0	12	0	\N	\N	\N	10
2300	192	7	0	0	0	0	8	8	8	8
2301	192	8	0	0	0	0	8	8	8	8
2302	192	9	0	0	0	0	8	8	8	8
2303	192	10	0	0	0	0	8	8	8	8
2304	192	11	0	0	0	0	8	8	8	8
2305	193	0	9	9	15	2	14	40	\N	20
2306	193	1	8	9	15	2	\N	\N	\N	20
2307	193	2	7	8	14	1	\N	\N	\N	\N
2308	193	3	6	6	13	1	\N	\N	\N	\N
2309	193	4	5	5	12	1	\N	\N	\N	\N
2310	193	5	4	0	11	0	\N	\N	\N	10
2311	193	6	0	0	0	0	8	8	8	8
2312	193	7	0	0	0	0	8	8	8	8
2313	193	8	0	0	0	0	8	8	8	8
2314	193	9	0	0	0	0	8	8	8	8
2315	193	10	0	0	0	0	8	8	8	8
2316	193	11	0	0	0	0	8	8	8	8
2317	194	0	10	9	16	2	14	40	\N	20
2318	194	1	8	9	15	2	14	\N	\N	20
2319	194	2	8	9	15	2	\N	\N	\N	20
2320	194	3	6	6	13	1	\N	\N	\N	\N
2321	194	4	5	5	12	1	\N	\N	\N	\N
2322	194	5	4	0	11	0	\N	\N	\N	10
2323	194	6	0	0	0	0	8	8	8	8
2324	194	7	0	0	0	0	8	8	8	8
2325	194	8	0	0	0	0	8	8	8	8
2326	194	9	0	0	0	0	8	8	8	8
2327	194	10	0	0	0	0	8	8	8	8
2328	194	11	0	0	0	0	8	8	8	8
2329	195	0	10	10	16	2	14	40	\N	20
2330	195	1	9	9	16	2	14	40	\N	20
2331	195	2	8	9	15	2	14	\N	\N	20
2332	195	3	8	6	13	2	\N	\N	\N	20
2333	195	4	6	6	12	1	\N	\N	\N	\N
2334	195	5	5	5	11	1	\N	\N	\N	\N
2335	195	6	4	0	10	0	\N	\N	\N	10
2336	195	7	0	0	0	0	8	8	8	8
2337	195	8	0	0	0	0	8	8	8	8
2338	195	9	0	0	0	0	8	8	8	8
2339	195	10	0	0	0	0	8	8	8	8
2340	195	11	0	0	0	0	8	8	8	8
2341	196	0	6	10	17	3	\N	\N	37	3
2342	196	1	7	9	15	2	\N	\N	37	3
2343	196	2	8	8	13	2	\N	\N	2	3
2344	196	3	9	7	11	2	\N	\N	\N	3
2345	196	4	10	10	9	3	30	\N	\N	4
2346	196	5	4	0	8	0	\N	\N	\N	10
2347	196	6	0	0	0	0	8	8	8	8
2348	196	7	0	0	0	0	8	8	8	8
2349	196	8	0	0	0	0	8	8	8	8
2350	196	9	0	0	0	0	8	8	8	8
2351	196	10	0	0	0	0	8	8	8	8
2352	196	11	0	0	0	0	8	8	8	8
2353	197	0	6	10	17	4	\N	\N	37	3
2354	197	1	7	10	15	3	\N	\N	37	3
2355	197	2	8	9	13	3	\N	\N	37	3
2356	197	3	9	8	11	2	\N	\N	2	3
2357	197	4	10	10	9	4	30	\N	\N	4
2358	197	5	4	0	8	0	\N	\N	\N	10
2359	197	6	0	0	0	0	8	8	8	8
2360	197	7	0	0	0	0	8	8	8	8
2361	197	8	0	0	0	0	8	8	8	8
2362	197	9	0	0	0	0	8	8	8	8
2363	197	10	0	0	0	0	8	8	8	8
2364	197	11	0	0	0	0	8	8	8	8
2365	198	0	7	10	18	4	\N	\N	37	3
2366	198	1	8	10	16	3	\N	\N	37	3
2367	198	2	9	9	14	3	\N	\N	37	3
2368	198	3	10	8	12	2	\N	\N	2	3
2369	198	4	11	10	10	4	\N	\N	2	4
2370	198	5	12	9	9	3	30	\N	\N	4
2371	198	6	5	0	8	0	\N	\N	\N	10
2372	198	7	0	0	0	0	8	8	8	8
2373	198	8	0	0	0	0	8	8	8	8
2374	198	9	0	0	0	0	8	8	8	8
2375	198	10	0	0	0	0	8	8	8	8
2376	198	11	0	0	0	0	8	8	8	8
2377	199	0	7	11	14	2	\N	39	\N	28
2378	199	1	7	10	14	2	\N	\N	\N	28
2379	199	2	7	10	13	2	\N	38	\N	28
2380	199	3	7	9	13	2	\N	38	\N	\N
2381	199	4	7	8	12	2	\N	\N	\N	\N
2382	199	5	7	8	12	2	\N	\N	32	\N
2383	199	6	7	7	11	2	\N	\N	32	\N
2384	199	7	0	0	0	0	8	8	8	8
2385	199	8	0	0	0	0	8	8	8	8
2386	199	9	0	0	0	0	8	8	8	8
2387	199	10	0	0	0	0	8	8	8	8
2388	199	11	0	0	0	0	8	8	8	8
2389	200	0	8	11	14	2	\N	39	\N	28
2390	200	1	8	10	14	2	\N	39	\N	28
2391	200	2	8	10	13	2	\N	\N	\N	28
2392	200	3	8	9	13	2	\N	38	\N	28
2393	200	4	8	8	12	2	\N	38	\N	\N
2394	200	5	8	8	12	2	\N	\N	32	\N
2395	200	6	8	7	11	2	\N	\N	32	\N
2396	200	7	0	0	0	0	8	8	8	8
2397	200	8	0	0	0	0	8	8	8	8
2398	200	9	0	0	0	0	8	8	8	8
2399	200	10	0	0	0	0	8	8	8	8
2400	200	11	0	0	0	0	8	8	8	8
2401	201	0	9	11	14	2	\N	39	\N	28
2402	201	1	9	10	14	2	\N	39	\N	28
2403	201	2	9	10	13	2	\N	\N	\N	28
2404	201	3	9	9	13	2	\N	38	\N	28
2405	201	4	9	8	12	2	\N	38	\N	28
2406	201	5	9	8	12	2	\N	38	\N	\N
2407	201	6	9	7	11	2	\N	\N	32	\N
2408	201	7	9	7	11	2	\N	\N	32	\N
2409	201	8	0	0	0	0	8	8	8	8
2410	201	9	0	0	0	0	8	8	8	8
2411	201	10	0	0	0	0	8	8	8	8
2412	201	11	0	0	0	0	8	8	8	8
2413	202	0	8	9	15	1	\N	40	37	\N
2414	202	1	8	8	15	3	\N	36	2	\N
2415	202	2	8	7	15	2	\N	36	\N	3
2416	202	3	8	7	14	2	\N	\N	\N	3
2417	202	4	7	7	14	2	\N	\N	\N	3
2418	202	5	6	5	13	2	\N	\N	\N	3
2419	202	6	5	0	12	0	\N	\N	\N	10
2420	202	7	0	0	0	0	8	8	8	8
2421	202	8	0	0	0	0	8	8	8	8
2422	202	9	0	0	0	0	8	8	8	8
2423	202	10	0	0	0	0	8	8	8	8
2424	202	11	0	0	0	0	8	8	8	8
2425	203	0	8	9	16	1	\N	40	37	\N
2426	203	1	8	8	15	1	\N	40	2	\N
2427	203	2	8	8	15	3	\N	36	\N	3
2428	203	3	8	7	14	2	\N	36	\N	3
2429	203	4	7	7	14	2	\N	36	\N	3
2430	203	5	6	5	13	2	\N	\N	\N	3
2431	203	6	5	0	12	0	\N	\N	\N	10
2432	203	7	0	0	0	0	8	8	8	8
2433	203	8	0	0	0	0	8	8	8	8
2434	203	9	0	0	0	0	8	8	8	8
2435	203	10	0	0	0	0	8	8	8	8
2436	203	11	0	0	0	0	8	8	8	8
2437	204	0	8	10	16	1	\N	40	37	\N
2438	204	1	8	9	16	1	\N	40	2	\N
2439	204	2	8	8	15	3	\N	36	\N	3
2440	204	3	8	8	15	3	\N	36	\N	3
2441	204	4	7	7	14	2	\N	36	\N	3
2442	204	5	6	7	14	2	\N	36	\N	3
2443	204	6	5	5	13	2	\N	\N	\N	3
2444	204	7	4	0	12	0	\N	\N	\N	10
2445	204	8	0	0	0	0	8	8	8	8
2446	204	9	0	0	0	0	8	8	8	8
2447	204	10	0	0	0	0	8	8	8	8
2448	204	11	0	0	0	0	8	8	8	8
2449	205	0	8	8	15	2	\N	12	17	\N
2450	205	1	7	8	15	2	\N	12	17	\N
2451	205	2	7	8	14	2	\N	12	17	\N
2452	205	3	7	8	14	1	\N	\N	\N	19
2453	205	4	6	8	14	1	\N	\N	\N	19
2454	205	5	6	8	14	1	\N	38	\N	\N
2455	205	6	5	8	13	1	\N	38	\N	\N
2456	205	7	8	10	12	4	\N	\N	\N	4
2457	205	8	4	8	11	1	\N	\N	32	\N
2458	205	9	0	0	0	0	8	8	8	8
2459	205	10	0	0	0	0	8	8	8	8
2460	205	11	0	0	0	0	8	8	8	8
2461	206	0	8	8	16	3	\N	12	17	\N
2462	206	1	8	8	15	2	\N	12	17	\N
2463	206	2	7	8	15	2	\N	12	17	\N
2464	206	3	7	8	14	2	\N	\N	\N	19
2465	206	4	6	8	14	1	\N	\N	\N	19
2466	206	5	6	8	14	1	\N	38	\N	\N
2467	206	6	5	8	14	1	\N	38	\N	\N
2468	206	7	8	10	13	4	\N	\N	\N	4
2469	206	8	4	8	11	1	\N	\N	32	\N
2470	206	9	0	0	0	0	8	8	8	8
2471	206	10	0	0	0	0	8	8	8	8
2472	206	11	0	0	0	0	8	8	8	8
2473	207	0	9	8	16	3	\N	12	17	\N
2474	207	1	8	8	16	3	\N	12	17	\N
2475	207	2	8	8	15	2	\N	12	17	\N
2476	207	3	7	8	15	2	\N	\N	\N	19
2477	207	4	7	8	14	2	\N	\N	\N	19
2478	207	5	6	8	14	1	\N	\N	\N	19
2479	207	6	6	8	14	1	\N	38	\N	\N
2480	207	7	9	8	13	1	\N	38	\N	\N
2481	207	8	9	10	13	5	\N	\N	\N	4
2482	207	9	4	8	11	1	\N	\N	32	\N
2483	207	10	0	0	0	0	8	8	8	8
2484	207	11	0	0	0	0	8	8	8	8
2485	208	0	10	9	16	2	\N	22	\N	3
2486	208	1	9	9	15	2	\N	22	\N	3
2487	208	2	8	8	15	2	\N	\N	\N	3
2488	208	3	7	7	14	1	\N	\N	\N	\N
2489	208	4	8	9	13	3	31	\N	\N	4
2490	208	5	0	0	0	0	8	8	8	8
2491	208	6	0	0	0	0	8	8	8	8
2492	208	7	0	0	0	0	8	8	8	8
2493	208	8	0	0	0	0	8	8	8	8
2494	208	9	0	0	0	0	8	8	8	8
2495	208	10	0	0	0	0	8	8	8	8
2496	208	11	0	0	0	0	8	8	8	8
2497	209	0	10	10	16	3	\N	22	\N	3
2498	209	1	9	9	16	2	\N	22	\N	3
2499	209	2	8	9	15	2	\N	22	\N	3
2500	209	3	7	8	15	2	\N	\N	\N	3
2501	209	4	6	8	14	1	\N	\N	\N	\N
2502	209	5	8	6	13	4	31	\N	\N	4
2503	209	6	0	0	0	0	8	8	8	8
2504	209	7	0	0	0	0	8	8	8	8
2505	209	8	0	0	0	0	8	8	8	8
2506	209	9	0	0	0	0	8	8	8	8
2507	209	10	0	0	0	0	8	8	8	8
2508	209	11	0	0	0	0	8	8	8	8
2509	210	0	10	12	17	3	\N	22	\N	3
2510	210	1	10	10	16	3	\N	22	\N	3
2511	210	2	9	9	16	2	\N	22	\N	3
2512	210	3	8	9	15	2	\N	22	\N	3
2513	210	4	7	8	15	2	\N	\N	\N	3
2514	210	5	6	8	14	1	\N	\N	\N	\N
2515	210	6	8	6	13	4	31	\N	\N	4
2516	210	7	0	0	0	0	8	8	8	8
2517	210	8	0	0	0	0	8	8	8	8
2518	210	9	0	0	0	0	8	8	8	8
2519	210	10	0	0	0	0	8	8	8	8
2520	210	11	0	0	0	0	8	8	8	8
2521	211	0	11	12	17	5	1	\N	\N	4
2522	211	1	11	12	16	4	1	\N	\N	4
2523	211	2	10	10	15	3	1	\N	11	4
2524	211	3	9	10	14	2	1	40	\N	3
2525	211	4	8	9	14	2	1	40	\N	3
2526	211	5	7	8	13	2	1	40	\N	3
2527	211	6	7	8	13	2	\N	40	11	3
2528	211	7	6	7	12	1	\N	\N	11	3
2529	211	8	6	6	11	0	\N	\N	\N	10
2530	211	9	0	0	0	0	8	8	8	8
2531	211	10	0	0	0	0	8	8	8	8
2532	211	11	0	0	0	0	8	8	8	8
2533	212	0	5	11	17	4	6	\N	37	\N
2534	212	1	10	11	17	3	\N	36	37	\N
2535	212	2	10	10	16	3	\N	36	29	\N
2536	212	3	9	10	16	2	\N	36	29	\N
2537	212	4	9	9	15	2	\N	36	29	\N
2538	212	5	9	9	14	2	\N	36	29	\N
2539	212	6	8	8	13	2	\N	36	29	\N
2540	212	7	7	7	13	2	\N	36	29	\N
2541	212	8	6	6	12	1	\N	\N	\N	\N
2542	212	9	0	0	0	0	8	8	8	8
2543	212	10	0	0	0	0	8	8	8	8
2544	212	11	0	0	0	0	8	8	8	8
2545	213	0	10	11	17	2	30	40	37	28
2546	213	1	9	10	17	2	\N	40	37	28
2547	213	2	9	10	16	2	\N	40	37	28
2548	213	3	8	9	16	2	\N	12	37	\N
2549	213	4	8	9	16	2	\N	12	37	\N
2550	213	5	7	8	15	1	\N	12	2	\N
2551	213	6	6	8	14	1	\N	12	2	\N
2552	213	7	6	7	14	1	\N	12	2	\N
2553	213	8	5	0	13	0	\N	\N	\N	10
2554	213	9	0	0	0	0	8	8	8	8
2555	213	10	0	0	0	0	8	8	8	8
2556	213	11	0	0	0	0	8	8	8	8
2557	214	0	10	11	15	2	14	34	11	7
2558	214	1	10	10	16	3	14	34	\N	7
2559	214	2	9	10	16	3	\N	34	\N	\N
2560	214	3	9	9	16	2	\N	34	\N	\N
2561	214	4	9	9	15	2	\N	34	\N	\N
2562	214	5	8	8	14	2	\N	\N	\N	\N
2563	214	6	8	8	14	2	\N	\N	\N	\N
2564	214	7	7	7	14	1	\N	\N	11	4
2565	214	8	6	0	13	0	\N	\N	\N	10
2566	214	9	0	0	0	0	8	8	8	8
2567	214	10	0	0	0	0	8	8	8	8
2568	214	11	0	0	0	0	8	8	8	8
2569	215	0	10	9	18	0	\N	22	9	20
2570	215	1	9	9	18	0	\N	22	9	20
2571	215	2	9	8	17	0	\N	22	9	20
2572	215	3	8	7	17	0	\N	22	\N	20
2573	215	4	8	7	16	0	\N	22	\N	20
2574	215	5	8	7	16	0	\N	22	\N	\N
2575	215	6	7	6	15	2	\N	15	\N	\N
2576	215	7	7	6	14	1	\N	15	\N	\N
2577	215	8	6	6	13	0	\N	15	\N	\N
2578	215	9	4	0	12	0	\N	\N	\N	10
2579	215	10	0	0	0	0	8	8	8	8
2580	215	11	0	0	0	0	8	8	8	8
2581	216	0	8	10	17	3	31	36	\N	7
2582	216	1	7	10	16	3	31	36	2	\N
2583	216	2	6	9	15	2	\N	36	2	\N
2584	216	3	6	9	15	2	\N	36	2	\N
2585	216	4	6	8	14	2	\N	\N	2	\N
2586	216	5	5	10	13	3	\N	\N	\N	4
2587	216	6	5	9	12	2	\N	36	\N	4
2588	216	7	5	0	11	0	\N	\N	\N	10
2589	216	8	0	0	0	0	8	8	8	8
2590	216	9	0	0	0	0	8	8	8	8
2591	216	10	0	0	0	0	8	8	8	8
2592	216	11	0	0	0	0	8	8	8	8
2593	217	0	8	12	19	3	13	40	9	3
2594	217	1	8	11	19	3	13	40	9	3
2595	217	2	8	11	18	2	13	40	9	3
2596	217	3	7	10	18	2	13	40	9	3
2597	217	4	7	10	17	2	13	40	\N	3
2598	217	5	6	9	17	2	\N	\N	\N	3
2599	217	6	6	9	16	2	\N	\N	\N	3
2600	217	7	6	8	16	2	\N	\N	\N	3
2601	217	8	5	7	15	2	\N	\N	\N	3
2602	217	9	4	6	14	2	\N	\N	\N	\N
2603	217	10	0	0	0	0	8	8	8	8
2604	217	11	0	0	0	0	8	8	8	8
2605	218	0	10	11	17	3	13	12	\N	20
2606	218	1	10	10	16	3	13	12	\N	20
2607	218	2	9	10	16	2	13	12	\N	20
2608	218	3	9	9	15	2	13	12	\N	\N
2609	218	4	9	9	15	2	13	12	\N	\N
2610	218	5	7	9	14	2	\N	12	25	\N
2611	218	6	7	8	14	2	\N	\N	25	\N
2612	218	7	6	7	13	2	\N	\N	25	\N
2613	218	8	4	5	12	2	\N	\N	25	\N
2614	218	9	0	0	0	0	8	8	8	8
2615	218	10	0	0	0	0	8	8	8	8
2616	218	11	0	0	0	0	8	8	8	8
2617	219	0	8	10	16	2	13	\N	17	7
2618	219	1	8	11	17	3	13	\N	17	7
2619	219	2	7	12	18	4	13	38	\N	26
2620	219	3	7	11	17	3	13	38	\N	26
2621	219	4	7	10	16	3	13	38	\N	3
2622	219	5	6	9	15	2	\N	38	\N	3
2623	219	6	6	8	14	2	\N	39	\N	3
2624	219	7	4	10	13	4	\N	39	\N	4
2625	219	8	4	9	12	3	\N	39	\N	4
2626	219	9	0	0	0	0	8	8	8	8
2627	219	10	0	0	0	0	8	8	8	8
2628	219	11	0	0	0	0	8	8	8	8
2629	220	0	6	13	17	5	5	\N	11	28
2630	220	1	6	12	16	4	5	\N	\N	28
2631	220	2	12	11	15	4	30	\N	11	\N
2632	220	3	10	10	14	3	30	18	\N	\N
2633	220	4	9	9	14	2	\N	18	11	\N
2634	220	5	8	8	13	2	\N	\N	\N	3
2635	220	6	10	13	13	5	\N	\N	\N	4
2636	220	7	8	10	12	3	\N	\N	\N	4
2637	220	8	0	0	0	0	8	8	8	8
2638	220	9	0	0	0	0	8	8	8	8
2639	220	10	0	0	0	0	8	8	8	8
2640	220	11	0	0	0	0	8	8	8	8
2641	221	0	0	0	18	0	\N	\N	37	7
2642	221	1	0	0	17	0	\N	\N	37	7
2643	221	2	0	0	16	0	\N	\N	37	7
2644	221	3	0	0	16	0	\N	\N	37	7
2645	221	4	0	0	15	0	\N	\N	2	\N
2646	221	5	0	0	14	0	\N	\N	\N	\N
2647	221	6	0	0	0	0	8	8	8	8
2648	221	7	0	0	0	0	8	8	8	8
2649	221	8	0	0	0	0	8	8	8	8
2650	221	9	0	0	0	0	8	8	8	8
2651	221	10	0	0	0	0	8	8	8	8
2652	221	11	0	0	0	0	8	8	8	8
2653	222	0	10	9	18	2	\N	39	9	\N
2654	222	1	8	8	17	2	\N	39	29	\N
2655	222	2	6	7	16	2	\N	39	\N	\N
2656	222	3	5	6	15	1	\N	\N	\N	\N
2657	222	4	4	5	14	1	\N	\N	32	\N
2658	222	5	0	0	0	0	8	8	8	8
2659	222	6	0	0	0	0	8	8	8	8
2660	222	7	0	0	0	0	8	8	8	8
2661	222	8	0	0	0	0	8	8	8	8
2662	222	9	0	0	0	0	8	8	8	8
2663	222	10	0	0	0	0	8	8	8	8
2664	222	11	0	0	0	0	8	8	8	8
2665	223	0	10	10	14	3	35	\N	17	\N
2666	223	1	8	9	14	2	35	40	\N	\N
2667	223	2	5	6	12	1	\N	\N	\N	\N
2668	223	3	3	0	11	0	\N	\N	\N	10
2669	223	4	0	0	0	0	8	8	8	8
2670	223	5	0	0	0	0	8	8	8	8
2671	223	6	0	0	0	0	8	8	8	8
2672	223	7	0	0	0	0	8	8	8	8
2673	223	8	0	0	0	0	8	8	8	8
2674	223	9	0	0	0	0	8	8	8	8
2675	223	10	0	0	0	0	8	8	8	8
2676	223	11	0	0	0	0	8	8	8	8
2677	224	0	6	9	16	4	\N	33	23	\N
2678	224	1	6	8	16	3	\N	33	23	\N
2679	224	2	5	8	15	3	\N	\N	23	\N
2680	224	3	5	7	14	2	\N	\N	23	\N
2681	224	4	5	7	14	1	\N	\N	\N	3
2682	224	5	4	0	14	0	\N	\N	\N	10
2683	224	6	0	0	0	0	8	8	8	8
2684	224	7	0	0	0	0	8	8	8	8
2685	224	8	0	0	0	0	8	8	8	8
2686	224	9	0	0	0	0	8	8	8	8
2687	224	10	0	0	0	0	8	8	8	8
2688	224	11	0	0	0	0	8	8	8	8
2689	225	0	6	10	16	3	6	34	\N	\N
2690	225	1	5	8	15	2	6	\N	\N	\N
2691	225	2	8	8	14	2	\N	\N	\N	\N
2692	225	3	6	7	12	1	\N	\N	\N	\N
2693	225	4	4	5	11	1	\N	\N	32	\N
2694	225	5	0	0	0	0	8	8	8	8
2695	225	6	0	0	0	0	8	8	8	8
2696	225	7	0	0	0	0	8	8	8	8
2697	225	8	0	0	0	0	8	8	8	8
2698	225	9	0	0	0	0	8	8	8	8
2699	225	10	0	0	0	0	8	8	8	8
2700	225	11	0	0	0	0	8	8	8	8
2701	226	0	10	8	15	2	14	40	11	\N
2702	226	1	9	8	15	2	14	\N	\N	\N
2703	226	2	9	7	14	1	14	\N	\N	\N
2704	226	3	8	7	13	1	14	\N	\N	\N
2705	226	4	7	7	12	1	\N	\N	\N	\N
2706	226	5	6	0	12	0	\N	\N	\N	10
2707	226	6	0	0	0	0	8	8	8	8
2708	226	7	0	0	0	0	8	8	8	8
2709	226	8	0	0	0	0	8	8	8	8
2710	226	9	0	0	0	0	8	8	8	8
2711	226	10	0	0	0	0	8	8	8	8
2712	226	11	0	0	0	0	8	8	8	8
2713	227	0	10	10	15	1	30	40	17	\N
2714	227	1	9	9	14	1	30	40	\N	\N
2715	227	2	8	8	13	1	\N	40	\N	\N
2716	227	3	6	6	12	1	\N	\N	\N	\N
2717	227	4	4	4	10	1	\N	\N	\N	\N
2718	227	5	0	0	0	0	8	8	8	8
2719	227	6	0	0	0	0	8	8	8	8
2720	227	7	0	0	0	0	8	8	8	8
2721	227	8	0	0	0	0	8	8	8	8
2722	227	9	0	0	0	0	8	8	8	8
2723	227	10	0	0	0	0	8	8	8	8
2724	227	11	0	0	0	0	8	8	8	8
2725	228	0	10	10	17	3	\N	12	37	\N
2726	228	1	8	10	17	2	\N	12	\N	\N
2727	228	2	7	9	16	2	\N	12	\N	\N
2728	228	3	6	11	15	4	\N	\N	\N	4
2729	228	4	10	10	17	3	\N	\N	37	21
2730	228	5	8	10	17	2	\N	\N	\N	21
2731	228	6	7	9	16	2	\N	\N	\N	21
2732	228	7	6	11	15	4	\N	\N	\N	4
2733	228	8	10	10	17	2	\N	40	37	\N
2734	228	9	8	10	17	2	\N	40	\N	\N
2735	228	10	7	9	16	2	\N	40	\N	\N
2736	228	11	0	0	0	0	8	8	8	8
2737	229	0	6	9	15	0	6	40	17	\N
2738	229	1	5	9	14	2	6	\N	17	\N
2739	229	2	10	8	13	2	\N	\N	23	\N
2740	229	3	9	7	12	1	\N	\N	23	\N
2741	229	4	8	6	11	1	\N	38	\N	\N
2742	229	5	7	6	10	1	\N	38	\N	\N
2743	229	6	0	0	0	0	8	8	8	8
2744	229	7	0	0	0	0	8	8	8	8
2745	229	8	0	0	0	0	8	8	8	8
2746	229	9	0	0	0	0	8	8	8	8
2747	229	10	0	0	0	0	8	8	8	8
2748	229	11	0	0	0	0	8	8	8	8
2749	230	0	10	10	16	4	13	36	2	3
2750	230	1	9	9	16	3	13	36	\N	3
2751	230	2	8	9	15	2	13	36	\N	3
2752	230	3	7	8	15	2	13	\N	\N	3
2753	230	4	6	8	14	2	13	\N	\N	3
2754	230	5	6	7	14	1	13	\N	\N	\N
2755	230	6	0	0	0	0	8	8	8	8
2756	230	7	0	0	0	0	8	8	8	8
2757	230	8	0	0	0	0	8	8	8	8
2758	230	9	0	0	0	0	8	8	8	8
2759	230	10	0	0	0	0	8	8	8	8
2760	230	11	0	0	0	0	8	8	8	8
2761	231	0	9	8	14	3	1	36	\N	4
2762	231	1	9	8	14	2	1	36	\N	4
2763	231	2	8	8	13	2	1	36	\N	\N
2764	231	3	7	6	12	2	1	\N	\N	\N
2765	231	4	5	5	12	1	1	\N	\N	\N
2766	231	5	3	0	11	0	\N	\N	\N	10
2767	231	6	0	0	0	0	8	8	8	8
2768	231	7	0	0	0	0	8	8	8	8
2769	231	8	0	0	0	0	8	8	8	8
2770	231	9	0	0	0	0	8	8	8	8
2771	231	10	0	0	0	0	8	8	8	8
2772	231	11	0	0	0	0	8	8	8	8
2773	232	0	6	9	15	3	\N	22	37	3
2774	232	1	6	8	15	3	\N	22	37	3
2775	232	2	5	8	15	2	\N	22	\N	3
2776	232	3	5	7	14	2	\N	22	\N	\N
2777	232	4	5	7	13	2	\N	\N	\N	\N
2778	232	5	4	6	13	2	\N	\N	\N	\N
2779	232	6	4	5	12	1	\N	\N	16	\N
2780	232	7	2	0	11	0	\N	\N	\N	10
2781	232	8	0	0	0	0	8	8	8	8
2782	232	9	0	0	0	0	8	8	8	8
2783	232	10	0	0	0	0	8	8	8	8
2784	232	11	0	0	0	0	8	8	8	8
2785	233	0	9	9	16	2	\N	33	\N	21
2786	233	1	8	9	15	2	\N	33	\N	21
2787	233	2	8	8	14	2	\N	33	\N	21
2788	233	3	7	8	13	3	\N	\N	\N	26
2789	233	4	7	7	12	2	\N	\N	\N	26
2790	233	5	6	6	11	1	\N	\N	32	\N
2791	233	6	5	0	10	0	\N	\N	\N	10
2792	233	7	0	0	0	0	8	8	8	8
2793	233	8	0	0	0	0	8	8	8	8
2794	233	9	0	0	0	0	8	8	8	8
2795	233	10	0	0	0	0	8	8	8	8
2796	233	11	0	0	0	0	8	8	8	8
2797	234	0	4	8	15	3	5	\N	\N	\N
2798	234	1	8	7	14	2	\N	\N	\N	\N
2799	234	2	7	6	13	1	\N	\N	\N	\N
2800	234	3	6	4	12	1	\N	\N	\N	\N
2801	234	4	4	0	11	0	\N	\N	\N	10
2802	234	5	0	0	0	0	8	8	8	8
2803	234	6	0	0	0	0	8	8	8	8
2804	234	7	0	0	0	0	8	8	8	8
2805	234	8	0	0	0	0	8	8	8	8
2806	234	9	0	0	0	0	8	8	8	8
2807	234	10	0	0	0	0	8	8	8	8
2808	234	11	0	0	0	0	8	8	8	8
2809	235	0	10	9	16	2	14	40	\N	19
2810	235	1	8	9	15	2	14	\N	\N	19
2811	235	2	8	9	15	2	\N	\N	\N	19
2812	235	3	6	6	13	1	\N	\N	\N	19
2813	235	4	5	5	12	1	\N	\N	\N	19
2814	235	5	4	0	11	0	\N	\N	\N	10
2815	235	6	0	0	0	0	8	8	8	8
2816	235	7	0	0	0	0	8	8	8	8
2817	235	8	0	0	0	0	8	8	8	8
2818	235	9	0	0	0	0	8	8	8	8
2819	235	10	0	0	0	0	8	8	8	8
2820	235	11	0	0	0	0	8	8	8	8
2821	236	0	7	10	17	4	31	\N	16	\N
2822	236	1	7	10	18	3	31	\N	37	3
2823	236	2	6	9	17	3	\N	36	37	3
2824	236	3	6	8	16	2	\N	36	2	3
2825	236	4	5	10	15	4	\N	\N	2	4
2826	236	5	4	9	15	3	\N	\N	2	4
2827	236	6	3	0	15	0	\N	\N	\N	10
2828	236	7	0	0	0	0	8	8	8	8
2829	236	8	0	0	0	0	8	8	8	8
2830	236	9	0	0	0	0	8	8	8	8
2831	236	10	0	0	0	0	8	8	8	8
2832	236	11	0	0	0	0	8	8	8	8
2833	237	0	7	11	14	2	30	39	\N	28
2834	237	1	7	10	14	2	30	\N	\N	28
2835	237	2	7	10	13	2	30	38	\N	28
2836	237	3	7	9	13	2	\N	38	\N	\N
2837	237	4	7	8	12	2	\N	\N	\N	\N
2838	237	5	7	8	12	2	\N	\N	32	\N
2839	237	6	7	7	11	2	\N	\N	32	\N
2840	237	7	0	0	0	0	8	8	8	8
2841	237	8	0	0	0	0	8	8	8	8
2842	237	9	0	0	0	0	8	8	8	8
2843	237	10	0	0	0	0	8	8	8	8
2844	237	11	0	0	0	0	8	8	8	8
2845	238	0	8	10	17	3	\N	40	37	\N
2846	238	1	8	9	16	3	\N	40	2	\N
2847	238	2	8	9	15	3	\N	36	\N	3
2848	238	3	8	8	14	2	\N	36	\N	3
2849	238	4	7	7	14	2	\N	36	\N	3
2850	238	5	6	5	13	2	\N	\N	\N	3
2851	238	6	5	0	12	0	\N	\N	\N	10
2852	238	7	0	0	0	0	8	8	8	8
2853	238	8	0	0	0	0	8	8	8	8
2854	238	9	0	0	0	0	8	8	8	8
2855	238	10	0	0	0	0	8	8	8	8
2856	238	11	0	0	0	0	8	8	8	8
2857	239	0	9	8	16	3	\N	18	17	\N
2858	239	1	8	8	16	3	\N	18	17	\N
2859	239	2	8	8	15	2	\N	18	17	\N
2860	239	3	7	8	15	2	35	12	\N	\N
2861	239	4	7	8	14	2	35	12	\N	\N
2862	239	5	6	8	14	2	35	12	\N	\N
2863	239	6	9	10	13	4	\N	40	\N	4
2864	239	7	9	10	13	3	\N	40	\N	4
2865	239	8	9	10	13	2	\N	40	\N	4
2866	239	9	4	8	11	1	\N	\N	32	\N
2867	239	10	0	0	0	0	8	8	8	8
2868	239	11	0	0	0	0	8	8	8	8
2869	240	0	10	9	16	2	\N	22	\N	3
2870	240	1	9	9	15	2	\N	22	\N	3
2871	240	2	8	8	15	2	\N	\N	\N	3
2872	240	3	7	7	14	1	\N	\N	\N	\N
2873	240	4	8	9	13	3	31	\N	\N	4
2874	240	5	0	0	0	0	8	8	8	8
2875	240	6	0	0	0	0	8	8	8	8
2876	240	7	0	0	0	0	8	8	8	8
2877	240	8	0	0	0	0	8	8	8	8
2878	240	9	0	0	0	0	8	8	8	8
2879	240	10	0	0	0	0	8	8	8	8
2880	240	11	0	0	0	0	8	8	8	8
2881	241	0	8	7	15	2	\N	40	2	\N
2882	241	1	8	6	14	2	\N	\N	2	\N
2883	241	2	6	6	13	1	\N	\N	\N	\N
2884	241	3	5	5	12	1	\N	\N	\N	\N
2885	241	4	4	5	10	1	\N	\N	\N	\N
2886	241	5	0	0	0	0	8	8	8	8
2887	241	6	0	0	0	0	8	8	8	8
2888	241	7	0	0	0	0	8	8	8	8
2889	241	8	0	0	0	0	8	8	8	8
2890	241	9	0	0	0	0	8	8	8	8
2891	241	10	0	0	0	0	8	8	8	8
2892	241	11	0	0	0	0	8	8	8	8
2893	242	0	8	8	15	2	\N	40	2	\N
2894	242	1	8	7	14	2	\N	\N	2	\N
2895	242	2	6	6	13	1	\N	\N	\N	\N
2896	242	3	6	6	12	1	\N	\N	\N	\N
2897	242	4	5	5	11	1	\N	\N	\N	\N
2898	242	5	4	5	10	1	\N	\N	\N	\N
2899	242	6	0	0	0	0	8	8	8	8
2900	242	7	0	0	0	0	8	8	8	8
2901	242	8	0	0	0	0	8	8	8	8
2902	242	9	0	0	0	0	8	8	8	8
2903	242	10	0	0	0	0	8	8	8	8
2904	242	11	0	0	0	0	8	8	8	8
2905	243	0	8	9	15	2	\N	40	2	\N
2906	243	1	8	7	15	2	\N	\N	2	\N
2907	243	2	6	6	14	2	\N	\N	\N	\N
2908	243	3	6	6	13	1	\N	\N	\N	\N
2909	243	4	5	5	12	1	\N	\N	\N	\N
2910	243	5	5	5	11	1	\N	\N	\N	\N
2911	243	6	4	5	10	1	\N	\N	\N	\N
2912	243	7	0	0	0	0	8	8	8	8
2913	243	8	0	0	0	0	8	8	8	8
2914	243	9	0	0	0	0	8	8	8	8
2915	243	10	0	0	0	0	8	8	8	8
2916	243	11	0	0	0	0	8	8	8	8
2917	244	0	6	7	14	2	1	\N	\N	\N
2918	244	1	5	6	13	2	1	\N	\N	\N
2919	244	2	4	5	12	1	1	\N	\N	\N
2920	244	3	4	4	11	1	\N	\N	\N	\N
2921	244	4	3	0	11	0	\N	\N	\N	10
2922	244	5	2	0	10	0	\N	\N	\N	10
2923	244	6	0	0	0	0	8	8	8	8
2924	244	7	0	0	0	0	8	8	8	8
2925	244	8	0	0	0	0	8	8	8	8
2926	244	9	0	0	0	0	8	8	8	8
2927	244	10	0	0	0	0	8	8	8	8
2928	244	11	0	0	0	0	8	8	8	8
2929	245	0	6	8	14	2	1	\N	\N	\N
2930	245	1	6	7	13	2	1	\N	\N	\N
2931	245	2	5	6	12	2	1	\N	\N	\N
2932	245	3	4	4	11	1	1	\N	\N	\N
2933	245	4	3	0	11	0	\N	\N	\N	10
2934	245	5	2	0	10	0	\N	\N	\N	10
2935	245	6	0	0	0	0	8	8	8	8
2936	245	7	0	0	0	0	8	8	8	8
2937	245	8	0	0	0	0	8	8	8	8
2938	245	9	0	0	0	0	8	8	8	8
2939	245	10	0	0	0	0	8	8	8	8
2940	245	11	0	0	0	0	8	8	8	8
2941	246	0	6	9	15	3	1	\N	\N	\N
2942	246	1	6	8	13	2	1	\N	\N	\N
2943	246	2	6	6	12	2	1	\N	\N	\N
2944	246	3	4	4	11	1	1	\N	\N	\N
2945	246	4	3	0	11	0	\N	\N	\N	10
2946	246	5	2	0	10	0	\N	\N	\N	10
2947	246	6	0	0	0	0	8	8	8	8
2948	246	7	0	0	0	0	8	8	8	8
2949	246	8	0	0	0	0	8	8	8	8
2950	246	9	0	0	0	0	8	8	8	8
2951	246	10	0	0	0	0	8	8	8	8
2952	246	11	0	0	0	0	8	8	8	8
2953	247	0	10	7	15	2	30	\N	\N	\N
2954	247	1	10	7	15	1	\N	\N	\N	\N
2955	247	2	8	6	14	1	\N	\N	\N	\N
2956	247	3	6	5	13	1	\N	\N	\N	\N
2957	247	4	5	4	12	1	\N	\N	\N	\N
2958	247	5	5	0	11	0	\N	\N	\N	10
2959	247	6	0	0	0	0	8	8	8	8
2960	247	7	0	0	0	0	8	8	8	8
2961	247	8	0	0	0	0	8	8	8	8
2962	247	9	0	0	0	0	8	8	8	8
2963	247	10	0	0	0	0	8	8	8	8
2964	247	11	0	0	0	0	8	8	8	8
2965	248	0	10	8	15	2	30	\N	\N	\N
2966	248	1	10	8	15	1	30	\N	\N	\N
2967	248	2	8	6	14	1	\N	\N	\N	\N
2968	248	3	7	5	14	1	\N	\N	\N	\N
2969	248	4	6	4	12	1	\N	\N	\N	\N
2970	248	5	5	4	12	1	\N	\N	\N	\N
2971	248	6	5	0	11	0	\N	\N	\N	10
2972	248	7	0	0	0	0	8	8	8	8
2973	248	8	0	0	0	0	8	8	8	8
2974	248	9	0	0	0	0	8	8	8	8
2975	248	10	0	0	0	0	8	8	8	8
2976	248	11	0	0	0	0	8	8	8	8
2977	249	0	10	9	15	2	30	\N	\N	\N
2978	249	1	10	8	15	2	30	\N	\N	\N
2979	249	2	9	6	14	1	\N	\N	\N	\N
2980	249	3	8	5	14	1	\N	\N	\N	\N
2981	249	4	6	4	12	1	\N	\N	\N	\N
2982	249	5	5	4	12	1	\N	\N	\N	\N
2983	249	6	5	0	11	0	\N	\N	\N	10
2984	249	7	0	0	0	0	8	8	8	8
2985	249	8	0	0	0	0	8	8	8	8
2986	249	9	0	0	0	0	8	8	8	8
2987	249	10	0	0	0	0	8	8	8	8
2988	249	11	0	0	0	0	8	8	8	8
2989	250	0	5	7	14	1	5	\N	\N	\N
2990	250	1	8	7	14	1	\N	\N	\N	\N
2991	250	2	6	6	13	1	\N	\N	\N	\N
2992	250	3	5	5	13	1	\N	\N	\N	\N
2993	250	4	4	4	12	1	\N	\N	\N	\N
2994	250	5	4	0	11	0	\N	\N	\N	10
2995	250	6	0	0	0	0	8	8	8	8
2996	250	7	0	0	0	0	8	8	8	8
2997	250	8	0	0	0	0	8	8	8	8
2998	250	9	0	0	0	0	8	8	8	8
2999	250	10	0	0	0	0	8	8	8	8
3000	250	11	0	0	0	0	8	8	8	8
3001	251	0	5	8	15	1	5	\N	\N	\N
3002	251	1	4	8	14	1	5	\N	\N	\N
3003	251	2	6	6	13	1	\N	\N	\N	\N
3004	251	3	6	5	13	1	\N	\N	\N	\N
3005	251	4	5	4	12	1	\N	\N	\N	\N
3006	251	5	4	4	12	1	\N	\N	\N	\N
3007	251	6	4	0	11	0	\N	\N	\N	10
3008	251	7	0	0	0	0	8	8	8	8
3009	251	8	0	0	0	0	8	8	8	8
3010	251	9	0	0	0	0	8	8	8	8
3011	251	10	0	0	0	0	8	8	8	8
3012	251	11	0	0	0	0	8	8	8	8
3013	252	0	5	9	15	2	5	\N	\N	\N
3014	252	1	4	8	14	1	5	\N	\N	\N
3015	252	2	6	7	13	1	\N	\N	\N	\N
3016	252	3	6	5	13	1	\N	\N	\N	\N
3017	252	4	5	4	12	1	\N	\N	\N	\N
3018	252	5	4	4	12	1	\N	\N	\N	\N
3019	252	6	4	0	11	0	\N	\N	\N	10
3020	252	7	0	0	0	0	8	8	8	8
3021	252	8	0	0	0	0	8	8	8	8
3022	252	9	0	0	0	0	8	8	8	8
3023	252	10	0	0	0	0	8	8	8	8
3024	252	11	0	0	0	0	8	8	8	8
3025	253	0	6	8	13	2	1	\N	\N	\N
3026	253	1	5	7	11	1	1	\N	\N	\N
3027	253	2	4	5	10	1	1	\N	\N	\N
3028	253	3	0	0	0	0	8	8	8	8
3029	253	4	0	0	0	0	8	8	8	8
3030	253	5	0	0	0	0	8	8	8	8
3031	253	6	0	0	0	0	8	8	8	8
3032	253	7	0	0	0	0	8	8	8	8
3033	253	8	0	0	0	0	8	8	8	8
3034	253	9	0	0	0	0	8	8	8	8
3035	253	10	0	0	0	0	8	8	8	8
3036	253	11	0	0	0	0	8	8	8	8
3037	254	0	6	9	13	2	1	\N	\N	\N
3038	254	1	6	7	12	2	1	\N	\N	\N
3039	254	2	5	6	11	1	1	\N	\N	\N
3040	254	3	4	5	10	1	1	\N	\N	\N
3041	254	4	0	0	0	0	8	8	8	8
3042	254	5	0	0	0	0	8	8	8	8
3043	254	6	0	0	0	0	8	8	8	8
3044	254	7	0	0	0	0	8	8	8	8
3045	254	8	0	0	0	0	8	8	8	8
3046	254	9	0	0	0	0	8	8	8	8
3047	254	10	0	0	0	0	8	8	8	8
3048	254	11	0	0	0	0	8	8	8	8
3049	255	0	6	9	13	2	1	\N	\N	\N
3050	255	1	6	8	13	2	1	\N	\N	\N
3051	255	2	5	7	12	2	1	\N	\N	\N
3052	255	3	4	6	11	1	1	\N	\N	\N
3053	255	4	3	5	10	1	1	\N	\N	\N
3054	255	5	0	0	0	0	8	8	8	8
3055	255	6	0	0	0	0	8	8	8	8
3056	255	7	0	0	0	0	8	8	8	8
3057	255	8	0	0	0	0	8	8	8	8
3058	255	9	0	0	0	0	8	8	8	8
3059	255	10	0	0	0	0	8	8	8	8
3060	255	11	0	0	0	0	8	8	8	8
3061	256	0	8	8	15	2	35	\N	\N	\N
3062	256	1	7	7	15	2	35	\N	\N	\N
3063	256	2	6	7	14	1	35	38	\N	\N
3064	256	3	6	0	12	0	35	\N	\N	10
3065	256	4	5	0	11	0	35	\N	\N	10
3066	256	5	0	0	0	0	8	8	8	8
3067	256	6	0	0	0	0	8	8	8	8
3068	256	7	0	0	0	0	8	8	8	8
3069	256	8	0	0	0	0	8	8	8	8
3070	256	9	0	0	0	0	8	8	8	8
3071	256	10	0	0	0	0	8	8	8	8
3072	256	11	0	0	0	0	8	8	8	8
3073	257	0	8	9	15	2	35	\N	\N	\N
3074	257	1	8	8	15	2	35	\N	\N	\N
3075	257	2	7	7	14	1	35	38	\N	\N
3076	257	3	7	7	13	1	35	38	\N	\N
3077	257	4	6	0	12	0	35	\N	\N	10
3078	257	5	5	0	11	0	35	\N	\N	10
3079	257	6	0	0	0	0	8	8	8	8
3080	257	7	0	0	0	0	8	8	8	8
3081	257	8	0	0	0	0	8	8	8	8
3082	257	9	0	0	0	0	8	8	8	8
3083	257	10	0	0	0	0	8	8	8	8
3084	257	11	0	0	0	0	8	8	8	8
3085	258	0	8	9	15	3	35	\N	\N	\N
3086	258	1	8	9	15	2	35	\N	\N	\N
3087	258	2	7	8	14	2	35	38	\N	\N
3088	258	3	7	8	14	1	35	38	\N	\N
3089	258	4	6	0	12	0	35	\N	\N	10
3090	258	5	5	0	11	0	35	\N	\N	10
3091	258	6	0	0	0	0	8	8	8	8
3092	258	7	0	0	0	0	8	8	8	8
3093	258	8	0	0	0	0	8	8	8	8
3094	258	9	0	0	0	0	8	8	8	8
3095	258	10	0	0	0	0	8	8	8	8
3096	258	11	0	0	0	0	8	8	8	8
3097	259	0	8	6	15	1	\N	\N	9	\N
3098	259	1	7	5	15	1	\N	\N	9	\N
3099	259	2	5	4	13	1	\N	\N	\N	\N
3100	259	3	4	0	11	0	\N	\N	\N	10
3101	259	4	2	0	10	0	\N	\N	\N	10
3102	259	5	0	0	0	0	8	8	8	8
3103	259	6	0	0	0	0	8	8	8	8
3104	259	7	0	0	0	0	8	8	8	8
3105	259	8	0	0	0	0	8	8	8	8
3106	259	9	0	0	0	0	8	8	8	8
3107	259	10	0	0	0	0	8	8	8	8
3108	259	11	0	0	0	0	8	8	8	8
3109	260	0	8	7	16	1	\N	\N	9	\N
3110	260	1	7	6	15	1	\N	\N	9	\N
3111	260	2	6	5	14	1	\N	\N	\N	\N
3112	260	3	5	4	13	1	\N	\N	\N	\N
3113	260	4	4	0	11	0	\N	\N	\N	10
3114	260	5	2	0	10	0	\N	\N	\N	10
3115	260	6	0	0	0	0	8	8	8	8
3116	260	7	0	0	0	0	8	8	8	8
3117	260	8	0	0	0	0	8	8	8	8
3118	260	9	0	0	0	0	8	8	8	8
3119	260	10	0	0	0	0	8	8	8	8
3120	260	11	0	0	0	0	8	8	8	8
3121	261	0	8	7	16	1	\N	\N	9	\N
3122	261	1	7	6	16	1	\N	\N	9	\N
3123	261	2	6	5	15	1	\N	\N	9	\N
3124	261	3	5	4	13	1	\N	\N	\N	\N
3125	261	4	4	0	11	0	\N	\N	\N	10
3126	261	5	2	0	10	0	\N	\N	\N	10
3127	261	6	0	0	0	0	8	8	8	8
3128	261	7	0	0	0	0	8	8	8	8
3129	261	8	0	0	0	0	8	8	8	8
3130	261	9	0	0	0	0	8	8	8	8
3131	261	10	0	0	0	0	8	8	8	8
3132	261	11	0	0	0	0	8	8	8	8
3133	262	0	8	7	14	1	\N	\N	\N	\N
3134	262	1	7	6	13	1	\N	\N	\N	\N
3135	262	2	5	4	12	1	\N	\N	\N	\N
3136	262	3	4	0	11	0	\N	\N	\N	10
3137	262	4	2	0	10	0	\N	\N	\N	10
3138	262	5	0	0	0	0	8	8	8	8
3139	262	6	0	0	0	0	8	8	8	8
3140	262	7	0	0	0	0	8	8	8	8
3141	262	8	0	0	0	0	8	8	8	8
3142	262	9	0	0	0	0	8	8	8	8
3143	262	10	0	0	0	0	8	8	8	8
3144	262	11	0	0	0	0	8	8	8	8
3145	263	0	8	8	14	1	\N	\N	\N	\N
3146	263	1	7	7	14	1	\N	\N	\N	\N
3147	263	2	6	6	13	1	\N	\N	\N	\N
3148	263	3	5	4	12	1	\N	\N	\N	\N
3149	263	4	4	0	11	0	\N	\N	\N	10
3150	263	5	2	0	10	0	\N	\N	\N	10
3151	263	6	0	0	0	0	8	8	8	8
3152	263	7	0	0	0	0	8	8	8	8
3153	263	8	0	0	0	0	8	8	8	8
3154	263	9	0	0	0	0	8	8	8	8
3155	263	10	0	0	0	0	8	8	8	8
3156	263	11	0	0	0	0	8	8	8	8
3157	264	0	8	8	15	2	\N	\N	\N	\N
3158	264	1	7	7	14	1	\N	\N	\N	\N
3159	264	2	6	6	13	1	\N	\N	\N	\N
3160	264	3	5	5	12	1	\N	\N	\N	\N
3161	264	4	4	0	11	0	\N	\N	\N	10
3162	264	5	2	0	10	0	\N	\N	\N	10
3163	264	6	0	0	0	0	8	8	8	8
3164	264	7	0	0	0	0	8	8	8	8
3165	264	8	0	0	0	0	8	8	8	8
3166	264	9	0	0	0	0	8	8	8	8
3167	264	10	0	0	0	0	8	8	8	8
3168	264	11	0	0	0	0	8	8	8	8
3169	265	0	8	7	14	1	30	\N	\N	\N
3170	265	1	8	6	14	1	\N	\N	\N	\N
3171	265	2	6	5	13	1	\N	\N	\N	\N
3172	265	3	4	0	11	0	\N	\N	\N	10
3173	265	4	0	0	0	0	8	8	8	8
3174	265	5	0	0	0	0	8	8	8	8
3175	265	6	0	0	0	0	8	8	8	8
3176	265	7	0	0	0	0	8	8	8	8
3177	265	8	0	0	0	0	8	8	8	8
3178	265	9	0	0	0	0	8	8	8	8
3179	265	10	0	0	0	0	8	8	8	8
3180	265	11	0	0	0	0	8	8	8	8
3181	266	0	8	7	15	1	30	\N	\N	\N
3182	266	1	8	6	14	1	30	\N	\N	\N
3183	266	2	6	5	13	1	\N	\N	\N	\N
3184	266	3	5	4	12	1	\N	\N	\N	\N
3185	266	4	4	0	11	0	\N	\N	\N	10
3186	266	5	0	0	0	0	8	8	8	8
3187	266	6	0	0	0	0	8	8	8	8
3188	266	7	0	0	0	0	8	8	8	8
3189	266	8	0	0	0	0	8	8	8	8
3190	266	9	0	0	0	0	8	8	8	8
3191	266	10	0	0	0	0	8	8	8	8
3192	266	11	0	0	0	0	8	8	8	8
3193	267	0	8	7	15	1	30	\N	\N	\N
3194	267	1	8	6	15	1	30	\N	\N	\N
3195	267	2	7	5	14	1	30	\N	\N	\N
3196	267	3	5	4	12	1	\N	\N	\N	\N
3197	267	4	4	0	11	0	\N	\N	\N	10
3198	267	5	0	0	0	0	8	8	8	8
3199	267	6	0	0	0	0	8	8	8	8
3200	267	7	0	0	0	0	8	8	8	8
3201	267	8	0	0	0	0	8	8	8	8
3202	267	9	0	0	0	0	8	8	8	8
3203	267	10	0	0	0	0	8	8	8	8
3204	267	11	0	0	0	0	8	8	8	8
3205	268	0	8	9	14	3	\N	\N	\N	\N
3206	268	1	8	8	13	2	\N	\N	\N	\N
3207	268	2	7	8	13	2	\N	\N	\N	\N
3208	268	3	6	5	12	1	\N	\N	\N	\N
3209	268	4	5	4	12	1	\N	\N	\N	\N
3210	268	5	4	0	11	0	\N	\N	\N	10
3211	268	6	0	0	0	0	8	8	8	8
3212	268	7	0	0	0	0	8	8	8	8
3213	268	8	0	0	0	0	8	8	8	8
3214	268	9	0	0	0	0	8	8	8	8
3215	268	10	0	0	0	0	8	8	8	8
3216	268	11	0	0	0	0	8	8	8	8
3217	269	0	8	10	14	3	\N	\N	\N	\N
3218	269	1	8	8	14	3	\N	\N	\N	\N
3219	269	2	8	8	14	2	\N	\N	\N	\N
3220	269	3	7	6	13	2	\N	\N	\N	\N
3221	269	4	6	5	12	1	\N	\N	\N	\N
3222	269	5	5	4	12	1	\N	\N	\N	\N
3223	269	6	4	0	11	0	\N	\N	\N	10
3224	269	7	0	0	0	0	8	8	8	8
3225	269	8	0	0	0	0	8	8	8	8
3226	269	9	0	0	0	0	8	8	8	8
3227	269	10	0	0	0	0	8	8	8	8
3228	269	11	0	0	0	0	8	8	8	8
3229	270	0	8	10	14	3	\N	\N	\N	\N
3230	270	1	8	9	14	3	\N	\N	\N	\N
3231	270	2	8	8	14	2	\N	\N	\N	\N
3232	270	3	7	6	13	2	\N	\N	\N	\N
3233	270	4	6	6	13	2	\N	\N	\N	\N
3234	270	5	5	5	12	1	\N	\N	\N	\N
3235	270	6	4	0	11	0	\N	\N	\N	10
3236	270	7	0	0	0	0	8	8	8	8
3237	270	8	0	0	0	0	8	8	8	8
3238	270	9	0	0	0	0	8	8	8	8
3239	270	10	0	0	0	0	8	8	8	8
3240	270	11	0	0	0	0	8	8	8	8
3241	271	0	8	6	14	2	\N	\N	\N	\N
3242	271	1	7	6	14	2	\N	\N	\N	\N
3243	271	2	6	4	12	2	\N	\N	\N	\N
3244	271	3	5	0	11	0	\N	\N	\N	10
3245	271	4	0	0	0	0	8	8	8	8
3246	271	5	0	0	0	0	8	8	8	8
3247	271	6	0	0	0	0	8	8	8	8
3248	271	7	0	0	0	0	8	8	8	8
3249	271	8	0	0	0	0	8	8	8	8
3250	271	9	0	0	0	0	8	8	8	8
3251	271	10	0	0	0	0	8	8	8	8
3252	271	11	0	0	0	0	8	8	8	8
3253	272	0	8	6	14	2	\N	\N	\N	\N
3254	272	1	7	6	14	2	\N	\N	\N	\N
3255	272	2	7	6	13	2	\N	\N	\N	\N
3256	272	3	6	4	12	2	\N	\N	\N	\N
3257	272	4	5	0	11	0	\N	\N	\N	10
3258	272	5	0	0	0	0	8	8	8	8
3259	272	6	0	0	0	0	8	8	8	8
3260	272	7	0	0	0	0	8	8	8	8
3261	272	8	0	0	0	0	8	8	8	8
3262	272	9	0	0	0	0	8	8	8	8
3263	272	10	0	0	0	0	8	8	8	8
3264	272	11	0	0	0	0	8	8	8	8
3265	273	0	8	6	14	2	\N	\N	\N	\N
3266	273	1	7	6	14	2	\N	\N	\N	\N
3267	273	2	7	6	13	2	\N	\N	\N	\N
3268	273	3	7	4	12	2	\N	\N	\N	\N
3269	273	4	6	4	12	2	\N	\N	\N	\N
3270	273	5	5	0	11	0	\N	\N	\N	10
3271	273	6	0	0	0	0	8	8	8	8
3272	273	7	0	0	0	0	8	8	8	8
3273	273	8	0	0	0	0	8	8	8	8
3274	273	9	0	0	0	0	8	8	8	8
3275	273	10	0	0	0	0	8	8	8	8
3276	273	11	0	0	0	0	8	8	8	8
3277	274	0	8	7	14	2	35	\N	29	\N
3278	274	1	8	7	14	1	35	\N	29	\N
3279	274	2	7	6	14	1	\N	\N	\N	\N
3280	274	3	7	4	13	1	\N	\N	\N	\N
3281	274	4	4	0	11	0	\N	\N	\N	10
3282	274	5	0	0	0	0	8	8	8	8
3283	274	6	0	0	0	0	8	8	8	8
3284	274	7	0	0	0	0	8	8	8	8
3285	274	8	0	0	0	0	8	8	8	8
3286	274	9	0	0	0	0	8	8	8	8
3287	274	10	0	0	0	0	8	8	8	8
3288	274	11	0	0	0	0	8	8	8	8
3289	275	0	8	7	15	2	35	\N	29	\N
3290	275	1	8	7	14	2	35	\N	29	\N
3291	275	2	8	6	14	1	\N	\N	29	\N
3292	275	3	7	4	13	1	\N	\N	\N	\N
3293	275	4	4	0	11	0	\N	\N	\N	10
3294	275	5	0	0	0	0	8	8	8	8
3295	275	6	0	0	0	0	8	8	8	8
3296	275	7	0	0	0	0	8	8	8	8
3297	275	8	0	0	0	0	8	8	8	8
3298	275	9	0	0	0	0	8	8	8	8
3299	275	10	0	0	0	0	8	8	8	8
3300	275	11	0	0	0	0	8	8	8	8
3301	276	0	8	8	15	2	35	\N	29	\N
3302	276	1	8	7	15	2	35	\N	29	\N
3303	276	2	8	6	14	1	35	\N	29	\N
3304	276	3	7	4	14	1	\N	\N	\N	\N
3305	276	4	7	4	13	1	\N	\N	\N	\N
3306	276	5	4	0	11	0	\N	\N	\N	10
3307	276	6	0	0	0	0	8	8	8	8
3308	276	7	0	0	0	0	8	8	8	8
3309	276	8	0	0	0	0	8	8	8	8
3310	276	9	0	0	0	0	8	8	8	8
3311	276	10	0	0	0	0	8	8	8	8
3312	276	11	0	0	0	0	8	8	8	8
3313	277	0	5	7	14	2	5	33	\N	\N
3314	277	1	7	6	13	1	\N	33	\N	\N
3315	277	2	3	0	10	0	\N	\N	\N	10
3316	277	3	0	0	0	0	8	8	8	8
3317	277	4	0	0	0	0	8	8	8	8
3318	277	5	0	0	0	0	8	8	8	8
3319	277	6	0	0	0	0	8	8	8	8
3320	277	7	0	0	0	0	8	8	8	8
3321	277	8	0	0	0	0	8	8	8	8
3322	277	9	0	0	0	0	8	8	8	8
3323	277	10	0	0	0	0	8	8	8	8
3324	277	11	0	0	0	0	8	8	8	8
3325	278	0	5	8	14	2	5	33	\N	\N
3326	278	1	8	7	13	1	\N	33	\N	\N
3327	278	2	5	0	10	0	\N	\N	\N	10
3328	278	3	0	0	0	0	8	8	8	8
3329	278	4	0	0	0	0	8	8	8	8
3330	278	5	0	0	0	0	8	8	8	8
3331	278	6	0	0	0	0	8	8	8	8
3332	278	7	0	0	0	0	8	8	8	8
3333	278	8	0	0	0	0	8	8	8	8
3334	278	9	0	0	0	0	8	8	8	8
3335	278	10	0	0	0	0	8	8	8	8
3336	278	11	0	0	0	0	8	8	8	8
3337	279	0	5	8	14	2	5	33	\N	\N
3338	279	1	8	7	13	1	\N	33	\N	\N
3339	279	2	6	6	12	1	\N	\N	\N	\N
3340	279	3	5	0	10	0	\N	\N	\N	10
3341	279	4	0	0	0	0	8	8	8	8
3342	279	5	0	0	0	0	8	8	8	8
3343	279	6	0	0	0	0	8	8	8	8
3567	298	2	6	5	12	2	\N	\N	\N	\N
3344	279	7	0	0	0	0	8	8	8	8
3345	279	8	0	0	0	0	8	8	8	8
3346	279	9	0	0	0	0	8	8	8	8
3347	279	10	0	0	0	0	8	8	8	8
3348	279	11	0	0	0	0	8	8	8	8
3349	280	0	8	7	14	1	\N	\N	\N	3
3350	280	1	7	7	13	1	\N	\N	\N	\N
3351	280	2	5	6	11	1	\N	38	\N	\N
3352	280	3	4	0	10	0	\N	\N	\N	10
3353	280	4	0	0	0	0	8	8	8	8
3354	280	5	0	0	0	0	8	8	8	8
3355	280	6	0	0	0	0	8	8	8	8
3356	280	7	0	0	0	0	8	8	8	8
3357	280	8	0	0	0	0	8	8	8	8
3358	280	9	0	0	0	0	8	8	8	8
3359	280	10	0	0	0	0	8	8	8	8
3360	280	11	0	0	0	0	8	8	8	8
3361	281	0	8	8	14	2	\N	\N	\N	3
3362	281	1	7	7	13	1	\N	\N	\N	3
3363	281	2	5	6	11	1	\N	38	\N	\N
3364	281	3	4	0	10	0	\N	\N	\N	10
3365	281	4	0	0	0	0	8	8	8	8
3366	281	5	0	0	0	0	8	8	8	8
3367	281	6	0	0	0	0	8	8	8	8
3368	281	7	0	0	0	0	8	8	8	8
3369	281	8	0	0	0	0	8	8	8	8
3370	281	9	0	0	0	0	8	8	8	8
3371	281	10	0	0	0	0	8	8	8	8
3372	281	11	0	0	0	0	8	8	8	8
3373	282	0	8	8	14	2	\N	\N	\N	3
3374	282	1	7	7	13	1	\N	38	\N	3
3375	282	2	5	6	11	1	\N	38	\N	3
3376	282	3	4	0	10	0	\N	\N	\N	10
3377	282	4	0	0	0	0	8	8	8	8
3378	282	5	0	0	0	0	8	8	8	8
3379	282	6	0	0	0	0	8	8	8	8
3380	282	7	0	0	0	0	8	8	8	8
3381	282	8	0	0	0	0	8	8	8	8
3382	282	9	0	0	0	0	8	8	8	8
3383	282	10	0	0	0	0	8	8	8	8
3384	282	11	0	0	0	0	8	8	8	8
3385	283	0	8	7	15	1	30	\N	\N	\N
3386	283	1	7	6	13	1	\N	\N	\N	\N
3387	283	2	4	0	10	0	\N	\N	\N	10
3388	283	3	0	0	0	0	8	8	8	8
3389	283	4	0	0	0	0	8	8	8	8
3390	283	5	0	0	0	0	8	8	8	8
3391	283	6	0	0	0	0	8	8	8	8
3392	283	7	0	0	0	0	8	8	8	8
3393	283	8	0	0	0	0	8	8	8	8
3394	283	9	0	0	0	0	8	8	8	8
3395	283	10	0	0	0	0	8	8	8	8
3396	283	11	0	0	0	0	8	8	8	8
3397	284	0	8	7	15	1	30	\N	\N	\N
3398	284	1	7	7	13	1	\N	\N	\N	\N
3399	284	2	5	6	11	1	\N	\N	\N	\N
3400	284	3	4	0	10	0	\N	\N	\N	10
3401	284	4	0	0	0	0	8	8	8	8
3402	284	5	0	0	0	0	8	8	8	8
3403	284	6	0	0	0	0	8	8	8	8
3404	284	7	0	0	0	0	8	8	8	8
3405	284	8	0	0	0	0	8	8	8	8
3406	284	9	0	0	0	0	8	8	8	8
3407	284	10	0	0	0	0	8	8	8	8
3408	284	11	0	0	0	0	8	8	8	8
3409	285	0	8	8	15	1	30	\N	\N	\N
3410	285	1	7	7	13	1	30	\N	\N	\N
3411	285	2	5	6	11	1	\N	\N	\N	\N
3412	285	3	4	0	10	0	\N	\N	\N	10
3413	285	4	0	0	0	0	8	8	8	8
3414	285	5	0	0	0	0	8	8	8	8
3415	285	6	0	0	0	0	8	8	8	8
3416	285	7	0	0	0	0	8	8	8	8
3417	285	8	0	0	0	0	8	8	8	8
3418	285	9	0	0	0	0	8	8	8	8
3419	285	10	0	0	0	0	8	8	8	8
3420	285	11	0	0	0	0	8	8	8	8
3421	286	0	8	0	12	0	\N	\N	\N	10
3422	286	1	8	6	14	1	\N	\N	\N	3
3423	286	2	6	7	11	2	\N	\N	\N	4
3424	286	3	0	0	0	0	8	8	8	8
3425	286	4	0	0	0	0	8	8	8	8
3426	286	5	0	0	0	0	8	8	8	8
3427	286	6	0	0	0	0	8	8	8	8
3428	286	7	0	0	0	0	8	8	8	8
3429	286	8	0	0	0	0	8	8	8	8
3430	286	9	0	0	0	0	8	8	8	8
3431	286	10	0	0	0	0	8	8	8	8
3432	286	11	0	0	0	0	8	8	8	8
3433	287	0	8	0	12	0	\N	\N	\N	10
3434	287	1	8	7	14	1	\N	\N	\N	3
3435	287	2	5	6	12	1	\N	\N	\N	3
3436	287	3	6	7	11	2	\N	\N	\N	4
3437	287	4	0	0	0	0	8	8	8	8
3438	287	5	0	0	0	0	8	8	8	8
3439	287	6	0	0	0	0	8	8	8	8
3440	287	7	0	0	0	0	8	8	8	8
3441	287	8	0	0	0	0	8	8	8	8
3442	287	9	0	0	0	0	8	8	8	8
3443	287	10	0	0	0	0	8	8	8	8
3444	287	11	0	0	0	0	8	8	8	8
3445	288	0	8	0	12	0	\N	\N	\N	10
3446	288	1	8	8	14	1	\N	\N	\N	3
3447	288	2	5	6	12	1	\N	\N	\N	3
3448	288	3	6	8	11	2	\N	\N	\N	4
3449	288	4	0	0	0	0	8	8	8	8
3450	288	5	0	0	0	0	8	8	8	8
3451	288	6	0	0	0	0	8	8	8	8
3452	288	7	0	0	0	0	8	8	8	8
3453	288	8	0	0	0	0	8	8	8	8
3454	288	9	0	0	0	0	8	8	8	8
3455	288	10	0	0	0	0	8	8	8	8
3456	288	11	0	0	0	0	8	8	8	8
3457	289	0	10	7	13	2	24	12	\N	\N
3458	289	1	8	6	13	2	\N	12	\N	\N
3459	289	2	6	5	12	2	\N	\N	\N	\N
3460	289	3	5	4	12	1	\N	\N	\N	\N
3461	289	4	4	4	11	1	\N	\N	\N	\N
3462	289	5	2	0	10	0	\N	\N	\N	10
3463	289	6	0	0	0	0	8	8	8	8
3464	289	7	0	0	0	0	8	8	8	8
3465	289	8	0	0	0	0	8	8	8	8
3466	289	9	0	0	0	0	8	8	8	8
3467	289	10	0	0	0	0	8	8	8	8
3468	289	11	0	0	0	0	8	8	8	8
3469	290	0	10	8	13	2	24	12	\N	\N
3470	290	1	9	7	13	2	\N	12	\N	\N
3471	290	2	8	6	13	2	\N	12	\N	\N
3472	290	3	7	5	12	2	\N	\N	\N	\N
3473	290	4	4	4	11	1	\N	\N	\N	\N
3474	290	5	3	0	10	0	\N	\N	\N	10
3475	290	6	0	0	0	0	8	8	8	8
3476	290	7	0	0	0	0	8	8	8	8
3477	290	8	0	0	0	0	8	8	8	8
3478	290	9	0	0	0	0	8	8	8	8
3479	290	10	0	0	0	0	8	8	8	8
3480	290	11	0	0	0	0	8	8	8	8
3481	291	0	10	8	13	2	24	12	\N	\N
3482	291	1	9	7	13	2	\N	12	\N	\N
3483	291	2	8	6	13	2	\N	12	\N	\N
3484	291	3	7	5	12	2	\N	\N	\N	\N
3485	291	4	4	5	12	1	\N	\N	\N	\N
3486	291	5	3	4	11	1	\N	\N	\N	\N
3487	291	6	2	0	10	0	\N	\N	\N	10
3488	291	7	0	0	0	0	8	8	8	8
3489	291	8	0	0	0	0	8	8	8	8
3490	291	9	0	0	0	0	8	8	8	8
3491	291	10	0	0	0	0	8	8	8	8
3492	291	11	0	0	0	0	8	8	8	8
3493	292	0	5	9	15	3	6	\N	2	\N
3494	292	1	5	9	15	2	6	\N	2	\N
3495	292	2	4	9	15	2	6	\N	\N	\N
3496	292	3	7	7	13	1	\N	\N	\N	\N
3497	292	4	5	5	12	1	\N	\N	\N	\N
3498	292	5	4	4	11	1	\N	\N	\N	\N
3499	292	6	4	0	11	0	\N	\N	\N	10
3500	292	7	0	0	0	0	8	8	8	8
3501	292	8	0	0	0	0	8	8	8	8
3502	292	9	0	0	0	0	8	8	8	8
3503	292	10	0	0	0	0	8	8	8	8
3504	292	11	0	0	0	0	8	8	8	8
3505	293	0	5	10	16	3	6	\N	2	\N
3506	293	1	5	10	15	3	6	\N	2	\N
3507	293	2	4	9	15	2	6	\N	\N	\N
3508	293	3	7	7	13	1	\N	\N	\N	\N
3509	293	4	6	6	12	1	\N	\N	\N	\N
3510	293	5	5	5	12	1	\N	\N	\N	\N
3511	293	6	4	4	11	1	\N	\N	\N	\N
3512	293	7	4	0	11	0	\N	\N	\N	10
3513	293	8	0	0	0	0	8	8	8	8
3514	293	9	0	0	0	0	8	8	8	8
3515	293	10	0	0	0	0	8	8	8	8
3516	293	11	0	0	0	0	8	8	8	8
3517	294	0	5	11	16	3	6	\N	2	\N
3518	294	1	5	10	15	3	6	\N	2	\N
3519	294	2	4	9	15	2	6	\N	2	\N
3520	294	3	7	8	14	2	\N	\N	\N	\N
3521	294	4	6	6	12	1	\N	\N	\N	\N
3522	294	5	5	5	12	1	\N	\N	\N	\N
3523	294	6	4	4	11	1	\N	\N	\N	\N
3524	294	7	4	0	11	0	\N	\N	\N	10
3525	294	8	0	0	0	0	8	8	8	8
3526	294	9	0	0	0	0	8	8	8	8
3527	294	10	0	0	0	0	8	8	8	8
3528	294	11	0	0	0	0	8	8	8	8
3529	295	0	8	7	15	2	\N	\N	\N	\N
3530	295	1	7	7	14	2	\N	\N	\N	\N
3531	295	2	6	6	13	2	\N	\N	\N	\N
3532	295	3	4	6	12	1	\N	\N	\N	\N
3533	295	4	0	4	10	1	\N	\N	32	\N
3534	295	5	0	0	11	0	\N	\N	32	\N
3535	295	6	0	0	13	0	\N	\N	32	\N
3536	295	7	0	0	0	0	8	8	8	8
3537	295	8	0	0	0	0	8	8	8	8
3538	295	9	0	0	0	0	8	8	8	8
3539	295	10	0	0	0	0	8	8	8	8
3540	295	11	0	0	0	0	8	8	8	8
3541	296	0	8	8	15	2	\N	\N	\N	\N
3542	296	1	7	8	14	2	\N	\N	\N	\N
3543	296	2	6	7	13	2	\N	\N	\N	\N
3544	296	3	4	6	12	2	\N	\N	\N	\N
3545	296	4	2	5	11	1	\N	\N	32	\N
3546	296	5	0	0	10	0	\N	\N	32	\N
3547	296	6	0	0	12	0	\N	\N	32	\N
3548	296	7	0	0	14	0	\N	\N	32	\N
3549	296	8	0	0	0	0	8	8	8	8
3550	296	9	0	0	0	0	8	8	8	8
3551	296	10	0	0	0	0	8	8	8	8
3552	296	11	0	0	0	0	8	8	8	8
3553	297	0	8	9	15	2	\N	\N	\N	\N
3554	297	1	7	8	15	2	\N	\N	\N	\N
3555	297	2	7	7	14	2	\N	\N	\N	\N
3556	297	3	6	7	13	2	\N	\N	\N	\N
3557	297	4	4	6	12	2	\N	\N	32	\N
3558	297	5	2	6	11	1	\N	\N	32	\N
3559	297	6	0	0	13	0	\N	\N	32	\N
3560	297	7	0	0	15	0	\N	\N	32	\N
3561	297	8	0	0	0	0	8	8	8	8
3562	297	9	0	0	0	0	8	8	8	8
3563	297	10	0	0	0	0	8	8	8	8
3564	297	11	0	0	0	0	8	8	8	8
3565	298	0	4	7	15	2	5	\N	\N	\N
3566	298	1	7	7	14	2	35	\N	\N	\N
3568	298	3	3	0	11	0	\N	\N	\N	10
3569	298	4	2	0	10	0	\N	\N	\N	10
3570	298	5	0	0	0	0	8	8	8	8
3571	298	6	0	0	0	0	8	8	8	8
3572	298	7	0	0	0	0	8	8	8	8
3573	298	8	0	0	0	0	8	8	8	8
3574	298	9	0	0	0	0	8	8	8	8
3575	298	10	0	0	0	0	8	8	8	8
3576	298	11	0	0	0	0	8	8	8	8
3577	299	0	4	8	15	2	5	\N	\N	\N
3578	299	1	7	7	14	2	35	\N	\N	\N
3579	299	2	6	6	13	2	35	\N	\N	\N
3580	299	3	5	5	12	2	\N	\N	\N	\N
3581	299	4	3	0	11	0	\N	\N	\N	10
3582	299	5	2	0	10	0	\N	\N	\N	10
3583	299	6	0	0	0	0	8	8	8	8
3584	299	7	0	0	0	0	8	8	8	8
3585	299	8	0	0	0	0	8	8	8	8
3586	299	9	0	0	0	0	8	8	8	8
3587	299	10	0	0	0	0	8	8	8	8
3588	299	11	0	0	0	0	8	8	8	8
3589	300	0	4	9	15	2	5	\N	\N	\N
3590	300	1	7	8	14	2	35	\N	\N	\N
3591	300	2	6	7	13	2	35	\N	\N	\N
3592	300	3	5	5	12	2	\N	\N	\N	\N
3593	300	4	3	0	11	0	\N	\N	\N	10
3594	300	5	2	0	11	0	\N	\N	\N	10
3595	300	6	0	0	0	0	8	8	8	8
3596	300	7	0	0	0	0	8	8	8	8
3597	300	8	0	0	0	0	8	8	8	8
3598	300	9	0	0	0	0	8	8	8	8
3599	300	10	0	0	0	0	8	8	8	8
3600	300	11	0	0	0	0	8	8	8	8
3601	301	0	5	9	14	2	6	\N	23	3
3602	301	1	8	8	14	2	\N	\N	23	3
3603	301	2	7	8	14	2	\N	\N	\N	3
3604	301	3	5	5	12	2	\N	\N	\N	3
3605	301	4	7	4	11	1	\N	\N	\N	3
3606	301	5	2	0	10	0	\N	\N	\N	10
3607	301	6	0	0	0	0	8	8	8	8
3608	301	7	0	0	0	0	8	8	8	8
3609	301	8	0	0	0	0	8	8	8	8
3610	301	9	0	0	0	0	8	8	8	8
3611	301	10	0	0	0	0	8	8	8	8
3612	301	11	0	0	0	0	8	8	8	8
3613	302	0	5	10	14	2	6	\N	23	3
3614	302	1	8	9	14	2	\N	\N	23	3
3615	302	2	7	9	14	2	\N	\N	\N	3
3616	302	3	6	6	13	2	\N	\N	\N	3
3617	302	4	5	5	12	2	\N	\N	\N	3
3618	302	5	7	4	11	1	\N	\N	\N	3
3619	302	6	2	4	10	1	\N	\N	\N	\N
3620	302	7	0	0	0	0	8	8	8	8
3621	302	8	0	0	0	0	8	8	8	8
3622	302	9	0	0	0	0	8	8	8	8
3623	302	10	0	0	0	0	8	8	8	8
3624	302	11	0	0	0	0	8	8	8	8
3625	303	0	5	11	14	3	6	\N	23	3
3626	303	1	8	10	14	2	\N	\N	23	3
3627	303	2	8	9	14	2	\N	\N	\N	3
3628	303	3	6	7	13	2	\N	\N	\N	3
3629	303	4	5	6	12	2	\N	\N	\N	3
3630	303	5	7	5	11	1	\N	\N	\N	3
3631	303	6	2	4	10	1	\N	\N	\N	\N
3632	303	7	0	0	0	0	8	8	8	8
3633	303	8	0	0	0	0	8	8	8	8
3634	303	9	0	0	0	0	8	8	8	8
3635	303	10	0	0	0	0	8	8	8	8
3636	303	11	0	0	0	0	8	8	8	8
3637	304	0	8	7	15	2	\N	15	23	\N
3638	304	1	7	7	15	1	\N	15	23	\N
3639	304	2	7	6	14	1	\N	\N	\N	\N
3640	304	3	5	4	12	1	\N	\N	\N	\N
3641	304	4	4	0	11	0	\N	\N	\N	10
3642	304	5	0	0	0	0	8	8	8	8
3643	304	6	0	0	0	0	8	8	8	8
3644	304	7	0	0	0	0	8	8	8	8
3645	304	8	0	0	0	0	8	8	8	8
3646	304	9	0	0	0	0	8	8	8	8
3647	304	10	0	0	0	0	8	8	8	8
3648	304	11	0	0	0	0	8	8	8	8
3649	305	0	8	8	15	2	\N	15	23	\N
3650	305	1	7	8	15	2	\N	15	23	\N
3651	305	2	7	7	14	1	\N	15	\N	\N
3652	305	3	6	5	13	1	\N	\N	\N	\N
3653	305	4	5	4	12	1	\N	\N	\N	\N
3654	305	5	4	0	11	0	\N	\N	\N	10
3655	305	6	0	0	0	0	8	8	8	8
3656	305	7	0	0	0	0	8	8	8	8
3657	305	8	0	0	0	0	8	8	8	8
3658	305	9	0	0	0	0	8	8	8	8
3659	305	10	0	0	0	0	8	8	8	8
3660	305	11	0	0	0	0	8	8	8	8
3661	306	0	8	9	15	2	\N	15	23	\N
3662	306	1	8	8	15	2	\N	15	23	\N
3663	306	2	7	8	15	2	\N	15	23	\N
3664	306	3	6	6	13	1	\N	\N	\N	\N
3665	306	4	5	4	12	1	\N	\N	\N	\N
3666	306	5	4	0	11	0	\N	\N	\N	10
3667	306	6	0	0	0	0	8	8	8	8
3668	306	7	0	0	0	0	8	8	8	8
3669	306	8	0	0	0	0	8	8	8	8
3670	306	9	0	0	0	0	8	8	8	8
3671	306	10	0	0	0	0	8	8	8	8
3672	306	11	0	0	0	0	8	8	8	8
3673	307	0	8	8	15	2	\N	\N	2	\N
3674	307	1	7	8	15	2	\N	\N	2	\N
3675	307	2	7	7	15	2	\N	\N	29	\N
3676	307	3	6	5	13	1	\N	\N	29	\N
3677	307	4	5	4	12	1	\N	\N	\N	\N
3678	307	5	4	0	14	0	\N	\N	9	10
3679	307	6	0	0	0	0	8	8	8	8
3680	307	7	0	0	0	0	8	8	8	8
3681	307	8	0	0	0	0	8	8	8	8
3682	307	9	0	0	0	0	8	8	8	8
3683	307	10	0	0	0	0	8	8	8	8
3684	307	11	0	0	0	0	8	8	8	8
3685	308	0	8	8	15	2	\N	\N	2	\N
3686	308	1	7	8	15	2	\N	\N	2	\N
3687	308	2	7	7	15	2	\N	\N	29	\N
3688	308	3	6	5	13	2	\N	\N	29	\N
3689	308	4	5	5	12	1	\N	\N	29	\N
3690	308	5	5	4	12	1	\N	\N	\N	\N
3691	308	6	4	0	14	0	\N	\N	9	10
3692	308	7	0	0	0	0	8	8	8	8
3693	308	8	0	0	0	0	8	8	8	8
3694	308	9	0	0	0	0	8	8	8	8
3695	308	10	0	0	0	0	8	8	8	8
3696	308	11	0	0	0	0	8	8	8	8
3697	309	0	8	9	16	2	\N	\N	2	\N
3698	309	1	8	8	15	2	\N	\N	2	\N
3699	309	2	7	7	15	2	\N	\N	29	\N
3700	309	3	6	5	14	2	\N	\N	29	\N
3701	309	4	5	5	12	1	\N	\N	29	\N
3702	309	5	5	4	15	1	\N	\N	9	\N
3703	309	6	4	0	14	0	\N	\N	9	10
3704	309	7	0	0	0	0	8	8	8	8
3705	309	8	0	0	0	0	8	8	8	8
3706	309	9	0	0	0	0	8	8	8	8
3707	309	10	0	0	0	0	8	8	8	8
3708	309	11	0	0	0	0	8	8	8	8
3709	310	0	6	10	14	3	\N	\N	37	3
3710	310	1	6	9	14	3	\N	\N	\N	3
3711	310	2	5	8	14	2	\N	\N	\N	3
3712	310	3	5	8	14	2	\N	\N	\N	\N
3713	310	4	5	7	13	2	\N	\N	\N	\N
3714	310	5	5	9	11	4	\N	\N	\N	4
3715	310	6	4	0	10	0	\N	\N	\N	10
3716	310	7	0	0	0	0	8	8	8	8
3717	310	8	0	0	0	0	8	8	8	8
3718	310	9	0	0	0	0	8	8	8	8
3719	310	10	0	0	0	0	8	8	8	8
3720	310	11	0	0	0	0	8	8	8	8
3721	311	0	6	10	14	4	\N	\N	37	3
3722	311	1	6	10	14	3	\N	\N	37	3
3723	311	2	5	9	14	2	\N	\N	\N	3
3724	311	3	5	9	14	2	\N	\N	\N	\N
3725	311	4	5	8	13	2	\N	\N	\N	\N
3726	311	5	5	10	11	4	\N	\N	\N	4
3727	311	6	4	0	10	0	\N	\N	\N	10
3728	311	7	0	0	0	0	8	8	8	8
3729	311	8	0	0	0	0	8	8	8	8
3730	311	9	0	0	0	0	8	8	8	8
3731	311	10	0	0	0	0	8	8	8	8
3732	311	11	0	0	0	0	8	8	8	8
3733	312	0	6	10	14	4	\N	\N	37	3
3734	312	1	6	10	14	3	\N	\N	37	3
3735	312	2	6	9	14	2	\N	\N	\N	3
3736	312	3	5	9	14	2	\N	\N	\N	\N
3737	312	4	5	10	12	4	\N	\N	\N	4
3738	312	5	5	9	11	3	\N	\N	\N	4
3739	312	6	4	0	10	0	\N	\N	\N	10
3740	312	7	0	0	0	0	8	8	8	8
3741	312	8	0	0	0	0	8	8	8	8
3742	312	9	0	0	0	0	8	8	8	8
3743	312	10	0	0	0	0	8	8	8	8
3744	312	11	0	0	0	0	8	8	8	8
3745	313	0	8	7	14	3	\N	\N	2	3
3746	313	1	6	6	13	2	\N	\N	\N	3
3747	313	2	4	5	12	1	\N	\N	\N	\N
3748	313	3	6	7	11	3	\N	\N	32	4
3749	313	4	4	0	11	0	\N	\N	\N	10
3750	313	5	0	0	0	0	8	8	8	8
3751	313	6	0	0	0	0	8	8	8	8
3752	313	7	0	0	0	0	8	8	8	8
3753	313	8	0	0	0	0	8	8	8	8
3754	313	9	0	0	0	0	8	8	8	8
3755	313	10	0	0	0	0	8	8	8	8
3756	313	11	0	0	0	0	8	8	8	8
3757	314	0	8	7	15	3	\N	\N	2	3
3758	314	1	6	6	14	2	\N	\N	\N	3
3759	314	2	5	6	13	1	\N	\N	\N	\N
3760	314	3	4	5	12	1	\N	\N	\N	\N
3761	314	4	6	7	11	3	\N	\N	32	4
3762	314	5	4	0	11	0	\N	\N	\N	10
3763	314	6	0	0	0	0	8	8	8	8
3764	314	7	0	0	0	0	8	8	8	8
3765	314	8	0	0	0	0	8	8	8	8
3766	314	9	0	0	0	0	8	8	8	8
3767	314	10	0	0	0	0	8	8	8	8
3768	314	11	0	0	0	0	8	8	8	8
3769	315	0	8	8	15	3	\N	\N	2	3
3770	315	1	6	7	14	3	\N	\N	\N	3
3771	315	2	5	6	13	2	\N	\N	\N	\N
3772	315	3	4	5	12	2	\N	\N	\N	\N
3773	315	4	6	7	11	3	\N	\N	32	4
3774	315	5	4	0	11	0	\N	\N	\N	10
3775	315	6	0	0	0	0	8	8	8	8
3776	315	7	0	0	0	0	8	8	8	8
3777	315	8	0	0	0	0	8	8	8	8
3778	315	9	0	0	0	0	8	8	8	8
3779	315	10	0	0	0	0	8	8	8	8
3780	315	11	0	0	0	0	8	8	8	8
3781	316	0	8	7	14	1	\N	15	\N	3
3782	316	1	6	6	13	1	\N	15	\N	3
3783	316	2	5	5	12	1	\N	\N	\N	\N
3784	316	3	6	6	11	2	\N	\N	\N	4
3785	316	4	4	0	11	0	\N	\N	\N	10
3786	316	5	0	0	0	0	8	8	8	8
3787	316	6	0	0	0	0	8	8	8	8
3788	316	7	0	0	0	0	8	8	8	8
3789	316	8	0	0	0	0	8	8	8	8
3790	316	9	0	0	0	0	8	8	8	8
4015	335	6	8	4	14	1	13	\N	\N	\N
3791	316	10	0	0	0	0	8	8	8	8
3792	316	11	0	0	0	0	8	8	8	8
3793	317	0	8	7	14	1	\N	15	\N	3
3794	317	1	6	7	14	1	\N	15	\N	3
3795	317	2	5	6	13	1	\N	15	\N	\N
3796	317	3	4	5	12	1	\N	\N	\N	\N
3797	317	4	6	7	11	2	\N	\N	\N	4
3798	317	5	4	0	11	0	\N	\N	\N	10
3799	317	6	0	0	0	0	8	8	8	8
3800	317	7	0	0	0	0	8	8	8	8
3801	317	8	0	0	0	0	8	8	8	8
3802	317	9	0	0	0	0	8	8	8	8
3803	317	10	0	0	0	0	8	8	8	8
3804	317	11	0	0	0	0	8	8	8	8
3805	318	0	8	8	14	2	\N	15	\N	3
3806	318	1	6	7	14	2	\N	15	\N	3
3807	318	2	5	6	13	1	\N	15	\N	\N
3808	318	3	4	5	12	1	\N	\N	\N	\N
3809	318	4	6	7	11	2	\N	\N	\N	4
3810	318	5	4	0	11	0	\N	\N	\N	10
3811	318	6	0	0	0	0	8	8	8	8
3812	318	7	0	0	0	0	8	8	8	8
3813	318	8	0	0	0	0	8	8	8	8
3814	318	9	0	0	0	0	8	8	8	8
3815	318	10	0	0	0	0	8	8	8	8
3816	318	11	0	0	0	0	8	8	8	8
3817	319	0	12	8	16	2	35	\N	\N	\N
3818	319	1	10	7	16	2	35	\N	\N	\N
3819	319	2	8	6	15	1	35	\N	\N	\N
3820	319	3	6	4	14	1	35	\N	\N	\N
3821	319	4	8	0	14	0	35	\N	\N	10
3822	319	5	10	0	14	0	35	\N	\N	10
3823	319	6	0	0	0	0	8	8	8	8
3824	319	7	0	0	0	0	8	8	8	8
3825	319	8	0	0	0	0	8	8	8	8
3826	319	9	0	0	0	0	8	8	8	8
3827	319	10	0	0	0	0	8	8	8	8
3828	319	11	0	0	0	0	8	8	8	8
3829	320	0	12	9	16	2	35	12	\N	\N
3830	320	1	10	8	16	2	35	\N	\N	\N
3831	320	2	8	6	15	2	35	\N	\N	\N
3832	320	3	6	4	14	1	35	\N	\N	\N
3833	320	4	8	4	14	1	35	\N	\N	\N
3834	320	5	10	0	14	0	35	\N	\N	10
3835	320	6	12	0	14	0	35	\N	\N	10
3836	320	7	0	0	0	0	8	8	8	8
3837	320	8	0	0	0	0	8	8	8	8
3838	320	9	0	0	0	0	8	8	8	8
3839	320	10	0	0	0	0	8	8	8	8
3840	320	11	0	0	0	0	8	8	8	8
3841	321	0	12	9	16	2	35	12	\N	\N
3842	321	1	10	8	16	2	35	12	\N	\N
3843	321	2	8	6	15	2	35	\N	\N	\N
3844	321	3	7	4	15	1	35	\N	\N	\N
3845	321	4	6	4	14	1	35	\N	\N	\N
3846	321	5	8	4	14	1	35	\N	\N	\N
3847	321	6	10	0	14	0	35	\N	\N	10
3848	321	7	12	0	14	0	35	\N	\N	10
3849	321	8	0	0	0	0	8	8	8	8
3850	321	9	0	0	0	0	8	8	8	8
3851	321	10	0	0	0	0	8	8	8	8
3852	321	11	0	0	0	0	8	8	8	8
3853	322	0	8	8	15	2	\N	\N	37	3
3854	322	1	8	7	15	2	\N	\N	\N	3
3855	322	2	7	7	14	2	\N	\N	\N	3
3856	322	3	6	8	14	1	\N	\N	\N	\N
3857	322	4	5	0	13	0	\N	\N	\N	10
3858	322	5	0	0	0	0	8	8	8	8
3859	322	6	0	0	0	0	8	8	8	8
3860	322	7	0	0	0	0	8	8	8	8
3861	322	8	0	0	0	0	8	8	8	8
3862	322	9	0	0	0	0	8	8	8	8
3863	322	10	0	0	0	0	8	8	8	8
3864	322	11	0	0	0	0	8	8	8	8
3865	323	0	8	9	15	2	\N	\N	37	3
3866	323	1	8	8	15	2	\N	\N	\N	3
3867	323	2	8	8	14	2	\N	\N	\N	3
3868	323	3	7	7	14	2	\N	\N	\N	3
3869	323	4	6	8	14	3	\N	\N	\N	4
3870	323	5	5	0	13	0	\N	\N	\N	10
3871	323	6	0	0	0	0	8	8	8	8
3872	323	7	0	0	0	0	8	8	8	8
3873	323	8	0	0	0	0	8	8	8	8
3874	323	9	0	0	0	0	8	8	8	8
3875	323	10	0	0	0	0	8	8	8	8
3876	323	11	0	0	0	0	8	8	8	8
3877	324	0	8	10	15	2	\N	\N	37	3
3878	324	1	8	9	15	2	\N	\N	37	3
3879	324	2	8	8	15	2	\N	\N	\N	3
3880	324	3	7	8	14	2	\N	\N	\N	3
3881	324	4	7	7	14	2	\N	\N	\N	3
3882	324	5	6	8	14	3	\N	\N	\N	4
3883	324	6	5	0	13	0	\N	\N	\N	10
3884	324	7	0	0	0	0	8	8	8	8
3885	324	8	0	0	0	0	8	8	8	8
3886	324	9	0	0	0	0	8	8	8	8
3887	324	10	0	0	0	0	8	8	8	8
3888	324	11	0	0	0	0	8	8	8	8
3889	325	0	5	8	15	3	5	12	2	\N
3890	325	1	5	7	15	3	5	12	2	\N
3891	325	2	9	6	15	3	\N	12	2	\N
3892	325	3	8	5	15	2	\N	\N	2	\N
3893	325	4	6	4	14	2	\N	\N	\N	\N
3894	325	5	5	4	12	1	\N	\N	\N	\N
3895	325	6	4	0	11	0	\N	\N	\N	10
3896	325	7	0	0	0	0	8	8	8	8
3897	325	8	0	0	0	0	8	8	8	8
3898	325	9	0	0	0	0	8	8	8	8
3899	325	10	0	0	0	0	8	8	8	8
3900	325	11	0	0	0	0	8	8	8	8
3901	326	0	5	9	15	3	5	12	2	\N
3902	326	1	5	8	15	3	5	12	2	\N
3903	326	2	9	7	15	3	\N	12	2	\N
3904	326	3	8	6	15	2	\N	\N	2	\N
3905	326	4	7	5	15	2	\N	\N	\N	\N
3906	326	5	6	4	14	1	\N	\N	\N	\N
3907	326	6	5	4	12	1	\N	\N	\N	\N
3908	326	7	4	0	11	0	\N	\N	\N	10
3909	326	8	0	0	0	0	8	8	8	8
3910	326	9	0	0	0	0	8	8	8	8
3911	326	10	0	0	0	0	8	8	8	8
3912	326	11	0	0	0	0	8	8	8	8
3913	327	0	5	10	15	3	5	12	2	\N
3914	327	1	5	9	15	3	5	12	2	\N
3915	327	2	9	8	15	3	\N	12	2	\N
3916	327	3	8	7	15	2	\N	\N	2	\N
3917	327	4	7	6	15	2	\N	\N	\N	\N
3918	327	5	6	4	14	1	\N	\N	\N	\N
3919	327	6	5	4	12	1	\N	\N	\N	\N
3920	327	7	4	0	11	0	\N	\N	\N	10
3921	327	8	0	0	0	0	8	8	8	8
3922	327	9	0	0	0	0	8	8	8	8
3923	327	10	0	0	0	0	8	8	8	8
3924	327	11	0	0	0	0	8	8	8	8
3925	328	0	12	8	15	3	13	12	2	\N
3926	328	1	12	7	15	3	13	12	2	\N
3927	328	2	12	6	15	3	13	12	2	\N
3928	328	3	11	5	15	1	13	\N	2	\N
3929	328	4	10	4	14	1	13	\N	\N	\N
3930	328	5	9	4	14	1	13	\N	\N	\N
3931	328	6	8	4	14	1	13	\N	\N	\N
3932	328	7	8	4	13	1	13	\N	\N	\N
3933	328	8	4	0	11	0	\N	\N	\N	10
3934	328	9	0	0	0	0	8	8	8	8
3935	328	10	0	0	0	0	8	8	8	8
3936	328	11	0	0	0	0	8	8	8	8
3937	329	0	12	9	15	3	13	12	2	\N
3938	329	1	12	8	15	3	13	12	2	\N
3939	329	2	12	7	15	3	13	12	2	\N
3940	329	3	11	6	15	1	13	\N	2	\N
3941	329	4	10	5	15	1	13	\N	\N	\N
3942	329	5	9	4	14	1	13	\N	\N	\N
3943	329	6	8	4	14	1	13	\N	\N	\N
3944	329	7	8	4	13	1	13	\N	\N	\N
3945	329	8	8	4	12	1	13	\N	\N	\N
3946	329	9	4	0	11	0	\N	\N	\N	10
3947	329	10	0	0	0	0	8	8	8	8
3948	329	11	0	0	0	0	8	8	8	8
3949	330	0	12	10	15	3	13	12	2	\N
3950	330	1	12	9	15	3	13	12	2	\N
3951	330	2	12	8	15	3	13	12	2	\N
3952	330	3	11	7	15	1	13	\N	2	\N
3953	330	4	10	6	15	1	13	\N	\N	\N
3954	330	5	9	4	14	1	13	\N	\N	\N
3955	330	6	8	4	14	1	13	\N	\N	\N
3956	330	7	8	4	13	1	13	\N	\N	\N
3957	330	8	8	4	12	1	13	\N	\N	\N
3958	330	9	4	0	11	0	\N	\N	\N	10
3959	330	10	0	0	0	0	8	8	8	8
3960	330	11	0	0	0	0	8	8	8	8
3961	331	0	5	7	15	2	5	\N	2	\N
3962	331	1	5	7	15	2	5	\N	2	\N
3963	331	2	9	6	15	1	\N	\N	2	\N
3964	331	3	8	5	15	1	\N	\N	\N	\N
3965	331	4	6	4	14	1	\N	\N	\N	\N
3966	331	5	5	4	12	1	\N	\N	\N	\N
3967	331	6	4	0	11	0	\N	\N	\N	10
3968	331	7	0	0	0	0	8	8	8	8
3969	331	8	0	0	0	0	8	8	8	8
3970	331	9	0	0	0	0	8	8	8	8
3971	331	10	0	0	0	0	8	8	8	8
3972	331	11	0	0	0	0	8	8	8	8
3973	332	0	5	8	15	2	5	\N	2	\N
3974	332	1	5	7	15	2	5	\N	2	\N
3975	332	2	9	6	15	1	\N	\N	2	\N
3976	332	3	8	5	15	1	\N	\N	\N	\N
3977	332	4	7	4	15	1	\N	\N	\N	\N
3978	332	5	6	4	14	1	\N	\N	\N	\N
3979	332	6	5	4	12	1	\N	\N	\N	\N
3980	332	7	4	0	11	0	\N	\N	\N	10
3981	332	8	0	0	0	0	8	8	8	8
3982	332	9	0	0	0	0	8	8	8	8
3983	332	10	0	0	0	0	8	8	8	8
3984	332	11	0	0	0	0	8	8	8	8
3985	333	0	5	9	15	2	5	\N	2	\N
3986	333	1	5	8	15	2	5	\N	2	\N
3987	333	2	9	7	15	2	\N	\N	2	\N
3988	333	3	8	6	15	1	\N	\N	\N	\N
3989	333	4	7	5	15	1	\N	\N	\N	\N
3990	333	5	6	4	14	1	\N	\N	\N	\N
3991	333	6	5	4	12	1	\N	\N	\N	\N
3992	333	7	4	0	11	0	\N	\N	\N	10
3993	333	8	0	0	0	0	8	8	8	8
3994	333	9	0	0	0	0	8	8	8	8
3995	333	10	0	0	0	0	8	8	8	8
3996	333	11	0	0	0	0	8	8	8	8
3997	334	0	12	7	15	1	13	\N	2	\N
3998	334	1	12	7	15	1	13	\N	2	\N
3999	334	2	12	6	15	1	13	\N	2	\N
4000	334	3	11	5	15	1	13	\N	\N	\N
4001	334	4	10	4	15	1	13	\N	\N	\N
4002	334	5	9	4	14	1	13	\N	\N	\N
4003	334	6	8	4	13	1	13	\N	\N	\N
4004	334	7	8	4	12	1	13	\N	\N	\N
4005	334	8	4	0	11	0	\N	\N	\N	10
4006	334	9	0	0	0	0	8	8	8	8
4007	334	10	0	0	0	0	8	8	8	8
4008	334	11	0	0	0	0	8	8	8	8
4009	335	0	12	8	15	1	13	\N	2	\N
4010	335	1	12	7	15	1	13	\N	2	\N
4011	335	2	12	6	15	1	13	\N	2	\N
4012	335	3	11	5	15	1	13	\N	\N	\N
4013	335	4	10	4	15	1	13	\N	\N	\N
4014	335	5	9	4	14	1	13	\N	\N	\N
4016	335	7	8	4	13	1	13	\N	\N	\N
4017	335	8	8	4	12	1	13	\N	\N	\N
4018	335	9	4	0	11	0	\N	\N	\N	10
4019	335	10	0	0	0	0	8	8	8	8
4020	335	11	0	0	0	0	8	8	8	8
4021	336	0	12	9	15	2	13	\N	2	\N
4022	336	1	12	8	15	1	13	\N	2	\N
4023	336	2	12	7	15	1	13	\N	2	\N
4024	336	3	11	6	15	1	13	\N	\N	\N
4025	336	4	10	5	15	1	13	\N	\N	\N
4026	336	5	9	4	14	1	13	\N	\N	\N
4027	336	6	8	4	14	1	13	\N	\N	\N
4028	336	7	8	4	13	1	13	\N	\N	\N
4029	336	8	8	4	12	1	13	\N	\N	\N
4030	336	9	4	0	11	0	\N	\N	\N	10
4031	336	10	0	0	0	0	8	8	8	8
4032	336	11	0	0	0	0	8	8	8	8
4033	337	0	14	9	15	3	13	\N	37	3
4034	337	1	14	9	15	2	13	\N	37	3
4035	337	2	12	9	14	2	13	\N	37	3
4036	337	3	11	8	14	2	13	\N	\N	\N
4037	337	4	10	6	14	2	13	\N	\N	\N
4038	337	5	6	5	13	2	\N	\N	\N	\N
4039	337	6	5	5	12	1	\N	\N	\N	\N
4040	337	7	4	0	11	0	\N	\N	\N	10
4041	337	8	0	0	0	0	8	8	8	8
4042	337	9	0	0	0	0	8	8	8	8
4043	337	10	0	0	0	0	8	8	8	8
4044	337	11	0	0	0	0	8	8	8	8
4045	338	0	14	10	15	3	13	\N	37	3
4046	338	1	14	9	15	3	13	\N	37	3
4047	338	2	12	9	14	2	13	\N	37	3
4048	338	3	11	8	14	2	13	\N	\N	3
4049	338	4	10	6	14	2	13	\N	\N	\N
4050	338	5	6	5	13	2	\N	\N	\N	\N
4051	338	6	5	5	12	1	\N	\N	\N	\N
4052	338	7	4	0	11	0	\N	\N	\N	10
4053	338	8	0	0	0	0	8	8	8	8
4054	338	9	0	0	0	0	8	8	8	8
4055	338	10	0	0	0	0	8	8	8	8
4056	338	11	0	0	0	0	8	8	8	8
4057	339	0	14	10	15	4	13	\N	37	3
4058	339	1	14	10	15	3	13	\N	37	3
4059	339	2	13	9	14	2	13	\N	37	3
4060	339	3	12	9	14	2	13	\N	\N	3
4061	339	4	11	8	14	2	13	\N	\N	3
4062	339	5	8	6	14	2	\N	\N	\N	\N
4063	339	6	6	5	13	2	\N	\N	\N	\N
4064	339	7	5	5	12	1	\N	\N	\N	\N
4065	339	8	4	0	11	0	\N	\N	\N	10
4066	339	9	0	0	0	0	8	8	8	8
4067	339	10	0	0	0	0	8	8	8	8
4068	339	11	0	0	0	0	8	8	8	8
4069	340	0	7	9	15	3	6	\N	37	3
4070	340	1	6	9	15	2	6	\N	\N	3
4071	340	2	5	9	14	2	6	\N	\N	3
4072	340	3	9	8	14	2	\N	\N	\N	\N
4073	340	4	6	5	13	1	\N	\N	\N	\N
4074	340	5	5	5	12	1	\N	\N	\N	\N
4075	340	6	4	0	11	0	\N	\N	\N	10
4076	340	7	0	0	0	0	8	8	8	8
4077	340	8	0	0	0	0	8	8	8	8
4078	340	9	0	0	0	0	8	8	8	8
4079	340	10	0	0	0	0	8	8	8	8
4080	340	11	0	0	0	0	8	8	8	8
4081	341	0	7	10	15	3	6	\N	37	3
4082	341	1	6	9	15	3	6	\N	\N	3
4083	341	2	5	9	14	2	6	\N	\N	3
4084	341	3	9	8	14	2	\N	\N	\N	3
4085	341	4	6	5	13	1	\N	\N	\N	\N
4086	341	5	5	5	12	1	\N	\N	\N	\N
4087	341	6	4	0	11	0	\N	\N	\N	10
4088	341	7	0	0	0	0	8	8	8	8
4089	341	8	0	0	0	0	8	8	8	8
4090	341	9	0	0	0	0	8	8	8	8
4091	341	10	0	0	0	0	8	8	8	8
4092	341	11	0	0	0	0	8	8	8	8
4093	342	0	7	10	15	3	6	\N	37	3
4094	342	1	6	10	15	3	6	\N	\N	3
4095	342	2	5	9	14	2	6	\N	\N	3
4096	342	3	9	8	14	2	\N	\N	\N	3
4097	342	4	8	6	14	2	\N	\N	\N	\N
4098	342	5	5	5	12	1	\N	\N	\N	\N
4099	342	6	4	0	11	0	\N	\N	\N	10
4100	342	7	0	0	0	0	8	8	8	8
4101	342	8	0	0	0	0	8	8	8	8
4102	342	9	0	0	0	0	8	8	8	8
4103	342	10	0	0	0	0	8	8	8	8
4104	342	11	0	0	0	0	8	8	8	8
4105	343	0	14	8	15	2	13	33	37	3
4106	343	1	13	7	15	2	13	33	37	3
4107	343	2	12	7	14	2	13	\N	37	3
4108	343	3	11	6	14	2	13	\N	\N	3
4109	343	4	10	6	14	2	13	\N	\N	\N
4110	343	5	6	5	13	2	\N	\N	\N	\N
4111	343	6	5	0	12	0	\N	\N	\N	10
4112	343	7	4	0	11	0	\N	\N	\N	10
4113	343	8	0	0	0	0	8	8	8	8
4114	343	9	0	0	0	0	8	8	8	8
4115	343	10	0	0	0	0	8	8	8	8
4116	343	11	0	0	0	0	8	8	8	8
4117	344	0	14	9	15	2	13	33	37	3
4118	344	1	14	8	15	2	13	33	37	3
4119	344	2	12	8	14	2	13	\N	37	3
4120	344	3	11	7	14	2	13	\N	\N	3
4121	344	4	10	6	14	2	13	\N	\N	3
4122	344	5	6	5	13	2	\N	\N	\N	\N
4123	344	6	5	0	12	0	\N	\N	\N	10
4124	344	7	4	0	11	0	\N	\N	\N	10
4125	344	8	0	0	0	0	8	8	8	8
4126	344	9	0	0	0	0	8	8	8	8
4239	354	2	5	10	15	3	6	\N	\N	\N
4127	344	10	0	0	0	0	8	8	8	8
4128	344	11	0	0	0	0	8	8	8	8
4129	345	0	14	9	15	3	13	33	37	3
4130	345	1	14	9	15	2	13	33	37	3
4131	345	2	13	8	14	2	13	\N	37	3
4132	345	3	12	8	14	2	13	\N	\N	3
4133	345	4	11	7	14	2	13	\N	\N	3
4134	345	5	10	6	14	2	13	\N	\N	3
4135	345	6	5	0	12	0	\N	\N	\N	10
4136	345	7	4	0	11	0	\N	\N	\N	10
4137	345	8	0	0	0	0	8	8	8	8
4138	345	9	0	0	0	0	8	8	8	8
4139	345	10	0	0	0	0	8	8	8	8
4140	345	11	0	0	0	0	8	8	8	8
4141	346	0	6	8	15	2	5	33	\N	3
4142	346	1	5	7	15	2	5	33	\N	3
4143	346	2	10	7	14	2	\N	\N	\N	3
4144	346	3	9	6	14	2	\N	\N	\N	3
4145	346	4	8	6	14	2	\N	\N	\N	\N
4146	346	5	5	0	12	0	\N	\N	\N	10
4147	346	6	4	0	11	0	\N	\N	\N	10
4148	346	7	0	0	0	0	8	8	8	8
4149	346	8	0	0	0	0	8	8	8	8
4150	346	9	0	0	0	0	8	8	8	8
4151	346	10	0	0	0	0	8	8	8	8
4152	346	11	0	0	0	0	8	8	8	8
4153	347	0	6	9	15	2	5	33	\N	3
4154	347	1	6	8	15	2	5	33	\N	3
4155	347	2	10	8	14	2	\N	\N	\N	3
4156	347	3	9	7	14	2	\N	\N	\N	3
4157	347	4	8	6	14	2	\N	\N	\N	3
4158	347	5	5	0	12	0	\N	\N	\N	10
4159	347	6	4	0	11	0	\N	\N	\N	10
4160	347	7	0	0	0	0	8	8	8	8
4161	347	8	0	0	0	0	8	8	8	8
4162	347	9	0	0	0	0	8	8	8	8
4163	347	10	0	0	0	0	8	8	8	8
4164	347	11	0	0	0	0	8	8	8	8
4165	348	0	7	9	15	3	5	33	\N	3
4166	348	1	6	9	15	2	5	33	\N	3
4167	348	2	11	8	14	2	\N	\N	\N	3
4168	348	3	10	8	14	2	\N	\N	\N	3
4169	348	4	8	7	14	2	\N	\N	\N	3
4170	348	5	5	0	12	0	\N	\N	\N	10
4171	348	6	4	0	11	0	\N	\N	\N	10
4172	348	7	0	0	0	0	8	8	8	8
4173	348	8	0	0	0	0	8	8	8	8
4174	348	9	0	0	0	0	8	8	8	8
4175	348	10	0	0	0	0	8	8	8	8
4176	348	11	0	0	0	0	8	8	8	8
4177	349	0	7	9	14	2	6	\N	2	\N
4178	349	1	6	9	14	2	6	\N	\N	\N
4179	349	2	10	7	13	2	\N	\N	\N	\N
4180	349	3	8	6	13	1	\N	\N	\N	\N
4181	349	4	7	5	12	1	\N	\N	\N	\N
4182	349	5	6	4	11	1	\N	\N	\N	\N
4183	349	6	5	0	10	0	\N	\N	\N	10
4184	349	7	0	0	0	0	8	8	8	8
4185	349	8	0	0	0	0	8	8	8	8
4186	349	9	0	0	0	0	8	8	8	8
4187	349	10	0	0	0	0	8	8	8	8
4188	349	11	0	0	0	0	8	8	8	8
4189	350	0	7	10	14	2	6	\N	2	\N
4190	350	1	7	9	14	2	6	\N	\N	\N
4191	350	2	6	9	14	2	6	\N	\N	\N
4192	350	3	10	7	13	2	\N	\N	\N	\N
4193	350	4	7	5	12	1	\N	\N	\N	\N
4194	350	5	6	4	11	1	\N	\N	\N	\N
4195	350	6	5	0	10	0	\N	\N	\N	10
4196	350	7	0	0	0	0	8	8	8	8
4197	350	8	0	0	0	0	8	8	8	8
4198	350	9	0	0	0	0	8	8	8	8
4199	350	10	0	0	0	0	8	8	8	8
4200	350	11	0	0	0	0	8	8	8	8
4201	351	0	7	10	14	3	6	\N	2	\N
4202	351	1	7	9	14	2	6	\N	\N	\N
4203	351	2	6	9	14	2	6	\N	\N	\N
4204	351	3	10	7	13	2	\N	\N	\N	\N
4205	351	4	8	6	12	1	\N	\N	\N	\N
4206	351	5	7	5	12	1	\N	\N	\N	\N
4207	351	6	6	4	11	1	\N	\N	\N	\N
4208	351	7	5	0	10	0	\N	\N	\N	10
4209	351	8	0	0	0	0	8	8	8	8
4210	351	9	0	0	0	0	8	8	8	8
4211	351	10	0	0	0	0	8	8	8	8
4212	351	11	0	0	0	0	8	8	8	8
4213	352	0	6	10	16	3	6	\N	2	\N
4214	352	1	5	9	15	3	6	\N	2	\N
4215	352	2	4	9	14	2	6	\N	\N	\N
4216	352	3	8	7	13	2	\N	\N	\N	\N
4217	352	4	7	5	12	1	\N	\N	\N	\N
4218	352	5	6	4	11	1	\N	\N	\N	\N
4219	352	6	5	0	10	0	\N	\N	\N	10
4220	352	7	0	0	0	0	8	8	8	8
4221	352	8	0	0	0	0	8	8	8	8
4222	352	9	0	0	0	0	8	8	8	8
4223	352	10	0	0	0	0	8	8	8	8
4224	352	11	0	0	0	0	8	8	8	8
4225	353	0	6	10	16	3	6	\N	2	\N
4226	353	1	5	10	15	3	6	\N	2	\N
4227	353	2	5	9	15	3	6	\N	\N	\N
4228	353	3	4	9	14	2	6	\N	\N	\N
4229	353	4	8	7	13	2	\N	\N	\N	\N
4230	353	5	7	5	12	1	\N	\N	\N	\N
4231	353	6	6	4	11	1	\N	\N	\N	\N
4232	353	7	5	0	10	0	\N	\N	\N	10
4233	353	8	0	0	0	0	8	8	8	8
4234	353	9	0	0	0	0	8	8	8	8
4235	353	10	0	0	0	0	8	8	8	8
4236	353	11	0	0	0	0	8	8	8	8
4237	354	0	6	11	16	4	6	\N	2	\N
4238	354	1	6	10	15	3	6	\N	2	\N
4240	354	3	5	9	14	2	6	\N	\N	\N
4241	354	4	8	9	14	2	\N	\N	\N	\N
4242	354	5	8	7	13	2	\N	\N	\N	\N
4243	354	6	7	5	12	1	\N	\N	\N	\N
4244	354	7	6	4	11	1	\N	\N	\N	\N
4245	354	8	5	0	10	0	\N	\N	\N	10
4246	354	9	0	0	0	0	8	8	8	8
4247	354	10	0	0	0	0	8	8	8	8
4248	354	11	0	0	0	0	8	8	8	8
4249	355	0	7	9	14	2	6	40	\N	\N
4250	355	1	12	9	14	2	\N	\N	\N	\N
4251	355	2	10	8	13	2	\N	\N	\N	\N
4252	355	3	8	6	13	1	\N	\N	\N	\N
4253	355	4	7	5	12	1	\N	\N	\N	\N
4254	355	5	6	4	11	1	\N	\N	\N	\N
4255	355	6	5	0	10	0	\N	\N	\N	10
4256	355	7	0	0	0	0	8	8	8	8
4257	355	8	0	0	0	0	8	8	8	8
4258	355	9	0	0	0	0	8	8	8	8
4259	355	10	0	0	0	0	8	8	8	8
4260	355	11	0	0	0	0	8	8	8	8
4261	356	0	7	10	14	2	6	40	\N	\N
4262	356	1	7	9	14	2	6	\N	\N	\N
4263	356	2	12	9	14	2	\N	\N	\N	\N
4264	356	3	10	7	13	2	\N	\N	\N	\N
4265	356	4	7	5	12	1	\N	\N	\N	\N
4266	356	5	6	4	11	1	\N	\N	\N	\N
4267	356	6	5	0	10	0	\N	\N	\N	10
4268	356	7	0	0	0	0	8	8	8	8
4269	356	8	0	0	0	0	8	8	8	8
4270	356	9	0	0	0	0	8	8	8	8
4271	356	10	0	0	0	0	8	8	8	8
4272	356	11	0	0	0	0	8	8	8	8
4273	357	0	7	10	14	3	6	40	\N	\N
4274	357	1	7	9	14	2	6	40	\N	\N
4275	357	2	12	9	14	2	\N	\N	\N	\N
4276	357	3	10	7	13	2	\N	\N	\N	\N
4277	357	4	8	6	12	2	\N	\N	\N	\N
4278	357	5	7	5	12	1	\N	\N	\N	\N
4279	357	6	6	4	11	1	\N	\N	\N	\N
4280	357	7	5	0	10	0	\N	\N	\N	10
4281	357	8	0	0	0	0	8	8	8	8
4282	357	9	0	0	0	0	8	8	8	8
4283	357	10	0	0	0	0	8	8	8	8
4284	357	11	0	0	0	0	8	8	8	8
4285	358	0	6	10	16	3	6	40	2	\N
4286	358	1	5	9	15	3	6	\N	2	\N
4287	358	2	9	9	14	2	\N	\N	\N	\N
4288	358	3	8	7	13	2	\N	\N	\N	\N
4289	358	4	7	5	12	1	\N	\N	\N	\N
4290	358	5	6	4	11	1	\N	\N	\N	\N
4291	358	6	5	0	10	0	\N	\N	\N	10
4292	358	7	0	0	0	0	8	8	8	8
4293	358	8	0	0	0	0	8	8	8	8
4294	358	9	0	0	0	0	8	8	8	8
4295	358	10	0	0	0	0	8	8	8	8
4296	358	11	0	0	0	0	8	8	8	8
4297	359	0	6	10	16	3	6	40	2	\N
4298	359	1	5	10	15	3	6	\N	2	\N
4299	359	2	5	9	15	3	6	\N	\N	\N
4300	359	3	9	9	14	2	\N	\N	\N	\N
4301	359	4	8	7	13	2	\N	\N	\N	\N
4302	359	5	7	5	12	1	\N	\N	\N	\N
4303	359	6	6	4	11	1	\N	\N	\N	\N
4304	359	7	5	0	10	0	\N	\N	\N	10
4305	359	8	0	0	0	0	8	8	8	8
4306	359	9	0	0	0	0	8	8	8	8
4307	359	10	0	0	0	0	8	8	8	8
4308	359	11	0	0	0	0	8	8	8	8
4309	360	0	6	11	16	3	6	40	2	\N
4310	360	1	6	10	15	3	6	40	2	\N
4311	360	2	5	10	15	3	6	\N	\N	\N
4312	360	3	9	9	14	2	\N	\N	\N	\N
4313	360	4	8	9	14	2	\N	\N	\N	\N
4314	360	5	8	7	13	2	\N	\N	\N	\N
4315	360	6	7	5	12	1	\N	\N	\N	\N
4316	360	7	6	4	11	1	\N	\N	\N	\N
4317	360	8	5	0	10	0	\N	\N	\N	10
4318	360	9	0	0	0	0	8	8	8	8
4319	360	10	0	0	0	0	8	8	8	8
4320	360	11	0	0	0	0	8	8	8	8
4321	361	0	7	8	15	2	6	\N	2	3
4322	361	1	6	8	15	2	6	\N	\N	3
4323	361	2	5	7	14	2	6	\N	\N	\N
4324	361	3	8	6	14	1	\N	\N	\N	\N
4325	361	4	6	8	12	3	\N	\N	\N	4
4326	361	5	5	0	10	0	\N	\N	\N	10
4327	361	6	0	0	0	0	8	8	8	8
4328	361	7	0	0	0	0	8	8	8	8
4329	361	8	0	0	0	0	8	8	8	8
4330	361	9	0	0	0	0	8	8	8	8
4331	361	10	0	0	0	0	8	8	8	8
4332	361	11	0	0	0	0	8	8	8	8
4333	362	0	7	9	15	3	6	\N	2	3
4334	362	1	6	9	15	2	6	\N	\N	3
4335	362	2	5	8	14	2	6	\N	\N	3
4336	362	3	8	7	14	1	\N	\N	\N	\N
4337	362	4	6	9	12	3	\N	\N	\N	4
4338	362	5	5	0	10	0	\N	\N	\N	10
4339	362	6	0	0	0	0	8	8	8	8
4340	362	7	0	0	0	0	8	8	8	8
4341	362	8	0	0	0	0	8	8	8	8
4342	362	9	0	0	0	0	8	8	8	8
4343	362	10	0	0	0	0	8	8	8	8
4344	362	11	0	0	0	0	8	8	8	8
4345	363	0	7	9	15	3	6	\N	2	3
4346	363	1	6	9	15	2	6	\N	\N	3
4347	363	2	5	8	14	2	6	\N	\N	3
4348	363	3	4	7	14	1	6	\N	\N	\N
4349	363	4	6	6	12	1	\N	\N	\N	\N
4350	363	5	6	9	11	3	\N	\N	\N	4
4351	363	6	5	0	10	0	\N	\N	\N	10
4352	363	7	0	0	0	0	8	8	8	8
4353	363	8	0	0	0	0	8	8	8	8
4354	363	9	0	0	0	0	8	8	8	8
4355	363	10	0	0	0	0	8	8	8	8
4356	363	11	0	0	0	0	8	8	8	8
4357	364	0	5	9	16	3	6	\N	2	3
4358	364	1	4	8	16	3	6	\N	2	3
4359	364	2	8	7	15	2	\N	\N	37	\N
4360	364	3	7	6	14	2	\N	\N	37	\N
4361	364	4	7	6	13	1	\N	\N	\N	\N
4362	364	5	6	9	12	3	\N	\N	\N	4
4363	364	6	5	0	11	0	\N	\N	\N	10
4364	364	7	0	0	0	0	8	8	8	8
4365	364	8	0	0	0	0	8	8	8	8
4366	364	9	0	0	0	0	8	8	8	8
4367	364	10	0	0	0	0	8	8	8	8
4368	364	11	0	0	0	0	8	8	8	8
4369	365	0	5	9	16	3	6	\N	2	3
4370	365	1	4	9	16	3	6	\N	2	3
4371	365	2	8	8	15	2	\N	\N	37	\N
4372	365	3	7	8	14	2	\N	\N	37	\N
4373	365	4	7	7	13	1	\N	\N	\N	\N
4374	365	5	6	9	12	3	\N	\N	\N	4
4375	365	6	5	0	11	0	\N	\N	\N	10
4376	365	7	0	0	0	0	8	8	8	8
4377	365	8	0	0	0	0	8	8	8	8
4378	365	9	0	0	0	0	8	8	8	8
4379	365	10	0	0	0	0	8	8	8	8
4380	365	11	0	0	0	0	8	8	8	8
4381	366	0	5	10	16	3	6	\N	2	3
4382	366	1	5	9	16	3	6	\N	2	3
4383	366	2	4	9	15	3	6	\N	37	3
4384	366	3	8	8	14	2	\N	\N	37	3
4385	366	4	7	8	14	2	\N	\N	\N	\N
4386	366	5	7	7	13	1	\N	\N	\N	\N
4387	366	6	6	9	12	3	\N	\N	\N	4
4388	366	7	5	0	11	0	\N	\N	\N	10
4389	366	8	0	0	0	0	8	8	8	8
4390	366	9	0	0	0	0	8	8	8	8
4391	366	10	0	0	0	0	8	8	8	8
4392	366	11	0	0	0	0	8	8	8	8
4393	367	0	7	8	15	1	5	\N	\N	\N
4394	367	1	12	7	15	1	\N	\N	\N	\N
4395	367	2	10	6	14	1	\N	\N	\N	\N
4396	367	3	7	5	12	1	\N	\N	\N	\N
4397	367	4	5	0	10	0	\N	\N	\N	10
4398	367	5	0	0	0	0	8	8	8	8
4399	367	6	0	0	0	0	8	8	8	8
4400	367	7	0	0	0	0	8	8	8	8
4401	367	8	0	0	0	0	8	8	8	8
4402	367	9	0	0	0	0	8	8	8	8
4403	367	10	0	0	0	0	8	8	8	8
4404	367	11	0	0	0	0	8	8	8	8
4405	368	0	7	8	15	1	5	\N	\N	\N
4406	368	1	6	7	15	1	5	\N	\N	\N
4407	368	2	10	6	14	1	\N	\N	\N	\N
4408	368	3	8	5	12	1	\N	\N	\N	\N
4409	368	4	6	0	10	0	\N	\N	\N	10
4410	368	5	0	0	0	0	8	8	8	8
4411	368	6	0	0	0	0	8	8	8	8
4412	368	7	0	0	0	0	8	8	8	8
4413	368	8	0	0	0	0	8	8	8	8
4414	368	9	0	0	0	0	8	8	8	8
4415	368	10	0	0	0	0	8	8	8	8
4416	368	11	0	0	0	0	8	8	8	8
4417	369	0	7	8	15	1	5	\N	\N	\N
4418	369	1	6	8	15	1	5	\N	\N	\N
4419	369	2	10	7	14	1	\N	\N	\N	\N
4420	369	3	8	6	13	1	\N	\N	\N	\N
4421	369	4	7	5	12	1	\N	\N	\N	\N
4422	369	5	6	0	10	0	\N	\N	\N	10
4423	369	6	0	0	0	0	8	8	8	8
4424	369	7	0	0	0	0	8	8	8	8
4425	369	8	0	0	0	0	8	8	8	8
4426	369	9	0	0	0	0	8	8	8	8
4427	369	10	0	0	0	0	8	8	8	8
4428	369	11	0	0	0	0	8	8	8	8
4429	370	0	5	8	15	1	5	\N	2	\N
4430	370	1	8	7	15	1	\N	\N	37	\N
4431	370	2	8	6	14	1	\N	\N	37	\N
4432	370	3	7	5	13	1	\N	\N	\N	\N
4433	370	4	5	0	11	0	\N	\N	\N	10
4434	370	5	0	0	0	0	8	8	8	8
4435	370	6	0	0	0	0	8	8	8	8
4436	370	7	0	0	0	0	8	8	8	8
4437	370	8	0	0	0	0	8	8	8	8
4438	370	9	0	0	0	0	8	8	8	8
4439	370	10	0	0	0	0	8	8	8	8
4440	370	11	0	0	0	0	8	8	8	8
4441	371	0	5	8	16	1	5	\N	2	\N
4442	371	1	4	7	15	1	5	\N	37	\N
4443	371	2	8	6	14	1	\N	\N	37	\N
4444	371	3	7	5	13	1	\N	\N	\N	\N
4445	371	4	7	4	12	1	\N	\N	\N	\N
4446	371	5	5	0	11	0	\N	\N	\N	10
4447	371	6	0	0	0	0	8	8	8	8
4448	371	7	0	0	0	0	8	8	8	8
4449	371	8	0	0	0	0	8	8	8	8
4450	371	9	0	0	0	0	8	8	8	8
4451	371	10	0	0	0	0	8	8	8	8
4452	371	11	0	0	0	0	8	8	8	8
4453	372	0	5	8	16	1	5	\N	2	\N
4454	372	1	4	8	15	1	5	\N	37	\N
4455	372	2	8	7	14	1	\N	\N	37	\N
4456	372	3	7	6	13	1	\N	\N	\N	\N
4457	372	4	7	5	12	1	\N	\N	\N	\N
4458	372	5	6	4	12	1	\N	\N	\N	\N
4459	372	6	5	0	11	0	\N	\N	\N	10
4460	372	7	0	0	0	0	8	8	8	8
4461	372	8	0	0	0	0	8	8	8	8
4462	372	9	0	0	0	0	8	8	8	8
4463	372	10	0	0	0	0	8	8	8	8
4464	372	11	0	0	0	0	8	8	8	8
4465	373	0	5	12	15	4	5	18	2	7
4466	373	1	5	11	15	4	5	18	2	7
4467	373	2	4	10	15	4	5	18	2	7
4468	373	3	4	9	15	3	5	18	\N	7
4469	373	4	7	8	15	3	\N	\N	\N	7
4470	373	5	6	7	14	3	\N	\N	\N	\N
4471	373	6	5	6	14	2	\N	\N	\N	\N
4472	373	7	4	5	14	1	\N	\N	\N	\N
4473	373	8	4	0	11	0	\N	\N	\N	10
4474	373	9	0	0	0	0	8	8	8	8
4475	373	10	0	0	0	0	8	8	8	8
4476	373	11	0	0	0	0	8	8	8	8
4477	374	0	12	13	17	5	13	\N	2	3
4478	374	1	12	13	16	5	13	\N	2	3
4479	374	2	11	12	16	4	13	\N	2	3
4480	374	3	10	12	16	4	13	\N	2	3
4481	374	4	10	11	16	4	13	\N	2	3
4482	374	5	9	11	15	4	13	\N	2	3
4483	374	6	8	10	15	3	13	\N	2	3
4484	374	7	8	10	14	3	13	\N	2	3
4485	374	8	8	9	14	2	13	\N	2	\N
4486	374	9	8	8	13	2	13	\N	\N	\N
4487	374	10	4	6	12	1	\N	\N	\N	\N
4488	374	11	0	0	0	0	8	8	8	8
4489	375	0	14	12	17	4	13	\N	23	7
4490	375	1	14	11	17	3	13	\N	23	7
4491	375	2	13	11	16	3	13	\N	23	7
4492	375	3	13	10	16	3	13	\N	23	7
4493	375	4	12	10	15	2	13	\N	\N	7
4494	375	5	12	9	15	2	13	\N	\N	26
4495	375	6	11	8	15	2	13	\N	\N	26
4496	375	7	10	7	15	2	13	\N	\N	26
4497	375	8	6	6	15	1	\N	\N	\N	26
4498	375	9	5	6	15	1	\N	\N	16	26
4499	375	10	0	0	0	0	8	8	8	8
4500	375	11	0	0	0	0	8	8	8	8
4501	376	0	7	13	18	4	6	\N	2	3
4502	376	1	6	13	17	3	6	\N	2	3
4503	376	2	5	12	16	3	6	38	2	3
4504	376	3	5	11	16	3	6	38	2	3
4505	376	4	4	11	15	3	6	38	\N	3
4506	376	5	8	10	14	3	\N	38	\N	3
4507	376	6	8	9	14	2	\N	\N	\N	3
4508	376	7	7	8	13	2	\N	\N	\N	3
4509	376	8	6	7	11	2	\N	\N	\N	3
4510	376	9	5	6	10	2	\N	\N	\N	\N
4511	376	10	0	0	0	0	8	8	8	8
4512	376	11	0	0	0	0	8	8	8	8
4513	377	0	6	12	16	3	6	40	2	\N
4514	377	1	6	11	16	3	6	40	2	\N
4515	377	2	5	11	15	3	6	40	2	\N
4516	377	3	5	10	15	3	6	40	2	\N
4517	377	4	4	10	14	3	6	\N	\N	\N
4518	377	5	8	9	13	3	\N	\N	\N	\N
4519	377	6	7	8	12	2	\N	\N	\N	\N
4520	377	7	6	6	11	2	\N	\N	\N	\N
4521	377	8	5	5	10	1	\N	\N	\N	\N
4522	377	9	0	0	0	0	8	8	8	8
4523	377	10	0	0	0	0	8	8	8	8
4524	377	11	0	0	0	0	8	8	8	8
4525	378	0	7	9	15	2	6	\N	\N	7
4526	378	1	7	9	14	2	6	\N	\N	\N
4527	378	2	12	9	14	2	\N	\N	\N	\N
4528	378	3	10	7	14	2	\N	\N	\N	\N
4529	378	4	4	10	16	2	5	22	\N	7
4530	378	5	4	9	15	2	5	22	\N	\N
4531	378	6	6	8	13	1	\N	22	\N	\N
4532	378	7	5	7	12	1	\N	22	\N	\N
4533	378	8	0	0	0	0	8	8	8	8
4534	378	9	0	0	0	0	8	8	8	8
4535	378	10	0	0	0	0	8	8	8	8
4536	378	11	0	0	0	0	8	8	8	8
4537	379	0	8	13	17	4	\N	\N	2	7
4538	379	1	8	13	16	4	\N	\N	2	7
4539	379	2	8	12	16	4	\N	\N	2	7
4540	379	3	7	12	15	3	\N	\N	2	\N
4541	379	4	7	11	14	3	\N	\N	\N	\N
4542	379	5	6	10	14	3	\N	\N	\N	\N
4543	379	6	6	9	13	3	\N	\N	\N	\N
4544	379	7	5	8	12	2	\N	\N	\N	\N
4545	379	8	4	7	11	2	\N	\N	\N	\N
4546	379	9	0	0	0	0	8	8	8	8
4547	379	10	0	0	0	0	8	8	8	8
4548	379	11	0	0	0	0	8	8	8	8
4549	380	0	8	10	15	2	\N	\N	2	7
4550	380	1	6	9	14	2	\N	\N	\N	7
4551	380	2	5	7	14	2	\N	\N	\N	7
4552	380	3	4	6	13	1	\N	\N	\N	7
4553	380	4	7	9	13	3	\N	\N	\N	4
4554	380	5	5	8	12	2	\N	\N	\N	4
4555	380	6	4	0	11	0	\N	\N	\N	10
4556	380	7	0	0	0	0	8	8	8	8
4557	380	8	0	0	0	0	8	8	8	8
4558	380	9	0	0	0	0	8	8	8	8
4559	380	10	0	0	0	0	8	8	8	8
4560	380	11	0	0	0	0	8	8	8	8
4561	381	0	6	12	16	2	24	18	23	\N
4562	381	1	6	11	16	2	24	18	23	\N
4563	381	2	6	11	15	2	\N	18	23	3
4564	381	3	6	10	15	2	\N	18	23	3
4565	381	4	6	9	15	2	\N	18	\N	3
4566	381	5	6	8	15	2	\N	\N	\N	3
4567	381	6	5	8	15	2	\N	\N	32	3
4568	381	7	5	7	15	2	\N	\N	32	3
4569	381	8	4	7	15	2	\N	\N	16	\N
4570	381	9	0	0	0	0	8	8	8	8
4571	381	10	0	0	0	0	8	8	8	8
4572	381	11	0	0	0	0	8	8	8	8
4573	382	0	8	15	19	5	13	18	16	7
4574	382	1	8	14	18	4	13	18	16	7
4575	382	2	8	13	17	4	13	18	37	7
4576	382	3	8	12	16	3	13	18	37	7
4577	382	4	7	11	16	3	13	18	37	7
4578	382	5	7	10	15	3	13	\N	37	\N
4579	382	6	6	9	15	3	\N	\N	37	\N
4580	382	7	5	8	14	2	\N	\N	37	\N
4581	382	8	4	8	13	2	\N	\N	37	\N
4582	382	9	0	0	0	0	8	8	8	8
4583	382	10	0	0	0	0	8	8	8	8
4584	382	11	0	0	0	0	8	8	8	8
4585	383	0	8	9	15	2	\N	40	2	\N
4586	383	1	8	7	15	2	\N	40	2	\N
4587	383	2	6	6	14	2	\N	\N	\N	\N
4588	383	3	6	6	13	2	\N	\N	\N	\N
4589	383	4	5	5	12	1	\N	\N	\N	\N
4590	383	5	5	5	11	1	\N	\N	\N	\N
4591	383	6	4	5	10	1	\N	\N	\N	\N
4592	383	7	0	0	0	0	8	8	8	8
4593	383	8	0	0	0	0	8	8	8	8
4594	383	9	0	0	0	0	8	8	8	8
4595	383	10	0	0	0	0	8	8	8	8
4596	383	11	0	0	0	0	8	8	8	8
4597	384	0	6	9	15	3	1	\N	29	\N
4598	384	1	6	8	14	2	1	\N	29	\N
4599	384	2	6	6	13	2	1	\N	\N	\N
4600	384	3	5	5	12	1	1	\N	\N	\N
4601	384	4	5	4	11	1	\N	\N	\N	\N
4602	384	5	3	0	10	0	\N	\N	\N	10
4603	384	6	0	0	0	0	8	8	8	8
4604	384	7	0	0	0	0	8	8	8	8
4605	384	8	0	0	0	0	8	8	8	8
4606	384	9	0	0	0	0	8	8	8	8
4607	384	10	0	0	0	0	8	8	8	8
4608	384	11	0	0	0	0	8	8	8	8
4609	385	0	10	9	15	2	30	\N	\N	\N
4610	385	1	10	8	15	2	30	\N	\N	\N
4611	385	2	9	6	14	2	30	\N	\N	\N
4612	385	3	8	5	14	1	\N	\N	\N	\N
4613	385	4	6	4	12	1	\N	\N	\N	\N
4614	385	5	5	4	12	1	\N	\N	\N	\N
4615	385	6	5	0	10	0	\N	\N	\N	10
4616	385	7	0	0	0	0	8	8	8	8
4617	385	8	0	0	0	0	8	8	8	8
4618	385	9	0	0	0	0	8	8	8	8
4619	385	10	0	0	0	0	8	8	8	8
4620	385	11	0	0	0	0	8	8	8	8
4621	386	0	5	9	15	2	5	\N	\N	\N
4622	386	1	4	8	14	2	5	\N	\N	\N
4623	386	2	7	8	14	1	\N	\N	\N	\N
4624	386	3	6	7	13	1	\N	\N	\N	\N
4625	386	4	5	5	13	1	\N	\N	\N	\N
4626	386	5	4	5	12	1	\N	\N	\N	\N
4627	386	6	4	0	11	0	\N	\N	\N	10
4628	386	7	0	0	0	0	8	8	8	8
4629	386	8	0	0	0	0	8	8	8	8
4630	386	9	0	0	0	0	8	8	8	8
4631	386	10	0	0	0	0	8	8	8	8
4632	386	11	0	0	0	0	8	8	8	8
4633	387	0	6	9	14	2	1	\N	\N	\N
4634	387	1	6	8	13	2	1	\N	\N	\N
4635	387	2	6	7	12	2	1	38	\N	\N
4636	387	3	5	6	11	1	1	38	\N	\N
4637	387	4	5	5	11	1	1	\N	\N	\N
4638	387	5	4	5	11	1	1	\N	\N	\N
4639	387	6	4	4	10	1	1	\N	\N	\N
4640	387	7	0	0	0	0	8	8	8	8
4641	387	8	0	0	0	0	8	8	8	8
4642	387	9	0	0	0	0	8	8	8	8
4643	387	10	0	0	0	0	8	8	8	8
4644	387	11	0	0	0	0	8	8	8	8
4645	388	0	8	11	15	3	35	40	\N	\N
4646	388	1	8	10	15	2	35	\N	\N	3
4647	388	2	7	9	14	2	35	38	\N	3
4648	388	3	7	9	14	1	35	38	\N	3
4649	388	4	6	8	13	1	35	38	\N	\N
4650	388	5	6	7	12	1	35	\N	\N	\N
4651	388	6	5	0	11	0	35	\N	\N	\N
4652	388	7	0	0	0	0	8	8	8	8
4653	388	8	0	0	0	0	8	8	8	8
4654	388	9	0	0	0	0	8	8	8	8
4655	388	10	0	0	0	0	8	8	8	8
4656	388	11	0	0	0	0	8	8	8	8
4657	389	0	8	7	17	1	\N	\N	9	\N
4658	389	1	7	6	16	1	\N	\N	9	\N
4659	389	2	6	5	15	1	\N	\N	9	\N
4660	389	3	5	4	13	1	\N	\N	\N	\N
4661	389	4	4	4	11	1	\N	\N	\N	\N
4662	389	5	2	0	10	0	\N	\N	\N	10
4663	389	6	0	0	0	0	8	8	8	8
4664	389	7	0	0	0	0	8	8	8	8
4665	389	8	0	0	0	0	8	8	8	8
4666	389	9	0	0	0	0	8	8	8	8
4667	389	10	0	0	0	0	8	8	8	8
4668	389	11	0	0	0	0	8	8	8	8
4669	390	0	8	9	15	2	\N	\N	\N	\N
4670	390	1	7	8	14	2	\N	\N	\N	\N
4671	390	2	6	7	13	2	\N	\N	\N	\N
4672	390	3	5	6	12	2	\N	\N	\N	\N
4673	390	4	4	5	12	2	\N	\N	\N	\N
4674	390	5	2	0	10	0	\N	\N	\N	10
4675	390	6	0	0	0	0	8	8	8	8
4676	390	7	0	0	0	0	8	8	8	8
4677	390	8	0	0	0	0	8	8	8	8
4678	390	9	0	0	0	0	8	8	8	8
4679	390	10	0	0	0	0	8	8	8	8
4680	390	11	0	0	0	0	8	8	8	8
4681	391	0	8	8	15	2	30	\N	\N	\N
4682	391	1	8	7	15	2	30	\N	\N	\N
4683	391	2	7	6	14	1	30	\N	\N	\N
4684	391	3	5	5	12	1	\N	\N	\N	\N
4685	391	4	4	0	11	0	\N	\N	\N	10
4686	391	5	0	0	0	0	8	8	8	8
4687	391	6	0	0	0	0	8	8	8	8
4688	391	7	0	0	0	0	8	8	8	8
4689	391	8	0	0	0	0	8	8	8	8
4690	391	9	0	0	0	0	8	8	8	8
4691	391	10	0	0	0	0	8	8	8	8
4692	391	11	0	0	0	0	8	8	8	8
4693	392	0	8	10	15	3	\N	40	\N	\N
4694	392	1	8	9	14	3	\N	40	\N	\N
4695	392	2	8	8	14	3	\N	\N	\N	\N
4696	392	3	7	6	13	2	\N	\N	\N	\N
4697	392	4	6	6	13	2	\N	\N	\N	\N
4698	392	5	5	5	12	1	\N	\N	\N	\N
4699	392	6	4	0	11	0	\N	\N	\N	10
4700	392	7	0	0	0	0	8	8	8	8
4701	392	8	0	0	0	0	8	8	8	8
4702	392	9	0	0	0	0	8	8	8	8
4703	392	10	0	0	0	0	8	8	8	8
4704	392	11	0	0	0	0	8	8	8	8
4705	393	0	8	8	15	2	\N	\N	\N	\N
4706	393	1	7	7	14	2	\N	\N	\N	\N
4707	393	2	7	7	13	2	\N	\N	\N	\N
4708	393	3	7	5	12	2	\N	\N	\N	\N
4709	393	4	6	4	12	2	\N	\N	\N	\N
4710	393	5	5	0	11	0	\N	\N	\N	10
4711	393	6	0	0	0	0	8	8	8	8
4712	393	7	0	0	0	0	8	8	8	8
4713	393	8	0	0	0	0	8	8	8	8
4714	393	9	0	0	0	0	8	8	8	8
4715	393	10	0	0	0	0	8	8	8	8
4716	393	11	0	0	0	0	8	8	8	8
4717	394	0	8	9	15	2	35	\N	29	3
4718	394	1	8	8	15	2	35	\N	29	3
4719	394	2	8	7	14	2	35	\N	29	3
4720	394	3	7	5	14	1	\N	\N	\N	3
4721	394	4	7	5	13	1	\N	\N	\N	\N
4722	394	5	4	0	11	0	\N	\N	\N	10
4723	394	6	0	0	0	0	8	8	8	8
4724	394	7	0	0	0	0	8	8	8	8
4725	394	8	0	0	0	0	8	8	8	8
4726	394	9	0	0	0	0	8	8	8	8
4727	394	10	0	0	0	0	8	8	8	8
4728	394	11	0	0	0	0	8	8	8	8
4729	395	0	5	9	14	2	5	33	\N	\N
4730	395	1	8	7	13	1	\N	33	\N	\N
4731	395	2	6	6	12	1	\N	33	\N	\N
4732	395	3	5	0	10	0	\N	\N	\N	10
4733	395	4	0	0	0	0	8	8	8	8
4734	395	5	0	0	0	0	8	8	8	8
4735	395	6	0	0	0	0	8	8	8	8
4736	395	7	0	0	0	0	8	8	8	8
4737	395	8	0	0	0	0	8	8	8	8
4738	395	9	0	0	0	0	8	8	8	8
4739	395	10	0	0	0	0	8	8	8	8
4740	395	11	0	0	0	0	8	8	8	8
4741	396	0	8	9	15	2	\N	\N	\N	3
4742	396	1	7	7	13	2	\N	38	\N	3
4743	396	2	5	6	11	1	\N	38	\N	3
4744	396	3	4	0	10	0	\N	\N	\N	10
4745	396	4	0	0	0	0	8	8	8	8
4746	396	5	0	0	0	0	8	8	\N	8
4747	396	6	0	0	0	0	8	8	8	8
4748	396	7	0	0	0	0	8	8	8	8
4749	396	8	0	0	0	0	8	8	8	8
4750	396	9	0	0	0	0	8	8	8	8
4751	396	10	0	0	0	0	8	8	8	8
4752	396	11	0	0	0	0	8	8	8	8
4753	397	0	8	8	15	1	30	\N	\N	\N
4754	397	1	7	7	13	1	30	\N	\N	\N
4755	397	2	6	7	11	1	\N	\N	\N	\N
4756	397	3	4	0	10	0	\N	\N	\N	10
4757	397	4	0	0	0	0	8	8	8	8
4758	397	5	0	0	0	0	8	8	\N	8
4759	397	6	0	0	0	0	8	8	8	8
4760	397	7	0	0	0	0	8	8	8	8
4761	397	8	0	0	0	0	8	8	8	8
4762	397	9	0	0	0	0	8	8	8	8
4763	397	10	0	0	0	0	8	8	8	8
4764	397	11	0	0	0	0	8	8	8	8
4765	398	0	8	0	12	0	\N	\N	\N	10
4766	398	1	8	6	14	1	\N	\N	\N	\N
4767	398	2	7	0	11	0	\N	\N	\N	10
4768	398	3	0	0	0	0	8	8	8	8
4769	398	4	0	0	0	0	8	8	8	8
4770	398	5	0	0	0	0	8	8	\N	8
4771	398	6	0	0	0	0	8	8	8	8
4772	398	7	0	0	0	0	8	8	8	8
4773	398	8	0	0	0	0	8	8	8	8
4774	398	9	0	0	0	0	8	8	8	8
4775	398	10	0	0	0	0	8	8	8	8
4776	398	11	0	0	0	0	8	8	8	8
4777	399	0	5	11	15	3	5	12	2	\N
4778	399	1	5	9	15	3	5	12	2	\N
4779	399	2	4	8	15	3	5	12	2	\N
4780	399	3	8	7	15	2	\N	\N	2	\N
4781	399	4	7	6	15	2	\N	\N	\N	\N
4782	399	5	6	5	14	1	\N	\N	\N	\N
4783	399	6	5	4	12	1	\N	\N	\N	\N
4784	399	7	4	0	11	0	\N	\N	\N	10
4785	399	8	0	0	0	0	8	8	8	8
4786	399	9	0	0	0	0	8	8	8	8
4787	399	10	0	0	0	0	8	8	8	8
4788	399	11	0	0	0	0	8	8	8	8
4789	400	0	12	11	16	3	13	12	2	\N
4790	400	1	12	10	15	3	13	12	2	\N
4791	400	2	12	9	15	3	13	12	2	\N
4792	400	3	11	8	15	3	13	12	2	\N
4793	400	4	10	6	15	1	13	\N	\N	\N
4794	400	5	9	5	14	1	13	\N	\N	\N
4795	400	6	8	4	14	1	13	\N	\N	\N
4796	400	7	8	4	13	1	13	\N	\N	\N
4797	400	8	8	4	12	1	13	\N	\N	\N
4798	400	9	4	0	11	0	\N	\N	\N	10
4799	400	10	0	0	0	0	8	8	8	8
4800	400	11	0	0	0	0	8	8	8	8
4801	401	0	5	10	16	2	5	\N	2	\N
4802	401	1	5	9	15	2	5	\N	2	\N
4803	401	2	5	8	15	2	5	\N	2	\N
4804	401	3	4	7	15	2	5	\N	\N	\N
4805	401	4	8	6	15	1	\N	\N	\N	\N
4806	401	5	7	5	14	1	\N	\N	\N	\N
4807	401	6	5	4	12	1	\N	\N	\N	\N
4808	401	7	4	0	11	0	\N	\N	\N	10
4809	401	8	0	0	0	0	8	8	8	8
4810	401	9	0	0	0	0	8	8	8	8
4811	401	10	0	0	0	0	8	8	8	8
4812	401	11	0	0	0	0	8	8	8	8
4813	402	0	14	10	15	2	13	\N	2	3
4814	402	1	13	8	15	1	13	\N	2	3
4815	402	2	12	7	15	1	13	\N	2	3
4816	402	3	11	6	15	1	13	\N	\N	3
4817	402	4	10	5	15	1	13	\N	\N	3
4818	402	5	9	4	14	1	13	\N	\N	3
4819	402	6	8	4	14	1	13	\N	\N	\N
4820	402	7	8	4	13	1	13	\N	\N	\N
4821	402	8	8	4	12	1	13	\N	\N	\N
4822	402	9	4	0	11	0	\N	\N	\N	10
4823	402	10	0	0	0	0	8	8	8	8
4824	402	11	0	0	0	0	8	8	8	8
4825	403	0	14	11	16	3	13	40	37	3
4826	403	1	14	10	15	3	13	40	37	3
4827	403	2	13	9	14	2	13	40	37	3
4828	403	3	12	9	14	2	13	\N	\N	3
4829	403	4	11	8	14	2	13	\N	\N	3
4830	403	5	8	7	14	2	\N	\N	\N	\N
4831	403	6	6	6	13	2	\N	\N	\N	\N
4832	403	7	5	5	12	1	\N	\N	\N	\N
4833	403	8	4	0	11	0	\N	\N	\N	10
4834	403	9	0	0	0	0	8	8	8	8
4835	403	10	0	0	0	0	8	8	8	8
4836	403	11	0	0	0	0	8	8	8	8
4837	404	0	7	11	15	3	6	40	37	3
4838	404	1	6	10	15	3	6	40	\N	3
4839	404	2	5	9	14	2	6	40	\N	3
4840	404	3	5	8	14	2	6	\N	\N	3
4841	404	4	8	6	14	2	\N	\N	\N	\N
4842	404	5	6	5	13	1	\N	\N	\N	\N
4843	404	6	5	5	12	1	\N	\N	\N	\N
4844	404	7	4	0	11	0	\N	\N	\N	10
4845	404	8	0	0	0	0	8	8	8	8
4846	404	9	0	0	0	0	8	8	8	8
4847	404	10	0	0	0	0	8	8	8	8
4848	404	11	0	0	0	0	8	8	8	8
4849	405	0	14	11	15	3	13	33	37	3
4850	405	1	14	9	15	2	13	33	37	3
4851	405	2	13	8	14	2	13	33	37	3
4852	405	3	12	8	14	2	13	\N	\N	3
4853	405	4	11	7	14	2	13	\N	\N	3
4854	405	5	10	6	14	2	13	\N	\N	3
4855	405	6	6	5	13	2	\N	\N	\N	\N
4856	405	7	5	4	12	1	\N	\N	\N	\N
4857	405	8	4	0	11	0	\N	\N	\N	10
4858	405	9	0	0	0	0	8	8	8	8
4859	405	10	0	0	0	0	8	8	8	8
4860	405	11	0	0	0	0	8	8	8	8
4861	406	0	7	10	16	3	6	33	\N	3
4862	406	1	6	9	15	2	6	33	\N	3
4863	406	2	6	8	14	2	6	33	\N	3
4864	406	3	10	8	14	2	\N	\N	\N	3
4865	406	4	8	7	14	2	\N	\N	\N	3
4866	406	5	6	6	13	2	\N	\N	\N	3
4867	406	6	5	5	12	1	\N	\N	\N	\N
4868	406	7	4	0	11	0	\N	\N	\N	10
4869	406	8	0	0	0	0	8	8	8	8
4870	406	9	0	0	0	0	8	8	8	8
4871	406	10	0	0	0	0	8	8	8	8
4872	406	11	0	0	0	0	8	8	8	8
4873	407	0	8	10	15	3	6	\N	2	\N
4874	407	1	7	10	14	2	6	\N	\N	\N
4875	407	2	7	9	14	2	6	\N	\N	\N
4876	407	3	12	7	13	2	\N	\N	\N	\N
4877	407	4	10	6	12	1	\N	\N	\N	\N
4878	407	5	8	5	12	1	\N	\N	\N	\N
4879	407	6	6	4	11	1	\N	\N	\N	\N
4880	407	7	5	0	10	0	\N	\N	\N	10
4881	407	8	0	0	0	0	8	8	8	8
4882	407	9	0	0	0	0	8	8	8	8
4883	407	10	0	0	0	0	8	8	8	8
4884	407	11	0	0	0	0	8	8	8	8
4885	408	0	6	12	16	4	6	\N	2	\N
4886	408	1	6	11	15	4	6	\N	2	\N
4887	408	2	5	11	15	3	6	\N	\N	\N
4888	408	3	5	9	14	3	6	\N	\N	\N
4889	408	4	4	8	14	2	6	\N	\N	\N
4890	408	5	8	7	13	2	\N	\N	\N	\N
4891	408	6	7	5	12	1	\N	\N	\N	\N
4892	408	7	6	4	11	1	\N	\N	\N	\N
4893	408	8	5	0	10	0	\N	\N	\N	10
4894	408	9	0	0	0	0	8	8	8	8
4895	408	10	0	0	0	0	8	8	8	8
4896	408	11	0	0	0	0	8	8	8	8
4897	409	0	7	10	14	3	6	40	\N	\N
4898	409	1	7	9	14	2	6	\N	\N	\N
4899	409	2	6	9	14	2	6	\N	\N	\N
4900	409	3	10	7	13	2	\N	15	\N	\N
4901	409	4	8	6	12	2	\N	15	\N	\N
4902	409	5	7	5	12	1	\N	15	\N	\N
4903	409	6	6	4	11	1	\N	\N	\N	\N
4904	409	7	5	0	10	0	\N	\N	\N	10
4905	409	8	0	0	0	0	8	8	8	8
4906	409	9	0	0	0	0	8	8	8	8
4907	409	10	0	0	0	0	8	8	8	8
4908	409	11	0	0	0	0	8	8	8	8
4909	410	0	6	12	17	3	6	40	2	\N
4910	410	1	6	11	16	3	6	40	2	\N
4911	410	2	5	10	15	3	6	40	\N	\N
4912	410	3	5	9	14	2	6	\N	\N	\N
4913	410	4	9	9	14	2	\N	\N	\N	\N
4914	410	5	8	7	13	2	\N	\N	\N	\N
4915	410	6	7	5	12	1	\N	\N	\N	\N
4916	410	7	6	4	11	1	\N	\N	\N	\N
4917	410	8	5	0	10	0	\N	\N	\N	10
4918	410	9	0	0	0	0	8	8	8	8
4919	410	10	0	0	0	0	8	8	8	8
4920	410	11	0	0	0	0	8	8	8	8
4921	411	0	7	10	16	3	6	\N	2	3
4922	411	1	6	9	15	3	6	\N	\N	3
4923	411	2	5	8	14	2	6	\N	\N	3
4924	411	3	4	7	14	1	6	\N	\N	\N
4925	411	4	6	6	12	1	\N	\N	\N	\N
4926	411	5	4	9	11	3	6	\N	\N	4
4927	411	6	5	0	10	0	\N	\N	\N	10
4928	411	7	0	0	0	0	8	8	8	8
4929	411	8	0	0	0	0	8	8	8	8
4930	411	9	0	0	0	0	8	8	8	8
4931	411	10	0	0	0	0	8	8	8	8
4932	411	11	0	0	0	0	8	8	8	8
4933	412	0	5	11	16	4	6	\N	2	3
4934	412	1	5	10	16	3	6	\N	2	3
4935	412	2	4	9	15	3	6	\N	37	3
4936	412	3	8	8	14	2	\N	\N	37	3
4937	412	4	7	8	14	2	\N	\N	\N	3
4938	412	5	7	7	13	1	\N	\N	\N	\N
4939	412	6	6	9	12	3	\N	\N	\N	4
4940	412	7	5	0	11	0	\N	\N	\N	10
4941	412	8	0	0	0	0	8	8	8	8
4942	412	9	0	0	0	0	8	8	8	8
4943	412	10	0	0	0	0	8	8	8	8
4944	412	11	0	0	0	0	8	8	8	8
4945	413	0	7	8	16	1	5	\N	\N	\N
4946	413	1	6	8	15	1	5	\N	\N	\N
4947	413	2	5	8	14	1	5	\N	\N	\N
4948	413	3	4	7	13	1	5	\N	\N	\N
4949	413	4	7	5	12	1	\N	\N	\N	\N
4950	413	5	6	0	10	0	\N	\N	\N	10
4951	413	6	0	0	0	0	8	8	8	8
4952	413	7	0	0	0	0	8	8	8	8
4953	413	8	0	0	0	0	8	8	8	8
4954	413	9	0	0	0	0	8	8	8	8
4955	413	10	0	0	0	0	8	8	8	8
4956	413	11	0	0	0	0	8	8	8	8
4957	414	0	5	10	16	2	5	\N	2	\N
4958	414	1	4	8	15	1	5	\N	37	\N
4959	414	2	8	7	14	1	\N	\N	37	\N
4960	414	3	7	6	13	1	\N	\N	\N	\N
4961	414	4	7	5	12	1	\N	\N	\N	\N
4962	414	5	6	4	12	1	\N	\N	\N	\N
4963	414	6	5	0	11	0	\N	\N	\N	10
4964	414	7	0	0	0	0	8	8	8	8
4965	414	8	0	0	0	0	8	8	8	8
4966	414	9	0	0	0	0	8	8	8	8
4967	414	10	0	0	0	0	8	8	8	8
4968	414	11	0	0	0	0	8	8	8	8
4969	415	0	13	6	8	2	\N	\N	\N	\N
4970	415	1	12	5	7	2	\N	\N	\N	\N
4971	415	2	11	4	5	2	\N	\N	\N	\N
4972	415	3	10	4	0	0	\N	\N	\N	10
4973	415	4	0	0	0	0	8	8	8	8
4974	415	5	0	0	0	0	8	8	8	8
4975	415	6	0	0	0	0	8	8	8	8
4976	415	7	0	0	0	0	8	8	8	8
4977	415	8	0	0	0	0	8	8	8	8
4978	415	9	0	0	0	0	8	8	8	8
4979	415	10	0	0	0	0	8	8	8	8
4980	415	11	0	0	0	0	8	8	8	8
4981	416	0	14	6	8	2	\N	\N	\N	\N
4982	416	1	13	6	7	2	\N	\N	\N	\N
4983	416	2	12	5	6	2	\N	\N	\N	\N
4984	416	3	11	4	5	2	\N	\N	\N	\N
4985	416	4	10	4	0	0	\N	\N	\N	10
4986	416	5	0	0	0	0	8	8	8	8
4987	416	6	0	0	0	0	8	8	8	8
4988	416	7	0	0	0	0	8	8	8	8
4989	416	8	0	0	0	0	8	8	8	8
4990	416	9	0	0	0	0	8	8	8	8
4991	416	10	0	0	0	0	8	8	8	8
4992	416	11	0	0	0	0	8	8	8	8
4993	417	0	8	8	14	2	\N	\N	\N	\N
4994	417	1	7	7	14	2	\N	\N	\N	\N
4995	417	2	6	6	13	2	\N	\N	\N	\N
4996	417	3	5	5	12	2	\N	\N	\N	\N
4997	417	4	4	0	11	0	\N	\N	\N	10
4998	417	5	0	0	0	0	8	8	8	8
4999	417	6	0	0	0	0	8	8	8	8
5000	417	7	0	0	0	0	8	8	8	8
5001	417	8	0	0	0	0	8	8	8	8
5002	417	9	0	0	0	0	8	8	8	8
5003	417	10	0	0	0	0	8	8	8	8
5004	417	11	0	0	0	0	8	8	8	8
5005	418	0	14	8	7	2	\N	\N	\N	\N
5006	418	1	14	6	6	1	\N	\N	\N	\N
5007	418	2	13	5	5	1	\N	\N	\N	\N
5008	418	3	12	4	0	0	\N	\N	\N	10
5009	418	4	0	0	0	0	\N	8	8	8
5010	418	5	0	0	0	0	8	8	8	8
5011	418	6	0	0	0	0	8	8	8	8
5012	418	7	0	0	0	0	8	8	8	8
5013	418	8	0	0	0	0	8	8	8	8
5014	418	9	0	0	0	0	8	8	8	8
5015	418	10	0	0	0	0	8	8	8	8
5016	418	11	0	0	0	0	8	8	8	8
5017	419	0	8	7	15	2	\N	\N	\N	\N
5018	419	1	6	6	14	1	\N	\N	\N	\N
5019	419	2	5	5	13	1	\N	\N	\N	\N
5020	419	3	4	5	12	1	\N	\N	\N	\N
5021	419	4	4	0	11	0	\N	\N	\N	10
5022	419	5	0	0	0	0	8	8	8	8
5023	419	6	0	0	0	0	8	8	8	8
5024	419	7	0	0	0	0	8	8	8	8
5025	419	8	0	0	0	0	8	8	8	8
5026	419	9	0	0	0	0	8	8	8	8
5027	419	10	0	0	0	0	8	8	8	8
5028	419	11	0	0	0	0	8	8	8	8
5029	420	0	8	8	15	2	\N	\N	\N	\N
5030	420	1	7	7	14	2	\N	\N	\N	\N
5031	420	2	6	6	13	1	\N	\N	\N	\N
5032	420	3	5	5	12	1	\N	\N	\N	\N
5033	420	4	4	0	11	0	\N	\N	\N	10
5034	420	5	0	0	0	0	8	8	8	8
5035	420	6	0	0	0	0	8	8	8	8
5036	420	7	0	0	0	0	8	8	8	8
5037	420	8	0	0	0	0	8	8	8	8
5038	420	9	0	0	0	0	8	8	8	8
5039	420	10	0	0	0	0	8	8	8	8
5040	420	11	0	0	0	0	8	8	8	8
5041	421	0	8	7	15	2	\N	\N	29	\N
5042	421	1	6	6	14	1	\N	\N	\N	\N
5043	421	2	4	5	13	1	\N	\N	\N	\N
5044	421	3	0	0	0	0	8	8	8	8
5045	421	4	0	0	0	0	8	8	8	8
5046	421	5	0	0	0	0	8	8	8	8
5047	421	6	0	0	0	0	8	8	8	8
5048	421	7	0	0	0	0	8	8	8	8
5049	421	8	0	0	0	0	8	8	8	8
5050	421	9	0	0	0	0	8	8	8	8
5051	421	10	0	0	0	0	8	8	8	8
5052	421	11	0	0	0	0	8	8	8	8
5053	422	0	8	7	15	2	\N	\N	29	\N
5054	422	1	6	6	14	2	\N	\N	29	\N
5055	422	2	5	5	13	1	\N	\N	\N	\N
5056	422	3	4	5	12	1	\N	\N	\N	\N
5057	422	4	4	5	11	1	\N	\N	\N	\N
5058	422	5	0	0	0	0	8	8	8	8
5059	422	6	0	0	0	0	8	8	8	8
5060	422	7	0	0	0	0	8	8	8	8
5061	422	8	0	0	0	0	8	8	8	8
5062	422	9	0	0	0	0	8	8	8	8
5063	422	10	0	0	0	0	8	8	8	8
5064	422	11	0	0	0	0	8	8	8	8
5065	423	0	8	7	15	2	\N	\N	29	\N
5066	423	1	7	7	15	2	\N	\N	29	\N
5067	423	2	6	6	14	2	\N	\N	29	\N
5068	423	3	5	5	13	1	\N	\N	\N	\N
5069	423	4	4	5	12	1	\N	\N	\N	\N
5070	423	5	4	5	11	1	\N	\N	\N	\N
5071	423	6	4	5	10	1	\N	\N	\N	\N
5072	423	7	0	0	0	0	8	8	8	8
5073	423	8	0	0	0	0	8	8	8	8
5074	423	9	0	0	0	0	8	8	8	8
5075	423	10	0	0	0	0	8	8	8	8
5076	423	11	0	0	0	0	8	8	8	8
5077	424	0	6	7	15	2	\N	39	\N	\N
5078	424	1	4	6	14	2	\N	\N	\N	\N
5079	424	2	0	0	0	0	8	8	8	8
5080	424	3	0	0	0	0	8	8	8	8
5081	424	4	0	0	0	0	8	8	8	8
5082	424	5	0	0	0	0	8	8	8	8
5083	424	6	0	0	0	0	8	8	8	8
5084	424	7	0	0	0	0	8	8	8	8
5085	424	8	0	0	0	0	8	8	8	8
5086	424	9	0	0	0	0	8	8	8	8
5087	424	10	0	0	0	0	8	8	8	8
5088	424	11	0	0	0	0	8	8	8	8
5089	425	0	6	7	15	2	\N	39	\N	\N
5090	425	1	6	6	14	2	\N	39	\N	\N
5091	425	2	5	5	12	1	\N	\N	\N	\N
5092	425	3	0	0	0	0	8	8	8	8
5093	425	4	0	0	0	0	8	8	8	8
5094	425	5	0	0	0	0	8	8	8	8
5095	425	6	0	0	0	0	8	8	8	8
5096	425	7	0	0	0	0	8	8	8	8
5097	425	8	0	0	0	0	8	8	8	8
5098	425	9	0	0	0	0	8	8	8	8
5099	425	10	0	0	0	0	8	8	8	8
5100	425	11	0	0	0	0	8	8	8	8
5101	426	0	8	7	15	2	\N	39	\N	\N
5102	426	1	7	7	15	2	\N	39	\N	\N
5103	426	2	6	6	14	2	\N	\N	\N	\N
5104	426	3	5	5	13	1	\N	\N	\N	\N
5105	426	4	0	0	0	0	8	8	8	8
5106	426	5	0	0	0	0	8	8	8	8
5107	426	6	0	0	0	0	8	8	8	8
5108	426	7	0	0	0	0	8	8	8	8
5109	426	8	0	0	0	0	8	8	8	8
5110	426	9	0	0	0	0	8	8	8	8
5111	426	10	0	0	0	0	8	8	8	8
5112	426	11	0	0	0	0	8	8	8	8
5113	427	0	8	8	15	2	\N	12	\N	\N
5114	427	1	8	8	14	2	\N	\N	\N	\N
5115	427	2	7	7	13	1	\N	\N	\N	\N
5116	427	3	6	0	11	0	\N	\N	\N	10
5117	427	4	4	0	10	0	\N	\N	\N	10
5118	427	5	0	0	0	0	8	8	8	8
5119	427	6	0	0	0	0	8	8	8	8
5120	427	7	0	0	0	0	8	8	8	8
5121	427	8	0	0	0	0	8	8	8	8
5122	427	9	0	0	0	0	8	8	8	8
5123	427	10	0	0	0	0	8	8	8	8
5124	427	11	0	0	0	0	8	8	8	8
5125	428	0	8	8	15	2	\N	12	\N	\N
5126	428	1	8	8	14	2	\N	12	\N	\N
5127	428	2	8	7	13	2	\N	\N	\N	\N
5128	428	3	7	6	12	1	\N	\N	\N	\N
5129	428	4	6	0	11	0	\N	\N	\N	10
5130	428	5	4	0	10	0	\N	\N	\N	10
5131	428	6	0	0	0	0	8	8	8	8
5132	428	7	0	0	0	0	8	8	8	8
5133	428	8	0	0	0	0	8	8	8	8
5134	428	9	0	0	0	0	8	8	8	8
5135	428	10	0	0	0	0	8	8	8	8
5136	428	11	0	0	0	0	8	8	8	8
5137	429	0	10	8	15	2	\N	12	\N	\N
5138	429	1	9	8	15	2	\N	12	\N	\N
5139	429	2	8	7	14	2	\N	12	\N	\N
5140	429	3	7	6	13	2	\N	\N	\N	\N
5141	429	4	6	5	12	1	\N	\N	\N	\N
5142	429	5	5	0	11	0	\N	\N	\N	\N
5143	429	6	4	0	10	0	\N	\N	\N	10
5144	429	7	0	0	0	0	8	8	8	8
5145	429	8	0	0	0	0	8	8	8	8
5146	429	9	0	0	0	0	8	8	8	8
5147	429	10	0	0	0	0	8	8	8	8
5148	429	11	0	0	0	0	8	8	8	8
5149	430	0	8	7	15	2	13	\N	17	\N
5150	430	1	7	7	14	2	13	\N	17	\N
5151	430	2	6	6	13	1	13	\N	\N	\N
5152	430	3	5	5	12	1	\N	\N	\N	\N
5153	430	4	4	5	11	1	\N	\N	\N	\N
5154	430	5	0	0	0	0	8	8	8	8
5155	430	6	0	0	0	0	8	8	8	8
5156	430	7	0	0	0	0	8	8	8	8
5157	430	8	0	0	0	0	8	8	8	8
5158	430	9	0	0	0	0	8	8	8	8
5159	430	10	0	0	0	0	8	8	8	8
5160	430	11	0	0	0	0	8	8	8	8
5161	431	0	8	8	15	2	13	\N	17	\N
5162	431	1	8	7	14	2	13	\N	17	\N
5163	431	2	7	7	14	1	13	\N	17	\N
5164	431	3	6	6	13	1	13	\N	\N	\N
5165	431	4	5	5	12	1	\N	\N	\N	\N
5166	431	5	4	5	11	1	\N	\N	\N	\N
5167	431	6	0	0	0	0	8	8	8	8
5168	431	7	0	0	0	0	8	8	8	8
5169	431	8	0	0	0	0	8	8	8	8
5170	431	9	0	0	0	0	8	8	8	8
5171	431	10	0	0	0	0	8	8	8	8
5172	431	11	0	0	0	0	8	8	8	8
5173	432	0	8	8	16	2	13	\N	17	\N
5174	432	1	8	8	15	2	13	\N	17	\N
5175	432	2	7	7	14	2	13	\N	17	\N
5176	432	3	7	7	14	1	13	\N	\N	\N
5177	432	4	6	6	13	1	\N	\N	\N	\N
5178	432	5	5	5	12	1	\N	\N	\N	\N
5179	432	6	4	5	11	1	\N	\N	\N	\N
5180	432	7	0	0	0	0	8	8	8	8
5181	432	8	0	0	0	0	8	8	8	8
5182	432	9	0	0	0	0	8	8	8	8
5183	432	10	0	0	0	0	8	8	8	8
5184	432	11	0	0	0	0	8	8	8	8
5185	433	0	6	7	16	2	\N	\N	37	\N
5186	433	1	5	7	16	2	\N	\N	\N	\N
5187	433	2	5	6	15	2	\N	\N	\N	\N
5188	433	3	0	0	0	0	8	8	8	8
5189	433	4	0	0	0	0	8	8	8	8
5190	433	5	0	0	0	0	8	8	8	8
5191	433	6	0	0	0	0	8	8	8	8
5192	433	7	0	0	0	0	8	8	8	8
5193	433	8	0	0	0	0	8	8	8	8
5194	433	9	0	0	0	0	8	8	8	8
5195	433	10	0	0	0	0	8	8	8	8
5196	433	11	0	0	0	0	8	8	8	8
5197	434	0	6	8	16	2	\N	\N	37	\N
5198	434	1	6	7	16	2	\N	\N	37	\N
5199	434	2	5	7	15	2	\N	\N	\N	\N
5200	434	3	5	6	15	1	\N	\N	\N	\N
5201	434	4	0	0	0	0	8	8	8	8
5202	434	5	0	0	0	0	8	8	8	8
5203	434	6	0	0	0	0	8	8	8	8
5204	434	7	0	0	0	0	8	8	8	8
5205	434	8	0	0	0	0	8	8	8	8
5206	434	9	0	0	0	0	8	8	8	8
5207	434	10	0	0	0	0	8	8	8	8
5208	434	11	0	0	0	0	8	8	8	8
5209	435	0	6	8	16	2	\N	\N	37	\N
5210	435	1	6	7	16	2	\N	\N	37	\N
5211	435	2	5	7	15	2	\N	\N	37	\N
5212	435	3	4	6	15	2	\N	\N	\N	\N
5213	435	4	4	6	15	1	\N	\N	\N	\N
5214	435	5	0	0	0	0	8	8	8	8
5215	435	6	0	0	0	0	8	8	8	8
5216	435	7	0	0	0	0	8	8	8	8
5217	435	8	0	0	0	0	8	8	8	8
5218	435	9	0	0	0	0	8	8	8	8
5219	435	10	0	0	0	0	8	8	8	8
5220	435	11	0	0	0	0	8	8	8	8
5221	436	0	8	7	15	2	31	\N	\N	\N
5222	436	1	6	6	14	1	\N	\N	\N	\N
5223	436	2	5	0	13	0	\N	\N	\N	10
5224	436	3	0	0	0	0	8	8	8	8
5225	436	4	0	0	0	0	8	8	8	8
5226	436	5	0	0	0	0	8	8	8	8
5227	436	6	0	0	0	0	8	8	8	8
5228	436	7	0	0	0	0	8	8	8	8
5229	436	8	0	0	0	0	8	8	8	8
5230	436	9	0	0	0	0	8	8	8	8
5231	436	10	0	0	0	0	8	8	8	8
5232	436	11	0	0	0	0	8	8	8	8
5233	437	0	8	7	15	2	31	\N	\N	\N
5234	437	1	7	6	14	2	31	\N	\N	\N
5235	437	2	6	5	14	1	\N	\N	\N	\N
5236	437	3	5	0	13	0	\N	\N	\N	10
5237	437	4	0	0	0	0	8	8	8	8
5238	437	5	0	0	0	0	8	8	8	8
5239	437	6	0	0	0	0	8	8	8	8
5240	437	7	0	0	0	0	8	8	8	8
5241	437	8	0	0	0	0	8	8	8	8
5242	437	9	0	0	0	0	8	8	8	8
5243	437	10	0	0	0	0	8	8	8	8
5244	437	11	0	0	0	0	8	8	8	8
5245	438	0	8	8	15	2	31	\N	\N	\N
5246	438	1	8	6	14	2	31	\N	\N	\N
5247	438	2	7	6	14	2	\N	\N	\N	\N
5248	438	3	6	5	13	1	\N	\N	\N	\N
5249	438	4	5	0	13	0	\N	\N	\N	10
5250	438	5	0	0	0	0	8	8	8	8
5251	438	6	0	0	0	0	8	8	8	8
5252	438	7	0	0	0	0	8	8	8	8
5253	438	8	0	0	0	0	8	8	8	8
5254	438	9	0	0	0	0	8	8	8	8
5255	438	10	0	0	0	0	8	8	8	8
5256	438	11	0	0	0	0	8	8	8	8
5257	439	0	6	7	15	1	35	39	\N	\N
5258	439	1	6	6	15	1	35	39	\N	\N
5259	439	2	5	0	13	0	35	\N	\N	10
5260	439	3	4	0	11	0	\N	\N	\N	10
5261	439	4	0	0	0	0	8	8	8	8
5262	439	5	0	0	0	0	8	8	8	8
5263	439	6	0	0	0	0	8	8	8	8
5264	439	7	0	0	0	0	8	8	8	8
5265	439	8	0	0	0	0	8	8	8	8
5266	439	9	0	0	0	0	8	8	8	8
5267	439	10	0	0	0	0	8	8	8	8
5268	439	11	0	0	0	0	8	8	8	8
5269	440	0	6	8	15	1	35	39	\N	\N
5270	440	1	6	7	15	1	35	39	\N	\N
5271	440	2	5	6	14	1	35	39	\N	\N
5272	440	3	5	0	13	0	35	\N	\N	10
5273	440	4	4	0	11	0	\N	\N	\N	10
5274	440	5	0	0	0	0	8	8	8	8
5275	440	6	0	0	0	0	8	8	8	8
5276	440	7	0	0	0	0	8	8	8	8
5277	440	8	0	0	0	0	8	8	8	8
5278	440	9	0	0	0	0	8	8	8	8
5279	440	10	0	0	0	0	8	8	8	8
5280	440	11	0	0	0	0	8	8	8	8
5281	441	0	6	8	15	1	35	39	\N	\N
5282	441	1	6	7	15	1	35	39	\N	\N
5283	441	2	5	6	14	1	35	39	\N	\N
5284	441	3	5	5	13	1	35	39	\N	\N
5285	441	4	4	0	12	0	35	\N	\N	10
5286	441	5	4	0	11	0	\N	\N	\N	10
5287	441	6	0	0	0	0	8	8	8	8
5288	441	7	0	0	0	0	8	8	8	8
5289	441	8	0	0	0	0	8	8	8	8
5290	441	9	0	0	0	0	8	8	8	8
5291	441	10	0	0	0	0	8	8	8	8
5292	441	11	0	0	0	0	8	8	8	8
5293	442	0	8	8	14	2	\N	36	11	\N
5294	442	1	8	8	14	2	\N	\N	\N	\N
5295	442	2	7	7	13	1	\N	\N	\N	\N
5296	442	3	6	6	12	1	\N	\N	\N	\N
5297	442	4	5	5	11	1	\N	\N	\N	\N
5298	442	5	4	0	10	0	\N	\N	\N	\N
5299	442	6	0	0	0	0	8	8	8	8
5300	442	7	0	0	0	0	8	8	8	8
5301	442	8	0	0	0	0	8	8	8	8
5302	442	9	0	0	0	0	8	8	8	8
5303	442	10	0	0	0	0	8	8	8	8
5304	442	11	0	0	0	0	8	8	8	8
5305	443	0	10	8	15	2	\N	36	11	\N
5306	443	1	9	8	14	2	\N	36	11	\N
5307	443	2	8	8	14	1	\N	\N	\N	\N
5308	443	3	7	7	13	1	\N	\N	\N	\N
5309	443	4	6	6	12	1	\N	\N	\N	\N
5310	443	5	5	5	11	1	\N	\N	\N	\N
5311	443	6	4	0	10	0	\N	\N	\N	10
5312	443	7	0	0	0	0	8	8	8	8
5313	443	8	0	0	0	0	8	8	8	8
5314	443	9	0	0	0	0	8	8	8	8
5315	443	10	0	0	0	0	8	8	8	8
5316	443	11	0	0	0	0	8	8	8	8
5317	444	0	10	9	15	2	\N	36	11	\N
5318	444	1	9	8	14	2	\N	36	11	\N
5319	444	2	8	8	14	2	\N	36	\N	\N
5320	444	3	8	7	13	1	\N	\N	\N	\N
5321	444	4	7	6	12	1	\N	\N	\N	\N
5322	444	5	6	6	11	1	\N	\N	\N	\N
5323	444	6	5	5	11	1	\N	\N	\N	\N
5324	444	7	4	0	10	0	\N	\N	\N	10
5325	444	8	0	0	0	0	8	8	8	8
5326	444	9	0	0	0	0	8	8	8	8
5327	444	10	0	0	0	0	8	8	8	8
5328	444	11	0	0	0	0	8	8	8	8
5329	445	0	10	8	15	2	27	\N	\N	3
5330	445	1	9	8	14	2	27	\N	\N	3
5331	445	2	8	7	13	1	27	\N	\N	\N
5332	445	3	7	6	13	1	\N	\N	\N	\N
5333	445	4	6	0	12	0	\N	\N	\N	10
5334	445	5	0	0	0	0	8	8	8	8
5335	445	6	0	0	0	0	8	8	8	8
5336	445	7	0	0	0	0	8	8	8	8
5337	445	8	0	0	0	0	8	8	8	8
5338	445	9	0	0	0	0	8	8	8	8
5339	445	10	0	0	0	0	8	8	8	8
5340	445	11	0	0	0	0	8	8	8	8
5341	446	0	10	9	13	2	27	\N	11	3
5342	446	1	9	9	16	2	27	\N	\N	3
5343	446	2	8	7	15	2	27	\N	\N	3
5344	446	3	8	7	14	1	\N	\N	\N	\N
5345	446	4	7	6	14	1	\N	\N	\N	\N
5346	446	5	6	0	13	0	\N	\N	\N	10
5347	446	6	0	0	0	0	8	8	8	8
5348	446	7	0	0	0	0	8	8	8	8
5349	446	8	0	0	0	0	8	8	8	8
5350	446	9	0	0	0	0	8	8	8	8
5351	446	10	0	0	0	0	8	8	8	8
5352	446	11	0	0	0	0	8	8	8	8
5353	447	0	10	9	13	3	27	\N	11	3
5354	447	1	10	8	16	2	27	\N	\N	3
5355	447	2	9	7	15	2	27	\N	\N	3
5356	447	3	8	7	15	1	27	\N	\N	\N
5357	447	4	7	6	14	1	\N	\N	\N	\N
5358	447	5	6	0	13	0	\N	\N	\N	10
5359	447	6	0	0	0	0	8	8	8	8
5360	447	7	0	0	0	0	8	8	8	8
5361	447	8	0	0	0	0	8	8	8	8
5362	447	9	0	0	0	0	8	8	8	8
5363	447	10	0	0	0	0	8	8	8	8
5364	447	11	0	0	0	0	8	8	8	8
5365	448	0	8	10	15	3	\N	36	25	3
5366	448	1	8	9	15	3	\N	36	\N	3
5367	448	2	7	9	14	2	\N	\N	\N	3
5368	448	3	7	8	14	2	\N	\N	\N	3
5369	448	4	6	7	13	2	\N	\N	\N	3
5370	448	5	5	6	13	2	\N	\N	\N	3
5371	448	6	4	5	12	1	\N	\N	\N	\N
5372	448	7	4	0	11	0	\N	\N	\N	10
5373	448	8	0	0	0	0	8	8	8	8
5374	448	9	0	0	0	0	8	8	8	8
5375	448	10	0	0	0	0	8	8	8	8
5376	448	11	0	0	0	0	8	8	8	8
5377	449	0	8	11	16	3	\N	36	25	3
5378	449	1	8	10	15	3	\N	36	25	3
5379	449	2	7	9	14	3	\N	\N	\N	3
5380	449	3	7	8	14	2	\N	\N	\N	3
5381	449	4	6	7	13	2	\N	\N	\N	3
5382	449	5	5	6	13	2	\N	\N	\N	3
5383	449	6	4	5	12	1	\N	\N	\N	3
5384	449	7	4	4	11	1	\N	\N	\N	\N
5385	449	8	4	0	10	0	\N	\N	\N	10
5386	449	9	0	0	0	0	8	8	8	8
5387	449	10	0	0	0	0	8	8	8	8
5388	449	11	0	0	0	0	8	8	8	8
5389	450	0	8	11	16	3	\N	36	25	3
5390	450	1	8	10	15	3	\N	36	25	3
5391	450	2	8	9	14	3	\N	36	25	3
5392	450	3	7	8	14	3	\N	\N	\N	3
5393	450	4	6	7	13	2	\N	\N	\N	3
5394	450	5	5	6	13	2	\N	\N	\N	3
5395	450	6	4	6	12	2	\N	\N	\N	3
5396	450	7	4	5	11	1	\N	\N	\N	\N
5397	450	8	4	0	10	0	\N	\N	\N	10
5398	450	9	0	0	0	0	8	8	8	8
5399	450	10	0	0	0	0	8	8	8	8
5400	450	11	0	0	0	0	8	8	8	8
5401	451	0	8	10	15	2	\N	40	23	3
5402	451	1	7	9	15	2	\N	40	23	3
5403	451	2	7	8	14	2	\N	40	23	3
5404	451	3	6	7	13	2	\N	\N	23	3
5405	451	4	6	6	13	1	\N	\N	23	3
5406	451	5	5	5	12	1	\N	\N	\N	\N
5407	451	6	4	0	10	0	\N	\N	\N	10
5408	451	7	0	0	0	0	8	8	8	8
5409	451	8	0	0	0	0	8	8	8	8
5410	451	9	0	0	0	0	8	8	8	8
5411	451	10	0	0	0	0	8	8	8	8
5412	451	11	0	0	0	0	8	8	8	8
5413	452	0	8	11	15	3	\N	40	23	3
5414	452	1	8	10	15	2	\N	40	23	3
5415	452	2	7	9	14	2	\N	40	23	3
5416	452	3	7	8	13	2	\N	40	23	3
5417	452	4	6	7	13	2	\N	\N	23	3
5418	452	5	6	6	12	1	\N	\N	23	3
5419	452	6	5	5	11	1	\N	\N	\N	\N
5420	452	7	4	0	10	0	\N	\N	\N	10
5421	452	8	0	0	0	0	8	8	8	8
5422	452	9	0	0	0	0	8	8	8	8
5423	452	10	0	0	0	0	8	8	8	8
5424	452	11	0	0	0	0	8	8	8	8
5425	453	0	8	12	16	3	\N	40	23	3
5426	453	1	8	11	15	3	\N	40	23	3
5427	453	2	8	10	15	2	\N	40	23	3
5428	453	3	7	9	14	2	\N	40	23	3
5429	453	4	6	8	14	2	\N	40	23	3
5430	453	5	5	7	13	2	\N	\N	23	\N
5431	453	6	4	6	12	1	\N	\N	\N	\N
5432	453	7	4	0	11	0	\N	\N	\N	10
5433	453	8	0	0	0	0	8	8	8	8
5434	453	9	0	0	0	0	8	8	8	8
5435	453	10	0	0	0	0	8	8	8	8
5436	453	11	0	0	0	0	8	8	8	8
5437	454	0	8	8	15	1	\N	\N	\N	21
5438	454	1	7	8	14	1	\N	\N	\N	21
5439	454	2	6	7	13	1	\N	\N	\N	\N
5440	454	3	5	6	12	1	\N	\N	\N	\N
5441	454	4	4	0	10	0	\N	\N	\N	10
5442	454	5	0	0	0	0	8	8	8	8
5443	454	6	0	0	0	0	8	8	8	8
5444	454	7	0	0	0	0	8	8	8	8
5445	454	8	0	0	0	0	8	8	8	8
5446	454	9	0	0	0	0	8	8	8	8
5447	454	10	0	0	0	0	8	8	8	8
5448	454	11	0	0	0	0	8	8	8	8
5449	455	0	8	8	15	1	\N	\N	\N	21
5450	455	1	8	8	14	1	\N	\N	\N	21
5451	455	2	7	7	13	1	\N	\N	\N	21
5452	455	3	6	6	12	1	\N	\N	\N	\N
5453	455	4	5	5	11	1	\N	\N	\N	\N
5454	455	5	4	0	10	0	\N	\N	\N	10
5455	455	6	0	0	0	0	8	8	8	8
5456	455	7	0	0	0	0	8	8	8	8
5457	455	8	0	0	0	0	8	8	8	8
5458	455	9	0	0	0	0	8	8	8	8
5459	455	10	0	0	0	0	8	8	8	8
5460	455	11	0	0	0	0	8	8	8	8
5461	456	0	8	9	15	2	\N	\N	\N	21
5462	456	1	8	8	14	1	\N	\N	\N	21
5463	456	2	7	7	13	1	\N	\N	\N	21
5464	456	3	6	6	12	1	\N	\N	\N	21
5465	456	4	5	5	11	1	\N	\N	\N	\N
5466	456	5	4	0	10	0	\N	\N	\N	10
5467	456	6	0	0	0	0	8	8	8	8
5468	456	7	0	0	0	0	8	8	8	8
5469	456	8	0	0	0	0	8	8	8	8
5470	456	9	0	0	0	0	8	8	8	8
5471	456	10	0	0	0	0	8	8	8	8
5472	456	11	0	0	0	0	8	8	8	8
5473	457	0	8	8	15	1	\N	40	29	3
5474	457	1	8	8	14	2	\N	\N	\N	3
5475	457	2	8	7	13	2	\N	\N	\N	3
5476	457	3	7	6	13	2	\N	\N	\N	3
5477	457	4	6	6	12	1	\N	\N	\N	3
5478	457	5	5	5	11	1	\N	\N	\N	\N
5479	457	6	4	5	10	1	\N	\N	\N	\N
5480	457	7	0	0	0	0	8	8	8	8
5481	457	8	0	0	0	0	8	8	8	8
5482	457	9	0	0	0	0	8	8	8	8
5483	457	10	0	0	0	0	8	8	8	8
5484	457	11	0	0	0	0	8	8	8	8
5485	458	0	8	8	15	1	\N	40	29	3
5486	458	1	8	8	14	1	\N	40	29	3
5487	458	2	8	8	13	3	\N	\N	\N	3
5488	458	3	7	7	13	2	\N	\N	\N	3
5489	458	4	6	6	12	2	\N	\N	\N	3
5490	458	5	5	5	13	1	\N	\N	32	\N
5491	458	6	4	5	10	1	\N	\N	\N	\N
5492	458	7	0	0	0	0	8	8	8	8
5493	458	8	0	0	0	0	8	8	8	8
5494	458	9	0	0	0	0	8	8	8	8
5495	458	10	0	0	0	0	8	8	8	8
5496	458	11	0	0	0	0	8	8	8	8
5497	459	0	8	9	16	1	\N	40	29	3
5498	459	1	8	9	15	1	\N	40	29	3
5499	459	2	8	8	14	1	\N	40	29	3
5500	459	3	7	8	13	3	\N	\N	\N	3
5501	459	4	7	7	13	2	\N	\N	\N	3
5502	459	5	6	6	14	1	\N	\N	32	\N
5503	459	6	5	5	12	1	\N	\N	32	\N
5504	459	7	4	5	10	1	\N	\N	\N	\N
5505	459	8	0	0	0	0	8	8	8	8
5506	459	9	0	0	0	0	8	8	8	8
5507	459	10	0	0	0	0	8	8	8	8
5508	459	11	0	0	0	0	8	8	8	8
5509	460	0	4	7	16	1	\N	39	\N	\N
5510	460	1	4	7	16	1	\N	39	\N	\N
5511	460	2	4	7	15	1	\N	\N	\N	\N
5512	460	3	4	7	15	1	\N	38	\N	\N
5513	460	4	4	7	14	1	\N	38	\N	\N
5514	460	5	0	0	0	0	8	8	8	8
5515	460	6	0	0	0	0	8	8	8	8
5516	460	7	0	0	0	0	8	8	8	8
5517	460	8	0	0	0	0	8	8	8	8
5518	460	9	0	0	0	0	8	8	8	8
5519	460	10	0	0	0	0	8	8	8	8
5520	460	11	0	0	0	0	8	8	8	8
5521	461	0	4	8	17	2	\N	39	\N	\N
5522	461	1	4	8	16	1	\N	39	\N	\N
5523	461	2	4	7	15	1	\N	39	\N	\N
5524	461	3	4	7	15	1	\N	\N	\N	\N
5525	461	4	4	7	14	1	\N	38	\N	\N
5526	461	5	4	6	14	1	\N	38	\N	\N
5527	461	6	0	0	0	0	8	8	8	8
5528	461	7	0	0	0	0	8	8	8	8
5529	461	8	0	0	0	0	8	8	8	8
5530	461	9	0	0	0	0	8	8	8	8
5531	461	10	0	0	0	0	8	8	8	8
5532	461	11	0	0	0	0	8	8	8	8
5533	462	0	10	9	16	2	13	39	\N	3
5534	462	1	9	8	15	2	13	39	\N	3
5535	462	2	8	8	15	2	13	\N	\N	3
5536	462	3	7	7	14	2	\N	\N	\N	3
5537	462	4	6	6	13	1	\N	\N	\N	3
5538	462	5	5	5	12	1	\N	\N	\N	\N
5539	462	6	4	0	10	0	\N	\N	\N	10
5540	462	7	0	0	0	0	8	8	8	8
5541	462	8	0	0	0	0	8	8	8	8
5542	462	9	0	0	0	0	8	8	8	8
5543	462	10	0	0	0	0	8	8	8	8
5544	462	11	0	0	0	0	8	8	8	8
5545	463	0	10	9	16	2	13	39	\N	3
5546	463	1	9	8	15	2	13	39	\N	3
5547	463	2	8	8	15	2	13	\N	\N	3
5548	463	3	8	7	14	2	13	\N	\N	3
5549	463	4	7	7	13	2	\N	\N	\N	3
5550	463	5	6	6	12	1	\N	\N	\N	3
5551	463	6	5	5	11	1	\N	\N	\N	\N
5552	463	7	4	0	10	0	\N	\N	\N	10
5553	463	8	0	0	0	0	8	8	8	8
5554	463	9	0	0	0	0	8	8	8	8
5555	463	10	0	0	0	0	8	8	8	8
5556	463	11	0	0	0	0	8	8	8	8
5557	464	0	10	10	16	2	13	39	\N	3
5558	464	1	10	9	16	2	13	39	\N	3
5559	464	2	9	8	15	2	13	\N	\N	3
5560	464	3	8	7	15	2	13	\N	\N	3
5561	464	4	8	7	14	2	\N	\N	\N	3
5562	464	5	7	6	13	2	\N	\N	\N	3
5563	464	6	6	6	12	1	\N	\N	\N	3
5564	464	7	5	5	11	1	\N	\N	\N	\N
5565	464	8	4	0	10	1	\N	\N	\N	10
5566	464	9	0	0	0	0	8	8	8	8
5567	464	10	0	0	0	0	8	8	8	8
5568	464	11	0	0	0	0	8	8	8	8
5569	465	0	6	8	15	2	\N	36	\N	\N
5570	465	1	6	8	15	2	\N	36	\N	\N
5571	465	2	5	8	15	1	\N	\N	\N	\N
5572	465	3	5	7	14	1	\N	\N	\N	\N
5573	465	4	5	7	14	1	\N	\N	\N	\N
5574	465	5	4	6	13	1	\N	\N	\N	\N
5575	465	6	4	6	12	1	\N	\N	32	\N
5576	465	7	0	0	0	0	8	8	8	8
5577	465	8	0	0	0	0	8	8	8	8
5578	465	9	0	0	0	0	8	8	8	8
5579	465	10	0	0	0	0	8	8	8	8
5580	465	11	0	0	0	0	8	8	8	8
5581	466	0	6	9	16	2	\N	36	\N	\N
5582	466	1	6	8	15	2	\N	36	\N	\N
5583	466	2	6	8	15	2	\N	36	\N	\N
5584	466	3	5	7	14	1	\N	\N	\N	\N
5585	466	4	5	7	14	1	\N	\N	\N	\N
5586	466	5	5	6	13	1	\N	\N	\N	\N
5587	466	6	4	6	13	1	\N	\N	\N	\N
5588	466	7	4	5	12	1	\N	\N	32	\N
5589	466	8	0	0	0	0	8	8	8	8
5590	466	9	0	0	0	0	8	8	8	8
5591	466	10	0	0	0	0	8	8	8	8
5592	466	11	0	0	0	0	8	8	8	8
5593	467	0	8	10	16	2	\N	36	\N	\N
5594	467	1	7	9	16	2	\N	36	\N	\N
5595	467	2	6	8	15	2	\N	36	\N	\N
5596	467	3	6	8	15	2	\N	36	\N	\N
5597	467	4	5	7	14	1	\N	\N	\N	\N
5598	467	5	5	7	14	1	\N	\N	\N	\N
5599	467	6	4	6	13	1	\N	\N	\N	\N
5600	467	7	4	5	12	1	8	8	32	\N
5601	467	8	0	0	0	0	8	8	8	8
5602	467	9	0	0	0	0	8	8	8	8
5603	467	10	0	0	0	0	8	8	8	8
5604	467	11	0	0	0	0	8	8	8	8
5605	468	0	4	8	16	3	6	\N	37	3
5606	468	1	4	8	16	2	6	\N	37	3
5607	468	2	6	8	16	2	\N	\N	\N	3
5608	468	3	6	7	15	2	\N	\N	\N	3
5609	468	4	6	7	15	1	\N	\N	\N	3
5610	468	5	5	6	14	1	\N	\N	\N	3
5611	468	6	5	6	14	1	\N	\N	\N	\N
5612	468	7	4	0	13	0	\N	\N	\N	10
5613	468	8	0	0	0	0	8	8	8	8
5614	468	9	0	0	0	0	8	8	8	8
5615	468	10	0	0	0	0	8	8	8	8
5616	468	11	0	0	0	0	8	8	8	8
5617	469	0	4	9	16	3	6	\N	37	3
5618	469	1	4	8	16	2	6	\N	37	3
5619	469	2	6	8	16	2	\N	\N	37	3
5620	469	3	6	8	15	2	\N	\N	\N	3
5621	469	4	6	7	15	1	\N	\N	\N	3
5622	469	5	6	7	14	1	\N	\N	\N	3
5623	469	6	5	6	14	1	\N	\N	\N	3
5624	469	7	5	6	13	1	\N	\N	\N	\N
5625	469	8	4	0	12	0	\N	\N	\N	10
5626	469	9	0	0	0	0	8	8	8	8
5627	469	10	0	0	0	0	8	8	8	8
5628	469	11	0	0	0	0	8	8	8	8
5629	470	0	8	9	13	2	27	33	11	3
5630	470	1	8	8	13	2	27	\N	\N	3
5631	470	2	7	8	16	2	27	\N	\N	3
5632	470	3	7	7	15	1	27	\N	\N	3
5633	470	4	6	7	15	1	\N	\N	\N	3
5634	470	5	6	6	14	1	\N	\N	\N	3
5635	470	6	5	6	13	1	\N	\N	\N	\N
5636	470	7	5	0	12	0	\N	\N	\N	10
5637	470	8	0	0	0	0	8	8	8	8
5638	470	9	0	0	0	0	8	8	8	8
5639	470	10	0	0	0	0	8	8	8	8
5640	470	11	0	0	0	0	8	8	8	8
5641	471	0	8	10	14	3	27	33	11	3
5642	471	1	8	9	13	2	27	33	11	3
5643	471	2	8	8	13	2	27	\N	\N	3
5644	471	3	7	7	16	2	27	\N	\N	3
5645	471	4	7	7	16	1	\N	\N	\N	3
5646	471	5	6	6	15	1	\N	\N	\N	3
5647	471	6	6	6	14	1	\N	\N	\N	3
5648	471	7	5	5	13	1	\N	\N	\N	\N
5649	471	8	5	0	12	0	\N	\N	\N	10
5650	471	9	0	0	0	0	8	8	8	8
5651	471	10	0	0	0	0	8	8	8	8
5652	471	11	0	0	0	0	8	8	8	8
5653	472	0	8	11	14	3	27	33	11	3
5654	472	1	8	10	14	3	27	33	11	3
5655	472	2	8	9	13	2	27	33	11	3
5656	472	3	7	8	13	2	27	\N	\N	3
5657	472	4	7	8	15	2	27	\N	\N	3
5658	472	5	7	7	15	1	\N	\N	\N	3
5659	472	6	6	6	15	1	\N	\N	\N	3
5660	472	7	6	6	14	1	\N	\N	\N	3
5661	472	8	5	5	13	1	\N	\N	\N	\N
5662	472	9	5	0	11	0	\N	\N	\N	10
5663	472	10	0	0	0	0	8	8	8	8
5664	472	11	0	0	0	0	8	8	8	8
5665	473	0	12	11	18	3	13	18	37	3
5666	473	1	11	10	18	3	13	18	37	3
5667	473	2	10	9	17	2	13	18	37	3
5668	473	3	10	9	17	2	13	\N	37	3
5669	473	4	9	8	16	2	13	\N	\N	3
5670	473	5	9	8	16	2	13	\N	\N	3
5671	473	6	8	7	15	2	13	\N	\N	3
5672	473	7	8	7	15	1	13	\N	\N	\N
5673	473	8	0	0	0	0	8	8	8	8
5674	473	9	0	0	0	0	8	8	8	8
5675	473	10	0	0	0	0	8	8	8	8
5676	473	11	0	0	0	0	8	8	8	8
5677	474	0	10	10	17	1	13	\N	17	19
5678	474	1	10	10	16	1	13	\N	17	19
5679	474	2	8	9	16	1	13	\N	17	19
5680	474	3	8	8	16	1	13	\N	17	19
5681	474	4	6	8	15	1	13	\N	17	19
5682	474	5	6	7	15	1	13	\N	17	19
5683	474	6	0	0	0	0	8	8	8	8
5684	474	7	0	0	0	0	8	8	8	8
5685	474	8	0	0	0	0	8	8	8	8
5686	474	9	0	0	0	0	8	8	8	8
5687	474	10	0	0	0	0	8	8	8	8
5688	474	11	0	0	0	0	8	8	8	8
5689	475	0	10	11	18	3	30	18	11	20
5912	493	7	8	7	13	1	\N	\N	\N	\N
5690	475	1	9	10	18	3	30	18	11	20
5691	475	2	9	9	17	3	30	18	\N	20
5692	475	3	8	9	17	3	30	18	\N	20
5693	475	4	8	8	16	3	30	\N	\N	20
5694	475	5	6	8	16	2	\N	22	\N	20
5695	475	6	6	7	15	2	\N	22	\N	20
5696	475	7	5	7	15	2	\N	22	\N	\N
5697	475	8	5	6	14	2	\N	\N	32	\N
5698	475	9	4	6	14	2	\N	\N	32	\N
5699	475	10	4	5	13	2	\N	\N	32	\N
5700	475	11	0	0	0	0	8	8	8	8
5701	476	0	10	9	17	2	35	34	37	21
5702	476	1	10	9	16	2	35	34	\N	21
5703	476	2	9	9	16	2	35	39	\N	21
5704	476	3	9	8	15	1	35	39	\N	\N
5705	476	4	8	8	15	1	35	39	\N	\N
5706	476	5	8	8	14	1	35	39	\N	\N
5707	476	6	7	7	14	1	35	\N	\N	\N
5708	476	7	7	7	14	1	35	\N	\N	\N
5709	476	8	0	0	0	0	8	8	8	8
5710	476	9	0	0	0	0	8	8	8	8
5711	476	10	0	0	0	0	8	8	8	8
5712	476	11	0	0	0	0	8	8	8	8
5713	477	0	8	10	17	3	\N	36	29	3
5714	477	1	8	10	16	3	\N	36	29	3
5715	477	2	7	9	16	3	8	36	29	3
5716	477	3	7	9	15	2	8	36	29	3
5717	477	4	6	8	15	2	8	36	\N	3
5718	477	5	6	8	14	2	8	\N	\N	3
5719	477	6	5	7	14	1	\N	\N	\N	\N
5720	477	7	5	7	13	1	\N	\N	\N	\N
5721	477	8	0	0	0	0	8	8	8	8
5722	477	9	0	0	0	0	8	8	8	8
5723	477	10	0	0	0	0	8	8	8	8
5724	477	11	0	0	0	0	8	8	8	8
5725	478	0	5	9	17	2	5	18	25	20
5726	478	1	5	9	16	2	5	18	25	20
5727	478	2	5	9	16	2	5	18	25	\N
5728	478	3	9	8	15	2	27	18	25	\N
5729	478	4	9	8	15	2	27	18	25	\N
5730	478	5	8	8	14	2	27	\N	25	\N
5731	478	6	8	7	14	1	27	\N	\N	\N
5732	478	7	6	7	14	1	\N	\N	\N	\N
5733	478	8	0	0	0	0	8	8	8	8
5734	478	9	0	0	0	0	8	8	8	8
5735	478	10	0	0	0	0	8	8	8	8
5736	478	11	0	0	0	0	8	8	8	8
5737	479	0	8	12	16	4	13	39	16	26
5738	479	1	8	11	16	4	13	39	37	26
5739	479	2	8	10	16	3	13	39	37	26
5740	479	3	8	9	14	3	13	39	37	26
5741	479	4	6	8	14	3	\N	38	37	\N
5742	479	5	6	8	14	2	\N	38	37	\N
5743	479	6	6	7	12	2	\N	38	\N	\N
5744	479	7	6	7	12	2	\N	38	\N	\N
5745	479	8	4	7	12	1	\N	\N	32	\N
5746	479	9	4	6	12	1	\N	\N	32	\N
5747	479	10	0	0	0	0	8	8	8	8
5748	479	11	0	0	0	0	8	8	8	8
5749	480	0	10	12	17	3	13	18	23	20
5750	480	1	10	11	17	3	13	18	23	20
5751	480	2	9	10	16	3	13	18	23	20
5752	480	3	9	10	16	4	13	18	23	20
5753	480	4	9	9	16	4	13	15	23	20
5754	480	5	7	9	15	3	\N	15	23	20
5755	480	6	7	8	15	3	\N	\N	23	\N
5756	480	7	6	8	15	2	\N	\N	25	\N
5757	480	8	6	7	14	2	\N	\N	25	\N
5758	480	9	5	6	14	2	\N	\N	25	\N
5759	480	10	4	6	14	2	\N	\N	25	\N
5760	480	11	0	0	0	0	8	8	8	8
5761	481	0	5	12	16	4	6	39	29	3
5762	481	1	9	11	16	3	\N	39	29	3
5763	481	2	9	11	15	3	\N	39	29	3
5764	481	3	8	10	15	3	\N	\N	29	3
5765	481	4	8	10	15	3	\N	\N	29	3
5766	481	5	8	9	15	2	\N	\N	29	3
5767	481	6	6	8	14	2	\N	38	2	\N
5768	481	7	5	7	14	2	\N	38	2	\N
5769	481	8	5	6	13	2	\N	\N	2	\N
5770	481	9	4	0	11	0	\N	\N	\N	10
5771	481	10	0	0	0	0	8	8	8	8
5772	481	11	0	0	0	0	8	8	8	8
5773	482	0	10	10	15	2	27	\N	17	28
5774	482	1	9	9	15	2	27	\N	17	\N
5775	482	2	9	8	15	2	27	\N	17	\N
5776	482	3	8	8	14	2	30	\N	17	\N
5777	482	4	8	7	14	2	30	\N	17	\N
5778	482	5	8	7	14	1	30	\N	\N	\N
5779	482	6	7	7	13	1	30	\N	\N	\N
5780	482	7	6	6	12	1	35	\N	\N	\N
5781	482	8	5	5	11	1	35	\N	\N	\N
5782	482	9	4	0	10	0	\N	\N	\N	10
5783	482	10	0	0	0	0	8	8	8	8
5784	482	11	0	0	0	0	8	8	8	8
5785	483	0	9	10	15	2	13	12	25	\N
5786	483	1	9	9	15	2	13	12	25	\N
5787	483	2	9	8	15	2	13	33	25	\N
5788	483	3	8	8	14	2	35	33	\N	\N
5789	483	4	8	7	14	1	35	33	\N	\N
5790	483	5	8	7	14	1	35	\N	\N	26
5791	483	6	6	6	12	1	35	\N	\N	26
5792	483	7	6	6	12	1	\N	38	\N	\N
5793	483	8	5	5	11	1	\N	38	\N	\N
5794	483	9	4	0	11	0	\N	\N	\N	10
5795	483	10	0	0	0	0	8	8	8	8
5796	483	11	0	0	0	0	8	8	8	8
5797	484	0	10	9	14	2	\N	22	17	\N
5798	484	1	9	8	14	2	\N	\N	17	19
5799	484	2	8	8	14	2	\N	\N	17	19
5800	484	3	8	8	14	1	\N	\N	17	19
5801	484	4	8	7	14	1	\N	\N	17	19
5802	484	5	8	7	15	1	35	\N	\N	26
5803	484	6	7	6	13	1	35	38	\N	\N
5804	484	7	7	6	12	1	35	38	\N	\N
5805	484	8	6	5	11	1	35	\N	\N	\N
5806	484	9	5	0	10	0	\N	\N	\N	10
5807	484	10	0	0	0	0	8	8	8	8
5808	484	11	0	0	0	0	8	8	8	8
5809	485	0	10	12	16	4	\N	36	37	7
5810	485	1	10	11	15	4	\N	36	37	3
5811	485	2	9	10	15	3	\N	36	37	3
5812	485	3	9	9	14	3	\N	36	37	3
5813	485	4	8	8	14	2	\N	36	\N	3
5814	485	5	8	8	13	2	\N	\N	\N	3
5815	485	6	7	7	13	2	\N	\N	\N	3
5816	485	7	6	7	12	1	\N	\N	\N	\N
5817	485	8	6	6	12	1	\N	\N	\N	\N
5818	485	9	5	6	11	1	\N	\N	\N	\N
5819	485	10	4	6	10	1	\N	\N	\N	\N
5820	485	11	0	0	0	0	8	8	8	8
5821	486	0	10	11	16	3	13	12	17	20
5822	486	1	10	10	15	3	13	12	17	20
5823	486	2	9	9	15	2	13	12	17	\N
5824	486	3	8	8	15	2	\N	12	17	\N
5825	486	4	8	8	14	1	\N	12	17	\N
5826	486	5	7	8	14	1	\N	12	\N	\N
5827	486	6	6	7	14	1	\N	\N	\N	\N
5828	486	7	6	6	12	1	\N	\N	\N	\N
5829	486	8	4	5	12	1	\N	\N	\N	\N
5830	486	9	4	4	10	1	\N	\N	\N	\N
5831	486	10	0	0	0	0	8	8	8	8
5832	486	11	0	0	0	0	8	8	8	8
5833	487	0	6	10	17	2	5	22	\N	3
5834	487	1	5	10	16	2	5	22	\N	\N
5835	487	2	5	9	15	2	5	22	\N	\N
5836	487	3	4	8	15	1	6	15	\N	\N
5837	487	4	8	8	14	1	\N	15	\N	\N
5838	487	5	7	7	14	1	\N	15	\N	\N
5839	487	6	6	6	13	1	\N	15	\N	\N
5840	487	7	6	6	12	1	\N	\N	\N	\N
5841	487	8	5	5	12	1	\N	\N	32	\N
5842	487	9	4	4	11	1	\N	\N	32	\N
5843	487	10	0	0	0	0	8	8	8	8
5844	487	11	0	0	0	0	8	8	8	8
5845	488	0	12	10	16	2	27	34	17	\N
5846	488	1	10	9	15	2	27	34	17	\N
5847	488	2	10	8	15	2	27	34	17	\N
5848	488	3	8	8	14	2	\N	34	17	\N
5849	488	4	8	7	14	1	\N	34	17	\N
5850	488	5	8	7	14	2	\N	\N	\N	\N
5851	488	6	7	7	13	2	\N	\N	\N	\N
5852	488	7	6	6	12	1	\N	\N	\N	\N
5853	488	8	6	6	11	1	\N	\N	\N	\N
5854	488	9	5	6	10	1	\N	\N	\N	\N
5855	488	10	0	0	0	0	8	8	8	8
5856	488	11	0	0	0	0	8	8	8	8
5857	489	0	12	11	16	3	1	36	37	4
5858	489	1	11	11	16	3	1	36	37	4
5859	489	2	10	10	15	2	1	36	37	\N
5860	489	3	9	9	15	2	1	36	\N	\N
5861	489	4	8	9	15	2	1	36	\N	\N
5862	489	5	8	8	14	2	1	36	\N	\N
5863	489	6	7	8	13	2	1	\N	\N	\N
5864	489	7	7	7	13	1	1	\N	\N	\N
5865	489	8	6	7	12	1	\N	\N	\N	\N
5866	489	9	6	6	12	1	\N	\N	\N	\N
5867	489	10	5	0	11	0	\N	\N	\N	10
5868	489	11	0	0	0	0	8	8	8	8
5869	490	0	10	10	16	2	1	18	25	\N
5870	490	1	9	10	16	2	1	18	25	\N
5871	490	2	9	9	15	2	1	18	25	\N
5872	490	3	8	9	15	2	1	18	25	\N
5873	490	4	8	8	15	2	1	18	\N	\N
5874	490	5	7	7	14	1	1	18	\N	\N
5875	490	6	6	7	13	1	\N	\N	\N	\N
5876	490	7	6	6	13	1	\N	\N	\N	\N
5877	490	8	5	5	12	1	\N	\N	\N	\N
5878	490	9	4	0	11	0	\N	\N	\N	10
5879	490	10	0	0	0	0	8	8	8	8
5880	490	11	0	0	0	0	8	8	8	8
5881	491	0	10	10	18	3	1	15	9	20
5882	491	1	10	9	17	3	1	15	9	20
5883	491	2	8	9	17	2	1	15	9	\N
5884	491	3	8	8	16	2	1	15	9	\N
5885	491	4	8	7	15	2	1	15	\N	\N
5886	491	5	6	7	15	1	1	15	\N	\N
5887	491	6	6	6	14	1	\N	15	\N	\N
5888	491	7	5	6	14	1	\N	\N	\N	\N
5889	491	8	5	5	13	1	\N	\N	\N	\N
5890	491	9	4	5	13	1	\N	\N	\N	\N
5891	491	10	4	0	12	0	\N	\N	\N	10
5892	491	11	0	0	0	0	8	8	8	8
5893	492	0	12	11	17	2	1	34	2	28
5894	492	1	12	10	16	2	1	34	2	\N
5895	492	2	11	9	16	1	1	34	2	\N
5896	492	3	10	9	15	1	1	34	2	\N
5897	492	4	10	8	15	1	1	34	\N	\N
5898	492	5	9	8	15	1	1	34	\N	\N
5899	492	6	8	7	14	1	1	\N	\N	\N
5900	492	7	8	7	14	1	1	\N	\N	\N
5901	492	8	6	6	13	1	1	\N	\N	\N
5902	492	9	6	0	12	0	1	\N	\N	10
5903	492	10	0	0	0	0	8	8	8	8
5904	492	11	0	0	0	0	8	8	8	8
5905	493	0	6	10	16	3	6	40	37	\N
5906	493	1	6	10	15	3	6	40	37	\N
5907	493	2	10	9	15	2	\N	40	37	\N
5908	493	3	10	9	14	2	\N	40	37	\N
5909	493	4	10	8	14	2	\N	40	\N	\N
5910	493	5	9	8	14	2	\N	40	\N	\N
5911	493	6	8	7	13	2	\N	\N	\N	\N
5913	493	8	7	7	12	1	\N	\N	\N	\N
5914	493	9	6	6	12	1	\N	\N	\N	\N
5915	493	10	6	0	10	0	\N	\N	\N	10
5916	493	11	0	0	0	0	8	8	8	8
5917	494	0	10	9	15	2	27	12	11	\N
5918	494	1	10	9	14	2	27	12	11	\N
5919	494	2	9	8	14	1	27	\N	11	8
5920	494	3	9	8	13	1	27	\N	11	8
5921	494	4	8	7	14	1	27	\N	\N	8
5922	494	5	8	7	14	1	\N	\N	\N	8
5923	494	6	8	6	13	1	\N	\N	\N	8
5924	494	7	7	6	13	1	\N	\N	\N	8
5925	494	8	7	5	12	1	\N	\N	\N	8
5926	494	9	6	0	11	0	\N	\N	\N	10
5927	494	10	0	0	0	0	8	8	8	8
5928	494	11	0	0	0	0	8	8	8	8
5929	495	0	12	11	14	3	\N	22	11	7
5930	495	1	12	10	14	3	\N	22	11	7
5931	495	2	10	10	13	3	\N	15	11	7
5932	495	3	10	9	14	2	\N	15	11	\N
5933	495	4	8	8	15	2	\N	15	\N	\N
5934	495	5	8	8	14	1	\N	15	\N	\N
5935	495	6	8	7	13	1	\N	15	\N	\N
5936	495	7	7	7	13	1	\N	\N	\N	\N
5937	495	8	7	6	12	1	\N	\N	\N	\N
5938	495	9	6	6	11	1	\N	\N	\N	\N
5939	495	10	6	0	10	0	\N	\N	\N	10
5940	495	11	0	0	0	0	8	8	8	8
5941	496	0	12	10	16	2	35	39	11	\N
5942	496	1	12	10	15	2	35	39	11	\N
5943	496	2	12	10	14	2	35	39	11	\N
5944	496	3	10	9	14	2	35	39	11	\N
5945	496	4	10	9	13	2	35	\N	11	\N
5946	496	5	8	8	13	2	35	\N	\N	\N
5947	496	6	8	8	13	1	35	\N	\N	\N
5948	496	7	6	7	13	1	\N	\N	\N	\N
5949	496	8	6	0	12	0	\N	\N	\N	10
5950	496	9	6	0	12	0	\N	\N	\N	10
5951	496	10	0	0	0	0	8	8	8	8
5952	496	11	0	0	0	0	8	8	8	8
5953	497	0	5	11	15	3	6	15	2	3
5954	497	1	5	10	15	3	6	15	2	3
5955	497	2	9	10	14	3	\N	15	2	3
5956	497	3	8	9	14	2	\N	15	2	3
5957	497	4	8	9	14	2	\N	15	\N	3
5958	497	5	6	8	14	2	\N	15	\N	3
5959	497	6	6	8	13	1	\N	\N	\N	3
5960	497	7	5	7	13	1	\N	\N	\N	\N
5961	497	8	8	9	12	3	\N	\N	\N	4
5962	497	9	8	9	12	3	\N	\N	\N	4
5963	497	10	4	0	11	0	\N	\N	\N	10
5964	497	11	0	0	0	0	8	8	8	8
5965	498	0	12	10	16	3	35	18	\N	7
5966	498	1	10	9	15	2	24	33	\N	21
5967	498	2	10	9	15	2	30	40	\N	3
5968	498	3	8	8	14	1	13	\N	25	20
5969	498	4	8	8	14	1	\N	12	\N	\N
5970	498	5	6	8	13	1	\N	12	\N	\N
5971	498	6	6	7	12	1	\N	12	\N	\N
5972	498	7	4	7	12	1	\N	12	\N	\N
5973	498	8	4	7	11	2	\N	\N	\N	\N
5974	498	9	4	0	10	0	\N	\N	\N	10
5975	498	10	0	0	0	0	8	8	8	8
5976	498	11	0	0	0	0	8	8	8	8
5977	499	0	10	12	16	4	31	36	37	3
5978	499	1	10	11	16	4	31	36	37	3
5979	499	2	8	10	15	3	\N	36	37	3
5980	499	3	8	9	15	3	\N	36	37	3
5981	499	4	8	8	15	3	\N	\N	37	3
5982	499	5	6	8	15	3	\N	\N	\N	3
5983	499	6	6	8	14	3	\N	\N	\N	\N
5984	499	7	6	8	13	3	\N	\N	\N	\N
5985	499	8	6	8	12	2	\N	\N	32	\N
5986	499	9	6	9	12	4	\N	\N	32	4
5987	499	10	4	0	10	0	\N	\N	\N	10
5988	499	11	0	0	0	0	8	8	8	8
5989	500	0	10	9	15	2	27	34	11	\N
5990	500	1	10	9	15	2	27	34	11	\N
5991	500	2	10	8	15	2	27	34	11	\N
5992	500	3	8	8	14	1	27	34	11	\N
5993	500	4	8	7	14	1	27	34	\N	\N
5994	500	5	8	7	14	1	\N	34	\N	\N
5995	500	6	8	6	13	1	\N	\N	\N	\N
5996	500	7	6	6	12	1	\N	\N	\N	\N
5997	500	8	6	0	11	0	\N	\N	\N	10
5998	500	9	4	0	10	0	\N	\N	\N	10
5999	500	10	0	0	0	0	8	8	8	8
6000	500	11	0	0	0	0	8	8	8	8
6001	501	0	6	13	16	3	6	40	2	\N
6002	501	1	5	12	15	3	6	40	2	\N
6003	501	2	9	11	15	3	\N	40	2	\N
6004	501	3	8	10	15	2	\N	40	2	\N
6005	501	4	8	9	14	2	\N	40	2	\N
6006	501	5	6	9	14	2	\N	40	2	\N
6007	501	6	6	8	13	2	\N	\N	2	\N
6008	501	7	5	8	13	1	\N	\N	\N	\N
6009	501	8	5	7	12	1	\N	\N	\N	\N
6010	501	9	4	6	12	1	\N	\N	\N	\N
6011	501	10	4	0	11	0	\N	\N	\N	10
6012	501	11	0	0	0	0	8	8	8	8
6013	502	0	10	10	18	3	\N	22	9	21
6014	502	1	9	10	17	2	\N	22	9	21
6015	502	2	9	9	16	2	\N	22	9	\N
6016	502	3	8	9	16	2	\N	22	9	\N
6017	502	4	8	8	14	2	\N	22	\N	\N
6018	502	5	8	8	14	1	\N	22	\N	\N
6019	502	6	7	7	13	1	\N	15	\N	\N
6020	502	7	6	7	13	1	\N	\N	\N	\N
6021	502	8	6	6	12	1	\N	\N	\N	\N
6022	502	9	6	6	12	1	\N	\N	\N	\N
6023	502	10	5	0	11	0	\N	\N	\N	10
6024	502	11	0	0	0	0	8	8	8	8
6025	503	0	10	10	15	2	13	33	37	\N
6026	503	1	9	10	15	2	13	33	37	\N
6027	503	2	8	10	14	1	13	33	\N	\N
6028	503	3	8	9	14	1	13	33	\N	\N
6029	503	4	8	8	13	1	\N	33	\N	\N
6030	503	5	6	8	13	1	\N	33	\N	\N
6031	503	6	6	8	13	1	\N	\N	\N	\N
6032	503	7	6	7	12	1	\N	\N	\N	\N
6033	503	8	5	6	12	1	\N	\N	\N	\N
6034	503	9	4	0	10	0	\N	\N	\N	10
6035	503	10	0	0	0	0	8	8	8	8
6036	503	11	0	0	0	0	8	8	8	8
6037	504	0	14	11	18	2	35	39	25	\N
6038	504	1	12	10	17	2	35	39	25	\N
6039	504	2	11	10	17	2	35	39	25	\N
6040	504	3	10	9	16	2	35	39	25	\N
6041	504	4	10	9	16	2	35	39	\N	\N
6042	504	5	8	8	15	2	35	39	\N	\N
6043	504	6	8	8	14	2	35	39	\N	\N
6044	504	7	6	7	14	1	35	\N	\N	\N
6045	504	8	6	0	12	0	\N	\N	\N	10
6046	504	9	4	0	12	0	\N	\N	\N	10
6047	504	10	0	0	0	0	8	8	8	8
6048	504	11	0	0	0	0	8	8	8	8
6049	505	0	12	7	15	2	\N	\N	2	\N
6050	505	1	10	7	15	2	\N	\N	\N	\N
6051	505	2	8	6	14	2	\N	\N	\N	\N
6052	505	3	6	5	13	1	\N	\N	\N	\N
6053	505	4	4	4	11	1	\N	\N	\N	\N
6054	505	5	0	0	0	0	8	8	8	8
6055	505	6	0	0	0	0	8	8	8	8
6056	505	7	0	0	0	0	8	8	8	8
6057	505	8	0	0	0	0	8	8	8	8
6058	505	9	0	0	0	0	8	8	8	8
6059	505	10	0	0	0	0	8	8	8	8
6060	505	11	0	0	0	0	8	8	8	8
6061	506	0	10	7	16	2	30	\N	2	\N
6062	506	1	9	7	15	2	\N	\N	2	\N
6063	506	2	8	7	15	2	\N	\N	2	\N
6064	506	3	7	6	14	2	\N	\N	\N	\N
6065	506	4	6	6	14	1	\N	\N	\N	\N
6066	506	5	5	5	13	1	\N	\N	\N	\N
6067	506	6	4	4	11	1	\N	\N	\N	\N
6068	506	7	0	0	0	0	8	8	8	8
6069	506	8	0	0	0	0	8	8	8	8
6070	506	9	0	0	0	0	8	8	8	8
6071	506	10	0	0	0	0	8	8	8	8
6072	506	11	0	0	0	0	8	8	8	8
6073	507	0	10	8	16	2	30	\N	2	\N
6074	507	1	10	7	16	2	30	\N	2	\N
6075	507	2	9	7	15	2	\N	\N	2	\N
6076	507	3	8	7	15	2	\N	\N	\N	\N
6077	507	4	7	6	14	2	\N	\N	\N	\N
6078	507	5	6	6	14	1	\N	\N	\N	\N
6079	507	6	5	5	13	1	\N	\N	\N	\N
6080	507	7	4	4	11	1	\N	\N	\N	\N
6081	507	8	0	0	0	0	8	8	8	8
6082	507	9	0	0	0	0	8	8	8	8
6083	507	10	0	0	0	0	8	8	8	8
6084	507	11	0	0	0	0	8	8	8	8
6085	508	0	8	9	15	3	\N	\N	2	\N
6086	508	1	7	8	15	2	\N	\N	2	\N
6087	508	2	6	7	14	2	\N	\N	\N	\N
6088	508	3	5	6	14	2	\N	\N	\N	\N
6089	508	4	5	5	13	1	\N	\N	\N	\N
6090	508	5	4	4	11	1	\N	\N	\N	\N
6091	508	6	0	0	0	0	8	8	8	8
6092	508	7	0	0	0	0	8	8	8	8
6093	508	8	0	0	0	0	8	8	8	8
6094	508	9	0	0	0	0	8	8	8	8
6095	508	10	0	0	0	0	8	8	8	8
6096	508	11	0	0	0	0	8	8	8	8
6097	509	0	8	10	15	3	\N	\N	2	\N
6098	509	1	7	9	15	3	\N	\N	2	\N
6099	509	2	6	8	15	2	\N	\N	2	\N
6100	509	3	6	7	14	2	\N	\N	\N	\N
6101	509	4	5	6	14	2	\N	\N	\N	\N
6102	509	5	5	5	13	1	\N	\N	\N	\N
6103	509	6	4	4	11	1	\N	\N	\N	\N
6104	509	7	0	0	0	0	8	8	8	8
6105	509	8	0	0	0	0	8	8	8	8
6106	509	9	0	0	0	0	8	8	8	8
6107	509	10	0	0	0	0	8	8	8	8
6108	509	11	0	0	0	0	8	8	8	8
6109	510	0	8	10	15	3	\N	\N	2	\N
6110	510	1	7	9	15	3	\N	\N	2	\N
6111	510	2	6	8	15	3	\N	\N	2	\N
6112	510	3	6	7	15	2	\N	\N	\N	\N
6113	510	4	6	7	14	2	\N	\N	\N	\N
6114	510	5	5	6	13	1	\N	\N	\N	\N
6115	510	6	5	5	12	1	\N	\N	\N	\N
6116	510	7	4	4	11	1	\N	\N	\N	\N
6117	510	8	0	0	0	0	8	8	8	8
6118	510	9	0	0	0	0	8	8	8	8
6119	510	10	0	0	0	0	8	8	8	8
6120	510	11	0	0	0	0	8	8	8	8
6121	511	0	8	8	15	2	13	\N	17	\N
6122	511	1	6	6	14	1	13	\N	\N	\N
6123	511	2	5	5	13	1	\N	\N	\N	\N
6124	511	3	4	4	12	1	\N	\N	\N	\N
6125	511	4	2	0	11	0	\N	\N	\N	10
6126	511	5	0	0	0	0	8	8	8	8
6127	511	6	0	0	0	0	8	8	8	8
6128	511	7	0	0	0	0	8	8	8	8
6129	511	8	0	0	0	0	8	8	8	8
6130	511	9	0	0	0	0	8	8	8	8
6131	511	10	0	0	0	0	8	8	8	8
6132	511	11	0	0	0	0	8	8	8	8
6133	512	0	8	8	15	2	13	\N	17	\N
6134	512	1	7	8	15	2	13	\N	\N	\N
6135	512	2	6	6	14	1	13	\N	\N	\N
6136	512	3	5	5	13	1	\N	\N	\N	\N
6137	512	4	4	4	12	1	\N	\N	\N	\N
6138	512	5	2	0	11	0	\N	\N	\N	10
6139	512	6	0	0	0	0	8	8	8	8
6140	512	7	0	0	0	0	8	8	8	8
6141	512	8	0	0	0	0	8	8	8	8
6142	512	9	0	0	0	0	8	8	8	8
6143	512	10	0	0	0	0	8	8	8	8
6144	512	11	0	0	0	0	8	8	8	8
6145	513	0	8	9	15	2	13	\N	17	\N
6146	513	1	8	8	15	2	13	\N	17	\N
6147	513	2	7	8	15	2	13	\N	\N	\N
6148	513	3	6	6	14	1	13	\N	\N	\N
6149	513	4	5	5	13	1	\N	\N	\N	\N
6150	513	5	2	0	11	0	\N	\N	\N	10
6151	513	6	0	0	0	0	8	8	8	8
6152	513	7	0	0	0	0	8	8	8	8
6153	513	8	0	0	0	0	8	8	8	8
6154	513	9	0	0	0	0	8	8	8	8
6155	513	10	0	0	0	0	8	8	8	8
6156	513	11	0	0	0	0	8	8	8	8
6157	514	0	8	9	14	1	35	\N	\N	\N
6158	514	1	8	9	13	1	35	\N	\N	\N
6159	514	2	6	7	11	1	\N	\N	\N	\N
6160	514	3	5	5	10	1	\N	\N	\N	\N
6161	514	4	4	0	10	0	\N	\N	\N	10
6162	514	5	0	0	0	0	8	8	8	8
6163	514	6	0	0	0	0	8	8	8	8
6164	514	7	0	0	0	0	8	8	8	8
6165	514	8	0	0	0	0	8	8	8	8
6166	514	9	0	0	0	0	8	8	8	8
6167	514	10	0	0	0	0	8	8	8	8
6168	514	11	0	0	0	0	8	8	8	8
6169	515	0	8	9	14	2	35	\N	\N	\N
6170	515	1	8	9	14	1	35	\N	\N	\N
6171	515	2	8	9	13	1	35	\N	\N	\N
6172	515	3	6	7	11	1	\N	\N	\N	\N
6173	515	4	5	5	10	1	\N	\N	\N	\N
6174	515	5	4	0	10	0	\N	\N	\N	10
6175	515	6	0	0	0	0	8	8	8	8
6176	515	7	0	0	0	0	8	8	8	8
6177	515	8	0	0	0	0	8	8	8	8
6178	515	9	0	0	0	0	8	8	8	8
6179	515	10	0	0	0	0	8	8	8	8
6180	515	11	0	0	0	0	8	8	8	8
6181	516	0	8	10	15	2	35	\N	\N	\N
6182	516	1	8	10	14	1	35	\N	\N	\N
6183	516	2	8	9	14	1	35	\N	\N	\N
6184	516	3	8	7	13	1	35	\N	\N	\N
6185	516	4	6	5	11	1	\N	\N	\N	\N
6186	516	5	5	4	10	1	\N	\N	\N	\N
6187	516	6	4	0	10	0	\N	\N	\N	10
6188	516	7	0	0	0	0	8	8	8	8
6189	516	8	0	0	0	0	8	8	8	8
6190	516	9	0	0	0	0	8	8	8	8
6191	516	10	0	0	0	0	8	8	8	8
6192	516	11	0	0	0	0	8	8	8	8
6193	517	0	8	8	15	2	\N	\N	2	\N
6194	517	1	6	7	14	2	\N	\N	\N	\N
6195	517	2	4	6	13	1	\N	\N	32	\N
6196	517	3	3	5	12	1	\N	\N	32	\N
6197	517	4	2	0	11	0	\N	\N	\N	10
6198	517	5	0	0	0	0	8	8	8	8
6199	517	6	0	0	0	0	8	8	8	8
6200	517	7	0	0	0	0	8	8	8	8
6201	517	8	0	0	0	0	8	8	8	8
6202	517	9	0	0	0	0	8	8	8	8
6203	517	10	0	0	0	0	8	8	8	8
6204	517	11	0	0	0	0	8	8	8	8
6205	518	0	8	9	15	2	\N	\N	2	\N
6206	518	1	6	8	14	2	\N	\N	32	\N
6207	518	2	4	7	13	2	\N	\N	32	\N
6208	518	3	3	6	12	1	\N	\N	32	\N
6209	518	4	2	0	11	0	\N	\N	\N	10
6210	518	5	0	0	0	0	8	8	8	8
6211	518	6	0	0	0	0	8	8	8	8
6212	518	7	0	0	0	0	8	8	8	8
6213	518	8	0	0	0	0	8	8	8	8
6214	518	9	0	0	0	0	8	8	8	8
6215	518	10	0	0	0	0	8	8	8	8
6216	518	11	0	0	0	0	8	8	8	8
6217	519	0	8	10	16	2	\N	\N	2	\N
6218	519	1	7	9	15	2	\N	38	\N	\N
6219	519	2	6	8	14	2	\N	\N	32	\N
6220	519	3	4	7	13	1	\N	\N	32	\N
6221	519	4	3	6	12	1	\N	\N	32	\N
6222	519	5	2	0	11	0	\N	\N	\N	10
6223	519	6	0	0	0	0	8	8	8	8
6224	519	7	0	0	0	0	8	8	8	8
6225	519	8	0	0	0	0	8	8	8	8
6226	519	9	0	0	0	0	8	8	8	8
6227	519	10	0	0	0	0	8	8	8	8
6228	519	11	0	0	0	0	8	8	8	8
6229	520	0	8	0	14	0	\N	39	\N	\N
6230	520	1	7	0	13	0	\N	39	\N	\N
6231	520	2	6	0	12	0	\N	39	\N	\N
6232	520	3	5	0	11	0	\N	39	\N	\N
6233	520	4	4	0	10	0	\N	\N	\N	\N
6234	520	5	0	0	0	0	8	8	8	8
6235	520	6	0	0	0	0	8	8	8	8
6236	520	7	0	0	0	0	8	8	8	8
6237	520	8	0	0	0	0	8	8	8	8
6238	520	9	0	0	0	0	8	8	8	8
6239	520	10	0	0	0	0	8	8	8	8
6240	520	11	0	0	0	0	8	8	8	8
6241	521	0	9	0	15	0	\N	39	37	\N
6242	521	1	8	0	14	0	\N	39	\N	\N
6243	521	2	7	0	13	0	\N	39	\N	\N
6244	521	3	6	0	12	0	\N	39	\N	\N
6245	521	4	5	0	11	0	\N	39	\N	\N
6246	521	5	4	0	10	0	\N	\N	\N	\N
6247	521	6	0	0	0	0	8	8	8	8
6248	521	7	0	0	0	0	8	8	8	8
6249	521	8	0	0	0	0	8	8	8	8
6250	521	9	0	0	0	0	8	8	8	8
6251	521	10	0	0	0	0	8	8	8	8
6252	521	11	0	0	0	0	8	8	8	8
6253	522	0	10	0	16	0	\N	39	37	\N
6254	522	1	9	0	15	0	\N	39	37	\N
6255	522	2	8	0	14	0	\N	39	\N	\N
6256	522	3	7	0	13	0	\N	39	\N	\N
6257	522	4	6	0	12	0	\N	39	\N	\N
6258	522	5	5	0	11	0	\N	39	\N	\N
6259	522	6	4	0	10	0	\N	\N	\N	\N
6260	522	7	0	0	0	0	8	8	8	8
6261	522	8	0	0	0	0	8	8	8	8
6262	522	9	0	0	0	0	8	8	8	8
6263	522	10	0	0	0	0	8	8	8	8
6264	522	11	0	0	0	0	8	8	8	8
6265	523	0	6	8	17	2	\N	\N	29	\N
6266	523	1	6	7	16	2	\N	\N	23	\N
6267	523	2	6	6	15	1	\N	\N	23	\N
6268	523	3	5	5	14	1	\N	\N	23	3
6269	523	4	5	4	13	1	\N	\N	\N	3
6270	523	5	2	0	12	0	\N	\N	\N	10
6271	523	6	0	0	0	0	8	8	8	8
6272	523	7	0	0	0	0	8	8	8	8
6273	523	8	0	0	0	0	8	8	8	8
6274	523	9	0	0	0	0	8	8	8	8
6275	523	10	0	0	0	0	8	8	8	8
6276	523	11	0	0	0	0	8	8	8	8
6277	524	0	6	8	18	2	\N	\N	29	\N
6278	524	1	6	8	17	2	\N	\N	23	\N
6279	524	2	6	7	16	2	\N	\N	23	\N
6280	524	3	5	6	15	1	\N	\N	23	3
6281	524	4	5	5	14	1	\N	\N	23	3
6282	524	5	4	4	13	1	\N	\N	\N	3
6283	524	6	2	0	12	0	\N	\N	\N	10
6284	524	7	0	0	0	0	8	8	8	8
6285	524	8	0	0	0	0	8	8	8	8
6286	524	9	0	0	0	0	8	8	8	8
6287	524	10	0	0	0	0	8	8	8	8
6288	524	11	0	0	0	0	8	8	8	8
6289	525	0	6	9	18	2	\N	\N	29	\N
6290	525	1	6	8	17	2	\N	\N	29	\N
6291	525	2	6	8	16	2	\N	\N	23	\N
6292	525	3	6	7	15	2	\N	\N	23	3
6293	525	4	5	6	14	1	\N	\N	23	3
6294	525	5	5	5	13	1	\N	\N	23	3
6295	525	6	4	4	13	1	\N	\N	\N	3
6296	525	7	2	0	12	0	\N	\N	\N	10
6297	525	8	0	0	0	0	8	8	8	8
6298	525	9	0	0	0	0	8	8	8	8
6299	525	10	0	0	0	0	8	8	8	8
6300	525	11	0	0	0	0	8	8	8	8
6301	526	0	6	7	16	2	\N	33	23	\N
6302	526	1	6	7	15	2	\N	33	23	\N
6303	526	2	5	6	15	1	\N	\N	23	\N
6304	526	3	5	5	14	1	\N	\N	23	3
6305	526	4	4	4	13	1	\N	\N	\N	3
6306	526	5	2	0	12	0	\N	\N	\N	10
6307	526	6	0	0	0	0	8	8	8	8
6308	526	7	0	0	0	0	8	8	8	8
6309	526	8	0	0	0	0	8	8	8	8
6310	526	9	0	0	0	0	8	8	8	8
6311	526	10	0	0	0	0	8	8	8	8
6312	526	11	0	0	0	0	8	8	8	8
6313	527	0	6	8	16	2	\N	33	23	\N
6314	527	1	6	7	16	2	\N	33	23	\N
6315	527	2	6	6	15	2	\N	\N	23	\N
6316	527	3	5	6	15	1	\N	\N	23	3
6317	527	4	5	5	14	1	\N	\N	\N	3
6318	527	5	4	4	13	1	\N	\N	\N	3
6319	527	6	2	0	12	0	\N	\N	\N	10
6320	527	7	0	0	0	0	8	8	8	8
6321	527	8	0	0	0	0	8	8	8	8
6322	527	9	0	0	0	0	8	8	8	8
6323	527	10	0	0	0	0	8	8	8	8
6324	527	11	0	0	0	0	8	8	8	8
6325	528	0	6	9	16	2	\N	33	23	\N
6326	528	1	6	8	16	2	\N	33	23	\N
6327	528	2	6	7	15	2	\N	33	23	3
6328	528	3	5	6	15	2	\N	\N	23	3
6329	528	4	5	5	14	1	\N	\N	\N	3
6330	528	5	4	4	13	1	\N	\N	\N	3
6331	528	6	2	0	12	0	\N	\N	\N	10
6332	528	7	0	0	0	0	8	8	8	8
6333	528	8	0	0	0	0	8	8	8	8
6334	528	9	0	0	0	0	8	8	8	8
6335	528	10	0	0	0	0	8	8	8	8
6336	528	11	0	0	0	0	8	8	8	8
6337	529	0	8	7	14	2	\N	\N	\N	\N
6338	529	1	5	5	12	1	\N	\N	\N	\N
6339	529	2	2	0	10	0	\N	\N	\N	10
6340	529	3	0	0	0	0	8	8	8	8
6341	529	4	0	0	0	0	8	8	8	8
6342	529	5	0	0	0	0	8	8	8	8
6343	529	6	0	0	0	0	8	8	8	8
6344	529	7	0	0	0	0	8	8	8	8
6345	529	8	0	0	0	0	8	8	8	8
6346	529	9	0	0	0	0	8	8	8	8
6347	529	10	0	0	0	0	8	8	8	8
6348	529	11	0	0	0	0	8	8	8	8
6349	530	0	8	7	15	2	\N	\N	\N	\N
6350	530	1	8	7	14	2	\N	\N	\N	\N
6351	530	2	6	5	12	1	\N	\N	\N	\N
6352	530	3	2	0	10	0	\N	\N	\N	10
6353	530	4	0	0	0	0	8	8	8	8
6354	530	5	0	0	0	0	8	8	8	8
6355	530	6	0	0	0	0	8	8	8	8
6356	530	7	0	0	0	0	8	8	8	8
6357	530	8	0	0	0	0	8	8	8	8
6358	530	9	0	0	0	0	8	8	8	8
6359	530	10	0	0	0	0	8	8	8	8
6360	530	11	0	0	0	0	8	8	8	8
6361	531	0	8	8	15	2	\N	\N	\N	\N
6362	531	1	8	8	14	2	\N	\N	\N	\N
6363	531	2	6	8	14	2	\N	\N	\N	\N
6364	531	3	5	6	12	1	\N	\N	\N	\N
6365	531	4	4	4	11	1	\N	\N	\N	\N
6366	531	5	2	0	10	0	\N	\N	\N	10
6367	531	6	0	0	0	0	8	8	8	8
6368	531	7	0	0	0	0	8	8	8	8
6369	531	8	0	0	0	0	8	8	8	8
6370	531	9	0	0	0	0	8	8	8	8
6371	531	10	0	0	0	0	8	8	8	8
6372	531	11	0	0	0	0	8	8	8	8
6373	532	0	8	7	14	2	\N	\N	\N	3
6374	532	1	6	6	13	1	\N	\N	\N	\N
6375	532	2	4	6	12	2	\N	\N	\N	4
6376	532	3	0	0	0	0	8	8	8	8
6377	532	4	0	0	0	0	8	8	8	8
6378	532	5	0	0	0	0	8	8	8	8
6379	532	6	0	0	0	0	8	8	8	8
6380	532	7	0	0	0	0	8	8	8	8
6381	532	8	0	0	0	0	8	8	8	8
6382	532	9	0	0	0	0	8	8	8	8
6383	532	10	0	0	0	0	8	8	8	8
6384	532	11	0	0	0	0	8	8	8	8
6385	533	0	8	7	15	2	\N	\N	\N	3
6386	533	1	8	6	14	2	\N	\N	\N	\N
6387	533	2	6	7	13	3	\N	\N	\N	4
6388	533	3	4	6	12	2	\N	\N	\N	4
6389	533	4	0	0	0	0	8	8	8	8
6390	533	5	0	0	0	0	8	8	8	8
6391	533	6	0	0	0	0	8	8	8	8
6392	533	7	0	0	0	0	8	8	8	8
6393	533	8	0	0	0	0	8	8	8	8
6394	533	9	0	0	0	0	8	8	8	8
6395	533	10	0	0	0	0	8	8	8	8
6396	533	11	0	0	0	0	8	8	8	8
6397	534	0	8	8	15	2	\N	\N	2	3
6398	534	1	8	7	14	2	\N	\N	\N	\N
6399	534	2	6	8	13	3	\N	\N	\N	4
6400	534	3	5	7	12	3	\N	\N	\N	4
6401	534	4	4	6	11	2	\N	\N	\N	4
6402	534	5	0	0	0	0	8	8	8	8
6403	534	6	0	0	0	0	8	8	8	8
6404	534	7	0	0	0	0	8	8	8	8
6405	534	8	0	0	0	0	8	8	8	8
6406	534	9	0	0	0	0	8	8	8	8
6407	534	10	0	0	0	0	8	8	8	8
6408	534	11	0	0	0	0	8	8	8	8
6409	535	0	8	9	16	3	\N	\N	2	28
6410	535	1	8	9	15	3	\N	\N	2	28
6411	535	2	7	8	15	2	\N	\N	2	\N
6412	535	3	7	8	14	2	\N	\N	\N	\N
6413	535	4	6	7	14	2	\N	\N	\N	\N
6414	535	5	5	6	13	2	\N	\N	\N	\N
6415	535	6	4	6	12	2	\N	\N	\N	\N
6416	535	7	2	4	11	2	\N	\N	\N	\N
6417	535	8	0	0	0	0	8	8	8	8
6418	535	9	0	0	0	0	8	8	8	8
6419	535	10	0	0	0	0	8	8	8	8
6420	535	11	0	0	0	0	8	8	8	8
6421	536	0	8	10	16	3	\N	\N	2	28
6422	536	1	8	9	16	3	\N	\N	2	28
6423	536	2	7	9	15	2	\N	\N	2	28
6424	536	3	7	8	15	2	\N	\N	2	\N
6425	536	4	6	8	14	2	\N	\N	\N	\N
6426	536	5	6	7	14	2	\N	\N	\N	\N
6427	536	6	5	7	13	2	\N	\N	\N	\N
6428	536	7	4	6	12	2	\N	\N	\N	\N
6429	536	8	2	5	11	2	\N	\N	\N	\N
6430	536	9	0	0	0	0	8	8	8	8
6431	536	10	0	0	0	0	8	8	8	8
6432	536	11	0	0	0	0	8	8	8	8
6433	537	0	8	10	17	3	\N	\N	2	28
6434	537	1	8	10	16	3	\N	\N	2	28
6435	537	2	7	9	15	3	\N	\N	2	28
6436	537	3	7	8	15	2	\N	\N	2	\N
6437	537	4	6	8	14	2	\N	\N	2	\N
6438	537	5	6	7	14	2	\N	\N	\N	\N
6439	537	6	5	7	13	2	\N	\N	\N	\N
6440	537	7	4	6	13	2	\N	\N	\N	\N
6441	537	8	4	5	12	2	\N	\N	\N	\N
6442	537	9	2	4	11	2	\N	\N	\N	\N
6443	537	10	0	0	0	0	8	8	8	8
6444	537	11	0	0	0	0	8	8	8	8
6445	538	0	8	9	15	2	\N	18	2	\N
6446	538	1	7	8	14	2	\N	\N	2	\N
6447	538	2	6	7	14	1	\N	\N	\N	\N
6448	538	3	5	6	13	1	\N	\N	\N	\N
6449	538	4	4	4	12	1	\N	\N	\N	\N
6450	538	5	2	0	11	0	\N	\N	\N	10
6451	538	6	0	0	0	0	8	8	8	8
6452	538	7	0	0	0	0	8	8	8	8
6453	538	8	0	0	0	0	8	8	8	8
6454	538	9	0	0	0	0	8	8	8	8
6455	538	10	0	0	0	0	8	8	8	8
6456	538	11	0	0	0	0	8	8	8	8
6457	539	0	8	10	15	3	\N	18	2	\N
6458	539	1	7	9	15	2	\N	18	2	\N
6459	539	2	6	8	14	2	\N	\N	2	\N
6460	539	3	5	7	13	1	\N	\N	\N	\N
6461	539	4	5	6	12	1	\N	\N	\N	\N
6462	539	5	4	4	11	1	\N	\N	\N	\N
6463	539	6	2	0	11	0	\N	\N	\N	10
6464	539	7	0	0	0	0	8	8	8	8
6465	539	8	0	0	0	0	8	8	8	8
6466	539	9	0	0	0	0	8	8	8	8
6467	539	10	0	0	0	0	8	8	8	8
6468	539	11	0	0	0	0	8	8	8	8
6469	540	0	8	10	15	3	\N	18	2	\N
6470	540	1	7	10	15	3	\N	18	2	\N
6471	540	2	7	9	15	2	\N	18	2	\N
6472	540	3	6	8	14	2	\N	\N	\N	\N
6473	540	4	5	7	13	1	\N	\N	\N	\N
6474	540	5	4	5	12	1	\N	\N	\N	\N
6475	540	6	2	0	11	0	\N	\N	\N	10
6476	540	7	0	0	0	0	8	8	8	8
6477	540	8	0	0	0	0	8	8	8	8
6478	540	9	0	0	0	0	8	8	8	8
6479	540	10	0	0	0	0	8	8	8	8
6480	540	11	0	0	0	0	8	8	8	8
6481	541	0	8	11	17	3	\N	\N	37	3
6482	541	1	8	11	16	3	\N	\N	37	3
6483	541	2	7	10	15	3	\N	\N	\N	3
6484	541	3	7	9	15	3	\N	\N	\N	3
6485	541	4	6	8	14	2	\N	\N	\N	3
6486	541	5	5	7	13	2	\N	\N	\N	3
6487	541	6	5	6	12	1	\N	\N	\N	\N
6488	541	7	4	0	11	0	\N	\N	\N	10
6489	541	8	0	0	0	0	8	8	8	8
6490	541	9	0	0	0	0	8	8	8	8
6491	541	10	0	0	0	0	8	8	8	8
6492	541	11	0	0	0	0	8	8	8	8
6493	542	0	8	12	17	4	\N	\N	37	3
6494	542	1	8	12	16	3	\N	\N	37	3
6495	542	2	7	11	15	3	\N	\N	37	3
6496	542	3	7	10	15	3	\N	\N	\N	3
6497	542	4	6	9	14	2	\N	\N	\N	3
6498	542	5	6	8	13	2	\N	\N	\N	3
6499	542	6	5	7	12	1	\N	\N	\N	3
6500	542	7	5	6	11	1	\N	\N	\N	\N
6501	542	8	4	0	10	0	\N	\N	\N	10
6502	542	9	0	0	0	0	8	8	8	8
6503	542	10	0	0	0	0	8	8	8	8
6504	542	11	0	0	0	0	8	8	8	8
6505	543	0	8	12	17	4	\N	\N	37	3
6506	543	1	8	12	16	4	\N	\N	37	3
6507	543	2	7	11	16	3	\N	\N	37	3
6508	543	3	7	10	15	3	\N	\N	\N	3
6509	543	4	6	9	15	2	\N	\N	\N	3
6510	543	5	6	8	14	2	\N	\N	\N	3
6511	543	6	5	7	13	2	\N	\N	\N	3
6512	543	7	5	6	12	1	\N	\N	\N	3
6513	543	8	4	5	11	1	\N	\N	\N	\N
6514	543	9	4	0	10	0	\N	\N	\N	10
6515	543	10	0	0	0	0	8	8	8	8
6516	543	11	0	0	0	0	8	8	8	8
6517	544	0	5	7	15	1	6	15	\N	\N
6518	544	1	8	7	14	1	\N	15	\N	\N
6519	544	2	7	6	13	1	\N	15	\N	\N
6520	544	3	6	5	12	1	\N	\N	\N	\N
6521	544	4	5	4	12	1	\N	\N	\N	\N
6522	544	5	4	0	11	0	\N	\N	\N	10
6523	544	6	0	0	0	0	8	8	8	8
6524	544	7	0	0	0	0	8	8	8	8
6525	544	8	0	0	0	0	8	8	8	8
6526	544	9	0	0	0	0	8	8	8	8
6527	544	10	0	0	0	0	8	8	8	8
6528	544	11	0	0	0	0	8	8	8	8
6529	545	0	5	8	15	2	6	15	\N	\N
6530	545	1	4	7	15	1	6	15	\N	\N
6531	545	2	7	6	14	1	\N	15	\N	\N
6532	545	3	6	6	13	1	\N	\N	\N	\N
6533	545	4	5	5	12	1	\N	\N	\N	\N
6534	545	5	4	4	12	1	\N	\N	\N	\N
6535	545	6	4	0	11	0	\N	\N	\N	10
6536	545	7	0	0	0	0	8	8	8	8
6537	545	8	0	0	0	0	8	8	8	8
6538	545	9	0	0	0	0	8	8	8	8
6539	545	10	0	0	0	0	8	8	8	8
6540	545	11	0	0	0	0	8	8	8	8
6541	546	0	5	8	16	2	6	15	\N	\N
6542	546	1	4	7	15	2	6	15	\N	\N
6543	546	2	8	7	15	1	\N	15	\N	\N
6544	546	3	7	6	14	1	\N	15	\N	\N
6545	546	4	6	6	13	1	\N	\N	\N	\N
6546	546	5	5	5	12	1	\N	\N	\N	\N
6547	546	6	4	0	11	0	\N	\N	\N	10
6548	546	7	0	0	0	0	8	8	8	8
6549	546	8	0	0	0	0	8	8	8	8
6550	546	9	0	0	0	0	8	8	8	8
6551	546	10	0	0	0	0	8	8	8	8
6552	546	11	0	0	0	0	8	8	8	8
6553	547	0	8	9	16	2	30	40	2	3
6554	547	1	7	9	16	2	\N	\N	2	3
6555	547	2	6	8	15	2	\N	\N	2	3
6556	547	3	5	7	14	2	\N	\N	\N	3
6557	547	4	4	6	13	1	\N	\N	\N	3
6558	547	5	4	5	12	1	\N	\N	32	\N
6559	547	6	2	0	11	0	\N	\N	\N	10
6560	547	7	0	0	0	0	8	8	8	8
6561	547	8	0	0	0	0	8	8	8	8
6562	547	9	0	0	0	0	8	8	8	8
6563	547	10	0	0	0	0	8	8	8	8
6564	547	11	0	0	0	0	8	8	8	8
6565	548	0	8	10	17	3	30	40	2	3
6566	548	1	8	9	16	2	30	40	2	3
6567	548	2	7	9	16	2	\N	\N	2	3
6568	548	3	6	8	15	2	\N	\N	2	3
6569	548	4	5	7	14	2	\N	\N	32	3
6570	548	5	4	6	13	1	\N	\N	32	\N
6571	548	6	2	0	11	0	\N	\N	\N	10
6572	548	7	0	0	0	0	8	8	8	8
6573	548	8	0	0	0	0	8	8	8	8
6574	548	9	0	0	0	0	8	8	8	8
6575	548	10	0	0	0	0	8	8	8	8
6576	548	11	0	0	0	0	8	8	8	8
6577	549	0	8	10	17	3	30	40	37	3
6578	549	1	8	10	16	3	30	40	2	3
6579	549	2	8	9	16	2	\N	40	2	3
6580	549	3	7	9	16	2	\N	\N	2	3
6581	549	4	6	8	15	2	\N	\N	2	3
6582	549	5	5	7	14	2	\N	\N	32	3
6583	549	6	4	6	13	1	\N	\N	32	\N
6584	549	7	2	0	11	0	\N	\N	\N	10
6585	549	8	0	0	0	0	8	8	8	8
6586	549	9	0	0	0	0	8	8	8	8
6587	549	10	0	0	0	0	8	8	8	8
6588	549	11	0	0	0	0	8	8	8	8
6589	550	0	10	9	16	3	\N	34	23	3
6590	550	1	8	9	16	3	\N	34	23	3
6591	550	2	7	9	15	2	\N	38	23	3
6592	550	3	6	8	15	2	\N	38	\N	3
6593	550	4	5	7	14	2	\N	38	\N	3
6594	550	5	4	6	13	1	\N	\N	\N	3
6595	550	6	2	0	11	0	\N	\N	\N	10
6596	550	7	0	0	0	0	8	8	8	8
6597	550	8	0	0	0	0	8	8	8	8
6598	550	9	0	0	0	0	8	8	8	8
6599	550	10	0	0	0	0	8	8	8	8
6600	550	11	0	0	0	0	8	8	8	8
6601	551	0	10	10	16	3	30	34	23	3
6602	551	1	9	10	16	3	30	34	23	3
6603	551	2	8	9	16	3	\N	38	23	3
6604	551	3	7	9	15	3	\N	38	\N	3
6605	551	4	6	8	15	2	\N	38	\N	3
6606	551	5	5	7	14	2	\N	\N	\N	3
6607	551	6	4	6	13	1	\N	\N	\N	3
6608	551	7	2	0	11	0	\N	\N	\N	10
6609	551	8	0	0	0	0	8	8	8	8
6610	551	9	0	0	0	0	8	8	8	8
6611	551	10	0	0	0	0	8	8	8	8
6612	551	11	0	0	0	0	8	8	8	8
6613	552	0	10	10	17	3	30	34	23	3
6614	552	1	10	10	16	3	30	34	23	3
6615	552	2	9	10	16	3	\N	34	23	3
6616	552	3	9	10	16	3	\N	38	23	3
6617	552	4	8	9	16	3	\N	38	\N	3
6618	552	5	7	9	15	3	\N	38	\N	3
6619	552	6	6	8	15	2	\N	38	\N	3
6620	552	7	5	7	14	2	\N	\N	\N	3
6621	552	8	4	6	13	1	\N	\N	\N	3
6622	552	9	4	0	11	0	\N	\N	\N	10
6623	552	10	0	0	0	0	8	8	8	8
6624	552	11	0	0	0	0	8	8	8	8
6625	553	0	6	8	17	2	\N	\N	37	\N
6626	553	1	6	8	16	2	\N	\N	37	\N
6627	553	2	6	7	16	2	\N	\N	\N	\N
6628	553	3	5	7	15	2	\N	\N	\N	\N
6629	553	4	4	6	13	2	\N	\N	\N	\N
6630	553	5	2	4	11	2	\N	\N	\N	\N
6631	553	6	0	0	0	0	8	8	8	8
6632	553	7	0	0	0	0	8	8	8	8
6633	553	8	0	0	0	0	8	8	8	8
6634	553	9	0	0	0	0	8	8	8	8
6635	553	10	0	0	0	0	8	8	8	8
6636	553	11	0	0	0	0	8	8	8	8
6637	554	0	6	8	17	2	\N	\N	37	\N
6638	554	1	6	8	16	2	\N	\N	37	\N
6639	554	2	6	8	16	2	\N	\N	\N	\N
6640	554	3	5	8	15	2	\N	\N	\N	\N
6641	554	4	5	7	15	2	\N	\N	\N	\N
6642	554	5	4	6	13	2	\N	\N	\N	\N
6643	554	6	2	4	11	2	\N	\N	\N	\N
6644	554	7	0	0	0	0	8	8	8	8
6645	554	8	0	0	0	0	8	8	8	8
6646	554	9	0	0	0	0	8	8	8	8
6647	554	10	0	0	0	0	8	8	8	8
6648	554	11	0	0	0	0	8	8	8	8
6649	555	0	6	9	17	2	\N	\N	37	\N
6650	555	1	6	8	16	2	\N	\N	37	\N
6651	555	2	6	8	16	2	\N	\N	37	\N
6652	555	3	5	8	15	2	\N	\N	\N	\N
6653	555	4	5	7	15	2	\N	\N	\N	\N
6654	555	5	4	7	14	2	\N	\N	\N	\N
6655	555	6	2	6	12	2	\N	\N	\N	\N
6656	555	7	0	0	0	0	8	8	8	8
6657	555	8	0	0	0	0	8	8	8	8
6658	555	9	0	0	0	0	8	8	8	8
6659	555	10	0	0	0	0	8	8	8	8
6660	555	11	0	0	0	0	8	8	8	8
6661	556	0	6	10	16	3	\N	36	23	\N
6662	556	1	6	10	15	3	\N	36	23	\N
6663	556	2	5	9	15	2	\N	\N	23	3
6664	556	3	5	8	14	2	\N	\N	23	3
6665	556	4	5	8	13	2	\N	\N	\N	3
6666	556	5	4	7	12	1	\N	\N	\N	3
6667	556	6	4	6	11	1	\N	\N	\N	3
6668	556	7	0	0	0	0	8	8	8	8
6669	556	8	0	0	0	0	8	8	8	8
6670	556	9	0	0	0	0	8	8	8	8
6671	556	10	0	0	0	0	8	8	8	8
6672	556	11	0	0	0	0	8	8	8	8
6673	557	0	6	11	17	3	\N	36	23	\N
6674	557	1	6	11	16	3	\N	36	23	\N
6675	557	2	6	10	15	3	\N	36	23	\N
6676	557	3	5	9	15	3	\N	\N	23	3
6677	557	4	5	8	14	2	\N	\N	\N	3
6678	557	5	5	8	13	2	\N	\N	\N	3
6679	557	6	4	7	12	1	\N	\N	\N	3
6680	557	7	4	6	11	1	\N	\N	\N	3
6681	557	8	0	0	0	0	8	8	8	8
6682	557	9	0	0	0	0	8	8	8	8
6683	557	10	0	0	0	0	8	8	8	8
6684	557	11	0	0	0	0	8	8	8	8
6685	558	0	6	11	17	3	\N	36	23	\N
6686	558	1	6	11	16	3	\N	36	23	\N
6687	558	2	6	10	16	3	\N	36	23	\N
6688	558	3	6	10	15	3	\N	\N	23	3
6689	558	4	5	9	15	3	\N	\N	23	3
6690	558	5	5	8	14	2	\N	\N	\N	3
6691	558	6	5	8	13	2	\N	\N	\N	3
6692	558	7	4	7	12	1	\N	\N	\N	3
6693	558	8	4	6	11	1	\N	\N	\N	3
6694	558	9	0	0	0	0	8	8	8	8
6695	558	10	0	0	0	0	8	8	8	8
6696	558	11	0	0	0	0	8	8	8	8
6697	559	0	12	8	15	2	14	\N	\N	\N
6698	559	1	10	8	15	2	14	\N	\N	\N
6699	559	2	9	8	14	2	14	\N	\N	\N
6700	559	3	7	6	12	2	\N	\N	\N	\N
6701	559	4	5	5	11	1	\N	\N	\N	\N
6702	559	5	4	0	10	0	\N	\N	\N	10
6703	559	6	0	0	0	0	8	8	8	8
6704	559	7	0	0	0	0	8	8	8	8
6705	559	8	0	0	0	0	8	8	8	8
6706	559	9	0	0	0	0	8	8	8	8
6707	559	10	0	0	0	0	8	8	8	8
6708	559	11	0	0	0	0	8	8	8	8
6709	560	0	12	9	16	3	14	\N	\N	\N
6710	560	1	10	9	15	3	14	\N	\N	\N
6711	560	2	9	9	15	3	14	\N	\N	\N
6712	560	3	7	7	13	2	\N	\N	\N	\N
6713	560	4	6	6	12	2	\N	\N	\N	\N
6714	560	5	5	5	11	1	\N	\N	\N	\N
6715	560	6	4	0	10	0	\N	\N	\N	10
6716	560	7	0	0	0	0	8	8	8	8
6717	560	8	0	0	0	0	8	8	8	8
6718	560	9	0	0	0	0	8	8	8	8
6719	560	10	0	0	0	0	8	8	8	8
6720	560	11	0	0	0	0	8	8	8	8
6721	561	0	12	9	17	3	14	\N	\N	\N
6722	561	1	10	9	16	3	14	\N	\N	\N
6723	561	2	10	9	15	3	14	\N	\N	\N
6724	561	3	9	9	15	3	14	\N	\N	\N
6725	561	4	7	7	13	2	\N	\N	\N	\N
6726	561	5	6	6	12	2	\N	\N	\N	\N
6727	561	6	5	5	11	1	\N	\N	\N	\N
6728	561	7	4	0	10	0	\N	\N	\N	10
6729	561	8	0	0	0	0	8	8	8	8
6730	561	9	0	0	0	0	8	8	8	8
6731	561	10	0	0	0	0	8	8	8	8
6732	561	11	0	0	0	0	8	8	8	8
6733	562	0	8	8	14	2	\N	33	2	3
6734	562	1	7	7	12	2	\N	\N	\N	4
6735	562	2	4	0	11	0	\N	\N	\N	10
6736	562	3	0	0	0	0	8	8	8	8
6737	562	4	0	0	0	0	8	8	8	8
6738	562	5	0	0	0	0	8	8	8	8
6739	562	6	0	0	0	0	8	8	8	8
6740	562	7	0	0	0	0	8	8	8	8
6741	562	8	0	0	0	0	8	8	8	8
6742	562	9	0	0	0	0	8	8	8	8
6743	562	10	0	0	0	0	8	8	8	8
6744	562	11	0	0	0	0	8	8	8	8
6745	563	0	8	8	15	2	\N	33	2	3
6746	563	1	6	7	14	1	\N	\N	\N	3
6747	563	2	5	6	13	1	\N	\N	\N	\N
6748	563	3	7	7	12	2	\N	\N	\N	4
6749	563	4	4	0	11	0	\N	\N	\N	10
6750	563	5	0	0	0	0	8	8	8	8
6751	563	6	0	0	0	0	8	8	8	8
6752	563	7	0	0	0	0	8	8	8	8
6753	563	8	0	0	0	0	8	8	8	8
6754	563	9	0	0	0	0	8	8	8	8
6755	563	10	0	0	0	0	8	8	8	8
6756	563	11	0	0	0	0	8	8	8	8
6757	564	0	8	9	15	2	\N	33	2	3
6758	564	1	6	8	14	2	\N	\N	2	3
6759	564	2	5	7	13	1	\N	\N	\N	\N
6760	564	3	7	8	12	2	\N	\N	\N	4
6761	564	4	4	0	11	0	\N	\N	\N	10
6762	564	5	0	0	0	0	8	8	8	8
6763	564	6	0	0	0	0	8	8	8	8
6764	564	7	0	0	0	0	8	8	8	8
6765	564	8	0	0	0	0	8	8	8	8
6766	564	9	0	0	0	0	8	8	8	8
6767	564	10	0	0	0	0	8	8	8	8
6768	564	11	0	0	0	0	8	8	8	8
6769	565	0	8	7	15	2	\N	18	9	20
6770	565	1	8	7	14	2	\N	\N	\N	20
6771	565	2	6	5	12	2	\N	\N	\N	20
6772	565	3	4	4	11	1	\N	\N	\N	\N
6773	565	4	2	0	11	0	\N	\N	\N	10
6774	565	5	0	0	0	0	8	8	8	8
6775	565	6	0	0	0	0	8	8	8	8
6776	565	7	0	0	0	0	8	8	8	8
6777	565	8	0	0	0	0	8	8	8	8
6778	565	9	0	0	0	0	8	8	8	8
6779	565	10	0	0	0	0	8	8	8	8
6780	565	11	0	0	0	0	8	8	8	8
6781	566	0	8	7	16	2	\N	18	9	20
6782	566	1	8	7	15	2	\N	18	\N	20
6783	566	2	8	7	14	2	\N	\N	\N	20
6784	566	3	6	5	12	1	\N	\N	\N	\N
6785	566	4	4	4	11	1	\N	\N	\N	\N
6786	566	5	2	0	10	0	\N	\N	\N	10
6787	566	6	0	0	0	0	8	8	8	8
6788	566	7	0	0	0	0	8	8	8	8
6789	566	8	0	0	0	0	8	8	8	8
6790	566	9	0	0	0	0	8	8	8	8
6791	566	10	0	0	0	0	8	8	8	8
6792	566	11	0	0	0	0	8	8	8	8
6793	567	0	8	8	16	2	\N	18	9	20
6794	567	1	8	7	15	2	\N	18	9	20
6795	567	2	8	7	14	2	\N	\N	\N	20
6796	567	3	6	5	12	1	\N	\N	\N	\N
6797	567	4	4	4	11	1	\N	\N	\N	\N
6798	567	5	2	0	10	0	\N	\N	\N	10
6799	567	6	0	0	0	0	8	8	8	8
6800	567	7	0	0	0	0	8	8	8	8
6801	567	8	0	0	0	0	8	8	8	8
6802	567	9	0	0	0	0	8	8	8	8
6803	567	10	0	0	0	0	8	8	8	8
6804	567	11	0	0	0	0	8	8	8	8
6805	568	0	6	10	13	3	\N	12	37	3
6806	568	1	6	9	13	3	\N	12	\N	3
6807	568	2	5	8	12	3	\N	12	\N	\N
6808	568	3	5	6	12	1	\N	\N	\N	\N
6809	568	4	4	4	11	1	\N	\N	32	\N
6810	568	5	4	0	10	0	\N	\N	\N	10
6811	568	6	0	0	0	0	8	8	8	8
6812	568	7	0	0	0	0	8	8	8	8
6813	568	8	0	0	0	0	8	8	8	8
6814	568	9	0	0	0	0	8	8	8	8
6815	568	10	0	0	0	0	8	8	8	8
6816	568	11	0	0	0	0	8	8	8	8
6817	569	0	6	10	15	3	\N	12	37	3
6818	569	1	6	10	14	3	\N	12	\N	3
6819	569	2	6	9	13	3	\N	12	\N	\N
6820	569	3	5	8	12	3	\N	12	\N	\N
6821	569	4	5	6	12	1	\N	\N	\N	\N
6822	569	5	4	4	11	1	\N	\N	32	\N
6823	569	6	4	0	11	0	\N	\N	\N	10
6824	569	7	0	0	0	0	8	8	8	8
6825	569	8	0	0	0	0	8	8	8	8
6826	569	9	0	0	0	0	8	8	8	8
6827	569	10	0	0	0	0	8	8	8	8
6828	569	11	0	0	0	0	8	8	8	8
6829	570	0	6	11	15	4	\N	12	37	3
6830	570	1	6	10	15	4	\N	12	37	3
6831	570	2	6	10	14	4	\N	12	\N	3
6832	570	3	6	9	13	4	\N	12	\N	\N
6833	570	4	5	8	12	4	\N	12	\N	\N
6834	570	5	5	6	12	1	\N	\N	\N	\N
6835	570	6	4	4	11	1	\N	\N	32	\N
6836	570	7	4	0	11	0	\N	\N	\N	10
6837	570	8	0	0	0	0	8	8	8	8
6838	570	9	0	0	0	0	8	8	8	8
6839	570	10	0	0	0	0	8	8	8	8
6840	570	11	0	0	0	0	8	8	8	8
6841	571	0	6	9	13	3	\N	\N	\N	3
6842	571	1	6	8	12	3	\N	\N	\N	3
6843	571	2	5	8	12	2	\N	\N	\N	3
6844	571	3	5	7	12	2	\N	\N	\N	3
6845	571	4	4	7	11	2	\N	\N	\N	3
6846	571	5	4	6	11	1	\N	\N	32	\N
6847	571	6	4	5	10	1	\N	\N	32	\N
6848	571	7	0	0	0	0	8	8	8	8
6849	571	8	0	0	0	0	8	8	8	8
6850	571	9	0	0	0	0	8	8	8	8
6851	571	10	0	0	0	0	8	8	8	8
6852	571	11	0	0	0	0	8	8	8	8
6853	572	0	6	9	14	3	\N	\N	\N	3
6854	572	1	6	9	13	3	\N	\N	\N	3
6855	572	2	6	8	12	2	\N	\N	\N	3
6856	572	3	5	8	12	2	\N	\N	\N	3
6857	572	4	5	7	12	2	\N	\N	\N	3
6858	572	5	4	7	11	2	\N	\N	\N	3
6859	572	6	4	6	11	1	\N	\N	32	\N
6860	572	7	4	5	10	1	\N	\N	32	\N
6861	572	8	0	0	0	0	8	8	8	8
6862	572	9	0	0	0	0	8	8	8	8
6863	572	10	0	0	0	0	8	8	8	8
6864	572	11	0	0	0	0	8	8	8	8
6865	573	0	6	9	14	3	\N	\N	\N	3
6866	573	1	6	9	14	3	\N	\N	\N	3
6867	573	2	6	9	13	3	\N	\N	\N	3
6868	573	3	5	8	13	2	\N	\N	\N	3
6869	573	4	5	8	12	2	\N	\N	\N	3
6870	573	5	5	7	12	2	\N	\N	\N	3
6871	573	6	4	7	11	1	\N	\N	32	\N
6872	573	7	4	6	11	1	\N	\N	32	\N
6873	573	8	4	5	10	1	\N	\N	32	\N
6874	573	9	0	0	0	0	8	8	8	8
6875	573	10	0	0	0	0	8	8	8	8
6876	573	11	0	0	0	0	8	8	8	8
6877	574	0	10	10	17	2	13	22	9	\N
6878	574	1	9	9	16	2	13	22	9	\N
6879	574	2	8	7	16	2	13	38	\N	3
6880	574	3	7	6	15	2	13	38	\N	3
6881	574	4	6	5	15	1	13	\N	\N	3
6882	574	5	5	4	13	1	\N	\N	\N	3
6883	574	6	4	0	11	0	\N	\N	\N	10
6884	574	7	0	0	0	0	8	8	8	8
6885	574	8	0	0	0	0	8	8	8	8
6886	574	9	0	0	0	0	8	8	8	8
6887	574	10	0	0	0	0	8	8	8	8
6888	574	11	0	0	0	0	8	8	8	8
6889	575	0	10	10	17	2	13	22	9	\N
6890	575	1	9	10	17	2	13	22	9	\N
6891	575	2	9	9	16	2	13	38	\N	3
6892	575	3	8	7	15	2	13	38	\N	3
6893	575	4	7	6	15	2	13	38	\N	3
6894	575	5	6	5	15	1	\N	\N	\N	3
6895	575	6	5	4	13	1	\N	\N	\N	3
6896	575	7	4	0	11	0	\N	\N	\N	10
6897	575	8	0	0	0	0	8	8	8	8
6898	575	9	0	0	0	0	8	8	8	8
6899	575	10	0	0	0	0	8	8	8	8
6900	575	11	0	0	0	0	8	8	8	8
6901	576	0	10	11	17	2	13	22	9	\N
6902	576	1	9	10	17	2	13	22	9	\N
6903	576	2	9	9	17	2	13	22	9	\N
6904	576	3	8	7	16	2	13	38	\N	3
6905	576	4	7	7	15	2	13	38	\N	3
6906	576	5	6	6	15	1	\N	38	\N	3
6907	576	6	5	4	13	1	\N	\N	\N	3
6908	576	7	4	0	11	0	\N	\N	\N	10
6909	576	8	0	0	0	0	8	8	8	8
6910	576	9	0	0	0	0	8	8	8	8
6911	576	10	0	0	0	0	8	8	8	8
6912	576	11	0	0	0	0	8	8	8	8
6913	577	0	10	9	15	2	13	\N	\N	3
6914	577	1	9	9	14	2	13	\N	\N	3
6915	577	2	9	8	13	2	13	38	\N	3
6916	577	3	8	8	12	2	13	38	\N	3
6917	577	4	7	6	11	2	\N	\N	\N	\N
6918	577	5	5	0	10	0	\N	\N	\N	10
6919	577	6	0	0	0	0	8	8	8	8
6920	577	7	0	0	0	0	8	8	8	8
6921	577	8	0	0	0	0	8	8	8	8
6922	577	9	0	0	0	0	8	8	8	8
6923	577	10	0	0	0	0	8	8	8	8
6924	577	11	0	0	0	0	8	8	8	8
6925	578	0	10	10	15	2	13	\N	\N	3
6926	578	1	10	9	15	2	13	\N	\N	3
6927	578	2	9	9	14	2	13	38	\N	3
6928	578	3	9	8	13	2	13	38	\N	3
6929	578	4	8	7	12	2	13	\N	\N	3
6930	578	5	7	5	11	2	\N	\N	\N	\N
6931	578	6	5	0	10	0	\N	\N	\N	10
6932	578	7	0	0	0	0	8	8	8	8
6933	578	8	0	0	0	0	8	8	8	8
6934	578	9	0	0	0	0	8	8	8	8
6935	578	10	0	0	0	0	8	8	8	8
6936	578	11	0	0	0	0	8	8	8	8
6937	579	0	10	11	15	2	13	\N	\N	3
6938	579	1	10	10	15	2	13	\N	\N	3
6939	579	2	9	9	15	2	13	38	\N	3
6940	579	3	9	9	14	2	13	38	\N	3
6941	579	4	8	8	13	2	13	\N	\N	3
6942	579	5	7	6	12	2	\N	\N	\N	\N
6943	579	6	5	0	11	0	\N	\N	\N	10
6944	579	7	0	0	0	0	8	8	8	8
6945	579	8	0	0	0	0	8	8	8	8
6946	579	9	0	0	0	0	8	8	8	8
6947	579	10	0	0	0	0	8	8	8	8
6948	579	11	0	0	0	0	8	8	8	8
6949	580	0	6	9	13	3	\N	33	\N	\N
6950	580	1	0	0	0	0	8	8	8	8
6951	580	2	0	0	0	0	8	8	8	8
6952	580	3	0	0	0	0	8	8	8	8
6953	580	4	0	0	0	0	8	8	8	8
6954	580	5	0	0	0	0	8	8	8	8
6955	580	6	0	0	0	0	8	8	8	8
6956	580	7	0	0	0	0	8	8	8	8
6957	580	8	0	0	0	0	8	8	8	8
6958	580	9	0	0	0	0	8	8	8	8
6959	580	10	0	0	0	0	8	8	8	8
6960	580	11	0	0	0	0	8	8	8	8
6961	581	0	6	10	14	4	\N	33	37	\N
6962	581	1	4	6	10	1	\N	\N	\N	\N
6963	581	2	0	0	0	0	8	8	8	8
6964	581	3	0	0	0	0	8	8	8	8
6965	581	4	0	0	0	0	8	8	8	8
6966	581	5	0	0	0	0	8	8	8	8
6967	581	6	0	0	0	0	8	8	8	8
6968	581	7	0	0	0	0	8	8	8	8
6969	581	8	0	0	0	0	8	8	8	8
6970	581	9	0	0	0	0	8	8	8	8
6971	581	10	0	0	0	0	8	8	8	8
6972	581	11	0	0	0	0	8	8	8	8
6973	582	0	6	10	14	4	\N	33	37	\N
6974	582	1	5	8	12	3	\N	33	\N	\N
6975	582	2	4	6	10	1	\N	\N	\N	\N
6976	582	3	0	0	0	0	8	8	8	8
6977	582	4	0	0	0	0	8	8	8	8
6978	582	5	0	0	0	0	8	8	8	8
6979	582	6	0	0	0	0	8	8	8	8
6980	582	7	0	0	0	0	8	8	8	8
6981	582	8	0	0	0	0	8	8	8	8
6982	582	9	0	0	0	0	8	8	8	8
6983	582	10	0	0	0	0	8	8	8	8
6984	582	11	0	0	0	0	8	8	8	8
6985	583	0	6	8	15	2	\N	15	2	\N
6986	583	1	5	7	14	1	\N	15	23	\N
6987	583	2	5	6	13	1	\N	\N	23	3
6988	583	3	4	5	12	1	\N	\N	\N	3
6989	583	4	2	0	11	0	\N	\N	\N	10
6990	583	5	0	0	0	0	8	8	8	8
6991	583	6	0	0	0	0	8	8	8	8
6992	583	7	0	0	0	0	8	8	8	8
6993	583	8	0	0	0	0	8	8	8	8
6994	583	9	0	0	0	0	8	8	8	8
6995	583	10	0	0	0	0	8	8	8	8
6996	583	11	0	0	0	0	8	8	8	8
6997	584	0	6	9	16	2	\N	15	2	\N
6998	584	1	6	8	15	1	\N	15	23	\N
6999	584	2	5	7	14	1	\N	15	23	\N
7000	584	3	5	6	13	1	\N	\N	\N	3
7001	584	4	4	5	12	1	\N	\N	\N	3
7002	584	5	2	0	11	0	\N	\N	\N	10
7003	584	6	0	0	0	0	8	8	8	8
7004	584	7	0	0	0	0	8	8	8	8
7005	584	8	0	0	0	0	8	8	8	8
7006	584	9	0	0	0	0	8	8	8	8
7007	584	10	0	0	0	0	8	8	8	8
7008	584	11	0	0	0	0	8	8	8	8
7009	585	0	6	9	16	2	\N	15	2	\N
7010	585	1	6	8	15	2	\N	15	23	\N
7011	585	2	5	7	14	1	\N	15	23	\N
7012	585	3	5	6	13	1	\N	\N	\N	3
7013	585	4	4	5	12	1	\N	\N	\N	3
7014	585	5	4	4	11	1	\N	\N	\N	\N
7015	585	6	2	0	11	0	\N	\N	\N	10
7016	585	7	0	0	0	0	8	8	8	8
7017	585	8	0	0	0	0	8	8	8	8
7018	585	9	0	0	0	0	8	8	8	8
7019	585	10	0	0	0	0	8	8	8	8
7020	585	11	0	0	0	0	8	8	8	8
7021	586	0	8	10	17	3	\N	12	37	3
7022	586	1	8	9	16	3	\N	12	37	3
7023	586	2	7	9	14	3	\N	12	2	3
7024	586	3	7	9	14	3	\N	\N	2	3
7025	586	4	6	8	13	3	\N	\N	\N	3
7026	586	5	5	7	12	3	\N	\N	\N	3
7027	586	6	4	6	11	2	\N	\N	\N	3
7028	586	7	3	5	10	1	\N	\N	\N	3
7029	586	8	2	4	10	1	\N	\N	\N	\N
7030	586	9	0	0	0	0	8	8	8	8
7031	586	10	0	0	0	0	8	8	8	8
7032	586	11	0	0	0	0	8	8	8	8
7033	587	0	8	10	17	3	\N	12	37	3
7034	587	1	8	9	17	3	\N	12	37	3
7035	587	2	7	9	15	3	\N	12	2	3
7036	587	3	7	8	15	3	\N	12	2	3
7037	587	4	6	8	15	3	\N	\N	\N	3
7038	587	5	6	7	14	3	\N	\N	\N	3
7039	587	6	5	7	13	2	\N	\N	\N	3
7040	587	7	4	6	12	2	\N	\N	\N	3
7041	587	8	3	5	11	1	\N	\N	\N	\N
7042	587	9	2	4	10	1	\N	\N	\N	\N
7043	587	10	0	0	0	0	8	8	8	8
7044	587	11	0	0	0	0	8	8	8	8
7045	588	0	8	11	18	3	\N	12	37	3
7046	588	1	8	10	17	3	\N	12	37	3
7047	588	2	7	9	16	3	\N	12	37	3
7048	588	3	7	8	15	3	\N	12	2	3
7049	588	4	6	8	15	3	\N	12	2	3
7050	588	5	6	7	14	3	\N	\N	\N	3
7051	588	6	5	7	13	2	\N	\N	\N	3
7052	588	7	4	6	12	2	\N	\N	\N	3
7053	588	8	3	5	11	1	\N	\N	\N	\N
7054	588	9	2	4	10	1	\N	\N	\N	\N
7055	588	10	0	0	0	0	8	8	8	8
7056	588	11	0	0	0	0	8	8	8	8
7057	589	0	8	9	14	2	27	34	11	3
7058	589	1	7	8	14	2	27	34	\N	3
7059	589	2	6	7	13	1	27	\N	\N	3
7060	589	3	5	6	13	1	\N	\N	\N	3
7061	589	4	4	5	12	1	\N	\N	32	\N
7062	589	5	4	4	11	1	\N	\N	37	3
7063	589	6	0	0	0	0	8	8	8	8
7064	589	7	0	0	0	0	8	8	8	8
7065	589	8	0	0	0	0	8	8	8	8
7066	589	9	0	0	0	0	8	8	8	8
7067	589	10	0	0	0	0	8	8	8	8
7068	589	11	0	0	0	0	8	8	8	8
7069	590	0	8	10	14	2	27	34	11	3
7070	590	1	8	8	14	2	27	34	\N	3
7071	590	2	7	7	13	1	27	\N	\N	3
7072	590	3	6	6	13	1	\N	\N	\N	3
7073	590	4	5	5	12	1	\N	\N	32	\N
7074	590	5	4	4	11	1	\N	\N	37	3
7075	590	6	0	0	0	0	8	8	8	8
7076	590	7	0	0	0	0	8	8	8	8
7077	590	8	0	0	0	0	8	8	8	8
7078	590	9	0	0	0	0	8	8	8	8
7079	590	10	0	0	0	0	8	8	8	8
7080	590	11	0	0	0	0	8	8	8	8
7081	591	0	8	10	14	2	27	34	11	3
7082	591	1	8	9	14	2	27	34	\N	3
7083	591	2	8	8	13	2	27	\N	\N	3
7084	591	3	7	7	13	1	\N	\N	\N	3
7085	591	4	6	6	12	1	\N	\N	32	\N
7086	591	5	5	5	11	1	\N	\N	37	3
7087	591	6	0	0	0	0	8	8	8	8
7088	591	7	0	0	0	0	8	8	8	8
7089	591	8	0	0	0	0	8	8	8	8
7090	591	9	0	0	0	0	8	8	8	8
7091	591	10	0	0	0	0	8	8	8	8
7092	591	11	0	0	0	0	8	8	8	8
7093	592	0	8	9	15	3	1	39	37	3
7094	592	1	8	8	15	2	1	39	\N	3
7095	592	2	7	7	14	2	1	\N	\N	3
7096	592	3	5	5	13	1	\N	\N	\N	3
7097	592	4	4	0	11	0	\N	\N	\N	10
7098	592	5	0	0	0	0	8	8	8	8
7099	592	6	0	0	0	0	8	8	8	8
7100	592	7	0	0	0	0	8	8	8	8
7101	592	8	0	0	0	0	8	8	8	8
7102	592	9	0	0	0	0	8	8	8	8
7103	592	10	0	0	0	0	8	8	8	8
7104	592	11	0	0	0	0	8	8	8	8
7105	593	0	8	9	15	3	1	39	37	3
7106	593	1	8	9	15	2	1	39	\N	3
7107	593	2	7	8	14	2	1	\N	\N	3
7108	593	3	6	6	13	2	1	\N	\N	3
7109	593	4	5	5	12	1	\N	\N	\N	3
7110	593	5	4	0	11	0	\N	\N	\N	10
7111	593	6	2	0	11	0	\N	\N	\N	10
7112	593	7	0	0	0	0	8	8	8	8
7113	593	8	0	0	0	0	8	8	8	8
7114	593	9	0	0	0	0	8	8	8	8
7115	593	10	0	0	0	0	8	8	8	8
7116	593	11	0	0	0	0	8	8	8	8
7117	594	0	8	10	15	3	1	39	37	3
7118	594	1	8	9	15	3	1	39	\N	3
7119	594	2	8	9	15	2	1	\N	\N	3
7120	594	3	7	8	14	2	1	\N	\N	3
7121	594	4	6	6	13	2	1	\N	\N	3
7122	594	5	5	5	12	1	\N	\N	\N	3
7123	594	6	4	4	12	1	\N	\N	\N	\N
7124	594	7	4	0	11	0	\N	\N	\N	10
7125	594	8	2	0	10	0	\N	\N	\N	10
7126	594	9	0	0	0	0	8	8	8	8
7127	594	10	0	0	0	0	8	8	8	8
7128	594	11	0	0	0	0	8	8	8	8
7129	595	0	6	12	18	4	\N	\N	2	28
7130	595	1	6	12	17	4	\N	\N	2	28
7131	595	2	6	12	16	4	\N	\N	2	28
7132	595	3	5	11	16	4	\N	\N	2	28
7133	595	4	5	11	15	4	\N	\N	2	28
7134	595	5	5	11	15	4	\N	\N	2	\N
7135	595	6	4	10	15	4	\N	\N	2	\N
7136	595	7	4	10	14	3	\N	\N	2	\N
7137	595	8	4	9	14	3	\N	\N	2	\N
7138	595	9	3	8	13	2	\N	\N	2	\N
7139	595	10	2	7	12	2	\N	\N	\N	\N
7140	595	11	0	0	0	0	8	8	8	8
7141	596	0	6	12	17	4	6	\N	2	\N
7142	596	1	5	11	17	4	6	\N	2	\N
7143	596	2	5	10	16	3	6	\N	2	\N
7144	596	3	4	9	16	3	6	\N	\N	\N
7145	596	4	8	9	15	3	\N	\N	\N	\N
7146	596	5	7	8	15	3	\N	\N	\N	\N
7147	596	6	6	7	14	2	\N	\N	\N	\N
7148	596	7	5	6	13	2	\N	\N	\N	\N
7149	596	8	4	5	11	2	\N	\N	\N	\N
7150	596	9	0	0	0	0	8	8	8	8
7151	596	10	0	0	0	0	8	8	8	8
7152	596	11	0	0	0	0	8	8	8	8
7153	597	0	10	12	18	3	\N	\N	23	21
7154	597	1	10	11	17	3	\N	38	23	21
7155	597	2	9	10	17	3	\N	38	23	21
7156	597	3	9	9	16	3	\N	38	23	3
7157	597	4	8	9	15	2	\N	38	23	3
7158	597	5	7	8	14	2	\N	\N	25	26
7159	597	6	6	7	13	2	\N	\N	25	26
7160	597	7	5	6	12	1	\N	\N	25	\N
7161	597	8	4	5	11	1	\N	\N	25	\N
7162	597	9	0	0	0	0	8	8	8	8
7163	597	10	0	0	0	0	8	8	8	8
7164	597	11	0	0	0	0	8	8	8	8
7165	598	0	8	13	19	4	\N	\N	37	3
7166	598	1	8	12	18	4	\N	\N	37	3
7167	598	2	8	11	17	4	\N	\N	37	3
7168	598	3	7	11	16	4	\N	\N	37	3
7169	598	4	7	10	16	4	\N	\N	\N	3
7170	598	5	7	9	15	4	\N	\N	\N	3
7171	598	6	6	8	15	3	\N	\N	\N	3
7172	598	7	6	7	14	3	\N	\N	\N	3
7173	598	8	5	6	13	2	\N	\N	\N	3
7174	598	9	4	5	11	2	\N	\N	\N	\N
7175	598	10	0	0	0	0	8	8	8	8
7176	598	11	0	0	0	0	8	8	8	8
7177	599	0	6	12	17	4	35	39	23	3
7178	599	1	6	12	16	4	35	39	23	3
7179	599	2	6	12	15	4	35	39	23	3
7180	599	3	6	11	15	4	35	39	23	3
7181	599	4	6	11	15	3	35	\N	23	3
7182	599	5	6	11	15	3	35	\N	25	3
7183	599	6	6	10	14	3	35	\N	25	3
7184	599	7	6	9	14	2	35	\N	32	3
7185	599	8	6	8	13	2	35	\N	32	3
7186	599	9	6	7	12	1	35	\N	\N	\N
7187	599	10	0	0	0	0	8	8	8	8
7188	599	11	0	0	0	0	8	8	8	8
7189	600	0	14	11	17	3	13	40	2	3
7190	600	1	13	11	17	3	13	40	2	3
7191	600	2	12	11	17	3	30	40	2	3
7192	600	3	11	10	16	3	30	40	2	3
7193	600	4	10	10	16	3	\N	40	2	3
7194	600	5	9	10	16	3	\N	40	2	3
7195	600	6	8	9	16	3	\N	\N	2	3
7196	600	7	7	8	15	3	\N	\N	\N	3
7197	600	8	6	7	14	3	\N	\N	\N	\N
7198	600	9	0	0	0	0	8	8	8	8
7199	600	10	0	0	0	0	8	8	8	8
7200	600	11	0	0	0	0	8	8	8	8
7201	601	0	14	11	17	3	13	18	23	3
7202	601	1	12	11	17	3	13	18	23	3
7203	601	2	11	10	16	3	31	18	23	3
7204	601	3	10	10	16	3	31	18	23	3
7205	601	4	9	10	16	2	\N	\N	23	3
7206	601	5	8	9	16	2	\N	\N	23	3
7207	601	6	7	9	15	2	\N	\N	\N	3
7208	601	7	6	8	15	2	\N	\N	\N	3
7209	601	8	5	7	14	2	\N	\N	\N	\N
7210	601	9	0	0	0	0	8	8	8	8
7211	601	10	0	0	0	0	8	8	8	8
7212	601	11	0	0	0	0	8	8	8	8
7213	602	0	14	12	18	4	13	12	37	3
7214	602	1	13	11	17	4	13	12	37	3
7215	602	2	6	11	17	4	5	12	37	3
7216	602	3	6	10	16	4	5	12	37	3
7217	602	4	10	10	16	4	\N	12	\N	3
7218	602	5	9	10	16	4	\N	12	\N	3
7219	602	6	8	9	16	4	\N	12	\N	3
7220	602	7	7	8	15	4	\N	\N	\N	3
7221	602	8	6	7	14	3	\N	\N	\N	\N
7222	602	9	0	0	0	0	8	8	8	8
7223	602	10	0	0	0	0	8	8	8	8
7224	602	11	0	0	0	0	8	8	8	8
7225	603	0	14	12	18	5	13	39	11	3
7226	603	1	13	12	17	4	13	39	\N	3
7227	603	2	6	11	17	4	6	39	\N	3
7228	603	3	6	11	16	4	6	39	\N	3
7229	603	4	5	10	16	4	6	39	\N	3
7230	603	5	5	10	16	3	6	39	\N	3
7231	603	6	8	9	16	3	\N	39	\N	3
7232	603	7	7	9	15	3	\N	39	\N	3
7233	603	8	6	8	15	3	\N	\N	\N	3
7234	603	9	5	7	14	3	\N	\N	\N	\N
7235	603	10	0	0	0	0	8	8	8	8
7236	603	11	0	0	0	0	8	8	8	8
7237	604	0	14	14	18	5	13	22	16	7
7238	604	1	14	13	17	4	13	22	37	7
7239	604	2	14	12	17	4	13	22	37	7
7240	604	3	14	12	17	4	13	22	\N	7
7241	604	4	14	11	16	4	13	33	32	7
7242	604	5	13	11	16	4	13	33	32	3
7243	604	6	13	10	16	4	13	33	32	3
7244	604	7	12	10	15	4	13	33	\N	3
7245	604	8	12	9	15	3	13	\N	\N	3
7246	604	9	11	8	14	3	13	\N	\N	3
7247	604	10	10	7	14	3	13	\N	\N	\N
7248	604	11	0	0	0	0	8	8	8	8
7249	605	0	10	10	17	4	\N	18	2	7
7250	605	1	10	10	17	3	\N	18	2	7
7251	605	2	9	10	16	3	\N	18	2	\N
7252	605	3	8	10	16	3	\N	18	2	\N
7253	605	4	8	10	15	3	\N	18	2	\N
7254	605	5	7	9	15	2	\N	\N	2	\N
7255	605	6	6	8	14	1	\N	\N	\N	\N
7256	605	7	5	7	13	1	\N	\N	\N	\N
7257	605	8	4	6	12	1	\N	\N	\N	\N
7258	605	9	4	6	11	1	\N	\N	\N	\N
7259	605	10	4	0	10	0	\N	\N	\N	10
7260	605	11	0	0	0	0	8	8	8	8
7261	606	0	6	9	15	3	6	15	11	\N
7262	606	1	5	9	16	2	6	15	\N	\N
7263	606	2	5	8	16	2	6	15	\N	\N
7264	606	3	5	7	16	2	6	15	\N	\N
7265	606	4	5	7	15	2	6	15	\N	\N
7266	606	5	4	7	15	1	6	15	\N	\N
7267	606	6	7	7	14	1	\N	15	\N	\N
7268	606	7	6	6	13	1	\N	\N	\N	\N
7269	606	8	5	6	13	1	\N	\N	\N	\N
7270	606	9	4	6	12	1	\N	\N	\N	\N
7271	606	10	4	0	11	0	\N	\N	\N	10
7272	606	11	0	0	0	0	8	8	8	8
7273	607	0	10	10	17	3	30	40	37	7
7274	607	1	9	10	17	3	30	40	37	7
7275	607	2	9	10	17	3	30	40	37	3
7276	607	3	8	10	16	3	30	40	2	3
7277	607	4	8	9	16	2	30	40	2	3
7278	607	5	7	9	16	2	\N	40	2	3
7279	607	6	6	8	15	2	\N	\N	2	3
7280	607	7	5	7	14	2	\N	\N	32	3
7281	607	8	4	6	13	1	\N	\N	32	\N
7282	607	9	4	0	11	0	\N	\N	\N	10
7283	607	10	0	0	0	0	8	8	8	8
7284	607	11	0	0	0	0	8	8	8	8
7285	608	0	10	10	18	3	\N	34	25	3
7286	608	1	10	10	17	3	\N	34	25	3
7287	608	2	10	10	17	3	30	34	23	3
7288	608	3	10	10	16	3	30	34	23	3
7289	608	4	9	10	16	3	30	34	23	3
7290	608	5	8	9	16	3	\N	38	23	3
7291	608	6	7	9	15	3	\N	38	\N	3
7292	608	7	6	8	15	2	\N	38	\N	3
7293	608	8	5	7	14	2	\N	\N	\N	3
7294	608	9	4	6	13	1	\N	\N	\N	3
7295	608	10	4	0	11	0	\N	\N	\N	10
7296	608	11	0	0	0	0	8	8	8	8
7297	609	0	8	11	17	4	14	36	23	7
7298	609	1	8	11	17	3	14	36	23	7
7299	609	2	7	11	17	3	\N	36	23	\N
7300	609	3	6	11	17	3	\N	36	23	\N
7301	609	4	6	11	16	3	\N	36	23	\N
7302	609	5	6	10	15	3	\N	36	23	\N
7303	609	6	5	9	15	3	\N	\N	23	3
7304	609	7	5	8	14	2	\N	\N	\N	3
7305	609	8	5	8	13	2	\N	\N	\N	3
7306	609	9	4	7	12	1	\N	\N	\N	3
7307	609	10	4	6	11	1	\N	\N	\N	3
7308	609	11	0	0	0	0	8	8	8	8
7309	610	0	12	10	18	4	14	\N	9	7
7310	610	1	11	10	17	4	14	\N	9	7
7311	610	2	10	10	17	3	14	\N	9	\N
7312	610	3	10	9	17	3	14	\N	\N	\N
7313	610	4	10	9	16	3	14	\N	\N	\N
7314	610	5	10	9	15	3	14	\N	\N	\N
7315	610	6	9	9	15	3	14	\N	\N	\N
7316	610	7	7	7	13	2	\N	\N	\N	\N
7317	610	8	6	6	12	2	\N	\N	\N	\N
7318	610	9	5	6	11	1	\N	\N	\N	\N
7319	610	10	4	0	10	0	\N	\N	\N	10
7320	610	11	0	0	0	0	8	8	8	8
7321	611	0	4	10	17	3	5	\N	2	28
7322	611	1	8	10	16	3	\N	\N	2	28
7323	611	2	8	9	15	3	\N	\N	2	28
7324	611	3	7	9	15	2	\N	\N	2	28
7325	611	4	7	8	15	2	\N	\N	2	\N
7326	611	5	6	7	14	2	\N	\N	2	\N
7327	611	6	6	7	14	2	\N	\N	\N	\N
7328	611	7	5	6	14	2	\N	\N	\N	\N
7329	611	8	5	5	13	2	\N	\N	\N	\N
7330	611	9	4	5	12	2	\N	\N	\N	\N
7331	611	10	0	0	0	0	8	8	8	8
7332	611	11	0	0	0	0	8	8	8	8
7333	612	0	8	12	17	4	\N	\N	37	3
7334	612	1	8	12	16	4	\N	\N	37	3
7335	612	2	7	11	16	3	\N	\N	37	3
7336	612	3	7	10	15	3	\N	\N	\N	3
7337	612	4	6	9	15	2	\N	\N	\N	3
7338	612	5	6	8	14	2	\N	\N	\N	3
7339	612	6	5	7	14	2	\N	\N	\N	3
7340	612	7	5	6	13	1	\N	\N	\N	\N
7341	612	8	7	11	12	4	\N	\N	\N	4
7342	612	9	5	9	11	3	\N	\N	\N	4
7343	612	10	0	0	0	0	8	8	8	8
7344	612	11	0	0	0	0	8	8	8	8
7345	613	0	6	9	17	2	\N	40	37	\N
7346	613	1	6	9	16	2	\N	40	37	\N
7347	613	2	6	8	16	2	\N	\N	37	\N
7348	613	3	5	8	15	2	\N	\N	\N	\N
7349	613	4	5	7	15	2	\N	\N	\N	\N
7350	613	5	4	7	14	2	\N	\N	\N	\N
7351	613	6	4	6	13	2	\N	\N	\N	\N
7352	613	7	2	6	12	2	\N	\N	\N	\N
7353	613	8	2	5	11	2	\N	\N	\N	\N
7354	613	9	0	5	10	2	\N	\N	\N	\N
7355	613	10	0	4	9	2	\N	\N	\N	\N
7356	613	11	0	0	0	0	8	8	8	8
7357	614	0	8	9	15	2	\N	33	2	3
7358	614	1	7	8	15	2	\N	33	2	3
7359	614	2	6	7	14	2	\N	\N	2	3
7360	614	3	5	6	13	1	\N	\N	\N	\N
7361	614	4	7	8	12	2	\N	\N	\N	4
7362	614	5	4	0	11	0	\N	\N	\N	10
7363	614	6	0	0	0	0	8	8	8	8
7364	614	7	0	0	0	0	8	8	8	8
7365	614	8	0	0	0	0	8	8	8	8
7366	614	9	0	0	0	0	8	8	8	8
7367	614	10	0	0	0	0	8	8	8	8
7368	614	11	0	0	0	0	8	8	8	8
7369	615	0	8	8	15	2	\N	\N	25	20
7370	615	1	8	7	14	2	\N	\N	25	20
7371	615	2	6	5	12	2	\N	\N	25	20
7372	615	3	4	4	11	1	\N	\N	\N	20
7373	615	4	2	0	10	0	\N	\N	\N	10
7374	615	5	0	0	0	0	8	8	8	8
7375	615	6	0	0	0	0	8	8	8	8
7376	615	7	0	0	0	0	8	8	8	8
7377	615	8	0	0	0	0	8	8	8	8
7378	615	9	0	0	0	0	8	8	8	8
7379	615	10	0	0	0	0	8	8	8	8
7380	615	11	0	0	0	0	8	8	8	8
7381	616	0	6	11	15	3	\N	12	37	3
7382	616	1	6	10	14	3	\N	12	37	3
7383	616	2	6	9	13	2	\N	12	37	\N
7384	616	3	5	8	12	2	\N	12	37	\N
7385	616	4	5	6	12	1	\N	\N	37	\N
7386	616	5	4	4	11	1	\N	\N	32	\N
7387	616	6	4	0	11	0	\N	\N	\N	10
7388	616	7	0	0	0	0	8	8	8	8
7389	616	8	0	0	0	0	8	8	8	8
7390	616	9	0	0	0	0	8	8	8	8
7391	616	10	0	0	0	0	8	8	8	8
7392	616	11	0	0	0	0	8	8	8	8
7393	617	0	5	9	14	3	\N	39	\N	3
7394	617	1	5	9	14	3	\N	39	\N	3
7395	617	2	5	9	13	3	\N	\N	\N	3
7396	617	3	5	8	13	2	\N	\N	\N	3
7397	617	4	5	8	12	2	\N	\N	\N	3
7398	617	5	4	7	12	2	\N	\N	\N	3
7399	617	6	4	7	11	1	\N	\N	32	\N
7400	617	7	4	6	11	1	\N	\N	32	\N
7401	617	8	4	5	10	1	\N	\N	32	\N
7402	617	9	0	0	0	0	8	8	8	8
7403	617	10	0	0	0	0	8	8	8	8
7404	617	11	0	0	0	0	8	8	8	8
7405	618	0	10	10	17	2	13	15	9	\N
7406	618	1	9	9	16	2	13	15	\N	\N
7407	618	2	8	8	16	2	13	15	\N	\N
7408	618	3	7	7	15	2	13	38	\N	\N
7409	618	4	6	6	15	1	\N	38	\N	\N
7410	618	5	5	5	13	1	\N	\N	\N	\N
7411	618	6	4	0	11	0	\N	\N	\N	10
7412	618	7	0	0	0	0	8	8	8	8
7413	618	8	0	0	0	0	8	8	8	8
7414	618	9	0	0	0	0	8	8	8	8
7415	618	10	0	0	0	0	8	8	8	8
7416	618	11	0	0	0	0	8	8	8	8
7417	619	0	10	11	15	3	13	39	11	3
7418	619	1	10	10	15	3	13	39	\N	3
7419	619	2	9	9	15	2	13	38	\N	3
7420	619	3	9	9	14	2	13	38	\N	3
7421	619	4	8	8	13	2	13	\N	\N	3
7422	619	5	7	6	12	2	13	\N	\N	\N
7423	619	6	5	0	11	0	13	\N	\N	10
7424	619	7	0	0	0	0	8	8	8	8
7425	619	8	0	0	0	0	8	8	8	8
7426	619	9	0	0	0	0	8	8	8	8
7427	619	10	0	0	0	0	8	8	8	8
7428	619	11	0	0	0	0	8	8	8	8
7429	620	0	4	7	14	4	\N	33	\N	\N
7430	620	1	0	0	0	0	8	8	8	8
7431	620	2	0	0	0	0	8	8	8	8
7432	620	3	0	0	0	0	8	8	8	8
7433	620	4	0	0	0	0	8	8	8	8
7434	620	5	0	0	0	0	8	8	8	8
7435	620	6	0	0	0	0	8	8	8	8
7436	620	7	0	0	0	0	8	8	8	8
7437	620	8	0	0	0	0	8	8	8	8
7438	620	9	0	0	0	0	8	8	8	8
7439	620	10	0	0	0	0	8	8	8	8
7440	620	11	0	0	0	0	8	8	8	8
7441	621	0	6	9	16	2	\N	15	23	\N
7442	621	1	6	8	15	1	\N	15	23	\N
7443	621	2	5	7	14	1	\N	15	\N	\N
7444	621	3	5	6	13	1	\N	15	\N	\N
7445	621	4	4	5	12	1	\N	\N	\N	3
7446	621	5	3	0	11	0	\N	\N	\N	10
7447	621	6	0	0	0	0	8	8	8	8
7448	621	7	0	0	0	0	8	8	8	8
7449	621	8	0	0	0	0	8	8	8	8
7450	621	9	0	0	0	0	8	8	8	8
7451	621	10	0	0	0	0	8	8	8	8
7452	621	11	0	0	0	0	8	8	8	8
7453	622	0	8	10	15	3	\N	12	16	3
7454	622	1	8	9	17	3	\N	12	37	3
7455	622	2	7	9	16	3	\N	12	37	3
7456	622	3	7	8	16	2	\N	12	37	3
7457	622	4	6	8	15	2	\N	12	2	3
7458	622	5	6	7	15	2	\N	\N	\N	3
7459	622	6	5	7	14	2	\N	\N	\N	\N
7460	622	7	4	6	13	2	\N	\N	\N	\N
7461	622	8	3	5	12	1	\N	\N	\N	\N
7462	622	9	2	4	11	1	\N	\N	\N	\N
7463	622	10	0	0	0	0	8	8	8	8
7464	622	11	0	0	0	0	8	8	8	8
7465	623	0	8	10	14	2	\N	34	17	3
7466	623	1	8	8	14	2	35	34	11	3
7467	623	2	7	7	13	1	35	\N	\N	3
7468	623	3	6	6	13	1	35	\N	\N	3
7469	623	4	5	5	12	1	35	\N	32	\N
7470	623	5	4	4	11	1	35	\N	\N	\N
7471	623	6	0	0	0	0	8	8	8	8
7472	623	7	0	0	0	0	8	8	8	8
7473	623	8	0	0	0	0	8	8	8	8
7474	623	9	0	0	0	0	8	8	8	8
7475	623	10	0	0	0	0	8	8	8	8
7476	623	11	0	0	0	0	8	8	8	8
7477	624	0	8	10	15	3	1	39	\N	3
7478	624	1	8	9	15	3	1	39	\N	3
7479	624	2	8	9	15	3	1	39	\N	3
7480	624	3	7	8	14	3	1	\N	\N	3
7481	624	4	6	6	13	2	1	\N	\N	3
7482	624	5	5	5	12	2	1	\N	\N	\N
7483	624	6	4	4	12	2	1	\N	\N	\N
7484	624	7	4	0	11	0	1	\N	\N	10
7485	624	8	2	0	10	0	1	\N	\N	10
7486	624	9	0	0	0	0	8	8	8	8
7487	624	10	0	0	0	0	8	8	8	8
7488	624	11	0	0	0	0	8	8	8	8
7489	625	0	8	7	15	1	\N	\N	\N	\N
7490	625	1	7	6	14	1	\N	\N	\N	\N
7491	625	2	6	5	13	1	\N	\N	\N	\N
7492	625	3	4	0	11	0	\N	\N	\N	10
7493	625	4	2	0	10	0	\N	\N	\N	10
7494	625	5	0	0	0	0	8	8	8	8
7495	626	0	8	7	15	1	\N	\N	\N	\N
7496	626	1	7	6	14	1	\N	\N	\N	\N
7497	626	2	6	5	13	1	\N	\N	\N	\N
7498	626	3	4	4	12	1	\N	\N	\N	\N
7499	626	4	3	0	11	0	\N	\N	\N	10
7500	626	5	2	0	10	0	\N	\N	\N	10
7501	627	0	8	8	15	1	\N	\N	\N	\N
7502	627	1	7	7	14	1	\N	\N	\N	\N
7503	627	2	6	6	13	1	\N	\N	\N	\N
7504	627	3	5	5	12	1	\N	\N	\N	\N
7505	627	4	3	0	11	0	\N	\N	\N	10
7506	627	5	2	0	10	0	\N	\N	\N	10
7507	628	0	8	7	15	2	\N	\N	\N	\N
7508	628	1	7	6	14	2	\N	\N	\N	\N
7509	628	2	6	5	13	1	\N	\N	\N	\N
7510	628	3	4	4	12	1	\N	\N	\N	\N
7511	628	4	3	0	11	0	\N	\N	\N	10
7512	628	5	2	0	10	0	\N	\N	\N	10
7513	629	0	8	8	15	3	\N	\N	\N	\N
7514	629	1	7	7	14	2	\N	\N	\N	\N
7515	629	2	6	6	13	2	\N	\N	\N	\N
7516	629	3	4	4	12	1	\N	\N	\N	\N
7517	629	4	3	0	11	0	\N	\N	\N	10
7518	629	5	2	0	10	0	\N	\N	\N	10
7519	630	0	8	9	15	3	\N	\N	\N	\N
7520	630	1	7	8	15	2	\N	\N	\N	\N
7521	630	2	6	6	14	2	\N	\N	\N	\N
7522	630	3	4	4	13	1	\N	\N	\N	\N
7523	630	4	3	0	11	0	\N	\N	\N	10
7524	630	5	2	0	10	0	\N	\N	\N	10
7525	631	0	6	7	15	2	\N	\N	2	\N
7526	631	1	6	6	15	2	\N	\N	2	\N
7527	631	2	6	6	14	1	\N	\N	2	\N
7528	631	3	6	5	14	1	\N	\N	2	\N
7529	631	4	5	5	13	1	\N	\N	2	\N
7530	631	5	4	4	12	1	\N	\N	\N	\N
7531	632	0	6	7	15	2	\N	\N	2	\N
7532	632	1	6	6	15	2	\N	\N	2	\N
7533	632	2	6	6	14	2	\N	\N	2	\N
7534	632	3	6	5	14	2	\N	\N	2	\N
7535	632	4	5	5	13	2	\N	\N	2	\N
7536	632	5	4	5	12	2	\N	\N	\N	\N
7537	633	0	6	8	15	3	\N	\N	2	\N
7538	633	1	6	7	15	2	\N	\N	2	\N
7539	633	2	6	6	14	2	\N	\N	2	\N
7540	633	3	6	5	14	2	\N	\N	2	\N
7541	633	4	5	5	13	2	\N	\N	2	\N
7542	633	5	4	5	12	2	\N	\N	\N	\N
7543	634	0	8	7	14	2	\N	18	\N	20
7544	634	1	7	5	14	2	\N	\N	\N	20
7545	634	2	6	4	13	1	\N	\N	\N	\N
7546	634	3	4	4	12	1	\N	\N	\N	\N
7547	634	4	3	0	11	0	\N	\N	\N	10
7548	634	5	2	0	10	0	\N	\N	\N	10
7549	635	0	8	7	14	2	\N	18	\N	20
7550	635	1	7	5	14	2	\N	18	\N	20
7551	635	2	6	4	13	1	\N	\N	\N	20
7552	635	3	4	4	12	1	\N	\N	\N	\N
7553	635	4	3	0	11	0	\N	\N	\N	10
7554	635	5	2	0	10	0	\N	\N	\N	10
7555	636	0	8	8	14	2	\N	18	\N	20
7556	636	1	7	6	14	2	\N	18	\N	20
7557	636	2	6	4	13	1	\N	\N	\N	20
7558	636	3	5	4	13	1	\N	\N	\N	\N
7559	636	4	4	4	12	1	\N	\N	\N	\N
7560	636	5	3	0	11	0	\N	\N	\N	10
7561	637	0	8	6	14	1	\N	\N	\N	\N
7562	637	1	6	4	14	1	\N	\N	\N	\N
7563	637	2	4	0	12	0	\N	\N	\N	10
7564	637	3	0	0	0	0	8	8	8	8
7565	637	4	0	0	0	0	8	8	8	8
7566	637	5	0	0	0	0	8	8	8	8
7567	638	0	8	6	14	1	30	\N	\N	\N
7568	638	1	7	4	14	1	\N	\N	\N	\N
7569	638	2	4	0	12	0	\N	\N	\N	10
7570	638	3	3	0	11	0	\N	\N	\N	10
7571	638	4	0	0	0	0	8	8	8	8
7572	638	5	0	0	0	0	8	8	8	8
7573	639	0	8	7	15	1	30	\N	\N	\N
7574	639	1	7	6	14	1	\N	\N	\N	\N
7575	639	2	5	4	12	1	\N	\N	\N	\N
7576	639	3	4	0	12	0	\N	\N	\N	10
7577	639	4	3	0	11	0	\N	\N	\N	10
7578	639	5	0	0	0	0	8	8	8	8
7579	640	0	8	6	15	1	\N	22	9	\N
7580	640	1	6	4	14	1	\N	22	\N	\N
7581	640	2	5	4	13	1	\N	\N	\N	\N
7582	640	3	4	0	11	0	\N	\N	\N	10
7583	640	4	0	0	0	0	8	8	8	8
7584	640	5	0	0	0	0	8	8	8	8
7585	641	0	8	7	16	1	\N	22	9	\N
7586	641	1	6	6	15	1	\N	22	9	\N
7587	641	2	5	4	13	1	\N	\N	\N	\N
7588	641	3	4	4	12	1	\N	\N	\N	\N
7589	641	4	4	0	11	0	\N	\N	\N	10
7590	641	5	0	0	0	0	8	8	8	8
7591	642	0	8	7	16	1	\N	22	9	\N
7592	642	1	6	6	15	1	\N	22	9	\N
7593	642	2	5	4	14	1	\N	\N	9	\N
7594	642	3	4	4	13	1	\N	\N	\N	\N
7595	642	4	4	0	11	0	\N	\N	\N	10
7596	642	5	0	0	0	0	8	8	8	8
7597	643	0	8	8	15	2	\N	40	\N	\N
7598	643	1	8	8	14	1	\N	\N	\N	\N
7599	643	2	7	6	14	1	\N	\N	\N	\N
7600	643	3	6	4	11	1	\N	\N	\N	\N
7601	643	4	4	0	11	0	\N	\N	\N	10
7602	643	5	0	0	0	0	8	8	8	8
7603	644	0	8	9	15	2	\N	40	\N	\N
7604	644	1	8	8	15	1	\N	\N	\N	\N
7605	644	2	7	6	14	1	\N	\N	\N	\N
7606	644	3	6	5	12	1	\N	\N	\N	\N
7607	644	4	5	4	11	1	\N	\N	\N	\N
7608	644	5	4	0	11	0	\N	\N	\N	10
7609	645	0	8	9	15	2	\N	40	\N	\N
7610	645	1	8	8	15	2	\N	\N	\N	\N
7611	645	2	7	8	14	1	\N	\N	\N	\N
7612	645	3	7	6	13	1	\N	\N	\N	\N
7613	645	4	6	4	11	1	\N	\N	\N	\N
7614	645	5	4	0	11	0	\N	\N	\N	10
7615	646	0	8	8	14	2	35	\N	\N	\N
7616	646	1	8	7	14	2	35	\N	\N	\N
7617	646	2	7	7	14	2	\N	\N	\N	\N
7618	646	3	6	4	12	1	\N	\N	\N	\N
7619	646	4	4	0	11	0	\N	\N	\N	10
7620	646	5	0	0	0	0	8	8	8	8
7621	647	0	8	8	15	2	35	\N	\N	\N
7622	647	1	8	8	14	2	35	\N	\N	\N
7623	647	2	7	8	14	2	\N	\N	\N	\N
7624	647	3	6	5	13	2	\N	\N	\N	\N
7625	647	4	6	4	12	1	\N	\N	\N	\N
7626	647	5	4	0	11	0	\N	\N	\N	10
7627	648	0	8	9	15	2	35	\N	\N	\N
7628	648	1	8	8	14	2	35	\N	\N	\N
7629	648	2	7	8	14	2	35	\N	\N	\N
7630	648	3	6	5	13	2	\N	\N	\N	\N
7631	648	4	6	4	13	1	\N	\N	\N	\N
7632	648	5	5	4	12	1	\N	\N	\N	\N
7633	649	0	6	9	12	2	\N	\N	\N	\N
7634	649	1	6	8	11	2	\N	\N	\N	\N
7635	649	2	6	7	11	1	\N	\N	\N	\N
7636	649	3	4	6	10	1	\N	\N	\N	\N
7637	649	4	0	0	0	0	8	8	8	8
7638	649	5	0	0	0	0	8	8	8	8
7639	650	0	6	9	12	2	\N	\N	\N	\N
7640	650	1	6	8	11	2	\N	\N	\N	\N
7641	650	2	6	7	11	1	\N	\N	\N	\N
7642	650	3	6	6	10	1	\N	\N	\N	\N
7643	650	4	4	5	10	1	\N	\N	\N	\N
7644	650	5	0	0	0	0	8	8	8	8
7645	651	0	6	9	12	2	\N	\N	\N	\N
7646	651	1	6	8	12	2	\N	\N	\N	\N
7647	651	2	6	7	11	2	\N	\N	\N	\N
7648	651	3	6	6	11	1	\N	\N	\N	\N
7649	651	4	6	5	10	1	\N	\N	\N	\N
7650	651	5	4	4	10	1	\N	\N	\N	\N
7651	652	0	8	7	15	2	35	\N	\N	\N
7652	652	1	7	7	14	2	35	\N	\N	\N
7653	652	2	6	6	14	2	\N	\N	\N	\N
7654	652	3	4	5	11	1	\N	\N	\N	\N
7655	652	4	3	0	11	0	\N	\N	\N	10
7656	652	5	0	0	0	0	8	8	8	8
7657	653	0	8	8	15	2	35	\N	\N	\N
7658	653	1	7	8	14	2	35	\N	\N	\N
7659	653	2	6	7	14	2	\N	\N	\N	\N
7660	653	3	5	6	12	1	\N	\N	\N	\N
7661	653	4	4	5	11	1	\N	\N	\N	\N
7662	653	5	3	0	11	0	\N	\N	\N	10
7663	654	0	8	9	15	2	35	\N	\N	\N
7664	654	1	7	8	14	2	35	\N	\N	\N
7665	654	2	6	7	14	2	35	\N	\N	\N
7666	654	3	5	6	12	2	\N	\N	\N	\N
7667	654	4	4	5	11	1	\N	\N	\N	\N
7668	654	5	4	4	11	1	\N	\N	\N	\N
7669	655	0	8	6	14	1	35	\N	\N	26
7670	655	1	6	4	12	1	35	\N	\N	\N
7671	655	2	5	0	11	0	\N	\N	\N	10
7672	655	3	4	0	10	0	\N	\N	\N	10
7673	655	4	0	0	0	0	8	8	8	8
7674	655	5	0	0	0	0	8	8	8	8
7675	656	0	8	6	14	1	35	\N	\N	26
7676	656	1	7	4	13	1	35	\N	\N	\N
7677	656	2	6	4	11	1	\N	\N	\N	\N
7678	656	3	5	0	11	0	\N	\N	\N	10
7679	656	4	4	0	10	0	\N	\N	\N	10
7680	656	5	0	0	0	0	8	8	8	8
7681	657	0	8	6	14	1	35	\N	\N	26
7682	657	1	7	5	13	1	35	\N	\N	26
7683	657	2	6	4	11	1	\N	\N	\N	\N
7684	657	3	5	4	11	1	\N	\N	\N	\N
7685	657	4	5	0	11	0	\N	\N	\N	10
7686	657	5	4	0	10	0	\N	\N	\N	10
7687	658	0	10	9	15	2	13	40	\N	3
7688	658	1	10	9	15	2	13	\N	\N	3
7689	658	2	9	8	14	2	13	38	\N	3
7690	658	3	8	7	12	1	13	38	\N	3
7691	658	4	7	0	11	0	13	\N	\N	10
7692	658	5	5	0	10	0	\N	\N	\N	10
7693	659	0	10	10	15	2	13	40	\N	3
7694	659	1	10	9	15	2	13	\N	\N	3
7695	659	2	9	9	14	2	13	38	\N	3
7696	659	3	9	8	13	2	13	38	\N	3
7697	659	4	8	7	12	1	13	\N	\N	3
7698	659	5	7	0	11	0	13	\N	\N	10
7699	660	0	10	11	16	2	13	40	\N	3
7700	660	1	10	10	15	2	13	\N	\N	3
7701	660	2	9	9	14	2	13	38	\N	3
7702	660	3	9	8	13	2	13	38	\N	3
7703	660	4	8	7	12	1	13	\N	\N	3
7704	660	5	7	4	11	1	13	\N	\N	\N
7705	661	0	8	6	14	1	\N	\N	\N	\N
7706	661	1	7	5	13	1	\N	\N	\N	\N
7707	661	2	6	4	13	1	\N	\N	\N	\N
7708	661	3	4	0	12	0	\N	\N	\N	10
7709	661	4	2	0	10	0	\N	\N	\N	10
7710	661	5	0	0	0	0	8	8	8	8
7711	662	0	8	7	14	1	\N	\N	\N	\N
7712	662	1	7	5	13	1	\N	\N	\N	\N
7713	662	2	6	4	13	1	\N	\N	\N	\N
7714	662	3	5	4	12	1	\N	\N	\N	\N
7715	662	4	4	0	11	0	\N	\N	\N	10
7716	662	5	2	0	10	0	\N	\N	\N	10
7717	663	0	8	7	15	1	\N	\N	\N	\N
7718	663	1	7	6	14	1	\N	\N	\N	\N
7719	663	2	6	5	13	1	\N	\N	\N	\N
7720	663	3	5	4	12	1	\N	\N	\N	\N
7721	663	4	4	0	11	0	\N	\N	\N	10
7722	663	5	2	0	10	0	\N	\N	\N	10
7723	664	0	8	7	14	2	\N	\N	\N	\N
7724	664	1	7	6	14	2	\N	\N	\N	\N
7725	664	2	6	5	13	2	\N	\N	\N	\N
7726	664	3	3	0	11	0	\N	\N	\N	10
7727	664	4	2	0	10	0	\N	\N	\N	10
7728	664	5	0	0	0	0	8	8	8	8
7729	665	0	8	8	14	2	\N	\N	\N	\N
7730	665	1	7	7	14	2	\N	\N	\N	\N
7731	665	2	6	6	13	2	\N	\N	\N	\N
7732	665	3	4	5	12	2	\N	\N	\N	\N
7733	665	4	3	0	11	0	\N	\N	\N	10
7734	665	5	2	0	10	0	\N	\N	\N	10
7735	666	0	8	9	15	2	\N	\N	\N	\N
7736	666	1	7	8	14	2	\N	\N	\N	\N
7737	666	2	6	6	14	2	\N	\N	\N	\N
7738	666	3	5	5	13	2	\N	\N	\N	\N
7739	666	4	3	0	11	0	\N	\N	\N	10
7740	666	5	2	0	10	0	\N	\N	\N	10
7741	667	0	8	6	14	1	\N	15	\N	\N
7742	667	1	7	5	12	1	\N	15	\N	\N
7743	667	2	6	4	11	1	\N	\N	\N	\N
7744	667	3	2	0	10	0	\N	\N	\N	10
7745	667	4	0	0	0	0	8	8	8	8
7746	667	5	0	0	0	0	8	8	8	8
7747	668	0	8	7	14	1	\N	15	\N	\N
7748	668	1	7	5	13	1	\N	15	\N	\N
7749	668	2	6	4	12	1	\N	\N	\N	\N
7750	668	3	5	4	11	1	\N	\N	\N	\N
7751	668	4	2	0	10	0	\N	\N	\N	10
7752	668	5	0	0	0	0	8	8	8	8
7753	669	0	8	7	15	1	\N	15	\N	\N
7754	669	1	7	6	14	1	\N	15	\N	\N
7755	669	2	6	5	12	1	\N	15	\N	\N
7756	669	3	5	4	11	1	\N	\N	\N	\N
7757	669	4	2	0	10	0	\N	\N	\N	10
7758	669	5	0	0	0	0	8	8	8	8
7759	670	0	6	8	16	2	\N	\N	23	\N
7760	670	1	6	7	15	2	\N	\N	23	\N
7761	670	2	6	6	14	2	\N	\N	23	\N
7762	670	3	5	6	13	2	\N	\N	23	3
7763	670	4	5	7	12	3	\N	\N	\N	4
7764	670	5	2	0	11	0	\N	\N	\N	10
7765	671	0	6	8	16	2	\N	\N	23	\N
7766	671	1	6	7	15	2	\N	\N	23	\N
7767	671	2	6	6	14	2	\N	\N	23	\N
7768	671	3	5	6	13	2	\N	\N	23	3
7769	671	4	5	7	13	2	\N	\N	23	3
7770	671	5	5	7	12	3	\N	\N	\N	4
7771	672	0	6	9	16	2	\N	\N	23	\N
7772	672	1	6	8	15	2	\N	\N	23	\N
7773	672	2	6	7	14	2	\N	\N	23	\N
7774	672	3	5	6	13	2	\N	\N	23	3
7775	672	4	5	7	13	2	\N	\N	23	3
7776	672	5	5	8	12	3	\N	\N	23	4
7777	673	0	8	8	15	3	\N	12	\N	\N
7778	673	1	7	7	14	3	\N	12	\N	\N
7779	673	2	6	6	13	3	\N	12	\N	\N
7780	673	3	4	5	12	1	\N	\N	\N	\N
7781	673	4	3	0	11	0	\N	\N	\N	10
7782	673	5	2	0	10	0	\N	\N	\N	10
7783	673	6	0	0	0	0	8	8	8	8
7784	673	7	0	0	0	0	8	8	8	8
7785	673	8	0	0	0	0	8	8	8	8
7786	673	9	0	0	0	0	8	8	8	8
7787	673	10	0	0	0	0	8	8	8	8
7788	673	11	0	0	0	0	8	8	8	8
7789	674	0	8	9	15	3	\N	12	\N	\N
7790	674	1	7	8	14	3	\N	12	\N	\N
7791	674	2	6	7	13	3	\N	12	\N	\N
7792	674	3	5	6	12	1	\N	\N	\N	\N
7793	674	4	4	5	12	1	\N	\N	\N	\N
7794	674	5	3	0	11	0	\N	\N	\N	10
7795	674	6	2	0	10	0	\N	\N	\N	10
7796	674	7	0	0	0	0	8	8	8	8
7797	674	8	0	0	0	0	8	8	8	8
7798	674	9	0	0	0	0	8	8	8	8
7799	674	10	0	0	0	0	8	8	8	8
7800	674	11	0	0	0	0	8	8	8	8
7801	675	0	8	10	15	3	\N	12	\N	\N
7802	675	1	7	9	15	3	\N	12	\N	\N
7803	675	2	6	8	14	3	\N	12	\N	\N
7804	675	3	5	7	13	1	\N	\N	\N	\N
7805	675	4	4	6	12	1	\N	\N	\N	\N
7806	675	5	3	0	11	0	\N	\N	\N	10
7807	675	6	2	0	10	0	\N	\N	\N	10
7808	675	7	0	0	0	0	8	8	8	8
7809	675	8	0	0	0	0	8	8	8	8
7810	675	9	0	0	0	0	8	8	8	8
7811	675	10	0	0	0	0	8	8	8	8
7812	675	11	0	0	0	0	8	8	8	8
7813	676	0	6	7	15	4	\N	12	\N	\N
7814	676	1	5	6	15	3	\N	12	\N	\N
7815	676	2	4	4	14	3	\N	12	\N	\N
7816	676	3	3	3	12	1	\N	\N	\N	\N
7817	676	4	3	0	11	0	\N	\N	\N	10
7818	676	5	2	0	10	0	\N	\N	\N	10
7819	676	6	0	0	0	0	8	8	8	8
7820	676	7	0	0	0	0	8	8	8	8
7821	676	8	0	0	0	0	8	8	8	8
7822	676	9	0	0	0	0	8	8	8	8
7823	676	10	0	0	0	0	8	8	8	8
7824	676	11	0	0	0	0	8	8	8	8
7825	677	0	6	8	15	4	\N	12	\N	\N
7826	677	1	5	7	15	3	\N	12	\N	\N
7827	677	2	4	6	14	3	\N	12	\N	\N
7828	677	3	4	5	13	2	\N	12	\N	\N
7829	677	4	3	4	12	1	\N	\N	\N	\N
7830	677	5	3	0	11	0	\N	\N	\N	10
7831	677	6	2	0	10	0	\N	\N	\N	10
7832	677	7	0	0	0	0	8	8	8	8
7833	677	8	0	0	0	0	8	8	8	8
7834	677	9	0	0	0	0	8	8	8	8
7835	677	10	0	0	0	0	8	8	8	8
7836	677	11	0	0	0	0	8	8	8	8
7837	678	0	6	8	15	4	\N	12	\N	\N
7838	678	1	5	8	15	3	\N	12	\N	\N
7839	678	2	4	7	14	3	\N	12	\N	\N
7840	678	3	4	6	13	2	\N	12	\N	\N
7841	678	4	3	5	12	1	\N	12	\N	\N
7842	678	5	3	4	11	1	\N	\N	\N	\N
7843	678	6	2	0	10	0	\N	\N	\N	10
7844	678	7	0	0	0	0	8	8	8	8
7845	678	8	0	0	0	0	8	8	8	8
7846	678	9	0	0	0	0	8	8	8	8
7847	678	10	0	0	0	0	8	8	8	8
7848	678	11	0	0	0	0	8	8	8	8
7849	679	0	8	10	15	4	\N	\N	2	\N
7850	679	1	8	10	15	3	\N	\N	2	\N
7851	679	2	7	10	15	3	\N	\N	2	\N
7852	679	3	7	9	14	2	\N	\N	2	\N
7853	679	4	6	9	14	2	\N	\N	2	\N
7854	679	5	6	8	14	2	\N	\N	\N	\N
7855	679	6	5	7	13	1	\N	\N	\N	\N
7856	679	7	2	5	12	1	\N	\N	\N	\N
7857	679	8	0	0	0	0	8	8	8	8
7858	679	9	0	0	0	0	8	8	8	8
7859	679	10	0	0	0	0	8	8	8	8
7860	679	11	0	0	0	0	8	8	8	8
7861	680	0	8	11	15	4	\N	\N	2	\N
7862	680	1	8	10	15	4	\N	\N	2	\N
7863	680	2	7	10	15	3	\N	\N	2	\N
7864	680	3	7	9	14	3	\N	\N	2	\N
7865	680	4	6	9	14	2	\N	\N	2	\N
7866	680	5	6	8	14	2	\N	\N	\N	\N
7867	680	6	5	8	13	2	\N	\N	\N	\N
7868	680	7	4	7	13	1	\N	\N	\N	\N
7869	680	8	2	5	12	1	\N	\N	\N	\N
7870	680	9	0	0	0	0	8	8	8	8
7871	680	10	0	0	0	0	8	8	8	8
7872	680	11	0	0	0	0	8	8	8	8
7873	681	0	8	11	16	4	\N	\N	2	\N
7874	681	1	8	11	15	4	\N	\N	2	\N
7875	681	2	8	10	15	4	\N	\N	2	\N
7876	681	3	7	10	15	3	\N	\N	2	\N
7877	681	4	7	9	14	3	\N	\N	2	\N
7878	681	5	6	9	14	2	\N	\N	2	\N
7879	681	6	6	8	14	2	\N	\N	\N	\N
7880	681	7	4	7	13	1	\N	\N	\N	\N
7881	681	8	2	5	12	1	\N	\N	\N	\N
7882	681	9	0	0	0	0	8	8	8	8
7883	681	10	0	0	0	0	8	8	8	8
7884	681	11	0	0	0	0	8	8	8	8
7885	682	0	8	9	16	3	\N	40	2	\N
7886	682	1	8	9	16	3	\N	\N	2	\N
7887	682	2	7	8	15	3	\N	\N	\N	\N
7888	682	3	7	8	15	2	\N	\N	\N	\N
7889	682	4	6	7	14	2	\N	\N	\N	3
7890	682	5	5	6	13	2	\N	\N	\N	3
7891	682	6	6	7	11	3	\N	\N	\N	4
7892	682	7	0	0	0	0	8	8	8	8
7893	682	8	0	0	0	0	8	8	8	8
7894	682	9	0	0	0	0	8	8	8	8
7895	682	10	0	0	0	0	8	8	8	8
7896	682	11	0	0	0	0	8	8	8	8
7897	683	0	8	10	16	3	\N	40	2	\N
7898	683	1	8	9	16	3	\N	40	2	\N
7899	683	2	7	8	15	3	\N	\N	\N	\N
7900	683	3	7	8	15	2	\N	\N	\N	\N
7901	683	4	6	7	14	2	\N	\N	\N	3
7902	683	5	5	6	13	2	\N	\N	\N	3
7903	683	6	6	7	11	3	\N	\N	\N	4
7904	683	7	0	0	0	0	8	8	8	8
7905	683	8	0	0	0	0	8	8	8	8
7906	683	9	0	0	0	0	8	8	8	8
7907	683	10	0	0	0	0	8	8	8	8
7908	683	11	0	0	0	0	8	8	8	8
7909	684	0	8	11	16	3	\N	40	2	\N
7910	684	1	8	10	16	3	\N	40	2	\N
7911	684	2	7	9	15	3	\N	\N	\N	\N
7912	684	3	7	8	15	2	\N	\N	\N	\N
7913	684	4	6	8	14	2	\N	\N	\N	3
7914	684	5	6	7	14	2	\N	\N	\N	3
7915	684	6	5	6	13	2	\N	\N	\N	3
7916	684	7	6	7	11	3	\N	\N	\N	4
7917	684	8	0	0	0	0	8	8	8	8
7918	684	9	0	0	0	0	8	8	8	8
7919	684	10	0	0	0	0	8	8	8	8
7920	684	11	0	0	0	0	8	8	8	8
7921	685	0	6	8	14	3	\N	\N	37	\N
7922	685	1	6	7	14	2	\N	\N	37	\N
7923	685	2	6	7	14	2	\N	\N	\N	\N
7924	685	3	6	6	14	2	\N	\N	\N	\N
7925	685	4	4	5	13	1	\N	\N	\N	\N
7926	685	5	4	4	13	1	\N	\N	\N	\N
7927	685	6	2	4	12	1	\N	\N	\N	\N
7928	685	7	0	0	0	0	8	8	8	8
7929	685	8	0	0	0	0	8	8	8	8
7930	685	9	0	0	0	0	8	8	8	8
7931	685	10	0	0	0	0	8	8	8	8
7932	685	11	0	0	0	0	8	8	8	8
7933	686	0	6	8	15	3	\N	\N	37	\N
7934	686	1	6	7	14	3	\N	\N	37	\N
7935	686	2	6	7	14	2	\N	\N	\N	\N
7936	686	3	6	6	14	2	\N	\N	\N	\N
7937	686	4	4	6	14	2	\N	\N	\N	\N
7938	686	5	4	5	13	1	\N	\N	\N	\N
7939	686	6	4	4	13	1	\N	\N	\N	\N
7940	686	7	2	4	12	1	\N	\N	\N	\N
7941	686	8	0	0	0	0	8	8	8	8
7942	686	9	0	0	0	0	8	8	8	8
7943	686	10	0	0	0	0	8	8	8	8
7944	686	11	0	0	0	0	8	8	8	8
7945	687	0	6	8	15	3	\N	\N	37	\N
7946	687	1	6	7	15	3	\N	\N	37	\N
7947	687	2	6	7	14	3	\N	\N	37	\N
7948	687	3	6	6	14	2	\N	\N	\N	\N
7949	687	4	4	6	14	2	\N	\N	\N	\N
7950	687	5	4	5	13	2	\N	\N	\N	\N
7951	687	6	4	4	13	1	\N	\N	\N	\N
7952	687	7	2	4	13	1	\N	\N	\N	\N
7953	687	8	2	4	12	1	\N	\N	\N	\N
7954	687	9	0	0	0	0	8	8	8	8
7955	687	10	0	0	0	0	8	8	8	8
7956	687	11	0	0	0	0	8	8	8	8
7957	688	0	6	10	14	3	\N	\N	37	3
7958	688	1	6	9	13	3	\N	\N	37	3
7959	688	2	6	9	13	2	\N	\N	\N	3
7960	688	3	5	8	12	2	\N	\N	\N	\N
7961	688	4	4	7	12	1	\N	\N	\N	\N
7962	688	5	4	4	11	1	\N	\N	32	\N
7963	688	6	4	0	11	0	\N	\N	\N	10
7964	688	7	0	0	0	0	8	8	8	8
7965	688	8	0	0	0	0	8	8	8	8
7966	688	9	0	0	0	0	8	8	8	8
7967	688	10	0	0	0	0	8	8	8	8
7968	688	11	0	0	0	0	8	8	8	8
7969	689	0	6	10	14	3	\N	\N	37	3
7970	689	1	6	9	13	3	\N	\N	37	3
7971	689	2	6	9	13	2	\N	\N	\N	3
7972	689	3	5	8	13	2	\N	\N	\N	3
7973	689	4	4	7	12	1	\N	\N	\N	\N
7974	689	5	4	6	12	1	\N	\N	\N	\N
7975	689	6	4	4	11	1	\N	\N	32	\N
7976	689	7	4	0	11	0	\N	\N	\N	10
7977	689	8	0	0	0	0	8	8	8	8
7978	689	9	0	0	0	0	8	8	8	8
7979	689	10	0	0	0	0	8	8	8	8
7980	689	11	0	0	0	0	8	8	8	8
7981	690	0	6	11	15	3	\N	\N	37	3
7982	690	1	6	10	14	3	\N	\N	37	3
7983	690	2	6	9	14	3	\N	\N	\N	3
7984	690	3	5	8	13	2	\N	\N	\N	3
7985	690	4	5	7	12	2	\N	\N	\N	\N
7986	690	5	5	6	12	1	\N	\N	\N	\N
7987	690	6	4	4	11	1	\N	\N	32	\N
7988	690	7	4	0	11	0	\N	\N	\N	10
7989	690	8	0	0	0	0	8	8	8	8
7990	690	9	0	0	0	0	8	8	8	8
7991	690	10	0	0	0	0	8	8	8	8
7992	690	11	0	0	0	0	8	8	8	8
7993	691	0	6	10	13	3	\N	\N	37	3
7994	691	1	6	9	13	3	\N	\N	\N	3
7995	691	2	5	8	12	3	\N	\N	\N	\N
7996	691	3	5	6	12	3	\N	\N	\N	\N
7997	691	4	4	4	11	1	\N	\N	32	\N
7998	691	5	4	0	11	0	\N	\N	\N	10
7999	691	6	0	0	0	0	8	8	8	8
8000	691	7	0	0	0	0	8	8	8	8
8001	691	8	0	0	0	0	8	8	8	8
8002	691	9	0	0	0	0	8	8	8	8
8003	691	10	0	0	0	0	8	8	8	8
8004	691	11	0	0	0	0	8	8	8	8
8005	692	0	6	11	14	3	\N	\N	37	3
8006	692	1	6	10	13	3	\N	\N	\N	3
8007	692	2	6	9	12	3	\N	\N	\N	\N
8008	692	3	5	8	12	3	\N	\N	\N	\N
8009	692	4	5	6	12	3	\N	\N	\N	\N
8010	692	5	4	4	11	1	\N	\N	32	\N
8011	692	6	4	0	11	0	\N	\N	\N	10
8012	692	7	0	0	0	0	8	8	8	8
8013	692	8	0	0	0	0	8	8	8	8
8014	692	9	0	0	0	0	8	8	8	8
8015	692	10	0	0	0	0	8	8	8	8
8016	692	11	0	0	0	0	8	8	8	8
8017	693	0	6	11	15	3	\N	\N	37	3
8018	693	1	6	10	14	3	\N	\N	37	3
8019	693	2	6	9	12	3	\N	\N	\N	3
8020	693	3	6	8	12	3	\N	\N	\N	\N
8021	693	4	5	7	12	3	\N	\N	\N	\N
8022	693	5	5	6	12	3	\N	\N	\N	\N
8023	693	6	4	4	11	1	\N	\N	32	\N
8024	693	7	4	0	11	0	\N	\N	\N	10
8025	693	8	0	0	0	0	8	8	8	8
8026	693	9	0	0	0	0	8	8	8	8
8027	693	10	0	0	0	0	8	8	8	8
8028	693	11	0	0	0	0	8	8	8	8
8029	694	0	8	10	16	3	\N	\N	37	3
8030	694	1	7	9	16	3	\N	\N	37	3
8031	694	2	6	9	16	2	\N	\N	32	3
8032	694	3	5	8	15	2	\N	\N	\N	3
8033	694	4	5	7	15	2	\N	\N	\N	3
8034	694	5	5	6	14	1	\N	\N	\N	\N
8035	694	6	2	5	13	1	\N	\N	\N	\N
8036	694	7	0	0	0	0	8	8	8	8
8037	694	8	0	0	0	0	8	8	8	8
8038	694	9	0	0	0	0	8	8	8	8
8039	694	10	0	0	0	0	8	8	8	8
8040	694	11	0	0	0	0	8	8	8	8
8041	695	0	8	10	16	3	\N	\N	37	3
8042	695	1	7	10	16	3	\N	\N	37	3
8043	695	2	6	9	16	2	\N	\N	32	3
8044	695	3	5	9	15	2	\N	\N	\N	3
8045	695	4	5	8	15	2	\N	\N	\N	3
8046	695	5	5	8	14	2	\N	\N	\N	3
8047	695	6	4	6	13	1	\N	\N	\N	\N
8048	695	7	2	5	13	1	\N	\N	\N	\N
8049	695	8	0	0	0	0	8	8	8	8
8050	695	9	0	0	0	0	8	8	8	8
8051	695	10	0	0	0	0	8	8	8	8
8052	695	11	0	0	0	0	8	8	8	8
8053	696	0	8	11	16	4	\N	\N	37	3
8054	696	1	7	10	16	3	\N	\N	37	3
8055	696	2	6	10	16	2	\N	\N	32	3
8056	696	3	5	9	15	2	\N	\N	\N	3
8057	696	4	5	8	15	2	\N	\N	\N	3
8058	696	5	5	8	14	2	\N	\N	\N	3
8059	696	6	5	7	14	2	\N	\N	\N	3
8060	696	7	4	6	13	1	\N	\N	\N	\N
8061	696	8	2	5	13	1	\N	\N	\N	\N
8062	696	9	0	0	0	0	8	8	8	8
8063	696	10	0	0	0	0	8	8	8	8
8064	696	11	0	0	0	0	8	8	8	8
8065	697	0	8	10	16	3	\N	\N	2	3
8066	697	1	8	9	16	3	\N	\N	2	3
8067	697	2	7	9	15	2	\N	\N	\N	3
8068	697	3	6	8	14	2	\N	\N	\N	3
8069	697	4	4	6	11	2	\N	\N	\N	3
8070	697	5	3	5	11	1	\N	38	\N	\N
8071	697	6	3	0	11	0	\N	\N	\N	10
8072	697	7	0	0	0	0	8	8	8	8
8073	697	8	0	0	0	0	8	8	8	8
8074	697	9	0	0	0	0	8	8	8	8
8075	697	10	0	0	0	0	8	8	8	8
8076	697	11	0	0	0	0	8	8	8	8
8077	698	0	8	10	16	3	\N	\N	2	3
8078	698	1	8	9	16	3	\N	\N	2	3
8079	698	2	7	9	15	2	\N	\N	\N	3
8080	698	3	6	8	14	2	\N	\N	\N	3
8081	698	4	5	7	12	2	\N	\N	\N	3
8082	698	5	4	6	11	2	\N	\N	\N	3
8083	698	6	3	6	11	2	\N	38	\N	\N
8084	698	7	3	0	11	0	\N	\N	\N	10
8085	698	8	0	0	0	0	8	8	8	8
8086	698	9	0	0	0	0	8	8	8	8
8087	698	10	0	0	0	0	8	8	8	8
8088	698	11	0	0	0	0	8	8	8	8
8089	699	0	8	11	16	4	\N	\N	2	3
8090	699	1	8	10	16	3	\N	\N	2	3
8091	699	2	7	9	15	3	\N	\N	\N	3
8092	699	3	6	8	14	2	\N	\N	\N	3
8093	699	4	5	7	12	2	\N	\N	\N	3
8094	699	5	4	6	11	2	\N	\N	\N	3
8095	699	6	3	6	11	2	\N	38	\N	\N
8096	699	7	3	0	11	0	\N	\N	\N	10
8097	699	8	0	0	0	0	8	8	8	8
8098	699	9	0	0	0	0	8	8	8	8
8099	699	10	0	0	0	0	8	8	8	8
8100	699	11	0	0	0	0	8	8	8	8
8101	700	0	8	9	15	3	\N	40	\N	\N
8102	700	1	7	8	14	2	\N	40	\N	\N
8103	700	2	7	7	13	2	\N	\N	\N	\N
8104	700	3	6	7	12	2	\N	\N	\N	\N
8105	700	4	5	6	12	2	\N	\N	\N	\N
8106	700	5	4	6	11	2	\N	\N	\N	\N
8107	700	6	3	6	11	2	\N	\N	32	\N
8108	700	7	0	0	0	0	8	8	8	8
8109	700	8	0	0	0	0	8	8	8	8
8110	700	9	0	0	0	0	8	8	8	8
8111	700	10	0	0	0	0	8	8	8	8
8112	700	11	0	0	0	0	8	8	8	8
8113	701	0	8	10	16	3	\N	40	\N	\N
8114	701	1	7	9	15	2	\N	40	\N	\N
8115	701	2	7	8	14	2	\N	\N	\N	\N
8116	701	3	6	7	13	2	\N	\N	\N	\N
8117	701	4	5	7	12	2	\N	\N	\N	\N
8118	701	5	5	6	12	2	\N	\N	\N	\N
8119	701	6	4	6	11	2	\N	\N	32	\N
8120	701	7	3	6	11	2	\N	\N	32	\N
8121	701	8	0	0	0	0	8	8	8	8
8122	701	9	0	0	0	0	8	8	8	8
8123	701	10	0	0	0	0	8	8	8	8
8124	701	11	0	0	0	0	8	8	8	8
8125	702	0	8	11	16	3	\N	40	\N	\N
8126	702	1	7	10	16	3	\N	40	\N	\N
8127	702	2	7	9	15	2	\N	40	\N	\N
8128	702	3	6	8	14	2	\N	\N	\N	\N
8129	702	4	6	7	13	2	\N	\N	\N	\N
8130	702	5	5	6	12	2	\N	\N	\N	\N
8131	702	6	4	6	11	2	\N	\N	32	\N
8132	702	7	3	6	11	2	\N	\N	32	\N
8133	702	8	0	0	0	0	8	8	8	8
8134	702	9	0	0	0	0	8	8	8	8
8135	702	10	0	0	0	0	8	8	8	8
8136	702	11	0	0	0	0	8	8	8	8
8137	703	0	8	10	15	3	35	40	\N	\N
8138	703	1	7	8	14	2	35	40	\N	\N
8139	703	2	5	6	13	1	35	\N	\N	\N
8140	703	3	4	5	12	1	\N	\N	\N	\N
8141	703	4	4	0	11	0	\N	\N	\N	10
8142	703	5	3	0	10	0	\N	\N	\N	10
8143	703	6	0	0	0	0	8	8	8	8
8144	703	7	0	0	0	0	8	8	8	8
8145	703	8	0	0	0	0	8	8	8	8
8146	703	9	0	0	0	0	8	8	8	8
8147	703	10	0	0	0	0	8	8	8	8
8148	703	11	0	0	0	0	8	8	8	8
8149	704	0	8	11	16	3	35	40	\N	\N
8150	704	1	7	8	15	2	35	40	\N	\N
8151	704	2	6	7	14	2	35	40	\N	\N
8152	704	3	5	6	13	1	35	\N	\N	\N
8153	704	4	4	0	11	0	\N	\N	\N	10
8154	704	5	3	0	10	0	\N	\N	\N	10
8155	704	6	0	0	0	0	8	8	8	8
8156	704	7	0	0	0	0	8	8	8	8
8157	704	8	0	0	0	0	8	8	8	8
8158	704	9	0	0	0	0	8	8	8	8
8159	704	10	0	0	0	0	8	8	8	8
8160	704	11	0	0	0	0	8	8	8	8
8161	705	0	8	12	16	3	35	40	\N	\N
8162	705	1	7	9	15	2	35	40	\N	\N
8163	705	2	6	8	14	2	35	40	\N	\N
8164	705	3	5	6	13	1	35	\N	\N	\N
8165	705	4	4	5	12	1	\N	\N	\N	\N
8166	705	5	4	0	11	0	\N	\N	\N	10
8167	705	6	3	0	10	0	\N	\N	\N	10
8168	705	7	0	0	0	0	8	8	8	8
8169	705	8	0	0	0	0	8	8	8	8
8170	705	9	0	0	0	0	8	8	8	8
8171	705	10	0	0	0	0	8	8	8	8
8172	705	11	0	0	0	0	8	8	8	8
8173	706	0	10	8	15	2	13	33	\N	3
8174	706	1	9	8	15	2	13	33	\N	3
8175	706	2	7	7	14	1	\N	38	\N	3
8176	706	3	6	6	13	1	\N	38	\N	3
8177	706	4	5	0	11	0	\N	\N	\N	10
8178	706	5	4	0	10	0	\N	\N	\N	10
8179	706	6	0	0	0	0	8	8	8	8
8180	706	7	0	0	0	0	8	8	8	8
8181	706	8	0	0	0	0	8	8	8	8
8182	706	9	0	0	0	0	8	8	8	8
8183	706	10	0	0	0	0	8	8	8	8
8184	706	11	0	0	0	0	8	8	8	8
8185	707	0	10	9	16	3	13	33	\N	3
8186	707	1	10	8	16	2	13	33	\N	3
8187	707	2	8	7	15	2	\N	33	\N	3
8188	707	3	7	7	14	1	\N	38	\N	3
8189	707	4	6	6	13	1	\N	38	\N	3
8190	707	5	5	0	11	0	\N	\N	\N	10
8191	707	6	4	0	10	0	\N	\N	\N	10
8192	707	7	0	0	0	0	8	8	8	8
8193	707	8	0	0	0	0	8	8	8	8
8194	707	9	0	0	0	0	8	8	8	8
8195	707	10	0	0	0	0	8	8	8	8
8196	707	11	0	0	0	0	8	8	8	8
8197	708	0	10	10	16	3	13	33	\N	3
8198	708	1	10	9	16	2	13	33	\N	3
8199	708	2	9	9	15	2	13	33	\N	3
8200	708	3	7	8	14	1	\N	38	\N	3
8201	708	4	6	7	13	1	\N	38	\N	3
8202	708	5	5	6	12	1	\N	\N	\N	\N
8203	708	6	4	0	10	0	\N	\N	\N	10
8204	708	7	0	0	0	0	8	8	8	8
8205	708	8	0	0	0	0	8	8	8	8
8206	708	9	0	0	0	0	8	8	8	8
8207	708	10	0	0	0	0	8	8	8	8
8208	708	11	0	0	0	0	8	8	8	8
8209	709	0	10	8	15	2	\N	40	\N	\N
8210	709	1	8	7	14	2	\N	40	\N	\N
8211	709	2	6	6	13	1	\N	40	\N	\N
8212	709	3	4	5	12	1	\N	\N	\N	\N
8213	709	4	3	0	11	0	\N	\N	\N	10
8214	709	5	2	0	10	0	\N	\N	\N	10
8215	709	6	0	0	0	0	8	8	8	8
8216	709	7	0	0	0	0	8	8	8	8
8217	709	8	0	0	0	0	8	8	8	8
8218	709	9	0	0	0	0	8	8	8	8
8219	709	10	0	0	0	0	8	8	8	8
8220	709	11	0	0	0	0	8	8	8	8
8221	710	0	10	8	15	2	\N	40	\N	\N
8222	710	1	8	8	14	2	\N	40	\N	\N
8223	710	2	7	7	13	1	\N	40	\N	\N
8224	710	3	6	6	12	1	\N	40	\N	\N
8225	710	4	4	5	12	1	\N	\N	\N	\N
8226	710	5	3	0	11	0	\N	\N	\N	10
8227	710	6	2	0	10	0	\N	\N	\N	10
8228	710	7	0	0	0	0	8	8	8	8
8229	710	8	0	0	0	0	8	8	8	8
8230	710	9	0	0	0	0	8	8	8	8
8231	710	10	0	0	0	0	8	8	8	8
8232	710	11	0	0	0	0	8	8	8	8
8233	711	0	10	9	15	3	\N	40	\N	\N
8234	711	1	9	8	14	2	\N	40	\N	\N
8235	711	2	8	7	13	2	\N	40	\N	\N
8236	711	3	7	6	12	1	\N	40	\N	\N
8237	711	4	6	5	12	1	\N	\N	\N	\N
8238	711	5	4	4	11	1	\N	\N	\N	\N
8239	711	6	2	0	10	0	\N	\N	\N	10
8240	711	7	0	0	0	0	8	8	8	8
8241	711	8	0	0	0	0	8	8	8	8
8242	711	9	0	0	0	0	8	8	8	8
8243	711	10	0	0	0	0	8	8	8	8
8244	711	11	0	0	0	0	8	8	8	8
8245	712	0	6	7	14	3	\N	\N	2	\N
8246	712	1	5	6	13	3	\N	\N	2	\N
8247	712	2	5	5	12	3	\N	\N	\N	\N
8248	712	3	4	5	12	3	\N	\N	\N	\N
8249	712	4	3	0	11	0	\N	\N	\N	10
8250	712	5	2	0	10	0	\N	\N	\N	10
8251	712	6	0	0	0	0	8	8	8	8
8252	712	7	0	0	0	0	8	8	8	8
8253	712	8	0	0	0	0	8	8	8	8
8254	712	9	0	0	0	0	8	8	8	8
8255	712	10	0	0	0	0	8	8	8	8
8256	712	11	0	0	0	0	8	8	8	8
8257	713	0	6	8	15	3	\N	\N	2	\N
8258	713	1	5	7	14	3	\N	\N	2	\N
8259	713	2	5	6	13	3	\N	\N	\N	\N
8260	713	3	4	5	12	3	\N	\N	\N	\N
8261	713	4	3	0	11	0	\N	\N	\N	10
8262	713	5	2	0	10	0	\N	\N	\N	10
8263	713	6	0	0	0	0	8	8	8	8
8264	713	7	0	0	0	0	8	8	8	8
8265	713	8	0	0	0	0	8	8	8	8
8266	713	9	0	0	0	0	8	8	8	8
8267	713	10	0	0	0	0	8	8	8	8
8268	713	11	0	0	0	0	8	8	8	8
8269	714	0	6	9	15	3	\N	\N	2	\N
8270	714	1	5	8	14	3	\N	\N	2	\N
8271	714	2	5	7	13	3	\N	\N	\N	\N
8272	714	3	4	6	12	3	\N	\N	\N	\N
8273	714	4	4	5	12	3	\N	\N	\N	\N
8274	714	5	3	0	11	0	\N	\N	\N	10
8275	714	6	2	0	10	0	\N	\N	\N	10
8276	714	7	0	0	0	0	8	8	8	8
8277	714	8	0	0	0	0	8	8	8	8
8278	714	9	0	0	0	0	8	8	8	8
8279	714	10	0	0	0	0	8	8	8	8
8280	714	11	0	0	0	0	8	8	8	8
8281	715	0	6	8	16	2	\N	\N	23	\N
8282	715	1	6	7	15	2	\N	\N	23	\N
8283	715	2	6	6	14	2	\N	\N	23	\N
8284	715	3	5	6	13	2	\N	\N	23	\N
8285	715	4	5	5	12	2	\N	\N	\N	3
8286	715	5	2	0	11	0	\N	\N	\N	10
8287	715	6	0	0	0	0	8	8	8	8
8288	715	7	0	0	0	0	8	8	8	8
8289	715	8	0	0	0	0	8	8	8	8
8290	715	9	0	0	0	0	8	8	8	8
8291	715	10	0	0	0	0	8	8	8	8
8292	715	11	0	0	0	0	8	8	8	8
8293	716	0	6	8	16	2	\N	\N	23	\N
8294	716	1	6	8	15	2	\N	\N	23	\N
8295	716	2	6	7	14	2	\N	\N	23	\N
8296	716	3	5	6	13	2	\N	\N	23	\N
8297	716	4	5	5	12	2	\N	\N	\N	\N
8298	716	5	5	4	12	2	\N	\N	\N	3
8299	716	6	2	0	11	0	\N	\N	\N	10
8300	716	7	0	0	0	0	8	8	8	8
8301	716	8	0	0	0	0	8	8	8	8
8302	716	9	0	0	0	0	8	8	8	8
8303	716	10	0	0	0	0	8	8	8	8
8304	716	11	0	0	0	0	8	8	8	8
8305	717	0	6	9	16	2	\N	\N	23	\N
8306	717	1	6	8	16	2	\N	\N	23	\N
8307	717	2	6	7	15	2	\N	\N	23	\N
8308	717	3	5	6	14	2	\N	\N	23	\N
8309	717	4	5	5	13	2	\N	\N	23	\N
8310	717	5	5	4	12	2	\N	\N	\N	3
8311	717	6	2	0	11	0	\N	\N	\N	10
8312	717	7	0	0	0	0	8	8	8	8
8313	717	8	0	0	0	0	8	8	8	8
8314	717	9	0	0	0	0	8	8	8	8
8315	717	10	0	0	0	0	8	8	8	8
8316	717	11	0	0	0	0	8	8	8	8
8317	718	0	8	10	17	4	\N	\N	37	3
8318	718	1	8	9	16	4	\N	\N	37	3
8319	718	2	7	9	16	4	\N	\N	37	3
8320	718	3	7	9	15	4	\N	\N	\N	3
8321	718	4	6	8	13	3	\N	\N	\N	3
8322	718	5	5	7	12	3	\N	\N	\N	3
8323	718	6	4	6	11	2	\N	\N	\N	3
8324	718	7	3	5	10	1	\N	\N	\N	\N
8325	718	8	2	4	10	1	\N	\N	\N	\N
8326	718	9	0	0	0	0	8	8	8	8
8327	718	10	0	0	0	0	8	8	8	8
8328	718	11	0	0	0	0	8	8	8	8
8329	719	0	8	10	17	4	\N	\N	37	3
8330	719	1	8	9	17	4	\N	\N	37	3
8331	719	2	7	9	16	4	\N	\N	37	3
8332	719	3	7	9	15	4	\N	\N	\N	3
8333	719	4	6	8	14	3	\N	\N	\N	3
8334	719	5	6	7	13	3	\N	\N	\N	3
8335	719	6	5	7	12	3	\N	\N	\N	3
8336	719	7	4	6	11	2	\N	\N	\N	3
8337	719	8	3	5	19	1	\N	\N	\N	\N
8338	719	9	2	4	19	1	\N	\N	\N	\N
8339	719	10	0	0	0	0	8	8	8	8
8340	719	11	0	0	0	0	8	8	8	8
8341	720	0	8	11	18	4	\N	\N	37	3
8342	720	1	8	10	17	4	\N	\N	37	3
8343	720	2	7	9	16	4	\N	\N	37	3
8344	720	3	7	9	15	4	\N	\N	37	3
8345	720	4	6	8	14	3	\N	\N	\N	3
8346	720	5	6	7	13	3	\N	\N	\N	3
8347	720	6	5	7	12	3	\N	\N	\N	3
8348	720	7	5	6	11	3	\N	\N	\N	3
8349	720	8	4	5	10	2	\N	\N	\N	3
8350	720	9	2	4	10	1	\N	\N	\N	\N
8351	720	10	0	0	0	0	8	8	8	8
8352	720	11	0	0	0	0	8	8	8	8
8353	721	0	8	7	14	1	\N	\N	\N	\N
8354	721	1	7	7	14	1	\N	\N	\N	\N
8355	721	2	6	4	12	1	\N	\N	\N	\N
8356	721	3	5	0	11	0	\N	\N	\N	10
8357	721	4	0	0	0	0	8	8	8	8
8358	721	5	0	0	0	0	8	8	8	8
8359	721	6	0	0	0	0	8	8	8	8
8360	721	7	0	0	0	0	8	8	8	8
8361	721	8	0	0	0	0	8	8	8	8
8362	721	9	0	0	0	0	8	8	8	8
8363	721	10	0	0	0	0	8	8	8	8
8364	721	11	0	0	0	0	8	8	8	8
8365	722	0	8	8	14	1	\N	\N	\N	\N
8366	722	1	8	7	14	1	\N	\N	\N	\N
8367	722	2	7	5	14	1	\N	\N	\N	\N
8368	722	3	6	4	12	1	\N	\N	\N	\N
8369	722	4	5	0	11	0	\N	\N	\N	10
8370	722	5	0	0	0	0	8	8	8	8
8371	722	6	0	0	0	0	8	8	8	8
8372	722	7	0	0	0	0	8	8	8	8
8373	722	8	0	0	0	0	8	8	8	8
8374	722	9	0	0	0	0	8	8	8	8
8375	722	10	0	0	0	0	8	8	8	8
8376	722	11	0	0	0	0	8	8	8	8
8377	723	0	8	9	15	1	\N	\N	\N	\N
8378	723	1	8	8	14	1	\N	\N	\N	\N
8379	723	2	7	7	14	1	\N	\N	\N	\N
8380	723	3	7	5	13	1	\N	\N	\N	\N
8381	723	4	6	4	12	1	\N	\N	\N	\N
8382	723	5	5	0	11	0	\N	\N	\N	10
8383	723	6	0	0	0	0	8	8	8	8
8384	723	7	0	0	0	0	8	8	8	8
8385	723	8	0	0	0	0	8	8	8	8
8386	723	9	0	0	0	0	8	8	8	8
8387	723	10	0	0	0	0	8	8	8	8
8388	723	11	0	0	0	0	8	8	8	8
8389	724	0	8	7	15	2	\N	\N	29	\N
8390	724	1	7	7	15	2	\N	\N	29	\N
8391	724	2	7	5	13	1	\N	\N	\N	\N
8392	724	3	6	4	13	1	\N	\N	\N	\N
8393	724	4	4	0	11	0	\N	\N	\N	10
8394	724	5	0	0	0	0	8	8	8	8
8395	724	6	0	0	0	0	8	8	8	8
8396	724	7	0	0	0	0	8	8	8	8
8397	724	8	0	0	0	0	8	8	8	8
8398	724	9	0	0	0	0	8	8	8	8
8399	724	10	0	0	0	0	8	8	8	8
8400	724	11	0	0	0	0	8	8	8	8
8401	725	0	8	8	15	2	\N	\N	29	\N
8402	725	1	8	7	15	2	\N	\N	29	\N
8403	725	2	7	6	15	2	\N	\N	\N	\N
8404	725	3	6	4	13	1	\N	\N	\N	\N
8405	725	4	5	4	12	1	\N	\N	\N	\N
8406	725	5	4	0	11	0	\N	\N	\N	10
8407	725	6	0	0	0	0	8	8	8	8
8408	725	7	0	0	0	0	8	8	8	8
8409	725	8	0	0	0	0	8	8	8	8
8410	725	9	0	0	0	0	8	8	8	8
8411	725	10	0	0	0	0	8	8	8	8
8412	725	11	0	0	0	0	8	8	8	8
8413	726	0	8	8	15	2	\N	\N	29	\N
8414	726	1	8	7	15	2	\N	\N	29	\N
8415	726	2	7	6	15	2	\N	\N	29	\N
8416	726	3	6	4	13	1	\N	\N	\N	\N
8417	726	4	5	4	13	1	\N	\N	\N	\N
8418	726	5	4	4	11	1	\N	\N	\N	\N
8419	726	6	4	0	11	0	\N	\N	\N	10
8420	726	7	0	0	0	0	8	8	8	8
8421	726	8	0	0	0	0	8	8	8	8
8422	726	9	0	0	0	0	8	8	8	8
8423	726	10	0	0	0	0	8	8	8	8
8424	726	11	0	0	0	0	8	8	8	8
8425	727	0	8	9	16	2	\N	\N	9	\N
8426	727	1	8	8	16	2	\N	\N	\N	\N
8427	727	2	7	8	15	2	\N	\N	\N	\N
8428	727	3	6	4	13	1	\N	\N	\N	\N
8429	727	4	5	4	12	1	\N	\N	\N	\N
8430	727	5	4	0	11	0	\N	\N	\N	10
8431	727	6	0	0	0	0	8	8	8	8
8432	727	7	0	0	0	0	8	8	8	8
8433	727	8	0	0	0	0	8	8	8	8
8434	727	9	0	0	0	0	8	8	8	8
8435	727	10	0	0	0	0	8	8	8	8
8436	727	11	0	0	0	0	8	8	8	8
8437	728	0	8	9	17	2	\N	\N	9	\N
8438	728	1	8	8	16	2	\N	\N	9	\N
8439	728	2	7	8	16	2	\N	\N	\N	\N
8440	728	3	6	5	13	1	\N	\N	\N	\N
8441	728	4	5	5	12	1	\N	\N	\N	\N
8442	728	5	5	4	12	1	\N	\N	\N	\N
8443	728	6	4	0	11	0	\N	\N	\N	10
8444	728	7	0	0	0	0	8	8	8	8
8445	728	8	0	0	0	0	8	8	8	8
8446	728	9	0	0	0	0	8	8	8	8
8447	728	10	0	0	0	0	8	8	8	8
8448	728	11	0	0	0	0	8	8	8	8
8449	729	0	8	9	17	3	\N	\N	9	\N
8450	729	1	8	9	17	2	\N	\N	9	\N
8451	729	2	7	8	16	2	\N	\N	\N	\N
8452	729	3	7	7	15	2	\N	\N	\N	\N
8453	729	4	6	5	13	1	\N	\N	\N	\N
8454	729	5	5	5	12	1	\N	\N	\N	\N
8455	729	6	5	4	12	1	\N	\N	\N	\N
8456	729	7	4	0	11	0	\N	\N	\N	10
8457	729	8	0	0	0	0	8	8	8	8
8458	729	9	0	0	0	0	8	8	8	8
8459	729	10	0	0	0	0	8	8	8	8
8460	729	11	0	0	0	0	8	8	8	8
8461	730	0	8	9	16	3	\N	40	23	\N
8462	730	1	8	9	16	3	\N	\N	23	\N
8463	730	2	8	9	15	3	\N	\N	23	\N
8464	730	3	7	7	15	2	\N	\N	\N	\N
8465	730	4	6	6	14	2	\N	\N	\N	\N
8466	730	5	4	4	13	2	\N	\N	\N	\N
8467	730	6	4	0	10	0	\N	\N	\N	10
8468	730	7	0	0	0	0	8	8	8	8
8469	730	8	0	0	0	0	8	8	8	8
8470	730	9	0	0	0	0	8	8	8	8
8471	730	10	0	0	0	0	8	8	8	8
8472	730	11	0	0	0	0	8	8	8	8
8473	731	0	8	10	16	3	\N	40	23	\N
8474	731	1	8	9	16	3	\N	40	23	\N
8475	731	2	8	9	16	3	\N	\N	23	\N
8476	731	3	7	7	15	3	\N	\N	\N	\N
8477	731	4	6	6	15	2	\N	\N	\N	\N
8478	731	5	5	5	14	2	\N	\N	\N	\N
8479	731	6	4	4	12	1	\N	\N	\N	\N
8480	731	7	4	0	10	0	\N	\N	\N	10
8481	731	8	0	0	0	0	8	8	8	8
8482	731	9	0	0	0	0	8	8	8	8
8483	731	10	0	0	0	0	8	8	8	8
8484	731	11	0	0	0	0	8	8	8	8
8485	732	0	8	11	17	3	\N	40	23	\N
8486	732	1	8	10	16	3	\N	40	23	\N
8487	732	2	8	9	16	3	\N	40	23	\N
8488	732	3	7	7	16	3	\N	\N	23	\N
8489	732	4	6	6	15	2	\N	\N	\N	\N
8490	732	5	5	5	14	2	\N	\N	\N	\N
8491	732	6	4	4	12	2	\N	\N	\N	\N
8492	732	7	4	0	10	0	\N	\N	\N	10
8493	732	8	0	0	0	0	8	8	8	8
8494	732	9	0	0	0	0	8	8	8	8
8495	732	10	0	0	0	0	8	8	8	8
8496	732	11	0	0	0	0	8	8	8	8
8497	733	0	8	7	14	2	\N	\N	2	3
8498	733	1	6	6	13	1	\N	\N	2	\N
8499	733	2	4	5	12	1	\N	\N	\N	\N
8500	733	3	6	6	11	3	\N	\N	\N	4
8501	733	4	4	0	11	0	\N	\N	\N	10
8502	733	5	0	0	0	0	8	8	8	8
8503	733	6	0	0	0	0	8	8	8	8
8504	733	7	0	0	0	0	8	8	8	8
8505	733	8	0	0	0	0	8	8	8	8
8506	733	9	0	0	0	0	8	8	8	8
8507	733	10	0	0	0	0	8	8	8	8
8508	733	11	0	0	0	0	8	8	8	8
8509	734	0	8	8	15	2	\N	\N	2	3
8510	734	1	6	7	14	2	\N	\N	2	\N
8511	734	2	5	6	13	1	\N	\N	\N	\N
8512	734	3	7	7	11	3	\N	\N	\N	4
8513	734	4	4	0	11	0	\N	\N	\N	10
8514	734	5	0	0	0	0	8	8	8	8
8515	734	6	0	0	0	0	8	8	8	8
8516	734	7	0	0	0	0	8	8	8	8
8517	734	8	0	0	0	0	8	8	8	8
8518	734	9	0	0	0	0	8	8	8	8
8519	734	10	0	0	0	0	8	8	8	8
8520	734	11	0	0	0	0	8	8	8	8
8521	735	0	8	9	15	2	\N	\N	2	3
8522	735	1	6	8	15	2	\N	\N	2	3
8523	735	2	5	7	14	1	\N	\N	\N	\N
8524	735	3	5	6	13	1	\N	\N	\N	\N
8525	735	4	7	7	11	3	\N	\N	\N	4
8526	735	5	4	0	11	0	\N	\N	\N	10
8527	735	6	0	0	0	0	8	8	8	8
8528	735	7	0	0	0	0	8	8	8	8
8529	735	8	0	0	0	0	8	8	8	8
8530	735	9	0	0	0	0	8	8	8	8
8531	735	10	0	0	0	0	8	8	8	8
8532	735	11	0	0	0	0	8	8	8	8
8533	736	0	8	7	14	3	\N	\N	2	3
8534	736	1	6	6	13	2	\N	\N	2	\N
8535	736	2	4	5	12	1	\N	\N	2	\N
8536	736	3	6	6	11	3	\N	\N	\N	4
8537	736	4	4	0	11	0	\N	\N	\N	10
8538	736	5	0	0	0	0	8	8	8	8
8539	736	6	0	0	0	0	8	8	8	8
8540	736	7	0	0	0	0	8	8	8	8
8541	736	8	0	0	0	0	8	8	8	8
8542	736	9	0	0	0	0	8	8	8	8
8543	736	10	0	0	0	0	8	8	8	8
8544	736	11	0	0	0	0	8	8	8	8
8545	737	0	8	7	15	3	\N	\N	2	3
8546	737	1	6	6	14	2	\N	\N	2	3
8547	737	2	5	6	13	1	\N	\N	2	\N
8548	737	3	4	5	12	1	\N	\N	\N	\N
8549	737	4	6	7	11	3	\N	\N	\N	4
8550	737	5	4	0	11	0	\N	\N	\N	10
8551	737	6	0	0	0	0	8	8	8	8
8552	737	7	0	0	0	0	8	8	8	8
8553	737	8	0	0	0	0	8	8	8	8
8554	737	9	0	0	0	0	8	8	8	8
8555	737	10	0	0	0	0	8	8	8	8
8556	737	11	0	0	0	0	8	8	8	8
8557	738	0	8	8	15	3	\N	\N	2	3
8558	738	1	6	7	14	3	\N	\N	2	3
8559	738	2	5	6	13	2	\N	\N	2	\N
8560	738	3	4	6	12	1	\N	\N	\N	\N
8561	738	4	6	7	11	4	\N	\N	\N	4
8562	738	5	4	0	11	0	\N	\N	\N	10
8563	738	6	0	0	0	0	8	8	8	8
8564	738	7	0	0	0	0	8	8	8	8
8565	738	8	0	0	0	0	8	8	8	8
8566	738	9	0	0	0	0	8	8	8	8
8567	738	10	0	0	0	0	8	8	8	8
8568	738	11	0	0	0	0	8	8	8	8
8569	739	0	8	7	15	1	\N	22	\N	20
8570	739	1	6	6	14	1	\N	22	\N	20
8571	739	2	5	5	13	1	\N	\N	\N	3
8572	739	3	7	7	13	2	\N	\N	\N	4
8573	739	4	4	0	11	0	\N	\N	\N	10
8574	739	5	0	0	0	0	8	8	8	8
8575	739	6	0	0	0	0	8	8	8	8
8576	739	7	0	0	0	0	8	8	8	8
8577	739	8	0	0	0	0	8	8	8	8
8578	739	9	0	0	0	0	8	8	8	8
8579	739	10	0	0	0	0	8	8	8	8
8580	739	11	0	0	0	0	8	8	8	8
8581	740	0	8	7	15	1	\N	22	\N	20
8582	740	1	6	7	14	1	\N	22	\N	20
8583	740	2	5	6	13	1	\N	\N	\N	3
8584	740	3	4	5	13	1	\N	\N	\N	3
8585	740	4	7	7	11	2	\N	\N	\N	4
8586	740	5	4	0	11	0	\N	\N	\N	10
8587	740	6	0	0	0	0	8	8	8	8
8588	740	7	0	0	0	0	8	8	8	8
8589	740	8	0	0	0	0	8	8	8	8
8590	740	9	0	0	0	0	8	8	8	8
8591	740	10	0	0	0	0	8	8	8	8
8592	740	11	0	0	0	0	8	8	8	8
8593	741	0	8	8	15	2	\N	22	\N	20
8594	741	1	6	7	14	1	\N	22	\N	20
8595	741	2	5	7	13	1	\N	22	\N	20
8596	741	3	4	6	12	1	\N	\N	\N	3
8597	741	4	7	7	11	2	\N	\N	\N	4
8598	741	5	4	0	11	0	\N	\N	\N	10
8599	741	6	0	0	0	0	8	8	8	8
8600	741	7	0	0	0	0	8	8	8	8
8601	741	8	0	0	0	0	8	8	8	8
8602	741	9	0	0	0	0	8	8	8	8
8603	741	10	0	0	0	0	8	8	8	8
8604	741	11	0	0	0	0	8	8	8	8
8605	742	0	8	9	15	3	\N	\N	\N	3
8606	742	1	8	8	14	3	\N	\N	\N	3
8607	742	2	6	7	14	2	\N	\N	\N	3
8608	742	3	8	9	13	4	\N	\N	\N	4
8609	742	4	7	7	11	3	\N	\N	\N	4
8610	742	5	3	0	10	0	\N	\N	\N	10
8611	742	6	0	0	0	0	8	8	8	8
8612	742	7	0	0	0	0	8	8	8	8
8613	742	8	0	0	0	0	8	8	8	8
8614	742	9	0	0	0	0	8	8	8	8
8615	742	10	0	0	0	0	8	8	8	8
8616	742	11	0	0	0	0	8	8	8	8
8617	743	0	8	10	15	3	\N	\N	37	3
8618	743	1	8	9	15	3	\N	\N	\N	3
8619	743	2	6	7	14	2	\N	\N	\N	3
8620	743	3	8	9	13	4	\N	\N	\N	4
8621	743	4	7	7	11	3	\N	\N	\N	4
8622	743	5	3	0	10	0	\N	\N	\N	10
8623	743	6	0	0	0	0	8	8	8	8
8624	743	7	0	0	0	0	8	8	8	8
8625	743	8	0	0	0	0	8	8	8	8
8626	743	9	0	0	0	0	8	8	8	8
8627	743	10	0	0	0	0	8	8	8	8
8628	743	11	0	0	0	0	8	8	8	8
8629	744	0	8	11	15	3	\N	\N	37	3
8630	744	1	8	10	15	3	\N	\N	\N	3
8631	744	2	6	8	14	2	\N	\N	\N	3
8632	744	3	6	7	14	2	\N	\N	\N	3
8633	744	4	8	9	13	4	\N	\N	\N	4
8634	744	5	7	7	11	3	\N	\N	\N	4
8635	744	6	3	0	10	0	\N	\N	\N	10
8636	744	7	0	0	0	0	8	8	8	8
8637	744	8	0	0	0	0	8	8	8	8
8638	744	9	0	0	0	0	8	8	8	8
8639	744	10	0	0	0	0	8	8	8	8
8640	744	11	0	0	0	0	8	8	8	8
8641	745	0	8	6	14	1	13	\N	\N	\N
8642	745	1	4	0	10	0	\N	\N	\N	10
8643	745	2	0	0	0	0	8	8	8	8
8644	745	3	0	0	0	0	8	8	8	8
8645	745	4	0	0	0	0	8	8	8	8
8646	745	5	0	0	0	0	8	8	8	8
8647	745	6	0	0	0	0	8	8	8	8
8648	745	7	0	0	0	0	8	8	8	8
8649	745	8	0	0	0	0	8	8	8	8
8650	745	9	0	0	0	0	8	8	8	8
8651	745	10	0	0	0	0	8	8	8	8
8652	745	11	0	0	0	0	8	8	8	8
8653	746	0	10	7	14	1	13	\N	\N	\N
8654	746	1	4	5	13	1	\N	\N	\N	\N
8655	746	2	2	0	10	0	\N	\N	\N	10
8656	746	3	0	0	0	0	8	8	8	8
8657	746	4	0	0	0	0	8	8	8	8
8658	746	5	0	0	0	0	8	8	8	8
8659	746	6	0	0	0	0	8	8	8	8
8660	746	7	0	0	0	0	8	8	8	8
8661	746	8	0	0	0	0	8	8	8	8
8662	746	9	0	0	0	0	8	8	8	8
8663	746	10	0	0	0	0	8	8	8	8
8664	746	11	0	0	0	0	8	8	8	8
8665	747	0	10	7	14	1	13	\N	\N	\N
8666	747	1	8	5	13	1	13	\N	\N	\N
8667	747	2	4	4	11	1	\N	\N	\N	\N
8668	747	3	2	0	10	0	\N	\N	\N	10
8669	747	4	0	0	0	0	8	8	8	8
8670	747	5	0	0	0	0	8	8	8	8
8671	747	6	0	0	0	0	8	8	8	8
8672	747	7	0	0	0	0	8	8	8	8
8673	747	8	0	0	0	0	8	8	8	8
8674	747	9	0	0	0	0	8	8	8	8
8675	747	10	0	0	0	0	8	8	8	8
8676	747	11	0	0	0	0	8	8	8	8
8677	748	0	8	10	15	1	\N	40	\N	\N
8678	748	1	5	8	13	1	\N	\N	\N	\N
8679	748	2	0	0	0	0	8	8	8	8
8680	748	3	0	0	0	0	8	8	8	8
8681	748	4	0	0	0	0	8	8	8	8
8682	748	5	0	0	0	0	8	8	8	8
8683	748	6	0	0	0	0	8	8	8	8
8684	748	7	0	0	0	0	8	8	8	8
8685	748	8	0	0	0	0	8	8	8	8
8686	748	9	0	0	0	0	8	8	8	8
8687	748	10	0	0	0	0	8	8	8	8
8688	748	11	0	0	0	0	8	8	8	8
8689	749	0	8	10	15	2	\N	40	\N	\N
8690	749	1	8	8	14	2	\N	\N	\N	\N
8691	749	2	5	6	13	2	\N	\N	\N	\N
8692	749	3	2	4	11	1	\N	\N	\N	\N
8693	749	4	0	0	0	0	8	8	8	8
8694	749	5	0	0	0	0	8	8	8	8
8695	749	6	0	0	0	0	8	8	8	8
8696	749	7	0	0	0	0	8	8	8	8
8697	749	8	0	0	0	0	8	8	8	8
8698	749	9	0	0	0	0	8	8	8	8
8699	749	10	0	0	0	0	8	8	8	8
8700	749	11	0	0	0	0	8	8	8	8
8701	750	0	8	11	15	3	\N	40	\N	\N
8702	750	1	8	10	15	2	\N	\N	\N	\N
8703	750	2	5	8	14	2	\N	\N	\N	\N
8704	750	3	2	6	13	2	\N	\N	\N	\N
8705	750	4	2	4	11	2	\N	\N	\N	\N
8706	750	5	2	4	11	1	\N	\N	\N	\N
8707	750	6	0	0	0	0	8	8	8	8
8708	750	7	0	0	0	0	8	8	8	8
8709	750	8	0	0	0	0	8	8	8	8
8710	750	9	0	0	0	0	8	8	8	8
8711	750	10	0	0	0	0	8	8	8	8
8712	750	11	0	0	0	0	8	8	8	8
8713	751	0	12	8	16	1	30	\N	\N	\N
8714	751	1	10	7	15	1	35	\N	\N	\N
8715	751	2	4	0	14	0	35	\N	\N	10
8716	751	3	2	0	14	0	35	\N	\N	10
8717	751	4	0	0	0	0	8	8	8	8
8718	751	5	0	0	0	0	8	8	8	8
8719	751	6	0	0	0	0	8	8	8	8
8720	751	7	0	0	0	0	8	8	8	8
8721	751	8	0	0	0	0	8	8	8	8
8722	751	9	0	0	0	0	8	8	8	8
8723	751	10	0	0	0	0	8	8	8	8
8724	751	11	0	0	0	0	8	8	8	8
8725	752	0	12	9	16	1	30	\N	\N	\N
8726	752	1	10	8	15	1	35	\N	\N	\N
8727	752	2	8	4	15	1	35	\N	\N	\N
8728	752	3	6	4	14	1	35	\N	\N	\N
8729	752	4	4	0	14	0	35	\N	\N	10
8730	752	5	2	0	14	0	35	\N	\N	10
8731	752	6	0	0	0	0	8	8	8	8
8732	752	7	0	0	0	0	8	8	8	8
8733	752	8	0	0	0	0	8	8	8	8
8734	752	9	0	0	0	0	8	8	8	8
8735	752	10	0	0	0	0	8	8	8	8
8736	752	11	0	0	0	0	8	8	8	8
8737	753	0	12	9	16	1	30	\N	\N	\N
8738	753	1	10	8	16	1	30	\N	\N	\N
8739	753	2	8	6	15	1	35	\N	\N	\N
8740	753	3	6	4	14	1	35	\N	\N	\N
8741	753	4	5	4	14	1	35	\N	\N	\N
8742	753	5	4	4	14	1	35	\N	\N	\N
8743	753	6	4	0	14	0	35	\N	\N	10
8744	753	7	2	0	14	0	35	\N	\N	10
8745	753	8	0	0	0	0	8	8	8	8
8746	753	9	0	0	0	0	8	8	8	8
8747	753	10	0	0	0	0	8	8	8	8
8748	753	11	0	0	0	0	8	8	8	8
8749	754	0	8	9	14	2	1	\N	23	\N
8750	754	1	6	8	13	1	1	\N	23	\N
8751	754	2	5	7	12	1	1	\N	23	\N
8752	754	3	4	0	11	0	1	\N	23	10
8753	754	4	4	0	10	0	1	\N	\N	10
8754	754	5	0	0	0	0	8	8	8	8
8755	754	6	0	0	0	0	8	8	8	8
8756	754	7	0	0	0	0	8	8	8	8
8757	754	8	0	0	0	0	8	8	8	8
8758	754	9	0	0	0	0	8	8	8	8
8759	754	10	0	0	0	0	8	8	8	8
8760	754	11	0	0	0	0	8	8	8	8
8761	755	0	8	10	14	2	1	\N	23	\N
8762	755	1	6	9	14	1	1	\N	23	\N
8763	755	2	5	7	13	1	1	\N	23	\N
8764	755	3	4	4	12	1	1	\N	23	\N
8765	755	4	4	10	11	0	1	\N	23	10
8766	755	5	4	0	10	0	1	\N	\N	10
8767	755	6	0	0	0	0	8	8	8	8
8768	755	7	0	0	0	0	8	8	8	8
8769	755	8	0	0	0	0	8	8	8	8
8770	755	9	0	0	0	0	8	8	8	8
8771	755	10	0	0	0	0	8	8	8	8
8772	755	11	0	0	0	0	8	8	8	8
8773	756	0	8	11	15	2	1	\N	23	\N
8774	756	1	6	9	14	2	1	\N	23	\N
8775	756	2	5	8	13	2	1	\N	23	\N
8776	756	3	4	6	12	1	1	\N	23	\N
8777	756	4	4	0	11	0	1	\N	23	10
8778	756	5	4	0	10	0	1	\N	\N	10
8779	756	6	0	0	0	0	8	8	8	8
8780	756	7	0	0	0	0	8	8	8	8
8781	756	8	0	0	0	0	8	8	8	8
8782	756	9	0	0	0	0	8	8	8	8
8783	756	10	0	0	0	0	8	8	8	8
8784	756	11	0	0	0	0	8	8	8	8
8785	757	0	10	8	16	3	13	33	\N	3
8786	757	1	10	7	16	2	13	33	\N	3
8787	757	2	10	6	16	2	13	33	\N	3
8788	757	3	10	0	15	0	13	\N	\N	10
8789	757	4	2	0	15	0	\N	\N	\N	10
8790	757	5	0	0	0	0	8	8	8	8
8791	757	6	0	0	0	0	8	8	8	8
8792	757	7	0	0	0	0	8	8	8	8
8793	757	8	0	0	0	0	8	8	8	8
8794	757	9	0	0	0	0	8	8	8	8
8795	757	10	0	0	0	0	8	8	8	8
8796	757	11	0	0	0	0	8	8	8	8
8797	758	0	10	9	16	3	13	33	\N	3
8798	758	1	10	8	16	2	13	33	\N	3
8799	758	2	10	7	16	2	13	33	\N	3
8800	758	3	10	5	16	2	13	33	\N	3
8801	758	4	10	0	15	0	13	\N	\N	10
8802	758	5	2	0	15	0	\N	\N	\N	10
8803	758	6	0	0	0	0	8	8	8	8
8804	758	7	0	0	0	0	8	8	8	8
8805	758	8	0	0	0	0	8	8	8	8
8806	758	9	0	0	0	0	8	8	8	8
8807	758	10	0	0	0	0	8	8	8	8
8808	758	11	0	0	0	0	8	8	8	8
8809	759	0	10	10	16	3	13	33	\N	3
8810	759	1	10	9	16	3	13	33	\N	3
8811	759	2	10	8	16	2	13	33	\N	3
8812	759	3	10	7	16	2	13	33	\N	3
8813	759	4	10	5	16	2	13	33	\N	3
8814	759	5	10	0	15	0	\N	\N	\N	10
8815	759	6	2	0	15	0	\N	\N	\N	10
8816	759	7	0	0	0	0	8	8	8	8
8817	759	8	0	0	0	0	8	8	8	8
8818	759	9	0	0	0	0	8	8	8	8
8819	759	10	0	0	0	0	8	8	8	8
8820	759	11	0	0	0	0	8	8	8	8
8821	760	0	8	6	12	1	35	\N	\N	\N
8822	760	1	10	11	15	3	35	\N	\N	3
8823	760	2	9	11	15	3	35	\N	\N	3
8824	760	3	8	10	14	3	\N	\N	\N	3
8825	760	4	5	8	13	2	\N	\N	\N	\N
8826	760	5	4	6	12	2	\N	\N	\N	\N
8827	760	6	2	0	11	0	\N	\N	\N	10
8828	760	7	0	0	0	0	8	8	8	8
8829	760	8	0	0	0	0	8	8	8	8
8830	760	9	0	0	0	0	8	8	8	8
8831	760	10	0	0	0	0	8	8	8	8
8832	760	11	0	0	0	0	8	8	8	8
8833	761	0	8	6	12	1	35	\N	\N	\N
8834	761	1	10	12	15	3	35	\N	\N	3
8835	761	2	9	11	15	3	35	\N	\N	3
8836	761	3	8	10	14	3	35	\N	\N	3
8837	761	4	7	9	14	3	\N	\N	\N	3
8838	761	5	6	8	13	3	\N	\N	\N	3
8839	761	6	5	6	12	2	\N	\N	\N	\N
8840	761	7	4	4	11	0	\N	\N	\N	10
8841	761	8	0	0	0	0	8	8	8	8
8842	761	9	0	0	0	0	8	8	8	8
8843	761	10	0	0	0	0	8	8	8	8
8844	761	11	0	0	0	0	8	8	8	8
8845	762	0	8	6	12	1	35	\N	\N	\N
8846	762	1	10	12	16	3	35	\N	\N	3
8847	762	2	9	11	15	3	35	\N	\N	3
8848	762	3	8	10	14	3	35	\N	\N	3
8849	762	4	7	9	14	3	35	\N	\N	3
8850	762	5	6	8	13	3	\N	\N	\N	3
8851	762	6	5	7	13	2	\N	\N	\N	\N
8852	762	7	5	6	12	2	\N	\N	\N	\N
8853	762	8	4	0	11	0	\N	\N	\N	10
8854	762	9	0	0	0	0	8	8	8	8
8855	762	10	0	0	0	0	8	8	8	8
8856	762	11	0	0	0	0	8	8	8	8
8857	763	0	6	6	12	1	\N	\N	\N	\N
8858	763	1	4	4	12	1	\N	\N	\N	\N
8859	763	2	8	11	16	2	\N	\N	\N	3
8860	763	3	8	12	17	4	\N	\N	37	3
8861	763	4	7	11	16	4	\N	\N	37	3
8862	763	5	7	10	15	3	\N	\N	\N	3
8863	763	6	6	9	14	3	\N	\N	\N	3
8864	763	7	5	8	13	2	\N	\N	\N	3
8865	763	8	4	0	11	0	\N	\N	\N	10
8866	763	9	0	0	0	0	8	8	8	8
8867	763	10	0	0	0	0	8	8	8	8
8868	763	11	0	0	0	0	8	8	8	8
8869	764	0	6	6	12	1	\N	\N	\N	\N
8870	764	1	4	4	12	1	\N	\N	\N	\N
8871	764	2	8	11	17	3	\N	\N	\N	3
8872	764	3	8	13	17	4	\N	\N	37	3
8873	764	4	7	11	16	4	\N	\N	37	3
8874	764	5	7	10	15	3	\N	\N	37	3
8875	764	6	6	9	14	3	\N	\N	\N	3
8876	764	7	5	8	13	3	\N	\N	\N	3
8877	764	8	4	7	12	2	\N	\N	\N	3
8878	764	9	4	0	11	0	\N	\N	\N	10
8879	764	10	0	0	0	0	8	8	8	8
8880	764	11	0	0	0	0	8	8	8	8
8881	765	0	6	6	12	1	\N	\N	\N	\N
8882	765	1	4	4	12	1	\N	\N	\N	\N
8883	765	2	8	12	17	3	\N	\N	37	3
8884	765	3	8	13	18	4	\N	\N	37	3
8885	765	4	7	11	16	4	\N	\N	37	3
8886	765	5	7	10	16	4	\N	\N	\N	3
8887	765	6	7	10	15	3	\N	\N	\N	3
8888	765	7	6	9	14	3	\N	\N	\N	3
8889	765	8	5	8	13	3	\N	\N	\N	3
8890	765	9	4	7	12	2	\N	\N	\N	3
8891	765	10	4	0	11	0	\N	\N	\N	10
8892	765	11	0	0	0	0	8	8	8	8
8893	766	0	6	6	14	2	\N	\N	\N	3
8894	766	1	6	7	13	3	\N	\N	\N	3
8895	766	2	7	7	13	4	\N	\N	\N	3
8896	766	3	8	8	12	4	\N	\N	\N	3
8897	766	4	8	9	12	4	\N	\N	\N	3
8898	766	5	7	10	11	4	\N	\N	\N	3
8899	766	6	6	8	11	3	\N	\N	\N	3
8900	766	7	4	5	11	2	\N	\N	\N	3
8901	766	8	2	4	11	1	\N	\N	\N	\N
8902	766	9	0	0	0	0	8	8	8	8
8903	766	10	0	0	0	0	8	8	8	8
8904	766	11	0	0	0	0	8	8	8	8
8905	767	0	6	6	14	2	\N	\N	\N	3
8906	767	1	6	7	13	3	\N	\N	\N	3
8907	767	2	7	7	13	4	\N	\N	\N	3
8908	767	3	8	8	12	4	\N	\N	\N	3
8909	767	4	8	9	12	4	\N	\N	\N	3
8910	767	5	8	10	12	4	\N	\N	\N	3
8911	767	6	7	9	11	4	\N	\N	\N	3
8912	767	7	6	8	11	3	\N	\N	\N	3
8913	767	8	4	5	11	2	\N	\N	\N	3
8914	767	9	2	4	11	1	\N	\N	\N	\N
8915	767	10	0	0	0	0	8	8	8	8
8916	767	11	0	0	0	0	8	8	8	8
8917	768	0	6	6	14	2	\N	\N	\N	3
8918	768	1	6	7	14	3	\N	\N	\N	3
8919	768	2	7	8	13	4	\N	\N	\N	3
8920	768	3	8	8	12	4	\N	\N	\N	3
8921	768	4	8	9	12	4	\N	\N	\N	3
8922	768	5	8	10	12	4	\N	\N	\N	3
8923	768	6	7	10	11	4	\N	\N	\N	3
8924	768	7	6	9	11	4	\N	\N	\N	3
8925	768	8	5	8	11	3	\N	\N	\N	3
8926	768	9	4	5	11	2	\N	\N	\N	3
8927	768	10	2	4	11	1	\N	\N	\N	\N
8928	768	11	0	0	0	0	8	8	8	8
8929	769	0	8	12	15	4	24	18	\N	7
8930	769	1	8	11	15	4	24	18	\N	7
8931	769	2	8	10	14	3	\N	18	\N	20
8932	769	3	7	9	14	3	\N	\N	\N	20
8933	769	4	7	8	14	3	\N	\N	\N	20
8934	769	5	6	6	13	2	\N	\N	\N	\N
8935	769	6	6	4	12	1	\N	\N	\N	\N
8936	769	7	5	0	11	0	\N	\N	\N	10
8937	769	8	0	0	0	0	8	8	8	8
8938	769	9	0	0	0	0	8	8	8	8
8939	769	10	0	0	0	0	8	8	8	8
8940	769	11	0	0	0	0	8	8	8	8
8941	770	0	8	13	18	4	\N	\N	2	7
8942	770	1	8	13	17	4	\N	\N	2	7
8943	770	2	8	13	16	4	\N	\N	2	7
8944	770	3	7	12	16	4	\N	\N	2	\N
8945	770	4	7	12	16	3	\N	\N	2	\N
8946	770	5	6	12	15	3	\N	\N	2	\N
8947	770	6	6	11	15	3	\N	\N	2	\N
8948	770	7	5	11	14	3	\N	\N	2	\N
8949	770	8	5	10	14	2	\N	\N	2	\N
8950	770	9	4	8	13	2	\N	\N	\N	\N
8951	770	10	4	6	12	1	\N	\N	\N	\N
8952	770	11	0	0	0	0	8	8	8	8
8953	771	0	8	11	18	2	\N	22	9	7
8954	771	1	8	10	17	2	\N	22	9	7
8955	771	2	7	9	16	1	\N	22	9	\N
8956	771	3	6	6	15	1	\N	22	9	\N
8957	771	4	5	4	13	1	\N	22	\N	\N
8958	771	5	4	4	12	1	\N	\N	\N	\N
8959	771	6	2	4	11	1	\N	\N	\N	\N
8960	771	7	0	0	0	0	8	8	8	8
8961	771	8	0	0	0	0	8	8	8	8
8962	771	9	0	0	0	0	8	8	8	8
8963	771	10	0	0	0	0	8	8	8	8
8964	771	11	0	0	0	0	8	8	8	8
8965	772	0	8	13	15	4	\N	\N	37	7
8966	772	1	7	12	15	4	\N	\N	37	7
8967	772	2	6	11	15	4	\N	\N	37	7
8968	772	3	7	12	14	5	\N	\N	\N	4
8969	772	4	6	11	14	4	\N	\N	\N	4
8970	772	5	5	10	13	3	\N	\N	\N	4
8971	772	6	5	9	13	2	\N	\N	\N	\N
8972	772	7	5	9	12	2	\N	\N	32	\N
8973	772	8	4	8	12	1	\N	\N	32	\N
8974	772	9	4	7	11	1	\N	\N	\N	\N
8975	772	10	0	0	0	0	8	8	8	8
8976	772	11	0	0	0	0	8	8	8	8
8977	773	0	8	9	15	2	\N	\N	23	26
8978	773	1	8	9	14	2	\N	\N	23	26
8979	773	2	8	8	14	2	\N	38	23	26
8980	773	3	7	7	13	2	\N	38	\N	26
8981	773	4	7	6	13	1	\N	38	\N	26
8982	773	5	6	5	12	1	\N	\N	\N	26
8983	773	6	5	4	12	1	\N	\N	\N	\N
8984	773	7	4	0	12	0	\N	\N	\N	10
8985	773	8	0	0	0	0	8	8	8	8
8986	773	9	0	0	0	0	8	8	8	8
8987	773	10	0	0	0	0	8	8	8	8
8988	773	11	0	0	0	0	8	8	8	8
8989	774	0	10	13	18	5	13	\N	23	7
8990	774	1	10	13	17	4	13	\N	23	7
8991	774	2	10	12	17	3	13	38	\N	7
8992	774	3	9	11	16	3	13	38	\N	7
8993	774	4	9	10	15	3	13	38	\N	7
8994	774	5	8	10	14	2	13	38	\N	3
8995	774	6	7	9	12	2	13	38	\N	3
8996	774	7	6	8	12	2	13	38	\N	3
8997	774	8	5	7	11	2	\N	38	\N	\N
8998	774	9	0	0	0	0	8	8	8	8
8999	774	10	0	0	0	0	8	8	8	8
9000	774	11	0	0	0	0	8	8	8	8
9001	775	0	6	12	17	3	\N	40	23	7
9002	775	1	6	11	16	3	\N	40	23	7
9003	775	2	6	10	16	3	\N	40	23	\N
9004	775	3	5	9	15	3	\N	40	23	\N
9005	775	4	5	9	15	3	\N	\N	23	3
9006	775	5	5	9	14	3	\N	\N	23	3
9007	775	6	5	8	14	3	\N	\N	23	3
9008	775	7	4	7	13	3	\N	\N	23	3
9009	775	8	4	5	12	3	\N	\N	\N	3
9010	775	9	0	0	0	0	8	8	8	8
9011	775	10	0	0	0	0	8	8	8	8
9012	775	11	0	0	0	0	8	8	8	8
9013	776	0	10	12	17	4	30	18	9	7
9014	776	1	10	11	16	4	30	18	9	7
9015	776	2	9	9	15	3	\N	18	\N	7
9016	776	3	8	8	14	3	\N	\N	\N	3
9017	776	4	8	7	14	2	\N	\N	\N	3
9018	776	5	7	6	13	2	\N	\N	\N	3
9019	776	6	6	5	13	2	\N	\N	\N	3
9020	776	7	5	4	12	1	\N	\N	\N	\N
9021	776	8	4	4	11	1	\N	\N	\N	\N
9022	776	9	0	0	0	0	8	8	8	8
9023	776	10	0	0	0	0	8	8	8	8
9024	776	11	0	0	0	0	8	8	8	8
9025	777	0	8	12	18	4	\N	15	23	7
9026	777	1	8	11	17	3	\N	15	23	7
9027	777	2	8	10	16	3	\N	15	23	7
9028	777	3	7	10	16	3	\N	\N	23	7
9029	777	4	6	9	15	3	\N	\N	23	7
9030	777	5	6	7	14	3	\N	\N	\N	\N
9031	777	6	5	6	12	2	\N	\N	\N	\N
9032	777	7	4	5	11	2	\N	\N	\N	\N
9033	777	8	4	4	10	1	\N	\N	\N	\N
9034	777	9	0	0	0	0	8	8	8	8
9035	777	10	0	0	0	0	8	8	8	8
9036	777	11	0	0	0	0	8	8	8	8
9037	778	0	8	10	16	4	\N	18	\N	\N
9038	778	1	8	9	15	2	13	\N	\N	7
9039	778	2	6	10	10	4	\N	12	\N	3
9040	778	3	4	6	16	3	\N	33	\N	3
9041	778	4	6	8	13	1	24	\N	\N	26
9042	778	5	8	6	11	3	\N	\N	23	3
9043	778	6	6	7	10	5	\N	\N	\N	4
9044	778	7	0	0	0	0	8	8	8	8
9045	778	8	0	0	0	0	8	8	8	8
9046	778	9	0	0	0	0	8	8	8	8
9047	778	10	0	0	0	0	8	8	8	8
9048	778	11	0	0	0	0	8	8	8	8
9049	779	0	12	12	18	4	35	\N	23	3
9050	779	1	11	12	17	4	35	\N	23	3
9051	779	2	10	11	16	4	35	\N	23	3
9052	779	3	8	10	15	4	35	\N	23	3
9053	779	4	8	9	14	4	35	\N	23	3
9054	779	5	8	8	14	4	35	\N	23	3
9055	779	6	6	7	13	4	35	\N	23	3
9056	779	7	4	6	13	3	35	\N	23	\N
9057	779	8	0	0	0	0	8	8	8	8
9058	779	9	0	0	0	0	8	8	8	8
9059	779	10	0	0	0	0	8	8	8	8
9060	779	11	0	0	0	0	8	8	8	8
9061	780	0	10	10	16	2	13	\N	37	\N
9062	780	1	8	9	15	2	13	\N	37	3
9063	780	2	8	8	15	2	\N	\N	\N	3
9064	780	3	7	7	14	2	\N	\N	\N	3
9065	780	4	6	8	14	3	\N	\N	\N	4
9066	780	5	5	7	13	3	\N	\N	\N	4
9067	780	6	4	5	13	1	\N	\N	\N	\N
9068	780	7	0	0	0	0	8	8	8	8
9069	780	8	0	0	0	0	8	8	8	8
9070	780	9	0	0	0	0	8	8	8	8
9071	780	10	0	0	0	0	8	8	8	8
9072	780	11	0	0	0	0	8	8	8	8
9073	781	0	8	13	18	4	13	\N	37	3
9074	781	1	8	13	17	4	13	\N	37	3
9075	781	2	8	12	16	3	\N	\N	37	3
9076	781	3	7	12	15	3	\N	\N	37	3
9077	781	4	7	11	15	2	\N	\N	\N	3
9078	781	5	6	10	14	2	\N	\N	\N	3
9079	781	6	6	9	14	2	\N	\N	\N	3
9080	781	7	5	8	13	2	\N	\N	\N	3
9081	781	8	5	7	12	2	\N	\N	\N	\N
9082	781	9	0	0	0	0	8	8	8	8
9083	781	10	0	0	0	0	8	8	8	8
9084	781	11	0	0	0	0	8	8	8	8
9085	782	0	8	12	17	4	13	18	23	20
9086	782	1	8	11	16	3	13	18	23	20
9087	782	2	7	10	15	3	13	18	23	20
9088	782	3	7	9	14	3	13	18	23	20
9089	782	4	6	9	14	2	\N	18	23	20
9090	782	5	6	9	13	2	\N	\N	23	20
9091	782	6	5	8	13	2	\N	\N	\N	20
9092	782	7	5	8	12	2	\N	\N	\N	\N
9093	782	8	4	7	12	2	\N	\N	\N	\N
9094	782	9	0	0	0	0	8	8	8	8
9095	782	10	0	0	0	0	8	8	8	8
9096	782	11	0	0	0	0	8	8	8	8
9097	783	0	8	11	19	2	13	22	23	20
9098	783	1	8	11	18	2	13	22	23	20
9099	783	2	7	10	17	2	13	22	23	20
9100	783	3	7	9	16	2	13	22	23	20
9101	783	4	6	8	15	1	\N	22	23	20
9102	783	5	6	7	14	1	\N	22	23	20
9103	783	6	5	6	13	1	\N	22	23	20
9104	783	7	4	5	13	1	\N	\N	\N	\N
9105	783	8	0	0	0	0	8	8	8	8
9106	783	9	0	0	0	0	8	8	8	8
9107	783	10	0	0	0	0	8	8	8	8
9108	783	11	0	0	0	0	8	8	8	8
9109	784	0	10	14	19	5	13	12	23	7
9110	784	1	10	13	19	4	13	12	23	7
9111	784	2	10	13	18	4	13	12	23	7
9112	784	3	9	12	17	4	13	12	23	\N
9113	784	4	9	12	16	4	13	12	23	\N
9114	784	5	9	11	15	3	13	12	23	\N
9115	784	6	9	11	14	3	13	12	23	\N
9116	784	7	8	10	13	3	13	12	23	\N
9117	784	8	8	9	12	2	13	12	23	\N
9118	784	9	8	8	12	2	\N	12	23	\N
9119	784	10	6	7	12	2	\N	\N	23	\N
9120	784	11	0	0	0	0	8	8	8	8
9121	785	0	8	8	15	1	\N	\N	\N	\N
9122	785	1	7	7	14	1	\N	\N	\N	\N
9123	785	2	6	6	13	1	\N	\N	\N	\N
9124	785	3	5	5	12	1	\N	\N	\N	\N
9125	785	4	3	0	11	0	\N	\N	\N	10
9126	785	5	2	0	10	0	\N	\N	\N	10
9127	785	6	0	0	0	0	8	8	8	8
9128	785	7	0	0	0	0	8	8	8	8
9129	785	8	0	0	0	0	8	8	8	8
9130	785	9	0	0	0	0	8	8	8	8
9131	785	10	0	0	0	0	8	8	8	8
9132	785	11	0	0	0	0	8	8	8	8
9133	786	0	8	9	15	3	\N	40	\N	\N
9134	786	1	7	8	15	2	\N	\N	\N	\N
9135	786	2	6	6	14	2	\N	\N	\N	\N
9136	786	3	4	5	13	1	\N	\N	\N	\N
9137	786	4	3	0	11	0	\N	\N	\N	10
9138	786	5	2	0	10	0	\N	\N	\N	10
9139	786	6	0	0	0	0	8	8	8	8
9140	786	7	0	0	0	0	8	8	8	8
9141	786	8	0	0	0	0	8	8	8	8
9142	786	9	0	0	0	0	8	8	8	8
9143	786	10	0	0	0	0	8	8	8	8
9144	786	11	0	0	0	0	8	8	8	8
9145	787	0	6	9	16	3	\N	\N	2	\N
9146	787	1	6	8	15	2	\N	\N	2	\N
9147	787	2	6	7	14	2	\N	\N	2	\N
9148	787	3	6	6	14	2	\N	\N	2	\N
9149	787	4	5	5	13	2	\N	\N	2	\N
9150	787	5	4	5	12	2	\N	\N	\N	\N
9151	787	6	3	4	11	1	\N	\N	\N	\N
9152	787	7	3	4	10	1	\N	\N	\N	\N
9153	787	8	2	4	10	1	\N	\N	\N	\N
9154	787	9	0	0	0	0	8	8	8	8
9155	787	10	0	0	0	0	8	8	8	8
9156	787	11	0	0	0	0	8	8	8	8
9157	788	0	8	8	14	2	24	18	\N	20
9158	788	1	7	6	14	2	\N	18	\N	20
9159	788	2	6	4	13	1	\N	\N	\N	20
9160	788	3	5	4	13	1	\N	\N	\N	\N
9161	788	4	4	4	12	1	\N	\N	\N	\N
9162	788	5	3	0	11	0	\N	\N	\N	10
9163	788	6	2	0	10	0	\N	\N	\N	10
9164	788	7	0	0	0	0	8	8	8	8
9165	788	8	0	0	0	0	8	8	8	8
9166	788	9	0	0	0	0	8	8	8	8
9167	788	10	0	0	0	0	8	8	8	8
9168	788	11	0	0	0	0	8	8	8	8
9169	789	0	10	7	15	1	30	\N	\N	\N
9170	789	1	8	6	14	1	30	\N	\N	\N
9171	789	2	6	4	12	1	\N	\N	\N	\N
9172	789	3	5	4	11	1	\N	\N	\N	\N
9173	789	4	3	0	11	0	\N	\N	\N	10
9174	789	5	0	0	0	0	8	8	8	8
9175	789	6	0	0	0	0	8	8	8	8
9176	789	7	0	0	0	0	8	8	8	8
9177	789	8	0	0	0	0	8	8	8	8
9178	789	9	0	0	0	0	8	8	8	8
9179	789	10	0	0	0	0	8	8	8	8
9180	789	11	0	0	0	0	8	8	8	8
9181	790	0	8	8	16	1	\N	22	9	\N
9182	790	1	7	7	15	1	\N	22	9	\N
9183	790	2	6	6	14	1	\N	22	9	\N
9184	790	3	4	4	13	1	\N	\N	\N	\N
9185	790	4	4	4	12	1	\N	\N	\N	\N
9186	790	5	4	0	11	0	\N	\N	\N	10
9187	790	6	0	0	0	0	8	8	8	8
9188	790	7	0	0	0	0	8	8	8	8
9189	790	8	0	0	0	0	8	8	8	8
9190	790	9	0	0	0	0	8	8	8	8
9191	790	10	0	0	0	0	8	8	8	8
9192	790	11	0	0	0	0	8	8	8	8
9193	791	0	8	10	15	2	\N	40	\N	\N
9194	791	1	8	9	15	2	\N	40	\N	\N
9195	791	2	7	8	14	1	\N	\N	\N	\N
9196	791	3	7	5	12	1	\N	\N	\N	\N
9197	791	4	6	3	11	1	\N	\N	\N	\N
9198	791	5	4	0	11	0	\N	\N	\N	10
9199	791	6	0	0	0	0	8	8	8	8
9200	791	7	0	0	0	0	8	8	8	8
9201	791	8	0	0	0	0	8	8	8	8
9202	791	9	0	0	0	0	8	8	8	8
9203	791	10	0	0	0	0	8	8	8	8
9204	791	11	0	0	0	0	8	8	8	8
9205	792	0	8	10	15	3	35	\N	\N	\N
9206	792	1	8	9	15	3	35	\N	\N	\N
9207	792	2	7	8	14	2	35	\N	\N	\N
9208	792	3	6	6	14	2	\N	\N	\N	\N
9209	792	4	6	5	13	1	\N	\N	\N	\N
9210	792	5	5	5	13	1	\N	\N	\N	\N
9211	792	6	4	0	12	0	\N	\N	\N	10
9212	792	7	0	0	0	0	8	8	8	8
9213	792	8	0	0	0	0	8	8	8	8
9214	792	9	0	0	0	0	8	8	8	8
9215	792	10	0	0	0	0	8	8	8	8
9216	792	11	0	0	0	0	8	8	8	8
9217	793	0	6	9	14	2	\N	\N	\N	\N
9218	793	1	6	8	13	2	\N	\N	\N	\N
9219	793	2	6	7	12	2	\N	\N	\N	\N
9220	793	3	6	6	11	1	\N	\N	\N	\N
9221	793	4	6	5	11	1	\N	\N	\N	\N
9222	793	5	5	4	11	1	\N	\N	\N	\N
9223	793	6	4	4	11	1	\N	\N	\N	\N
9224	793	7	0	0	0	0	8	8	8	8
9225	793	8	0	0	0	0	8	8	8	8
9226	793	9	0	0	0	0	8	8	8	8
9227	793	10	0	0	0	0	8	8	8	8
9228	793	11	0	0	0	0	8	8	8	8
9229	794	0	8	10	15	3	35	\N	\N	\N
9230	794	1	7	9	15	3	35	\N	\N	\N
9231	794	2	6	7	14	2	35	\N	\N	\N
9232	794	3	5	6	14	2	\N	\N	\N	\N
9233	794	4	4	5	13	1	\N	\N	\N	\N
9234	794	5	4	4	12	1	\N	\N	\N	\N
9235	794	6	3	0	12	0	\N	\N	\N	10
9236	794	7	0	0	0	0	8	8	8	8
9237	794	8	0	0	0	0	8	8	8	8
9238	794	9	0	0	0	0	8	8	8	8
9239	794	10	0	0	0	0	8	8	8	8
9240	794	11	0	0	0	0	8	8	8	8
9241	795	0	8	8	14	2	35	\N	\N	26
9242	795	1	7	6	13	1	35	\N	\N	26
9243	795	2	6	4	11	1	\N	\N	\N	\N
9244	795	3	5	4	11	1	\N	\N	\N	\N
9245	795	4	4	4	11	1	\N	\N	\N	\N
9246	795	5	4	0	10	0	\N	\N	\N	10
9247	795	6	0	0	0	0	8	8	8	8
9248	795	7	0	0	0	0	8	8	8	8
9249	795	8	0	0	0	0	8	8	8	8
9250	795	9	0	0	0	0	8	8	8	8
9251	795	10	0	0	0	0	8	8	8	8
9252	795	11	0	0	0	0	8	8	8	8
9253	796	0	10	11	16	3	13	40	\N	3
9254	796	1	10	11	15	3	13	\N	\N	3
9255	796	2	9	10	14	2	13	38	\N	3
9256	796	3	9	9	13	2	13	38	\N	3
9257	796	4	8	7	12	1	13	\N	\N	3
9258	796	5	7	4	11	1	13	\N	\N	\N
9259	796	6	5	0	10	0	\N	\N	\N	10
9260	796	7	0	0	0	0	8	8	8	8
9261	796	8	0	0	0	0	8	8	8	8
9262	796	9	0	0	0	0	8	8	8	8
9263	796	10	0	0	0	0	8	8	8	8
9264	796	11	0	0	0	0	8	8	8	8
9265	797	0	8	8	15	1	\N	\N	\N	\N
9266	797	1	7	7	14	1	\N	\N	\N	\N
9267	797	2	6	5	13	1	\N	\N	\N	\N
9268	797	3	5	4	12	1	\N	\N	\N	\N
9269	797	4	4	4	11	1	\N	\N	\N	\N
9270	797	5	2	0	10	0	\N	\N	\N	10
9271	797	6	0	0	0	0	8	8	8	8
9272	797	7	0	0	0	0	8	8	8	8
9273	797	8	0	0	0	0	8	8	8	8
9274	797	9	0	0	0	0	8	8	8	8
9275	797	10	0	0	0	0	8	8	8	8
9276	797	11	0	0	0	0	8	8	8	8
9277	798	0	8	10	15	2	\N	\N	\N	\N
9278	798	1	7	9	14	2	\N	\N	\N	\N
9279	798	2	6	8	14	2	\N	\N	\N	\N
9280	798	3	5	7	13	2	\N	\N	\N	\N
9281	798	4	4	6	12	2	\N	\N	\N	\N
9282	798	5	2	0	11	0	\N	\N	\N	10
9283	798	6	0	0	0	0	8	8	8	8
9284	798	7	0	0	0	0	8	8	8	8
9285	798	8	0	0	0	0	8	8	8	8
9286	798	9	0	0	0	0	8	8	8	8
9287	798	10	0	0	0	0	8	8	8	8
9288	798	11	0	0	0	0	8	8	8	8
9289	799	0	8	8	15	2	\N	15	\N	\N
9290	799	1	7	7	14	2	\N	15	\N	\N
9291	799	2	6	6	13	1	\N	15	\N	\N
9292	799	3	5	5	12	1	\N	\N	\N	\N
9293	799	4	4	4	11	1	\N	\N	\N	\N
9294	799	5	2	0	10	0	\N	\N	\N	10
9295	799	6	0	0	0	0	8	8	8	8
9296	799	7	0	0	0	0	8	8	8	8
9297	799	8	0	0	0	0	8	8	8	8
9298	799	9	0	0	0	0	8	8	8	8
9299	799	10	0	0	0	0	8	8	8	8
9300	799	11	0	0	0	0	8	8	8	8
9301	800	0	6	9	16	2	\N	40	23	\N
9302	800	1	6	8	15	2	\N	\N	23	\N
9303	800	2	6	8	14	2	\N	\N	23	\N
9304	800	3	5	7	14	2	\N	\N	23	3
9305	800	4	5	6	13	2	\N	\N	23	3
9306	800	5	6	8	12	3	\N	\N	23	4
9307	800	6	5	7	12	3	\N	\N	\N	4
9308	800	7	0	0	0	0	8	8	8	8
9309	800	8	0	0	0	0	8	8	8	8
9310	800	9	0	0	0	0	8	8	8	8
9311	800	10	0	0	0	0	8	8	8	8
9312	800	11	0	0	0	0	8	8	8	8
9313	801	0	6	8	16	2	\N	12	29	\N
9314	801	1	6	7	16	2	\N	12	29	\N
9315	801	2	6	7	15	2	\N	12	\N	\N
9316	801	3	6	7	15	2	\N	\N	\N	\N
9317	801	4	5	7	15	2	\N	\N	\N	\N
9318	801	5	4	5	13	1	\N	\N	\N	\N
9319	801	6	2	4	12	1	\N	\N	\N	\N
9320	801	7	0	0	0	0	8	8	8	8
9321	801	8	0	0	0	0	8	8	8	8
9322	801	9	0	0	0	0	8	8	8	8
9323	801	10	0	0	0	0	8	8	8	8
9324	801	11	0	0	0	0	8	8	8	8
9325	802	0	6	8	16	2	\N	12	29	\N
9326	802	1	6	7	16	2	\N	12	29	\N
9327	802	2	6	7	15	2	\N	12	29	\N
9328	802	3	6	7	15	2	\N	12	\N	\N
9329	802	4	5	7	15	2	\N	\N	\N	\N
9330	802	5	5	6	14	2	\N	\N	\N	\N
9331	802	6	4	5	13	1	\N	\N	\N	\N
9332	802	7	2	4	12	1	\N	\N	\N	\N
9333	802	8	0	0	0	0	8	8	8	8
9334	802	9	0	0	0	0	8	8	8	8
9335	802	10	0	0	0	0	8	8	8	8
9336	802	11	0	0	0	0	8	8	8	8
9337	803	0	6	9	16	3	\N	12	29	\N
9338	803	1	6	9	16	2	\N	12	29	\N
9339	803	2	6	8	15	2	\N	12	29	\N
9340	803	3	6	7	15	2	\N	12	29	\N
9341	803	4	5	7	15	2	\N	\N	\N	\N
9342	803	5	5	6	14	2	\N	\N	\N	\N
9343	803	6	4	5	13	1	\N	\N	\N	\N
9344	803	7	2	4	12	1	\N	\N	\N	\N
9345	803	8	0	0	0	0	8	8	8	8
9346	803	9	0	0	0	0	8	8	8	8
9347	803	10	0	0	0	0	8	8	8	8
9348	803	11	0	0	0	0	8	8	8	8
9349	804	0	8	9	15	2	\N	40	\N	20
9350	804	1	7	8	14	2	\N	\N	\N	\N
9351	804	2	5	7	13	1	\N	\N	\N	\N
9352	804	3	4	5	12	1	\N	\N	\N	\N
9353	804	4	2	0	11	0	\N	\N	\N	10
9354	804	5	2	0	10	0	\N	\N	\N	10
9355	804	6	0	0	0	0	8	8	8	8
9356	804	7	0	0	0	0	8	8	8	8
9357	804	8	0	0	0	0	8	8	8	8
9358	804	9	0	0	0	0	8	8	8	8
9359	804	10	0	0	0	0	8	8	8	8
9360	804	11	0	0	0	0	8	8	8	8
9361	805	0	8	10	15	2	\N	40	\N	20
9362	805	1	7	9	14	2	\N	\N	\N	\N
9363	805	2	6	8	14	1	\N	\N	\N	\N
9364	805	3	5	7	13	1	\N	\N	\N	\N
9365	805	4	4	5	12	1	\N	\N	\N	\N
9366	805	5	3	0	11	0	\N	\N	\N	10
9367	805	6	2	0	10	0	\N	\N	\N	10
9368	805	7	0	0	0	0	8	8	8	8
9369	805	8	0	0	0	0	8	8	8	8
9370	805	9	0	0	0	0	8	8	8	8
9371	805	10	0	0	0	0	8	8	8	8
9372	805	11	0	0	0	0	8	8	8	8
9373	806	0	8	10	15	2	\N	40	\N	20
9374	806	1	7	9	15	2	\N	\N	\N	20
9375	806	2	6	8	14	1	\N	\N	\N	\N
9376	806	3	5	7	13	1	\N	\N	\N	\N
9377	806	4	4	6	12	1	\N	\N	\N	\N
9378	806	5	2	4	11	1	\N	\N	\N	\N
9379	806	6	2	0	10	0	\N	\N	\N	10
9380	806	7	0	0	0	0	8	8	8	8
9381	806	8	0	0	0	0	8	8	8	8
9382	806	9	0	0	0	0	8	8	8	8
9383	806	10	0	0	0	0	8	8	8	8
9384	806	11	0	0	0	0	8	8	8	8
9385	807	0	8	7	15	2	27	\N	\N	\N
9386	807	1	6	6	14	2	\N	\N	\N	\N
9387	807	2	4	5	13	2	\N	\N	\N	\N
9388	807	3	0	0	0	0	8	8	8	8
9389	807	4	0	0	0	0	8	8	8	8
9390	807	5	0	0	0	0	8	8	8	8
9391	807	6	0	0	0	0	8	8	8	8
9392	807	7	0	0	0	0	8	8	8	8
9393	807	8	0	0	0	0	8	8	8	8
9394	807	9	0	0	0	0	8	8	8	8
9395	807	10	0	0	0	0	8	8	8	8
9396	807	11	0	0	0	0	8	8	8	8
9397	808	0	8	8	15	2	27	\N	\N	\N
9398	808	1	7	7	15	2	27	\N	\N	\N
9399	808	2	6	6	14	2	\N	\N	\N	\N
9400	808	3	4	5	13	2	\N	\N	\N	\N
9401	808	4	0	0	0	0	8	8	8	8
9402	808	5	0	0	0	0	8	8	8	8
9403	808	6	0	0	0	0	8	8	8	8
9404	808	7	0	0	0	0	8	8	8	8
9405	808	8	0	0	0	0	8	8	8	8
9406	808	9	0	0	0	0	8	8	8	8
9407	808	10	0	0	0	0	8	8	8	8
9408	808	11	0	0	0	0	8	8	8	8
9409	809	0	8	8	16	2	27	\N	\N	\N
9410	809	1	8	8	15	2	27	\N	\N	\N
9411	809	2	7	8	15	2	27	\N	\N	\N
9412	809	3	4	6	13	2	\N	\N	\N	\N
9413	809	4	0	0	0	0	8	8	8	8
9414	809	5	0	0	0	0	8	8	8	8
9415	809	6	0	0	0	0	8	8	8	8
9416	809	7	0	0	0	0	8	8	8	8
9417	809	8	0	0	0	0	8	8	8	8
9418	809	9	0	0	0	0	8	8	8	8
9419	809	10	0	0	0	0	8	8	8	8
9420	809	11	0	0	0	0	8	8	8	8
9421	810	0	8	7	14	1	13	\N	\N	21
9422	810	1	4	0	12	0	\N	\N	\N	10
9423	810	2	2	0	10	0	\N	\N	\N	10
9424	810	3	0	0	0	0	8	8	8	8
9425	810	4	0	0	0	0	8	8	8	8
9426	810	5	0	0	0	0	8	8	8	8
9427	810	6	0	0	0	0	8	8	8	8
9428	810	7	0	0	0	0	8	8	8	8
9429	810	8	0	0	0	0	8	8	8	8
9430	810	9	0	0	0	0	8	8	8	8
9431	810	10	0	0	0	0	8	8	8	8
9432	810	11	0	0	0	0	8	8	8	8
9433	811	0	8	7	14	1	13	\N	\N	21
9434	811	1	7	6	14	1	13	\N	\N	\N
9435	811	2	4	0	12	0	\N	\N	\N	10
9436	811	3	2	0	10	0	\N	\N	\N	10
9437	811	4	0	0	0	0	8	8	8	8
9438	811	5	0	0	0	0	8	8	8	8
9439	811	6	0	0	0	0	8	8	8	8
9440	811	7	0	0	0	0	8	8	8	8
9441	811	8	0	0	0	0	8	8	8	8
9442	811	9	0	0	0	0	8	8	8	8
9443	811	10	0	0	0	0	8	8	8	8
9444	811	11	0	0	0	0	8	8	8	8
9445	812	0	8	8	14	1	13	\N	\N	21
9446	812	1	7	7	14	1	13	\N	\N	21
9447	812	2	4	0	12	0	\N	\N	\N	10
9448	812	3	2	0	10	0	\N	\N	\N	10
9449	812	4	0	0	0	0	8	8	8	8
9450	812	5	0	0	0	0	8	8	8	8
9451	812	6	0	0	0	0	8	8	8	8
9452	812	7	0	0	0	0	8	8	8	8
9453	812	8	0	0	0	0	8	8	8	8
9454	812	9	0	0	0	0	8	8	8	8
9455	812	10	0	0	0	0	8	8	8	8
9456	812	11	0	0	0	0	8	8	8	8
9457	813	0	5	9	14	2	6	\N	\N	\N
9458	813	1	7	8	13	2	\N	\N	\N	\N
9459	813	2	6	4	13	2	\N	\N	\N	\N
9460	813	3	0	0	0	0	8	8	8	8
9461	813	4	0	0	0	0	8	8	8	8
9462	813	5	0	0	0	0	8	8	8	8
9463	813	6	0	0	0	0	8	8	8	8
9464	813	7	0	0	0	0	8	8	8	8
9465	813	8	0	0	0	0	8	8	8	8
9466	813	9	0	0	0	0	8	8	8	8
9467	813	10	0	0	0	0	8	8	8	8
9468	813	11	0	0	0	0	8	8	8	8
9469	814	0	5	9	14	2	6	\N	\N	\N
9470	814	1	7	8	13	2	\N	\N	\N	\N
9471	814	2	6	5	13	2	\N	\N	\N	\N
9472	814	3	4	4	13	1	\N	\N	\N	\N
9473	814	4	0	0	0	0	8	8	8	8
9474	814	5	0	0	0	0	8	8	8	8
9475	814	6	0	0	0	0	8	8	8	8
9476	814	7	0	0	0	0	8	8	8	8
9477	814	8	0	0	0	0	8	8	8	8
9478	814	9	0	0	0	0	8	8	8	8
9479	814	10	0	0	0	0	8	8	8	8
9480	814	11	0	0	0	0	8	8	8	8
9481	815	0	5	9	14	2	6	\N	\N	\N
9482	815	1	8	8	14	2	\N	\N	\N	\N
9483	815	2	7	6	13	2	\N	\N	\N	\N
9484	815	3	6	5	13	2	\N	\N	\N	\N
9485	815	4	4	4	13	1	\N	\N	\N	\N
9486	815	5	0	0	0	0	8	8	8	8
9487	815	6	0	0	0	0	8	8	8	8
9488	815	7	0	0	0	0	8	8	8	8
9489	815	8	0	0	0	0	8	8	8	8
9490	815	9	0	0	0	0	8	8	8	8
9491	815	10	0	0	0	0	8	8	8	8
9492	815	11	0	0	0	0	8	8	8	8
9493	816	0	10	8	15	2	13	39	\N	3
9494	816	1	9	8	14	2	13	38	\N	3
9495	816	2	8	7	14	2	13	38	\N	3
9496	816	3	7	6	13	2	13	\N	\N	3
9497	816	4	6	0	11	0	13	\N	\N	10
9498	816	5	2	0	10	0	\N	\N	\N	10
9499	816	6	0	0	0	0	8	8	8	8
9500	816	7	0	0	0	0	8	8	8	8
9501	816	8	0	0	0	0	8	8	8	8
9502	816	9	0	0	0	0	8	8	8	8
9503	816	10	0	0	0	0	8	8	8	8
9504	816	11	0	0	0	0	8	8	8	8
9505	817	0	10	9	15	2	13	39	\N	3
9506	817	1	9	9	14	2	13	39	\N	3
9507	817	2	8	8	14	2	13	38	\N	3
9508	817	3	7	8	13	2	13	38	\N	3
9509	817	4	6	6	12	1	13	\N	\N	3
9510	817	5	6	0	11	0	13	\N	\N	10
9511	817	6	2	0	10	0	\N	\N	\N	10
9512	817	7	0	0	0	0	8	8	8	8
9513	817	8	0	0	0	0	8	8	8	8
9514	817	9	0	0	0	0	8	8	8	8
9515	817	10	0	0	0	0	8	8	8	8
9516	817	11	0	0	0	0	8	8	8	8
9517	818	0	10	9	15	3	13	39	\N	3
9518	818	1	9	9	14	3	13	39	\N	3
9519	818	2	8	8	14	2	13	38	\N	3
9520	818	3	7	8	13	2	13	38	\N	3
9521	818	4	6	6	12	1	13	\N	\N	3
9522	818	5	6	5	11	1	13	\N	\N	\N
9523	818	6	2	0	10	0	\N	\N	\N	10
9524	818	7	0	0	0	0	8	8	8	8
9525	818	8	0	0	0	0	8	8	8	8
9526	818	9	0	0	0	0	8	8	8	8
9527	818	10	0	0	0	0	8	8	8	8
9528	818	11	0	0	0	0	8	8	8	8
9529	819	0	8	7	15	1	\N	40	11	\N
9530	819	1	7	7	15	1	\N	\N	\N	\N
9531	819	2	6	6	14	1	\N	\N	\N	\N
9532	819	3	5	6	13	1	\N	\N	\N	\N
9533	819	4	4	5	12	1	\N	\N	\N	\N
9534	819	5	2	4	11	1	\N	\N	\N	\N
9535	819	6	0	0	0	0	8	8	8	8
9536	819	7	0	0	0	0	8	8	8	8
9537	819	8	0	0	0	0	8	8	8	8
9538	819	9	0	0	0	0	8	8	8	8
9539	819	10	0	0	0	0	8	8	8	8
9540	819	11	0	0	0	0	8	8	8	8
9541	820	0	8	8	15	1	\N	40	11	\N
9542	820	1	7	8	15	1	\N	40	\N	\N
9543	820	2	6	7	14	1	\N	\N	\N	\N
9544	820	3	6	6	14	1	\N	\N	\N	\N
9545	820	4	5	5	13	1	\N	\N	\N	\N
9546	820	5	4	4	12	1	\N	\N	\N	\N
9547	820	6	2	4	11	1	\N	\N	\N	\N
9548	820	7	0	0	0	0	8	8	8	8
9549	820	8	0	0	0	0	8	8	8	8
9550	820	9	0	0	0	0	8	8	8	8
9551	820	10	0	0	0	0	8	8	8	8
9552	820	11	0	0	0	0	8	8	8	8
9553	821	0	8	9	15	2	\N	40	11	\N
9554	821	1	7	8	15	2	\N	40	\N	\N
9555	821	2	7	8	14	2	\N	40	\N	\N
9556	821	3	6	7	14	2	\N	\N	\N	\N
9557	821	4	5	6	13	2	\N	\N	\N	\N
9558	821	5	4	5	12	1	\N	\N	\N	\N
9559	821	6	2	4	11	1	\N	\N	\N	\N
9560	821	7	0	0	0	0	8	8	8	8
9561	821	8	0	0	0	0	8	8	8	8
9562	821	9	0	0	0	0	8	8	8	8
9563	821	10	0	0	0	0	8	8	8	8
9564	821	11	0	0	0	0	8	8	8	8
9565	822	0	10	11	15	1	30	\N	\N	\N
9566	822	1	8	10	14	1	\N	\N	\N	\N
9567	822	2	7	9	13	1	\N	\N	\N	\N
9568	822	3	6	7	12	1	\N	\N	\N	\N
9569	822	4	4	0	11	0	\N	\N	\N	10
9570	822	5	2	0	10	0	\N	\N	\N	10
9571	822	6	0	0	0	0	8	8	8	8
9572	822	7	0	0	0	0	8	8	8	8
9573	822	8	0	0	0	0	8	8	8	8
9574	822	9	0	0	0	0	8	8	8	8
9575	822	10	0	0	0	0	8	8	8	8
9576	822	11	0	0	0	0	8	8	8	8
9577	823	0	10	12	15	1	30	\N	\N	\N
9578	823	1	8	11	14	1	\N	\N	\N	\N
9579	823	2	7	10	13	1	\N	\N	\N	\N
9580	823	3	6	9	12	1	\N	\N	\N	\N
9581	823	4	4	6	12	1	\N	\N	\N	\N
9582	823	5	3	0	11	0	\N	\N	\N	10
9583	823	6	2	0	10	0	\N	\N	\N	10
9584	823	7	0	0	0	0	8	8	8	8
9585	823	8	0	0	0	0	8	8	8	8
9586	823	9	0	0	0	0	8	8	8	8
9587	823	10	0	0	0	0	8	8	8	8
9588	823	11	0	0	0	0	8	8	8	8
9589	824	0	10	12	15	2	30	\N	\N	\N
9590	824	1	9	11	14	2	30	\N	\N	\N
9591	824	2	8	10	13	2	\N	\N	\N	\N
9592	824	3	7	9	12	1	\N	\N	\N	\N
9593	824	4	5	6	12	1	\N	\N	\N	\N
9594	824	5	4	0	11	0	\N	\N	\N	10
9595	824	6	2	0	10	0	\N	\N	\N	10
9596	824	7	0	0	0	0	8	8	8	8
9597	824	8	0	0	0	0	8	8	8	8
9598	824	9	0	0	0	0	8	8	8	8
9599	824	10	0	0	0	0	8	8	8	8
9600	824	11	0	0	0	0	8	8	8	8
9601	825	0	12	6	15	1	14	\N	\N	\N
9602	825	1	10	6	15	1	14	\N	\N	\N
9603	825	2	8	5	14	1	\N	\N	\N	\N
9604	825	3	4	0	11	0	\N	\N	\N	10
9605	825	4	0	0	0	0	8	8	8	8
9606	825	5	0	0	0	0	8	8	8	8
9607	825	6	0	0	0	0	8	8	8	8
9608	825	7	0	0	0	0	8	8	8	8
9609	825	8	0	0	0	0	8	8	8	8
9610	825	9	0	0	0	0	8	8	8	8
9611	825	10	0	0	0	0	8	8	8	8
9612	825	11	0	0	0	0	8	8	8	8
9613	826	0	12	7	15	1	14	\N	\N	\N
9614	826	1	10	7	15	1	14	\N	\N	\N
9615	826	2	8	6	14	1	14	\N	\N	\N
9616	826	3	5	4	12	1	\N	\N	\N	\N
9617	826	4	4	0	11	0	\N	\N	\N	10
9618	826	5	0	0	0	0	8	8	8	8
9619	826	6	0	0	0	0	8	8	8	8
9620	826	7	0	0	0	0	8	8	8	8
9621	826	8	0	0	0	0	8	8	8	8
9622	826	9	0	0	0	0	8	8	8	8
9623	826	10	0	0	0	0	8	8	8	8
9624	826	11	0	0	0	0	8	8	8	8
9625	827	0	12	8	15	2	14	\N	\N	\N
9626	827	1	11	7	15	1	14	\N	\N	\N
9627	827	2	10	6	15	1	14	\N	\N	\N
9628	827	3	8	5	13	1	\N	\N	\N	\N
9629	827	4	4	0	11	0	\N	\N	\N	10
9630	827	5	0	0	0	0	8	8	8	8
9631	827	6	0	0	0	0	8	8	8	8
9632	827	7	0	0	0	0	8	8	8	8
9633	827	8	0	0	0	0	8	8	8	8
9634	827	9	0	0	0	0	8	8	8	8
9635	827	10	0	0	0	0	8	8	8	8
9636	827	11	0	0	0	0	8	8	8	8
9637	828	0	8	8	16	0	\N	40	25	\N
9638	828	1	8	7	15	2	\N	\N	\N	\N
9639	828	2	8	6	15	1	\N	\N	\N	\N
9640	828	3	6	4	12	1	\N	\N	\N	\N
9641	828	4	4	0	11	0	\N	\N	\N	10
9642	828	5	0	0	0	0	8	8	8	8
9643	828	6	0	0	0	0	8	8	8	8
9644	828	7	0	0	0	0	8	8	8	8
9645	828	8	0	0	0	0	8	8	8	8
9646	828	9	0	0	0	0	8	8	8	8
9647	828	10	0	0	0	0	8	8	8	8
9648	828	11	0	0	0	0	8	8	8	8
9649	829	0	8	8	16	0	\N	40	25	\N
9650	829	1	8	7	16	2	\N	\N	25	\N
9651	829	2	8	6	15	2	\N	\N	\N	\N
9652	829	3	6	4	12	1	\N	\N	\N	\N
9653	829	4	4	0	11	0	\N	\N	\N	10
9654	829	5	0	0	0	0	8	8	8	8
9655	829	6	0	0	0	0	8	8	8	8
9656	829	7	0	0	0	0	8	8	8	8
9657	829	8	0	0	0	0	8	8	8	8
9658	829	9	0	0	0	0	8	8	8	8
9659	829	10	0	0	0	0	8	8	8	8
9660	829	11	0	0	0	0	8	8	8	8
9661	830	0	8	9	17	0	\N	40	25	\N
9662	830	1	8	8	16	2	\N	\N	25	\N
9663	830	2	8	7	16	2	\N	\N	\N	\N
9664	830	3	6	5	12	1	\N	\N	\N	\N
9665	830	4	4	0	11	0	\N	\N	\N	10
9666	830	5	0	0	0	0	8	8	8	8
9667	830	6	0	0	0	0	8	8	8	8
9668	830	7	0	0	0	0	8	8	8	8
9669	830	8	0	0	0	0	8	8	8	8
9670	830	9	0	0	0	0	8	8	8	8
9671	830	10	0	0	0	0	8	8	8	8
9672	830	11	0	0	0	0	8	8	8	8
9673	831	0	4	8	16	3	6	\N	2	4
9674	831	1	8	8	15	3	\N	\N	2	4
9675	831	2	7	8	14	3	\N	\N	\N	4
9676	831	3	6	8	13	2	\N	\N	\N	4
9677	831	4	4	7	11	1	\N	\N	\N	\N
9678	831	5	0	0	0	0	8	8	8	8
9679	831	6	0	0	0	0	8	8	8	8
9680	831	7	0	0	0	0	8	8	8	8
9681	831	8	0	0	0	0	8	8	8	8
9682	831	9	0	0	0	0	8	8	8	8
9683	831	10	0	0	0	0	8	8	8	8
9684	831	11	0	0	0	0	8	8	8	8
9685	832	0	4	9	16	3	6	\N	2	4
9686	832	1	4	8	15	3	6	\N	2	4
9687	832	2	7	8	14	3	\N	\N	\N	4
9688	832	3	6	8	13	2	\N	\N	\N	4
9689	832	4	5	8	12	2	\N	\N	\N	4
9690	832	5	4	7	11	1	\N	\N	\N	\N
9691	832	6	0	0	0	0	8	8	8	8
9692	832	7	0	0	0	0	8	8	8	8
9693	832	8	0	0	0	0	8	8	8	8
9694	832	9	0	0	0	0	8	8	8	8
9695	832	10	0	0	0	0	8	8	8	8
9696	832	11	0	0	0	0	8	8	8	8
9697	833	0	4	9	16	3	6	\N	2	4
9698	833	1	4	8	15	3	6	\N	2	4
9699	833	2	7	8	14	3	\N	\N	\N	4
9700	833	3	6	8	13	3	\N	\N	\N	4
9701	833	4	5	8	12	2	\N	\N	\N	4
9702	833	5	5	7	12	2	\N	\N	\N	4
9703	833	6	4	7	11	1	\N	\N	\N	\N
9704	833	7	0	0	0	0	8	8	8	8
9705	833	8	0	0	0	0	8	8	8	8
9706	833	9	0	0	0	0	8	8	8	8
9707	833	10	0	0	0	0	8	8	8	8
9708	833	11	0	0	0	0	8	8	8	8
9709	834	0	6	7	15	3	\N	\N	\N	28
9710	834	1	5	6	14	3	\N	\N	\N	28
9711	834	2	4	5	13	2	\N	\N	\N	\N
9712	834	3	6	7	11	2	\N	\N	\N	4
9713	834	4	4	0	10	0	\N	\N	\N	10
9714	834	5	0	0	0	0	8	8	8	8
9715	834	6	0	0	0	0	8	8	8	8
9716	834	7	0	0	0	0	8	8	8	8
9717	834	8	0	0	0	0	8	8	8	8
9718	834	9	0	0	0	0	8	8	8	8
9719	834	10	0	0	0	0	8	8	8	8
9720	834	11	0	0	0	0	8	8	8	8
9721	835	0	6	8	15	3	\N	\N	\N	28
9722	835	1	5	7	14	3	\N	\N	\N	28
9723	835	2	4	6	13	3	\N	\N	\N	28
9724	835	3	6	8	11	2	\N	\N	\N	4
9725	835	4	4	0	10	0	\N	\N	\N	10
9726	835	5	0	0	0	0	8	8	8	8
9727	835	6	0	0	0	0	8	8	8	8
9728	835	7	0	0	0	0	8	8	8	8
9729	835	8	0	0	0	0	8	8	8	8
9730	835	9	0	0	0	0	8	8	8	8
9731	835	10	0	0	0	0	8	8	8	8
9732	835	11	0	0	0	0	8	8	8	8
9733	836	0	6	8	15	3	\N	\N	\N	28
9734	836	1	6	8	14	3	\N	\N	\N	28
9735	836	2	5	7	13	3	\N	\N	\N	28
9736	836	3	4	6	12	3	\N	\N	\N	28
9737	836	4	6	8	11	2	\N	\N	\N	4
9738	836	5	4	0	10	0	\N	\N	\N	10
9739	836	6	0	0	0	0	8	8	8	8
9740	836	7	0	0	0	0	8	8	8	8
9741	836	8	0	0	0	0	8	8	8	8
9742	836	9	0	0	0	0	8	8	8	8
9743	836	10	0	0	0	0	8	8	8	8
9744	836	11	0	0	0	0	8	8	8	8
9745	837	0	8	8	15	3	\N	\N	37	\N
9746	837	1	8	7	15	3	\N	\N	37	\N
9747	837	2	8	7	15	2	\N	\N	\N	3
9748	837	3	8	7	14	2	\N	\N	\N	3
9749	837	4	7	7	14	2	\N	\N	\N	3
9750	837	5	6	5	13	2	\N	\N	\N	\N
9751	837	6	5	0	12	0	\N	\N	\N	10
9752	837	7	0	0	0	0	8	8	8	8
9753	837	8	0	0	0	0	8	8	8	8
9754	837	9	0	0	0	0	8	8	8	8
9755	837	10	0	0	0	0	8	8	8	8
9756	837	11	0	0	0	0	8	8	8	8
9757	838	0	8	9	15	3	\N	\N	37	\N
9758	838	1	8	8	15	3	\N	\N	37	\N
9759	838	2	8	8	15	3	\N	\N	\N	3
9760	838	3	8	7	14	2	\N	\N	\N	3
9761	838	4	7	7	14	2	\N	\N	\N	3
9762	838	5	6	7	13	2	\N	\N	\N	3
9763	838	6	6	5	13	2	\N	\N	\N	\N
9764	838	7	5	0	12	0	\N	\N	\N	10
9765	838	8	0	0	0	0	8	8	8	8
9766	838	9	0	0	0	0	8	8	8	8
9767	838	10	0	0	0	0	8	8	8	8
9768	838	11	0	0	0	0	8	8	8	8
9769	839	0	8	9	16	3	\N	\N	37	\N
9770	839	1	8	9	15	3	\N	\N	37	\N
9771	839	2	8	8	15	3	\N	\N	\N	3
9772	839	3	8	8	14	3	\N	\N	\N	3
9773	839	4	7	8	14	2	\N	\N	\N	3
9774	839	5	6	7	13	2	\N	\N	\N	3
9775	839	6	6	6	13	2	\N	\N	\N	\N
9776	839	7	5	0	12	0	\N	\N	\N	10
9777	839	8	0	0	0	0	8	8	8	8
9778	839	9	0	0	0	0	8	8	8	8
9779	839	10	0	0	0	0	8	8	8	8
9780	839	11	0	0	0	0	8	8	8	8
9781	840	0	8	8	15	2	\N	\N	37	\N
9782	840	1	8	7	15	2	\N	\N	\N	3
9783	840	2	7	7	14	2	\N	\N	\N	3
9784	840	3	6	7	14	2	\N	\N	\N	3
9785	840	4	6	6	13	2	\N	\N	\N	3
9786	840	5	6	5	13	2	\N	\N	\N	\N
9787	840	6	5	0	12	0	\N	\N	\N	10
9788	840	7	0	0	0	0	8	8	8	8
9789	840	8	0	0	0	0	8	8	8	8
9790	840	9	0	0	0	0	8	8	8	8
9791	840	10	0	0	0	0	8	8	8	8
9792	840	11	0	0	0	0	8	8	8	8
9793	841	0	8	8	15	2	\N	\N	37	\N
9794	841	1	8	8	15	2	\N	\N	\N	3
9795	841	2	7	7	14	2	\N	\N	\N	3
9796	841	3	6	7	14	2	\N	\N	\N	3
9797	841	4	6	6	14	2	\N	\N	\N	3
9798	841	5	6	6	13	2	\N	\N	\N	3
9799	841	6	6	5	13	2	\N	\N	\N	\N
9800	841	7	5	0	12	0	\N	\N	\N	10
9801	841	8	0	0	0	0	8	8	8	8
9802	841	9	0	0	0	0	8	8	8	8
9803	841	10	0	0	0	0	8	8	8	8
9804	841	11	0	0	0	0	8	8	8	8
9805	842	0	8	8	16	2	\N	\N	37	\N
9806	842	1	8	8	15	2	\N	\N	\N	3
9807	842	2	7	8	15	2	\N	\N	\N	3
9808	842	3	6	8	15	2	\N	\N	\N	3
9809	842	4	6	7	14	2	\N	\N	\N	3
9810	842	5	6	6	14	2	\N	\N	\N	3
9811	842	6	6	5	13	2	\N	\N	\N	\N
9812	842	7	5	0	12	0	\N	\N	\N	10
9813	842	8	0	0	0	0	8	8	8	8
9814	842	9	0	0	0	0	8	8	8	8
9815	842	10	0	0	0	0	8	8	8	8
9816	842	11	0	0	0	0	8	8	8	8
9817	843	0	8	10	16	1	\N	\N	25	\N
9818	843	1	8	9	15	1	\N	\N	25	\N
9819	843	2	7	8	15	1	\N	\N	25	\N
9820	843	3	5	5	14	1	\N	\N	\N	\N
9821	843	4	2	0	13	0	\N	\N	\N	10
9822	843	5	0	0	0	0	8	8	8	8
9823	843	6	0	0	0	0	8	8	8	8
9824	843	7	0	0	0	0	8	8	8	8
9825	843	8	0	0	0	0	8	8	8	8
9826	843	9	0	0	0	0	8	8	8	8
9827	843	10	0	0	0	0	8	8	8	8
9828	843	11	0	0	0	0	8	8	8	8
9829	844	0	8	10	16	1	\N	\N	25	\N
9830	844	1	8	9	16	1	\N	\N	25	\N
9831	844	2	7	9	15	1	\N	\N	25	\N
9832	844	3	6	7	15	1	\N	\N	\N	\N
9833	844	4	4	4	14	1	\N	\N	\N	\N
9834	844	5	2	0	13	0	\N	\N	\N	10
9835	844	6	0	0	0	0	8	8	8	8
9836	844	7	0	0	0	0	8	8	8	8
9837	844	8	0	0	0	0	8	8	8	8
9838	844	9	0	0	0	0	8	8	8	8
9839	844	10	0	0	0	0	8	8	8	8
9840	844	11	0	0	0	0	8	8	8	8
9841	845	0	8	11	16	1	\N	\N	25	\N
9842	845	1	8	10	16	1	\N	\N	25	\N
9843	845	2	7	9	15	1	\N	\N	25	\N
9844	845	3	6	7	15	1	\N	\N	25	\N
9845	845	4	4	4	14	1	\N	\N	\N	\N
9846	845	5	2	0	13	0	\N	\N	\N	10
9847	845	6	0	0	0	0	8	8	8	8
9848	845	7	0	0	0	0	8	8	8	8
9849	845	8	0	0	0	0	8	8	8	8
9850	845	9	0	0	0	0	8	8	8	8
9851	845	10	0	0	0	0	8	8	8	8
9852	845	11	0	0	0	0	8	8	8	8
9853	846	0	10	10	16	2	14	\N	9	\N
9854	846	1	9	9	16	1	14	\N	9	\N
9855	846	2	8	7	15	1	\N	\N	25	\N
9856	846	3	4	4	14	1	\N	\N	\N	\N
9857	846	4	2	0	13	0	\N	\N	\N	10
9858	846	5	0	0	0	0	8	8	8	8
9859	846	6	0	0	0	0	8	8	8	8
9860	846	7	0	0	0	0	8	8	8	8
9861	846	8	0	0	0	0	8	8	8	8
9862	846	9	0	0	0	0	8	8	8	8
9863	846	10	0	0	0	0	8	8	8	8
9864	846	11	0	0	0	0	8	8	8	8
9865	847	0	10	10	16	2	14	\N	9	\N
9866	847	1	9	10	16	1	14	\N	9	\N
9867	847	2	8	9	16	1	\N	\N	25	\N
9868	847	3	6	7	15	1	\N	\N	\N	\N
9869	847	4	4	4	14	1	\N	\N	\N	\N
9870	847	5	2	0	13	0	\N	\N	\N	10
9871	847	6	0	0	0	0	8	8	8	8
9872	847	7	0	0	0	0	8	8	8	8
9873	847	8	0	0	0	0	8	8	8	8
9874	847	9	0	0	0	0	8	8	8	8
9875	847	10	0	0	0	0	8	8	8	8
9876	847	11	0	0	0	0	8	8	8	8
9877	848	0	10	11	16	2	14	\N	9	\N
9878	848	1	9	10	16	1	14	\N	9	\N
9879	848	2	8	9	16	1	\N	\N	25	\N
9880	848	3	6	7	15	1	\N	\N	25	\N
9881	848	4	4	4	14	1	\N	\N	\N	\N
9882	848	5	2	0	13	0	\N	\N	\N	10
9883	848	6	0	0	0	0	8	8	8	8
9884	848	7	0	0	0	0	8	8	8	8
9885	848	8	0	0	0	0	8	8	8	8
9886	848	9	0	0	0	0	8	8	8	8
9887	848	10	0	0	0	0	8	8	8	8
9888	848	11	0	0	0	0	8	8	8	8
9889	849	0	8	9	16	3	\N	12	2	\N
9890	849	1	8	8	16	3	\N	12	2	\N
9891	849	2	8	8	15	2	\N	\N	2	\N
9892	849	3	7	8	15	2	\N	\N	\N	\N
9893	849	4	6	6	13	1	\N	\N	\N	\N
9894	849	5	5	5	12	1	\N	\N	\N	\N
9895	849	6	4	4	11	1	\N	\N	\N	\N
9896	849	7	0	0	0	0	8	8	8	8
9897	849	8	0	0	0	0	8	8	8	8
9898	849	9	0	0	0	0	8	8	8	8
9899	849	10	0	0	0	0	8	8	8	8
9900	849	11	0	0	0	0	8	8	8	8
9901	850	0	4	10	17	4	6	12	2	\N
9902	850	1	8	9	16	3	\N	12	2	\N
9903	850	2	8	8	16	3	\N	12	2	\N
9904	850	3	7	8	15	3	\N	\N	\N	\N
9905	850	4	7	7	15	2	\N	\N	\N	\N
9906	850	5	6	5	13	2	\N	\N	\N	\N
9907	850	6	5	4	12	1	\N	\N	\N	\N
9908	850	7	4	4	11	1	\N	\N	\N	\N
9909	850	8	0	0	0	0	8	8	8	8
9910	850	9	0	0	0	0	8	8	8	8
9911	850	10	0	0	0	0	8	8	8	8
9912	850	11	0	0	0	0	8	8	8	8
9913	851	0	4	10	17	4	6	12	2	\N
9914	851	1	8	10	17	3	\N	12	2	\N
9915	851	2	8	9	16	3	\N	12	2	\N
9916	851	3	7	8	16	3	\N	12	2	\N
9917	851	4	7	7	15	3	\N	\N	\N	\N
9918	851	5	6	6	14	2	\N	\N	\N	\N
9919	851	6	5	5	13	1	\N	\N	\N	\N
9920	851	7	4	4	11	1	\N	\N	\N	\N
9921	851	8	0	0	0	0	8	8	8	8
9922	851	9	0	0	0	0	8	8	8	8
9923	851	10	0	0	0	0	8	8	8	8
9924	851	11	0	0	0	0	8	8	8	8
9925	852	0	6	8	16	3	\N	\N	37	3
9926	852	1	6	8	16	3	\N	\N	37	3
9927	852	2	6	7	16	2	\N	\N	\N	3
9928	852	3	5	7	15	2	\N	\N	\N	3
9929	852	4	5	6	14	2	\N	\N	\N	3
9930	852	5	4	5	13	1	\N	\N	32	\N
9931	852	6	2	0	11	0	\N	\N	\N	10
9932	852	7	0	0	0	0	8	8	8	8
9933	852	8	0	0	0	0	8	8	8	8
9934	852	9	0	0	0	0	8	8	8	8
9935	852	10	0	0	0	0	8	8	8	8
9936	852	11	0	0	0	0	8	8	8	8
9937	853	0	6	9	17	3	\N	\N	37	3
9938	853	1	6	8	16	3	\N	\N	37	3
9939	853	2	6	8	16	3	\N	\N	\N	3
9940	853	3	6	8	15	2	\N	\N	\N	3
9941	853	4	5	7	14	2	\N	\N	\N	3
9942	853	5	4	5	13	2	\N	\N	32	\N
9943	853	6	4	0	11	0	\N	\N	\N	10
9944	853	7	0	0	0	0	8	8	8	8
9945	853	8	0	0	0	0	8	8	8	8
9946	853	9	0	0	0	0	8	8	8	8
9947	853	10	0	0	0	0	8	8	8	8
9948	853	11	0	0	0	0	8	8	8	8
9949	854	0	6	9	17	3	\N	\N	37	3
9950	854	1	6	9	16	3	\N	\N	37	3
9951	854	2	6	8	16	3	\N	\N	37	3
9952	854	3	6	8	15	2	\N	\N	\N	3
9953	854	4	5	8	15	2	\N	\N	\N	3
9954	854	5	5	7	14	2	\N	\N	\N	3
9955	854	6	5	6	13	2	\N	\N	32	\N
9956	854	7	4	0	11	0	\N	\N	\N	10
9957	854	8	0	0	0	0	8	8	8	8
9958	854	9	0	0	0	0	8	8	8	8
9959	854	10	0	0	0	0	8	8	8	8
9960	854	11	0	0	0	0	8	8	8	8
9961	855	0	10	8	15	2	\N	\N	17	26
9962	855	1	9	7	14	2	35	\N	\N	\N
9963	855	2	8	7	14	1	35	38	\N	3
9964	855	3	6	5	12	1	35	\N	\N	3
9965	855	4	5	4	11	1	35	\N	\N	\N
9966	855	5	4	0	10	0	\N	\N	\N	10
9967	855	6	0	0	0	0	8	8	8	8
9968	855	7	0	0	0	0	8	8	8	8
9969	855	8	0	0	0	0	8	8	8	8
9970	855	9	0	0	0	0	8	8	8	8
9971	855	10	0	0	0	0	8	8	8	8
9972	855	11	0	0	0	0	8	8	8	8
9973	856	0	10	8	15	2	\N	\N	17	26
9974	856	1	9	8	14	2	\N	\N	17	26
9975	856	2	8	8	14	2	35	38	\N	3
9976	856	3	7	7	13	1	35	\N	\N	3
9977	856	4	6	6	12	1	35	\N	\N	3
9978	856	5	5	4	11	1	35	\N	\N	\N
9979	856	6	4	0	10	0	\N	\N	\N	10
9980	856	7	0	0	0	0	8	8	8	8
9981	856	8	0	0	0	0	8	8	8	8
9982	856	9	0	0	0	0	8	8	8	8
9983	856	10	0	0	0	0	8	8	8	8
9984	856	11	0	0	0	0	8	8	8	8
9985	857	0	10	9	15	2	\N	\N	17	26
9986	857	1	9	8	14	2	\N	\N	17	26
9987	857	2	8	8	14	2	35	38	\N	3
9988	857	3	7	7	13	2	35	38	\N	3
9989	857	4	6	6	12	1	35	\N	\N	3
9990	857	5	5	4	11	1	35	\N	\N	\N
9991	857	6	4	0	10	0	\N	\N	\N	10
9992	857	7	0	0	0	0	8	8	8	8
9993	857	8	0	0	0	0	8	8	8	8
9994	857	9	0	0	0	0	8	8	8	8
9995	857	10	0	0	0	0	8	8	8	8
9996	857	11	0	0	0	0	8	8	8	8
9997	858	0	6	8	16	3	\N	\N	23	\N
9998	858	1	6	7	15	3	\N	\N	23	\N
9999	858	2	6	6	14	3	\N	\N	23	\N
10000	858	3	5	5	12	3	\N	\N	\N	3
10001	858	4	5	4	12	2	\N	\N	\N	3
10002	858	5	2	0	11	0	\N	\N	\N	10
10003	858	6	0	0	0	0	8	8	8	8
10004	858	7	0	0	0	0	8	8	8	8
10005	858	8	0	0	0	0	8	8	8	8
10006	858	9	0	0	0	0	8	8	8	8
10007	858	10	0	0	0	0	8	8	8	8
10008	858	11	0	0	0	0	8	8	8	8
10009	859	0	6	8	16	3	\N	\N	23	\N
10010	859	1	6	8	15	3	\N	\N	23	\N
10011	859	2	6	7	14	3	\N	\N	23	\N
10012	859	3	5	6	13	3	\N	\N	23	\N
10013	859	4	5	5	12	3	\N	\N	\N	3
10014	859	5	5	4	12	2	\N	\N	\N	3
10015	859	6	2	0	11	0	\N	\N	\N	10
10016	859	7	0	0	0	0	8	8	8	8
10017	859	8	0	0	0	0	8	8	8	8
10018	859	9	0	0	0	0	8	8	8	8
10019	859	10	0	0	0	0	8	8	8	8
10020	859	11	0	0	0	0	8	8	8	8
10021	860	0	6	9	16	3	\N	\N	23	\N
10022	860	1	6	8	16	3	\N	\N	23	\N
10023	860	2	6	7	15	3	\N	\N	23	\N
10024	860	3	5	6	14	3	\N	\N	23	\N
10025	860	4	5	5	13	3	\N	\N	\N	3
10026	860	5	5	4	12	2	\N	\N	\N	3
10027	860	6	2	4	11	1	\N	\N	\N	3
10028	860	7	0	0	0	0	8	8	8	8
10029	860	8	0	0	0	0	8	8	8	8
10030	860	9	0	0	0	0	8	8	8	8
10031	860	10	0	0	0	0	8	8	8	8
10032	860	11	0	0	0	0	8	8	8	8
10033	861	0	8	8	15	2	\N	36	11	\N
10034	861	1	8	8	15	2	\N	\N	\N	\N
10035	861	2	7	7	14	1	\N	\N	\N	\N
10036	861	3	5	5	12	1	\N	\N	\N	\N
10037	861	4	4	4	11	1	\N	\N	\N	\N
10038	861	5	0	0	0	0	8	8	8	8
10039	861	6	0	0	0	0	8	8	8	8
10040	861	7	0	0	0	0	8	8	8	8
10041	861	8	0	0	0	0	8	8	8	8
10042	861	9	0	0	0	0	8	8	8	8
10043	861	10	0	0	0	0	8	8	8	8
10044	861	11	0	0	0	0	8	8	8	8
10045	862	0	10	9	15	2	\N	36	11	\N
10046	862	1	9	8	15	2	\N	\N	\N	\N
10047	862	2	8	8	15	2	\N	\N	\N	\N
10048	862	3	5	5	12	1	\N	\N	\N	\N
10049	862	4	4	4	11	1	\N	\N	\N	\N
10050	862	5	0	0	0	0	8	8	8	8
10051	862	6	0	0	0	0	8	8	8	8
10052	862	7	0	0	0	0	8	8	8	8
10053	862	8	0	0	0	0	8	8	8	8
10054	862	9	0	0	0	0	8	8	8	8
10055	862	10	0	0	0	0	8	8	8	8
10056	862	11	0	0	0	0	8	8	8	8
10057	863	0	10	10	16	2	\N	36	11	\N
10058	863	1	9	9	15	2	\N	\N	\N	\N
10059	863	2	8	8	15	2	\N	\N	\N	\N
10060	863	3	6	6	13	2	\N	\N	\N	\N
10061	863	4	5	5	12	1	\N	\N	\N	\N
10062	863	5	0	0	0	0	8	8	8	8
10063	863	6	0	0	0	0	8	8	8	8
10064	863	7	0	0	0	0	8	8	8	8
10065	863	8	0	0	0	0	8	8	8	8
10066	863	9	0	0	0	0	8	8	8	8
10067	863	10	0	0	0	0	8	8	8	8
10068	863	11	0	0	0	0	8	8	8	8
10069	864	0	10	7	15	1	14	\N	\N	3
10070	864	1	9	6	14	1	14	\N	\N	3
10071	864	2	8	5	13	1	\N	\N	\N	\N
10072	864	3	6	5	12	1	\N	\N	\N	\N
10073	864	4	8	7	11	2	\N	\N	\N	4
10074	864	5	4	0	10	0	\N	\N	\N	10
10075	864	6	0	0	0	0	8	8	8	8
10076	864	7	0	0	0	0	8	8	8	8
10077	864	8	0	0	0	0	8	8	8	8
10078	864	9	0	0	0	0	8	8	8	8
10079	864	10	0	0	0	0	8	8	8	8
10080	864	11	0	0	0	0	8	8	8	8
10081	865	0	10	7	15	2	14	\N	\N	3
10082	865	1	9	7	14	1	14	\N	\N	3
10083	865	2	8	6	13	1	14	\N	\N	3
10084	865	3	6	5	12	1	\N	\N	\N	\N
10085	865	4	8	7	11	2	\N	\N	\N	4
10086	865	5	4	0	10	0	\N	\N	\N	10
10087	865	6	0	0	0	0	8	8	8	8
10088	865	7	0	0	0	0	8	8	8	8
10089	865	8	0	0	0	0	8	8	8	8
10090	865	9	0	0	0	0	8	8	8	8
10091	865	10	0	0	0	0	8	8	8	8
10092	865	11	0	0	0	0	8	8	8	8
10093	866	0	10	8	15	2	14	\N	\N	3
10094	866	1	10	7	14	1	14	\N	\N	3
10095	866	2	9	7	14	1	14	\N	\N	3
10096	866	3	8	6	13	1	\N	\N	\N	\N
10097	866	4	7	5	12	1	\N	\N	\N	\N
10098	866	5	8	7	11	2	\N	\N	\N	4
10099	866	6	4	0	10	0	\N	\N	\N	10
10100	866	7	0	0	0	0	8	8	8	8
10101	866	8	0	0	0	0	8	8	8	8
10102	866	9	0	0	0	0	8	8	8	8
10103	866	10	0	0	0	0	8	8	8	8
10104	866	11	0	0	0	0	8	8	8	8
10105	867	0	6	9	16	2	1	\N	2	\N
10106	867	1	6	8	16	2	1	\N	2	\N
10107	867	2	6	8	16	1	1	\N	2	\N
10108	867	3	5	7	15	1	1	\N	2	\N
10109	867	4	4	0	11	0	1	\N	\N	10
10110	867	5	4	0	10	0	1	\N	\N	10
10111	867	6	0	0	0	0	8	8	8	8
10112	867	7	0	0	0	0	8	8	8	8
10113	867	8	0	0	0	0	8	8	8	8
10114	867	9	0	0	0	0	8	8	8	8
10115	867	10	0	0	0	0	8	8	8	8
10116	867	11	0	0	0	0	8	8	8	8
10117	868	0	6	9	16	3	1	\N	2	\N
10118	868	1	6	9	16	2	1	\N	2	\N
10119	868	2	6	8	16	2	1	\N	2	\N
10120	868	3	5	8	15	1	1	\N	2	\N
10121	868	4	5	7	15	1	1	\N	2	\N
10122	868	5	4	0	11	0	1	\N	\N	10
10123	868	6	4	0	10	0	1	\N	\N	10
10124	868	7	0	0	0	0	8	8	8	8
10125	868	8	0	0	0	0	8	8	8	8
10126	868	9	0	0	0	0	8	8	8	8
10127	868	10	0	0	0	0	8	8	8	8
10128	868	11	0	0	0	0	8	8	8	8
10129	869	0	6	9	17	3	1	\N	2	\N
10130	869	1	6	9	16	2	1	\N	2	\N
10131	869	2	6	8	16	2	1	\N	2	\N
10132	869	3	5	8	15	1	1	\N	2	\N
10133	869	4	5	7	15	1	1	\N	2	\N
10134	869	5	4	7	15	1	1	\N	2	\N
10135	869	6	4	0	12	0	1	\N	\N	10
10136	869	7	4	0	10	0	1	\N	\N	10
10137	869	8	0	0	0	0	8	8	8	8
10138	869	9	0	0	0	0	8	8	8	8
10139	869	10	0	0	0	0	8	8	8	8
10140	869	11	0	0	0	0	8	8	8	8
10141	870	0	4	6	15	2	\N	\N	37	3
10142	870	1	5	7	15	2	\N	\N	\N	3
10143	870	2	3	8	15	2	5	\N	\N	3
10144	870	3	4	8	14	2	5	\N	\N	3
10145	870	4	8	7	14	2	\N	\N	\N	3
10146	870	5	6	6	13	1	\N	\N	\N	3
10147	870	6	5	5	12	1	\N	\N	\N	\N
10148	870	7	4	4	11	1	\N	\N	\N	\N
10149	870	8	0	0	0	0	8	8	8	8
10150	870	9	0	0	0	0	8	8	8	8
10151	870	10	0	0	0	0	8	8	8	8
10152	870	11	0	0	0	0	8	8	8	8
10153	871	0	4	7	15	2	\N	\N	37	3
10154	871	1	5	8	15	2	\N	\N	\N	3
10155	871	2	3	9	15	2	5	\N	\N	3
10156	871	3	4	8	14	2	5	\N	\N	3
10157	871	4	8	8	14	2	\N	\N	\N	3
10158	871	5	7	7	14	2	\N	\N	\N	3
10159	871	6	6	6	13	2	\N	\N	\N	3
10160	871	7	5	5	12	1	\N	\N	\N	\N
10161	871	8	4	4	11	1	\N	\N	\N	\N
10162	871	9	0	0	0	0	8	8	8	8
10163	871	10	0	0	0	0	8	8	8	8
10164	871	11	0	0	0	0	8	8	8	8
10165	872	0	4	8	15	2	\N	\N	37	3
10166	872	1	5	9	15	2	\N	\N	\N	3
10167	872	2	3	10	15	2	5	\N	\N	3
10168	872	3	4	9	14	2	5	\N	\N	3
10169	872	4	8	8	14	2	\N	\N	\N	3
10170	872	5	7	7	14	2	\N	\N	\N	3
10171	872	6	6	6	13	2	\N	\N	\N	3
10172	872	7	5	5	12	1	\N	\N	\N	\N
10173	872	8	4	4	11	1	\N	\N	\N	\N
10174	872	9	0	0	0	0	8	8	8	8
10175	872	10	0	0	0	0	8	8	8	8
10176	872	11	0	0	0	0	8	8	8	8
10177	873	0	8	10	17	4	\N	\N	16	\N
10178	873	1	0	0	0	0	8	8	8	8
10179	873	2	0	0	0	0	8	8	8	8
10180	873	3	0	0	0	0	8	8	8	8
10181	873	4	0	0	0	0	8	8	8	8
10182	873	5	0	0	0	0	8	8	8	8
10183	873	6	0	0	0	0	8	8	8	8
10184	873	7	0	0	0	0	8	8	8	8
10185	873	8	0	0	0	0	8	8	8	8
10186	873	9	0	0	0	0	8	8	8	8
10187	873	10	0	0	0	0	8	8	8	8
10188	873	11	0	0	0	0	8	8	8	8
10189	874	0	8	11	18	4	\N	\N	16	\N
10190	874	1	0	0	0	0	8	8	8	8
10191	874	2	0	0	0	0	8	8	8	8
10192	874	3	0	0	0	0	8	8	8	8
10193	874	4	0	0	0	0	8	8	8	8
10194	874	5	0	0	0	0	8	8	8	8
10195	874	6	0	0	0	0	8	8	8	8
10196	874	7	0	0	0	0	8	8	8	8
10197	874	8	0	0	0	0	8	8	8	8
10198	874	9	0	0	0	0	8	8	8	8
10199	874	10	0	0	0	0	8	8	8	8
10200	874	11	0	0	0	0	8	8	8	8
10201	875	0	8	12	18	4	\N	\N	16	\N
10202	875	1	0	0	0	0	8	8	8	8
10203	875	2	0	0	0	0	8	8	8	8
10204	875	3	0	0	0	0	8	8	8	8
10205	875	4	0	0	0	0	8	8	8	8
10206	875	5	0	0	0	0	8	8	8	8
10207	875	6	0	0	0	0	8	8	8	8
10208	875	7	0	0	0	0	8	8	8	8
10209	875	8	0	0	0	0	8	8	8	8
10210	875	9	0	0	0	0	8	8	8	8
10211	875	10	0	0	0	0	8	8	8	8
10212	875	11	0	0	0	0	8	8	8	8
10213	876	0	6	9	16	1	\N	\N	23	19
10214	876	1	6	9	15	1	\N	\N	25	\N
10215	876	2	5	8	15	1	\N	\N	25	\N
10216	876	3	4	7	15	1	\N	\N	25	\N
10217	876	4	3	4	14	1	\N	\N	\N	\N
10218	876	5	2	0	13	0	\N	\N	\N	10
10219	876	6	0	0	0	0	8	8	8	8
10220	876	7	0	0	0	0	8	8	8	8
10221	876	8	0	0	0	0	8	8	8	8
10222	876	9	0	0	0	0	8	8	8	8
10223	876	10	0	0	0	0	8	8	8	8
10224	876	11	0	0	0	0	8	8	8	8
10225	877	0	6	10	16	1	\N	\N	23	19
10226	877	1	6	9	16	1	\N	\N	25	19
10227	877	2	6	8	15	1	\N	\N	25	\N
10228	877	3	5	8	15	1	\N	\N	25	\N
10229	877	4	4	7	15	1	\N	\N	25	\N
10230	877	5	3	4	14	1	\N	\N	\N	\N
10231	877	6	2	0	13	0	\N	\N	\N	10
10232	877	7	0	0	0	0	8	8	8	8
10233	877	8	0	0	0	0	8	8	8	8
10234	877	9	0	0	0	0	8	8	8	8
10235	877	10	0	0	0	0	8	8	8	8
10236	877	11	0	0	0	0	8	8	8	8
10237	878	0	6	11	16	2	\N	\N	23	19
10238	878	1	6	10	16	1	\N	\N	23	19
10239	878	2	6	9	15	1	\N	\N	25	\N
10240	878	3	5	8	15	1	\N	\N	25	\N
10241	878	4	4	7	15	1	\N	\N	25	\N
10242	878	5	3	4	14	1	\N	\N	\N	\N
10243	878	6	2	0	13	0	\N	\N	\N	10
10244	878	7	0	0	0	0	8	8	8	8
10245	878	8	0	0	0	0	8	8	8	8
10246	878	9	0	0	0	0	8	8	8	8
10247	878	10	0	0	0	0	8	8	8	8
10248	878	11	0	0	0	0	8	8	8	8
10249	879	0	10	9	16	2	35	\N	25	26
10250	879	1	9	9	15	2	\N	\N	25	\N
10251	879	2	8	8	15	1	\N	\N	\N	\N
10252	879	3	7	7	15	1	\N	\N	\N	\N
10253	879	4	6	4	14	1	\N	\N	\N	\N
10254	879	5	4	0	13	0	\N	\N	\N	10
10255	879	6	0	0	0	0	8	8	8	8
10256	879	7	0	0	0	0	8	8	8	8
10257	879	8	0	0	0	0	8	8	8	8
10258	879	9	0	0	0	0	8	8	8	8
10259	879	10	0	0	0	0	8	8	8	8
10260	879	11	0	0	0	0	8	8	8	8
10261	880	0	10	10	16	2	35	\N	25	26
10262	880	1	9	10	16	2	35	\N	25	26
10263	880	2	9	9	15	2	\N	\N	25	\N
10264	880	3	8	8	15	1	\N	\N	\N	\N
10265	880	4	7	7	15	1	\N	\N	\N	\N
10266	880	5	6	4	14	1	\N	\N	\N	\N
10267	880	6	4	0	13	0	\N	\N	\N	10
10268	880	7	0	0	0	0	8	8	8	8
10269	880	8	0	0	0	0	8	8	8	8
10270	880	9	0	0	0	0	8	8	8	8
10271	880	10	0	0	0	0	8	8	8	8
10272	880	11	0	0	0	0	8	8	8	8
10273	881	0	10	11	16	2	35	\N	25	26
10274	881	1	10	10	16	2	35	\N	25	26
10275	881	2	9	9	16	2	\N	\N	25	\N
10276	881	3	8	8	15	2	\N	\N	25	\N
10277	881	4	7	7	15	1	\N	\N	\N	\N
10278	881	5	6	4	14	1	\N	\N	\N	\N
10279	881	6	4	0	13	0	\N	\N	\N	10
10280	881	7	0	0	0	0	8	8	8	8
10281	881	8	0	0	0	0	8	8	8	8
10282	881	9	0	0	0	0	8	8	8	8
10283	881	10	0	0	0	0	8	8	8	8
10284	881	11	0	0	0	0	8	8	8	8
10285	882	0	8	8	15	2	\N	\N	2	3
10286	882	1	7	7	15	1	\N	\N	\N	3
10287	882	2	5	5	12	1	\N	\N	\N	\N
10288	882	3	4	0	11	0	\N	\N	\N	10
10289	882	4	0	0	0	0	8	8	8	8
10290	882	5	0	0	0	0	8	8	8	8
10291	882	6	0	0	0	0	8	8	8	8
10292	882	7	0	0	0	0	8	8	8	8
10293	882	8	0	0	0	0	8	8	8	8
10294	882	9	0	0	0	0	8	8	8	8
10295	882	10	0	0	0	0	8	8	8	8
10296	882	11	0	0	0	0	8	8	8	8
10297	883	0	8	9	15	2	\N	\N	2	3
10298	883	1	8	8	15	2	\N	\N	2	3
10299	883	2	7	7	15	2	\N	\N	\N	3
10300	883	3	6	7	14	2	\N	\N	\N	3
10301	883	4	5	5	12	1	\N	\N	\N	3
10302	883	5	4	4	11	1	\N	\N	\N	\N
10303	883	6	0	0	0	0	8	8	8	8
10304	883	7	0	0	0	0	8	8	8	8
10305	883	8	0	0	0	0	8	8	8	8
10306	883	9	0	0	0	0	8	8	8	8
10307	883	10	0	0	0	0	8	8	8	8
10308	883	11	0	0	0	0	8	8	8	8
10309	884	0	8	10	16	3	\N	\N	2	3
10310	884	1	8	9	16	3	\N	\N	2	3
10311	884	2	8	8	15	2	\N	\N	2	3
10312	884	3	7	8	15	2	\N	\N	\N	3
10313	884	4	7	7	14	1	\N	\N	\N	3
10314	884	5	6	7	14	1	\N	\N	\N	3
10315	884	6	5	6	13	1	\N	\N	\N	3
10316	884	7	4	4	12	1	\N	\N	\N	\N
10317	884	8	0	0	0	0	8	8	8	8
10318	884	9	0	0	0	0	8	8	8	8
10319	884	10	0	0	0	0	8	8	8	8
10320	884	11	0	0	0	0	8	8	8	8
10321	885	0	7	9	16	3	6	40	\N	\N
10322	885	1	6	9	16	3	6	\N	\N	\N
10323	885	2	10	9	15	2	\N	\N	\N	\N
10324	885	3	8	7	15	2	\N	\N	\N	\N
10325	885	4	7	5	14	1	\N	\N	32	\N
10326	885	5	6	4	13	1	\N	\N	\N	\N
10327	885	6	4	0	11	0	\N	\N	\N	10
10328	885	7	0	0	0	0	8	8	8	8
10329	885	8	0	0	0	0	8	8	8	8
10330	885	9	0	0	0	0	8	8	8	8
10331	885	10	0	0	0	0	8	8	8	8
10332	885	11	0	0	0	0	8	8	8	8
10333	886	0	7	10	16	3	6	40	9	\N
10334	886	1	6	9	16	3	6	\N	\N	\N
10335	886	2	10	9	15	2	\N	\N	\N	\N
10336	886	3	8	7	15	2	\N	\N	\N	\N
10337	886	4	7	6	15	2	\N	\N	32	\N
10338	886	5	7	5	14	1	\N	\N	\N	\N
10339	886	6	6	4	13	1	\N	\N	\N	\N
10340	886	7	4	0	11	0	\N	\N	\N	10
10341	886	8	0	0	0	0	8	8	8	8
10342	886	9	0	0	0	0	8	8	8	8
10343	886	10	0	0	0	0	8	8	8	8
10344	886	11	0	0	0	0	8	8	8	8
10345	887	0	7	10	17	3	6	40	9	\N
10346	887	1	6	10	16	3	6	40	\N	\N
10347	887	2	5	9	15	3	6	\N	\N	\N
10348	887	3	8	7	15	2	\N	\N	\N	\N
10349	887	4	7	6	15	2	\N	\N	32	\N
10350	887	5	7	5	14	1	\N	\N	\N	\N
10351	887	6	6	4	13	1	\N	\N	\N	\N
10352	887	7	4	0	11	0	\N	\N	\N	10
10353	887	8	0	0	0	0	8	8	8	8
10354	887	9	0	0	0	0	8	8	8	8
10355	887	10	0	0	0	0	8	8	8	8
10356	887	11	0	0	0	0	8	8	8	8
10357	888	0	5	9	16	3	6	40	37	\N
10358	888	1	8	9	15	3	\N	\N	37	\N
10359	888	2	8	9	15	3	\N	\N	\N	\N
10360	888	3	7	7	15	3	\N	\N	\N	\N
10361	888	4	6	6	14	2	\N	\N	\N	\N
10362	888	5	5	4	12	2	\N	\N	\N	\N
10363	888	6	4	0	11	0	\N	\N	\N	10
10364	888	7	0	0	0	0	8	8	8	8
10365	888	8	0	0	0	0	8	8	8	8
10366	888	9	0	0	0	0	8	8	8	8
10367	888	10	0	0	0	0	8	8	8	8
10368	888	11	0	0	0	0	8	8	8	8
10369	889	0	5	10	16	3	6	40	37	\N
10370	889	1	4	10	15	3	6	\N	37	\N
10371	889	2	8	9	15	3	\N	\N	\N	\N
10372	889	3	7	7	15	3	\N	\N	\N	\N
10373	889	4	6	6	14	2	\N	\N	\N	\N
10374	889	5	5	5	13	2	\N	\N	\N	\N
10375	889	6	5	4	12	2	\N	\N	\N	\N
10376	889	7	4	0	11	0	\N	\N	\N	10
10377	889	8	0	0	0	0	8	8	8	8
10378	889	9	0	0	0	0	8	8	8	8
10379	889	10	0	0	0	0	8	8	8	8
10380	889	11	0	0	0	0	8	8	8	8
10381	890	0	5	10	16	4	6	40	37	\N
10382	890	1	4	10	15	4	6	40	37	\N
10383	890	2	4	9	15	3	6	\N	\N	\N
10384	890	3	7	7	15	3	\N	\N	\N	\N
10385	890	4	6	6	14	2	\N	\N	\N	\N
10386	890	5	5	5	13	2	\N	\N	\N	\N
10387	890	6	5	4	12	2	\N	\N	\N	\N
10388	890	7	4	0	11	0	\N	\N	\N	10
10389	890	8	0	0	0	0	8	8	8	8
10390	890	9	0	0	0	0	8	8	8	8
10391	890	10	0	0	0	0	8	8	8	8
10392	890	11	0	0	0	0	8	8	8	8
10393	891	0	7	9	16	3	5	\N	\N	\N
10394	891	1	12	9	16	2	\N	\N	\N	\N
10395	891	2	10	8	15	2	\N	\N	\N	\N
10396	891	3	8	7	15	2	\N	\N	\N	\N
10397	891	4	7	6	14	1	\N	\N	32	\N
10398	891	5	6	4	13	1	\N	\N	\N	\N
10399	891	6	4	0	11	0	\N	\N	\N	10
10400	891	7	0	0	0	0	8	8	8	8
10401	891	8	0	0	0	0	8	8	8	8
10402	891	9	0	0	0	0	8	8	8	8
10403	891	10	0	0	0	0	8	8	8	8
10404	891	11	0	0	0	0	8	8	8	8
10405	892	0	7	10	16	3	5	\N	9	\N
10406	892	1	12	9	16	2	\N	\N	\N	\N
10407	892	2	10	9	15	2	\N	\N	\N	\N
10408	892	3	8	7	15	2	\N	\N	\N	\N
10409	892	4	7	6	15	1	\N	\N	32	\N
10410	892	5	6	5	13	1	\N	\N	\N	\N
10411	892	6	4	0	11	0	\N	\N	\N	10
10412	892	7	0	0	0	0	8	8	8	8
10413	892	8	0	0	0	0	8	8	8	8
10414	892	9	0	0	0	0	8	8	8	8
10415	892	10	0	0	0	0	8	8	8	8
10416	892	11	0	0	0	0	8	8	8	8
10417	893	0	7	10	16	3	5	\N	9	\N
10418	893	1	6	10	16	3	5	\N	\N	\N
10419	893	2	10	9	15	2	\N	\N	\N	\N
10420	893	3	8	7	15	2	\N	\N	\N	\N
10421	893	4	7	6	15	2	\N	\N	32	\N
10422	893	5	7	5	14	1	\N	\N	\N	\N
10423	893	6	6	4	13	1	\N	\N	\N	\N
10424	893	7	4	0	11	0	\N	\N	\N	10
10425	893	8	0	0	0	0	8	8	8	8
10426	893	9	0	0	0	0	8	8	8	8
10427	893	10	0	0	0	0	8	8	8	8
10428	893	11	0	0	0	0	8	8	8	8
10429	894	0	5	9	16	3	5	\N	37	\N
10430	894	1	9	9	15	3	\N	\N	37	\N
10431	894	2	8	9	15	2	\N	\N	\N	\N
10432	894	3	7	8	15	2	\N	\N	\N	\N
10433	894	4	6	7	14	2	\N	\N	\N	\N
10434	894	5	6	6	14	2	\N	\N	\N	\N
10435	894	6	5	4	12	1	\N	\N	\N	\N
10436	894	7	4	0	11	0	\N	\N	\N	10
10437	894	8	0	0	0	0	8	8	8	8
10438	894	9	0	0	0	0	8	8	8	8
10439	894	10	0	0	0	0	8	8	8	8
10440	894	11	0	0	0	0	8	8	8	8
10441	895	0	5	10	16	3	5	\N	37	\N
10442	895	1	4	9	15	3	5	\N	37	\N
10443	895	2	8	9	15	2	\N	\N	\N	\N
10444	895	3	7	8	15	2	\N	\N	\N	\N
10445	895	4	6	7	14	2	\N	\N	\N	\N
10446	895	5	6	6	14	2	\N	\N	\N	\N
10447	895	6	5	4	12	1	\N	\N	\N	\N
10448	895	7	4	0	11	0	\N	\N	\N	10
10449	895	8	0	0	0	0	8	8	8	8
10450	895	9	0	0	0	0	8	8	8	8
10451	895	10	0	0	0	0	8	8	8	8
10452	895	11	0	0	0	0	8	8	8	8
10453	896	0	5	10	16	3	5	\N	37	\N
10454	896	1	4	10	15	3	5	\N	37	\N
10455	896	2	8	9	15	3	\N	\N	\N	\N
10456	896	3	7	8	15	3	\N	\N	\N	\N
10457	896	4	6	7	14	2	\N	\N	\N	\N
10458	896	5	6	6	14	2	\N	\N	\N	\N
10459	896	6	5	5	12	1	\N	\N	\N	\N
10460	896	7	4	0	11	0	\N	\N	\N	10
10461	896	8	0	0	0	0	8	8	8	8
10462	896	9	0	0	0	0	8	8	8	8
10463	896	10	0	0	0	0	8	8	8	8
10464	896	11	0	0	0	0	8	8	8	8
10465	897	0	7	8	16	2	5	40	2	\N
10466	897	1	12	8	15	2	\N	40	2	\N
10467	897	2	11	7	14	2	\N	40	37	\N
10468	897	3	10	6	13	1	\N	\N	37	\N
10469	897	4	9	6	12	1	\N	\N	\N	\N
10470	897	5	8	5	11	1	\N	\N	\N	\N
10471	897	6	7	4	10	1	\N	\N	\N	\N
10472	897	7	0	0	0	0	8	8	8	8
10473	897	8	0	0	0	0	8	8	8	8
10474	897	9	0	0	0	0	8	8	8	8
10475	897	10	0	0	0	0	8	8	8	8
10476	897	11	0	0	0	0	8	8	8	8
10477	898	0	7	9	16	2	5	40	2	\N
10478	898	1	6	9	15	2	5	40	2	\N
10479	898	2	11	8	14	2	\N	40	37	\N
10480	898	3	10	7	13	2	\N	\N	37	\N
10481	898	4	9	6	12	1	\N	\N	\N	\N
10482	898	5	8	5	11	1	\N	\N	\N	\N
10483	898	6	7	4	10	1	\N	\N	\N	\N
10484	898	7	0	0	0	0	8	8	8	8
10485	898	8	0	0	0	0	8	8	8	8
10486	898	9	0	0	0	0	8	8	8	8
10487	898	10	0	0	0	0	8	8	8	8
10488	898	11	0	0	0	0	8	8	8	8
10489	899	0	7	10	16	3	5	40	2	\N
10490	899	1	6	9	15	2	5	40	2	\N
10491	899	2	11	9	14	2	\N	40	37	\N
10492	899	3	10	8	13	2	\N	40	37	\N
10493	899	4	9	7	12	2	\N	\N	\N	\N
10494	899	5	8	6	11	1	\N	\N	\N	\N
10495	899	6	7	5	10	1	\N	\N	\N	\N
10496	899	7	4	4	10	1	\N	\N	\N	\N
10497	899	8	0	0	0	0	8	8	8	8
10498	899	9	0	0	0	0	8	8	8	8
10499	899	10	0	0	0	0	8	8	8	8
10500	899	11	0	0	0	0	8	8	8	8
10501	900	0	12	8	16	2	31	40	2	\N
10502	900	1	11	8	15	2	31	40	2	\N
10503	900	2	10	7	14	2	31	40	2	\N
10504	900	3	9	6	13	2	\N	\N	37	\N
10505	900	4	8	6	12	1	\N	\N	37	\N
10506	900	5	7	5	11	1	\N	\N	\N	\N
10507	900	6	6	4	10	1	\N	\N	\N	\N
10508	900	7	0	0	0	0	8	8	8	8
10509	900	8	0	0	0	0	8	8	8	8
10510	900	9	0	0	0	0	8	8	8	8
10511	900	10	0	0	0	0	8	8	8	8
10512	900	11	0	0	0	0	8	8	8	8
10513	901	0	12	9	16	2	31	40	2	\N
10514	901	1	11	9	15	2	31	40	2	\N
10515	901	2	10	8	14	2	31	40	2	\N
10516	901	3	9	7	13	2	31	\N	37	\N
10517	901	4	8	6	12	1	\N	\N	37	\N
10518	901	5	7	5	11	1	\N	\N	\N	\N
10519	901	6	6	4	10	1	\N	\N	\N	\N
10520	901	7	0	0	0	0	8	8	8	8
10521	901	8	0	0	0	0	8	8	8	8
10522	901	9	0	0	0	0	8	8	8	8
10523	901	10	0	0	0	0	8	8	8	8
10524	901	11	0	0	0	0	8	8	8	8
10525	902	0	12	10	16	2	31	40	2	\N
10526	902	1	11	9	15	2	31	40	2	\N
10527	902	2	10	9	14	2	31	40	2	\N
10528	902	3	9	8	13	2	31	\N	37	\N
10529	902	4	8	7	12	2	\N	\N	37	\N
10530	902	5	7	5	11	2	\N	\N	\N	\N
10531	902	6	6	4	10	1	\N	\N	\N	\N
10532	902	7	0	0	0	0	8	8	8	8
10533	902	8	0	0	0	0	8	8	8	8
10534	902	9	0	0	0	0	8	8	8	8
10535	902	10	0	0	0	0	8	8	8	8
10536	902	11	0	0	0	0	8	8	8	8
10537	903	0	7	8	17	2	5	\N	23	\N
10538	903	1	12	7	17	2	\N	\N	23	\N
10539	903	2	11	6	16	2	\N	\N	23	\N
10540	903	3	10	6	15	2	\N	\N	23	\N
10541	903	4	9	5	14	2	\N	\N	37	3
10542	903	5	8	4	13	2	\N	\N	\N	3
10543	903	6	6	0	11	0	\N	\N	\N	10
10544	903	7	0	0	0	0	8	8	8	8
10545	903	8	0	0	0	0	8	8	8	8
10546	903	9	0	0	0	0	8	8	8	8
10547	903	10	0	0	0	0	8	8	8	8
10548	903	11	0	0	0	0	8	8	8	8
10549	904	0	7	9	18	2	5	\N	23	\N
10550	904	1	6	8	17	2	5	\N	23	\N
10551	904	2	11	7	16	2	\N	\N	23	\N
10552	904	3	10	6	15	2	\N	\N	23	\N
10553	904	4	9	5	14	2	\N	\N	37	3
10554	904	5	8	4	13	2	\N	\N	\N	3
10555	904	6	6	0	11	0	\N	\N	\N	10
10556	904	7	0	0	0	0	8	8	8	8
10557	904	8	0	0	0	0	8	8	8	8
10558	904	9	0	0	0	0	8	8	8	8
10559	904	10	0	0	0	0	8	8	8	8
10560	904	11	0	0	0	0	8	8	8	8
10561	905	0	7	10	18	2	5	\N	23	\N
10562	905	1	6	9	17	2	5	\N	23	\N
10563	905	2	11	8	16	2	\N	\N	23	\N
10564	905	3	10	7	15	2	\N	\N	23	\N
10565	905	4	9	6	14	2	\N	\N	37	3
10566	905	5	8	5	13	2	\N	\N	\N	3
10567	905	6	6	4	11	2	\N	\N	\N	3
10568	905	7	0	0	0	0	8	8	8	8
10569	905	8	0	0	0	0	8	8	8	8
10570	905	9	0	0	0	0	8	8	8	8
10571	905	10	0	0	0	0	8	8	8	8
10572	905	11	0	0	0	0	8	8	8	8
10573	906	0	12	8	17	2	31	\N	23	\N
10574	906	1	11	8	17	2	31	\N	23	\N
10575	906	2	10	7	16	2	31	\N	23	\N
10576	906	3	9	6	15	2	\N	\N	23	\N
10577	906	4	8	5	14	2	\N	\N	37	3
10578	906	5	7	4	13	2	\N	\N	37	3
10579	906	6	6	0	11	0	\N	\N	\N	10
10580	906	7	0	0	0	0	8	8	8	8
10581	906	8	0	0	0	0	8	8	8	8
10582	906	9	0	0	0	0	8	8	8	8
10583	906	10	0	0	0	0	8	8	8	8
10584	906	11	0	0	0	0	8	8	8	8
10585	907	0	12	9	18	2	31	\N	23	\N
10586	907	1	11	8	17	2	31	\N	23	\N
10587	907	2	10	7	16	2	31	\N	23	\N
10588	907	3	9	6	15	2	31	\N	23	\N
10589	907	4	8	5	14	2	\N	\N	37	3
10590	907	5	7	4	13	2	\N	\N	37	3
10591	907	6	6	0	11	0	\N	\N	\N	10
10592	907	7	0	0	0	0	8	8	8	8
10593	907	8	0	0	0	0	8	8	8	8
10594	907	9	0	0	0	0	8	8	8	8
10595	907	10	0	0	0	0	8	8	8	8
10596	907	11	0	0	0	0	8	8	8	8
10597	908	0	12	10	18	2	31	\N	23	\N
10598	908	1	11	9	17	2	31	\N	23	\N
10599	908	2	10	8	16	2	31	\N	23	\N
10600	908	3	9	7	15	2	31	\N	23	\N
10601	908	4	8	6	14	2	31	\N	37	3
10602	908	5	7	5	13	2	\N	\N	37	3
10603	908	6	6	4	11	2	\N	\N	\N	3
10604	908	7	0	0	0	0	8	8	8	8
10605	908	8	0	0	0	0	8	8	8	8
10606	908	9	0	0	0	0	8	8	8	8
10607	908	10	0	0	0	0	8	8	8	8
10608	908	11	0	0	0	0	8	8	8	8
10609	909	0	6	9	16	3	6	\N	2	\N
10610	909	1	5	8	16	3	6	\N	2	\N
10611	909	2	10	8	16	3	\N	\N	37	\N
10612	909	3	9	7	15	3	\N	\N	37	3
10613	909	4	8	7	15	2	\N	\N	\N	3
10614	909	5	7	6	14	2	\N	\N	\N	\N
10615	909	6	6	5	14	2	\N	\N	\N	\N
10616	909	7	5	0	13	0	\N	\N	\N	10
10617	909	8	0	0	0	0	8	8	8	8
10618	909	9	0	0	0	0	8	8	8	8
10619	909	10	0	0	0	0	8	8	8	8
10620	909	11	0	0	0	0	8	8	8	8
10621	910	0	6	10	16	3	6	\N	2	\N
10622	910	1	5	9	16	3	6	\N	2	\N
10623	910	2	5	8	16	3	6	\N	37	\N
10624	910	3	9	8	15	3	\N	\N	37	3
10625	910	4	8	8	15	3	\N	\N	\N	3
10626	910	5	8	7	15	2	\N	\N	\N	3
10627	910	6	7	6	14	2	\N	\N	\N	\N
10628	910	7	6	5	14	2	\N	\N	\N	\N
10629	910	8	5	0	13	0	\N	\N	\N	10
10630	910	9	0	0	0	0	8	8	8	8
10631	910	10	0	0	0	0	8	8	8	8
10632	910	11	0	0	0	0	8	8	8	8
10633	911	0	6	10	16	4	6	\N	2	\N
10634	911	1	5	9	16	3	6	\N	2	\N
10635	911	2	5	8	16	3	6	\N	37	\N
10636	911	3	9	8	15	3	\N	\N	37	3
10637	911	4	8	8	15	3	\N	\N	\N	3
10638	911	5	8	7	15	2	\N	\N	\N	3
10639	911	6	7	6	14	2	\N	\N	\N	3
10640	911	7	6	5	14	2	\N	\N	\N	\N
10641	911	8	5	0	13	0	\N	\N	\N	10
10642	911	9	0	0	0	0	8	8	8	8
10643	911	10	0	0	0	0	8	8	8	8
10644	911	11	0	0	0	0	8	8	8	8
10645	912	0	10	9	16	3	31	\N	2	\N
10646	912	1	9	8	16	3	31	\N	2	\N
10647	912	2	8	8	16	3	31	\N	37	\N
10648	912	3	8	7	16	3	\N	\N	37	3
10649	912	4	8	7	15	2	\N	\N	37	3
10650	912	5	7	6	15	2	\N	\N	\N	\N
10651	912	6	6	5	14	2	\N	\N	\N	\N
10652	912	7	5	0	13	0	\N	\N	\N	10
10653	912	8	0	0	0	0	8	8	8	8
10654	912	9	0	0	0	0	8	8	8	8
10655	912	10	0	0	0	0	8	8	8	8
10656	912	11	0	0	0	0	8	8	8	8
10657	913	0	10	10	16	3	31	\N	2	\N
10658	913	1	9	9	16	3	31	\N	2	\N
10659	913	2	8	8	16	3	31	\N	37	\N
10660	913	3	8	8	16	3	\N	\N	37	3
10661	913	4	8	8	15	3	\N	\N	37	3
10662	913	5	8	7	15	2	\N	\N	\N	3
10663	913	6	7	6	15	2	\N	\N	\N	\N
10664	913	7	6	5	14	2	\N	\N	\N	\N
10665	913	8	5	0	13	0	\N	\N	\N	10
10666	913	9	0	0	0	0	8	8	8	8
10667	913	10	0	0	0	0	8	8	8	8
10668	913	11	0	0	0	0	8	8	8	8
10669	914	0	10	10	16	4	31	\N	2	\N
10670	914	1	9	9	16	3	31	\N	2	\N
10671	914	2	8	8	16	3	31	\N	37	\N
10672	914	3	8	8	16	3	\N	\N	37	3
10673	914	4	8	8	15	3	\N	\N	37	3
10674	914	5	8	7	15	2	\N	\N	\N	3
10675	914	6	7	6	15	2	\N	\N	\N	\N
10676	914	7	6	5	14	2	\N	\N	\N	\N
10677	914	8	5	0	13	0	\N	\N	\N	10
10678	914	9	0	0	0	0	8	8	8	8
10679	914	10	0	0	0	0	8	8	8	8
10680	914	11	0	0	0	0	8	8	8	8
10681	915	0	6	8	16	3	5	\N	37	\N
10682	915	1	11	8	16	2	\N	\N	37	\N
10683	915	2	10	8	16	2	\N	\N	\N	3
10684	915	3	9	8	15	2	\N	\N	\N	3
10685	915	4	8	7	15	2	\N	\N	\N	3
10686	915	5	7	6	14	2	\N	\N	\N	\N
10687	915	6	6	5	14	2	\N	\N	\N	\N
10688	915	7	5	0	13	0	\N	\N	\N	10
10689	915	8	0	0	0	0	8	8	8	8
10690	915	9	0	0	0	0	8	8	8	8
10691	915	10	0	0	0	0	8	8	8	8
10692	915	11	0	0	0	0	8	8	8	8
10693	916	0	6	8	16	3	5	\N	37	\N
10694	916	1	5	8	16	2	5	\N	37	\N
10695	916	2	10	8	16	2	\N	\N	\N	3
10696	916	3	9	8	15	2	\N	\N	\N	3
10697	916	4	8	8	15	2	\N	\N	\N	3
10698	916	5	8	7	15	2	\N	\N	\N	3
10699	916	6	7	6	14	2	\N	\N	\N	\N
10700	916	7	6	5	14	2	\N	\N	\N	\N
10701	916	8	5	0	13	0	\N	\N	\N	10
10702	916	9	0	0	0	0	8	8	8	8
10703	916	10	0	0	0	0	8	8	8	8
10704	916	11	0	0	0	0	8	8	8	8
10705	917	0	6	9	16	3	5	\N	37	\N
10706	917	1	5	9	16	3	5	\N	37	\N
10707	917	2	10	8	16	2	\N	\N	\N	3
10708	917	3	9	8	15	2	\N	\N	\N	3
10709	917	4	8	8	15	2	\N	\N	\N	3
10710	917	5	8	7	15	2	\N	\N	\N	3
10711	917	6	7	6	14	2	\N	\N	\N	3
10712	917	7	6	5	14	2	\N	\N	\N	\N
10713	917	8	5	0	13	0	\N	\N	\N	10
10714	917	9	0	0	0	0	8	8	8	8
10715	917	10	0	0	0	0	8	8	8	8
10716	917	11	0	0	0	0	8	8	8	8
10717	918	0	10	8	16	3	31	\N	37	\N
10718	918	1	9	8	16	2	31	\N	37	\N
10719	918	2	8	8	16	2	31	\N	37	\N
10720	918	3	8	7	15	2	\N	\N	\N	3
10721	918	4	8	6	15	2	\N	\N	\N	3
10722	918	5	7	6	15	2	\N	\N	\N	\N
10723	918	6	6	5	14	2	\N	\N	\N	\N
10724	918	7	5	0	13	0	\N	\N	\N	10
10725	918	8	0	0	0	0	8	8	8	8
10726	918	9	0	0	0	0	8	8	8	8
10727	918	10	0	0	0	0	8	8	8	8
10728	918	11	0	0	0	0	8	8	8	8
10729	919	0	10	8	16	3	31	\N	37	\N
10730	919	1	9	8	16	2	31	\N	37	\N
10731	919	2	8	8	16	2	31	\N	37	\N
10732	919	3	8	8	15	2	\N	\N	\N	3
10733	919	4	8	7	15	2	\N	\N	\N	3
10734	919	5	8	6	15	2	\N	\N	\N	3
10735	919	6	7	6	15	2	\N	\N	\N	\N
10736	919	7	6	5	14	2	\N	\N	\N	\N
10737	919	8	5	0	13	0	\N	\N	\N	10
10738	919	9	0	0	0	0	8	8	8	8
10739	919	10	0	0	0	0	8	8	8	8
10740	919	11	0	0	0	0	8	8	8	8
10741	920	0	10	9	16	3	31	\N	37	\N
10742	920	1	9	9	16	3	31	\N	37	\N
10743	920	2	8	8	16	2	31	\N	37	\N
10744	920	3	8	8	15	2	\N	\N	\N	3
10745	920	4	8	7	15	2	\N	\N	\N	3
10746	920	5	8	6	15	2	\N	\N	\N	3
10747	920	6	7	6	15	2	\N	\N	\N	\N
10748	920	7	6	5	14	2	\N	\N	\N	\N
10749	920	8	5	0	13	0	\N	\N	\N	10
10750	920	9	0	0	0	0	8	8	8	8
10751	920	10	0	0	0	0	8	8	8	8
10752	920	11	0	0	0	0	8	8	8	8
10753	921	0	5	10	17	1	5	\N	25	\N
10754	921	1	8	10	16	1	\N	\N	25	\N
10755	921	2	8	9	16	1	\N	\N	37	\N
10756	921	3	7	9	16	1	\N	\N	37	\N
10757	921	4	7	8	15	1	\N	\N	37	\N
10758	921	5	6	7	15	1	\N	\N	\N	\N
10759	921	6	4	4	14	1	\N	\N	\N	\N
10760	921	7	2	0	13	0	\N	\N	\N	10
10761	921	8	0	0	0	0	8	8	8	8
10762	921	9	0	0	0	0	8	8	8	8
10763	921	10	0	0	0	0	8	8	8	8
10764	921	11	0	0	0	0	8	8	8	8
10765	922	0	5	11	17	1	5	\N	25	\N
10766	922	1	4	10	16	1	5	\N	25	\N
10767	922	2	8	10	16	1	\N	\N	25	\N
10768	922	3	8	9	16	1	\N	\N	37	\N
10769	922	4	7	9	16	1	\N	\N	37	\N
10770	922	5	7	9	15	1	\N	\N	37	\N
10771	922	6	6	7	15	1	\N	\N	\N	\N
10772	922	7	4	4	14	1	\N	\N	\N	\N
10773	922	8	2	0	13	0	\N	\N	\N	10
10774	922	9	0	0	0	0	8	8	8	8
10775	922	10	0	0	0	0	8	8	8	8
10776	922	11	0	0	0	0	8	8	8	8
10777	923	0	5	11	17	1	5	\N	25	\N
10778	923	1	4	11	16	1	5	\N	25	\N
10779	923	2	8	11	16	1	\N	\N	25	\N
10780	923	3	8	10	16	1	\N	\N	25	\N
10781	923	4	7	10	16	1	\N	\N	37	\N
10782	923	5	7	9	15	1	\N	\N	37	\N
10783	923	6	6	7	15	1	\N	\N	37	\N
10784	923	7	4	4	14	1	\N	\N	\N	\N
10785	923	8	2	0	13	0	\N	\N	\N	10
10786	923	9	0	0	0	0	8	8	8	8
10787	923	10	0	0	0	0	8	8	8	8
10788	923	11	0	0	0	0	8	8	8	8
10789	924	0	12	10	16	1	13	\N	25	\N
10790	924	1	11	10	16	1	13	\N	25	\N
10791	924	2	10	10	16	1	13	\N	\N	\N
10792	924	3	9	9	15	1	13	\N	\N	\N
10793	924	4	8	7	15	1	13	\N	\N	\N
10794	924	5	4	0	13	0	\N	\N	\N	10
10795	924	6	0	0	0	0	8	8	8	8
10796	924	7	0	0	0	0	8	8	8	8
10797	924	8	0	0	0	0	8	8	8	8
10798	924	9	0	0	0	0	8	8	8	8
10799	924	10	0	0	0	0	8	8	8	8
10800	924	11	0	0	0	0	8	8	8	8
10801	925	0	12	11	17	1	13	\N	25	\N
10802	925	1	12	10	16	1	13	\N	25	\N
10803	925	2	11	10	16	1	13	\N	25	\N
10804	925	3	10	9	15	1	13	\N	\N	\N
10805	925	4	9	8	15	1	13	\N	\N	\N
10806	925	5	8	7	15	1	13	\N	\N	\N
10807	925	6	4	0	13	0	\N	\N	\N	10
10808	925	7	0	0	0	0	8	8	8	8
10809	925	8	0	0	0	0	8	8	8	8
10810	925	9	0	0	0	0	8	8	8	8
10811	925	10	0	0	0	0	8	8	8	8
10812	925	11	0	0	0	0	8	8	8	8
10813	926	0	12	11	18	1	13	\N	25	\N
10814	926	1	12	11	17	1	13	\N	25	\N
10815	926	2	11	11	16	1	13	\N	25	\N
10816	926	3	10	10	16	1	13	\N	\N	\N
10817	926	4	9	9	15	1	13	\N	\N	\N
10818	926	5	8	7	15	1	13	\N	\N	\N
10819	926	6	4	0	13	0	\N	\N	\N	10
10820	926	7	0	0	0	0	8	8	8	8
10821	926	8	0	0	0	0	8	8	8	8
10822	926	9	0	0	0	0	8	8	8	8
10823	926	10	0	0	0	0	8	8	8	8
10824	926	11	0	0	0	0	8	8	8	8
10825	927	0	5	10	16	2	6	\N	25	\N
10826	927	1	9	10	16	2	\N	\N	25	\N
10827	927	2	8	9	16	1	\N	\N	25	\N
10828	927	3	8	8	16	1	\N	\N	37	\N
10829	927	4	7	8	16	1	\N	\N	37	\N
10830	927	5	6	7	15	1	\N	\N	37	\N
10831	927	6	4	4	14	1	\N	\N	\N	\N
10832	927	7	2	0	13	0	\N	\N	\N	10
10833	927	8	0	0	0	0	8	8	8	8
10834	927	9	0	0	0	0	8	8	8	8
10835	927	10	0	0	0	0	8	8	8	8
10836	927	11	0	0	0	0	8	8	8	8
10837	928	0	5	11	16	2	6	\N	25	\N
11396	974	7	4	0	12	0	\N	\N	\N	10
10838	928	1	4	11	16	2	6	\N	25	\N
10839	928	2	8	10	16	2	\N	\N	25	\N
10840	928	3	8	10	16	1	\N	\N	37	\N
10841	928	4	7	9	16	1	\N	\N	37	\N
10842	928	5	7	8	16	1	\N	\N	37	\N
10843	928	6	6	7	15	1	\N	\N	\N	\N
10844	928	7	4	4	14	1	\N	\N	\N	\N
10845	928	8	2	0	13	0	\N	\N	\N	10
10846	928	9	0	0	0	0	8	8	8	8
10847	928	10	0	0	0	0	8	8	8	8
10848	928	11	0	0	0	0	8	8	8	8
10849	929	0	5	11	17	2	6	\N	25	\N
10850	929	1	4	11	17	2	6	\N	25	\N
10851	929	2	4	10	16	2	6	\N	25	\N
10852	929	3	8	10	16	2	\N	\N	37	\N
10853	929	4	8	9	16	1	\N	\N	37	\N
10854	929	5	7	8	16	1	\N	\N	37	\N
10855	929	6	6	7	15	1	\N	\N	\N	\N
10856	929	7	4	4	14	1	\N	\N	\N	\N
10857	929	8	2	0	13	0	\N	\N	\N	\N
10858	929	9	0	0	0	0	8	8	8	8
10859	929	10	0	0	0	0	8	8	8	8
10860	929	11	0	0	0	0	8	8	8	8
10861	930	0	12	10	17	2	13	\N	25	\N
10862	930	1	11	10	16	2	13	\N	25	\N
10863	930	2	10	10	16	1	13	\N	25	\N
10864	930	3	9	9	15	1	13	\N	\N	\N
10865	930	4	8	7	15	1	13	\N	\N	\N
10866	930	5	4	0	13	0	\N	\N	\N	10
10867	930	6	0	0	0	0	8	8	8	8
10868	930	7	0	0	0	0	8	8	8	8
10869	930	8	0	0	0	0	8	8	8	8
10870	930	9	0	0	0	0	8	8	8	8
10871	930	10	0	0	0	0	8	8	8	8
10872	930	11	0	0	0	0	8	8	8	8
10873	931	0	12	11	17	2	13	\N	25	\N
10874	931	1	12	11	17	2	13	\N	25	\N
10875	931	2	11	11	16	2	13	\N	25	\N
10876	931	3	10	10	16	1	13	\N	25	\N
10877	931	4	9	9	15	1	13	\N	\N	\N
10878	931	5	8	7	15	1	13	\N	\N	\N
10879	931	6	4	0	13	0	\N	\N	\N	10
10880	931	7	0	0	0	0	8	8	8	8
10881	931	8	0	0	0	0	8	8	8	8
10882	931	9	0	0	0	0	8	8	8	8
10883	931	10	0	0	0	0	8	8	8	8
10884	931	11	0	0	0	0	8	8	8	8
10885	932	0	12	11	18	2	13	\N	25	\N
10886	932	1	12	11	17	2	13	\N	25	\N
10887	932	2	11	11	16	2	13	\N	25	\N
10888	932	3	10	10	16	1	13	\N	25	\N
10889	932	4	9	9	15	1	13	\N	25	\N
10890	932	5	8	8	15	1	13	\N	\N	\N
10891	932	6	7	7	15	1	13	\N	\N	\N
10892	932	7	4	0	13	0	\N	\N	\N	10
10893	932	8	0	0	0	0	8	8	8	8
10894	932	9	0	0	0	0	8	8	8	8
10895	932	10	0	0	0	0	8	8	8	8
10896	932	11	0	0	0	0	8	8	8	8
10897	933	0	7	10	19	2	5	22	9	7
10898	933	1	6	10	18	2	5	22	9	7
10899	933	2	10	9	17	2	\N	22	\N	\N
10900	933	3	9	7	16	1	\N	\N	\N	\N
10901	933	4	8	6	16	1	\N	\N	32	\N
10902	933	5	7	0	15	0	\N	\N	\N	10
10903	933	6	0	0	0	0	8	8	8	8
10904	933	7	0	0	0	0	8	8	8	8
10905	933	8	0	0	0	0	8	8	8	8
10906	933	9	0	0	0	0	8	8	8	8
10907	933	10	0	0	0	0	8	8	8	8
10908	933	11	0	0	0	0	8	8	8	8
10909	934	0	5	12	18	4	6	\N	37	7
10910	934	1	5	12	17	4	6	\N	37	7
10911	934	2	9	11	16	4	\N	\N	37	7
10912	934	3	8	11	16	4	\N	\N	\N	3
10913	934	4	7	10	16	4	\N	\N	\N	3
10914	934	5	6	10	15	4	\N	\N	\N	3
10915	934	6	6	9	15	3	\N	\N	\N	3
10916	934	7	5	8	14	2	\N	\N	32	3
10917	934	8	5	7	14	2	\N	\N	32	\N
10918	934	9	4	6	13	1	\N	\N	\N	\N
10919	934	10	0	0	0	0	8	8	8	8
10920	934	11	0	0	0	0	8	8	8	8
10921	935	0	7	12	17	4	6	\N	2	7
10922	935	1	6	11	16	4	6	\N	2	7
10923	935	2	6	10	15	4	6	\N	2	\N
10924	935	3	5	9	15	4	6	\N	2	\N
10925	935	4	4	8	15	3	6	\N	37	\N
10926	935	5	4	7	15	3	6	\N	37	\N
10927	935	6	7	6	14	2	\N	\N	\N	\N
10928	935	7	6	5	13	2	\N	\N	\N	\N
10929	935	8	5	4	12	1	\N	\N	\N	\N
10930	935	9	0	0	0	0	8	8	8	8
10931	935	10	0	0	0	0	8	8	8	8
10932	935	11	0	0	0	0	8	8	8	8
10933	936	0	12	12	18	4	31	\N	23	7
10934	936	1	11	11	17	4	31	\N	23	7
10935	936	2	10	10	16	4	31	\N	23	7
10936	936	3	9	9	16	4	31	\N	23	3
10937	936	4	8	9	15	4	31	\N	37	3
10938	936	5	7	9	15	4	31	\N	37	3
10939	936	6	6	8	15	4	\N	\N	37	3
10940	936	7	5	7	14	4	\N	\N	\N	3
10941	936	8	4	6	13	4	\N	\N	\N	3
10942	936	9	0	0	0	0	8	8	8	8
10943	936	10	0	0	0	0	8	8	8	8
10944	936	11	0	0	0	0	8	8	8	8
10945	937	0	7	12	17	5	6	36	2	7
10946	937	1	7	11	16	4	6	36	2	7
10947	937	2	6	11	15	4	6	36	2	7
10948	937	3	6	10	15	4	6	36	2	7
10949	937	4	5	9	15	3	6	36	\N	7
10950	937	5	9	8	15	3	\N	36	\N	3
10951	937	6	8	7	14	2	\N	36	\N	3
10952	937	7	7	12	12	5	\N	36	\N	4
10953	937	8	6	11	11	4	\N	36	\N	4
10954	937	9	5	6	10	2	\N	\N	\N	\N
10955	937	10	0	0	0	0	8	8	8	8
10956	937	11	0	0	0	0	8	8	8	8
10957	938	0	5	12	17	5	6	\N	37	3
10958	938	1	5	12	17	4	6	\N	37	3
10959	938	2	5	11	16	4	6	\N	37	3
10960	938	3	4	10	16	4	6	\N	37	3
10961	938	4	4	9	15	4	6	\N	\N	3
10962	938	5	8	8	15	3	\N	\N	\N	\N
10963	938	6	7	7	15	3	\N	\N	\N	\N
10964	938	7	7	11	14	5	\N	\N	\N	4
10965	938	8	6	10	14	5	\N	\N	\N	4
10966	938	9	5	9	13	4	\N	\N	32	4
10967	938	10	4	6	12	2	\N	\N	32	\N
10968	938	11	0	0	0	0	8	8	8	8
10969	939	0	8	11	15	2	\N	22	37	20
10970	939	1	8	10	15	2	\N	22	37	20
10971	939	2	8	9	15	2	\N	22	\N	20
10972	939	3	8	8	14	2	\N	22	\N	3
10973	939	4	7	8	14	2	\N	\N	\N	3
10974	939	5	6	8	13	1	\N	\N	\N	3
10975	939	6	6	7	13	1	\N	\N	\N	3
10976	939	7	6	6	13	1	\N	\N	\N	\N
10977	939	8	5	0	12	0	\N	\N	\N	10
10978	939	9	0	0	0	0	8	8	8	8
10979	939	10	0	0	0	0	8	8	8	8
10980	939	11	0	0	0	0	8	8	8	8
10981	940	0	12	12	18	2	14	\N	23	\N
10982	940	1	11	11	18	2	14	\N	23	\N
10983	940	2	10	10	17	2	14	\N	23	\N
10984	940	3	9	10	17	2	\N	\N	25	\N
10985	940	4	8	10	16	2	\N	\N	25	\N
10986	940	5	7	9	16	2	\N	\N	25	\N
10987	940	6	6	9	15	2	\N	\N	\N	\N
10988	940	7	5	8	14	2	\N	\N	\N	\N
10989	940	8	4	6	13	2	\N	\N	\N	\N
10990	940	9	0	0	0	0	8	8	8	8
10991	940	10	0	0	0	0	8	8	8	8
10992	940	11	0	0	0	0	8	8	8	8
10993	941	0	10	12	18	2	14	\N	25	7
10994	941	1	10	11	18	2	14	\N	25	7
10995	941	2	9	11	18	2	14	\N	25	7
10996	941	3	9	11	17	2	14	\N	25	7
10997	941	4	8	10	17	2	\N	\N	25	7
10998	941	5	6	10	16	1	\N	\N	\N	7
10999	941	6	5	10	16	1	\N	\N	\N	7
11000	941	7	5	9	15	1	\N	\N	\N	7
11001	941	8	4	8	14	1	\N	\N	\N	7
11002	941	9	3	7	13	1	\N	\N	\N	7
11003	941	10	0	0	0	0	8	8	8	8
11004	941	11	0	0	0	0	8	8	8	8
11005	942	0	8	13	18	5	35	34	37	3
11006	942	1	8	12	18	4	35	34	37	3
11007	942	2	8	11	17	4	35	34	37	3
11008	942	3	7	10	17	4	35	\N	37	3
11009	942	4	7	10	16	3	35	\N	\N	3
11010	942	5	6	9	16	3	35	\N	\N	3
11011	942	6	6	8	15	3	\N	\N	\N	3
11012	942	7	5	7	15	3	\N	\N	\N	3
11013	942	8	5	6	14	2	\N	\N	\N	3
11014	942	9	4	5	13	2	\N	\N	\N	\N
11015	942	10	0	0	0	0	8	8	8	8
11016	942	11	0	0	0	0	8	8	8	8
11017	943	0	8	10	16	4	\N	12	29	\N
11018	943	1	8	10	16	3	\N	12	29	\N
11019	943	2	7	10	15	3	\N	12	29	\N
11020	943	3	7	9	15	3	\N	12	29	\N
11021	943	4	6	8	15	3	\N	12	\N	\N
11022	943	5	5	7	14	2	\N	\N	\N	\N
11023	943	6	4	6	14	2	\N	\N	\N	\N
11024	943	7	3	5	13	1	\N	\N	\N	\N
11025	943	8	2	4	12	1	\N	\N	\N	\N
11026	943	9	0	0	0	0	8	8	8	8
11027	943	10	0	0	0	0	8	8	8	8
11028	943	11	0	0	0	0	8	8	8	8
11029	944	0	8	10	16	4	\N	18	\N	20
11030	944	1	8	9	15	3	\N	18	\N	20
11031	944	2	7	9	14	2	\N	40	\N	20
11032	944	3	6	9	13	2	\N	40	\N	20
11033	944	4	6	8	12	1	\N	\N	\N	\N
11034	944	5	5	7	12	1	\N	\N	\N	\N
11035	944	6	4	5	11	1	\N	\N	\N	\N
11036	944	7	2	0	10	0	\N	\N	\N	10
11037	944	8	0	0	0	0	8	8	8	8
11038	944	9	0	0	0	0	8	8	8	8
11039	944	10	0	0	0	0	8	8	8	8
11040	944	11	0	0	0	0	8	8	8	8
11041	945	0	10	10	15	2	27	\N	37	3
11042	945	1	9	9	15	2	27	\N	37	3
11043	945	2	8	8	15	2	27	\N	37	3
11044	945	3	7	7	14	2	27	\N	\N	3
11045	945	4	6	6	13	2	\N	\N	\N	3
11046	945	5	5	5	13	2	\N	\N	\N	\N
11047	945	6	4	4	12	2	\N	\N	\N	\N
11048	945	7	0	0	0	0	8	8	8	8
11049	945	8	0	0	0	0	8	8	8	8
11050	945	9	0	0	0	0	8	8	8	8
11051	945	10	0	0	0	0	8	8	8	8
11052	945	11	0	0	0	0	8	8	8	8
11053	946	0	10	10	16	1	13	\N	\N	21
11054	946	1	9	9	16	1	13	\N	\N	21
11055	946	2	8	7	15	1	13	\N	\N	21
11056	946	3	8	5	14	1	13	\N	\N	\N
11057	946	4	7	4	12	1	13	\N	\N	\N
11058	946	5	2	0	10	0	\N	\N	\N	10
11059	946	6	0	0	0	0	8	8	8	8
11060	946	7	0	0	0	0	8	8	8	8
11061	946	8	0	0	0	0	8	8	8	8
11062	946	9	0	0	0	0	8	8	8	8
11063	946	10	0	0	0	0	8	8	8	8
11064	946	11	0	0	0	0	8	8	8	8
11065	947	0	5	10	15	2	6	\N	\N	\N
11066	947	1	5	9	15	2	6	\N	\N	\N
11067	947	2	9	8	14	2	\N	\N	\N	\N
11068	947	3	9	7	14	2	\N	\N	\N	\N
11069	947	4	8	7	13	2	\N	\N	\N	\N
11070	947	5	0	0	0	0	8	8	8	8
11071	947	6	0	0	0	0	8	8	8	8
11072	947	7	0	0	0	0	8	8	8	8
11073	947	8	0	0	0	0	8	8	8	8
11074	947	9	0	0	0	0	8	8	8	8
11075	947	10	0	0	0	0	8	8	8	8
11076	947	11	0	0	0	0	8	8	8	8
11077	948	0	6	11	15	4	\N	39	\N	3
11078	948	1	6	10	14	3	\N	39	\N	3
11079	948	2	5	10	14	2	\N	38	\N	3
11080	948	3	4	10	13	2	\N	38	\N	3
11081	948	4	3	9	12	1	\N	38	\N	3
11082	948	5	2	8	11	1	\N	\N	\N	3
11083	948	6	2	0	10	0	\N	\N	\N	10
11084	948	7	0	0	0	0	8	8	8	8
11085	948	8	0	0	0	0	8	8	8	8
11086	948	9	0	0	0	0	8	8	8	8
11087	948	10	0	0	0	0	8	8	8	8
11088	948	11	0	0	0	0	8	8	8	8
11089	949	0	8	11	15	2	\N	40	11	\N
11090	949	1	7	10	15	2	\N	40	11	\N
11091	949	2	6	9	14	2	\N	40	\N	\N
11092	949	3	6	8	14	1	\N	40	\N	\N
11093	949	4	5	7	13	1	\N	40	\N	\N
11094	949	5	4	5	12	1	\N	\N	\N	\N
11095	949	6	2	4	11	1	\N	\N	\N	\N
11096	949	7	0	0	0	0	8	8	8	8
11097	949	8	0	0	0	0	8	8	8	8
11098	949	9	0	0	0	0	8	8	8	8
11099	949	10	0	0	0	0	8	8	8	8
11100	949	11	0	0	0	0	8	8	8	8
11101	950	0	10	13	15	1	30	\N	11	\N
11102	950	1	9	12	14	1	30	\N	\N	\N
11103	950	2	9	11	13	1	\N	\N	\N	\N
11104	950	3	8	10	12	1	\N	\N	\N	\N
11105	950	4	7	9	12	1	\N	\N	\N	\N
11106	950	5	6	7	11	1	\N	\N	\N	\N
11107	950	6	5	4	11	1	\N	\N	\N	\N
11108	950	7	4	0	10	0	\N	\N	\N	10
11109	950	8	0	0	0	0	8	8	8	8
11110	950	9	0	0	0	0	8	8	8	8
11111	950	10	0	0	0	0	8	8	8	8
11112	950	11	0	0	0	0	8	8	8	8
11113	951	0	12	8	16	1	14	\N	29	3
11114	951	1	12	8	15	1	14	\N	29	3
11115	951	2	11	7	14	1	14	\N	29	3
11116	951	3	10	7	13	1	14	\N	\N	\N
11117	951	4	8	5	12	1	\N	\N	\N	\N
11118	951	5	6	4	11	1	\N	\N	\N	\N
11119	951	6	4	0	10	0	\N	\N	\N	10
11120	951	7	0	0	0	0	8	8	8	8
11121	951	8	0	0	0	0	8	8	8	8
11122	951	9	0	0	0	0	8	8	8	8
11123	951	10	0	0	0	0	8	8	8	8
11124	951	11	0	0	0	0	8	8	8	8
11125	952	0	8	10	16	3	\N	40	25	\N
11126	952	1	8	10	15	2	\N	40	25	\N
11127	952	2	8	9	15	2	\N	\N	25	\N
11128	952	3	6	7	14	2	\N	\N	23	\N
11129	952	4	5	6	13	2	\N	\N	23	\N
11130	952	5	4	4	12	1	\N	\N	\N	\N
11131	952	6	2	0	11	0	\N	\N	\N	10
11132	952	7	0	0	0	0	8	8	8	8
11133	952	8	0	0	0	0	8	8	8	8
11134	952	9	0	0	0	0	8	8	8	8
11135	952	10	0	0	0	0	8	8	8	8
11136	952	11	0	0	0	0	8	8	8	8
11137	953	0	4	10	16	3	6	\N	2	4
11138	953	1	4	9	15	3	6	\N	2	4
11139	953	2	7	9	14	3	\N	\N	2	4
11140	953	3	6	9	13	3	\N	\N	\N	4
11141	953	4	4	9	11	4	6	\N	\N	4
11142	953	5	3	9	10	3	6	\N	\N	4
11143	953	6	2	7	10	2	\N	\N	\N	\N
11144	953	7	0	0	0	0	8	8	8	8
11145	953	8	0	0	0	0	8	8	8	8
11146	953	9	0	0	0	0	8	8	8	8
11147	953	10	0	0	0	0	8	8	8	8
11148	953	11	0	0	0	0	8	8	8	8
11149	954	0	6	10	15	4	\N	\N	\N	28
11150	954	1	6	8	14	4	\N	\N	\N	28
11151	954	2	5	6	13	4	\N	\N	\N	3
11152	954	3	4	5	12	4	\N	\N	\N	\N
11153	954	4	6	8	11	4	\N	\N	\N	4
11154	954	5	2	0	10	0	\N	\N	\N	10
11155	954	6	0	0	0	0	8	8	8	8
11156	954	7	0	0	0	0	8	8	8	8
11157	954	8	0	0	0	0	8	8	8	8
11158	954	9	0	0	0	0	8	8	8	8
11159	954	10	0	0	0	0	8	8	8	8
11160	954	11	0	0	0	0	8	8	8	8
11161	955	0	8	10	15	3	\N	40	37	\N
11162	955	1	8	9	15	3	\N	40	37	\N
11163	955	2	8	8	15	3	\N	\N	\N	3
11164	955	3	8	8	14	3	\N	\N	\N	3
11165	955	4	7	8	14	2	\N	\N	\N	3
11166	955	5	6	7	13	2	\N	\N	\N	3
11167	955	6	6	6	13	2	\N	\N	\N	3
11168	955	7	5	5	13	2	\N	\N	\N	\N
11169	955	8	4	0	12	0	\N	\N	\N	10
11170	955	9	0	0	0	0	8	8	8	8
11171	955	10	0	0	0	0	8	8	8	8
11172	955	11	0	0	0	0	8	8	8	8
11173	956	0	4	10	15	3	5	\N	37	\N
11174	956	1	8	9	15	3	\N	\N	37	\N
11175	956	2	8	8	14	2	\N	\N	\N	3
11176	956	3	7	8	14	2	\N	\N	\N	3
11177	956	4	6	7	14	2	\N	\N	\N	3
11178	956	5	6	6	13	2	\N	\N	\N	3
11179	956	6	6	5	13	2	\N	\N	\N	\N
11180	956	7	5	0	12	0	\N	\N	\N	10
11181	956	8	0	0	0	0	8	8	8	8
11182	956	9	0	0	0	0	8	8	8	8
11183	956	10	0	0	0	0	8	8	8	8
11184	956	11	0	0	0	0	8	8	8	8
11185	957	0	10	12	17	2	\N	\N	25	\N
11186	957	1	9	11	16	2	\N	\N	25	\N
11187	957	2	8	10	15	2	\N	\N	25	\N
11188	957	3	6	9	15	1	\N	\N	\N	\N
11189	957	4	4	5	14	1	\N	\N	\N	\N
11190	957	5	2	0	13	0	\N	\N	\N	10
11191	957	6	0	0	0	0	8	8	8	8
11192	957	7	0	0	0	0	8	8	8	8
11193	957	8	0	0	0	0	8	8	8	8
11194	957	9	0	0	0	0	8	8	8	8
11195	957	10	0	0	0	0	8	8	8	8
11196	957	11	0	0	0	0	8	8	8	8
11197	958	0	12	11	16	2	14	\N	9	\N
11198	958	1	11	11	16	2	14	\N	9	\N
11199	958	2	10	10	16	1	\N	\N	25	\N
11200	958	3	9	10	15	1	\N	\N	\N	\N
11201	958	4	7	8	15	1	\N	\N	\N	\N
11202	958	5	5	5	14	1	\N	\N	\N	\N
11203	958	6	2	0	13	0	\N	\N	\N	10
11204	958	7	0	0	0	0	8	8	8	8
11205	958	8	0	0	0	0	8	8	8	8
11206	958	9	0	0	0	0	8	8	8	8
11207	958	10	0	0	0	0	8	8	8	8
11208	958	11	0	0	0	0	8	8	8	8
11209	959	0	7	11	16	3	6	40	9	\N
11210	959	1	6	11	16	3	6	40	9	\N
11211	959	2	6	10	15	3	6	40	\N	\N
11212	959	3	5	10	15	2	6	\N	\N	\N
11213	959	4	4	8	15	2	6	\N	\N	\N
11214	959	5	7	6	14	2	\N	\N	\N	\N
11215	959	6	6	4	13	1	\N	\N	32	\N
11216	959	7	4	0	11	0	\N	\N	\N	10
11217	959	8	0	0	0	0	8	8	8	8
11218	959	9	0	0	0	0	8	8	8	8
11219	959	10	0	0	0	0	8	8	8	8
11220	959	11	0	0	0	0	8	8	8	8
11221	960	0	5	12	16	4	6	40	37	\N
11222	960	1	4	11	15	4	6	40	37	\N
11223	960	2	4	10	15	3	6	\N	37	\N
11224	960	3	3	8	15	3	6	\N	\N	\N
11225	960	4	6	7	14	2	\N	\N	\N	\N
11226	960	5	6	6	14	2	\N	\N	\N	\N
11227	960	6	5	5	13	2	\N	\N	\N	\N
11228	960	7	5	4	12	2	\N	\N	\N	\N
11229	960	8	4	0	11	0	\N	\N	\N	10
11230	960	9	0	0	0	0	8	8	8	8
11231	960	10	0	0	0	0	8	8	8	8
11232	960	11	0	0	0	0	8	8	8	8
11233	961	0	6	11	16	3	5	\N	9	\N
11234	961	1	5	10	16	3	5	\N	9	\N
11235	961	2	4	9	15	2	5	\N	\N	\N
11236	961	3	8	8	15	2	\N	\N	\N	\N
11237	961	4	7	7	15	2	\N	\N	\N	\N
11238	961	5	7	6	14	2	\N	\N	\N	\N
11239	961	6	6	4	13	2	\N	\N	32	\N
11240	961	7	4	0	11	0	\N	\N	\N	10
11241	961	8	0	0	0	0	8	8	8	8
11242	961	9	0	0	0	0	8	8	8	8
11243	961	10	0	0	0	0	8	8	8	8
11244	961	11	0	0	0	0	8	8	8	8
11245	962	0	5	11	16	3	5	\N	37	\N
11246	962	1	4	10	15	3	5	\N	37	\N
11247	962	2	4	9	15	2	5	\N	37	\N
11248	962	3	7	8	15	2	\N	\N	\N	\N
11249	962	4	6	7	14	2	\N	\N	\N	\N
11250	962	5	6	6	14	2	\N	\N	\N	\N
11251	962	6	5	5	13	2	\N	\N	\N	\N
11252	962	7	5	4	12	1	\N	\N	\N	\N
11253	962	8	4	0	11	0	\N	\N	\N	10
11254	962	9	0	0	0	0	8	8	8	8
11255	962	10	0	0	0	0	8	8	8	8
11256	962	11	0	0	0	0	8	8	8	8
11257	963	0	7	11	16	2	5	40	2	\N
11258	963	1	6	10	15	2	5	40	2	\N
11259	963	2	5	9	14	2	6	40	37	\N
11260	963	3	5	8	13	2	6	40	37	\N
11261	963	4	9	7	12	1	\N	\N	\N	\N
11262	963	5	8	5	11	1	\N	\N	\N	\N
11263	963	6	6	4	10	1	\N	\N	\N	\N
11264	963	7	0	0	0	0	8	8	8	8
11265	963	8	0	0	0	0	8	8	8	8
11266	963	9	0	0	0	0	8	8	8	8
11267	963	10	0	0	0	0	8	8	8	8
11268	963	11	0	0	0	0	8	8	8	8
11269	964	0	12	10	16	2	31	40	2	\N
11270	964	1	11	10	15	2	31	40	2	\N
11271	964	2	10	9	14	2	31	40	2	\N
11272	964	3	9	8	13	2	31	40	37	\N
11273	964	4	8	7	12	1	\N	\N	37	\N
11274	964	5	7	6	11	1	\N	\N	\N	\N
11275	964	6	6	5	10	1	\N	\N	\N	\N
11276	964	7	5	4	10	1	\N	\N	\N	\N
11277	964	8	0	0	0	0	8	8	8	8
11278	964	9	0	0	0	0	8	8	8	8
11279	964	10	0	0	0	0	8	8	8	8
11280	964	11	0	0	0	0	8	8	8	8
11281	965	0	7	11	18	2	5	\N	23	\N
11282	965	1	6	10	17	2	5	\N	23	\N
11283	965	2	5	9	16	2	5	\N	23	\N
11284	965	3	5	8	15	2	35	\N	37	\N
11285	965	4	9	7	14	2	\N	\N	37	3
11286	965	5	8	6	13	2	\N	\N	\N	3
11287	965	6	7	5	12	2	\N	\N	\N	3
11288	965	7	6	4	11	2	\N	\N	\N	3
11289	965	8	0	0	0	0	8	8	8	8
11290	965	9	0	0	0	0	8	8	8	8
11291	965	10	0	0	0	0	8	8	8	8
11292	965	11	0	0	0	0	8	8	8	8
11293	966	0	12	10	18	2	31	\N	23	\N
11294	966	1	11	10	17	2	31	\N	23	\N
11295	966	2	10	9	16	2	31	\N	23	\N
11296	966	3	9	8	15	2	31	\N	37	\N
11297	966	4	8	7	14	2	\N	\N	37	3
11298	966	5	7	6	13	2	\N	\N	\N	3
11299	966	6	6	5	12	2	\N	\N	\N	3
11300	966	7	5	4	11	2	\N	\N	\N	3
11301	966	8	4	4	10	2	\N	\N	\N	3
11302	966	9	0	0	0	0	8	8	8	8
11303	966	10	0	0	0	0	8	8	8	8
11304	966	11	0	0	0	0	8	8	8	8
11305	967	0	6	10	16	4	6	\N	2	\N
11306	967	1	5	10	16	4	6	\N	2	\N
11307	967	2	5	9	16	3	6	\N	37	\N
11308	967	3	4	8	15	3	6	\N	37	3
11309	967	4	8	8	15	3	\N	\N	\N	3
11310	967	5	8	7	15	2	\N	\N	\N	3
11311	967	6	7	6	14	2	\N	\N	\N	\N
11312	967	7	6	5	14	2	\N	\N	\N	\N
11313	967	8	5	0	13	0	\N	\N	\N	10
11314	967	9	0	0	0	0	8	8	8	8
11315	967	10	0	0	0	0	8	8	8	8
11316	967	11	0	0	0	0	8	8	8	8
11317	968	0	10	11	16	4	31	\N	2	\N
11318	968	1	9	10	16	4	31	\N	2	\N
11319	968	2	8	10	16	4	31	\N	37	\N
11320	968	3	8	9	16	3	\N	\N	37	3
11321	968	4	8	8	15	3	\N	\N	37	3
11322	968	5	8	7	15	3	\N	\N	\N	3
11323	968	6	7	6	15	2	\N	\N	\N	\N
11324	968	7	6	5	14	2	\N	\N	\N	\N
11325	968	8	5	0	13	0	\N	\N	\N	10
11326	968	9	0	0	0	0	8	8	8	8
11327	968	10	0	0	0	0	8	8	8	8
11328	968	11	0	0	0	0	8	8	8	8
11329	969	0	6	10	16	3	5	\N	37	\N
11330	969	1	5	9	16	3	5	\N	37	\N
11331	969	2	5	8	16	2	5	\N	37	\N
11332	969	3	4	8	15	2	5	\N	\N	3
11333	969	4	8	8	15	2	\N	\N	\N	3
11334	969	5	8	7	15	2	\N	\N	\N	3
11335	969	6	7	6	14	2	\N	\N	\N	\N
11336	969	7	6	5	14	2	\N	\N	\N	\N
11337	969	8	5	0	13	0	\N	\N	\N	10
11338	969	9	0	0	0	0	8	8	8	8
11339	969	10	0	0	0	0	8	8	8	8
11340	969	11	0	0	0	0	8	8	8	8
11341	970	0	10	11	16	3	31	\N	37	\N
11342	970	1	9	9	16	3	31	\N	37	\N
11343	970	2	8	8	16	2	31	\N	37	\N
11344	970	3	8	8	15	2	31	\N	37	\N
11345	970	4	8	7	15	2	\N	\N	\N	3
11346	970	5	8	6	15	2	\N	\N	\N	3
11347	970	6	7	5	15	2	\N	\N	\N	3
11348	970	7	6	4	14	2	\N	\N	\N	3
11349	970	8	5	0	13	0	\N	\N	\N	10
11350	970	9	0	0	0	0	8	8	8	8
11351	970	10	0	0	0	0	8	8	8	8
11352	970	11	0	0	0	0	8	8	8	8
11353	971	0	5	12	17	1	5	\N	25	\N
11354	971	1	5	11	16	1	5	\N	25	\N
11355	971	2	4	11	16	1	5	\N	25	\N
11356	971	3	4	10	16	1	5	\N	37	\N
11357	971	4	7	9	15	1	\N	\N	37	\N
11358	971	5	6	7	15	1	\N	\N	\N	\N
11359	971	6	4	4	14	1	\N	\N	\N	\N
11360	971	7	2	0	13	0	\N	\N	\N	10
11361	971	8	0	0	0	0	8	8	8	8
11362	971	9	0	0	0	0	8	8	8	8
11363	971	10	0	0	0	0	8	8	8	8
11364	971	11	0	0	0	0	8	8	8	8
11365	972	0	14	12	18	1	13	\N	25	\N
11366	972	1	13	11	17	1	13	\N	25	\N
11367	972	2	12	11	16	1	13	\N	25	\N
11368	972	3	11	10	16	1	13	\N	\N	\N
11369	972	4	10	9	15	1	13	\N	\N	\N
11370	972	5	9	8	15	1	13	\N	\N	\N
11371	972	6	8	7	14	1	13	\N	\N	\N
11372	972	7	4	0	13	0	\N	\N	\N	10
11373	972	8	0	0	0	0	8	8	8	8
11374	972	9	0	0	0	0	8	8	8	8
11375	972	10	0	0	0	0	8	8	8	8
11376	972	11	0	0	0	0	8	8	8	8
11377	973	0	5	12	17	2	6	\N	9	\N
11378	973	1	4	12	16	2	6	\N	9	\N
11379	973	2	4	11	16	2	6	\N	9	\N
11380	973	3	8	11	16	2	\N	\N	25	\N
11381	973	4	8	10	16	2	\N	\N	25	\N
11382	973	5	7	9	16	1	\N	\N	37	\N
11383	973	6	6	7	15	1	\N	\N	37	\N
11384	973	7	4	4	14	1	\N	\N	\N	\N
11385	973	8	2	0	13	0	\N	\N	\N	10
11386	973	9	0	0	0	0	8	8	8	8
11387	973	10	0	0	0	0	8	8	8	8
11388	973	11	0	0	0	0	8	8	8	8
11389	974	0	14	12	18	2	13	\N	9	\N
11390	974	1	13	12	17	2	13	\N	9	\N
11391	974	2	12	11	16	2	13	\N	25	\N
11392	974	3	11	10	16	1	13	\N	25	\N
11393	974	4	10	9	15	1	13	\N	\N	\N
11394	974	5	9	8	15	1	13	\N	\N	\N
11395	974	6	8	7	14	1	13	\N	\N	\N
11397	974	8	0	0	0	0	8	8	8	8
11398	974	9	0	0	0	0	8	8	8	8
11399	974	10	0	0	0	0	8	8	8	8
11400	974	11	0	0	0	0	8	8	8	8
11401	975	0	9	7	14	2	1	\N	\N	\N
11402	975	1	9	7	13	1	1	\N	\N	\N
11403	975	2	8	6	12	1	1	\N	\N	\N
11404	975	3	7	5	12	1	1	\N	\N	\N
11405	975	4	5	0	11	0	1	\N	\N	10
11406	975	5	0	0	0	0	8	8	8	8
11407	975	6	0	0	0	0	8	8	8	8
11408	975	7	0	0	0	0	8	8	8	8
11409	975	8	0	0	0	0	8	8	8	8
11410	975	9	0	0	0	0	8	8	8	8
11411	975	10	0	0	0	0	8	8	8	8
11412	975	11	0	0	0	0	8	8	8	8
11413	976	0	9	7	14	2	1	\N	\N	\N
11414	976	1	9	7	13	1	1	\N	\N	\N
11415	976	2	8	7	13	1	1	\N	\N	\N
11416	976	3	8	6	12	1	1	\N	\N	\N
11417	976	4	7	6	12	1	1	\N	\N	\N
11418	976	5	5	0	11	0	1	\N	\N	10
11419	976	6	0	0	0	0	8	8	8	8
11420	976	7	0	0	0	0	8	8	8	8
11421	976	8	0	0	0	0	8	8	8	8
11422	976	9	0	0	0	0	8	8	8	8
11423	976	10	0	0	0	0	8	8	8	8
11424	976	11	0	0	0	0	8	8	8	8
11425	977	0	10	7	14	2	1	\N	\N	\N
11426	977	1	9	7	14	2	1	\N	\N	\N
11427	977	2	9	7	13	1	1	\N	\N	\N
11428	977	3	8	6	13	1	1	\N	\N	\N
11429	977	4	7	6	12	1	1	\N	\N	\N
11430	977	5	5	0	11	0	1	\N	\N	10
11431	977	6	0	0	0	0	8	8	8	8
11432	977	7	0	0	0	0	8	8	8	8
11433	977	8	0	0	0	0	8	8	8	8
11434	977	9	0	0	0	0	8	8	8	8
11435	977	10	0	0	0	0	8	8	8	8
11436	977	11	0	0	0	0	8	8	8	8
11437	978	0	8	9	17	1	30	\N	9	\N
11438	978	1	8	9	16	1	27	\N	9	\N
11439	978	2	7	8	15	1	27	\N	\N	\N
11440	978	3	7	8	15	1	\N	\N	\N	\N
11441	978	4	6	7	14	1	\N	\N	32	\N
11442	978	5	6	0	13	0	\N	\N	\N	10
11443	978	6	0	0	0	0	8	8	8	8
11444	978	7	0	0	0	0	8	8	8	8
11445	978	8	0	0	0	0	8	8	8	8
11446	978	9	0	0	0	0	8	8	8	8
11447	978	10	0	0	0	0	8	8	8	8
11448	978	11	0	0	0	0	8	8	8	8
11449	979	0	8	10	18	2	30	\N	9	\N
11450	979	1	8	9	17	1	30	\N	9	\N
11451	979	2	7	9	15	1	27	\N	\N	\N
11452	979	3	7	8	15	1	\N	\N	\N	\N
11453	979	4	6	8	14	1	\N	\N	\N	\N
11454	979	5	6	7	13	1	\N	\N	32	\N
11455	979	6	5	0	12	0	\N	\N	\N	10
11456	979	7	0	0	0	0	8	8	8	8
11457	979	8	0	0	0	0	8	8	8	8
11458	979	9	0	0	0	0	8	8	8	8
11459	979	10	0	0	0	0	8	8	8	8
11460	979	11	0	0	0	0	8	8	8	8
11461	980	0	8	10	18	2	30	\N	9	\N
11462	980	1	8	9	18	2	30	\N	9	\N
11463	980	2	7	9	17	1	27	\N	9	\N
11464	980	3	7	8	15	1	27	\N	\N	\N
11465	980	4	6	8	15	1	\N	\N	\N	\N
11466	980	5	6	7	14	1	\N	\N	32	\N
11467	980	6	5	0	13	0	\N	\N	\N	10
11468	980	7	0	0	0	0	8	8	8	8
11469	980	8	0	0	0	0	8	8	8	8
11470	980	9	0	0	0	0	8	8	8	8
11471	980	10	0	0	0	0	8	8	8	8
11472	980	11	0	0	0	0	8	8	8	8
11473	981	0	7	7	15	2	\N	12	\N	\N
11474	981	1	6	7	14	1	\N	\N	\N	\N
11475	981	2	5	6	14	1	\N	\N	\N	\N
11476	981	3	5	6	13	1	\N	\N	\N	\N
11477	981	4	4	5	13	1	\N	\N	\N	\N
11478	981	5	4	0	11	0	\N	\N	\N	10
11479	981	6	0	0	0	0	8	8	8	8
11480	981	7	0	0	0	0	8	8	8	8
11481	981	8	0	0	0	0	8	8	8	8
11482	981	9	0	0	0	0	8	8	8	8
11483	981	10	0	0	0	0	8	8	8	8
11484	981	11	0	0	0	0	8	8	8	8
11485	982	0	7	7	15	2	\N	12	\N	\N
11486	982	1	7	7	14	2	\N	12	\N	\N
11487	982	2	6	6	14	1	\N	\N	\N	\N
11488	982	3	6	6	13	1	\N	\N	\N	\N
11489	982	4	5	5	13	1	\N	\N	\N	\N
11490	982	5	4	0	11	0	\N	\N	\N	10
11491	982	6	0	0	0	0	8	8	8	8
11492	982	7	0	0	0	0	8	8	8	8
11493	982	8	0	0	0	0	8	8	8	8
11494	982	9	0	0	0	0	8	8	8	8
11495	982	10	0	0	0	0	8	8	8	8
11496	982	11	0	0	0	0	8	8	8	8
11497	983	0	7	8	15	2	\N	12	\N	\N
11498	983	1	7	7	15	2	\N	12	\N	\N
11499	983	2	6	7	14	2	\N	12	\N	\N
11500	983	3	6	6	14	1	\N	\N	\N	\N
11501	983	4	5	6	13	1	\N	\N	\N	\N
11502	983	5	5	5	13	1	\N	\N	\N	\N
11503	983	6	4	0	11	0	\N	\N	\N	10
11504	983	7	0	0	0	0	8	8	8	8
11505	983	8	0	0	0	0	8	8	8	8
11506	983	9	0	0	0	0	8	8	8	8
11507	983	10	0	0	0	0	8	8	8	8
11508	983	11	0	0	0	0	8	8	8	8
11509	984	0	8	9	15	2	\N	33	37	\N
11510	984	1	8	8	14	2	\N	33	37	\N
11511	984	2	7	7	13	1	\N	\N	\N	\N
11512	984	3	6	6	12	1	\N	\N	\N	\N
11513	984	4	4	0	11	0	\N	\N	\N	10
11514	984	5	0	0	0	0	8	8	8	8
11515	984	6	0	0	0	0	8	8	8	8
11516	984	7	0	0	0	0	8	8	8	8
11517	984	8	0	0	0	0	8	8	8	8
11518	984	9	0	0	0	0	8	8	8	8
11519	984	10	0	0	0	0	8	8	8	8
11520	984	11	0	0	0	0	8	8	8	8
11521	985	0	9	9	15	2	\N	33	37	\N
11522	985	1	8	8	14	2	\N	33	37	\N
11523	985	2	7	7	13	1	\N	33	\N	\N
11524	985	3	6	6	12	1	\N	\N	\N	\N
11525	985	4	4	0	11	0	\N	\N	\N	10
11526	985	5	0	0	0	0	8	8	8	8
11527	985	6	0	0	0	0	8	8	8	8
11528	985	7	0	0	0	0	8	8	8	8
11529	985	8	0	0	0	0	8	8	8	8
11530	985	9	0	0	0	0	8	8	8	8
11531	985	10	0	0	0	0	8	8	8	8
11532	985	11	0	0	0	0	8	8	8	8
11533	986	0	9	10	15	2	\N	33	37	\N
11534	986	1	8	9	15	2	\N	33	37	\N
11535	986	2	7	8	14	1	\N	33	\N	\N
11536	986	3	6	7	13	1	\N	\N	\N	\N
11537	986	4	5	6	12	1	\N	\N	\N	\N
11538	986	5	4	0	11	0	\N	\N	\N	10
11539	986	6	0	0	0	0	8	8	8	8
11540	986	7	0	0	0	0	8	8	8	8
11541	986	8	0	0	0	0	8	8	8	8
11542	986	9	0	0	0	0	8	8	8	8
11543	986	10	0	0	0	0	8	8	8	8
11544	986	11	0	0	0	0	8	8	8	8
11545	987	0	8	9	15	2	35	40	37	\N
11546	987	1	8	8	14	2	35	40	\N	\N
11547	987	2	7	7	13	2	35	\N	\N	\N
11548	987	3	6	6	12	1	\N	\N	\N	\N
11549	987	4	4	0	11	0	\N	\N	\N	10
11550	987	5	0	0	0	0	8	8	8	8
11551	987	6	0	0	0	0	8	8	8	8
11552	987	7	0	0	0	0	8	8	8	8
11553	987	8	0	0	0	0	8	8	8	8
11554	987	9	0	0	0	0	8	8	8	8
11555	987	10	0	0	0	0	8	8	8	8
11556	987	11	0	0	0	0	8	8	8	8
11557	988	0	9	9	15	2	35	40	37	\N
11558	988	1	8	8	14	2	35	40	37	\N
11559	988	2	7	7	13	2	35	40	\N	\N
11560	988	3	6	6	12	1	\N	\N	\N	\N
11561	988	4	4	0	11	0	\N	\N	\N	10
11562	988	5	0	0	0	0	8	8	8	8
11563	988	6	0	0	0	0	8	8	8	8
11564	988	7	0	0	0	0	8	8	8	8
11565	988	8	0	0	0	0	8	8	8	8
11566	988	9	0	0	0	0	8	8	8	8
11567	988	10	0	0	0	0	8	8	8	8
11568	988	11	0	0	0	0	8	8	8	8
11569	989	0	9	10	15	2	35	40	37	\N
11570	989	1	8	9	15	2	35	40	37	\N
11571	989	2	7	8	14	2	35	40	\N	\N
11572	989	3	6	7	13	2	35	\N	\N	\N
11573	989	4	5	6	12	1	\N	\N	\N	\N
11574	989	5	4	0	11	0	\N	\N	\N	10
11575	989	6	0	0	0	0	8	8	8	8
11576	989	7	0	0	0	0	8	8	8	8
11577	989	8	0	0	0	0	8	8	8	8
11578	989	9	0	0	0	0	8	8	8	8
11579	989	10	0	0	0	0	8	8	8	8
11580	989	11	0	0	0	0	8	8	8	8
11581	990	0	8	10	16	3	\N	\N	29	\N
11582	990	1	8	10	15	2	\N	\N	29	\N
11583	990	2	7	9	14	2	\N	\N	\N	\N
11584	990	3	7	9	13	1	\N	\N	\N	\N
11585	990	4	6	8	12	1	\N	\N	\N	\N
11586	990	5	5	0	11	0	\N	\N	\N	10
11587	990	6	0	0	0	0	8	8	8	8
11588	990	7	0	0	0	0	8	8	8	8
11589	990	8	0	0	0	0	8	8	8	8
11590	990	9	0	0	0	0	8	8	8	8
11591	990	10	0	0	0	0	8	8	8	8
11592	990	11	0	0	0	0	8	8	8	8
11593	991	0	8	10	16	3	\N	\N	29	\N
11594	991	1	8	10	15	2	\N	\N	29	\N
11595	991	2	7	9	14	2	\N	\N	29	\N
11596	991	3	7	9	13	2	\N	\N	\N	\N
11597	991	4	6	8	12	1	\N	\N	\N	\N
11598	991	5	5	0	11	0	\N	\N	\N	10
11599	991	6	0	0	0	0	8	8	8	8
11600	991	7	0	0	0	0	8	8	8	8
11601	991	8	0	0	0	0	8	8	8	8
11602	991	9	0	0	0	0	8	8	8	8
11603	991	10	0	0	0	0	8	8	8	8
11604	991	11	0	0	0	0	8	8	8	8
11605	992	0	9	11	16	3	\N	\N	29	\N
11606	992	1	8	10	15	3	\N	\N	29	\N
11607	992	2	8	10	15	2	\N	\N	29	\N
11608	992	3	7	9	14	2	\N	\N	\N	\N
11609	992	4	7	9	13	2	\N	\N	\N	\N
11610	992	5	6	8	12	1	\N	\N	\N	\N
11611	992	6	5	0	11	0	\N	\N	\N	10
11612	992	7	0	0	0	0	8	8	8	8
11613	992	8	0	0	0	0	8	8	8	8
11614	992	9	0	0	0	0	8	8	8	8
11615	992	10	0	0	0	0	8	8	8	8
11616	992	11	0	0	0	0	8	8	8	8
11617	993	0	5	10	16	2	31	39	\N	\N
11618	993	1	5	10	15	2	31	39	\N	\N
11619	993	2	5	9	14	2	\N	39	\N	\N
11620	993	3	5	8	13	2	\N	\N	\N	\N
11621	993	4	5	7	12	2	\N	\N	\N	\N
11622	993	5	5	6	11	1	\N	\N	29	\N
11623	993	6	5	5	11	1	\N	\N	29	\N
11624	993	7	0	0	0	0	8	8	8	8
11625	993	8	0	0	0	0	8	8	8	8
11626	993	9	0	0	0	0	8	8	8	8
11627	993	10	0	0	0	0	8	8	8	8
11628	993	11	0	0	0	0	8	8	8	8
11629	994	0	5	10	16	2	31	39	\N	\N
11630	994	1	5	10	15	2	31	39	\N	\N
11631	994	2	5	9	14	2	31	39	\N	\N
11632	994	3	5	9	13	2	\N	\N	\N	\N
11633	994	4	5	7	12	2	\N	\N	\N	\N
11634	994	5	5	6	11	1	\N	\N	29	\N
11635	994	6	5	5	11	1	\N	\N	29	\N
11636	994	7	0	0	0	0	8	8	8	8
11637	994	8	0	0	0	0	8	8	8	8
11638	994	9	0	0	0	0	8	8	8	8
11639	994	10	0	0	0	0	8	8	8	8
11640	994	11	0	0	0	0	8	8	8	8
11641	995	0	5	10	16	2	31	39	\N	\N
11642	995	1	5	10	15	2	31	39	\N	\N
11643	995	2	5	9	14	2	31	39	\N	\N
11644	995	3	5	9	13	2	\N	39	\N	\N
11645	995	4	5	8	12	2	\N	\N	\N	\N
11646	995	5	5	8	11	2	\N	\N	\N	\N
11647	995	6	5	7	10	1	\N	\N	29	\N
11648	995	7	5	6	10	1	\N	\N	29	\N
11649	995	8	0	0	0	0	8	8	8	8
11650	995	9	0	0	0	0	8	8	8	8
11651	995	10	0	0	0	0	8	8	8	8
11652	995	11	0	0	0	0	8	8	8	8
11653	996	0	10	10	17	2	13	\N	\N	21
11654	996	1	9	10	16	2	13	\N	\N	\N
11655	996	2	9	9	15	2	\N	\N	\N	\N
11656	996	3	8	9	14	2	\N	\N	\N	\N
11657	996	4	8	8	13	2	\N	\N	\N	\N
11658	996	5	7	8	12	1	\N	\N	\N	\N
11659	996	6	7	7	11	1	\N	39	\N	\N
11660	996	7	6	6	10	1	\N	39	\N	\N
11661	996	8	0	0	0	0	8	8	8	8
11662	996	9	0	0	0	0	8	8	8	8
11663	996	10	0	0	0	0	8	8	8	8
11664	996	11	0	0	0	0	8	8	8	8
11665	997	0	10	10	17	2	13	\N	\N	21
11666	997	1	10	10	16	2	13	\N	\N	21
11667	997	2	9	9	15	2	13	\N	\N	\N
11668	997	3	9	9	14	2	\N	\N	\N	\N
11669	997	4	8	8	13	2	\N	\N	\N	\N
11670	997	5	8	8	12	1	\N	\N	\N	\N
11671	997	6	7	7	11	1	\N	39	\N	\N
11672	997	7	7	6	10	1	\N	39	\N	\N
11673	997	8	0	0	0	0	8	8	8	8
11674	997	9	0	0	0	0	8	8	8	8
11675	997	10	0	0	0	0	8	8	8	8
11676	997	11	0	0	0	0	8	8	8	8
11677	998	0	10	11	17	2	13	\N	\N	21
11678	998	1	10	10	17	2	13	\N	\N	21
11679	998	2	9	9	15	2	13	\N	\N	21
11680	998	3	8	9	14	2	13	\N	\N	\N
11681	998	4	8	8	13	2	\N	\N	\N	\N
11682	998	5	7	8	12	1	\N	\N	\N	\N
11683	998	6	7	7	11	1	\N	39	\N	\N
11684	998	7	6	6	10	1	\N	39	\N	\N
11685	998	8	0	0	0	0	8	8	8	8
11686	998	9	0	0	0	0	8	8	8	8
11687	998	10	0	0	0	0	8	8	8	8
11688	998	11	0	0	0	0	8	8	8	8
11689	999	0	9	8	15	1	30	\N	\N	\N
11690	999	1	10	7	14	1	30	\N	\N	\N
11691	999	2	11	6	13	1	14	\N	\N	\N
11692	999	3	4	0	11	0	\N	\N	\N	10
11693	999	4	0	0	0	0	8	8	8	8
11694	999	5	0	0	0	0	8	8	8	8
11695	999	6	0	0	0	0	8	8	8	8
11696	999	7	0	0	0	0	8	8	8	8
11697	999	8	0	0	0	0	8	8	8	8
11698	999	9	0	0	0	0	8	8	8	8
11699	999	10	0	0	0	0	8	8	8	8
11700	999	11	0	0	0	0	8	8	8	8
11701	1000	0	9	8	15	1	30	\N	\N	\N
11702	1000	1	10	7	14	1	30	\N	\N	\N
11703	1000	2	11	6	13	1	14	\N	\N	\N
11704	1000	3	12	5	12	1	14	\N	\N	\N
11705	1000	4	4	0	11	0	\N	\N	\N	10
11706	1000	5	0	0	0	0	8	8	8	8
11707	1000	6	0	0	0	0	8	8	8	8
11708	1000	7	0	0	0	0	8	8	8	8
11709	1000	8	0	0	0	0	8	8	8	8
11710	1000	9	0	0	0	0	8	8	8	8
11711	1000	10	0	0	0	0	8	8	8	8
11712	1000	11	0	0	0	0	8	8	8	8
11713	1001	0	10	8	15	1	30	\N	\N	\N
11714	1001	1	11	7	14	1	30	\N	\N	\N
11715	1001	2	12	6	13	1	14	\N	\N	\N
11716	1001	3	13	5	12	1	14	\N	\N	\N
11717	1001	4	4	0	11	0	\N	\N	\N	10
11718	1001	5	0	0	0	0	8	8	8	8
11719	1001	6	0	0	0	0	8	8	8	8
11720	1001	7	0	0	0	0	8	8	8	8
11721	1001	8	0	0	0	0	8	8	8	8
11722	1001	9	0	0	0	0	8	8	8	8
11723	1001	10	0	0	0	0	8	8	8	8
11724	1001	11	0	0	0	0	8	8	8	8
11725	1002	0	9	7	16	2	35	\N	\N	\N
11726	1002	1	9	7	15	2	35	\N	\N	\N
11727	1002	2	8	6	15	1	35	\N	\N	\N
11728	1002	3	8	5	15	1	35	\N	\N	\N
11729	1002	4	7	4	14	1	35	\N	\N	\N
11730	1002	5	9	7	13	3	35	\N	\N	4
11731	1002	6	4	0	12	0	35	\N	\N	10
11732	1002	7	0	0	0	0	8	8	8	8
11733	1002	8	0	0	0	0	8	8	8	8
11734	1002	9	0	0	0	0	8	8	8	8
11735	1002	10	0	0	0	0	8	8	8	8
11736	1002	11	0	0	0	0	8	8	8	8
11737	1003	0	9	8	16	2	\N	\N	17	\N
11738	1003	1	9	7	16	2	35	\N	\N	\N
11739	1003	2	8	7	15	2	35	\N	\N	\N
11740	1003	3	8	6	15	1	35	\N	\N	\N
11741	1003	4	7	5	14	1	35	\N	\N	\N
11742	1003	5	9	7	13	3	35	\N	\N	4
11743	1003	6	4	0	12	0	35	\N	\N	10
11744	1003	7	0	0	0	0	8	8	8	8
11745	1003	8	0	0	0	0	8	8	8	8
11746	1003	9	0	0	0	0	8	8	8	8
11747	1003	10	0	0	0	0	8	8	8	8
11748	1003	11	0	0	0	0	8	8	8	8
11749	1004	0	10	9	16	2	\N	\N	17	\N
11750	1004	1	9	8	16	2	\N	\N	17	\N
11751	1004	2	9	7	15	2	35	\N	\N	\N
11752	1004	3	8	7	15	2	35	\N	\N	\N
11753	1004	4	7	6	14	1	35	\N	\N	\N
11754	1004	5	10	9	13	3	35	\N	\N	4
11755	1004	6	4	0	12	0	35	\N	\N	10
11756	1004	7	0	0	0	0	8	8	8	8
11757	1004	8	0	0	0	0	8	8	8	8
11758	1004	9	0	0	0	0	8	8	8	8
11759	1004	10	0	0	0	0	8	8	8	8
11760	1004	11	0	0	0	0	8	8	8	8
11761	1005	0	8	10	15	2	\N	\N	29	3
11762	1005	1	8	9	15	2	\N	\N	29	3
11763	1005	2	7	8	15	2	\N	\N	29	3
11764	1005	3	7	10	15	4	31	\N	29	4
11765	1005	4	6	0	15	0	\N	\N	\N	10
11766	1005	5	0	0	0	0	8	8	8	8
11767	1005	6	0	0	0	0	8	8	8	8
11768	1005	7	0	0	0	0	8	8	8	8
11769	1005	8	0	0	0	0	8	8	8	8
11770	1005	9	0	0	0	0	8	8	8	8
11771	1005	10	0	0	0	0	8	8	8	8
11772	1005	11	0	0	0	0	8	8	8	8
11773	1006	0	8	10	15	2	\N	\N	29	3
11774	1006	1	8	10	15	2	\N	\N	29	3
11775	1006	2	8	9	15	2	\N	\N	29	3
11776	1006	3	7	8	15	2	\N	\N	29	3
11777	1006	4	7	7	15	4	31	\N	29	4
11778	1006	5	6	0	15	0	\N	\N	\N	10
11779	1006	6	0	0	0	0	8	8	8	8
11780	1006	7	0	0	0	0	8	8	8	8
11781	1006	8	0	0	0	0	8	8	8	8
11782	1006	9	0	0	0	0	8	8	8	8
11783	1006	10	0	0	0	0	8	8	8	8
11784	1006	11	0	0	0	0	8	8	8	8
11785	1007	0	9	10	15	3	\N	\N	29	3
11786	1007	1	8	10	15	2	\N	\N	29	3
11787	1007	2	8	9	15	2	\N	\N	29	3
11788	1007	3	8	8	15	2	\N	\N	29	3
11789	1007	4	7	8	15	2	\N	\N	29	3
11790	1007	5	7	7	15	4	31	\N	29	4
11791	1007	6	6	0	15	0	\N	\N	\N	10
11792	1007	7	0	0	0	0	8	8	8	8
11793	1007	8	0	0	0	0	8	8	8	8
11794	1007	9	0	0	0	0	8	8	8	8
11795	1007	10	0	0	0	0	8	8	8	8
11796	1007	11	0	0	0	0	8	8	8	8
11797	1008	0	7	10	16	2	1	\N	\N	19
11798	1008	1	7	9	16	2	1	\N	\N	19
11799	1008	2	6	8	15	1	1	\N	\N	\N
11800	1008	3	5	7	14	1	1	\N	\N	\N
11801	1008	4	4	0	13	0	1	\N	\N	10
11802	1008	5	0	0	0	0	8	8	8	8
11803	1008	6	0	0	0	0	8	8	8	8
11804	1008	7	0	0	0	0	8	8	8	8
11805	1008	8	0	0	0	0	8	8	8	8
11806	1008	9	0	0	0	0	8	8	8	8
11807	1008	10	0	0	0	0	8	8	8	8
11808	1008	11	0	0	0	0	8	8	8	8
11809	1009	0	8	10	16	2	1	\N	\N	19
11810	1009	1	7	9	16	2	1	\N	\N	19
11811	1009	2	7	9	15	2	1	\N	\N	19
11812	1009	3	6	8	15	1	1	\N	\N	\N
11813	1009	4	5	7	14	1	1	\N	\N	\N
11814	1009	5	4	0	13	0	1	\N	\N	10
11815	1009	6	0	0	0	0	8	8	8	8
11816	1009	7	0	0	0	0	8	8	8	8
11817	1009	8	0	0	0	0	8	8	8	8
11818	1009	9	0	0	0	0	8	8	8	8
11819	1009	10	0	0	0	0	8	8	8	8
11820	1009	11	0	0	0	0	8	8	8	8
11821	1010	0	8	10	14	2	1	\N	11	19
11822	1010	1	8	9	16	2	1	\N	\N	19
11823	1010	2	7	9	15	2	1	\N	\N	19
11824	1010	3	6	8	15	1	1	\N	\N	\N
11825	1010	4	5	7	14	1	1	\N	\N	\N
11826	1010	5	4	0	13	0	1	\N	\N	10
11827	1010	6	0	0	0	0	8	8	8	8
11828	1010	7	0	0	0	0	8	8	8	8
11829	1010	8	0	0	0	0	8	8	8	8
11830	1010	9	0	0	0	0	8	8	8	8
11831	1010	10	0	0	0	0	8	8	8	8
11832	1010	11	0	0	0	0	8	8	8	8
11833	1011	0	8	10	15	2	\N	40	37	\N
11834	1011	1	8	9	15	2	\N	40	\N	\N
11835	1011	2	7	8	14	1	\N	40	\N	\N
11836	1011	3	7	8	14	1	\N	\N	\N	\N
11837	1011	4	8	9	15	3	\N	\N	\N	4
11838	1011	5	5	0	12	0	\N	\N	\N	10
11839	1011	6	0	0	0	0	8	8	8	8
11840	1011	7	0	0	0	0	8	8	8	8
11841	1011	8	0	0	0	0	8	8	8	8
11842	1011	9	0	0	0	0	8	8	8	8
11843	1011	10	0	0	0	0	8	8	8	8
11844	1011	11	0	0	0	0	8	8	8	8
11845	1012	0	9	10	16	2	\N	40	37	\N
11846	1012	1	8	10	15	2	\N	40	\N	\N
11847	1012	2	8	9	15	2	\N	40	\N	\N
11848	1012	3	8	8	14	1	\N	\N	\N	\N
11849	1012	4	7	8	14	1	\N	\N	\N	\N
11850	1012	5	9	9	15	3	\N	\N	\N	4
11851	1012	6	5	0	12	0	\N	\N	\N	10
11852	1012	7	0	0	0	0	8	8	8	8
11853	1012	8	0	0	0	0	8	8	8	8
11854	1012	9	0	0	0	0	8	8	8	8
11855	1012	10	0	0	0	0	8	8	8	8
11856	1012	11	0	0	0	0	8	8	8	8
11857	1013	0	9	10	16	2	\N	40	37	\N
11858	1013	1	9	10	15	2	\N	40	\N	\N
11859	1013	2	8	9	15	2	\N	40	\N	\N
11860	1013	3	8	8	14	1	\N	\N	\N	\N
11861	1013	4	7	8	14	1	\N	\N	\N	\N
11862	1013	5	9	10	16	2	\N	40	\N	4
11863	1013	6	5	0	12	0	\N	\N	\N	10
11864	1013	7	0	0	0	0	8	8	8	8
11865	1013	8	0	0	0	0	8	8	8	8
11866	1013	9	0	0	0	0	8	8	8	8
11867	1013	10	0	0	0	0	8	8	8	8
11868	1013	11	0	0	0	0	8	8	8	8
11869	1014	0	10	9	14	2	35	34	11	\N
11870	1014	1	9	8	15	2	35	34	\N	\N
11871	1014	2	8	7	15	2	35	\N	\N	\N
11872	1014	3	7	6	14	1	\N	\N	\N	\N
11873	1014	4	6	5	13	1	\N	\N	\N	\N
11874	1014	5	5	0	12	0	\N	\N	\N	10
11875	1014	6	0	0	0	0	8	8	8	8
11876	1014	7	0	0	0	0	8	8	8	8
11877	1014	8	0	0	0	0	8	8	8	8
11878	1014	9	0	0	0	0	8	8	8	8
11879	1014	10	0	0	0	0	8	8	8	8
11880	1014	11	0	0	0	0	8	8	8	8
11881	1015	0	10	9	14	2	35	34	11	\N
11882	1015	1	9	8	15	2	35	34	\N	\N
11883	1015	2	8	7	15	2	35	\N	\N	\N
11884	1015	3	7	7	14	2	35	\N	\N	\N
11885	1015	4	6	6	14	1	\N	\N	\N	\N
11886	1015	5	5	5	13	1	\N	\N	\N	\N
11887	1015	6	4	0	12	0	\N	\N	\N	10
11888	1015	7	0	0	0	0	8	8	8	8
11889	1015	8	0	0	0	0	8	8	8	8
11890	1015	9	0	0	0	0	8	8	8	8
11891	1015	10	0	0	0	0	8	8	8	8
11892	1015	11	0	0	0	0	8	8	8	8
11893	1016	0	10	9	14	3	35	34	11	\N
11894	1016	1	9	8	15	2	35	34	\N	\N
11895	1016	2	8	7	15	2	35	34	\N	\N
11896	1016	3	7	7	14	2	35	\N	\N	\N
11897	1016	4	6	6	14	2	35	\N	\N	\N
11898	1016	5	5	5	13	1	\N	\N	\N	\N
11899	1016	6	4	0	12	0	\N	\N	\N	10
11900	1016	7	0	0	0	0	8	8	8	8
11901	1016	8	0	0	0	0	8	8	8	8
11902	1016	9	0	0	0	0	8	8	8	8
11903	1016	10	0	0	0	0	8	8	8	8
11904	1016	11	0	0	0	0	8	8	8	8
11905	1017	0	4	9	15	2	5	\N	\N	\N
11906	1017	1	3	8	14	1	5	\N	\N	\N
11907	1017	2	7	7	13	1	\N	\N	\N	\N
11908	1017	3	6	6	12	1	\N	\N	\N	\N
11909	1017	4	5	5	12	1	\N	\N	\N	\N
11910	1017	5	4	0	11	0	\N	\N	\N	10
11911	1017	6	0	0	0	0	8	8	8	8
11912	1017	7	0	0	0	0	8	8	8	8
11913	1017	8	0	0	0	0	8	8	8	8
11914	1017	9	0	0	0	0	8	8	8	8
11915	1017	10	0	0	0	0	8	8	8	8
11916	1017	11	0	0	0	0	8	8	8	8
11917	1018	0	4	10	15	2	5	\N	2	\N
11918	1018	1	4	9	15	2	5	\N	\N	\N
11919	1018	2	8	8	14	1	\N	\N	\N	\N
11920	1018	3	7	7	13	1	\N	\N	\N	\N
11921	1018	4	6	6	12	1	\N	\N	\N	\N
11922	1018	5	5	5	12	1	\N	\N	\N	\N
11923	1018	6	4	0	11	0	\N	\N	\N	10
11924	1018	7	0	0	0	0	8	8	8	8
11925	1018	8	0	0	0	0	8	8	8	8
11926	1018	9	0	0	0	0	8	8	8	8
11927	1018	10	0	0	0	0	8	8	8	8
11928	1018	11	0	0	0	0	8	8	8	8
11929	1019	0	4	10	15	2	5	\N	2	\N
11930	1019	1	4	9	15	2	5	\N	\N	\N
11931	1019	2	4	8	14	2	5	\N	\N	\N
11932	1019	3	7	7	14	1	\N	\N	\N	\N
11933	1019	4	6	6	13	1	\N	\N	\N	\N
11934	1019	5	5	5	12	1	\N	\N	\N	\N
11935	1019	6	4	0	11	0	\N	\N	\N	10
11936	1019	7	0	0	0	0	8	8	8	8
11937	1019	8	0	0	0	0	8	8	8	8
11938	1019	9	0	0	0	0	8	8	8	8
11939	1019	10	0	0	0	0	8	8	8	8
11940	1019	11	0	0	0	0	8	8	8	8
11941	1020	0	10	10	15	2	13	36	\N	\N
11942	1020	1	10	9	15	2	13	36	\N	\N
11943	1020	2	9	8	14	2	13	36	\N	\N
11944	1020	3	8	7	14	2	13	\N	\N	\N
11945	1020	4	7	6	13	1	\N	\N	\N	\N
11946	1020	5	6	5	13	0	\N	\N	29	\N
11947	1020	6	5	0	12	0	\N	\N	\N	10
11948	1020	7	0	0	0	0	8	8	8	8
11949	1020	8	0	0	0	0	8	8	8	8
11950	1020	9	0	0	0	0	8	8	8	8
11951	1020	10	0	0	0	0	8	8	8	8
11952	1020	11	0	0	0	0	8	8	8	8
11953	1021	0	10	10	15	3	13	36	\N	\N
11954	1021	1	10	9	15	2	13	36	\N	\N
11955	1021	2	9	8	14	2	13	36	\N	\N
11956	1021	3	9	8	14	2	13	\N	\N	\N
11957	1021	4	8	7	13	1	\N	\N	\N	\N
11958	1021	5	7	6	13	1	\N	\N	\N	\N
11959	1021	6	6	5	12	0	\N	\N	29	\N
11960	1021	7	5	0	12	0	\N	\N	\N	10
11961	1021	8	0	0	0	0	8	8	8	8
11962	1021	9	0	0	0	0	8	8	8	8
11963	1021	10	0	0	0	0	8	8	8	8
11964	1021	11	0	0	0	0	8	8	8	8
11965	1022	0	10	10	15	3	13	36	\N	\N
11966	1022	1	10	10	15	3	13	36	\N	\N
11967	1022	2	9	9	14	2	13	36	\N	\N
11968	1022	3	9	9	14	2	13	36	\N	\N
11969	1022	4	8	8	13	1	\N	\N	\N	\N
11970	1022	5	8	7	13	1	\N	\N	29	\N
11971	1022	6	7	6	12	0	\N	\N	29	\N
11972	1022	7	6	0	12	0	\N	\N	\N	10
11973	1022	8	0	0	0	0	8	8	8	8
11974	1022	9	0	0	0	0	8	8	8	8
11975	1022	10	0	0	0	0	8	8	8	8
11976	1022	11	0	0	0	0	8	8	8	8
11977	1023	0	8	9	16	2	\N	39	25	\N
11978	1023	1	8	9	16	2	\N	\N	25	\N
11979	1023	2	7	9	15	2	\N	\N	25	\N
11980	1023	3	7	8	15	2	\N	\N	\N	\N
11981	1023	4	6	7	14	1	\N	38	\N	\N
11982	1023	5	6	6	13	1	\N	38	\N	\N
11983	1023	6	5	5	12	0	\N	\N	32	\N
11984	1023	7	0	0	0	0	8	8	8	8
11985	1023	8	0	0	0	0	8	8	8	8
11986	1023	9	0	0	0	0	8	8	8	8
11987	1023	10	0	0	0	0	8	8	8	8
11988	1023	11	0	0	0	0	8	8	8	8
11989	1024	0	9	10	16	2	\N	39	25	\N
11990	1024	1	8	9	16	2	\N	\N	25	\N
11991	1024	2	8	9	15	2	\N	\N	25	\N
11992	1024	3	7	9	15	2	\N	\N	\N	\N
11993	1024	4	7	8	14	2	\N	38	\N	\N
11994	1024	5	6	8	14	1	\N	38	\N	\N
11995	1024	6	5	7	13	1	\N	\N	32	\N
11996	1024	7	4	6	12	0	\N	\N	32	\N
11997	1024	8	0	0	0	0	8	8	8	8
11998	1024	9	0	0	0	0	8	8	8	8
11999	1024	10	0	0	0	0	8	8	8	8
12000	1024	11	0	0	0	0	8	8	8	8
12001	1025	0	9	10	16	3	\N	39	25	\N
12002	1025	1	9	10	16	2	\N	\N	25	\N
12003	1025	2	8	9	15	2	\N	\N	25	\N
12004	1025	3	8	9	15	2	\N	\N	\N	\N
12005	1025	4	7	9	14	2	\N	\N	\N	\N
12006	1025	5	7	8	14	2	\N	38	\N	\N
12007	1025	6	6	8	13	1	\N	38	\N	\N
12008	1025	7	6	7	13	1	\N	\N	32	\N
12009	1025	8	5	6	12	1	\N	\N	32	\N
12010	1025	9	0	0	0	0	8	8	8	8
12011	1025	10	0	0	0	0	8	8	8	8
12012	1025	11	0	0	0	0	8	8	8	8
12013	1026	0	4	11	15	3	6	\N	37	\N
12014	1026	1	8	11	15	3	\N	\N	37	\N
12015	1026	2	8	10	15	3	\N	\N	37	\N
12016	1026	3	7	10	14	2	\N	\N	\N	3
12017	1026	4	7	9	14	2	\N	\N	\N	3
12018	1026	5	8	11	15	4	\N	\N	\N	4
12019	1026	6	6	9	13	3	\N	\N	\N	4
12020	1026	7	4	0	12	0	\N	\N	\N	10
12021	1026	8	0	0	0	0	8	8	8	8
12022	1026	9	0	0	0	0	8	8	8	8
12023	1026	10	0	0	0	0	8	8	8	8
12024	1026	11	0	0	0	0	8	8	8	8
12025	1027	0	4	11	15	3	6	\N	37	\N
12026	1027	1	3	11	15	3	6	\N	37	\N
12027	1027	2	8	10	15	3	\N	\N	37	\N
12028	1027	3	8	10	14	3	\N	\N	37	\N
12029	1027	4	7	9	14	2	\N	\N	\N	3
12030	1027	5	7	9	13	2	\N	\N	\N	3
12031	1027	6	8	11	15	4	\N	\N	\N	4
12032	1027	7	6	9	13	3	\N	\N	\N	4
12033	1027	8	4	0	12	0	\N	\N	\N	10
12034	1027	9	0	0	0	0	8	8	8	8
12035	1027	10	0	0	0	0	8	8	8	8
12036	1027	11	0	0	0	0	8	8	8	8
12037	1028	0	4	11	16	3	6	\N	37	\N
12038	1028	1	4	11	15	3	6	\N	37	\N
12039	1028	2	3	11	15	3	6	\N	37	\N
12040	1028	3	8	10	14	3	\N	\N	37	\N
12041	1028	4	8	10	14	3	\N	\N	37	\N
12042	1028	5	7	9	13	2	\N	\N	\N	3
12043	1028	6	7	9	13	2	\N	\N	\N	3
12044	1028	7	8	11	15	4	\N	\N	\N	4
12045	1028	8	6	9	13	3	\N	\N	\N	4
12046	1028	9	4	0	12	0	\N	\N	\N	10
12047	1028	10	0	0	0	0	8	8	8	8
12048	1028	11	0	0	0	0	8	8	8	8
12049	1029	0	8	11	15	2	\N	\N	37	28
12050	1029	1	7	10	14	2	\N	\N	2	\N
12051	1029	2	6	9	14	2	\N	\N	\N	3
12052	1029	3	6	8	13	2	\N	\N	\N	3
12053	1029	4	6	10	13	2	\N	40	\N	4
12054	1029	5	4	0	12	0	\N	\N	\N	10
12055	1029	6	0	0	0	0	8	8	8	8
12056	1029	7	0	0	0	0	8	8	8	8
12057	1029	8	0	0	0	0	8	8	8	8
12058	1029	9	0	0	0	0	8	8	8	8
12059	1029	10	0	0	0	0	8	8	8	8
12060	1029	11	0	0	0	0	8	8	8	8
12061	1030	0	8	11	16	2	\N	\N	37	28
12062	1030	1	8	10	15	2	\N	\N	37	28
12063	1030	2	7	9	14	2	\N	\N	2	3
12064	1030	3	6	8	14	2	\N	\N	\N	3
12065	1030	4	6	8	13	2	\N	\N	\N	3
12066	1030	5	6	10	13	2	\N	40	\N	4
12067	1030	6	4	0	12	0	\N	\N	\N	10
12068	1030	7	0	0	0	0	8	8	8	8
12069	1030	8	0	0	0	0	8	8	8	8
12070	1030	9	0	0	0	0	8	8	8	8
12071	1030	10	0	0	0	0	8	8	8	8
12072	1030	11	0	0	0	0	8	8	8	8
12073	1031	0	8	11	16	3	\N	\N	37	28
12074	1031	1	8	10	15	2	\N	\N	37	28
12075	1031	2	7	10	15	2	\N	\N	2	28
12076	1031	3	7	9	14	2	\N	\N	\N	3
12077	1031	4	6	8	14	2	\N	\N	\N	3
12078	1031	5	6	8	13	2	\N	\N	\N	3
12079	1031	6	6	10	13	2	\N	40	\N	4
12080	1031	7	4	0	12	0	\N	\N	\N	10
12081	1031	8	0	0	0	0	8	8	8	8
12082	1031	9	0	0	0	0	8	8	8	8
12083	1031	10	0	0	0	0	8	8	8	8
12084	1031	11	0	0	0	0	8	8	8	8
12085	1032	0	9	9	16	2	13	33	\N	\N
12086	1032	1	8	9	15	2	13	33	\N	\N
12087	1032	2	8	8	15	2	13	33	\N	\N
12088	1032	3	7	7	14	2	13	\N	\N	\N
12089	1032	4	6	7	13	2	13	\N	\N	\N
12090	1032	5	5	0	12	0	\N	\N	\N	10
12091	1032	6	0	0	0	0	8	8	8	8
12092	1032	7	0	0	0	0	8	8	8	8
12093	1032	8	0	0	0	0	8	8	8	8
12094	1032	9	0	0	0	0	8	8	8	8
12095	1032	10	0	0	0	0	8	8	8	8
12096	1032	11	0	0	0	0	8	8	8	8
12097	1033	0	9	10	16	2	13	33	\N	\N
12098	1033	1	9	9	15	2	13	33	\N	\N
12099	1033	2	8	9	15	2	13	33	\N	\N
12100	1033	3	8	8	14	2	13	33	\N	\N
12101	1033	4	7	7	13	2	13	\N	\N	\N
12102	1033	5	6	0	12	0	\N	\N	\N	10
12103	1033	6	0	0	0	0	8	8	8	8
12104	1033	7	0	0	0	0	8	8	8	8
12105	1033	8	0	0	0	0	8	8	8	8
12106	1033	9	0	0	0	0	8	8	8	8
12107	1033	10	0	0	0	0	8	8	8	8
12108	1033	11	0	0	0	0	8	8	8	8
12109	1034	0	10	10	16	2	13	33	\N	\N
12110	1034	1	9	10	15	2	13	33	\N	\N
12111	1034	2	9	9	15	2	13	33	\N	\N
12112	1034	3	8	9	14	2	13	33	\N	\N
12113	1034	4	8	8	13	2	13	33	\N	\N
12114	1034	5	7	7	12	2	13	\N	\N	\N
12115	1034	6	6	0	11	0	\N	\N	\N	10
12116	1034	7	0	0	0	0	8	8	8	8
12117	1034	8	0	0	0	0	8	8	8	8
12118	1034	9	0	0	0	0	8	8	8	8
12119	1034	10	0	0	0	0	8	8	8	8
12120	1034	11	0	0	0	0	8	8	8	8
12121	1035	0	7	6	20	0	\N	\N	9	3
12122	1035	1	7	5	19	0	\N	\N	9	3
12123	1035	2	7	4	18	0	\N	\N	9	3
12124	1035	3	7	3	17	0	\N	\N	9	3
12125	1035	4	7	2	16	0	\N	\N	9	3
12126	1035	5	7	1	15	0	\N	\N	9	3
12127	1035	6	0	0	0	0	8	8	8	8
12128	1035	7	0	0	0	0	8	8	8	8
12129	1035	8	0	0	0	0	8	8	8	8
12130	1035	9	0	0	0	0	8	8	8	8
12131	1035	10	0	0	0	0	8	8	8	8
12132	1035	11	0	0	0	0	8	8	8	8
12133	1036	0	8	7	20	0	\N	\N	9	3
12134	1036	1	8	6	19	0	\N	\N	9	3
12135	1036	2	8	5	19	0	\N	\N	9	3
12136	1036	3	8	4	18	0	\N	\N	9	3
12137	1036	4	8	3	17	0	\N	\N	9	3
12138	1036	5	8	2	16	0	\N	\N	9	3
12139	1036	6	0	0	0	0	8	8	8	8
12140	1036	7	0	0	0	0	8	8	8	8
12141	1036	8	0	0	0	0	8	8	8	8
12142	1036	9	0	0	0	0	8	8	8	8
12143	1036	10	0	0	0	0	8	8	8	8
12144	1036	11	0	0	0	0	8	8	8	8
12145	1037	0	9	7	20	0	\N	\N	9	3
12146	1037	1	9	6	19	0	\N	\N	9	3
12147	1037	2	9	5	19	0	\N	\N	9	3
12148	1037	3	9	4	18	0	\N	\N	9	3
12149	1037	4	9	3	17	0	\N	\N	9	3
12150	1037	5	9	2	16	0	\N	\N	9	3
12151	1037	6	9	1	15	0	\N	\N	9	3
12152	1037	7	0	0	0	0	8	8	8	8
12153	1037	8	0	0	0	0	8	8	8	8
12154	1037	9	0	0	0	0	8	8	8	8
12155	1037	10	0	0	0	0	8	8	8	8
12156	1037	11	0	0	0	0	8	8	8	8
12157	1038	0	3	11	14	3	5	12	37	\N
12158	1038	1	7	10	14	2	\N	12	37	\N
12159	1038	2	6	9	13	2	\N	12	\N	\N
12160	1038	3	6	8	12	2	\N	12	\N	\N
12161	1038	4	5	7	12	2	\N	\N	\N	\N
12162	1038	5	4	0	11	0	\N	\N	\N	10
12163	1038	6	0	0	0	0	8	8	8	8
12164	1038	7	0	0	0	0	8	8	8	8
12165	1038	8	0	0	0	0	8	8	8	8
12166	1038	9	0	0	0	0	8	8	8	8
12167	1038	10	0	0	0	0	8	8	8	8
12168	1038	11	0	0	0	0	8	8	8	8
12169	1039	0	3	11	15	3	5	12	37	\N
12170	1039	1	7	10	14	3	\N	12	37	\N
12171	1039	2	6	10	14	2	\N	12	\N	\N
12172	1039	3	6	9	13	2	\N	12	\N	\N
12173	1039	4	5	9	13	2	\N	12	\N	\N
12174	1039	5	5	8	12	2	\N	\N	\N	\N
12175	1039	6	4	0	11	0	\N	\N	\N	10
12176	1039	7	0	0	0	0	8	8	8	8
12177	1039	8	0	0	0	0	8	8	8	8
12178	1039	9	0	0	0	0	8	8	8	8
12179	1039	10	0	0	0	0	8	8	8	8
12180	1039	11	0	0	0	0	8	8	8	8
12181	1040	0	3	11	15	3	5	12	37	\N
12182	1040	1	7	10	15	3	\N	12	37	\N
12183	1040	2	7	10	14	3	\N	12	37	\N
12184	1040	3	6	9	13	2	\N	12	\N	\N
12185	1040	4	6	9	12	2	\N	12	\N	\N
12186	1040	5	5	8	12	2	\N	12	\N	\N
12187	1040	6	5	0	11	0	\N	\N	\N	10
12188	1040	7	0	0	0	0	8	8	8	8
12189	1040	8	0	0	0	0	8	8	8	8
12190	1040	9	0	0	0	0	8	8	8	8
12191	1040	10	0	0	0	0	8	8	8	8
12192	1040	11	0	0	0	0	8	8	8	8
12193	1041	0	3	9	15	2	5	12	\N	\N
12194	1041	1	7	9	15	2	\N	12	\N	\N
12195	1041	2	7	8	14	2	\N	12	\N	\N
12196	1041	3	6	8	14	2	\N	12	\N	\N
12197	1041	4	6	7	13	2	\N	\N	\N	\N
12198	1041	5	4	0	12	0	\N	\N	\N	10
12199	1041	6	0	0	0	0	8	8	8	8
12200	1041	7	0	0	0	0	8	8	8	8
12201	1041	8	0	0	0	0	8	8	8	8
12202	1041	9	0	0	0	0	8	8	8	8
12203	1041	10	0	0	0	0	8	8	8	8
12204	1041	11	0	0	0	0	8	8	8	8
12205	1042	0	3	10	15	3	5	12	\N	\N
12206	1042	1	3	9	15	2	5	12	\N	\N
12207	1042	2	7	9	14	2	\N	12	\N	\N
12208	1042	3	7	8	14	2	\N	12	\N	\N
12209	1042	4	6	8	13	2	\N	12	\N	\N
12210	1042	5	6	7	13	2	\N	\N	\N	\N
12211	1042	6	4	0	12	0	\N	\N	\N	10
12212	1042	7	0	0	0	0	8	8	8	8
12213	1042	8	0	0	0	0	8	8	8	8
12214	1042	9	0	0	0	0	8	8	8	8
12215	1042	10	0	0	0	0	8	8	8	8
12216	1042	11	0	0	0	0	8	8	8	8
12217	1043	0	4	10	15	3	5	12	37	\N
12218	1043	1	4	10	15	3	5	12	\N	\N
12219	1043	2	8	9	13	3	\N	12	\N	\N
12220	1043	3	7	9	13	2	\N	12	\N	\N
12221	1043	4	6	8	12	2	\N	12	\N	\N
12222	1043	5	6	8	12	2	\N	12	\N	\N
12223	1043	6	4	0	12	0	\N	\N	\N	10
12224	1043	7	0	0	0	0	8	8	8	8
12225	1043	8	0	0	0	0	8	8	8	8
12226	1043	9	0	0	0	0	8	8	8	8
12227	1043	10	0	0	0	0	8	8	8	8
12228	1043	11	0	0	0	0	8	8	8	8
12229	1044	0	4	10	14	3	5	\N	\N	28
12230	1044	1	8	9	13	3	\N	\N	\N	\N
12231	1044	2	7	9	12	3	\N	\N	\N	\N
12232	1044	3	7	8	11	3	\N	\N	\N	\N
12233	1044	4	6	8	10	3	\N	\N	\N	\N
12234	1044	5	5	0	9	0	\N	\N	\N	10
12235	1044	6	0	0	0	0	8	8	8	8
12236	1044	7	0	0	0	0	8	8	8	8
12237	1044	8	0	0	0	0	8	8	8	8
12238	1044	9	0	0	0	0	8	8	8	8
12239	1044	10	0	0	0	0	8	8	8	8
12240	1044	11	0	0	0	0	8	8	8	8
12241	1045	0	4	10	14	3	5	\N	\N	28
12242	1045	1	8	10	13	3	\N	\N	\N	28
12243	1045	2	7	9	12	3	\N	\N	\N	\N
12244	1045	3	7	8	11	3	\N	\N	\N	\N
12245	1045	4	6	7	10	3	\N	\N	\N	\N
12246	1045	5	6	6	9	3	\N	\N	\N	\N
12247	1045	6	5	0	9	0	\N	\N	\N	10
12248	1045	7	0	0	0	0	8	8	8	8
12249	1045	8	0	0	0	0	8	8	8	8
12250	1045	9	0	0	0	0	8	8	8	8
12251	1045	10	0	0	0	0	8	8	8	8
12252	1045	11	0	0	0	0	8	8	8	8
12253	1046	0	4	11	15	3	5	\N	\N	28
12254	1046	1	4	10	14	3	5	\N	\N	28
12255	1046	2	8	10	14	3	\N	\N	\N	28
12256	1046	3	8	9	13	3	\N	\N	\N	\N
12257	1046	4	7	8	13	3	\N	\N	\N	\N
12258	1046	5	7	7	12	3	\N	\N	\N	\N
12259	1046	6	6	0	11	0	\N	\N	\N	10
12260	1046	7	0	0	0	0	8	8	8	8
12261	1046	8	0	0	0	0	8	8	8	8
12262	1046	9	0	0	0	0	8	8	8	8
12263	1046	10	0	0	0	0	8	8	8	8
12264	1046	11	0	0	0	0	8	8	8	8
12265	1047	0	7	10	15	3	\N	33	37	3
12266	1047	1	7	9	14	2	\N	33	37	3
12267	1047	2	6	9	13	2	\N	33	37	3
12268	1047	3	6	8	12	1	\N	33	37	3
12269	1047	4	7	10	11	3	\N	\N	29	4
12270	1047	5	5	0	10	0	\N	\N	\N	10
12271	1047	6	0	0	0	0	8	8	8	8
12272	1047	7	0	0	0	0	8	8	8	8
12273	1047	8	0	0	0	0	8	8	8	8
12274	1047	9	0	0	0	0	8	8	8	8
12275	1047	10	0	0	0	0	8	8	8	8
12276	1047	11	0	0	0	0	8	8	8	8
12277	1048	0	7	10	15	3	\N	33	37	3
12278	1048	1	7	9	15	2	\N	33	37	3
12279	1048	2	7	9	14	2	\N	33	37	3
12280	1048	3	6	8	13	2	\N	33	37	3
12281	1048	4	6	8	12	1	\N	33	\N	3
12282	1048	5	7	10	11	4	\N	\N	29	4
12283	1048	6	5	0	10	0	\N	\N	\N	10
12284	1048	7	0	0	0	0	8	8	8	8
12285	1048	8	0	0	0	0	8	8	8	8
12286	1048	9	0	0	0	0	8	8	8	8
12287	1048	10	0	0	0	0	8	8	8	8
12288	1048	11	0	0	0	0	8	8	8	8
12289	1049	0	8	11	15	3	\N	33	37	3
12290	1049	1	7	10	15	2	\N	33	37	3
12291	1049	2	7	9	14	2	\N	33	37	3
12292	1049	3	7	8	14	2	\N	33	37	3
12293	1049	4	6	8	13	2	\N	33	\N	3
12294	1049	5	6	11	13	4	\N	\N	29	4
12295	1049	6	7	10	12	3	\N	\N	29	4
12296	1049	7	5	0	11	0	\N	\N	\N	10
12297	1049	8	0	0	0	0	8	8	8	8
12298	1049	9	0	0	0	0	8	8	8	8
12299	1049	10	0	0	0	0	8	8	8	8
12300	1049	11	0	0	0	0	8	8	8	8
12301	1050	0	8	8	15	1	\N	40	11	\N
12302	1050	1	7	8	15	1	27	40	\N	\N
12303	1050	2	7	7	14	2	27	\N	\N	\N
12304	1050	3	6	7	14	2	\N	\N	\N	\N
12305	1050	4	6	6	13	1	\N	\N	\N	\N
12306	1050	5	4	0	12	0	\N	\N	\N	10
12307	1050	6	0	0	0	0	8	8	8	8
12308	1050	7	0	0	0	0	8	8	8	8
12309	1050	8	0	0	0	0	8	8	8	8
12310	1050	9	0	0	0	0	8	8	8	8
12311	1050	10	0	0	0	0	8	8	8	8
12312	1050	11	0	0	0	0	8	8	8	8
12313	1051	0	8	8	15	1	\N	40	11	\N
12314	1051	1	8	8	15	1	27	40	\N	\N
12315	1051	2	7	7	14	1	27	40	\N	\N
12316	1051	3	7	7	14	2	27	\N	\N	\N
12317	1051	4	6	6	13	2	\N	\N	\N	\N
12318	1051	5	4	0	12	0	\N	\N	\N	10
12319	1051	6	0	0	0	0	8	8	8	8
12320	1051	7	0	0	0	0	8	8	8	8
12321	1051	8	0	0	0	0	8	8	8	8
12322	1051	9	0	0	0	0	8	8	8	8
12323	1051	10	0	0	0	0	8	8	8	8
12324	1051	11	0	0	0	0	8	8	8	8
12325	1052	0	9	9	16	1	\N	40	11	\N
12326	1052	1	9	8	15	1	27	40	\N	\N
12327	1052	2	8	8	15	1	27	40	\N	\N
12328	1052	3	7	7	14	2	27	\N	\N	\N
12329	1052	4	7	7	14	2	\N	\N	\N	\N
12330	1052	5	6	6	13	2	\N	\N	\N	\N
12331	1052	6	4	0	12	0	\N	\N	\N	10
12332	1052	7	0	0	0	0	8	8	8	8
12333	1052	8	0	0	0	0	8	8	8	8
12334	1052	9	0	0	0	0	8	8	8	8
12335	1052	10	0	0	0	0	8	8	8	8
12336	1052	11	0	0	0	0	8	8	8	8
12337	1053	0	7	8	15	1	35	34	11	\N
12338	1053	1	6	7	14	1	35	39	\N	\N
12339	1053	2	6	6	13	1	35	39	\N	\N
12340	1053	3	5	5	12	1	35	\N	\N	\N
12341	1053	4	2	0	11	0	\N	\N	17	10
12342	1053	5	0	0	0	0	8	8	8	8
12343	1053	6	0	0	0	0	8	8	8	8
12344	1053	7	0	0	0	0	8	8	8	8
12345	1053	8	0	0	0	0	8	8	8	8
12346	1053	9	0	0	0	0	8	8	8	8
12347	1053	10	0	0	0	0	8	8	8	8
12348	1053	11	0	0	0	0	8	8	8	8
12349	1054	0	7	9	15	2	35	34	11	\N
12350	1054	1	6	8	15	1	35	34	\N	\N
12351	1054	2	6	7	14	1	35	39	\N	\N
12352	1054	3	5	6	13	1	35	39	\N	\N
12353	1054	4	4	0	12	0	\N	\N	17	10
12354	1054	5	0	0	0	0	8	8	8	8
12355	1054	6	0	0	0	0	8	8	8	8
12356	1054	7	0	0	0	0	8	8	8	8
12357	1054	8	0	0	0	0	8	8	8	8
12358	1054	9	0	0	0	0	8	8	8	8
12359	1054	10	0	0	0	0	8	8	8	8
12360	1054	11	0	0	0	0	8	8	8	8
12361	1055	0	7	9	16	2	35	34	11	\N
12362	1055	1	7	9	15	2	35	34	\N	\N
12363	1055	2	6	8	15	1	35	34	\N	\N
12364	1055	3	6	7	14	1	35	39	\N	\N
12365	1055	4	5	6	13	1	35	39	\N	\N
12366	1055	5	4	0	12	0	\N	\N	17	10
12367	1055	6	0	0	0	0	8	8	8	8
12368	1055	7	0	0	0	0	8	8	8	8
12369	1055	8	0	0	0	0	8	8	8	8
12370	1055	9	0	0	0	0	8	8	8	8
12371	1055	10	0	0	0	0	8	8	8	8
12372	1055	11	0	0	0	0	8	8	8	8
12373	1056	0	8	9	15	3	\N	\N	2	3
12374	1056	1	7	8	15	2	\N	\N	2	3
12375	1056	2	6	7	14	2	\N	\N	\N	3
12376	1056	3	5	7	13	2	\N	\N	\N	\N
12377	1056	4	7	9	12	3	\N	\N	\N	4
12378	1056	5	3	0	11	0	\N	\N	\N	10
12379	1056	6	0	0	0	0	8	8	8	8
12380	1056	7	0	0	0	0	8	8	8	8
12381	1056	8	0	0	0	0	8	8	8	8
12382	1056	9	0	0	0	0	8	8	8	8
12383	1056	10	0	0	0	0	8	8	8	8
12384	1056	11	0	0	0	0	8	8	8	8
12385	1057	0	8	9	15	3	\N	\N	2	3
12386	1057	1	8	9	15	3	\N	\N	2	3
12387	1057	2	7	8	14	2	\N	\N	\N	3
12388	1057	3	7	8	14	2	\N	\N	\N	3
12389	1057	4	6	7	13	2	\N	\N	\N	\N
12390	1057	5	7	9	12	3	\N	\N	\N	4
12391	1057	6	3	0	11	0	\N	\N	\N	10
12392	1057	7	0	0	0	0	8	8	8	8
12393	1057	8	0	0	0	0	8	8	8	8
12394	1057	9	0	0	0	0	8	8	8	8
12395	1057	10	0	0	0	0	8	8	8	8
12396	1057	11	0	0	0	0	8	8	8	8
12397	1058	0	8	10	15	3	\N	\N	2	3
12398	1058	1	8	9	15	3	\N	\N	2	3
12399	1058	2	7	9	14	3	\N	\N	2	3
12400	1058	3	7	8	14	2	\N	\N	\N	3
12401	1058	4	6	8	13	2	\N	\N	\N	\N
12402	1058	5	6	7	13	2	\N	\N	\N	\N
12403	1058	6	7	9	12	3	\N	\N	\N	4
12404	1058	7	3	0	11	0	\N	\N	\N	10
12405	1058	8	0	0	0	0	8	8	8	8
12406	1058	9	0	0	0	0	8	8	8	8
12407	1058	10	0	0	0	0	8	8	8	8
12408	1058	11	0	0	0	0	8	8	8	8
12409	1059	0	8	12	17	4	27	36	\N	7
12410	1059	1	8	11	16	3	27	40	\N	7
12411	1059	2	8	11	16	3	27	40	\N	3
12412	1059	3	8	10	16	2	27	40	\N	3
12413	1059	4	7	10	15	2	\N	40	\N	3
12414	1059	5	7	10	15	2	\N	40	\N	3
12415	1059	6	6	9	15	3	\N	\N	\N	3
12416	1059	7	5	8	14	2	\N	\N	\N	3
12417	1059	8	5	7	14	1	\N	\N	\N	3
12418	1059	9	4	6	13	1	\N	\N	\N	\N
12419	1059	10	4	0	12	0	\N	\N	\N	10
12420	1059	11	0	0	0	0	8	8	8	8
12421	1060	0	4	12	16	4	5	18	25	7
12422	1060	1	4	11	16	3	5	18	25	7
12423	1060	2	8	11	15	3	\N	18	25	\N
12424	1060	3	8	10	15	2	\N	12	25	\N
12425	1060	4	7	10	14	2	\N	12	\N	\N
12426	1060	5	7	9	14	2	\N	12	\N	\N
12427	1060	6	6	8	13	2	\N	\N	\N	\N
12428	1060	7	5	7	13	1	\N	\N	\N	\N
12429	1060	8	5	6	12	1	\N	\N	\N	\N
12430	1060	9	4	0	11	0	\N	\N	\N	10
12431	1060	10	0	0	0	0	8	8	8	8
12432	1060	11	0	0	0	0	8	8	8	8
12433	1061	0	4	12	14	4	6	\N	16	28
12434	1061	1	9	11	16	4	\N	\N	37	28
12435	1061	2	8	11	15	3	\N	\N	37	\N
12436	1061	3	7	11	14	3	\N	\N	37	\N
12437	1061	4	7	11	13	3	\N	\N	37	\N
12438	1061	5	6	10	12	3	\N	\N	2	\N
12439	1061	6	6	9	11	2	\N	\N	\N	3
12440	1061	7	5	8	10	1	\N	\N	\N	3
12441	1061	8	5	7	9	1	\N	\N	\N	3
12442	1061	9	4	6	8	1	\N	\N	\N	3
12443	1061	10	4	0	7	0	\N	\N	\N	10
12444	1061	11	0	0	0	0	8	8	8	8
12445	1062	0	12	12	16	3	14	40	37	7
12446	1062	1	11	12	16	3	14	40	\N	\N
12447	1062	2	11	11	15	3	14	40	\N	\N
12448	1062	3	10	11	15	2	\N	40	\N	\N
12449	1062	4	10	11	14	2	\N	40	\N	\N
12450	1062	5	10	10	14	3	\N	36	\N	\N
12451	1062	6	9	9	13	3	\N	36	\N	\N
12452	1062	7	8	8	12	2	\N	36	\N	\N
12453	1062	8	7	7	11	2	\N	\N	\N	\N
12454	1062	9	6	6	10	2	\N	\N	\N	\N
12455	1062	10	5	0	9	0	\N	\N	\N	10
12456	1062	11	0	0	0	0	8	8	8	8
12457	1063	0	8	12	17	4	\N	\N	37	28
12458	1063	1	7	12	16	4	\N	\N	37	28
12459	1063	2	7	11	16	3	\N	\N	37	28
12460	1063	3	6	11	15	3	\N	\N	37	28
12461	1063	4	6	11	15	3	\N	\N	37	\N
12462	1063	5	6	10	15	2	\N	\N	37	\N
12463	1063	6	6	9	14	2	\N	\N	\N	\N
12464	1063	7	7	11	13	4	\N	\N	\N	4
12465	1063	8	4	7	12	1	\N	\N	32	\N
12466	1063	9	4	6	11	1	\N	\N	32	\N
12467	1063	10	4	0	10	0	\N	\N	\N	10
12468	1063	11	0	0	0	0	8	8	8	8
12469	1064	0	10	11	17	3	30	34	11	20
12470	1064	1	9	11	16	3	30	34	11	20
12471	1064	2	9	11	16	2	27	34	\N	20
12472	1064	3	8	10	15	2	27	34	\N	20
12473	1064	4	8	10	15	2	27	\N	\N	20
12474	1064	5	8	10	15	2	35	\N	\N	20
12475	1064	6	7	9	14	2	35	\N	\N	20
12476	1064	7	7	9	13	1	35	\N	\N	\N
12477	1064	8	7	8	12	1	35	\N	\N	\N
12478	1064	9	6	8	11	1	35	\N	\N	\N
12479	1064	10	6	0	10	0	35	\N	\N	10
12480	1064	11	0	0	0	0	8	8	8	8
12481	1065	0	5	11	18	4	6	36	9	\N
12482	1065	1	4	11	17	3	6	36	9	\N
12483	1065	2	10	10	16	3	\N	36	29	\N
12484	1065	3	9	10	15	3	\N	\N	29	\N
12485	1065	4	8	10	15	2	\N	\N	29	\N
12486	1065	5	8	9	15	2	\N	\N	29	\N
12487	1065	6	7	9	14	2	\N	\N	\N	3
12488	1065	7	7	9	13	2	\N	\N	\N	3
12489	1065	8	6	8	12	1	\N	\N	\N	3
12490	1065	9	6	8	11	1	\N	\N	\N	3
12491	1065	10	5	0	10	0	\N	\N	\N	10
12492	1065	11	0	0	0	0	8	8	8	8
12493	1066	0	11	13	18	5	13	39	23	7
12494	1066	1	11	12	18	5	13	39	23	7
12495	1066	2	10	12	17	4	13	39	23	7
12496	1066	3	10	11	16	4	13	39	23	7
12497	1066	4	10	11	16	3	13	\N	23	\N
12498	1066	5	10	11	15	3	13	\N	23	\N
12499	1066	6	9	10	15	2	\N	\N	23	\N
12500	1066	7	9	10	14	2	\N	38	23	\N
12501	1066	8	8	10	14	2	\N	38	\N	\N
12502	1066	9	11	13	13	5	\N	38	\N	4
12503	1066	10	6	0	12	0	\N	\N	\N	10
12504	1066	11	0	0	0	0	8	8	8	8
12505	1067	0	10	13	15	3	\N	40	16	\N
12506	1067	1	10	12	14	3	\N	40	16	\N
12507	1067	2	9	12	16	2	\N	40	37	\N
12508	1067	3	9	11	16	2	\N	40	37	\N
12509	1067	4	9	11	16	4	\N	\N	37	\N
12510	1067	5	9	11	15	3	\N	\N	2	\N
12511	1067	6	8	10	15	3	\N	\N	2	\N
12512	1067	7	8	10	14	2	\N	\N	2	\N
12513	1067	8	10	12	16	2	\N	40	\N	4
12514	1067	9	9	11	15	3	\N	\N	37	4
12515	1067	10	6	0	14	0	\N	\N	\N	10
12516	1067	11	0	0	0	0	8	8	8	8
12517	1068	0	9	12	14	4	\N	39	11	\N
12518	1068	1	9	11	14	3	\N	39	11	\N
12519	1068	2	9	11	16	3	\N	39	\N	\N
12520	1068	3	9	10	16	3	\N	39	\N	\N
12521	1068	4	9	10	15	3	\N	39	\N	\N
12522	1068	5	8	10	15	3	\N	39	\N	\N
12523	1068	6	8	10	15	2	\N	\N	\N	\N
12524	1068	7	7	9	14	2	\N	\N	\N	\N
12525	1068	8	9	12	16	4	\N	\N	11	4
12526	1068	9	8	0	15	0	\N	\N	\N	10
12527	1068	10	0	0	0	0	8	8	8	8
12528	1068	11	0	0	0	0	8	8	8	8
12529	1069	0	9	10	16	3	\N	22	\N	20
12530	1069	1	9	9	16	3	\N	22	\N	20
12531	1069	2	8	9	15	2	\N	22	\N	20
12532	1069	3	7	9	15	2	\N	15	\N	20
12533	1069	4	6	8	14	2	\N	15	\N	20
12534	1069	5	6	8	14	2	\N	15	\N	\N
12535	1069	6	5	7	13	1	\N	15	\N	\N
12536	1069	7	5	6	13	1	\N	\N	\N	\N
12537	1069	8	4	5	12	1	\N	\N	\N	\N
12538	1069	9	4	0	11	0	\N	\N	\N	\N
12539	1069	10	0	0	0	0	8	8	8	8
12540	1069	11	0	0	0	0	8	8	8	8
12541	1070	0	8	9	16	3	\N	39	17	20
12542	1070	1	8	8	16	3	\N	39	17	20
12543	1070	2	8	7	15	2	\N	\N	17	20
12544	1070	3	8	7	15	2	35	\N	\N	20
12545	1070	4	7	6	15	2	35	\N	\N	20
12546	1070	5	7	6	14	2	35	\N	\N	\N
12547	1070	6	6	5	14	1	35	38	\N	26
12548	1070	7	6	5	13	1	35	38	\N	26
12549	1070	8	5	0	12	0	35	\N	\N	10
12550	1070	9	4	0	11	0	\N	\N	\N	10
12551	1070	10	0	0	0	0	8	8	8	8
12552	1070	11	0	0	0	0	8	8	8	8
12553	1071	0	8	11	17	4	35	22	\N	7
12554	1071	1	8	11	16	4	35	22	\N	7
12555	1071	2	8	10	16	3	35	22	\N	7
12556	1071	3	7	10	15	3	35	22	\N	\N
12557	1071	4	7	9	15	3	35	22	\N	\N
12558	1071	5	6	7	14	2	35	22	\N	\N
12559	1071	6	6	6	13	2	35	\N	\N	\N
12560	1071	7	5	4	12	1	\N	\N	\N	\N
12561	1071	8	4	0	11	0	\N	\N	\N	10
12562	1071	9	0	0	0	0	8	8	8	8
12563	1071	10	0	0	0	0	8	8	8	8
12564	1071	11	0	0	0	0	8	8	8	8
12565	1072	0	8	13	16	4	\N	36	37	7
12566	1072	1	7	13	16	4	\N	36	37	7
12567	1072	2	7	12	15	4	\N	36	37	3
12568	1072	3	6	12	15	4	\N	\N	37	3
12569	1072	4	5	11	15	4	\N	\N	\N	3
12570	1072	5	5	10	14	3	\N	\N	\N	3
12571	1072	6	5	10	14	3	\N	\N	32	3
12572	1072	7	5	9	14	3	\N	\N	32	3
12573	1072	8	5	8	13	3	\N	\N	32	3
12574	1072	9	4	10	12	5	\N	36	\N	4
12575	1072	10	4	7	11	2	\N	\N	\N	\N
12576	1072	11	0	0	0	0	8	8	8	8
12577	1073	0	8	12	18	3	24	\N	17	7
12578	1073	1	7	11	18	3	24	\N	17	26
12579	1073	2	7	11	17	2	24	\N	17	26
12580	1073	3	6	10	16	2	35	\N	\N	26
12581	1073	4	6	9	16	2	35	\N	\N	26
12582	1073	5	5	9	15	2	35	\N	\N	\N
12583	1073	6	5	8	15	2	35	\N	\N	\N
12584	1073	7	4	8	14	2	\N	\N	32	\N
12585	1073	8	4	7	14	1	\N	\N	\N	\N
12586	1073	9	4	5	13	1	\N	\N	\N	\N
12587	1073	10	0	0	0	0	8	8	8	8
12588	1073	11	0	0	0	0	8	8	8	8
12589	1074	0	8	13	18	4	13	34	2	7
12590	1074	1	8	13	17	4	13	34	2	7
12591	1074	2	7	12	16	4	13	38	2	7
12592	1074	3	7	11	16	3	\N	38	2	7
12593	1074	4	7	11	15	3	\N	38	\N	3
12594	1074	5	7	10	14	2	\N	38	\N	3
12595	1074	6	6	9	13	2	\N	\N	\N	3
12596	1074	7	6	8	12	2	\N	\N	\N	3
12597	1074	8	5	6	11	2	\N	\N	\N	\N
12598	1074	9	0	0	0	0	8	8	8	8
12599	1074	10	0	0	0	0	8	8	8	8
12600	1074	11	0	0	0	0	8	8	8	8
12601	1075	0	8	13	19	5	14	36	23	7
12602	1075	1	8	12	18	5	14	36	23	7
12603	1075	2	6	12	18	5	\N	36	23	7
12604	1075	3	6	11	17	4	\N	\N	23	3
12605	1075	4	6	11	17	4	\N	\N	23	3
12606	1075	5	6	11	16	3	\N	\N	23	3
12607	1075	6	5	10	16	3	\N	\N	23	3
12608	1075	7	5	9	15	3	\N	\N	23	3
12609	1075	8	5	9	14	5	\N	\N	\N	4
12610	1075	9	3	7	13	2	\N	\N	\N	\N
12611	1075	10	0	0	0	0	8	8	8	8
12612	1075	11	0	0	0	0	8	8	8	8
12613	1076	0	10	11	17	3	27	\N	25	28
12614	1076	1	9	10	17	3	27	\N	25	28
12615	1076	2	9	10	16	3	27	\N	25	28
12616	1076	3	8	10	16	3	27	\N	\N	28
12617	1076	4	8	9	15	3	27	\N	\N	\N
12618	1076	5	7	9	15	3	27	\N	\N	\N
12619	1076	6	6	8	14	3	\N	\N	\N	7
12620	1076	7	5	6	13	3	\N	\N	\N	7
12621	1076	8	5	0	12	0	\N	\N	\N	10
12622	1076	9	0	0	0	0	8	8	8	8
12623	1076	10	0	0	0	0	8	8	8	8
12624	1076	11	0	0	0	0	8	8	8	8
12625	1077	0	10	12	18	4	14	\N	25	7
12626	1077	1	10	11	17	4	14	\N	25	7
12627	1077	2	8	11	16	3	14	\N	25	7
12628	1077	3	7	10	16	3	\N	\N	25	7
12629	1077	4	6	9	15	3	\N	\N	25	7
12630	1077	5	6	8	14	3	\N	\N	\N	\N
12631	1077	6	5	6	13	2	\N	\N	\N	\N
12632	1077	7	4	6	12	2	\N	\N	\N	\N
12633	1077	8	4	5	11	1	\N	\N	\N	\N
12634	1077	9	0	0	0	0	8	8	8	8
12635	1077	10	0	0	0	0	8	8	8	8
12636	1077	11	0	0	0	0	8	8	8	8
12637	1078	0	10	10	16	4	14	18	2	7
12638	1078	1	10	10	16	3	14	18	2	7
12639	1078	2	9	9	15	3	\N	22	2	26
12640	1078	3	8	9	15	3	\N	22	2	26
12641	1078	4	7	8	15	3	\N	22	2	20
12642	1078	5	6	7	15	2	\N	22	\N	20
12643	1078	6	5	9	13	3	\N	\N	\N	4
12644	1078	7	4	8	12	1	5	33	25	\N
12645	1078	8	0	0	0	0	8	8	8	8
12646	1078	9	0	0	0	0	8	8	8	8
12647	1078	10	0	0	0	0	8	8	8	8
12648	1078	11	0	0	0	0	8	8	8	8
12649	1079	0	12	10	19	3	31	39	29	3
12650	1079	1	12	10	18	3	31	39	29	3
12651	1079	2	12	9	18	2	31	39	29	3
12652	1079	3	12	9	17	2	\N	39	29	3
12653	1079	4	10	8	16	2	\N	39	29	3
12654	1079	5	8	8	15	2	\N	\N	29	3
12655	1079	6	6	7	14	2	\N	\N	\N	\N
12656	1079	7	10	9	13	4	31	39	29	4
12657	1079	8	0	0	0	0	8	8	8	8
12658	1079	9	0	0	0	0	8	8	8	8
12659	1079	10	0	0	0	0	8	8	8	8
12660	1079	11	0	0	0	0	8	8	8	8
12661	1080	0	12	12	17	2	14	\N	37	3
12662	1080	1	10	11	16	2	13	\N	37	3
12663	1080	2	10	11	15	2	13	\N	37	3
12664	1080	3	10	10	15	2	13	\N	\N	\N
12665	1080	4	8	9	15	2	\N	\N	\N	\N
12666	1080	5	8	9	14	4	\N	\N	\N	4
12667	1080	6	0	0	0	0	8	8	8	8
12668	1080	7	0	0	0	0	8	8	8	8
12669	1080	8	0	0	0	0	8	8	8	8
12670	1080	9	0	0	0	0	8	8	8	8
12671	1080	10	0	0	0	0	8	8	8	8
12672	1080	11	0	0	0	0	8	8	8	8
12673	1081	0	10	12	17	2	13	40	37	3
12674	1081	1	10	11	17	2	13	40	37	3
12675	1081	2	9	11	16	2	13	40	37	3
12676	1081	3	9	10	16	2	13	40	\N	3
12677	1081	4	8	9	15	2	13	40	\N	\N
12678	1081	5	8	9	14	4	\N	\N	\N	4
12679	1081	6	4	5	13	1	\N	\N	\N	\N
12680	1081	7	0	0	0	0	8	8	8	8
12681	1081	8	0	0	0	0	8	8	8	8
12682	1081	9	0	0	0	0	8	8	8	8
12683	1081	10	0	0	0	0	8	8	8	8
12684	1081	11	0	0	0	0	8	8	8	8
12685	1082	0	8	11	19	3	13	22	9	20
12686	1082	1	8	10	18	3	13	22	9	20
12687	1082	2	7	10	18	3	13	15	9	20
12688	1082	3	7	9	17	3	13	15	\N	20
12689	1082	4	7	9	17	2	13	15	\N	20
12690	1082	5	6	9	16	2	13	15	\N	20
12691	1082	6	6	8	15	2	\N	15	\N	20
12692	1082	7	4	7	14	2	\N	15	\N	\N
12693	1082	8	4	5	13	2	\N	\N	\N	\N
12694	1082	9	0	0	0	0	8	8	8	8
12695	1082	10	0	0	0	0	8	8	8	8
12696	1082	11	0	0	0	0	8	8	8	8
12697	1083	0	8	12	18	4	13	12	23	7
12698	1083	1	8	11	17	3	13	12	23	7
12699	1083	2	7	10	17	3	13	12	23	3
12700	1083	3	7	9	16	3	13	12	23	\N
12701	1083	4	7	9	15	2	13	12	23	\N
12702	1083	5	6	9	15	2	\N	12	23	\N
12703	1083	6	6	8	14	2	\N	12	23	\N
12704	1083	7	4	8	13	2	\N	\N	23	\N
12705	1083	8	4	7	12	2	\N	\N	23	\N
12706	1083	9	0	0	0	0	8	8	8	8
12707	1083	10	0	0	0	0	8	8	8	8
12708	1083	11	0	0	0	0	8	8	8	8
12709	1084	0	8	14	19	5	13	\N	23	21
12710	1084	1	8	13	19	5	13	\N	23	21
12711	1084	2	8	13	18	4	13	\N	23	21
12712	1084	3	7	13	18	4	13	\N	23	21
12713	1084	4	7	12	17	4	13	\N	23	7
12714	1084	5	7	11	16	4	13	\N	23	7
12715	1084	6	6	10	16	3	\N	\N	23	7
12716	1084	7	6	9	16	3	\N	\N	23	\N
12717	1084	8	6	8	15	2	\N	\N	23	\N
12718	1084	9	4	8	14	2	\N	\N	23	\N
12719	1084	10	4	7	13	2	\N	\N	23	\N
12720	1084	11	0	0	0	0	8	8	8	8
\.


--
-- Data for Name: factions; Type: TABLE DATA; Schema: public; Owner: mageknight_user
--

COPY public.factions (id, name) FROM stdin;
1	Atlantis Guild
2	Black Powder Rebels
3	Draconum
4	Elemental League
5	Heroes
6	Knights Immortal
7	Mage Spawn
8	Necropolis Sect
9	Orc Raiders
10	Shyft
11	Solonavi
12	Unknown
\.


--
-- Data for Name: miniature_factions; Type: TABLE DATA; Schema: public; Owner: mageknight_user
--

COPY public.miniature_factions (miniature_id, faction_id) FROM stdin;
1	7
2	7
3	7
4	7
5	7
6	7
7	7
8	7
9	7
10	7
11	7
12	7
13	7
14	7
15	7
16	7
17	7
18	7
19	7
20	7
21	7
22	7
23	7
24	7
25	7
26	7
27	7
28	7
29	7
30	7
31	7
32	7
33	7
34	7
35	7
36	7
37	7
38	7
39	7
40	7
41	7
42	7
43	7
44	7
45	7
46	7
47	7
48	7
49	7
50	7
51	7
52	7
53	7
54	7
55	7
56	7
57	7
58	7
59	7
60	7
61	7
62	7
63	7
64	7
65	7
66	7
67	7
68	7
69	5
70	5
71	5
72	5
73	5
74	5
75	5
76	5
77	5
78	5
79	5
80	5
81	5
82	5
83	5
84	5
85	5
86	5
87	5
88	5
89	5
90	5
91	5
92	5
93	5
94	5
95	5
96	5
97	5
98	5
99	5
100	5
101	7
102	7
103	7
104	7
105	7
106	7
107	7
108	7
109	7
110	7
111	7
112	7
113	7
114	7
115	7
116	7
117	7
118	7
119	7
120	7
121	1
122	1
123	1
124	1
125	1
126	1
127	4
128	4
129	4
130	4
131	4
132	4
133	8
134	8
135	8
136	8
137	8
138	8
139	2
140	2
141	2
142	2
143	2
144	2
145	7
146	7
147	7
148	7
149	7
150	7
151	1
152	1
153	1
154	4
155	4
156	4
157	8
158	8
159	8
160	2
161	2
162	2
163	4
164	4
165	4
166	9
167	9
168	9
169	7
170	7
171	7
172	7
173	7
174	7
175	7
176	7
177	7
178	11
179	11
180	11
181	1
182	1
183	1
184	4
185	4
186	7
187	8
188	8
189	8
190	2
191	2
192	2
193	6
194	6
195	6
196	9
197	9
198	9
199	7
200	7
201	7
202	7
203	7
204	7
205	7
206	7
207	7
208	11
209	11
210	11
211	1
212	4
213	8
214	2
215	6
216	9
217	3
217	6
218	1
218	3
219	3
219	8
220	2
220	3
221	1
222	4
223	8
224	2
225	4
226	9
227	7
228	7
229	7
230	11
231	1
232	4
233	8
234	2
235	6
236	9
237	7
238	7
239	7
240	11
241	1
242	1
243	1
244	1
245	1
246	1
247	4
248	4
249	4
250	4
251	4
252	4
253	8
254	8
255	8
256	8
257	8
258	8
259	2
260	2
261	2
262	2
263	2
264	2
265	6
266	6
267	6
268	6
269	6
270	6
271	6
272	6
273	6
274	6
275	6
276	6
277	9
278	9
279	9
280	9
281	9
282	9
283	9
284	9
285	9
286	9
287	9
288	9
289	1
290	1
291	1
292	4
293	4
294	4
295	8
296	8
297	8
298	2
299	2
300	2
301	6
302	6
303	6
304	6
305	6
306	6
307	6
308	6
309	6
310	9
311	9
312	9
313	9
314	9
315	9
316	9
317	9
318	9
319	7
320	7
321	7
322	3
323	3
324	3
325	1
326	1
327	1
328	1
329	1
330	1
331	1
332	1
333	1
334	1
335	1
336	1
337	8
338	8
339	8
340	8
341	8
342	8
343	8
344	8
345	8
346	8
347	8
348	8
349	6
350	6
351	6
352	6
353	6
354	6
355	6
356	6
357	6
358	6
359	6
360	6
361	9
362	9
363	9
364	9
365	9
366	9
367	9
368	9
369	9
370	9
371	9
372	9
373	1
374	1
375	8
376	8
377	6
378	6
379	6
380	9
381	7
382	3
383	1
384	1
385	4
386	4
387	8
388	8
389	2
390	2
391	6
392	6
393	6
394	6
395	9
396	9
397	9
398	9
399	1
400	1
401	1
402	1
403	8
404	8
405	8
406	8
407	6
408	6
409	6
410	6
411	9
412	9
413	9
414	9
415	7
416	7
417	7
418	7
419	7
420	7
421	7
422	7
423	7
424	7
425	7
426	7
427	7
428	7
429	7
430	7
431	7
432	7
433	7
434	7
435	7
436	7
437	7
438	7
439	7
440	7
441	7
442	7
443	7
444	7
445	7
446	7
447	7
448	7
449	7
450	7
451	7
452	7
453	7
454	7
455	7
456	7
457	7
458	7
459	7
460	7
461	7
462	7
463	7
464	7
465	7
466	7
467	7
468	7
469	7
470	7
471	7
472	7
473	7
474	7
475	7
476	7
477	7
478	7
479	7
480	7
481	5
481	8
482	5
482	8
483	5
483	8
484	5
484	8
485	5
485	11
486	5
486	11
487	5
487	11
488	5
488	11
489	1
489	5
490	1
490	5
491	1
491	5
492	1
492	5
493	2
493	5
494	2
494	5
495	2
495	5
496	2
496	5
497	5
497	9
498	5
498	9
499	5
499	9
500	5
500	9
501	5
501	6
502	5
502	6
503	5
503	6
504	5
504	6
505	1
506	1
507	1
508	1
509	1
510	1
511	4
512	4
513	4
514	4
515	4
516	4
517	8
518	8
519	8
520	7
521	7
522	7
523	2
524	2
525	2
526	2
527	2
528	2
529	6
530	6
531	6
532	9
533	9
534	9
535	1
536	1
537	1
538	1
539	1
540	1
541	4
542	4
543	4
544	4
545	4
546	4
547	8
548	8
549	8
550	8
551	8
552	8
553	2
554	2
555	2
556	2
557	2
558	2
559	6
560	6
561	6
562	9
563	9
564	9
565	1
565	4
566	1
566	4
567	1
567	4
568	1
568	4
569	1
569	4
570	1
570	4
571	4
571	8
572	4
572	8
573	4
573	8
574	4
574	8
575	4
575	8
576	4
576	8
577	2
577	8
578	2
578	8
579	2
579	8
580	2
580	8
581	2
581	8
582	2
582	8
583	1
583	2
584	1
584	2
585	1
585	2
586	1
586	2
587	1
587	2
588	1
588	2
589	7
590	7
591	7
592	7
593	7
594	7
595	1
596	4
597	8
598	2
599	7
600	11
601	11
602	11
603	11
604	11
605	1
605	5
606	4
606	5
607	5
607	8
608	5
608	8
609	2
609	5
610	5
610	6
611	1
612	4
613	2
614	9
615	1
615	4
616	1
616	4
617	4
617	8
618	4
618	8
619	2
619	8
620	2
620	8
621	1
621	2
622	1
622	2
623	7
624	7
625	1
626	1
627	1
628	1
629	1
630	1
631	1
632	1
633	1
634	1
635	1
636	1
637	4
638	4
639	4
640	4
641	4
642	4
643	4
644	4
645	4
646	4
647	4
648	4
649	8
650	8
651	8
652	8
653	8
654	8
655	8
656	8
657	8
658	8
659	8
660	8
661	2
662	2
663	2
664	2
665	2
666	2
667	2
668	2
669	2
670	2
671	2
672	2
673	1
674	1
675	1
676	1
677	1
678	1
679	1
680	1
681	1
682	1
683	1
684	1
685	4
686	4
687	4
688	4
689	4
690	4
691	4
692	4
693	4
694	4
695	4
696	4
697	8
698	8
699	8
700	8
701	8
702	8
703	8
704	8
705	8
706	8
707	8
708	8
709	2
710	2
711	2
712	2
713	2
714	2
715	2
716	2
717	2
718	2
719	2
720	2
721	6
722	6
723	6
724	6
725	6
726	6
727	6
728	6
729	6
730	6
731	6
732	6
733	9
734	9
735	9
736	9
737	9
738	9
739	9
740	9
741	9
742	9
743	9
744	9
745	7
746	7
747	7
748	7
749	7
750	7
751	7
752	7
753	7
754	7
755	7
756	7
757	7
758	7
759	7
760	7
761	7
762	7
763	7
764	7
765	7
766	7
767	7
768	7
769	1
770	1
771	4
772	4
773	8
774	8
775	2
776	2
777	6
778	9
779	7
780	3
781	3
782	3
783	3
784	3
785	1
786	1
787	1
788	1
789	4
790	4
791	4
792	4
793	8
794	8
795	8
796	8
797	2
798	2
799	2
800	2
801	1
802	1
803	1
804	1
805	1
806	1
807	4
808	4
809	4
810	4
811	4
812	4
813	8
814	8
815	8
816	8
817	8
818	8
819	2
820	2
821	2
822	2
823	2
824	2
825	6
826	6
827	6
828	6
829	6
830	6
831	9
832	9
833	9
834	9
835	9
836	9
837	7
838	7
839	7
840	7
841	7
842	7
843	10
844	10
845	10
846	10
847	10
848	10
849	1
850	1
851	1
852	4
853	4
854	4
855	8
856	8
857	8
858	2
859	2
860	2
861	6
862	6
863	6
864	9
865	9
866	9
867	7
868	7
869	7
870	7
871	7
872	7
873	7
874	7
875	7
876	10
877	10
878	10
879	10
880	10
881	10
882	3
883	3
884	3
885	4
886	4
887	4
888	4
889	4
890	4
891	4
892	4
893	4
894	4
895	4
896	4
897	2
898	2
899	2
900	2
901	2
902	2
903	2
904	2
905	2
906	2
907	2
908	2
909	7
910	7
911	7
912	7
913	7
914	7
915	7
916	7
917	7
918	7
919	7
920	7
921	10
922	10
923	10
924	10
925	10
926	10
927	10
928	10
929	10
930	10
931	10
932	10
933	4
934	4
935	2
936	2
937	9
938	9
939	7
940	10
941	10
942	3
943	1
944	1
945	4
946	4
947	8
948	8
949	2
950	2
951	6
952	6
953	9
954	9
955	7
956	7
957	10
958	10
959	4
960	4
961	4
962	4
963	2
964	2
965	2
966	2
967	7
968	7
969	7
970	7
971	10
972	10
973	10
974	10
975	1
976	1
977	1
978	4
979	4
980	4
981	2
982	2
983	2
984	3
985	3
986	3
987	3
988	3
989	3
990	6
991	6
992	6
993	7
994	7
995	7
996	7
997	7
998	7
999	9
1000	9
1001	9
1002	9
1003	9
1004	9
1005	9
1006	9
1007	9
1008	10
1009	10
1010	10
1011	1
1012	1
1013	1
1014	2
1015	2
1016	2
1017	6
1018	6
1019	6
1020	6
1021	6
1022	6
1023	8
1024	8
1025	8
1026	9
1027	9
1028	9
1029	9
1030	9
1031	9
1032	11
1033	11
1034	11
1035	1
1035	6
1036	1
1036	6
1037	1
1037	6
1038	1
1038	6
1039	1
1039	6
1040	1
1040	6
1041	1
1041	6
1042	1
1042	6
1043	1
1043	6
1044	1
1044	6
1045	1
1045	6
1046	1
1046	6
1047	12
1048	12
1049	12
1050	12
1051	12
1052	12
1053	12
1054	12
1055	12
1056	12
1057	12
1058	12
1059	1
1059	5
1060	1
1060	5
1061	2
1061	5
1062	2
1062	5
1063	4
1063	5
1064	5
1064	6
1065	5
1065	6
1066	5
1066	8
1067	5
1067	9
1068	5
1068	9
1069	4
1069	5
1070	5
1070	8
\.


--
-- Name: abilities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mageknight_user
--

SELECT pg_catalog.setval('public.abilities_id_seq', 40, true);


--
-- Name: click_stats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mageknight_user
--

SELECT pg_catalog.setval('public.click_stats_id_seq', 12720, true);


--
-- Name: factions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mageknight_user
--

SELECT pg_catalog.setval('public.factions_id_seq', 12, true);


--
-- Name: miniatures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mageknight_user
--

SELECT pg_catalog.setval('public.miniatures_id_seq', 1084, true);


--
-- PostgreSQL database dump complete
--

\unrestrict IAfMAS0gVO1qy4V5mdckv2VgWxTgS6QulcSkjEHi100QMxlp53D9gL2gvfOCKhh

