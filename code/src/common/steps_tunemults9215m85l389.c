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
  /* l=181: bs=8 gs=5 bench=923 baseline=1108 */
  /* l=191: bs=8 gs=5 bench=983 baseline=1172 */
  if (l <= 191) { *bs = 8; *gs = 5; return 1; }
  /* l=193: bs=8 gs=6 bench=916 baseline=1176 */
  /* l=197: bs=8 gs=6 bench=934 baseline=1202 */
  /* l=199: bs=8 gs=6 bench=946 baseline=1216 */
  /* l=211: bs=8 gs=6 bench=1012 baseline=1288 */
  /* l=223: bs=8 gs=6 bench=1084 baseline=1364 */
  if (l <= 223) { *bs = 8; *gs = 6; return 1; }
  /* l=227: bs=8 gs=7 bench=1073 baseline=1384 */
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
  /* l=877: bs=16 gs=13 bench=2944 baseline=5292 */
  /* l=881: bs=16 gs=13 bench=2968 baseline=5314 */
  /* l=883: bs=16 gs=13 bench=2980 baseline=5328 */
  /* l=887: bs=16 gs=13 bench=3004 baseline=5354 */
  if (l <= 887) { *bs = 16; *gs = 13; return 1; }
  /* l=907: bs=16 gs=14 bench=2919 baseline=5470 */
  /* l=911: bs=16 gs=14 bench=2943 baseline=5496 */
  /* l=919: bs=16 gs=14 bench=2991 baseline=5544 */
  /* l=929: bs=16 gs=14 bench=3045 baseline=5600 */
  /* l=937: bs=16 gs=14 bench=3093 baseline=5650 */
  /* l=941: bs=16 gs=14 bench=3117 baseline=5676 */
  /* l=947: bs=16 gs=14 bench=3153 baseline=5712 */
  /* l=953: bs=16 gs=14 bench=3189 baseline=5748 */
  if (l <= 953) { *bs = 16; *gs = 14; return 1; }
  /* l=967: bs=16 gs=15 bench=3150 baseline=5832 */
  /* l=971: bs=16 gs=15 bench=3174 baseline=5856 */
  /* l=977: bs=16 gs=15 bench=3210 baseline=5890 */
  /* l=983: bs=16 gs=15 bench=3246 baseline=5930 */
  /* l=991: bs=16 gs=15 bench=3294 baseline=5980 */
  /* l=997: bs=16 gs=15 bench=3324 baseline=6012 */
  /* l=1009: bs=16 gs=15 bench=3396 baseline=6084 */
  if (l <= 1009) { *bs = 16; *gs = 15; return 1; }
  /* l=1013: bs=14 gs=18 bench=3417 baseline=6110 */
  /* l=1019: bs=14 gs=18 bench=3453 baseline=6148 */
  /* l=1021: bs=14 gs=18 bench=3465 baseline=6160 */
  if (l <= 1021) { *bs = 14; *gs = 18; return 1; }
  /* l=1031: bs=16 gs=16 bench=3295 baseline=6212 */
  /* l=1033: bs=16 gs=16 bench=3307 baseline=6222 */
  /* l=1039: bs=16 gs=16 bench=3343 baseline=6262 */
  /* l=1049: bs=16 gs=16 bench=3403 baseline=6320 */
  /* l=1051: bs=16 gs=16 bench=3415 baseline=6334 */
  /* l=1061: bs=16 gs=16 bench=3469 baseline=6392 */
  /* l=1063: bs=16 gs=16 bench=3481 baseline=6406 */
  /* l=1069: bs=16 gs=16 bench=3517 baseline=6442 */
  /* l=1087: bs=16 gs=16 bench=3625 baseline=6554 */
  if (l <= 1087) { *bs = 16; *gs = 16; return 1; }
  /* l=1091: bs=16 gs=17 bench=3521 baseline=6572 */
  /* l=1093: bs=16 gs=17 bench=3533 baseline=6584 */
  /* l=1097: bs=16 gs=17 bench=3557 baseline=6608 */
  /* l=1103: bs=16 gs=17 bench=3593 baseline=6648 */
  /* l=1109: bs=16 gs=17 bench=3629 baseline=6682 */
  /* l=1117: bs=16 gs=17 bench=3677 baseline=6732 */
  /* l=1123: bs=16 gs=17 bench=3707 baseline=6766 */
  /* l=1129: bs=16 gs=17 bench=3743 baseline=6802 */
  /* l=1151: bs=16 gs=17 bench=3875 baseline=6940 */
  if (l <= 1151) { *bs = 16; *gs = 17; return 1; }
  /* l=1153: bs=16 gs=18 bench=3670 baseline=6942 */
  /* l=1163: bs=16 gs=18 bench=3724 baseline=7006 */
  /* l=1171: bs=16 gs=18 bench=3772 baseline=7054 */
  /* l=1181: bs=16 gs=18 bench=3832 baseline=7116 */
  /* l=1187: bs=16 gs=18 bench=3862 baseline=7150 */
  /* l=1193: bs=16 gs=18 bench=3898 baseline=7186 */
  /* l=1201: bs=16 gs=18 bench=3946 baseline=7234 */
  /* l=1213: bs=16 gs=18 bench=4018 baseline=7310 */
  if (l <= 1213) { *bs = 16; *gs = 18; return 1; }
  /* l=1217: bs=16 gs=19 bench=3873 baseline=7328 */
  /* l=1223: bs=16 gs=19 bench=3903 baseline=7368 */
  /* l=1229: bs=16 gs=19 bench=3939 baseline=7404 */
  /* l=1231: bs=16 gs=19 bench=3951 baseline=7418 */
  /* l=1237: bs=16 gs=19 bench=3987 baseline=7452 */
  /* l=1249: bs=16 gs=19 bench=4053 baseline=7522 */
  /* l=1259: bs=16 gs=19 bench=4113 baseline=7586 */
  /* l=1277: bs=16 gs=19 bench=4221 baseline=7696 */
  /* l=1279: bs=16 gs=19 bench=4233 baseline=7710 */
  if (l <= 1279) { *bs = 16; *gs = 19; return 1; }
  /* l=1283: bs=16 gs=20 bench=4038 baseline=7724 */
  /* l=1289: bs=16 gs=20 bench=4074 baseline=7760 */
  /* l=1291: bs=16 gs=20 bench=4086 baseline=7774 */
  /* l=1297: bs=16 gs=20 bench=4122 baseline=7808 */
  /* l=1301: bs=16 gs=20 bench=4146 baseline=7834 */
  /* l=1303: bs=16 gs=20 bench=4158 baseline=7848 */
  /* l=1307: bs=16 gs=20 bench=4182 baseline=7872 */
  /* l=1319: bs=16 gs=20 bench=4248 baseline=7944 */
  /* l=1321: bs=16 gs=20 bench=4260 baseline=7954 */
  /* l=1327: bs=16 gs=20 bench=4296 baseline=7994 */
  if (l <= 1327) { *bs = 16; *gs = 20; return 1; }
  /* l=1361: bs=16 gs=21 bench=4324 baseline=8194 */
  /* l=1367: bs=16 gs=21 bench=4360 baseline=8234 */
  /* l=1373: bs=16 gs=21 bench=4396 baseline=8270 */
  /* l=1381: bs=16 gs=21 bench=4438 baseline=8316 */
  /* l=1399: bs=16 gs=21 bench=4546 baseline=8428 */
  if (l <= 1399) { *bs = 16; *gs = 21; return 1; }
  /* l=1409: bs=16 gs=22 bench=4413 baseline=8480 */
  /* l=1423: bs=16 gs=22 bench=4491 baseline=8570 */
  /* l=1427: bs=16 gs=22 bench=4515 baseline=8592 */
  /* l=1429: bs=16 gs=22 bench=4527 baseline=8604 */
  /* l=1433: bs=16 gs=22 bench=4551 baseline=8628 */
  /* l=1439: bs=16 gs=22 bench=4587 baseline=8668 */
  /* l=1447: bs=16 gs=22 bench=4629 baseline=8714 */
  /* l=1451: bs=16 gs=22 bench=4653 baseline=8738 */
  /* l=1453: bs=16 gs=22 bench=4665 baseline=8750 */
  /* l=1459: bs=16 gs=22 bench=4701 baseline=8786 */
  /* l=1471: bs=16 gs=22 bench=4773 baseline=8862 */
  if (l <= 1471) { *bs = 16; *gs = 22; return 1; }
  /* l=1481: bs=16 gs=23 bench=4700 baseline=8916 */
  /* l=1483: bs=16 gs=23 bench=4712 baseline=8930 */
  /* l=1487: bs=16 gs=23 bench=4736 baseline=8956 */
  /* l=1489: bs=16 gs=23 bench=4748 baseline=8964 */
  /* l=1493: bs=16 gs=23 bench=4772 baseline=8990 */
  /* l=1499: bs=16 gs=23 bench=4808 baseline=9028 */
  /* l=1511: bs=16 gs=23 bench=4874 baseline=9100 */
  /* l=1523: bs=16 gs=23 bench=4946 baseline=9172 */
  /* l=1531: bs=16 gs=23 bench=4994 baseline=9222 */
  if (l <= 1531) { *bs = 16; *gs = 23; return 1; }
  /* l=1543: bs=16 gs=24 bench=4809 baseline=9286 */
  /* l=1549: bs=16 gs=24 bench=4845 baseline=9322 */
  /* l=1553: bs=16 gs=24 bench=4869 baseline=9344 */
  /* l=1559: bs=16 gs=24 bench=4905 baseline=9384 */
  /* l=1567: bs=16 gs=24 bench=4953 baseline=9434 */
  /* l=1571: bs=16 gs=24 bench=4971 baseline=9454 */
  /* l=1579: bs=16 gs=24 bench=5019 baseline=9504 */
  /* l=1583: bs=16 gs=24 bench=5043 baseline=9530 */
  /* l=1597: bs=16 gs=24 bench=5127 baseline=9614 */
  if (l <= 1597) { *bs = 16; *gs = 24; return 1; }
  /* l=1601: bs=16 gs=25 bench=5107 baseline=9632 */
  /* l=1607: bs=16 gs=25 bench=5137 baseline=9672 */
  /* l=1609: bs=16 gs=25 bench=5149 baseline=9682 */
  /* l=1613: bs=16 gs=25 bench=5173 baseline=9708 */
  /* l=1619: bs=16 gs=25 bench=5209 baseline=9744 */
  /* l=1621: bs=16 gs=25 bench=5221 baseline=9756 */
  /* l=1627: bs=16 gs=25 bench=5257 baseline=9794 */
  /* l=1637: bs=16 gs=25 bench=5311 baseline=9852 */
  /* l=1657: bs=16 gs=25 bench=5431 baseline=9974 */
  /* l=1663: bs=16 gs=25 bench=5467 baseline=10014 */
  if (l <= 1663) { *bs = 16; *gs = 25; return 1; }
  /* l=1667: bs=16 gs=26 bench=5318 baseline=10030 */
  /* l=1669: bs=16 gs=26 bench=5330 baseline=10042 */
  /* l=1693: bs=16 gs=26 bench=5474 baseline=10190 */
  /* l=1697: bs=16 gs=26 bench=5492 baseline=10210 */
  /* l=1699: bs=16 gs=26 bench=5504 baseline=10224 */
  /* l=1709: bs=16 gs=26 bench=5564 baseline=10286 */
  /* l=1721: bs=16 gs=26 bench=5636 baseline=10358 */
  /* l=1723: bs=16 gs=26 bench=5648 baseline=10372 */
  if (l <= 1723) { *bs = 16; *gs = 26; return 1; }
  /* l=1733: bs=16 gs=27 bench=5628 baseline=10428 */
  /* l=1741: bs=16 gs=27 bench=5676 baseline=10478 */
  /* l=1747: bs=16 gs=27 bench=5712 baseline=10514 */
  /* l=1753: bs=16 gs=27 bench=5748 baseline=10550 */
  /* l=1759: bs=16 gs=27 bench=5784 baseline=10590 */
  /* l=1777: bs=16 gs=27 bench=5886 baseline=10694 */
  /* l=1783: bs=16 gs=27 bench=5922 baseline=10734 */
  /* l=1787: bs=16 gs=27 bench=5946 baseline=10758 */
  /* l=1789: bs=16 gs=27 bench=5958 baseline=10770 */
  if (l <= 1789) { *bs = 16; *gs = 27; return 1; }
  /* l=1801: bs=16 gs=28 bench=5821 baseline=10834 */
  /* l=1811: bs=16 gs=28 bench=5881 baseline=10896 */
  /* l=1823: bs=16 gs=28 bench=5953 baseline=10972 */
  /* l=1831: bs=16 gs=28 bench=5995 baseline=11018 */
  /* l=1847: bs=16 gs=28 bench=6091 baseline=11116 */
  if (l <= 1847) { *bs = 16; *gs = 28; return 1; }
  /* l=1861: bs=16 gs=29 bench=6164 baseline=11196 */
  /* l=1867: bs=16 gs=29 bench=6200 baseline=11234 */
  /* l=1871: bs=16 gs=29 bench=6224 baseline=11260 */
  /* l=1873: bs=16 gs=29 bench=6236 baseline=11268 */
  /* l=1877: bs=16 gs=29 bench=6260 baseline=11294 */
  /* l=1879: bs=16 gs=29 bench=6272 baseline=11308 */
  /* l=1889: bs=16 gs=29 bench=6326 baseline=11364 */
  /* l=1901: bs=16 gs=29 bench=6398 baseline=11440 */
  /* l=1907: bs=16 gs=29 bench=6434 baseline=11476 */
  /* l=1913: bs=16 gs=29 bench=6470 baseline=11512 */
  if (l <= 1913) { *bs = 16; *gs = 29; return 1; }
  /* l=1931: bs=16 gs=30 bench=6439 baseline=11618 */
  /* l=1933: bs=16 gs=30 bench=6451 baseline=11630 */
  /* l=1949: bs=16 gs=30 bench=6547 baseline=11728 */
  /* l=1951: bs=16 gs=30 bench=6559 baseline=11742 */
  /* l=1973: bs=16 gs=30 bench=6685 baseline=11872 */
  /* l=1979: bs=16 gs=30 bench=6721 baseline=11910 */
  /* l=1987: bs=16 gs=30 bench=6763 baseline=11954 */
  /* l=1993: bs=16 gs=30 bench=6799 baseline=11990 */
  /* l=1997: bs=16 gs=30 bench=6823 baseline=12016 */
  /* l=1999: bs=16 gs=30 bench=6835 baseline=12030 */
  /* l=2003: bs=16 gs=30 bench=6859 baseline=12052 */
  /* l=2011: bs=16 gs=30 bench=6907 baseline=12102 */
  /* l=2017: bs=16 gs=30 bench=6937 baseline=12134 */
  /* l=2027: bs=16 gs=30 bench=6997 baseline=12198 */
  /* l=2029: bs=16 gs=30 bench=7009 baseline=12210 */
  /* l=2039: bs=16 gs=30 bench=7069 baseline=12272 */
  if (l <= 2039) { *bs = 16; *gs = 30; return 1; }
  /* l=2053: bs=16 gs=32 bench=6942 baseline=12344 */
  /* l=2063: bs=16 gs=32 bench=7002 baseline=12408 */
  /* l=2069: bs=16 gs=32 bench=7038 baseline=12442 */
  /* l=2081: bs=16 gs=32 bench=7104 baseline=12512 */
  /* l=2083: bs=16 gs=32 bench=7116 baseline=12526 */
  /* l=2087: bs=16 gs=32 bench=7140 baseline=12552 */
  /* l=2089: bs=16 gs=32 bench=7152 baseline=12562 */
  /* l=2099: bs=16 gs=32 bench=7212 baseline=12624 */
  /* l=2111: bs=16 gs=32 bench=7284 baseline=12700 */
  /* l=2113: bs=16 gs=32 bench=7290 baseline=12704 */
  /* l=2129: bs=16 gs=32 bench=7386 baseline=12802 */
  /* l=2131: bs=16 gs=32 bench=7398 baseline=12816 */
  /* l=2137: bs=16 gs=32 bench=7434 baseline=12852 */
  /* l=2141: bs=16 gs=32 bench=7458 baseline=12878 */
  /* l=2143: bs=16 gs=32 bench=7470 baseline=12892 */
  /* l=2153: bs=16 gs=32 bench=7524 baseline=12948 */
  /* l=2161: bs=16 gs=32 bench=7572 baseline=12996 */
  /* l=2179: bs=16 gs=32 bench=7680 baseline=13102 */
  /* l=2203: bs=16 gs=32 bench=7824 baseline=13250 */
  /* l=2207: bs=16 gs=32 bench=7848 baseline=13276 */
  /* l=2213: bs=16 gs=32 bench=7878 baseline=13308 */
  /* l=2221: bs=16 gs=32 bench=7926 baseline=13358 */
  /* l=2237: bs=16 gs=32 bench=8022 baseline=13456 */
  /* l=2239: bs=16 gs=32 bench=8034 baseline=13470 */
  /* l=2243: bs=16 gs=32 bench=8058 baseline=13488 */
  /* l=2251: bs=16 gs=32 bench=8106 baseline=13538 */
  /* l=2267: bs=16 gs=32 bench=8202 baseline=13636 */
  /* l=2269: bs=16 gs=32 bench=8214 baseline=13648 */
  /* l=2273: bs=16 gs=32 bench=8232 baseline=13668 */
  /* l=2281: bs=16 gs=32 bench=8280 baseline=13718 */
  /* l=2287: bs=16 gs=32 bench=8316 baseline=13758 */
  /* l=2293: bs=16 gs=32 bench=8352 baseline=13792 */
  /* l=2297: bs=16 gs=32 bench=8376 baseline=13816 */
  /* l=2309: bs=16 gs=32 bench=8448 baseline=13882 */
  /* l=2311: bs=16 gs=32 bench=8460 baseline=13896 */
  /* l=2333: bs=16 gs=32 bench=8592 baseline=14030 */
  /* l=2339: bs=16 gs=32 bench=8622 baseline=14064 */
  /* l=2341: bs=16 gs=32 bench=8634 baseline=14076 */
  /* l=2347: bs=16 gs=32 bench=8670 baseline=14114 */
  /* l=2351: bs=16 gs=32 bench=8694 baseline=14140 */
  /* l=2357: bs=16 gs=32 bench=8730 baseline=14174 */
  /* l=2371: bs=16 gs=32 bench=8814 baseline=14256 */
  /* l=2377: bs=16 gs=32 bench=8850 baseline=14292 */
  /* l=2381: bs=16 gs=32 bench=8874 baseline=14318 */
  /* l=2383: bs=16 gs=32 bench=8886 baseline=14332 */
  /* l=2389: bs=16 gs=32 bench=8922 baseline=14366 */
  /* l=2393: bs=16 gs=32 bench=8946 baseline=14390 */
  /* l=2399: bs=16 gs=32 bench=8982 baseline=14430 */
  /* l=2411: bs=16 gs=32 bench=9048 baseline=14500 */
  /* l=2417: bs=16 gs=32 bench=9084 baseline=14534 */
  /* l=2423: bs=16 gs=32 bench=9120 baseline=14574 */
  /* l=2437: bs=16 gs=32 bench=9204 baseline=14652 */
  /* l=2441: bs=16 gs=32 bench=9228 baseline=14676 */
  /* l=2447: bs=16 gs=32 bench=9264 baseline=14716 */
  /* l=2459: bs=16 gs=32 bench=9336 baseline=14788 */
  /* l=2467: bs=16 gs=32 bench=9378 baseline=14834 */
  /* l=2473: bs=16 gs=32 bench=9414 baseline=14870 */
  /* l=2477: bs=16 gs=32 bench=9438 baseline=14896 */
  /* l=2503: bs=16 gs=32 bench=9594 baseline=15052 */
  /* l=2521: bs=16 gs=32 bench=9702 baseline=15160 */
  /* l=2531: bs=16 gs=32 bench=9756 baseline=15220 */
  /* l=2539: bs=16 gs=32 bench=9804 baseline=15270 */
  /* l=2543: bs=16 gs=32 bench=9828 baseline=15296 */
  /* l=2549: bs=16 gs=32 bench=9864 baseline=15330 */
  /* l=2551: bs=16 gs=32 bench=9876 baseline=15344 */
  /* l=2557: bs=16 gs=32 bench=9912 baseline=15380 */
  /* l=2579: bs=16 gs=32 bench=10044 baseline=15504 */
  /* l=2591: bs=16 gs=32 bench=10116 baseline=15580 */
  /* l=2593: bs=16 gs=32 bench=10122 baseline=15586 */
  /* l=2609: bs=16 gs=32 bench=10218 baseline=15684 */
  /* l=2617: bs=16 gs=32 bench=10266 baseline=15734 */
  /* l=2621: bs=16 gs=32 bench=10290 baseline=15760 */
  /* l=2633: bs=16 gs=32 bench=10362 baseline=15828 */
  /* l=2647: bs=16 gs=32 bench=10446 baseline=15916 */
  /* l=2657: bs=16 gs=32 bench=10500 baseline=15972 */
  /* l=2659: bs=16 gs=32 bench=10512 baseline=15986 */
  /* l=2663: bs=16 gs=32 bench=10536 baseline=16012 */
  /* l=2671: bs=16 gs=32 bench=10584 baseline=16062 */
  /* l=2677: bs=16 gs=32 bench=10620 baseline=16096 */
  /* l=2683: bs=16 gs=32 bench=10656 baseline=16134 */
  /* l=2689: bs=16 gs=32 bench=10692 baseline=16162 */
  /* l=2719: bs=16 gs=32 bench=10872 baseline=16350 */
  if (l <= 2719) { *bs = 16; *gs = 32; return 1; }
  return 0;
}
