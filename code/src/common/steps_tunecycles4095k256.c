#include "steps.h"

int steps_guess(long long *bs,long long *gs,long long l)
{
  /* l=3: bs=0 gs=0 bench=611034 baseline=567067 */
  /* l=5: bs=0 gs=0 bench=736422 baseline=727982 */
  /* l=7: bs=0 gs=0 bench=976070 baseline=1011149 */
  /* l=11: bs=0 gs=0 bench=1462722 baseline=1536462 */
  /* l=13: bs=0 gs=0 bench=1724117 baseline=1779460 */
  /* l=17: bs=0 gs=0 bench=2218406 baseline=2264339 */
  /* l=19: bs=0 gs=0 bench=2434965 baseline=2549657 */
  /* l=23: bs=0 gs=0 bench=2921373 baseline=3075646 */
  /* l=29: bs=0 gs=0 bench=3674182 baseline=3804849 */
  /* l=31: bs=0 gs=0 bench=3895569 baseline=4089909 */
  /* l=37: bs=0 gs=0 bench=4659040 baseline=4782166 */
  /* l=41: bs=0 gs=0 bench=5145729 baseline=5262796 */
  /* l=43: bs=0 gs=0 bench=5359128 baseline=5545940 */
  /* l=47: bs=0 gs=0 bench=5853615 baseline=6082305 */
  /* l=53: bs=0 gs=0 bench=6596553 baseline=6770321 */
  /* l=59: bs=0 gs=0 bench=7311979 baseline=7540435 */
  /* l=61: bs=0 gs=0 bench=7567443 baseline=7780637 */
  /* l=67: bs=0 gs=0 bench=8407259 baseline=8473303 */
  /* l=71: bs=0 gs=0 bench=8900484 baseline=8999033 */
  /* l=73: bs=0 gs=0 bench=9150996 baseline=9201949 */
  /* l=79: bs=0 gs=0 bench=9877210 baseline=10017661 */
  /* l=83: bs=0 gs=0 bench=10359516 baseline=10460351 */
  /* l=89: bs=0 gs=0 bench=11094649 baseline=11187022 */
  if (l <= 89) { *bs = 0; *gs = 0; return 1; }
  /* l=97: bs=6 gs=4 bench=11529640 baseline=12118657 */
  /* l=101: bs=6 gs=4 bench=11893258 baseline=12647185 */
  /* l=103: bs=6 gs=4 bench=12150362 baseline=12933619 */
  /* l=107: bs=6 gs=4 bench=12635264 baseline=13421790 */
  /* l=109: bs=6 gs=4 bench=12743173 baseline=13659910 */
  /* l=113: bs=6 gs=4 bench=13243687 baseline=14109620 */
  if (l <= 113) { *bs = 6; *gs = 4; return 1; }
  /* l=127: bs=6 gs=5 bench=14438035 baseline=15922772 */
  if (l <= 127) { *bs = 6; *gs = 5; return 1; }
  /* l=131: bs=8 gs=4 bench=14621721 baseline=16291470 */
  /* l=137: bs=8 gs=4 bench=15377983 baseline=17015897 */
  /* l=139: bs=8 gs=4 bench=15611716 baseline=17310276 */
  if (l <= 139) { *bs = 8; *gs = 4; return 1; }
  /* l=149: bs=6 gs=6 bench=16294268 baseline=18536888 */
  /* l=151: bs=6 gs=6 bench=16544011 baseline=18818358 */
  /* l=157: bs=6 gs=6 bench=17169041 baseline=19542601 */
  if (l <= 157) { *bs = 6; *gs = 6; return 1; }
  /* l=163: bs=8 gs=5 bench=16969228 baseline=20231936 */
  /* l=167: bs=8 gs=5 bench=17483011 baseline=20759398 */
  /* l=173: bs=8 gs=5 bench=18220361 baseline=21495773 */
  /* l=179: bs=8 gs=5 bench=18822813 baseline=22213882 */
  /* l=181: bs=8 gs=5 bench=19069586 baseline=22464540 */
  /* l=191: bs=8 gs=5 bench=20294779 baseline=23767558 */
  if (l <= 191) { *bs = 8; *gs = 5; return 1; }
  /* l=193: bs=8 gs=6 bench=19006531 baseline=23831212 */
  /* l=197: bs=8 gs=6 bench=19398928 baseline=24387356 */
  /* l=199: bs=8 gs=6 bench=19627320 baseline=24649126 */
  /* l=211: bs=8 gs=6 bench=20972856 baseline=26111465 */
  /* l=223: bs=8 gs=6 bench=22428540 baseline=27650095 */
  if (l <= 223) { *bs = 8; *gs = 6; return 1; }
  /* l=227: bs=8 gs=7 bench=22266584 baseline=28064794 */
  /* l=229: bs=8 gs=7 bench=22494362 baseline=28300636 */
  /* l=233: bs=8 gs=7 bench=22985698 baseline=28786612 */
  /* l=239: bs=8 gs=7 bench=23717738 baseline=29601483 */
  if (l <= 239) { *bs = 8; *gs = 7; return 1; }
  /* l=241: bs=10 gs=6 bench=22863625 baseline=29755179 */
  /* l=251: bs=10 gs=6 bench=23968543 baseline=31063213 */
  if (l <= 251) { *bs = 10; *gs = 6; return 1; }
  /* l=257: bs=8 gs=8 bench=24671888 baseline=31620270 */
  /* l=263: bs=8 gs=8 bench=25271062 baseline=32446471 */
  /* l=269: bs=8 gs=8 bench=26026227 baseline=33166610 */
  /* l=271: bs=8 gs=8 bench=26249724 baseline=33449220 */
  /* l=277: bs=8 gs=8 bench=26880666 baseline=34130232 */
  if (l <= 277) { *bs = 8; *gs = 8; return 1; }
  /* l=281: bs=10 gs=7 bench=26098841 baseline=34637160 */
  /* l=283: bs=10 gs=7 bench=26216350 baseline=34919832 */
  if (l <= 283) { *bs = 10; *gs = 7; return 1; }
  /* l=293: bs=12 gs=6 bench=27207945 baseline=36083912 */
  /* l=307: bs=12 gs=6 bench=28908834 baseline=37838140 */
  /* l=311: bs=12 gs=6 bench=29369981 baseline=38356842 */
  /* l=313: bs=12 gs=6 bench=29521832 baseline=38560296 */
  /* l=317: bs=12 gs=6 bench=30008970 baseline=39073727 */
  if (l <= 317) { *bs = 12; *gs = 6; return 1; }
  /* l=331: bs=10 gs=8 bench=29612242 baseline=40759483 */
  if (l <= 331) { *bs = 10; *gs = 8; return 1; }
  /* l=337: bs=14 gs=6 bench=29863699 baseline=41432193 */
  /* l=347: bs=14 gs=6 bench=30950826 baseline=42744853 */
  /* l=349: bs=14 gs=6 bench=31217113 baseline=42970103 */
  /* l=353: bs=14 gs=6 bench=31724991 baseline=43391742 */
  /* l=359: bs=14 gs=6 bench=32405213 baseline=44306669 */
  if (l <= 359) { *bs = 14; *gs = 6; return 1; }
  /* l=367: bs=10 gs=9 bench=32327976 baseline=45224704 */
  /* l=373: bs=10 gs=9 bench=33089826 baseline=45906390 */
  /* l=379: bs=10 gs=9 bench=33785900 baseline=46693313 */
  /* l=383: bs=10 gs=9 bench=34149697 baseline=47210949 */
  if (l <= 383) { *bs = 10; *gs = 9; return 1; }
  /* l=389: bs=12 gs=8 bench=32757760 baseline=47779064 */
  if (l <= 389) { *bs = 12; *gs = 8; return 1; }
  /* l=397: bs=14 gs=7 bench=32638401 baseline=48780367 */
  /* l=401: bs=14 gs=7 bench=33117997 baseline=49242773 */
  /* l=409: bs=14 gs=7 bench=34090265 baseline=50243044 */
  /* l=419: bs=14 gs=7 bench=35309212 baseline=51460197 */
  /* l=421: bs=14 gs=7 bench=35415224 baseline=51709626 */
  /* l=431: bs=14 gs=7 bench=36663778 baseline=52994058 */
  if (l <= 431) { *bs = 14; *gs = 7; return 1; }
  /* l=433: bs=12 gs=9 bench=35631158 baseline=53188817 */
  /* l=439: bs=12 gs=9 bench=36216740 baseline=53959462 */
  /* l=443: bs=12 gs=9 bench=36727829 baseline=54468364 */
  if (l <= 443) { *bs = 12; *gs = 9; return 1; }
  /* l=449: bs=14 gs=8 bench=34789817 baseline=55073858 */
  /* l=457: bs=14 gs=8 bench=35660258 baseline=56076492 */
  /* l=461: bs=14 gs=8 bench=36116135 baseline=56734998 */
  /* l=463: bs=14 gs=8 bench=36526242 baseline=57025596 */
  /* l=467: bs=14 gs=8 bench=37033558 baseline=57561618 */
  if (l <= 467) { *bs = 14; *gs = 8; return 1; }
  /* l=487: bs=12 gs=10 bench=39287948 baseline=60049081 */
  /* l=491: bs=12 gs=10 bench=39783475 baseline=60517133 */
  /* l=499: bs=12 gs=10 bench=40834475 baseline=61495933 */
  /* l=503: bs=12 gs=10 bench=41345418 baseline=62030684 */
  if (l <= 503) { *bs = 12; *gs = 10; return 1; }
  /* l=509: bs=14 gs=9 bench=38590080 baseline=62761978 */
  /* l=521: bs=14 gs=9 bench=40055308 baseline=64066769 */
  /* l=523: bs=14 gs=9 bench=40354149 baseline=64343637 */
  /* l=541: bs=14 gs=9 bench=42404780 baseline=66594924 */
  /* l=547: bs=14 gs=9 bench=43141590 baseline=67294168 */
  /* l=557: bs=14 gs=9 bench=44317738 baseline=68566610 */
  if (l <= 557) { *bs = 14; *gs = 9; return 1; }
  /* l=563: bs=14 gs=10 bench=41249517 baseline=69274134 */
  /* l=569: bs=14 gs=10 bench=41943982 baseline=70009364 */
  /* l=571: bs=14 gs=10 bench=42186900 baseline=70294563 */
  /* l=577: bs=14 gs=10 bench=42929297 baseline=70927588 */
  /* l=587: bs=14 gs=10 bench=44154489 baseline=72192718 */
  /* l=593: bs=14 gs=10 bench=44794807 baseline=72916477 */
  /* l=599: bs=14 gs=10 bench=45495875 baseline=73735747 */
  /* l=601: bs=14 gs=10 bench=45744483 baseline=73945637 */
  /* l=607: bs=14 gs=10 bench=46564069 baseline=74747922 */
  if (l <= 607) { *bs = 14; *gs = 10; return 1; }
  /* l=613: bs=16 gs=9 bench=47277763 baseline=75377228 */
  if (l <= 613) { *bs = 16; *gs = 9; return 1; }
  /* l=617: bs=14 gs=11 bench=44411075 baseline=75876025 */
  /* l=619: bs=14 gs=11 bench=44563745 baseline=76152794 */
  /* l=631: bs=14 gs=11 bench=45987207 baseline=77689363 */
  if (l <= 631) { *bs = 14; *gs = 11; return 1; }
  /* l=641: bs=16 gs=10 bench=46093351 baseline=78719484 */
  /* l=643: bs=16 gs=10 bench=46226550 baseline=79011796 */
  /* l=647: bs=16 gs=10 bench=46864461 baseline=79548562 */
  /* l=653: bs=16 gs=10 bench=47428418 baseline=80277378 */
  /* l=659: bs=16 gs=10 bench=48164784 baseline=81020632 */
  /* l=661: bs=16 gs=10 bench=48388884 baseline=81244867 */
  if (l <= 661) { *bs = 16; *gs = 10; return 1; }
  /* l=673: bs=14 gs=12 bench=47092779 baseline=82652521 */
  /* l=677: bs=14 gs=12 bench=47458146 baseline=83213412 */
  /* l=683: bs=14 gs=12 bench=48183154 baseline=84290302 */
  /* l=691: bs=14 gs=12 bench=49203264 baseline=84964928 */
  /* l=701: bs=14 gs=12 bench=50258985 baseline=86235845 */
  if (l <= 701) { *bs = 14; *gs = 12; return 1; }
  /* l=709: bs=16 gs=11 bench=49753550 baseline=87103127 */
  /* l=719: bs=16 gs=11 bench=51023453 baseline=88421298 */
  /* l=727: bs=16 gs=11 bench=52059827 baseline=89421289 */
  if (l <= 727) { *bs = 16; *gs = 11; return 1; }
  /* l=733: bs=14 gs=13 bench=51833752 baseline=90127475 */
  /* l=739: bs=14 gs=13 bench=52573326 baseline=90840629 */
  /* l=743: bs=14 gs=13 bench=53056177 baseline=91354111 */
  /* l=751: bs=14 gs=13 bench=54064236 baseline=92418235 */
  /* l=757: bs=14 gs=13 bench=54691412 baseline=93070437 */
  /* l=761: bs=14 gs=13 bench=55132367 baseline=93539954 */
  if (l <= 761) { *bs = 14; *gs = 13; return 1; }
  /* l=769: bs=16 gs=12 bench=52163463 baseline=94380857 */
  /* l=773: bs=16 gs=12 bench=52516462 baseline=94879843 */
  /* l=787: bs=16 gs=12 bench=54235042 baseline=96619605 */
  /* l=797: bs=16 gs=12 bench=55476528 baseline=97874914 */
  /* l=809: bs=16 gs=12 bench=56834583 baseline=99315847 */
  /* l=811: bs=16 gs=12 bench=57045008 baseline=99612693 */
  /* l=821: bs=16 gs=12 bench=58308764 baseline=100858299 */
  /* l=823: bs=16 gs=12 bench=58581995 baseline=101148675 */
  /* l=827: bs=16 gs=12 bench=59036659 baseline=101631161 */
  /* l=829: bs=16 gs=12 bench=59273177 baseline=101868184 */
  if (l <= 829) { *bs = 16; *gs = 12; return 1; }
  /* l=839: bs=16 gs=13 bench=57131664 baseline=103014504 */
  /* l=853: bs=16 gs=13 bench=58895550 baseline=104749845 */
  /* l=857: bs=16 gs=13 bench=59472833 baseline=105202653 */
  /* l=859: bs=16 gs=13 bench=59587926 baseline=105543069 */
  /* l=863: bs=16 gs=13 bench=60065686 baseline=106029020 */
  if (l <= 863) { *bs = 16; *gs = 13; return 1; }
  /* l=877: bs=18 gs=12 bench=60339765 baseline=107722853 */
  /* l=881: bs=18 gs=12 bench=61042701 baseline=108152575 */
  /* l=883: bs=18 gs=12 bench=61032753 baseline=108407950 */
  /* l=887: bs=18 gs=12 bench=61491968 baseline=108987074 */
  if (l <= 887) { *bs = 18; *gs = 12; return 1; }
  /* l=907: bs=16 gs=14 bench=61350618 baseline=111351099 */
  /* l=911: bs=16 gs=14 bench=61794389 baseline=111879786 */
  /* l=919: bs=16 gs=14 bench=62799976 baseline=112805154 */
  /* l=929: bs=16 gs=14 bench=63938854 baseline=114053199 */
  if (l <= 929) { *bs = 16; *gs = 14; return 1; }
  /* l=937: bs=18 gs=13 bench=63327992 baseline=115028842 */
  /* l=941: bs=18 gs=13 bench=63719419 baseline=115550210 */
  /* l=947: bs=18 gs=13 bench=64440332 baseline=116302863 */
  /* l=953: bs=18 gs=13 bench=65179905 baseline=116983657 */
  if (l <= 953) { *bs = 18; *gs = 13; return 1; }
  /* l=967: bs=20 gs=12 bench=65672434 baseline=118768399 */
  /* l=971: bs=20 gs=12 bench=66169124 baseline=119190088 */
  /* l=977: bs=20 gs=12 bench=66951619 baseline=119892622 */
  /* l=983: bs=20 gs=12 bench=67631768 baseline=120735218 */
  /* l=991: bs=20 gs=12 bench=68647356 baseline=121757435 */
  /* l=997: bs=20 gs=12 bench=69519721 baseline=122345690 */
  if (l <= 997) { *bs = 20; *gs = 12; return 1; }
  /* l=1009: bs=18 gs=14 bench=67117337 baseline=123897663 */
  /* l=1013: bs=18 gs=14 bench=67458322 baseline=124364230 */
  /* l=1019: bs=18 gs=14 bench=68225971 baseline=125127177 */
  /* l=1021: bs=18 gs=14 bench=68434506 baseline=125418371 */
  if (l <= 1021) { *bs = 18; *gs = 14; return 1; }
  /* l=1031: bs=16 gs=16 bench=69356607 baseline=126488324 */
  /* l=1033: bs=16 gs=16 bench=69680518 baseline=126663566 */
  /* l=1039: bs=16 gs=16 bench=70356841 baseline=127437756 */
  if (l <= 1039) { *bs = 16; *gs = 16; return 1; }
  /* l=1049: bs=20 gs=13 bench=70480653 baseline=128645476 */
  /* l=1051: bs=20 gs=13 bench=70627630 baseline=128947958 */
  if (l <= 1051) { *bs = 20; *gs = 13; return 1; }
  /* l=1061: bs=22 gs=12 bench=70249345 baseline=130110572 */
  /* l=1063: bs=22 gs=12 bench=70471406 baseline=130464555 */
  /* l=1069: bs=22 gs=12 bench=71552178 baseline=131178994 */
  if (l <= 1069) { *bs = 22; *gs = 12; return 1; }
  /* l=1087: bs=18 gs=15 bench=73018397 baseline=133412259 */
  /* l=1091: bs=18 gs=15 bench=73538609 baseline=133777364 */
  /* l=1093: bs=18 gs=15 bench=73772072 baseline=134011118 */
  /* l=1097: bs=18 gs=15 bench=74281759 baseline=134552768 */
  /* l=1103: bs=18 gs=15 bench=74989726 baseline=135381909 */
  /* l=1109: bs=18 gs=15 bench=75710666 baseline=136032534 */
  /* l=1117: bs=18 gs=15 bench=76574072 baseline=137056579 */
  if (l <= 1117) { *bs = 18; *gs = 15; return 1; }
  /* l=1123: bs=20 gs=14 bench=73401524 baseline=137748761 */
  /* l=1129: bs=20 gs=14 bench=74062080 baseline=138470006 */
  if (l <= 1129) { *bs = 20; *gs = 14; return 1; }
  /* l=1151: bs=22 gs=13 bench=74861574 baseline=141301448 */
  /* l=1153: bs=22 gs=13 bench=75136059 baseline=141307432 */
  /* l=1163: bs=22 gs=13 bench=76308065 baseline=142653210 */
  /* l=1171: bs=22 gs=13 bench=77299662 baseline=143573706 */
  /* l=1181: bs=22 gs=13 bench=78520276 baseline=144844303 */
  /* l=1187: bs=22 gs=13 bench=79317742 baseline=145590880 */
  /* l=1193: bs=22 gs=13 bench=79895757 baseline=146314642 */
  if (l <= 1193) { *bs = 22; *gs = 13; return 1; }
  /* l=1201: bs=20 gs=15 bench=78558135 baseline=147334888 */
  /* l=1213: bs=20 gs=15 bench=79844240 baseline=148819296 */
  /* l=1217: bs=20 gs=15 bench=80365350 baseline=149548520 */
  /* l=1223: bs=20 gs=15 bench=81045080 baseline=150007867 */
  if (l <= 1223) { *bs = 20; *gs = 15; return 1; }
  /* l=1229: bs=18 gs=17 bench=81091530 baseline=150730351 */
  /* l=1231: bs=18 gs=17 bench=81314349 baseline=151071001 */
  if (l <= 1231) { *bs = 18; *gs = 17; return 1; }
  /* l=1237: bs=22 gs=14 bench=78387299 baseline=151690093 */
  /* l=1249: bs=22 gs=14 bench=79841763 baseline=153100548 */
  /* l=1259: bs=22 gs=14 bench=80949147 baseline=154450095 */
  /* l=1277: bs=22 gs=14 bench=83141000 baseline=156668188 */
  /* l=1279: bs=22 gs=14 bench=83303087 baseline=156963009 */
  if (l <= 1279) { *bs = 22; *gs = 14; return 1; }
  /* l=1283: bs=20 gs=16 bench=81749526 baseline=157287696 */
  /* l=1289: bs=20 gs=16 bench=82461420 baseline=158024528 */
  /* l=1291: bs=20 gs=16 bench=82716330 baseline=158267914 */
  /* l=1297: bs=20 gs=16 bench=83455436 baseline=158983479 */
  /* l=1301: bs=20 gs=16 bench=83921210 baseline=159505176 */
  /* l=1303: bs=20 gs=16 bench=84182439 baseline=159754074 */
  /* l=1307: bs=20 gs=16 bench=84639339 baseline=160363952 */
  /* l=1319: bs=20 gs=16 bench=86125995 baseline=161720148 */
  if (l <= 1319) { *bs = 20; *gs = 16; return 1; }
  /* l=1321: bs=22 gs=15 bench=83446615 baseline=161882728 */
  /* l=1327: bs=22 gs=15 bench=83885234 baseline=162837180 */
  if (l <= 1327) { *bs = 22; *gs = 15; return 1; }
  /* l=1361: bs=24 gs=14 bench=86701008 baseline=166793610 */
  /* l=1367: bs=24 gs=14 bench=87373949 baseline=167658181 */
  /* l=1373: bs=24 gs=14 bench=88116489 baseline=168371884 */
  /* l=1381: bs=24 gs=14 bench=89126186 baseline=169281976 */
  /* l=1399: bs=24 gs=14 bench=91207156 baseline=171585958 */
  if (l <= 1399) { *bs = 24; *gs = 14; return 1; }
  /* l=1409: bs=22 gs=16 bench=86384183 baseline=172665534 */
  /* l=1423: bs=22 gs=16 bench=87961188 baseline=174560987 */
  /* l=1427: bs=22 gs=16 bench=88478931 baseline=174953806 */
  /* l=1429: bs=22 gs=16 bench=88727453 baseline=175187315 */
  /* l=1433: bs=22 gs=16 bench=89165049 baseline=175706724 */
  /* l=1439: bs=22 gs=16 bench=89941069 baseline=176546855 */
  if (l <= 1439) { *bs = 22; *gs = 16; return 1; }
  /* l=1447: bs=24 gs=15 bench=90891277 baseline=177479101 */
  /* l=1451: bs=24 gs=15 bench=91388588 baseline=177951624 */
  if (l <= 1451) { *bs = 24; *gs = 15; return 1; }
  /* l=1453: bs=22 gs=16 bench=91530632 baseline=178277229 */
  /* l=1459: bs=22 gs=16 bench=92355521 baseline=178990658 */
  /* l=1471: bs=22 gs=16 bench=93832087 baseline=180469354 */
  /* l=1481: bs=22 gs=16 bench=94949892 baseline=181625273 */
  if (l <= 1481) { *bs = 22; *gs = 16; return 1; }
  /* l=1483: bs=20 gs=18 bench=95320150 baseline=181824235 */
  if (l <= 1483) { *bs = 20; *gs = 18; return 1; }
  /* l=1487: bs=24 gs=15 bench=95825073 baseline=182479314 */
  /* l=1489: bs=24 gs=15 bench=95903677 baseline=182567899 */
  /* l=1493: bs=24 gs=15 bench=96382008 baseline=183150051 */
  if (l <= 1493) { *bs = 24; *gs = 15; return 1; }
  /* l=1499: bs=22 gs=17 bench=91886380 baseline=183968624 */
  /* l=1511: bs=22 gs=17 bench=93261475 baseline=185278193 */
  /* l=1523: bs=22 gs=17 bench=94866257 baseline=186810240 */
  /* l=1531: bs=22 gs=17 bench=95836757 baseline=187787196 */
  if (l <= 1531) { *bs = 22; *gs = 17; return 1; }
  /* l=1543: bs=24 gs=16 bench=94005467 baseline=189152907 */
  /* l=1549: bs=24 gs=16 bench=94712375 baseline=189820890 */
  /* l=1553: bs=24 gs=16 bench=95240375 baseline=190308590 */
  /* l=1559: bs=24 gs=16 bench=95961964 baseline=191116524 */
  if (l <= 1559) { *bs = 24; *gs = 16; return 1; }
  /* l=1567: bs=30 gs=13 bench=95192079 baseline=192124548 */
  /* l=1571: bs=30 gs=13 bench=95711170 baseline=192549335 */
  /* l=1579: bs=30 gs=13 bench=96710903 baseline=193591985 */
  /* l=1583: bs=30 gs=13 bench=97221229 baseline=194163809 */
  if (l <= 1583) { *bs = 30; *gs = 13; return 1; }
  /* l=1597: bs=22 gs=18 bench=96426080 baseline=195794922 */
  /* l=1601: bs=22 gs=18 bench=96952109 baseline=196157512 */
  /* l=1607: bs=22 gs=18 bench=97718718 baseline=196980415 */
  /* l=1609: bs=22 gs=18 bench=97899208 baseline=197276690 */
  /* l=1613: bs=22 gs=18 bench=98359012 baseline=197631807 */
  /* l=1619: bs=22 gs=18 bench=99348746 baseline=198467920 */
  /* l=1621: bs=22 gs=18 bench=99373971 baseline=198720307 */
  /* l=1627: bs=22 gs=18 bench=100146218 baseline=199590082 */
  if (l <= 1627) { *bs = 22; *gs = 18; return 1; }
  /* l=1637: bs=24 gs=17 bench=98873298 baseline=200678948 */
  /* l=1657: bs=24 gs=17 bench=101287747 baseline=203219248 */
  /* l=1663: bs=24 gs=17 bench=102045810 baseline=203954034 */
  /* l=1667: bs=24 gs=17 bench=102547597 baseline=204319396 */
  /* l=1669: bs=24 gs=17 bench=102819193 baseline=204573044 */
  if (l <= 1669) { *bs = 24; *gs = 17; return 1; }
  /* l=1693: bs=30 gs=14 bench=97223797 baseline=207592638 */
  /* l=1697: bs=30 gs=14 bench=97797320 baseline=207933146 */
  /* l=1699: bs=30 gs=14 bench=97964579 baseline=208155086 */
  /* l=1709: bs=30 gs=14 bench=99194457 baseline=209506398 */
  /* l=1721: bs=30 gs=14 bench=100687287 baseline=210931463 */
  /* l=1723: bs=30 gs=14 bench=100867566 baseline=211275378 */
  if (l <= 1723) { *bs = 30; *gs = 14; return 1; }
  /* l=1931: bs=30 gs=16 bench=104234617 baseline=236724487 */
  if (l <= 1931) { *bs = 30; *gs = 16; return 1; }
  return 0;
}
