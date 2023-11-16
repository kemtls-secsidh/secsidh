#include "steps.h"

int steps_guess(long long *bs,long long *gs,long long l)
{
  /* l=3: bs=0 gs=0 bench=2526614 baseline=2386958 */
  /* l=5: bs=0 gs=0 bench=2946594 baseline=3050000 */
  /* l=7: bs=0 gs=0 bench=3725362 baseline=3844052 */
  /* l=11: bs=0 gs=0 bench=5604948 baseline=5862118 */
  /* l=13: bs=0 gs=0 bench=6476446 baseline=6792242 */
  /* l=17: bs=0 gs=0 bench=8326450 baseline=8600822 */
  /* l=19: bs=0 gs=0 bench=9225850 baseline=9685506 */
  /* l=23: bs=0 gs=0 bench=11881380 baseline=12605822 */
  /* l=29: bs=0 gs=0 bench=14935524 baseline=15521492 */
  /* l=31: bs=0 gs=0 bench=15825616 baseline=16680448 */
  /* l=37: bs=0 gs=0 bench=18359640 baseline=18963730 */
  /* l=41: bs=0 gs=0 bench=20283988 baseline=20883148 */
  /* l=43: bs=0 gs=0 bench=21303902 baseline=22056608 */
  /* l=47: bs=0 gs=0 bench=23550442 baseline=24459344 */
  /* l=53: bs=0 gs=0 bench=26603266 baseline=27360236 */
  /* l=59: bs=0 gs=0 bench=30398364 baseline=31431386 */
  /* l=61: bs=0 gs=0 bench=30749904 baseline=31869018 */
  /* l=67: bs=0 gs=0 bench=34428086 baseline=34677944 */
  /* l=71: bs=0 gs=0 bench=36264348 baseline=36658424 */
  /* l=73: bs=0 gs=0 bench=35481666 baseline=35712116 */
  /* l=79: bs=0 gs=0 bench=38353636 baseline=38922648 */
  /* l=83: bs=0 gs=0 bench=40755538 baseline=40992942 */
  if (l <= 83) { *bs = 0; *gs = 0; return 1; }
  /* l=89: bs=6 gs=3 bench=45512716 baseline=46570730 */
  if (l <= 89) { *bs = 6; *gs = 3; return 1; }
  /* l=97: bs=6 gs=4 bench=46922404 baseline=48562148 */
  /* l=101: bs=6 gs=4 bench=49154054 baseline=51625626 */
  /* l=103: bs=6 gs=4 bench=47023418 baseline=53910648 */
  /* l=107: bs=6 gs=4 bench=48841424 baseline=52348140 */
  /* l=109: bs=6 gs=4 bench=50356882 baseline=53382180 */
  /* l=113: bs=6 gs=4 bench=51084338 baseline=58580928 */
  if (l <= 113) { *bs = 6; *gs = 4; return 1; }
  /* l=127: bs=6 gs=5 bench=55699904 baseline=61730884 */
  /* l=131: bs=6 gs=5 bench=57506358 baseline=63067862 */
  if (l <= 131) { *bs = 6; *gs = 5; return 1; }
  /* l=137: bs=8 gs=4 bench=61439522 baseline=69725072 */
  if (l <= 137) { *bs = 8; *gs = 4; return 1; }
  /* l=139: bs=6 gs=4 bench=62368828 baseline=69352838 */
  if (l <= 139) { *bs = 6; *gs = 4; return 1; }
  /* l=149: bs=6 gs=6 bench=62736266 baseline=77008766 */
  /* l=151: bs=6 gs=6 bench=63818060 baseline=73044652 */
  /* l=157: bs=6 gs=6 bench=66185078 baseline=75941394 */
  if (l <= 157) { *bs = 6; *gs = 6; return 1; }
  /* l=163: bs=6 gs=5 bench=71387138 baseline=78626208 */
  if (l <= 163) { *bs = 6; *gs = 5; return 1; }
  /* l=167: bs=8 gs=5 bench=69978576 baseline=82456860 */
  /* l=173: bs=8 gs=5 bench=71712322 baseline=86489416 */
  /* l=179: bs=8 gs=5 bench=72338230 baseline=88111218 */
  /* l=181: bs=8 gs=5 bench=75585366 baseline=87882564 */
  /* l=191: bs=8 gs=5 bench=82612176 baseline=94713640 */
  if (l <= 191) { *bs = 8; *gs = 5; return 1; }
  /* l=193: bs=8 gs=6 bench=73360770 baseline=97629892 */
  /* l=197: bs=8 gs=6 bench=74716806 baseline=94747822 */
  /* l=199: bs=8 gs=6 bench=75699144 baseline=94280684 */
  /* l=211: bs=8 gs=6 bench=86001016 baseline=101583214 */
  /* l=223: bs=8 gs=6 bench=90125082 baseline=114807090 */
  if (l <= 223) { *bs = 8; *gs = 6; return 1; }
  /* l=227: bs=6 gs=6 bench=96734162 baseline=108231246 */
  if (l <= 227) { *bs = 6; *gs = 6; return 1; }
  /* l=229: bs=8 gs=7 bench=92659490 baseline=142420542 */
  /* l=233: bs=8 gs=7 bench=94228590 baseline=163338640 */
  /* l=239: bs=8 gs=7 bench=90083384 baseline=122630724 */
  if (l <= 239) { *bs = 8; *gs = 7; return 1; }
  /* l=241: bs=10 gs=6 bench=92022510 baseline=120048264 */
  /* l=251: bs=10 gs=6 bench=96996308 baseline=125818116 */
  if (l <= 251) { *bs = 10; *gs = 6; return 1; }
  /* l=257: bs=8 gs=8 bench=94881952 baseline=128779550 */
  if (l <= 257) { *bs = 8; *gs = 8; return 1; }
  /* l=263: bs=10 gs=6 bench=101331492 baseline=206279136 */
  /* l=269: bs=10 gs=6 bench=106579778 baseline=136406602 */
  if (l <= 269) { *bs = 10; *gs = 6; return 1; }
  /* l=271: bs=8 gs=8 bench=106324206 baseline=134158804 */
  /* l=277: bs=8 gs=8 bench=108457606 baseline=138558928 */
  if (l <= 277) { *bs = 8; *gs = 8; return 1; }
  /* l=281: bs=10 gs=7 bench=107929156 baseline=141774222 */
  if (l <= 281) { *bs = 10; *gs = 7; return 1; }
  /* l=283: bs=8 gs=8 bench=104715284 baseline=144816272 */
  if (l <= 283) { *bs = 8; *gs = 8; return 1; }
  /* l=293: bs=12 gs=6 bench=109491272 baseline=146063726 */
  if (l <= 293) { *bs = 12; *gs = 6; return 1; }
  /* l=307: bs=8 gs=9 bench=120527354 baseline=153868016 */
  if (l <= 307) { *bs = 8; *gs = 9; return 1; }
  /* l=311: bs=12 gs=6 bench=118739586 baseline=193138578 */
  /* l=313: bs=12 gs=6 bench=117519170 baseline=156890740 */
  /* l=317: bs=12 gs=6 bench=118200244 baseline=156828390 */
  if (l <= 317) { *bs = 12; *gs = 6; return 1; }
  /* l=331: bs=10 gs=8 bench=116867450 baseline=161705862 */
  if (l <= 331) { *bs = 10; *gs = 8; return 1; }
  /* l=337: bs=14 gs=6 bench=117478288 baseline=164991634 */
  /* l=347: bs=14 gs=6 bench=121891290 baseline=169934410 */
  /* l=349: bs=14 gs=6 bench=122897964 baseline=171006020 */
  /* l=353: bs=14 gs=6 bench=124990806 baseline=172565332 */
  /* l=359: bs=14 gs=6 bench=127827156 baseline=175929320 */
  if (l <= 359) { *bs = 14; *gs = 6; return 1; }
  /* l=367: bs=10 gs=9 bench=127371610 baseline=179766782 */
  /* l=373: bs=10 gs=9 bench=130590574 baseline=182757516 */
  /* l=379: bs=10 gs=9 bench=133418098 baseline=186277754 */
  /* l=383: bs=10 gs=9 bench=134887758 baseline=188152212 */
  if (l <= 383) { *bs = 10; *gs = 9; return 1; }
  /* l=389: bs=12 gs=8 bench=129282822 baseline=190627918 */
  if (l <= 389) { *bs = 12; *gs = 8; return 1; }
  /* l=397: bs=14 gs=7 bench=128581160 baseline=194562566 */
  /* l=401: bs=14 gs=7 bench=130880770 baseline=196260656 */
  /* l=409: bs=14 gs=7 bench=134489130 baseline=200107520 */
  /* l=419: bs=14 gs=7 bench=137632562 baseline=202119288 */
  /* l=421: bs=14 gs=7 bench=137956162 baseline=203370560 */
  /* l=431: bs=14 gs=7 bench=142741212 baseline=208777780 */
  if (l <= 431) { *bs = 14; *gs = 7; return 1; }
  /* l=433: bs=12 gs=9 bench=138825948 baseline=208994134 */
  /* l=439: bs=12 gs=9 bench=142200984 baseline=214352570 */
  /* l=443: bs=12 gs=9 bench=144707884 baseline=216489622 */
  if (l <= 443) { *bs = 12; *gs = 9; return 1; }
  /* l=449: bs=14 gs=8 bench=137006346 baseline=219030304 */
  /* l=457: bs=14 gs=8 bench=140092434 baseline=222724642 */
  /* l=461: bs=14 gs=8 bench=142059764 baseline=224962942 */
  /* l=463: bs=14 gs=8 bench=142955774 baseline=226316912 */
  /* l=467: bs=14 gs=8 bench=145033428 baseline=227478432 */
  /* l=479: bs=14 gs=8 bench=150496508 baseline=233478856 */
  if (l <= 479) { *bs = 14; *gs = 8; return 1; }
  /* l=487: bs=12 gs=10 bench=153408978 baseline=237945558 */
  /* l=491: bs=12 gs=10 bench=155579750 baseline=239460276 */
  /* l=499: bs=12 gs=10 bench=159455204 baseline=243127398 */
  /* l=503: bs=12 gs=10 bench=161644034 baseline=245630834 */
  if (l <= 503) { *bs = 12; *gs = 10; return 1; }
  /* l=521: bs=14 gs=9 bench=157036012 baseline=253693392 */
  /* l=523: bs=14 gs=9 bench=157933540 baseline=254731078 */
  /* l=541: bs=14 gs=9 bench=165845948 baseline=263285406 */
  /* l=547: bs=14 gs=9 bench=169381230 baseline=266314490 */
  /* l=557: bs=14 gs=9 bench=174221646 baseline=272083218 */
  if (l <= 557) { *bs = 14; *gs = 9; return 1; }
  /* l=563: bs=14 gs=10 bench=161704176 baseline=274615604 */
  /* l=569: bs=14 gs=10 bench=164425030 baseline=277776784 */
  /* l=571: bs=14 gs=10 bench=165817920 baseline=278955674 */
  /* l=577: bs=14 gs=10 bench=168665388 baseline=281755554 */
  /* l=587: bs=14 gs=10 bench=173489148 baseline=286869906 */
  /* l=593: bs=14 gs=10 bench=176108522 baseline=289475466 */
  /* l=599: bs=14 gs=10 bench=179008732 baseline=292705920 */
  /* l=601: bs=14 gs=10 bench=179851108 baseline=293916286 */
  /* l=607: bs=14 gs=10 bench=182811780 baseline=296824090 */
  /* l=613: bs=14 gs=10 bench=185881882 baseline=299922796 */
  if (l <= 613) { *bs = 14; *gs = 10; return 1; }
  /* l=617: bs=14 gs=11 bench=174351756 baseline=301590642 */
  /* l=619: bs=14 gs=11 bench=174968622 baseline=303095574 */
  /* l=631: bs=14 gs=11 bench=180498426 baseline=308701900 */
  if (l <= 631) { *bs = 14; *gs = 11; return 1; }
  /* l=641: bs=16 gs=10 bench=181412300 baseline=313595094 */
  /* l=643: bs=16 gs=10 bench=182769866 baseline=314646810 */
  /* l=647: bs=16 gs=10 bench=184620718 baseline=318459660 */
  /* l=653: bs=16 gs=10 bench=187465208 baseline=320726856 */
  /* l=659: bs=16 gs=10 bench=186498160 baseline=323894044 */
  /* l=661: bs=16 gs=10 bench=187438166 baseline=317854686 */
  if (l <= 661) { *bs = 16; *gs = 10; return 1; }
  /* l=673: bs=14 gs=12 bench=181494168 baseline=323927258 */
  /* l=677: bs=14 gs=12 bench=182621544 baseline=325443082 */
  /* l=683: bs=14 gs=12 bench=186062028 baseline=329121614 */
  /* l=691: bs=14 gs=12 bench=189606088 baseline=332839158 */
  /* l=701: bs=14 gs=12 bench=194130824 baseline=338103404 */
  if (l <= 701) { *bs = 14; *gs = 12; return 1; }
  /* l=709: bs=16 gs=11 bench=192517768 baseline=341724768 */
  /* l=719: bs=16 gs=11 bench=197503418 baseline=346697716 */
  /* l=727: bs=16 gs=11 bench=201328750 baseline=350488142 */
  if (l <= 727) { *bs = 16; *gs = 11; return 1; }
  /* l=733: bs=14 gs=13 bench=202165012 baseline=353367186 */
  /* l=739: bs=14 gs=13 bench=198192638 baseline=359290898 */
  /* l=743: bs=14 gs=13 bench=211215288 baseline=352697758 */
  /* l=751: bs=14 gs=13 bench=206191172 baseline=371828452 */
  if (l <= 751) { *bs = 14; *gs = 13; return 1; }
  /* l=757: bs=16 gs=11 bench=216979708 baseline=358264614 */
  if (l <= 757) { *bs = 16; *gs = 11; return 1; }
  /* l=761: bs=14 gs=13 bench=208460800 baseline=370048030 */
  if (l <= 761) { *bs = 14; *gs = 13; return 1; }
  /* l=769: bs=16 gs=12 bench=196556178 baseline=548187028 */
  if (l <= 769) { *bs = 16; *gs = 12; return 1; }
  /* l=773: bs=18 gs=10 bench=240946452 baseline=384387250 */
  if (l <= 773) { *bs = 18; *gs = 10; return 1; }
  /* l=787: bs=16 gs=12 bench=211827770 baseline=400234000 */
  /* l=797: bs=16 gs=12 bench=217307516 baseline=387858398 */
  /* l=809: bs=16 gs=12 bench=223258350 baseline=394289790 */
  /* l=811: bs=16 gs=12 bench=223925698 baseline=395976588 */
  /* l=821: bs=16 gs=12 bench=228667922 baseline=401396096 */
  /* l=823: bs=16 gs=12 bench=230227454 baseline=402934968 */
  /* l=827: bs=16 gs=12 bench=231950290 baseline=404462096 */
  /* l=829: bs=16 gs=12 bench=233191274 baseline=404814798 */
  if (l <= 829) { *bs = 16; *gs = 12; return 1; }
  /* l=839: bs=16 gs=13 bench=224777022 baseline=410207914 */
  /* l=853: bs=16 gs=13 bench=232079688 baseline=417904678 */
  /* l=857: bs=16 gs=13 bench=233719218 baseline=420202080 */
  /* l=859: bs=16 gs=13 bench=234630692 baseline=421602594 */
  /* l=863: bs=16 gs=13 bench=236620408 baseline=423795538 */
  if (l <= 863) { *bs = 16; *gs = 13; return 1; }
  /* l=877: bs=18 gs=12 bench=237663904 baseline=429825282 */
  /* l=881: bs=18 gs=12 bench=239780220 baseline=432383932 */
  /* l=883: bs=18 gs=12 bench=240576184 baseline=433602354 */
  /* l=887: bs=18 gs=12 bench=242675654 baseline=435603680 */
  if (l <= 887) { *bs = 18; *gs = 12; return 1; }
  /* l=907: bs=16 gs=14 bench=241757104 baseline=444419826 */
  /* l=911: bs=16 gs=14 bench=243822448 baseline=446843868 */
  /* l=919: bs=16 gs=14 bench=247419554 baseline=451046116 */
  /* l=929: bs=16 gs=14 bench=251938312 baseline=455132468 */
  if (l <= 929) { *bs = 16; *gs = 14; return 1; }
  /* l=937: bs=18 gs=13 bench=249598330 baseline=459582548 */
  /* l=941: bs=18 gs=13 bench=251311436 baseline=461075280 */
  /* l=947: bs=18 gs=13 bench=254412148 baseline=464115494 */
  /* l=953: bs=18 gs=13 bench=257188552 baseline=467951984 */
  if (l <= 953) { *bs = 18; *gs = 13; return 1; }
  /* l=967: bs=20 gs=12 bench=258742308 baseline=473390628 */
  /* l=971: bs=20 gs=12 bench=261069938 baseline=475597332 */
  /* l=977: bs=20 gs=12 bench=263855116 baseline=478674392 */
  /* l=983: bs=20 gs=12 bench=266941882 baseline=481666568 */
  /* l=991: bs=20 gs=12 bench=270700264 baseline=486266044 */
  /* l=997: bs=20 gs=12 bench=270849314 baseline=489204328 */
  if (l <= 997) { *bs = 20; *gs = 12; return 1; }
  /* l=1009: bs=18 gs=14 bench=261857088 baseline=490999534 */
  /* l=1013: bs=18 gs=14 bench=265816130 baseline=496023894 */
  /* l=1019: bs=18 gs=14 bench=269086722 baseline=500068022 */
  /* l=1021: bs=18 gs=14 bench=269742650 baseline=501428256 */
  if (l <= 1021) { *bs = 18; *gs = 14; return 1; }
  /* l=1031: bs=16 gs=16 bench=273296784 baseline=505396168 */
  /* l=1033: bs=16 gs=16 bench=274407156 baseline=506277696 */
  /* l=1039: bs=16 gs=16 bench=277517928 baseline=509835276 */
  if (l <= 1039) { *bs = 16; *gs = 16; return 1; }
  /* l=1049: bs=20 gs=13 bench=278512314 baseline=514258558 */
  /* l=1051: bs=20 gs=13 bench=279675196 baseline=516550962 */
  if (l <= 1051) { *bs = 20; *gs = 13; return 1; }
  /* l=1061: bs=22 gs=12 bench=277803744 baseline=520019414 */
  /* l=1063: bs=22 gs=12 bench=278605382 baseline=522387158 */
  /* l=1069: bs=22 gs=12 bench=281588138 baseline=524176554 */
  if (l <= 1069) { *bs = 22; *gs = 12; return 1; }
  /* l=1087: bs=18 gs=15 bench=288666350 baseline=533224914 */
  /* l=1091: bs=18 gs=15 bench=284481732 baseline=535248444 */
  /* l=1093: bs=18 gs=15 bench=285385994 baseline=523421324 */
  /* l=1097: bs=18 gs=15 bench=287501960 baseline=526683772 */
  /* l=1103: bs=18 gs=15 bench=290419188 baseline=530305536 */
  /* l=1109: bs=18 gs=15 bench=293693308 baseline=533067106 */
  /* l=1117: bs=18 gs=15 bench=296827560 baseline=537507742 */
  if (l <= 1117) { *bs = 18; *gs = 15; return 1; }
  /* l=1123: bs=20 gs=14 bench=286676194 baseline=540618514 */
  /* l=1129: bs=20 gs=14 bench=289940366 baseline=548968816 */
  if (l <= 1129) { *bs = 20; *gs = 14; return 1; }
  /* l=1151: bs=22 gs=13 bench=293043352 baseline=558193066 */
  /* l=1153: bs=22 gs=13 bench=294326390 baseline=560196474 */
  /* l=1163: bs=22 gs=13 bench=299070760 baseline=566220818 */
  /* l=1171: bs=22 gs=13 bench=302961972 baseline=570622694 */
  /* l=1181: bs=22 gs=13 bench=308473802 baseline=575424378 */
  /* l=1187: bs=22 gs=13 bench=311558850 baseline=577810550 */
  /* l=1193: bs=22 gs=13 bench=313982458 baseline=581012646 */
  if (l <= 1193) { *bs = 22; *gs = 13; return 1; }
  /* l=1201: bs=20 gs=15 bench=308392712 baseline=586060500 */
  /* l=1213: bs=20 gs=15 bench=313706724 baseline=591912950 */
  /* l=1217: bs=20 gs=15 bench=316013036 baseline=593833044 */
  /* l=1223: bs=20 gs=15 bench=319051604 baseline=596000874 */
  if (l <= 1223) { *bs = 20; *gs = 15; return 1; }
  /* l=1229: bs=18 gs=17 bench=318341546 baseline=599879366 */
  /* l=1231: bs=18 gs=17 bench=319806314 baseline=600576642 */
  if (l <= 1231) { *bs = 18; *gs = 17; return 1; }
  /* l=1237: bs=22 gs=14 bench=303025276 baseline=593189718 */
  /* l=1249: bs=22 gs=14 bench=309135792 baseline=600917984 */
  /* l=1259: bs=22 gs=14 bench=314298756 baseline=605283322 */
  /* l=1277: bs=22 gs=14 bench=322701968 baseline=613997080 */
  /* l=1279: bs=22 gs=14 bench=324108200 baseline=616407686 */
  if (l <= 1279) { *bs = 22; *gs = 14; return 1; }
  /* l=1283: bs=20 gs=16 bench=317555368 baseline=619034634 */
  /* l=1289: bs=20 gs=16 bench=320288514 baseline=620811168 */
  /* l=1291: bs=20 gs=16 bench=321317268 baseline=625548414 */
  /* l=1297: bs=20 gs=16 bench=326220760 baseline=626085264 */
  /* l=1301: bs=20 gs=16 bench=328151162 baseline=631820754 */
  /* l=1303: bs=20 gs=16 bench=329450986 baseline=632948286 */
  /* l=1307: bs=20 gs=16 bench=331288560 baseline=633248332 */
  /* l=1319: bs=20 gs=16 bench=337036788 baseline=639449898 */
  if (l <= 1319) { *bs = 20; *gs = 16; return 1; }
  /* l=1321: bs=22 gs=15 bench=325438096 baseline=640456724 */
  /* l=1327: bs=22 gs=15 bench=327951888 baseline=644048420 */
  if (l <= 1327) { *bs = 22; *gs = 15; return 1; }
  /* l=1361: bs=24 gs=14 bench=338839176 baseline=660309990 */
  if (l <= 1361) { *bs = 24; *gs = 14; return 1; }
  /* l=1367: bs=20 gs=17 bench=341786652 baseline=662647008 */
  /* l=1373: bs=20 gs=17 bench=344391626 baseline=667450482 */
  /* l=1381: bs=20 gs=17 bench=348622176 baseline=670460750 */
  if (l <= 1381) { *bs = 20; *gs = 17; return 1; }
  /* l=1399: bs=24 gs=14 bench=358932676 baseline=684435742 */
  if (l <= 1399) { *bs = 24; *gs = 14; return 1; }
  /* l=1409: bs=22 gs=16 bench=339520952 baseline=686259596 */
  /* l=1423: bs=22 gs=16 bench=345937240 baseline=694319352 */
  /* l=1427: bs=22 gs=16 bench=348041452 baseline=695889814 */
  /* l=1429: bs=22 gs=16 bench=349102640 baseline=698088210 */
  /* l=1433: bs=22 gs=16 bench=351363608 baseline=700566742 */
  /* l=1439: bs=22 gs=16 bench=353669334 baseline=702724316 */
  /* l=1447: bs=22 gs=16 bench=357871510 baseline=707505620 */
  if (l <= 1447) { *bs = 22; *gs = 16; return 1; }
  /* l=1451: bs=24 gs=15 bench=359839724 baseline=709396158 */
  if (l <= 1451) { *bs = 24; *gs = 15; return 1; }
  /* l=1453: bs=22 gs=16 bench=360269016 baseline=709016112 */
  /* l=1459: bs=22 gs=16 bench=363614370 baseline=713206260 */
  /* l=1471: bs=22 gs=16 bench=370318752 baseline=721646350 */
  if (l <= 1471) { *bs = 22; *gs = 16; return 1; }
  /* l=1481: bs=20 gs=18 bench=367147770 baseline=725081264 */
  if (l <= 1481) { *bs = 20; *gs = 18; return 1; }
  /* l=1483: bs=22 gs=16 bench=368697006 baseline=711594296 */
  if (l <= 1483) { *bs = 22; *gs = 16; return 1; }
  /* l=1487: bs=20 gs=18 bench=371446392 baseline=714985580 */
  if (l <= 1487) { *bs = 20; *gs = 18; return 1; }
  /* l=1489: bs=24 gs=15 bench=372079342 baseline=717083472 */
  if (l <= 1489) { *bs = 24; *gs = 15; return 1; }
  /* l=1493: bs=22 gs=16 bench=373908504 baseline=719644086 */
  if (l <= 1493) { *bs = 22; *gs = 16; return 1; }
  /* l=1499: bs=22 gs=17 bench=355766736 baseline=723063828 */
  /* l=1511: bs=22 gs=17 bench=361835860 baseline=727609454 */
  /* l=1523: bs=22 gs=17 bench=369988618 baseline=734371344 */
  /* l=1531: bs=22 gs=17 bench=373833726 baseline=742989132 */
  if (l <= 1531) { *bs = 22; *gs = 17; return 1; }
  /* l=1543: bs=24 gs=16 bench=367489200 baseline=747629602 */
  /* l=1549: bs=24 gs=16 bench=370428630 baseline=751164034 */
  /* l=1553: bs=24 gs=16 bench=375434508 baseline=752279622 */
  /* l=1559: bs=24 gs=16 bench=378378076 baseline=761960282 */
  if (l <= 1559) { *bs = 24; *gs = 16; return 1; }
  /* l=1567: bs=30 gs=13 bench=374645508 baseline=765989310 */
  /* l=1571: bs=30 gs=13 bench=377220788 baseline=768416402 */
  /* l=1579: bs=30 gs=13 bench=380705876 baseline=773614446 */
  /* l=1583: bs=30 gs=13 bench=374740250 baseline=775431952 */
  if (l <= 1583) { *bs = 30; *gs = 13; return 1; }
  /* l=1597: bs=22 gs=18 bench=373070408 baseline=766289428 */
  /* l=1601: bs=22 gs=18 bench=375299072 baseline=769891892 */
  /* l=1607: bs=22 gs=18 bench=377485280 baseline=770358200 */
  /* l=1609: bs=22 gs=18 bench=380288298 baseline=773696476 */
  /* l=1613: bs=22 gs=18 bench=382987384 baseline=779138544 */
  /* l=1619: bs=22 gs=18 bench=385445770 baseline=780789554 */
  /* l=1621: bs=22 gs=18 bench=386847340 baseline=784343938 */
  /* l=1627: bs=22 gs=18 bench=389898984 baseline=786636360 */
  if (l <= 1627) { *bs = 22; *gs = 18; return 1; }
  /* l=1637: bs=24 gs=17 bench=382443342 baseline=785975468 */
  /* l=1657: bs=24 gs=17 bench=393288014 baseline=799352384 */
  if (l <= 1657) { *bs = 24; *gs = 17; return 1; }
  /* l=1663: bs=20 gs=20 bench=388533302 baseline=800940150 */
  if (l <= 1663) { *bs = 20; *gs = 20; return 1; }
  /* l=1667: bs=24 gs=17 bench=401264668 baseline=828603050 */
  /* l=1669: bs=24 gs=17 bench=401805274 baseline=809047784 */
  if (l <= 1669) { *bs = 24; *gs = 17; return 1; }
  /* l=1693: bs=30 gs=14 bench=379374732 baseline=820524346 */
  /* l=1697: bs=30 gs=14 bench=382004066 baseline=823694048 */
  /* l=1699: bs=30 gs=14 bench=383155260 baseline=823856932 */
  /* l=1709: bs=30 gs=14 bench=387821492 baseline=830390456 */
  /* l=1721: bs=30 gs=14 bench=393818162 baseline=837298372 */
  /* l=1723: bs=30 gs=14 bench=395019834 baseline=838297034 */
  /* l=1733: bs=30 gs=14 bench=399808494 baseline=844177010 */
  /* l=1741: bs=30 gs=14 bench=406557222 baseline=848451646 */
  /* l=1747: bs=30 gs=14 bench=404772196 baseline=855042454 */
  /* l=1753: bs=30 gs=14 bench=403064404 baseline=850825516 */
  /* l=1759: bs=30 gs=14 bench=409355064 baseline=843220380 */
  if (l <= 1759) { *bs = 30; *gs = 14; return 1; }
  /* l=1777: bs=22 gs=20 bench=409116098 baseline=859560292 */
  /* l=1783: bs=22 gs=20 bench=416778412 baseline=862569390 */
  /* l=1787: bs=22 gs=20 bench=414170128 baseline=874059296 */
  /* l=1789: bs=22 gs=20 bench=420520396 baseline=867263912 */
  if (l <= 1789) { *bs = 22; *gs = 20; return 1; }
  /* l=1801: bs=30 gs=15 bench=394898256 baseline=883232632 */
  /* l=1811: bs=30 gs=15 bench=400270694 baseline=890381678 */
  /* l=1823: bs=30 gs=15 bench=406051882 baseline=897383078 */
  /* l=1831: bs=30 gs=15 bench=410257204 baseline=900311252 */
  /* l=1847: bs=30 gs=15 bench=419102716 baseline=907750394 */
  if (l <= 1847) { *bs = 30; *gs = 15; return 1; }
  /* l=1861: bs=24 gs=19 bench=418571466 baseline=918514584 */
  if (l <= 1861) { *bs = 24; *gs = 19; return 1; }
  /* l=1867: bs=30 gs=15 bench=411907046 baseline=912529786 */
  /* l=1871: bs=30 gs=15 bench=408851422 baseline=954694340 */
  if (l <= 1871) { *bs = 30; *gs = 15; return 1; }
  /* l=1873: bs=24 gs=19 bench=422001972 baseline=877526504 */
  if (l <= 1873) { *bs = 24; *gs = 19; return 1; }
  /* l=1877: bs=22 gs=21 bench=439468172 baseline=955462612 */
  if (l <= 1877) { *bs = 22; *gs = 21; return 1; }
  /* l=1879: bs=30 gs=15 bench=417791728 baseline=873493318 */
  /* l=1889: bs=30 gs=15 bench=431818762 baseline=1085087432 */
  /* l=1901: bs=30 gs=15 bench=424491730 baseline=921094802 */
  if (l <= 1901) { *bs = 30; *gs = 15; return 1; }
  /* l=1907: bs=22 gs=21 bench=443680388 baseline=935622686 */
  if (l <= 1907) { *bs = 22; *gs = 21; return 1; }
  /* l=1913: bs=30 gs=15 bench=441515046 baseline=955335752 */
  if (l <= 1913) { *bs = 30; *gs = 15; return 1; }
  /* l=1931: bs=30 gs=16 bench=396275292 baseline=931128172 */
  if (l <= 1931) { *bs = 30; *gs = 16; return 1; }
  /* l=1933: bs=18 gs=26 bench=481459592 baseline=914815802 */
  if (l <= 1933) { *bs = 18; *gs = 26; return 1; }
  /* l=1949: bs=22 gs=22 bench=436092324 baseline=1167308788 */
  if (l <= 1949) { *bs = 22; *gs = 22; return 1; }
  /* l=1951: bs=30 gs=16 bench=417124278 baseline=1171596604 */
  /* l=1973: bs=30 gs=16 bench=428328358 baseline=960147968 */
  /* l=1979: bs=30 gs=16 bench=430562668 baseline=961240134 */
  /* l=1987: bs=30 gs=16 bench=433779796 baseline=966275260 */
  /* l=1993: bs=30 gs=16 bench=538848268 baseline=967073550 */
  /* l=1997: bs=30 gs=16 bench=543979250 baseline=1197351804 */
  /* l=1999: bs=30 gs=16 bench=440513344 baseline=1206211036 */
  /* l=2003: bs=30 gs=16 bench=441815766 baseline=972551448 */
  /* l=2011: bs=30 gs=16 bench=446099268 baseline=977635540 */
  if (l <= 2011) { *bs = 30; *gs = 16; return 1; }
  /* l=2017: bs=24 gs=21 bench=440952506 baseline=981452200 */
  /* l=2027: bs=24 gs=21 bench=445300446 baseline=972649928 */
  if (l <= 2027) { *bs = 24; *gs = 21; return 1; }
  /* l=2029: bs=18 gs=28 bench=533515720 baseline=972935026 */
  if (l <= 2029) { *bs = 18; *gs = 28; return 1; }
  /* l=2039: bs=24 gs=21 bench=568432142 baseline=1222123480 */
  if (l <= 2039) { *bs = 24; *gs = 21; return 1; }
  /* l=2053: bs=30 gs=17 bench=528921152 baseline=1238332684 */
  /* l=2063: bs=30 gs=17 bench=535966566 baseline=1236566730 */
  /* l=2069: bs=30 gs=17 bench=540328268 baseline=1241903438 */
  /* l=2081: bs=30 gs=17 bench=439145022 baseline=1250265594 */
  /* l=2083: bs=30 gs=17 bench=440503350 baseline=1000600710 */
  /* l=2087: bs=30 gs=17 bench=437356412 baseline=1024384902 */
  /* l=2089: bs=30 gs=17 bench=553993084 baseline=996357746 */
  if (l <= 2089) { *bs = 30; *gs = 17; return 1; }
  /* l=2099: bs=20 gs=26 bench=501292454 baseline=1263531832 */
  if (l <= 2099) { *bs = 20; *gs = 26; return 1; }
  /* l=2111: bs=30 gs=17 bench=449003110 baseline=1267316224 */
  /* l=2113: bs=30 gs=17 bench=445839254 baseline=1061250266 */
  /* l=2129: bs=30 gs=17 bench=478638634 baseline=998545056 */
  /* l=2131: bs=30 gs=17 bench=478331106 baseline=1062003852 */
  /* l=2137: bs=30 gs=17 bench=481679796 baseline=1059659134 */
  /* l=2141: bs=30 gs=17 bench=483347124 baseline=1062856786 */
  /* l=2143: bs=30 gs=17 bench=484746618 baseline=1065164386 */
  /* l=2153: bs=30 gs=17 bench=489018590 baseline=1070126856 */
  if (l <= 2153) { *bs = 30; *gs = 17; return 1; }
  /* l=2161: bs=30 gs=18 bench=448756926 baseline=1072580170 */
  /* l=2179: bs=30 gs=18 bench=457679022 baseline=1081010426 */
  /* l=2203: bs=30 gs=18 bench=469617200 baseline=1094020240 */
  /* l=2207: bs=30 gs=18 bench=471476298 baseline=1096738602 */
  /* l=2213: bs=30 gs=18 bench=462507394 baseline=1098920252 */
  /* l=2221: bs=30 gs=18 bench=466345234 baseline=1078500190 */
  /* l=2237: bs=30 gs=18 bench=469283892 baseline=1086608756 */
  /* l=2239: bs=30 gs=18 bench=477432564 baseline=1075140678 */
  /* l=2243: bs=30 gs=18 bench=479318606 baseline=1093541536 */
  /* l=2251: bs=30 gs=18 bench=462326220 baseline=1098694248 */
  /* l=2267: bs=30 gs=18 bench=469812746 baseline=1055171358 */
  /* l=2269: bs=30 gs=18 bench=469781070 baseline=1057819534 */
  /* l=2273: bs=30 gs=18 bench=471263494 baseline=1055177988 */
  if (l <= 2273) { *bs = 30; *gs = 18; return 1; }
  /* l=2281: bs=30 gs=19 bench=436652454 baseline=1059681896 */
  if (l <= 2281) { *bs = 30; *gs = 19; return 1; }
  /* l=2459: bs=30 gs=20 bench=478445870 baseline=1142606622 */
  if (l <= 2459) { *bs = 30; *gs = 20; return 1; }
  return 0;
}
