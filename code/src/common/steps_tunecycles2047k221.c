#include "steps.h"

int steps_guess(long long *bs,long long *gs,long long l)
{
  /* l=3: bs=0 gs=0 bench=145932 baseline=130949 */
  /* l=5: bs=0 gs=0 bench=170098 baseline=167980 */
  /* l=7: bs=0 gs=0 bench=227176 baseline=233330 */
  /* l=11: bs=0 gs=0 bench=338981 baseline=354760 */
  /* l=13: bs=0 gs=0 bench=394966 baseline=410460 */
  /* l=17: bs=0 gs=0 bench=507482 baseline=522454 */
  /* l=19: bs=0 gs=0 bench=564515 baseline=587778 */
  /* l=23: bs=0 gs=0 bench=678439 baseline=709699 */
  /* l=29: bs=0 gs=0 bench=845913 baseline=877526 */
  /* l=31: bs=0 gs=0 bench=902610 baseline=941624 */
  /* l=37: bs=0 gs=0 bench=1069795 baseline=1100576 */
  /* l=41: bs=0 gs=0 bench=1181438 baseline=1212488 */
  /* l=43: bs=0 gs=0 bench=1237734 baseline=1278185 */
  /* l=47: bs=0 gs=0 bench=1353153 baseline=1398626 */
  /* l=53: bs=0 gs=0 bench=1520948 baseline=1558843 */
  /* l=59: bs=0 gs=0 bench=1688002 baseline=1736788 */
  /* l=61: bs=0 gs=0 bench=1748035 baseline=1790724 */
  /* l=67: bs=0 gs=0 bench=1940961 baseline=1951165 */
  /* l=71: bs=0 gs=0 bench=2058718 baseline=2072789 */
  /* l=73: bs=0 gs=0 bench=2109426 baseline=2120447 */
  /* l=79: bs=0 gs=0 bench=2280776 baseline=2305687 */
  /* l=83: bs=0 gs=0 bench=2390673 baseline=2410502 */
  /* l=89: bs=0 gs=0 bench=2559105 baseline=2579633 */
  if (l <= 89) { *bs = 0; *gs = 0; return 1; }
  /* l=97: bs=6 gs=4 bench=2727041 baseline=2795834 */
  /* l=101: bs=6 gs=4 bench=2814034 baseline=2922884 */
  /* l=103: bs=6 gs=4 bench=2863750 baseline=2981826 */
  /* l=107: bs=6 gs=4 bench=2979426 baseline=3096534 */
  /* l=109: bs=6 gs=4 bench=3003932 baseline=3149898 */
  /* l=113: bs=6 gs=4 bench=3114229 baseline=3254869 */
  if (l <= 113) { *bs = 6; *gs = 4; return 1; }
  /* l=127: bs=6 gs=5 bench=3414063 baseline=3675048 */
  if (l <= 127) { *bs = 6; *gs = 5; return 1; }
  /* l=131: bs=8 gs=4 bench=3451783 baseline=3762308 */
  /* l=137: bs=8 gs=4 bench=3613347 baseline=3930137 */
  /* l=139: bs=8 gs=4 bench=3678333 baseline=3996176 */
  if (l <= 139) { *bs = 8; *gs = 4; return 1; }
  /* l=149: bs=6 gs=6 bench=3879907 baseline=4275591 */
  /* l=151: bs=6 gs=6 bench=3938719 baseline=4341522 */
  /* l=157: bs=6 gs=6 bench=4078729 baseline=4509975 */
  if (l <= 157) { *bs = 6; *gs = 6; return 1; }
  /* l=163: bs=8 gs=5 bench=4020026 baseline=4676232 */
  /* l=167: bs=8 gs=5 bench=4128788 baseline=4792203 */
  /* l=173: bs=8 gs=5 bench=4305619 baseline=4965215 */
  /* l=179: bs=8 gs=5 bench=4442908 baseline=5139338 */
  /* l=181: bs=8 gs=5 bench=4511834 baseline=5184806 */
  /* l=191: bs=8 gs=5 bench=4778468 baseline=5484708 */
  if (l <= 191) { *bs = 8; *gs = 5; return 1; }
  /* l=193: bs=8 gs=6 bench=4542405 baseline=5505843 */
  /* l=197: bs=8 gs=6 bench=4616795 baseline=5626107 */
  /* l=199: bs=8 gs=6 bench=4650231 baseline=5692058 */
  /* l=211: bs=8 gs=6 bench=4957864 baseline=6032310 */
  /* l=223: bs=8 gs=6 bench=5301825 baseline=6388070 */
  if (l <= 223) { *bs = 8; *gs = 6; return 1; }
  /* l=227: bs=8 gs=7 bench=5278268 baseline=6484584 */
  /* l=229: bs=8 gs=7 bench=5339625 baseline=6541950 */
  /* l=233: bs=8 gs=7 bench=5463541 baseline=6656308 */
  /* l=239: bs=8 gs=7 bench=5626514 baseline=6836075 */
  if (l <= 239) { *bs = 8; *gs = 7; return 1; }
  /* l=241: bs=10 gs=6 bench=5425468 baseline=6878074 */
  /* l=251: bs=10 gs=6 bench=5663320 baseline=7181529 */
  if (l <= 251) { *bs = 10; *gs = 6; return 1; }
  /* l=257: bs=8 gs=8 bench=5850118 baseline=7313063 */
  /* l=263: bs=8 gs=8 bench=5993925 baseline=7491521 */
  /* l=269: bs=8 gs=8 bench=6172291 baseline=7660806 */
  /* l=271: bs=8 gs=8 bench=6218801 baseline=7731472 */
  /* l=277: bs=8 gs=8 bench=6373308 baseline=7886840 */
  if (l <= 277) { *bs = 8; *gs = 8; return 1; }
  /* l=281: bs=10 gs=7 bench=6185516 baseline=8007893 */
  /* l=283: bs=10 gs=7 bench=6201303 baseline=8074594 */
  if (l <= 283) { *bs = 10; *gs = 7; return 1; }
  /* l=293: bs=12 gs=6 bench=6436908 baseline=8336789 */
  /* l=307: bs=12 gs=6 bench=6832896 baseline=8753937 */
  /* l=311: bs=12 gs=6 bench=6945274 baseline=8867235 */
  /* l=313: bs=12 gs=6 bench=6974708 baseline=8916417 */
  /* l=317: bs=12 gs=6 bench=7089410 baseline=9037040 */
  if (l <= 317) { *bs = 12; *gs = 6; return 1; }
  /* l=331: bs=10 gs=8 bench=7027222 baseline=9426199 */
  if (l <= 331) { *bs = 10; *gs = 8; return 1; }
  /* l=337: bs=14 gs=6 bench=7092016 baseline=9575677 */
  if (l <= 337) { *bs = 14; *gs = 6; return 1; }
  /* l=347: bs=12 gs=7 bench=7360051 baseline=9886678 */
  /* l=349: bs=12 gs=7 bench=7411441 baseline=9936788 */
  if (l <= 349) { *bs = 12; *gs = 7; return 1; }
  /* l=353: bs=14 gs=6 bench=7507790 baseline=10034829 */
  /* l=359: bs=14 gs=6 bench=7673455 baseline=10217730 */
  if (l <= 359) { *bs = 14; *gs = 6; return 1; }
  /* l=367: bs=10 gs=9 bench=7679220 baseline=10452335 */
  /* l=373: bs=10 gs=9 bench=7850379 baseline=10609214 */
  /* l=379: bs=10 gs=9 bench=8021221 baseline=10795404 */
  /* l=383: bs=10 gs=9 bench=8107415 baseline=10911492 */
  if (l <= 383) { *bs = 10; *gs = 9; return 1; }
  /* l=389: bs=12 gs=8 bench=7782522 baseline=11040292 */
  if (l <= 389) { *bs = 12; *gs = 8; return 1; }
  /* l=397: bs=14 gs=7 bench=7740211 baseline=11278235 */
  /* l=401: bs=14 gs=7 bench=7856629 baseline=11384642 */
  /* l=419: bs=14 gs=7 bench=8375126 baseline=11903702 */
  /* l=421: bs=14 gs=7 bench=8386064 baseline=11953653 */
  /* l=431: bs=14 gs=7 bench=8680969 baseline=12252648 */
  if (l <= 431) { *bs = 14; *gs = 7; return 1; }
  /* l=433: bs=12 gs=9 bench=8461333 baseline=12295017 */
  /* l=439: bs=12 gs=9 bench=8603117 baseline=12479817 */
  /* l=443: bs=12 gs=9 bench=8743529 baseline=12598109 */
  if (l <= 443) { *bs = 12; *gs = 9; return 1; }
  /* l=449: bs=14 gs=8 bench=8283646 baseline=12737162 */
  /* l=457: bs=14 gs=8 bench=8478861 baseline=12970945 */
  /* l=461: bs=14 gs=8 bench=8579908 baseline=13089798 */
  /* l=463: bs=14 gs=8 bench=8645688 baseline=13153241 */
  /* l=467: bs=14 gs=8 bench=8776221 baseline=13266340 */
  /* l=479: bs=14 gs=8 bench=9056900 baseline=13614061 */
  /* l=487: bs=14 gs=8 bench=9286709 baseline=13830538 */
  /* l=491: bs=14 gs=8 bench=9410024 baseline=13951325 */
  /* l=499: bs=14 gs=8 bench=9632431 baseline=14176790 */
  /* l=503: bs=14 gs=8 bench=9737277 baseline=14289773 */
  if (l <= 503) { *bs = 14; *gs = 8; return 1; }
  /* l=509: bs=14 gs=9 bench=9140030 baseline=14457550 */
  /* l=521: bs=14 gs=9 bench=9476954 baseline=14762946 */
  /* l=523: bs=14 gs=9 bench=9545331 baseline=14837389 */
  /* l=541: bs=14 gs=9 bench=10013972 baseline=15341159 */
  /* l=547: bs=14 gs=9 bench=10189027 baseline=15510913 */
  /* l=557: bs=14 gs=9 bench=10478063 baseline=16069151 */
  if (l <= 557) { *bs = 14; *gs = 9; return 1; }
  /* l=563: bs=14 gs=10 bench=9805252 baseline=15971135 */
  /* l=569: bs=14 gs=10 bench=9991908 baseline=16137244 */
  /* l=571: bs=14 gs=10 bench=10038726 baseline=16202263 */
  /* l=577: bs=14 gs=10 bench=10202936 baseline=16339416 */
  if (l <= 577) { *bs = 14; *gs = 10; return 1; }
  /* l=587: bs=16 gs=9 bench=10465054 baseline=16645386 */
  if (l <= 587) { *bs = 16; *gs = 9; return 1; }
  /* l=593: bs=14 gs=10 bench=10618879 baseline=16798226 */
  /* l=599: bs=14 gs=10 bench=10780114 baseline=16982011 */
  /* l=601: bs=14 gs=10 bench=10844305 baseline=17033662 */
  /* l=607: bs=14 gs=10 bench=11006998 baseline=17216719 */
  if (l <= 607) { *bs = 14; *gs = 10; return 1; }
  /* l=613: bs=16 gs=9 bench=11157517 baseline=17370413 */
  if (l <= 613) { *bs = 16; *gs = 9; return 1; }
  /* l=617: bs=14 gs=11 bench=10582823 baseline=17482871 */
  /* l=619: bs=14 gs=11 bench=10621932 baseline=17559373 */
  /* l=631: bs=14 gs=11 bench=10948395 baseline=17893931 */
  if (l <= 631) { *bs = 14; *gs = 11; return 1; }
  /* l=641: bs=16 gs=10 bench=10936837 baseline=18145914 */
  /* l=643: bs=16 gs=10 bench=10980752 baseline=18216891 */
  /* l=647: bs=16 gs=10 bench=11079182 baseline=18323302 */
  /* l=653: bs=16 gs=10 bench=11239317 baseline=18497532 */
  /* l=659: bs=16 gs=10 bench=11425423 baseline=18677406 */
  /* l=661: bs=16 gs=10 bench=11469079 baseline=18719914 */
  if (l <= 661) { *bs = 16; *gs = 10; return 1; }
  /* l=673: bs=14 gs=12 bench=11298788 baseline=19051283 */
  /* l=677: bs=14 gs=12 bench=11371897 baseline=19171434 */
  /* l=683: bs=14 gs=12 bench=11538130 baseline=19361623 */
  /* l=691: bs=14 gs=12 bench=11753668 baseline=19581999 */
  /* l=701: bs=14 gs=12 bench=12020969 baseline=19868386 */
  if (l <= 701) { *bs = 14; *gs = 12; return 1; }
  /* l=709: bs=16 gs=11 bench=11855271 baseline=20073301 */
  /* l=719: bs=16 gs=11 bench=12128602 baseline=20368246 */
  /* l=727: bs=16 gs=11 bench=12340536 baseline=20598044 */
  if (l <= 727) { *bs = 16; *gs = 11; return 1; }
  /* l=733: bs=14 gs=13 bench=12373225 baseline=20770650 */
  /* l=739: bs=14 gs=13 bench=12536126 baseline=20938725 */
  /* l=743: bs=14 gs=13 bench=12663023 baseline=21049271 */
  /* l=751: bs=14 gs=13 bench=12916619 baseline=21281238 */
  /* l=757: bs=14 gs=13 bench=13004491 baseline=21443332 */
  /* l=761: bs=14 gs=13 bench=13131089 baseline=21559415 */
  if (l <= 761) { *bs = 14; *gs = 13; return 1; }
  /* l=769: bs=16 gs=12 bench=12481205 baseline=21749901 */
  /* l=773: bs=16 gs=12 bench=12570379 baseline=21867781 */
  /* l=787: bs=16 gs=12 bench=12943158 baseline=22281486 */
  /* l=797: bs=16 gs=12 bench=13216155 baseline=22560397 */
  /* l=809: bs=16 gs=12 bench=13526602 baseline=22894662 */
  /* l=811: bs=16 gs=12 bench=13606242 baseline=22965723 */
  /* l=821: bs=16 gs=12 bench=13853806 baseline=23237951 */
  /* l=823: bs=16 gs=12 bench=13901065 baseline=23299214 */
  /* l=827: bs=16 gs=12 bench=14062578 baseline=23426039 */
  /* l=829: bs=16 gs=12 bench=14079084 baseline=23474982 */
  if (l <= 829) { *bs = 16; *gs = 12; return 1; }
  /* l=839: bs=16 gs=13 bench=13608186 baseline=23740569 */
  /* l=853: bs=16 gs=13 bench=13995520 baseline=24169365 */
  /* l=857: bs=16 gs=13 bench=14102951 baseline=24258279 */
  /* l=859: bs=16 gs=13 bench=14176199 baseline=24328656 */
  /* l=863: bs=16 gs=13 bench=14290219 baseline=24434308 */
  if (l <= 863) { *bs = 16; *gs = 13; return 1; }
  /* l=877: bs=18 gs=12 bench=14367377 baseline=24821055 */
  /* l=881: bs=18 gs=12 bench=14462013 baseline=24929311 */
  /* l=883: bs=18 gs=12 bench=14507077 baseline=25005921 */
  /* l=887: bs=18 gs=12 bench=14623705 baseline=25111162 */
  if (l <= 887) { *bs = 18; *gs = 12; return 1; }
  /* l=907: bs=16 gs=14 bench=14636688 baseline=25669706 */
  /* l=911: bs=16 gs=14 bench=14766431 baseline=25775501 */
  /* l=919: bs=16 gs=14 bench=14950169 baseline=26024656 */
  /* l=929: bs=16 gs=14 bench=15191523 baseline=26271697 */
  if (l <= 929) { *bs = 16; *gs = 14; return 1; }
  /* l=937: bs=18 gs=13 bench=15062182 baseline=26505797 */
  /* l=941: bs=18 gs=13 bench=15158369 baseline=26625076 */
  /* l=947: bs=18 gs=13 bench=15306467 baseline=26815088 */
  /* l=953: bs=18 gs=13 bench=15499981 baseline=26966365 */
  if (l <= 953) { *bs = 18; *gs = 13; return 1; }
  /* l=967: bs=20 gs=12 bench=15668415 baseline=27352030 */
  /* l=971: bs=20 gs=12 bench=15707773 baseline=27480502 */
  /* l=977: bs=20 gs=12 bench=15907507 baseline=27635145 */
  /* l=983: bs=20 gs=12 bench=16093974 baseline=27813974 */
  /* l=991: bs=20 gs=12 bench=16294570 baseline=28051565 */
  /* l=997: bs=20 gs=12 bench=16432367 baseline=28199673 */
  if (l <= 997) { *bs = 20; *gs = 12; return 1; }
  /* l=1009: bs=18 gs=14 bench=15938286 baseline=28553927 */
  /* l=1013: bs=18 gs=14 bench=16037318 baseline=28659233 */
  /* l=1019: bs=18 gs=14 bench=16219169 baseline=28851745 */
  /* l=1021: bs=18 gs=14 bench=16284039 baseline=28890977 */
  if (l <= 1021) { *bs = 18; *gs = 14; return 1; }
  /* l=1031: bs=16 gs=16 bench=16552467 baseline=29141743 */
  if (l <= 1031) { *bs = 16; *gs = 16; return 1; }
  /* l=1033: bs=18 gs=14 bench=16631910 baseline=29196459 */
  if (l <= 1033) { *bs = 18; *gs = 14; return 1; }
  /* l=1039: bs=16 gs=16 bench=16781928 baseline=29375831 */
  if (l <= 1039) { *bs = 16; *gs = 16; return 1; }
  /* l=1049: bs=20 gs=13 bench=16695855 baseline=29658441 */
  /* l=1051: bs=20 gs=13 bench=16770459 baseline=29735342 */
  if (l <= 1051) { *bs = 20; *gs = 13; return 1; }
  /* l=1061: bs=22 gs=12 bench=16675978 baseline=29989471 */
  /* l=1063: bs=22 gs=12 bench=16762315 baseline=30047561 */
  /* l=1069: bs=22 gs=12 bench=16916326 baseline=30215944 */
  if (l <= 1069) { *bs = 22; *gs = 12; return 1; }
  /* l=1087: bs=18 gs=15 bench=17357549 baseline=30744894 */
  /* l=1091: bs=18 gs=15 bench=17473780 baseline=30843492 */
  /* l=1093: bs=18 gs=15 bench=17546940 baseline=30885933 */
  /* l=1097: bs=18 gs=15 bench=17646654 baseline=31000952 */
  /* l=1103: bs=18 gs=15 bench=17807679 baseline=31186762 */
  /* l=1109: bs=18 gs=15 bench=17995551 baseline=31346974 */
  /* l=1117: bs=18 gs=15 bench=18194987 baseline=31583621 */
  if (l <= 1117) { *bs = 18; *gs = 15; return 1; }
  /* l=1123: bs=20 gs=14 bench=17463309 baseline=31750689 */
  /* l=1129: bs=20 gs=14 bench=17592222 baseline=31917703 */
  if (l <= 1129) { *bs = 20; *gs = 14; return 1; }
  /* l=1151: bs=22 gs=13 bench=17762711 baseline=32554701 */
  /* l=1153: bs=22 gs=13 bench=17813150 baseline=32569764 */
  /* l=1163: bs=22 gs=13 bench=18110548 baseline=32884182 */
  /* l=1171: bs=22 gs=13 bench=18323127 baseline=33101588 */
  /* l=1181: bs=22 gs=13 bench=18654766 baseline=33382027 */
  /* l=1187: bs=22 gs=13 bench=18774138 baseline=33560372 */
  /* l=1193: bs=22 gs=13 bench=18947617 baseline=33714876 */
  if (l <= 1193) { *bs = 22; *gs = 13; return 1; }
  /* l=1201: bs=20 gs=15 bench=18678132 baseline=33942867 */
  /* l=1213: bs=20 gs=15 bench=18983087 baseline=34295492 */
  /* l=1217: bs=20 gs=15 bench=19099604 baseline=34383687 */
  /* l=1223: bs=20 gs=15 bench=19236070 baseline=34561525 */
  if (l <= 1223) { *bs = 20; *gs = 15; return 1; }
  /* l=1229: bs=18 gs=17 bench=19376674 baseline=34735395 */
  /* l=1231: bs=18 gs=17 bench=19366667 baseline=34796999 */
  if (l <= 1231) { *bs = 18; *gs = 17; return 1; }
  /* l=1237: bs=22 gs=14 bench=18657581 baseline=34958541 */
  /* l=1249: bs=22 gs=14 bench=18954430 baseline=35295864 */
  /* l=1259: bs=22 gs=14 bench=19217033 baseline=35607354 */
  /* l=1277: bs=22 gs=14 bench=19714552 baseline=36105354 */
  /* l=1279: bs=22 gs=14 bench=19776014 baseline=36165652 */
  if (l <= 1279) { *bs = 22; *gs = 14; return 1; }
  /* l=1283: bs=20 gs=16 bench=19449990 baseline=36255115 */
  /* l=1289: bs=20 gs=16 bench=19634973 baseline=36412020 */
  /* l=1291: bs=20 gs=16 bench=19687243 baseline=36490436 */
  /* l=1297: bs=20 gs=16 bench=19853159 baseline=36636526 */
  /* l=1301: bs=20 gs=16 bench=19964486 baseline=36754307 */
  /* l=1303: bs=20 gs=16 bench=19999475 baseline=36825704 */
  /* l=1307: bs=20 gs=16 bench=20141767 baseline=36949296 */
  /* l=1319: bs=20 gs=16 bench=20442571 baseline=37264961 */
  if (l <= 1319) { *bs = 20; *gs = 16; return 1; }
  /* l=1321: bs=22 gs=15 bench=19772594 baseline=37321383 */
  /* l=1327: bs=22 gs=15 bench=19915236 baseline=37505503 */
  if (l <= 1327) { *bs = 22; *gs = 15; return 1; }
  /* l=1361: bs=24 gs=14 bench=20546260 baseline=38450266 */
  /* l=1367: bs=24 gs=14 bench=20733071 baseline=38624295 */
  /* l=1373: bs=24 gs=14 bench=20905014 baseline=38797104 */
  /* l=1381: bs=24 gs=14 bench=21130934 baseline=39010306 */
  /* l=1399: bs=24 gs=14 bench=21599089 baseline=39540002 */
  if (l <= 1399) { *bs = 24; *gs = 14; return 1; }
  /* l=1409: bs=22 gs=16 bench=20550826 baseline=39790225 */
  if (l <= 1409) { *bs = 22; *gs = 16; return 1; }
  /* l=1721: bs=30 gs=14 bench=24138326 baseline=48605902 */
  if (l <= 1721) { *bs = 30; *gs = 14; return 1; }
  return 0;
}
