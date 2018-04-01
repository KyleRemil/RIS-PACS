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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modalityimage`
--

LOCK TABLES `modalityimage` WRITE;
/*!40000 ALTER TABLE `modalityimage` DISABLE KEYS */;
INSERT INTO `modalityimage` VALUES (1,'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0„\0	\Z\Z\Z\Z( %!1!%)+...383-7(-.+\n\n\n\r-%%----------------------------+-------------+-------ÿÀ\0\0²\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0A\0\0\0\0!1AQ\"aq‘2¡±#BRbÁ\Ñğ3r‚’¢\áñ²\ÂCSc\Òÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0*\0\0\0\0\0\0\0\0!1A\"Qa¡#2q‘\áğÿ\Ú\0\0\0?\0©`g¥hÊ½)\Z\Ãr©·\Ê p&§İ²ÀÓ¬K2J\Ç0IRu\"¿(°\éòM\æ U<·†sP3e¡B´\Ğ@\ïùB\ÜT¥) ¤;U®:m¬„bšR\0N•\Ğ\èı¢i ı‘!JI,ü¯¹úŠ\è\ã^†&—™pj•\r”*	\Ûü\Ä8’ewTµr»[¡\Ù@±o1«@UqE¬‘jı¤õĞˆaBÒ—tê•±m‹ùG)ÄºV5úÀ\Ü¾ûö±(P”\ìª­f#F\"\Íõ4/©\Z¬ı\ÇÀ8T\ÓBT†\Ì	a–\Ä9³u¥\rby©(*4™ˆ±\ÈK…ò,‚\ãE</Á+\Ã)XªO*±B¨G\Ìw\ÖN!IRR]A$±gVVb+zi\Ğ\ïM\'\Ä\æ¯y©­.@c\Ô\nZa%2¦$°b:© „¨w	\0Ó²„/—))Zf$:]”\ÖHgK}Ü®\ÊwObğ\éI\n–¥!Â¥²…\Ü(Wj$€v%­\n‘¹I•+\ë!dÚ‰‚TGòˆ_ˆš~*¯Ñ¤—ûI\\¥<¹‡‘‡X¼!J”°9I\Î?˜;yD8\ë	}£]V¯´•\ÜPz~\àš&-$8LÄ\'oF0÷Ù´„%@¸PO]i\ÅMj5ıò\ßp	?ş‡¬[\ä/\"(ES31\ê°ù¢´ce`*V£µò·ö_´3Á\âr\á\Ò¾`\ç«øŠD?Ê’¢G\Ğ\É)Ş¢PSÿ\0R… ŒF”&R(”+ud	I\'±qÖ‘%“0LH¦Pµ…%¿\ê<\à$ŒÄT¬\ê;K>\Ôœbñµ‘)(NiŒÿ\0öòƒS\É,\ï+%:¨©)O’R” Œ$¸\Z½}Ao!H†$(«X?\Ã.3»ºydü¼Œ¹¿½R¨H\ãú\í›ô`\îÔ†ø…fKmş\â­&vP\Z¬Ş†\Ñd\ÂLt—\×\å\n•¦2d‘•\ã‰À\æJ{“òƒ€9Ò² \r\â	FNC\Â\å\ÊcP)„%\âØ¢&&¢q¹Lñxy\nV7‹/	qx\Õ.\æ\'\âi\æ0µQÔ†‰ŒF@\0^°ì…–%$\İ\Çv6P\èZI9’\íe–)Ø±¸Ô G2s\Ò\ÔÌ¡®;W¤k¢Ÿp¸û\'Q¨Œ*\Í&e$µ*šı÷\ãJUT*\â\ÙTn@\ÙW\ïI\Ä=ÀgÔ”•ªz¥\r\Z9\ÄH—3™‹±¡\ĞÒ½70-	Ì¡\âJ4Q{u\é\ç\ÊAIij4£›²÷KylõI.\Ç\"ü\ĞO’Õ‘{0\"ğf(ºfKğÉ»8A\×÷f©{ºi\ÓR\0ò¥{\Ô\Ê\ÕP!™N,t#j|\â	2\ŞbSRÀ£s¤\Ég}\ÓW¸&\Ğ\îgKæ–²v²ˆ\ìT›nÔ\åJA d!òó$y\İ4\ÓG\ŞÀ_\Ù\049’\Ü\ÉúÀ*\× ¸£\Z\ì\ìzš’/`B¬•¦n\Ì†­p`ùrüNUŸzG)gLÀ\ÆÆ„„=KŠ‚\"T…§9\åRlA\æ	qT¨\\V\Ê`\â‡s ZT’\áeÂœ\å R¨u®`\ì,\ï	bfŒ½™FŠ\íM®\Z\à\ÅbJò¨Š”†*–}\à\0V‹½\Z¢\ì:³aq²–±)Kt©<Šn`K®/Pª\Ğ¼JNT¨¦ \Z‡¡B•¡è¤RvŠW ¤·\ÙR[¸\n~ôW¬\\q2–™h%‰`I\å%À‹3h ‘«\Å#Š¬\r½\Zi\ë\Ò™r“1jÜµş”’{\Ğû±`ÁO-2•ø:ƒ*š†ğü\ÌWøy‰jyO|\Ù?bÖ™AÖ›²\\7\×ZV®\í\Ê; F”,=,—$µY…\ÂR=Yg\Ò2\ZIZˆ\n\æ\ÌM€$•>”¸;\Äx5òÌ¨\r¡°ƒ“µ>pF.c&Xw\ØnX\Ô\ï@LdJ\Î=\0))b\0\'?wU%K=X[G0GŸ›\ÃZô[TQúe\nıë¥\İh3\Í:’hª\èB¡Ve!+Qc·YE y%\' V\Ğ\Ì\ï ™-rHqõ…3sjVù”\×^\Ç\ÌR\í\î· şÒ£·û†¸œrÌ¥!À*®™¬—\ÕF„÷H²©‚”\ÜÜ¾\Z\0«°!J\ëbG\ÚÁ\0,\"€\ÈŠ@~\àò‹>G+æ¢ô4ŠgS™\Ô%’H÷]Ã”ôv±‹³¸\â©lE’;’\Æ¡\Ôó–j\İûš¼2%\É jĞJ±YŸ’X>e\íıYDXøK-«ü)ñ‰$f!\à\Übjö49ƒ@¨%¢»\Ç&\ĞÅ¯-ŠO´)!%ÿ\0\Ìk\Ç\ä)YU0¥¡œ\éE\Ï(\ëH\ZfA\Ö:¶‰gh‘SöÁš`ğŒg„cY\Ìfs\0^jQ\ÙG\\\Şóõÿ\0ªF`w|Š\ê]%»\Ö1ZQh)\Ñ+RAm’¼\Ì·´dô¥™iQ\ê@>E@s¿3m,\Ó“0\r\Åh¯)e=Û±ŒT©‰/\áø‰\ì¥\èA|¡\"´—J”•5\ÂÁKupÿ\0e\'¢®b\İ!iø’ ƒ@\ÒN=\"\ætº2’ W)º…†#\ÔFÒ”ÁRĞ¤ÑŠB’‘[”\æ\Êb˜Š_\0VdÀ\à+ÿ\0Ş±™‚˜ŒL 7› 7W°´IB\n2	|ª™JPœ¤\Öú›\\\Ãx¤\Ì\é$€jT_\İ\ãj\ZDx5 3ğ\äı\Ék…™;\Çs8‡\Õ2jùœµ+b„ñó…M°©S1YU\î½@SQb\ã¡Š\Ä\éÃ’ ¢yƒ2‚†f¸J†£®¶, c\Äf0*z½\ïõ˜\0Ç¨ŒOÃ¨†AE2’r©\'BUnıDN¨C;\n\ë!H)RT\éXvua®P§|µ\0¾„ˆš^	*H–ş\Â>QfùK\Z]š\á\Ú\Ä\åb\Ğ\ÉIRÒ¦l…#3P€*\Ó\ÇAc\å\É\Â!F‰A•ù&¢\é ³–¡\0Õa\Ç(\æD\Ğ\Îr¬j•\Z\Z\ìII\ï\îb±\í,µKX$½*Yœ\ê\ÂÏ›\ç.+„S¥r\ÖB’\ÕRn\rœ\Õ\Ò\\¤”’’}\Ò\Ñ_\ã3DÉ¼\é)\Î]I7J‚@P\Z¡•c¼9ó$%	#ÿ\0“§ºb\İ‹?³’T²hA`öv¯W>]¢¥\àºò2AQ£Ÿ€ø½pùZÀ`2‘\ÑD¥\Å¬U\\¥$\ÉS9…;,\0+vk\ì\r\à\ì4\ÆVr÷)@Õƒm\Ë?c\n\ä\0„…(–Hg˜KŒ©£‡R`\Ü\Ş@¶@¥€°rBj·•uˆ¤\ß’•Kš•)’\Zd\Õ\ÕBWV`Hò\Ô\ÅyÒ©‘‘KTVb…š+\Û+h\Ğ\ïˆ\ÍO†°K¥+«\ïË”‘zÔ¶\İb\Ù£.b\Ç\ï%‚ªI*3M|œº4~	\'-L\âX,ú‚YETK%ƒW™\'³^JIJX–@¨X¨°\'*	\Ù$y\ã¼Á)9×š\â¼\Ê#Ä˜M\Ò\ZÁ4»DÅ\\\ÒÎ„„¥\ÍÁ\Ë°I¸&\Ìa#ˆr®r\Ô\î\É\0`Vq¹	¶½¬Ì…&Vk\n®ù¦\0\Şe0›‹á‰”\0¥­*R«R§b:2uŞ\Ù\Ê%J–	\ÌS,¨\ì3LQ>³Sı=\"¯ƒwÄ“ôYR(š\ê¥`|\ÉS}\Ñ¸iA«\\£\Ê\ç\ÖL˜‰Šgd¤\rl¢”Ÿ2œ\Éó‡\Ü\r9e‚\Ô#—±%©Ú¾q’\ãd¹½\0ø\Ä8e³Á\å5#k÷\ĞB,F\'*ò\ëx„\éN\"§\í\0IV‹vf0·\ÈKxx\İPñ¾2…9zt„knö‡²Jˆ-¤U\æ\É;G^7²hx\È\è \í\Å### Nı¦R¹	¨\ÓR4£üùDhZ\à! t(\0õ#)/\Ë\Åf\áCl\Îİ‚½#j`)#\Édy\nˆ\çZdË–I\"Q\0\\‰„ğ\0ù\Ç+\ÄKŠ	ş)…C\áOH›$(UKX\0_Ñ©\é?¡S-HK™l\Z÷H¡g¥6\é\0¿õ9H/\á\İÁøˆ^×¨\Ñ(	uJ\Ë*‚G¤E‰\á†ad\Ã\íSgb4?´1\'‚œ<¤Î˜Ì²R.Hg\rÜ´\\’ƒÿ\0ªú\Â_?P>c›\ã\Îö¾k—™”<c\é\nfM˜¯r[«9ü ¸5¹pI‹÷_DõÏ™ô\Î<I\Ø\Ò\Êkv!\ãú\á³z´U(#µ¢R\åÿ\0¯J#›9k8\0\İ\ÆSJùVğ\î;!Š3]9\Ñ\Ì4\åR”]³(‘Ô‹ÇŸH\â\0\Òb\ê(`©H\Ë\Ï!}\Ãi²¡MÀöön\Å´)—˜¡I!„µ\è6/\ï¸\ï8ÿ\0C’yIºUf/¡?§1&¡À}¡I¤Ã‘`\0\0‘ÿ\0¶»\æ—v7A;Z\â®,’R‰†«HÊ³Q¨~Sve\'x\Ê\ãe8^W(r¼\ÄL2\ß\î-+Aû%#\ÔCO‰¥¼\Ê$5ór²nA{[0†\\<À\ÊPg¥3E™A/²œ\ËJ7\ã%\ËZóJ\ÔÏ£ fm¿v¯Nğlü\Ó”€\È“VÌª¦\Z$&õv=&N\Èf”r(€TM]˜\Z}\İu\Z_2\ä\ì©aÀºAú6\ìğ?^d\Ë-5C¿94¨ WR¨zp\ÈñU*K\å@\Ë0½Ïºy·-ó\íq\ÓSûA\Ş%¶H!w4ó1_\ÂN\Ë5j VÔ£•$„°½Ï¤5Z	QR”•\â¿4Â€Ï¢RGRM\Z&‡X<)RB”\îf¥JjbJ{;¤(Ax\ä\'–Y/R¥$W3¨]´$y­‘\"R”\ËI™JQ>Şµ>Nzf\Ğ\nhg‘™Z±\Ñ\Í\ØV\İOx¦¯ñœ1*\Êh€s¬ëš¬mB\ßtn\0Ÿ\r72ƒ\æì”’\0óÌ¯X\çI+J%¤•,REBh²\rl\Ëp>\×H—„\âKQ\0Pš?$\Õ\ç\î\é\0¿H¯@Ÿöw˜R*¥-d‹¨Tù½¿ú„<À“k¶\Î ~…\É,‚Bu\0Ú¹\Çõ¬‡N[—$ù\ëø\Ä\Òd³T\Õ\ÌT¸\Ä\Ó.k5M\ÏM¢ØµÓ°Š7´<@ªvD‡ùÁ\á±$¦‘“\æ­\ã8^AÇ‚‡\Ş\r\0y\ïµJ¡cˆ˜^ñ\ì\Üo€\"h\×ğ9\ã~\Ïxd±\ÑÇ”ÖŠª\Åf7Ÿx\îl’FÑ²X\Â5–1£ ffqÁ¡\n>`W\Ì?œ=\áKB¿z—ZTTºZ\í]Æ°Ÿƒ)b2>òJºj\Z¿„[8f)\ÉÎ	KŒ\ÅC|\áp­ôŒ2X´ğ¤€2€v*˜‚[³ \ßW06+¥+&Iy›\èù¨\ÇŞ–§o½ñ‡¬§!–\Ó0	~rÀj\ëx\íhZRó¥Y>ò9‰7p\\P\×G>q%wÄ…øJd/øJ	r\0bK,›T\ïsq¬V\"BrºB \Z…i\Ê\Îı\n\ÌM#†Ì˜TPT’I º™ R©Q®úD<vz¥\âp®O†¥\æ\à¨\rú\Öé¸p¿O/|.›W\n\Ü_˜ı<uô€\çp\Ä1qQ¦\æ\àu¤Zg\É³4©`4\ë¼&“™@\ëƒŠ_\êÇ£–yc\ê½\ê\íL™D\0¥=^\ŞBğ\\Œ\é\ÔWõ\é?ù\0Ÿ\n_1)ñ\r\îù_ñ\ã‰!S\Îg\ÊX>\'õX\â—x\ïé·¯2ømŸ?\è»ÀV‘B;Q\áW2\r	\Ò>‹Ÿ\ìf~Ò•6b©+Z˜¥Åˆp3556ÿ\0”8,‘2\\\Ü0K.P+J\åX\'5¨Ş‘[–M·ªÌ”4\âK\æI)X\Ú,|‹¿„‚(%,Œ\à?\Õ\æ–:t&*3(by3M¯\çf\İ2½Ï‡có$Ğ±Nt’À£2BYor+\Ö\\MŠ\Â­t¤\ß0p{’T¿Xªû‰+“‘J?H¾d¬­\ÕÂª:õ‹b”••„šgœFÄŒ\ÇûT£O\Ê9\ì\Õ\n§Ì•\Ë T\"Z\Z’V—Õ’\Ï\æ`L@NpôL´$\0/»\rJ‰_\ê°ËˆJúUL/‘>\îr„\r4¢F\ì¨G:qñÕh›:w\éZz›EÀc‡*d-WT\ŞP/”Q¾¤$v¦\Ğ\Ñ*\Í\à\æ`¥\ÌğŸD\ËM(\Ô%\æ,>\çg0¦N²¡\Îj\Ö\Å%JB\\\ÂB€\ê!¶g–€\äd¡,&\á \n2\È\éL\êl\ã\â‡\ÌM\æ\Ê\0\Zôh|²\ê	¢\×RE’á‚›°ÿ\0QbR3(¸K¹©c—\ïk\\”LM&c\Ùf)ÜŠ„*:¨$UVš€ÌMÃ„\n72T„XR\änHa¨ˆp²\Zz&8(–’\ç\ï)YH\ì\å\ÇPb|B\\¡$\å¥#B\n\rN\ä| \ÉXp$øwy¡K{š„ª»$İ¡˜\Ì­l”§ú²‚®õ\ËÊ—M\Í&ˆ°\á\×\Ş*s\äz^°XZ•ú¹øÄ’\È\Ë(½\Ì \áü4\Ã1t­Xx¾!–@)|K\Úõ\ÔIM>\ÔT–ø5\Ğøh @“1–#É±œFb\É*œ§\Ó:zjH\Ş/\İQ§®”/H¦ûUÃ\Ê#\à|^a¡sE”LK,7›DÏ†‡‰q>U\Z¼\0cÒ½¡öa\nu%b(¸\î¤ƒ\Ú:±\Ëi¥±‘Ò“\Zh²_%\Î\'))\Í\ÙY’™I?\ÛdÍ™%\ÆR°+jg•¥»ˆS€\Æ )\å\æJ\î;l@\åP\èaˆ\ÄÊ˜~+U¤eÍ£,(x\çªX¤\Êœƒ)7HU\íP’\nW»u¥\"y%$\ÒaIp9NS³(ò\ì$Z‚I3%\æJH™(ıRRu¡õù\Ş\á1\é”BÒ¯´F`–\ë~µ>Q³pŠT¥\çz¹R@z	z_\İ:\\´\íÆ—”˜{¤\å¢Át\×SA¤£•Ğ´L@ Š†	)]ù\Â\\J•(©!TT¤‚¼\à#Ô¹£9¨gh%\îpl\ÌR¦\Ê\0­3$š\æf)Â Ç·XPµ™LÃ—1®z\Ú\'\áüE,&)\Â&(%`Ğ¢h!]” u0V;H\0A\ßW\Üm‡]SOŸ\İgw;U+\ÛYIV\Ï-i!­•Aˆ>d~ŒO\ì—ğd‘UŒ\Íøz~ˆ‡G‡…¤$¤)\n÷’ª—€õ£ÁR%²•fg™´}w˜Oôò\ÏXo÷2X\\´\ç$†:\æ\rF÷Ğ‹…e£Xm\åI€H\î\áÑœ\0\Ç\Ë\Ò*\Ş\Ò\ã’\0@9Nª«\ä\İ°{\Ö;qš9z³\ìó¾),&b€°-J6/jP.\Ñj,\Ş\Çâ’™\ÈJê’°C\Ø.\ÉSo\Ö=VTÀ¡~f™\äóš.mÜµZ<_…\ÌÈ´-Ÿ*Ò®ùK·\Â=;„\ã†NB\Ë,u°å®¥œlC£\â\Äñd8Rt\n¨{©\ÂR·2ˆ	4Š\ÖNs˜f\ÕoÉœµkH¶N”Ìšr¥Js§)JG\İ\0I5`®\á9D¥\0œ\ÎAf<µ:\ÜC\Ò&R	\"i9!e š0\İG¢yÏ“\ê!\Î’¥Ö¦jT‘¡x¡f*u\å¦µ%D|H¯òƒ´2Tª¥!ÓŸï­¨Ÿº„ƒ\æCm ;‚\ÒÁı\áK€9^®’ılÀ] ¹Dµ3=R\0»\\º·\0MJº†\Òf¥\"‰*˜¥e¥IQ—°/FB^6¶	)*ª\ÎAÔšJA\Ñ\ß.mo|‚,t\Ö9\ÊAH)*g<¹\Í\İ\ÎÂ üF„(R\éS‘Z\äJTH?\ÍM€\'\"³š©’‚Ÿ´s#1 Y³\nµ\Ö&qR]\î‹\Ø)@\Ç\Í-ˆ”\Ä%¶o Ty>d\á*S›·©kÂ¹u\Ê>ño#oF§X#-\È\Z3ª\é9e\Ó-Q}¢Ä©o2gº,4¸7‡9\0°h×µ\è³,ˆ_ÿ\0a\çMI	I\Êşñµ#\Ò\Ëxğ\Ş>Ÿw›\×\É\Ë7³¼_³2—`I\à†ZŠMD_\×Â–_J\Ò$¦0¹±\Æ\áÕ‰û/>s>Œ¨>\Ã‘h‡\Ë4¤=\'(q\nøƒ)&<\é{½7—ñ^\'1* ,·\ëx¯\â1jU\Ì=öŸ\r•f‘ZP\Ü|&´LsŒŠ#ü\ëO‘ùù\Ã,4\ÃpT\Ïn€¤’İ¡<´eS‚t9‡\ç	Œb…?f=\èñ•RÃ…\Å(P.\å\Îa˜6âœR&\" •\0]\Òt\Ü\Ï$\âH!‚˜\ZeX-ü)Xü^pù\áN]1d™kTA#\Íôˆ°\ÍpS\Ğ\áJ–¥Ì‘EuRlvq\é¤7œ…,:BV¿²•e\Ìú±cG¸bH­(Z\r‘˜½˜õbzˆ‘Tœ¹\\¡Dó¤gHF¡ë¸ˆ\Ğs\âl•ŠS\0Œ¡Ô‡d•\'38f%:‡´ÀgÎ’Œ“\Zl¤†\n¥£VX©)ûÁÛ³Æ„\ä\ÎHRÒ‰õ\ÒYYMn\ìC\ïl5\ç…\Ëj\ç±E\Ó0eXI³.„v.#Ls¸øN|xòMd}\'…¥\nT\î]\'0 Ü¿wˆğ\ÅQºVBÀ¸¨\èö…|C‚ó•®yG)4¹K\åj–=a7›1)RR\'³\Î‚\\hI˜™…Eµ\n¼\ä\Ã+/«‹şL\ä²^\Ô\ãŒûC/TLÇ \0\Ñİˆ«»\Å*T\äb§)x…™rR*\n”ºû‰4©7QoË³…–°‘9)M\0R‘Srÿ\0F[\ã\ä\'@’–@\äı2†\Ö+.Möi\Ã\ìÓ¿¨9J\Ô\Ò\ĞD¥Ü\ÕW&†¤\Ñ\à±\Âf)\Í;&3†PS)6¸1\İ:O†”\à\Şqm\á\ËÊ”€€X‘­ƒ\êz6\å\è\Õd¹U4\×ò‹?\Ä\æK„\è\à\ì\ì4#%­8,qZQ-²eSZJ6š¹-j•\\I\\\ŞõA\æ{€\Ø7¨\ÖùÃ¢Y,–P¢@˜¦¨|\Õ-mo\Z\\¬§›.j\Ñ?j\Ì\æ×¹®´¤f‘˜d\æv$5s1\Z±Ulõş\Ğ50T”€\Î\ä¶\ì7`Ù¤4áŠª”`l\í~¯¡ø=\ê\ê \ÕF÷¹mºš.iNT¡³\Z\Ğ–	¿ñ?\ËA\nÃ¢I”U®‰\ì\0uª\îX‘Üµš3 qFk%µ\îzñ\é\âÑ–©H+4rj©©µtü\é˜G;®f¹tÖ® œ\áú•\0ı7ƒ]\'”€P¥\é˜)d\éAş¨„Ÿ\r\éRTh\ä—H%­•\Ú\r[æ³š=®\ãWÉ¦´¥ª\æz86§ûw‚8Ä²Tû\áª,	Ñ¶£W·\ÂÅ±BFŠ\âüñ—4ü<”i$\"bz<ÿ\0qñ)\n”¡\î(ub]½^q”Ğ†„>\Îğ\'6\ê\ì§l±ş>\Î,¾½\Æ\Ó6ˆR°T\\I\Ã\ÃD<Vx@sx½I\Çc7y±ıaô”¢ñ,	K´3ör~d\ÌÃ…^<\Ë\å\í<gÚ¼+\è^)e´{Ÿµ\\$e$„x\ßK,ˆ\é\â\Ëp©QF\Z’t¥‚jÿ\0õıu‚0\Øiz¨şuoŒh\ËI5@\ïQó,b%I!˜¤\0/ş¼\ã5\nt¾^„Vü¡–vK›Ò†½Å›¸;\Ât)I~d… \Ş\Za±e)\æ\nse¤’=ğò‰ \ç‰œÜ§0Ø•$ù)Abğ\Ó\n¥2Tœ\ÉV`3$ ?¨1[ÁcÖ’é˜¶¹M©¹³÷¬YøwÌI‹B®\Å.’õ5JN»c<¡´±)d¨4µJ¬¹¡«?\Ä^%”¥¥)j]À£#5\nƒuN÷¤K‡’úG*$’¤/%«˜e‚pÊ—™>’\íB¢Gr2°‰°Ø¢R¹—\ÌE¦…«º›h\Ú\Ñ-*XJ’C•{¬u¢™»ñl‹ÏšZV\ÎB2•(}’Å–û(\æO•œ•(ƒ¢&$\"åš¹ŸZZÔ¤ \\\ÅB¦\ËJ29\ÊRB¨\ì=\ÒR\0h†7a¤{,–Ö¥f9’À\Ğ1\Øz¹}Xg\ãe¦h !+]ÀH5Sµ…¤ŠÆ”\"\ë+!ò©D2Ajdd„½=\ĞN±[£jF7%Ö©%¹IH\n‚\×(k›úEriE*p Mµ?(´q\Ô…†Tb,ü\Í\Å\Ø¾ Œ\Çb\ä5‹Vº_h\Ó\ÛRRß®×„\Îğ\Ô· ‡z·™€°\ã:’õ\Í\êH³ƒ\Ú;I)¢¬ö­\Ş(-Sø§(b_\í)$³õ\é´œ^eƒ_;z7s¼T—‰ Ü¶›~Q.^¥ƒ5\éZµat’Û‡\â9¦3»\r‡­a\Ö\Z¡Z\n—75ùE3–]\Ûñ?„=BóÁ³tŒòh\Â\ÏKwk\r}o‰%%˜QÜˆ :{^J\Å# ©·[í¸‰¼`\äÌ—¨\ì÷Œ\Â~9Šsú.…À\\\íğ†J” 	Z3fw\È(Gğ\ÃÜµMK\ÅjT\Êø¹RI!ª\Çc{^ğV\\-\ÙJ¡jP;$ò¨T›• x‰\å*P vp\ç°S\ZŠ\\\Z\Úô1:\ær%\Èúu¬&^%7\ÊCª \ÄT8\Ğ\Îú<\ç\Å\Ï+–¢–t€@\íZoF¬µ”²›–b¤‚À\ÈÁµ¡N\Ú”óúÆ§ûT„P\æ=N¬lòñı\Ç,º“Áô\â%§2‹¥ñn\'\ãLa\îÀœKŠ\Ì\Ä{Å“°‰¸F	SG(\Ö0\å\äšÓ·Ù½›¢õe\å|ö^SK¡\Â\Ô\Æ!\áòBG‰\\p\×Xh\Ë\Ë=£\Âı£G\Òö/i1\'\Ã-)\ÆJ\Ë\ï\"•*9\ÕF\éY|1õB\ÛjüM=#-@Q\'ùKPñP€*Mm\ÎT?´B{\æ¿\Õù˜…9NÍˆ\×B=B^\rFP\å=H§\Ã\Ş\âbP,Õ£°¯rşOp|DJi\Ø~-\n‡O\r5N,No›‘ò†\Ü!Eê²ƒöœ·ö‚ u\ã\åû\ÊBO\Ş$\æ·Œ”¤K¨\rØ¿@\ÌE¢hXp¸ô‚@Ä¾\áK\Ì?§\Ş\ÓÅ¦,’„¤£.\\õJCX–e¬K\Äæ¤´\ÊQ}±J…úi&DÀ\Åa ]–’‹Z»vŒ\ì\á$\ç›0›0PJ\È# Q\Í~ i©AFbF`\ÎVH\0?»R“\ç\ŞñB‰)ZT4<÷ˆ\İ	ƒ°\Ó\ÔX\æIU(FĞ°\×cFƒ.ha\á\å\Z\Êw9RH*\ÑË¶ñ\ÔüRÕ”¥`\ä†\"õû\ÄXP³\Úlrf©Ö§,r\æzeÙŠ­\Ü\ë\0L\0È’R\Ü\Å\Ã%>`s~«ó§\ÕE\0¦ur±r_ru½Iw…X™jÌ ^¤J;S\ØÃ¼QUNF\æ}N\å…N\á\ØD%¡2Â”\Ì!)I%ò‡\æmúõ‹”+3p\Ït\Ù\ÈqAkü ‚\ÂXr*õ\Õ\îG‘ù\Çr¥…(³P\Z0­\ëñ ‚\Ä7OÎ‘`·ZúAR%‚@°§®Q\n/ª^•¥\è\İ#‘<9Vÿ\0@\ÆX”Cj_¼=\ás€¹Ó¥›¬#––MÜh/\rf`÷}\ÄgB\Ç.g¼\0 ×®\ãh\ê|À¥jªRôıIˆš A\ìkñ†(XR‘˜Öº\Î\Ãl\âœ\å $± ?¯\Æ–›]¬I«3Wõ	&\É%\Ş\ïpD…@\rhü¾Xd\Ì•	m\äPùz\Ã:\ÔM*\ì\rB´\è\àSxW5~\é	eE,û´tTF[	\'ùD¼‡&w‰)b²\ÔÃªt\ïH%^\É#4/\Â\ã¼D© ò¯‘U¾\Ç\æ\"\í;(`\İ*E+Ù¹I\Ñá„Œ2`Š\â\ìY‹Àóqe] #yüDB\ÜD\å¨\ĞGxl(5x!C(„j×´³\ZYrÔ#\âs]G¼_=¼\Ç<\Şi¬uqMB¨”¨\ÔaF\É?˜^¡}9”O\È\Ğ)£§asğ‚>c}@:[hÔ¬ZA\Ù?øˆ\Ì\ÜL\Â-µ\íWü\ã‰d½C\ì\Ç(”0\Â\0HuµY’T®‰	o_ …`óJ»ó¹ó*-\è} Ù\Ãc†•\ÙJ>D˜w!2³\'1%oP]a=Ú¦®IE–>·F&6… †QO\\\Êzt`H@\ïŒœ©Y\rB”¹~©aú\Ö\áX\ã•A)p©y	})‰\ï\é\nğ«”\Ê\\´uÊš€{ş8Ÿ1]”6\Êşu:®%+/2r¯R•$)\Íœ\Ä\r‡\â)d‚B@%A\éaÈ¦]\Ñ^Â¬(™I&Çš\İ[3ü!\Âeœ•YªR@v:Ş½m`Š\Æ-j\0¦g‡a,,‡:4Mˆ\n˜\\¡	aD\0H}Ê•u6¦ğ©ô§8¸\0\Í\Õ/øD\Ò†\ä*\Ê(¡\ÌH}óQ\Î\ÎbM\Æ&²\Ô		b\n€k˜ï¿ Šş:gˆ¡J\Ó+İ´v¶ğ\Åx°®@”¥ —R-\Ï]4…¸€H_öh¨Í•‘%)\0œ\Şó\ÜÅºk\åq2Aš\×s§œ8^(0¢\Z¥\ëOL°¥%\ë\Z\îÃ¤T 5~¤¥ƒ\Ôõô\Ò\Èw‹Á\\±Ò—ó„ø®R\Ûmh¨\æd†/J\×ğ‰\å\Ìf­ƒ1…\ØBTôr\Ñ\Òf^\r™xª—\Ò\Â\rF%T`)XC‚\ÄUa¬¡N€\ïašxDŒÄ¹‰`)µ¨b\Îr\Z ¹Rj\áÉ¿øŒ\è!ò‡rIn±ˆAu1‹…UœV¢ñImÁ£\ĞÁ“N`¢\Êqú!AQp\à‚4%‹‚\İ\\ú>ğ\ç‡O\Ï-*KV¯	8¨\å\åz\Å\ëpU€r»¨³õ\Ú\à)—o×”/–7ˆÃ”ÔšD²\ÕJD’a99h %\Ä&ğ^+\Ó\ÎI¬97CÍ½¥\Å,\Ö+ª0×‹N\n&˜\í“Q.Lj:C!\á5 O™\'ñh“\ÃQ\×õøDÅ´O\ã\ZT\Õ\n—£ƒE\á(K\ÄÖ½;tŒFa°Qõü\âQˆ:W¹ü+øF	\ÇP?]H€5–h\n¨1,™€h?›üFÓŠo¬_`Kú¥£jš¤)ô\æ\'şÕ€\ÅÈšX´\Ã]\ëøÁ2¥Z`¥\ÜP|)}\Ä\0™û‚<\ÔÀAƒ.³K\æ\Íñ\Êu\Ò0—ˆY5H][÷o\çÌ H\íhk‡À¬\×\ÂC,\àok<-Á\ãR\n†\ëK·¢^\nñr+ùJ\Ù=€4õLM\×72“p¤š¾Sğ\â^7‹I+r¢T°ÛZ|h\ÌXòj(s7ñ9\\Â \Å@+š\Ä\èQq•9J…õõcC\03rO\Ùú˜”f*d”^Á\ÏS¬ fK)KJS¯¤^\rE\èI\ÚÁöóƒ0\Øt¡\n\r•lŠ€;\éªLÄ“˜s¹71,\ĞŠWË¡`ûõ‚‚<P%B\Ú?x\ïüleAù­‰’V\Ç\éaRvû,\"¿Š“”šT\×\Ëğ‹\ÄPAHcõ„Tbg½\çb€Œ\Z*9Á‡PHS‡^J\ï08‚LMTY°˜`Öƒg\0§ôaLœQÅ»\ÃùÊ“@\î/Xz/C“R\ÛÁ(“\\ª10ÁG)\ë£@¤ñ\Z>›ò+\âˆ!<¤° ·m`\Ô\É\'*\ÓqC\Ø~>pb•\n†\\)NR,(\Ô\ß\×\á\n¢\Í\Ã$,T\Ş\ÛFÔ–£G”„\é\èÑ“\ÔA¼$¡^#Ã¹Š\'µ\Ø\Ü\ïX»ñ,D°“˜‡.ö—\nX×Šw\n\Ô\á\ÖTw0˜:’\Ôi£¨\Ô µOH\Z\ËH\ÔdAºD´½‡¤h\ËH\È\Èf\ë \ØA2e‡‘‘®P„ƒ\Ğœ\ÉNw\Ê®\Â22&™·\n–,9µ\â²ˆJ_vm\ã#\"}ATŸİ¨\ê\rlKY$I»V221ˆ\Ûi\r8¢@ğÀaô	ç‡š—¯$43´dd(b$¥(¶\Âq	a…¤dd8e+@{H\è Rƒ\Ò22,$D±°ôƒp²\Æ\Ã\Ò22&®\nÄ¤e\Ö.\Ür(\ÈÈœ¼5À\íb‚:˜9Sû«|Q!5†H@JPW1­5ŒŒ…“>_&\å#2i¤.\âš22%Š¯\ÇQ±¨a\éx½R“öG¤q\á\'\ìAMxIû#\ĞF¼ı‘\è## ÿ\Ù','\"download.jpg\"',4),(2,'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0„\0	\Z\Z\Z\Z( %!1!%)+...383-7(-.+\n\n\n\r-%%----------------------------+-------------+-------ÿÀ\0\0²\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0A\0\0\0\0!1AQ\"aq‘2¡±#BRbÁ\Ñğ3r‚’¢\áñ²\ÂCSc\Òÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0*\0\0\0\0\0\0\0\0!1A\"Qa¡#2q‘\áğÿ\Ú\0\0\0?\0©`g¥hÊ½)\Z\Ãr©·\Ê p&§İ²ÀÓ¬K2J\Ç0IRu\"¿(°\éòM\æ U<·†sP3e¡B´\Ğ@\ïùB\ÜT¥) ¤;U®:m¬„bšR\0N•\Ğ\èı¢i ı‘!JI,ü¯¹úŠ\è\ã^†&—™pj•\r”*	\Ûü\Ä8’ewTµr»[¡\Ù@±o1«@UqE¬‘jı¤õĞˆaBÒ—tê•±m‹ùG)ÄºV5úÀ\Ü¾ûö±(P”\ìª­f#F\"\Íõ4/©\Z¬ı\ÇÀ8T\ÓBT†\Ì	a–\Ä9³u¥\rby©(*4™ˆ±\ÈK…ò,‚\ãE</Á+\Ã)XªO*±B¨G\Ìw\ÖN!IRR]A$±gVVb+zi\Ğ\ïM\'\Ä\æ¯y©­.@c\Ô\nZa%2¦$°b:© „¨w	\0Ó²„/—))Zf$:]”\ÖHgK}Ü®\ÊwObğ\éI\n–¥!Â¥²…\Ü(Wj$€v%­\n‘¹I•+\ë!dÚ‰‚TGòˆ_ˆš~*¯Ñ¤—ûI\\¥<¹‡‘‡X¼!J”°9I\Î?˜;yD8\ë	}£]V¯´•\ÜPz~\àš&-$8LÄ\'oF0÷Ù´„%@¸PO]i\ÅMj5ıò\ßp	?ş‡¬[\ä/\"(ES31\ê°ù¢´ce`*V£µò·ö_´3Á\âr\á\Ò¾`\ç«øŠD?Ê’¢G\Ğ\É)Ş¢PSÿ\0R… ŒF”&R(”+ud	I\'±qÖ‘%“0LH¦Pµ…%¿\ê<\à$ŒÄT¬\ê;K>\Ôœbñµ‘)(NiŒÿ\0öòƒS\É,\ï+%:¨©)O’R” Œ$¸\Z½}Ao!H†$(«X?\Ã.3»ºydü¼Œ¹¿½R¨H\ãú\í›ô`\îÔ†ø…fKmş\â­&vP\Z¬Ş†\Ñd\ÂLt—\×\å\n•¦2d‘•\ã‰À\æJ{“òƒ€9Ò² \r\â	FNC\Â\å\ÊcP)„%\âØ¢&&¢q¹Lñxy\nV7‹/	qx\Õ.\æ\'\âi\æ0µQÔ†‰ŒF@\0^°ì…–%$\İ\Çv6P\èZI9’\íe–)Ø±¸Ô G2s\Ò\ÔÌ¡®;W¤k¢Ÿp¸û\'Q¨Œ*\Í&e$µ*šı÷\ãJUT*\â\ÙTn@\ÙW\ïI\Ä=ÀgÔ”•ªz¥\r\Z9\ÄH—3™‹±¡\ĞÒ½70-	Ì¡\âJ4Q{u\é\ç\ÊAIij4£›²÷KylõI.\Ç\"ü\ĞO’Õ‘{0\"ğf(ºfKğÉ»8A\×÷f©{ºi\ÓR\0ò¥{\Ô\Ê\ÕP!™N,t#j|\â	2\ŞbSRÀ£s¤\Ég}\ÓW¸&\Ğ\îgKæ–²v²ˆ\ìT›nÔ\åJA d!òó$y\İ4\ÓG\ŞÀ_\Ù\049’\Ü\ÉúÀ*\× ¸£\Z\ì\ìzš’/`B¬•¦n\Ì†­p`ùrüNUŸzG)gLÀ\ÆÆ„„=KŠ‚\"T…§9\åRlA\æ	qT¨\\V\Ê`\â‡s ZT’\áeÂœ\å R¨u®`\ì,\ï	bfŒ½™FŠ\íM®\Z\à\ÅbJò¨Š”†*–}\à\0V‹½\Z¢\ì:³aq²–±)Kt©<Šn`K®/Pª\Ğ¼JNT¨¦ \Z‡¡B•¡è¤RvŠW ¤·\ÙR[¸\n~ôW¬\\q2–™h%‰`I\å%À‹3h ‘«\Å#Š¬\r½\Zi\ë\Ò™r“1jÜµş”’{\Ğû±`ÁO-2•ø:ƒ*š†ğü\ÌWøy‰jyO|\Ù?bÖ™AÖ›²\\7\×ZV®\í\Ê; F”,=,—$µY…\ÂR=Yg\Ò2\ZIZˆ\n\æ\ÌM€$•>”¸;\Äx5òÌ¨\r¡°ƒ“µ>pF.c&Xw\ØnX\Ô\ï@LdJ\Î=\0))b\0\'?wU%K=X[G0GŸ›\ÃZô[TQúe\nıë¥\İh3\Í:’hª\èB¡Ve!+Qc·YE y%\' V\Ğ\Ì\ï ™-rHqõ…3sjVù”\×^\Ç\ÌR\í\î· şÒ£·û†¸œrÌ¥!À*®™¬—\ÕF„÷H²©‚”\ÜÜ¾\Z\0«°!J\ëbG\ÚÁ\0,\"€\ÈŠ@~\àò‹>G+æ¢ô4ŠgS™\Ô%’H÷]Ã”ôv±‹³¸\â©lE’;’\Æ¡\Ôó–j\İûš¼2%\É jĞJ±YŸ’X>e\íıYDXøK-«ü)ñ‰$f!\à\Übjö49ƒ@¨%¢»\Ç&\ĞÅ¯-ŠO´)!%ÿ\0\Ìk\Ç\ä)YU0¥¡œ\éE\Ï(\ëH\ZfA\Ö:¶‰gh‘SöÁš`ğŒg„cY\Ìfs\0^jQ\ÙG\\\Şóõÿ\0ªF`w|Š\ê]%»\Ö1ZQh)\Ñ+RAm’¼\Ì·´dô¥™iQ\ê@>E@s¿3m,\Ó“0\r\Åh¯)e=Û±ŒT©‰/\áø‰\ì¥\èA|¡\"´—J”•5\ÂÁKupÿ\0e\'¢®b\İ!iø’ ƒ@\ÒN=\"\ætº2’ W)º…†#\ÔFÒ”ÁRĞ¤ÑŠB’‘[”\æ\Êb˜Š_\0VdÀ\à+ÿ\0Ş±™‚˜ŒL 7› 7W°´IB\n2	|ª™JPœ¤\Öú›\\\Ãx¤\Ì\é$€jT_\İ\ãj\ZDx5 3ğ\äı\Ék…™;\Çs8‡\Õ2jùœµ+b„ñó…M°©S1YU\î½@SQb\ã¡Š\Ä\éÃ’ ¢yƒ2‚†f¸J†£®¶, c\Äf0*z½\ïõ˜\0Ç¨ŒOÃ¨†AE2’r©\'BUnıDN¨C;\n\ë!H)RT\éXvua®P§|µ\0¾„ˆš^	*H–ş\Â>QfùK\Z]š\á\Ú\Ä\åb\Ğ\ÉIRÒ¦l…#3P€*\Ó\ÇAc\å\É\Â!F‰A•ù&¢\é ³–¡\0Õa\Ç(\æD\Ğ\Îr¬j•\Z\Z\ìII\ï\îb±\í,µKX$½*Yœ\ê\ÂÏ›\ç.+„S¥r\ÖB’\ÕRn\rœ\Õ\Ò\\¤”’’}\Ò\Ñ_\ã3DÉ¼\é)\Î]I7J‚@P\Z¡•c¼9ó$%	#ÿ\0“§ºb\İ‹?³’T²hA`öv¯W>]¢¥\àºò2AQ£Ÿ€ø½pùZÀ`2‘\ÑD¥\Å¬U\\¥$\ÉS9…;,\0+vk\ì\r\à\ì4\ÆVr÷)@Õƒm\Ë?c\n\ä\0„…(–Hg˜KŒ©£‡R`\Ü\Ş@¶@¥€°rBj·•uˆ¤\ß’•Kš•)’\Zd\Õ\ÕBWV`Hò\Ô\ÅyÒ©‘‘KTVb…š+\Û+h\Ğ\ïˆ\ÍO†°K¥+«\ïË”‘zÔ¶\İb\Ù£.b\Ç\ï%‚ªI*3M|œº4~	\'-L\âX,ú‚YETK%ƒW™\'³^JIJX–@¨X¨°\'*	\Ù$y\ã¼Á)9×š\â¼\Ê#Ä˜M\Ò\ZÁ4»DÅ\\\ÒÎ„„¥\ÍÁ\Ë°I¸&\Ìa#ˆr®r\Ô\î\É\0`Vq¹	¶½¬Ì…&Vk\n®ù¦\0\Şe0›‹á‰”\0¥­*R«R§b:2uŞ\Ù\Ê%J–	\ÌS,¨\ì3LQ>³Sı=\"¯ƒwÄ“ôYR(š\ê¥`|\ÉS}\Ñ¸iA«\\£\Ê\ç\ÖL˜‰Šgd¤\rl¢”Ÿ2œ\Éó‡\Ü\r9e‚\Ô#—±%©Ú¾q’\ãd¹½\0ø\Ä8e³Á\å5#k÷\ĞB,F\'*ò\ëx„\éN\"§\í\0IV‹vf0·\ÈKxx\İPñ¾2…9zt„knö‡²Jˆ-¤U\æ\É;G^7²hx\È\è \í\Å### Nı¦R¹	¨\ÓR4£üùDhZ\à! t(\0õ#)/\Ë\Åf\áCl\Îİ‚½#j`)#\Édy\nˆ\çZdË–I\"Q\0\\‰„ğ\0ù\Ç+\ÄKŠ	ş)…C\áOH›$(UKX\0_Ñ©\é?¡S-HK™l\Z÷H¡g¥6\é\0¿õ9H/\á\İÁøˆ^×¨\Ñ(	uJ\Ë*‚G¤E‰\á†ad\Ã\íSgb4?´1\'‚œ<¤Î˜Ì²R.Hg\rÜ´\\’ƒÿ\0ªú\Â_?P>c›\ã\Îö¾k—™”<c\é\nfM˜¯r[«9ü ¸5¹pI‹÷_DõÏ™ô\Î<I\Ø\Ò\Êkv!\ãú\á³z´U(#µ¢R\åÿ\0¯J#›9k8\0\İ\ÆSJùVğ\î;!Š3]9\Ñ\Ì4\åR”]³(‘Ô‹ÇŸH\â\0\Òb\ê(`©H\Ë\Ï!}\Ãi²¡MÀöön\Å´)—˜¡I!„µ\è6/\ï¸\ï8ÿ\0C’yIºUf/¡?§1&¡À}¡I¤Ã‘`\0\0‘ÿ\0¶»\æ—v7A;Z\â®,’R‰†«HÊ³Q¨~Sve\'x\Ê\ãe8^W(r¼\ÄL2\ß\î-+Aû%#\ÔCO‰¥¼\Ê$5ór²nA{[0†\\<À\ÊPg¥3E™A/²œ\ËJ7\ã%\ËZóJ\ÔÏ£ fm¿v¯Nğlü\Ó”€\È“VÌª¦\Z$&õv=&N\Èf”r(€TM]˜\Z}\İu\Z_2\ä\ì©aÀºAú6\ìğ?^d\Ë-5C¿94¨ WR¨zp\ÈñU*K\å@\Ë0½Ïºy·-ó\íq\ÓSûA\Ş%¶H!w4ó1_\ÂN\Ë5j VÔ£•$„°½Ï¤5Z	QR”•\â¿4Â€Ï¢RGRM\Z&‡X<)RB”\îf¥JjbJ{;¤(Ax\ä\'–Y/R¥$W3¨]´$y­‘\"R”\ËI™JQ>Şµ>Nzf\Ğ\nhg‘™Z±\Ñ\Í\ØV\İOx¦¯ñœ1*\Êh€s¬ëš¬mB\ßtn\0Ÿ\r72ƒ\æì”’\0óÌ¯X\çI+J%¤•,REBh²\rl\Ëp>\×H—„\âKQ\0Pš?$\Õ\ç\î\é\0¿H¯@Ÿöw˜R*¥-d‹¨Tù½¿ú„<À“k¶\Î ~…\É,‚Bu\0Ú¹\Çõ¬‡N[—$ù\ëø\Ä\Òd³T\Õ\ÌT¸\Ä\Ó.k5M\ÏM¢ØµÓ°Š7´<@ªvD‡ùÁ\á±$¦‘“\æ­\ã8^AÇ‚‡\Ş\r\0y\ïµJ¡cˆ˜^ñ\ì\Üo€\"h\×ğ9\ã~\Ïxd±\ÑÇ”ÖŠª\Åf7Ÿx\îl’FÑ²X\Â5–1£ ffqÁ¡\n>`W\Ì?œ=\áKB¿z—ZTTºZ\í]Æ°Ÿƒ)b2>òJºj\Z¿„[8f)\ÉÎ	KŒ\ÅC|\áp­ôŒ2X´ğ¤€2€v*˜‚[³ \ßW06+¥+&Iy›\èù¨\ÇŞ–§o½ñ‡¬§!–\Ó0	~rÀj\ëx\íhZRó¥Y>ò9‰7p\\P\×G>q%wÄ…øJd/øJ	r\0bK,›T\ïsq¬V\"BrºB \Z…i\Ê\Îı\n\ÌM#†Ì˜TPT’I º™ R©Q®úD<vz¥\âp®O†¥\æ\à¨\rú\Öé¸p¿O/|.›W\n\Ü_˜ı<uô€\çp\Ä1qQ¦\æ\àu¤Zg\É³4©`4\ë¼&“™@\ëƒŠ_\êÇ£–yc\ê½\ê\íL™D\0¥=^\ŞBğ\\Œ\é\ÔWõ\é?ù\0Ÿ\n_1)ñ\r\îù_ñ\ã‰!S\Îg\ÊX>\'õX\â—x\ïé·¯2ømŸ?\è»ÀV‘B;Q\áW2\r	\Ò>‹Ÿ\ìf~Ò•6b©+Z˜¥Åˆp3556ÿ\0”8,‘2\\\Ü0K.P+J\åX\'5¨Ş‘[–M·ªÌ”4\âK\æI)X\Ú,|‹¿„‚(%,Œ\à?\Õ\æ–:t&*3(by3M¯\çf\İ2½Ï‡có$Ğ±Nt’À£2BYor+\Ö\\MŠ\Â­t¤\ß0p{’T¿Xªû‰+“‘J?H¾d¬­\ÕÂª:õ‹b”••„šgœFÄŒ\ÇûT£O\Ê9\ì\Õ\n§Ì•\Ë T\"Z\Z’V—Õ’\Ï\æ`L@NpôL´$\0/»\rJ‰_\ê°ËˆJúUL/‘>\îr„\r4¢F\ì¨G:qñÕh›:w\éZz›EÀc‡*d-WT\ŞP/”Q¾¤$v¦\Ğ\Ñ*\Í\à\æ`¥\ÌğŸD\ËM(\Ô%\æ,>\çg0¦N²¡\Îj\Ö\Å%JB\\\ÂB€\ê!¶g–€\äd¡,&\á \n2\È\éL\êl\ã\â‡\ÌM\æ\Ê\0\Zôh|²\ê	¢\×RE’á‚›°ÿ\0QbR3(¸K¹©c—\ïk\\”LM&c\Ùf)ÜŠ„*:¨$UVš€ÌMÃ„\n72T„XR\änHa¨ˆp²\Zz&8(–’\ç\ï)YH\ì\å\ÇPb|B\\¡$\å¥#B\n\rN\ä| \ÉXp$øwy¡K{š„ª»$İ¡˜\Ì­l”§ú²‚®õ\ËÊ—M\Í&ˆ°\á\×\Ş*s\äz^°XZ•ú¹øÄ’\È\Ë(½\Ì \áü4\Ã1t­Xx¾!–@)|K\Úõ\ÔIM>\ÔT–ø5\Ğøh @“1–#É±œFb\É*œ§\Ó:zjH\Ş/\İQ§®”/H¦ûUÃ\Ê#\à|^a¡sE”LK,7›DÏ†‡‰q>U\Z¼\0cÒ½¡öa\nu%b(¸\î¤ƒ\Ú:±\Ëi¥±‘Ò“\Zh²_%\Î\'))\Í\ÙY’™I?\ÛdÍ™%\ÆR°+jg•¥»ˆS€\Æ )\å\æJ\î;l@\åP\èaˆ\ÄÊ˜~+U¤eÍ£,(x\çªX¤\Êœƒ)7HU\íP’\nW»u¥\"y%$\ÒaIp9NS³(ò\ì$Z‚I3%\æJH™(ıRRu¡õù\Ş\á1\é”BÒ¯´F`–\ë~µ>Q³pŠT¥\çz¹R@z	z_\İ:\\´\íÆ—”˜{¤\å¢Át\×SA¤£•Ğ´L@ Š†	)]ù\Â\\J•(©!TT¤‚¼\à#Ô¹£9¨gh%\îpl\ÌR¦\Ê\0­3$š\æf)Â Ç·XPµ™LÃ—1®z\Ú\'\áüE,&)\Â&(%`Ğ¢h!]” u0V;H\0A\ßW\Üm‡]SOŸ\İgw;U+\ÛYIV\Ï-i!­•Aˆ>d~ŒO\ì—ğd‘UŒ\Íøz~ˆ‡G‡…¤$¤)\n÷’ª—€õ£ÁR%²•fg™´}w˜Oôò\ÏXo÷2X\\´\ç$†:\æ\rF÷Ğ‹…e£Xm\åI€H\î\áÑœ\0\Ç\Ë\Ò*\Ş\Ò\ã’\0@9Nª«\ä\İ°{\Ö;qš9z³\ìó¾),&b€°-J6/jP.\Ñj,\Ş\Çâ’™\ÈJê’°C\Ø.\ÉSo\Ö=VTÀ¡~f™\äóš.mÜµZ<_…\ÌÈ´-Ÿ*Ò®ùK·\Â=;„\ã†NB\Ë,u°å®¥œlC£\â\Äñd8Rt\n¨{©\ÂR·2ˆ	4Š\ÖNs˜f\ÕoÉœµkH¶N”Ìšr¥Js§)JG\İ\0I5`®\á9D¥\0œ\ÎAf<µ:\ÜC\Ò&R	\"i9!e š0\İG¢yÏ“\ê!\Î’¥Ö¦jT‘¡x¡f*u\å¦µ%D|H¯òƒ´2Tª¥!ÓŸï­¨Ÿº„ƒ\æCm ;‚\ÒÁı\áK€9^®’ılÀ] ¹Dµ3=R\0»\\º·\0MJº†\Òf¥\"‰*˜¥e¥IQ—°/FB^6¶	)*ª\ÎAÔšJA\Ñ\ß.mo|‚,t\Ö9\ÊAH)*g<¹\Í\İ\ÎÂ üF„(R\éS‘Z\äJTH?\ÍM€\'\"³š©’‚Ÿ´s#1 Y³\nµ\Ö&qR]\î‹\Ø)@\Ç\Í-ˆ”\Ä%¶o Ty>d\á*S›·©kÂ¹u\Ê>ño#oF§X#-\È\Z3ª\é9e\Ó-Q}¢Ä©o2gº,4¸7‡9\0°h×µ\è³,ˆ_ÿ\0a\çMI	I\Êşñµ#\Ò\Ëxğ\Ş>Ÿw›\×\É\Ë7³¼_³2—`I\à†ZŠMD_\×Â–_J\Ò$¦0¹±\Æ\áÕ‰û/>s>Œ¨>\Ã‘h‡\Ë4¤=\'(q\nøƒ)&<\é{½7—ñ^\'1* ,·\ëx¯\â1jU\Ì=öŸ\r•f‘ZP\Ü|&´LsŒŠ#ü\ëO‘ùù\Ã,4\ÃpT\Ïn€¤’İ¡<´eS‚t9‡\ç	Œb…?f=\èñ•RÃ…\Å(P.\å\Îa˜6âœR&\" •\0]\Òt\Ü\Ï$\âH!‚˜\ZeX-ü)Xü^pù\áN]1d™kTA#\Íôˆ°\ÍpS\Ğ\áJ–¥Ì‘EuRlvq\é¤7œ…,:BV¿²•e\Ìú±cG¸bH­(Z\r‘˜½˜õbzˆ‘Tœ¹\\¡Dó¤gHF¡ë¸ˆ\Ğs\âl•ŠS\0Œ¡Ô‡d•\'38f%:‡´ÀgÎ’Œ“\Zl¤†\n¥£VX©)ûÁÛ³Æ„\ä\ÎHRÒ‰õ\ÒYYMn\ìC\ïl5\ç…\Ëj\ç±E\Ó0eXI³.„v.#Ls¸øN|xòMd}\'…¥\nT\î]\'0 Ü¿wˆğ\ÅQºVBÀ¸¨\èö…|C‚ó•®yG)4¹K\åj–=a7›1)RR\'³\Î‚\\hI˜™…Eµ\n¼\ä\Ã+/«‹şL\ä²^\Ô\ãŒûC/TLÇ \0\Ñİˆ«»\Å*T\äb§)x…™rR*\n”ºû‰4©7QoË³…–°‘9)M\0R‘Srÿ\0F[\ã\ä\'@’–@\äı2†\Ö+.Möi\Ã\ìÓ¿¨9J\Ô\Ò\ĞD¥Ü\ÕW&†¤\Ñ\à±\Âf)\Í;&3†PS)6¸1\İ:O†”\à\Şqm\á\ËÊ”€€X‘­ƒ\êz6\å\è\Õd¹U4\×ò‹?\Ä\æK„\è\à\ì\ì4#%­8,qZQ-²eSZJ6š¹-j•\\I\\\ŞõA\æ{€\Ø7¨\ÖùÃ¢Y,–P¢@˜¦¨|\Õ-mo\Z\\¬§›.j\Ñ?j\Ì\æ×¹®´¤f‘˜d\æv$5s1\Z±Ulõş\Ğ50T”€\Î\ä¶\ì7`Ù¤4áŠª”`l\í~¯¡ø=\ê\ê \ÕF÷¹mºš.iNT¡³\Z\Ğ–	¿ñ?\ËA\nÃ¢I”U®‰\ì\0uª\îX‘Üµš3 qFk%µ\îzñ\é\âÑ–©H+4rj©©µtü\é˜G;®f¹tÖ® œ\áú•\0ı7ƒ]\'”€P¥\é˜)d\éAş¨„Ÿ\r\éRTh\ä—H%­•\Ú\r[æ³š=®\ãWÉ¦´¥ª\æz86§ûw‚8Ä²Tû\áª,	Ñ¶£W·\ÂÅ±BFŠ\âüñ—4ü<”i$\"bz<ÿ\0qñ)\n”¡\î(ub]½^q”Ğ†„>\Îğ\'6\ê\ì§l±ş>\Î,¾½\Æ\Ó6ˆR°T\\I\Ã\ÃD<Vx@sx½I\Çc7y±ıaô”¢ñ,	K´3ör~d\ÌÃ…^<\Ë\å\í<gÚ¼+\è^)e´{Ÿµ\\$e$„x\ßK,ˆ\é\â\Ëp©QF\Z’t¥‚jÿ\0õıu‚0\Øiz¨şuoŒh\ËI5@\ïQó,b%I!˜¤\0/ş¼\ã5\nt¾^„Vü¡–vK›Ò†½Å›¸;\Ât)I~d… \Ş\Za±e)\æ\nse¤’=ğò‰ \ç‰œÜ§0Ø•$ù)Abğ\Ó\n¥2Tœ\ÉV`3$ ?¨1[ÁcÖ’é˜¶¹M©¹³÷¬YøwÌI‹B®\Å.’õ5JN»c<¡´±)d¨4µJ¬¹¡«?\Ä^%”¥¥)j]À£#5\nƒuN÷¤K‡’úG*$’¤/%«˜e‚pÊ—™>’\íB¢Gr2°‰°Ø¢R¹—\ÌE¦…«º›h\Ú\Ñ-*XJ’C•{¬u¢™»ñl‹ÏšZV\ÎB2•(}’Å–û(\æO•œ•(ƒ¢&$\"åš¹ŸZZÔ¤ \\\ÅB¦\ËJ29\ÊRB¨\ì=\ÒR\0h†7a¤{,–Ö¥f9’À\Ğ1\Øz¹}Xg\ãe¦h !+]ÀH5Sµ…¤ŠÆ”\"\ë+!ò©D2Ajdd„½=\ĞN±[£jF7%Ö©%¹IH\n‚\×(k›úEriE*p Mµ?(´q\Ô…†Tb,ü\Í\Å\Ø¾ Œ\Çb\ä5‹Vº_h\Ó\ÛRRß®×„\Îğ\Ô· ‡z·™€°\ã:’õ\Í\êH³ƒ\Ú;I)¢¬ö­\Ş(-Sø§(b_\í)$³õ\é´œ^eƒ_;z7s¼T—‰ Ü¶›~Q.^¥ƒ5\éZµat’Û‡\â9¦3»\r‡­a\Ö\Z¡Z\n—75ùE3–]\Ûñ?„=BóÁ³tŒòh\Â\ÏKwk\r}o‰%%˜QÜˆ :{^J\Å# ©·[í¸‰¼`\äÌ—¨\ì÷Œ\Â~9Šsú.…À\\\íğ†J” 	Z3fw\È(Gğ\ÃÜµMK\ÅjT\Êø¹RI!ª\Çc{^ğV\\-\ÙJ¡jP;$ò¨T›• x‰\å*P vp\ç°S\ZŠ\\\Z\Úô1:\ær%\Èúu¬&^%7\ÊCª \ÄT8\Ğ\Îú<\ç\Å\Ï+–¢–t€@\íZoF¬µ”²›–b¤‚À\ÈÁµ¡N\Ú”óúÆ§ûT„P\æ=N¬lòñı\Ç,º“Áô\â%§2‹¥ñn\'\ãLa\îÀœKŠ\Ì\Ä{Å“°‰¸F	SG(\Ö0\å\äšÓ·Ù½›¢õe\å|ö^SK¡\Â\Ô\Æ!\áòBG‰\\p\×Xh\Ë\Ë=£\Âı£G\Òö/i1\'\Ã-)\ÆJ\Ë\ï\"•*9\ÕF\éY|1õB\ÛjüM=#-@Q\'ùKPñP€*Mm\ÎT?´B{\æ¿\Õù˜…9NÍˆ\×B=B^\rFP\å=H§\Ã\Ş\âbP,Õ£°¯rşOp|DJi\Ø~-\n‡O\r5N,No›‘ò†\Ü!Eê²ƒöœ·ö‚ u\ã\åû\ÊBO\Ş$\æ·Œ”¤K¨\rØ¿@\ÌE¢hXp¸ô‚@Ä¾\áK\Ì?§\Ş\ÓÅ¦,’„¤£.\\õJCX–e¬K\Äæ¤´\ÊQ}±J…úi&DÀ\Åa ]–’‹Z»vŒ\ì\á$\ç›0›0PJ\È# Q\Í~ i©AFbF`\ÎVH\0?»R“\ç\ŞñB‰)ZT4<÷ˆ\İ	ƒ°\Ó\ÔX\æIU(FĞ°\×cFƒ.ha\á\å\Z\Êw9RH*\ÑË¶ñ\ÔüRÕ”¥`\ä†\"õû\ÄXP³\Úlrf©Ö§,r\æzeÙŠ­\Ü\ë\0L\0È’R\Ü\Å\Ã%>`s~«ó§\ÕE\0¦ur±r_ru½Iw…X™jÌ ^¤J;S\ØÃ¼QUNF\æ}N\å…N\á\ØD%¡2Â”\Ì!)I%ò‡\æmúõ‹”+3p\Ït\Ù\ÈqAkü ‚\ÂXr*õ\Õ\îG‘ù\Çr¥…(³P\Z0­\ëñ ‚\Ä7OÎ‘`·ZúAR%‚@°§®Q\n/ª^•¥\è\İ#‘<9Vÿ\0@\ÆX”Cj_¼=\ás€¹Ó¥›¬#––MÜh/\rf`÷}\ÄgB\Ç.g¼\0 ×®\ãh\ê|À¥jªRôıIˆš A\ìkñ†(XR‘˜Öº\Î\Ãl\âœ\å $± ?¯\Æ–›]¬I«3Wõ	&\É%\Ş\ïpD…@\rhü¾Xd\Ì•	m\äPùz\Ã:\ÔM*\ì\rB´\è\àSxW5~\é	eE,û´tTF[	\'ùD¼‡&w‰)b²\ÔÃªt\ïH%^\É#4/\Â\ã¼D© ò¯‘U¾\Ç\æ\"\í;(`\İ*E+Ù¹I\Ñá„Œ2`Š\â\ìY‹Àóqe] #yüDB\ÜD\å¨\ĞGxl(5x!C(„j×´³\ZYrÔ#\âs]G¼_=¼\Ç<\Şi¬uqMB¨”¨\ÔaF\É?˜^¡}9”O\È\Ğ)£§asğ‚>c}@:[hÔ¬ZA\Ù?øˆ\Ì\ÜL\Â-µ\íWü\ã‰d½C\ì\Ç(”0\Â\0HuµY’T®‰	o_ …`óJ»ó¹ó*-\è} Ù\Ãc†•\ÙJ>D˜w!2³\'1%oP]a=Ú¦®IE–>·F&6… †QO\\\Êzt`H@\ïŒœ©Y\rB”¹~©aú\Ö\áX\ã•A)p©y	})‰\ï\é\nğ«”\Ê\\´uÊš€{ş8Ÿ1]”6\Êşu:®%+/2r¯R•$)\Íœ\Ä\r‡\â)d‚B@%A\éaÈ¦]\Ñ^Â¬(™I&Çš\İ[3ü!\Âeœ•YªR@v:Ş½m`Š\Æ-j\0¦g‡a,,‡:4Mˆ\n˜\\¡	aD\0H}Ê•u6¦ğ©ô§8¸\0\Í\Õ/øD\Ò†\ä*\Ê(¡\ÌH}óQ\Î\ÎbM\Æ&²\Ô		b\n€k˜ï¿ Šş:gˆ¡J\Ó+İ´v¶ğ\Åx°®@”¥ —R-\Ï]4…¸€H_öh¨Í•‘%)\0œ\Şó\ÜÅºk\åq2Aš\×s§œ8^(0¢\Z¥\ëOL°¥%\ë\Z\îÃ¤T 5~¤¥ƒ\Ôõô\Ò\Èw‹Á\\±Ò—ó„ø®R\Ûmh¨\æd†/J\×ğ‰\å\Ìf­ƒ1…\ØBTôr\Ñ\Òf^\r™xª—\Ò\Â\rF%T`)XC‚\ÄUa¬¡N€\ïašxDŒÄ¹‰`)µ¨b\Îr\Z ¹Rj\áÉ¿øŒ\è!ò‡rIn±ˆAu1‹…UœV¢ñImÁ£\ĞÁ“N`¢\Êqú!AQp\à‚4%‹‚\İ\\ú>ğ\ç‡O\Ï-*KV¯	8¨\å\åz\Å\ëpU€r»¨³õ\Ú\à)—o×”/–7ˆÃ”ÔšD²\ÕJD’a99h %\Ä&ğ^+\Ó\ÎI¬97CÍ½¥\Å,\Ö+ª0×‹N\n&˜\í“Q.Lj:C!\á5 O™\'ñh“\ÃQ\×õøDÅ´O\ã\ZT\Õ\n—£ƒE\á(K\ÄÖ½;tŒFa°Qõü\âQˆ:W¹ü+øF	\ÇP?]H€5–h\n¨1,™€h?›üFÓŠo¬_`Kú¥£jš¤)ô\æ\'şÕ€\ÅÈšX´\Ã]\ëøÁ2¥Z`¥\ÜP|)}\Ä\0™û‚<\ÔÀAƒ.³K\æ\Íñ\Êu\Ò0—ˆY5H][÷o\çÌ H\íhk‡À¬\×\ÂC,\àok<-Á\ãR\n†\ëK·¢^\nñr+ùJ\Ù=€4õLM\×72“p¤š¾Sğ\â^7‹I+r¢T°ÛZ|h\ÌXòj(s7ñ9\\Â \Å@+š\Ä\èQq•9J…õõcC\03rO\Ùú˜”f*d”^Á\ÏS¬ fK)KJS¯¤^\rE\èI\ÚÁöóƒ0\Øt¡\n\r•lŠ€;\éªLÄ“˜s¹71,\ĞŠWË¡`ûõ‚‚<P%B\Ú?x\ïüleAù­‰’V\Ç\éaRvû,\"¿Š“”šT\×\Ëğ‹\ÄPAHcõ„Tbg½\çb€Œ\Z*9Á‡PHS‡^J\ï08‚LMTY°˜`Öƒg\0§ôaLœQÅ»\ÃùÊ“@\î/Xz/C“R\ÛÁ(“\\ª10ÁG)\ë£@¤ñ\Z>›ò+\âˆ!<¤° ·m`\Ô\É\'*\ÓqC\Ø~>pb•\n†\\)NR,(\Ô\ß\×\á\n¢\Í\Ã$,T\Ş\ÛFÔ–£G”„\é\èÑ“\ÔA¼$¡^#Ã¹Š\'µ\Ø\Ü\ïX»ñ,D°“˜‡.ö—\nX×Šw\n\Ô\á\ÖTw0˜:’\Ôi£¨\Ô µOH\Z\ËH\ÔdAºD´½‡¤h\ËH\È\Èf\ë \ØA2e‡‘‘®P„ƒ\Ğœ\ÉNw\Ê®\Â22&™·\n–,9µ\â²ˆJ_vm\ã#\"}ATŸİ¨\ê\rlKY$I»V221ˆ\Ûi\r8¢@ğÀaô	ç‡š—¯$43´dd(b$¥(¶\Âq	a…¤dd8e+@{H\è Rƒ\Ò22,$D±°ôƒp²\Æ\Ã\Ò22&®\nÄ¤e\Ö.\Ür(\ÈÈœ¼5À\íb‚:˜9Sû«|Q!5†H@JPW1­5ŒŒ…“>_&\å#2i¤.\âš22%Š¯\ÇQ±¨a\éx½R“öG¤q\á\'\ìAMxIû#\ĞF¼ı‘\è## ÿ\Ù','\"download.jpg\"',4),(3,'ÿ\Øÿ\à\0JFIF\0\0`\0`\0\0ÿ\Û\0C\0\n\n\n		\n\Z%\Z# , #&\')*)-0-(0%()(ÿ\Û\0C\n\n\n\n(\Z\Z((((((((((((((((((((((((((((((((((((((((((((((((((ÿÀ\0>³\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rğbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0ò¬\Ó\ÓŞ£¥Zó‘.x\â€yúRÖ…\É5hCÀ\ÏZ\\qGAIœŠ\Ñ\0\ÖsQãššny¦ Šx^:Ğ¤S×¥Z\Ø)ê¸§\ÍH® BS¥F@\ÍNE5c.H^i1¡‰i\â>¼T°¦5!QŠhL¤\Ñ\ÓJ~µknN)¥9\éNÄ”\ÙqšaMY˜`Ur;\n†I=h\ĞËŠUµ›¤z\nii\ç¥4ğ9¬¤c®*P8¦(\æ+;\0„fš\Ôüpi‡ÒCV\ã\åEQJµóŠ¸¯&£\è\rY\Û\ÅA ­\Ğ7\ÅDsøT\àSjˆ±špö¥\Ç\Şj‰ ¦™c^¬k¸UM+J\ÉÀü\Íeø7L3O\ç¸\È3Rx\Ş\èn\è~QÖ³•U—VRv8½N\å\î.G<“YR·Z»s\Æk=ù§\ä§šii@©:Rd\Óö\Òm©¸zšQOŒT\Üu£h\ïGN½)½\á(\Ùõô+\ÒäŒ­“}+†ğ4J\×$‘kÑµ˜$´·h®\"x¤\0edR¤~¸qôdePóMq·;{f¡¾“È²=+J\â=ó3u®{Ä³\í]ƒjÂ…7%iMô9\Ç}\Î\Ì{šâ¤¹³¹µŠ	.m¦†;„ó!i¨‘rF\å\'¨\È##Ò S^\ÚV\ĞÔ—4TyúQU`;i\êx5E*·©®A’\äf¥C\ÅWœ½4+’³qM\rÁ¨\Ëf›»d¶H[­&şj2Ù¤œU°­\éS¡ãš¨‡Ö¦F«L¤]ŒdqÒzsP\Ä\ÜqO\'=+DÀB¹©,\Ğ}©pM0Öœ‡œÔ½F´5õ};\ìe]Ncq\×Ş²\Û5\Ó\È\â÷FE?}EsL1‘\éÖ²\ÃTr‹R\İ	»‘Öš\ã\'APJŞ•³b “•\0\ëR53\ë6\ÉL\0\ÓúR\n@„šÃŠğ*6<T\ÉE\à2:SGZ‘‰Rm§‘@\äûR±CUsš‘€\ã\éK»­R‰%ÈŸ#\rM‘3š®¯Š‘\'\È\ÃV±`&0i¤sSnqŠ‰ˆª¸ˆş•-¥¹¹¹H\×\'&£&»/\ÚCƒ,¡w\çø½)6—PFşŸ\niúp\0`\ã\ç¾)vûsnú\×yªN¿9Cò/J\ãüElnmş\Ó\Æ\0ükÄ¡Šöø§.‹D](ó©3‹¹;‰ª¬*ü¨@ª¸b+\Ù!cƒJ;¡p*\Üu¢“7‚¼S±Š21Hö¦ö©¥Dj“\Z;¯†\ÆH\îhØ«£†Fˆ9ôD\æ\Ë\â>,odŠ\Ï\Ä\Ñ!ò&è³\Øÿ\0‡Q\Ôq‘^ğ\Ş\Û\Ê[¹È®»S’H\æŠKghåŒ†WS‚¤t \Ö§\ÓåšºÖfNN.\ç#\â-2\ïE¾\ËQ ¹„\áÑ¿˜õ†¶üğö\Æ[9<kñAg\ákO\ŞCœ5\á\í\ÇR¤ô–úW¹hºE¯4-&û\Ç:l+{¡m¥fn\×\0¯py;{\ã#ƒ_4üñ7ˆõO¦ø‚\Õô\Û[\Ùi§©ù;8#†$\à+¢FË¯Oóõò7…4ış†_\ÅÏˆ\×^>Õ¢\Ù\Ùh¶@\Çcf -ze±üDÀ\à\êx\Z}7­Ö…·qA\è¤Àô4S¸·<\ÓC~”\Ö4€\×\"eoZpn*¹lP$\ÆER%“–¦’sL\rš’%\ÍP®459[9\ÅH\ÈqÖ SÖ«a¥¡½{T»¸\ÅRe\"\ÄM\ëRƒT\ĞòjÂœŠiŒ\Z–>µ[\'5\"5;\×xb5š)v\ãª\Å\ä^È¸À\'\"µüá¥=j/Ú”™e\0\í<W9r\â%\ä§\ïX\çı*¼‡9\ÍLA¨\İ}kµŒ¬z\ÒQ/#¥G¿Ş BšL\ÓZ£$ŠW!\É4\Ç`)»°3Q3T¶;«f¥İU£5.sBšd}\áŠe¶Ê§¹\ÅnË¦\æÌ²õ‡k˜.}(F\Í99\ê)š	$¤*B\ì29>”42 ù‘‡\áN\é•‘†#Šc\Èi\Í\ÅD\ÔØ‡Û±y•­wzDe-À^+Œ\Ñ-\Ì÷\ê;\nôKh(\Õ\âfõ$ ¢\æUZñZT§ST|Gjm4@¹<Š\é-\à`8É¬Ÿˆ,J\Ç|W>_O•”š\Øó\Îj¬¼±\ÅHIú\Óµ{\îF„@riê´ SÀ¨l\Å0­Ly¦\â•Ác4ªLRcŠc!#­D\Ë\Î*\Æ)wJ£ÔŠ.©ø\nY\ÄH\äÎ½w\Ã\Ş\Z²°³>#ñh\Ùf‡6ö¬>il\ã\Ğw\êx\ë\æ~SoR\Æp\é†\äWK\â\ÍwP×®mF@B\r©\Z\"ı½)5]]ôÿ\03\Õı\ã‘ø¿\â\íS\ÄzŠ\\	d·Šİ·Z\Å!Á\à‚?‹Ş¶|=®\èÿ\0\Z´(ü1\ã\'\Ë\Æ\ÈFŸªm\Ï#øO©=×¿QƒXz¦œ.±\åúå¬š~¢%…š6YN\n‘Ğƒ\ØÖ”\åfÔµL\Ò$\İúŒñ†5?	k—\ZN·naºˆğz¬‹\Ù\Ô÷S\ëıA‰Š\ì|k\ã½w\Ævš\\\Zü\Ğ\Ïı9D`Hù\ê\Î\İI8ƒ™\É<™Z\Õ3v\×B (©6QN\ásxµ&\îj-\Ü\Òn¬,\"aIŸJŒ(\Èõ D¡ªÅ¼ )Š¤\Z”7uªZ^i‚¯^j~j\Ù\ïJ¦\î¤~H©•ª¢jt\é\ÇJ‹\Ø\é\ÍXFªJØ©c~h¸\ÑpsOQ\ëP«´oªL«Ám\ÔYOñ\n\é<Uj³iÒ‘\É^kˆğ\Ä\æ=Z.q+\Ò/SÍ·‘H\Èe¯6½\ã]L\Ên\ÒG”³`ñQ\É\Í:ğ\î%Cü,EW\İ\ÏZõ¹¨\ÉGT[}j|s\ÍmøO\Ã\Óx‹R°¼u\ÆjIH\æ\Øi˜õ¯s‚S.\î$f—nG±¯+ñO†o¼?9\î2«\Ów­‹[”\â\Ñ\Î\ÉPT\ÍŞ¡*pN8éš€D‘9\ëŠ~zŠ[[w¸Vò¹a=jIl\æŠ\ÔN\èB\î+Ïµ4>V6&\Û*·¡¯B\Ò.\ìˆõ\çSˆË²¼u®³Áº†\Öòœ÷\ÅLû¢etŒmnÉ­.HùI\â³Uğ\Ş\Õ\è\Ş(\Ó\êe_Ÿ¯?’#\É\æ«\ã8cÒ•9\İY“\Ìh\é¯’\0\Ä~5Ñˆ¢\0r1Ş¸vr[r£°ªõ¶«q\0\Ú[r{\Öu©¹\ìo\n©+2Î©cµ‹D\0?Î±X\à\Ü\Zê­¥[¸\Ãg ş••¬ií¸¼cŸ\çZ\Å8\ÇS=nhø6\ßs´˜\ï]š`9ü«Â¶¦\Ş\ÉK©£,»zw¯2’•HÅœòÕš\Ö\Ì&¸ßˆ÷[¢XÁ\êk¢†b©“\é^}\ã;¯>ü.xZ\éÃµ¢C¦{\Åy©})\êµŞ™­\È\nb”µ9Nø¦\ì¥q\\„Šn9©öuâ§<R¸\È6ñM\ÅM²™¶ª\àE´û4/y»…TúW\ZŒYf—@G±øf=¶\ëŸJ¹«aÒ¡ğñ\Ô`öª^*¹1Ù±\Z\ÒvWf\rİ°³•g‰—½q>6Ó·F\Ì‘È­\ê›\ç\ÚÇ½j\ë\Ö\â\âİ3‘XÓ•\Ğ/tñ½¼Ô…jş£l\Ö÷N¸\ã5P­tFWGJw!Á\ì(©6ûQUq–óFivú\Ğ®)2h\ïF\Ş=i@\æ’‚”:óF)¦!sNSLM8P$O\Ç54lEVN\rJ§\ÔÒ¸$O»5,J¬‡œ\Ô\ê\ÜP2]\Õ\"6sUÁæ¦šGJ—Ë¿…³Ñ…z¶ü\Û\Æs\ÔW\Âû%F\ÏB+\Õô\éLº|MşÈ®bwM\Ö\è\Ï>ñ<>N­68\róVZ†,\0\'§½ox\Ş2·¨ø\àŒU½\'Dk‘hª„¾\ÈGqEv\Ğ|\ĞF°÷‘GC\Ğo5F”\ÛE¼\Â\à:\×ÒŸ\r|o£/\Û<°­ ö5ğ«Â‰e\ÓÊŸ\ë_\Ì\éúW©±DOTWd!mY´cbLq\\\Äÿ\0Á¯\é²I°QN+°›S·…	.	ô¬iuøe\È \í\rƒ\ïÚªN6³5T\å.‡\Æú\îq§_\\BP²Å’H3I\Ò//Ê‘f2™9ı?•ô_‹¼3m¨4ò\ÛÆ‡sƒƒü@gŠ\Ìğ\ï„F•$kÌˆr\ì\ÍüMô\ì:\×IY´iawgœx\'Ã†\ê?µ¡\Â	6º\Æğ0kOYğÁºK˜£]±\Ç*\0H\ë\Ï\Í]\ÂAm£À\â5¡r\åFbıUŸv\'&Yp¬\ÌI¯:U\ß1\ë\ÓÁG\ÙÙc&4\ÖMp\"}¹\ÛóHq\Æ§&\á\Ë6GÍ•—	\İ¯>õ\êhbVÚ§%œv\è\Ù6T€pz§ŠiYÿ\0f\ÆN\ì\Ê]!Z\'óNòz\ãµp¾%\Ğn..$D©€¸Só¤û+\Ö\Âü\Ì9÷ô§F¶\×û\Ø\ëšQ¯gs)e©+Gc\ç\ß\ìGyŒ$³0\åTwÇ½bT\Şò\ÆN\0XĞNIúW¼\Ü\évpù&4òIÁ\ç™9\Î>•šş±+<¬¾{±%”÷€¿Oj\İbyŒ\\\âx¦Ÿ,‰t)d\Îÿ\0‡?Zß¶1\ÜÈ¼n]\İ+vóÂ·«-ÀPb/\"Á\às\Ó\è+;\Ãú\ì7\×\0\á\Ûp^øõ5~\Ò\ê\Èó\ëag{”\Ø\"u¬\Ö\äúV\ÍÍŒ\Ò2ˆ’}Qò.Àœ¸<Ú¼DeR»r8e•\Ù\Çe»˜æš¬¾mô­\×\èš\ìşM“óƒŠór,ŒÇ»W­F£¦´%\Ü2N8¦\Ö\çš\Ø\ĞtÏ´«\\¸>«b\İ]]\Â!+!!p3øı:şU²\åÊŸ`\ÜnrQ\Æ\Ò0T˜ğM[\Óôù¯¯!¶‚7/!ÀÂ“\Çs^\Ùğ\×\á\Ö\ï\í-\\ùdE\ãûß•zşƒ\à\ÍD—Î·´ŒÍ€0\Î1]qÃ¶®É÷<G\Ã_g¾ÿ\0J½BÅœNOrzzr}*ö±ğM®®\Õm\ÉbH\ã\î`>§ò\ï­q\Z Œ8\íL(sŒVşÎ\Æ\Ş\Å\n\ßZ\Ö\"-³<û6+°\rİ±üª†¥ğhÁq3:`nb„1\'\Üôö\Å}\ç&9aQ<‘u#\'¶höpd»)\êÿ\0\nom\í\Ù\á\\€ª\ï\Éõf8ÀQú×Ÿ\Åf-µ]±Ê³¤m´È€\í-\í\ë_bxŸDşÚ´’	\çhá‘³&Ã‚Wû¾\Şæ¼—\â/…t­\"\Í%…\á”\'\0“\ëŸÒ²©EZ\è\Êt\ì´(xuG\ØA>•‡\ãy6\ÂWÚ·´O–Àc¦+‘ñ´\Ù\Ş3\\\Õ]£c‹©\Åi†ó\Îk\Ó-$Vcœñ^F¿,»Ç­z…/‘ùlzŠ˜\Ù3I.§;\â\ë#¾`\rsXq^\â[!5»q“ŠóY#1»)\ê\r[÷]Šƒº!+\Í%ù	°)´\ìP©Cq\Å¥8zP´\Æ\ã4Ú“©„\Zq†”Q\ëIü©\"šz¶*.:zóAD¨y©—šz\ÔñĞ„<S–”)zP4(85\ê¾}\ÚD\'\ĞW•v\äô¯Jğœ…´TöÏ‰W\Ìk/t\Îñ\Ü!\íLrjô\ï…z\"_hºu\Ñ¡#\é\ê+‘º\ÓÆ«\Ù\n1\Ş@Ü£%I\èk\Úü£ÿ\0bh°Z7(ˆ\èO­t\áU–¦\Øh·¬µ‰-¡\n€(…T\Ô\îÀcø¸&–[¡zÖ³5°É·2§\Ğ\×D\ê%±\İNº™—#f\ß,Wqúw¬»W\Ôq®R%Àÿ\0hõ¦¸»P\ëó4D‚O~:}2*¬	\r›ˆ™L‡\0\ç®k†S\Ôô#!D\Æ+ˆĞ±\ÈQ¸c#q\íTµÖ²²Re”¹LœSü\ÄyÌ®p\ÈsùV5\Ğ{»¯2u,¨Q\0\É\ÅrU©e¡\ÓN7z™š¥\Ë\ÜI\Éişqüªwv\Ä1”¾>_O­n[\èò\\\\¼³\ábeÂª÷õşµ6+ä¸²B\É6pG¯ù…qªRgZ«Pš\î(HT»\ç;Tõ=2jí™–PY¦Bƒœ¶;\ãüõ¥\Ñôm¥–i§gºu\Ë\çh\' ü¸úUÛ²Q!e\ÄvğÄ†\àƒü\ãU\Z\r+È—]=\"T¹.\'c>\Ñòóƒ\Ûz0c´cŸ,K·\\}?\ÏZ¨Ù–Q4\Ë\Z[BrÅ‡$óÖ­G$·–\ÓL›vºş\îI8\n7cw\é\ÅR¥v)T\Ğ\"’?$º¡\".	>½Ç¿\áQ\ÃvB0PZVş™ÿ\0PN^\Ú\Í\Ó\åX\É8bqò÷?\çÖ²’úI¦\Ç’\Î\Ø.\ÜaG|j\Z\å*.÷:	g„$‹:«KGù\íQˆDxòUXcŸ­f\Ës|Z™¤m£qÁ=¿¥G4^I\å>o\İŸ\ÃßŸzq›½ù Ö¨¿3ùğ4jB\Ã0şj \ÚlA~U8\0rO×½2	—+¸\ìS\Èy\Ç¥}A\"O¼\Å\É\î1\ÏøVŠn\èä¯€…]N?\Åúu\ÏÙ‹\")B~\è\î}+Lğ\ä1YTm\Ç?\×\Ù_j±\Ë(Û‚Ã’\Ù\ájo\n\ésëšœñCœ1°9ıpEwĞ‹n\Ì\áşÎ§E97¡kÀ^¸\Ô&f\ÚcÛ“\à?0?:÷m#\Ã\Úv—l¨–ñ–\n\'”šj\Û\éš|Vğ¨EE\n\0^\ëQ\Èb[\å^¼\×t!\nz­\Î9{\Ú-™n\Ñå€¬{\ÍE\à\Ûò®jÿ\0VgvU`£Ğ•w¬òT9eø{\Öu+¤kNƒgS&¨Wq\Ï\Ê;ú\Ñ¨[–ùT~f¸ÿ\0\íBø.\0Q\Ğn\ÉZªuµwùHoe</Ö¹½±¿²=ûGq\0šµù<6Mp\ÖWœİ–n€ÿ\0:Ü±»\rŒ’Mi\n—3•;\ÈY[\'\äö®\'\Å>]N_·]H¨\ÛrŸ’1İ±\Ü\ãò®\Æ\ÚUe¤¿9¡c¸dr?*ê¼¬\ÎZ‘º<^\êf\ÒÆ¸Ú½01^i\âù·3ó^Ÿâ–Š)\ç¹“ƒ)\Ş}½«\È<K)y˜g½yØ‡ï¨£Ì²\çf\0Z\ÚğõÑ‚p3Ò²\0©m\ßË5\r–\Õ\Ñ\éòb\â\Ô0\ç\"¼\ï\Ä6E\á`8j\í<=u\çZ\ì\'‘Y\Ş)²ó!.#š\Ö~ô9‘œ]™\ÃbŠ”©¥•Ñ \ÍqRøPVº\Ê#“J8§@!ˆ!^\r=FiHâ˜‘X­GƒVŠõ¨Š\àÔ±ˆœ©Sõ‹J:ñS$-\";®Ş G¾=*\nC\àŠ\è\ÖÅ¯´ƒwm	Š\ç@®³Áº©‚\Ş\ëO|l™N½EI\Ê*\éu0Ñi\×1˜g‘#šˆ\Ò6I>ÕªwW$µb\È\ì`›_¡ô5\ê?t\É\Ú\Ğ\Ã<»\åw™\í\Íp>ğôú¬\î¥%B›asÁlg\Å}?\à\ï¦™`©.\áH8ô{5SFR¥Ï¹/‡ü5oa\åÏ€_h\ÎkvK‘Hq’¼\àTw…\ä\é\íÚ±\Ú\ë\r*¿\Ş_\äzV\ÏM\İNšH®s<’)m±\ãñ“{r\Z—y?ş½Fehd–&$n LU	\Ë\Ü\ÏŠ¤«‘^œÉ®i½¸GS\"\âk…¸X”Û¼\Æö\È\ä}ô\r+@<ş@ş<V•\Ô$\Î‘\Ûø\Z¤¶\Â\ãXòP\äc\ĞŸÖ¼\êšlwA\İa\á\ÃMœ8aÏ¦)a¹ŒÛ¢D¡¼ÀNO ¬\Ë\Én&»†V\Äı\Ö?w\ßôıiR\'`aµa\æ7È˜şzşƒõ©Œ[e6’.\êW­oˆ~øÂ¢\Ùõ÷\ëøTv¡\ÓR7Ü2\ä 8rX“øT\Û,Q\İ_^É·\ç/¥p6Ÿ¦i÷1\Å¡\çM\'î œö\Ï\'ñ\çõ®˜Ò¶¦.¥ô\"š\è%‚¯”|\é\ä\n‹ŒoQÀ>\Ã\0š‘tñq§\Æ„®\ï4\äp\Ä}\ÕŠ\0ı*¤2\ŞjWw\Äp ŠGñ¾2s\ë\Şõ§$\ĞEj<÷\Û\n)U{¨ÿ\0Â©FÛ’\å\ØAevŒ$“ib-\È$rpp>¦‰%in’`.‹ƒ\ÉÚŠO\éÎ’.š;«„ò\âŠ0#@8,I%}ñ\ÆOµ5­ ’wq²\î;Ÿø]\Ø\í\ë\ß^\Í-ˆ\çl­w“P”\İ\Ë\æ\ÈnX\Û\å…G g¹>‚¥:]´	º\ä…Œ û\íœ\à{nøª\Ú4\ïrgšÙØ£ùQ\È\àú°\î\Äúõqyq{w\'U\å“\æ\çû ÷À\ÆO¿½a;E7cx]»\\\è\×`‹3fo-è¾¸=\Èê®±¥K\"\0_d(\ÙU‡8À\Î:ÿ\0õ\ëGIT²´Y^\×s“Ÿ™¾G\áÇ ­ˆ \nrùóJğù?jp§Îµª¸H\ào K;y\Ìÿ\0h\Æ]\İAô\è+˜Ô®–-1¯¦-‰¢I.GùæºŸIe7\r»o\Úw0\Î\à0zßŸ^+×£{\ëX¢M\áeF\ŞO|s\É\ÏoÊ²¦ùjr£¥\Íòs3;Mi\ï\ï!¶±ˆ½Ë¦ò\ë\Û$ôµ\ï¾\0ğ÷ö\Ï?72ò±9\ÃzaX?\nü\'‘\ß] 7’ P½vÿ\0€®òşRD¸µ\ìÂš‚\æ<šõ\İOql-\Õ\Æ\å;Ol\×5¬_=ºpüóZ²¿\Ê\Üñı+\Ôö\Î$‘\Æ\à8U\ÏSş3»F1²g¨jwwÍµŠ@¼•\èOÖ°õ/‹w*òF‘1œ’}\0­Ÿ\î‚\ÊP¤o\åİÜŸ\ä+\É\î\È[\Ò-‹H\ì\Öm9cş\Èô÷®RgR¨u²jóß”?¼HùcSƒŠ\ß\Ò.‡—‰6ª&\0ş5\Ã\éV÷\å\Ş9œÿ\0_Æº/vs0]Ã…]\Ù\çğ¬Ñª\Ô\ît\Ù|öó9\Ç\å]ŒŠ6…\Ïq\\––&s´u\ì+¬\Ó\ÓhÛa[\Òw2¨¬mEsµyúT:“²3\Í+\"v¡\å©a\Â.x\æ²|Ss1Ó™ $\ÈN6\ãµz4\Ï>«\Ğó\ÜF«#\Æ\Ã™\è+\ÈõŒ\×{We\âû\á^Xm\Äqø\×ÔœòkÏ¨¹ª¶y¶Õ±\0 Œ\np q@Í¿\r^˜§Uc\Æq]eôbkv+\Ï-\\\Ç2°\â»\Í2\à\\Y)\'\æ\Æ\rkA\ïg%\Ô\á®\í.dP¢º\É\íJ\Ç\è¬\İ\Ìq PEHz®\ÄhE¶€¼T›i\ê¾\Ô­)T¬¼gš‰\"a\×u©Xõö¨›©©cŠ|LQÁV\Ã\ãµ!\éH*FX8Ÿ%@Iº:7\Ó\ĞÓ¬d0]Fù «\Ô\0_qS(óÿ\0£¿÷¿úõ-]X7:/Y‡†;\ØFU€İŠ¹\à­\ëP¾¡U!\×z\ç#v _­^ğœO©\é&\×\Ë,Ç+\Öüá…±³\Óv\ÆQ\á\Üø~0\Í\Ô}+$¥+Á­‹¤¹\Ïx~\Ú?:0²€U9vG\äk¦º¹Ú‘”p6˜\æ›,ˆ¬’( }b<\Ã\í|\È2¤¾Æ»ßº¬w\Â&ˆœHªW8,jš3+6I\ÛŞš“J\0rC\0Ç±Ğ±´@L‡?1\0@Ef\å\Ø\ÙF\Äm™12.r?L\Ô6\Ö\Â\Ú$!‹2“úÖƒ2™”mÁ<öÿ\09¨i\Çdñ‡œÿ\0:\Âf±f<Ñ›ƒ>Ì\Ëò·¿ùZò\àRó=ñ\×\çÖ´¤2E]œ€‡\ç#58µM‘\æ p›\Øñı`¨\İ\Ü\ÙÕ²±Î‹e±‘¯\Ì{¥(Ê£8\ë\ëù\n¹¥Z0\Ô%xŠ³‚ølu\Ëu€«\Z”+ó¬œH\ÌFF:€?\0jm1¡\rÚ³(\ns\È\\uşU´)®b%?t\ç\ídfVõ\ä™Y‡±ı@n\Ş\ÎAdŸ\ÚRù’—29<e·p=2ı©\ÌpG>0@aÂƒÀ\Ï$Ÿ~ƒñ§€.-ğdY\0\n?»œışf´ŒRĞ‰I½FYù·\Ïó“ö=\ì\ìWŒ\ä`\ë\Ü\ç\ÜU}N%oµM;˜­b‹\Æ\â¯Qõ«f÷\ì†;{XÀ\Ü~V\Ï\İPp\âj§R¿\ÆAe\rË‘’H\Î~y?…U“BM¦EüšŒP\"\ÄSDy\Îî…»\àŸ~).\Ò%[{g®g\Ú\Ú\Ç-\ÏaZ72¢m\0(\Ä~õ\Ç\Óò\è=\ë&\æı¡•\Ş\Ù\ZªÆ„/#\Ù}OLòzTJ\ÉjTnŞˆ“X¼Ç“ijT8\ÑA\Ã‡o^ß…UöA ‡l³($„jsş=Rr{p³kC\n#·I\ä(ôQÕ?\×Òª\\\\Ab\æò\ë)\İåª…y[ \Î{zW<Ù¼†\í¬óCkÀV¹o›q;\Ø›‹}\Ğ>?\n•\î\ÅÁK+yC<¿\ë$A\É^ønÀó\Ír\×/y4\"cy\é\Ë\ŞXş8\ê\İı\0ô\ë[:M·\Ø-Áw\08iO¦3œ~TBW•‰œ,®[ŸO°±\Ó%@©ô\0³ROù\ïT´\r.#\Ç\0õ+Ÿ¥]¹YoJ¡ƒ\Æ9={{ŸÒ·ô‹u´Aö™É€ğ=«¡Ræš‘ƒ¨\ã®iØF0vñ\íK\"€\ìÒ\0\É5!*FFG×½Q¾•œù}\ã÷\ÛÒ»zE9¤ó71\á8¬‹\Éwd\"s\Ğú«r\æ\r¸v¼VXµi	y\ÊC’\êG©©\å)3½\Ò\ÍÁ\rpû˜<)öÏ½rš¥´Q#§\ï?–¼u\ŞıHö•w:œ\á#qn9g©&¸\ÍIb\n\r\ì‹/-yo¦?©¬\ç¢.\Zœ´®\ï—k’‡ƒ(]ŠG¢/a\îrMkih±*Œ†a\ÓT¼½’\êU‰b¯\0(?\n±`Yd*xÀ\Çó¯&¼µ\Ğô)GC¯\Ò\ä\Ø\îÇ¶k¦±œ\ãj“\Ír:\\@`³\çH\æº\İ5‘°xúb´\Ã\ÜÎµ’5\Ö`‰»aÒ¸x‚\êY\Zv0¦>} õ\Û\ê–—<\ìøÚ¤“\é^G-\âŞ¤Î¡Yœœ¾rO\âk|^#\êğWİ]I]\Øóz\ä\ÏvW<-gj½¯@-õU\èyª\0\Ö4\å\Ïn\çVv=\éG4\Ñ\íF}*\Ä?¥t^»\Ãùlx<W7š³c1Š`A\ã­	ò»‰£¿Ùhª\Ö\×hğ#\"Š\ëSFg£\ëN\ÆM?gZ\0\æ¨\Ø@¼ROQF9\éL\Çz†Eæ­„\ëM’>(h\n[sL(Fx«\Â*d±ñS`EÈ¤œsV\Z3\éI\åsR;ŒN9§\ãit\ê=¨\nGZ\ÒĞ´\Éukåµˆ\á\Û%I\ÅHÖ§¢|!–Y\Ù0\î7Àı\Ğzôô¯y†XŠ‰°ƒ\È½p¿\r4\È4\İ\Æa8\Ãnşùúv®\ÄÌ‹i]ÜƒŞ¶„l®vÒ…‘&£r»H\Ü§\Ş\ÍfX\Ú·gWa ºJˆù—\ÜIdl)\Çj\ßÒ¬ğ\Ä €AÈ¥g7sª\êÎ&t™]6KÁ\'{‚*Å—\Ëac$Ş†´%‹\Êrz\ädoóš¨ÁQ¨<?\Z\\¼¢\æ\æ r%z6ƒ\ëşxªl7rô?Î˜·&B\È>ôg§ùú\ÓC~\ê1Ÿõ#=zõ¬t“6^\è¶L\ì\×q„\0¹\É\áS\Í*Ê­µI-T`—s\Î\ä±1Œÿ\0‡\ëM4p¹\åv;7=rpi¦„½\Êú°\\F\îB\ì *:\çóÓ¨­½¢™0‡8\ì€8ü©.bi5»pË¹dvô\Ïşcò¬\Ñ\Û\î%r\Ûb…\ÊyÀÀö\Éü«)&¶5šÔšÀ¸¸¸‹•c\ÎI\'\ë?\nt2b	/·K+\áA\í1øôúVUü\Ïq–ñ1ƒ,HI\Î£\Ô\ãõ\Í\ÜÄ¨\"‘–2C*+ò\'\ÜúÔ©\ê_&…\Ènw\ÆnSr!ly\Ûy8şyÿ\0•­¦Áió6%”\ï‘ò:±\Ï>§\ØVN†.oˆ\ÖT0Ás\ÑGlŒŸlŠÖ’H\ÚQ¶(„eœôOAúÖ°wFsZ\Ø-\í\ã¸\İ+)Ú¹\'~?óš¡¨OmöO·j,±[„\íó=‡r>kJ\î\æ]«[9fsòR}‡¥c$V·z¡¿¹qr\Ğü¤¸\Å\Ç]£©úô\Í6\Ö\Ä\Å=ÙŸr·ww>j¢ÂŠ¿\"l? #Œ\ç8\ÇSÀ¨\Ş\Ú\Ö\İ\âšAx‡\Ë;¶\í\ÍÔ\0\äoş½h\ê\Z½µ\Ëş\í\ZUA\×€\è>¦³¯|‚‘\Í{\"˜\Ğ©\0\ç‘\éŸÀñ\\Ó¶¶: Ş—\'·“;g,™|\ÖÌ\êû=Olô§y¾|†uYÁ–RZI~˜\ê=\0\â³$\ÓŞ™QX0\ÆeŸ#“\×j\ãÓ¹\é\í[\ï¶P¦Gûª\Î3eù\Öqv*[\\İ´º™aXã…¢\ã;\Üö«–ªĞ\Ó2³öT …>µ–\Ï-\ËlŠ	$\\U–*\ÒZ½°Q?È˜\ËóıMw\ÓwGÕh\îXŒ»m­\Ô\Ó\Í\ÊD\î½\Î9?ız\Ã7¡1[\Ë$²r\Î8úv«8UND’g\î¯\Ô÷­”Œ\\\ï9˜‰%ùS?*w>\ä\Ô.Ò«*±Xú³t?…VI%¸›8;{ü\\U“i½3+¾‡ú\Õ^âµfûu\Ô\à[\Ä\Æ5\é¸\áF=}k\nş\ÑR6ó@\Úz¥°‡¥w·ÄˆQ\08\ê\Çüğ+œ\Ô\ï¾\ÛXK\ÈpG\à=+\Z›\ZS½\Î\Z\æ\Êq!Å»G ·\Íút­*\İ\ÕÇšªzÀŸZÜN}\æI-À\'©\Şhš\Ó ª\Ú\0;Ä“úWRw;£-‚RÏ¶0q£¥uš»0sıkI±f˜f«\ß&µõıR\ÏD\Ò\Û\í\àıOZ\è\ÃSûR9q5Ukâ‰ …Fe¹¦ş#Ÿ”}}k‰\Òw<l[\êq\Åc\ßL.õ	nqÃ¶pü\ë{Il\Ú9Àpqbß·•\Ş\ÈñjM\Ş\ç\âp~\ŞOµdf¶¼Oÿ\0y¬\\c5¦øh‘VÚš8¥õ­¬Ó•Šš<\âŸ\n$\Ú2h{¯\Ñ/=¨ªaİ§Š*nO!3) w©qšó]åˆ‰‘Ú¦Xø§Ä¼T¸ªHv!	\íD‰òñSH\Ã\å=©…ŠM#¥N42\àTO\Ë\ëI\åÕ‚1HHŠ¥\àğ?•z¯\Ã\nİ¬ñ\İ#¤Yc‘\0lŒ¤u¼\Şf¸cE\'\'œsŠ÷ß…z}Õ›ªÁ­\ä^Gu#·½\äkJ7g`\ÖñÅ…\0\ã Œú\ÖVª\ÆYY\Æz}kwUu0/@7/=ı+“’\è]\\\Û\ÆA\Én=¿ù\íZT]F—s_Â©$\Ó\Ü$\È\Ê\È\ÛÛ®?*\í¢A9¬­&\ÛÉºlõe\È?Òµ&lDy\äz\ÖĞ‡,la9ó\È\Î\Ô%÷g ık[½\ØRxÁ\ëÚ§¾´€)ô9¬\ä½˜¹\ä\r\Ãô®Y¶Ş‡LH¬s3•\0¸\ä\ã®1ş\nªd3E½@\ä¨?A\×úÔ­¸\0\ÉS·üşTÄQUWq9Ps\Éÿ\0\ërj,hŸr[(‹\î\Î	Ÿ©Á\Ï\éW–\Õ|µ<—\\ ğ,\Ñgj\Ø~|ıò¥$y‰ƒ¸\äı+x@\Æs2¯#H2òÎ¥>ƒ9\'óşU\Î]\Ü{+‘Ö”±¶8\ËOaÎº\ëø\Ç\Ú²ƒÁ\ëıX\Ùûcó&f\ÜK’?ˆ\çwÀ9\Å§}‡Nª[œºC4q]]Í¹Ø«$q\ÉõÀ\îN\ßÀ}j­\Ä>]\ë«\à\"aY˜Mªnù­\íFQi\ï0¡?3\Ñõ\Í\İ\İ<wò$h%¹\Éw\ç„?\áƒ^}Xû5dz¥\Î\îtH\ïö³Ë9]\ÌI “\Ï\Û\Õxõ†\Ì\ÜDBC\åFÇ’À\'ı¢OO¥b^\Ş\Ëq$òls’9*=q\ë\è*í¸ˆ§úK·rXü\Ø?\Ôş\\“N¾‚”m¨\ïµ\İ\\\ÛK5ĞŒ4\çb.Ky‡û¿\î\çñ™­R\İ´·$I´±D^=Y€ı9\ÏZ\Æ)o\Õ^\ÉE´l›R\áÔ«\ê\éørj•\Ä	¤\ÙI\ä\È\Z@Ay\ä\å¤?\ç·\ë[rö3½İ‹1\éö¶V\Ãlj¦\\i@\Ş@\ç¿?ü;\ÔrLšƒn\İ\"\ÇWjŒ+0\íõüñ\\\âİ•W–\åå¸šnw\È~\ê\ç°ŒŸ\äzÕ¹µe¶…ŒP\í_˜+ëŒŒA×½s¹_CU¥ûùc†©¬\Êx.\Ìİƒ\ç\ß\éTbº\n\Ï*ı¥\ÈC\æQş\Ó\ä9¥±–óQŒùpsR1wb£S\ÍX²\ÓDN$¼L\ÏÀ‹‚z`vüqõ¬¥«)i¡·¦\Ş<Q‡šP±§*7n\îx\Æ:\Õ]V€n•÷ü\Ü{n\é\\Ö¥|\æ†\Æ\ê(\å^»˜O©õú\n\ÈE½‹ş=\Òk\Â9yZ\"±ıI\'§\àMtR›ZN	\îv“\\-\Æ\â9#‘r.MBnĞº/’\"o\\“¡8\Í\Øj·ø\n^Iå½¡‰?ï³·z\Zû2–”\Ú#’ƒ\ÉüñZ¹µĞ…JúŒw\ëm\ä„ı\é\ä\Ôf\á\æ·I\çs\Æı¼¦x®M|B¾nFEe`.j\Ûx˜©Yd\àa\İ?hú\ÂKQ}Z]‘­%H÷\İıŒ\äŸÂš°£“û±\äšÂ†ü\Üd)Hz³dŠÑµ’XYH^Oe\ç>ô\ã5-Q%\ÉmT‚BI\Ç÷€\Ç\çUÍ¶ƒ\Ğ\äU‰5\ï·û‘N‡Q‚W\Ù5²ŸwQŸÎ¢J-Ø¤\ä‘cKU·È \É&¸ˆ\"/r\Ğ[ˆ$E\à³\Ä>™\â½&\äY\r6C3@ŠGIò\Íx÷ˆ)nw\"Xˆw§\Î\ÈÏ°\íZÔ¼)\Ù\åvq÷÷n\æ4;T÷T`WM¥©û`•\Ë\êQ¨&\ï \íş\äŠGó®®\ÆRt\Æ…=…y• \Ô\Ï:¦úœgˆ£_´|\î°\ä\Ö+(\É\Û\È\ìMi\ë\Ç7dVróZ\ĞV¦†GŠB1Smi„VÀBO¥]\Òq\ç6zbª2‘Zz]¤†&—oÀ4¥°Ö…¹œõ¢¨M1ó[´V\\£¹h\nzŒ\Ò\ÏZ’0k\ÑEX‘xg4v¥¬$\0\ÃŒ\åMa\Å>·\Ô\Ö¨‘G½±E\Äƒ¡Ç­*1B\nEjB\És±È¨“²“9ö4F¥ˆU\'€^¾³0€vUXQ\Ş@\"\Îş£\×óá¾‰,÷ç³(\ã\ÍN«õ½\çOµ\Ê\ÛlpŒ\às^ğ\Â\ØM\È\ï0º_¾q´ık\Ò.0±c\0+®”t¹\Ñdsš\İ\ÑRX6zVW‡\Z?\í\ìI\Ê:’¹ûËš·©(k‡\Ï~£ÖŸgbmü©xPjyo+Öºñq?xR~˜\Ç\éV§”}\É\ì3XV·÷¶0¬®z0\Çÿ\0_ò6³t!µ­ó7\éZ\É\Ù\\\Æ*\î\Æ]ÃŸ4ªò2{÷¦\\•X€s\Ïz«h\Å\İY\É\ÜpN{T·Œ&W\'vv\ì\ìWYvp7\0£9úV…’”¹\Æ\0=½c¼ñ[–\'vH\é\ÇE\éúVş•‡²\\“¿‚qü¨¤¹˜T|¨¿l›¤p£8¦UA\È=1YñNªX(\ãŠe\Å\ï–Y˜(\É\'°ú\×ZV8Û¹=ûDÏ— \"Œ»ş€~_¥e^‰\çùZ%l–v0Q\×¶}\ê\í¤R(2\İ2\ç\'ÿ\0uÇ½b\ëú¢G9n»•\r\ÙSl\Â\Ô\îb€\Ì\È\Ï#\'É¸œ³±\í\ïŒô®:r`¾dÃŒ¹–w\Îp£#hü˜şU½w}f­)/—‡şZg$7?tzŒŸ\Äæ¸»ıZ\è\ÜE§ivà¬‹·{/oÇ·{\àšó«´\Ñ\ê\áÓ‰O–]Nıu­\ÉİJ\ä’úÃ\ìMk\ï†\â\î\Ö%™\ä…>qS\×ş\Ù\íÕ¾œVUº\ß\Ï¡m£\"5g`¡\ÏBFy\ÇnjòºZ$ZÌ¾w-<\ÄT8ô½OASN=M&úumá¢´›\Ï}Ç \Ú7zg·óªvñC‰5û\Çqx\ßv\İ2È¾\ç9\Î?\Ç5‹%Ô·³{P‹i¦o”Ÿ\\\áşÊµ\á\Ó\îôUkHXü¨F$—\Èşô\İõ\Å²¸½Ô†\Émg$’\Ë-Ô­|\çp]ª<ús÷±õ¬ûM\Z4º3[\Ù	®\Ï\Ì$ƒÕ·0#>ü\Öôzi1-ò\É\"ŒL…Ol¯\'×“\ÍPşË»˜3B±ŒhB÷‰#qú\ä\nÎ¢mjT$º1·\ÃS¸Â´óZDO>V\æ‘ş ˜ıxúU)4I­¼\Ç\Ô$x­y&K™?xGl…À6±u¤i¤\Æ\×\ïw*Ÿ\Ş\"–=\î°¢kÙ¼¦¶G\0³\Æ0W\Ğ3‘ô\íXM[¡¤n.\ÚmĞ->\Ú[–Œñ”eŒ{õ9úš\ê¬\Ò÷`ó¤KtQ…†7G\àõªiFª\'• +Ç•õö\çwéŠµ7œ°ù %¤}K\Üe\Øÿ\0º	\Å\\SJ\æRi—.-Ù¡v\'\Ìf\à¹M\Ã?CŸ\Ì\×\â`D\ßhµI\İx3&\Åü@ù:\ÚI\Ò\áƒD\Ò\Ë\"ò^g(õ\Ç\İ5İ½¹…\Ş}Bi&l~\î	pdşU¬guc5Ws\Ì\'¿¼Df}6\Ş\ÙG \0I\Ç\çÒ©\Ú\êwN¤G2dı\â\Üş¶µ½FK0\ÑEe¶,ÿ\0¬i9ú\î\Ï\ëY–\×\×w\'\æ–\Ùz\ît\Ë\0\×=Us®\×\Ã\ï;*³+u\ã’~§š\ê¢YdÜ¬$ ó·<~$Z\àôû\Ù!¤º;F6…6#]>™¨}£¥”\àò`S§;+Ô…õGCš(\â@`\Øşµ£ggûˆ~ECd\0cØ‡\Ôòkf\Ø\ãh—-\ï]pI³Šo¡\rö‰¡hb\Şñƒ\Ï\Ê3Ÿn•Áx—Áom#Yª0—\Ëeÿ\0.ß­zš\à‚\"%I\è+–ñ@V†Ró\Ü[º¼¶\Ã\ïÔúWS‚’\Ôá¨®|\íudñ_Ÿ5Uy\àš\ê\íXG§`IŸ\â8˜_¾»K»÷rF~l{¯z·kÅ™Á\Ü=k\ÎÄ¥\Ò<ú‘³8\í`vj¢¦z²­]\Õòn\Û\"©²`\àõ§I{ˆHCÔ€r=i¥zÔ}³W´›&»¹]«•ªRPNLi\\n—¥\É}2F€\äõ\ãµz=\æ‘¢ch\Ê\'\ëWü1¢¥¾EºÕ¯l’Ù]7û¾w»)´–\ßtŒ\ÜòsE_»x’\æE`\Z+$\Çx‘R â˜•\"ô5ÜŠCÀ\â€\04z\ä\Õ\Ãó\Å7iG4£¡¤­I†¯jh\Ö<b¥Š\ÇB‹\í¶G9\ê*¦™¤\È58ğ a:z¥¦_Ik2€vO5\İivn’7³Ÿ\ì÷G\î7fö\Ís.h\ÎÁE\êz§…ô\Ãoi\Æ\0`£ñ® gS¸b¢ğ|Ç§*\\ÿ\0­^·q\nH\0ã·­z±VGE\Î6\î\ÕF 7\0G¦9«—»\r‘TÀt!”}*·ˆ^h	\Ø	s€pq^o}ñ\Ü_\Ë;E4z\'\à‘R\ä¢i9’y7€À’=:\Ö­ª,·GÊ´\Í?V\ëG†hœ0ec¯ÿ\0ª±­!šI–i\ã\'‚;vi;hiB*\î\æöš\ÌòÉ» o=}2iÚ­\Ê\Å$nÏ¯­Id¥ 28f1×ŠÁ×–GS&\ì\0H\àV\r5hµ)\Ãx—-6ó\Ç\İ\0úŒ\çõ®¦\Â\èG®sÁ#Zà§¸H£qsŒ\r\ßÎºm:u1«‚6ô?NµX}7!\İhu¶R	\'º˜*S*ùÿ\0 œ\íÿ\0\Ö\ÌVE•\äi\0†ò»‰÷\ëT†©‚$n\'¯¿\ãÖº\ÙÄ•\Ëú•ì²©XòqÁ\æ¹-t\İ,2gaJ±\'\Óß· ­qªÚ©\Úp\Äu\äT\ëwÀ!QT1\ç\Ô\Öo\Ş6‹\ä<ª\æ¶fi‚Œ?\İ\Ş<şu^&–	§¹¹•\ãˆ~\íS¦\Ş9üÿ\0*ô\r{O3•–\İD’¦|½\à\á}ı¾µ\Â\Ü\è\ŞD\Æ}KÌ¸’3¨\Åô\n¿\ç\ß5\É:u*\ÜÛ–mnWV\Úÿ\0½\Æ?w}=\Ëü©\r°‘^ù\Ğ\ÆŸ³FC¼¯\îsø=sS%­\åİª\Â\"kufû°G=}¿\Ï¿§h0\Â\ë½|\Î’xü»j©À\'R\Å+Dû;\Åqsb\å\áma	Ï©\'\n¿Îµ­\"\nY\ç.\ÓË\ì§\Ù\\}{~½j¿\Ù-ş\Ô&¸v•‡\È1‘\î¨\î~ŸX¸·¹–Q\Ü-¤M÷`G˜G¡<\ãğ­9K‹5\äQ[4vö\ä06‚}9¬‹\ËYol\ÙoneŒ7\İX\n–ú}A[6úk™\Õl\íg\n£-#\áS\'\Ôõo\åZ¶[\ÈO\0\\ü\Ì	>Ã©ı*%Æ¢G5¥\é6Èok\n:U\å|€\ã©\'?Ê‹½Nk{´±±³\Ë—ò\Ô)_sŠ\ëg–-¿\ë\"‡hÁ*\ïlúß€¬)£[ñ\ÛÁ\0VP\Ù\0wùH?­e*J\Ö4…V\İ\Ù¸\Ô\åB¶\ØGT©¬›\åK¾ÿ\0PˆL¸\Û0®\ãÿ\0Âº	l¹KÉ„qm\è\Ê=†Oò$\Özi\ÚqW6w\ÍÇŒ\ì\ÆO¶\ï˜u\ìk)A­\r\Ö\ç\'­]^\ÆHˆo\Æ\Û\ïb\Ú,xú‘øU{}C\ÌQ\×w\0±Uô^:\Ô×¬\ç\\HoVi#\n\\\î\'\Øü\ë˜kÛ…f–ÿ\0K·R9—N\İ\È\'¯Ö¹*7´:i¤Ö¦\ÅÆŸ§¸\\\\™¸ıüQª¦Ñ¸Š\çum:\Ş9O\Øew\â8\"Ø¹\ï‡a\Í_\Ä\Ü,hó\ÈFN\Æs€¨â°µ\ŞH¡^İŒ,8/œÎˆ\Êr,c¢\röl¾tğ‰3÷‰úö\Úøzü¹]\í‰†+\Ïò–.ğ°oV³¥j\"9\0F\Üÿ\0^‹Y\ì>]4g³\é·òm_—o\ëŠ\èm5\0@ó	\ÅyÆƒªCsW`\í\è\Í\Èú\Z\ém/šòóº3\ÓwZ\ë…ú}X\Ù\Ø\ï¬nU—\nÁ©š½¤w\Ö\ä\\ÀK(\ÂÌG\×ü\â°\ì/a”`w¿\ÚM(ì\Ç \×}7ufqIY\'\â\r\ÙEzÎ‰,€·\ßSòƒ\î;Vb(Xt\ãk\ÕüG}Fş!\0‡\ê–s\\5ÎšbóK_Bp#\\¨Y;×£\Ï(£\ÌuˆöÏ•5DDO-\Åt>\"µus´\ägµ‹sj\ÑaY\ÕÜ€~Sµ~pòµ¹{³µ\\ñõ®óÁú`…cv\Ãd\æ±ü9\á\É.šuã°®\ïK·8A”W&`¤\á®­İ«©\Ö\Ú\×#ƒŠó¿kL\Û\Ò6\ç¥oø®ÿ\0É·eµy•Ä­+³1\ÎMtÉ¹J\İ1\×R%˜“ŞŠ?:*Ë±b9*ez§\Ê>>„T\Èp+©3b\Ğ4\rF­N­1’ƒR¯\'­WV§†#u­+€\æoJˆŸzšEbtş!\èÂ«÷8¤¯Ö½g\áa˜ÀÄ³C¸\Ç\İ5ä Œò8ô¯wø=kµ—k!\Ú_›o÷Opj©\Æò®\ÏUµ‘c6gajmı\Ê\Çö\Í6G\èÊ¿/ ¬_\\~\à„\å\éŞº\ä\ì\â®\ìcø‡SKM6\æY¾\éRG5ówŒ5\rx\ÊH¥u)dù®“\ï†\ÆJıÊ¿™¯|ñ\nı§@œ\Ë\"®G\ë\æ_\ì\Ñ_½\Å\Âp[i\ê¡şU\Ï)¸\êµ:cÕ™\éŸu“s¥‹	¤óeFˆ6xa\×#ó¯XÙ”¨°9?\áü«ç¿~e\ç‰\ã2DI(r\Ğ\çùW\ÔV–¦Gg\ê*\â›Ü‰I-ŒÙ£ò\ÑTX\æ±54\İ\Æ	*r8\à\×a=©PÃ¹\ïXWl‘‰ÿ\0“D¢(H\áõ3\"\Í.\Ø=º\Óà¼–i˜\Ç\×\ä\×G%²ùŒ\Åz\à‘\\¿Šeğ\Ê\Ñe\\)\è3ø\Ôrò\êi\Í\Ï\îo¬Q3¾Cmû\Ìp\0\ëş\Ãk£bV%°\áY\Û°:\æ5ı^A¥:	HrB¶:w\Íqz:%\Í\ë\\\ÜÄ²\ÇDxR}ı©óó+\Ë`\ä\äv\ç¨XüR°„\âH™—¾3\Ítú/\Ä\í:\êA\Z\îNp\ãùk„“Å¶—:R\ÚÇ¢CÀVVÚ¿;ó\È\éÒ¸Ám\r\Õ\âI_g2\ïåƒş\Ù5IÁ\éM¥¼‘õ]«mu\"Ux\È\Ï\ß\Çÿ\0^¢»¸„‘\É=—§\ç\Ü×šü\")y“©w&.üŸLJö‹K ÊŒ\Ï\Ş<şT^\è9yY‹¥\Ã:};p:=Hö\ïZKnğ£³1iW¯ÿ\0[\êk©ƒO·xÁ\ÆGsR\É´ mQÀT¢C™\È=š®#·R\×\ÎOO×R[i\â\ÙIb¯+}\ç nlö­i\İni@Œ©c’±ª\çõ^,G;<Ò»\Ìyùvş•2Œó¤Gc\ÆÀ\ÉUo»\éŸS\íD°Jğ£=™]Ã \Ãa•~;KK2`´¤\ç{ucôš\Â\âõœŸ->fIüR°\Ó2–\ÎG…•\ãKp9ı\ä«\Éúÿ\0õ\éöº*F»®.’A\Ôÿ\0„c Š[‹Fós¤“®\î\Î\Õúÿ\0,\ÒL.!db /µ¿^>¦²‘¬[\îs\Úü:ªN«¤´oùHy	Á÷\ãô¬»˜5H\×PX.n/İ•\äõ­DÕ t’\äw,\ã\Ø;ö\Ü\Øı?J\Â\Õ|K\ËCƒÉf—j©÷	À®jš£²•ö0µ\Ãi<{3X=b•UXû¾7ô?q\ä\Şe’n#<“1|VÖ±kyq\'\Úg´¶…ñ\Ì`\åúŸÂ±@òl@›3–qœû(\ä~u\Çg{©+jo|?\Óü\ÍB\ê\âY¤1¬f\"	=[ıë”½ItûË›yû£r‡©\Î=³^§£\ÛÇ¥\éQ[“™\äI?Z\à>![\×\r\Â3F.v\îRG#ğ\ç`ñ^\Û5\Ñ\íò<ª8¾|D ¶\éò0cp¸—\Úy9\Ï\"¯\Ù\ËC\Ä\ç9\èN?Z\ÌH\äU.‚\Øñ€\ÉÀ?\àjH&lÜƒ\â@F>½«\Ú\äLô“h\íô[¿1‰;†\Ö\å”üÀø\ï[Wz†¥f ´O<=VHúşUç¶²­»,‚Bq\ß‚=\ÅiGz<¦\í\å7ğ±ıC”\éû¬Š´ù‘\ë¾ñ¶§‰$A0\í\Ó5\Õ\é÷\Æ)Šñ÷u÷ó}®£!”H³•¸F\ÊÎ¿|¿ı\á\ï\Éú×§h^*]V\ÉEQ¨F>x™ğ%#©C\Øôöæ»¢\Ñ\æÎ‹\ÜôMZ\é&‡(şC0\ÚU\ØO¿¡®ğÈR@Á	\è\Ç<\Õ\Û=lªadY­ş\ë\Å\'\É\"\ê\ë£+ùnm“\î®™û\'\Û\Ğ\×6\"*h\é\Ã\Å|2ÙœÎ¿f\Ò*\ì\É$ı\Õô¨´CÊ¹=\í]=“	P\×Ò¬HB08®zM%©\çc\èû\'tXµ;h0\0\Î:U[wÄ²9¥‘ú¨äš†Wò-\\V‹Ö”[\ÙC•\Î;\Å÷†Y¶\Åa\ÙÙ´\ã=ª{\æûUô„\Åu²I\àe*7)­!®Í£#š:;\çŠ+\Ñÿ\0±A¢·ö^erQo¼ŒG7>UşúúqI\n³¶\ÅS»¦;\Õ$br’9¶`¾·ºÀ\ÔQÄ£¥\Ì8\İÿ\0ô5ª\ÔÔ«’2€z\Ö\Ê\é©|?\Ñ\ïm§~\Çw—!ú«c?ªWú]\åÿ\0I·‘³\ãƒøÑ°\ìWCRùT\nx©\ÓbZ&Ü¸#*z\éD°‚¦Hrc\î;§\×üj¹jtS<O¹ŸÖš[x\Zg\Øt%W&¾øO¦µ™\Éı\ãrAR¹¸õ¯ğù¶š\í\\5“³A;s\ì{}\r}\à\èü­5œ—.8ü«jQ\Ö\åE\ZÓ–E,Œ2xç¡®/\ÄÚ§—0V$\Î{ûWYr‹…oU<\Zò­z\ì\ß]ˆ\ØH\å\É\Ë¨ô©\ÄÏ•Y\ØZ|\Î\ì\êFû\Í=\ã•@f^Ãšñ½kÁúŒÚ´[n\ÜxVA“\İA\èk\Õü75ú\Ä\"Ÿf\ÑÀ1\çó®³Kğ\Ú\Ës\í\ï\Îwpt\Ïÿ\0_EJVh©Jº–\Ç\rğ\ëÁC@ˆÈ±¨\'ˆ\çğ\â½R\Ú\ØE\ÈŠ¸ö±¬@*…Œ\0¦J\İUH\0{WJVGww2/À\nv÷=+\é2sZ\è®#3¹\ØFjœ¶\'’{\nvœ»\ÄL§?wo\ëşMr>+\ÖN@\\\0\0`7.sœşu\è—vÿ\0½E9\Îkñ÷\äPƒ\ï\árH¤\ãua\ÆVw>]\Ö-\'¼†_(\Çg!c\İ×ŸSü«2\ÃM\ÕôÉ¤)a4ğ\íùö)`G¯Ö½\ëXğe«\é¾w\ÙDs¡Ê½½½ñ\\•ß„-\î\ãu…ä·˜o´7\ÔVœ!\îL\ê9\Ô÷\àõ<\Òk»‰\ÓË\Î\à1\'†B1Zş·D’\Æû\Ù}¥™O\0}\Ø\Ç¹\Ít­ğ\ËQ˜‡7op»º1\'­wğv£Br3(ù¶»dYsB\n\Ô\ËT\ç\'z†—‚4_\ì\ÛC-\àŒ\ÎGS€>¦º;[\İ\×*®Áu\Ãr?\ÇükŸ\ÔüQf‘²É·\ËSòŒ¼w®{GÕ¥ŸU’]Ñ…-\Ïò\"\ç\ßú“š…R+HšªNW”u²—z¨,pJ¶eW\ë÷=‡Z\å4›\É$‰@‡ 8\Æÿ\0 ­I.¼±–\äŠ1]jZ:š2:l\ÄCn{c\Õ„pŒ©ş\è\ÎMSk\Òr\Î\ß(\ìj¯\Û\Zy¦U{’8¢\âH™ö[nığy{dò>‚©Iö™°R y\Ú\Ì.•d\ÄÊ­\ä\í\Õ\Ñy?SJ­q$l±\ÈÈƒ\ïO¿=iS%*A‰UGÙŠ“U.æ·\ä›\Ğ|\Ìòpƒ©-Wf¶.R\âv\Ïf\ãÿ\0­TAdb˜\Èqe\Î}\Æy¬\Ùi˜º´\ÖZ”¨¦\Ã| ğ\îF\ÑùñùX—¶\Ñ\Ã òmc\ç1@Œ\ì>Gº‘Z~ ½e¶+·¸\'8\núb³-ôÏ´ÀmOŒ˜ŠL\Ğş5Œ\ÕÎªrI\\ä®´#spA–ó\ËcÉ…#ˆ‘ø’qPA¡\é0k¶\Ú\Í3\Îd\ã$(À\ä\çOµh\ë\rIü\ÉbW‚]e÷\0Ÿ\åT<9¥\ß\Øø’\î›xÃ•r Œ\í=òHü…p\â½\ÚR’v²fµ*ò\Óo\È\é\ïre=³\\‡\Ä·\ÚZNk£”\ï‘\Óô®\â\íF\Ç9®S\Æ\Öÿ\0h\Ğ)¼¤Š\Ø\Ç\×ük\æò\ÙÚ¼™óøY8×‹<\Û\íBN0\áS‘S\Åq\ç‚\0Ä˜\àAªŒ¯#¯“ .0Nc,\ëÔ²±ÀaÁ\çŞ¾Ï•F¦×¡©‘PoPWûÑ¶\nıE_µ’+bO.T?|¯…bÛœ®	b„œƒV\à¹ò\É[€\è„\ãw]¿QŞ§”¾a5eûA»\Ó.|\ØÛ’§\å*{­;L\Ô\Ù#!\Ü\ï\r\Ùû¿Ò©]D\İ\Ú%U\'XN~µ\r¯—¸í’?¿\Ô\Ö\Í^\'<¥cº·\Õ%d©2\Í\ç\Ğö>§r\Ç]š\İò£BA9\År»±Gfù¶€¥p3*ÿ\0˜¤(*Kwq\\\ì\îŠ=\×Vó‰Ú±\ÈÇ©\Ç\ë[B3\Èù‰\æ¹O\éò\İ\í“d³\\“+p\ïZÜ°¿ˆJ\ë–ˆ#7\Şa\ëŠæº”´{b)S­«F‰M‡q\Ó5…\â[\Ï*Ñ”\Z\è\ætxr\Ù\Æ8ö®Ä²ï”¢æ¥¤ı\Ô|\ÍL;§;3·›’Ç©\Ív^»ò®€\İò½q»##Ÿ•½jÅœ’\Ú\ÜDğÉ»p)Jñ\Õ\rh{2\Ì0(¬(.¤0¡+œŠ+©Iµq\Üñ\å\ëS \â¢µ \'¥Š<u­-?X¿±m®\\!\ë|\È~ªx¬\Ä´\ì\àñT\\\ßş\Ğ\Ó/\ä!aöyY¬\Î\ÜıPñùb¦‹E³»PtıjÑ˜ÿ\0\Ë;ao\×#õ®h±£\'‹Î«ş}j´V\Ép§ƒ\åJ’L\Õ\Í2\æ\Øueskşügo\çY¶w·V\ì\É²·\Ñi¾%Õ¢n\éuÀ#ó\Ç5q\èO\á»[\Ù&¹„9?qø\Ï\Ğ×¹ø>\Õt<[‡(¸\Ê\ímÂ¼V=KH¿pÚ–•%¼ÃŸ´Z0B©\\`şU\ë^[	tğm®¦”7È¡x÷Á\"·§¹h¹\â{°m›{|À}\èø?ˆ®/\Âö–ú†£\"Ü‰e*rGAõ\ï]g‹l„\ÖÍ…ic	\Éü«€ÓŸVŠ\èE\rµó\Ç\×“·­a5zª\ç£MÚ‹³=»J³¶¶D[Dƒ\î’:û\Z\ŞWS\0aOjóÿ\0	\Ş_\Ï<P\ÜE&\Î\å\Æ?‘®«U\Õ!\Ó\í^Y\äUlaA\ïŠ\î^G÷&Ôµ‹\Ätõ¬¯\í,„#O~\ry.³\â»\Ãy-ÀbÀ’g ÿ\0\Ö\â­øs_’öE™H^õ÷J«\ê«:@7S\Ï\Í\ØU{C~02{oSYpşúf9À\ç9¦\ÆJFepCq\è)md/p8\\\çüıjh`,\Ï$Š¸|ÛµQ\Ó\çY¤‘ö8\\Ÿ\â\Çô­»f6Ië”«ö+y\Õ\ã=ûW#¬xR™\çH\'“ŸÒ»{‰–1µ#\'o¿JŒ\É$ˆJÃ¹;çŠ‰ÁMji\n’‡\Ây]\Â\Ü[»G—ŒòŒ9ü+\Öä¾Š\Ü\Ë3B6_›9\ìk\Ùo\à†u`\ÛA\é€3\\¾¡ \Û>\ç8\\k–xk­\×O\İ;¨F¦+qp\ËA¹O^Ã‚N}i<<\é&§\æÆˆş7•;@‘œ’\×G\â\Ã\ä‰	ˆˆÁ\Ù_¯rkÍµ§µ•\å2C$pŒ\çıŸÿ\0P®)St\Ù\ß	©£\ßt\rRv¤s¦\Ç\ÌŸ× ­¿´eşB„Ÿ\â\' }=k\Äü¬Ü˜’)\Õvu[k}+\Ö4‹×™Qp‘(\è?©®º”Õ\Zô\\\Í-f¸$€\Ä{œ~•qm\'Š0±\ç\'úT9rwy\åû\0øsO\Ş,´¡Ùˆ\ã¨şµĞ¬r²(\í/¤\Ün€rÒ«js¥¢®\ÈQ\åc”©<\n\âı¥ˆ)÷_\'ô\Íg4ö¬F†irR?›?J.4\áš=óM\ä†\ë±Ôœıi’¤,2c\r~w¸;€út¦›‰\æo65?uUO\ä£?­dj7¶ö\íşšÈ‘g‰6\ã\êÀ\Ô‡\Ï=©uX~f\ÊG¸±ú+\"\æ\â\Ü\Â\Í\ËimÁB}xşU,ñY\Î\ævIš!\Èc\0uğ!P\İjv\Ğ(5³p\ê2$”FÁG l\n†k†\×\îo-¯$au<ˆxw‚\á\ÜFq\Æ\ä\É\Ç×½Yğ–[\Éf’e<£‡W\èIp1V¼G\â>\â·X\Öq\ÊÆ’\"=>@I¬ÿ\0‡·M.¡ª¡J¢`CO\\óÛ­yy¥\Öv\ìUy%FW;+­¾W}\Ùı+‘ñ«\È<=p\ĞYH#ƒ\Ã\n\ên\É+ø\×\ã\ç\Ù\á\É:£I*¨\'\ëŸ\é_7–\Æõ\á\êñcn\çL\Éw´\Ëw+\Ç4\ÕYT¶iŸy\Úb\êJ»¡h7š¬\ä’\"·R’·?÷Ï©¯E\Ñô\ë]60–¨ti[\Û\êk\ê±X\êxoujû¦#\nZo\"‡†4X4M\çU\×aY¤	û›Y¹Pİ²=}«“k¿´];Hˆò¨P¾\ÜqŠ\è> _„{K5|S)sÀ\Ï\ë\\ &A•Q¹+\Ó\"–N¤z›\ËğGF¤ªC]Ió$Q¿—‡„ğñ\ä_|U9 E`\ß>¨#jé¦¹uŸ\ÍpÀ`NÀt u\âº\ÂO}Sß–µ„óµrA\ìAõ®ªØŠt#\ÍQ\ØÖ­H\Ó\\\Ó\Ğ\ç¬Ì·‘Z¬’\ÈxU$× xÃ­nEŞ®\Êò\06[©\È\ïzı+N\Î\Î\ÓNŒ¥…ºB1\ËY¾§©¨µ[\Ói¦Kq†iXm@\Éf=\0¯\á_=_0©‰—³ ¬Ÿ\Şy•s*•Ÿ²¥¥Ì¿kòKr\ÖPHV5\âFnÿ\0dzR\èóyg–W\r\Ï$\×9¤xkT¹\Ş9!WmÅ§;C\Íuš~€–\ì\Z\æ÷v:¤I\Ç\Ó\'ü+\Ñö\Øl$>e¡\é\Ó\Ä\áğ°\ärıN²¥2)J\åu‹·\r$`\äœu\ÍtOŠ2\Êr\ç<ş”\éƒe®?º€Wó:I\Ş	³\Í\Å\ãğóø§/gá«‹£¹£}§¾0+^\ß@\Õp6o\îK\n·%\Ô\Îr\î\íõ4\ß0õ\éõ®*™…I\ì-\â{#b!l±ª´ƒ c¡ÿ\0\n+\Ì?\ßRY–!vûˆúÌ6#)’y©¶b­\éÓ‹y˜a™X`¬«‘ÿ\0Ö¯²\å;J¡HSv\Z\è…\æ™ n \ã\Å;.}ğsAm›&\Êõ}³ƒüÖŸ)G<WŠ}¸ep\ØS\ÄdW]§\Ù\èw\Òyvö:¼¯Ô„‘0>§\n½%—…\ì·	\Å\ä\ÓvŠÕ±õm¸ü³JÀ^\Ú\Í.²Q6\Ï\İ\äø\×C¦xRúD\Ü-n\0n\ÅQ1õ&´¬µ\í:\Ñ\éºPÿ\0-\ZR\Ïù‘üªQ«E<›\î4Ø§oY¦‘¿­k1¢å®ƒ\r©St\ä\ëj^Cúüµ\ÙxJXmÁ„ düÓ\Ï\à\0\Å%İ³®iŸö^Lÿ\0\èU©¥\Ü[C*\Éö‡@%š»4TN»\ÄR\Ë\ä8\Ê\ÏñFv\ãñ\ÆY\ê÷\Ğ_:K^\Å\Ó|²‰0>˜È®®Iá¾³9Y£lp\"oñ\Î\Û<W\Ûå¼„ó.\æ\Ü#\ìÁ°k	]M3¶\r84w>sİ•ò•IÁ ¤\nó/x®]Z\êC1o%I À\n×©®¯\Æ\Ú\ìZ\'€\æš*n_\ÊRI\î2qŸó\Í|\İy¯«H\Í\æ|ÇŒ“\È\æ»an§#;†»I]\Ô:±\Ï\İ\Î~™b\ËR{Vz)\è~•ç–š\Ú!L’W<\ã\Ó=qZ··ğM\å~G(A#Æ´M1\Ù\áo$±•f;\×\ï.95¼·ò\ê\ÆğG¹X\åCú\ë\çŸxŠyŠ\İÈ¢`p¾k\í\r\é\È\ï^Á¡xˆKh&\Ş\ä9#“\ÏÓYyc¯†÷cx‘T–e?>õ§mrĞ®\Õ;{’Çš\ä\æÔ®\İ\ÔCndı\ì\äıO4[¬¦b\×3e1Ê®8ü:ùõ™p’!8\îy55\ë.A•ñ\İW5[M†\Ü!ò\\\îoC\åV\Ö)\ä˜…¡ß¸ş¢†RG+&Üªwwnw‰·v\Ş	\è^r1Ušzs…?ŸR\ïÎ’6û:³8ì®†£R´8¿]…F\Ğ\İ\Î\í÷\Â~Ò¼ó_Š\Í\"c¹P9//\È\ã’Oò¯J\Õ \Ö^)<¸®ı	FP\Çñ\È\Åy\æ½}¬Añ5…\Â[°ı\æX»7¶G\å\\õ¡Ì\Ì5K=OoÂµ\Èr	ùy8#ô\Í{™¨ZIn¯\Ö%\Ç=¿×ˆ\é\×1\ÜÌ¹e+\Ô\È\àõ\ãğ¯Pğğ\Ùpca±„h	Ï¦sƒ\\4}\É4v\×JQ»;`\Ûÿ\0\ãÙ—f:!\0\Ó\Ş\ÔH«¾\ã©2Ÿÿ\0UeÀ!‡(v\áÂ\Ç\ê\rK¾eQ#$n{a‰#ùñ]ÉsD¯$\nÙ·hHî„\ÙüEX‹Q\n™\Ãr¸õ‘.®\à(÷Dİ´ıÿ\0Z™-ÿ\0\Úù\íú£\åM\Ä\ØÔºº‘¦!§Œ\îş¦1UúÜ·NUGš>¿¨¬—Š\ÆT.»ƒ/ğğ£ğlU®.aµPştH\à`	\ØñônZW‡Oo\Å\Ş\ÏV÷th.¿\â§úV«¦IyGpVô\Óx‰u\Ç÷zŸÈŠ‹Yñ%¼b?<Ä¤œ‰búú…*kş\ÛkSË‰\í%8I_qAŸ\á§?2—c¢}N{Z³\Ò\r\ã¤‹\ç‚©tAcş\é¶ş\Z\Èñ\ê‘½Ä¦V)I/ùs\\ˆ!i.\Ş\é%pwË¼ƒ\èüùúÖ§Ã»ò<J\"˜\Í\Æ2s\Ï\\~•Çƒ\Ziv3\Ä\Û\Ù\É[SÔ®œ\í\à÷®s\Ä6\ÚV–\Ğ3›¾S\ß\0¹\Ín]\Ê<¼\ÖÜ“+(<f¾[\Í\Ï\Ñ\àó¸>h\îOl‘\ÃE,p Â¢ô¬«óÀ\ç\ĞU$”ƒ\Åex¿WO²û*¾..F?\İN\çú~u\ÑNŒ«\ÔP[³\Zt\åVj=\Î7[½ş\ÒÖ®®a$£6Xÿ\0\àùT¶67W\ÍvjÒ¾>]½W\ê}>´\í\Ã÷Z­Ç™#µ_¿)\è¾\Ã\Ô×¢\é¶v\ÚU¹†\Í\n†û\îÜ³ŸR¥{Ø¬l0‘T\á«_‡©\ï\Ô\Ä\ÇU¹†ô4°E{\çK‹\ÈR3í¦·.®\Ş[™B\'vsUP„ğ1\\&µww«j3H‚&Ú¹\áPtü\ÍxQ§<mG*O\ëcÈ©Vu\åy;\r\çŠU™–\ÉAÁ’N\åQ[ø°@\à\Ò\ÉÙºô¬x|?sp£c\"G\ê\íı\0©‡ƒ¯_\î\\\Ûş;«¯\Ùab¹[1Û©r\çÅ·÷\'\áŸ\çTÿ\0\á&¼l\âb¿@\r\à\Ë\äR\Ó]\ÚFƒ«1 ~¢ªI¥\év¤‹v)´e\Ï\ç+Ztp\ÏH+ú+œßº›.\ÂAwøù“\ïRn]ùxÿ\0ÀS‚\Î\Â\áÀ†\â\à&~ü¡G\è?Æµ-<1\É\Ò÷ŠdVÿ\0TŠû\'j\Ê\ëµu\Äl~ ¼A;şuj\ßÄ·+÷\Ú7\í(«K\àY•w6¥=\ã5N\ã\ÃÖ–¿\ëµ\Äv/ş½c,->¨æ©„©i#Q<L6Œ\ÛÇŸ­„ °O”L\çü¿ş½\Ëõ:\Ê\Ìı‹\ì9‡_J’“R\Ë-º\×\Ô\Ø\ï)­š#sz\æ;e8\0}\é¢ÿ\0Gošh\ân`>”ıBS=\Æ\Ô\âşH\Ôt\0V–\Ü}Î§,±ı\ÙEµ§h£\ï\îÇ©5¼9§ZÚ™]Tm÷\'·­-­mÀİ›‰=	ş&ª1\r\Ê\ÖV\ì˜úšßµ\Ò.B†hJW!6geÚ­\å\Çı\Ø\Æ\ÑúV£F½¦I?úÕ¢E$$z{½,õU\Øt\ä›«oû\èÿ\0…I\È_ºŞš•n\Øp#O\Ç?\ãUa—´ø­cR¯x‘\ÈU\'d\ëºE½ËŸ \Èdo\âšZÔµº‘X3MK½O\åV®g3Ç¶+‰eb2pe:j[šÓ¨\ã±WPğ…§ˆ|4«¹\Z2d†d¥œpI\È\ç¦k\ä=n\Ş{\rB\â\Ò\àm–(G©¾\Èğ\ãùQ\Ü@\Şc\î<»¾\ï×µx\Ç/<—\çW\Ó-‰n~Ò«Õ¿\Û\Çóü\êº\Ôñ\Ãt\ê7n÷¨MüÀ-ƒ\Û=h\ØJ²\à\îS\ÓÚ¬i¶o¨^Cok\×\'–=½\Í\0hh6jWğ¼ƒj)\ïo§ó¯£|;m•¤Â³&P>Wù€õ\Åy\ÏÃ‹htô’m=\ÙùC°Áş\Èô¯O°3IK˜6g‘“»+\íÿ\0\ê¦Æ¹\Ôo\Ö\Ò?*2@i[\00ö\ÛÖ®Ed°\\«	w\È9mÀ\Ï\åUş\Ô\Ñ\Éå‘\Âz*œôõü*\Üšz1‚Xrw©#ñÿ\0\ë\ĞÍ´ G8\ì6\âr«û²€õÀ8ª2İ’<\ÈU\"ˆt`r?CQE{m*e\Øn\Ïf\Æic7.\áTt•ÿ\0\ë\Öe\é —ˆ¤rDŠòS\î\ïbpU\Ëöü8æ¹^\í^\'_:Tpq\Â\íe?@G\éú\Ò\Z¯]j±E›[\Ë@¬r\n´h?¦k‰¹ñO‰<\ÖR\ÖHŸ+ò÷0ú£)ıj]f9nİ¢sk$RpH•¢/\ï\Îüÿ\0\n\ã¯<:m.,²!8\0MÀo÷\\€?Zçœ¬uÒ‚·C¶\Ó5x®¤Wğ\Ğ\Ş\Äf{eto\Ï\æ\Ï\ç]–c§M¸\é·C\ê“*¸únRæ¢¼ûÃ–O¦ZPƒ«‰I#\ëÖºûk»ƒ¹c¼\à\ÆNr>¸¬`ù·Fµ=\İ:¨­`.\åT|§ğ\Ç5$‘¡vBõ.q·ü:æ¯oe&\ÊBÀrË‚¿˜5Gş\Òr‘$‘°\ÆÙ‰`}\ÎZ\ÕYÍ¶t7³DS#s\È\Ä|gØšÁ¿Ô£Œ:/²\ç;|ŞŒ};U[\Û\Øº¢\Ådq•FR¾„`ş5\Ïêº„0X³\\[~\å¾c$\ïŒûùö\ÍùŒ\Õ|Yq™ºD‡»<ûr³ø™^E7#*O\r„\ãù`\ÕMF{\rNSsgª\Ëo\"œ:#\é\Ê\äşuJûK{«¯2\Æ\â\Îm\êF“(!»€¯ó¥\ì\Íí±£¬_N¶ \Å}-\Ì\år€\ã±<0#ßŸ­a½ô‚6“\Ìe\ßò¾\ÕÀq\î3ƒõ\ÅAsm¨XH\rÅ´ğ0Z23\éƒŞ®;P·²{\É\í\nZ8\Éó”&~€ò\nm(\î5+\ìSŠ\é’FS\'\È\Ã#‚=\ê\æ›#iÚ­\ìN\Ìb8S\Üwúf²\Ã)+\éJdQ]\Çoò¦\àšk£i«Hö»‹¸\æ¶I``\ÑH+{\ZÅ‰\ËJÇ¶sY>»i¼1µ÷\ÊqÔƒ\Èşf«_ø–+‡·H\ZWŒcœ\r\Ø\çò5ópÁMNT\à¯fxÓ¡&Ú‰\Ğ\Ü\Ş\Åco%\Í\É\ÄH?{\\EŠ\Ë\âMx\É{™\Ü\åO{(¬ıKW¸\Ô&Ygl\"p#t\n\Ôğ|s‰§C,¡öÁI\ç½ztğ\ßT£)ı§øÓ¥\ì \Û\ÜôyV\Ò(\04\0*¯\0T¢a»j®Ÿ¨J8·a\î\Ä\nÙ°ğıÃ’\×/\Z\Ñ\ëõ¯©*q\ÖR8ß¼Ê­¹ i˜·SøÀ\'\ĞW©øŸM][Ê†)E¬?t!/İ½şµ\ŞjZVœŠ¥,\×gòQŠGL\ÕL=šeb\Ò,Vm`\røóŞºpµ¨GVœ¿mJ	ó¼~-Œ©[K6y„H\Ç ¦sÄ—d¤V“[©\èa·\'õ9®¥\\&vFPG’NJ\×\ëTa¬i/›¸,E(ü4\Ñ\Ã\ßhz\åû	\'I§lÿ\0\ËV\çò\'Š\ß\Ã:¬-Íq\×\0?Z\ïƒ1<nü©\ÊÌ§[ğª\Í\ê¥eZ\ÌeuröZEô(7\ØNt!3\Ç\á]—\ÆË¾\ÚX€\ë”\"¯+“÷sø­J“Lƒ†aô¡\æ\Ò{Átó©\ÇxÜ¿+<ö\ìb;8\Ç5\Ã\êğ\Ü\Å;	s\ÏZ\ê\Òú\æ3ƒ+\0}\Í%Ä‹r¸¹&\íÿ\0õ\ê?´S\Ş&ñğ¬\î\â\Ó8p³`~\èŸ}´WlL\'H8¸¢¯\ëô¼\Îoo\ÔøCu©\"¯§:68K\ÈIéº£1•”T‘J:qV\ån\Ù\Çñ`0÷­\Ğ<…¶ŒVµ¬@\à\Õu\Æ+n\É2RY·‹Š½~\Ô\ÈW¯Ú»FILdúŒ\Õ\"Ä\ÙÛ¸§Š²–€r\Û\Ïş:?3L3\Ê\ÇB>œSy\Îw\äú\Ó\Ò\Ã\ãz¦??\Ôÿ\0AS”A\å(yÀ\Ø8—ø\ÖzD\î\ß/\'\ëV\Æ\è!o)K¹\Ü{ûjVOU\Õmô\Ïõ\ÒÆ‘©\ãs\0§€v‰¨kvº•„\ÒOÀ\Îñ€F2O=±ü\ÅI«iQK‰nŠ´„p®\ãœôô®O^¹·cµ\'ÏŸõi\"€Xú÷\Åg+£HÙœ§‰4M2\ãÌ’8Á s,co&²ü#\r­­¼³\ì`\ê\ë^X–\à× >[\ØL\"É…U\É9\ìxük‘[†ƒ™¹¸\ïŸ\éÖ¡+0¦¦­\ÔÚ²\Ö-m/ ‚\'\n\ë\Ğe”ÿ\03šÔƒYid•<í¬¤§©S\ÕN=Àı\ryÏŠ™ll\äE<\ÎB\çĞŒ\ãùşµ‹¯v‘\Ã}‡ÏŒ®v\0­ú*´\Ì\ëRöNÇ°C\âXZEIdÜ‡0@a\×_O§z…¼Y\ß¤”¬<u8,;\à÷Átò+Êµy¼m\æ³a\äNÁüœœdğG\âj¢\Ë6\Ù`y¤\Ú\Ùx%\'•aş8Á÷\Å1±\ìw,KBv^¬¡¹B\çnñØ«g¨¬³\ã+$d˜®Wş»\Øûû“ƒ\ë^}¡ù²\é\×MûØ‰B7ğ’@8ô¯\Ô~is¦l\ÂZ\Ù\É6òt1ÿ\0°~Ÿ•f\ëEne)¨£­FJ\Ä\Úk~P\ÜÀZ7ú8ıõ5?ü$ú…”1ŸEÕƒGs	?0¯ø\×)¤Z\ŞÂ­n6M|\Ío/\Í~\ã\ê9«7–¦\Î2\ÖRMe£iŠC½	\î9¡\"ˆURWEÁó+ \Öo­\îü\Ùô\Ë\á\åı\çMÄ\Äc#ò#Ş©\Øø’h—k#_x`ÿ\0\×ó¬›\ËP¤£µ»A¸ˆ˜„|w¨ü2>••,q¶WT«ÿ\0-v\îüGzN)\êt)IhwöZşQ¦®\ã‚S\0ƒ\ë€¥h\Í\â…E[Ü‘\ÆA“€}³“ŸÆ¼Ÿw\ï\ÍmÛ¹Ê9úT¶³ˆˆ8W\Èù«9Bû¥}\ÏH¹’õ\ru2³u1Ÿ§­M\Ü\ã\ÈYm\Ò\ãD\Ù~CúW¹\Ï\Ê&\ÚA\ã9üø5RóXFÈŒ|¾ñ:+¨?\ì\ç‘J—QJK¡\Ù_øºf-iqi®€®\"«÷H<ı?J\ã\îõ;¿5;‰Šg#$«!÷\ÅdB’\\\Ì\İ\äcÂ¨$\æ»]\ÂrÊªú\Ë\íôÏFn\ÃÛŸÂŠµi\ĞW›1•e©\Ë[ı¦\ê\ïlq4’\È0DI’]>“\à©\æA&¯2\Ú(\é\Z|ò\è+¯³¶·\Ó\â0\ÙCü[\'\êzšVc´œ€<ö¯\"¶g9\éI[Ï©\Ç<T‘2\î\ïm<+¥9\Óbu‘şUi\\³3zÀ}yôÚ„\×wr\\\ÜJ^y	,\í\ÜûûVˆµ#ª\êÁ\"\ÜğF<´\n3»Õ±şzRZxWTºû¶\æ\ìÒ£ò\ë^†1¡z\Ï\Ş{\Ü\è¦ıœo\'©‹¼+²²…\ÏP:RPN[Š\í\ì¼\n\ÚE€?v\Ç\êÂº\r\éV„\ìÑœ¿9ıÂ³«šP‡Ã©œ±p™\Êø\Z+\Ì^ıš)Z&Œ0\à€\\9?SW´ÿ\0]\Í3Íª\Ü*ù„³$3Ú®\â=¨¡W€:Ò¤ b¼z¹G)Jšµ\ÎY\â\æß»¡“§xgJ±KTf\Å/\ÌZÛEvD c°F\Î\\şU\åõ¶ŸKs$p¦:±\äı=kÎœ\êW~órg3”¦õ\ÔÒ†F#.qX\Ş)ñÅ®Ù­\ØKtzªŸ»õ5\Äx—\Çq–\Úb´HF\Í\Ã~µp\í>\ïõ¤¹ë¸k\×Ádœ\ïŸ·oó;(\á\Ú\ÖGv|k7™-¼\ÎOSŸş½;şk\\óg1\Çû`Wqó)\äCÚ”l#‚s\éšö?³0ÿ\0\Ëø›}^@‹\ÇŒ0\Ö3\ß\Ñşõñ½˜b­ct1\Ô	ÿ\0Jó\åU ²‘\ê)\Î7®I\å}:Š?²ğ\ß\Ëø°ú½>Ç¤\Å\ã=-0^¯\à§ú\Õ\è|U£ºó%\ÂgûĞŸ\èkÊ¢a€§­K\ØYĞš‰eg\Ñı\äıZ™\ëv\Ş!Ñ¤8Kõşün?¥i\Û\İ\Ø\Ü\ä\ß[9=?xşµ\ãö\É#¶Ilg ñõ­‹!¹p\à\Æ0+	dTeğÉ X8>§ª¬2\Êä¯ªœŠa\Ş>ğˆ®OI¹kw—\Ú9`­Š\ê´=L\İe\\“\èŸ\ç^e|¢Tş\\\êY,¦¯	ı\â˜\Ôÿ\0¢µ¼¦<¬q\ã\éEqıF·‘—ö&#\È\ä\ïRÀ9¨‡5b\ZûDd=\Æ*[W(İŠ¢™ È¥N´@4M¤2SÖ¶´şTVŒ¥O±\ê\rn\Ø8ü*‘h×i·³›EYñ˜Á\ÃûZtm‘‘SYcdq•a‚*º‰#q\"+§*FAñI¢\"$Oi.\0_õgÚ¤–6‰\È5¨¥§TT•ƒ{mÀ¦bGn™ßŠpb:R\ìi\Ì\ÛG¹­	3õˆ…™LŒ:\"¿jó\ÛÙ®ç¼š\Ş\Ê5··Sû\Ù\"R¸\Ïb\İO\ĞW¦]x\áfv/·°\àW\âk‹¹ch,\í”G\Ä…_s\Ğ~y¤Æ™­\á™- ¸vI‚b3+2\ÇøTu&®ø«Â¶ú¢6¡§I\ä\Îyp>dcş>õ\æ\Ú\"<wy}r\ÒGÊ„.ÔŒ\Ò$\Æ]°Ş½#\Ã\Ş\'³‘\ÖÌº’\rù„*£¡#¿¯¿\Z3HNP|\Èğ\Ï\ézšİ¯\Ú“‘yúU]?H¸ºiŠ¨# ’¿œOÒ½\Ç\Åz<7k4¶\å]qócœW!ih¶²¦P|\ì®=.µ³±R“›\æl\æ—\ÃWuy`\"0I\É\áGÿ\0Zº[[\Ílò\ìb\È@\0óøş<WB¯	»*„c9\Î:œõªüW+!ˆ\í\'\æEşkş\ÛD]œUÏ†¿\ï\íq•\á\Ğ\×\éV °\ÖFN8\è¼+§¾P\á¤L	‡\Z\Â[‚’+µ\Ôôf¸kÃ›X\îeV—:\Ós*-0[ß¡}\áI\ÚÁNyö«—\ÑÀñM\å¥F·ì¹\é\Å_\Ô?}gö˜#2\Ê;Z\æµkµH\Ú5}\Êy ¶Jø\Ïj\Ë\r+&ƒªqgª\Ú[Ã¾t\Ò\Û0/B©ô\ïƒùVSµº€ÿ\0e±Ÿñ­i%±w\Ò*\ÉÑÜ?˜>Õ3ö‘A\ÏBËƒùŒWlv;¤Vº¸I2\"_—9ù‡5[x\Æ\"¤™>f\ìÃ õ¨¢\å”G\Z–v8\n:“[$v\Ø1\ãŒ\ë[Z7‡n/Ê¼ÀÁn‰‡\'\è?­mh†À,ú€Y.:ªU?\Ä\Öğ¸\á›û¼W\'\à­Os–uºD~—am¥\Â\Ö0¤ı\ç\ê\Íõ5yz\àV-Ş¯$§\Ê\î8 3\îk&}B[“‚\ä¯e^yÂ¥W\Í3™Å·vuS\êğ\çt€·÷W“U§¹[ø\Ì&3\å7\Ş\çö8¬;HŒ\é]…““€=*\'Q\Õ=Iq\åÔŸO‚+dq\Ä1ü\n\\Y>o—ô4‰\n\"r¡@\É-À™w\âm&\Ìn–V\Ã\İúô®e\Ö~\êm’£)³edv\ãoZ‘S\'–j\à¯<zp\Â\Æ\ÌF™¿ ÿ\0\Z\Æ]wX\Öo\"µûS©™\Â‹\äŸj\ê†UZZ\Ê\ÑF±\ÃM\îz¬÷¶–*Z\æ\â(¿\ßp*„^)°wÍŒ\ŞZ\ï‘ñ¶4_RÆ¼\î\âÑµŸ]Gn\ám¡\á§sò¤j1’{ô\éŞ \Öuh¦µM;L\É\Ó\â9\ç\ï\Ì\ß\ßsü‡jè§”SvM¶ÿ\0o,W\Ä\Íıo\ÇWR\ÊñéŠ±\Å\ĞH\Ã,\Ş\ãÒ¸û\ËÛ‹©Œ·R\É3ú¹\ÍUAô÷ –=:öhaiPV§Fœcğ¢M\å7\\T$zRŒ™¤\í[–93ÛµH\Í\É û\Ôh:\àÂ­$n\ÈT£¶:6Ş”]†1*zŒ™§yòœ\ïŠ0P\âed\ÏBE#®s‚7Ç½0-G‡]\å„§u\ÆC°^¸aœUh$e\îAúU¨\æ.¸8-ôÁ \ä/Ë¹G¡ \ÖÍ³‚È²1Q€0õ®h’q$J\ÛÓ›tcn\Öpw8\"®,h\ê´õF@\å÷q‘Ú¶\í\ÂùÀ\È\éJ\å,\Øo>nõsŒb·m$’7œH¯Q\\X˜\Üöprv\Ô\í-\îÂ¤¶:QXixEyÜ‡£¡O¡©\á\Î@MYˆ|¹¯Q3\â\É¸¤V\ÍD\ä\ç±ô«¸\\¹n\Ønµ·e/\ÎDüŸZÖ±r1WRgQo \ÛÉ«ŠÕ‹m)\ÅhE)\ÅYh³8f]\Ñ8\äR\éú¤w·º;dsQ&¨j¶‚X\Ìñ6\ÉTg>µ…jnş\Òşbw7d—\Ü{Th­“Ö±|?¬Iq›k€XZ\Ï<‹/–[*ON\Õtk*±ºeq.ApxŞ¿:Ç¼\Ù)`Yp9\ár«\ïõzy\ãe+\"¿\ÃÒ²n•NV<\àsƒ\ÅhU\Ï=ñ•ş£¨\É#Æ‹÷\îe8=99\í\Ça\Ğ{V~™©\Ûh\Ğµ‘¾\Ã;\îa®œvQı\Ñ\ÓÓ\ä\×E\ãEkKv–wi\ÔŠp\ë·\Ù}qÉ®H¼\ï:şğù°\Û\"7“Œfû‹\È;ÿ\0õóY\ÃB\ÖÚ—‡¼[=µ™ûX\\^şñ-Áÿ\0U÷˜ö\Ï\äÔšÖ·`/dc\0ô6xú\ã5\åöú­\Ë^\Ü\Ì$&V&Y$#\ær:e\Î8•½$–\Ò\Åb\\±‹\È\çø\ä`	?@0ÿ\0^‰+”G²\Õ\å†\î\Ô8 BW¶\êkF\×[Š\æ\å­\ÙöJ„\É\Ç œW—h·³‹­9¼\Ã\Ä\Î\ç\Ü6*\Ì:›I§\Ë4«ºhc\Ï<±qú\ÖN¡WLõ\'×„{Õ‰\Édn \äƒød\ZÃ½\Õc•\äH\ä1n#‘§ĞC\\n¿ª\Ü=™~§k\Í\îÁˆ\'ñ¬9õ«™\Ø\Ï=*}œ˜s#\Óü\'­\Ëo¨½¦¤BE;l¿À\Ö ¹ÒµiEÁC¤\Ë	\ì=@ş£Ş¹hn&\Ô,Ÿ22\Í\0Àlğ\Ê8?‘ı+c[\Õ\å\×üm-\ÖMÖŸr°4‡şZ+)Áúü¼\Ô{Y)\Ú\Óæ‰>·?–cI	ŒŒ4l7/¶3Y~yÁ\0•¨\áU\éqŞºTRØ·&\Ç\'\ĞWa\á»X´ø>\Õ8\å¾\îG\İ\Ç\ÂvÊ„Œ€Àşµ\Ô\ÜJ\ØÁ<YV“J\ÈÂ­Ú²/]Ş’û¹ú\Õ®¥ºl!zb“\ÊıÈ‘\ÎGaU\ç™`M\Ìe®HÁ7u¹’‰\â	\Ë\ÇjĞ·‰U7±X\Ğ~µ\ÍI«Í‚ UŒzõ5Biå³,\çı£š\Ó\êÓ\îÅªM\îv\ß\Ûú}˜\"6k‰8A\Ç\æjU\Öõ›?µ‹N³\Î7\ì.\äz\Õ\É\é\É¥¯ö„\È%;ŠG\é»OøU¡=÷ˆ\åŠ\ÜÊ‘\Å*œ…¹÷5Ÿ\Õ)§{_»\ä\\iE\ZÚ¶­§jq}ŸûNúp\à\Ñy†F\Ø\î—AY‰\á¹nS~‘wğ\ì_‘ÿ\0#ş5É¦\és\ç‚kÛ€y\Ş\\\äşb¢›\Ä7¡|»_*\Î.\Ël?^§ó­¡%j;yÿ\0W6Ó±¹£xJk»B·–Vóg\å|\ãpÿ\0túU\ÛEf\í%¬s *Y\\¹<•‹ÿ\0	\äÖ‹o¹M›‰\Z7?ˆ4\ß\Ì\r\Ó6e´º@_l\æF\àv<?Z\ÊT±M¹[Ë¡!u\î3Zm+ıY¦\èmòY„g\ÏûG½W¶Ğ´øùš\çoC.Áú\×a¡\Ïm\â6K´·ò.#;%\î±õ\Ù,\ÕI\Æ+—\ÚÖ¦ù[8}½Jn\Ì\änš\ÒÁw/…\à‘ø\Úy$üğGòª\É\â›dÀ‹ÃºBx‹<\×qede¸Ø¬ ‘YÚ¯ƒb\Ô\á{sµ\Ôd\ä¯\Ü¨şµ\ÙB|úM~,ê¥Œ“Ñ£š_\ZH„ùZ>Ÿ\èˆ¥8x\ßR0\Ûi¨O÷m§\ÊÎ\\Œ‡”qLB{v®¯a\Ğ\éö³\îu‹\ã}c;\á[HI\á\Ê[&Iõ\éS§<D‹¹/b\0ğq\á\\”NX‘\Ø\ĞË·8<)û\ZÊƒ\ÚÏ¹¯¯xŠû_d}V_9Ó€Á@ı–6…\Êd\Ø\Ôm\Ï4¨|ùÖ‘Ihˆm½Y*)9aÓ½>\0Áóómö¦\0S;O^Æ¦€@a\×Ò˜‹Ñ€\à\ï\Ìğ«6\æ-\ãxhªò*•»ùS&Yˆ=ûÖ„.“ 2®\á\Ó=\rT@Ùµª\0HH\Ê\æµ\ày#y{]y\ä\×9\n\áIf^À•Ò Íº0\ä{õ¬k\Äô°r-¥\ß\Ê2y÷¢«y©\Ş>~´W!\êsÿ\Ù','\"Simplest-Responsive-jQuery-Image-Lightb',4),(4,'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0„\0	\Z\Z\Z\Z( %!1!%)+...383-7(-.+\n\n\n\r-%%----------------------------+-------------+-------ÿÀ\0\0²\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0A\0\0\0\0!1AQ\"aq‘2¡±#BRbÁ\Ñğ3r‚’¢\áñ²\ÂCSc\Òÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0*\0\0\0\0\0\0\0\0!1A\"Qa¡#2q‘\áğÿ\Ú\0\0\0?\0©`g¥hÊ½)\Z\Ãr©·\Ê p&§İ²ÀÓ¬K2J\Ç0IRu\"¿(°\éòM\æ U<·†sP3e¡B´\Ğ@\ïùB\ÜT¥) ¤;U®:m¬„bšR\0N•\Ğ\èı¢i ı‘!JI,ü¯¹úŠ\è\ã^†&—™pj•\r”*	\Ûü\Ä8’ewTµr»[¡\Ù@±o1«@UqE¬‘jı¤õĞˆaBÒ—tê•±m‹ùG)ÄºV5úÀ\Ü¾ûö±(P”\ìª­f#F\"\Íõ4/©\Z¬ı\ÇÀ8T\ÓBT†\Ì	a–\Ä9³u¥\rby©(*4™ˆ±\ÈK…ò,‚\ãE</Á+\Ã)XªO*±B¨G\Ìw\ÖN!IRR]A$±gVVb+zi\Ğ\ïM\'\Ä\æ¯y©­.@c\Ô\nZa%2¦$°b:© „¨w	\0Ó²„/—))Zf$:]”\ÖHgK}Ü®\ÊwObğ\éI\n–¥!Â¥²…\Ü(Wj$€v%­\n‘¹I•+\ë!dÚ‰‚TGòˆ_ˆš~*¯Ñ¤—ûI\\¥<¹‡‘‡X¼!J”°9I\Î?˜;yD8\ë	}£]V¯´•\ÜPz~\àš&-$8LÄ\'oF0÷Ù´„%@¸PO]i\ÅMj5ıò\ßp	?ş‡¬[\ä/\"(ES31\ê°ù¢´ce`*V£µò·ö_´3Á\âr\á\Ò¾`\ç«øŠD?Ê’¢G\Ğ\É)Ş¢PSÿ\0R… ŒF”&R(”+ud	I\'±qÖ‘%“0LH¦Pµ…%¿\ê<\à$ŒÄT¬\ê;K>\Ôœbñµ‘)(NiŒÿ\0öòƒS\É,\ï+%:¨©)O’R” Œ$¸\Z½}Ao!H†$(«X?\Ã.3»ºydü¼Œ¹¿½R¨H\ãú\í›ô`\îÔ†ø…fKmş\â­&vP\Z¬Ş†\Ñd\ÂLt—\×\å\n•¦2d‘•\ã‰À\æJ{“òƒ€9Ò² \r\â	FNC\Â\å\ÊcP)„%\âØ¢&&¢q¹Lñxy\nV7‹/	qx\Õ.\æ\'\âi\æ0µQÔ†‰ŒF@\0^°ì…–%$\İ\Çv6P\èZI9’\íe–)Ø±¸Ô G2s\Ò\ÔÌ¡®;W¤k¢Ÿp¸û\'Q¨Œ*\Í&e$µ*šı÷\ãJUT*\â\ÙTn@\ÙW\ïI\Ä=ÀgÔ”•ªz¥\r\Z9\ÄH—3™‹±¡\ĞÒ½70-	Ì¡\âJ4Q{u\é\ç\ÊAIij4£›²÷KylõI.\Ç\"ü\ĞO’Õ‘{0\"ğf(ºfKğÉ»8A\×÷f©{ºi\ÓR\0ò¥{\Ô\Ê\ÕP!™N,t#j|\â	2\ŞbSRÀ£s¤\Ég}\ÓW¸&\Ğ\îgKæ–²v²ˆ\ìT›nÔ\åJA d!òó$y\İ4\ÓG\ŞÀ_\Ù\049’\Ü\ÉúÀ*\× ¸£\Z\ì\ìzš’/`B¬•¦n\Ì†­p`ùrüNUŸzG)gLÀ\ÆÆ„„=KŠ‚\"T…§9\åRlA\æ	qT¨\\V\Ê`\â‡s ZT’\áeÂœ\å R¨u®`\ì,\ï	bfŒ½™FŠ\íM®\Z\à\ÅbJò¨Š”†*–}\à\0V‹½\Z¢\ì:³aq²–±)Kt©<Šn`K®/Pª\Ğ¼JNT¨¦ \Z‡¡B•¡è¤RvŠW ¤·\ÙR[¸\n~ôW¬\\q2–™h%‰`I\å%À‹3h ‘«\Å#Š¬\r½\Zi\ë\Ò™r“1jÜµş”’{\Ğû±`ÁO-2•ø:ƒ*š†ğü\ÌWøy‰jyO|\Ù?bÖ™AÖ›²\\7\×ZV®\í\Ê; F”,=,—$µY…\ÂR=Yg\Ò2\ZIZˆ\n\æ\ÌM€$•>”¸;\Äx5òÌ¨\r¡°ƒ“µ>pF.c&Xw\ØnX\Ô\ï@LdJ\Î=\0))b\0\'?wU%K=X[G0GŸ›\ÃZô[TQúe\nıë¥\İh3\Í:’hª\èB¡Ve!+Qc·YE y%\' V\Ğ\Ì\ï ™-rHqõ…3sjVù”\×^\Ç\ÌR\í\î· şÒ£·û†¸œrÌ¥!À*®™¬—\ÕF„÷H²©‚”\ÜÜ¾\Z\0«°!J\ëbG\ÚÁ\0,\"€\ÈŠ@~\àò‹>G+æ¢ô4ŠgS™\Ô%’H÷]Ã”ôv±‹³¸\â©lE’;’\Æ¡\Ôó–j\İûš¼2%\É jĞJ±YŸ’X>e\íıYDXøK-«ü)ñ‰$f!\à\Übjö49ƒ@¨%¢»\Ç&\ĞÅ¯-ŠO´)!%ÿ\0\Ìk\Ç\ä)YU0¥¡œ\éE\Ï(\ëH\ZfA\Ö:¶‰gh‘SöÁš`ğŒg„cY\Ìfs\0^jQ\ÙG\\\Şóõÿ\0ªF`w|Š\ê]%»\Ö1ZQh)\Ñ+RAm’¼\Ì·´dô¥™iQ\ê@>E@s¿3m,\Ó“0\r\Åh¯)e=Û±ŒT©‰/\áø‰\ì¥\èA|¡\"´—J”•5\ÂÁKupÿ\0e\'¢®b\İ!iø’ ƒ@\ÒN=\"\ætº2’ W)º…†#\ÔFÒ”ÁRĞ¤ÑŠB’‘[”\æ\Êb˜Š_\0VdÀ\à+ÿ\0Ş±™‚˜ŒL 7› 7W°´IB\n2	|ª™JPœ¤\Öú›\\\Ãx¤\Ì\é$€jT_\İ\ãj\ZDx5 3ğ\äı\Ék…™;\Çs8‡\Õ2jùœµ+b„ñó…M°©S1YU\î½@SQb\ã¡Š\Ä\éÃ’ ¢yƒ2‚†f¸J†£®¶, c\Äf0*z½\ïõ˜\0Ç¨ŒOÃ¨†AE2’r©\'BUnıDN¨C;\n\ë!H)RT\éXvua®P§|µ\0¾„ˆš^	*H–ş\Â>QfùK\Z]š\á\Ú\Ä\åb\Ğ\ÉIRÒ¦l…#3P€*\Ó\ÇAc\å\É\Â!F‰A•ù&¢\é ³–¡\0Õa\Ç(\æD\Ğ\Îr¬j•\Z\Z\ìII\ï\îb±\í,µKX$½*Yœ\ê\ÂÏ›\ç.+„S¥r\ÖB’\ÕRn\rœ\Õ\Ò\\¤”’’}\Ò\Ñ_\ã3DÉ¼\é)\Î]I7J‚@P\Z¡•c¼9ó$%	#ÿ\0“§ºb\İ‹?³’T²hA`öv¯W>]¢¥\àºò2AQ£Ÿ€ø½pùZÀ`2‘\ÑD¥\Å¬U\\¥$\ÉS9…;,\0+vk\ì\r\à\ì4\ÆVr÷)@Õƒm\Ë?c\n\ä\0„…(–Hg˜KŒ©£‡R`\Ü\Ş@¶@¥€°rBj·•uˆ¤\ß’•Kš•)’\Zd\Õ\ÕBWV`Hò\Ô\ÅyÒ©‘‘KTVb…š+\Û+h\Ğ\ïˆ\ÍO†°K¥+«\ïË”‘zÔ¶\İb\Ù£.b\Ç\ï%‚ªI*3M|œº4~	\'-L\âX,ú‚YETK%ƒW™\'³^JIJX–@¨X¨°\'*	\Ù$y\ã¼Á)9×š\â¼\Ê#Ä˜M\Ò\ZÁ4»DÅ\\\ÒÎ„„¥\ÍÁ\Ë°I¸&\Ìa#ˆr®r\Ô\î\É\0`Vq¹	¶½¬Ì…&Vk\n®ù¦\0\Şe0›‹á‰”\0¥­*R«R§b:2uŞ\Ù\Ê%J–	\ÌS,¨\ì3LQ>³Sı=\"¯ƒwÄ“ôYR(š\ê¥`|\ÉS}\Ñ¸iA«\\£\Ê\ç\ÖL˜‰Šgd¤\rl¢”Ÿ2œ\Éó‡\Ü\r9e‚\Ô#—±%©Ú¾q’\ãd¹½\0ø\Ä8e³Á\å5#k÷\ĞB,F\'*ò\ëx„\éN\"§\í\0IV‹vf0·\ÈKxx\İPñ¾2…9zt„knö‡²Jˆ-¤U\æ\É;G^7²hx\È\è \í\Å### Nı¦R¹	¨\ÓR4£üùDhZ\à! t(\0õ#)/\Ë\Åf\áCl\Îİ‚½#j`)#\Édy\nˆ\çZdË–I\"Q\0\\‰„ğ\0ù\Ç+\ÄKŠ	ş)…C\áOH›$(UKX\0_Ñ©\é?¡S-HK™l\Z÷H¡g¥6\é\0¿õ9H/\á\İÁøˆ^×¨\Ñ(	uJ\Ë*‚G¤E‰\á†ad\Ã\íSgb4?´1\'‚œ<¤Î˜Ì²R.Hg\rÜ´\\’ƒÿ\0ªú\Â_?P>c›\ã\Îö¾k—™”<c\é\nfM˜¯r[«9ü ¸5¹pI‹÷_DõÏ™ô\Î<I\Ø\Ò\Êkv!\ãú\á³z´U(#µ¢R\åÿ\0¯J#›9k8\0\İ\ÆSJùVğ\î;!Š3]9\Ñ\Ì4\åR”]³(‘Ô‹ÇŸH\â\0\Òb\ê(`©H\Ë\Ï!}\Ãi²¡MÀöön\Å´)—˜¡I!„µ\è6/\ï¸\ï8ÿ\0C’yIºUf/¡?§1&¡À}¡I¤Ã‘`\0\0‘ÿ\0¶»\æ—v7A;Z\â®,’R‰†«HÊ³Q¨~Sve\'x\Ê\ãe8^W(r¼\ÄL2\ß\î-+Aû%#\ÔCO‰¥¼\Ê$5ór²nA{[0†\\<À\ÊPg¥3E™A/²œ\ËJ7\ã%\ËZóJ\ÔÏ£ fm¿v¯Nğlü\Ó”€\È“VÌª¦\Z$&õv=&N\Èf”r(€TM]˜\Z}\İu\Z_2\ä\ì©aÀºAú6\ìğ?^d\Ë-5C¿94¨ WR¨zp\ÈñU*K\å@\Ë0½Ïºy·-ó\íq\ÓSûA\Ş%¶H!w4ó1_\ÂN\Ë5j VÔ£•$„°½Ï¤5Z	QR”•\â¿4Â€Ï¢RGRM\Z&‡X<)RB”\îf¥JjbJ{;¤(Ax\ä\'–Y/R¥$W3¨]´$y­‘\"R”\ËI™JQ>Şµ>Nzf\Ğ\nhg‘™Z±\Ñ\Í\ØV\İOx¦¯ñœ1*\Êh€s¬ëš¬mB\ßtn\0Ÿ\r72ƒ\æì”’\0óÌ¯X\çI+J%¤•,REBh²\rl\Ëp>\×H—„\âKQ\0Pš?$\Õ\ç\î\é\0¿H¯@Ÿöw˜R*¥-d‹¨Tù½¿ú„<À“k¶\Î ~…\É,‚Bu\0Ú¹\Çõ¬‡N[—$ù\ëø\Ä\Òd³T\Õ\ÌT¸\Ä\Ó.k5M\ÏM¢ØµÓ°Š7´<@ªvD‡ùÁ\á±$¦‘“\æ­\ã8^AÇ‚‡\Ş\r\0y\ïµJ¡cˆ˜^ñ\ì\Üo€\"h\×ğ9\ã~\Ïxd±\ÑÇ”ÖŠª\Åf7Ÿx\îl’FÑ²X\Â5–1£ ffqÁ¡\n>`W\Ì?œ=\áKB¿z—ZTTºZ\í]Æ°Ÿƒ)b2>òJºj\Z¿„[8f)\ÉÎ	KŒ\ÅC|\áp­ôŒ2X´ğ¤€2€v*˜‚[³ \ßW06+¥+&Iy›\èù¨\ÇŞ–§o½ñ‡¬§!–\Ó0	~rÀj\ëx\íhZRó¥Y>ò9‰7p\\P\×G>q%wÄ…øJd/øJ	r\0bK,›T\ïsq¬V\"BrºB \Z…i\Ê\Îı\n\ÌM#†Ì˜TPT’I º™ R©Q®úD<vz¥\âp®O†¥\æ\à¨\rú\Öé¸p¿O/|.›W\n\Ü_˜ı<uô€\çp\Ä1qQ¦\æ\àu¤Zg\É³4©`4\ë¼&“™@\ëƒŠ_\êÇ£–yc\ê½\ê\íL™D\0¥=^\ŞBğ\\Œ\é\ÔWõ\é?ù\0Ÿ\n_1)ñ\r\îù_ñ\ã‰!S\Îg\ÊX>\'õX\â—x\ïé·¯2ømŸ?\è»ÀV‘B;Q\áW2\r	\Ò>‹Ÿ\ìf~Ò•6b©+Z˜¥Åˆp3556ÿ\0”8,‘2\\\Ü0K.P+J\åX\'5¨Ş‘[–M·ªÌ”4\âK\æI)X\Ú,|‹¿„‚(%,Œ\à?\Õ\æ–:t&*3(by3M¯\çf\İ2½Ï‡có$Ğ±Nt’À£2BYor+\Ö\\MŠ\Â­t¤\ß0p{’T¿Xªû‰+“‘J?H¾d¬­\ÕÂª:õ‹b”••„šgœFÄŒ\ÇûT£O\Ê9\ì\Õ\n§Ì•\Ë T\"Z\Z’V—Õ’\Ï\æ`L@NpôL´$\0/»\rJ‰_\ê°ËˆJúUL/‘>\îr„\r4¢F\ì¨G:qñÕh›:w\éZz›EÀc‡*d-WT\ŞP/”Q¾¤$v¦\Ğ\Ñ*\Í\à\æ`¥\ÌğŸD\ËM(\Ô%\æ,>\çg0¦N²¡\Îj\Ö\Å%JB\\\ÂB€\ê!¶g–€\äd¡,&\á \n2\È\éL\êl\ã\â‡\ÌM\æ\Ê\0\Zôh|²\ê	¢\×RE’á‚›°ÿ\0QbR3(¸K¹©c—\ïk\\”LM&c\Ùf)ÜŠ„*:¨$UVš€ÌMÃ„\n72T„XR\änHa¨ˆp²\Zz&8(–’\ç\ï)YH\ì\å\ÇPb|B\\¡$\å¥#B\n\rN\ä| \ÉXp$øwy¡K{š„ª»$İ¡˜\Ì­l”§ú²‚®õ\ËÊ—M\Í&ˆ°\á\×\Ş*s\äz^°XZ•ú¹øÄ’\È\Ë(½\Ì \áü4\Ã1t­Xx¾!–@)|K\Úõ\ÔIM>\ÔT–ø5\Ğøh @“1–#É±œFb\É*œ§\Ó:zjH\Ş/\İQ§®”/H¦ûUÃ\Ê#\à|^a¡sE”LK,7›DÏ†‡‰q>U\Z¼\0cÒ½¡öa\nu%b(¸\î¤ƒ\Ú:±\Ëi¥±‘Ò“\Zh²_%\Î\'))\Í\ÙY’™I?\ÛdÍ™%\ÆR°+jg•¥»ˆS€\Æ )\å\æJ\î;l@\åP\èaˆ\ÄÊ˜~+U¤eÍ£,(x\çªX¤\Êœƒ)7HU\íP’\nW»u¥\"y%$\ÒaIp9NS³(ò\ì$Z‚I3%\æJH™(ıRRu¡õù\Ş\á1\é”BÒ¯´F`–\ë~µ>Q³pŠT¥\çz¹R@z	z_\İ:\\´\íÆ—”˜{¤\å¢Át\×SA¤£•Ğ´L@ Š†	)]ù\Â\\J•(©!TT¤‚¼\à#Ô¹£9¨gh%\îpl\ÌR¦\Ê\0­3$š\æf)Â Ç·XPµ™LÃ—1®z\Ú\'\áüE,&)\Â&(%`Ğ¢h!]” u0V;H\0A\ßW\Üm‡]SOŸ\İgw;U+\ÛYIV\Ï-i!­•Aˆ>d~ŒO\ì—ğd‘UŒ\Íøz~ˆ‡G‡…¤$¤)\n÷’ª—€õ£ÁR%²•fg™´}w˜Oôò\ÏXo÷2X\\´\ç$†:\æ\rF÷Ğ‹…e£Xm\åI€H\î\áÑœ\0\Ç\Ë\Ò*\Ş\Ò\ã’\0@9Nª«\ä\İ°{\Ö;qš9z³\ìó¾),&b€°-J6/jP.\Ñj,\Ş\Çâ’™\ÈJê’°C\Ø.\ÉSo\Ö=VTÀ¡~f™\äóš.mÜµZ<_…\ÌÈ´-Ÿ*Ò®ùK·\Â=;„\ã†NB\Ë,u°å®¥œlC£\â\Äñd8Rt\n¨{©\ÂR·2ˆ	4Š\ÖNs˜f\ÕoÉœµkH¶N”Ìšr¥Js§)JG\İ\0I5`®\á9D¥\0œ\ÎAf<µ:\ÜC\Ò&R	\"i9!e š0\İG¢yÏ“\ê!\Î’¥Ö¦jT‘¡x¡f*u\å¦µ%D|H¯òƒ´2Tª¥!ÓŸï­¨Ÿº„ƒ\æCm ;‚\ÒÁı\áK€9^®’ılÀ] ¹Dµ3=R\0»\\º·\0MJº†\Òf¥\"‰*˜¥e¥IQ—°/FB^6¶	)*ª\ÎAÔšJA\Ñ\ß.mo|‚,t\Ö9\ÊAH)*g<¹\Í\İ\ÎÂ üF„(R\éS‘Z\äJTH?\ÍM€\'\"³š©’‚Ÿ´s#1 Y³\nµ\Ö&qR]\î‹\Ø)@\Ç\Í-ˆ”\Ä%¶o Ty>d\á*S›·©kÂ¹u\Ê>ño#oF§X#-\È\Z3ª\é9e\Ó-Q}¢Ä©o2gº,4¸7‡9\0°h×µ\è³,ˆ_ÿ\0a\çMI	I\Êşñµ#\Ò\Ëxğ\Ş>Ÿw›\×\É\Ë7³¼_³2—`I\à†ZŠMD_\×Â–_J\Ò$¦0¹±\Æ\áÕ‰û/>s>Œ¨>\Ã‘h‡\Ë4¤=\'(q\nøƒ)&<\é{½7—ñ^\'1* ,·\ëx¯\â1jU\Ì=öŸ\r•f‘ZP\Ü|&´LsŒŠ#ü\ëO‘ùù\Ã,4\ÃpT\Ïn€¤’İ¡<´eS‚t9‡\ç	Œb…?f=\èñ•RÃ…\Å(P.\å\Îa˜6âœR&\" •\0]\Òt\Ü\Ï$\âH!‚˜\ZeX-ü)Xü^pù\áN]1d™kTA#\Íôˆ°\ÍpS\Ğ\áJ–¥Ì‘EuRlvq\é¤7œ…,:BV¿²•e\Ìú±cG¸bH­(Z\r‘˜½˜õbzˆ‘Tœ¹\\¡Dó¤gHF¡ë¸ˆ\Ğs\âl•ŠS\0Œ¡Ô‡d•\'38f%:‡´ÀgÎ’Œ“\Zl¤†\n¥£VX©)ûÁÛ³Æ„\ä\ÎHRÒ‰õ\ÒYYMn\ìC\ïl5\ç…\Ëj\ç±E\Ó0eXI³.„v.#Ls¸øN|xòMd}\'…¥\nT\î]\'0 Ü¿wˆğ\ÅQºVBÀ¸¨\èö…|C‚ó•®yG)4¹K\åj–=a7›1)RR\'³\Î‚\\hI˜™…Eµ\n¼\ä\Ã+/«‹şL\ä²^\Ô\ãŒûC/TLÇ \0\Ñİˆ«»\Å*T\äb§)x…™rR*\n”ºû‰4©7QoË³…–°‘9)M\0R‘Srÿ\0F[\ã\ä\'@’–@\äı2†\Ö+.Möi\Ã\ìÓ¿¨9J\Ô\Ò\ĞD¥Ü\ÕW&†¤\Ñ\à±\Âf)\Í;&3†PS)6¸1\İ:O†”\à\Şqm\á\ËÊ”€€X‘­ƒ\êz6\å\è\Õd¹U4\×ò‹?\Ä\æK„\è\à\ì\ì4#%­8,qZQ-²eSZJ6š¹-j•\\I\\\ŞõA\æ{€\Ø7¨\ÖùÃ¢Y,–P¢@˜¦¨|\Õ-mo\Z\\¬§›.j\Ñ?j\Ì\æ×¹®´¤f‘˜d\æv$5s1\Z±Ulõş\Ğ50T”€\Î\ä¶\ì7`Ù¤4áŠª”`l\í~¯¡ø=\ê\ê \ÕF÷¹mºš.iNT¡³\Z\Ğ–	¿ñ?\ËA\nÃ¢I”U®‰\ì\0uª\îX‘Üµš3 qFk%µ\îzñ\é\âÑ–©H+4rj©©µtü\é˜G;®f¹tÖ® œ\áú•\0ı7ƒ]\'”€P¥\é˜)d\éAş¨„Ÿ\r\éRTh\ä—H%­•\Ú\r[æ³š=®\ãWÉ¦´¥ª\æz86§ûw‚8Ä²Tû\áª,	Ñ¶£W·\ÂÅ±BFŠ\âüñ—4ü<”i$\"bz<ÿ\0qñ)\n”¡\î(ub]½^q”Ğ†„>\Îğ\'6\ê\ì§l±ş>\Î,¾½\Æ\Ó6ˆR°T\\I\Ã\ÃD<Vx@sx½I\Çc7y±ıaô”¢ñ,	K´3ör~d\ÌÃ…^<\Ë\å\í<gÚ¼+\è^)e´{Ÿµ\\$e$„x\ßK,ˆ\é\â\Ëp©QF\Z’t¥‚jÿ\0õıu‚0\Øiz¨şuoŒh\ËI5@\ïQó,b%I!˜¤\0/ş¼\ã5\nt¾^„Vü¡–vK›Ò†½Å›¸;\Ât)I~d… \Ş\Za±e)\æ\nse¤’=ğò‰ \ç‰œÜ§0Ø•$ù)Abğ\Ó\n¥2Tœ\ÉV`3$ ?¨1[ÁcÖ’é˜¶¹M©¹³÷¬YøwÌI‹B®\Å.’õ5JN»c<¡´±)d¨4µJ¬¹¡«?\Ä^%”¥¥)j]À£#5\nƒuN÷¤K‡’úG*$’¤/%«˜e‚pÊ—™>’\íB¢Gr2°‰°Ø¢R¹—\ÌE¦…«º›h\Ú\Ñ-*XJ’C•{¬u¢™»ñl‹ÏšZV\ÎB2•(}’Å–û(\æO•œ•(ƒ¢&$\"åš¹ŸZZÔ¤ \\\ÅB¦\ËJ29\ÊRB¨\ì=\ÒR\0h†7a¤{,–Ö¥f9’À\Ğ1\Øz¹}Xg\ãe¦h !+]ÀH5Sµ…¤ŠÆ”\"\ë+!ò©D2Ajdd„½=\ĞN±[£jF7%Ö©%¹IH\n‚\×(k›úEriE*p Mµ?(´q\Ô…†Tb,ü\Í\Å\Ø¾ Œ\Çb\ä5‹Vº_h\Ó\ÛRRß®×„\Îğ\Ô· ‡z·™€°\ã:’õ\Í\êH³ƒ\Ú;I)¢¬ö­\Ş(-Sø§(b_\í)$³õ\é´œ^eƒ_;z7s¼T—‰ Ü¶›~Q.^¥ƒ5\éZµat’Û‡\â9¦3»\r‡­a\Ö\Z¡Z\n—75ùE3–]\Ûñ?„=BóÁ³tŒòh\Â\ÏKwk\r}o‰%%˜QÜˆ :{^J\Å# ©·[í¸‰¼`\äÌ—¨\ì÷Œ\Â~9Šsú.…À\\\íğ†J” 	Z3fw\È(Gğ\ÃÜµMK\ÅjT\Êø¹RI!ª\Çc{^ğV\\-\ÙJ¡jP;$ò¨T›• x‰\å*P vp\ç°S\ZŠ\\\Z\Úô1:\ær%\Èúu¬&^%7\ÊCª \ÄT8\Ğ\Îú<\ç\Å\Ï+–¢–t€@\íZoF¬µ”²›–b¤‚À\ÈÁµ¡N\Ú”óúÆ§ûT„P\æ=N¬lòñı\Ç,º“Áô\â%§2‹¥ñn\'\ãLa\îÀœKŠ\Ì\Ä{Å“°‰¸F	SG(\Ö0\å\äšÓ·Ù½›¢õe\å|ö^SK¡\Â\Ô\Æ!\áòBG‰\\p\×Xh\Ë\Ë=£\Âı£G\Òö/i1\'\Ã-)\ÆJ\Ë\ï\"•*9\ÕF\éY|1õB\ÛjüM=#-@Q\'ùKPñP€*Mm\ÎT?´B{\æ¿\Õù˜…9NÍˆ\×B=B^\rFP\å=H§\Ã\Ş\âbP,Õ£°¯rşOp|DJi\Ø~-\n‡O\r5N,No›‘ò†\Ü!Eê²ƒöœ·ö‚ u\ã\åû\ÊBO\Ş$\æ·Œ”¤K¨\rØ¿@\ÌE¢hXp¸ô‚@Ä¾\áK\Ì?§\Ş\ÓÅ¦,’„¤£.\\õJCX–e¬K\Äæ¤´\ÊQ}±J…úi&DÀ\Åa ]–’‹Z»vŒ\ì\á$\ç›0›0PJ\È# Q\Í~ i©AFbF`\ÎVH\0?»R“\ç\ŞñB‰)ZT4<÷ˆ\İ	ƒ°\Ó\ÔX\æIU(FĞ°\×cFƒ.ha\á\å\Z\Êw9RH*\ÑË¶ñ\ÔüRÕ”¥`\ä†\"õû\ÄXP³\Úlrf©Ö§,r\æzeÙŠ­\Ü\ë\0L\0È’R\Ü\Å\Ã%>`s~«ó§\ÕE\0¦ur±r_ru½Iw…X™jÌ ^¤J;S\ØÃ¼QUNF\æ}N\å…N\á\ØD%¡2Â”\Ì!)I%ò‡\æmúõ‹”+3p\Ït\Ù\ÈqAkü ‚\ÂXr*õ\Õ\îG‘ù\Çr¥…(³P\Z0­\ëñ ‚\Ä7OÎ‘`·ZúAR%‚@°§®Q\n/ª^•¥\è\İ#‘<9Vÿ\0@\ÆX”Cj_¼=\ás€¹Ó¥›¬#––MÜh/\rf`÷}\ÄgB\Ç.g¼\0 ×®\ãh\ê|À¥jªRôıIˆš A\ìkñ†(XR‘˜Öº\Î\Ãl\âœ\å $± ?¯\Æ–›]¬I«3Wõ	&\É%\Ş\ïpD…@\rhü¾Xd\Ì•	m\äPùz\Ã:\ÔM*\ì\rB´\è\àSxW5~\é	eE,û´tTF[	\'ùD¼‡&w‰)b²\ÔÃªt\ïH%^\É#4/\Â\ã¼D© ò¯‘U¾\Ç\æ\"\í;(`\İ*E+Ù¹I\Ñá„Œ2`Š\â\ìY‹Àóqe] #yüDB\ÜD\å¨\ĞGxl(5x!C(„j×´³\ZYrÔ#\âs]G¼_=¼\Ç<\Şi¬uqMB¨”¨\ÔaF\É?˜^¡}9”O\È\Ğ)£§asğ‚>c}@:[hÔ¬ZA\Ù?øˆ\Ì\ÜL\Â-µ\íWü\ã‰d½C\ì\Ç(”0\Â\0HuµY’T®‰	o_ …`óJ»ó¹ó*-\è} Ù\Ãc†•\ÙJ>D˜w!2³\'1%oP]a=Ú¦®IE–>·F&6… †QO\\\Êzt`H@\ïŒœ©Y\rB”¹~©aú\Ö\áX\ã•A)p©y	})‰\ï\é\nğ«”\Ê\\´uÊš€{ş8Ÿ1]”6\Êşu:®%+/2r¯R•$)\Íœ\Ä\r‡\â)d‚B@%A\éaÈ¦]\Ñ^Â¬(™I&Çš\İ[3ü!\Âeœ•YªR@v:Ş½m`Š\Æ-j\0¦g‡a,,‡:4Mˆ\n˜\\¡	aD\0H}Ê•u6¦ğ©ô§8¸\0\Í\Õ/øD\Ò†\ä*\Ê(¡\ÌH}óQ\Î\ÎbM\Æ&²\Ô		b\n€k˜ï¿ Šş:gˆ¡J\Ó+İ´v¶ğ\Åx°®@”¥ —R-\Ï]4…¸€H_öh¨Í•‘%)\0œ\Şó\ÜÅºk\åq2Aš\×s§œ8^(0¢\Z¥\ëOL°¥%\ë\Z\îÃ¤T 5~¤¥ƒ\Ôõô\Ò\Èw‹Á\\±Ò—ó„ø®R\Ûmh¨\æd†/J\×ğ‰\å\Ìf­ƒ1…\ØBTôr\Ñ\Òf^\r™xª—\Ò\Â\rF%T`)XC‚\ÄUa¬¡N€\ïašxDŒÄ¹‰`)µ¨b\Îr\Z ¹Rj\áÉ¿øŒ\è!ò‡rIn±ˆAu1‹…UœV¢ñImÁ£\ĞÁ“N`¢\Êqú!AQp\à‚4%‹‚\İ\\ú>ğ\ç‡O\Ï-*KV¯	8¨\å\åz\Å\ëpU€r»¨³õ\Ú\à)—o×”/–7ˆÃ”ÔšD²\ÕJD’a99h %\Ä&ğ^+\Ó\ÎI¬97CÍ½¥\Å,\Ö+ª0×‹N\n&˜\í“Q.Lj:C!\á5 O™\'ñh“\ÃQ\×õøDÅ´O\ã\ZT\Õ\n—£ƒE\á(K\ÄÖ½;tŒFa°Qõü\âQˆ:W¹ü+øF	\ÇP?]H€5–h\n¨1,™€h?›üFÓŠo¬_`Kú¥£jš¤)ô\æ\'şÕ€\ÅÈšX´\Ã]\ëøÁ2¥Z`¥\ÜP|)}\Ä\0™û‚<\ÔÀAƒ.³K\æ\Íñ\Êu\Ò0—ˆY5H][÷o\çÌ H\íhk‡À¬\×\ÂC,\àok<-Á\ãR\n†\ëK·¢^\nñr+ùJ\Ù=€4õLM\×72“p¤š¾Sğ\â^7‹I+r¢T°ÛZ|h\ÌXòj(s7ñ9\\Â \Å@+š\Ä\èQq•9J…õõcC\03rO\Ùú˜”f*d”^Á\ÏS¬ fK)KJS¯¤^\rE\èI\ÚÁöóƒ0\Øt¡\n\r•lŠ€;\éªLÄ“˜s¹71,\ĞŠWË¡`ûõ‚‚<P%B\Ú?x\ïüleAù­‰’V\Ç\éaRvû,\"¿Š“”šT\×\Ëğ‹\ÄPAHcõ„Tbg½\çb€Œ\Z*9Á‡PHS‡^J\ï08‚LMTY°˜`Öƒg\0§ôaLœQÅ»\ÃùÊ“@\î/Xz/C“R\ÛÁ(“\\ª10ÁG)\ë£@¤ñ\Z>›ò+\âˆ!<¤° ·m`\Ô\É\'*\ÓqC\Ø~>pb•\n†\\)NR,(\Ô\ß\×\á\n¢\Í\Ã$,T\Ş\ÛFÔ–£G”„\é\èÑ“\ÔA¼$¡^#Ã¹Š\'µ\Ø\Ü\ïX»ñ,D°“˜‡.ö—\nX×Šw\n\Ô\á\ÖTw0˜:’\Ôi£¨\Ô µOH\Z\ËH\ÔdAºD´½‡¤h\ËH\È\Èf\ë \ØA2e‡‘‘®P„ƒ\Ğœ\ÉNw\Ê®\Â22&™·\n–,9µ\â²ˆJ_vm\ã#\"}ATŸİ¨\ê\rlKY$I»V221ˆ\Ûi\r8¢@ğÀaô	ç‡š—¯$43´dd(b$¥(¶\Âq	a…¤dd8e+@{H\è Rƒ\Ò22,$D±°ôƒp²\Æ\Ã\Ò22&®\nÄ¤e\Ö.\Ür(\ÈÈœ¼5À\íb‚:˜9Sû«|Q!5†H@JPW1­5ŒŒ…“>_&\å#2i¤.\âš22%Š¯\ÇQ±¨a\éx½R“öG¤q\á\'\ìAMxIû#\ĞF¼ı‘\è## ÿ\Ù','\"download.jpg\"',4);
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
INSERT INTO `procedurelist` VALUES (1,4,6,3,NULL,NULL,0,'Test','2018-03-15 00:00:00'),(2,3,1,3,NULL,NULL,0,'Test2','2018-03-15 00:00:00'),(3,4,6,4,NULL,NULL,0,'','2018-03-25 00:00:00'),(4,3,7,4,NULL,NULL,3,'','2018-03-28 00:00:00');
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
  PRIMARY KEY (`reportID`,`procedure_procedureId`,`staffid_Radiologist`),
  KEY `fk_report_procedure1_idx` (`procedure_procedureId`),
  KEY `fk_report_staff1_idx` (`staffid_Radiologist`),
  CONSTRAINT `fk_report_procedure1` FOREIGN KEY (`procedure_procedureId`) REFERENCES `procedurelist` (`procedureId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_report_staff1` FOREIGN KEY (`staffid_Radiologist`) REFERENCES `staff` (`staffID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (1,'That\'s a red panda.',4,6);
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

-- Dump completed on 2018-03-31 20:01:45
