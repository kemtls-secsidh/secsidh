#include "steps.h"

int steps_guess(long long *bs,long long *gs,long long l)
{
  /* l=3: bs=0 gs=0 bench=1519752 baseline=1415888 */
  /* l=5: bs=0 gs=0 bench=1824331 baseline=1833957 */
  /* l=7: bs=0 gs=0 bench=2428975 baseline=2532590 */
  /* l=11: bs=0 gs=0 bench=3656315 baseline=3842561 */
  /* l=13: bs=0 gs=0 bench=4264855 baseline=4456315 */
  /* l=17: bs=0 gs=0 bench=5476185 baseline=5679276 */
  /* l=19: bs=0 gs=0 bench=6085046 baseline=6381956 */
  /* l=23: bs=0 gs=0 bench=7302053 baseline=7690242 */
  /* l=29: bs=0 gs=0 bench=9123535 baseline=9516563 */
  /* l=31: bs=0 gs=0 bench=9739218 baseline=10216819 */
  /* l=37: bs=0 gs=0 bench=11559356 baseline=11945989 */
  /* l=41: bs=0 gs=0 bench=12692180 baseline=13083690 */
  /* l=43: bs=0 gs=0 bench=13323517 baseline=13797866 */
  /* l=47: bs=0 gs=0 bench=14505276 baseline=15124492 */
  /* l=53: bs=0 gs=0 bench=16333623 baseline=16803320 */
  /* l=59: bs=0 gs=0 bench=18143498 baseline=18752890 */
  /* l=61: bs=0 gs=0 bench=18750969 baseline=19319949 */
  /* l=67: bs=0 gs=0 bench=20854003 baseline=21046623 */
  /* l=71: bs=0 gs=0 bench=22085099 baseline=22315482 */
  /* l=73: bs=0 gs=0 bench=22664046 baseline=22922566 */
  /* l=79: bs=0 gs=0 bench=24516639 baseline=24827766 */
  /* l=83: bs=0 gs=0 bench=25675295 baseline=25969678 */
  /* l=89: bs=0 gs=0 bench=27497853 baseline=27765987 */
  if (l <= 89) { *bs = 0; *gs = 0; return 1; }
  /* l=97: bs=6 gs=4 bench=28446967 baseline=30090951 */
  /* l=101: bs=6 gs=4 bench=29316945 baseline=31391806 */
  /* l=103: bs=6 gs=4 bench=29935580 baseline=32068882 */
  /* l=107: bs=6 gs=4 bench=31167458 baseline=33320776 */
  /* l=109: bs=6 gs=4 bench=31423342 baseline=33910988 */
  /* l=113: bs=6 gs=4 bench=32650890 baseline=34985283 */
  if (l <= 113) { *bs = 6; *gs = 4; return 1; }
  /* l=127: bs=6 gs=5 bench=35555741 baseline=39499932 */
  if (l <= 127) { *bs = 6; *gs = 5; return 1; }
  /* l=131: bs=8 gs=4 bench=36101917 baseline=40470195 */
  /* l=137: bs=8 gs=4 bench=37924812 baseline=42231501 */
  /* l=139: bs=8 gs=4 bench=38499737 baseline=43008862 */
  if (l <= 139) { *bs = 8; *gs = 4; return 1; }
  /* l=149: bs=6 gs=6 bench=40080286 baseline=45990144 */
  /* l=151: bs=6 gs=6 bench=40780945 baseline=46646591 */
  /* l=157: bs=6 gs=6 bench=42170493 baseline=48523583 */
  if (l <= 157) { *bs = 6; *gs = 6; return 1; }
  /* l=163: bs=8 gs=5 bench=41793571 baseline=50266656 */
  /* l=167: bs=8 gs=5 bench=43001551 baseline=51479329 */
  /* l=173: bs=8 gs=5 bench=44806361 baseline=53391063 */
  /* l=179: bs=8 gs=5 bench=46372314 baseline=55173271 */
  /* l=181: bs=8 gs=5 bench=46953770 baseline=55745065 */
  /* l=191: bs=8 gs=5 bench=49989389 baseline=58917812 */
  if (l <= 191) { *bs = 8; *gs = 5; return 1; }
  /* l=193: bs=8 gs=6 bench=46718718 baseline=59354832 */
  /* l=197: bs=8 gs=6 bench=47657181 baseline=60486356 */
  /* l=199: bs=8 gs=6 bench=48233426 baseline=61130804 */
  /* l=211: bs=8 gs=6 bench=51585182 baseline=64856540 */
  /* l=223: bs=8 gs=6 bench=55199754 baseline=68561091 */
  if (l <= 223) { *bs = 8; *gs = 6; return 1; }
  /* l=227: bs=8 gs=7 bench=54693097 baseline=69760731 */
  /* l=229: bs=8 gs=7 bench=55316907 baseline=70259465 */
  /* l=233: bs=8 gs=7 bench=56514420 baseline=71407543 */
  /* l=239: bs=8 gs=7 bench=58314952 baseline=73456806 */
  if (l <= 239) { *bs = 8; *gs = 7; return 1; }
  /* l=241: bs=10 gs=6 bench=56208610 baseline=73829935 */
  /* l=251: bs=10 gs=6 bench=58951351 baseline=77184789 */
  if (l <= 251) { *bs = 10; *gs = 6; return 1; }
  /* l=257: bs=8 gs=8 bench=60562799 baseline=78418449 */
  /* l=263: bs=8 gs=8 bench=62115001 baseline=80413491 */
  /* l=269: bs=8 gs=8 bench=63823158 baseline=82317399 */
  /* l=271: bs=8 gs=8 bench=64470716 baseline=82936683 */
  /* l=277: bs=8 gs=8 bench=66006962 baseline=84788871 */
  if (l <= 277) { *bs = 8; *gs = 8; return 1; }
  /* l=281: bs=10 gs=7 bench=64227528 baseline=85893757 */
  /* l=283: bs=10 gs=7 bench=64540456 baseline=86684071 */
  if (l <= 283) { *bs = 10; *gs = 7; return 1; }
  /* l=293: bs=12 gs=6 bench=66807252 baseline=89601517 */
  /* l=307: bs=12 gs=6 bench=71068570 baseline=93969151 */
  /* l=311: bs=12 gs=6 bench=72243455 baseline=95097899 */
  /* l=313: bs=12 gs=6 bench=72566013 baseline=95644051 */
  /* l=317: bs=12 gs=6 bench=73759966 baseline=96998985 */
  if (l <= 317) { *bs = 12; *gs = 6; return 1; }
  /* l=331: bs=10 gs=8 bench=72714898 baseline=101208234 */
  if (l <= 331) { *bs = 10; *gs = 8; return 1; }
  /* l=337: bs=14 gs=6 bench=73222394 baseline=102777051 */
  /* l=347: bs=14 gs=6 bench=75954170 baseline=106130032 */
  /* l=349: bs=14 gs=6 bench=76578429 baseline=106663190 */
  /* l=353: bs=14 gs=6 bench=77841301 baseline=107594111 */
  /* l=359: bs=14 gs=6 bench=79640924 baseline=109589329 */
  if (l <= 359) { *bs = 14; *gs = 6; return 1; }
  /* l=367: bs=10 gs=9 bench=79416880 baseline=112093271 */
  /* l=373: bs=10 gs=9 bench=81206059 baseline=113901874 */
  /* l=379: bs=10 gs=9 bench=82988705 baseline=115965529 */
  /* l=383: bs=10 gs=9 bench=83958847 baseline=117096663 */
  if (l <= 383) { *bs = 10; *gs = 9; return 1; }
  /* l=389: bs=12 gs=8 bench=80438773 baseline=118605392 */
  if (l <= 389) { *bs = 12; *gs = 8; return 1; }
  /* l=397: bs=14 gs=7 bench=80061365 baseline=121148895 */
  /* l=409: bs=14 gs=7 bench=83806401 baseline=124607761 */
  /* l=419: bs=14 gs=7 bench=86705351 baseline=127823145 */
  /* l=421: bs=14 gs=7 bench=87028601 baseline=128328792 */
  /* l=431: bs=14 gs=7 bench=90062105 baseline=131391446 */
  if (l <= 431) { *bs = 14; *gs = 7; return 1; }
  /* l=433: bs=12 gs=9 bench=87400026 baseline=131847745 */
  /* l=439: bs=12 gs=9 bench=88897407 baseline=133806759 */
  /* l=443: bs=12 gs=9 bench=88801338 baseline=133208160 */
  if (l <= 443) { *bs = 12; *gs = 9; return 1; }
  /* l=449: bs=14 gs=8 bench=84089809 baseline=134454693 */
  /* l=457: bs=14 gs=8 bench=86179973 baseline=137007689 */
  /* l=461: bs=14 gs=8 bench=87341408 baseline=138378746 */
  /* l=463: bs=14 gs=8 bench=87895299 baseline=138929439 */
  /* l=467: bs=14 gs=8 bench=89087726 baseline=140295832 */
  /* l=479: bs=14 gs=8 bench=92349023 baseline=143829048 */
  if (l <= 479) { *bs = 14; *gs = 8; return 1; }
  /* l=487: bs=12 gs=10 bench=94406156 baseline=146028727 */
  /* l=491: bs=12 gs=10 bench=95590956 baseline=147571088 */
  /* l=499: bs=12 gs=10 bench=98025135 baseline=149906099 */
  /* l=503: bs=12 gs=10 bench=99127717 baseline=150900163 */
  if (l <= 503) { *bs = 12; *gs = 10; return 1; }
  /* l=509: bs=14 gs=9 bench=92864262 baseline=152850048 */
  /* l=521: bs=14 gs=9 bench=96449081 baseline=155876105 */
  /* l=523: bs=14 gs=9 bench=97032353 baseline=156834916 */
  /* l=541: bs=14 gs=9 bench=102118914 baseline=162182440 */
  /* l=547: bs=14 gs=9 bench=103859102 baseline=163965299 */
  /* l=557: bs=14 gs=9 bench=106837541 baseline=166989640 */
  if (l <= 557) { *bs = 14; *gs = 9; return 1; }
  /* l=563: bs=14 gs=10 bench=99091430 baseline=168814445 */
  /* l=569: bs=14 gs=10 bench=100902211 baseline=170306569 */
  /* l=571: bs=14 gs=10 bench=101485156 baseline=171376543 */
  /* l=577: bs=14 gs=10 bench=103277128 baseline=172544661 */
  /* l=587: bs=14 gs=10 bench=106241854 baseline=175961870 */
  /* l=593: bs=14 gs=10 bench=107759446 baseline=177335086 */
  /* l=599: bs=14 gs=10 bench=109511556 baseline=179444708 */
  /* l=601: bs=14 gs=10 bench=110079722 baseline=179814649 */
  /* l=607: bs=14 gs=10 bench=111900734 baseline=182123951 */
  /* l=613: bs=14 gs=10 bench=113627327 baseline=183697436 */
  if (l <= 613) { *bs = 14; *gs = 10; return 1; }
  /* l=617: bs=14 gs=11 bench=106665354 baseline=184552701 */
  /* l=619: bs=14 gs=11 bench=106954937 baseline=185585813 */
  /* l=631: bs=14 gs=11 bench=110494391 baseline=188915674 */
  if (l <= 631) { *bs = 14; *gs = 11; return 1; }
  /* l=641: bs=16 gs=10 bench=110873096 baseline=191958904 */
  /* l=643: bs=16 gs=10 bench=111244859 baseline=192718007 */
  /* l=647: bs=16 gs=10 bench=112364918 baseline=193500192 */
  /* l=653: bs=16 gs=10 bench=114201133 baseline=195504131 */
  /* l=659: bs=16 gs=10 bench=116072608 baseline=197395835 */
  /* l=661: bs=16 gs=10 bench=116578745 baseline=197868586 */
  if (l <= 661) { *bs = 16; *gs = 10; return 1; }
  /* l=673: bs=14 gs=12 bench=113022595 baseline=201089035 */
  /* l=677: bs=14 gs=12 bench=113877560 baseline=202657215 */
  /* l=683: bs=14 gs=12 bench=115698823 baseline=204612714 */
  /* l=691: bs=14 gs=12 bench=118142297 baseline=207171203 */
  /* l=701: bs=14 gs=12 bench=120699571 baseline=209981540 */
  if (l <= 701) { *bs = 14; *gs = 12; return 1; }
  /* l=709: bs=16 gs=11 bench=119818814 baseline=212137754 */
  /* l=719: bs=16 gs=11 bench=122682818 baseline=215334838 */
  /* l=727: bs=16 gs=11 bench=125088255 baseline=217418438 */
  if (l <= 727) { *bs = 16; *gs = 11; return 1; }
  /* l=733: bs=14 gs=13 bench=124486084 baseline=219489563 */
  /* l=739: bs=14 gs=13 bench=126283251 baseline=221279492 */
  /* l=743: bs=14 gs=13 bench=127466827 baseline=222269225 */
  /* l=751: bs=14 gs=13 bench=129819047 baseline=224655193 */
  /* l=757: bs=14 gs=13 bench=131263250 baseline=226629019 */
  /* l=761: bs=14 gs=13 bench=132465173 baseline=227610367 */
  if (l <= 761) { *bs = 14; *gs = 13; return 1; }
  /* l=769: bs=16 gs=12 bench=125319605 baseline=229520459 */
  /* l=773: bs=16 gs=12 bench=126163496 baseline=231096285 */
  /* l=787: bs=16 gs=12 bench=130393484 baseline=235464834 */
  /* l=797: bs=16 gs=12 bench=133344366 baseline=238431740 */
  /* l=809: bs=16 gs=12 bench=136545681 baseline=241614432 */
  /* l=811: bs=16 gs=12 bench=137138351 baseline=242771066 */
  /* l=821: bs=16 gs=12 bench=140189755 baseline=245573366 */
  /* l=823: bs=16 gs=12 bench=140783107 baseline=245950302 */
  /* l=827: bs=16 gs=12 bench=141955153 baseline=247607588 */
  /* l=829: bs=16 gs=12 bench=142564684 baseline=248106792 */
  if (l <= 829) { *bs = 16; *gs = 12; return 1; }
  /* l=839: bs=16 gs=13 bench=137327189 baseline=250880148 */
  /* l=853: bs=16 gs=13 bench=141566648 baseline=255105622 */
  /* l=857: bs=16 gs=13 bench=142684023 baseline=255976292 */
  /* l=859: bs=16 gs=13 bench=143282085 baseline=257128180 */
  /* l=863: bs=16 gs=13 bench=144481375 baseline=258003313 */
  if (l <= 863) { *bs = 16; *gs = 13; return 1; }
  /* l=877: bs=18 gs=12 bench=145028878 baseline=262395516 */
  /* l=881: bs=18 gs=12 bench=146248665 baseline=263082710 */
  /* l=883: bs=18 gs=12 bench=146899974 baseline=264226135 */
  /* l=887: bs=18 gs=12 bench=147952896 baseline=265188493 */
  if (l <= 887) { *bs = 18; *gs = 12; return 1; }
  /* l=907: bs=16 gs=14 bench=147477777 baseline=271775041 */
  /* l=911: bs=16 gs=14 bench=148578165 baseline=272167467 */
  /* l=919: bs=16 gs=14 bench=150942866 baseline=274492612 */
  /* l=929: bs=16 gs=14 bench=153721914 baseline=277221874 */
  if (l <= 929) { *bs = 16; *gs = 14; return 1; }
  /* l=937: bs=18 gs=13 bench=152374350 baseline=279748578 */
  /* l=941: bs=18 gs=13 bench=153382816 baseline=282683245 */
  /* l=947: bs=18 gs=13 bench=155092829 baseline=292080057 */
  /* l=953: bs=18 gs=13 bench=156818543 baseline=284584758 */
  if (l <= 953) { *bs = 18; *gs = 13; return 1; }
  /* l=967: bs=20 gs=12 bench=157984638 baseline=288861550 */
  /* l=971: bs=20 gs=12 bench=159183557 baseline=290511161 */
  /* l=977: bs=20 gs=12 bench=161056716 baseline=291642509 */
  /* l=983: bs=20 gs=12 bench=162675778 baseline=293586757 */
  /* l=991: bs=20 gs=12 bench=165182579 baseline=296059180 */
  /* l=997: bs=20 gs=12 bench=166904109 baseline=298052836 */
  if (l <= 997) { *bs = 20; *gs = 12; return 1; }
  /* l=1009: bs=18 gs=14 bench=161145058 baseline=301233225 */
  /* l=1013: bs=18 gs=14 bench=162139329 baseline=302884627 */
  /* l=1019: bs=18 gs=14 bench=163855909 baseline=304929936 */
  /* l=1021: bs=18 gs=14 bench=164555695 baseline=305333487 */
  if (l <= 1021) { *bs = 18; *gs = 14; return 1; }
  /* l=1031: bs=16 gs=16 bench=166497665 baseline=307562940 */
  /* l=1033: bs=16 gs=16 bench=167312010 baseline=308034624 */
  /* l=1039: bs=16 gs=16 bench=168882854 baseline=310058321 */
  if (l <= 1039) { *bs = 16; *gs = 16; return 1; }
  /* l=1049: bs=20 gs=13 bench=169634306 baseline=312902301 */
  /* l=1051: bs=20 gs=13 bench=170845134 baseline=314121818 */
  if (l <= 1051) { *bs = 20; *gs = 13; return 1; }
  /* l=1061: bs=22 gs=12 bench=169758221 baseline=318376855 */
  /* l=1063: bs=22 gs=12 bench=170290389 baseline=318709913 */
  /* l=1069: bs=22 gs=12 bench=172093196 baseline=320850225 */
  if (l <= 1069) { *bs = 22; *gs = 12; return 1; }
  /* l=1087: bs=18 gs=15 bench=176438830 baseline=326034643 */
  /* l=1091: bs=18 gs=15 bench=177800205 baseline=327461715 */
  /* l=1093: bs=18 gs=15 bench=178344363 baseline=327905781 */
  /* l=1097: bs=18 gs=15 bench=179478384 baseline=328807693 */
  /* l=1103: bs=18 gs=15 bench=181270301 baseline=330832311 */
  /* l=1109: bs=18 gs=15 bench=183129346 baseline=332765399 */
  /* l=1117: bs=18 gs=15 bench=185184626 baseline=335264743 */
  if (l <= 1117) { *bs = 18; *gs = 15; return 1; }
  /* l=1123: bs=20 gs=14 bench=177311986 baseline=337120573 */
  /* l=1129: bs=20 gs=14 bench=179065385 baseline=338380947 */
  if (l <= 1129) { *bs = 20; *gs = 14; return 1; }
  /* l=1151: bs=22 gs=13 bench=181136984 baseline=345301755 */
  /* l=1153: bs=22 gs=13 bench=181641847 baseline=345356959 */
  /* l=1163: bs=22 gs=13 bench=184650644 baseline=349062837 */
  /* l=1171: bs=22 gs=13 bench=187010072 baseline=351554884 */
  /* l=1181: bs=22 gs=13 bench=190007211 baseline=354393546 */
  /* l=1187: bs=22 gs=13 bench=192240155 baseline=356371152 */
  /* l=1193: bs=22 gs=13 bench=193717158 baseline=358315604 */
  if (l <= 1193) { *bs = 22; *gs = 13; return 1; }
  /* l=1201: bs=20 gs=15 bench=190180899 baseline=360685801 */
  /* l=1213: bs=20 gs=15 bench=193564097 baseline=364836778 */
  /* l=1217: bs=20 gs=15 bench=196166291 baseline=366925389 */
  /* l=1223: bs=20 gs=15 bench=198038839 baseline=370151500 */
  if (l <= 1223) { *bs = 20; *gs = 15; return 1; }
  /* l=1229: bs=18 gs=17 bench=197876287 baseline=372475245 */
  /* l=1231: bs=18 gs=17 bench=198383610 baseline=372786819 */
  if (l <= 1231) { *bs = 18; *gs = 17; return 1; }
  /* l=1237: bs=22 gs=14 bench=191162424 baseline=374750076 */
  /* l=1249: bs=22 gs=14 bench=194752432 baseline=378035456 */
  /* l=1259: bs=22 gs=14 bench=197787941 baseline=381939410 */
  /* l=1277: bs=22 gs=14 bench=202943415 baseline=387033637 */
  /* l=1279: bs=22 gs=14 bench=203576331 baseline=387326021 */
  if (l <= 1279) { *bs = 22; *gs = 14; return 1; }
  /* l=1283: bs=20 gs=16 bench=199410262 baseline=388649500 */
  /* l=1289: bs=20 gs=16 bench=201420234 baseline=389868996 */
  /* l=1291: bs=20 gs=16 bench=201733074 baseline=391332112 */
  /* l=1297: bs=20 gs=16 bench=203609507 baseline=392447948 */
  /* l=1301: bs=20 gs=16 bench=204787040 baseline=394100193 */
  /* l=1303: bs=20 gs=16 bench=205443458 baseline=394474282 */
  /* l=1307: bs=20 gs=16 bench=206615718 baseline=396183863 */
  /* l=1319: bs=20 gs=16 bench=210255118 baseline=399143371 */
  if (l <= 1319) { *bs = 20; *gs = 16; return 1; }
  /* l=1321: bs=22 gs=15 bench=203266591 baseline=399675900 */
  /* l=1327: bs=22 gs=15 bench=204630043 baseline=401749088 */
  if (l <= 1327) { *bs = 22; *gs = 15; return 1; }
  /* l=1361: bs=24 gs=14 bench=211823396 baseline=411801470 */
  if (l <= 1361) { *bs = 24; *gs = 14; return 1; }
  /* l=1367: bs=20 gs=17 bench=213317771 baseline=413712223 */
  /* l=1373: bs=20 gs=17 bench=215111640 baseline=415930525 */
  /* l=1381: bs=20 gs=17 bench=217491108 baseline=418235526 */
  if (l <= 1381) { *bs = 20; *gs = 17; return 1; }
  /* l=1399: bs=24 gs=14 bench=222794876 baseline=423597973 */
  if (l <= 1399) { *bs = 24; *gs = 14; return 1; }
  /* l=1409: bs=22 gs=16 bench=210655151 baseline=426143542 */
  /* l=1423: bs=22 gs=16 bench=214483216 baseline=430596747 */
  /* l=1427: bs=22 gs=16 bench=215785749 baseline=432470788 */
  /* l=1429: bs=22 gs=16 bench=216343753 baseline=432884531 */
  /* l=1433: bs=22 gs=16 bench=217729314 baseline=433539495 */
  /* l=1439: bs=22 gs=16 bench=219315208 baseline=435551483 */
  if (l <= 1439) { *bs = 22; *gs = 16; return 1; }
  /* l=1447: bs=24 gs=15 bench=221628946 baseline=437799492 */
  /* l=1451: bs=24 gs=15 bench=222939358 baseline=439803181 */
  if (l <= 1451) { *bs = 24; *gs = 15; return 1; }
  /* l=1453: bs=22 gs=16 bench=223247318 baseline=440022570 */
  /* l=1459: bs=22 gs=16 bench=225161323 baseline=442559023 */
  /* l=1471: bs=22 gs=16 bench=228641430 baseline=445476139 */
  if (l <= 1471) { *bs = 22; *gs = 16; return 1; }
  /* l=1481: bs=20 gs=18 bench=231746579 baseline=448013501 */
  /* l=1483: bs=20 gs=18 bench=232267474 baseline=449347616 */
  /* l=1487: bs=20 gs=18 bench=233479541 baseline=450005957 */
  if (l <= 1487) { *bs = 20; *gs = 18; return 1; }
  /* l=1489: bs=24 gs=15 bench=234198714 baseline=450387180 */
  /* l=1493: bs=24 gs=15 bench=235180343 baseline=452141829 */
  if (l <= 1493) { *bs = 24; *gs = 15; return 1; }
  /* l=1499: bs=22 gs=17 bench=223681302 baseline=454373037 */
  /* l=1511: bs=22 gs=17 bench=227207292 baseline=457428294 */
  /* l=1523: bs=22 gs=17 bench=230828528 baseline=461524915 */
  /* l=1531: bs=22 gs=17 bench=233323770 baseline=464228114 */
  if (l <= 1531) { *bs = 22; *gs = 17; return 1; }
  /* l=1543: bs=24 gs=16 bench=229057173 baseline=466565159 */
  /* l=1549: bs=24 gs=16 bench=230794626 baseline=469340938 */
  /* l=1553: bs=24 gs=16 bench=232124194 baseline=469619822 */
  /* l=1559: bs=24 gs=16 bench=233857771 baseline=471610606 */
  if (l <= 1559) { *bs = 24; *gs = 16; return 1; }
  /* l=1567: bs=30 gs=13 bench=231780114 baseline=473945297 */
  /* l=1571: bs=30 gs=13 bench=232963091 baseline=475978865 */
  /* l=1579: bs=30 gs=13 bench=235412550 baseline=478492370 */
  /* l=1583: bs=30 gs=13 bench=236746301 baseline=479487352 */
  if (l <= 1583) { *bs = 30; *gs = 13; return 1; }
  /* l=1597: bs=22 gs=18 bench=235021468 baseline=483696354 */
  /* l=1601: bs=22 gs=18 bench=236331971 baseline=483941339 */
  /* l=1607: bs=22 gs=18 bench=238122966 baseline=486125466 */
  /* l=1609: bs=22 gs=18 bench=238764117 baseline=486432255 */
  /* l=1613: bs=22 gs=18 bench=239979965 baseline=488341855 */
  /* l=1619: bs=22 gs=18 bench=241808195 baseline=490306891 */
  /* l=1621: bs=22 gs=18 bench=242350267 baseline=490669413 */
  /* l=1627: bs=22 gs=18 bench=244245012 baseline=493031970 */
  if (l <= 1627) { *bs = 22; *gs = 18; return 1; }
  /* l=1637: bs=24 gs=17 bench=241268469 baseline=495508320 */
  /* l=1657: bs=24 gs=17 bench=247198775 baseline=501125334 */
  /* l=1663: bs=24 gs=17 bench=249060118 baseline=503100939 */
  /* l=1667: bs=24 gs=17 bench=250393653 baseline=504812095 */
  /* l=1669: bs=24 gs=17 bench=250856992 baseline=505032111 */
  if (l <= 1669) { *bs = 24; *gs = 17; return 1; }
  /* l=1693: bs=30 gs=14 bench=236995361 baseline=512594383 */
  /* l=1697: bs=30 gs=14 bench=237990340 baseline=512977683 */
  /* l=1699: bs=30 gs=14 bench=238636480 baseline=514600892 */
  if (l <= 1699) { *bs = 30; *gs = 14; return 1; }
  /* l=1999: bs=30 gs=16 bench=274097652 baseline=604676667 */
  if (l <= 1999) { *bs = 30; *gs = 16; return 1; }
  return 0;
}
