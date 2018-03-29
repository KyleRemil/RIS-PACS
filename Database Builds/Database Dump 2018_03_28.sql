-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: risdatabase
-- ------------------------------------------------------
-- Server version	5.7.19-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `modalityimage`
--

DROP TABLE IF EXISTS `modalityimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modalityimage` (
  `modalityImageID` int(11) NOT NULL AUTO_INCREMENT,
  `modalityImageBlob` blob,
  `modalityImageName` varchar(45) DEFAULT NULL,
  `procedure_procedureId` int(11) NOT NULL,
  PRIMARY KEY (`modalityImageID`,`procedure_procedureId`),
  KEY `fk_modalityImage_procedure1_idx` (`procedure_procedureId`),
  CONSTRAINT `fk_modalityImage_procedure1` FOREIGN KEY (`procedure_procedureId`) REFERENCES `procedurelist` (`procedureId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modalityimage`
--

LOCK TABLES `modalityimage` WRITE;
/*!40000 ALTER TABLE `modalityimage` DISABLE KEYS */;
INSERT INTO `modalityimage` VALUES (1,'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0„\0	\Z\Z\Z\Z( %!1!%)+...383-7(-.+\n\n\n\r-%%----------------------------+-------------+-------ÿÀ\0\0²\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0A\0\0\0\0!1AQ\"aq‘2¡±#BRbÁ\Ñğ3r‚’¢\áñ²\ÂCSc\Òÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0*\0\0\0\0\0\0\0\0!1A\"Qa¡#2q‘\áğÿ\Ú\0\0\0?\0©`g¥hÊ½)\Z\Ãr©·\Ê p&§İ²ÀÓ¬K2J\Ç0IRu\"¿(°\éòM\æ U<·†sP3e¡B´\Ğ@\ïùB\ÜT¥) ¤;U®:m¬„bšR\0N•\Ğ\èı¢i ı‘!JI,ü¯¹úŠ\è\ã^†&—™pj•\r”*	\Ûü\Ä8’ewTµr»[¡\Ù@±o1«@UqE¬‘jı¤õĞˆaBÒ—tê•±m‹ùG)ÄºV5úÀ\Ü¾ûö±(P”\ìª­f#F\"\Íõ4/©\Z¬ı\ÇÀ8T\ÓBT†\Ì	a–\Ä9³u¥\rby©(*4™ˆ±\ÈK…ò,‚\ãE</Á+\Ã)XªO*±B¨G\Ìw\ÖN!IRR]A$±gVVb+zi\Ğ\ïM\'\Ä\æ¯y©­.@c\Ô\nZa%2¦$°b:© „¨w	\0Ó²„/—))Zf$:]”\ÖHgK}Ü®\ÊwObğ\éI\n–¥!Â¥²…\Ü(Wj$€v%­\n‘¹I•+\ë!dÚ‰‚TGòˆ_ˆš~*¯Ñ¤—ûI\\¥<¹‡‘‡X¼!J”°9I\Î?˜;yD8\ë	}£]V¯´•\ÜPz~\àš&-$8LÄ\'oF0÷Ù´„%@¸PO]i\ÅMj5ıò\ßp	?ş‡¬[\ä/\"(ES31\ê°ù¢´ce`*V£µò·ö_´3Á\âr\á\Ò¾`\ç«øŠD?Ê’¢G\Ğ\É)Ş¢PSÿ\0R… ŒF”&R(”+ud	I\'±qÖ‘%“0LH¦Pµ…%¿\ê<\à$ŒÄT¬\ê;K>\Ôœbñµ‘)(NiŒÿ\0öòƒS\É,\ï+%:¨©)O’R” Œ$¸\Z½}Ao!H†$(«X?\Ã.3»ºydü¼Œ¹¿½R¨H\ãú\í›ô`\îÔ†ø…fKmş\â­&vP\Z¬Ş†\Ñd\ÂLt—\×\å\n•¦2d‘•\ã‰À\æJ{“òƒ€9Ò² \r\â	FNC\Â\å\ÊcP)„%\âØ¢&&¢q¹Lñxy\nV7‹/	qx\Õ.\æ\'\âi\æ0µQÔ†‰ŒF@\0^°ì…–%$\İ\Çv6P\èZI9’\íe–)Ø±¸Ô G2s\Ò\ÔÌ¡®;W¤k¢Ÿp¸û\'Q¨Œ*\Í&e$µ*šı÷\ãJUT*\â\ÙTn@\ÙW\ïI\Ä=ÀgÔ”•ªz¥\r\Z9\ÄH—3™‹±¡\ĞÒ½70-	Ì¡\âJ4Q{u\é\ç\ÊAIij4£›²÷KylõI.\Ç\"ü\ĞO’Õ‘{0\"ğf(ºfKğÉ»8A\×÷f©{ºi\ÓR\0ò¥{\Ô\Ê\ÕP!™N,t#j|\â	2\ŞbSRÀ£s¤\Ég}\ÓW¸&\Ğ\îgKæ–²v²ˆ\ìT›nÔ\åJA d!òó$y\İ4\ÓG\ŞÀ_\Ù\049’\Ü\ÉúÀ*\× ¸£\Z\ì\ìzš’/`B¬•¦n\Ì†­p`ùrüNUŸzG)gLÀ\ÆÆ„„=KŠ‚\"T…§9\åRlA\æ	qT¨\\V\Ê`\â‡s ZT’\áeÂœ\å R¨u®`\ì,\ï	bfŒ½™FŠ\íM®\Z\à\ÅbJò¨Š”†*–}\à\0V‹½\Z¢\ì:³aq²–±)Kt©<Šn`K®/Pª\Ğ¼JNT¨¦ \Z‡¡B•¡è¤RvŠW ¤·\ÙR[¸\n~ôW¬\\q2–™h%‰`I\å%À‹3h ‘«\Å#Š¬\r½\Zi\ë\Ò™r“1jÜµş”’{\Ğû±`ÁO-2•ø:ƒ*š†ğü\ÌWøy‰jyO|\Ù?bÖ™AÖ›²\\7\×ZV®\í\Ê; F”,=,—$µY…\ÂR=Yg\Ò2\ZIZˆ\n\æ\ÌM€$•>”¸;\Äx5òÌ¨\r¡°ƒ“µ>pF.c&Xw\ØnX\Ô\ï@LdJ\Î=\0))b\0\'?wU%K=X[G0GŸ›\ÃZô[TQúe\nıë¥\İh3\Í:’hª\èB¡Ve!+Qc·YE y%\' V\Ğ\Ì\ï ™-rHqõ…3sjVù”\×^\Ç\ÌR\í\î· şÒ£·û†¸œrÌ¥!À*®™¬—\ÕF„÷H²©‚”\ÜÜ¾\Z\0«°!J\ëbG\ÚÁ\0,\"€\ÈŠ@~\àò‹>G+æ¢ô4ŠgS™\Ô%’H÷]Ã”ôv±‹³¸\â©lE’;’\Æ¡\Ôó–j\İûš¼2%\É jĞJ±YŸ’X>e\íıYDXøK-«ü)ñ‰$f!\à\Übjö49ƒ@¨%¢»\Ç&\ĞÅ¯-ŠO´)!%ÿ\0\Ìk\Ç\ä)YU0¥¡œ\éE\Ï(\ëH\ZfA\Ö:¶‰gh‘SöÁš`ğŒg„cY\Ìfs\0^jQ\ÙG\\\Şóõÿ\0ªF`w|Š\ê]%»\Ö1ZQh)\Ñ+RAm’¼\Ì·´dô¥™iQ\ê@>E@s¿3m,\Ó“0\r\Åh¯)e=Û±ŒT©‰/\áø‰\ì¥\èA|¡\"´—J”•5\ÂÁKupÿ\0e\'¢®b\İ!iø’ ƒ@\ÒN=\"\ætº2’ W)º…†#\ÔFÒ”ÁRĞ¤ÑŠB’‘[”\æ\Êb˜Š_\0VdÀ\à+ÿ\0Ş±™‚˜ŒL 7› 7W°´IB\n2	|ª™JPœ¤\Öú›\\\Ãx¤\Ì\é$€jT_\İ\ãj\ZDx5 3ğ\äı\Ék…™;\Çs8‡\Õ2jùœµ+b„ñó…M°©S1YU\î½@SQb\ã¡Š\Ä\éÃ’ ¢yƒ2‚†f¸J†£®¶, c\Äf0*z½\ïõ˜\0Ç¨ŒOÃ¨†AE2’r©\'BUnıDN¨C;\n\ë!H)RT\éXvua®P§|µ\0¾„ˆš^	*H–ş\Â>QfùK\Z]š\á\Ú\Ä\åb\Ğ\ÉIRÒ¦l…#3P€*\Ó\ÇAc\å\É\Â!F‰A•ù&¢\é ³–¡\0Õa\Ç(\æD\Ğ\Îr¬j•\Z\Z\ìII\ï\îb±\í,µKX$½*Yœ\ê\ÂÏ›\ç.+„S¥r\ÖB’\ÕRn\rœ\Õ\Ò\\¤”’’}\Ò\Ñ_\ã3DÉ¼\é)\Î]I7J‚@P\Z¡•c¼9ó$%	#ÿ\0“§ºb\İ‹?³’T²hA`öv¯W>]¢¥\àºò2AQ£Ÿ€ø½pùZÀ`2‘\ÑD¥\Å¬U\\¥$\ÉS9…;,\0+vk\ì\r\à\ì4\ÆVr÷)@Õƒm\Ë?c\n\ä\0„…(–Hg˜KŒ©£‡R`\Ü\Ş@¶@¥€°rBj·•uˆ¤\ß’•Kš•)’\Zd\Õ\ÕBWV`Hò\Ô\ÅyÒ©‘‘KTVb…š+\Û+h\Ğ\ïˆ\ÍO†°K¥+«\ïË”‘zÔ¶\İb\Ù£.b\Ç\ï%‚ªI*3M|œº4~	\'-L\âX,ú‚YETK%ƒW™\'³^JIJX–@¨X¨°\'*	\Ù$y\ã¼Á)9×š\â¼\Ê#Ä˜M\Ò\ZÁ4»DÅ\\\ÒÎ„„¥\ÍÁ\Ë°I¸&\Ìa#ˆr®r\Ô\î\É\0`Vq¹	¶½¬Ì…&Vk\n®ù¦\0\Şe0›‹á‰”\0¥­*R«R§b:2uŞ\Ù\Ê%J–	\ÌS,¨\ì3LQ>³Sı=\"¯ƒwÄ“ôYR(š\ê¥`|\ÉS}\Ñ¸iA«\\£\Ê\ç\ÖL˜‰Šgd¤\rl¢”Ÿ2œ\Éó‡\Ü\r9e‚\Ô#—±%©Ú¾q’\ãd¹½\0ø\Ä8e³Á\å5#k÷\ĞB,F\'*ò\ëx„\éN\"§\í\0IV‹vf0·\ÈKxx\İPñ¾2…9zt„knö‡²Jˆ-¤U\æ\É;G^7²hx\È\è \í\Å### Nı¦R¹	¨\ÓR4£üùDhZ\à! t(\0õ#)/\Ë\Åf\áCl\Îİ‚½#j`)#\Édy\nˆ\çZdË–I\"Q\0\\‰„ğ\0ù\Ç+\ÄKŠ	ş)…C\áOH›$(UKX\0_Ñ©\é?¡S-HK™l\Z÷H¡g¥6\é\0¿õ9H/\á\İÁøˆ^×¨\Ñ(	uJ\Ë*‚G¤E‰\á†ad\Ã\íSgb4?´1\'‚œ<¤Î˜Ì²R.Hg\rÜ´\\’ƒÿ\0ªú\Â_?P>c›\ã\Îö¾k—™”<c\é\nfM˜¯r[«9ü ¸5¹pI‹÷_DõÏ™ô\Î<I\Ø\Ò\Êkv!\ãú\á³z´U(#µ¢R\åÿ\0¯J#›9k8\0\İ\ÆSJùVğ\î;!Š3]9\Ñ\Ì4\åR”]³(‘Ô‹ÇŸH\â\0\Òb\ê(`©H\Ë\Ï!}\Ãi²¡MÀöön\Å´)—˜¡I!„µ\è6/\ï¸\ï8ÿ\0C’yIºUf/¡?§1&¡À}¡I¤Ã‘`\0\0‘ÿ\0¶»\æ—v7A;Z\â®,’R‰†«HÊ³Q¨~Sve\'x\Ê\ãe8^W(r¼\ÄL2\ß\î-+Aû%#\ÔCO‰¥¼\Ê$5ór²nA{[0†\\<À\ÊPg¥3E™A/²œ\ËJ7\ã%\ËZóJ\ÔÏ£ fm¿v¯Nğlü\Ó”€\È“VÌª¦\Z$&õv=&N\Èf”r(€TM]˜\Z}\İu\Z_2\ä\ì©aÀºAú6\ìğ?^d\Ë-5C¿94¨ WR¨zp\ÈñU*K\å@\Ë0½Ïºy·-ó\íq\ÓSûA\Ş%¶H!w4ó1_\ÂN\Ë5j VÔ£•$„°½Ï¤5Z	QR”•\â¿4Â€Ï¢RGRM\Z&‡X<)RB”\îf¥JjbJ{;¤(Ax\ä\'–Y/R¥$W3¨]´$y­‘\"R”\ËI™JQ>Şµ>Nzf\Ğ\nhg‘™Z±\Ñ\Í\ØV\İOx¦¯ñœ1*\Êh€s¬ëš¬mB\ßtn\0Ÿ\r72ƒ\æì”’\0óÌ¯X\çI+J%¤•,REBh²\rl\Ëp>\×H—„\âKQ\0Pš?$\Õ\ç\î\é\0¿H¯@Ÿöw˜R*¥-d‹¨Tù½¿ú„<À“k¶\Î ~…\É,‚Bu\0Ú¹\Çõ¬‡N[—$ù\ëø\Ä\Òd³T\Õ\ÌT¸\Ä\Ó.k5M\ÏM¢ØµÓ°Š7´<@ªvD‡ùÁ\á±$¦‘“\æ­\ã8^AÇ‚‡\Ş\r\0y\ïµJ¡cˆ˜^ñ\ì\Üo€\"h\×ğ9\ã~\Ïxd±\ÑÇ”ÖŠª\Åf7Ÿx\îl’FÑ²X\Â5–1£ ffqÁ¡\n>`W\Ì?œ=\áKB¿z—ZTTºZ\í]Æ°Ÿƒ)b2>òJºj\Z¿„[8f)\ÉÎ	KŒ\ÅC|\áp­ôŒ2X´ğ¤€2€v*˜‚[³ \ßW06+¥+&Iy›\èù¨\ÇŞ–§o½ñ‡¬§!–\Ó0	~rÀj\ëx\íhZRó¥Y>ò9‰7p\\P\×G>q%wÄ…øJd/øJ	r\0bK,›T\ïsq¬V\"BrºB \Z…i\Ê\Îı\n\ÌM#†Ì˜TPT’I º™ R©Q®úD<vz¥\âp®O†¥\æ\à¨\rú\Öé¸p¿O/|.›W\n\Ü_˜ı<uô€\çp\Ä1qQ¦\æ\àu¤Zg\É³4©`4\ë¼&“™@\ëƒŠ_\êÇ£–yc\ê½\ê\íL™D\0¥=^\ŞBğ\\Œ\é\ÔWõ\é?ù\0Ÿ\n_1)ñ\r\îù_ñ\ã‰!S\Îg\ÊX>\'õX\â—x\ïé·¯2ømŸ?\è»ÀV‘B;Q\áW2\r	\Ò>‹Ÿ\ìf~Ò•6b©+Z˜¥Åˆp3556ÿ\0”8,‘2\\\Ü0K.P+J\åX\'5¨Ş‘[–M·ªÌ”4\âK\æI)X\Ú,|‹¿„‚(%,Œ\à?\Õ\æ–:t&*3(by3M¯\çf\İ2½Ï‡có$Ğ±Nt’À£2BYor+\Ö\\MŠ\Â­t¤\ß0p{’T¿Xªû‰+“‘J?H¾d¬­\ÕÂª:õ‹b”••„šgœFÄŒ\ÇûT£O\Ê9\ì\Õ\n§Ì•\Ë T\"Z\Z’V—Õ’\Ï\æ`L@NpôL´$\0/»\rJ‰_\ê°ËˆJúUL/‘>\îr„\r4¢F\ì¨G:qñÕh›:w\éZz›EÀc‡*d-WT\ŞP/”Q¾¤$v¦\Ğ\Ñ*\Í\à\æ`¥\ÌğŸD\ËM(\Ô%\æ,>\çg0¦N²¡\Îj\Ö\Å%JB\\\ÂB€\ê!¶g–€\äd¡,&\á \n2\È\éL\êl\ã\â‡\ÌM\æ\Ê\0\Zôh|²\ê	¢\×RE’á‚›°ÿ\0QbR3(¸K¹©c—\ïk\\”LM&c\Ùf)ÜŠ„*:¨$UVš€ÌMÃ„\n72T„XR\änHa¨ˆp²\Zz&8(–’\ç\ï)YH\ì\å\ÇPb|B\\¡$\å¥#B\n\rN\ä| \ÉXp$øwy¡K{š„ª»$İ¡˜\Ì­l”§ú²‚®õ\ËÊ—M\Í&ˆ°\á\×\Ş*s\äz^°XZ•ú¹øÄ’\È\Ë(½\Ì \áü4\Ã1t­Xx¾!–@)|K\Úõ\ÔIM>\ÔT–ø5\Ğøh @“1–#É±œFb\É*œ§\Ó:zjH\Ş/\İQ§®”/H¦ûUÃ\Ê#\à|^a¡sE”LK,7›DÏ†‡‰q>U\Z¼\0cÒ½¡öa\nu%b(¸\î¤ƒ\Ú:±\Ëi¥±‘Ò“\Zh²_%\Î\'))\Í\ÙY’™I?\ÛdÍ™%\ÆR°+jg•¥»ˆS€\Æ )\å\æJ\î;l@\åP\èaˆ\ÄÊ˜~+U¤eÍ£,(x\çªX¤\Êœƒ)7HU\íP’\nW»u¥\"y%$\ÒaIp9NS³(ò\ì$Z‚I3%\æJH™(ıRRu¡õù\Ş\á1\é”BÒ¯´F`–\ë~µ>Q³pŠT¥\çz¹R@z	z_\İ:\\´\íÆ—”˜{¤\å¢Át\×SA¤£•Ğ´L@ Š†	)]ù\Â\\J•(©!TT¤‚¼\à#Ô¹£9¨gh%\îpl\ÌR¦\Ê\0­3$š\æf)Â Ç·XPµ™LÃ—1®z\Ú\'\áüE,&)\Â&(%`Ğ¢h!]” u0V;H\0A\ßW\Üm‡]SOŸ\İgw;U+\ÛYIV\Ï-i!­•Aˆ>d~ŒO\ì—ğd‘UŒ\Íøz~ˆ‡G‡…¤$¤)\n÷’ª—€õ£ÁR%²•fg™´}w˜Oôò\ÏXo÷2X\\´\ç$†:\æ\rF÷Ğ‹…e£Xm\åI€H\î\áÑœ\0\Ç\Ë\Ò*\Ş\Ò\ã’\0@9Nª«\ä\İ°{\Ö;qš9z³\ìó¾),&b€°-J6/jP.\Ñj,\Ş\Çâ’™\ÈJê’°C\Ø.\ÉSo\Ö=VTÀ¡~f™\äóš.mÜµZ<_…\ÌÈ´-Ÿ*Ò®ùK·\Â=;„\ã†NB\Ë,u°å®¥œlC£\â\Äñd8Rt\n¨{©\ÂR·2ˆ	4Š\ÖNs˜f\ÕoÉœµkH¶N”Ìšr¥Js§)JG\İ\0I5`®\á9D¥\0œ\ÎAf<µ:\ÜC\Ò&R	\"i9!e š0\İG¢yÏ“\ê!\Î’¥Ö¦jT‘¡x¡f*u\å¦µ%D|H¯òƒ´2Tª¥!ÓŸï­¨Ÿº„ƒ\æCm ;‚\ÒÁı\áK€9^®’ılÀ] ¹Dµ3=R\0»\\º·\0MJº†\Òf¥\"‰*˜¥e¥IQ—°/FB^6¶	)*ª\ÎAÔšJA\Ñ\ß.mo|‚,t\Ö9\ÊAH)*g<¹\Í\İ\ÎÂ üF„(R\éS‘Z\äJTH?\ÍM€\'\"³š©’‚Ÿ´s#1 Y³\nµ\Ö&qR]\î‹\Ø)@\Ç\Í-ˆ”\Ä%¶o Ty>d\á*S›·©kÂ¹u\Ê>ño#oF§X#-\È\Z3ª\é9e\Ó-Q}¢Ä©o2gº,4¸7‡9\0°h×µ\è³,ˆ_ÿ\0a\çMI	I\Êşñµ#\Ò\Ëxğ\Ş>Ÿw›\×\É\Ë7³¼_³2—`I\à†ZŠMD_\×Â–_J\Ò$¦0¹±\Æ\áÕ‰û/>s>Œ¨>\Ã‘h‡\Ë4¤=\'(q\nøƒ)&<\é{½7—ñ^\'1* ,·\ëx¯\â1jU\Ì=öŸ\r•f‘ZP\Ü|&´LsŒŠ#ü\ëO‘ùù\Ã,4\ÃpT\Ïn€¤’İ¡<´eS‚t9‡\ç	Œb…?f=\èñ•RÃ…\Å(P.\å\Îa˜6âœR&\" •\0]\Òt\Ü\Ï$\âH!‚˜\ZeX-ü)Xü^pù\áN]1d™kTA#\Íôˆ°\ÍpS\Ğ\áJ–¥Ì‘EuRlvq\é¤7œ…,:BV¿²•e\Ìú±cG¸bH­(Z\r‘˜½˜õbzˆ‘Tœ¹\\¡Dó¤gHF¡ë¸ˆ\Ğs\âl•ŠS\0Œ¡Ô‡d•\'38f%:‡´ÀgÎ’Œ“\Zl¤†\n¥£VX©)ûÁÛ³Æ„\ä\ÎHRÒ‰õ\ÒYYMn\ìC\ïl5\ç…\Ëj\ç±E\Ó0eXI³.„v.#Ls¸øN|xòMd}\'…¥\nT\î]\'0 Ü¿wˆğ\ÅQºVBÀ¸¨\èö…|C‚ó•®yG)4¹K\åj–=a7›1)RR\'³\Î‚\\hI˜™…Eµ\n¼\ä\Ã+/«‹şL\ä²^\Ô\ãŒûC/TLÇ \0\Ñİˆ«»\Å*T\äb§)x…™rR*\n”ºû‰4©7QoË³…–°‘9)M\0R‘Srÿ\0F[\ã\ä\'@’–@\äı2†\Ö+.Möi\Ã\ìÓ¿¨9J\Ô\Ò\ĞD¥Ü\ÕW&†¤\Ñ\à±\Âf)\Í;&3†PS)6¸1\İ:O†”\à\Şqm\á\ËÊ”€€X‘­ƒ\êz6\å\è\Õd¹U4\×ò‹?\Ä\æK„\è\à\ì\ì4#%­8,qZQ-²eSZJ6š¹-j•\\I\\\ŞõA\æ{€\Ø7¨\ÖùÃ¢Y,–P¢@˜¦¨|\Õ-mo\Z\\¬§›.j\Ñ?j\Ì\æ×¹®´¤f‘˜d\æv$5s1\Z±Ulõş\Ğ50T”€\Î\ä¶\ì7`Ù¤4áŠª”`l\í~¯¡ø=\ê\ê \ÕF÷¹mºš.iNT¡³\Z\Ğ–	¿ñ?\ËA\nÃ¢I”U®‰\ì\0uª\îX‘Üµš3 qFk%µ\îzñ\é\âÑ–©H+4rj©©µtü\é˜G;®f¹tÖ® œ\áú•\0ı7ƒ]\'”€P¥\é˜)d\éAş¨„Ÿ\r\éRTh\ä—H%­•\Ú\r[æ³š=®\ãWÉ¦´¥ª\æz86§ûw‚8Ä²Tû\áª,	Ñ¶£W·\ÂÅ±BFŠ\âüñ—4ü<”i$\"bz<ÿ\0qñ)\n”¡\î(ub]½^q”Ğ†„>\Îğ\'6\ê\ì§l±ş>\Î,¾½\Æ\Ó6ˆR°T\\I\Ã\ÃD<Vx@sx½I\Çc7y±ıaô”¢ñ,	K´3ör~d\ÌÃ…^<\Ë\å\í<gÚ¼+\è^)e´{Ÿµ\\$e$„x\ßK,ˆ\é\â\Ëp©QF\Z’t¥‚jÿ\0õıu‚0\Øiz¨şuoŒh\ËI5@\ïQó,b%I!˜¤\0/ş¼\ã5\nt¾^„Vü¡–vK›Ò†½Å›¸;\Ât)I~d… \Ş\Za±e)\æ\nse¤’=ğò‰ \ç‰œÜ§0Ø•$ù)Abğ\Ó\n¥2Tœ\ÉV`3$ ?¨1[ÁcÖ’é˜¶¹M©¹³÷¬YøwÌI‹B®\Å.’õ5JN»c<¡´±)d¨4µJ¬¹¡«?\Ä^%”¥¥)j]À£#5\nƒuN÷¤K‡’úG*$’¤/%«˜e‚pÊ—™>’\íB¢Gr2°‰°Ø¢R¹—\ÌE¦…«º›h\Ú\Ñ-*XJ’C•{¬u¢™»ñl‹ÏšZV\ÎB2•(}’Å–û(\æO•œ•(ƒ¢&$\"åš¹ŸZZÔ¤ \\\ÅB¦\ËJ29\ÊRB¨\ì=\ÒR\0h†7a¤{,–Ö¥f9’À\Ğ1\Øz¹}Xg\ãe¦h !+]ÀH5Sµ…¤ŠÆ”\"\ë+!ò©D2Ajdd„½=\ĞN±[£jF7%Ö©%¹IH\n‚\×(k›úEriE*p Mµ?(´q\Ô…†Tb,ü\Í\Å\Ø¾ Œ\Çb\ä5‹Vº_h\Ó\ÛRRß®×„\Îğ\Ô· ‡z·™€°\ã:’õ\Í\êH³ƒ\Ú;I)¢¬ö­\Ş(-Sø§(b_\í)$³õ\é´œ^eƒ_;z7s¼T—‰ Ü¶›~Q.^¥ƒ5\éZµat’Û‡\â9¦3»\r‡­a\Ö\Z¡Z\n—75ùE3–]\Ûñ?„=BóÁ³tŒòh\Â\ÏKwk\r}o‰%%˜QÜˆ :{^J\Å# ©·[í¸‰¼`\äÌ—¨\ì÷Œ\Â~9Šsú.…À\\\íğ†J” 	Z3fw\È(Gğ\ÃÜµMK\ÅjT\Êø¹RI!ª\Çc{^ğV\\-\ÙJ¡jP;$ò¨T›• x‰\å*P vp\ç°S\ZŠ\\\Z\Úô1:\ær%\Èúu¬&^%7\ÊCª \ÄT8\Ğ\Îú<\ç\Å\Ï+–¢–t€@\íZoF¬µ”²›–b¤‚À\ÈÁµ¡N\Ú”óúÆ§ûT„P\æ=N¬lòñı\Ç,º“Áô\â%§2‹¥ñn\'\ãLa\îÀœKŠ\Ì\Ä{Å“°‰¸F	SG(\Ö0\å\äšÓ·Ù½›¢õe\å|ö^SK¡\Â\Ô\Æ!\áòBG‰\\p\×Xh\Ë\Ë=£\Âı£G\Òö/i1\'\Ã-)\ÆJ\Ë\ï\"•*9\ÕF\éY|1õB\ÛjüM=#-@Q\'ùKPñP€*Mm\ÎT?´B{\æ¿\Õù˜…9NÍˆ\×B=B^\rFP\å=H§\Ã\Ş\âbP,Õ£°¯rşOp|DJi\Ø~-\n‡O\r5N,No›‘ò†\Ü!Eê²ƒöœ·ö‚ u\ã\åû\ÊBO\Ş$\æ·Œ”¤K¨\rØ¿@\ÌE¢hXp¸ô‚@Ä¾\áK\Ì?§\Ş\ÓÅ¦,’„¤£.\\õJCX–e¬K\Äæ¤´\ÊQ}±J…úi&DÀ\Åa ]–’‹Z»vŒ\ì\á$\ç›0›0PJ\È# Q\Í~ i©AFbF`\ÎVH\0?»R“\ç\ŞñB‰)ZT4<÷ˆ\İ	ƒ°\Ó\ÔX\æIU(FĞ°\×cFƒ.ha\á\å\Z\Êw9RH*\ÑË¶ñ\ÔüRÕ”¥`\ä†\"õû\ÄXP³\Úlrf©Ö§,r\æzeÙŠ­\Ü\ë\0L\0È’R\Ü\Å\Ã%>`s~«ó§\ÕE\0¦ur±r_ru½Iw…X™jÌ ^¤J;S\ØÃ¼QUNF\æ}N\å…N\á\ØD%¡2Â”\Ì!)I%ò‡\æmúõ‹”+3p\Ït\Ù\ÈqAkü ‚\ÂXr*õ\Õ\îG‘ù\Çr¥…(³P\Z0­\ëñ ‚\Ä7OÎ‘`·ZúAR%‚@°§®Q\n/ª^•¥\è\İ#‘<9Vÿ\0@\ÆX”Cj_¼=\ás€¹Ó¥›¬#––MÜh/\rf`÷}\ÄgB\Ç.g¼\0 ×®\ãh\ê|À¥jªRôıIˆš A\ìkñ†(XR‘˜Öº\Î\Ãl\âœ\å $± ?¯\Æ–›]¬I«3Wõ	&\É%\Ş\ïpD…@\rhü¾Xd\Ì•	m\äPùz\Ã:\ÔM*\ì\rB´\è\àSxW5~\é	eE,û´tTF[	\'ùD¼‡&w‰)b²\ÔÃªt\ïH%^\É#4/\Â\ã¼D© ò¯‘U¾\Ç\æ\"\í;(`\İ*E+Ù¹I\Ñá„Œ2`Š\â\ìY‹Àóqe] #yüDB\ÜD\å¨\ĞGxl(5x!C(„j×´³\ZYrÔ#\âs]G¼_=¼\Ç<\Şi¬uqMB¨”¨\ÔaF\É?˜^¡}9”O\È\Ğ)£§asğ‚>c}@:[hÔ¬ZA\Ù?øˆ\Ì\ÜL\Â-µ\íWü\ã‰d½C\ì\Ç(”0\Â\0HuµY’T®‰	o_ …`óJ»ó¹ó*-\è} Ù\Ãc†•\ÙJ>D˜w!2³\'1%oP]a=Ú¦®IE–>·F&6… †QO\\\Êzt`H@\ïŒœ©Y\rB”¹~©aú\Ö\áX\ã•A)p©y	})‰\ï\é\nğ«”\Ê\\´uÊš€{ş8Ÿ1]”6\Êşu:®%+/2r¯R•$)\Íœ\Ä\r‡\â)d‚B@%A\éaÈ¦]\Ñ^Â¬(™I&Çš\İ[3ü!\Âeœ•YªR@v:Ş½m`Š\Æ-j\0¦g‡a,,‡:4Mˆ\n˜\\¡	aD\0H}Ê•u6¦ğ©ô§8¸\0\Í\Õ/øD\Ò†\ä*\Ê(¡\ÌH}óQ\Î\ÎbM\Æ&²\Ô		b\n€k˜ï¿ Šş:gˆ¡J\Ó+İ´v¶ğ\Åx°®@”¥ —R-\Ï]4…¸€H_öh¨Í•‘%)\0œ\Şó\ÜÅºk\åq2Aš\×s§œ8^(0¢\Z¥\ëOL°¥%\ë\Z\îÃ¤T 5~¤¥ƒ\Ôõô\Ò\Èw‹Á\\±Ò—ó„ø®R\Ûmh¨\æd†/J\×ğ‰\å\Ìf­ƒ1…\ØBTôr\Ñ\Òf^\r™xª—\Ò\Â\rF%T`)XC‚\ÄUa¬¡N€\ïašxDŒÄ¹‰`)µ¨b\Îr\Z ¹Rj\áÉ¿øŒ\è!ò‡rIn±ˆAu1‹…UœV¢ñImÁ£\ĞÁ“N`¢\Êqú!AQp\à‚4%‹‚\İ\\ú>ğ\ç‡O\Ï-*KV¯	8¨\å\åz\Å\ëpU€r»¨³õ\Ú\à)—o×”/–7ˆÃ”ÔšD²\ÕJD’a99h %\Ä&ğ^+\Ó\ÎI¬97CÍ½¥\Å,\Ö+ª0×‹N\n&˜\í“Q.Lj:C!\á5 O™\'ñh“\ÃQ\×õøDÅ´O\ã\ZT\Õ\n—£ƒE\á(K\ÄÖ½;tŒFa°Qõü\âQˆ:W¹ü+øF	\ÇP?]H€5–h\n¨1,™€h?›üFÓŠo¬_`Kú¥£jš¤)ô\æ\'şÕ€\ÅÈšX´\Ã]\ëøÁ2¥Z`¥\ÜP|)}\Ä\0™û‚<\ÔÀAƒ.³K\æ\Íñ\Êu\Ò0—ˆY5H][÷o\çÌ H\íhk‡À¬\×\ÂC,\àok<-Á\ãR\n†\ëK·¢^\nñr+ùJ\Ù=€4õLM\×72“p¤š¾Sğ\â^7‹I+r¢T°ÛZ|h\ÌXòj(s7ñ9\\Â \Å@+š\Ä\èQq•9J…õõcC\03rO\Ùú˜”f*d”^Á\ÏS¬ fK)KJS¯¤^\rE\èI\ÚÁöóƒ0\Øt¡\n\r•lŠ€;\éªLÄ“˜s¹71,\ĞŠWË¡`ûõ‚‚<P%B\Ú?x\ïüleAù­‰’V\Ç\éaRvû,\"¿Š“”šT\×\Ëğ‹\ÄPAHcõ„Tbg½\çb€Œ\Z*9Á‡PHS‡^J\ï08‚LMTY°˜`Öƒg\0§ôaLœQÅ»\ÃùÊ“@\î/Xz/C“R\ÛÁ(“\\ª10ÁG)\ë£@¤ñ\Z>›ò+\âˆ!<¤° ·m`\Ô\É\'*\ÓqC\Ø~>pb•\n†\\)NR,(\Ô\ß\×\á\n¢\Í\Ã$,T\Ş\ÛFÔ–£G”„\é\èÑ“\ÔA¼$¡^#Ã¹Š\'µ\Ø\Ü\ïX»ñ,D°“˜‡.ö—\nX×Šw\n\Ô\á\ÖTw0˜:’\Ôi£¨\Ô µOH\Z\ËH\ÔdAºD´½‡¤h\ËH\È\Èf\ë \ØA2e‡‘‘®P„ƒ\Ğœ\ÉNw\Ê®\Â22&™·\n–,9µ\â²ˆJ_vm\ã#\"}ATŸİ¨\ê\rlKY$I»V221ˆ\Ûi\r8¢@ğÀaô	ç‡š—¯$43´dd(b$¥(¶\Âq	a…¤dd8e+@{H\è Rƒ\Ò22,$D±°ôƒp²\Æ\Ã\Ò22&®\nÄ¤e\Ö.\Ür(\ÈÈœ¼5À\íb‚:˜9Sû«|Q!5†H@JPW1­5ŒŒ…“>_&\å#2i¤.\âš22%Š¯\ÇQ±¨a\éx½R“öG¤q\á\'\ìAMxIû#\ĞF¼ı‘\è## ÿ\Ù','\"download.jpg\"',4),(2,'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0„\0	\Z\Z\Z\Z( %!1!%)+...383-7(-.+\n\n\n\r-%%----------------------------+-------------+-------ÿÀ\0\0²\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0A\0\0\0\0!1AQ\"aq‘2¡±#BRbÁ\Ñğ3r‚’¢\áñ²\ÂCSc\Òÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0*\0\0\0\0\0\0\0\0!1A\"Qa¡#2q‘\áğÿ\Ú\0\0\0?\0©`g¥hÊ½)\Z\Ãr©·\Ê p&§İ²ÀÓ¬K2J\Ç0IRu\"¿(°\éòM\æ U<·†sP3e¡B´\Ğ@\ïùB\ÜT¥) ¤;U®:m¬„bšR\0N•\Ğ\èı¢i ı‘!JI,ü¯¹úŠ\è\ã^†&—™pj•\r”*	\Ûü\Ä8’ewTµr»[¡\Ù@±o1«@UqE¬‘jı¤õĞˆaBÒ—tê•±m‹ùG)ÄºV5úÀ\Ü¾ûö±(P”\ìª­f#F\"\Íõ4/©\Z¬ı\ÇÀ8T\ÓBT†\Ì	a–\Ä9³u¥\rby©(*4™ˆ±\ÈK…ò,‚\ãE</Á+\Ã)XªO*±B¨G\Ìw\ÖN!IRR]A$±gVVb+zi\Ğ\ïM\'\Ä\æ¯y©­.@c\Ô\nZa%2¦$°b:© „¨w	\0Ó²„/—))Zf$:]”\ÖHgK}Ü®\ÊwObğ\éI\n–¥!Â¥²…\Ü(Wj$€v%­\n‘¹I•+\ë!dÚ‰‚TGòˆ_ˆš~*¯Ñ¤—ûI\\¥<¹‡‘‡X¼!J”°9I\Î?˜;yD8\ë	}£]V¯´•\ÜPz~\àš&-$8LÄ\'oF0÷Ù´„%@¸PO]i\ÅMj5ıò\ßp	?ş‡¬[\ä/\"(ES31\ê°ù¢´ce`*V£µò·ö_´3Á\âr\á\Ò¾`\ç«øŠD?Ê’¢G\Ğ\É)Ş¢PSÿ\0R… ŒF”&R(”+ud	I\'±qÖ‘%“0LH¦Pµ…%¿\ê<\à$ŒÄT¬\ê;K>\Ôœbñµ‘)(NiŒÿ\0öòƒS\É,\ï+%:¨©)O’R” Œ$¸\Z½}Ao!H†$(«X?\Ã.3»ºydü¼Œ¹¿½R¨H\ãú\í›ô`\îÔ†ø…fKmş\â­&vP\Z¬Ş†\Ñd\ÂLt—\×\å\n•¦2d‘•\ã‰À\æJ{“òƒ€9Ò² \r\â	FNC\Â\å\ÊcP)„%\âØ¢&&¢q¹Lñxy\nV7‹/	qx\Õ.\æ\'\âi\æ0µQÔ†‰ŒF@\0^°ì…–%$\İ\Çv6P\èZI9’\íe–)Ø±¸Ô G2s\Ò\ÔÌ¡®;W¤k¢Ÿp¸û\'Q¨Œ*\Í&e$µ*šı÷\ãJUT*\â\ÙTn@\ÙW\ïI\Ä=ÀgÔ”•ªz¥\r\Z9\ÄH—3™‹±¡\ĞÒ½70-	Ì¡\âJ4Q{u\é\ç\ÊAIij4£›²÷KylõI.\Ç\"ü\ĞO’Õ‘{0\"ğf(ºfKğÉ»8A\×÷f©{ºi\ÓR\0ò¥{\Ô\Ê\ÕP!™N,t#j|\â	2\ŞbSRÀ£s¤\Ég}\ÓW¸&\Ğ\îgKæ–²v²ˆ\ìT›nÔ\åJA d!òó$y\İ4\ÓG\ŞÀ_\Ù\049’\Ü\ÉúÀ*\× ¸£\Z\ì\ìzš’/`B¬•¦n\Ì†­p`ùrüNUŸzG)gLÀ\ÆÆ„„=KŠ‚\"T…§9\åRlA\æ	qT¨\\V\Ê`\â‡s ZT’\áeÂœ\å R¨u®`\ì,\ï	bfŒ½™FŠ\íM®\Z\à\ÅbJò¨Š”†*–}\à\0V‹½\Z¢\ì:³aq²–±)Kt©<Šn`K®/Pª\Ğ¼JNT¨¦ \Z‡¡B•¡è¤RvŠW ¤·\ÙR[¸\n~ôW¬\\q2–™h%‰`I\å%À‹3h ‘«\Å#Š¬\r½\Zi\ë\Ò™r“1jÜµş”’{\Ğû±`ÁO-2•ø:ƒ*š†ğü\ÌWøy‰jyO|\Ù?bÖ™AÖ›²\\7\×ZV®\í\Ê; F”,=,—$µY…\ÂR=Yg\Ò2\ZIZˆ\n\æ\ÌM€$•>”¸;\Äx5òÌ¨\r¡°ƒ“µ>pF.c&Xw\ØnX\Ô\ï@LdJ\Î=\0))b\0\'?wU%K=X[G0GŸ›\ÃZô[TQúe\nıë¥\İh3\Í:’hª\èB¡Ve!+Qc·YE y%\' V\Ğ\Ì\ï ™-rHqõ…3sjVù”\×^\Ç\ÌR\í\î· şÒ£·û†¸œrÌ¥!À*®™¬—\ÕF„÷H²©‚”\ÜÜ¾\Z\0«°!J\ëbG\ÚÁ\0,\"€\ÈŠ@~\àò‹>G+æ¢ô4ŠgS™\Ô%’H÷]Ã”ôv±‹³¸\â©lE’;’\Æ¡\Ôó–j\İûš¼2%\É jĞJ±YŸ’X>e\íıYDXøK-«ü)ñ‰$f!\à\Übjö49ƒ@¨%¢»\Ç&\ĞÅ¯-ŠO´)!%ÿ\0\Ìk\Ç\ä)YU0¥¡œ\éE\Ï(\ëH\ZfA\Ö:¶‰gh‘SöÁš`ğŒg„cY\Ìfs\0^jQ\ÙG\\\Şóõÿ\0ªF`w|Š\ê]%»\Ö1ZQh)\Ñ+RAm’¼\Ì·´dô¥™iQ\ê@>E@s¿3m,\Ó“0\r\Åh¯)e=Û±ŒT©‰/\áø‰\ì¥\èA|¡\"´—J”•5\ÂÁKupÿ\0e\'¢®b\İ!iø’ ƒ@\ÒN=\"\ætº2’ W)º…†#\ÔFÒ”ÁRĞ¤ÑŠB’‘[”\æ\Êb˜Š_\0VdÀ\à+ÿ\0Ş±™‚˜ŒL 7› 7W°´IB\n2	|ª™JPœ¤\Öú›\\\Ãx¤\Ì\é$€jT_\İ\ãj\ZDx5 3ğ\äı\Ék…™;\Çs8‡\Õ2jùœµ+b„ñó…M°©S1YU\î½@SQb\ã¡Š\Ä\éÃ’ ¢yƒ2‚†f¸J†£®¶, c\Äf0*z½\ïõ˜\0Ç¨ŒOÃ¨†AE2’r©\'BUnıDN¨C;\n\ë!H)RT\éXvua®P§|µ\0¾„ˆš^	*H–ş\Â>QfùK\Z]š\á\Ú\Ä\åb\Ğ\ÉIRÒ¦l…#3P€*\Ó\ÇAc\å\É\Â!F‰A•ù&¢\é ³–¡\0Õa\Ç(\æD\Ğ\Îr¬j•\Z\Z\ìII\ï\îb±\í,µKX$½*Yœ\ê\ÂÏ›\ç.+„S¥r\ÖB’\ÕRn\rœ\Õ\Ò\\¤”’’}\Ò\Ñ_\ã3DÉ¼\é)\Î]I7J‚@P\Z¡•c¼9ó$%	#ÿ\0“§ºb\İ‹?³’T²hA`öv¯W>]¢¥\àºò2AQ£Ÿ€ø½pùZÀ`2‘\ÑD¥\Å¬U\\¥$\ÉS9…;,\0+vk\ì\r\à\ì4\ÆVr÷)@Õƒm\Ë?c\n\ä\0„…(–Hg˜KŒ©£‡R`\Ü\Ş@¶@¥€°rBj·•uˆ¤\ß’•Kš•)’\Zd\Õ\ÕBWV`Hò\Ô\ÅyÒ©‘‘KTVb…š+\Û+h\Ğ\ïˆ\ÍO†°K¥+«\ïË”‘zÔ¶\İb\Ù£.b\Ç\ï%‚ªI*3M|œº4~	\'-L\âX,ú‚YETK%ƒW™\'³^JIJX–@¨X¨°\'*	\Ù$y\ã¼Á)9×š\â¼\Ê#Ä˜M\Ò\ZÁ4»DÅ\\\ÒÎ„„¥\ÍÁ\Ë°I¸&\Ìa#ˆr®r\Ô\î\É\0`Vq¹	¶½¬Ì…&Vk\n®ù¦\0\Şe0›‹á‰”\0¥­*R«R§b:2uŞ\Ù\Ê%J–	\ÌS,¨\ì3LQ>³Sı=\"¯ƒwÄ“ôYR(š\ê¥`|\ÉS}\Ñ¸iA«\\£\Ê\ç\ÖL˜‰Šgd¤\rl¢”Ÿ2œ\Éó‡\Ü\r9e‚\Ô#—±%©Ú¾q’\ãd¹½\0ø\Ä8e³Á\å5#k÷\ĞB,F\'*ò\ëx„\éN\"§\í\0IV‹vf0·\ÈKxx\İPñ¾2…9zt„knö‡²Jˆ-¤U\æ\É;G^7²hx\È\è \í\Å### Nı¦R¹	¨\ÓR4£üùDhZ\à! t(\0õ#)/\Ë\Åf\áCl\Îİ‚½#j`)#\Édy\nˆ\çZdË–I\"Q\0\\‰„ğ\0ù\Ç+\ÄKŠ	ş)…C\áOH›$(UKX\0_Ñ©\é?¡S-HK™l\Z÷H¡g¥6\é\0¿õ9H/\á\İÁøˆ^×¨\Ñ(	uJ\Ë*‚G¤E‰\á†ad\Ã\íSgb4?´1\'‚œ<¤Î˜Ì²R.Hg\rÜ´\\’ƒÿ\0ªú\Â_?P>c›\ã\Îö¾k—™”<c\é\nfM˜¯r[«9ü ¸5¹pI‹÷_DõÏ™ô\Î<I\Ø\Ò\Êkv!\ãú\á³z´U(#µ¢R\åÿ\0¯J#›9k8\0\İ\ÆSJùVğ\î;!Š3]9\Ñ\Ì4\åR”]³(‘Ô‹ÇŸH\â\0\Òb\ê(`©H\Ë\Ï!}\Ãi²¡MÀöön\Å´)—˜¡I!„µ\è6/\ï¸\ï8ÿ\0C’yIºUf/¡?§1&¡À}¡I¤Ã‘`\0\0‘ÿ\0¶»\æ—v7A;Z\â®,’R‰†«HÊ³Q¨~Sve\'x\Ê\ãe8^W(r¼\ÄL2\ß\î-+Aû%#\ÔCO‰¥¼\Ê$5ór²nA{[0†\\<À\ÊPg¥3E™A/²œ\ËJ7\ã%\ËZóJ\ÔÏ£ fm¿v¯Nğlü\Ó”€\È“VÌª¦\Z$&õv=&N\Èf”r(€TM]˜\Z}\İu\Z_2\ä\ì©aÀºAú6\ìğ?^d\Ë-5C¿94¨ WR¨zp\ÈñU*K\å@\Ë0½Ïºy·-ó\íq\ÓSûA\Ş%¶H!w4ó1_\ÂN\Ë5j VÔ£•$„°½Ï¤5Z	QR”•\â¿4Â€Ï¢RGRM\Z&‡X<)RB”\îf¥JjbJ{;¤(Ax\ä\'–Y/R¥$W3¨]´$y­‘\"R”\ËI™JQ>Şµ>Nzf\Ğ\nhg‘™Z±\Ñ\Í\ØV\İOx¦¯ñœ1*\Êh€s¬ëš¬mB\ßtn\0Ÿ\r72ƒ\æì”’\0óÌ¯X\çI+J%¤•,REBh²\rl\Ëp>\×H—„\âKQ\0Pš?$\Õ\ç\î\é\0¿H¯@Ÿöw˜R*¥-d‹¨Tù½¿ú„<À“k¶\Î ~…\É,‚Bu\0Ú¹\Çõ¬‡N[—$ù\ëø\Ä\Òd³T\Õ\ÌT¸\Ä\Ó.k5M\ÏM¢ØµÓ°Š7´<@ªvD‡ùÁ\á±$¦‘“\æ­\ã8^AÇ‚‡\Ş\r\0y\ïµJ¡cˆ˜^ñ\ì\Üo€\"h\×ğ9\ã~\Ïxd±\ÑÇ”ÖŠª\Åf7Ÿx\îl’FÑ²X\Â5–1£ ffqÁ¡\n>`W\Ì?œ=\áKB¿z—ZTTºZ\í]Æ°Ÿƒ)b2>òJºj\Z¿„[8f)\ÉÎ	KŒ\ÅC|\áp­ôŒ2X´ğ¤€2€v*˜‚[³ \ßW06+¥+&Iy›\èù¨\ÇŞ–§o½ñ‡¬§!–\Ó0	~rÀj\ëx\íhZRó¥Y>ò9‰7p\\P\×G>q%wÄ…øJd/øJ	r\0bK,›T\ïsq¬V\"BrºB \Z…i\Ê\Îı\n\ÌM#†Ì˜TPT’I º™ R©Q®úD<vz¥\âp®O†¥\æ\à¨\rú\Öé¸p¿O/|.›W\n\Ü_˜ı<uô€\çp\Ä1qQ¦\æ\àu¤Zg\É³4©`4\ë¼&“™@\ëƒŠ_\êÇ£–yc\ê½\ê\íL™D\0¥=^\ŞBğ\\Œ\é\ÔWõ\é?ù\0Ÿ\n_1)ñ\r\îù_ñ\ã‰!S\Îg\ÊX>\'õX\â—x\ïé·¯2ømŸ?\è»ÀV‘B;Q\áW2\r	\Ò>‹Ÿ\ìf~Ò•6b©+Z˜¥Åˆp3556ÿ\0”8,‘2\\\Ü0K.P+J\åX\'5¨Ş‘[–M·ªÌ”4\âK\æI)X\Ú,|‹¿„‚(%,Œ\à?\Õ\æ–:t&*3(by3M¯\çf\İ2½Ï‡có$Ğ±Nt’À£2BYor+\Ö\\MŠ\Â­t¤\ß0p{’T¿Xªû‰+“‘J?H¾d¬­\ÕÂª:õ‹b”••„šgœFÄŒ\ÇûT£O\Ê9\ì\Õ\n§Ì•\Ë T\"Z\Z’V—Õ’\Ï\æ`L@NpôL´$\0/»\rJ‰_\ê°ËˆJúUL/‘>\îr„\r4¢F\ì¨G:qñÕh›:w\éZz›EÀc‡*d-WT\ŞP/”Q¾¤$v¦\Ğ\Ñ*\Í\à\æ`¥\ÌğŸD\ËM(\Ô%\æ,>\çg0¦N²¡\Îj\Ö\Å%JB\\\ÂB€\ê!¶g–€\äd¡,&\á \n2\È\éL\êl\ã\â‡\ÌM\æ\Ê\0\Zôh|²\ê	¢\×RE’á‚›°ÿ\0QbR3(¸K¹©c—\ïk\\”LM&c\Ùf)ÜŠ„*:¨$UVš€ÌMÃ„\n72T„XR\änHa¨ˆp²\Zz&8(–’\ç\ï)YH\ì\å\ÇPb|B\\¡$\å¥#B\n\rN\ä| \ÉXp$øwy¡K{š„ª»$İ¡˜\Ì­l”§ú²‚®õ\ËÊ—M\Í&ˆ°\á\×\Ş*s\äz^°XZ•ú¹øÄ’\È\Ë(½\Ì \áü4\Ã1t­Xx¾!–@)|K\Úõ\ÔIM>\ÔT–ø5\Ğøh @“1–#É±œFb\É*œ§\Ó:zjH\Ş/\İQ§®”/H¦ûUÃ\Ê#\à|^a¡sE”LK,7›DÏ†‡‰q>U\Z¼\0cÒ½¡öa\nu%b(¸\î¤ƒ\Ú:±\Ëi¥±‘Ò“\Zh²_%\Î\'))\Í\ÙY’™I?\ÛdÍ™%\ÆR°+jg•¥»ˆS€\Æ )\å\æJ\î;l@\åP\èaˆ\ÄÊ˜~+U¤eÍ£,(x\çªX¤\Êœƒ)7HU\íP’\nW»u¥\"y%$\ÒaIp9NS³(ò\ì$Z‚I3%\æJH™(ıRRu¡õù\Ş\á1\é”BÒ¯´F`–\ë~µ>Q³pŠT¥\çz¹R@z	z_\İ:\\´\íÆ—”˜{¤\å¢Át\×SA¤£•Ğ´L@ Š†	)]ù\Â\\J•(©!TT¤‚¼\à#Ô¹£9¨gh%\îpl\ÌR¦\Ê\0­3$š\æf)Â Ç·XPµ™LÃ—1®z\Ú\'\áüE,&)\Â&(%`Ğ¢h!]” u0V;H\0A\ßW\Üm‡]SOŸ\İgw;U+\ÛYIV\Ï-i!­•Aˆ>d~ŒO\ì—ğd‘UŒ\Íøz~ˆ‡G‡…¤$¤)\n÷’ª—€õ£ÁR%²•fg™´}w˜Oôò\ÏXo÷2X\\´\ç$†:\æ\rF÷Ğ‹…e£Xm\åI€H\î\áÑœ\0\Ç\Ë\Ò*\Ş\Ò\ã’\0@9Nª«\ä\İ°{\Ö;qš9z³\ìó¾),&b€°-J6/jP.\Ñj,\Ş\Çâ’™\ÈJê’°C\Ø.\ÉSo\Ö=VTÀ¡~f™\äóš.mÜµZ<_…\ÌÈ´-Ÿ*Ò®ùK·\Â=;„\ã†NB\Ë,u°å®¥œlC£\â\Äñd8Rt\n¨{©\ÂR·2ˆ	4Š\ÖNs˜f\ÕoÉœµkH¶N”Ìšr¥Js§)JG\İ\0I5`®\á9D¥\0œ\ÎAf<µ:\ÜC\Ò&R	\"i9!e š0\İG¢yÏ“\ê!\Î’¥Ö¦jT‘¡x¡f*u\å¦µ%D|H¯òƒ´2Tª¥!ÓŸï­¨Ÿº„ƒ\æCm ;‚\ÒÁı\áK€9^®’ılÀ] ¹Dµ3=R\0»\\º·\0MJº†\Òf¥\"‰*˜¥e¥IQ—°/FB^6¶	)*ª\ÎAÔšJA\Ñ\ß.mo|‚,t\Ö9\ÊAH)*g<¹\Í\İ\ÎÂ üF„(R\éS‘Z\äJTH?\ÍM€\'\"³š©’‚Ÿ´s#1 Y³\nµ\Ö&qR]\î‹\Ø)@\Ç\Í-ˆ”\Ä%¶o Ty>d\á*S›·©kÂ¹u\Ê>ño#oF§X#-\È\Z3ª\é9e\Ó-Q}¢Ä©o2gº,4¸7‡9\0°h×µ\è³,ˆ_ÿ\0a\çMI	I\Êşñµ#\Ò\Ëxğ\Ş>Ÿw›\×\É\Ë7³¼_³2—`I\à†ZŠMD_\×Â–_J\Ò$¦0¹±\Æ\áÕ‰û/>s>Œ¨>\Ã‘h‡\Ë4¤=\'(q\nøƒ)&<\é{½7—ñ^\'1* ,·\ëx¯\â1jU\Ì=öŸ\r•f‘ZP\Ü|&´LsŒŠ#ü\ëO‘ùù\Ã,4\ÃpT\Ïn€¤’İ¡<´eS‚t9‡\ç	Œb…?f=\èñ•RÃ…\Å(P.\å\Îa˜6âœR&\" •\0]\Òt\Ü\Ï$\âH!‚˜\ZeX-ü)Xü^pù\áN]1d™kTA#\Íôˆ°\ÍpS\Ğ\áJ–¥Ì‘EuRlvq\é¤7œ…,:BV¿²•e\Ìú±cG¸bH­(Z\r‘˜½˜õbzˆ‘Tœ¹\\¡Dó¤gHF¡ë¸ˆ\Ğs\âl•ŠS\0Œ¡Ô‡d•\'38f%:‡´ÀgÎ’Œ“\Zl¤†\n¥£VX©)ûÁÛ³Æ„\ä\ÎHRÒ‰õ\ÒYYMn\ìC\ïl5\ç…\Ëj\ç±E\Ó0eXI³.„v.#Ls¸øN|xòMd}\'…¥\nT\î]\'0 Ü¿wˆğ\ÅQºVBÀ¸¨\èö…|C‚ó•®yG)4¹K\åj–=a7›1)RR\'³\Î‚\\hI˜™…Eµ\n¼\ä\Ã+/«‹şL\ä²^\Ô\ãŒûC/TLÇ \0\Ñİˆ«»\Å*T\äb§)x…™rR*\n”ºû‰4©7QoË³…–°‘9)M\0R‘Srÿ\0F[\ã\ä\'@’–@\äı2†\Ö+.Möi\Ã\ìÓ¿¨9J\Ô\Ò\ĞD¥Ü\ÕW&†¤\Ñ\à±\Âf)\Í;&3†PS)6¸1\İ:O†”\à\Şqm\á\ËÊ”€€X‘­ƒ\êz6\å\è\Õd¹U4\×ò‹?\Ä\æK„\è\à\ì\ì4#%­8,qZQ-²eSZJ6š¹-j•\\I\\\ŞõA\æ{€\Ø7¨\ÖùÃ¢Y,–P¢@˜¦¨|\Õ-mo\Z\\¬§›.j\Ñ?j\Ì\æ×¹®´¤f‘˜d\æv$5s1\Z±Ulõş\Ğ50T”€\Î\ä¶\ì7`Ù¤4áŠª”`l\í~¯¡ø=\ê\ê \ÕF÷¹mºš.iNT¡³\Z\Ğ–	¿ñ?\ËA\nÃ¢I”U®‰\ì\0uª\îX‘Üµš3 qFk%µ\îzñ\é\âÑ–©H+4rj©©µtü\é˜G;®f¹tÖ® œ\áú•\0ı7ƒ]\'”€P¥\é˜)d\éAş¨„Ÿ\r\éRTh\ä—H%­•\Ú\r[æ³š=®\ãWÉ¦´¥ª\æz86§ûw‚8Ä²Tû\áª,	Ñ¶£W·\ÂÅ±BFŠ\âüñ—4ü<”i$\"bz<ÿ\0qñ)\n”¡\î(ub]½^q”Ğ†„>\Îğ\'6\ê\ì§l±ş>\Î,¾½\Æ\Ó6ˆR°T\\I\Ã\ÃD<Vx@sx½I\Çc7y±ıaô”¢ñ,	K´3ör~d\ÌÃ…^<\Ë\å\í<gÚ¼+\è^)e´{Ÿµ\\$e$„x\ßK,ˆ\é\â\Ëp©QF\Z’t¥‚jÿ\0õıu‚0\Øiz¨şuoŒh\ËI5@\ïQó,b%I!˜¤\0/ş¼\ã5\nt¾^„Vü¡–vK›Ò†½Å›¸;\Ât)I~d… \Ş\Za±e)\æ\nse¤’=ğò‰ \ç‰œÜ§0Ø•$ù)Abğ\Ó\n¥2Tœ\ÉV`3$ ?¨1[ÁcÖ’é˜¶¹M©¹³÷¬YøwÌI‹B®\Å.’õ5JN»c<¡´±)d¨4µJ¬¹¡«?\Ä^%”¥¥)j]À£#5\nƒuN÷¤K‡’úG*$’¤/%«˜e‚pÊ—™>’\íB¢Gr2°‰°Ø¢R¹—\ÌE¦…«º›h\Ú\Ñ-*XJ’C•{¬u¢™»ñl‹ÏšZV\ÎB2•(}’Å–û(\æO•œ•(ƒ¢&$\"åš¹ŸZZÔ¤ \\\ÅB¦\ËJ29\ÊRB¨\ì=\ÒR\0h†7a¤{,–Ö¥f9’À\Ğ1\Øz¹}Xg\ãe¦h !+]ÀH5Sµ…¤ŠÆ”\"\ë+!ò©D2Ajdd„½=\ĞN±[£jF7%Ö©%¹IH\n‚\×(k›úEriE*p Mµ?(´q\Ô…†Tb,ü\Í\Å\Ø¾ Œ\Çb\ä5‹Vº_h\Ó\ÛRRß®×„\Îğ\Ô· ‡z·™€°\ã:’õ\Í\êH³ƒ\Ú;I)¢¬ö­\Ş(-Sø§(b_\í)$³õ\é´œ^eƒ_;z7s¼T—‰ Ü¶›~Q.^¥ƒ5\éZµat’Û‡\â9¦3»\r‡­a\Ö\Z¡Z\n—75ùE3–]\Ûñ?„=BóÁ³tŒòh\Â\ÏKwk\r}o‰%%˜QÜˆ :{^J\Å# ©·[í¸‰¼`\äÌ—¨\ì÷Œ\Â~9Šsú.…À\\\íğ†J” 	Z3fw\È(Gğ\ÃÜµMK\ÅjT\Êø¹RI!ª\Çc{^ğV\\-\ÙJ¡jP;$ò¨T›• x‰\å*P vp\ç°S\ZŠ\\\Z\Úô1:\ær%\Èúu¬&^%7\ÊCª \ÄT8\Ğ\Îú<\ç\Å\Ï+–¢–t€@\íZoF¬µ”²›–b¤‚À\ÈÁµ¡N\Ú”óúÆ§ûT„P\æ=N¬lòñı\Ç,º“Áô\â%§2‹¥ñn\'\ãLa\îÀœKŠ\Ì\Ä{Å“°‰¸F	SG(\Ö0\å\äšÓ·Ù½›¢õe\å|ö^SK¡\Â\Ô\Æ!\áòBG‰\\p\×Xh\Ë\Ë=£\Âı£G\Òö/i1\'\Ã-)\ÆJ\Ë\ï\"•*9\ÕF\éY|1õB\ÛjüM=#-@Q\'ùKPñP€*Mm\ÎT?´B{\æ¿\Õù˜…9NÍˆ\×B=B^\rFP\å=H§\Ã\Ş\âbP,Õ£°¯rşOp|DJi\Ø~-\n‡O\r5N,No›‘ò†\Ü!Eê²ƒöœ·ö‚ u\ã\åû\ÊBO\Ş$\æ·Œ”¤K¨\rØ¿@\ÌE¢hXp¸ô‚@Ä¾\áK\Ì?§\Ş\ÓÅ¦,’„¤£.\\õJCX–e¬K\Äæ¤´\ÊQ}±J…úi&DÀ\Åa ]–’‹Z»vŒ\ì\á$\ç›0›0PJ\È# Q\Í~ i©AFbF`\ÎVH\0?»R“\ç\ŞñB‰)ZT4<÷ˆ\İ	ƒ°\Ó\ÔX\æIU(FĞ°\×cFƒ.ha\á\å\Z\Êw9RH*\ÑË¶ñ\ÔüRÕ”¥`\ä†\"õû\ÄXP³\Úlrf©Ö§,r\æzeÙŠ­\Ü\ë\0L\0È’R\Ü\Å\Ã%>`s~«ó§\ÕE\0¦ur±r_ru½Iw…X™jÌ ^¤J;S\ØÃ¼QUNF\æ}N\å…N\á\ØD%¡2Â”\Ì!)I%ò‡\æmúõ‹”+3p\Ït\Ù\ÈqAkü ‚\ÂXr*õ\Õ\îG‘ù\Çr¥…(³P\Z0­\ëñ ‚\Ä7OÎ‘`·ZúAR%‚@°§®Q\n/ª^•¥\è\İ#‘<9Vÿ\0@\ÆX”Cj_¼=\ás€¹Ó¥›¬#––MÜh/\rf`÷}\ÄgB\Ç.g¼\0 ×®\ãh\ê|À¥jªRôıIˆš A\ìkñ†(XR‘˜Öº\Î\Ãl\âœ\å $± ?¯\Æ–›]¬I«3Wõ	&\É%\Ş\ïpD…@\rhü¾Xd\Ì•	m\äPùz\Ã:\ÔM*\ì\rB´\è\àSxW5~\é	eE,û´tTF[	\'ùD¼‡&w‰)b²\ÔÃªt\ïH%^\É#4/\Â\ã¼D© ò¯‘U¾\Ç\æ\"\í;(`\İ*E+Ù¹I\Ñá„Œ2`Š\â\ìY‹Àóqe] #yüDB\ÜD\å¨\ĞGxl(5x!C(„j×´³\ZYrÔ#\âs]G¼_=¼\Ç<\Şi¬uqMB¨”¨\ÔaF\É?˜^¡}9”O\È\Ğ)£§asğ‚>c}@:[hÔ¬ZA\Ù?øˆ\Ì\ÜL\Â-µ\íWü\ã‰d½C\ì\Ç(”0\Â\0HuµY’T®‰	o_ …`óJ»ó¹ó*-\è} Ù\Ãc†•\ÙJ>D˜w!2³\'1%oP]a=Ú¦®IE–>·F&6… †QO\\\Êzt`H@\ïŒœ©Y\rB”¹~©aú\Ö\áX\ã•A)p©y	})‰\ï\é\nğ«”\Ê\\´uÊš€{ş8Ÿ1]”6\Êşu:®%+/2r¯R•$)\Íœ\Ä\r‡\â)d‚B@%A\éaÈ¦]\Ñ^Â¬(™I&Çš\İ[3ü!\Âeœ•YªR@v:Ş½m`Š\Æ-j\0¦g‡a,,‡:4Mˆ\n˜\\¡	aD\0H}Ê•u6¦ğ©ô§8¸\0\Í\Õ/øD\Ò†\ä*\Ê(¡\ÌH}óQ\Î\ÎbM\Æ&²\Ô		b\n€k˜ï¿ Šş:gˆ¡J\Ó+İ´v¶ğ\Åx°®@”¥ —R-\Ï]4…¸€H_öh¨Í•‘%)\0œ\Şó\ÜÅºk\åq2Aš\×s§œ8^(0¢\Z¥\ëOL°¥%\ë\Z\îÃ¤T 5~¤¥ƒ\Ôõô\Ò\Èw‹Á\\±Ò—ó„ø®R\Ûmh¨\æd†/J\×ğ‰\å\Ìf­ƒ1…\ØBTôr\Ñ\Òf^\r™xª—\Ò\Â\rF%T`)XC‚\ÄUa¬¡N€\ïašxDŒÄ¹‰`)µ¨b\Îr\Z ¹Rj\áÉ¿øŒ\è!ò‡rIn±ˆAu1‹…UœV¢ñImÁ£\ĞÁ“N`¢\Êqú!AQp\à‚4%‹‚\İ\\ú>ğ\ç‡O\Ï-*KV¯	8¨\å\åz\Å\ëpU€r»¨³õ\Ú\à)—o×”/–7ˆÃ”ÔšD²\ÕJD’a99h %\Ä&ğ^+\Ó\ÎI¬97CÍ½¥\Å,\Ö+ª0×‹N\n&˜\í“Q.Lj:C!\á5 O™\'ñh“\ÃQ\×õøDÅ´O\ã\ZT\Õ\n—£ƒE\á(K\ÄÖ½;tŒFa°Qõü\âQˆ:W¹ü+øF	\ÇP?]H€5–h\n¨1,™€h?›üFÓŠo¬_`Kú¥£jš¤)ô\æ\'şÕ€\ÅÈšX´\Ã]\ëøÁ2¥Z`¥\ÜP|)}\Ä\0™û‚<\ÔÀAƒ.³K\æ\Íñ\Êu\Ò0—ˆY5H][÷o\çÌ H\íhk‡À¬\×\ÂC,\àok<-Á\ãR\n†\ëK·¢^\nñr+ùJ\Ù=€4õLM\×72“p¤š¾Sğ\â^7‹I+r¢T°ÛZ|h\ÌXòj(s7ñ9\\Â \Å@+š\Ä\èQq•9J…õõcC\03rO\Ùú˜”f*d”^Á\ÏS¬ fK)KJS¯¤^\rE\èI\ÚÁöóƒ0\Øt¡\n\r•lŠ€;\éªLÄ“˜s¹71,\ĞŠWË¡`ûõ‚‚<P%B\Ú?x\ïüleAù­‰’V\Ç\éaRvû,\"¿Š“”šT\×\Ëğ‹\ÄPAHcõ„Tbg½\çb€Œ\Z*9Á‡PHS‡^J\ï08‚LMTY°˜`Öƒg\0§ôaLœQÅ»\ÃùÊ“@\î/Xz/C“R\ÛÁ(“\\ª10ÁG)\ë£@¤ñ\Z>›ò+\âˆ!<¤° ·m`\Ô\É\'*\ÓqC\Ø~>pb•\n†\\)NR,(\Ô\ß\×\á\n¢\Í\Ã$,T\Ş\ÛFÔ–£G”„\é\èÑ“\ÔA¼$¡^#Ã¹Š\'µ\Ø\Ü\ïX»ñ,D°“˜‡.ö—\nX×Šw\n\Ô\á\ÖTw0˜:’\Ôi£¨\Ô µOH\Z\ËH\ÔdAºD´½‡¤h\ËH\È\Èf\ë \ØA2e‡‘‘®P„ƒ\Ğœ\ÉNw\Ê®\Â22&™·\n–,9µ\â²ˆJ_vm\ã#\"}ATŸİ¨\ê\rlKY$I»V221ˆ\Ûi\r8¢@ğÀaô	ç‡š—¯$43´dd(b$¥(¶\Âq	a…¤dd8e+@{H\è Rƒ\Ò22,$D±°ôƒp²\Æ\Ã\Ò22&®\nÄ¤e\Ö.\Ür(\ÈÈœ¼5À\íb‚:˜9Sû«|Q!5†H@JPW1­5ŒŒ…“>_&\å#2i¤.\âš22%Š¯\ÇQ±¨a\éx½R“öG¤q\á\'\ìAMxIû#\ĞF¼ı‘\è## ÿ\Ù','\"download.jpg\"',4);
/*!40000 ALTER TABLE `modalityimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modalityproceduretype`
--

DROP TABLE IF EXISTS `modalityproceduretype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modalityproceduretype` (
  `modalityProcedureTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `modalityProcedureTypeDesc` varchar(45) DEFAULT NULL,
  `modalityType_modalityTypeId` int(11) NOT NULL,
  PRIMARY KEY (`modalityProcedureTypeId`,`modalityType_modalityTypeId`),
  KEY `fk_modalityproceduretype_modalityequipment1_idx` (`modalityType_modalityTypeId`),
  CONSTRAINT `fk_modalityproceduretype_modalityequipment1` FOREIGN KEY (`modalityType_modalityTypeId`) REFERENCES `modalitytype` (`modalityTypeId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modalityproceduretype`
--

LOCK TABLES `modalityproceduretype` WRITE;
/*!40000 ALTER TABLE `modalityproceduretype` DISABLE KEYS */;
INSERT INTO `modalityproceduretype` VALUES (1,'Left Arm',1),(2,'Right Arm',1),(3,'Left Leg',1),(4,'Right Leg',1),(5,'Torso',1),(6,'Groin',1),(7,'Brain',3);
/*!40000 ALTER TABLE `modalityproceduretype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modalitytype`
--

DROP TABLE IF EXISTS `modalitytype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modalitytype` (
  `modalityTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `modalityTypeName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`modalityTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modalitytype`
--

LOCK TABLES `modalitytype` WRITE;
/*!40000 ALTER TABLE `modalitytype` DISABLE KEYS */;
INSERT INTO `modalitytype` VALUES (1,'Xray'),(2,'CT Scan'),(3,'MRI');
/*!40000 ALTER TABLE `modalitytype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modalitywarning`
--

DROP TABLE IF EXISTS `modalitywarning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modalitywarning` (
  `modalityWarningID` int(11) NOT NULL AUTO_INCREMENT,
  `modalityWarningDesc` varchar(45) DEFAULT NULL,
  `modalityType_modalityTypeId` int(11) NOT NULL,
  PRIMARY KEY (`modalityWarningID`,`modalityType_modalityTypeId`),
  KEY `fk_modalityWarning_modalityEquipment1_idx` (`modalityType_modalityTypeId`),
  CONSTRAINT `fk_modalityWarning_modalityEquipment1` FOREIGN KEY (`modalityType_modalityTypeId`) REFERENCES `modalitytype` (`modalityTypeId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modalitywarning`
--

LOCK TABLES `modalitywarning` WRITE;
/*!40000 ALTER TABLE `modalitywarning` DISABLE KEYS */;
/*!40000 ALTER TABLE `modalitywarning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `patientID` int(11) NOT NULL AUTO_INCREMENT,
  `patientFirstName` varchar(45) NOT NULL,
  `patientMiddleName` varchar(45) DEFAULT NULL,
  `patientLastName` varchar(45) NOT NULL,
  `patientGender` char(1) DEFAULT NULL,
  `patientSSN` int(9) DEFAULT NULL,
  `patinetHeight` int(11) DEFAULT NULL,
  `patientWeight` int(11) DEFAULT NULL,
  `patientDOB` date DEFAULT NULL,
  PRIMARY KEY (`patientID`),
  UNIQUE KEY `idmasterPatientList_UNIQUE` (`patientID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (3,'Test','T','ies','x',0,0,0,'2018-03-15'),(4,'Robert ','C','Cromer','x',0,72,225,'1994-06-29');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procedurelist`
--

DROP TABLE IF EXISTS `procedurelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procedurelist` (
  `procedureId` int(11) NOT NULL AUTO_INCREMENT,
  `staffID_technician` int(11) NOT NULL,
  `modalityProcedureTypeId` int(11) NOT NULL,
  `patient_patientID` int(11) NOT NULL,
  `procedureScheduledTime` time DEFAULT NULL,
  `procedureScheduledDate` date DEFAULT NULL,
  `procedurestatus_procedureStatusID` int(11) NOT NULL DEFAULT '0',
  `physicianNotes` varchar(45) DEFAULT NULL,
  `procedureDateOfRequest` datetime DEFAULT NULL,
  PRIMARY KEY (`procedureId`,`staffID_technician`,`modalityProcedureTypeId`,`patient_patientID`,`procedurestatus_procedureStatusID`),
  KEY `fk_procedure_staff1_idx` (`staffID_technician`),
  KEY `fk_procedure_patient1_idx` (`patient_patientID`),
  KEY `fk_procedure_modalityProcedureType1_idx` (`modalityProcedureTypeId`),
  KEY `fk_procedure_procedureStatus1_idx` (`procedurestatus_procedureStatusID`),
  CONSTRAINT `fk_procedure_modalityProcedureType1` FOREIGN KEY (`modalityProcedureTypeId`) REFERENCES `modalityproceduretype` (`modalityProcedureTypeId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_procedure_patient1` FOREIGN KEY (`patient_patientID`) REFERENCES `patient` (`patientID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_procedure_procedureStatus1` FOREIGN KEY (`procedurestatus_procedureStatusID`) REFERENCES `procedurestatus` (`procedureStatusID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_procedure_staff1` FOREIGN KEY (`staffID_technician`) REFERENCES `staff` (`staffID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procedurelist`
--

LOCK TABLES `procedurelist` WRITE;
/*!40000 ALTER TABLE `procedurelist` DISABLE KEYS */;
INSERT INTO `procedurelist` VALUES (1,4,6,3,NULL,NULL,0,'Test','2018-03-15 00:00:00'),(2,3,1,3,NULL,NULL,0,'Test2','2018-03-15 00:00:00'),(3,4,6,4,NULL,NULL,0,'','2018-03-25 00:00:00'),(4,3,7,4,NULL,NULL,2,'','2018-03-28 00:00:00');
/*!40000 ALTER TABLE `procedurelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procedurestatus`
--

DROP TABLE IF EXISTS `procedurestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procedurestatus` (
  `procedureStatusID` int(11) NOT NULL AUTO_INCREMENT,
  `procedureStatusDesc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`procedureStatusID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procedurestatus`
--

LOCK TABLES `procedurestatus` WRITE;
/*!40000 ALTER TABLE `procedurestatus` DISABLE KEYS */;
INSERT INTO `procedurestatus` VALUES (0,'Not Scheduled'),(1,'Scheduled'),(2,'In Progress'),(3,'Procedure Complete'),(4,'Report Complete');
/*!40000 ALTER TABLE `procedurestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report` (
  `reportID` int(11) NOT NULL AUTO_INCREMENT,
  `reportText` varchar(45) DEFAULT NULL,
  `procedure_procedureId` int(11) NOT NULL,
  `staffid_Radiologist` int(11) NOT NULL,
  `staffid_RefferingMD` int(11) NOT NULL,
  `refferingMD_notes` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`reportID`,`procedure_procedureId`,`staffid_Radiologist`,`staffid_RefferingMD`),
  KEY `fk_report_procedure1_idx` (`procedure_procedureId`),
  KEY `fk_report_staff1_idx` (`staffid_Radiologist`),
  KEY `fk_report_staff2_idx` (`staffid_RefferingMD`),
  CONSTRAINT `fk_report_procedure1` FOREIGN KEY (`procedure_procedureId`) REFERENCES `procedurelist` (`procedureId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_report_staff1` FOREIGN KEY (`staffid_Radiologist`) REFERENCES `staff` (`staffID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_report_staff2` FOREIGN KEY (`staffid_RefferingMD`) REFERENCES `staff` (`staffID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `staffID` int(11) NOT NULL AUTO_INCREMENT,
  `staffName` varchar(45) DEFAULT NULL,
  `StaffRole_staffRoleID` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'use hash',
  PRIMARY KEY (`staffID`,`StaffRole_staffRoleID`),
  KEY `fk_staff_StaffRole1_idx` (`StaffRole_staffRoleID`),
  CONSTRAINT `fk_staff_StaffRole1` FOREIGN KEY (`StaffRole_staffRoleID`) REFERENCES `staffrole` (`staffRoleID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Doctor',4,'doc1','a5beb9d1b0e50129affe6e13e42d9e5f5942cda7'),(2,'Radiologist',3,'rad','bade5d26b78d94e5efb27f8cf03d43b298f69915'),(3,'Technician',2,'tech1','40807e40aa0602559be12b1ee786e225d17a8dd6'),(4,'Rob The Tech',2,'tech_rob','42938e89eeef40be506453f2825813bb920abf32'),(5,'Rob The Doctor',4,'doc_rob','4dac8dff73ea957392686e7bbd7a36c491a3e482'),(6,'#1 Admin',0,'admin','d033e22ae348aeb5660fc2140aec35850c4da997');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffrole`
--

DROP TABLE IF EXISTS `staffrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staffrole` (
  `staffRoleID` int(11) NOT NULL AUTO_INCREMENT,
  `staffRoleName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`staffRoleID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffrole`
--

LOCK TABLES `staffrole` WRITE;
/*!40000 ALTER TABLE `staffrole` DISABLE KEYS */;
INSERT INTO `staffrole` VALUES (0,'Admin'),(1,'Receptionist '),(2,'Modality Technician'),(3,'Radiologist'),(4,'Physician');
/*!40000 ALTER TABLE `staffrole` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-28 20:31:28
