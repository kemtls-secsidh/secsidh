#include "steps.h"

int steps_guess(long long *bs,long long *gs,long long l)
{
  /* l=3: bs=0 gs=0 bench=1006371 baseline=929486 */
  /* l=5: bs=0 gs=0 bench=1202966 baseline=1194497 */
  /* l=7: bs=0 gs=0 bench=1600891 baseline=1662017 */
  /* l=11: bs=0 gs=0 bench=2427168 baseline=2530520 */
  /* l=13: bs=0 gs=0 bench=2804300 baseline=2919327 */
  /* l=17: bs=0 gs=0 bench=3600543 baseline=3744020 */
  /* l=19: bs=0 gs=0 bench=4001988 baseline=4178874 */
  /* l=23: bs=0 gs=0 bench=4798553 baseline=5071205 */
  /* l=29: bs=0 gs=0 bench=5995447 baseline=6233625 */
  /* l=31: bs=0 gs=0 bench=6391994 baseline=6711376 */
  /* l=37: bs=0 gs=0 bench=7595539 baseline=7830688 */
  /* l=41: bs=0 gs=0 bench=8393056 baseline=8628091 */
  /* l=43: bs=0 gs=0 bench=8790092 baseline=9095812 */
  /* l=47: bs=0 gs=0 bench=9585797 baseline=9968543 */
  /* l=53: bs=0 gs=0 bench=10787136 baseline=11077657 */
  /* l=59: bs=0 gs=0 bench=11994339 baseline=12353628 */
  /* l=61: bs=0 gs=0 bench=12475066 baseline=12739963 */
  /* l=67: bs=0 gs=0 bench=13784566 baseline=13873271 */
  /* l=71: bs=0 gs=0 bench=14583503 baseline=14735947 */
  /* l=73: bs=0 gs=0 bench=14980830 baseline=15067041 */
  /* l=79: bs=0 gs=0 bench=16169718 baseline=16421989 */
  /* l=83: bs=0 gs=0 bench=16964889 baseline=17125524 */
  /* l=89: bs=0 gs=0 bench=18171741 baseline=18304941 */
  if (l <= 89) { *bs = 0; *gs = 0; return 1; }
  /* l=97: bs=6 gs=4 bench=18862434 baseline=19885448 */
  /* l=101: bs=6 gs=4 bench=19458307 baseline=20697740 */
  /* l=103: bs=6 gs=4 bench=19852424 baseline=21166426 */
  /* l=107: bs=6 gs=4 bench=20669311 baseline=21983675 */
  /* l=109: bs=6 gs=4 bench=20879875 baseline=22358233 */
  /* l=113: bs=6 gs=4 bench=21697902 baseline=23117813 */
  if (l <= 113) { *bs = 6; *gs = 4; return 1; }
  /* l=127: bs=6 gs=5 bench=23611273 baseline=26136510 */
  if (l <= 127) { *bs = 6; *gs = 5; return 1; }
  /* l=131: bs=8 gs=4 bench=23942167 baseline=26681137 */
  /* l=137: bs=8 gs=4 bench=25146069 baseline=27881225 */
  /* l=139: bs=8 gs=4 bench=25563330 baseline=28373296 */
  if (l <= 139) { *bs = 8; *gs = 4; return 1; }
  /* l=149: bs=6 gs=6 bench=26646727 baseline=30318873 */
  /* l=151: bs=6 gs=6 bench=27052961 baseline=30804341 */
  /* l=157: bs=6 gs=6 bench=28032500 baseline=31998000 */
  if (l <= 157) { *bs = 6; *gs = 6; return 1; }
  /* l=163: bs=8 gs=5 bench=27772932 baseline=33114513 */
  /* l=167: bs=8 gs=5 bench=28568108 baseline=33994317 */
  /* l=173: bs=8 gs=5 bench=29774681 baseline=35175303 */
  /* l=179: bs=8 gs=5 bench=30791426 baseline=36377826 */
  /* l=181: bs=8 gs=5 bench=31216675 baseline=36774152 */
  /* l=191: bs=8 gs=5 bench=33166718 baseline=38997810 */
  if (l <= 191) { *bs = 8; *gs = 5; return 1; }
  /* l=193: bs=8 gs=6 bench=31136023 baseline=39098123 */
  /* l=197: bs=8 gs=6 bench=31683106 baseline=39896195 */
  /* l=199: bs=8 gs=6 bench=32065266 baseline=40361012 */
  /* l=211: bs=8 gs=6 bench=34279300 baseline=42759329 */
  /* l=223: bs=8 gs=6 bench=36629924 baseline=45388595 */
  if (l <= 223) { *bs = 8; *gs = 6; return 1; }
  /* l=227: bs=8 gs=7 bench=36343036 baseline=45950800 */
  /* l=229: bs=8 gs=7 bench=36726648 baseline=46410272 */
  /* l=233: bs=8 gs=7 bench=37529330 baseline=47161994 */
  /* l=239: bs=8 gs=7 bench=38731814 baseline=48572808 */
  if (l <= 239) { *bs = 8; *gs = 7; return 1; }
  /* l=241: bs=10 gs=6 bench=37347493 baseline=48786849 */
  /* l=251: bs=10 gs=6 bench=39148653 baseline=50921648 */
  if (l <= 251) { *bs = 10; *gs = 6; return 1; }
  /* l=257: bs=8 gs=8 bench=40222060 baseline=51850672 */
  /* l=263: bs=8 gs=8 bench=41218416 baseline=53108158 */
  /* l=269: bs=8 gs=8 bench=42432320 baseline=54309519 */
  /* l=271: bs=8 gs=8 bench=42799051 baseline=54899293 */
  /* l=277: bs=8 gs=8 bench=43812150 baseline=55897666 */
  if (l <= 277) { *bs = 8; *gs = 8; return 1; }
  /* l=281: bs=10 gs=7 bench=42627747 baseline=56691021 */
  /* l=283: bs=10 gs=7 bench=42849962 baseline=57223937 */
  if (l <= 283) { *bs = 10; *gs = 7; return 1; }
  /* l=293: bs=12 gs=6 bench=44414150 baseline=59101316 */
  /* l=307: bs=12 gs=6 bench=47181456 baseline=61944599 */
  /* l=311: bs=12 gs=6 bench=47990959 baseline=62802086 */
  /* l=313: bs=12 gs=6 bench=48224508 baseline=63147820 */
  /* l=317: bs=12 gs=6 bench=49036432 baseline=64002232 */
  if (l <= 317) { *bs = 12; *gs = 6; return 1; }
  /* l=337: bs=14 gs=6 bench=48721610 baseline=67969261 */
  /* l=347: bs=14 gs=6 bench=50485647 baseline=70034205 */
  /* l=349: bs=14 gs=6 bench=50918337 baseline=70362881 */
  /* l=353: bs=14 gs=6 bench=51700089 baseline=71149725 */
  /* l=359: bs=14 gs=6 bench=52893823 baseline=72381896 */
  if (l <= 359) { *bs = 14; *gs = 6; return 1; }
  /* l=367: bs=10 gs=9 bench=52787389 baseline=74215443 */
  /* l=373: bs=10 gs=9 bench=53988871 baseline=75168937 */
  /* l=379: bs=10 gs=9 bench=55189396 baseline=76489559 */
  /* l=383: bs=10 gs=9 bench=55827746 baseline=77458765 */
  if (l <= 383) { *bs = 10; *gs = 9; return 1; }
  /* l=389: bs=12 gs=8 bench=53464519 baseline=78219752 */
  if (l <= 389) { *bs = 12; *gs = 8; return 1; }
  /* l=397: bs=14 gs=7 bench=53293464 baseline=79839113 */
  /* l=401: bs=14 gs=7 bench=54049521 baseline=80726255 */
  /* l=409: bs=14 gs=7 bench=55708638 baseline=82265736 */
  /* l=419: bs=14 gs=7 bench=57675275 baseline=84237290 */
  /* l=421: bs=14 gs=7 bench=57829217 baseline=84660371 */
  /* l=431: bs=14 gs=7 bench=59860473 baseline=86983520 */
  if (l <= 431) { *bs = 14; *gs = 7; return 1; }
  /* l=433: bs=12 gs=9 bench=58095712 baseline=87181421 */
  /* l=439: bs=12 gs=9 bench=59097501 baseline=88385539 */
  /* l=443: bs=12 gs=9 bench=59902377 baseline=89252496 */
  if (l <= 443) { *bs = 12; *gs = 9; return 1; }
  /* l=449: bs=14 gs=8 bench=56708429 baseline=90313247 */
  /* l=457: bs=14 gs=8 bench=58188142 baseline=91848271 */
  /* l=461: bs=14 gs=8 bench=58928803 baseline=92689299 */
  /* l=463: bs=14 gs=8 bench=59367373 baseline=93389268 */
  /* l=467: bs=14 gs=8 bench=60148812 baseline=93882918 */
  /* l=479: bs=14 gs=8 bench=62393842 baseline=96687145 */
  if (l <= 479) { *bs = 14; *gs = 8; return 1; }
  /* l=487: bs=12 gs=10 bench=63781764 baseline=97936063 */
  /* l=491: bs=12 gs=10 bench=64581262 baseline=98808058 */
  /* l=499: bs=12 gs=10 bench=66153445 baseline=100330387 */
  /* l=503: bs=12 gs=10 bench=66945079 baseline=101206312 */
  if (l <= 503) { *bs = 12; *gs = 10; return 1; }
  /* l=509: bs=14 gs=9 bench=62638725 baseline=102376015 */
  /* l=521: bs=14 gs=9 bench=65087543 baseline=104548110 */
  /* l=523: bs=14 gs=9 bench=65446954 baseline=105059279 */
  /* l=541: bs=14 gs=9 bench=68846366 baseline=108688524 */
  /* l=547: bs=14 gs=9 bench=70058374 baseline=109883482 */
  /* l=557: bs=14 gs=9 bench=72056845 baseline=112387528 */
  if (l <= 557) { *bs = 14; *gs = 9; return 1; }
  /* l=563: bs=14 gs=10 bench=66887096 baseline=113297815 */
  /* l=569: bs=14 gs=10 bench=68154406 baseline=114589451 */
  /* l=571: bs=14 gs=10 bench=68483348 baseline=115362216 */
  /* l=577: bs=14 gs=10 bench=69718885 baseline=115843222 */
  /* l=587: bs=14 gs=10 bench=71724404 baseline=117916018 */
  /* l=593: bs=14 gs=10 bench=72730426 baseline=119100643 */
  /* l=599: bs=14 gs=10 bench=73864433 baseline=120310796 */
  /* l=601: bs=14 gs=10 bench=74371400 baseline=120604992 */
  /* l=607: bs=14 gs=10 bench=75491557 baseline=122202206 */
  /* l=613: bs=14 gs=10 bench=76702542 baseline=122977568 */
  if (l <= 613) { *bs = 14; *gs = 10; return 1; }
  /* l=617: bs=14 gs=11 bench=72082184 baseline=123782532 */
  /* l=619: bs=14 gs=11 bench=72226952 baseline=124342038 */
  /* l=631: bs=14 gs=11 bench=74590125 baseline=126671367 */
  if (l <= 631) { *bs = 14; *gs = 11; return 1; }
  /* l=641: bs=16 gs=10 bench=74920659 baseline=128597867 */
  /* l=643: bs=16 gs=10 bench=75043982 baseline=128903707 */
  /* l=647: bs=16 gs=10 bench=75828070 baseline=129789557 */
  /* l=653: bs=16 gs=10 bench=77080094 baseline=130888684 */
  /* l=659: bs=16 gs=10 bench=78260201 baseline=132128431 */
  /* l=661: bs=16 gs=10 bench=78652608 baseline=132506075 */
  if (l <= 661) { *bs = 16; *gs = 10; return 1; }
  /* l=673: bs=14 gs=12 bench=76337857 baseline=135070233 */
  /* l=677: bs=14 gs=12 bench=76976574 baseline=135711845 */
  /* l=683: bs=14 gs=12 bench=78186704 baseline=137108564 */
  /* l=691: bs=14 gs=12 bench=79782435 baseline=138590902 */
  /* l=701: bs=14 gs=12 bench=81527491 baseline=140607604 */
  if (l <= 701) { *bs = 14; *gs = 12; return 1; }
  /* l=709: bs=16 gs=11 bench=80875940 baseline=142068675 */
  /* l=719: bs=16 gs=11 bench=82913770 baseline=144577830 */
  /* l=727: bs=16 gs=11 bench=84473577 baseline=145818580 */
  if (l <= 727) { *bs = 16; *gs = 11; return 1; }
  /* l=733: bs=14 gs=13 bench=84107955 baseline=146967669 */
  /* l=739: bs=14 gs=13 bench=85269503 baseline=148125683 */
  /* l=743: bs=14 gs=13 bench=86051135 baseline=149010013 */
  /* l=751: bs=14 gs=13 bench=87741507 baseline=151012907 */
  /* l=757: bs=14 gs=13 bench=88653326 baseline=151768914 */
  /* l=761: bs=14 gs=13 bench=89474037 baseline=152607224 */
  if (l <= 761) { *bs = 14; *gs = 13; return 1; }
  /* l=769: bs=16 gs=12 bench=84638167 baseline=154172448 */
  /* l=773: bs=16 gs=12 bench=85269848 baseline=154782371 */
  /* l=787: bs=16 gs=12 bench=88079901 baseline=157633038 */
  /* l=797: bs=16 gs=12 bench=90109237 baseline=159654389 */
  /* l=809: bs=16 gs=12 bench=92299260 baseline=162054355 */
  /* l=811: bs=16 gs=12 bench=92661796 baseline=162629022 */
  /* l=821: bs=16 gs=12 bench=94805351 baseline=164449203 */
  /* l=823: bs=16 gs=12 bench=95095652 baseline=164943272 */
  /* l=827: bs=16 gs=12 bench=95873997 baseline=165881171 */
  /* l=829: bs=16 gs=12 bench=96249750 baseline=166139450 */
  if (l <= 829) { *bs = 16; *gs = 12; return 1; }
  /* l=839: bs=16 gs=13 bench=93171649 baseline=168056692 */
  /* l=853: bs=16 gs=13 bench=96099447 baseline=171680388 */
  /* l=857: bs=16 gs=13 bench=96854948 baseline=172476973 */
  /* l=859: bs=16 gs=13 bench=97178694 baseline=173044748 */
  /* l=863: bs=16 gs=13 bench=97992761 baseline=174210315 */
  if (l <= 863) { *bs = 16; *gs = 13; return 1; }
  /* l=877: bs=18 gs=12 bench=98384253 baseline=176497882 */
  /* l=881: bs=18 gs=12 bench=99210679 baseline=177525483 */
  /* l=883: bs=18 gs=12 bench=99579794 baseline=177715037 */
  /* l=887: bs=18 gs=12 bench=100389913 baseline=178611642 */
  if (l <= 887) { *bs = 18; *gs = 12; return 1; }
  /* l=907: bs=16 gs=14 bench=100006282 baseline=182624077 */
  /* l=911: bs=16 gs=14 bench=100769072 baseline=183768488 */
  /* l=919: bs=16 gs=14 bench=102361882 baseline=185036723 */
  /* l=929: bs=16 gs=14 bench=104246681 baseline=187081337 */
  if (l <= 929) { *bs = 16; *gs = 14; return 1; }
  /* l=937: bs=18 gs=13 bench=103335058 baseline=188492657 */
  /* l=941: bs=18 gs=13 bench=103925954 baseline=189323630 */
  /* l=947: bs=18 gs=13 bench=105128486 baseline=190519148 */
  /* l=953: bs=18 gs=13 bench=106391523 baseline=191799562 */
  if (l <= 953) { *bs = 18; *gs = 13; return 1; }
  /* l=967: bs=20 gs=12 bench=107145019 baseline=194583395 */
  /* l=971: bs=20 gs=12 bench=108070368 baseline=195496766 */
  /* l=977: bs=20 gs=12 bench=109170017 baseline=196770035 */
  /* l=983: bs=20 gs=12 bench=110384708 baseline=198061502 */
  /* l=991: bs=20 gs=12 bench=111967915 baseline=199972413 */
  /* l=997: bs=20 gs=12 bench=113151732 baseline=200533546 */
  if (l <= 997) { *bs = 20; *gs = 12; return 1; }
  /* l=1009: bs=18 gs=14 bench=109365479 baseline=203223203 */
  /* l=1013: bs=18 gs=14 bench=109971699 baseline=203830467 */
  /* l=1019: bs=18 gs=14 bench=111179019 baseline=205235045 */
  /* l=1021: bs=18 gs=14 bench=111533803 baseline=205482277 */
  if (l <= 1021) { *bs = 18; *gs = 14; return 1; }
  /* l=1031: bs=16 gs=16 bench=112928147 baseline=207211145 */
  /* l=1033: bs=16 gs=16 bench=113354121 baseline=207576654 */
  /* l=1039: bs=16 gs=16 bench=114599630 baseline=209371017 */
  if (l <= 1039) { *bs = 16; *gs = 16; return 1; }
  /* l=1049: bs=20 gs=13 bench=114902818 baseline=210859571 */
  /* l=1051: bs=20 gs=13 bench=115341252 baseline=211430925 */
  if (l <= 1051) { *bs = 20; *gs = 13; return 1; }
  /* l=1061: bs=22 gs=12 bench=114585921 baseline=213218107 */
  /* l=1063: bs=22 gs=12 bench=115037032 baseline=213672563 */
  /* l=1069: bs=22 gs=12 bench=116204778 baseline=214848899 */
  if (l <= 1069) { *bs = 22; *gs = 12; return 1; }
  /* l=1087: bs=18 gs=15 bench=119130304 baseline=219120215 */
  /* l=1091: bs=18 gs=15 bench=119925306 baseline=219187461 */
  /* l=1093: bs=18 gs=15 bench=120393502 baseline=219637815 */
  /* l=1097: bs=18 gs=15 bench=121167801 baseline=220449733 */
  /* l=1103: bs=18 gs=15 bench=122379007 baseline=222404685 */
  /* l=1109: bs=18 gs=15 bench=123548051 baseline=222915813 */
  /* l=1117: bs=18 gs=15 bench=124958112 baseline=224508093 */
  if (l <= 1117) { *bs = 18; *gs = 15; return 1; }
  /* l=1123: bs=20 gs=14 bench=119712295 baseline=225714090 */
  /* l=1129: bs=20 gs=14 bench=120894131 baseline=226903901 */
  if (l <= 1129) { *bs = 20; *gs = 14; return 1; }
  /* l=1151: bs=22 gs=13 bench=122163278 baseline=232017514 */
  /* l=1153: bs=22 gs=13 bench=122622862 baseline=231940548 */
  /* l=1163: bs=22 gs=13 bench=124662491 baseline=233874864 */
  /* l=1171: bs=22 gs=13 bench=126238152 baseline=235322724 */
  /* l=1181: bs=22 gs=13 bench=128271108 baseline=237319071 */
  /* l=1187: bs=22 gs=13 bench=129437722 baseline=238599329 */
  /* l=1193: bs=22 gs=13 bench=130528278 baseline=239748209 */
  if (l <= 1193) { *bs = 22; *gs = 13; return 1; }
  /* l=1201: bs=20 gs=15 bench=128247759 baseline=242027150 */
  /* l=1213: bs=20 gs=15 bench=130328210 baseline=243765191 */
  /* l=1217: bs=20 gs=15 bench=131099818 baseline=244812264 */
  /* l=1223: bs=20 gs=15 bench=132461102 baseline=245776918 */
  if (l <= 1223) { *bs = 20; *gs = 15; return 1; }
  /* l=1229: bs=18 gs=17 bench=132284232 baseline=246907105 */
  /* l=1231: bs=18 gs=17 bench=132630058 baseline=248040452 */
  if (l <= 1231) { *bs = 18; *gs = 17; return 1; }
  /* l=1237: bs=22 gs=14 bench=127804713 baseline=248558293 */
  /* l=1249: bs=22 gs=14 bench=130191463 baseline=251295518 */
  /* l=1259: bs=22 gs=14 bench=132241666 baseline=253252098 */
  /* l=1277: bs=22 gs=14 bench=135663603 baseline=257811227 */
  /* l=1279: bs=22 gs=14 bench=136021781 baseline=257758800 */
  if (l <= 1279) { *bs = 22; *gs = 14; return 1; }
  /* l=1283: bs=20 gs=16 bench=133338063 baseline=257659800 */
  /* l=1289: bs=20 gs=16 bench=134530404 baseline=258875814 */
  /* l=1291: bs=20 gs=16 bench=134895858 baseline=259525975 */
  /* l=1297: bs=20 gs=16 bench=136137315 baseline=260981427 */
  /* l=1301: bs=20 gs=16 bench=136941177 baseline=261336197 */
  /* l=1303: bs=20 gs=16 bench=137380548 baseline=261785301 */
  /* l=1307: bs=20 gs=16 bench=138134574 baseline=262770124 */
  /* l=1319: bs=20 gs=16 bench=140518935 baseline=265007239 */
  if (l <= 1319) { *bs = 20; *gs = 16; return 1; }
  /* l=1321: bs=22 gs=15 bench=135790978 baseline=265293464 */
  /* l=1327: bs=22 gs=15 bench=136835270 baseline=267287796 */
  if (l <= 1327) { *bs = 22; *gs = 15; return 1; }
  /* l=1361: bs=24 gs=14 bench=141489047 baseline=273728763 */
  if (l <= 1361) { *bs = 24; *gs = 14; return 1; }
  /* l=1367: bs=20 gs=17 bench=142577029 baseline=274648472 */
  /* l=1373: bs=20 gs=17 bench=143862083 baseline=275808860 */
  /* l=1381: bs=20 gs=17 bench=145386027 baseline=277400516 */
  /* l=1399: bs=20 gs=17 bench=149001398 baseline=281099261 */
  if (l <= 1399) { *bs = 20; *gs = 17; return 1; }
  /* l=1409: bs=22 gs=16 bench=140933743 baseline=283246523 */
  /* l=1423: bs=22 gs=16 bench=143388899 baseline=286503498 */
  /* l=1427: bs=22 gs=16 bench=144325025 baseline=286647167 */
  /* l=1429: bs=22 gs=16 bench=144540451 baseline=287044486 */
  /* l=1433: bs=22 gs=16 bench=145447245 baseline=287818572 */
  /* l=1439: bs=22 gs=16 bench=146684854 baseline=289819694 */
  /* l=1447: bs=22 gs=16 bench=148179619 baseline=290663520 */
  if (l <= 1447) { *bs = 22; *gs = 16; return 1; }
  /* l=1451: bs=24 gs=15 bench=148967950 baseline=291683360 */
  if (l <= 1451) { *bs = 24; *gs = 15; return 1; }
  /* l=1453: bs=22 gs=16 bench=151400546 baseline=291818981 */
  if (l <= 1453) { *bs = 22; *gs = 16; return 1; }
  /* l=1459: bs=24 gs=15 bench=152751495 baseline=297479896 */
  if (l <= 1459) { *bs = 24; *gs = 15; return 1; }
  /* l=1471: bs=22 gs=16 bench=155039062 baseline=300670180 */
  /* l=1481: bs=22 gs=16 bench=157144668 baseline=301918280 */
  /* l=1483: bs=22 gs=16 bench=157440469 baseline=302571668 */
  /* l=1487: bs=22 gs=16 bench=158290550 baseline=303921361 */
  if (l <= 1487) { *bs = 22; *gs = 16; return 1; }
  /* l=1489: bs=24 gs=15 bench=158688814 baseline=303866995 */
  if (l <= 1489) { *bs = 24; *gs = 15; return 1; }
  /* l=1493: bs=20 gs=18 bench=159591085 baseline=304417178 */
  if (l <= 1493) { *bs = 20; *gs = 18; return 1; }
  /* l=1499: bs=22 gs=17 bench=151749315 baseline=305866958 */
  /* l=1511: bs=22 gs=17 bench=154062209 baseline=308146646 */
  /* l=1523: bs=22 gs=17 bench=156656442 baseline=310554789 */
  /* l=1531: bs=22 gs=17 bench=158181542 baseline=312576294 */
  if (l <= 1531) { *bs = 22; *gs = 17; return 1; }
  /* l=1543: bs=24 gs=16 bench=155287496 baseline=314421336 */
  /* l=1549: bs=24 gs=16 bench=156675366 baseline=315635645 */
  /* l=1553: bs=24 gs=16 bench=157303047 baseline=316692215 */
  /* l=1559: bs=24 gs=16 bench=158566082 baseline=317750564 */
  if (l <= 1559) { *bs = 24; *gs = 16; return 1; }
  /* l=1567: bs=30 gs=13 bench=157269220 baseline=320096859 */
  /* l=1571: bs=30 gs=13 bench=158015406 baseline=320076275 */
  if (l <= 1571) { *bs = 30; *gs = 13; return 1; }
  /* l=2339: bs=30 gs=19 bench=204060299 baseline=476411799 */
  if (l <= 2339) { *bs = 30; *gs = 19; return 1; }
  return 0;
}
