#include "steps.h"

int steps_guess(long long *bs,long long *gs,long long l)
{
  /* l=3: bs=0 gs=0 bench=30 baseline=28 */
  /* l=5: bs=0 gs=0 bench=36 baseline=36 */
  /* l=7: bs=0 gs=0 bench=48 baseline=50 */
  /* l=11: bs=0 gs=0 bench=72 baseline=76 */
  /* l=13: bs=0 gs=0 bench=84 baseline=88 */
  /* l=17: bs=0 gs=0 bench=108 baseline=112 */
  /* l=19: bs=0 gs=0 bench=120 baseline=126 */
  /* l=23: bs=0 gs=0 bench=144 baseline=152 */
  /* l=29: bs=0 gs=0 bench=180 baseline=188 */
  /* l=31: bs=0 gs=0 bench=192 baseline=202 */
  /* l=37: bs=0 gs=0 bench=228 baseline=236 */
  /* l=41: bs=0 gs=0 bench=252 baseline=260 */
  /* l=43: bs=0 gs=0 bench=264 baseline=274 */
  /* l=47: bs=0 gs=0 bench=288 baseline=300 */
  /* l=53: bs=0 gs=0 bench=324 baseline=334 */
  /* l=59: bs=0 gs=0 bench=360 baseline=372 */
  /* l=61: bs=0 gs=0 bench=372 baseline=384 */
  /* l=67: bs=0 gs=0 bench=414 baseline=418 */
  /* l=71: bs=0 gs=0 bench=438 baseline=444 */
  /* l=73: bs=0 gs=0 bench=450 baseline=454 */
  /* l=79: bs=0 gs=0 bench=486 baseline=494 */
  /* l=83: bs=0 gs=0 bench=510 baseline=516 */
  /* l=89: bs=0 gs=0 bench=546 baseline=552 */
  if (l <= 89) { *bs = 0; *gs = 0; return 1; }
  /* l=97: bs=6 gs=4 bench=559 baseline=598 */
  /* l=101: bs=6 gs=4 bench=577 baseline=624 */
  /* l=103: bs=6 gs=4 bench=589 baseline=638 */
  /* l=107: bs=6 gs=4 bench=613 baseline=662 */
  /* l=109: bs=6 gs=4 bench=619 baseline=674 */
  /* l=113: bs=6 gs=4 bench=643 baseline=696 */
  if (l <= 113) { *bs = 6; *gs = 4; return 1; }
  /* l=127: bs=6 gs=5 bench=698 baseline=786 */
  if (l <= 127) { *bs = 6; *gs = 5; return 1; }
  /* l=131: bs=8 gs=4 bench=710 baseline=804 */
  /* l=137: bs=8 gs=4 bench=746 baseline=840 */
  /* l=139: bs=8 gs=4 bench=758 baseline=854 */
  if (l <= 139) { *bs = 8; *gs = 4; return 1; }
  /* l=149: bs=6 gs=6 bench=785 baseline=914 */
  /* l=151: bs=6 gs=6 bench=797 baseline=928 */
  /* l=157: bs=6 gs=6 bench=827 baseline=964 */
  if (l <= 157) { *bs = 6; *gs = 6; return 1; }
  /* l=163: bs=8 gs=5 bench=821 baseline=998 */
  /* l=167: bs=8 gs=5 bench=845 baseline=1024 */
  /* l=173: bs=8 gs=5 bench=881 baseline=1060 */
  /* l=179: bs=8 gs=5 bench=911 baseline=1096 */
  /* l=181: bs=8 gs=5 bench=923 baseline=1108 */
  /* l=191: bs=8 gs=5 bench=983 baseline=1172 */
  if (l <= 191) { *bs = 8; *gs = 5; return 1; }
  /* l=193: bs=8 gs=6 bench=916 baseline=1176 */
  /* l=197: bs=8 gs=6 bench=934 baseline=1202 */
  /* l=199: bs=8 gs=6 bench=946 baseline=1216 */
  /* l=211: bs=8 gs=6 bench=1012 baseline=1288 */
  /* l=223: bs=8 gs=6 bench=1084 baseline=1364 */
  if (l <= 223) { *bs = 8; *gs = 6; return 1; }
  /* l=229: bs=8 gs=7 bench=1085 baseline=1396 */
  /* l=233: bs=8 gs=7 bench=1109 baseline=1420 */
  /* l=239: bs=8 gs=7 bench=1145 baseline=1460 */
  if (l <= 239) { *bs = 8; *gs = 7; return 1; }
  /* l=241: bs=10 gs=6 bench=1103 baseline=1468 */
  /* l=251: bs=10 gs=6 bench=1157 baseline=1532 */
  if (l <= 251) { *bs = 10; *gs = 6; return 1; }
  /* l=257: bs=8 gs=8 bench=1186 baseline=1560 */
  /* l=263: bs=8 gs=8 bench=1216 baseline=1600 */
  /* l=269: bs=8 gs=8 bench=1252 baseline=1636 */
  /* l=271: bs=8 gs=8 bench=1264 baseline=1650 */
  /* l=277: bs=8 gs=8 bench=1294 baseline=1684 */
  if (l <= 277) { *bs = 8; *gs = 8; return 1; }
  /* l=281: bs=10 gs=7 bench=1260 baseline=1708 */
  /* l=283: bs=10 gs=7 bench=1266 baseline=1722 */
  if (l <= 283) { *bs = 10; *gs = 7; return 1; }
  /* l=293: bs=12 gs=6 bench=1311 baseline=1780 */
  /* l=307: bs=12 gs=6 bench=1395 baseline=1866 */
  /* l=311: bs=12 gs=6 bench=1419 baseline=1892 */
  /* l=313: bs=12 gs=6 bench=1425 baseline=1902 */
  /* l=317: bs=12 gs=6 bench=1449 baseline=1928 */
  if (l <= 317) { *bs = 12; *gs = 6; return 1; }
  /* l=331: bs=10 gs=8 bench=1427 baseline=2010 */
  if (l <= 331) { *bs = 10; *gs = 8; return 1; }
  /* l=337: bs=14 gs=6 bench=1434 baseline=2044 */
  /* l=347: bs=14 gs=6 bench=1488 baseline=2108 */
  /* l=349: bs=14 gs=6 bench=1500 baseline=2120 */
  /* l=353: bs=14 gs=6 bench=1524 baseline=2140 */
  /* l=359: bs=14 gs=6 bench=1560 baseline=2180 */
  if (l <= 359) { *bs = 14; *gs = 6; return 1; }
  /* l=367: bs=10 gs=9 bench=1556 baseline=2230 */
  /* l=373: bs=10 gs=9 bench=1592 baseline=2264 */
  /* l=379: bs=10 gs=9 bench=1628 baseline=2302 */
  /* l=383: bs=10 gs=9 bench=1646 baseline=2328 */
  if (l <= 383) { *bs = 10; *gs = 9; return 1; }
  /* l=389: bs=12 gs=8 bench=1577 baseline=2356 */
  if (l <= 389) { *bs = 12; *gs = 8; return 1; }
  /* l=397: bs=14 gs=7 bench=1569 baseline=2406 */
  /* l=401: bs=14 gs=7 bench=1593 baseline=2428 */
  /* l=409: bs=14 gs=7 bench=1641 baseline=2478 */
  /* l=419: bs=14 gs=7 bench=1701 baseline=2538 */
  /* l=421: bs=14 gs=7 bench=1707 baseline=2550 */
  /* l=431: bs=14 gs=7 bench=1767 baseline=2614 */
  if (l <= 431) { *bs = 14; *gs = 7; return 1; }
  /* l=433: bs=12 gs=9 bench=1712 baseline=2622 */
  /* l=439: bs=12 gs=9 bench=1742 baseline=2662 */
  /* l=443: bs=12 gs=9 bench=1766 baseline=2686 */
  if (l <= 443) { *bs = 12; *gs = 9; return 1; }
  /* l=449: bs=14 gs=8 bench=1670 baseline=2716 */
  /* l=457: bs=14 gs=8 bench=1712 baseline=2766 */
  /* l=461: bs=14 gs=8 bench=1736 baseline=2792 */
  /* l=463: bs=14 gs=8 bench=1748 baseline=2806 */
  /* l=467: bs=14 gs=8 bench=1772 baseline=2828 */
  /* l=479: bs=14 gs=8 bench=1838 baseline=2904 */
  if (l <= 479) { *bs = 14; *gs = 8; return 1; }
  /* l=487: bs=12 gs=10 bench=1874 baseline=2950 */
  /* l=491: bs=12 gs=10 bench=1898 baseline=2974 */
  /* l=499: bs=12 gs=10 bench=1946 baseline=3022 */
  /* l=503: bs=12 gs=10 bench=1970 baseline=3048 */
  if (l <= 503) { *bs = 12; *gs = 10; return 1; }
  /* l=509: bs=14 gs=9 bench=1844 baseline=3084 */
  /* l=521: bs=14 gs=9 bench=1916 baseline=3148 */
  /* l=523: bs=14 gs=9 bench=1928 baseline=3162 */
  /* l=541: bs=14 gs=9 bench=2030 baseline=3272 */
  /* l=547: bs=14 gs=9 bench=2066 baseline=3306 */
  /* l=557: bs=14 gs=9 bench=2126 baseline=3368 */
  if (l <= 557) { *bs = 14; *gs = 9; return 1; }
  /* l=563: bs=14 gs=10 bench=1964 baseline=3404 */
  /* l=569: bs=14 gs=10 bench=2000 baseline=3440 */
  /* l=571: bs=14 gs=10 bench=2012 baseline=3454 */
  /* l=577: bs=14 gs=10 bench=2048 baseline=3484 */
  /* l=587: bs=14 gs=10 bench=2108 baseline=3548 */
  /* l=593: bs=14 gs=10 bench=2138 baseline=3582 */
  /* l=599: bs=14 gs=10 bench=2174 baseline=3622 */
  /* l=601: bs=14 gs=10 bench=2186 baseline=3632 */
  /* l=607: bs=14 gs=10 bench=2222 baseline=3672 */
  /* l=613: bs=14 gs=10 bench=2258 baseline=3704 */
  if (l <= 613) { *bs = 14; *gs = 10; return 1; }
  /* l=617: bs=14 gs=11 bench=2112 baseline=3728 */
  /* l=619: bs=14 gs=11 bench=2118 baseline=3742 */
  /* l=631: bs=14 gs=11 bench=2190 baseline=3816 */
  if (l <= 631) { *bs = 14; *gs = 11; return 1; }
  /* l=641: bs=16 gs=10 bench=2200 baseline=3868 */
  /* l=643: bs=16 gs=10 bench=2206 baseline=3882 */
  /* l=647: bs=16 gs=10 bench=2230 baseline=3908 */
  /* l=653: bs=16 gs=10 bench=2266 baseline=3944 */
  /* l=659: bs=16 gs=10 bench=2302 baseline=3980 */
  /* l=661: bs=16 gs=10 bench=2314 baseline=3992 */
  if (l <= 661) { *bs = 16; *gs = 10; return 1; }
  /* l=673: bs=14 gs=12 bench=2233 baseline=4062 */
  /* l=677: bs=14 gs=12 bench=2251 baseline=4088 */
  /* l=683: bs=14 gs=12 bench=2287 baseline=4126 */
  /* l=691: bs=14 gs=12 bench=2335 baseline=4174 */
  /* l=701: bs=14 gs=12 bench=2389 baseline=4236 */
  if (l <= 701) { *bs = 14; *gs = 12; return 1; }
  /* l=709: bs=16 gs=11 bench=2374 baseline=4280 */
  /* l=719: bs=16 gs=11 bench=2434 baseline=4344 */
  /* l=727: bs=16 gs=11 bench=2482 baseline=4392 */
  if (l <= 727) { *bs = 16; *gs = 11; return 1; }
  /* l=733: bs=14 gs=13 bench=2463 baseline=4428 */
  /* l=739: bs=14 gs=13 bench=2499 baseline=4462 */
  /* l=743: bs=14 gs=13 bench=2523 baseline=4488 */
  /* l=751: bs=14 gs=13 bench=2571 baseline=4538 */
  /* l=757: bs=14 gs=13 bench=2601 baseline=4572 */
  /* l=761: bs=14 gs=13 bench=2625 baseline=4596 */
  if (l <= 761) { *bs = 14; *gs = 13; return 1; }
  /* l=769: bs=16 gs=12 bench=2479 baseline=4636 */
  /* l=773: bs=16 gs=12 bench=2497 baseline=4662 */
  /* l=787: bs=16 gs=12 bench=2581 baseline=4748 */
  /* l=797: bs=16 gs=12 bench=2641 baseline=4810 */
  /* l=809: bs=16 gs=12 bench=2707 baseline=4880 */
  /* l=811: bs=16 gs=12 bench=2719 baseline=4894 */
  /* l=821: bs=16 gs=12 bench=2779 baseline=4954 */
  /* l=823: bs=16 gs=12 bench=2791 baseline=4968 */
  /* l=827: bs=16 gs=12 bench=2815 baseline=4992 */
  /* l=829: bs=16 gs=12 bench=2827 baseline=5004 */
  if (l <= 829) { *bs = 16; *gs = 12; return 1; }
  /* l=839: bs=16 gs=13 bench=2722 baseline=5062 */
  /* l=853: bs=16 gs=13 bench=2806 baseline=5146 */
  /* l=857: bs=16 gs=13 bench=2830 baseline=5170 */
  /* l=859: bs=16 gs=13 bench=2842 baseline=5184 */
  /* l=863: bs=16 gs=13 bench=2866 baseline=5210 */
  if (l <= 863) { *bs = 16; *gs = 13; return 1; }
  /* l=877: bs=18 gs=12 bench=2875 baseline=5292 */
  /* l=881: bs=18 gs=12 bench=2899 baseline=5314 */
  /* l=883: bs=18 gs=12 bench=2911 baseline=5328 */
  /* l=887: bs=18 gs=12 bench=2935 baseline=5354 */
  if (l <= 887) { *bs = 18; *gs = 12; return 1; }
  /* l=907: bs=16 gs=14 bench=2919 baseline=5470 */
  /* l=911: bs=16 gs=14 bench=2943 baseline=5496 */
  /* l=919: bs=16 gs=14 bench=2991 baseline=5544 */
  /* l=929: bs=16 gs=14 bench=3045 baseline=5600 */
  if (l <= 929) { *bs = 16; *gs = 14; return 1; }
  /* l=937: bs=18 gs=13 bench=3022 baseline=5650 */
  /* l=941: bs=18 gs=13 bench=3040 baseline=5676 */
  /* l=947: bs=18 gs=13 bench=3076 baseline=5712 */
  /* l=953: bs=18 gs=13 bench=3112 baseline=5748 */
  if (l <= 953) { *bs = 18; *gs = 13; return 1; }
  /* l=967: bs=20 gs=12 bench=3133 baseline=5832 */
  /* l=971: bs=20 gs=12 bench=3157 baseline=5856 */
  /* l=977: bs=20 gs=12 bench=3193 baseline=5890 */
  /* l=983: bs=20 gs=12 bench=3229 baseline=5930 */
  /* l=991: bs=20 gs=12 bench=3277 baseline=5980 */
  /* l=997: bs=20 gs=12 bench=3313 baseline=6012 */
  if (l <= 997) { *bs = 20; *gs = 12; return 1; }
  /* l=1009: bs=18 gs=14 bench=3195 baseline=6084 */
  /* l=1013: bs=18 gs=14 bench=3213 baseline=6110 */
  /* l=1019: bs=18 gs=14 bench=3249 baseline=6148 */
  /* l=1021: bs=18 gs=14 bench=3261 baseline=6160 */
  if (l <= 1021) { *bs = 18; *gs = 14; return 1; }
  /* l=1031: bs=16 gs=16 bench=3295 baseline=6212 */
  /* l=1033: bs=16 gs=16 bench=3307 baseline=6222 */
  /* l=1039: bs=16 gs=16 bench=3343 baseline=6262 */
  if (l <= 1039) { *bs = 16; *gs = 16; return 1; }
  /* l=1049: bs=20 gs=13 bench=3364 baseline=6320 */
  /* l=1051: bs=20 gs=13 bench=3376 baseline=6334 */
  if (l <= 1051) { *bs = 20; *gs = 13; return 1; }
  /* l=1061: bs=22 gs=12 bench=3350 baseline=6392 */
  /* l=1063: bs=22 gs=12 bench=3362 baseline=6406 */
  /* l=1069: bs=22 gs=12 bench=3398 baseline=6442 */
  if (l <= 1069) { *bs = 22; *gs = 12; return 1; }
  /* l=1087: bs=18 gs=15 bench=3486 baseline=6554 */
  /* l=1091: bs=18 gs=15 bench=3510 baseline=6572 */
  /* l=1093: bs=18 gs=15 bench=3522 baseline=6584 */
  /* l=1097: bs=18 gs=15 bench=3546 baseline=6608 */
  /* l=1103: bs=18 gs=15 bench=3582 baseline=6648 */
  /* l=1109: bs=18 gs=15 bench=3618 baseline=6682 */
  /* l=1117: bs=18 gs=15 bench=3660 baseline=6732 */
  if (l <= 1117) { *bs = 18; *gs = 15; return 1; }
  /* l=1123: bs=20 gs=14 bench=3501 baseline=6766 */
  /* l=1129: bs=20 gs=14 bench=3537 baseline=6802 */
  if (l <= 1129) { *bs = 20; *gs = 14; return 1; }
  /* l=1151: bs=22 gs=13 bench=3577 baseline=6940 */
  /* l=1153: bs=22 gs=13 bench=3589 baseline=6942 */
  if (l <= 1153) { *bs = 22; *gs = 13; return 1; }
  /* l=1163: bs=18 gs=16 bench=3649 baseline=7006 */
  /* l=1171: bs=18 gs=16 bench=3697 baseline=7054 */
  /* l=1181: bs=18 gs=16 bench=3757 baseline=7116 */
  /* l=1187: bs=18 gs=16 bench=3793 baseline=7150 */
  /* l=1193: bs=18 gs=16 bench=3823 baseline=7186 */
  if (l <= 1193) { *bs = 18; *gs = 16; return 1; }
  /* l=1201: bs=20 gs=15 bench=3750 baseline=7234 */
  /* l=1213: bs=20 gs=15 bench=3816 baseline=7310 */
  /* l=1217: bs=20 gs=15 bench=3840 baseline=7328 */
  /* l=1223: bs=20 gs=15 bench=3876 baseline=7368 */
  if (l <= 1223) { *bs = 20; *gs = 15; return 1; }
  /* l=1229: bs=18 gs=17 bench=3865 baseline=7404 */
  /* l=1231: bs=18 gs=17 bench=3877 baseline=7418 */
  if (l <= 1231) { *bs = 18; *gs = 17; return 1; }
  /* l=1237: bs=22 gs=14 bench=3738 baseline=7452 */
  /* l=1249: bs=22 gs=14 bench=3810 baseline=7522 */
  /* l=1259: bs=22 gs=14 bench=3870 baseline=7586 */
  /* l=1277: bs=22 gs=14 bench=3972 baseline=7696 */
  /* l=1279: bs=22 gs=14 bench=3984 baseline=7710 */
  if (l <= 1279) { *bs = 22; *gs = 14; return 1; }
  /* l=1283: bs=20 gs=16 bench=3895 baseline=7724 */
  /* l=1289: bs=20 gs=16 bench=3931 baseline=7760 */
  /* l=1291: bs=20 gs=16 bench=3943 baseline=7774 */
  /* l=1297: bs=20 gs=16 bench=3979 baseline=7808 */
  /* l=1301: bs=20 gs=16 bench=4003 baseline=7834 */
  /* l=1303: bs=20 gs=16 bench=4015 baseline=7848 */
  /* l=1307: bs=20 gs=16 bench=4039 baseline=7872 */
  /* l=1319: bs=20 gs=16 bench=4111 baseline=7944 */
  if (l <= 1319) { *bs = 20; *gs = 16; return 1; }
  /* l=1321: bs=22 gs=15 bench=3975 baseline=7954 */
  /* l=1327: bs=22 gs=15 bench=4005 baseline=7994 */
  if (l <= 1327) { *bs = 22; *gs = 15; return 1; }
  /* l=1361: bs=20 gs=17 bench=4141 baseline=8194 */
  /* l=1367: bs=20 gs=17 bench=4171 baseline=8234 */
  /* l=1373: bs=20 gs=17 bench=4207 baseline=8270 */
  /* l=1381: bs=20 gs=17 bench=4255 baseline=8316 */
  /* l=1399: bs=20 gs=17 bench=4363 baseline=8428 */
  if (l <= 1399) { *bs = 20; *gs = 17; return 1; }
  /* l=1409: bs=22 gs=16 bench=4114 baseline=8480 */
  /* l=1423: bs=22 gs=16 bench=4192 baseline=8570 */
  /* l=1427: bs=22 gs=16 bench=4216 baseline=8592 */
  /* l=1429: bs=22 gs=16 bench=4228 baseline=8604 */
  /* l=1433: bs=22 gs=16 bench=4252 baseline=8628 */
  /* l=1439: bs=22 gs=16 bench=4288 baseline=8668 */
  if (l <= 1439) { *bs = 22; *gs = 16; return 1; }
  /* l=1447: bs=20 gs=18 bench=4330 baseline=8714 */
  /* l=1451: bs=20 gs=18 bench=4354 baseline=8738 */
  /* l=1453: bs=20 gs=18 bench=4366 baseline=8750 */
  /* l=1459: bs=20 gs=18 bench=4402 baseline=8786 */
  /* l=1471: bs=20 gs=18 bench=4474 baseline=8862 */
  /* l=1481: bs=20 gs=18 bench=4528 baseline=8916 */
  /* l=1483: bs=20 gs=18 bench=4540 baseline=8930 */
  /* l=1487: bs=20 gs=18 bench=4564 baseline=8956 */
  /* l=1489: bs=20 gs=18 bench=4576 baseline=8964 */
  /* l=1493: bs=20 gs=18 bench=4600 baseline=8990 */
  if (l <= 1493) { *bs = 20; *gs = 18; return 1; }
  /* l=1499: bs=22 gs=17 bench=4372 baseline=9028 */
  /* l=1511: bs=22 gs=17 bench=4444 baseline=9100 */
  if (l <= 1511) { *bs = 22; *gs = 17; return 1; }
  /* l=1523: bs=20 gs=19 bench=4513 baseline=9172 */
  /* l=1531: bs=20 gs=19 bench=4561 baseline=9222 */
  if (l <= 1531) { *bs = 20; *gs = 19; return 1; }
  /* l=1543: bs=24 gs=16 bench=4478 baseline=9286 */
  /* l=1549: bs=24 gs=16 bench=4514 baseline=9322 */
  /* l=1553: bs=24 gs=16 bench=4538 baseline=9344 */
  if (l <= 1553) { *bs = 24; *gs = 16; return 1; }
  /* l=1601: bs=22 gs=18 bench=4615 baseline=9632 */
  if (l <= 1601) { *bs = 22; *gs = 18; return 1; }
  return 0;
}
