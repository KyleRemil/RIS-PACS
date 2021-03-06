-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2018 at 07:53 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `risdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `modalityimage`
--

CREATE TABLE `modalityimage` (
  `modalityImageID` int(11) NOT NULL,
  `modalityImageBlob` longblob,
  `modalityImageName` varchar(45) DEFAULT NULL,
  `procedure_procedureId` int(11) NOT NULL,
  `modalityImageNotes` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modalityimage`
--

INSERT INTO `modalityimage` (`modalityImageID`, `modalityImageBlob`, `modalityImageName`, `procedure_procedureId`, `modalityImageNotes`) VALUES
(2, 0xffd8ffe000104a46494600010100000100010000ffdb00840009060713121215121212151615151716171515171715171515151815161715171717181d2820181a251d151521312125292b2e2e2e171f3338332c37282d2e2b010a0a0a0e0d0e171010172d1d1d1d2d2d2d2b2b2b2b2b2d2b2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2b2b2d2d372d2d2b2d2d2d2b2d2b2bffc000110800e500dc03012200021101031101ffc4001c0000010501010100000000000000000000010002030405060708ffc40039100001030203050605040203000301000001000211032104314105125161710613228191a132b1c1d1f0074252e114f115627243829223ffc4001801010101010100000000000000000000000100020304ffc4001f1101010101010101000301010000000000000111022131123241510361ffda000c03010002110311003f00f0e49244288248a483848a01151848a08a9a245256301827d67b69d369739c6004146ca0e20902cdb93a051c2f68ecf764a8d1a269d46ef97b40a926049072e4b8eeda761ce19bdfd097d13623f7b09c83a34e69c12b8884611210435848229291b092720a186248a496301248a4a584922929120894148924925204524940914115128452494d48309248a1a2017acfe9af673bba3dfbdbe3a97122ed669e66e57996c6c2f7b5e952fe7518df22e12be906e183181a2d6f410a150d368c8a7bf0cd7b4b1c258f1047d7a8b1513c5d4b86aba2355e5e0ddb4d867098a7d3fda4cb3ff272f91580bd8bf58f656fd0a789636f4ddb9508fe27e127cede6bc7a1279f804209f585cf5298a24842720548d4a11017a3f603b03df0188c53629912ca79178b10e3c1a7829870fb3f61e22b9029d2719d60c471516d4c03a83fbb7c6f800b80d2721e8be8fa78714806b1ad6b6c2001efe8be75ed0633bfc4d6aa0407d47103809b24339249252228225050244208a94049245489108221461228c2086852491534e87f4f993b430e0ff227d18e23dc2f7fc6d4b81c82f12fd2ac36f6337cfec61f7b7dd7ac6d2c4c6e99d483f4468cf535472631c644289b59b693e6b49e1a1b021d391b7ba24d6edc49570adc452a941f9546969ea458f9182be75db7b16a616b3e8d407798e23ac189e86257d0f84abf01e13e8002aaf693b374717b95dc25ed6869e6049f5b8f45a8e7b975f39571e27753f32a2dd5ea3b4bf4cea54a84d22034b819718b12778750a2c7fe95620171616b87ed00c7ee8d7919f2561fd4799c22d6cd9752eec3e21b3bcc2d76f100111206bf2f55d77627f4f26a6fe23269b378819fd3d54b6287e9bf614d42dc5625b14c5e9b0fff0021fe47feb9f55ebb4a92b068810008000006800c80e49eeb0533ac1ed4627b8c356abfc29bc8eb103dc85f353dcbdebf57f125980735a637dcc698e12491ecbc0ca4124822a045048a0a145294124a108a4114350914114350524822a689208a73428e3befd386ee537bef25ed03dbeebb6ed0d60d68bded6e66ff0022b9eec0ecf7328b0b9a46f38b849178198e5d55bed6cef8703e5f5fce0b3d7838bbd35f06e96033e4aeb2a9eec39a4cb7dc7e0b1593b2ddff00f3006a3afb6bd15ec197325aed32be873f4247ba61eeb5998805bbcdb489ff00ed9d95ba58981cb3e9c7e6163d1ab12206723edd2e158654bc697041d446439fd91ae71b0cae2071cbdffb5a0c74b7e4b9bc73086b1ed32d8f7ceeb7f030e635cdc894cd170f1443bc2e00f509c70fb9f0e498f710e1cd5e63641255f4291e2a10f939981e8ad56a76e0166e21dfb5badf492b50cf5e6dfae5b4a194280fde5cf3c61b005fa95e3cbd47f59fbbefe8921c5c29eec03005c9e041cd79a9eecff21ccc11ed05342ba4a57d18b8208e23ea330a24224114122924924a07849208acba42452494d10452494d60ab5b3e8efd4637f939a3d4aac15bd9ae02a309130e062626ea57e3dae900dee837263634fa2cfdb581756f8481cce92acd0a8086902040b67eeaeb0a3bf6b8f1714366e14d16064931af357a9309e7f351d4523313161a2c37ba91d4ccc44c8857a9d5a745b352fc04ded7d2e9bb36ab5cef11227458bfa89d9da9bae14086b6aeef88921b001de612321af392ba71ccae7df591d161b6e612b034492c2600def86749e17e319c2db781458d6372100745e1182c33e8611952a3e1eeab0ca2411518c1bb24ff00d5dc392f52d87b57bdc378cf8d800be71fb4ad75ce5679bb363ae678883f9942d0348ee980b0f64d69201d47cbeaac76af6c9c361f7da6249974496b4364c0e3a79a39e74deb172ad3d1626d22e69f0b7a9c80136eab17b0fdb86e34b9a1ee9044b5f1307232343d7c975f8ec2ef055e6c3cf4f1ff00d67c234ff8ef22090e93ced6bd8f490579256a45a6ff00ed7a8feb7e366a51a008863493ccbbfd2f2eef09106fc392699f0c0e848948841042104e414ce0248a495872282210e90524914344114824a24158c21f10cbcf255d3e93a082a2f5fd815268b0974d865a2d5ef2cb95ec862deea7bae320652ba71c966b8ff6654aba0ccabb84a369cd54a74db3c55bff002dad5937ff001669b04c831c96d50c534b3bba80381b6eba083e45732cc66f1f87d14ccdf71bb491d0fb1d132abfe54fb4766e1ccf75876175ee0659ac8c1e1df4ddbce06759b40bae85ae74434869361a9f48f74f66183dbbaf248208de2d3bc26c25dc73f65afaccf0cd99b49ae76e83273eb3c7d96e6d6c10c5520dd2f6395c4106392e470bb1ab616b870735f44cfc4097831e18392eaf65179a8d744347c5cc1d215cf765c75ffa7fc39fceeb97d9bd937e1772952a37de74550c006e39c1c7bca80f8a22064617a2541102784f54c0419dd247151819aebd75af373cfe63cb3f59760efb4d66b6e22f3f4ccaf127b3773cf870eabdeff5671a053237a94c400f92e9ff00a8695e0550dcde79a3a6f8f86ca08c20b2d014924940924502a47221353daa6a0909c0244a40a1d0213b75252b6104cdc4d2af53014159a03949bfd97aee6c5e2f6ca4fd8735e978676f01d064bcf3b335986039a267e29891c392f41c2b6223805572ebeac77080c3ab945a9cea3c2cb154aa5403a6fed92bc19c51a6c8d148ea6084c1d25c19395e34889ea55f7f80499bcde78c4d965096e44e9e416861981f7738b8e93a2d4aa062712f34c96b0bb23737806f0355a1b2f14d7b65a4415728e080c8da155a7b3f72ab8b4785d7b71d569bbff4979c68e1ed29a710034f244ae5fb63b498ca7b9bd01df1646dcc1d3a5f925c1e5ffaa1b4dfde11151bd47848ebf70bcf8e29dc47ff0096fd9745b6aad5638ee3de0493120b2a0cc968bb77b53a917ce671855655b3da18f393d82c4f07332bf111d0aab73c55ef81f898df2f09f64d7341c8f91fbffa4ab512de10722322a34122d84119414a9208a0a14e0904d051054653ca4100529437a72707264a2a6b528ac55dc1e15ef21db8e70d7774eb0aae0992e169d17a6764f631241696c6b77077d4264d67aeb173b35b329c6f40e246808e20e47a2d173fc563e4b6b10d68018dd07aacbff05d326caedcb9f7d5bc35557a9aad84c39c8faad0a78721736cd34e516d0e0afd2c32b943009919d631c34e8ade030641c96d3703c948dc2c2d6633a14cc5917548096eae4bb63b72a5063835ae062c60c1f30b4303b63dae6611862e4cc410633d26578af68f6e3ebb7be63cc490e02d13988cf320f4781a2a1b776f57ace22a65262667d444f9acfc13e5b519a16178ff00d36ff29f40ad6e4c3b038f23c0e3e126d3683d741f237e33163a9ee99191f62330a9957a9bc39bbae31a4f38f09f600f242d5765722750731a14c7b632cb44d29291208a0a429248290229a9ca10e0884d94a54d69e94a6ab9b3b06eaae01a3adc0435ad7ec9e19cea821a2359122389057b36cca618c9887401627d8103d5617643b3cea6c97069b6409f5f0985d0d68cbee16be472eae9d419bc7207caff00dad4c3e148cc48e798f55978611909f35bd84c48220c858f0fc1a3816eb6f3b7ba18873196024f2569d44e6d323508b089b890828b0549c4c911c96bd36428a9102eac35d695a8cd4ad29b52e807850d6adc156a90e2154da983656a6e6bdad30241201844b8b94f41ba1d53cd3678f9d7f50364b693cba9d27117f11dd6c746b0091d570d873ba49e008f505bf55ee9fa9dd9b7eebaab2e04c8dd19116873208f425784d706483c4faa7a52f88dc14910c9e2e0079033f30a244b90812492522492494490452520dd4e0d53b44e8a56533c11adce22a6e14770abbdd9fe2a7c3e1cbc801aada7f3106cdd9c6ab80ca6d316fcf55eb3d8cec9ba88077839a6f3691d47f68762bb36c003dc2f99c88f50badc6e2031b0db05b9327ae3d75b720626bb5a20594545dbdf1663d9653ea493aa63f110419fbac5eb54e5d0d0a2af329def65cf6136811707cb8fbad11b5c8f89a167c6b2ba1a3508100cfd158b116c961e171ed3c95b6e244cef47e704a699b22fa861506e3a4daf1ee8d6c6c662158b56b70f1b29d8d0b11bb48486fe72528c6f2578bd6d1780932a2ce657253c56299461db73022ab0e8488989e9a2f9d7b69d9c142b38cc492480d31337322c3a2fa3455041075b2f22fd4cd94e7124da261c7417c813f25bfb04b95e5070e10ee4265675ece279f1518a861672bb5ea44fdd040d30a26d44e0f45867529fb811dc09a1c139d510d1c183825dd7256f0551edf13581d19c891e69edaa4c925a09390c8291f4e81cede59261781726788e0ba9d9db4e8bddba6941220c45fca15bc5f66f0b546f34165afbb2239c2359fae1cbe660f45b5d9fa2e7b8491e7f70ae9ec951c9d53843859de6322b5b666c0a743279def9fba7f519caeb68e2bbaa61baf554ab62893993eab9fc7e32a36e4c8d10c2768196df91c73f555ef58fc58dc7553d1461d2ebe9f9eaa4151ae12d333c12a14e330852a7a4de533f4d2558cedf814395ca25d68f6f743516995e027b7172551a8e9cb4fe9474e912505d46cbaa01b9fbadd2f6b84100f92e5b635021d7c9750ca608e056a566c438ac335addf1020f9c9e6abd000fe64ae6d025b48cde33b58fd954c1b491bc444e89e972b74c291d4d34279ac00baa0aacf31aae57b7bb2df89a5e0701a196974f21e21eeb6f6aed06b7222745c7d7ed687134cf1dd363ede6b53a917e6d79462fb355dae23c26f983f90abffc056e03d57a762b0bde383a499d74cb5d65329ec9a7f1389836fce7f659fdc6bf0f356ec1abcbd5386c0abc5abafc7ecd6b5f1fe43803047845a62df5516130f44b887567be34023cedd13abf38e5c6c0a9fc9a9c360bf5785d956d8345e0ba9e22a8c8c784c652098e6b36b6c62cf1778e7b786ba48b234e30bfe22a011dedb85d33fe15dfcd74aed9949c01ef2a0e56cb8dbc955ad806b0eeb5ae70cc1dee29d18a183a6cde05b561d320e707adacb7311b4bbb23bc13c481178cf316f55c78aa69d47362d70e1a11c47cd69631e5f4fe20e81226241e4b3546ed2dbf45ce2226388bc4f119ad3a18fef0585ad62dfcb2f30a188730c8b1f75d36ceda2f70820f1045883e562b3d738d73d6b736dc3d84080e8b4647d570aec6bda488f9aea5f89304dc9d5a4091ce469d572db51d3509cb97f49e076dcd87da9eefc2f06395d75b83ed3517e4f1e608f4b2f3ca141ae19410ab9a0f19484ec67f2f63a58a06e0ff0069eca932bcab07b7ead1b4c8b472110ba7d85da7df30fc8ebe7f6560f8ec37e2eaf6cf3263d3c894766318f6d8892a5c2d3eeaa89f84fb5a2518d6b7aae0669ef36cf68911af109bb2b68efd8fc5f31c55fc1e2411e8b268605d4f13ff00532e69e47307a15a1ae8698e3f81658ace73a059a0ad3aa3d23fddd64e0aa871b1d7d7a268e5a429985c8f6abb46cc3ef35ce1205f905d176876bb70d477b3790775b693909e8be75ed6ed3ab55e7bc27391a5fcee7cd5835a3b4bb585cf2e04e60f0e8aaec7c67f915cf786eed233f3f4f45cbdce9256b6c2690e0ed3f2eb364e6373abd57a9615fe0860b802d3fc6dea328521c46f31c4c5be21c4653eab951b48b0b5ed76e9bc9394e53f75352c79702091244cda0fdbaf15cbebb5f189b4f1c5b5333630398103d3356a8b98e7b660c8249d43b43d565e330e5de207289b0933001316cc1fc0a7d85877349de2728f5fa5974bf1ca7d743be4025d191339189b8e6b3f11b447781ad30642d0a2d0f1bb22f6f593fd2e26bbf76a58e4ecf983759e66b5d5c75ae708e17f494d0c9d0aaf86f84974fc227dc8f9858afdac01201364494db031787df874dc663537b14eff001cb986d0472fa2adfe41654dd3ac0fb2d4208b81235e2d29f629257318a6383bc59ad5d8f893bb1eda7fb4dc5ecd738ef037e0675e128e0f005b9dbcad6cc1e6b76cb18e659d2ebf18f9c8cdedd382c2c483bd33275fcd5745dd7581afe64b3b6951a67c40dc5ba959e2fa7b9e0602b6f5bd55ec4306e6f0e371af2b2a5b21c0e62fc24491c82d5acc1a647d27872459e9e7e39cc68e011c06f36f1d14cc66f558048991216ee1f08d0d8700223cc1b485ab7263326dd5cecc7694d17eebcc871f30bd336fed0a2da05dbe03c0de68d48b4db84b87aaf09c4d373aa6e8b5c0f75adb2f79af3be4f39336e3f55adc8cd9b5eb5d9fed0b6ac1ca209074cffa5b3ff2adc4562299b5301b3fc8982ef2caebc4f0f8eddd489398d40173d2e15dc1ed9a946a0a98771139ea08d4107cae8fd2fc57b66d3c7f7544bdc40dd169d572db03b5f87dd05d2208deff00ada6e33b6565e69b7fb4f8ac4d9ee30d02c2cdf4f358b857bb3713fd68136c93c5ccb7ebd1bb6dda80fadde34cb0001a2e385ec6faae1b6b015a5c5b2e39119acbc46d226c2def3c1556e2de322567f36fad7ea4f1b34f0cda6d04365c4723f3514ba48d73b6592a3471ee9bdd4b88ad00904827e45165d6a599a971f8d3bb1ae91e92ac6c5c5b800c6dcded238198e2b16882f3aff4b7f05bad870b102c471d01f75abe4c665dbad6d9f5c16904664d8c5a3c5f32137691dda6e2dd440e208326de4b229ed61de021b049989101c73f75a8dc707c8dd16981caff007216730eb2e9ed37ee16b75004e594e7c330abe1f06e7b893ffa9e307dd6a6cad9a37b75e73008b5aff2b4fa2bcf0da4d700237447300c5bd23d13bfe0cff4cc45a99d48681e600fb2e1eab4c9eaba7ff910e9123ee34f3b2a557094dc64ba0eaae6e7d1dfbf11ed8a576d468ebc8852e1f6964082ed0defd13e8bec244f11f655f1181ddf1b3c4c398d42a596656acb3d8d7c3d391bd3cc4c481e974ea8fddcdd2d37397fb55f0ef019e595f3e1c563e3b1849802392cce769bd64686271707c0499f61c154ff0010be4971f4559988902f757309508e170653ec1e5434367b83acefef972eab569d27581323498241e07ee14542ac65a74e175055da84389e3062233e5c95b69c916f0b0d75da01279c3bd7557b0e4176e820cfed3f49cbfd2c9c46f55008266c7aff006aa61f7d8f0f3c73fa8466adc74988a4ca77020e9cf517e8552a846f3af9889e5096d1a9de5368061d9c8ca066b05b8c735c41d2df454e6d57a92b571cdb5b41bbe66152a18800ee9fdb6469e3c45f4ff7654b0a37aa49d64ad49e336fbe349d54c65d5065604671a27634c320653ebcbcd644c391cf3a7aeb0ec4502d991af92384172b4f0f0e60919e99f9f2543badd71e1f45bfd7f4c7e7dd32ad283645ef9b258878f655866a915b22cb3c2d2ac607164487647550b2f6e5087f8da4da023cfedab2cf8bf4b00d7bac7e2b4f3d3c8e5e8b476750dc7169171333af4f255766cb0788c8fdd1c0ebe52ac63b1ed63a0411a6841e1ef23aacdb6f86493d6bd378b3b84827dff3a2c8dba496178748240711a7dd507ed92011a9cefaf151d0c79734d3393bd1539b3d17a97c55c352de26f7d3aa6560f698332b4686cc22ed765a79abf5776d26f175abd333950acf21c6343f45261aa92385a7fdf1cd249739f1d6a07d620923e6550c5ba4876a524974e58efe20015cd9c734925aebe31cfd5f6886fe71859fb49b914925cf8fae9dff0014f82c490d681c4895a6c037088d73f3412575f573f155d5c923f39aab5e88b9ea8a4af8beaa0a53657f054467c12493d51cc85b51f0c800093f759b45b2612496b9fe2cf5fc9a07c20471855f10fd7afd3ee924b3cb7555e139adb2492e8c4fa6ef95668d7308a48b3c12dd695069837c84c7d164e28cbbd12496796bb4dfe3b6018b98fceaa7c061ae649b03ec8249b448db762222da09e792c1c7e21c1e403ea924b3c9e9ffd9, '\"cat.jpg\"', 46, ''),
(3, 0xffd8ffe000104a46494600010100000100010000ffdb00840009060713121215121212151615151716171515171715171515151815161715171717181d2820181a251d151521312125292b2e2e2e171f3338332c37282d2e2b010a0a0a0e0d0e171010172d1d1d1d2d2d2d2b2b2b2b2b2d2b2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2b2b2d2d372d2d2b2d2d2d2b2d2b2bffc000110800e500dc03012200021101031101ffc4001c0000010501010100000000000000000000010002030405060708ffc40039100001030203050605040203000301000001000211032104314105125161710613228191a132b1c1d1f0074252e114f115627243829223ffc4001801010101010100000000000000000000000100020304ffc4001f1101010101010101000301010000000000000111022131123241510361ffda000c03010002110311003f00f0e49244288248a483848a01151848a08a9a245256301827d67b69d369739c6004146ca0e20902cdb93a051c2f68ecf764a8d1a269d46ef97b40a926049072e4b8eeda761ce19bdfd097d13623f7b09c83a34e69c12b8884611210435848229291b092720a186248a496301248a4a584922929120894148924925204524940914115128452494d48309248a1a2017acfe9af673bba3dfbdbe3a97122ed669e66e57996c6c2f7b5e952fe7518df22e12be906e183181a2d6f410a150d368c8a7bf0cd7b4b1c258f1047d7a8b1513c5d4b86aba2355e5e0ddb4d867098a7d3fda4cb3ff272f91580bd8bf58f656fd0a789636f4ddb9508fe27e127cede6bc7a1279f804209f585cf5298a24842720548d4a11017a3f603b03df0188c53629912ca79178b10e3c1a7829870fb3f61e22b9029d2719d60c471516d4c03a83fbb7c6f800b80d2721e8be8fa78714806b1ad6b6c2001efe8be75ed0633bfc4d6aa0407d47103809b24339249252228225050244208a94049245489108221461228c2086852491534e87f4f993b430e0ff227d18e23dc2f7fc6d4b81c82f12fd2ac36f6337cfec61f7b7dd7ac6d2c4c6e99d483f4468cf535472631c644289b59b693e6b49e1a1b021d391b7ba24d6edc49570adc452a941f9546969ea458f9182be75db7b16a616b3e8d407798e23ac189e86257d0f84abf01e13e8002aaf693b374717b95dc25ed6869e6049f5b8f45a8e7b975f39571e27753f32a2dd5ea3b4bf4cea54a84d22034b819718b12778750a2c7fe95620171616b87ed00c7ee8d7919f2561fd4799c22d6cd9752eec3e21b3bcc2d76f100111206bf2f55d77627f4f26a6fe23269b378819fd3d54b6287e9bf614d42dc5625b14c5e9b0fff0021fe47feb9f55ebb4a92b068810008000006800c80e49eeb0533ac1ed4627b8c356abfc29bc8eb103dc85f353dcbdebf57f125980735a637dcc698e12491ecbc0ca4124822a045048a0a145294124a108a4114350914114350524822a689208a73428e3befd386ee537bef25ed03dbeebb6ed0d60d68bded6e66ff0022b9eec0ecf7328b0b9a46f38b849178198e5d55bed6cef8703e5f5fce0b3d7838bbd35f06e96033e4aeb2a9eec39a4cb7dc7e0b1593b2ddff00f3006a3afb6bd15ec197325aed32be873f4247ba61eeb5998805bbcdb489ff00ed9d95ba58981cb3e9c7e6163d1ab12206723edd2e158654bc697041d446439fd91ae71b0cae2071cbdffb5a0c74b7e4b9bc73086b1ed32d8f7ceeb7f030e635cdc894cd170f1443bc2e00f509c70fb9f0e498f710e1cd5e63641255f4291e2a10f939981e8ad56a76e0166e21dfb5badf492b50cf5e6dfae5b4a194280fde5cf3c61b005fa95e3cbd47f59fbbefe8921c5c29eec03005c9e041cd79a9eecff21ccc11ed05342ba4a57d18b8208e23ea330a24224114122924924a07849208acba42452494d10452494d60ab5b3e8efd4637f939a3d4aac15bd9ae02a309130e062626ea57e3dae900dee837263634fa2cfdb581756f8481cce92acd0a8086902040b67eeaeb0a3bf6b8f1714366e14d16064931af357a9309e7f351d4523313161a2c37ba91d4ccc44c8857a9d5a745b352fc04ded7d2e9bb36ab5cef11227458bfa89d9da9bae14086b6aeef88921b001de612321af392ba71ccae7df591d161b6e612b034492c2600def86749e17e319c2db781458d6372100745e1182c33e8611952a3e1eeab0ca2411518c1bb24ff00d5dc392f52d87b57bdc378cf8d800be71fb4ad75ce5679bb363ae678883f9942d0348ee980b0f64d69201d47cbeaac76af6c9c361f7da6249974496b4364c0e3a79a39e74deb172ad3d1626d22e69f0b7a9c80136eab17b0fdb86e34b9a1ee9044b5f1307232343d7c975f8ec2ef055e6c3cf4f1ff00d67c234ff8ef22090e93ced6bd8f490579256a45a6ff00ed7a8feb7e366a51a008863493ccbbfd2f2eef09106fc392699f0c0e848948841042104e414ce0248a495872282210e90524914344114824a24158c21f10cbcf255d3e93a082a2f5fd815268b0974d865a2d5ef2cb95ec862deea7bae320652ba71c966b8ff6654aba0ccabb84a369cd54a74db3c55bff002dad5937ff001669b04c831c96d50c534b3bba80381b6eba083e45732cc66f1f87d14ccdf71bb491d0fb1d132abfe54fb4766e1ccf75876175ee0659ac8c1e1df4ddbce06759b40bae85ae74434869361a9f48f74f66183dbbaf248208de2d3bc26c25dc73f65afaccf0cd99b49ae76e83273eb3c7d96e6d6c10c5520dd2f6395c4106392e470bb1ab616b870735f44cfc4097831e18392eaf65179a8d744347c5cc1d215cf765c75ffa7fc39fceeb97d9bd937e1772952a37de74550c006e39c1c7bca80f8a22064617a2541102784f54c0419dd247151819aebd75af373cfe63cb3f59760efb4d66b6e22f3f4ccaf127b3773cf870eabdeff5671a053237a94c400f92e9ff00a8695e0550dcde79a3a6f8f86ca08c20b2d014924940924502a47221353daa6a0909c0244a40a1d0213b75252b6104cdc4d2af53014159a03949bfd97aee6c5e2f6ca4fd8735e978676f01d064bcf3b335986039a267e29891c392f41c2b6223805572ebeac77080c3ab945a9cea3c2cb154aa5403a6fed92bc19c51a6c8d148ea6084c1d25c19395e34889ea55f7f80499bcde78c4d965096e44e9e416861981f7738b8e93a2d4aa062712f34c96b0bb23737806f0355a1b2f14d7b65a4415728e080c8da155a7b3f72ab8b4785d7b71d569bbff4979c68e1ed29a710034f244ae5fb63b498ca7b9bd01df1646dcc1d3a5f925c1e5ffaa1b4dfde11151bd47848ebf70bcf8e29dc47ff0096fd9745b6aad5638ee3de0493120b2a0cc968bb77b53a917ce671855655b3da18f393d82c4f07332bf111d0aab73c55ef81f898df2f09f64d7341c8f91fbffa4ab512de10722322a34122d84119414a9208a0a14e0904d051054653ca4100529437a72707264a2a6b528ac55dc1e15ef21db8e70d7774eb0aae0992e169d17a6764f631241696c6b77077d4264d67aeb173b35b329c6f40e246808e20e47a2d173fc563e4b6b10d68018dd07aacbff05d326caedcb9f7d5bc35557a9aad84c39c8faad0a78721736cd34e516d0e0afd2c32b943009919d631c34e8ade030641c96d3703c948dc2c2d6633a14cc5917548096eae4bb63b72a5063835ae062c60c1f30b4303b63dae6611862e4cc410633d26578af68f6e3ebb7be63cc490e02d13988cf320f4781a2a1b776f57ace22a65262667d444f9acfc13e5b519a16178ff00d36ff29f40ad6e4c3b038f23c0e3e126d3683d741f237e33163a9ee99191f62330a9957a9bc39bbae31a4f38f09f600f242d5765722750731a14c7b632cb44d29291208a0a429248290229a9ca10e0884d94a54d69e94a6ab9b3b06eaae01a3adc0435ad7ec9e19cea821a2359122389057b36cca618c9887401627d8103d5617643b3cea6c97069b6409f5f0985d0d68cbee16be472eae9d419bc7207caff00dad4c3e148cc48e798f55978611909f35bd84c48220c858f0fc1a3816eb6f3b7ba18873196024f2569d44e6d323508b089b890828b0549c4c911c96bd36428a9102eac35d695a8cd4ad29b52e807850d6adc156a90e2154da983656a6e6bdad30241201844b8b94f41ba1d53cd3678f9d7f50364b693cba9d27117f11dd6c746b0091d570d873ba49e008f505bf55ee9fa9dd9b7eebaab2e04c8dd19116873208f425784d706483c4faa7a52f88dc14910c9e2e0079033f30a244b90812492522492494490452520dd4e0d53b44e8a56533c11adce22a6e14770abbdd9fe2a7c3e1cbc801aada7f3106cdd9c6ab80ca6d316fcf55eb3d8cec9ba88077839a6f3691d47f68762bb36c003dc2f99c88f50badc6e2031b0db05b9327ae3d75b720626bb5a20594545dbdf1663d9653ea493aa63f110419fbac5eb54e5d0d0a2af329def65cf6136811707cb8fbad11b5c8f89a167c6b2ba1a3508100cfd158b116c961e171ed3c95b6e244cef47e704a699b22fa861506e3a4daf1ee8d6c6c662158b56b70f1b29d8d0b11bb48486fe72528c6f2578bd6d1780932a2ce657253c56299461db73022ab0e8488989e9a2f9d7b69d9c142b38cc492480d31337322c3a2fa3455041075b2f22fd4cd94e7124da261c7417c813f25bfb04b95e5070e10ee4265675ece279f1518a861672bb5ea44fdd040d30a26d44e0f45867529fb811dc09a1c139d510d1c183825dd7256f0551edf13581d19c891e69edaa4c925a09390c8291f4e81cede59261781726788e0ba9d9db4e8bddba6941220c45fca15bc5f66f0b546f34165afbb2239c2359fae1cbe660f45b5d9fa2e7b8491e7f70ae9ec951c9d53843859de6322b5b666c0a743279def9fba7f519caeb68e2bbaa61baf554ab62893993eab9fc7e32a36e4c8d10c2768196df91c73f555ef58fc58dc7553d1461d2ebe9f9eaa4151ae12d333c12a14e330852a7a4de533f4d2558cedf814395ca25d68f6f743516995e027b7172551a8e9cb4fe9474e912505d46cbaa01b9fbadd2f6b84100f92e5b635021d7c9750ca608e056a566c438ac335addf1020f9c9e6abd000fe64ae6d025b48cde33b58fd954c1b491bc444e89e972b74c291d4d34279ac00baa0aacf31aae57b7bb2df89a5e0701a196974f21e21eeb6f6aed06b7222745c7d7ed687134cf1dd363ede6b53a917e6d79462fb355dae23c26f983f90abffc056e03d57a762b0bde383a499d74cb5d65329ec9a7f1389836fce7f659fdc6bf0f356ec1abcbd5386c0abc5abafc7ecd6b5f1fe43803047845a62df5516130f44b887567be34023cedd13abf38e5c6c0a9fc9a9c360bf5785d956d8345e0ba9e22a8c8c784c652098e6b36b6c62cf1778e7b786ba48b234e30bfe22a011dedb85d33fe15dfcd74aed9949c01ef2a0e56cb8dbc955ad806b0eeb5ae70cc1dee29d18a183a6cde05b561d320e707adacb7311b4bbb23bc13c481178cf316f55c78aa69d47362d70e1a11c47cd69631e5f4fe20e81226241e4b3546ed2dbf45ce2226388bc4f119ad3a18fef0585ad62dfcb2f30a188730c8b1f75d36ceda2f70820f1045883e562b3d738d73d6b736dc3d84080e8b4647d570aec6bda488f9aea5f89304dc9d5a4091ce469d572db51d3509cb97f49e076dcd87da9eefc2f06395d75b83ed3517e4f1e608f4b2f3ca141ae19410ab9a0f19484ec67f2f63a58a06e0ff0069eca932bcab07b7ead1b4c8b472110ba7d85da7df30fc8ebe7f6560f8ec37e2eaf6cf3263d3c894766318f6d8892a5c2d3eeaa89f84fb5a2518d6b7aae0669ef36cf68911af109bb2b68efd8fc5f31c55fc1e2411e8b268605d4f13ff00532e69e47307a15a1ae8698e3f81658ace73a059a0ad3aa3d23fddd64e0aa871b1d7d7a268e5a429985c8f6abb46cc3ef35ce1205f905d176876bb70d477b3790775b693909e8be75ed6ed3ab55e7bc27391a5fcee7cd5835a3b4bb585cf2e04e60f0e8aaec7c67f915cf786eed233f3f4f45cbdce9256b6c2690e0ed3f2eb364e6373abd57a9615fe0860b802d3fc6dea328521c46f31c4c5be21c4653eab951b48b0b5ed76e9bc9394e53f75352c79702091244cda0fdbaf15cbebb5f189b4f1c5b5333630398103d3356a8b98e7b660c8249d43b43d565e330e5de207289b0933001316cc1fc0a7d85877349de2728f5fa5974bf1ca7d743be4025d191339189b8e6b3f11b447781ad30642d0a2d0f1bb22f6f593fd2e26bbf76a58e4ecf983759e66b5d5c75ae708e17f494d0c9d0aaf86f84974fc227dc8f9858afdac01201364494db031787df874dc663537b14eff001cb986d0472fa2adfe41654dd3ac0fb2d4208b81235e2d29f629257318a6383bc59ad5d8f893bb1eda7fb4dc5ecd738ef037e0675e128e0f005b9dbcad6cc1e6b76cb18e659d2ebf18f9c8cdedd382c2c483bd33275fcd5745dd7581afe64b3b6951a67c40dc5ba959e2fa7b9e0602b6f5bd55ec4306e6f0e371af2b2a5b21c0e62fc24491c82d5acc1a647d27872459e9e7e39cc68e011c06f36f1d14cc66f558048991216ee1f08d0d8700223cc1b485ab7263326dd5cecc7694d17eebcc871f30bd336fed0a2da05dbe03c0de68d48b4db84b87aaf09c4d373aa6e8b5c0f75adb2f79af3be4f39336e3f55adc8cd9b5eb5d9fed0b6ac1ca209074cffa5b3ff2adc4562299b5301b3fc8982ef2caebc4f0f8eddd489398d40173d2e15dc1ed9a946a0a98771139ea08d4107cae8fd2fc57b66d3c7f7544bdc40dd169d572db03b5f87dd05d2208deff00ada6e33b6565e69b7fb4f8ac4d9ee30d02c2cdf4f358b857bb3713fd68136c93c5ccb7ebd1bb6dda80fadde34cb0001a2e385ec6faae1b6b015a5c5b2e39119acbc46d226c2def3c1556e2de322567f36fad7ea4f1b34f0cda6d04365c4723f3514ba48d73b6592a3471ee9bdd4b88ad00904827e45165d6a599a971f8d3bb1ae91e92ac6c5c5b800c6dcded238198e2b16882f3aff4b7f05bad870b102c471d01f75abe4c665dbad6d9f5c16904664d8c5a3c5f32137691dda6e2dd440e208326de4b229ed61de021b049989101c73f75a8dc707c8dd16981caff007216730eb2e9ed37ee16b75004e594e7c330abe1f06e7b893ffa9e307dd6a6cad9a37b75e73008b5aff2b4fa2bcf0da4d700237447300c5bd23d13bfe0cff4cc45a99d48681e600fb2e1eab4c9eaba7ff910e9123ee34f3b2a557094dc64ba0eaae6e7d1dfbf11ed8a576d468ebc8852e1f6964082ed0defd13e8bec244f11f655f1181ddf1b3c4c398d42a596656acb3d8d7c3d391bd3cc4c481e974ea8fddcdd2d37397fb55f0ef019e595f3e1c563e3b1849802392cce769bd64686271707c0499f61c154ff0010be4971f4559988902f757309508e170653ec1e5434367b83acefef972eab569d27581323498241e07ee14542ac65a74e175055da84389e3062233e5c95b69c916f0b0d75da01279c3bd7557b0e4176e820cfed3f49cbfd2c9c46f55008266c7aff006aa61f7d8f0f3c73fa8466adc74988a4ca77020e9cf517e8552a846f3af9889e5096d1a9de5368061d9c8ca066b05b8c735c41d2df454e6d57a92b571cdb5b41bbe66152a18800ee9fdb6469e3c45f4ff7654b0a37aa49d64ad49e336fbe349d54c65d5065604671a27634c320653ebcbcd644c391cf3a7aeb0ec4502d991af92384172b4f0f0e60919e99f9f2543badd71e1f45bfd7f4c7e7dd32ad283645ef9b258878f655866a915b22cb3c2d2ac607164487647550b2f6e5087f8da4da023cfedab2cf8bf4b00d7bac7e2b4f3d3c8e5e8b476750dc7169171333af4f255766cb0788c8fdd1c0ebe52ac63b1ed63a0411a6841e1ef23aacdb6f86493d6bd378b3b84827dff3a2c8dba496178748240711a7dd507ed92011a9cefaf151d0c79734d3393bd1539b3d17a97c55c352de26f7d3aa6560f698332b4686cc22ed765a79abf5776d26f175abd333950acf21c6343f45261aa92385a7fdf1cd249739f1d6a07d620923e6550c5ba4876a524974e58efe20015cd9c734925aebe31cfd5f6886fe71859fb49b914925cf8fae9dff0014f82c490d681c4895a6c037088d73f3412575f573f155d5c923f39aab5e88b9ea8a4af8beaa0a53657f054467c12493d51cc85b51f0c800093f759b45b2612496b9fe2cf5fc9a07c20471855f10fd7afd3ee924b3cb7555e139adb2492e8c4fa6ef95668d7308a48b3c12dd695069837c84c7d164e28cbbd12496796bb4dfe3b6018b98fceaa7c061ae649b03ec8249b448db762222da09e792c1c7e21c1e403ea924b3c9e9ffd9, '\"cat.jpg\"', 47, '');

