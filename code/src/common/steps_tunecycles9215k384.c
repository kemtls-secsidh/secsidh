#include "steps.h"

int steps_guess(long long *bs,long long *gs,long long l)
{
  /* l=3: bs=0 gs=0 bench=3499380 baseline=3295482 */
  /* l=5: bs=0 gs=0 bench=4218240 baseline=4168066 */
  /* l=7: bs=0 gs=0 bench=5618496 baseline=5809656 */
  /* l=11: bs=0 gs=0 bench=8413006 baseline=8890880 */
  /* l=13: bs=0 gs=0 bench=9815192 baseline=10204498 */
  /* l=17: bs=0 gs=0 bench=12591658 baseline=13022128 */
  /* l=19: bs=0 gs=0 bench=13978364 baseline=14680090 */
  /* l=23: bs=0 gs=0 bench=16731982 baseline=17665930 */
  /* l=29: bs=0 gs=0 bench=21021706 baseline=21882694 */
  /* l=31: bs=0 gs=0 bench=22583840 baseline=23487422 */
  /* l=37: bs=0 gs=0 bench=26816468 baseline=27675494 */
  /* l=41: bs=0 gs=0 bench=29577498 baseline=30509718 */
  /* l=43: bs=0 gs=0 bench=31007008 baseline=32226556 */
  /* l=47: bs=0 gs=0 bench=33859984 baseline=35150072 */
  /* l=53: bs=0 gs=0 bench=38054436 baseline=39215228 */
  /* l=59: bs=0 gs=0 bench=42268808 baseline=43688334 */
  /* l=61: bs=0 gs=0 bench=43807044 baseline=45404874 */
  /* l=67: bs=0 gs=0 bench=48846018 baseline=49149822 */
  /* l=71: bs=0 gs=0 bench=51810904 baseline=52484504 */
  /* l=73: bs=0 gs=0 bench=53300714 baseline=53635046 */
  /* l=79: bs=0 gs=0 bench=57380048 baseline=58288496 */
  /* l=83: bs=0 gs=0 bench=60361704 baseline=61008742 */
  /* l=89: bs=0 gs=0 bench=64621522 baseline=65289576 */
  if (l <= 89) { *bs = 0; *gs = 0; return 1; }
  /* l=97: bs=6 gs=4 bench=66631418 baseline=70747258 */
  /* l=101: bs=6 gs=4 bench=68990878 baseline=73758778 */
  /* l=103: bs=6 gs=4 bench=70522866 baseline=75671454 */
  /* l=107: bs=6 gs=4 bench=73408532 baseline=78409028 */
  /* l=109: bs=6 gs=4 bench=73958866 baseline=79799036 */
  /* l=113: bs=6 gs=4 bench=76805464 baseline=82444308 */
  if (l <= 113) { *bs = 6; *gs = 4; return 1; }
  /* l=127: bs=6 gs=5 bench=83582314 baseline=93184490 */
  if (l <= 127) { *bs = 6; *gs = 5; return 1; }
  /* l=131: bs=8 gs=4 bench=84959282 baseline=95300190 */
  /* l=137: bs=8 gs=4 bench=89260192 baseline=99866774 */
  /* l=139: bs=8 gs=4 bench=90786426 baseline=101506360 */
  if (l <= 139) { *bs = 8; *gs = 4; return 1; }
  /* l=149: bs=6 gs=6 bench=94388848 baseline=108503604 */
  /* l=151: bs=6 gs=6 bench=95543244 baseline=110215606 */
  /* l=157: bs=6 gs=6 bench=99275568 baseline=114449906 */
  if (l <= 157) { *bs = 6; *gs = 6; return 1; }
  /* l=163: bs=8 gs=5 bench=98341604 baseline=118393194 */
  /* l=167: bs=8 gs=5 bench=101188220 baseline=121730372 */
  /* l=173: bs=8 gs=5 bench=105706018 baseline=124829168 */
  /* l=179: bs=8 gs=5 bench=108737832 baseline=130082688 */
  /* l=181: bs=8 gs=5 bench=107749082 baseline=131804728 */
  /* l=191: bs=8 gs=5 bench=114661096 baseline=135169182 */
  if (l <= 191) { *bs = 8; *gs = 5; return 1; }
  /* l=193: bs=8 gs=6 bench=106850910 baseline=136153194 */
  /* l=197: bs=8 gs=6 bench=109148594 baseline=138990858 */
  /* l=199: bs=8 gs=6 bench=110598972 baseline=140837728 */
  /* l=211: bs=8 gs=6 bench=118186240 baseline=149154296 */
  /* l=223: bs=8 gs=6 bench=126386702 baseline=157941856 */
  if (l <= 223) { *bs = 8; *gs = 6; return 1; }
  /* l=227: bs=8 gs=7 bench=125208846 baseline=160402502 */
  /* l=229: bs=8 gs=7 bench=130195662 baseline=161579110 */
  /* l=233: bs=8 gs=7 bench=133400968 baseline=169123322 */
  /* l=239: bs=8 gs=7 bench=137671594 baseline=173945130 */
  if (l <= 239) { *bs = 8; *gs = 7; return 1; }
  /* l=241: bs=10 gs=6 bench=132514616 baseline=174852084 */
  /* l=251: bs=10 gs=6 bench=138905632 baseline=182412300 */
  if (l <= 251) { *bs = 10; *gs = 6; return 1; }
  /* l=257: bs=8 gs=8 bench=142240978 baseline=186001896 */
  /* l=263: bs=8 gs=8 bench=141810840 baseline=190420594 */
  /* l=269: bs=8 gs=8 bench=146492220 baseline=189317504 */
  /* l=271: bs=8 gs=8 bench=148006666 baseline=191248860 */
  /* l=277: bs=8 gs=8 bench=152014636 baseline=195185618 */
  if (l <= 277) { *bs = 8; *gs = 8; return 1; }
  /* l=281: bs=10 gs=7 bench=148145180 baseline=199067848 */
  /* l=283: bs=10 gs=7 bench=149041334 baseline=200631564 */
  if (l <= 283) { *bs = 10; *gs = 7; return 1; }
  /* l=293: bs=12 gs=6 bench=154267704 baseline=207359722 */
  /* l=307: bs=12 gs=6 bench=167226906 baseline=217736124 */
  /* l=311: bs=12 gs=6 bench=154836874 baseline=225805746 */
  /* l=313: bs=12 gs=6 bench=155565014 baseline=204338352 */
  /* l=317: bs=12 gs=6 bench=158722624 baseline=208704466 */
  if (l <= 317) { *bs = 12; *gs = 6; return 1; }
  /* l=331: bs=10 gs=8 bench=156498678 baseline=218327524 */
  if (l <= 331) { *bs = 10; *gs = 8; return 1; }
  /* l=337: bs=14 gs=6 bench=157302726 baseline=222045398 */
  /* l=347: bs=14 gs=6 bench=163316772 baseline=229322170 */
  if (l <= 347) { *bs = 14; *gs = 6; return 1; }
  /* l=349: bs=12 gs=7 bench=165776406 baseline=230380750 */
  if (l <= 349) { *bs = 12; *gs = 7; return 1; }
  /* l=353: bs=14 gs=6 bench=175024866 baseline=247098734 */
  /* l=359: bs=14 gs=6 bench=179301300 baseline=248102380 */
  if (l <= 359) { *bs = 14; *gs = 6; return 1; }
  /* l=367: bs=10 gs=9 bench=178971318 baseline=253646520 */
  /* l=373: bs=10 gs=9 bench=183013552 baseline=257777738 */
  /* l=379: bs=10 gs=9 bench=187233722 baseline=261716542 */
  /* l=383: bs=10 gs=9 bench=189124688 baseline=265187348 */
  if (l <= 383) { *bs = 10; *gs = 9; return 1; }
  /* l=389: bs=12 gs=8 bench=182998878 baseline=268118980 */
  if (l <= 389) { *bs = 12; *gs = 8; return 1; }
  /* l=397: bs=14 gs=7 bench=183182772 baseline=276787520 */
  /* l=401: bs=14 gs=7 bench=185921040 baseline=280496800 */
  /* l=409: bs=14 gs=7 bench=197530758 baseline=286772026 */
  /* l=419: bs=14 gs=7 bench=199298098 baseline=302769734 */
  /* l=421: bs=14 gs=7 bench=201154416 baseline=295489848 */
  /* l=431: bs=14 gs=7 bench=209492934 baseline=305930040 */
  if (l <= 431) { *bs = 14; *gs = 7; return 1; }
  /* l=433: bs=12 gs=9 bench=203465238 baseline=307903026 */
  /* l=439: bs=12 gs=9 bench=206792758 baseline=313235166 */
  /* l=443: bs=12 gs=9 bench=203286300 baseline=316288630 */
  if (l <= 443) { *bs = 12; *gs = 9; return 1; }
  /* l=449: bs=14 gs=8 bench=192848538 baseline=309957552 */
  /* l=457: bs=14 gs=8 bench=197644554 baseline=315693164 */
  /* l=461: bs=14 gs=8 bench=200096302 baseline=319198590 */
  /* l=463: bs=14 gs=8 bench=202113742 baseline=320974314 */
  /* l=467: bs=14 gs=8 bench=204852676 baseline=323224466 */
  /* l=479: bs=14 gs=8 bench=212028780 baseline=332138932 */
  if (l <= 479) { *bs = 14; *gs = 8; return 1; }
  /* l=487: bs=12 gs=10 bench=216571330 baseline=338287392 */
  /* l=491: bs=12 gs=10 bench=219283454 baseline=342047020 */
  /* l=499: bs=12 gs=10 bench=229095578 baseline=345953836 */
  /* l=503: bs=12 gs=10 bench=243874288 baseline=355029548 */
  if (l <= 503) { *bs = 12; *gs = 10; return 1; }
  /* l=509: bs=14 gs=9 bench=228460664 baseline=377036140 */
  /* l=521: bs=14 gs=9 bench=231579066 baseline=385515630 */
  /* l=523: bs=14 gs=9 bench=225839952 baseline=378852920 */
  /* l=541: bs=14 gs=9 bench=237889250 baseline=379358314 */
  /* l=547: bs=14 gs=9 bench=242647782 baseline=383850320 */
  /* l=557: bs=14 gs=9 bench=256746402 baseline=391119432 */
  if (l <= 557) { *bs = 14; *gs = 9; return 1; }
  /* l=563: bs=14 gs=10 bench=230054808 baseline=407748034 */
  /* l=569: bs=14 gs=10 bench=234900030 baseline=398975622 */
  /* l=571: bs=14 gs=10 bench=236469616 baseline=401497602 */
  /* l=577: bs=14 gs=10 bench=247853960 baseline=410652540 */
  /* l=587: bs=14 gs=10 bench=255596472 baseline=426821340 */
  /* l=593: bs=14 gs=10 bench=255234258 baseline=430664930 */
  /* l=599: bs=14 gs=10 bench=259678056 baseline=427634756 */
  /* l=601: bs=14 gs=10 bench=261736412 baseline=429726108 */
  /* l=607: bs=14 gs=10 bench=259002580 baseline=435282424 */
  /* l=613: bs=14 gs=10 bench=264236154 baseline=428179302 */
  if (l <= 613) { *bs = 14; *gs = 10; return 1; }
  /* l=617: bs=14 gs=11 bench=247282908 baseline=431282154 */
  /* l=619: bs=14 gs=11 bench=256427522 baseline=433031952 */
  /* l=631: bs=14 gs=11 bench=256866106 baseline=457910020 */
  if (l <= 631) { *bs = 14; *gs = 11; return 1; }
  /* l=641: bs=16 gs=10 bench=258094920 baseline=448646912 */
  /* l=643: bs=16 gs=10 bench=258830182 baseline=450347232 */
  /* l=647: bs=16 gs=10 bench=261640822 baseline=453298466 */
  /* l=653: bs=16 gs=10 bench=266338474 baseline=458441334 */
  /* l=659: bs=16 gs=10 bench=270822544 baseline=463681748 */
  /* l=661: bs=16 gs=10 bench=272343138 baseline=464182722 */
  if (l <= 661) { *bs = 16; *gs = 10; return 1; }
  /* l=673: bs=14 gs=12 bench=262968280 baseline=473655180 */
  /* l=677: bs=14 gs=12 bench=265854446 baseline=476924032 */
  /* l=683: bs=14 gs=12 bench=271171922 baseline=481805040 */
  /* l=691: bs=14 gs=12 bench=276437542 baseline=488272772 */
  /* l=701: bs=14 gs=12 bench=283305682 baseline=495950194 */
  if (l <= 701) { *bs = 14; *gs = 12; return 1; }
  /* l=709: bs=16 gs=11 bench=281134482 baseline=501194534 */
  /* l=719: bs=16 gs=11 bench=288002438 baseline=509229934 */
  /* l=727: bs=16 gs=11 bench=294028136 baseline=515635820 */
  if (l <= 727) { *bs = 16; *gs = 11; return 1; }
  /* l=733: bs=14 gs=13 bench=291902058 baseline=518977638 */
  /* l=739: bs=14 gs=13 bench=296727688 baseline=523013206 */
  /* l=743: bs=14 gs=13 bench=281699472 baseline=527162628 */
  /* l=751: bs=14 gs=13 bench=287264794 baseline=500836682 */
  /* l=757: bs=14 gs=13 bench=290745318 baseline=504825256 */
  /* l=761: bs=14 gs=13 bench=293040124 baseline=508544016 */
  if (l <= 761) { *bs = 14; *gs = 13; return 1; }
  /* l=769: bs=16 gs=12 bench=277219852 baseline=512034748 */
  /* l=773: bs=16 gs=12 bench=293004550 baseline=555531410 */
  /* l=787: bs=16 gs=12 bench=304359990 baseline=551848076 */
  /* l=797: bs=16 gs=12 bench=305965686 baseline=560081690 */
  /* l=809: bs=16 gs=12 bench=313790922 baseline=560103382 */
  /* l=811: bs=16 gs=12 bench=329950606 baseline=586604224 */
  /* l=821: bs=16 gs=12 bench=325472086 baseline=593250544 */
  /* l=823: bs=16 gs=12 bench=338403634 baseline=576699208 */
  /* l=827: bs=16 gs=12 bench=343066286 baseline=598238100 */
  /* l=829: bs=16 gs=12 bench=329361998 baseline=603888868 */
  if (l <= 829) { *bs = 16; *gs = 12; return 1; }
  /* l=839: bs=16 gs=13 bench=329434886 baseline=594175982 */
  /* l=853: bs=16 gs=13 bench=329401552 baseline=616760234 */
  /* l=857: bs=16 gs=13 bench=334875656 baseline=602361642 */
  /* l=859: bs=16 gs=13 bench=336082216 baseline=604419544 */
  /* l=863: bs=16 gs=13 bench=339169700 baseline=609184946 */
  if (l <= 863) { *bs = 16; *gs = 13; return 1; }
  /* l=877: bs=18 gs=12 bench=340692146 baseline=619875268 */
  /* l=881: bs=18 gs=12 bench=345041074 baseline=624685898 */
  /* l=883: bs=18 gs=12 bench=347059642 baseline=625945390 */
  /* l=887: bs=18 gs=12 bench=350264244 baseline=631808832 */
  if (l <= 887) { *bs = 18; *gs = 12; return 1; }
  /* l=907: bs=16 gs=14 bench=348433616 baseline=645702800 */
  /* l=911: bs=16 gs=14 bench=340870300 baseline=647839012 */
  /* l=919: bs=16 gs=14 bench=348998002 baseline=636138968 */
  /* l=929: bs=16 gs=14 bench=358073150 baseline=645487444 */
  if (l <= 929) { *bs = 16; *gs = 14; return 1; }
  /* l=937: bs=18 gs=13 bench=357238506 baseline=656121846 */
  /* l=941: bs=18 gs=13 bench=360584358 baseline=663647452 */
  /* l=947: bs=18 gs=13 bench=365102842 baseline=669543452 */
  /* l=953: bs=18 gs=13 bench=337455344 baseline=675973670 */
  if (l <= 953) { *bs = 18; *gs = 13; return 1; }
  /* l=967: bs=20 gs=12 bench=365908240 baseline=626125350 */
  /* l=971: bs=20 gs=12 bench=379377066 baseline=677994140 */
  /* l=977: bs=20 gs=12 bench=384049496 baseline=699744462 */
  /* l=983: bs=20 gs=12 bench=373118336 baseline=705793452 */
  /* l=991: bs=20 gs=12 bench=380742250 baseline=686109844 */
  if (l <= 991) { *bs = 20; *gs = 12; return 1; }
  /* l=997: bs=16 gs=15 bench=387156904 baseline=691233266 */
  if (l <= 997) { *bs = 16; *gs = 15; return 1; }
  /* l=1009: bs=18 gs=14 bench=376402496 baseline=704837770 */
  /* l=1013: bs=18 gs=14 bench=369605072 baseline=710163054 */
  /* l=1019: bs=18 gs=14 bench=375377478 baseline=701042218 */
  /* l=1021: bs=18 gs=14 bench=379396776 baseline=708844258 */
  if (l <= 1021) { *bs = 18; *gs = 14; return 1; }
  /* l=1031: bs=16 gs=16 bench=384508402 baseline=716858630 */
  /* l=1033: bs=16 gs=16 bench=386315348 baseline=717585782 */
  /* l=1039: bs=16 gs=16 bench=407541024 baseline=720573838 */
  if (l <= 1039) { *bs = 16; *gs = 16; return 1; }
  /* l=1049: bs=20 gs=13 bench=393857672 baseline=764669696 */
  /* l=1051: bs=20 gs=13 bench=409576442 baseline=733468334 */
  if (l <= 1051) { *bs = 20; *gs = 13; return 1; }
  /* l=1061: bs=22 gs=12 bench=391986388 baseline=768555598 */
  /* l=1063: bs=22 gs=12 bench=390986440 baseline=741615886 */
  /* l=1069: bs=22 gs=12 bench=395232092 baseline=741598706 */
  if (l <= 1069) { *bs = 22; *gs = 12; return 1; }
  /* l=1087: bs=18 gs=15 bench=407781236 baseline=753596768 */
  /* l=1091: bs=18 gs=15 bench=410560910 baseline=760144092 */
  if (l <= 1091) { *bs = 18; *gs = 15; return 1; }
  /* l=1093: bs=18 gs=14 bench=422862740 baseline=762047278 */
  if (l <= 1093) { *bs = 18; *gs = 14; return 1; }
  /* l=1097: bs=22 gs=12 bench=417034668 baseline=789849538 */
  if (l <= 1097) { *bs = 22; *gs = 12; return 1; }
  /* l=1103: bs=18 gs=15 bench=431380198 baseline=771222660 */
  /* l=1109: bs=18 gs=15 bench=436012144 baseline=797524832 */
  /* l=1117: bs=18 gs=15 bench=425467234 baseline=804615374 */
  if (l <= 1117) { *bs = 18; *gs = 15; return 1; }
  /* l=1123: bs=20 gs=14 bench=408405454 baseline=779061532 */
  /* l=1129: bs=20 gs=14 bench=410857052 baseline=785974024 */
  if (l <= 1129) { *bs = 20; *gs = 14; return 1; }
  /* l=1151: bs=22 gs=13 bench=416929976 baseline=799260950 */
  /* l=1153: bs=22 gs=13 bench=418970036 baseline=802716376 */
  /* l=1163: bs=22 gs=13 bench=426515124 baseline=811306140 */
  /* l=1171: bs=22 gs=13 bench=432304786 baseline=816337120 */
  /* l=1181: bs=22 gs=13 bench=436323402 baseline=824267296 */
  /* l=1187: bs=22 gs=13 bench=454770252 baseline=824282490 */
  /* l=1193: bs=22 gs=13 bench=444874740 baseline=853955138 */
  if (l <= 1193) { *bs = 22; *gs = 13; return 1; }
  /* l=1201: bs=20 gs=15 bench=437325422 baseline=835325186 */
  /* l=1213: bs=20 gs=15 bench=434058772 baseline=843985994 */
  /* l=1217: bs=20 gs=15 bench=437594646 baseline=826071538 */
  /* l=1223: bs=20 gs=15 bench=442477730 baseline=832731956 */
  if (l <= 1223) { *bs = 20; *gs = 15; return 1; }
  /* l=1229: bs=18 gs=17 bench=444848924 baseline=838409546 */
  /* l=1231: bs=18 gs=17 bench=458381768 baseline=846192410 */
  if (l <= 1231) { *bs = 18; *gs = 17; return 1; }
  /* l=1237: bs=22 gs=14 bench=442496064 baseline=865269732 */
  /* l=1249: bs=22 gs=14 bench=452447054 baseline=881054550 */
  /* l=1259: bs=22 gs=14 bench=461074310 baseline=891456760 */
  /* l=1277: bs=22 gs=14 bench=456298582 baseline=906987000 */
  /* l=1279: bs=22 gs=14 bench=469115132 baseline=877046672 */
  if (l <= 1279) { *bs = 22; *gs = 14; return 1; }
  /* l=1283: bs=20 gs=16 bench=473718104 baseline=1123630190 */
  /* l=1289: bs=20 gs=16 bench=457749994 baseline=908513130 */
  /* l=1291: bs=20 gs=16 bench=460302598 baseline=897285724 */
  /* l=1297: bs=20 gs=16 bench=465637440 baseline=899579256 */
  /* l=1301: bs=20 gs=16 bench=467550746 baseline=904726754 */
  /* l=1303: bs=20 gs=16 bench=470327864 baseline=907202700 */
  /* l=1307: bs=20 gs=16 bench=470752382 baseline=911574124 */
  /* l=1319: bs=20 gs=16 bench=480201708 baseline=915052890 */
  if (l <= 1319) { *bs = 20; *gs = 16; return 1; }
  /* l=1321: bs=22 gs=15 bench=478421634 baseline=917766198 */
  /* l=1327: bs=22 gs=15 bench=482140394 baseline=951289662 */
  if (l <= 1327) { *bs = 22; *gs = 15; return 1; }
  /* l=1361: bs=24 gs=14 bench=498580696 baseline=974846330 */
  if (l <= 1361) { *bs = 24; *gs = 14; return 1; }
  /* l=1367: bs=20 gs=17 bench=502333786 baseline=981309750 */
  if (l <= 1367) { *bs = 20; *gs = 17; return 1; }
  /* l=1373: bs=24 gs=14 bench=507299694 baseline=985136392 */
  if (l <= 1373) { *bs = 24; *gs = 14; return 1; }
  /* l=1381: bs=20 gs=17 bench=503176080 baseline=992018184 */
  if (l <= 1381) { *bs = 20; *gs = 17; return 1; }
  /* l=1399: bs=24 gs=14 bench=484601554 baseline=987045696 */
  if (l <= 1399) { *bs = 24; *gs = 14; return 1; }
  /* l=1409: bs=22 gs=16 bench=456957726 baseline=930978262 */
  /* l=1423: bs=22 gs=16 bench=487269030 baseline=942973622 */
  /* l=1427: bs=22 gs=16 bench=493351364 baseline=987436988 */
  /* l=1429: bs=22 gs=16 bench=493724632 baseline=993603176 */
  /* l=1433: bs=22 gs=16 bench=510977658 baseline=996933030 */
  if (l <= 1433) { *bs = 22; *gs = 16; return 1; }
  /* l=1447: bs=20 gs=18 bench=512000856 baseline=1040629276 */
  if (l <= 1447) { *bs = 20; *gs = 18; return 1; }
  /* l=1451: bs=24 gs=15 bench=514491980 baseline=1020242250 */
  if (l <= 1451) { *bs = 24; *gs = 15; return 1; }
  /* l=1453: bs=22 gs=16 bench=515362888 baseline=1023581828 */
  if (l <= 1453) { *bs = 22; *gs = 16; return 1; }
  /* l=1459: bs=20 gs=18 bench=514700590 baseline=1023368146 */
  if (l <= 1459) { *bs = 20; *gs = 18; return 1; }
  /* l=1471: bs=22 gs=16 bench=521180146 baseline=1027584804 */
  /* l=1481: bs=22 gs=16 bench=546009278 baseline=1029913052 */
  /* l=1483: bs=22 gs=16 bench=523328692 baseline=1067240908 */
  if (l <= 1483) { *bs = 22; *gs = 16; return 1; }
  /* l=1487: bs=20 gs=18 bench=526871338 baseline=1020449990 */
  /* l=1489: bs=20 gs=18 bench=547729840 baseline=1063921252 */
  /* l=1493: bs=20 gs=18 bench=552276324 baseline=1065644164 */
  if (l <= 1493) { *bs = 20; *gs = 18; return 1; }
  /* l=1499: bs=22 gs=17 bench=524290604 baseline=1074366316 */
  /* l=1511: bs=22 gs=17 bench=535528084 baseline=1080276362 */
  /* l=1523: bs=22 gs=17 bench=543263514 baseline=1095098048 */
  /* l=1531: bs=22 gs=17 bench=549290630 baseline=1098222876 */
  if (l <= 1531) { *bs = 22; *gs = 17; return 1; }
  /* l=1543: bs=24 gs=16 bench=540080490 baseline=1105365892 */
  /* l=1549: bs=24 gs=16 bench=545577008 baseline=1109990050 */
  /* l=1553: bs=24 gs=16 bench=546314498 baseline=1116431238 */
  /* l=1559: bs=24 gs=16 bench=551107712 baseline=1116418300 */
  if (l <= 1559) { *bs = 24; *gs = 16; return 1; }
  /* l=1567: bs=30 gs=13 bench=526995918 baseline=1122219414 */
  /* l=1571: bs=30 gs=13 bench=528616248 baseline=1089416732 */
  /* l=1579: bs=30 gs=13 bench=539283096 baseline=1094014024 */
  /* l=1583: bs=30 gs=13 bench=537131990 baseline=1105485066 */
  if (l <= 1583) { *bs = 30; *gs = 13; return 1; }
  /* l=1597: bs=22 gs=18 bench=534191514 baseline=1106225836 */
  /* l=1601: bs=22 gs=18 bench=539318974 baseline=1109693032 */
  if (l <= 1601) { *bs = 22; *gs = 18; return 1; }
  /* l=1607: bs=30 gs=13 bench=556841846 baseline=1123288610 */
  if (l <= 1607) { *bs = 30; *gs = 13; return 1; }
  /* l=1609: bs=22 gs=18 bench=573803136 baseline=1120303842 */
  /* l=1613: bs=22 gs=18 bench=538837456 baseline=1182503662 */
  /* l=1619: bs=22 gs=18 bench=546242014 baseline=1108199788 */
  /* l=1621: bs=22 gs=18 bench=558798940 baseline=1129527536 */
  /* l=1627: bs=22 gs=18 bench=549491244 baseline=1147592592 */
  if (l <= 1627) { *bs = 22; *gs = 18; return 1; }
  /* l=1637: bs=24 gs=17 bench=548978904 baseline=1121835494 */
  /* l=1657: bs=24 gs=17 bench=563577698 baseline=1147826974 */
  /* l=1663: bs=24 gs=17 bench=567841346 baseline=1157091212 */
  /* l=1667: bs=24 gs=17 bench=572725526 baseline=1158606336 */
  /* l=1669: bs=24 gs=17 bench=573895728 baseline=1163414152 */
  if (l <= 1669) { *bs = 24; *gs = 17; return 1; }
  /* l=1693: bs=30 gs=14 bench=543833940 baseline=1181693828 */
  /* l=1697: bs=30 gs=14 bench=536136648 baseline=1188524282 */
  if (l <= 1697) { *bs = 30; *gs = 14; return 1; }
  /* l=1699: bs=22 gs=19 bench=529677268 baseline=1167061358 */
  if (l <= 1699) { *bs = 22; *gs = 19; return 1; }
  /* l=1709: bs=30 gs=14 bench=550992390 baseline=1177323766 */
  /* l=1721: bs=30 gs=14 bench=555301928 baseline=1197153140 */
  /* l=1723: bs=30 gs=14 bench=562278882 baseline=1191871024 */
  /* l=1733: bs=30 gs=14 bench=563602490 baseline=1209218166 */
  /* l=1741: bs=30 gs=14 bench=570440578 baseline=1204673352 */
  /* l=1747: bs=30 gs=14 bench=574471386 baseline=1211117296 */
  /* l=1753: bs=30 gs=14 bench=580043354 baseline=1216929824 */
  /* l=1759: bs=30 gs=14 bench=586431206 baseline=1222490600 */
  if (l <= 1759) { *bs = 30; *gs = 14; return 1; }
  /* l=1777: bs=22 gs=20 bench=587421250 baseline=1236805320 */
  /* l=1783: bs=22 gs=20 bench=591459196 baseline=1248948564 */
  /* l=1787: bs=22 gs=20 bench=599793678 baseline=1252196000 */
  /* l=1789: bs=22 gs=20 bench=601966364 baseline=1263260546 */
  if (l <= 1789) { *bs = 22; *gs = 20; return 1; }
  /* l=1801: bs=30 gs=15 bench=557780878 baseline=1304317358 */
  /* l=1811: bs=30 gs=15 bench=569424314 baseline=1267690542 */
  /* l=1823: bs=30 gs=15 bench=572522602 baseline=1289213986 */
  /* l=1831: bs=30 gs=15 bench=581912898 baseline=1281837896 */
  /* l=1847: bs=30 gs=15 bench=586857166 baseline=1300225578 */
  /* l=1861: bs=30 gs=15 bench=594040378 baseline=1296353004 */
  /* l=1867: bs=30 gs=15 bench=621353026 baseline=1295913878 */
  /* l=1871: bs=30 gs=15 bench=625362236 baseline=1351688014 */
  if (l <= 1871) { *bs = 30; *gs = 15; return 1; }
  /* l=1873: bs=22 gs=21 bench=614759324 baseline=1351701654 */
  if (l <= 1873) { *bs = 22; *gs = 21; return 1; }
  /* l=1877: bs=30 gs=15 bench=618832644 baseline=1334166116 */
  /* l=1879: bs=30 gs=15 bench=619364916 baseline=1335358270 */
  /* l=1889: bs=30 gs=15 bench=621884714 baseline=1339927108 */
  /* l=1901: bs=30 gs=15 bench=643415180 baseline=1337468582 */
  /* l=1907: bs=30 gs=15 bench=626646908 baseline=1372035024 */
  /* l=1913: bs=30 gs=15 bench=646761748 baseline=1330947200 */
  if (l <= 1913) { *bs = 30; *gs = 15; return 1; }
  /* l=1931: bs=30 gs=16 bench=596220380 baseline=1374037332 */
  /* l=1933: bs=30 gs=16 bench=572688054 baseline=1383956080 */
  /* l=1949: bs=30 gs=16 bench=587160330 baseline=1340603758 */
  /* l=1951: bs=30 gs=16 bench=592997024 baseline=1348877768 */
  /* l=1973: bs=30 gs=16 bench=574778132 baseline=1374677356 */
  /* l=1979: bs=30 gs=16 bench=579966962 baseline=1299624980 */
  if (l <= 1979) { *bs = 30; *gs = 16; return 1; }
  /* l=1987: bs=22 gs=22 bench=618574824 baseline=1309110512 */
  if (l <= 1987) { *bs = 22; *gs = 22; return 1; }
  /* l=1993: bs=30 gs=16 bench=628792666 baseline=1421847256 */
  /* l=1997: bs=30 gs=16 bench=635395306 baseline=1407461058 */
  /* l=1999: bs=30 gs=16 bench=628583548 baseline=1415300306 */
  /* l=2003: bs=30 gs=16 bench=621250860 baseline=1400436310 */
  /* l=2011: bs=30 gs=16 bench=629517766 baseline=1386510386 */
  if (l <= 2011) { *bs = 30; *gs = 16; return 1; }
  /* l=2017: bs=24 gs=21 bench=642923752 baseline=1395300680 */
  /* l=2027: bs=24 gs=21 bench=653949950 baseline=1427584510 */
  /* l=2029: bs=24 gs=21 bench=656231048 baseline=1438468918 */
  /* l=2039: bs=24 gs=21 bench=662766720 baseline=1443742250 */
  if (l <= 2039) { *bs = 24; *gs = 21; return 1; }
  /* l=2053: bs=30 gs=17 bench=622128464 baseline=1452271648 */
  /* l=2063: bs=30 gs=17 bench=612366662 baseline=1460851620 */
  /* l=2069: bs=30 gs=17 bench=619840394 baseline=1427491954 */
  /* l=2081: bs=30 gs=17 bench=622676966 baseline=1441760698 */
  /* l=2083: bs=30 gs=17 bench=633007962 baseline=1434408192 */
  /* l=2087: bs=30 gs=17 bench=633129854 baseline=1457364808 */
  /* l=2089: bs=30 gs=17 bench=638153246 baseline=1454407818 */
  /* l=2099: bs=30 gs=17 bench=661146768 baseline=1464922376 */
  /* l=2111: bs=30 gs=17 bench=668686830 baseline=1512432888 */
  /* l=2113: bs=30 gs=17 bench=658122646 baseline=1515248062 */
  /* l=2129: bs=30 gs=17 bench=664633134 baseline=1497519132 */
  /* l=2131: bs=30 gs=17 bench=668337696 baseline=1484905870 */
  /* l=2137: bs=30 gs=17 bench=659905304 baseline=1498738744 */
  /* l=2141: bs=30 gs=17 bench=690303414 baseline=1473925576 */
  if (l <= 2141) { *bs = 30; *gs = 17; return 1; }
  /* l=2143: bs=22 gs=24 bench=636962878 baseline=1533963044 */
  if (l <= 2143) { *bs = 22; *gs = 24; return 1; }
  /* l=2153: bs=30 gs=17 bench=648399164 baseline=1543096082 */
  if (l <= 2153) { *bs = 30; *gs = 17; return 1; }
  /* l=2161: bs=30 gs=18 bench=597998932 baseline=1434303366 */
  /* l=2179: bs=30 gs=18 bench=610508312 baseline=1455607934 */
  /* l=2203: bs=30 gs=18 bench=628284560 baseline=1473691418 */
  /* l=2207: bs=30 gs=18 bench=630077798 baseline=1479672470 */
  /* l=2213: bs=30 gs=18 bench=635696472 baseline=1482791770 */
  /* l=2221: bs=30 gs=18 bench=667241540 baseline=1491000706 */
  /* l=2237: bs=30 gs=18 bench=680976024 baseline=1566866014 */
  /* l=2239: bs=30 gs=18 bench=672873044 baseline=1576859808 */
  /* l=2243: bs=30 gs=18 bench=674566132 baseline=1556576066 */
  /* l=2251: bs=30 gs=18 bench=683534454 baseline=1558487992 */
  /* l=2267: bs=30 gs=18 bench=697069210 baseline=1575937470 */
  /* l=2269: bs=30 gs=18 bench=701347122 baseline=1586126874 */
  /* l=2273: bs=30 gs=18 bench=704593944 baseline=1593510092 */
  if (l <= 2273) { *bs = 30; *gs = 18; return 1; }
  /* l=2281: bs=30 gs=19 bench=653023372 baseline=1598380136 */
  /* l=2287: bs=30 gs=19 bench=662291584 baseline=1606075526 */
  /* l=2293: bs=30 gs=19 bench=673562946 baseline=1623075448 */
  /* l=2297: bs=30 gs=19 bench=660900720 baseline=1597574108 */
  /* l=2309: bs=30 gs=19 bench=658413122 baseline=1616902136 */
  /* l=2311: bs=30 gs=19 bench=668651316 baseline=1591413098 */
  /* l=2333: bs=30 gs=19 bench=685773924 baseline=1625464380 */
  /* l=2339: bs=30 gs=19 bench=693453300 baseline=1634293812 */
  /* l=2341: bs=30 gs=19 bench=694589370 baseline=1641151426 */
  if (l <= 2341) { *bs = 30; *gs = 19; return 1; }
  /* l=2347: bs=32 gs=18 bench=706001578 baseline=1646591462 */
  if (l <= 2347) { *bs = 32; *gs = 18; return 1; }
  /* l=2351: bs=30 gs=19 bench=734182222 baseline=1644054114 */
  /* l=2357: bs=30 gs=19 bench=709388704 baseline=1729033074 */
  /* l=2371: bs=30 gs=19 bench=691267200 baseline=1676142412 */
  /* l=2377: bs=30 gs=19 bench=739509678 baseline=1607496986 */
  /* l=2381: bs=30 gs=19 bench=742314724 baseline=1714726972 */
  /* l=2383: bs=30 gs=19 bench=737154436 baseline=1717527936 */
  /* l=2389: bs=30 gs=19 bench=725137264 baseline=1710309352 */
  /* l=2393: bs=30 gs=19 bench=732918952 baseline=1674045456 */
  /* l=2399: bs=30 gs=19 bench=736794568 baseline=1704950582 */
  if (l <= 2399) { *bs = 30; *gs = 19; return 1; }
  /* l=2411: bs=30 gs=20 bench=683071390 baseline=1698883574 */
  /* l=2417: bs=30 gs=20 bench=686737462 baseline=1698715432 */
  /* l=2423: bs=30 gs=20 bench=692077460 baseline=1702609086 */
  /* l=2437: bs=30 gs=20 bench=701062982 baseline=1715722678 */
  /* l=2441: bs=30 gs=20 bench=706682710 baseline=1717525978 */
  /* l=2447: bs=30 gs=20 bench=715530976 baseline=1729386154 */
  /* l=2459: bs=30 gs=20 bench=725270986 baseline=1749699558 */
  /* l=2467: bs=30 gs=20 bench=728937394 baseline=1757481500 */
  /* l=2473: bs=30 gs=20 bench=734581658 baseline=1760358432 */
  /* l=2477: bs=30 gs=20 bench=738727068 baseline=1765423812 */
  /* l=2503: bs=30 gs=20 bench=757034680 baseline=1787385354 */
  if (l <= 2503) { *bs = 30; *gs = 20; return 1; }
  /* l=2521: bs=30 gs=21 bench=710284862 baseline=1799666366 */
  /* l=2531: bs=30 gs=21 bench=659087458 baseline=1804281464 */
  /* l=2539: bs=30 gs=21 bench=681780100 baseline=1667830732 */
  /* l=2543: bs=30 gs=21 bench=686119974 baseline=1713064374 */
  /* l=2549: bs=30 gs=21 bench=693301094 baseline=1723703352 */
  /* l=2551: bs=30 gs=21 bench=712053528 baseline=1730127766 */
  /* l=2557: bs=30 gs=21 bench=717354430 baseline=1782373774 */
  if (l <= 2557) { *bs = 30; *gs = 21; return 1; }
  /* l=2579: bs=32 gs=20 bench=729652402 baseline=1798891802 */
  /* l=2591: bs=32 gs=20 bench=689164674 baseline=1810169270 */
  /* l=2593: bs=32 gs=20 bench=764835994 baseline=1688101440 */
  /* l=2609: bs=32 gs=20 bench=748302084 baseline=1879434604 */
  /* l=2617: bs=32 gs=20 bench=759806220 baseline=1820780560 */
  /* l=2621: bs=32 gs=20 bench=771225472 baseline=1837726820 */
  /* l=2633: bs=32 gs=20 bench=785342804 baseline=1867701378 */
  if (l <= 2633) { *bs = 32; *gs = 20; return 1; }
  /* l=2647: bs=30 gs=22 bench=719083536 baseline=1892404566 */
  /* l=2657: bs=30 gs=22 bench=718381394 baseline=1856168934 */
  /* l=2659: bs=30 gs=22 bench=759266840 baseline=1834337018 */
  /* l=2663: bs=30 gs=22 bench=730096400 baseline=1880541366 */
  /* l=2671: bs=30 gs=22 bench=779273256 baseline=1859118148 */
  /* l=2677: bs=30 gs=22 bench=751615870 baseline=1941867680 */
  /* l=2683: bs=30 gs=22 bench=756383732 baseline=1895644878 */
  /* l=2687: bs=30 gs=22 bench=746285476 baseline=1899310586 */
  if (l <= 2687) { *bs = 30; *gs = 22; return 1; }
  /* l=2689: bs=32 gs=21 bench=742016338 baseline=2599809614 */
  /* l=2693: bs=32 gs=21 bench=770550494 baseline=1878987290 */
  if (l <= 2693) { *bs = 32; *gs = 21; return 1; }
  /* l=2699: bs=30 gs=22 bench=784376702 baseline=1950643364 */
  if (l <= 2699) { *bs = 30; *gs = 22; return 1; }
  /* l=3259: bs=30 gs=27 bench=832572548 baseline=2282400788 */
  if (l <= 3259) { *bs = 30; *gs = 27; return 1; }
  return 0;
}
