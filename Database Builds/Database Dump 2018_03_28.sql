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
INSERT INTO `modalityimage` VALUES (1,'�\��\�\0JFIF\0\0\0\0\0\0�\�\0�\0	\Z\Z\Z\Z( %!1!%)+...383-7(-.+\n\n\n\r-%%----------------------------+-------------+-------��\0\0�\"\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0A\0\0\0\0!1AQ\"aq��2��#BRb�\��3r���\���\�CSc\��\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0*\0\0\0\0\0\0\0\0!1A\"Qa�#2q��\���\�\0\0\0?\0�`g�hʽ)\Z\�r���\� p&�ݲ�ӬK2J\�0IRu\"�(�\��M\�U<��sP3e�B�\�@\��B\�T�) �;U�:m��b��R\0N�\�\���i���!JI,�����\�\�^�&��pj�\r�*	\��\�8�e�wT�r�[�\�@�o1�@UqE��j���ЈaBҗtꞕ�m��G)ĺV5��\������(P�\��f#F\"\��4/�\Z��\��8T\�BT�\�	a�\�9�u�\rby�(*4���\�K���,�\�E</�+\�)X�O*��B�G\�w\�N!IRR]A$�gVVb+zi\�\�M\'\�\��y��.@c\�\nZa%2�$�b:� ��w	\0�Ӳ�/�))Zf$:]�\�HgK�}ܮ\�wOb�\�I\n��!¥��\�(Wj$�v%�\n��I�+\�!dډ�TG�_��~�*�Ѥ��I\\�<����X�!J��9I\�?�;yD8\�	}�]V���\�Pz~\���&-$8Lď\'oF0�ٴ�%@�PO]i\�Mj5��\�p	?���[\�/\"(ES31\������ce`�*V�����_�3�\�r\�\��`\���D?ʒ�G\�\�)ޢPS�\0R� �F�&R(�+ud	I\'�q֑%�0LH�P��%�\�<\�$�ĝT�\�;K>\��b���)(Ni���\0��S\�,�\�+%:��)O�R� �$�\Z�}Ao!H�$(��X?\�.3��yd������R�H\��\����`\�Ԇ��fKm�\�&vP\Z�ކ\�d\�Lt�\�\�\n��2d��\��\�J{�����9Ҳ�\r\�	FNC\�\�\�cP�)�%\�آ&&�q�L�xy\nV7�/	qx\�.\�\'\�i\�0�QԆ���F@\0^�셖%$\�\�v6P\�ZI9�\�e�)ر��ԠG2s\�\�̞��;W�k��p��\'Q��*\�&e$�*���\�J�UT*\�\�Tn@\�W\�I\�=�gԔ���z�\r\Z9\�H�3����\�ҽ70-	̡\�J4Q{u\�\�\�AIij4�����Kyl�I.\�\"�\�O�Ց{0\"�f(�fK�ɻ8A\��f�{�i\�R\0�{\�\�\�P!�N,t#j|\�	2\�b�SR��s�\�g}\�W�&\�\�gK斲v��\�T��nԁ\�JA d!��$y\�4\�G\��_\�\049�\�\���*\� ��\Z\�\�z��/`B�����n\���p`�r�NU�zG)gL�\�Ƅ��=K��\"T��9\�RlA\�	qT�\\V\�`\�s ZT�\�e�\� R�u�`\�,\�	bf���F�\�M�\Z\�\�bJ򨊔�*�}\�\0V��\Z�\�:�aq���)Kt�<�n`K�/P�\��JNT���\Z��B��褏Rv�W ��\�R[�\n~�W�\\q2��h%�`I\�%��3h���\�#��\r�\Z�i\�\��r�1jܵ���{\���`�O-2��:�*����\�W�y�jyO|\�?b֙A֛�\\7\�ZV�\�\�; F�,=,�$�Y�\�R=Yg\�2\ZIZ�\n\�\�M�$�>���;\�x5�̨\r�����>pF.c&Xw\�nX\�\�@LdJ\�=\0))b\0\'?wU%K=X[G0G��\�Z�[TQ�e\n�덥\�h3\�:�h�\�B�Ve!+Qc�Y�E y%\'�V\�\�\� �-rHq��3sjV��\�^\�\�R\�\� �ң�����r̥!�*����\�F��H����\�ܾ\Z\0��!J\�b�G\��\0,\"�\��@~\���>G+梁�4�gS�\�%�H�]Ô�v����\�lE�;�\��\���j\����2%\� jЏJ�Y��X>e\��YDX�K-��)�$f�!\�\�bj�49�@�%��\�&\�ů-��O�)!%�\0\�k\�\�)YU0���\�E\�(\�H\ZfA\�:����gh�S���`��g�cY\�fs\0^jQ\�G\\\����\0�F`w|�\�]%�\�1ZQh)\�+RAm��\���d���iQ\�@>E@s��3m,\��0\r\�h�)e=۱�T��/\���\�\�A|�\"��J��5\��Kup�\0e\'��b�\�!i����@\�N=\"\�t�2��W)���#\�FҔ�RФъB��[�\�\�b��_\0Vd�\�+�\0ޱ����L�7� 7W��IB\n2�	|��JP��\���\\\�x�\�\�$�jT_\�\�j\ZDx5 3�\��\�k���;\�s8�\�2j���+b����M��S1YU\�@S�Qb�\��\�\�Ò��y�2��f�J����, c\�f0*z�\���\0Ǩ�Oè�AE2�r�\'BUn�DN�C;\n\�!H)RT\�Xvua�P�|�\0����^	*H��\�>�Qf�K\Z]�\�\�\�\�b\�\�IRҦl�#3P�*\�\�Ac\�\�\�!F�A��&�\� ���\0Ձa\�(\�D\�\�r�j�\Z\Z\�II\�\�b�\�,�KX$�*Y�\�\�ϛ\�.+�S�r\�B�\�Rn\r�\�\�\\����}\�\�_\�3Dɼ\�)\�]I7J�@P\Z��c�9��$%	#�\0���b\���?��T�hA`�v�W>]��\��2AQ�����p��Z�`2�\�D�\��U\\�$\�S9�;,\0+vk\�\r\�\�4\�Vr�)@Ճm\�?c\n\�\0��(�Hg�K����R`\�\�@�@���rB�j��u��\���K��)�\Zd\�\�BWV`H�\�\�yҩ���KTVb���+\�+h\�\�\�O��K�+�\�˔�zԶ\�b\��.b\�\�%��I*3M|���4~	\'-L\�X,��YETK%�W�\'�^JIJX�@�X��\'*	\�$y\��)9ך\�\�#ĘM�\�\Z�4�DŁ\\\�΄��\��\��I�&\�a#�r�r\�\�\�\0`Vq�	����̅&Vk\n���\0\�e0��ቔ\0��*R�R�b:2uލ\�\�%J�	\�S,�\�3LQ>�S�=\"��wē�YR(�\�`|\�S}\��iA�\\�\�\�\�L���gd�\rl���2�\��\�\r9e�\�#��%�ھq�\�d��\0�\�8e��\�5#k�\�B,F\'*�\�x�\�N\"�\�\0IV�vf0��\�Kxx\�P�2�9zt�kn���J�-�U\�\�;G^7�hx\�\�\�\�### N��R�	�\�R4���DhZ\�! t(\0�#)/\�\�f\�Cl\�݂��#j`)#\�dy\n�\�Zd˖I\"Q\0\\���\0�\�+\�K�	�)�C\�OH�$(UKX\0_ѩ\�?�S-HK�l\Z�H�g�6\�\0��9H/\�\�����^ר\�(	uJ\�*�G�E�\�ad\�\�Sgb4?�1\'��<�Θ̲R�.Hg\rܴ\\���\0��\�_?P>c�\�\���k�����<�c\�\nfM��r[�9���5�pI��_D�ϙ�\�<I\�\�\�kv!\��\�z�U(�#��R\��\0�J#�9k8\0\�\�SJ�V�\�;�!�3]9�\�\�4\�R�]�(�ԋǟH\�\0\�b\�(`�H\�\�!}\�i���M���n\��)���I!��\�6/\��\�8�\0C��yI�Uf/�?�1&��}�I�Ñ`\0\0��\0��\�v7A;Z\�,�R���HʳQ�~Sve\'x\�\�e8^W(r�\�L2\�\�-+A�%#\�CO���\�$5�r�nA{[0�\\<�\�Pg�3E�A/��\�J��7�\�%\�Z�J\�ϣ fm�v�N�l�\���\��V̪�\Z$&�v=&N\�f��r(�TM]�\Z}\�u\Z_2\�\�a��A�6\��?^d\�-5C�94� WR�zp\��U*K\�@\�0�Ϻy�-�\�q\�S�A\�%�H!w4�1_\�N\�5j Vԣ�$���Ϥ5Z	QR��\��4ϢRGRM\Z&�X<)RB�\�f�JjbJ{;�(Ax\�\'�Y/R�$W3�]�$y��\"R�\�I�JQ>޵>Nzf\�\nhg��Z�\�\�\�V\�Ox���1*\�h�s�뚬mB\�tn\0�\r72�\�씒\0�̯X\�I+J%��,REBh�\rl\�p>\�H���\�KQ\0�P�?$\�\�\�\�\0�H�@��w�R*��-d���T�����<���k�\� ~�\�,�B�u\0ڹ\����N[�$�\��\�\�d�T\�\�T�\�\�.k5M\�M�صӰ�7�<@�vD���\�$���\��\�8^Aǐ��\�\r\0y\�J�c��^�\�\�o�\"h\���9\�~\�xd�\�ǔ֊�\�f7�x\�l�FѲX\�5�1� ffq��\n>`W\�?�=\�KB�z�ZTT���Z\�]ư��)b2>�J��j\Z��[8f)\�ΐ	K�\�C|\�p��2X��2�v*��[� \�W06+�+&Iy�\���\�ޖ�o����!�\�0	~�r�j\�x\�hZR�Y>�9�7p\\P\�G>q%wĐ��Jd/�J	r\0bK,�T\�sq�V\"Br�B�\Z�i\�\��\n\�M#�̘TP�T�I ��� R�Q��D<vz�\�p�O��\�\�\r�\�鸍p�O/|.�W\n\�_���<�u�\�p\�1qQ�\�\�u�Zg\��4�`4\�&���@�\���_\�ǣ�yc\�\�\�L�D\0�=^\�B�\\�\�\�W�\�?�\0�\n_1)�\r\��_�\�!S\�g\�X>\'�X\�x\�鷯2�m�?\��V�B;Q\�W2\r	\�>��\�f~ҕ6b��+Z��ňp355�6�\0�8,�2\\\�0K.P+J\�X\'5�ޑ[�M��̔4\�K\�I)X\�,|����(%�,�\�?\�\�:t&*3(by3M�\�f\�2�χc�$бNt���2BYor+\�\\M�\��t�\�0p{�T�X���+��J?H���d���\�ª:��b�����g�FČ\��T�O\�9\�\�\n�̕\� T\"Z\Z�V�Ւ\�\�`L@Np�L�$\0/�\rJ�_\�ˈJ�UL/�>\�r�\r4�F\�G:q�Սh�:�w\�Zz�E�c�*d-WT\�P/�Q��$v�\�\�*\�\�\�`�\��D\�M(\�%\�,>\�g0�N��\�j\�\�%JB\\\�B�\�!�g��\�d�,&\� \n2\�\�L\�l\�\�\�M\�\�\0\Z�h�|�\�	�\�RE�ႛ��\0QbR3(�K��c�\�k\\��LM&c\�f)܊�*:�$UV��̐MÄ\n72T��XR\�nHa��p�\Zz&8(��\�\�)YH\�\�\�Pb|B\\�$\��#B\n\rN\�| \�Xp$�wy�K{����$ݡ�\��l�������\�ʗM\�&��\�\�\�*s\�z^��XZ����Ē\�\�(�\� \��4\�1t�Xx�!�@)|K\��\�IM>\�T��5\��h @�1��#ɱ�Fb\�*���\�:zjH\�/\�Q���/H��UÁ\�#\�|^a�sE�LK,7�Dφ��q>U\Z�\0cҽ��a\nu%b(�\���\�:�\�i���ғ\Zh�_%\�\'))\�\�Y��I?\�d͙%\�R�+jg����S�\� )\�\�J\�;l@\�P\�a�\�ʘ~�+U�eͣ,(x\�X�\���)7HU\�P�\nW�u�\"y%$\�aIp9NS�(�\�$Z�I3%\�JH�(�RRu���\�\�1\��Bү�F`�\�~�>Q�p�T�\�z�R@z	z_\�:\\�\�Ɨ��{�\��t�\�SA���дL@ ���	)]�\�\\J�(�!TT���\�#�Թ�9�gh%\�pl\�R�\�\0�3$�\�f) ǷXP���L×1�z\�\'\��E,&)\�&(%`Тh!]��u0V;H\0A\�W\�m�]SO��\�gw;U+\�YIV\�-i!��A�>d~�O\��d�U�\��z~��G���$�)\n��������R%���fg���}w�O��\�Xo�2X\\�\�$�:\�\rF��Ћ�e�Xm\�I�H\�\�ќ\0\�\�\�*\�\�\�\0@9N��\�\��{\�;q��9z�\��),&b��-J6/�jP.\���j,\�\�⒙\�J꒰C\�.\�So\�=VT��~f�\���.mܵZ<_�\�ȴ-�*Ү�K�\�=;�\�NB\�,�u�宥�lC��\�\��d8Rt\n�{�\�R��2�	4�\�Ns�f\�oɜ�kH�N�̚r�Js�)JG\�\0I5`�\�9D�\0�\�Af<�:\�C\�&R	\"i9!e �0\�G�yϓ\�!\���֦jT��x��f*u\���%D|H��2T��!ӟﭨ����\�Cm ;�\���\�K�9^���l�]��D�3=R\0�\\��\0MJ��\�f�\"�*��e�IQ��/FB^6�	)*��\�AԚJA\�\�.mo|�,t\�9\�AH)*g<��\�\�\���F�(R\�S�Z\�JTH?\�M��\'\"�������s#1 Y�\n�\�&qR]\�\�)@�\�\�-��\�%�o Ty>d\�*S���k¹u\�>�o#oF�X#�-\�\Z3�\�9e\�-Q}�ĩo2g�,4��7�9\0�h׵\��,�_�\0a\�MI	I\���#\�\�x�\�>�w�\�\�\�7��_�2�`I\��Z�MD_\��_J\�$�0��\�\�Չ�/>s>��>\��h��\�4�=�\'(q\n��)&<\�{�7��^\'1* ,�\�x�\�1jU\�=��\r�f�ZP�\�|&�Ls��#���\�O���\�,4\�pT\�n���ݡ<�eS�t9�\�	�b�?f=\��RÅ\�(P.\�\�a�6⎝�R&\"���\0]\�t\��\�$\�H!��\ZeX-�)X�^p�\�N]1d�kTA#\��\�pS\�\�J��̑EuRlvq\�7��,:BV���e\���cG�bH�(Z\r�����bz��T��\\�D�gHF�븈\�s��\�l��S\0��ԇd�\'38f%:���gΒ��\Zl��\n��VX�)��۳Ƅ\�\�HR҉��\�YYMn\�C\�l5\�\�j\�E\�0eXI�.�v.#Ls��N|x�Md}\'��\nT\�]\'0 ܿw��\�Q�VB����\���|C����yG)4�K\�j�=a7�1)RR\'��\��\\hI���E�\n�\�\�+/���L\�^\�\��C/TLǠ\0\�݈��\�*T\�b�)x��rR*\n����4�7Qo˳����9)M\0R�Sr�\0F[\�\�\'@��@\��2�\�+.M�i\�\�ӏ��9�J\�\�\��D�܁\�W&����\�\�\�f)\�;&3�PS)6�1�\�:O��\�\�qm\�\�ʔ��X���\�z6\�\�\�d�U4\��?\�\�K�\�\��\�\�4#%�8,qZQ-�eSZJ6��-j�\\I\\\��A\�{��\�7�\���âY,�P�@���|\�-mo\Z\\���.j\�?j\�\�׹���f��d\�v$5s1\Z�Ul��\�50T����\�\��\�7`َ�4ᐊ��`l\�~���=\�\� \�F��m��.iNT��\Z\��	��?\�A\nâI��U��\�\0u�\�X�ܵ�3 qFk%�\�z�\�\�і�H+4rj���t�\�G;�f�t֮��\���\0�7�]\'��P�\�)d\�A����\r\�RTh\�H%��\�\r[泚=�\�Wɦ����\�z86��w�8ĲT��\�,	Ѷ�W�\�űBF�\���4�<��i$\"bz<�\0q�)\n��\�(�ub]�^q�І�>\���\'6\�\�l��>\�,��\�\�6�R��T\\I\�\�D<Vx@sx�I\�c7y��a����,	K�3�r~d\�Å^<\�\�\�<gڼ+\�^)e�{��\\$e$�x\�K,�\�\�\�p�Q�F\Z��t��j�\0���u�0\�iz����uo�h\�I5@\�Q�,b%I!��\0/��\�5\nt�^�V���vK�҆�ś�;\�t)I~d��\�\Za�e)\�\nse��=��\���ܧ0ؕ$�)A�b�\�\n�2T�\�V`3$��?�1[�c֒阶�M�����Y�w̎I�B�\�.��5JN��c<���)d�4�J������?\�^%����)j]��#5\n��uN��K���G*$��/%��e�pʗ�>�\�B�Gr2���آR���\�E�����h\�\�-*XJ�C�{�u�����l�ϚZV\�B2�(}�Ŗ�(\�O���(��&$\"嚹�ZZԤ �\\\�B�\�J29\�RB�\�=\�R\0h�7a�{,�֥f9��\�1\�z�}Xg\�e�h !+]�H5S����Ɣ\"\�+!�D2Ajdd��=\�N�[�jF7%֩%�IH\n�\�(k��EriE*p�M�?(�q\����Tb,�\�\�\�� �\�b\�5�V�_h\�\�R�R߮�ׄ\��\�� �z����\�:��\�\�H��\�;I)����\�(-S��(b_\�)$��\��^e�_;z7s�T�� ܶ�~Q.^��5\�Z�at�ۇ\�9�3�\r��a\�\Z�Z\n�75�E3��]\��?�=B���t��h\�\�Kwk\r}o�%%�Q܏� :{^J\�# ��[��`\�̗�\���\�~9�s�.����\\\���J��	Z3fw\�(G�\�ܵMK\�jT\����RI!�\�c{^�V\\-\�J�jP;$�T���x�\�*P�vp\�S\Z�\\\Z\��1:\�r%\��u�&^%7\�C��\�T8\�\��<\�\�\�+���t�@\�ZoF������b���\����N\����Ƨ�T�P\�=N�l���\�,����\�%�2���n\'\�La\���K�\�\�{œ���F	SG(\�0\�\�ӷٽ���e\�|�^SK�\�\�\�!\��BG�\\p\�Xh\�\�=�\���G\��/i1\'\�-)\�J\�\�\"�*9�\�F\�Y|1�B\�j�M=#-@Q\'�KP�P�*Mm\�T?�B{\�\����9N͈\�B=B^\rFP\�=H�\�\�\�bP,գ��r�Op|DJi\�~-\n�O\r5N,No���\�!E것����� u\�\��\�BO\�$\�����K�\rؿ@\�E�hXp��@ľ\�K\�?�\�\�Ŧ,����.\\�JCX�e�K\�椴\�Q}�J��i&D�\�a ]���Z�v�\�\�$\�0�0PJ\�#�Q\�~��i�AFb�F`\�VH\0?�R�\�\��B�)ZT4<���\�	��\�\�X\�IU(�Fа\�cF�.ha\�\�\Z\�w9RH*\�˶�\��RՔ��`\�\"��\�XP�\�lrf�֧,r\�zeي�\�\�\0L�\0ȒR\�\�\�%>`s~��\�E\0�ur�r_ru�Iw�X�j̠^��J��;S\�üQUNF\�}N\�N\�\�D%�2\�!)I%�\�m����+�3p\�t\�\�qAk� �\�Xr*�\�\�G��\�r��(�P\Z0�\�����\�7OΑ`�Z�AR%�@����Q\n/�^��\�\�#�<9V�\0@\�X�C�j_�=\�s��ӥ��#��M܁h/\rf`�}\�gB\�.g�\0�׮\�h\�|��j�R��I���A\�k�(XR��ֺ\�\�l\�\� $��?�\���]�I�3W�	&\�%�\�\�pD��@\rh���Xd\��	m\�P�z\�:�\�M*\�\rB�\�\�SxW5~\�	eE,��tTF[�	\'�D��&w�)b�\�êt\�H%^\�#4/\�\��D���U�\�\�\"\�;�(`\�*E+ٹI\�ᄌ2`�\�\�Y���qe]�#y�DB\�D\�\�Gxl(5x!C(�j״�\ZYrԏ#\�s]G�_=�\�<\�i�uqMB���\�a�F\�?�^�}9�O\�\�)���as��>c}@:[hԬZ�A\�?��\�\�L\�-�\�W�\�d�C\�\�(�0\�\0Hu�Y�T��	o_���`�J���*-\�} ف\�c��\�J>D�w!2�\'1%oP]a=ڞ��IE�>�F&6���QO\\\�zt`H@\����Y\rB��~�a�\�\�X\�A)p�y	})�\�\�\n�\�\\�uʚ��{��8�1]�6\��u:�%+/2r�R�$)\��\�\r�\�)d�B@%A\�aȦ]\�^¬(�I&ǚ\�[3�!\�e��Y�R@v:޽m`�\�-j\0�g�a,,�:4M�\n�\\�	aD\0H}ʕu6����8�\0\�\�/�D\��\�*\�(�\�H}�Q\�\�bM\�&�\�		b\n�k�￠��:g��J\�+ݴv��\�x��@�� �R�-\�]4���H�_�h�͕�%)\0�\��\�źk\�q2A�\�s��8^(0�\Z�\�O��L��%\�\Z�\�äT�5~���\���\�\�w��\\�җ���R\�mh�\�d�/J\���\�\�f��1�\�BT�r\�\�f^\r�x��\�\�\rF%T`)XC�\�U�a��N�\�a�xD�Ĺ�`)��b\�r\Z���Rj\�ɿ��\�!�rIn��Au1��U�V��Im��\���N`�\�q�!AQp\��4%��\�\\�>�\�O\�-*KV�	8�\�\�z�\�\�pU�r����\�\�)�oה/�7�ÔԚD�\�JD�a99h�%\�&�^+�\�\�I�97Cͽ�\�,\�+�0׋N\n&�\�Q.Lj:�C!\�5�O�\'�h�\�Q\���DŴO\�\ZT\�\n���E\�(K\�ֽ;t�Fa�Q��\�Q�:W��+�F	\�P?]H�5�h\n�1,��h?��Fӊo�_`K���j���)�\�\'�Հ\�ȚX�\�]\���2�Z`�\�P|)}\�\0���<\��A��.�K\�\��\�u\�0��Y5H][�o\�̠H\�hk���\�\�C,\�ok<-�\�R�\n�\�K��^\n�r+�J\�=�4�LM\�72�p���S�\�^7�I+r�T�ۏZ|h\�X�j(s7�9\\ \�@+�\�\�Qq�9J���cC\03r�O\�����f*d�^�\�S� fK)KJS��^\rE\�I\����0\�t�\n\r�l��;\��Lē�s�71,\��Wˡ`����<P%�B\�?x\��l�eA����V\�\�aRv�,\"�����T\�\���\�PAHc��Tbg�\��b��\Z*9��PHS�^J\�08�LMTY��`փg\0��aL�QŻ\��ʓ@\�/Xz/C�R\��(�\\�10�G)\��@���\Z>��+\�!<�� �m`\�\�\'*\�qC\�~>pb�\n�\\)NR,(\�\�\�\�\n�\�\�$,T\�\�FԖ�G��\�\�ѓ\�A�$�^#ù�\'�\�\�\�X��,D�����.��\n�X׊w\n\�\�\�Tw0��:�\�i��\� �OH\Z\�H\�dA�D����h\�H\�\�f\� \�A2e������P��\��\�Nw\��\�22&��\n�,9�\��J_vm\�#\"}AT�ݨ\�\rlKY$I�V221�\�i\r8�@��a�	燚��$43�dd(b$��(�\�q	a��dd8e+@{H\� R�\�22,$D���p�\�\�\�22&�\nĤe\�.\�r(\�Ȝ�5�\�b�:�9S���|Q!�5�H@JP�W1�5����>_&\�#2i�.\��22%��\�Q��a\�x�R��G�q\�\'\�AMxI�#\�F���\�## �\�','\"download.jpg\"',4),(2,'�\��\�\0JFIF\0\0\0\0\0\0�\�\0�\0	\Z\Z\Z\Z( %!1!%)+...383-7(-.+\n\n\n\r-%%----------------------------+-------------+-------��\0\0�\"\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0A\0\0\0\0!1AQ\"aq��2��#BRb�\��3r���\���\�CSc\��\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0*\0\0\0\0\0\0\0\0!1A\"Qa�#2q��\���\�\0\0\0?\0�`g�hʽ)\Z\�r���\� p&�ݲ�ӬK2J\�0IRu\"�(�\��M\�U<��sP3e�B�\�@\��B\�T�) �;U�:m��b��R\0N�\�\���i���!JI,�����\�\�^�&��pj�\r�*	\��\�8�e�wT�r�[�\�@�o1�@UqE��j���ЈaBҗtꞕ�m��G)ĺV5��\������(P�\��f#F\"\��4/�\Z��\��8T\�BT�\�	a�\�9�u�\rby�(*4���\�K���,�\�E</�+\�)X�O*��B�G\�w\�N!IRR]A$�gVVb+zi\�\�M\'\�\��y��.@c\�\nZa%2�$�b:� ��w	\0�Ӳ�/�))Zf$:]�\�HgK�}ܮ\�wOb�\�I\n��!¥��\�(Wj$�v%�\n��I�+\�!dډ�TG�_��~�*�Ѥ��I\\�<����X�!J��9I\�?�;yD8\�	}�]V���\�Pz~\���&-$8Lď\'oF0�ٴ�%@�PO]i\�Mj5��\�p	?���[\�/\"(ES31\������ce`�*V�����_�3�\�r\�\��`\���D?ʒ�G\�\�)ޢPS�\0R� �F�&R(�+ud	I\'�q֑%�0LH�P��%�\�<\�$�ĝT�\�;K>\��b���)(Ni���\0��S\�,�\�+%:��)O�R� �$�\Z�}Ao!H�$(��X?\�.3��yd������R�H\��\����`\�Ԇ��fKm�\�&vP\Z�ކ\�d\�Lt�\�\�\n��2d��\��\�J{�����9Ҳ�\r\�	FNC\�\�\�cP�)�%\�آ&&�q�L�xy\nV7�/	qx\�.\�\'\�i\�0�QԆ���F@\0^�셖%$\�\�v6P\�ZI9�\�e�)ر��ԠG2s\�\�̞��;W�k��p��\'Q��*\�&e$�*���\�J�UT*\�\�Tn@\�W\�I\�=�gԔ���z�\r\Z9\�H�3����\�ҽ70-	̡\�J4Q{u\�\�\�AIij4�����Kyl�I.\�\"�\�O�Ց{0\"�f(�fK�ɻ8A\��f�{�i\�R\0�{\�\�\�P!�N,t#j|\�	2\�b�SR��s�\�g}\�W�&\�\�gK斲v��\�T��nԁ\�JA d!��$y\�4\�G\��_\�\049�\�\���*\� ��\Z\�\�z��/`B�����n\���p`�r�NU�zG)gL�\�Ƅ��=K��\"T��9\�RlA\�	qT�\\V\�`\�s ZT�\�e�\� R�u�`\�,\�	bf���F�\�M�\Z\�\�bJ򨊔�*�}\�\0V��\Z�\�:�aq���)Kt�<�n`K�/P�\��JNT���\Z��B��褏Rv�W ��\�R[�\n~�W�\\q2��h%�`I\�%��3h���\�#��\r�\Z�i\�\��r�1jܵ���{\���`�O-2��:�*����\�W�y�jyO|\�?b֙A֛�\\7\�ZV�\�\�; F�,=,�$�Y�\�R=Yg\�2\ZIZ�\n\�\�M�$�>���;\�x5�̨\r�����>pF.c&Xw\�nX\�\�@LdJ\�=\0))b\0\'?wU%K=X[G0G��\�Z�[TQ�e\n�덥\�h3\�:�h�\�B�Ve!+Qc�Y�E y%\'�V\�\�\� �-rHq��3sjV��\�^\�\�R\�\� �ң�����r̥!�*����\�F��H����\�ܾ\Z\0��!J\�b�G\��\0,\"�\��@~\���>G+梁�4�gS�\�%�H�]Ô�v����\�lE�;�\��\���j\����2%\� jЏJ�Y��X>e\��YDX�K-��)�$f�!\�\�bj�49�@�%��\�&\�ů-��O�)!%�\0\�k\�\�)YU0���\�E\�(\�H\ZfA\�:����gh�S���`��g�cY\�fs\0^jQ\�G\\\����\0�F`w|�\�]%�\�1ZQh)\�+RAm��\���d���iQ\�@>E@s��3m,\��0\r\�h�)e=۱�T��/\���\�\�A|�\"��J��5\��Kup�\0e\'��b�\�!i����@\�N=\"\�t�2��W)���#\�FҔ�RФъB��[�\�\�b��_\0Vd�\�+�\0ޱ����L�7� 7W��IB\n2�	|��JP��\���\\\�x�\�\�$�jT_\�\�j\ZDx5 3�\��\�k���;\�s8�\�2j���+b����M��S1YU\�@S�Qb�\��\�\�Ò��y�2��f�J����, c\�f0*z�\���\0Ǩ�Oè�AE2�r�\'BUn�DN�C;\n\�!H)RT\�Xvua�P�|�\0����^	*H��\�>�Qf�K\Z]�\�\�\�\�b\�\�IRҦl�#3P�*\�\�Ac\�\�\�!F�A��&�\� ���\0Ձa\�(\�D\�\�r�j�\Z\Z\�II\�\�b�\�,�KX$�*Y�\�\�ϛ\�.+�S�r\�B�\�Rn\r�\�\�\\����}\�\�_\�3Dɼ\�)\�]I7J�@P\Z��c�9��$%	#�\0���b\���?��T�hA`�v�W>]��\��2AQ�����p��Z�`2�\�D�\��U\\�$\�S9�;,\0+vk\�\r\�\�4\�Vr�)@Ճm\�?c\n\�\0��(�Hg�K����R`\�\�@�@���rB�j��u��\���K��)�\Zd\�\�BWV`H�\�\�yҩ���KTVb���+\�+h\�\�\�O��K�+�\�˔�zԶ\�b\��.b\�\�%��I*3M|���4~	\'-L\�X,��YETK%�W�\'�^JIJX�@�X��\'*	\�$y\��)9ך\�\�#ĘM�\�\Z�4�DŁ\\\�΄��\��\��I�&\�a#�r�r\�\�\�\0`Vq�	����̅&Vk\n���\0\�e0��ቔ\0��*R�R�b:2uލ\�\�%J�	\�S,�\�3LQ>�S�=\"��wē�YR(�\�`|\�S}\��iA�\\�\�\�\�L���gd�\rl���2�\��\�\r9e�\�#��%�ھq�\�d��\0�\�8e��\�5#k�\�B,F\'*�\�x�\�N\"�\�\0IV�vf0��\�Kxx\�P�2�9zt�kn���J�-�U\�\�;G^7�hx\�\�\�\�### N��R�	�\�R4���DhZ\�! t(\0�#)/\�\�f\�Cl\�݂��#j`)#\�dy\n�\�Zd˖I\"Q\0\\���\0�\�+\�K�	�)�C\�OH�$(UKX\0_ѩ\�?�S-HK�l\Z�H�g�6\�\0��9H/\�\�����^ר\�(	uJ\�*�G�E�\�ad\�\�Sgb4?�1\'��<�Θ̲R�.Hg\rܴ\\���\0��\�_?P>c�\�\���k�����<�c\�\nfM��r[�9���5�pI��_D�ϙ�\�<I\�\�\�kv!\��\�z�U(�#��R\��\0�J#�9k8\0\�\�SJ�V�\�;�!�3]9�\�\�4\�R�]�(�ԋǟH\�\0\�b\�(`�H\�\�!}\�i���M���n\��)���I!��\�6/\��\�8�\0C��yI�Uf/�?�1&��}�I�Ñ`\0\0��\0��\�v7A;Z\�,�R���HʳQ�~Sve\'x\�\�e8^W(r�\�L2\�\�-+A�%#\�CO���\�$5�r�nA{[0�\\<�\�Pg�3E�A/��\�J��7�\�%\�Z�J\�ϣ fm�v�N�l�\���\��V̪�\Z$&�v=&N\�f��r(�TM]�\Z}\�u\Z_2\�\�a��A�6\��?^d\�-5C�94� WR�zp\��U*K\�@\�0�Ϻy�-�\�q\�S�A\�%�H!w4�1_\�N\�5j Vԣ�$���Ϥ5Z	QR��\��4ϢRGRM\Z&�X<)RB�\�f�JjbJ{;�(Ax\�\'�Y/R�$W3�]�$y��\"R�\�I�JQ>޵>Nzf\�\nhg��Z�\�\�\�V\�Ox���1*\�h�s�뚬mB\�tn\0�\r72�\�씒\0�̯X\�I+J%��,REBh�\rl\�p>\�H���\�KQ\0�P�?$\�\�\�\�\0�H�@��w�R*��-d���T�����<���k�\� ~�\�,�B�u\0ڹ\����N[�$�\��\�\�d�T\�\�T�\�\�.k5M\�M�صӰ�7�<@�vD���\�$���\��\�8^Aǐ��\�\r\0y\�J�c��^�\�\�o�\"h\���9\�~\�xd�\�ǔ֊�\�f7�x\�l�FѲX\�5�1� ffq��\n>`W\�?�=\�KB�z�ZTT���Z\�]ư��)b2>�J��j\Z��[8f)\�ΐ	K�\�C|\�p��2X��2�v*��[� \�W06+�+&Iy�\���\�ޖ�o����!�\�0	~�r�j\�x\�hZR�Y>�9�7p\\P\�G>q%wĐ��Jd/�J	r\0bK,�T\�sq�V\"Br�B�\Z�i\�\��\n\�M#�̘TP�T�I ��� R�Q��D<vz�\�p�O��\�\�\r�\�鸍p�O/|.�W\n\�_���<�u�\�p\�1qQ�\�\�u�Zg\��4�`4\�&���@�\���_\�ǣ�yc\�\�\�L�D\0�=^\�B�\\�\�\�W�\�?�\0�\n_1)�\r\��_�\�!S\�g\�X>\'�X\�x\�鷯2�m�?\��V�B;Q\�W2\r	\�>��\�f~ҕ6b��+Z��ňp355�6�\0�8,�2\\\�0K.P+J\�X\'5�ޑ[�M��̔4\�K\�I)X\�,|����(%�,�\�?\�\�:t&*3(by3M�\�f\�2�χc�$бNt���2BYor+\�\\M�\��t�\�0p{�T�X���+��J?H���d���\�ª:��b�����g�FČ\��T�O\�9\�\�\n�̕\� T\"Z\Z�V�Ւ\�\�`L@Np�L�$\0/�\rJ�_\�ˈJ�UL/�>\�r�\r4�F\�G:q�Սh�:�w\�Zz�E�c�*d-WT\�P/�Q��$v�\�\�*\�\�\�`�\��D\�M(\�%\�,>\�g0�N��\�j\�\�%JB\\\�B�\�!�g��\�d�,&\� \n2\�\�L\�l\�\�\�M\�\�\0\Z�h�|�\�	�\�RE�ႛ��\0QbR3(�K��c�\�k\\��LM&c\�f)܊�*:�$UV��̐MÄ\n72T��XR\�nHa��p�\Zz&8(��\�\�)YH\�\�\�Pb|B\\�$\��#B\n\rN\�| \�Xp$�wy�K{����$ݡ�\��l�������\�ʗM\�&��\�\�\�*s\�z^��XZ����Ē\�\�(�\� \��4\�1t�Xx�!�@)|K\��\�IM>\�T��5\��h @�1��#ɱ�Fb\�*���\�:zjH\�/\�Q���/H��UÁ\�#\�|^a�sE�LK,7�Dφ��q>U\Z�\0cҽ��a\nu%b(�\���\�:�\�i���ғ\Zh�_%\�\'))\�\�Y��I?\�d͙%\�R�+jg����S�\� )\�\�J\�;l@\�P\�a�\�ʘ~�+U�eͣ,(x\�X�\���)7HU\�P�\nW�u�\"y%$\�aIp9NS�(�\�$Z�I3%\�JH�(�RRu���\�\�1\��Bү�F`�\�~�>Q�p�T�\�z�R@z	z_\�:\\�\�Ɨ��{�\��t�\�SA���дL@ ���	)]�\�\\J�(�!TT���\�#�Թ�9�gh%\�pl\�R�\�\0�3$�\�f) ǷXP���L×1�z\�\'\��E,&)\�&(%`Тh!]��u0V;H\0A\�W\�m�]SO��\�gw;U+\�YIV\�-i!��A�>d~�O\��d�U�\��z~��G���$�)\n��������R%���fg���}w�O��\�Xo�2X\\�\�$�:\�\rF��Ћ�e�Xm\�I�H\�\�ќ\0\�\�\�*\�\�\�\0@9N��\�\��{\�;q��9z�\��),&b��-J6/�jP.\���j,\�\�⒙\�J꒰C\�.\�So\�=VT��~f�\���.mܵZ<_�\�ȴ-�*Ү�K�\�=;�\�NB\�,�u�宥�lC��\�\��d8Rt\n�{�\�R��2�	4�\�Ns�f\�oɜ�kH�N�̚r�Js�)JG\�\0I5`�\�9D�\0�\�Af<�:\�C\�&R	\"i9!e �0\�G�yϓ\�!\���֦jT��x��f*u\���%D|H��2T��!ӟﭨ����\�Cm ;�\���\�K�9^���l�]��D�3=R\0�\\��\0MJ��\�f�\"�*��e�IQ��/FB^6�	)*��\�AԚJA\�\�.mo|�,t\�9\�AH)*g<��\�\�\���F�(R\�S�Z\�JTH?\�M��\'\"�������s#1 Y�\n�\�&qR]\�\�)@�\�\�-��\�%�o Ty>d\�*S���k¹u\�>�o#oF�X#�-\�\Z3�\�9e\�-Q}�ĩo2g�,4��7�9\0�h׵\��,�_�\0a\�MI	I\���#\�\�x�\�>�w�\�\�\�7��_�2�`I\��Z�MD_\��_J\�$�0��\�\�Չ�/>s>��>\��h��\�4�=�\'(q\n��)&<\�{�7��^\'1* ,�\�x�\�1jU\�=��\r�f�ZP�\�|&�Ls��#���\�O���\�,4\�pT\�n���ݡ<�eS�t9�\�	�b�?f=\��RÅ\�(P.\�\�a�6⎝�R&\"���\0]\�t\��\�$\�H!��\ZeX-�)X�^p�\�N]1d�kTA#\��\�pS\�\�J��̑EuRlvq\�7��,:BV���e\���cG�bH�(Z\r�����bz��T��\\�D�gHF�븈\�s��\�l��S\0��ԇd�\'38f%:���gΒ��\Zl��\n��VX�)��۳Ƅ\�\�HR҉��\�YYMn\�C\�l5\�\�j\�E\�0eXI�.�v.#Ls��N|x�Md}\'��\nT\�]\'0 ܿw��\�Q�VB����\���|C����yG)4�K\�j�=a7�1)RR\'��\��\\hI���E�\n�\�\�+/���L\�^\�\��C/TLǠ\0\�݈��\�*T\�b�)x��rR*\n����4�7Qo˳����9)M\0R�Sr�\0F[\�\�\'@��@\��2�\�+.M�i\�\�ӏ��9�J\�\�\��D�܁\�W&����\�\�\�f)\�;&3�PS)6�1�\�:O��\�\�qm\�\�ʔ��X���\�z6\�\�\�d�U4\��?\�\�K�\�\��\�\�4#%�8,qZQ-�eSZJ6��-j�\\I\\\��A\�{��\�7�\���âY,�P�@���|\�-mo\Z\\���.j\�?j\�\�׹���f��d\�v$5s1\Z�Ul��\�50T����\�\��\�7`َ�4ᐊ��`l\�~���=\�\� \�F��m��.iNT��\Z\��	��?\�A\nâI��U��\�\0u�\�X�ܵ�3 qFk%�\�z�\�\�і�H+4rj���t�\�G;�f�t֮��\���\0�7�]\'��P�\�)d\�A����\r\�RTh\�H%��\�\r[泚=�\�Wɦ����\�z86��w�8ĲT��\�,	Ѷ�W�\�űBF�\���4�<��i$\"bz<�\0q�)\n��\�(�ub]�^q�І�>\���\'6\�\�l��>\�,��\�\�6�R��T\\I\�\�D<Vx@sx�I\�c7y��a����,	K�3�r~d\�Å^<\�\�\�<gڼ+\�^)e�{��\\$e$�x\�K,�\�\�\�p�Q�F\Z��t��j�\0���u�0\�iz����uo�h\�I5@\�Q�,b%I!��\0/��\�5\nt�^�V���vK�҆�ś�;\�t)I~d��\�\Za�e)\�\nse��=��\���ܧ0ؕ$�)A�b�\�\n�2T�\�V`3$��?�1[�c֒阶�M�����Y�w̎I�B�\�.��5JN��c<���)d�4�J������?\�^%����)j]��#5\n��uN��K���G*$��/%��e�pʗ�>�\�B�Gr2���آR���\�E�����h\�\�-*XJ�C�{�u�����l�ϚZV\�B2�(}�Ŗ�(\�O���(��&$\"嚹�ZZԤ �\\\�B�\�J29\�RB�\�=\�R\0h�7a�{,�֥f9��\�1\�z�}Xg\�e�h !+]�H5S����Ɣ\"\�+!�D2Ajdd��=\�N�[�jF7%֩%�IH\n�\�(k��EriE*p�M�?(�q\����Tb,�\�\�\�� �\�b\�5�V�_h\�\�R�R߮�ׄ\��\�� �z����\�:��\�\�H��\�;I)����\�(-S��(b_\�)$��\��^e�_;z7s�T�� ܶ�~Q.^��5\�Z�at�ۇ\�9�3�\r��a\�\Z�Z\n�75�E3��]\��?�=B���t��h\�\�Kwk\r}o�%%�Q܏� :{^J\�# ��[��`\�̗�\���\�~9�s�.����\\\���J��	Z3fw\�(G�\�ܵMK\�jT\����RI!�\�c{^�V\\-\�J�jP;$�T���x�\�*P�vp\�S\Z�\\\Z\��1:\�r%\��u�&^%7\�C��\�T8\�\��<\�\�\�+���t�@\�ZoF������b���\����N\����Ƨ�T�P\�=N�l���\�,����\�%�2���n\'\�La\���K�\�\�{œ���F	SG(\�0\�\�ӷٽ���e\�|�^SK�\�\�\�!\��BG�\\p\�Xh\�\�=�\���G\��/i1\'\�-)\�J\�\�\"�*9�\�F\�Y|1�B\�j�M=#-@Q\'�KP�P�*Mm\�T?�B{\�\����9N͈\�B=B^\rFP\�=H�\�\�\�bP,գ��r�Op|DJi\�~-\n�O\r5N,No���\�!E것����� u\�\��\�BO\�$\�����K�\rؿ@\�E�hXp��@ľ\�K\�?�\�\�Ŧ,����.\\�JCX�e�K\�椴\�Q}�J��i&D�\�a ]���Z�v�\�\�$\�0�0PJ\�#�Q\�~��i�AFb�F`\�VH\0?�R�\�\��B�)ZT4<���\�	��\�\�X\�IU(�Fа\�cF�.ha\�\�\Z\�w9RH*\�˶�\��RՔ��`\�\"��\�XP�\�lrf�֧,r\�zeي�\�\�\0L�\0ȒR\�\�\�%>`s~��\�E\0�ur�r_ru�Iw�X�j̠^��J��;S\�üQUNF\�}N\�N\�\�D%�2\�!)I%�\�m����+�3p\�t\�\�qAk� �\�Xr*�\�\�G��\�r��(�P\Z0�\�����\�7OΑ`�Z�AR%�@����Q\n/�^��\�\�#�<9V�\0@\�X�C�j_�=\�s��ӥ��#��M܁h/\rf`�}\�gB\�.g�\0�׮\�h\�|��j�R��I���A\�k�(XR��ֺ\�\�l\�\� $��?�\���]�I�3W�	&\�%�\�\�pD��@\rh���Xd\��	m\�P�z\�:�\�M*\�\rB�\�\�SxW5~\�	eE,��tTF[�	\'�D��&w�)b�\�êt\�H%^\�#4/\�\��D���U�\�\�\"\�;�(`\�*E+ٹI\�ᄌ2`�\�\�Y���qe]�#y�DB\�D\�\�Gxl(5x!C(�j״�\ZYrԏ#\�s]G�_=�\�<\�i�uqMB���\�a�F\�?�^�}9�O\�\�)���as��>c}@:[hԬZ�A\�?��\�\�L\�-�\�W�\�d�C\�\�(�0\�\0Hu�Y�T��	o_���`�J���*-\�} ف\�c��\�J>D�w!2�\'1%oP]a=ڞ��IE�>�F&6���QO\\\�zt`H@\����Y\rB��~�a�\�\�X\�A)p�y	})�\�\�\n�\�\\�uʚ��{��8�1]�6\��u:�%+/2r�R�$)\��\�\r�\�)d�B@%A\�aȦ]\�^¬(�I&ǚ\�[3�!\�e��Y�R@v:޽m`�\�-j\0�g�a,,�:4M�\n�\\�	aD\0H}ʕu6����8�\0\�\�/�D\��\�*\�(�\�H}�Q\�\�bM\�&�\�		b\n�k�￠��:g��J\�+ݴv��\�x��@�� �R�-\�]4���H�_�h�͕�%)\0�\��\�źk\�q2A�\�s��8^(0�\Z�\�O��L��%\�\Z�\�äT�5~���\���\�\�w��\\�җ���R\�mh�\�d�/J\���\�\�f��1�\�BT�r\�\�f^\r�x��\�\�\rF%T`)XC�\�U�a��N�\�a�xD�Ĺ�`)��b\�r\Z���Rj\�ɿ��\�!�rIn��Au1��U�V��Im��\���N`�\�q�!AQp\��4%��\�\\�>�\�O\�-*KV�	8�\�\�z�\�\�pU�r����\�\�)�oה/�7�ÔԚD�\�JD�a99h�%\�&�^+�\�\�I�97Cͽ�\�,\�+�0׋N\n&�\�Q.Lj:�C!\�5�O�\'�h�\�Q\���DŴO\�\ZT\�\n���E\�(K\�ֽ;t�Fa�Q��\�Q�:W��+�F	\�P?]H�5�h\n�1,��h?��Fӊo�_`K���j���)�\�\'�Հ\�ȚX�\�]\���2�Z`�\�P|)}\�\0���<\��A��.�K\�\��\�u\�0��Y5H][�o\�̠H\�hk���\�\�C,\�ok<-�\�R�\n�\�K��^\n�r+�J\�=�4�LM\�72�p���S�\�^7�I+r�T�ۏZ|h\�X�j(s7�9\\ \�@+�\�\�Qq�9J���cC\03r�O\�����f*d�^�\�S� fK)KJS��^\rE\�I\����0\�t�\n\r�l��;\��Lē�s�71,\��Wˡ`����<P%�B\�?x\��l�eA����V\�\�aRv�,\"�����T\�\���\�PAHc��Tbg�\��b��\Z*9��PHS�^J\�08�LMTY��`փg\0��aL�QŻ\��ʓ@\�/Xz/C�R\��(�\\�10�G)\��@���\Z>��+\�!<�� �m`\�\�\'*\�qC\�~>pb�\n�\\)NR,(\�\�\�\�\n�\�\�$,T\�\�FԖ�G��\�\�ѓ\�A�$�^#ù�\'�\�\�\�X��,D�����.��\n�X׊w\n\�\�\�Tw0��:�\�i��\� �OH\Z\�H\�dA�D����h\�H\�\�f\� \�A2e������P��\��\�Nw\��\�22&��\n�,9�\��J_vm\�#\"}AT�ݨ\�\rlKY$I�V221�\�i\r8�@��a�	燚��$43�dd(b$��(�\�q	a��dd8e+@{H\� R�\�22,$D���p�\�\�\�22&�\nĤe\�.\�r(\�Ȝ�5�\�b�:�9S���|Q!�5�H@JP�W1�5����>_&\�#2i�.\��22%��\�Q��a\�x�R��G�q\�\'\�AMxI�#\�F���\�## �\�','\"download.jpg\"',4);
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