-- --------------------------------------------------------

--
-- Table structure for table `modalityproceduretype`
--

CREATE TABLE `modalityproceduretype` (
  `modalityProcedureTypeId` int(11) NOT NULL,
  `modalityProcedureTypeDesc` varchar(45) DEFAULT NULL,
  `modalityType_modalityTypeId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modalityproceduretype`
--

INSERT INTO `modalityproceduretype` (`modalityProcedureTypeId`, `modalityProcedureTypeDesc`, `modalityType_modalityTypeId`) VALUES
(1, 'Left Arm', 1),
(2, 'Right Arm', 1),
(3, 'Left Leg', 1),
(4, 'Right Leg', 1),
(5, 'Torso', 1),
(6, 'Groin', 1),
(7, 'Brain', 3),
(8, 'Chest Cavity', 2);

-- --------------------------------------------------------

--
-- Table structure for table `modalitytype`
--

CREATE TABLE `modalitytype` (
  `modalityTypeId` int(11) NOT NULL,
  `modalityTypeName` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modalitytype`
--

INSERT INTO `modalitytype` (`modalityTypeId`, `modalityTypeName`) VALUES
(1, 'Xray'),
(2, 'CT Scan'),
(3, 'MRI');

-- --------------------------------------------------------

--
-- Table structure for table `modalitywarning`
--

CREATE TABLE `modalitywarning` (
  `modalityWarningID` int(11) NOT NULL,
  `modalityWarningDesc` varchar(45) DEFAULT NULL,
  `modalityType_modalityTypeId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modalitywarning`
--

INSERT INTO `modalitywarning` (`modalityWarningID`, `modalityWarningDesc`, `modalityType_modalityTypeId`) VALUES
(3, 'Insure Patient is able to have XRAY', 1),
(4, 'Patient must not have any metal items', 3),
(5, 'Patient must have Dye injection', 2);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patientID` int(11) NOT NULL,
  `patientFirstName` varchar(45) NOT NULL,
  `patientMiddleName` varchar(45) DEFAULT NULL,
  `patientLastName` varchar(45) NOT NULL,
  `patientGender` char(1) DEFAULT NULL,
  `patientSSN` int(9) DEFAULT NULL,
  `patinetHeight` int(11) DEFAULT NULL,
  `patientWeight` int(11) DEFAULT NULL,
  `patientDOB` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patientID`, `patientFirstName`, `patientMiddleName`, `patientLastName`, `patientGender`, `patientSSN`, `patinetHeight`, `patientWeight`, `patientDOB`) VALUES
(8, 'Angry', 'R', 'Testy', 'M', 666666666, 78, 555, '1966-06-06'),
(9, 'Rowdy', 'X', 'Ron', 'M', 333224444, 72, 250, '1989-01-18'),
(10, 'Angry', 'y', 'Tedd', 'M', 777777777, 71, 200, '1980-04-17'),
(11, 'Angry', 'r', 'Hippos', 'F', 222222222, 51, 90000, '2001-04-28'),
(12, 'Norman', 'M', 'Bates', 'M', 123456789, 74, 160, '1933-04-22'),
(13, 'Random', 'M', 'Dog', 'M', 999999999, 27, 30, '2012-04-04'),
(14, 'Random', 'C', 'Cat', 'F', 777777777, 13, 16, '2014-04-15');

-- --------------------------------------------------------

--
-- Table structure for table `procedurelist`
--

CREATE TABLE `procedurelist` (
  `procedureId` int(11) NOT NULL,
  `staffID_technician` int(11) NOT NULL,
  `modalityProcedureTypeId` int(11) NOT NULL,
  `patient_patientID` int(11) NOT NULL,
  `procedureScheduledDate` timestamp NULL DEFAULT NULL,
  `procedurestatus_procedureStatusID` int(11) NOT NULL DEFAULT '0',
  `physicianNotes` varchar(45) DEFAULT NULL,
  `procedureDateOfRequest` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `patientPaid` double DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procedurelist`
--

INSERT INTO `procedurelist` (`procedureId`, `staffID_technician`, `modalityProcedureTypeId`, `patient_patientID`, `procedureScheduledDate`, `procedurestatus_procedureStatusID`, `physicianNotes`, `procedureDateOfRequest`, `patientPaid`) VALUES
(45, 3, 4, 8, '2018-04-23 18:00:00', 5, 'asdasdd', '2018-04-23 17:56:56', 89),
(46, 4, 4, 8, '2018-04-23 18:30:00', 5, 'khgjhgjhg', '2018-04-23 18:45:03', 89),
(47, 3, 3, 8, '2018-04-23 19:00:00', 5, 'khjkh', '2018-04-23 18:47:50', 105);

-- --------------------------------------------------------

--
-- Table structure for table `procedurestatus`
--

CREATE TABLE `procedurestatus` (
  `procedureStatusID` int(11) NOT NULL,
  `procedureStatusDesc` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procedurestatus`
--

INSERT INTO `procedurestatus` (`procedureStatusID`, `procedureStatusDesc`) VALUES
(0, 'Not Scheduled'),
(1, 'Scheduled'),
(2, 'In Progress'),
(3, 'Procedure Complete'),
(4, 'Report Complete'),
(5, 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `reportID` int(11) NOT NULL,
  `reportText` varchar(45) DEFAULT NULL,
  `procedure_procedureId` int(11) NOT NULL,
  `staffid_Radiologist` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`reportID`, `reportText`, `procedure_procedureId`, `staffid_Radiologist`) VALUES
(3, 'asdasdasd', 45, 6),
(4, 'that is a cat', 46, 6),
(5, 'cat', 47, 6);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staffID` int(11) NOT NULL,
  `staffName` varchar(45) DEFAULT NULL,
  `StaffRole_staffRoleID` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'use hash'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffID`, `staffName`, `StaffRole_staffRoleID`, `username`, `password`) VALUES
(1, 'Doctor', 4, 'doc1', 'a5beb9d1b0e50129affe6e13e42d9e5f5942cda7'),
(2, 'Radiologist', 3, 'rad', 'bade5d26b78d94e5efb27f8cf03d43b298f69915'),
(3, 'Technician', 2, 'tech1', '40807e40aa0602559be12b1ee786e225d17a8dd6'),
(4, 'Rob The Tech', 2, 'tech_rob', '42938e89eeef40be506453f2825813bb920abf32'),
(5, 'Rob The Doctor', 4, 'doc_rob', '4dac8dff73ea957392686e7bbd7a36c491a3e482'),
(6, '#1 Admin', 0, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');

-- --------------------------------------------------------

--
-- Table structure for table `staffrole`
--

CREATE TABLE `staffrole` (
  `staffRoleID` int(11) NOT NULL,
  `staffRoleName` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staffrole`
--

INSERT INTO `staffrole` (`staffRoleID`, `staffRoleName`) VALUES
(0, 'Admin'),
(1, 'Receptionist '),
(2, 'Modality Technician'),
(3, 'Radiologist'),
(4, 'Physician');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `modalityimage`
--
ALTER TABLE `modalityimage`
  ADD PRIMARY KEY (`modalityImageID`,`procedure_procedureId`),
  ADD KEY `fk_modalityImage_procedure1_idx` (`procedure_procedureId`);

--
-- Indexes for table `modalityproceduretype`
--
ALTER TABLE `modalityproceduretype`
  ADD PRIMARY KEY (`modalityProcedureTypeId`,`modalityType_modalityTypeId`),
  ADD KEY `fk_modalityproceduretype_modalityequipment1_idx` (`modalityType_modalityTypeId`);

--
-- Indexes for table `modalitytype`
--
ALTER TABLE `modalitytype`
  ADD PRIMARY KEY (`modalityTypeId`);

--
-- Indexes for table `modalitywarning`
--
ALTER TABLE `modalitywarning`
  ADD PRIMARY KEY (`modalityWarningID`,`modalityType_modalityTypeId`),
  ADD KEY `fk_modalityWarning_modalityEquipment1_idx` (`modalityType_modalityTypeId`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patientID`),
  ADD UNIQUE KEY `idmasterPatientList_UNIQUE` (`patientID`);

--
-- Indexes for table `procedurelist`
--
ALTER TABLE `procedurelist`
  ADD PRIMARY KEY (`procedureId`,`staffID_technician`,`modalityProcedureTypeId`,`patient_patientID`,`procedurestatus_procedureStatusID`),
  ADD KEY `fk_procedure_staff1_idx` (`staffID_technician`),
  ADD KEY `fk_procedure_patient1_idx` (`patient_patientID`),
  ADD KEY `fk_procedure_modalityProcedureType1_idx` (`modalityProcedureTypeId`),
  ADD KEY `fk_procedure_procedureStatus1_idx` (`procedurestatus_procedureStatusID`);

--
-- Indexes for table `procedurestatus`
--
ALTER TABLE `procedurestatus`
  ADD PRIMARY KEY (`procedureStatusID`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`reportID`,`procedure_procedureId`,`staffid_Radiologist`),
  ADD KEY `fk_report_procedure1_idx` (`procedure_procedureId`),
  ADD KEY `fk_report_staff1_idx` (`staffid_Radiologist`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staffID`,`StaffRole_staffRoleID`),
  ADD KEY `fk_staff_StaffRole1_idx` (`StaffRole_staffRoleID`);

--
-- Indexes for table `staffrole`
--
ALTER TABLE `staffrole`
  ADD PRIMARY KEY (`staffRoleID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `modalityimage`
--
ALTER TABLE `modalityimage`
  MODIFY `modalityImageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `modalityproceduretype`
--
ALTER TABLE `modalityproceduretype`
  MODIFY `modalityProcedureTypeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `modalitytype`
--
ALTER TABLE `modalitytype`
  MODIFY `modalityTypeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `modalitywarning`
--
ALTER TABLE `modalitywarning`
  MODIFY `modalityWarningID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `procedurelist`
--
ALTER TABLE `procedurelist`
  MODIFY `procedureId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `procedurestatus`
--
ALTER TABLE `procedurestatus`
  MODIFY `procedureStatusID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `reportID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staffID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `staffrole`
--
ALTER TABLE `staffrole`
  MODIFY `staffRoleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `modalityimage`
--
ALTER TABLE `modalityimage`
  ADD CONSTRAINT `fk_modalityImage_procedure1` FOREIGN KEY (`procedure_procedureId`) REFERENCES `procedurelist` (`procedureId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `modalityproceduretype`
--
ALTER TABLE `modalityproceduretype`
  ADD CONSTRAINT `fk_modalityproceduretype_modalityequipment1` FOREIGN KEY (`modalityType_modalityTypeId`) REFERENCES `modalitytype` (`modalityTypeId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `modalitywarning`
--
ALTER TABLE `modalitywarning`
  ADD CONSTRAINT `fk_modalityWarning_modalityEquipment1` FOREIGN KEY (`modalityType_modalityTypeId`) REFERENCES `modalitytype` (`modalityTypeId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `procedurelist`
--
ALTER TABLE `procedurelist`
  ADD CONSTRAINT `fk_procedure_modalityProcedureType1` FOREIGN KEY (`modalityProcedureTypeId`) REFERENCES `modalityproceduretype` (`modalityProcedureTypeId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_procedure_patient1` FOREIGN KEY (`patient_patientID`) REFERENCES `patient` (`patientID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_procedure_procedureStatus1` FOREIGN KEY (`procedurestatus_procedureStatusID`) REFERENCES `procedurestatus` (`procedureStatusID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_procedure_staff1` FOREIGN KEY (`staffID_technician`) REFERENCES `staff` (`staffID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `report`
--
ALTER TABLE `report`
  ADD CONSTRAINT `fk_report_procedure1` FOREIGN KEY (`procedure_procedureId`) REFERENCES `procedurelist` (`procedureId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_report_staff1` FOREIGN KEY (`staffid_Radiologist`) REFERENCES `staff` (`staffID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `fk_staff_StaffRole1` FOREIGN KEY (`StaffRole_staffRoleID`) REFERENCES `staffrole` (`staffRoleID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
