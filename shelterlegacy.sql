-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2021. Már 18. 20:25
-- Kiszolgáló verziója: 10.1.36-MariaDB
-- PHP verzió: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `shelterlegacy`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `adaption`
--

CREATE TABLE `adaption` (
  `adoption_id` int(5) NOT NULL,
  `name` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `kind` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(70) COLLATE utf8_bin DEFAULT NULL,
  `other_pets` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `kind_of_pets` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `telephone_number1` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `telephone_number2` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `fk_cat_id` int(11) DEFAULT NULL,
  `fk_dog_id` int(11) DEFAULT NULL,
  `verify` tinyint(4) NOT NULL,
  `req_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `adaption`
--

INSERT INTO `adaption` (`adoption_id`, `name`, `kind`, `address`, `email`, `other_pets`, `kind_of_pets`, `telephone_number1`, `telephone_number2`, `fk_cat_id`, `fk_dog_id`, `verify`, `req_date`) VALUES
(29, 'edzrhtfjh kihj', 'inside', 'gfhjk', '3rer@etew.hu', 'yes', '1 cat', '123456zu', '', NULL, 1, 1, '2021-02-28 18:11:26'),
(30, 'adoptcart', 'inside', 'Langobardenstrasse ', '3rer@etew.hu', 'yes', '1 cat', '2131231', '12321321', 14, NULL, 1, '2021-02-28 18:34:46'),
(31, 'adoptdoggy', 'inside', 'Langobardenstrasse', '3rer@etew.hu', 'yes', '1 cat', '234234', '234234', NULL, 6, 1, '2021-02-28 18:36:02'),
(32, 'mirka kell', 'inside', 'Langobardenstrasse', '3rer@etew.hu', 'yes', '1 cat', '4234234', '34234', 6, NULL, 1, '2021-02-28 18:34:55'),
(33, 'Eva Bukli', 'inside', 'Langobardenstrasse 45 / 24', '3rer@etew.hu', 'yes', '', '068864892332', '', NULL, 5, 1, '2021-02-28 18:51:54'),
(34, 'evaeva', 'inside', 'Langobardenstrasse ', '3rer@etew.hu', 'yes', '1 cat', '353e534', '', NULL, 69, 1, '2021-03-18 18:41:45');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `annual_report`
--

CREATE TABLE `annual_report` (
  `annual_report_id` int(11) NOT NULL,
  `annual_report` text NOT NULL,
  `annual_report_name` text NOT NULL,
  `report_date` year(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- A tábla adatainak kiíratása `annual_report`
--

INSERT INTO `annual_report` (`annual_report_id`, `annual_report`, `annual_report_name`, `report_date`) VALUES
(43, 'ANNUAL.5c4c61c6759ea6.59350496.pdf', 'VÃ½roÄnÃ¡ sprÃ¡va ', 2016),
(34, 'ANNUAL.5c4c613e0dc0b1.62149675.pdf', 'VÃ½roÄnÃ¡ sprÃ¡va ', 2008),
(35, 'ANNUAL.5c4c6146efbb90.45353538.pdf', 'VÃ½roÄnÃ¡ sprÃ¡va ', 2009),
(36, 'ANNUAL.5c4c6162945820.41852713.pdf', 'VÃ½roÄnÃ¡ sprÃ¡va ', 2010),
(37, 'ANNUAL.5c4c616a1906a0.88287913.pdf', 'VÃ½roÄnÃ¡ sprÃ¡va ', 2011),
(38, 'ANNUAL.5c4c617208bdf1.56763022.pdf', 'VÃ½roÄnÃ¡ sprÃ¡va ', 2012),
(39, 'ANNUAL.5c4c617aef66e5.39702738.pdf', 'VÃ½roÄnÃ¡ sprÃ¡va ', 2013),
(40, 'ANNUAL.5c4c6184bd20d8.58998582.pdf', 'VÃ½roÄnÃ¡ sprÃ¡va ', 2014),
(41, 'ANNUAL.5c4c618db05c82.32300788.pdf', 'VÃ½roÄnÃ¡ sprÃ¡va ', 2015),
(49, 'ANNUAL.5e368c07706108.97450225.pdf', 'VÃ½roÄnÃ¡ sprÃ¡va', 2017),
(50, 'ANNUAL.5e5289081fc5e5.42253466.pdf', 'VÃ½roÄnÃ¡ sprÃ¡va', 2018);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `auction_bid`
--

CREATE TABLE `auction_bid` (
  `bid_id` int(11) NOT NULL,
  `nick_name` varchar(100) COLLATE utf8_bin NOT NULL,
  `full_name` varchar(100) COLLATE utf8_bin NOT NULL,
  `bid_price` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `address` varchar(250) COLLATE utf8_bin NOT NULL,
  `bid_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `telephone` varchar(55) COLLATE utf8_bin NOT NULL,
  `comment` text COLLATE utf8_bin,
  `fk_auction_product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `auction_image`
--

CREATE TABLE `auction_image` (
  `auction_image_id` int(11) NOT NULL,
  `auction_product_image` text COLLATE utf8_bin NOT NULL,
  `fk_auction_product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `auction_product`
--

CREATE TABLE `auction_product` (
  `auction_product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_bin NOT NULL,
  `descr` text COLLATE utf8_bin NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_date` date NOT NULL,
  `conditionn` varchar(200) COLLATE utf8_bin NOT NULL,
  `valid` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cat`
--

CREATE TABLE `cat` (
  `cat_id` int(5) NOT NULL,
  `cat_name` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `born_date` date DEFAULT NULL,
  `castration` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `height` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `weight` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `cat_desc_sk` mediumtext COLLATE utf8_bin NOT NULL,
  `cat_desc_en` mediumtext COLLATE utf8_bin,
  `cat_desc_de` mediumtext COLLATE utf8_bin,
  `type_sk` varchar(55) COLLATE utf8_bin NOT NULL,
  `type_en` varchar(50) COLLATE utf8_bin NOT NULL,
  `type_de` varchar(50) COLLATE utf8_bin NOT NULL,
  `gender` varchar(10) COLLATE utf8_bin NOT NULL,
  `in_memoriam` tinyint(1) DEFAULT NULL,
  `cat_id_old` varchar(15) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `cat`
--

INSERT INTO `cat` (`cat_id`, `cat_name`, `post_date`, `born_date`, `castration`, `height`, `weight`, `cat_desc_sk`, `cat_desc_en`, `cat_desc_de`, `type_sk`, `type_en`, `type_de`, `gender`, `in_memoriam`, `cat_id_old`) VALUES
(6, 'Mirka', '2020-04-25 07:46:17', '2019-09-01', 'no', '20 cm', '2,5 kg', 'MaÄiÄka bola nÃ¡jdenÃ¡ na NÃ¡lepkovej ulici, kde sa tlaÄila do vchodu bytovky, hÄ¾adala teplo. Je prÃ­tulnÃ¡ a kontaktnÃ¡. ', 'cat desc english', 'cat desc german', 'MaÄka domÃ¡ca', '', '', 'female', 1, '5200'),
(12, 'Tricolor', '2020-04-18 19:52:16', '2019-04-01', 'yes', '22 cm', '3,5 kg', 'MaÄiÄka bola odchytenÃ¡ na kÃºpeÄ¾nom ostrove, je veÄ¾mi milÃ¡ a prÃ­tulnÃ¡. Bola vyhladovanÃ¡, musia sa prelieÄiÅ¥ aj uÅ¡kÃ¡, po kastrÃ¡cii bude vhodnÃ¡ do domova.', NULL, NULL, 'MaÄka domÃ¡ca', '', '', 'female', 1, '5258'),
(14, 'Cat upload test', '2020-04-25 09:14:47', '1999-03-27', 'yes', '30 cm', '70 kg', 'Slovak description test\r\nthis is the updated version', 'and i modified this one as well...Engilsh description test', 'German description test\r\n\r\n\r\nthis is also updated', 'Europen short hair', '', '', 'male', 1, '');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `counter`
--

CREATE TABLE `counter` (
  `counter_id` int(11) NOT NULL,
  `numberr` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `counter`
--

INSERT INTO `counter` (`counter_id`, `numberr`) VALUES
(1, 331);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `dog`
--

CREATE TABLE `dog` (
  `dog_id` int(5) NOT NULL,
  `dog_name` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `born_date` date DEFAULT NULL,
  `castration` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `height` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `weight` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `dog_desc_sk` mediumtext COLLATE utf8_bin NOT NULL,
  `dog_desc_en` mediumtext COLLATE utf8_bin,
  `dog_desc_de` mediumtext COLLATE utf8_bin,
  `type_sk` varchar(55) COLLATE utf8_bin NOT NULL,
  `type_en` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `type_de` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8_bin NOT NULL,
  `in_memoriam` tinyint(4) DEFAULT NULL,
  `dog_id_old` varchar(15) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `dog`
--

INSERT INTO `dog` (`dog_id`, `dog_name`, `post_date`, `born_date`, `castration`, `height`, `weight`, `dog_desc_sk`, `dog_desc_en`, `dog_desc_de`, `type_sk`, `type_en`, `type_de`, `gender`, `in_memoriam`, `dog_id_old`) VALUES
(1, 'Brumo', '2020-04-21 19:45:52', '2006-06-01', 'yes', '50 cm', '17 kg', 'NeustÃ¡le prehliadanÃ½ sedÃ­ v Ãºtulku uÅ¾ od januÃ¡ra 2010. Bol uÅ¾ raz adoptovanÃ½, ale veÄ¾mi rÃ½chlo vrÃ¡tenÃ½, vyÅ¡antil sa na sliepkach na dvore, zdolal k nim vÅ¡etky prekÃ¡Å¾ky. Je to veÄ¾kÃ½ poÄ¾ovnÃ­k a lovÃ­ vÅ¡etko, Äo sa hÃ½be. Potreboval by Äloveka, ktorÃ½ by mal na neho dosÅ¥ Äasu, k malÃ½m deÅ¥om nie je vhodnÃ½. Je milÃ½, hravÃ½ a veÄ¾mi prÃ­tulnÃ½, hodÃ­ sa i k Å¡portovo zaloÅ¾enej rodine, miluje veÄ¾a pohybu a skÃ¡Äe ako gumovÃ¡ loptiÄka. Zo zaÄiatku je nedÃ´verÄivÃ½, treba k nemu pristupovaÅ¥ pomalÅ¡ie, aby sa nezÄ¾akol. Kto si zÃ­ska jeho dÃ´veru, zÃ­ska vernÃ©ho priateÄ¾a. ZnÃ¡Å¡a sa aj s fenkami aj so psami, mÃ¡ rÃ¡d svoju partiu. Na svoj vek je stÃ¡le veselÃ½, zaujÃ­ma sa o svoje okolie, na vodÃ­tku spoÄiatku Å¥ahÃ¡, ale po chvÃ­li ide veÄ¾mi pekne a poÄÃºva na svoje meno, keÄ je volanÃ½. :) Brumo mal veÄ¾mi zlÃ© zuby, pri zÃ¡kroku muselo byÅ¥ vytrhanÃ½ch 16 zubov a prelieÄuje sa mu zÃ¡pal uÅ¡ka.', NULL, NULL, 'KrÃ­Å¾enec poÄ¾ovnÃ©ho psa', NULL, NULL, 'male', 1, '32'),
(5, 'Taki', '2020-04-19 08:15:01', '2008-01-01', 'yes', '55 cm', '15 kg', 'Taki bol nÃ¡jdenÃ½ veÄer pred Ãºtulkom, bol veÄ¾mi vystresovanÃ½, stÃ¡le vrÄal. ÄŒasom sa upokojil, je z neho milÃ© neÅ¡Å¥astnÃ© zlatÃ­Äko, ktorÃ© tÃºÅ¾i po svojej rodine. Je vhodnÃ½ na dvor, ktorÃ½ vÃ¡m bezpeÄne postrÃ¡Å¾i, aj keÄ je menÅ¡ieho vzrastu, odvahy mÃ¡ dosÅ¥. K cudzÃ­m je veÄ¾mi nedÃ´verÄivÃ½ a svoje partnerky v koterci si Å¾iarlivo strÃ¡Å¾i. ', NULL, NULL, 'KrÃ­Å¾enec NO', NULL, NULL, 'male', 1, '58'),
(6, 'Alvik', '2020-04-19 08:28:27', '2010-01-01', 'yes', '58 cm', '23 kg', 'PsÃ­k bol nÃ¡jdenÃ½ v Non-stop koterci s fenkou Alvikou, pravdepodobne jeho sestra. Bol neuveriteÄ¾ne ustrÃ¡chanÃ½, ale Å¾ivenÃ½ dobre. Alvik je ten smelÅ¡Ã­ a tvÃ¡ri sa ako ochranca Alviky, potrebuje veÄ¾a trpezlivosti, aby si ho Älovek zÃ­skal. StÃ¡le si zachovÃ¡va odstup pred cudzÃ­mi, ale s oÅ¡etrovateÄ¾mi je veÄ¾kÃ½ kamarÃ¡t. Je s Alvikou vynikajÃºci strÃ¡Å¾ca. :)', NULL, NULL, 'KrÃ­Å¾enec', NULL, NULL, 'male', 1, '2271'),
(7, 'Alvika', '2020-04-19 10:19:12', '2009-01-01', 'yes', '53 cm', '21 kg', 'NÃ¡jdenÃ¡ spolu s Alvikom v Non-stop koterci, je stÃ¡le extrÃ©mne bojazlivÃ¡ k cudzÃ­m, ale zvedavosÅ¥ je vÃ¤ÄÅ¡ia. Zvykla si na rytmus Å¾ivota v Ãºtulku, oÅ¡etrovateÄ¾om sa dÃ¡ aj pohladkaÅ¥, potrebuje veÄ¾a trpezlivosti, aby prekonala traumu z minulosti. Je vynikajÃºci strÃ¡Å¾ca, spolu s Alvikom strÃ¡Å¾ia v noci dvor, dnu by sa aj niekto dostal, ale von urÄite nie.', NULL, NULL, 'KrÃ­Å¾enec', NULL, NULL, 'female', 1, '2272'),
(8, 'Lolka', '2020-04-19 10:20:50', '2011-07-01', 'yes', '53 cm', '13,5 kg', 'VeÄ¾mi temperamentnÃ¡ fenka sa ocitla v Ãºtulku z rodinnÃ½ch dÃ´vodov. Potrebuje pevnÃº ruku a vÃ½cvik, ale Ä¾udÃ­ mÃ¡ rada, je kontaktnÃ¡, zvedavÃ¡, veÄ¾mi rÃ½chla a mÃ¡ silu. Lolka sa dlho nezohriala na novom mieste, prebÃºrala sa cez volieru k sliepkam, jej temperament potrebuje pevnÃº ruku. Lolka sa znova vrÃ¡tila z adopcie, hÄ¾adÃ¡ novÃº rodinu, potrebuje byÅ¥ vonku a maÅ¥ voÄ¾nosÅ¥.', NULL, NULL, 'KrÃ­Å¾enec', NULL, NULL, 'female', 1, '2311'),
(9, 'DubÃ¡k', '2020-04-19 10:22:10', '2011-06-01', 'yes', '33 cm', '8,30 kg', 'PriateÄ¾skÃ½ psÃ­k je z adopcie spÃ¤Å¥, je milÃ½ a prÃ­tulnÃ½, vhodnÃ½ na dvor rodinnÃ©ho domu, musÃ­ byÅ¥ vÅ¡ak dobre zabezpeÄenÃ½, mÃ¡ tendenciu utekaÅ¥. S fenkami sa znesie v pohode, psÃ­kov si vyberÃ¡, je aj dobrÃ½ strÃ¡Å¾ca.', NULL, NULL, 'KrÃ­Å¾enec', NULL, NULL, 'male', 1, '2499'),
(11, 'Felicita', '2021-02-28 12:43:18', '2011-08-01', 'yes', '43 cm', '13,5 kg', 'ExtrÃ©mne plachÃ¡ fenka bola spolu so sestrou Filipou odobranÃ¡ z nevhodnÃ½ch podmienok. Potrebuje viac trpezlivosti a veÄ¾a lÃ¡sky, Äloveka, Äo by sa jej intenzÃ­vne venoval. Fenka zistila, Å¾e jej nehrozÃ­ Å¾iadne nebezpeÄie a po Äase sa prejavila neuveriteÄ¾nÃ½m temperamentom, je vÃ½bornÃ½ strÃ¡Å¾ca, miluje voÄ¾nÃ½ pohyb a veÄ¾mi rada hÄ¾adÃ¡ vo vaÄkoch zamestnancov maÅ¡krty. Potrebuje viac vÃ½behu, s psÃ­kmi sa znesie, fenky nemusÃ­. VodÃ­tko nenÃ¡vidÃ­, potrebuje byÅ¥ vo voÄ¾nom priestore, oÅ¡etrovateÄ¾om sa dÃ¡ aj pohladkaÅ¥, ale k cudzÃ­m je stÃ¡le veÄ¾mi opatrnÃ¡.', 'An extremely shy female dog together with her sister Filipa were taken away from a place of inappropriate conditions. She needs more patience and a lot of love, a person who would devote oneself to her. When Felicita found out that she was no longer in danger, she turned out to be very nice. She is an excellent guard dog, she loves to move freely and she likes to look for snacks in the employees\' pockets. Felicita requires more running, she gets along with male dogs, however, she does not put up with female dogs. She hates the leash and she needs to be in the open space. The caregivers of our shelter can pat her, but she is still very careful when it comes strangers.', 'ExtrÃ©mne plachÃ¡ fenka bola spolu so sestrou Filipou odobranÃ¡ z nevhodnÃ½ch podmienok. Potrebuje viac trpezlivosti a veÄ¾a lÃ¡sky, Äloveka, Äo by sa jej intenzÃ­vne venoval. Fenka zistila, Å¾e jej nehrozÃ­ Å¾iadne nebezpeÄie a po Äase sa prejavila neuveriteÄ¾nÃ½m temperamentom, je vÃ½bornÃ½ strÃ¡Å¾ca, miluje voÄ¾nÃ½ pohyb a veÄ¾mi rada hÄ¾adÃ¡ vo vaÄkoch zamestnancov maÅ¡krty. Potrebuje viac vÃ½behu, s psÃ­kmi sa znesie, fenky nemusÃ­. VodÃ­tko nenÃ¡vidÃ­, potrebuje byÅ¥ vo voÄ¾nom priestore, oÅ¡etrovateÄ¾om sa dÃ¡ aj pohladkaÅ¥, ale k cudzÃ­m je stÃ¡le veÄ¾mi opatrnÃ¡.', 'deu', '', '', 'female', 1, '2587'),
(12, 'Filipa', '2020-04-19 10:33:18', '2011-08-01', 'yes', '43 cm ', '14,85 kg', 'Sestra Felicity, tieÅ¾ mimoriadne plachÃ¡, potrebuje lÃ¡skavÃ© ruky, aby strach prekonala a nauÄila sa, Å¾e nie vÅ¡etci Ä¾udia ubliÅ¾ujÃº. Z fenky sa vykÄ¾ulo veÄ¾kÃ© temperamentnÃ© Å¡idlo a vynikajÃºci strÃ¡Å¾ca, hocikoho k sebe len tak nepustÃ­. MÃ¡ rada veÄ¾a pohybu, najradÅ¡ej by lietala celÃ½ deÅˆ po dvore, s psÃ­kmi sa znesie bez problÃ©mov, fenky nemusÃ­. :)', NULL, NULL, 'KrÃ­Å¾enec', NULL, NULL, 'female', 1, '2588'),
(14, 'Jimbo', '2020-04-19 10:42:33', '2011-09-01', 'yes', '30 cm', '9,4 kg', 'MladÃ½ psÃ­k bol hlÃ¡senÃ½ OÃš Drahovce, Å¾e sa potuluje dlhÅ¡iu dobu po obci. PsÃ­k sa ukÃ¡zal ako veselÃ½ a temperamentnÃ½ a dobrÃ½ strÃ¡Å¾ca, s fenkami sa znesie, psÃ­kov nemusÃ­. Je vhodnÃ½ na dvor, mÃ¡ v sebe loveckÃ½ pud, takÅ¾e sliepky radÅ¡ej nie. DominantnÃ½ nie je, je vhodnejÅ¡Ã­ k odrastenÃ½m deÅ¥om. ÄŒakÃ¡ v Ãºtulku uÅ¾ 7 rokov bez povÅ¡imnutia a Å¾iaÄ¾ nie je jedinÃ½. Fotenie zÃ¡sadne odmieta, bojÃ­ sa fotoaparÃ¡tu a ako je veÄ¾kÃ½, vtedy by voÅ¡iel aj do myÅ¡acej diery. ', NULL, NULL, 'KrÃ­Å¾enec teriera', NULL, NULL, 'male', 1, '2600'),
(15, 'Axo', '2020-04-19 10:57:28', '2012-12-01', 'yes', '59 cm', '25,2 kg', 'PsÃ­k bol skoro rÃ¡no hlÃ¡senÃ½ pri hotelovej Å¡kole, Å¾e tam skÃ¡Äe na okoloidÃºcich. Je to veselÃ½ a temperamentnÃ½ psÃ­k, veÄ¾mi dobre Å¾ivenÃ½. Potrebuje skÃºsenejÅ¡iu ruku a vÃ½cvik, pri sprÃ¡vnom vedenÃ­ to bude ideÃ¡lny spoloÄnÃ­k v rodine a aj dobrÃ½ strÃ¡Å¾ca. NemÃ¡ rÃ¡d manipulÃ¡ciou so sebou, je to voÄ¾nÃ¡ psia duÅ¡iÄka, potrebuje svoj priestor, je vhodnÃ½ na veÄ¾kÃ½ dvor. V Ãºtulku je uÅ¾ 7 rokov, ale stÃ¡le ÄakÃ¡ na svoju rodinu. ', NULL, NULL, 'KrÃ­Å¾enec', NULL, NULL, 'male', 1, '2802'),
(16, 'Timko', '2020-04-21 19:47:06', '2013-01-01', 'yes', '60 cm', '18,4 kg', 'PsÃ­k-Å¡teÅˆa bol nÃ¡jdenÃ½ rÃ¡no v Nonstop koterci, priviezla ho polÃ­cia, bol nÃ¡jdenÃ½ na ulici A.BeluÅ¡a. Je hravÃ½, temperamentnÃ½ a nekoneÄne zvedavÃ½. PsÃ­k sa vrÃ¡til z adopcie, nakoÄ¾ko mu zomrel jeho milovanÃ½ pÃ¡n. MedzitÃ½m narÃ¡stol, je to hravÃ½ a temperamentnÃ½ psÃ­k s poÄ¾ovnÃ­ckym pudom, najÅ¡Å¥astnejÅ¡Ã­ je, keÄ sa mÃ´Å¾e dosÃ½ta vylietaÅ¥. ', NULL, NULL, 'KrÃ­Å¾enec BF', NULL, NULL, 'male', 1, '2862'),
(17, 'Flirt', '2020-04-19 14:58:08', '2012-04-01', 'yes', '60 cm', '14,8 kg', 'TemperamentnÃ½ psÃ­k bol nÃ¡jdenÃ½ v Nonstop koterci bez oznaÄenia, priviezla ho polÃ­cia od Kocky. Je prÃ­tulnÃ½, veÄ¾mi hravÃ½, dobre Å¾ivenÃ½. Potrebuje Å¡portovo zaloÅ¾enÃ½ch Ä¾udÃ­, ktorÃ­ by s nÃ­m chodili na dlhÅ¡ie prechÃ¡dzky a zamestnali ho viacerÃ½mi aktivitami. PsÃ­k miluje vodu nadovÅ¡etko.', NULL, NULL, 'KrÃ­Å¾enec', NULL, NULL, 'male', 1, '3244'),
(18, 'Ludvik', '2020-04-19 15:00:51', '2012-06-01', 'yes', ' 65 cm', '24 kg', 'MokrÃ½ a vyhladnutÃ½ psÃ­k sa naÅ¡iel v areÃ¡li hotelovej Å¡koly, Å¡tudentky mu dali svoj obed aj ho pekne pomenovali. Je to temperamentnÃ½ a hravÃ½ psÃ­k, zo zaÄiatku veselo preskakoval plot, ale uÅ¾ sa odnauÄil, s fenkami sa znesie bez problÃ©mov, psÃ­kov si vyberÃ¡. MÃ¡ rÃ¡d dlhÃ© prechÃ¡dzky, na vodÃ­tku ide pekne, bol by vhodnÃ½ do rodinnÃ©ho domu s vÃ¤ÄÅ¡Ã­m vÃ½behom nie celkom k malÃ½m deÅ¥om, potrebuje viac aktivÃ­t a dobre zabezpeÄenÃ½ pozemok. :) Å½iaÄ¾ teÅ¡ili sme sa predÄasne, adopcia nevyÅ¡la, psÃ­k utekal a preskakoval opakovane plot, Äo ohrozovalo jeho bezpeÄnosÅ¥.', NULL, NULL, 'KrÃ­Å¾enec labradora', NULL, NULL, 'male', 1, '3286'),
(19, 'MiuÅ¡ka', '2020-04-19 15:03:31', '2013-09-13', 'yes', '45 cm', '14 kg', 'Maminu so siedmimi Å¡teniatkam sme vzali v rÃ¡mci pomoci z organizÃ¡cie ÄŒeskoslovenskÃ½ kastr. program. Å teniatka boli poctivo odkojenÃ©, bola vzornÃ¡ mamina, tie sa uÅ¾ adoptovali. MiuÅ¡ka je veselÃ¡, Å¡antivÃ¡ a nesmierne hravÃ¡ fenka, ale aj vÃ½bornÃ½ strÃ¡Å¾ca. Miluje voÄ¾nosÅ¥ a veÄ¾a pohybu, je vhodnÃ¡ k aktÃ­vnym Ä¾uÄom.', NULL, NULL, 'KrÃ­Å¾enec', NULL, NULL, 'female', 1, '3750'),
(20, 'MarÅ¡al', '2020-04-19 15:06:15', '2014-11-12', 'yes', '58 cm', '16 kg', 'AktÃ­vny psÃ­k bol nÃ¡jdenÃ½ pri Tescu, dobre Å¾ivenÃ½, veselÃ½ a temperamentnÃ½. S fenkami sa znesie bez problÃ©mov, psÃ­kov si vyberÃ¡, nie je vhodnÃ½ k hydine. Je ideÃ¡lny k aktÃ­vnejÅ¡Ã­m Ä¾uÄom, potrebuje dostatok vÃ½behu, vie aj pekne ustrÃ¡Å¾iÅ¥. Nie je vhodnÃ½ k hydine.', NULL, NULL, 'KrÃ­Å¾enec', NULL, NULL, 'male', 1, '3813'),
(21, 'Muko', '2020-04-19 15:13:43', '2015-08-24', 'yes', '60 cm', '15,5 kg', 'Å teniatko psÃ­k bol nÃ¡jdenÃ½ v Hlohovci a privezenÃ½ polÃ­ciou. Je Äiernej farby so Å¾Ã­hanÃ­m, veselÃ½, zvedavÃ½ a hravÃ½, rastie ako z vody, bude strednÃ©ho vzrastu, temperament mÃ´Å¾e rozdÃ¡vaÅ¥. PsÃ­k sa vrÃ¡til z adopcie z rodinnÃ½ch dÃ´vodov. Je to jaÅ¡o, potrebuje pevnÃº ruku a vÃ½cvik, s ostatnÃ½mi psÃ­kmi problÃ©m nemÃ¡, miluje veÄ¾a pohybu, je vhodnÃ½ k aktÃ­vnym Ä¾uÄom.', NULL, NULL, 'KrÃ­Å¾enec', NULL, NULL, 'male', 1, '3821'),
(22, 'Nizo', '2020-04-19 15:35:28', '2015-10-27', 'yes', '50 cm', '16 kg', 'VeÄ¾mi plachÃ½ psÃ­k sa dlhÅ¡ie tÃºlal v obci NiÅ¾nÃ¡, bol odchytenÃ½ a privezenÃ½ pÃ¡nom starostom. Potrebuje trochu Äasu zvyknÃºÅ¥ si, mÃ¡ zrejme zlÃ© skÃºsenosti s Ä¾uÄmi, so Å¾enami si rozumie. Zvykol si uÅ¾ na rytmus Å¾ivota v Ãºtulku, mÃ¡ rÃ¡d voÄ¾nÃ½ pohyb, je vhodnÃ½ aj ako druhÃ½ psÃ­k v rodine.', NULL, NULL, 'KrÃ­Å¾enec NO', NULL, NULL, 'male', 1, '4086'),
(23, 'Auryn', '2020-04-21 19:48:16', '2010-10-29', 'yes', '70 cm', '41 kg', 'VyrodenÃ¡ a plachÃ¡ fenka bola nÃ¡jdenÃ¡ bez oznaÄenia v lese na Havrane, na noÅ¾iÄkÃ¡ch preleÅ¾aniny. VyÅ¡etrenÃ­m bol zistenÃ½ syndrom suchÃ©ho oka a uÅ¾ aj slabÅ¡ie vidÃ­. TieÅ¾ je atopik, musÃ­ braÅ¥ hypoalergÃ©nne krmivo. UkÃ¡zala sa Å¾iaÄ¾ ako neznÃ¡Å¡anlivÃ¡ s inÃ½mi psÃ­kmi. K Ä¾uÄom je milÃ¡, oÅ¡etrovateÄ¾ov miluje, je pokojnejÅ¡ej nÃ¡tury, ale vie si povedaÅ¥ svoje, keÄ sa jej nieÄo nepÃ¡Äi, patrÃ­ do skÃºsenÃ½ch rÃºk, nie je vhodnÃ¡ k deÅ¥om.', NULL, NULL, 'ArgentÃ­nska doga', NULL, NULL, 'male', 1, '4141'),
(24, 'Zorka', '2020-04-19 15:37:55', '2016-07-03', 'yes', '50 cm', '20,8 kg', 'Fenka bola hlÃ¡senÃ¡ z Obchodnej ulice, kde sa pohybovala vo firme na spracovnie dreva vyÅ¡e tÃ½Å¾dÅˆa, ale nedala sa chytiÅ¥, bola veÄ¾mi plachÃ¡. Podarilo sa to aÅ¾ dnes vÄaka pracovnÃ­kom firmy, ktorÃ­ ju zavreli do miestnosti. UkÃ¡zala sa ako milÃ¡ a prÃ­tulnÃ¡, viazanÃ¡ na Ä¾udÃ­, je hravÃ¡, znesie sa s psÃ­kmi bez problÃ©mov, mÃ¡ veÄ¾a temperamentu, takÃ© veÄ¾kÃ© teÅ¡ivÃ© Å¡teÅˆa. ', NULL, NULL, 'KrÃ­Å¾enec', NULL, NULL, 'female', 1, '4299'),
(25, 'Irjo', '2020-04-19 15:40:35', '2020-03-05', 'yes', '60 cm', '27 kg', 'MladÅ¡Ã­ psÃ­k sa tÃºlal viac dnÃ­ v meste VrbovÃ©, aÅ¾ v nedeÄ¾u 5.3. sme dostali o Åˆom hlÃ¡senie. PsÃ­ka priviezla milÃ¡ pani, ktorej Äakujeme. PoÄiatoÄnÃ½ strach uÅ¾ preÅ¡iel, javÃ­ sa viac dominantnÃ½, nerÃ¡d nechÃ¡ so sebou manipulovaÅ¥ pri veterinÃ¡rnych Ãºkonoch. Je rÃ½chly, dÃ¡ sa oÄakÃ¡vaÅ¥ poÄ¾ovnÃ­cky pud. Je vhodnÃ½ do skÃºsenej aktÃ­vnej rodiny s odrastenejÅ¡Ã­mi deÅ¥mi.', NULL, NULL, 'KrÃ­Å¾enec bradÃ¡Äa', NULL, NULL, 'male', 1, '4278'),
(26, 'Belfor', '2020-04-19 15:42:26', '2015-12-20', 'yes', '70 cm', '44 kg', 'PsÃ­k zostal na dvore opustenÃ©ho domu sÃ¡m v romskej osade. Bol privezenÃ½ MP Hlohovec za asistencie veterinÃ¡ra, ktorÃ½ ho musel prispaÅ¥, bol vo veÄ¾kom strese a agresÃ­vny. EÅ¡te stÃ¡le vrÄÃ­, nebavÃ­ sa s nami, ale jesÅ¥ mu chutÃ­. PsÃ­k sa uÅ¾ upokojil, aj vybehne von sa poprechÃ¡dzaÅ¥, inÃ½ch psÃ­kov si nevÅ¡Ã­ma, ale pred Älovekom mÃ¡ stÃ¡le strach. StÃ¡le robÃ­ pokroky, uÅ¾ sa hrÃ¡ s oÅ¡etrovateÄ¾mi, chodÃ­ pekne na vodÃ­tku. Po Äase sa ukÃ¡zal ako blÃ¡znivÃ© hravÃ© Å¡teÅˆa, je to mohutnÃ½ krÃ¡savec, len treba dÃ¡vaÅ¥ pozor pri jeho vÃ¡he, keÄ skoÄÃ­ na Äloveka v rÃ¡mci hry, tak to konÄÃ­ na zemi. PatrÃ­ do skÃºsenÃ½ch rÃºk, bude aj vÃ½bornÃ½ strÃ¡Å¾ca, nie je vhodnÃ½ k malÃ½m deÅ¥om.', NULL, NULL, 'MoskovskÃ½ strÃ¡Å¾ny pes', NULL, NULL, 'male', 1, '4530'),
(27, 'Bless', '2020-04-19 15:43:49', '2012-04-14', 'yes', '65 cm ', '28 kg', 'PsÃ­k bol nÃ¡jdenÃ½ v obci Blesovce, kde sa potuloval viac dnÃ­. HlÃ¡sil nÃ¡m ho pÃ¡n starosta a priviezol jeden milÃ½ pÃ¡n. PsÃ­k je dobre Å¾ivenÃ½, pokojnÃ½ a priateÄ¾skÃ½, dobrÃ¡k od kosti, s ostatnÃ½mi psÃ­kmi sa znesie, je vhodnÃ½ do rodinnÃ©ho domu aj ako druhÃ½ psÃ­k. NemÃ¡ vÅ¡ak rÃ¡d veterinÃ¡rne Ãºkony, vtedy treba byÅ¥ opatrnÃ½, je nevhodnÃ½ pre zaÄiatoÄnÃ­kov a k malÃ½m deÅ¥om.', NULL, NULL, 'NO', NULL, NULL, 'male', 1, '4620'),
(28, 'Gizka', '2020-04-19 15:45:33', '2017-02-10', 'yes', '55 cm', '19,9 kg', 'TemperamentnÃ¡ fenka bola odchytenÃ¡ OP Madunice, neskÃ´r sa zistilo, Å¾e pÃ´vodnÃ½ majiteÄ¾ sa odsÅ¥ahoval. Je veÄ¾mi Å¡ikovnÃ¡, ale i pojaÅ¡enÃ¡ puberÅ¥Ã¡Äka, jej Å¡tveranie po dvojmetrovom plote je zÃ¡Å¾itok sledovaÅ¥. ZvlÃ¡dla ho za pÃ¡r sekÃºnd, po Äase si uÅ¾ odvykla liezÅ¥. Je veÄ¾mi temperamentnÃ¡, behÃ¡ spolu s ostatnÃ½mi psÃ­kmi bez problÃ©mov, je vhodnÃ¡ k aktÃ­vnej rodine, ktorÃ¡ jej zabezpeÄÃ­ viac pohybu, deti mÃ¡ rada.', NULL, NULL, 'KrÃ­Å¾enec', NULL, NULL, 'female', 1, '4569'),
(29, 'Siva', '2020-04-19 16:25:50', '2011-05-01', 'yes', '50 cm', '20 kg', 'Fenka sa nÃ¡m vrÃ¡tila po rokoch z rodiny, kde bola adoptovanÃ¡ eÅ¡te ako Å¡teniatko. Je to veselÃ¡ a aktÃ­vna fenka, mÃ¡ nadvÃ¡hu, mala by schudnÃºÅ¥ pÃ¡r kÃ­l. Ä½udÃ­ mÃ¡ veÄ¾mi rada, je vhodnÃ¡ i k deÅ¥om, potrebuje viac priestoru, bola by Å¡Å¥astnÃ¡ v rodinnom dome s vÃ¤ÄÅ¡ou zÃ¡hradou. ', NULL, NULL, 'KrÃ­Å¾enec', NULL, NULL, 'female', 1, '4652'),
(30, 'Peto', '2020-04-19 16:27:21', '2009-07-03', 'yes', '35 cm', '9,4 kg', 'StarÅ¡Ã­ psÃ­k bol hlÃ¡senÃ½ starostom obce DvornÃ­ky, bol nÃ¡jdenÃ½ spolu s Martenom. NesprÃ¡val sa veÄ¾mi priateÄ¾sky, ale mal bolesti z hnisajÃºcej a opuchnutej rany na pravej strane ÅˆufÃ¡ka, pravdopodobne z nedÃ¡vneho uhryznutia. Rana bola vyÄistenÃ¡, mÃ¡ tam veÄ¾kÃº dieru, musel mal veÄ¾kÃ© bolesti, je na antibiotikÃ¡ch. PsÃ­k uÅ¾ je v poriadku, rana sa zahojila. JavÃ­ sa ako milÃ½ a vÄaÄnÃ½, bol by vhodnÃ½ na dvor rodinnÃ©ho domu k starÅ¡Ã­m Ä¾uÄom, svojich Ä¾udÃ­ si vyberÃ¡. ', NULL, NULL, 'KrÃ­Å¾enec', NULL, NULL, 'male', 1, '4730'),
(31, 'Franto', '2020-04-19 16:28:43', '2017-08-05', 'yes', '50 cm', '14 kg', 'PsÃ­k bol nÃ¡jdenÃ½ v meste Hlohovec a privezenÃ½ polÃ­ciou. Je temperamentnÃ½, mladÃ½ a veselÃ½, mÃ¡ nieÄo z poÄ¾ovnÃ©ho psa, potrebuje veÄ¾kÃ½ vÃ½beh, miluje behanie, je vhodnÃ½ k aktÃ­vnej rodine aj ako druhÃ½ psÃ­k, s ostatnÃ½mi sa znesie, je veÄ¾mi priateÄ¾skÃ½, ale nie je pre zaÄiatoÄnÃ­kov. ', NULL, NULL, 'KrÃ­Å¾enec', NULL, NULL, 'male', 1, '4774'),
(32, 'Yon', '2020-04-19 16:29:48', '2016-08-20', 'yes', '40 cm', '13 kg', 'PsÃ­k bol nÃ¡jdenÃ½ pri kruhovke neÄaleko KrajinskÃ©ho mosta. Ãšdaje sÃº len odhadom, je dosÅ¥ uvrÄanÃ½ a nedÃ´verÄivÃ½, potrebuje trochu Äasu skÄ¾udniÅ¥ sa, k Å¾enÃ¡m je dÃ´verÄivejÅ¡Ã­, chlapov sa zo zaÄiatku veÄ¾mi bÃ¡l. PsÃ­k sa nauÄil na kolobeh Ãºtulku, svojho oÅ¡etrovateÄ¾a mÃ¡ rÃ¡d a poslÃºcha ho. Nie je pre zaÄiatoÄnÃ­kov.', NULL, NULL, 'KrÃ­Å¾enec', NULL, NULL, 'male', 1, '4790'),
(33, 'Loko', '2020-04-19 16:31:06', '2016-08-28', 'yes', '50 cm', '25 kg', 'PsÃ­ka niekto vyhodil pred Ãºtulkom,kolega ho na dlhÃ© prehovÃ¡ranie a konzervu odchytil. NemÃ¡ Å¾iadne oznaÄenie, len obojok. PoÄiatoÄnÃ½ strach je preÄ, je to priateÄ¾skÃ½ a milÃ½ psÃ­k. NajradÅ¡ej je vonku, keÄ mÃ´Å¾e behaÅ¥ po dvore.', NULL, NULL, 'KrÃ­Å¾enec', NULL, NULL, 'male', 1, '4791'),
(34, 'Alpo', '2020-04-19 16:32:35', '2015-11-13', 'yes', '40 cm', '10,6 kg', 'PsÃ­k bol odchytenÃ½ pri Auparku, kde zmÃ¤tene behal, zo zaÄiatku trochu zÃºril, ale po dovezenÃ­ sa uÅ¾ ukÄ¾udnil. UkÃ¡zal sa ako milÃ½, ale eÅ¡te opatrnÃ½, bol veÄ¾mi vyhladovanÃ½, nemÃ¡ Å¾iadne oznaÄenie. PsÃ­k sa uÅ¾ cÃ­ti bezpeÄne, teÅ¡Ã­ sa oÅ¡etrovateÄ¾om, bol by vhodnÃ½ na dvor rodinnÃ©ho domu, rÃ¡d chodÃ­ na prechÃ¡dzky. ', NULL, NULL, 'KrÃ­Å¾enec', NULL, NULL, 'male', 1, '4865'),
(35, 'Joky', '2020-04-19 16:33:57', '2011-01-11', 'yes', '45 cm', '13 kg', 'StarÅ¡Ã­ psÃ­k bol zrazenÃ½ v obci VeÄ¾kÃ© KostoÄ¾any, hneÄ odvezenÃ½ na veterinu, je v poriadku, nemÃ¡ vÅ¡ak Å¾iadne oznaÄenie. Zo zaÄiatku bol veÄ¾mi uvrÄanÃ½ zo stresu a strachu, nedalo sa s nÃ­m manipulovaÅ¥, ale uÅ¾ sa dÃ¡ pohladkaÅ¥, je pokojnÃ½ a nenÃ¡roÄnÃ½, vhodnÃ½ k starÅ¡Ã­m Ä¾uÄom do rodinnÃ©ho domu s prÃ­stupom dnu.', NULL, NULL, 'KrÃ­Å¾enec', NULL, NULL, 'male', 1, '4908'),
(36, 'Tiviko', '2020-04-19 16:35:40', '2017-01-15', 'yes', '55 cm', '20 kg', 'PsÃ­k zostal v obci Siladice sÃ¡m v opustenom dome v zlÃ½ch podmienkach odkÃ¡zanÃ½ na pomoc Ä¾udÃ­, kontaktoval nÃ¡s veÄ¾mi milÃ½ pÃ¡n starosta, ktorÃ½ mu kupoval jedlo a hÄ¾adal pre psÃ­ka pomoc, aj ho priviezol. ÄŽakujeme aj Ä¾uÄom,ktorÃ­ sa ponÃºkli na prevoz psÃ­ka. Je prÃ­tulnÃ½ a priateÄ¾skÃ½, rÃ¡d lieta po dvore, mÃ¡ veÄ¾a energie, potrebuje vÃ¤ÄÅ¡Ã­ vÃ½beh.', NULL, NULL, 'KrÃ­Å¾enec', NULL, NULL, 'male', 1, '4913'),
(37, 'Imon', '2020-04-19 16:37:11', '2012-02-15', 'no', '30 cm', '8,4 kg', 'PsÃ­k bol odchytenÃ½ v obci Pastuchov, na Äas sa ho ujali na obecnom Ãºrade v obci KÄ¾aÄany, kÃ½m sa neuvoÄ¾nÃ­ miesto, Äakujeme pani starostke za pomoc. PsÃ­k je priateÄ¾skÃ½,na svoj vek vitÃ¡lny, len neznÃ¡Å¡a, keÄ ho chce niekto braÅ¥ na ruky, to sa mu nepÃ¡Äi. StaÄÃ­ mu menÅ¡Ã­ vÃ½beh, je nenÃ¡roÄnÃ½ a veÄ¾mi ÄistotnÃ½.', NULL, NULL, 'KrÃ­Å¾enec', NULL, NULL, 'male', 1, '4940'),
(38, 'Gugo', '2020-04-19 16:38:31', '2012-12-27', 'yes', '45 cm', '14 kg', 'PsÃ­k pred rokmi adoptovanÃ½ od nÃ¡s bol odobranÃ½ z nevhodnÃ½ch podmienok, Å¾il na reÅ¥azi. Boli sme upozornenÃ­ obÄanmi z obce. UkÃ¡zal sa ako priateÄ¾skÃ½ a pokojnÃ½ psÃ­k, staÄÃ­ mu dvor rodinnÃ©ho domu a hlavne veÄ¾a lÃ¡sky v kruhu rodiny.', NULL, NULL, 'KrÃ­Å¾enec', NULL, NULL, 'male', 1, '4958'),
(39, 'Shell', '2020-04-19 16:39:43', '2018-04-09', 'yes', '60 cm', '25 kg', 'PsÃ­k bol hlÃ¡senÃ½ obÄanmi, Å¾e sa zdrÅ¾uje Ãºdajne uÅ¾ 10 dnÃ­ na Äerpacej stanici ÄŒervenÃ­k pri diaÄ¾nici. Boli sme ho vziaÅ¥, mÃ¡ problÃ©my s oÄkami, mihalnice rastÃº dovnÃºtra, Äo mu veÄ¾mi drÃ¡Å¾di oÄi, musia byÅ¥ zoperovanÃ©, zrejme preto bol aj vyhodenÃ½. Bol plnÃ½ klieÅ¡Å¥ov. PsÃ­k sa javÃ­ ako priateÄ¾skÃ½, hravÃ½, mÃ¡ veÄ¾a sily, len treba dÃ¡vaÅ¥ pozor pri pohyboch, niekedy zareaguje na ruku vrÄanÃ­m a chÅˆapnutÃ­m, pravdepodobne bol aj bitÃ½. Ä½udÃ­ si takisto vyberÃ¡, nemusÃ­ kaÅ¾dÃ©ho, potrebuje skÃºsenÃº a pevnÃº ruku.', NULL, NULL, 'KrÃ­Å¾enec Cane Corso', NULL, NULL, 'male', 1, '4961'),
(40, 'Barma', '2020-04-19 16:41:15', '2014-07-01', 'yes', '68 cm', '36,4 kg', 'StarÅ¡ia pokojnÃ¡ fenka, dobre Å¾ivenÃ¡, bola nÃ¡jdenÃ¡ v Hlohovci vo veÄernÃ½ch hodinÃ¡ch. Fenka je dobrÃ¡Äka, ale stÃ¡le smutnÃ¡, tak by chcela svoju rodinu, Äo ju neopustÃ­, veÄ¾mi Äasto narieka.', NULL, NULL, 'KrÃ­Å¾enec', NULL, NULL, 'female', 1, '5059'),
(41, 'Nikito', '2020-04-19 16:42:26', '2015-08-12', 'yes', '70 cm', '33 kg', 'MohutnÃ½ vlÄiak bol nÃ¡jdenÃ½ v obci Chtelnica, pÃ¡n starosta mu hÄ¾adal pomoc. PsÃ­ka sme boli vziaÅ¥, javil sa priateÄ¾skÃ½, nemal Å¾iadne oznaÄenie. Nikita sa vrÃ¡til z adopcie. Jeho majiteÄ¾ka nÃ¡m poskytla cennÃ© info ohÄ¾adne jeho sprÃ¡vania: Je nadmieru inteligentnÃ½, rÃ½chlo sa uÄÃ­, ale prejavuje sa dominantne. Potrebuje skÃºsenÃº a pevnÃº ruku, veÄ¾a voÄ¾nÃ©ho priestoru, mÃ¡ obrovskÃº energiu a je vynikajÃºci strÃ¡Å¾ca. MÃ¡ vÅ¡ak mÃ­nus a to je agresia voÄi inÃ½m psom, vie zaÃºtoÄiÅ¥ plnou silou a bez provokÃ¡cie od druhÃ©ho psa, s radosÅ¥ou prenasleduje cyklistov a beÅ¾cov. Na vychÃ¡dzkach mÃ´Å¾e Ã­sÅ¥ len s nÃ¡hubkom, krÃ¡sne chodi popri nohe, poÄÃºva na povely na jednotku a rÃ¡d sa vozÃ­ v aute. Bol by vhodnÃ½ do domÃ¡cnosti bez malÃ½ch detÃ­ a bez domÃ¡cich milÃ¡Äikov. Nie je to typ psa, ktorÃ©ho si mÃ´Å¾ete Ä¾ahko vziaÅ¥ so sebou na beh, vÃ½let s rodinou alebo vÃ½let na bicykli kvÃ´li jeho agresii k ostatnÃ½m psom a okoliu. IdeÃ¡lne pre neho by bolo bÃ½vaÅ¥ niekde na malej farme alebo chate s veÄ¾kÃ½m pozemkom.', NULL, NULL, 'NO', NULL, NULL, 'male', 1, '5058'),
(42, 'Dion', '2020-04-19 16:43:47', '2018-08-01', 'yes', '50 cm', '17 kg', 'PsÃ­k bol prevzanÃ½ v rÃ¡mci pomoci z inÃ©ho okresu, kde sa tÃºlal skoro 2 mesiace a koneÄne sa ho podarilo odchytiÅ¥. JavÃ­ sa ako priateÄ¾skÃ½ a vÄaÄnÃ½ dobrÃ¡k, na krku mÃ¡ eÅ¡te v srsti znaky po reÅ¥azi, potrebuje viac vÃ½behu, ale kde nie je hydina a maÄky, tam sa prejavÃ­ uÅ¾ ako loveckÃ½ terier. Ku podivu je veÄ¾mi ÄistotnÃ½.', NULL, NULL, 'KrÃ­Å¾enec', NULL, NULL, 'male', 1, '5092'),
(43, 'Dabbo', '2020-04-19 16:45:19', '2011-09-08', 'yes', '30 cm', '8,2 kg', 'PrvÃ½ z troch 3 psÃ­kov - sÃºrodenci a jeden Å¡pic Å¾ili po smrti majiteÄ¾ky na dvore, kde ich chodili prÃ­buznÃ­ krmiÅ¥. PredtÃ½m Å¾ili vo vnÃºtri, majiteÄ¾ka ich mala veÄ¾mi rada, po jej smrti Å¾ili pol roka na dvore, srsÅ¥ majÃº veÄ¾mi zanedbanÃº. SÃº uÅ¾ starÅ¡Ã­, ale vitÃ¡lni.', NULL, NULL, 'KrÃ­Å¾enec maltÃ©zÃ¡ka', NULL, NULL, 'male', 1, '5100'),
(44, 'Abbo', '2020-04-19 16:46:54', '2011-08-08', 'yes', '35 cm', '11 kg', 'DruhÃ½ z troch 3 psÃ­kov - sÃºrodenci a jeden Å¡pic Å¾ili po smrti majiteÄ¾ky na dvore, kde ich chodili prÃ­buznÃ­ krmiÅ¥. PredtÃ½m Å¾ili vo vnÃºtri, majiteÄ¾ka ich mala veÄ¾mi rada, po jej smrti Å¾ili pol roka na dvore, srsÅ¥ majÃº veÄ¾mi zanedbanÃº, ÄakÃ¡ ich Ãºprava a vyÅ¡etrenie. SÃº uÅ¾ starÅ¡Ã­, ale veÄ¾mi ÄipernÃ­. UÅ¾ ostrihanÃ½, zuby vyÄistenÃ©, ale 10 muselo von.', NULL, NULL, 'KrÃ­Å¾enec maltÃ©zÃ¡ka', NULL, NULL, 'male', 1, '5101'),
(45, 'Belo', '2020-04-19 16:48:25', '2018-10-25', 'yes', '60 cm', '17,5 kg', 'PsÃ­k bol nÃ¡jdenÃ½ v obci Svrbice pred tromi mesiacmi, ujal sa ho nÃ¡lezca s tÃ½m, Å¾e zatiaÄ¾ zostane u neho a bude sa zdieÄ¾aÅ¥. Na psÃ­ka sa napriek inzercii nik neprihlÃ¡sil, situÃ¡cia sa vyhrotila, nakoÄ¾ko psÃ­k dokÃ¡Å¾e preskoÄiÅ¥ aj 2 metrovÃ½ plot a zvykol utiecÅ¥. U nÃ¡lezcu uÅ¾ zostaÅ¥ nemÃ´Å¾e. Je temperamentnÃ½, potrebuje viac vÃ½behu a aktivÃ­t, pevnÃº ruku, ideÃ¡lny k rodine, Äo mÃ¡ Äas sa mu venovaÅ¥.', NULL, NULL, 'KrÃ­Å¾enec', NULL, NULL, 'male', 1, '5138'),
(46, 'Lipo', '2020-04-19 19:38:44', '2020-11-01', 'yes', '50 cm', '24 kg', 'MladÃ½ psÃ­k bol nÃ¡jdenÃ½ pri Kocke, je trochu plachÃ½, nemÃ¡ Å¾iadne oznaÄenie, len obojok. Je priateÄ¾skÃ½, miluje Ä¾udÃ­, ideÃ¡lny rodinnÃ½ spoloÄnÃ­k, vhodnÃ½ aj k deÅ¥om. ', NULL, NULL, 'KrÃ­Å¾enec', NULL, NULL, 'male', 1, '5153'),
(47, 'Kord', '2020-04-19 19:40:12', '2018-11-12', 'yes', '50 cm', '17 kg', 'PriateÄ¾skÃ½ psÃ­k bol nÃ¡jdenÃ½ v obci Koplotovce, nemÃ¡ Å¾iadne oznaÄenie. Je to veselÃ¡ hyperaktÃ­vna nÃ¡tura, miluje loptiÄky a veÄ¾a pohybu, je vhodnÃ½ k aktÃ­vnej rodine. ', NULL, NULL, 'KrÃ­Å¾enec', NULL, NULL, 'male', 1, '5163'),
(48, 'Tarot', '2020-04-19 19:41:35', '2018-11-17', 'yes', '50 cm', '11,2 kg', 'PsÃ­k bol hlÃ¡senÃ½ medzi Tavosom a EmpÃ­riou, podarilo sa ho nalÃ¡kaÅ¥ na jedlo aÅ¾ do Ãºtulku, bol veÄ¾mi hladnÃ½. NemÃ¡ Å¾iadne oznaÄenie, trochu je vyplaÅ¡enÃ½, ale dÃ¡ sa s nÃ­m manipulovaÅ¥. UkÃ¡zal sa ako milÃ½ a priateÄ¾skÃ½ psÃ­k, je to neriadenÃ¡ strela, potrebuje veÄ¾a vÃ½behu a aktivÃ­t, ideÃ¡lny k mladÅ¡ej Å¡portovo zaloÅ¾enej rodine.', NULL, NULL, 'KrÃ­Å¾enec', NULL, NULL, 'male', 1, '5165'),
(49, 'BystrÃ­k', '2020-04-20 20:16:22', '2018-11-01', 'yes', '65 cm', '26,4 kg', 'MladÃ½ psÃ­k bol zachrÃ¡nenÃ½ z nevhodnÃ½ch podmienok od spoluobÄanov jednÃ½m pÃ¡nom, ale nemÃ´Å¾e si ho nechaÅ¥, mÃ¡ dvoch svojich. Je mierne plachÃ½, ale milÃ½ a priateÄ¾skÃ½. Potrebuje viac vÃ½behu a Äloveka, Äo by sa mu venoval, je hravÃ½ a rÃ¡d v spoloÄnosti Ä¾udÃ­, znesie sa aj s ostatnÃ½mi psÃ­kmi.', NULL, NULL, 'NemeckÃ½ krÃ¡tkosrstÃ½ stavaÄ', NULL, NULL, 'male', 1, '5168'),
(50, 'Jakob', '2020-04-20 20:18:14', '2012-11-20', 'yes', '65 cm', '26,4 kg', 'PsÃ­k, ktorÃ½ bol hlÃ¡senÃ½ 4 dni z rÃ´znych ÄastÃ­ mesta je koneÄne odchytenÃ½. Podarilo sa to jednÃ©mu pÃ¡novi, psÃ­k bol uÅ¾ zoslabnutÃ½ od hladu, tak rezignoval. Zo zaÄiatku trochu uvrÄanÃ½, nevie sa teraz dojesÅ¥. NemÃ¡ Å¾iadne oznaÄenie, len zelenÃ½ obojok. NajÅ¡Å¥astnejÅ¡Ã­ je, keÄ mÃ´Å¾e lietaÅ¥ po dvore. Potrebuje vÃ¤ÄÅ¡Ã­ vÃ½beh a viac aktivÃ­t. ', NULL, NULL, 'KrÃ­Å¾enec labradora', NULL, NULL, 'male', 1, '5173'),
(51, 'Yma', '2020-04-20 20:19:42', '2013-12-01', 'yes', '35 cm', '8 kg', 'TelefonÃ¡t zo Zverlandu: \"Jeden pÃ¡n, predstavil sa ako BetÃ¡k, nÃ¡m priniesol zrazenÃº fenku s otrasom mozgu a zlomenou bedrovou kosÅ¥ou. Nechal ju u nÃ¡s s tÃ½m, Å¾e sa ozve. Na uvedenÃ½ telefon vÅ¡ak nereaguje, podÄ¾a Äipu sme zistili, Å¾e je z vÃ¡Å¡ho Ãºtulku.\" HneÄ sme zistili majiteÄ¾a z naÅ¡ej databÃ¡zy, bola adoptovanÃ¡ od nÃ¡s pred 6-timi rokmi, ale majiteÄ¾ka nereaguje na naÅ¡e telefonÃ¡ty - je nedostupnÃ¡, eÅ¡te preverÃ­me bydlisko, telefon mohol byÅ¥ za tie roky aj zmenenÃ½. Fenka musela byÅ¥ hneÄ zoperovanÃ¡, po dohovore s klinkou Zverland sme prevzali zatiaÄ¾ nÃ¡klady na OP na nÃ¡s, Å¡lo o Äas a zÃ¡chranu zranenÃ©ho zvieratka. Nie je to malÃ¡ suma pre Ãºtulok, ale Äakujeme veÄ¾mi pekne tÃ­mu Zverland za rÃ½chlu pomoc a poskytnutie zÄ¾avy za nÃ¡roÄnÃº operÃ¡ciu. MaliÄkÃ¡ je zatiaÄ¾ dosÅ¥ hryzavÃ¡, musÃ­ sa s Åˆou veÄ¾mi opatrne manipulovaÅ¥, ale to je v jej stave pochopiteÄ¾nÃ©, dÃºfame, Å¾e bude v poriadku. <3 Po Äase sa ukÃ¡zala ako to najzlatÅ¡ie stvorenie, chodÃ­ za nami ako tieÅˆ, vyÅ¾aduje si hladkanie, rana je pekne zahojenÃ¡. Fenka je rezervovanÃ¡.', NULL, NULL, 'KrÃ­Å¾enec', NULL, NULL, 'female', 1, '5181'),
(52, 'Jacky', '2020-04-20 20:26:24', '2012-05-01', 'yes', '40 cm', '10,50 kg', 'PsÃ­k bol prevzatÃ½ v rÃ¡mci pomoci z inÃ©ho OZ. NaÅ¡iel sa veÄ¾mi zanedbanÃ½, bol upravenÃ½. Zo zaÄiatku je nedÃ´verÄivÃ½ a uvrÄanÃ½, ale dÃ¡ sa s nÃ­m manipulovaÅ¥, mÃ¡ radÅ¡ej Å¾eny. Bol by vhodnÃ½ aj k inÃ©mu psÃ­kovi do rodinnÃ©ho domu s prÃ­stupom dnu.', NULL, NULL, 'KrÃ­Å¾enec shi-tzu', NULL, NULL, 'male', 1, '5202'),
(53, 'Nelli', '2020-04-20 20:35:43', '2019-09-20', 'no', '27 cm', '3,6 kg', 'PrvÃ¡ fenka zo Å¡tyroch Å¡teniatok nÃ¡jdenÃ½ch vyhodenÃ½ch v obci ÄŒereÅˆany. VÅ¡etky silno zablÅ¡enÃ©, so svrabom v uÅ¡kÃ¡ch, uÅ¾ sa lieÄia. U Å¡teniatok prepukol parvovÃ­rus, ale naÅ¡Å¥astie sÃº uÅ¾ po pobyte na klinike v poriadku. Fenka je rezervovanÃ¡.', NULL, NULL, 'KrÃ­Å¾enec Å¡pica', NULL, NULL, 'female', 1, '5208'),
(54, 'Aimy', '2020-04-20 20:37:01', '2019-09-20', 'no', '27 cm', '4 kg', 'Tretia fenka zo Å¡tyroch Å¡teniatok nÃ¡jdenÃ½ch vyhodenÃ½ch v obci ÄŒereÅˆany. VÅ¡etky silno zablÅ¡enÃ©, so svrabom v uÅ¡kÃ¡ch, sÃº uÅ¾ v lieÄbe. U Å¡teniatok prepukol parvovÃ­rus, ale naÅ¡Å¥astie sÃº uÅ¾ po pobyte na klinike v poriadku. Fenka je rezervovanÃ¡.', NULL, NULL, 'KrÃ­Å¾enec Å¡pica', NULL, NULL, 'female', 1, '5210'),
(55, 'Charlie', '2020-04-20 20:38:17', '2019-06-01', 'no', '55 cm', '17 kg', 'ZÃºboÅ¾enÃ½ mladÃ½ psÃ­k bol nÃ¡jdenÃ½ v Hlohovci a privezenÃ½ polÃ­ciou. NemÃ´Å¾e sa postaviÅ¥ na prednÃ© noÅ¾iÄky, je vychudnutÃ½ a zoslabnutÃ½, na prednej noÅ¾iÄke mÃ¡ otvorenÃº ranu. Zajtra bude robenÃ© RTG, pravdepodobne mÃ¡ zlomeniny, dostal lieky proti bolesti. Je veÄ¾mi milÃ½ a vÄaÄnÃ½, len si tichuÄko leÅ¾kÃ¡, bol aj veÄ¾mi vyhladovanÃ½. :( ZatiaÄ¾ rehablitÃ¡cia nepripadÃ¡ do Ãºvahy kvÃ´li ranÃ¡m, jedna na prednej noÅ¾iÄke je otvorenÃ¡ aÅ¾ po kosÅ¥, vymÃ½va sa, mastiÄkuje, dostÃ¡va lieky proti bolesti a antibiotikÃ¡, aÅ¾ keÄ sa rany zahoja, uvidÃ­me, Äi sa na noÅ¾iÄku postavÃ­. ApetÃ­t mÃ¡ veÄ¾mi dobrÃ½, uÅ¾ trochu zosilnel, stavia sa na 3 noÅ¾iÄky a veÄ¾a nÃ¡m rozprÃ¡va. :) UkÃ¡zal sa ako skvelÃ½ psÃ­k, milÃ½, prÃ­tulnÃ½, trochu oplaÅ¡enÃ½ hravÃ½ puberÅ¥Ã¡k ,rany po tele sa uÅ¾ zahojili, nesmierne sa teÅ¡Ã­, keÄ mÃ´Å¾e behaÅ¥. ProblÃ©m mu vÅ¡ak robÃ­ stÃ¡le Ä¾avÃ¡ prednÃ¡ noÅ¾iÄka, ktorÃº nepouÅ¾Ã­va. V pondelok 2.3. sme objednanÃ­ na MMG do TrenÄÃ­na, nakoÄ¾ko ju nepouÅ¾Ã­va, aj keÄ cviÄÃ­me, je tam poruÅ¡enÃ½ nerv, tak MMG ukÃ¡Å¾e, na ktorom mieste a Äi sa dÃ¡ rehabilitÃ¡ciou noÅ¾iÄku sfunkÄniÅ¥. PokiaÄ¾ by to bol brachiÃ¡lny nerv, tak to bude horÅ¡ie.', NULL, NULL, 'KrÃ­Å¾enec NO', NULL, NULL, 'male', 1, '5218'),
(56, 'Kambal', '2020-04-20 20:39:47', '2017-02-01', 'yes', '62 cm', '30,3 kg', 'PsÃ­k bol nÃ¡jdenÃ½ za obcou Dubovany uviazanÃ½ o strom. Bola ho vziaÅ¥ veÄ¾mi zlatÃ¡ pani, prenocovala a rÃ¡no priviezla. PsÃ­k nemÃ¡ Å¾iadne oznaÄenie, je dobre Å¾ivenÃ½, mÃ¡ veÄ¾kÃº silu, k Ä¾uÄom nesmierne prÃ­tulnÃ½, ovlÃ¡da zÃ¡kladnÃ© povely, moÅ¾no niekto poznÃ¡ majiteÄ¾a.', NULL, NULL, 'Stafford', NULL, NULL, 'male', 1, '5231'),
(57, 'Gady-Bodi', '2020-04-20 20:40:54', '2017-02-23', 'yes', '60 cm', '18 kg', 'VystraÅ¡enÃ½ a pochudnutÃ½ psÃ­k bol nÃ¡jdenÃ½ v mestskej zÃ¡mockej zÃ¡hrade v Hlohovci a privezenÃ½ hliadkou. Na uÅ¡kÃ¡ch mÃ¡ starÅ¡ie neosrstenÃ© ranky. Ãšdaje vÃ¡ha, vÃ½Å¡ka, vek sÃº zatiaÄ¾ len odhadom, psÃ­k sa bÃ¡l, nechceli sme ho stresovaÅ¥ viac. NemÃ¡ Å¾iadne oznaÄenie, Ãºdajne sa tam tÃºlal 2 tÃ½Å¾dne. PsÃ­k sa ukÃ¡zal ako veÄ¾mi prÃ­tulnÃ½ a hravÃ½, strach uÅ¾ opadol, len by sa blÃ¡znil.', NULL, NULL, 'KrÃ­Å¾enec labradora', NULL, NULL, 'male', 1, '5234'),
(58, 'Batido', '2020-04-20 20:42:11', '2015-03-01', 'no', '45 cm', '16 kg', 'PsÃ­k bol vyhodenÃ½ na ulici romskou rodinou na HriÄkovej ulici v PieÅ¡Å¥anoch, volali nÃ¡m deti, Å¾e mÃ¡ vrastenÃº reÅ¥az v kriku a rana hnisÃ¡. Boli sme ho vziaÅ¥, hneÄ sa Å¡lo na veterinu, rana bola oÅ¡etrenÃ¡ a nasadenÃ© lieky. PsÃ­k sa stÃ¡le tvÃ¡ri nedÃ´verÄivo, ale uÅ¾ nie je takÃ½ agresÃ­vny, musel dlho trpieÅ¥. Rana sa uÅ¾ pekne zahojila, uÅ¾ sa teÅ¡Ã­, keÄ prÃ­deme, ale stÃ¡le je nedÃ´verÄivÃ½.', NULL, NULL, 'KrÃ­Å¾enec', NULL, NULL, 'male', 1, '5239'),
(59, 'Emmi', '2020-04-20 20:44:56', '2010-03-01', 'yes', '20 cm', '2 kg', 'TotÃ¡lne vychudnutÃ¡ staruÄkÃ¡ fenka bola nÃ¡jdenÃ¡ v obci Drahovce-ÄasÅ¥ Voderady v chotÃ¡ri. Je uÅ¾ v bezpeÄÃ­ v domÃ¡cej opatere, bola vyÅ¡etrenÃ¡, je veÄ¾mi podvyÅ¾ivenÃ¡, zuby skoro nemÃ¡ a tie Äo mÃ¡, musia Ã­sÅ¥ von. NajskÃ´r musÃ­ nabraÅ¥ na vÃ¡he a zosilnieÅ¥. Adopciu momentÃ¡lne v jej stave nerieÅ¡ime. Fenka je nesmierne vÄaÄnÃ© malÃ© stvorenie, lÃ¡sku mÃ¡ na rozdÃ¡vanie, viaÅ¾e sa veÄ¾mi na Äloveka. VeÄ¾a Äasu prespÃ­, mÃ¡ rada svoj kÄ¾ud.', NULL, NULL, 'ÄŒivava', NULL, NULL, 'female', 1, '5242'),
(60, 'Tuda-Madita', '2020-04-20 20:46:38', '2019-10-01', 'no', '38 cm', '11 kg', 'Tretia fenka z 5 Å¡teniat vyhodenÃ½ch v Podoli je najmenÅ¡ia, aj najbojazlivejÅ¡ia.', NULL, NULL, 'KrÃ­Å¾enec', NULL, NULL, 'female', 1, '5252'),
(61, 'Erne-Rufus', '2020-04-20 20:48:17', '2019-04-01', 'no', '45 kg', '18 kg', 'MladÃ½ psÃ­k bol nÃ¡jdenÃ½ pri obci Ostrov, odchytila ho jedna sleÄna. UkÃ¡zal sa ako veÄ¾mi milÃ½ a hravÃ½, s ostatnÃ½mi psÃ­kmi si vychÃ¡dza bez problÃ©mov, nemÃ¡ Å¾iadne oznaÄenie.', NULL, NULL, 'KrÃ­Å¾enec', NULL, NULL, 'male', 1, '5255'),
(62, 'Simbo', '2020-04-20 20:49:41', '2019-01-01', 'no', '35 cm', '7,5 kg', 'PsÃ­k odobranÃ½ spolu s maltÃ©zÃ¡kom z obce Siladice po zomrelom majiteÄ¾ovi. Bol na vyÅ¡etrenÃ­, nekoordinovane trasie hlaviÄkou a Å¥ahÃ¡ mu ju na stranu, mÃ¡ neurologickÃ½ problÃ©m, podozrenie na encefalitÃ­du, je objednanÃ½ na MRI.', NULL, NULL, 'Å pic', NULL, NULL, 'male', 1, '5256'),
(63, 'Fussel', '2020-05-02 16:55:02', '2019-06-01', 'yes', '30 cm', '4 kg', 'VeÄ¾mi zanedbanÃ½ psÃ­k bol odobranÃ½ z obce Sildacie po ÃºmrtÃ­ majiteÄ¾a. Bol vyÅ¡etrenÃ½, mÃ¡ silnÃ½ zÃ¡pal a svrab uÅ¡iek, pravÃ© oÄko nie je vyvinutÃ©. Je vÅ¡ak milÃ½ a vÄaÄnÃ½, zo zaÄiatku sa bÃ¡l, ale ukÃ¡zal sa ako veÄ¾mi veselÃ½ a kontaktnÃ½ psÃ­k.', '', '', 'slo', 'en', 'de', 'male', 1, '5257'),
(64, 'Natan', '2020-04-20 20:53:36', '2018-02-01', 'no', '40 cm', '7,20 kg', 'MalÃ½ psÃ­k bol nÃ¡jdenÃ½ na SvÃ¤topeterskej ulici v meste Hlohovec. NemÃ¡ Å¾iadne oznaÄenie, je milÃ½, ale bojÃ­ sa muÅ¾ov. MajiteÄ¾ sa psÃ­ka vzdal, vraj mu stÃ¡le utekÃ¡. Je vhodnÃ½ aj k inÃ©mu psÃ­kovi, teÅ¡Ã­ sa im.', NULL, NULL, 'Å pic', NULL, NULL, 'male', 1, '5226'),
(65, 'Myriam', '2020-04-21 19:45:18', '2013-05-01', 'yes', '40 cm', '11,8 kg', 'SestriÄka Morgany je bledohnedej farby. Bola prinesenÃ¡ uÅ¾ s ovÃ­sajÃºcou noÅ¾iÄkou, RTG ukÃ¡zalo, Å¾e je zlomenÃ¡ stehennÃ¡ kosÅ¥ a v bruÅ¡kÃº mÃ¡ krvavÃ© hematomy. DÃºfame, Å¾e sa neukÃ¡Å¾u vÃ¡Å¾nejÅ¡ie vnÃºtornÃ© zranenia. Bude eÅ¡te dnes operovanÃ¡. VeÄ¾mi by nÃ¡m pomohla domÃ¡ca opatera pre Åˆu. MaliÄkÃ¡ nÃ¡roÄnÃº operÃ¡ciu zvlÃ¡dla, bola nÃ¡jdenÃ¡ eÅ¡te jedna trieÅ¡tivÃ¡ zlomenina klbu. Update: Myriam sa nÃ¡m vrÃ¡tila z adopcie po 7 rokoch, majiteÄ¾ka sa uÅ¾ o Åˆu nemÃ´Å¾e staraÅ¥. Å½ila v byte, mÃ¡ hygienickÃ© nÃ¡vyky, veÄ¾mi sa fixuje na svojho Äloveka, je hravÃ¡, posluÅ¡nÃ¡, mÃ¡ rada svoj kÄ¾ud. HÄ¾adÃ¡me jej novÃ½ domov k starÅ¡Ã­m Ä¾uÄom, ktorÃ½m by robila radosÅ¥. ', NULL, NULL, 'KrÃ­Å¾enec jazveÄÃ­ka', NULL, NULL, 'female', 1, '2954'),
(66, 'Alex', '2020-04-20 20:57:20', '2017-10-10', 'yes', '25 cm', '4,5 kg', 'PsÃ­k bol odobranÃ½ od majiteÄ¾a, ktorÃ½ sa uÅ¾ nevedel o neho dostatoÄne postaraÅ¥. Po prÃ­chode zo strachu hrÃ½zol na vÅ¡etky strany, bol umiestnenÃ½ do DO a hneÄ na druhÃ½ deÅˆ to bolo najvÃ¤ÄÅ¡ie zlatÃ­Äko. Bol by vhodnÃ½ aj k deÅ¥om od 12 rokov, k Ä¾uÄom, ktorÃ­ majÃº dostatok Äasu sa mu venovaÅ¥, je veÄ¾mi rÃ¡d v spoloÄnosti Ä¾udÃ­. VeÄ¾mi sa viaÅ¾e na konkrÃ©tneho Äloveka, je stÃ¡le v pÃ¤tÃ¡ch ako tieÅˆ, vonku chrÃ¡ni svojho Äloveka pred vÅ¡etkÃ½mi, vadia mu cyklisti, tÃ½ch nemusÃ­. S inÃ½mi psÃ­kmi sa znesie, maÄky nemusÃ­. Alex sa nÃ¡m vrÃ¡til z adopcie, i keÄ bol v skvelÃ½ch rukÃ¡ch, jeho neustÃ¡le Å¡tekanie pri najmenÅ¡om Å¡uchote, hlasoch z chodby vyvrcholilo do sÅ¥aÅ¾nostÃ­ obyvateÄ¾ov bytovky, hrozili aj sÃºdom, rieÅ¡ila to aj polÃ­cia, s Å¥aÅ¾kÃ½m srdcom bol vrÃ¡tenÃ½ spÃ¤Å¥. :( Rodina skÃºÅ¡ala vÅ¡etko moÅ¾nÃ©, ako tomu zamedziÅ¥, psÃ­ka si veÄ¾mi obÄ¾Ãºbili, bojovali skoro mesiac, ale bezÃºspeÅ¡ne. Alex potrebuje domov v rodinnom dome s prÃ­stupom dnu, ideÃ¡lne k starÅ¡Ã­m Ä¾uÄom.', NULL, NULL, 'RatlÃ­k', NULL, NULL, 'male', 1, '5213'),
(68, 'English Dog test', '2020-12-30 11:54:56', '1999-02-06', 'yes', '70cm', '13 kg', 'Slovak test description\r\nedit dog description test', 'English test description\r\n\r\nenglish description edit test', 'German test description\r\n\r\ngerman description edit test ', 'English test', '', '', 'male', 1, '123'),
(69, 'Fluffy', '2021-03-18 18:37:30', '2021-03-15', 'no', '80 cm', '13 kg', 'sk', 'en', 'de', 'dsfas', 'fdf', 'df', 'male', 1, '');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `eshop`
--

CREATE TABLE `eshop` (
  `eshop_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `price` int(11) NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `conditionn` varchar(40) COLLATE utf8_bin NOT NULL,
  `quantityy` int(11) NOT NULL,
  `product_type` varchar(200) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `eshop_customer`
--

CREATE TABLE `eshop_customer` (
  `customer_id` int(11) NOT NULL,
  `full_name` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `address` varchar(155) COLLATE utf8_bin NOT NULL,
  `telephone` varchar(100) COLLATE utf8_bin NOT NULL,
  `fk_eshop_id` int(11) NOT NULL,
  `comment` text COLLATE utf8_bin NOT NULL,
  `status` varchar(55) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `eshop_image`
--

CREATE TABLE `eshop_image` (
  `eshop_image_id` int(11) NOT NULL,
  `eshop_image` text COLLATE utf8_bin NOT NULL,
  `fk_eshop_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `help_us`
--

CREATE TABLE `help_us` (
  `help_id` int(11) NOT NULL,
  `help_text_sk` longtext NOT NULL,
  `help_title_sk` mediumtext NOT NULL,
  `help_title_en` varchar(200) DEFAULT NULL,
  `help_text_en` text,
  `help_title_de` varchar(200) DEFAULT NULL,
  `help_text_de` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `help_us`
--

INSERT INTO `help_us` (`help_id`, `help_text_sk`, `help_title_sk`, `help_title_en`, `help_text_en`, `help_title_de`, `help_text_de`) VALUES
(1, '<span>ZvieratÃ¡ skutoÄne potrebujÃº pomoc nÃ¡s vÅ¡etkÃ½ch. Bez podpory verejnosti by organizÃ¡cie ako aj nÃ¡Å¡ Ãºtulok neboli schopnÃ© fungovaÅ¥. PomÃ´Å¾te aj vy! Aj keÄ sa necÃ­tite materiÃ¡lne bohatÃ½, iste si vyberiete z moÅ¾nostÃ­, ako podporiÅ¥ zÃ¡chranu zvierat a prispieÅ¥:<br>\r\n<b>- vecnÃ½m darom<br>\r\n- finanÄne<br>\r\n- bezplatnou sluÅ¾bou</b><br>\r\n<br>\r\n<b>StaÅˆte sa aktivistom</b> - Älovekom, ktorÃ½ vo svojom voÄ¾nom Äase dobrovoÄ¾ne a neziÅ¡tne pomÃ¡ha v rÃ´znych oblastiach Äinnosti organizÃ¡cie, napr. venÄenie psÃ­kov, pomoc pri akciÃ¡ch, hÄ¾adanie sponzorov, kontroly adoptovanÃ½ch psÃ­kov, doÄasnÃº opateru Å¡teniatok a chorÃ½ch zvierat v rÃ¡mci PieÅ¡Å¥an, prednÃ¡Å¡ky na ZÅ ...\r\n<br><br>\r\nAk doma alebo v prÃ¡ci nÃ¡jdete veci, ktorÃ© uÅ¾ nepotrebujete, darujte nÃ¡m ich. <b>Potrebujeme najmÃ¤ krmivo pre zvieratÃ¡, vodÃ­tka, obojky, Äistiace a dezinfekÄnÃ© prostriedky, lieky pre zvieratÃ¡, metly, lopaty, vedrÃ¡, handry, stavebnÃ½ materiÃ¡l, pracovnÃ© obleÄenie, rukavice, kancelÃ¡rske potreby â€“ perÃ¡, obÃ¡lky, papier, fixky, kancelÃ¡rsky papier...</b> VÃ¡Å¡ dar bude prijatÃ½ s veÄ¾kou vÄakou!\r\n<br><br>\r\n<b>FinanÄnÃ½ dar</b> bude pouÅ¾itÃ½ na ÄinnosÅ¥ a prevÃ¡dzku Ãºtulku RegionÃ¡lneho centra Slobody zvierat PieÅ¡Å¥any. PrispieÅ¥ mÃ´Å¾ete na nÃ¡Å¡ ÃºÄet v Tatra banke - <b>IBAN: SK5011000000002926886043</b>, BIC: TATRSKBXXXX alebo PoÅ¡tovej banke â€“ <b>IBAN: SK5865000000000020046882</b>, BIC: POBN SKBA alebo cez <b>PayPal na utulok@utulok-piestany.sk</b>.<br> \r\nFinanÄnÃ½ dar nÃ¡m mÃ´Å¾ete darovaÅ¥ aj osobne, prÃ­p. mÃ´Å¾ete prispieÅ¥ na konkrÃ©tnu vec (vÃ½stavba koterca, lieÄenie konkrÃ©tneho psÃ­ka...). KaÅ¾doroÄne je aktuÃ¡lne darovanie <b>2% z dane</b> (relevantnÃ© tlaÄivo na stiahnutie bÃ½va umiestnenÃ© na hlavnej strÃ¡nke v obdobÃ­ odovzdÃ¡vania daÅˆovÃ½ch priznanÃ­).\r\n<br><br>\r\nAk ste majiteÄ¾om firmy alebo odbornÃ­k na niektorÃº z nasledujÃºcich Äi inÃ½ch oblastÃ­, <b>poskytnite bezplatne prÃ¡ce</b>, vÅ¡etko je v prospech zvieratiek v Ãºtulku. Potrebujeme pomoc pri:<br>\r\n<b>- stavebnÃ© prÃ¡ce pri dobudovanÃ­ Ãºtulku<br>\r\n- stolÃ¡rske prÃ¡ce<br>\r\n- zvÃ¡raÄskÃ© prÃ¡ce<br>\r\n- zÃ¡hradnÃ­cke prÃ¡ce<br>\r\n- grafickÃ© prÃ¡ce a tlaÄ informaÄnÃ½ch materiÃ¡lov<br>\r\n- oprava auta</b><br>\r\n<br>\r\nTeÅ¡Ã­me sa na spoloÄnÃ© aktivity pre pomoc a zÃ¡chranu zvierat!:) Kontaktujte nÃ¡s na 0904 170 913 alebo utulok@utulok-piestany.sk.</span>', 'helps', '', 'Animals really depend on our help. Without public support, organization like ours could not function. Help us too! Even if you don\'t feel materially rich, we\'re sure you can choose one of the options how to contribute to animal\'s rescue:<br> \r\n<b>- materially / do a service for free<br>\r\n- financially<br>\r\n- provide a useful contact</b>\r\n<br><br>\r\n<b>Become an activist</b> - a person, who in their free time works as a volunteer and helps in various areas of organization\'s activity, <b>which means for example dog walking, helping with events, looking for sponsors, checking on adopted animals, fostering puppies or sick / recovering animals (within Piestany area), lecturing at schools...</b>\r\n\r\n<br><br>\r\n\r\nIf you find things at home or at work which you no longer need, give them to us. <b>We mainly need dog / cat food, collars and leashes, disinfectants and germicides, animal medication, brooms, shovels, buckets, rags, gloves, working clothes, building material, office supplies - pens, envelopes, markers, printing paper...</b> Your gift will be accepted with the utmost gratitude!\r\n\r\n<br><br>\r\n\r\n<b>Financial donation</b> will be used for our shelter\'s operation. You can transfer the funds to our official bank account in Tatra bank - <b>IBAN: SK5011000000002926886043</b>, BIC: TATRSKBXXXX or Postova bank â€“ <b>IBAN: SK5865000000000020046882</b>, BIC: POBN SKBA or also via <b>PayPal at utulok@utulok-piestany.sk.</b> <br>\r\n<br>\r\nFinancial gift can also be brought by you in person or you can decide to fund a particular need / activity (building a new kennel, treatment of a particular dog or cat...). <b>You can also give us 2% of your income tax</b> (a valid form is downloadable on our website during the period of income tax statement\'s submission).\r\n\r\n<br><br>\r\nIf you own a business or are a specialist in one of the below areas, <b>be so kind and provide your services for free</b>, it will all be for the benefit of shelter animals. <br>We need help with:<br>\r\n<b>- building / finalizing the shelter<br>\r\n- cabinetmaking<br>\r\n- welding<br>\r\n- gardening<br>\r\n- grafic design and print of info materials<br>\r\n- car repair</b>\r\n\r\n<br><br>\r\n\r\nWe\'re looking forward to our cooperation and saving the animals together!:)\r\n\r\n<br><br>\r\n\r\nShould you be interested, please contact us at +421 904 170 913 or utulok@utulok-piestany.sk.\r\n', '', 'Die Tiere brauchen die Hilfe von uns allen. Ohne UnterstÃ¼tzung des Ã–ffentlichkeit kann das Tierheim nicht funktionieren. Alle kÅ‘nnen helfen, sind verschiedene MÅ‘glichkeiten:<br>\r\n<b> - materielle Hilfe<br>\r\n- finanzielle Hilfe<br>\r\n- freiwillige Hilfe </b> <br>\r\n<br>\r\n<b>Wir suchen die Aktivisten und  Menschen</b>, welche haben freie Zeit selbstlos helfen: <b>mit Tieren spazieren gehen, Hilfe bei Aktionen, Sponsoren suchen, Kontrollen von vermittelten Tieren, Pflegeplatz fÃ¼r die Welpen und kranke Tiere in Ort.</b>\r\n<br><br>\r\nSchenken sie unnÅ‘tige Sachen aus Haushalt, wir brauchen vor allem <b>diÃ¤t Futter, HalsbÃ¤nder, Leinen, Reinigungsmittel, Desinfektion, Augen und Ohrensalben, Entwurm- und Entflohmittel, Besen, kleine Schaufel, KÃ¼bel, Baumaterial, Arbeitskleidung, 120 l PlastiksÃ¤cke, Katzenstreu, Gumihandschuhe, BÃ¼robedarf.</b>\r\nWir werden dankbar fÃ¼r jede Hilfe!\r\n<br><br>\r\n<b>Finanzielle UnterstÃ¼tzung</b> wird benÃ¼tzt fÃ¼r das Tierheimbetrieb.\r\n<br><br>\r\nUnsere Konto: RegionÃ¡lne centrum Sloboda zvierat PieÅ¡Å¥any<br>\r\nKonto Nr.: <b>IBAN: SK5011000000002926886043</b>, BIC: TATRSKBXXXX<br>\r\n<b>PayPal: utulok@utulok-piestany.sk</b>\r\n<br><br>\r\nWir freuen uns schon jetzt an gemeinsame Arbeit und Hilfe fÃ¼r unsere SchÃ¼tzlinge. Wir sprechen Deutsch und Englisch:)<br>\r\nKontakt:<br>\r\n  +421 904170913 <br>\r\n  utulok@utulok-piestany.sk\r\n');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `how_adopt`
--

CREATE TABLE `how_adopt` (
  `how_adopt_id` int(11) NOT NULL,
  `adopt_title_sk` varchar(200) COLLATE utf8_bin NOT NULL,
  `adopt_text_sk` text COLLATE utf8_bin NOT NULL,
  `adopt_title_en` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `adopt_text_en` text COLLATE utf8_bin,
  `adopt_title_de` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `adopt_text_de` text COLLATE utf8_bin
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `how_adopt`
--

INSERT INTO `how_adopt` (`how_adopt_id`, `adopt_title_sk`, `adopt_text_sk`, `adopt_title_en`, `adopt_text_en`, `adopt_title_de`, `adopt_text_de`) VALUES
(1, 'Adopcia zvieratka', 'PrijaÅ¥ novÃ©ho Älena rodiny je zodpovednÃ½ krok. <b>Treba si vopred dobre premyslieÅ¥, Äi mÃ¡te podmienky staraÅ¥ sa adekvÃ¡tne o zvieratko, zabezpeÄiÅ¥ mu veterinÃ¡rne oÅ¡etrenie, kvalitnÃº stravu, Äas a lÃ¡sku.</b> Zviera nie je na pÃ¡r dnÃ­, ani hraÄka, mÃ´Å¾e sa doÅ¾iÅ¥ 15 i viac rokov. <br>\r\nV naÅ¡ej databÃ¡ze nÃ¡jdete vÅ¡etky zvieratkÃ¡ ponÃºkanÃ© na adopciu s fotkami a popisom. NajlepÅ¡ie je zoznÃ¡miÅ¥ sa so psÃ­kom pri venÄenÃ­, spoznÃ¡te zÄasti jeho povahu a Äi sa k sebe hodÃ­te. Nie je to vÅ¾dy o tom, Å¾e Älovek si vyberie zvieratko, niekedy si vÃ¡s zvieratko vyberie samo. Pri rozhodovanÃ­ radi poradÃ­me a pomÃ´Å¾eme, psÃ­kov poznÃ¡me, treba daÅ¥ Å¡ancu aj starÅ¡Ã­m a tzv. stÃ¡liciam â€“ tÃ½m, ktorÃ­ sÃº u nÃ¡s dlho a zaslÃºÅ¾ia si dÃ´stojne doÅ¾iÅ¥ v milujÃºcej rodine. <br>\r\nAk sa hneÄ nerozhodnete, mÃ´Å¾ete si psÃ­ka/maÄiÄku vziaÅ¥ na skÃºÅ¡ku domov, napr. na vÃ­kend, po dohode s predsednÃ­Äkou organizÃ¡cie. Povaha zvieratka sa mÃ´Å¾e prejaviÅ¥ inak v Ãºtulku a inak v domove. <br>\r\n<br>\r\nV prÃ­pade, Å¾e sa nevie v novej domÃ¡cnosti adaptovaÅ¥, kontaktujte nÃ¡s, niektorÃ­ si zvykajÃº dlhÅ¡ie, inÃ­ sa vedia prispÃ´sobiÅ¥ hneÄ, nepoznÃ¡me ich minulosÅ¥ a ÄÃ­m preÅ¡li, treba im vÅ¡ak daÅ¥ Å¡ancu a byÅ¥ trpezlivÃ­, urÄite Äoskoro zÃ­skate toho najoddanejÅ¡ieho spoloÄnÃ­ka. Ak by to predsa len nevyÅ¡lo, vÅ¾dy je moÅ¾nosÅ¥ zvieratko vrÃ¡tiÅ¥ do Ãºtulku a bude sa mu hÄ¾adaÅ¥ novÃ½, vhodnÃ½ domov.<br>\r\n<br>\r\n<b> <u>K ADOPCII POTREBUJETE</b> </u><br>\r\nVlastnÃ½ obojok, vodÃ­tko alebo prepravku a po vyplnenÃ­ formulÃ¡rov a zaplatenÃ­ poplatkov mÃ´Å¾e psÃ­k s vami odÃ­sÅ¥ domov. Zvieratko si mÃ´Å¾e prevziaÅ¥ len osoba nad 18 rokov s platnÃ½m obÄianskym preukazom. <br>\r\n<br>\r\nDo novÃ©ho domova odchÃ¡dzajÃº zvieratÃ¡ veterinÃ¡rne oÅ¡etrenÃ©: odÄervenÃ©, odblÅ¡enÃ©, ÄipovanÃ©, dospelÃ© jedince kompletne vakcinovanÃ© a kastrovanÃ©. Å teniatka a maÄiatka sÃº vydanÃ© na adopciu pod podmienkou, Å¾e budÃº v dospelom veku kastrovanÃ©, Äo aj skontrolujeme. Ãštulok si kedykoÄ¾vek vyhradzuje prÃ¡vo na nÃ¡matkovÃ© kontroly zvieratiek v novom domove.<br>\r\n<br>\r\nCeny adopciÃ­ sa odvÃ­jajÃº od veterinÃ¡rnych Ãºkonov, veku a pohlavia. Viac info na utulok@utulok-piestany.sk <br>\r\n <br>\r\n<b> <u>PODMIENKY ADOPCIE</b> </u> <br>\r\nPozitÃ­vny vzÅ¥ah k zvieratÃ¡m, platnÃ½ OP, vek nad 18 r. a vhodnÃ© chovnÃ© podmienky: <br>\r\nPes a maÄka sÃº spoloÄenskÃ© zvieratÃ¡, ktorÃ© potrebujÃº kontakt s Älovekom. Treba im zabezpeÄiÅ¥ zÃ¡zemie domova, spoloÄnosÅ¥ Älenov rodiny, venÄenie, hry a voÄ¾nÃ½ pohyb. V Å¾iadnom prÃ­pade nesmie byÅ¥ zvieratko celodenne izolovanÃ© v byte, voliÃ©re a na reÅ¥azi uÅ¾ vÃ´bec nie! <br>\r\n<br>\r\nOkrem zÃ¡kladnych potrieb ako kvalitnÃ© krmivo, ÄerstvÃ¡ voda, miesto na odpoÄinok, treba rÃ¡taÅ¥ aj s veterinÃ¡rnou starostlivosÅ¥ou. ExteriÃ©rovÃ½ psÃ­k potrebuje zateplenÃº bÃºdu prispÃ´sobenÃº jeho vÃ½Å¡ke a hmotnosti, ochranu pred nepriaznivÃ½m poÄasÃ­m (priame slnko, vlhko, chlad), dennÃ© vychÃ¡dzky - len dvor mu nestaÄÃ­, potrebuje spoznÃ¡vaÅ¥ aj okolie a taktieÅ¾ mu musÃ­ byÅ¥ umoÅ¾nenÃ½ prÃ­stup do domu. <br>\r\n<br>\r\nPsÃ­k drÅ¾anÃ½ v bytovÃ½ch podmienkach potrebuje pravidelnÃ© venÄenie, aktivity a svoje miesto s pelieÅ¡kom.\r\nMaÄiÄky bytovÃ© alebo vonkajÅ¡ie potrebujÃº takisto starostlivosÅ¥, svoje miesto a adekvÃ¡tnu opateru.\r\nV oboch prÃ­padoch psÃ­k alebo maÄiÄka potrebujÃº pravidelnÃ© kontroly u veterinÃ¡ra, povinnÃ© oÄkovanie, odÄervenie, starostlivosÅ¥ o chrup a pod. <br>\r\n<br>\r\nNovÃ½ majiteÄ¾ preberÃ¡ na seba plnÃº zodpovednosÅ¥, Å¾e zabezpeÄÃ­ zvieraÅ¥u podmienky zodpovedajÃºce jeho prirodzenÃ½m potrebÃ¡m. <br>\r\n<br>\r\nZvieratÃ¡ musia byÅ¥ zabezpeÄenÃ© proti Ãºniku, okrem Äipu by mali byÅ¥ oznaÄenÃ© menovkou s adresou majiteÄ¾a a tel. ÄÃ­slom, aby sa mohlo po nÃ¡leze Äo najskÃ´r vrÃ¡tiÅ¥ domov. <br>\r\n<br>\r\nAk do 30 dnÃ­ od adopcie zviera ochorie, oznÃ¡mte tÃºto skutoÄnosÅ¥ pracovnÃ­kom Ãºtulku na Ä.t. 0904 170 913 a Ãºtulok zabezpeÄÃ­ kontakt so zmluvnÃ½m veterinÃ¡rom Ãºtulku. OsvojiteÄ¾ je taktieÅ¾ povinnÃ½ hlÃ¡siÅ¥ Ãºtulku stratu, Ãºhyn zvieraÅ¥a alebo zmenu adresy. <br>\r\n<br>\r\nÃštulok poskytne novÃ©mu majiteÄ¾ovi vÅ¡etky dostupnÃ© informÃ¡cie o zvieratku, ale nemÃ´Å¾e sa zaruÄiÅ¥ za temperament, povahovÃ© vlastnosti, zdravie, momentÃ¡lnu dispozÃ­ciu, vÃ½cvik a pod., nakoÄ¾ko zvieratkÃ¡ boli vo vÃ¤ÄÅ¡ine prÃ­padov nÃ¡jdenÃ© opustenÃ© a o ich minulosti nevieme niÄ. <br>\r\n<br>\r\nV prÃ­pade zÃ¡mernÃ©ho opustenia zvieraÅ¥a bude voÄi majiteÄ¾ovi zaÄatÃ© priestupkovÃ© konanie podÄ¾a platnej legislatÃ­vy. <br>\r\n<br>\r\nRC Sloboda zvierat PieÅ¡Å¥any podÄ¾a novÃ©ho zÃ¡kona je majiteÄ¾om zvierat do 3 mesiacov od adopcie, preregistrovanie na novÃ©ho majiteÄ¾a robÃ­ nÃ¡Å¡ zmluvnÃ½ veterinÃ¡rny lekÃ¡r. AdoptovanÃ© zvieratko nesmie byÅ¥ v Å¾iadnom prÃ­pade bez nÃ¡Å¡ho vedomia darovanÃ© alebo predanÃ©. Nesmie byÅ¥ pouÅ¾itÃ© na reprodukciu v prÃ­pade, ak nebolo eÅ¡te kastrovanÃ© (adopcie Å¡teniatka/maÄiatka). <br>\r\n<br>\r\nÃštulok si vyhradzuje prÃ¡vo na nÃ¡matkovÃ© kontroly adoptovanÃ½ch zvierat. Ak spozoruje vÃ¡Å¾ne poruÅ¡enie adopÄnÃ½ch podmienok, mÃ´Å¾e zviera okamÅ¾ite odobraÅ¥ aj vtedy, ak nie je moÅ¾nÃ½ kontakt s majiteÄ¾om. <br>\r\n<br>\r\nPri adopcii dostane novÃ½ majiteÄ¾ platnÃ½ pokladniÄnÃ½ blok o Ãºhrade za veterinÃ¡rne Ãºkony. <br>\r\n<br>\r\nPodmienky adopcie nadobÃºdajÃº platnosÅ¥ po podpise adopÄnÃ©ho protokolu oboch zÃºÄastnenÃ½ch strÃ¡n. <br>', 'About adoption', 'It\'s a very responsible step to get a new family member. And more importantly, to <b>think carefully ahead whether you have and will create adequate conditions for the animal, get him necessary vet care, quality food, time and love.</b> Animals are not toys, nor they live for a few days, many of them can be here for 15 or more years.<br>\r\n\r\nOur database displays all the animals that we currently offer for adoption, along with their description and pictures. The best way to figure whether you\'re a good fit is to come visit us and take him/her for a walk, it will allow you  to get to know their character better. It\'s not always a matter of you choosing an animal, often they choose you. We\'ll gladly advise and help you decide as we already know our dogs and cats. We often encourage adoption of older dogs and those that have been with us for a long time, they will surely make a wonderful companion and also deserve to spend the rest of their lives in loving homes.<br>\r\n\r\nIf you cannot make up your mind, we allow to take a dog/cat to your home for a short period (i.e. a weekend) upon agreement with the chairman of our shelter. Animal\'s character can show differently in the shelter versus in a new environment. <br>\r\n<br>\r\nIn case the animal doesn\'t seem to be adapting well, please contact us. Some adjust just fine pretty much right away, some need more time, you just need to be patient and give them a chance, none of us knows what they\'d been through. We\'re sure that with the right attitude, soon enough you\'ll get the most loyal friend you\'ve ever gotten. And even if it doesn\'t work out after some time, it\'s always possible to bring the animal back to us and we\'ll continue searching for a more suitable family.<br>\r\n<br>\r\n<b><u>WHAT WILL YOU NEED FOR ADOPTION</b></u><br>\r\nCollar, leash and/or crate. The dog/cat can leave home with you after filling out the necessary forms and paying a respective adoption fee. Only persons above 18 years of age with a valid ID can take over the animal.<br>\r\n<br>\r\nPrior to adoption all animals have been treated by vet against worms and fleas, micro-chipped, adults dogs and cats completely vaccinated and spayed/neutered. Puppies and kittens need to be spayed/neutered as soon as reaching adulthood - this obligation is signed by you in the adoption contract and we also check its fulfillment. We reserve the right to random inspections.<br>\r\n<br>\r\nAdoption fee depends on veterinary costs of a particular animal, age and gender. More info at utulok@utulok-piestany.sk <br>\r\n<br>\r\n<b><u>ADOPTION CONDITIONS</b></u> <br>\r\nPositive relationships to animals, valid ID, min. 18 years old and suitable breeding conditions: <br>\r\nDogs and cats are social creatures, they need to be in contact with humans. You\'re responsible for giving them a home, walking, playing, free movement and being in touch with other family members. Under no circumstances dogs are allowed to be isolated at home, in a kennel or on a chain all day long!<br>\r\n<br>\r\nAlong with the basic needs like quality food, fresh water, a bed where they can rest, you also need to count with vet care. Dogs kept outside need a quality insulated kennel adjusted to their height and weight, protection from various weather conditions (direct sunlight, cold, moisture), daily walks - a yard isn\'t enough as many people think, they also need to get to know their surroundings, and they also need access to the house. <br>\r\n<br>\r\nDogs kept inside need to be taken for regular walks, to have opportunities to play and have a quiet place to rest.\r\nIndoor / outdoor cats also need adequate care and their own spot.\r\nBoth dogs and cats need regular vet check-ups, mandatory vaccinations, be de-wormed on a regular basis and get their teeth checked as well, etc. <br>\r\n<br>\r\nNew owners are obliged to ensure that inherent needs required by individual animals will be met. <br>\r\n<br>\r\nAnimals need to be secured from running and except of the microchip marked by a name/phone tag, so they could be returned home shortly after being found. <br>\r\n<br>\r\nIf the animal gets sick within 30 days upon adoption, please contact us immediately at +421 904 170 913 and we\'ll get in touch with the contractual veterinarian. The new owner is also required to inform us in case of loss or death of the animal or address change. <br>\r\n<br>\r\nThe shelter will provide the new owner all the information about the animal that we have, however we cannot guarantee its temperament, characteristics, health, training etc., as animals were in most cases found abandoned and without knowing anything about their past. <br>\r\n<br>\r\nIn case intentional leaving has been found out, the shelter will initiate misdemeanor act according to lawful legislation. <br>\r\n<br>\r\nSloboda zvierat regional center PieÃ…Â¡Ã…Â¥any remains the owner of all animals for 3 months after adoption, re-registration to the new owner is done by our contractual veterinarian. No animal from our shelter can be given away or sold without our prior knowledge! It cannot be used for reproduction in case of puppies/kittens that have not been spayed/neutered yet). <br>\r\n<br>\r\nThe Piestany Shelter reserves the right to random inspections of all adopted animals at their new home. If we suspect or witness serious breach of adoption conditions, we are allowed by law to take the animal away immediately, even without owner present.<br>\r\n<br>\r\nEvery new owner gets a valid stub for the payment of the vet costs. <br>\r\n<br>\r\nThe above conditions become effective upon signing of adoption protocol of both present parties. <br>', 'Adoption', 'Die Adoption muss man gut Ã¼berlegen,ob sie haben Bedingungen, genug Zeit, viel Liebe und Geduld, ordentliche tierÃ¤rztliche Betreuun, ob Sie sich um das Tier auch in einigen Jahren angemessen kÃ¼mmern werden kÃ¶nnen.\r\n\r\nDas Tier ist kein Spielzeug fÃ¼r paar Tage, soll des Mitglied der Familie sein fÃ¼r viele Jahren. Fotos und grundlegende Informationen zu allen Tieren, die gerade ein neues Zuhause suchen, finden Sie an unsere Webseite www.utulok-piestany.sk.\r\n\r\nDer beste Weg, wie Sie sich mit dem Hund besser kennenlernen kÃ¶nnen, sind gemeinsame SpaziergÃ¤nge. Auf diese Weise machen Sie sich mit seinem Temperament bekannt und werden erfahren, ob sie zueinander passen. Besprechen Sie im Tierheim mit einem Tierpfleger das Temperament des Hundes, mit einem Tierarzt seinen Gesundheitszustand und mit einem Mitarbeiter des VerwaltungsbÃ¼ros die MÃ¶glichkeit, welche VorsichtsmaÃŸnahmen Sie fÃ¼r den Fall, dass der Hund entlÃ¤uft, treffen kÃ¶nnen. Wenn Sie immer noch nicht Ã¼berzeugt sind, kÃ¶nnen Sie vereinbaren, dass Sie den Hund zur Probe mit nach Hause nehmen. Geben sie Chance auch alten Tieren-Langsitzer im Tierheim,die verdienen es. Im Falle,das es passt doch nicht in neue Familie, rufen sie uns an, wir nehmen das Tier zurÃ¼ck und wird neue passende Familie gesucht.\r\n\r\nWenn Sie sich fÃ¼r die Adoption entscheiden, bringen Sie gÃ¼ltiger Personalausweis und ein Hundetransportbox mit, Leine und Halsband die bekommen die Tiere von uns. Nachdem Sie die Formulare ausgefÃ¼llt und die GebÃ¼hren bezahlt haben, kann der Hund mit Ihnen nach Hause gehen. Das Tier nur von einer Person Ã¼ber 18 Jahre mit einem gÃ¼ltigen Personalausweis Ã¼bernommen werden darf. Alle Tiere sind von userem VeterinÃ¤r Ã¤rztlich versorgt, geimpft, gechippt und erwachsene kastriert. Bei Welpen muss man ein Formular unterschreiben, das die werden in passendem Alter kastriert, was kontrolieren wir. Diese Eingriffe und Versorgung sind in der AdoptionsgebÃ¼hr enthalten.Die Preis entwickelt sich von vetrinÃ¤re Handlung, Alter und Geschlecht. Das Tierheim behalt sich vor das Recht die Tiere in neue Familie zufÃ¤llig kontrolieren. Mehrere Infos an unsere Mail-Adresse utulok@utulok-piestany.sk.\r\n\r\nHund und Katze sind Heimtiere und mÃ¶gen keine Einsamkeit. Am meisten brauchen Sie Kontakt mit Menschen. Aus diesem Grund ist es notwendig, dem Tier die Gesellschaft der Familienmitglieder, die TagesaktivitÃ¤ten (freie Bewegung, SpaziergÃ¤nge, Spiele) so viel wie mÃ¶glich anzubieten und ihm den Zugang zu den WohnrÃ¤umen des Hauses zu ermÃ¶glichen. In keinem Fall darf das Tier den ganzen Tag (in einer Wohnung, im Zwinger) alleine bleiben. AuÃŸer Ausstattung (Hundebett, Spielsachenâ€¦) benÃ¶tigt er ordentliche tierÃ¤rztliche Betreuung, muss gehorsam sein und braucht, insbesondere im Falle von adoptierten Tieren, viel Geduld und Liebe.\r\n\r\nâ€“ Wird der Hund im Freien sein, braucht er eine isolierte ausreichend groÃŸe HundehÃ¼tte mit Boden (am besten erhÃ¶ht). Wir empfehlen tÃ¤gliche SpaziergÃ¤nge und den Zugang zum Haus;\r\n\r\nâ€“ Wird der Hund drauÃŸen im Zwinger sein â€“ muss der Zwinger gerÃ¤umig sein und Ã¼ber einen isolierten / erhÃ¶hten Boden verfÃ¼gen. Er muss ihm die Aussicht und den Kontakt mit der Umgebung ermÃ¶glichen, und mit einer isolierten ausreichend groÃŸen HundehÃ¼tte ausgestattet sein, die ihn gegen WitterungseinflÃ¼sse (direkte Sonne, Feuchtigkeit, KÃ¤lte) schÃ¼tzen wird. Der Hund muss tÃ¤glich freigelassen werden, spazieren gehen und den Zugang zum Haus haben;\r\n\r\nâ€“ Hund in der Wohnung â€“ muss regelmÃ¤ÃŸig ausgefÃ¼hrt werden, Ausstattung: Halsband, Leine, Hundebett, Spielsachenâ€¦\r\n\r\nâ€“ Der Hund darf nicht an der Kette gehalten werden!\r\n\r\nNeuer Besitzer nimmt volle Verantwortlichkeit fÃ¼r das Tier und versichert alle nÅ‘tige Bedingungen. Wenn ist das Tier krank bis 30 Tage von Adoption,melden sie sich bitte, bei uns an +421 904 170 913, auch im Falle, wenn ist weg gelaufen, oder gestorben. Der neue Besitzer muss auch die AdresseÃ¤nderung melden. Adoptivtiere kann man nicht ohne unsere Bewusstsein verkaufen, oder schenken.\r\n');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `how_support`
--

CREATE TABLE `how_support` (
  `how_support_id` int(11) NOT NULL,
  `support_title_sk` varchar(200) COLLATE utf8_bin NOT NULL,
  `support_text_sk` text COLLATE utf8_bin NOT NULL,
  `support_title_en` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `support_text_en` text COLLATE utf8_bin,
  `support_title_de` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `support_text_de` text COLLATE utf8_bin
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `how_support`
--

INSERT INTO `how_support` (`how_support_id`, `support_title_sk`, `support_text_sk`, `support_title_en`, `support_text_en`, `support_title_de`, `support_text_de`) VALUES
(1, 'Ako nÃ¡m pomÃ´cÅ¥?', 'ZvieratÃ¡ skutoÄne potrebujÃº pomoc nÃ¡s vÅ¡etkÃ½ch. Bez podpory verejnosti by organizÃ¡cie akou je aj nÃ¡Å¡ Ãºtulok neboli schopnÃ© fungovaÅ¥. PomÃ´Å¾te aj vy! Aj keÄ sa necÃ­tite materiÃ¡lne bohatÃ½, iste si vyberiete z moÅ¾nostÃ­, ako podporiÅ¥ zÃ¡chranu zvierat a prispieÅ¥:<br> <b> \r\n<b>- vecnÃ½m darom<br>\r\n- finanÄne<br>\r\n- bezplatnou sluÅ¾bou</b>\r\n\r\n<br><br>\r\n\r\n<b>StaÅˆte sa aktivistom</b> - Älovekom, ktorÃ½ vo svojom voÄ¾nom Äase dobrovoÄ¾ne a neziÅ¡tne pomÃ¡ha vo vÅ¡etkÃ½ch oblastiach Äinnosti organizÃ¡cie, <b>Äo predstavuje napr. venÄenie psÃ­kov, pomoc pri akciÃ¡ch, hÄ¾adanie sponzorov, kontroly adoptovanÃ½ch psÃ­kov, doÄasnÃº opateru Å¡teniatok a chorÃ½ch zvierat v rÃ¡mci PieÅ¡Å¥an, prednÃ¡Å¡ky na ZÅ ...</b>\r\n\r\n<br><br>\r\n\r\nAk doma alebo v prÃ¡ci nÃ¡jdete veci, ktorÃ© uÅ¾ nepotrebujete, darujte nÃ¡m ich. <b>Potrebujeme najmÃ¤ krmivo pre zvieratÃ¡, vodÃ­tka, obojky, Äistiace a dezinfekÄnÃ© prostriedky, lieky pre zvieratÃ¡, metly, lopaty, vedrÃ¡, handry, stavebnÃ½ materiÃ¡l, pracovnÃ© obleÄenie, rukavice, kancelÃ¡rske potreby â€“ perÃ¡, obÃ¡lky, papier, fixky, kancelÃ¡rsky papier...</b> VÃ¡Å¡ dar bude prijatÃ½ s veÄ¾kou vÄakou!\r\n\r\n<br><br>\r\n\r\n<b>FinanÄnÃ½ dar</b> bude pouÅ¾itÃ½ na ÄinnosÅ¥ a prevÃ¡dzku Ãºtulku RegionÃ¡lneho centra Slobody zvierat PieÅ¡Å¥any. PrispieÅ¥ mÃ´Å¾ete na nÃ¡Å¡ ÃºÄet v Tatra banke - <b>IBAN: SK5011000000002926886043</b>, BIC: TATRSKBXXXX alebo PoÅ¡tovej banke â€“ <b>IBAN: SK5865000000000020046882</b>, BIC: POBN SKBA alebo cez <b>PayPal na utulok@utulok-piestany.sk.</b> <br>\r\n<br>\r\nFinanÄnÃ½ dar nÃ¡m mÃ´Å¾ete darovaÅ¥ aj osobne, prÃ­padne mÃ´Å¾ete prispieÅ¥ na konkrÃ©tnu vec (vÃ½stavba koterca, lieÄenie konkrÃ©tneho psÃ­ka...). <b>PrispieÅ¥ mÃ´Å¾ete aj v rÃ¡mci darovania 2% z dane</b> (aktuÃ¡lne tlaÄivo na stiahnutie bÃ½va umiestnenÃ© na hlavnej strÃ¡nke v obdobÃ­ odovzdÃ¡vania daÅˆovÃ½ch priznanÃ­).\r\n\r\n<br><br>\r\n\r\nAk ste majiteÄ¾om firmy alebo odbornÃ­k na niektorÃº z nasledujÃºcich Äi inÃ½ch oblastÃ­, <b>poskytnite bezplatne prÃ¡ce</b>, vÅ¡etko je to v prospech zvieratiek v Ãºtulku. <br>Potrebujeme pomoc pri:<br>\r\n<b>- stavebnÃ© prÃ¡ce pri dobudovanÃ­ Ãºtulku<br>\r\n- stolÃ¡rske prÃ¡ce<br>\r\n- zvÃ¡raÄskÃ© prÃ¡ce<br>\r\n- zÃ¡hradnÃ­cke prÃ¡ce<br>\r\n- grafickÃ© prÃ¡ce a tlaÄ informaÄnÃ½ch materiÃ¡lov<br>\r\n- oprava auta</b>\r\n\r\n<br><br>\r\n\r\nUÅ¾ teraz sa teÅ¡Ã­me na naÅ¡u spoloÄnÃº aktivitu pre zÃ¡chranu zvierat!:)\r\n\r\n<br><br>\r\n\r\nV prÃ­pade zÃ¡ujmu nÃ¡s mÃ´Å¾ete kontaktovaÅ¥ na 0904 170 913 alebo utulok@utulok-piestany.sk.\r\n\r\n<br><br>', 'Why and how to support us?', 'Animals really depend on our help. Without public support, organization like ours could not function. Help us too! Even if you don\'t feel materially rich, we\'re sure you can choose one of the options how to contribute to animal\'s rescue:<br>  <b>\r\n<b>- materially / do a service for free<br>\r\n- financially<br>\r\n- provide a useful contact</b>\r\n\r\n<br><br>\r\n\r\n<b>Become an activist</b> - a person, who in their free time works as a volunteer and helps in various areas of organization\'s activity, <b>which means for example dog walking, helping with events, looking for sponsors, checking on adopted animals, fostering puppies or sick / recovering animals (within Piestany area), lecturing at schools...</b>\r\n\r\n<br><br>\r\n\r\nIf you find things at home or at work which you no longer need, give them to us. <b>We mainly need dog / cat food, collars and leashes, disinfectants and germicides, animal medication, brooms, shovels, buckets, rags, gloves, working clothes, building material, office supplies - pens, envelopes, markers, printing paper...</b> Your gift will be accepted with the utmost gratitude!\r\n\r\n<br><br>\r\n\r\n<b>Financial donation</b> will be used for our shelter\'s operation. You can transfer the funds to our official bank account in Tatra bank - <b>IBAN: SK5011000000002926886043</b>, BIC: TATRSKBXXXX or Postova bank Ã¢â‚¬â€œ <b>IBAN: SK5865000000000020046882</b>, BIC: POBN SKBA or also via <b>PayPal at utulok@utulok-piestany.sk.</b> <br>\r\n<br>\r\nFinancial gift can also be brought by you in person or you can decide to fund a particular need / activity (building a new kennel, treatment of a particular dog or cat...). <b>You can also give us 2% of your income tax</b> (a valid form is downloadable on our website during the period of income tax statement\'s submission).\r\n\r\n<br><br>\r\n\r\nIf you own a business or are a specialist in one of the below areas, <b>be so kind and provide your services for free</b>, it will all be for the benefit of shelter animals. <br>We need help with:<br>\r\n<b>- building / finalizing the shelter<br>\r\n- cabinetmaking<br>\r\n- welding<br>\r\n- gardening<br>\r\n- grafic design and print of info materials<br>\r\n- car repair</b>\r\n\r\n<br><br>\r\n\r\nWe\'re looking forward to our cooperation and saving the animals together!:)\r\n\r\n<br><br>\r\n\r\nShould you be interested, please contact us at +421 904 170 913 or utulok@utulok-piestany.sk.\r\n\r\n<br><br>', 'Warum und wie kann man helfen?', 'Die Tiere brauchen die Hilfe von uns allen. Ohne UnterstÃ¼tzung des Ã–ffentlichkeit kann das Tierheim nicht funktionieren. Alle kÅ‘nnen helfen, sind verschiedene MÃ¶glichkeiten:\r\n- materielle Hilfe\r\n- finanzielle Hilfe\r\n- freiwillige Hilfe\r\n\r\nWir suchen die Aktivisten und Menschen, welche haben freie Zeit selbstlos helfen: mit Tieren spazieren gehen, Hilfe bei Aktionen, Sponsoren suchen, Kontrollen von vermittelten Tieren, Pflegeplatz fÃ¼r die Welpen und kranke Tiere in Ort.\r\n\r\nSchenken sie unnÅ‘tige Sachen aus Haushalt, wir brauchen vor allem diÃ¤t Futter, HalsbÃ¤nder, Leinen, Reinigungsmittel, Desinfektion, Augen und Ohrensalben, Entwurm- und Entflohmittel, Besen, kleine Schaufel, KÃ¼bel, Baumaterial, Arbeitskleidung, 120 l PlastiksÃ¤cke, Katzenstreu, Gumihandschuhe, BÃ¼robedarf. Wir werden dankbar fÃ¼r jede Hilfe!\r\n\r\nFinanzielle UnterstÃ¼tzung wird benÃ¼tzt fÃ¼r das Tierheimbetrieb.\r\n\r\nUnsere Konto: RegionÃ¡lne centrum Sloboda zvierat PieÅ¡Å¥any\r\nKonto Nr.: IBAN: SK5011000000002926886043, BIC: TATRSKBXXXX\r\nPayPal: utulok@utulok-piestany.sk\r\n\r\nWir freuen uns schon jetzt an gemeinsame Arbeit und Hilfe fÃ¼r unsere SchÃ¼tzlinge.\r\nWir sprechen Deutsch und Englisch:)\r\nKontakt:\r\n+421 904170913\r\nutulok@utulok-piestany.sk');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `image_cat`
--

CREATE TABLE `image_cat` (
  `image_cat_id` int(5) NOT NULL,
  `image_cat` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `fk_cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `image_cat`
--

INSERT INTO `image_cat` (`image_cat_id`, `image_cat`, `fk_cat_id`) VALUES
(13, 'CAT.5e3b3194cca6e3.16333635.jpg', 6),
(14, 'CAT.5e3b3194cd4671.38364098.jpg', 6),
(15, 'CAT.5e3b3194cdd899.70161967.jpg', 6),
(31, 'CAT.5e9b5973a3b4d3.38476126.jpg', 12),
(32, 'CAT.5e9b5973a44bb9.51491503.jpg', 12),
(33, 'CAT.5e9b5973a4f569.92021224.jpg', 12);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `image_dog`
--

CREATE TABLE `image_dog` (
  `image_dog_id` int(11) NOT NULL,
  `image_dog` varchar(1500) COLLATE utf8_bin NOT NULL,
  `fk_dog_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `image_dog`
--

INSERT INTO `image_dog` (`image_dog_id`, `image_dog`, `fk_dog_id`) VALUES
(1, 'DOG.5e2c46617e7c18.04439724.jpg', 1),
(2, 'DOG.5e2c466188c197.65632518.jpg', 1),
(3, 'DOG.5e2c46618936f4.60807885.jpg', 1),
(4, 'DOG.5e2c466189f811.03187300.jpg', 1),
(5, 'DOG.5e2c46618a56c9.71383437.jpg', 1),
(11, 'DOG.5e9c08b4dbebb9.48896566.jpg', 5),
(12, 'DOG.5e9c08b4dd1dd0.07757944.jpg', 5),
(13, 'DOG.5e9c08b4df0e77.10953702.jpg', 5),
(14, 'DOG.5e9c08b4e09530.06363929.jpg', 5),
(15, 'DOG.5e9c08b4e1a4d6.13402322.jpg', 5),
(16, 'DOG.5e9c0bc9783f20.70554563.jpg', 6),
(17, 'DOG.5e9c0bc97aea82.12299226.jpg', 6),
(18, 'DOG.5e9c0bc97c8283.90109160.jpg', 6),
(19, 'DOG.5e9c25b90d0e14.38721625.jpg', 7),
(20, 'DOG.5e9c25b9106a61.04077328.jpg', 7),
(21, 'DOG.5e9c25b9129de5.72138140.jpg', 7),
(22, 'DOG.5e9c261569ea04.62198372.jpg', 8),
(23, 'DOG.5e9c26156ad169.05234915.jpg', 8),
(24, 'DOG.5e9c26156b7278.30632243.jpg', 8),
(25, 'DOG.5e9c2669e03a70.17297639.jpg', 9),
(26, 'DOG.5e9c2669e168a3.32396174.jpg', 9),
(27, 'DOG.5e9c2669e254e8.30525514.jpg', 9),
(31, 'DOG.5e9c28b5c195f9.42700894.jpg', 11),
(32, 'DOG.5e9c28b5c23054.19054012.jpg', 11),
(33, 'DOG.5e9c28b5c2d655.12124912.jpg', 11),
(34, 'DOG.5e9c28b5c4a5b1.73769883.jpg', 11),
(35, 'DOG.5e9c290723e787.82770240.jpg', 12),
(36, 'DOG.5e9c2907257cd0.46796763.jpg', 12),
(42, 'DOG.5e9c2e2951bc25.78592654.jpg', 14),
(43, 'DOG.5e9c2e36bb7a11.30241659.jpg', 14),
(44, 'DOG.5e9c2e45e83a44.13146969.jpg', 14),
(45, 'DOG.5e9c2e55280e26.97681487.jpg', 14),
(46, 'DOG.5e9c2e5e6be685.06443469.jpg', 14),
(47, 'DOG.5e9c2ed7cb6ea0.05842906.jpg', 15),
(48, 'DOG.5e9c2ed7cc8836.34124057.jpg', 15),
(49, 'DOG.5e9c2ed7cd7728.25082899.jpg', 15),
(50, 'DOG.5e9c2ed7ce15d7.94134009.jpg', 15),
(51, 'DOG.5e9c2ed7ceb869.84264319.jpg', 15),
(52, 'DOG.5e9c2f7e9a7b75.53252814.jpg', 16),
(53, 'DOG.5e9c2f7e9b57e1.60766904.jpg', 16),
(54, 'DOG.5e9c2f7e9c1471.82013213.jpg', 16),
(55, 'DOG.5e9c671fcd6159.49752497.jpg', 17),
(56, 'DOG.5e9c671fce55b3.51465546.jpg', 17),
(57, 'DOG.5e9c671fcf1a23.34585355.jpg', 17),
(58, 'DOG.5e9c67e092bd36.20094261.jpg', 18),
(59, 'DOG.5e9c67e093bed3.30453373.jpg', 18),
(60, 'DOG.5e9c67e094aa35.76693675.jpg', 18),
(61, 'DOG.5e9c67e0953cb0.65268409.jpg', 18),
(62, 'DOG.5e9c67e095e286.19337163.jpg', 18),
(63, 'DOG.5e9c685d2b04c2.97269026.jpg', 19),
(64, 'DOG.5e9c685d2cdeb8.26462255.jpg', 19),
(65, 'DOG.5e9c685d2e5cf5.74125024.jpg', 19),
(66, 'DOG.5e9c6879422ae9.11643068.jpg', 19),
(67, 'DOG.5e9c691003bf10.48762367.jpg', 20),
(68, 'DOG.5e9c691005e085.08365685.jpg', 20),
(69, 'DOG.5e9c6910080916.18249688.jpg', 20),
(70, 'DOG.5e9c6ac430e8f7.61325438.jpg', 21),
(71, 'DOG.5e9c6ac43297d8.91973968.jpg', 21),
(72, 'DOG.5e9c6ac434dca0.22906498.jpg', 21),
(73, 'DOG.5e9c6fd9059a23.65716638.jpg', 22),
(74, 'DOG.5e9c6fd9069c14.47322578.jpg', 22),
(75, 'DOG.5e9c6fd9079a44.79357605.jpg', 22),
(76, 'DOG.5e9c702c162c07.84978527.jpg', 23),
(77, 'DOG.5e9c702c173a13.30910095.jpg', 23),
(78, 'DOG.5e9c702c1813c2.57176023.jpg', 23),
(79, 'DOG.5e9c70ac276655.63948883.jpg', 24),
(80, 'DOG.5e9c70ac2949e7.42087437.jpg', 24),
(81, 'DOG.5e9c70ac2ada71.50611316.jpg', 24),
(82, 'DOG.5e9c71151441c5.05356113.jpg', 25),
(83, 'DOG.5e9c711514f3a7.98257401.jpg', 25),
(84, 'DOG.5e9c7115157ba9.48715820.jpg', 25),
(85, 'DOG.5e9c718396bd39.44594497.jpg', 26),
(86, 'DOG.5e9c7183983514.02602428.jpg', 26),
(87, 'DOG.5e9c7183991b24.13588179.jpg', 26),
(88, 'DOG.5e9c71e3919f51.18983318.jpg', 27),
(89, 'DOG.5e9c71e3926080.88116981.jpg', 27),
(90, 'DOG.5e9c71e3930ce0.79583092.jpg', 27),
(91, 'DOG.5e9c72374d74f9.17390209.jpg', 28),
(92, 'DOG.5e9c7237545d44.99743048.jpg', 28),
(93, 'DOG.5e9c723757ed14.27192243.jpg', 28),
(94, 'DOG.5e9c7baae120c6.15198729.jpg', 29),
(95, 'DOG.5e9c7baae26206.90472542.jpg', 29),
(96, 'DOG.5e9c7baae38d43.93754866.jpg', 29),
(97, 'DOG.5e9c7c012d2c51.89865769.jpg', 30),
(98, 'DOG.5e9c7c012e8513.32516677.jpg', 30),
(99, 'DOG.5e9c7c012f7a30.81660104.jpg', 30),
(100, 'DOG.5e9c7c55250eb0.34704252.jpg', 31),
(101, 'DOG.5e9c7c552669b3.39747953.jpg', 31),
(102, 'DOG.5e9c7c55274ea0.71936052.jpg', 31),
(103, 'DOG.5e9c7c9559b901.85342782.jpg', 32),
(104, 'DOG.5e9c7c955b1773.98222113.jpg', 32),
(105, 'DOG.5e9c7c955c1349.14119009.jpg', 32),
(106, 'DOG.5e9c7ce7447fc6.45380614.jpg', 33),
(107, 'DOG.5e9c7ce745e591.45285361.jpg', 33),
(108, 'DOG.5e9c7ce746d567.65442076.jpg', 33),
(109, 'DOG.5e9c7d3fbd19b7.08929993.jpg', 34),
(110, 'DOG.5e9c7d3fbe3a09.71602428.jpg', 34),
(111, 'DOG.5e9c7d3fbf0a40.60425220.jpg', 34),
(112, 'DOG.5e9c7da2a8f1d6.77297356.jpg', 35),
(113, 'DOG.5e9c7da2aa92f8.41352673.jpg', 35),
(114, 'DOG.5e9c7da2ac21a3.45101662.jpg', 35),
(115, 'DOG.5e9c7e0233fab0.15240243.jpg', 36),
(116, 'DOG.5e9c7e02353671.17062881.jpg', 36),
(117, 'DOG.5e9c7e02368c84.94759257.jpg', 36),
(118, 'DOG.5e9c7e543866d5.41884968.jpg', 37),
(119, 'DOG.5e9c7e543951f6.17328208.jpg', 37),
(120, 'DOG.5e9c7e5439e6b2.07971633.jpg', 37),
(121, 'DOG.5e9c7e9ff1a9d9.35189400.jpg', 38),
(122, 'DOG.5e9c7e9ff2ea18.26853043.jpg', 38),
(123, 'DOG.5e9c7e9ff3dc67.51394023.jpg', 38),
(124, 'DOG.5e9c7ef1d29087.65969845.jpg', 39),
(125, 'DOG.5e9c7ef1d446a9.37052166.jpg', 39),
(126, 'DOG.5e9c7ef1d57022.80856177.jpg', 39),
(127, 'DOG.5e9c7f4715b148.19506665.jpg', 40),
(128, 'DOG.5e9c7f4716d304.21665951.jpg', 40),
(129, 'DOG.5e9c7f4718d609.40215667.jpg', 40),
(130, 'DOG.5e9c7f8c75f3b9.31710430.jpg', 41),
(131, 'DOG.5e9c7f8c76cc53.22248029.jpg', 41),
(132, 'DOG.5e9c7f8c776253.59883998.jpg', 41),
(133, 'DOG.5e9c7fdbd35937.47630746.jpg', 42),
(134, 'DOG.5e9c7fdbd41202.07286020.jpg', 42),
(135, 'DOG.5e9c7fdbd4c889.07424447.jpg', 42),
(136, 'DOG.5e9c80434b1523.85327428.jpg', 43),
(137, 'DOG.5e9c80434c1e80.44704874.jpg', 43),
(138, 'DOG.5e9c80434cca67.69877634.jpg', 43),
(139, 'DOG.5e9c8095bf6572.21938016.jpg', 44),
(140, 'DOG.5e9c8095c061f9.66881797.jpg', 44),
(141, 'DOG.5e9c8095c0fcd0.83189425.jpg', 44),
(142, 'DOG.5e9c80fb5004d1.33937792.jpg', 45),
(143, 'DOG.5e9c80fb507ff4.75446249.jpg', 45),
(144, 'DOG.5e9c80fb510b97.87276624.jpg', 45),
(145, 'DOG.5e9ca8e3018f15.19664230.jpg', 46),
(146, 'DOG.5e9ca8e3026751.82370228.jpg', 46),
(147, 'DOG.5e9ca8e30307a5.36737276.jpg', 46),
(148, 'DOG.5e9ca9366abee2.27096528.jpg', 47),
(149, 'DOG.5e9ca9366bf7d3.52450022.jpg', 47),
(150, 'DOG.5e9ca9366ca9e3.05441946.jpg', 47),
(151, 'DOG.5e9ca9834c63b0.81089094.jpg', 48),
(152, 'DOG.5e9ca9834d4025.06121787.jpg', 48),
(153, 'DOG.5e9ca9834df7d0.39518431.jpg', 48),
(154, 'DOG.5e9e0345bb06c0.72602813.jpg', 49),
(155, 'DOG.5e9e0345bc6c30.89760422.jpg', 49),
(156, 'DOG.5e9e0345bd7da2.41619094.jpg', 49),
(157, 'DOG.5e9e03a88f4a28.92086411.jpg', 50),
(158, 'DOG.5e9e03a8905d41.97233048.jpg', 50),
(159, 'DOG.5e9e03a890d5e3.92145112.jpg', 50),
(160, 'DOG.5e9e0400492ff3.71254834.jpg', 51),
(161, 'DOG.5e9e040049e240.28749396.jpg', 51),
(162, 'DOG.5e9e04004a9225.62690672.jpg', 51),
(163, 'DOG.5e9e075e2ae070.81736215.jpg', 52),
(164, 'DOG.5e9e075e2c1093.81024212.jpg', 52),
(165, 'DOG.5e9e075e2cf6d5.59604642.jpg', 52),
(166, 'DOG.5e9e07c0e51aa8.44068867.jpg', 53),
(167, 'DOG.5e9e07c0e5e541.01851811.jpg', 53),
(168, 'DOG.5e9e07c0e694b9.10411592.jpg', 53),
(169, 'DOG.5e9e080c823174.41304387.jpg', 54),
(170, 'DOG.5e9e080c837fa9.80312520.jpg', 54),
(171, 'DOG.5e9e080c8489c7.20237687.jpg', 54),
(172, 'DOG.5e9e085c2780f2.95576289.jpg', 55),
(173, 'DOG.5e9e085c28f415.94130301.jpg', 55),
(174, 'DOG.5e9e085c2a16c3.15865068.jpg', 55),
(175, 'DOG.5e9e08a88eeba9.74909242.jpg', 56),
(176, 'DOG.5e9e08a8900b22.18356782.jpg', 56),
(177, 'DOG.5e9e08a890e2f0.91214692.jpg', 56),
(178, 'DOG.5e9e08ee06b369.12155342.jpg', 57),
(179, 'DOG.5e9e08ee074e40.56496344.jpg', 57),
(180, 'DOG.5e9e08ee07cc25.47176286.jpg', 57),
(181, 'DOG.5e9e093c424486.74347280.jpg', 58),
(182, 'DOG.5e9e093c437331.43791279.jpg', 58),
(183, 'DOG.5e9e093c44a6c4.63664688.jpg', 58),
(184, 'DOG.5e9e09e3335247.13000789.jpg', 59),
(185, 'DOG.5e9e09e333ec32.10936944.jpg', 59),
(186, 'DOG.5e9e09e3346485.35864241.jpg', 59),
(187, 'DOG.5e9e0a49b509d7.07476837.jpg', 60),
(188, 'DOG.5e9e0a49b61140.91937876.jpg', 60),
(189, 'DOG.5e9e0a49b69058.54390915.jpg', 60),
(190, 'DOG.5e9e0aac2addd6.80154436.jpg', 61),
(191, 'DOG.5e9e0aac2b89e8.40724050.jpg', 61),
(192, 'DOG.5e9e0aac2c12a9.74193274.jpg', 61),
(193, 'DOG.5e9e0b06da6aa6.12957191.jpg', 62),
(194, 'DOG.5e9e0b06db17c7.88431733.jpg', 62),
(195, 'DOG.5e9e0b06dbab56.97248044.jpg', 62),
(196, 'DOG.5e9e0b84425701.85085606.jpg', 63),
(197, 'DOG.5e9e0b84432777.23584396.jpg', 63),
(198, 'DOG.5e9e0b8443a6e2.43043488.jpg', 63),
(199, 'DOG.5e9e0beecf9529.85573648.jpg', 64),
(200, 'DOG.5e9e0beed08e16.13474940.jpg', 64),
(201, 'DOG.5e9e0beed17543.66950755.jpg', 64),
(202, 'DOG.5e9e0c6c1bcf24.26370990.jpg', 65),
(203, 'DOG.5e9e0c6c1ce6f2.59497050.jpg', 65),
(204, 'DOG.5e9e0c6c1df515.04230531.jpg', 65),
(205, 'DOG.5e9e0cd74b5c84.30753054.jpg', 66),
(206, 'DOG.5e9e0cd74c5d48.66435110.jpg', 66),
(207, 'DOG.5e9e0cd74d37a9.79570204.jpg', 66),
(208, 'DOG.5eae86743b76a7.83291704.jpg', 68);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `info`
--

CREATE TABLE `info` (
  `info_id` int(11) NOT NULL,
  `info_title_sk` text NOT NULL,
  `info_text_sk` text NOT NULL,
  `info_text_en` text,
  `info_title_en` varchar(200) DEFAULT NULL,
  `info_text_de` text,
  `info_title_de` varchar(200) DEFAULT NULL,
  `info_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- A tábla adatainak kiíratása `info`
--

INSERT INTO `info` (`info_id`, `info_title_sk`, `info_text_sk`, `info_text_en`, `info_title_en`, `info_text_de`, `info_title_de`, `info_date`) VALUES
(1, 'LINKA PROTI KRUTOSTI A TÃRANIU ZVIERAT', '<b><u>Kontakt:</u></b> linkaprotikrutosti@gmail.com / 0917 662 030 \r\n\r\nLinka sÃ­dli v Bratislave, ale vÄaka sieti inÅ¡pektorov rieÅ¡i prÃ­pady po celej SR. InÅ¡pektori sÃº dobrovoÄ¾nÃ­ci, ktorÃ­ svoju ÄinnosÅ¥ vykonÃ¡vajÃº vo voÄ¾nom Äase. Vo vÃ¤ÄÅ¡ine prÃ­padov inÅ¡pektor vycestuje na miesto nahlÃ¡senÃ©ho tÃ½rania.\r\nAk majiteÄ¾ zvieraÅ¥a nespolupracuje alebo prÃ­pad nie je moÅ¾nÃ© rieÅ¡iÅ¥ v rÃ¡mci moÅ¾nostÃ­ Linky, hlavnÃ½ inÅ¡pektor podÃ¡ podnet na prÃ­sluÅ¡nÃº RegionÃ¡lnu veterinÃ¡rnu a potravinovÃº sprÃ¡vu (RVPS). PrÃ­pad preÅ¡etrujÃº Äalej s naÅ¡ou (aj VaÅ¡ou) pomocou Å¡tÃ¡tni veterinÃ¡rni inÅ¡pektori.\r\nMÃ´Å¾u uloÅ¾iÅ¥ pokutu vo vÃ½Å¡ke od 0 do 1.000 EUR fyzickej osobe; pri opakovanom poruÅ¡enÃ­ mÃ´Å¾u uloÅ¾iÅ¥ zÃ¡kaz chovu max. na 2 roky. \r\nPokutu vo vÃ½Å¡ke 400 â€“ 20.000 EUR mÃ´Å¾u uloÅ¾iÅ¥ prÃ¡vnickej alebo fyzickej osobe â€“ podnikateÄ¾ovi; pri opakovanom poruÅ¡enÃ­ mÃ´Å¾e byÅ¥ uloÅ¾enÃ½ zÃ¡kaz chovu max. na 2 roky.\r\n\r\n<b><u>Nahlasovanie prÃ­padu tÃ½rania</b></u>\r\n1. Presne opÃ­Å¡te situÃ¡ciu a okolnosti, za ktorÃ½ch k tÃ½raniu zvieraÅ¥a dochÃ¡dza. Ak mÃ¡te moÅ¾nosÅ¥, zdokumentujte jeho stav fotkami, videom, aby bolo viditeÄ¾nÃ© zanedbanie starostlivosti, podmienky, kde Å¾ije, zranenia, znÃ¡mky fyzickÃ©ho alebo psychickÃ©ho tÃ½rania, podvÃ½Å¾ivy, poruchy sprÃ¡vania.\r\n2. UveÄte meno a adresu pÃ¡chateÄ¾a â€“ Äi uÅ¾ majiteÄ¾a zvieraÅ¥a alebo dotknutej osoby, presne kedy a kde doÅ¡lo alebo dochÃ¡dza k tÃ½raniu. UveÄte na seba kontakt â€“ ak o to poÅ¾iadate, vaÅ¡e osobnÃ© Ãºdaje musia zostaÅ¥ utajenÃ©.\r\nPozor! Za tÃ½ranie zvieraÅ¥a sa povaÅ¾uje aj samotnÃ¡ propagÃ¡cia tÃ½rania, vzÃ¡jomnÃ© Å¡tvanie zvieraÅ¥a proti zvieraÅ¥u, jeho opustenie s Ãºmyslom zbaviÅ¥ sa ho a i. \r\n\r\n<b><u>NaÅ¡li ste stratenÃ© alebo opustenÃ© zviera?</b></u>\r\nVolajte najbliÅ¾Å¡Ã­ Ãºtulok, mestskÃº polÃ­ciu alebo Miestny Ãºrad. Obec a polÃ­cia sÃº zo zÃ¡kona povinnÃ© zabezpeÄiÅ¥ odchyt zvieraÅ¥a a jeho umiestnenie do karantÃ©ny/Ãºtulku. V prÃ­pade, ak starosta obce, MP alebo miestny Ãºrad nechcÃº byÅ¥ nÃ¡pomocnÃ­ alebo nie ste spokojnÃ½ s ich rieÅ¡enÃ­m, ozvite sa nÃ¡m.\r\n\r\n<b><u>RuÅ¡Ã­ vÃ¡s susedov pes?</b></u>\r\nAk vo vaÅ¡om dome neustÃ¡le Å¡tekÃ¡ susedov pes, nemusÃ­ Ã­sÅ¥ vÅ¾dy o tÃ½ranie. Pes vÃ¤ÄÅ¡inou nie je zvyknutÃ½ byÅ¥ sÃ¡m doma a je mu smutno. PoÅ¾iadajte suseda, aby dal svojho psÃ­ka vycviÄiÅ¥, nech sa skrÃ¡tka pokÃºsi privyknÃºÅ¥ ho na to, Å¾e je sÃ¡m doma. Ak sa prÃ­pad nedÃ¡ vyrieÅ¡iÅ¥, podajte sÅ¥aÅ¾nosÅ¥ na miestny Ãºrad â€“ ten je kompetentnÃ½ rieÅ¡iÅ¥ naruÅ¡ovanie pokojnÃ©ho bÃ½vania.\r\nAk mÃ¡te podozrenie, Å¾e pes Å¾ije v nevyhovujÃºcich podmienkach, kontaktujte nÃ¡s.\r\n\r\n<b><u>UsmrtenÃ© zviera</b></u>\r\nAk ste svedkom usmrtenia zvieraÅ¥a streÄ¾bou (poÄ¾ovnÃ­ci, polÃ­cia, Å¡arha, SBS, obÄan so zbraÅˆou), nevÃ¡hajte a zavolajte na miesto Äinu polÃ­ciu a Å¾iadajte, aby bol prÃ­pad zdokumentovanÃ½ (aj pri usmrtenÃ­ policajtami!). Zviera totiÅ¾ mÃ´Å¾e byÅ¥ usmrtenÃ© iba veterinÃ¡rom s vÃ½nimkou napadnutia a ohrozenia Äloveka.\r\nTelo mÅ•tveho zvieraÅ¥a zaneste k veterinÃ¡rovi, ktorÃ½ vÃ¡m vystavÃ­ potvrdenie o prÃ­Äine smrti a o spÃ´sobe zabitia (projektil mÃ´Å¾e pomÃ´cÅ¥ usvedÄiÅ¥ pÃ¡chateÄ¾a podÄ¾a nezameniteÄ¾nÃ½ch stÃ´p â€“ nieÄo ako odtlaÄok prsta). Ako vÅ¾dy je veÄ¾mi vhodnÃ¡ fotodokumentÃ¡cia. Tento postup je dÃ´leÅ¾itÃ½ aj pri utÃ½ranÃ­ zvieraÅ¥a na smrÅ¥.\r\n\r\nKaÅ¾dÃ½ takÃ½to prÃ­pad oznÃ¡mte na linkaprotikrutosti@gmail.com, kde vÃ¡m poradia, ako rieÅ¡iÅ¥ a zabezpeÄiÅ¥ postih voÄi pÃ¡chateÄ¾ovi. Ak pÃ¡chateÄ¾ nie je znÃ¡my, podajte trestnÃ© oznÃ¡menie na neznÃ¡meho pÃ¡chateÄ¾a.\r\n\r\n<b><u>Kontakty na nahlÃ¡senie prÃ­padov:</b></u>\r\n<b>Ãštulok PieÅ¡Å¥any</b>                      0904 170 913      utulok@utulok-piestany.sk\r\n<b>MP PieÅ¡Å¥any</b>                           033/7721626\r\n<b>ZvieracÃ­ ombudsman</b>              0948 022 121      info@zvieraciombudsman.sk\r\n<b>RegionÃ¡lna veterinÃ¡rna sprÃ¡va (RVPS)</b> pre okresy PieÅ¡Å¥any a Hlohovec: ZavarskÃ¡ 11, 918 21 Trnava, tel: 033/53429122\r\n', 'The hotline against cruelty on animals helps animals that have been abused, severely injured, neglected or in other life danger. It\'s a group of volunteering inspectors who act based on your notification. You can contact the responsible authorities or us directly:\r\n\r\n<b>E-Mail-Address: linkaprotikrutosti@gmail.com</b>\r\n\r\nVia mail:\r\nSLOBODA ZVIERAT - Linka proti krutosti\r\nPod Brehmi 1/a\r\n841 03 Bratislava IV - Polianky\r\nSlovakia\r\n\r\n<b>Tel: +421 917 662 030</b>\r\nMon Ã¢â‚¬â€œ Fri: 10 am - 12 pm and 3 pm - 5 pm\r\nSat: 10 am Ã¢â‚¬â€œ 12 pm\r\n\r\n\r\n<b>PieÃ…Â¡Ã…Â¥any Animal Shelter</b>:   +421 904 170 913 / utulok@utulok-piestany.sk\r\n<b>PieÃ…Â¡Ã…Â¥any local police</b>:         +421 33 772 1626\r\n<b>Animal Ombudsman</b>:         +421 948 022 121 / info@zvieraciombudsman.sk\r\n\r\nRegional Veterinary Control (RVPS) for district of Piestany and Hlohovec: Zavarska 11, 918 21 Trnava, tel: +421 33 5342 9122', 'STOP Animal Abuse! Call the Hotline Against Cruelty on Animals', '\r\nSTOP TierquÃ¤lerei! Rufen Sie die Hotline gegen TierquÃ¤lerei an\r\n\r\nDie Hotline gegen TierquÃ¤lerei dient zur Hilfe fÃ¼r geschwundene, verletzte, vernachlÃ¤ssigte und sich in Lebensgefahr befindende Tiere. Sie handelt aufgrund Ihrer Meldung. Sie kÃ¶nnen sich direkt an die zustÃ¤ndigen BehÃ¶rden oder an uns wenden: E-Mail-Adresse: linkaprotikrutosti@gmail.com Per Post: SLOBODA ZVIERAT - Linka proti krutosti Pod Brehmi 1/a SK â€“ 841 03 Bratislava IV â€“ Polianky Telefon: +421 917 662 030 Mon â€“ Frei: 10:00 â€“ 12:00 und 15:00 â€“ 17:00 Uhr Sam: 10:00 â€“ 12:00 Uhr TIERHEIM PieÅ¡Å¥any: +421 904 170 913 / utulok@utulok-piestany.sk STADTPOLIZEI PieÅ¡Å¥any: +421 33 772 1626 OMBUDSMAN fÃ¼r Tiere: +421 948 022 121 / info@zvieraciombudsman.sk Regional Vetamt (RVPS) fÃ¼r Bezirk PieÅ¡Å¥any und Hlohovec: ZavarskÃ¡ 11, 918 21 Trnava, tel: +421 33 5342 9122\r\n\r\nRegeln fÃ¼r das AusfÃ¼hren von Hunden im Tierheim PieÅ¡Å¥any\r\n\r\nHunde dÃ¼rfen nur innerhalb der festgelegten Zeiten ausgefÃ¼hrt werden. GeÅ‘ffnet fÃ¼r Gassigeher: November - April: 13 - 15.30 Uhr Mai - August: 13 - 15.30 Uhr / Samstag, Sonntag 13 â€“ 16.30 Uhr September - Oktober: 13 â€“ 15.30 Uhr Adresse: PriemyselnÃ¡ 12a, PieÅ¡Å¥any â€“ zwischen die Firmen Tavos und EmpÃ­ria 1. Der Hund muss rechtzeitig ins Tierheim gebracht werden. 2. Informieren Sie sich beim Tierpfleger Ã¼ber das passenden Hund fÃ¼r euch und wÃ¤hlen Sie solchen Hund aus, den Sie je nach GrÃ¶ÃŸe und Temperament unter Kontrollen halten kÃ¶nnen. Beachten Sie die RatschlÃ¤ge der Pfleger. 3. Hund darf nicht von der Leine gelassen werden. Es ist notwendig, zu verhindern, dass sich die Hunde aus verschiedenen HundeauslÃ¤ufen einander annÃ¤hern, sie kÃ¶nnten sich gegenseitig sehr schlimm beiÃŸen. 4. Der Hund darf nur vom Tierpfleger aus dem Zwinger geholt und zurÃ¼ckgebracht werden. 5. Alle Ã„nderungen im Verhalten, Gesundheitszustand des Tieres oder entstandene Verletzungen sind dem Tierpfleger gleich zu melden. 6. Entsorgen Sie den Kot Ihrer Hunde. Die TÃ¼ten sind im Tierheim erhÃ¤ltlich. 7. Nehmen Sie bitte RÃ¼cksicht auf Menschen, die sich im Umgebung bewegen. 8. ÃœbermÃ¤ÃŸiges Training und Bestrafung des Hundes sind absolut unzulÃ¤ssig. Passen Sie sich an seine individuellen BedÃ¼rfnisse an: Tempo, Lust und Alter die eigene Umgebung zu erkunden. 9. Die Hunde dÃ¼rfen wÃ¤hrend des Spaziergangs nicht gefÃ¼ttert werden, einige haben DiÃ¤t. 10. Beim Unfall, Attack von anderem Hund, Verletzung sofort das Tierheimpfleger anrufen +421 903 207 306. 11. SpaziergÃ¤nge mit dem Hund sind erlaubt bis 15 Jahre alte Kinder nur mit erwachsene Person.\r\n', 'STOP TierquÃ¤lerei! ', '2020-04-25 11:29:30'),
(8, 'NOVELA ZÃKONA O VETERINÃRNEJ STAROSTLIVOSTI', '1.9. 2019 vstÃºpila do platnosti novela, majiteÄ¾om psov z nej vyplÃ½vajÃº novÃ© povinnosti - kaÅ¾dÃ½ pes musÃ­ byÅ¥ zaÄipovanÃ½ a evidovanÃ½ v Registri spoloÄenskÃ½ch zvierat.\r\n<b><u>â€žSlovensko sa prijatÃ­m novely zaraÄuje medzi kultÃºrne krajiny, ktorÃ© nepovaÅ¾ujÃº zviera za vec, ale za Å¾ivÃº cÃ­tiacu bytosÅ¥.â€œ</b></u>\r\n\r\n<b><u>UsmrtiÅ¥ mÃ´Å¾e iba veterinÃ¡r</b></u>\r\nUÅ¾ nie je moÅ¾nÃ© zastreliÅ¥ alebo utopiÅ¥ nechcenÃ© spoloÄenskÃ© zviera (pes, maÄka). MajiteÄ¾ mu musÃ­ hÄ¾adaÅ¥ nÃ¡hradnÃº starostlivosÅ¥. â€žBezbolestne usmrtiÅ¥ psa alebo maÄku mÃ´Å¾e len veterinÃ¡r. Za usmrtenie inÃ½m ako povolenÃ½m spÃ´sobom hrozÃ­ pokuta od 300 do 800 Eur.\r\n\r\n<b><u>TÃ½ka sa vÃ¡s to ak</b></u>\r\nâ€¢	mÃ¡te vakcinaÄnÃ½ preukaz, pri Ãºdajoch o psÃ­kovi je nÃ¡lepka od mikroÄipu so Å¡pecifickÃ½m ÄÃ­selnÃ½m kÃ³dom a dÃ¡tum jeho aplikÃ¡cie\r\nâ€¢	pes mÃ¡ pas spoloÄenskÃ©ho zvieraÅ¥a, znamenÃ¡ to, Å¾e je ÄipovanÃ½\r\nâ€¢	do ambulancie prÃ­dete bez jednÃ©ho alebo druhÃ©ho dokladu, pomocou ÄÃ­taÄky mikroÄipov jednoducho zistia, Äi je pes ÄipovanÃ½\r\n\r\n<b><u>Povinnosti majiteÄ¾ov psa</b></u>\r\nâ€¢	psy narodenÃ© do 31.8.2018 treba daÅ¥ zaÄipovaÅ¥ do konca augusta 2019\r\nâ€¢	psa s neskorÅ¡Ã­m dÃ¡tumom narodenia musÃ­te daÅ¥ zaÄipovaÅ¥ do 12. tÃ½Å¾dÅˆa od narodenia\r\nâ€¢	Äipovanie a zÃ¡znam v registri vykonÃ¡va veterinÃ¡rny lekÃ¡r\r\nâ€¢	max. suma je stanovenÃ¡ na 10 â‚¬, za Ä¾udÃ­ v hmotnej nÃºdzi uhradÃ­ peniaze Å¡tÃ¡t\r\nâ€¢	ak fyzickÃ¡ osoba nedÃ¡ psa zaÄipovaÅ¥, hrozÃ­ jej pokuta 800 â‚¬, prÃ¡vnickej osobe do 3 500 â‚¬\r\nâ€¢	veterinÃ¡r nemÃ´Å¾e oÅ¡etriÅ¥ psa bez Äipu', NULL, NULL, NULL, NULL, '2020-01-19 13:27:04'),
(7, 'VENÄŒENIE', 'PsÃ­kovia sa vÅ¾dy veÄ¾mi teÅ¡ia na venÄenie, sÃº vÄaÄnÃ­ za kontakt s Ä¾uÄmi a zmenu v dennom reÅ¾ime. Treba prÃ­sÅ¥ vhodne obleÄenÃ½, odporÃºÄame starÅ¡ie veci, psÃ­kovia vÃ¡s mÃ´Å¾u od radosti poskÃ¡kaÅ¥ a zaÅ¡piniÅ¥. PokiaÄ¾ ste mladÅ¡Ã­ ako 15 rokov, venÄenie je len v sprievode dospelÃ©ho. \r\n\r\n<b><u>OtvorenÃ© mÃ¡me 365 dnÃ­ v roku:</b></u> \r\nNovember - FebruÃ¡r: 8 â€“ 16 h a venÄenie 13 â€“ 15.30 h\r\nMarec - OktÃ³ber: \r\nPracovnÃ© dni: 8 â€“ 16 h a venÄenie 13 â€“ 15.30 h\r\nSobota, nedeÄ¾a: 8 â€“ 17 h a venÄenie 13 â€“ 16.30 h\r\n\r\nAdresa: PriemyselnÃ¡ 12a, PieÅ¡Å¥any - medzi podnikmi Tavos a EmpÃ­ria za Å¾elezniÄnou stanicou\r\n\r\n<b><u>PravidlÃ¡ venÄenia</b></u> \r\n1. VenÄiÅ¥ sa smie len vo vyhradenom Äase. Psa treba vrÃ¡tiÅ¥ do Ãºtulku v stanovenÃ½ Äas. V extrÃ©mnom poÄasÃ­ /horÃºÄavy, silnÃ½ dÃ¡Å¾Ä/ psÃ­kov na venÄenie nevydÃ¡vame. \r\n2. Pri vÃ½bere psÃ­ka na venÄenie poradÃ­me vzhÄ¾adom na vek venÄÃ©ra a zdatnosÅ¥. PoÄas venÄenia preberÃ¡ venÄÃ©r zodpovednosÅ¥ za psÃ­ka a dodrÅ¾iava pokyny venÄenia.\r\n3. PsÃ­k sa v Å¾iadnom prÃ­pade nesmie pÃºÅ¡Å¥aÅ¥ na voÄ¾no. Treba zabrÃ¡niÅ¥ pri stretnutÃ­ s inÃ½m psom, aby sa nepobili a neublÃ­Å¾ili si. \r\n4. PsÃ­kovia sa nesmÃº poÄas venÄenie kÅ•miÅ¥ ani maÅ¡krtami, niektorÃ­  sÃº na diÃ©te. MajÃº svoju dennÃº dÃ¡vku.\r\n5. Psa smie vyberaÅ¥ a vrÃ¡tiÅ¥ spÃ¤Å¥ do koterca jedine oÅ¡etrovateÄ¾, vodÃ­tka sÃº k dispozÃ­cii v Ãºtulku.\r\n6. Ak spozorujete nejakÃ© zmeny v sprÃ¡vanÃ­ a v zdravotnom stave zvieraÅ¥a poÄas prechÃ¡dzky (hnaÄky, rany, klieÅ¡te), treba to nahlÃ¡siÅ¥ oÅ¡etrovateÄ¾om.\r\n7. Exkrementy po psÃ­koch treba zbieraÅ¥. VreckÃ¡ sÃº k dispozÃ­cii v Ãºtulku.\r\n8. Trestanie psa je neprÃ­pustnÃ©, treba sa prispÃ´sobiÅ¥ jeho tempu a povahe.\r\n9. V prÃ­pade nehody, zranenia, Ãºteku psa to treba hneÄ hlÃ¡siÅ¥ zamestancom Ãºtulku na 0903 207 306.\r\n', 'Dogs are always very excited for walking, they\'re grateful for contact with people and a change in their daily routine. Dress comfortably and appropriately - we recommend older clothes that you don\'t mind getting stained or being jumped at which many dogs do from pure joy. If you\'re younger than 15, please come accompanied by an adult.\r\n\r\n<b><u>We\'re open 365 days a year:</b></u>\r\nNovember - February: 8 am - 4 pm and dog walks 1 pm - 3.30 pm\r\nMarch - October:\r\nWork days: 8 am - 4 pm and dog walks 1 pm - 3.30 pm\r\nWeekends: 8 am - 5 pm and dog walks 1 pm - 4.30 pm\r\n\r\nAddress: Priemyselna 12a, Piestany - near the train station between companies Tavos and EmpÃƒÂ­ria\r\n\r\n<b><u>Dog Walking Rules</b></u>\r\n1. Dog walking is allowed only at the above mentioned hours, dogs need to be returned before the hours end. We reserve the right to cancel walks in extreme weather such as heat or storms.\r\n2. We will gladly choose a dog suitable for you based on your age and physical strength. Every dog walker takes over responsibility for the dog given in charge and following these rules.\r\n3. Under no circumstances you can let the dog off-leash. It\'s also necessary to avoid meeting other dogs in order to prevent fighting and getting hurt (both you and/or the dog).\r\n4. Please, don\'t feed the dogs nor give them any snacks. They get their daily dose of food that is sufficient for their needs and some of them are on diet, different food could hurt them.\r\n5. Only our caretakers are allowed to take dogs out and return them back to the kennel. Leashes are available in our shelter.\r\n6. If you notice any behavior or health changes during the walk (diarrhea, ticks, wound etc.), please report it to the caretakers right upon your return.\r\n7. Excrements need to be picked up. Poop-bags are available at the shelter.\r\n8. Punishment of dogs is inadmissible!, you need to adjust to dog\'s pace and character.\r\n9. In case of an accident, injury or dog\'s escape, immediately call the shelter staff at +421 904 170 913.\r\n\r\nThank you!', 'Dog walks', 'Hunde dÃ¼rfen nur innerhalb der festgelegten Zeiten ausgefÃ¤hrt werden.\r\n\r\nGeÃ¶ffnet fÃ¼r Gassigeher:\r\nNovember - April:         13 - 15.30 Uhr\r\nMai - August:               13 - 15.30 Uhr / Samstag, Sonntag 13 - 16.30 Uhr\r\nSeptember - Oktober:  13 - 15.30 Uhr\r\n\r\nAdresse: Priemyselna 12a, Piestany  - zwischen die Firmen Tavos und EmpÃƒÂ­ria\r\n\r\n1.  Der Hund muss rechtzeitig ins Tierheim gebracht werden.\r\n2. Informieren Sie sich beim Tierpfleger Ã¼ber das passenden Hund fÃ¼r euch und wÃ¤hlen Sie solchen Hund aus, den Sie je nach GrÃ¼ÃŸe und Temperament unter Kontrollen halten kÃ¶nnen. Beachten Sie die RatschlÃ¤ge der Pfleger.\r\n3. Hund darf nicht von der Leine gelassen werden. Es ist notwendig, zu verhindern, dass sich die Hunde aus verschiedenen Hundeauslaufen einander annÃƒÂ¤hern, sie kÃ¶nten sich gegenseitig sehr schlimm beiÃŸen.\r\n4. Der Hund darf nur vom Tierpfleger aus dem Zwinger geholt und zurÃ¼ckgebracht werden.\r\n5. Alle Ã¤nderungen im Verhalten, Gesundheitszustand des Tieres oder entstandene Verletzungen sind dem Tierpfleger gleich zu melden.\r\n6. Entsorgen Sie den Kot Ihrer Hunde. Die TÃ¼ten sind im Tierheim erhÃ¤ltlich.\r\n7. Nehmen Sie bitte RÃ¼cksicht auf Menschen, die sich im Umgebung bewegen.\r\n8. ÃœbermÃ¤ÃŸiges Training und Bestrafung des Hundes sind absolut unzulÃ¤ssig. Passen Sie sich an seine individuellen BedÃ¼rfnisse an: Tempo, Lust und Alter die eigene Umgebung zu erkunden.\r\n9. Die Hunde dÃ¼rfen wÃ¤hrend des Spaziergangs nicht gefÃ¼ttert werden, einige haben DiÃ¤t.\r\n10. Beim Unfall, Attack von anderem Hund, Verletzung sofort das Tierheimpfleger anrufen +421 903 207 306.\r\n11. SpaziergÃ¤nge mit dem Hund sind erlaubt bis 15 Jahre alte Kinder nur mit erwachsene Person.', 'Regeln fÃ¼r das AusfÃ¼hren von Hunden im Tierheim Piestany', '2020-04-25 09:21:15'),
(9, 'ZÃKAZ REÅ¤AZE ???', 'VyhlÃ¡Å¡ka 123/2008 hovorÃ­, Å¾e \"Pes drÅ¾anÃ½ na reÅ¥azi musÃ­ maÅ¥ DENNE umoÅ¾nenÃ½ voÄ¾nÃ½ pohyb bez uviazania\".\r\n\r\n<b><u>AkÃ¡ je realita?</b></u>\r\nVy nÃ¡m hlÃ¡site psÃ­kov, ktorÃ­ trÃ¡via celÃ½ svoj Å¾ivot na reÅ¥azi. My tam ideme, poÅ¡leme kontrolu (RVPS) a majiteÄ¾ povie: VeÄ ja ho pÃºÅ¡Å¥am kaÅ¾dÃ½ deÅˆ, len teraz je uviazanÃ½ na chvÃ­Ä¾u, lebo sa ho bojÃ­ vnuÄka, pÃºÅ¡Å¥ame ho v noci, nech strÃ¡Å¾i atÄ. \r\n<b><u>NIK NEDOKÃÅ½E MAJITEÄ½OVI, Å½E PSA NEPÃšÅ Å¤A</b></u> (pretoÅ¾e aj keÄ susedia vedia pravdu, svedÄiÅ¥ zvÃ¤ÄÅ¡a odmietajÃº) a tak kontrola odÃ­de a psÃ­k ostÃ¡va uvÃ¤znenÃ½ na reÅ¥azi bez nÃ¡deje na pomoc... Äasto celÃ½ svoj Å¾ivot.\r\nKontrola, nÃ¡prava a ochrana (a Äasto aj zÃ¡chrana) psa sÃº tak podÄ¾a jestvujÃºcej vyhlÃ¡Å¡ky NEVYKONATEÄ½NÃ‰. VÃ½sledok? TisÃ­ce zniÄenÃ½ch Å¾ivotov...\r\n\r\n<b><u>PRETO JE NEVYHNUTNÃ‰ VO VYHLÃÅ KE ZAKOTVIÅ¤, Å¾e DRÅ½ANIE PSA NA REÅ¤AZI JE ZAKÃZANÃ‰.</b></u>', NULL, NULL, NULL, NULL, '2020-01-12 14:15:40'),
(10, 'CIRKUSY', 'Po 6-roÄnom spoloÄnom boji sme dostali do veterinÃ¡rneho zÃ¡kona <b><u>zÃ¡kaz vÃ½cviku a vystupovania zvierat v cirkusoch na Slovensku</b></u>. \r\n\r\n<b><u>ÄŒo to znamenÃ¡?</b></u>\r\nâ€¢	CIRKUSY so zvieratami k nÃ¡m budÃº mÃ´cÅ¥ naÄalej chodiÅ¥, pretoÅ¾e im to umoÅ¾Åˆuje spoloÄnÃ¡ EÃš legislatÃ­va\r\nâ€¢	zÃ¡kon iba zakÃ¡zal vÃ½cvik a vystupovanie zvierat u nÃ¡s\r\nâ€¢	zÃ¡vÃ¤znÃ½ prÃ¡vny predpis (vyhlÃ¡Å¡ka) urÄÃ­ zoznam zvierat a ÄalÅ¡ie podrobnosti\r\n\r\n<b><u>VyhlÃ¡Å¡ka je teda nevyhnutnÃ¡ a mala by urÄiÅ¥:</b></u>\r\nâ€¢	DRUHY zvierat, ktorÃ½ch vÃ½cvik a verejnÃ© vystupovanie bude u nÃ¡s povolenÃ©/zakÃ¡zanÃ©; Sloboda zvierat navrhuje tzv. pozitÃ­vny zoznam (teda vymenovaÅ¥ povolenÃ© druhy zvierat, vÅ¡etky ostatnÃ© by boli zakÃ¡zanÃ©)\r\nâ€¢	podmienky, za akÃ½ch budÃº mÃ´cÅ¥ cirkusy na ÃºzemÃ­ SR zvieratÃ¡ drÅ¾aÅ¥\r\nâ€¢	metodiku kontrol zo strany Å VPS/ RVPS\r\nâ€¢	sankcie\r\n\r\n<b><u>Sloboda zvierat navrhla Ministerstvu pÃ´dohospodÃ¡rstva spoluprÃ¡cu na vyhlÃ¡Å¡ke - odmietli</b></u>, pracovnÃº skupinu s mimovlÃ¡dnymi organizÃ¡ciami vraj neplÃ¡nujÃº napriek tomu, Å¾e je to v demokraciÃ¡ch dobrÃ½m zvykom a <b><u>aj keÄ ich k tomu vyzvali uÅ¾ aj europoslanci.</b></u>\r\n', NULL, NULL, NULL, NULL, '2020-01-19 13:28:52');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `main_image_cat`
--

CREATE TABLE `main_image_cat` (
  `main_image_id` int(11) NOT NULL,
  `main_image` varchar(1500) COLLATE utf8_bin NOT NULL,
  `fk_cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `main_image_cat`
--

INSERT INTO `main_image_cat` (`main_image_id`, `main_image`, `fk_cat_id`) VALUES
(5, 'CAT.5e3b3184c5eac8.07218431.jpg', 6),
(11, 'CAT.5e9b5965cede55.09966205.jpg', 12);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `main_image_dog`
--

CREATE TABLE `main_image_dog` (
  `main_image_id` int(11) NOT NULL,
  `main_image_dog` varchar(1500) COLLATE utf8_bin NOT NULL,
  `fk_dog_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `main_image_dog`
--

INSERT INTO `main_image_dog` (`main_image_id`, `main_image_dog`, `fk_dog_id`) VALUES
(1, 'DOG.5e2c460ac86279.81329154.jpg', 1),
(4, 'DOG.5e9c0897cc21b8.54827268.jpg', 5),
(5, 'DOG.5e9c0bb82fa1c9.75358888.jpg', 6),
(6, 'DOG.5e9c25a5ec7426.01396311.jpg', 7),
(7, 'DOG.5e9c2608849aa1.10300203.jpg', 8),
(8, 'DOG.5e9c265d6b79d0.22246590.jpg', 9),
(10, 'DOG.5e9c289b4cee69.91363374.jpg', 11),
(11, 'DOG.5e9c28facfc822.83463588.jpg', 12),
(13, 'DOG.5e9c2b2d5ff297.45111409.jpg', 14),
(14, 'DOG.5e9c2eb4992030.52193731.jpg', 15),
(15, 'DOG.5e9c2f6dc06f34.57769452.jpg', 16),
(16, 'DOG.5e9c6711b22306.46056475.jpg', 17),
(17, 'DOG.5e9c67b99ff7d0.51905201.jpg', 18),
(18, 'DOG.5e9c6850029c98.75554912.jpg', 19),
(19, 'DOG.5e9c69028ef149.39305993.jpg', 20),
(20, 'DOG.5e9c6ab1eacd97.77144045.jpg', 21),
(21, 'DOG.5e9c6fc9ecad17.40686929.jpg', 22),
(22, 'DOG.5e9c701ef03060.21268484.jpg', 23),
(23, 'DOG.5e9c708a1984f2.38886733.jpg', 24),
(24, 'DOG.5e9c70fe968e29.85195021.jpg', 25),
(25, 'DOG.5e9c71755f8fa2.03908596.jpg', 26),
(26, 'DOG.5e9c71cd23cee2.94021879.jpg', 27),
(27, 'DOG.5e9c722802c383.59648550.jpg', 28),
(28, 'DOG.5e9c7b979e5542.45890631.jpg', 29),
(29, 'DOG.5e9c7beed79c36.49702348.jpg', 30),
(30, 'DOG.5e9c7c442df671.26875065.jpg', 31),
(31, 'DOG.5e9c7c83b18068.55458770.jpg', 32),
(32, 'DOG.5e9c7cd9abfa27.35492315.jpg', 33),
(33, 'DOG.5e9c7d3244fe49.51282417.jpg', 34),
(34, 'DOG.5e9c7d803ff335.78830795.jpg', 35),
(35, 'DOG.5e9c7deddd4cc8.69472953.jpg', 36),
(36, 'DOG.5e9c7e412e8b14.35321846.jpg', 37),
(37, 'DOG.5e9c7e91807258.19910896.jpg', 38),
(38, 'DOG.5e9c7edcad7763.34472602.jpg', 39),
(39, 'DOG.5e9c7f342563b0.12924430.jpg', 40),
(40, 'DOG.5e9c7f7a8d8419.51009109.jpg', 41),
(41, 'DOG.5e9c7fcc95e522.64943495.jpg', 42),
(42, 'DOG.5e9c8034803e30.43949659.jpg', 43),
(43, 'DOG.5e9c80861810d8.87711928.jpg', 44),
(44, 'DOG.5e9c80e3cf5d12.37780549.jpg', 45),
(45, 'DOG.5e9ca8ce2d9f15.13705575.jpg', 46),
(46, 'DOG.5e9ca9252520e2.35400838.jpg', 47),
(47, 'DOG.5e9ca975b84399.44022528.jpg', 48),
(48, 'DOG.5e9e032e9c1654.58607961.jpg', 49),
(49, 'DOG.5e9e039143f3d5.09001162.jpg', 50),
(50, 'DOG.5e9e03e75d28e8.17473677.jpg', 51),
(51, 'DOG.5e9e07482b9094.02828977.jpg', 52),
(52, 'DOG.5e9e07ad33bf48.05602372.jpg', 53),
(53, 'DOG.5e9e07fb013177.04069375.jpg', 54),
(54, 'DOG.5e9e084b1b2cf5.40829476.jpg', 55),
(55, 'DOG.5e9e089b196b07.46964433.jpg', 56),
(56, 'DOG.5e9e08e112a6e4.82024706.jpg', 57),
(57, 'DOG.5e9e092c3eda87.73671028.jpg', 58),
(58, 'DOG.5e9e09d2cbc628.17011827.jpg', 59),
(59, 'DOG.5e9e0a3a90a314.47052917.jpg', 60),
(60, 'DOG.5e9e0a991ce420.78121303.jpg', 61),
(61, 'DOG.5e9e0af7606c21.72778883.jpg', 62),
(62, 'DOG.5e9e0b7578ff32.33100017.jpg', 63),
(63, 'DOG.5e9e0bd9003d49.40319244.jpg', 64),
(64, 'DOG.5e9e0c5faf2fb9.85339301.jpg', 65),
(65, 'DOG.5e9e0cbfcbbc95.85438172.jpg', 66);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `mission`
--

CREATE TABLE `mission` (
  `mission_id` int(11) NOT NULL,
  `mission_title_sk` varchar(200) COLLATE utf8_bin NOT NULL,
  `mission_text_sk` text COLLATE utf8_bin NOT NULL,
  `mission_title_en` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `mission_text_en` text COLLATE utf8_bin,
  `mission_title_de` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `mission_text_de` text COLLATE utf8_bin
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `mission`
--

INSERT INTO `mission` (`mission_id`, `mission_title_sk`, `mission_text_sk`, `mission_title_en`, `mission_text_en`, `mission_title_de`, `mission_text_de`) VALUES
(1, 'O nÃ¡s', 'Ãštulok v PieÅ¡Å¥anoch vznikol v roku 1994 ako reakcia na nepriaznivÃº situÃ¡ciu v tomto meste, kedy bolo s tÃºlavÃ½mi zvieratami zaobchÃ¡dzanÃ© nehumÃ¡nne a vÃ¤ÄÅ¡ina z nich bola zabÃ­janÃ¡. Rozhodli sme sa, Å¾e takto to nemÃ´Å¾e zostaÅ¥, veÄ kaÅ¾dÃ½ Å¾ivÃ½ tvor mÃ¡ prÃ¡vo na Å¾ivot!\r\n\r\nPreto sme zaÄali \"bojovaÅ¥\" za ich prÃ¡va. ZÃ­skali sme podporu mesta, prvÃ½ch sponzorov, prostrednÃ­ctvom lokÃ¡lnych mÃ©diÃ­ sme informovali obyvateÄ¾ov mesta, zaÄali sme s vÃ½stavbou a pomaly sa to vÅ¡etko rozbehlo.\r\n\r\n <b>NaÅ¡Ã­m hlavnÃ½m cieÄ¾om je nÃ¡jdenie novÃ©ho, lÃ¡skavÃ©ho domova pre psÃ­kov a maÄiÄky z ulice a dosiahnutie zodpovednÃ©ho prÃ­stupu majiteÄ¾ov zvierat. NaÅ¡Ã­m snom je, aby jednÃ©ho dÅˆa Ãºtulky neboli potrebnÃ©.</b>\r\n\r\nNaÅ¡a prÃ¡ca nebola a ani je Ä¾ahkÃ¡, fyzicky ani psychicky, k tomu sa Äasto stretÃ¡vame so skoro nerieÅ¡iteÄ¾nÃ½mi problÃ©mami, ale na druhej strane aj s oddanou vÄakou zvierat a pomocnÃ½mi rukami tÃ½ch, Äo chcÃº pomÃ¡haÅ¥ rovnako ako my...\r\n<b>Pridajte sa k nÃ¡m!</b>', 'About us', 'Piestany Animal Shelter was established in 1994 as a reaction to unsatisfactory situation in the town, as most stray animals were treated inhumanely or put down. We found the status quo unacceptable, surely every creature has the right to live!\r\n\r\nThus we started \"fighting\" for their rights. We gained the town\'s support and first sponsors, and started spreading the news to the residents via local media. We started building the shelter and the idea has become a reality.\r\n\r\n<b>Our main goal is finding a new, loving home for homeless dogs and cats, as well as educate and accomplish responsible attitude of owners towards their animals. Our biggest dream is that one day there will be no need for shelters like ours.</b>\r\n\r\nOur job hasn\'t been easy, physically nor mentally, we face almost unsolvable issues very often. But everyday loyalty and gratitude of animals and helping hands of all people who want to help just like us, makes it truly worth it...\r\n<b>Join us!</b>', 'Ãœber uns', 'Das Tierheim PieÅ¡Å¥any wurde im Jahr 1994 als eine Reaktion auf die unertrÃ¤gliche Situation in unserer Stadt gegrÃ¼ndet. Die auf den Strassen gefundenen Tiere wurden damals grausam behandelt und die meisten wurden getÃ¶tet. Wir entschieden uns, es darf nicht so weiter gehen, jedes Lebewesen hat doch das Recht auf Leben! Deshalb fingen wir an, fÃ¼r ihre Rechte zu kÃ¤mpfen. Wir gewannen erste Sponsoren und die UnterstÃ¼tzung der Stadt PieÅ¡Å¥any. Durch die Lokalmedien informierten wir die StadtbÃ¼rger und bald begannen die Bauarbeiten. Unser Ziel ist, ein gutes Zuhause fÃ¼r die aus der Strasse kommenden Tiere zu finden. Wir mÃ¶chten in der Zukunft einen Stand erreichen, wo sich die Tierbesitzer verantwortlich verhalten werden und die Tierheime nicht mehr nÃ¶tig sind. Die tÃ¤gliche Konfrontation mit den Problemen ist schwierig aber dank der Treue der Tiere und der Hilfsbereitschaft aller Freiwilligen ist es etwas leichter. Begleiten Sie uns!\r\n\r\n\r\n'),
(2, 'Ako nÃ¡m pomÃ´cÅ¥?', 'ZvieratÃ¡ skutoÄne potrebujÃº pomoc nÃ¡s vÅ¡etkÃ½ch. Bez podpory verejnosti by organizÃ¡cie akou je aj nÃ¡Å¡ Ãºtulok neboli schopnÃ© fungovaÅ¥. PomÃ´Å¾te aj vy! Aj keÄ sa necÃ­tite materiÃ¡lne bohatÃ½, iste si vyberiete z moÅ¾nostÃ­, ako podporiÅ¥ zÃ¡chranu zvierat a prispieÅ¥:\r\n<b>- vecnÃ½m darom\r\n- finanÄne\r\n- bezplatnou sluÅ¾bou</b>\r\n\r\n<b>StaÅˆte sa aktivistom</b> - Älovekom, ktorÃ½ vo svojom voÄ¾nom Äase dobrovoÄ¾ne a neziÅ¡tne pomÃ¡ha vo vÅ¡etkÃ½ch oblastiach Äinnosti organizÃ¡cie, <b>Äo predstavuje</b> napr. <b>venÄenie psÃ­kov, pomoc pri akciÃ¡ch, hÄ¾adanie sponzorov, kontroly adoptovanÃ½ch psÃ­kov, doÄasnÃº opateru Å¡teniatok a chorÃ½ch zvierat v rÃ¡mci PieÅ¡Å¥an, prednÃ¡Å¡ky na ZÅ ...</b>\r\n\r\nAk doma alebo v prÃ¡ci nÃ¡jdete veci, ktorÃ© uÅ¾ nepotrebujete, darujte nÃ¡m ich. <b>Potrebujeme najmÃ¤ krmivo pre zvieratÃ¡, vodÃ­tka, obojky, Äistiace a dezinfekÄnÃ© prostriedky, lieky pre zvieratÃ¡, metly, lopaty, vedrÃ¡, handry, stavebnÃ½ materiÃ¡l, pracovnÃ© obleÄenie, rukavice, kancelÃ¡rske potreby â€“ perÃ¡, obÃ¡lky, papier, fixky, kancelÃ¡rsky papier...</b> VÃ¡Å¡ dar bude prijatÃ½ s veÄ¾kou vÄakou!\r\n\r\n<b>FinanÄnÃ½ dar</b> bude pouÅ¾itÃ½ na ÄinnosÅ¥ a prevÃ¡dzku Ãºtulku RegionÃ¡lneho centra Slobody zvierat PieÅ¡Å¥any. PrispieÅ¥ mÃ´Å¾ete na nÃ¡Å¡ ÃºÄet v Tatra banke - <b>IBAN: SK5011000000002926886043</b>, BIC: TATRSKBXXXX alebo PoÅ¡tovej banke â€“ <b>IBAN: SK5865000000000020046882</b>, BIC: POBN SKBA alebo cez <b>PayPal na utulok@utulok-piestany.sk</b>. \r\n\r\nFinanÄnÃ½ dar nÃ¡m mÃ´Å¾ete darovaÅ¥ aj osobne, prÃ­padne mÃ´Å¾ete prispieÅ¥ na konkrÃ©tnu vec (vÃ½stavba koterca, lieÄenie konkrÃ©tneho psÃ­ka...). <b>PrispieÅ¥ mÃ´Å¾ete aj v rÃ¡mci darovania 2% z dane</b> (aktuÃ¡lne tlaÄivo na stiahnutie bÃ½va umiestnenÃ© na naÅ¡ej strÃ¡nke v obdobÃ­ odovzdÃ¡vania daÅˆovÃ½ch priznanÃ­).\r\n\r\nAk ste majiteÄ¾om firmy alebo odbornÃ­k na niektorÃº z nasledujÃºcich Äi inÃ½ch oblastÃ­, <b>poskytnite bezplatne prÃ¡ce</b>, vÅ¡etko je to v prospech zvieratiek v Ãºtulku. Potrebujeme pomoc pri:\r\n<b>- stavebnÃ© prÃ¡ce pri dobudovanÃ­ Ãºtulku\r\n- stolÃ¡rske prÃ¡ce\r\n- zvÃ¡raÄskÃ© prÃ¡ce\r\n- zÃ¡hradnÃ­cke prÃ¡ce\r\n- grafickÃ© prÃ¡ce a tlaÄ informaÄnÃ½ch materiÃ¡lov\r\n- oprava auta</b>\r\n\r\nUÅ¾ teraz sa teÅ¡Ã­me na naÅ¡u spoloÄnÃº aktivitu pre zÃ¡chranu zvierat!:) V prÃ­pade zÃ¡ujmu nÃ¡s kontaktutje na 0904 170 913 alebo utulok@utulok-piestany.sk.', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `place`
--

CREATE TABLE `place` (
  `place_id` int(5) NOT NULL,
  `url` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `place`
--

INSERT INTO `place` (`place_id`, `url`) VALUES
(35, 'SHELTER.5e0cfc65b45fe9.26673891.jpg'),
(38, 'SHELTER.5e0cfc65b59e14.81097025.jpg'),
(39, 'SHELTER.5e0cfc65b5ea09.54574400.jpg'),
(40, 'SHELTER.5e0cfc65b637d5.59084606.jpg'),
(41, 'SHELTER.5e0cfc65b683c5.47547329.jpg'),
(42, 'SHELTER.5e0cfc65b6d2a5.94854478.jpg'),
(43, 'SHELTER.5e0cfc65b725e3.16986481.jpg'),
(44, 'SHELTER.5e0cfc65b779f0.32526075.jpg'),
(47, 'SHELTER.5e0cfc65bc01e7.50627103.jpg'),
(48, 'SHELTER.5e0cfc65bda032.05288476.jpg'),
(49, 'SHELTER.5e0cfc65bf18a1.74416600.jpg'),
(50, 'SHELTER.5e0cfc65c03a60.83574925.jpg'),
(51, 'SHELTER.5e0cfc65c23c93.44889022.jpg'),
(52, 'SHELTER.5e0cfc65c3ce94.01184514.jpg'),
(54, 'SHELTER.5e0d0320e453b5.74868436.jpg'),
(55, 'SHELTER.5e3a9f39ade9d8.41134559.jpg');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `reports`
--

CREATE TABLE `reports` (
  `reports_id` int(5) NOT NULL,
  `reports_date` date DEFAULT NULL,
  `reports_descriptions_sk` mediumtext COLLATE utf8_bin,
  `name_sk` varchar(150) COLLATE utf8_bin NOT NULL,
  `reports_descriptions_en` text COLLATE utf8_bin,
  `name_en` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `reports_descriptions_de` text COLLATE utf8_bin,
  `name_de` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `keywords` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `reports`
--

INSERT INTO `reports` (`reports_id`, `reports_date`, `reports_descriptions_sk`, `name_sk`, `reports_descriptions_en`, `name_en`, `reports_descriptions_de`, `name_de`, `keywords`) VALUES
(4, '2020-01-02', 'DobrÃ½ veÄer, pani BalekovÃ¡ a vÅ¡etci pracovnÃ­ci PieÅ¡Å¥anskÃ©ho Ãºtulku, dovoÄ¾te mi popriaÅ¥ VÃ¡m do NovÃ©ho Roku 2020 veÄ¾a zdravÃ­Äka, Å¡Å¥astÃ­Äka, lÃ¡sky, rodinnej pohody, splnenie vÅ¡etkÃ½ch prianÃ­ a neposlednom rade veÄ¾a pracovnÃ½ch Ãºspechov vo vaÅ¡ej ÃºÅ¾asnej a lÃ¡skyplnej prÃ¡ci, ktorÃº tak skvele vykonÃ¡vate, o Äom svedÄia stovky zvieratiek umiestnenÃ½ch do novÃ½ch rodÃ­n... Samozrejme v mene naÅ¡ej rodiny VÃ¡m vyslovujeme veÄ¾kÃ© ÄŽAKUJEME za zachrÃ¡nenÃ© zvieratkÃ¡, nakoÄ¾ko aj my doma mÃ¡me od VÃ¡s malÃ½ poklad, volÃ¡ sa Mimi /vaÅ¡a bÃ½valÃ¡ Lolka/, z ktorej sa vyteÅ¡ujeme uÅ¾ 11 rokov. :)', 'Lolka-Mimi pozdravuje :) ', NULL, NULL, NULL, NULL, 'lolka, mimi'),
(5, '2020-01-02', 'KrÃ¡sny novÃ½ rok!', 'Alissa-Borka pozdravuje', NULL, NULL, NULL, NULL, 'alissa, borka'),
(7, '2020-01-02', 'S Casperkom Vam chceme vsetkym do Piestanskeho utulku popriat do Noveho roka len a len to najlepsie, malo novych tulavych psikov a maciciek a vela uspesnych adopcii. Ja som si u Vas nasla uzasneho Caspera (Harpera), ktory moj zivot neskutocne obohatil. Dakujem Vam za neho a aj za ostatnych psikov, ktorym pomahate. ', 'Casper-Harper ', NULL, NULL, NULL, NULL, 'casper, harper'),
(8, '2020-01-02', 'ZvykÃ¡ si pekne, rÃ¡no ma o 06:00 zobudÃ­, ideme von cikaÅ¥ a potom eÅ¡te spÃ­me. StraÅ¡ne sa teÅ¡Ã­, keÄ sa zobudia aj ostatnÃ­ Älenovia rodiny. Je hravÃ¡, kaÅ¾dÃ½ ju mÃ¡ rÃ¡d, lebo je to takÃ¡ malÃ¡ milenÃ¡ guliÄka, takÅ¾e Å¡Å¥astnÃ½ psÃ­k :) No a moja sestra nevedela vydrÅ¾aÅ¥ a priviedla svoju Äivavku na nÃ¡vÅ¡tevu, aby sa skamarÃ¡tili, no zo zaÄiatku bola Äivava malÃ½ zÃºrivec, ale po 10 min. ju zaÄala znÃ¡Å¡aÅ¥.. Musia si zvykaÅ¥, lebo sa stretÃ¡vame Äasto. PapÃ¡ pekne, je to takÃ© naÅ¡e bÃ¡bo.. HneÄ prvÃ½ deÅˆ cikala na podloÅ¾ku, koberce sme pre istotu na Äas odstrÃ¡nili, naÅ¡Å¥astie ich veÄ¾a nemÃ¡me. KakÃ¡ buÄ vonku alebo sa chodÃ­ skryÅ¥ pod stromÄek.. No to chce Äas, je eÅ¡te malinkÃ¡. Dali sme jej meno Kessy. ', 'Jina pozdravuje', NULL, NULL, NULL, NULL, 'jina'),
(9, '2020-01-02', 'ÄŽakujeme za novÃ©ho Älena rodiny. Dante je ÃºÅ¾asnÃ½ a za tÃº krÃ¡tku dobu, Äo ho mÃ¡me, sa vÅ¡etci cÃ­time, ako keby bol u nÃ¡s uÅ¾ roky...', 'Dajan pozdravuje ', NULL, NULL, NULL, NULL, 'dajan'),
(10, '2020-01-03', '...Äakujeme vÅ¡etkÃ½m milÃ½m Ä¾uÄom za krÃ¡sne povianoÄnÃ© nÃ¡dielky!', 'DarÄekovo 2.1.2020', NULL, NULL, NULL, NULL, 'darcekovo, darceky'),
(11, '2020-01-03', 'Posielame krÃ¡sne pozdravy z GrÃ©cka, kde sme na dovolenke. Mila je uÅ¾ Å¡edivÃ¡, ale stÃ¡le fit. MomentÃ¡lne mÃ¡m straÅ¡ieho psÃ­ka ako Mila a jedno Å¡teniatko, Äo som naÅ¡la opustenÃ© na parkovisku na ceste na dovolenku. 29.12.2019 bolo to presne 5 rokov a jeden mesiac, Äo je u mÅˆa.', 'e', '', '', '', '', 'torka, mila'),
(12, '2020-01-03', 'Prajeme s Nirkom VÃ¡m a celÃ©mu Ãºtulku vÅ¡etko dobrÃ© v r. 2020 a najmÃ¤ veÄ¾a zdravia, nech sa VÃ¡m darÃ­. Nirko sa chvalabohu vzhÄ¾adom na vek a diagnÃ³zy drÅ¾Ã­ a ja sa modlÃ­m, nech to tak ostane aj naÄalej. Posielam pÃ¡r fotiek pre poteÅ¡enie. Majte sa krÃ¡sne!', 'Nirko pozdravuje', NULL, NULL, NULL, NULL, 'nirko'),
(13, '2020-01-04', 'Je uÅ¾ za hranicami aj so svojou novou rodinou a krÃ¡snou paniÄkou, je jej milÃ¡Äik, proste mala obrovskÃ© Å¡Å¥astie na ÃºÅ¾asnÃº rodinu.', 'Darinka sa hlÃ¡si', NULL, NULL, NULL, NULL, 'darinka'),
(14, '2020-01-07', 'DobrÃ½ deÅˆ, posielame foto maÄiÄky, ktorÃº sme si u vÃ¡s adaptovali 10.9.2019. MaÄiÄka sa ma skvelo a je z nej riadny lovec:-)))', 'Vija pozdravuje', NULL, NULL, NULL, NULL, 'vija'),
(15, '2020-01-17', 'DobrÃ½ deÅˆ, posielam pozdrav od Roka. MÃ¡me ho uÅ¾ mesiac a hneÄ prvÃ½ tÃ½Å¾deÅˆ pochopil, Å¾e je doma. Je to vÄaÄnÃ½, vernÃ½ a posluÅ¡nÃ½ pes. Pri nÃ¡vrate z prechÃ¡dzky sa vÅ¾dy straÅ¡ne ponÃ¡hÄ¾a domov, utekÃ¡ ako prvÃ½ a nedoÄkavo ÄakÃ¡ pri brÃ¡ne. TakÃ½chto psov je v Ãºtulku Å¡koda.', 'Roko pozdravuje', NULL, NULL, NULL, NULL, 'roko'),
(16, '2020-01-07', 'V novom roku VÃ¡s pozdravuje Feh (Baily) a posiela VÃ¡m video a fotky.', 'Feh-Baily pozdravuje ', NULL, NULL, NULL, NULL, 'feh, baily'),
(17, '2020-01-08', 'StaruÄkÃ½ Olinko nÃ¡m zaÄal veÄ¾mi kaÅ¡Ä¾aÅ¥ s hnisavÃ½m vÃ½tokom z noÅ¡teka, boli nasadenÃ© antibiotikÃ¡, ale nezabrali, uÅ¾ len poleÅ¾kÃ¡val, rapÃ­dne schudol v krÃ¡tkom Äase, zostÃ¡val apatickÃ½ a kaÅ¡eÄ¾ ho veÄ¾mi trÃ¡pil. Boli sme na vyÅ¡etrenie, ktorÃ© Å¾iaÄ¾ ukÃ¡zalo nÃ¡dorovÃ© ochorenie veÄ¾kosti pomaranÄa a eÅ¡te aj brok v telÃ­Äku. Nechceli sme predlÅ¾ovaÅ¥ jeho trÃ¡penie, bol humÃ¡nne uspanÃ½. R.I.P. starÃºÅ¡ik,n edoÄkal si sa novÃ©ho domova, ktorÃ½ si mal sÄ¾ÃºbenÃ½. Tak si Å¥a budeme pamÃ¤taÅ¥, ako sa motkÃ¡Å¡ po dvore, najradÅ¡ej sÃ¡m a ÄakÃ¡Å¡ nÃ¡ruÄie, Äo Å¥a odnesie spÃ¤Å¥ do tvojho teplÃ©ho pelieÅ¡ku... Smutne sme zaÄali novÃ½ rok...:(', 'Olinko odiÅ¡iel navÅ¾dy', NULL, NULL, NULL, NULL, 'olinko'),
(18, '2020-01-09', 'Cez socialnu siet Å¡irime Dadin pribeh a hadam to uvidi dost ludi ðŸ™‚ Dnes sme boli v obchode s vecami pre psikov a si ju oblubili, asi im bude robit aj reklamu, takze dostaneme vecicky zadarmo â¤ï¸ Ak by nam uspelo nieco viac, urcite navas nezabudneme:)', 'Darinka opÃ¤Å¥', NULL, NULL, NULL, NULL, 'darinka, dada'),
(19, '2020-01-10', 'OpÃ¤Å¥ nÃ¡s navÅ¡tÃ­vila pani Karin s mamou, pani Barbara s priateÄ¾kou Trudi, ktorÃ¡ bola u nÃ¡s prvÃ½ krÃ¡t a hneÄ sa zaÄ¾Ãºbila do Shella. VyloÅ¾ili sme dve plnÃ© autÃ¡ naloÅ¾enÃ© prÃ¡dlom a vecami na burzu. Potom sa vÅ¡etky vybrali na venÄenie,otoÄili viacerÃ½ch psÃ­kov, ktorÃ­ ich uÅ¾ poznajÃº a veÄ¾mi sa im teÅ¡ili. Pani Barbora sa vÅ¾dy teÅ¡Ã­ milÃ¡Äikovi Felicite a tÃ¡ uÅ¾ vie, Å¾e dostane pochÃºÅ¥ku. ÄŽakujeme vÅ¡etkÃ½m, ktorÃ­ sa na zbierke podieÄ¾ali a teÅ¡Ã­me sa na ÄaÄ¾Å¡iu nÃ¡vÅ¡tevu.', 'NÃ¡vÅ¡teva 8.1.2020', NULL, NULL, NULL, NULL, 'karin, barbara, trudi, navsteva, shell'),
(20, '2020-01-10', '..Äakujeme veÄ¾mi pekne milÃ½m Ä¾uÄom za nÃ¡dielku, p. KollÃ¡r, nÃ¡Å¡ pravidelnÃ½ venÄÃ©r, nÃ¡m objednal Eminent krmivo, zlatÃ¡ pani z Hlohovca 2 mechy granÃºl aj menÅ¡ie pre maÄiÄky a milÃ½ mladÃ½ pÃ¡r tieÅ¾ prispel do zbierky.', 'DarÄekovo 8.1.2020', NULL, NULL, NULL, NULL, 'darcekovo, kollar'),
(21, '2020-01-16', 'Priniesli sme si ju v nedeÄ¾u, zo zaÄiatku bola v totÃ¡lnom strese, aj kvÃ´li tomu, Å¾e je skoro slepÃ¡, ale je paÅ¾ravÃ¡ a hneÄ obsadila aj gauÄ.', 'Koka pozdravuje', NULL, NULL, NULL, NULL, 'koka'),
(22, '2020-01-16', '..Äakujeme vÅ¡etkÃ½m kupujÃºcim za nÃ¡dielku!!!', 'DarÄekovo - Tesco - 16.1.2020 ', NULL, NULL, NULL, NULL, 'darcekovo, darceky, tesco'),
(23, '2020-01-20', 'Toto je tÃ¡ maÄka od VÃ¡s, Äo som si zobral, mala zlomenÃº zadnÃº nohu, no uÅ¾ narÃ¡stla, je zdravÃ¡ a hravÃ¡. Chytila uÅ¾ aj myÅ¡. A eÅ¡te posielam foto Grity. Pozn.: MajiteÄ¾ je skvelÃ½, vzal si starÅ¡iu vlÄiaÄku Gritu a neskÃ´r chorÃº maÄiÄku, naÅ¡li obe u neho krÃ¡sny domov. ÄŽakujeme!', 'Grita a Hlinka', NULL, NULL, NULL, NULL, 'grita, hlinka'),
(24, '2020-01-22', '..Äakujeme veÄ¾mi pekne vÅ¡etkÃ½m darcom!', 'DarÄekovo 22.1.2020', NULL, NULL, NULL, NULL, 'darcekovo, darceky'),
(25, '2020-01-24', 'VÄaka naÅ¡ej spriatelenej organizÃ¡cii sme mohli zakÃºpiÅ¥ tri novÃ© bÃºdy, potrebujeme ich eÅ¡te 12, ale momentÃ¡lne nemÃ¡me na ne prostriedky, starÃ© z OSB dosiek uÅ¾ doslÃºÅ¾ili. Chlapci sa riadne zapotili, kÃ½m ich zloÅ¾ili, bÃºdy sÃº veÄ¾mi Å¥aÅ¾kÃ©, ale kvalitnÃ©. TieÅ¾ z prÃ­spevku boli zakÃºpenÃ© plechovÃ© sudy na uskladnenie krmiva a cestovÃ­n. ÄŽakujeme veÄ¾mi pekne za pomoc!', 'NovÃ© bÃºdy a sudy', NULL, NULL, NULL, NULL, 'budy, buda'),
(26, '2020-01-25', 'Dostali sme krÃ¡sny pozdrav po desiatich rokoch, maliÄkÃ½ bol adoptovanÃ½ ako Å¡teniatko v r. 2008, ktorÃ© si vzali k 10-roÄnej fenke. TÃ¡ zomrela vo veku 16 rokov a po Äase si adoptovali JRT fenku. Alvin-Pauli bol vÅ¾dy vo dvojici so psÃ­kom, mÃ¡ veÄ¾a vÃ½behu a veÄ¾a lÃ¡sky. Teraz je uÅ¾ sÃ­ce viac rokov chorÃ½, ale teÅ¡Ã­ sa zo Å¾ivota a je to nÃ¡Å¡ poklad.', 'Alvin pozdravuje ', NULL, NULL, NULL, NULL, 'alvin, pauli'),
(27, '2020-01-25', 'Pozdravujeme, Danken zacal uÅ¾ od minuleho tÃ½Å¾dÅˆa chodiÅ¥ na cvicak, potom poÅ¡leme aj videa, ako mu to ide. Je z neho krÃ¡sny psÃ­k a rastie a rastie...', 'KrÃ¡savec Danken ', NULL, NULL, NULL, NULL, 'danken'),
(28, '2020-01-25', 'NavÅ¡tÃ­vila nÃ¡s opÃ¤Å¥ pani Sandra s Angelikou, veÄ¾mi milÃ© dÃ¡my, ktorÃ© prÃ­du vÅ¾dy s pomocou. Priniesli veci na burzu a krmivo s konzervami - zakÃºpila pani Sylvia Houba. Veci na burzu vyzbierali pani Margit Sauermann, Cornelia Wappela a Gertrude Scheiber, veÄ¾mi pekne im Äakujeme, poteÅ¡ili nÃ¡s i psÃ­kov. VyvenÄili aj Tarota a DubÃ¡ka, ale bola veÄ¾kÃ¡ zima, tak sa ponÃ¡hÄ¾ali domov. TeÅ¡Ã­me sa na ich ÄaÄ¾Å¡iu sÄ¾ÃºbenÃº nÃ¡vÅ¡tevu!', 'NÃ¡vÅ¡teva 24.1.2020 ', NULL, NULL, NULL, NULL, 'navsteva, sandra, angelika'),
(29, '2020-01-25', 'OpÃ¤Å¥ priÅ¡li skvelÃ­ mladÃ­ Ä¾udia z Hlohovca, tak ako minulÃ½ rok a priniesli krmivo, konzervy a Äistiace prostriedky, Äakujeme veÄ¾mi pekne za milÃº nÃ¡vÅ¡tevu a Å¾e na nÃ¡s nezabÃºdajÃº.', 'Partia z Hlohovca ', NULL, NULL, NULL, NULL, 'hlohovec, hlohovca, navsteva'),
(30, '2020-01-25', 'Touto cestou Äakujeme Å¾iakom ZÅ  Vajnory, ktorÃ­ urobili zbierku pre dva Ãºtulky a zakÃºpili krmivo. Vybrali si aj nÃ¡Å¡ Ãºtulok, veÄ¾mi milo nÃ¡s prekvapili a poteÅ¡ili, skvelÃ© deti a ich uÄitelia!', 'ZÅ  Bratislava - Vajnory ', NULL, NULL, NULL, NULL, 'zs vajnory, ZS Vajnory'),
(31, '2020-01-25', 'Dnes k nÃ¡m priÅ¡iel starÅ¡Ã­ manÅ¾elskÃ½ pÃ¡r z Viedne, sÃº tu na lieÄenÃ­ a priniesli veci pre psÃ­kov a mech krmiva, Äakujeme veÄ¾mi pekne pani Dori. Chceli vidieÅ¥ aj vÅ¡etkÃ½ch psÃ­kov, tak sme ich previedli cez celÃ½ Ãºtulok, milÃ­ Ä¾udia so srdcom pre zvieratkÃ¡.', 'NÃ¡vÅ¡teva 25.1.2020', NULL, NULL, NULL, NULL, 'dori, vieden, wien, navsteva'),
(32, '2020-01-27', 'KrÃ¡sny pozdrav z novÃ©ho domova zasiela Stelinka - nechali sme jej pÃ´vodnÃ© meno, ktorÃº sme si adoptovali dÅˆa 17.1.2020. Je to riadne Å¡idlo, mÃ¡ v sebe neskutoÄne veÄ¾a energie, vÅ¡etci ju veÄ¾mi Ä¾Ãºbime a straÅ¡ne rada sa fotÃ­. Od prvÃ©ho okamÅ¾iku si na nÃ¡s zvykla, sprÃ¡va sa akoby u nÃ¡s od maliÄka vyrastala, vÃ´bec niÄoho sa nebojÃ­, takÃ© malÃ© Å¡idlo na baterky.', 'Stella-Sanna pozdravuje', NULL, NULL, NULL, NULL, 'stella, sanna, stelinka'),
(33, '2020-01-27', 'Zausel a Gojka od nÃ¡s pravidelne posielajÃº krÃ¡sne fotky aj s kamoÅ¡om Cooperom. VodÃ­ sa im veÄ¾mi dobre, sÃº nerozluÄnÃ¡ trojka a paniÄke Melanie robia radosÅ¥.', 'Zausel, Gojka a Cooper', NULL, NULL, NULL, NULL, 'zausel, gojka, cooper, melanie'),
(34, '2020-01-28', 'Fotky hovoria samÃ©, vÅ¡etkÃ½m sa vodÃ­ veÄ¾mi dobre.', 'BaxÃ­k opÃ¤Å¥ ', NULL, NULL, NULL, NULL, 'baxik'),
(35, '2020-01-30', 'Pawo je milÃ¡Äik paniÄky a ochranca, aj takto sa vie ukÃ¡zaÅ¥, vÅ¡etkÃ½ch strÃ¡Å¾i a javÃ­ sa ako zÃ¡chranca. Trojici sa vodÃ­ veÄ¾mi dobre, vÅ¡etci traja sÃº adoptovanÃ­ od nÃ¡s v jednej milej rodine v Nemecku.', 'Pawo, Rocca a Cyrka', NULL, NULL, NULL, NULL, 'Pawo, Rocca, Cyrka'),
(36, '2020-01-30', 'Takto sme sa vyteÅ¡ili:)', 'VenÄenie 26.1.2020 ', NULL, NULL, NULL, NULL, 'vencenie, bodik'),
(37, '2020-01-30', 'OpÃ¤Å¥ Äakujeme zlatej pani Podolanovej za darÄeky, vÅ¾dy prÃ­de s taÅ¡kami.', 'DarÄekovo 30.1.2020 ', NULL, NULL, NULL, NULL, 'darcekovo, darceky, podolanova'),
(38, '2020-01-30', 'Teraz Luna, lebo vnuÄka sa volÃ¡ Lili. NaÅ¡Å¥astie je uÅ¾ v poriadku, mala viac Å¡Å¥astia ako jej sÃºrodenci.', 'Lilly pozdravuje ', NULL, NULL, NULL, NULL, 'lili, luna, lilly'),
(39, '2020-02-02', 'Posielam Vam fotky Grace, je to mily psicek a robi nam radost.', 'Grace pozdravuje ', NULL, NULL, NULL, NULL, 'grace'),
(40, '2020-02-02', 'BÃ¡li sme sa, ako bude vychadzaÅ¥ s nasim Amstafom, s tym je uvolnena, vtedy sa smeje a jaÅ¡Ã­. LudÃ­ sa stale bojÃ­, ale je to kratko, ale snaÅ¾ime sa. ', 'ManÄa pozdravuje', NULL, NULL, NULL, NULL, 'manca, amstaf'),
(41, '2020-02-02', 'Fotky hovoria...', 'Hirika na prechÃ¡dzke ', NULL, NULL, NULL, NULL, 'hirika'),
(44, '2020-02-11', 'StÃ¡le sa jej vodÃ­ veÄ¾mi dobre a neustÃ¡le s jej nerozluÄiteÄ¾nou loptiÄkou..', 'Daryl loptiÄkovÃ¡', NULL, NULL, NULL, NULL, 'daryl'),
(45, '2020-02-11', 'SlepÃ¡ kavalierka sa veÄ¾mi rÃ½chlo prispÃ´sobila a zorientovala v novom domove, mÃ¡ okolo seba kamoÅ¡ov aj susedovÃ½ch, je to zlatÃ­Äko.', 'Donela pozdravuje', NULL, NULL, NULL, NULL, 'donela'),
(46, '2020-02-11', 'Tak veÄ¾a novÃ©ho, mÃ´j pelieÅ¡ok sa mi pÃ¡Äi, ale smela som byÅ¥ v posteli s mojou doÄasnou opatrovateÄ¾kou, kde ÄakÃ¡m na tÃº naj rodinu. MÃ¡m za sebou aj prvÃº vychÃ¡dzku, pre mÅˆa veÄ¾mi zaujÃ­mavÃ¡, preÅ¡la som si okolie a mÃ¡m tu veÄ¾a novÃ½ch kamoÅ¡ov.', 'Paya pozdravuje', NULL, NULL, NULL, NULL, 'paya'),
(47, '2020-02-11', 'Som Å¡ikovnÃ½, najskÃ´r som nechcel vyliezÅ¥ z prepravky, aÅ¾ keÄ paniÄka odiÅ¡la, vybehol som a urobil potrebu. KeÄ sa vrÃ¡tila,samozrejme som sedel nevinne v mojej prepravke,keÄ odbehla,vyskÃºÅ¡al som posteÄ¾,po jej nÃ¡vrate spÃ¤Å¥ do prepravky. NajskÃ´r bol plÃ¡n,Å¾e zostanem v oddelenej miestnosti prvÃº noc,ale to sa mi nepÃ¡Äilo,chcel som Ã­sÅ¥ k mojim novÃ½m dÃ¡mam,tak som Å¡tekal o duÅ¡u a podarilo sa,uÅ¾ som pri nich. Hovorili o mne,Å¾e som plachÃ½,ale ukÃ¡zal som sa ako riadne Å¡idlo a nechal som sa aj paniÄke pohladkaÅ¥. Aby aj pÃ¡n nebol smutnÃ½, tak som si k nemu sadol na gauÄ. :D', 'Muki pozdravuje ', NULL, NULL, NULL, NULL, 'muki'),
(48, '2020-02-12', 'Zvykol si veÄ¾mi rÃ½chlo a uÅ¾ oddychuje s kamoÅ¡kou, bez nej ani krok.', 'Benty pozdravuje ', NULL, NULL, NULL, NULL, 'benty'),
(49, '2020-02-12', 'Jej prerod trval veÄ¾mi dlho, neverila nikomu, najskÃ´r u nÃ¡s v doÄaske, koneÄne sa dala chytiÅ¥, pohladkaÅ¥ a zaÄala dÃ´verovaÅ¥ Ä¾uÄom. Svoj domov naÅ¡la v Nemecku. <3', 'Radka pozdravuje ', NULL, NULL, NULL, NULL, 'radka'),
(50, '2020-02-14', 'OzÃ½vame sa VÃ¡m opÃ¤Å¥ z Oravy. Dnes trochu so smutnejÅ¡ou sprÃ¡vou. Boli sme u pÃ¡na veterinÃ¡ra na ÄalÅ¡om vyÅ¡etrenÃ­, aby nÃ¡m oznÃ¡mil, Å¾e naÅ¡a lÃ¡skonka BenuÅ¡ko mÃ¡ veÄ¾mi chorÃ© srdieÄkoâ¤. V poslednom Äase bol veÄ¾mi dÃ½chaviÄnÃ½ a miestami sa akoby dusil. NuÅ¾ potvrdilo sa to, Å¾e mÃ¡ zvÃ¤ÄÅ¡enÃ© srdieÄko a â€nedomykavÃ©â€ chlopne. Tak budeme aÅ¾ do konca jeho Å¾ivota (ako hrozne to znie, my pevne verÃ­me, Å¾e je to eÅ¡te veÄ¾mi Äaleko...) na liekoch. Posmutneli sme teda poriadne, ale sme rozhodnutÃ­ bojovaÅ¥ aj s tÃ½mi tabletkami. Mal eÅ¡te podozrenie na cukrovku, ale to sa naÅ¡Å¥astie nepotvrdilo (zrejme v ten deÅˆ mÃ¡lo pil, aj keÄ miÅ¡tiÄku mÃ¡ rovno pri pelieÅ¡ku...). MusÃ­me na neho dÃ¡vaÅ¥ vÃ¤ÄÅ¡Ã­ pozor. Nesmie sa nijako namÃ¡haÅ¥.Aj napriek tomu vÅ¡etkÃ©mu Å¥aÅ¾kÃ©mu je toto naÅ¡e malÃ© havinÄiatko naÅ¡ou veÄ¾kou radosÅ¥ouâ¤. DÃ¡va nÃ¡m toÄ¾ko lÃ¡sky, rÃ¡d sa tuÄ¾kÃ¡ a najradÅ¡ej mÃ¡ nÃ¡Å¡ho otca, vÅ¾dy je smutnÃ½, keÄ odÃ­de z domu Äo i len na krÃ¡tku chvÃ­Ä¾u. TakÃ© slzy ako hrachy... Teraz tu vedÄ¾a mÅˆa spokojne odfukuje aj s RexiÃ­kom akoby sa ani nechumelilo. RexiÃ­k mÃ¡ k nemu takÃ½ ochranÃ¡rsky postoj, Å¾e ho pustil k sebe do pelieÅ¡ka a odfukujÃº si v Åˆom spolu. NuÅ¾ asi toÄ¾ko od nÃ¡s. Nechceli sme VÃ¡s nejako zarmÃºtiÅ¥, len sme VÃ¡s chceli informovaÅ¥, ako sa nÃ¡m darÃ­. VerÃ­m, Å¾e si nÃ¡jdeme nejakÃ½ ten reÅ¾im, aby sme sa oÅˆ Äo najlepÅ¡ie postarali. Sme radi, Å¾e ho mÃ¡me.', 'Benny pozdravuje ', NULL, NULL, NULL, NULL, 'benny'),
(51, '2020-02-14', 'DobrÃ½ deÅˆ, myslÃ­me, Å¾e je spokojnÃ½. Cely deÅˆ behÃ¡ vonku, keÄÅ¾e susedovci majÃº maÄky...pozeranie do susedov cez plot mu zaberÃ¡ veÄ¾kÃº ÄasÅ¥ dÅˆa. :D Chodievame von, spÃ¡va dnu. Na zaÄiatku dosÅ¥ Å¡tekal do druhÃ½ch psov, ale mÃ¡m pocit, Å¾e uÅ¾ sa skÃ´r chce hraÅ¥, respektÃ­ve zaÄÃ­na sa na nich tak milo pozeraÅ¥, Äo je fajn. Tak verÃ­me, Å¾e bude u nÃ¡s spokojnÃ½. A susedovci sa naÅˆho chodia pozeraÅ¥, takze vÃ½stavnÃ½ pes ten nÃ¡Å¡ Midal. PomÃ¡ha mi v podkrovÃ­, on je vÅ¡ade prvÃ½.', 'Midal pozdravuje', NULL, NULL, NULL, NULL, 'midal'),
(52, '2020-02-18', 'Toffinka je uÅ¾ krÃ¡sna psia sleÄna. <3 Je to naÅ¡a â€žterapeutkaâ€œ â€“ pohybom a smiechom...a skvelÃ¡ kamoÅ¡ka. ', 'Toffie pozdravuje', NULL, NULL, NULL, NULL, 'toffie, toffinka'),
(53, '2020-02-20', 'Teraz sa volÃ¡ OÄ¾ga, mÃ¡ sa veÄ¾mi dobre, je to mohutnÃ¡ krÃ¡savica :)', 'Abigail pozdravuje', NULL, NULL, NULL, NULL, 'Abigail '),
(54, '2020-02-22', '..Äakujeme!', 'DarÄekovo', NULL, NULL, NULL, NULL, 'darcekovo, darceky'),
(55, '2020-02-22', 'Pozdravuje Katynka temer po 5 rokoch. Je to Å¡ibalka s pÃ¡r kilami navyÅ¡e, hlavinku mÃ¡ belÅ¡iu kaÅ¾dÃ½m dÅˆom viac, s milÃ½m vÃ½razom na tvÃ¡riÄke, ale poÅ¡tÃ¡ra, Äi elektrikÃ¡ra zaÅ¾enie ako krvilaÄnÃ¡ Å¡elma ðŸ˜‚. Je to postrach ulice, Katka nÃ¡s bola aj osobne pozrieÅ¥, ale drÅ¾ala sa paniÄky ako klieÅ¡Å¥.', 'Katka pozdravuje', NULL, NULL, NULL, NULL, 'katka, katynka'),
(56, '2020-02-23', 'Zasielam VÃ¡m foto nÃ¡Å¡ho Alfika, je u nÃ¡s len druhÃ½ deÅˆ, ale uÅ¾ je Älenom naÅ¡ej rodiny a vÅ¡etci ho lubime!', 'AlfrÃ©d pozdravuje ', NULL, NULL, NULL, NULL, 'alfred, alfik'),
(57, '2020-02-24', 'KrÃ¡sny pozdrav z novÃ©ho domova zasiela opÃ¤Å¥ Stelinka.', 'Stella-Sanna pozdravuje ', NULL, NULL, NULL, NULL, 'Stelinka, Stella, Sanna'),
(58, '2020-02-24', 'VodÃ­ sa mu veÄ¾mi dobre, v novej rodine je spokojnÃ½, hÃ½ÄkanÃ½ a hneÄ si vÅ¡etkÃ½ch zÃ­skal.', 'Benny posiela pozdrav ', NULL, NULL, NULL, NULL, 'benny'),
(59, '2020-02-26', 'UÅ¾ sme ani nedÃºfali, ale stal sa zÃ¡zrak a Holm mÃ¡ svoju rodinu. ÄŽakujeme milej rodine, Å¾e nevÃ¡hala vziaÅ¥ si starÅ¡ieho psÃ­ka a dala mu Å¡ancu na pokojnÃº starobu v kruhu rodiny. VeÄ¾mi sa vÅ¡etci teÅ¡Ã­me a prajeme mu veÄ¾a krÃ¡snych rokov s tÃ½mito ÃºÅ¾asnÃ½mi Ä¾uÄmi. UÅ¾ tu mÃ¡me aj prvÃº sprÃ¡vu: Chcem VÃ¡s len poinformovaÅ¥, Å¾e adaptÃ¡cia HolmÃ­ka v novom domove prebieha celkom ÃºspeÅ¡ne. ZatiaÄ¾ mÃ¡lo papÃ¡, no inak vyzerÃ¡ spokojne. Mapuje si svoje novÃ© teritÃ³rium a oboznamuje sa s prostredÃ­m, v ktorom sa ocitol.', 'ZÃ¡zrak menom Holm', NULL, NULL, NULL, NULL, 'holm, holmik');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `reports_image`
--

CREATE TABLE `reports_image` (
  `reports_image_id` int(11) NOT NULL,
  `reports_image` text COLLATE utf8_bin NOT NULL,
  `fk_reports_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `reports_image`
--

INSERT INTO `reports_image` (`reports_image_id`, `reports_image`, `fk_reports_id`) VALUES
(4, 'REPORTS_MAIN.5e24740fb49c87.94514781.jpg', 4),
(5, 'REPORTS_MAIN.5e24745718f6e6.27068166.jpg', 5),
(7, 'REPORTS_MAIN.5e24752a32a575.25763574.jpg', 7),
(8, 'REPORTS_MAIN.5e24a8ca5c08f5.70640376.jpg', 8),
(9, 'REPORTS_MAIN.5e24ae5acac636.02847285.jpg', 9),
(10, 'REPORTS_MAIN.5e25f19c7f5f85.78569107.jpg', 10),
(11, 'REPORTS_MAIN.5e25f23e8aedd9.93623301.jpg', 11),
(12, 'REPORTS_MAIN.5e25f2cea38f89.29116003.jpg', 12),
(13, 'REPORTS_MAIN.5e260e765faa42.69374987.jpg', 13),
(14, 'REPORTS_MAIN.5e260efc901a63.42536564.jpg', 14),
(15, 'REPORTS_MAIN.5e260f927cc7e9.62966617.jpg', 15),
(16, 'REPORTS_MAIN.5e261030626e79.45006872.jpg', 16),
(17, 'REPORTS_MAIN.5e26125f3c56a2.17064968.jpg', 17),
(18, 'REPORTS_MAIN.5e26149412e4d0.46639966.jpg', 18),
(19, 'REPORTS_MAIN.5e26162c998848.72692103.jpg', 19),
(20, 'REPORTS_MAIN.5e261806c2dc40.94140571.jpg', 20),
(21, 'REPORTS_MAIN.5e26191ac924f0.72490830.jpg', 21),
(22, 'REPORTS_MAIN.5e261979788039.25699996.jpg', 22),
(23, 'REPORTS_MAIN.5e261b27ed90f2.68064269.jpg', 23),
(24, 'REPORTS_MAIN.5e2947ccef6956.83973874.jpg', 24),
(25, 'REPORTS_MAIN.5e2ae2ce89fb74.41281894.jpg', 25),
(26, 'REPORTS_MAIN.5e2c44e5da5465.87400381.jpg', 26),
(27, 'REPORTS_MAIN.5e2c453c8987d7.71678948.jpg', 27),
(28, 'REPORTS_MAIN.5e3aa009746a81.06883388.jpg', 28),
(29, 'REPORTS_MAIN.5e3aa08bec8782.94656492.jpg', 29),
(30, 'REPORTS_MAIN.5e3aa19690e9f0.92156151.jpg', 30),
(31, 'REPORTS_MAIN.5e3aa2367b2e60.07661795.jpg', 31),
(32, 'REPORTS_MAIN.5e3aa2c1149990.89237926.jpg', 32),
(33, 'REPORTS_MAIN.5e3aa34702d502.86505550.jpg', 33),
(34, 'REPORTS_MAIN.5e3aa3bb1aeb30.09813567.jpg', 34),
(35, 'REPORTS_MAIN.5e3aa4204f73b8.17505332.jpg', 35),
(36, 'REPORTS_MAIN.5e3aa469232c99.74944918.jpg', 36),
(37, 'REPORTS_MAIN.5e3aa4ae98e859.45093011.jpg', 37),
(38, 'REPORTS_MAIN.5e3aa50659e348.21724177.jpg', 38),
(39, 'REPORTS_MAIN.5e3aa562395a21.54145687.jpg', 39),
(40, 'REPORTS_MAIN.5e3aa5df4e8ce0.58137699.jpg', 40),
(41, 'REPORTS_MAIN.5e3aa61655d150.18519706.jpg', 41),
(44, 'REPORTS_MAIN.5e51367d0c8315.58236643.jpg', 44),
(45, 'REPORTS_MAIN.5e5137d057e224.68545201.jpg', 45),
(46, 'REPORTS_MAIN.5e54367c563a10.65693448.jpg', 46),
(47, 'REPORTS_MAIN.5e543723494900.07067971.jpg', 47),
(48, 'REPORTS_MAIN.5e5437799af528.67528680.jpg', 48),
(49, 'REPORTS_MAIN.5e5437a8ad4f61.49382057.jpg', 49),
(50, 'REPORTS_MAIN.5e5437dd0963f5.30322173.jpg', 50),
(51, 'REPORTS_MAIN.5e543829b27c84.58721417.jpg', 51),
(52, 'REPORTS_MAIN.5e5438a95dbd16.05812861.jpg', 52),
(53, 'REPORTS_MAIN.5e543903158359.96473333.jpg', 53),
(54, 'REPORTS_MAIN.5e5439d406cea4.98352973.jpg', 54),
(55, 'REPORTS_MAIN.5e543a728771e3.06014010.jpg', 55),
(56, 'REPORTS_MAIN.5e543bd7ae5a64.98636941.jpg', 56),
(57, 'REPORTS_MAIN.5e543c90297322.81092716.jpg', 57),
(58, 'REPORTS_MAIN.5e543d246cd531.91970359.jpg', 58),
(59, 'REPORTS_MAIN.5e57c91f237726.47306117.jpg', 59);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `reports_image_more`
--

CREATE TABLE `reports_image_more` (
  `reports_image_more_id` int(11) NOT NULL,
  `reports_image_more` text NOT NULL,
  `fk_reports_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- A tábla adatainak kiíratása `reports_image_more`
--

INSERT INTO `reports_image_more` (`reports_image_more_id`, `reports_image_more`, `fk_reports_id`) VALUES
(2, 'REPORTS.5e247416873998.94632082.jpg', 4),
(4, 'REPORTS.5e2475482b33e6.61563731.jpg', 7),
(5, 'REPORTS.5e2475482be3e5.94173307.jpg', 7),
(6, 'REPORTS.5e2475482c6107.75662690.jpg', 7),
(7, 'REPORTS.5e2475482ce161.01910242.jpg', 7),
(8, 'REPORTS.5e2475482e1b95.79371804.jpg', 7),
(9, 'REPORTS.5e24a8e9811739.41081933.jpg', 8),
(10, 'REPORTS.5e24a8e981d0c4.02506573.jpg', 8),
(11, 'REPORTS.5e24a8e9826639.44821861.jpg', 8),
(12, 'REPORTS.5e24a8e9832057.49109314.jpg', 8),
(13, 'REPORTS.5e24ae68c0cd33.41989697.jpg', 9),
(14, 'REPORTS.5e24ae68c1aa20.37004209.jpg', 9),
(15, 'REPORTS.5e25f1c065d703.96811253.jpg', 10),
(16, 'REPORTS.5e25f1c0672ff9.04292930.jpg', 10),
(17, 'REPORTS.5e25f1c067c339.55148013.jpg', 10),
(18, 'REPORTS.5e25f1c0684d54.96680452.jpg', 10),
(19, 'REPORTS.5e25f1c0691f04.30012287.jpg', 10),
(20, 'REPORTS.5e25f1c0699f20.82996456.jpg', 10),
(21, 'REPORTS.5e25f1c06a2249.85578973.jpg', 10),
(22, 'REPORTS.5e25f258d92bc3.62982604.jpg', 11),
(23, 'REPORTS.5e25f258d9f331.54149161.jpg', 11),
(24, 'REPORTS.5e25f258da6a25.73504266.jpg', 11),
(25, 'REPORTS.5e25f258daf9b2.97602937.jpg', 11),
(26, 'REPORTS.5e25f258dc1402.81899875.jpg', 11),
(27, 'REPORTS.5e25f2e24b3012.66610457.jpg', 12),
(28, 'REPORTS.5e25f2e24c3b75.35588491.jpg', 12),
(29, 'REPORTS.5e25f2e24cfd34.82266365.jpg', 12),
(30, 'REPORTS.5e25f2e24dba86.52037145.jpg', 12),
(31, 'REPORTS.5e260eb48bed57.21744420.jpg', 13),
(32, 'REPORTS.5e260eb48c9fe0.93291656.jpg', 13),
(33, 'REPORTS.5e260eb48d0d16.90988327.jpg', 13),
(34, 'REPORTS.5e260eb48d7550.64325742.jpg', 13),
(35, 'REPORTS.5e260eb48dea78.99337240.jpg', 13),
(36, 'REPORTS.5e260eb48e57e7.66382327.jpg', 13),
(37, 'REPORTS.5e260eb48ec810.43575661.jpg', 13),
(38, 'REPORTS.5e260eb48f3c72.15558664.jpg', 13),
(39, 'REPORTS.5e260eb48fa7a0.72520747.jpg', 13),
(40, 'REPORTS.5e260eb49018b9.83316138.jpg', 13),
(41, 'REPORTS.5e260eb4907a30.92782041.jpg', 13),
(42, 'REPORTS.5e260eb490c817.42707363.jpg', 13),
(43, 'REPORTS.5e260f07e0b479.93482656.jpg', 14),
(44, 'REPORTS.5e260f07e15c25.28969381.jpg', 14),
(45, 'REPORTS.5e260fa8a9b985.32267972.jpg', 15),
(46, 'REPORTS.5e260fa8aaed36.17095795.jpg', 15),
(47, 'REPORTS.5e260fa8abc870.08540917.jpg', 15),
(48, 'REPORTS.5e2610dd8753a7.90801597.jpg', 16),
(49, 'REPORTS.5e2610dd88a089.23853932.jpg', 16),
(50, 'REPORTS.5e2610dd895c89.57638292.jpg', 16),
(51, 'REPORTS.5e2610dd8a14e4.72931722.jpg', 16),
(52, 'REPORTS.5e2610dd8afa78.58315534.jpg', 16),
(53, 'REPORTS.5e2610dd8bca59.67069094.jpg', 16),
(54, 'REPORTS.5e2610dd8c95e4.43651167.jpg', 16),
(55, 'REPORTS.5e2610dd8d66b5.39350960.jpg', 16),
(56, 'REPORTS.5e2610dd8e0e49.51135410.jpg', 16),
(57, 'REPORTS.5e2610dd8ed668.25479445.jpg', 16),
(58, 'REPORTS.5e2610dd8f9ba1.65558090.jpg', 16),
(59, 'REPORTS.5e2610dd9033d9.81017485.jpg', 16),
(60, 'REPORTS.5e2610dd90c076.90397312.jpg', 16),
(61, 'REPORTS.5e261293c8dc19.76829086.jpg', 17),
(62, 'REPORTS.5e261293c9aac8.23670888.jpg', 17),
(63, 'REPORTS.5e261293ca35e1.55046793.jpg', 17),
(64, 'REPORTS.5e261293cacb61.43878172.jpg', 17),
(65, 'REPORTS.5e261293cb5aa9.81853792.jpg', 17),
(66, 'REPORTS.5e261293cbec61.80787052.jpg', 17),
(67, 'REPORTS.5e2614b0c4eb06.88299059.jpg', 18),
(68, 'REPORTS.5e2614b0c59058.80217458.jpg', 18),
(69, 'REPORTS.5e2614b0c68883.74765528.jpg', 18),
(70, 'REPORTS.5e2614b0c70810.89699824.jpg', 18),
(71, 'REPORTS.5e2614b0c78768.99055612.jpg', 18),
(72, 'REPORTS.5e261658afe171.88993799.jpg', 19),
(73, 'REPORTS.5e261658b09938.45088934.jpg', 19),
(74, 'REPORTS.5e261658b12cc4.02075876.jpg', 19),
(75, 'REPORTS.5e261658b1c2e2.64368964.jpg', 19),
(76, 'REPORTS.5e261658b253c7.24359347.jpg', 19),
(77, 'REPORTS.5e261658b2e668.86131187.jpg', 19),
(78, 'REPORTS.5e261658b37416.69261949.jpg', 19),
(79, 'REPORTS.5e261658b48f89.45247828.jpg', 19),
(80, 'REPORTS.5e261832ed7b74.34750281.jpg', 20),
(81, 'REPORTS.5e261832ee51b9.50383398.jpg', 20),
(82, 'REPORTS.5e261832eeedd0.61323734.jpg', 20),
(83, 'REPORTS.5e261832ef7be2.09283293.jpg', 20),
(84, 'REPORTS.5e261832f005c4.30965616.jpg', 20),
(85, 'REPORTS.5e261832f08f13.79081685.jpg', 20),
(86, 'REPORTS.5e261832f117f8.73724544.jpg', 20),
(87, 'REPORTS.5e261832f1a614.16447735.jpg', 20),
(88, 'REPORTS.5e261832f288d6.31590923.jpg', 20),
(89, 'REPORTS.5e261833000ca7.59851793.jpg', 20),
(90, 'REPORTS.5e26192e2fe223.90462568.jpg', 21),
(91, 'REPORTS.5e26192e306b21.94638706.jpg', 21),
(92, 'REPORTS.5e26192e30bf54.47715911.jpg', 21),
(93, 'REPORTS.5e26192e311324.95916388.jpg', 21),
(94, 'REPORTS.5e261990f17fc3.97927812.jpg', 22),
(95, 'REPORTS.5e261990f21123.44001321.jpg', 22),
(96, 'REPORTS.5e261b3b831389.69607887.jpg', 23),
(97, 'REPORTS.5e261b3b841650.24218033.jpg', 23),
(98, 'REPORTS.5e261b3b84f7b6.37732900.jpg', 23),
(99, 'REPORTS.5e2947e029e3f4.73323160.jpg', 24),
(100, 'REPORTS.5e2947e02b79e9.27305403.jpg', 24),
(101, 'REPORTS.5e2947e02c48b2.33754729.jpg', 24),
(102, 'REPORTS.5e2947e02d6e33.54209579.jpg', 24),
(103, 'REPORTS.5e2ae304661839.74104425.jpg', 25),
(104, 'REPORTS.5e2ae30466f0f0.26400243.jpg', 25),
(105, 'REPORTS.5e2ae304675046.35881570.jpg', 25),
(106, 'REPORTS.5e2ae30467b6a8.26911775.jpg', 25),
(107, 'REPORTS.5e2ae304681c57.18243477.jpg', 25),
(108, 'REPORTS.5e2ae304688647.64658249.jpg', 25),
(109, 'REPORTS.5e2ae30468e827.42713466.jpg', 25),
(110, 'REPORTS.5e2ae304694a24.10405572.jpg', 25),
(111, 'REPORTS.5e2ae30469b827.07932545.jpg', 25),
(112, 'REPORTS.5e2ae3046a2587.72611648.jpg', 25),
(113, 'REPORTS.5e2ae3046a8f33.94592722.jpg', 25),
(114, 'REPORTS.5e2c44ee8e1660.04336058.jpg', 26),
(115, 'REPORTS.5e2c44ee8f4e18.89596493.jpg', 26),
(116, 'REPORTS.5e2c44ee906df6.91569430.jpg', 26),
(117, 'REPORTS.5e2c454331a2e9.93151067.jpg', 27),
(118, 'REPORTS.5e2c45433273f5.39966259.jpg', 27),
(119, 'REPORTS.5e3aa02e151589.67619736.jpg', 28),
(120, 'REPORTS.5e3aa02e1920e0.65484231.jpg', 28),
(121, 'REPORTS.5e3aa02e1d54b6.76646998.jpg', 28),
(122, 'REPORTS.5e3aa02e1dd120.30255536.jpg', 28),
(123, 'REPORTS.5e3aa02e1e3990.72711029.jpg', 28),
(124, 'REPORTS.5e3aa02e1ea691.21197309.jpg', 28),
(125, 'REPORTS.5e3aa02e1f1245.49897830.jpg', 28),
(126, 'REPORTS.5e3aa02e1f7d26.82338323.jpg', 28),
(127, 'REPORTS.5e3aa02e1fdc79.20319440.jpg', 28),
(128, 'REPORTS.5e3aa1ae100672.41199570.jpg', 30),
(129, 'REPORTS.5e3aa1ae1093b5.48623129.jpg', 30),
(130, 'REPORTS.5e3aa1ae10e3a3.56600051.jpg', 30),
(131, 'REPORTS.5e3aa23a723779.44410148.jpg', 31),
(132, 'REPORTS.5e3aa2e1506e78.52179906.jpg', 32),
(133, 'REPORTS.5e3aa2e150dc23.03305012.jpg', 32),
(134, 'REPORTS.5e3aa2e154a9e8.21399613.jpg', 32),
(135, 'REPORTS.5e3aa2e1554d31.53677688.jpg', 32),
(136, 'REPORTS.5e3aa2e155cde8.17384337.jpg', 32),
(137, 'REPORTS.5e3aa2e1564f77.47867553.jpg', 32),
(138, 'REPORTS.5e3aa2e156d119.17164091.jpg', 32),
(139, 'REPORTS.5e3aa2e1575648.95497993.jpg', 32),
(140, 'REPORTS.5e3aa3737ae833.54486466.jpg', 33),
(141, 'REPORTS.5e3aa3737ba6b1.02704450.jpg', 33),
(142, 'REPORTS.5e3aa3737c40d9.59408486.jpg', 33),
(143, 'REPORTS.5e3aa3737ccdb5.24119461.jpg', 33),
(144, 'REPORTS.5e3aa3737d6772.27877640.jpg', 33),
(145, 'REPORTS.5e3aa3737df987.04952496.jpg', 33),
(146, 'REPORTS.5e3aa3737e8bf6.87839728.jpg', 33),
(147, 'REPORTS.5e3aa3737f1c54.99427701.jpg', 33),
(148, 'REPORTS.5e3aa3cd9358a1.83544072.jpg', 34),
(149, 'REPORTS.5e3aa3cd9422c4.96063796.jpg', 34),
(150, 'REPORTS.5e3aa3cd950df0.65337093.jpg', 34),
(151, 'REPORTS.5e3aa3cd95a0a8.38959307.jpg', 34),
(152, 'REPORTS.5e3aa3cd962a84.21651800.jpg', 34),
(153, 'REPORTS.5e3aa436474503.79458178.jpg', 35),
(154, 'REPORTS.5e3aa436480199.13580634.jpg', 35),
(155, 'REPORTS.5e3aa436485003.95773057.jpg', 35),
(156, 'REPORTS.5e3aa436489cf4.18922662.jpg', 35),
(157, 'REPORTS.5e3aa4774dadd9.18737802.jpg', 36),
(158, 'REPORTS.5e3aa4774e49d6.83326093.jpg', 36),
(159, 'REPORTS.5e3aa4774ec5e9.99191026.jpg', 36),
(160, 'REPORTS.5e3aa4b3381fa5.24768020.jpg', 37),
(161, 'REPORTS.5e3aa512c27190.60397644.jpg', 38),
(162, 'REPORTS.5e3aa512c31629.49492492.jpg', 38),
(163, 'REPORTS.5e3aa512c3ac14.85055073.jpg', 38),
(164, 'REPORTS.5e3aa569069ca0.06438816.jpg', 39),
(165, 'REPORTS.5e3aa569075126.23895425.jpg', 39),
(166, 'REPORTS.5e3aa5e7c5ebb1.24161412.jpg', 40),
(167, 'REPORTS.5e3aa5e7c69863.45071910.jpg', 40),
(168, 'REPORTS.5e3aa620ad30d5.80099799.jpg', 41),
(169, 'REPORTS.5e3aa620ae3528.67580466.jpg', 41),
(177, 'REPORTS.5e51368e36f3d6.55136660.jpg', 44),
(178, 'REPORTS.5e51368e384294.23628010.jpg', 44),
(179, 'REPORTS.5e51368e38e7b2.76520650.jpg', 44),
(180, 'REPORTS.5e51368e397c22.94350031.jpg', 44),
(181, 'REPORTS.5e5137dddfa576.43293253.jpg', 45),
(182, 'REPORTS.5e5137dde036b4.66194499.jpg', 45),
(183, 'REPORTS.5e5137dde09464.87356992.jpg', 45),
(184, 'REPORTS.5e54369a7bf4e9.40891852.jpg', 46),
(185, 'REPORTS.5e54369a7ccb19.59797665.jpg', 46),
(186, 'REPORTS.5e54369a7d4211.20929572.jpg', 46),
(187, 'REPORTS.5e54369a7db3c4.56820301.jpg', 46),
(188, 'REPORTS.5e54369a7e23a4.37987679.jpg', 46),
(189, 'REPORTS.5e54374c083463.50954365.jpg', 47),
(190, 'REPORTS.5e54374c08dbb3.75982555.jpg', 47),
(191, 'REPORTS.5e54374c094715.18334817.jpg', 47),
(192, 'REPORTS.5e54374c09a6c2.76179833.jpg', 47),
(193, 'REPORTS.5e54374c09ffb5.86668297.jpg', 47),
(194, 'REPORTS.5e54374c0a5f88.62908470.jpg', 47),
(195, 'REPORTS.5e54374c0aba55.52216463.jpg', 47),
(196, 'REPORTS.5e54374c0b2996.25436464.jpg', 47),
(197, 'REPORTS.5e54374c0b8674.87642862.jpg', 47),
(198, 'REPORTS.5e543782850682.36592607.jpg', 48),
(199, 'REPORTS.5e543782858297.52151538.jpg', 48),
(200, 'REPORTS.5e5437b4b864d8.51107993.jpg', 49),
(201, 'REPORTS.5e5437b4b8ff75.84770465.jpg', 49),
(202, 'REPORTS.5e5437e7c98f70.49503911.jpg', 50),
(203, 'REPORTS.5e5437e7ca2945.57212107.jpg', 50),
(204, 'REPORTS.5e54383a3a6819.56088146.jpg', 51),
(205, 'REPORTS.5e54383a3b5550.92064454.jpg', 51),
(206, 'REPORTS.5e54383a3c27e6.80094082.jpg', 51),
(207, 'REPORTS.5e54383a3fbec7.83044986.jpg', 51),
(208, 'REPORTS.5e5438ae0667c7.63904922.jpg', 52),
(209, 'REPORTS.5e543916873e83.08991281.jpg', 53),
(210, 'REPORTS.5e543916889a29.22954987.jpg', 53),
(211, 'REPORTS.5e543916898264.55013742.jpg', 53),
(212, 'REPORTS.5e5439168a0888.44502481.jpg', 53),
(213, 'REPORTS.5e5439168a8b10.84791744.jpg', 53),
(214, 'REPORTS.5e5439dc1e3c26.24169298.jpg', 54),
(215, 'REPORTS.5e5439dc1ed7d3.18665907.jpg', 54),
(216, 'REPORTS.5e543a7d5ddb50.70501534.jpg', 55),
(217, 'REPORTS.5e543a7d5e5314.09700695.jpg', 55),
(218, 'REPORTS.5e543a7d5eb528.10766348.jpg', 55),
(219, 'REPORTS.5e543c060409a8.23960863.jpg', 56),
(220, 'REPORTS.5e543c0604bb65.43196691.jpg', 56),
(221, 'REPORTS.5e543c06052385.11822111.jpg', 56),
(222, 'REPORTS.5e543c06058dd4.93796730.jpg', 56),
(223, 'REPORTS.5e543c0605f7b3.58434850.jpg', 56),
(224, 'REPORTS.5e543c06066043.89540903.jpg', 56),
(225, 'REPORTS.5e543c0606cac4.00904340.jpg', 56),
(226, 'REPORTS.5e543c06073470.36939996.jpg', 56),
(227, 'REPORTS.5e543c0607a326.23908139.jpg', 56),
(228, 'REPORTS.5e543c06086473.05415044.jpg', 56),
(229, 'REPORTS.5e543c06091518.88389842.jpg', 56),
(230, 'REPORTS.5e543caf4cc4b5.47454742.jpg', 57),
(231, 'REPORTS.5e543caf4d49b7.70070681.jpg', 57),
(232, 'REPORTS.5e543caf4db9b5.49856649.jpg', 57),
(233, 'REPORTS.5e543caf4e4298.29924319.jpg', 57),
(234, 'REPORTS.5e543caf4ee386.22706748.jpg', 57),
(235, 'REPORTS.5e543caf4f5315.33736463.jpg', 57),
(236, 'REPORTS.5e543caf4fd802.31357744.jpg', 57),
(237, 'REPORTS.5e543d39214224.22675032.jpg', 58),
(238, 'REPORTS.5e543d39220023.11459369.jpg', 58),
(239, 'REPORTS.5e543d39229337.61253398.jpg', 58),
(240, 'REPORTS.5e543d39231fd7.24322067.jpg', 58),
(241, 'REPORTS.5e57c928e3d250.45844196.jpg', 59),
(242, 'REPORTS.5e57c928e53a95.38756012.jpg', 59),
(243, 'REPORTS.5e57c928e61536.37230130.jpg', 59);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `running_text`
--

CREATE TABLE `running_text` (
  `text_id` int(11) NOT NULL,
  `text_content_sk` text COLLATE utf8_bin NOT NULL,
  `text_content_en` text COLLATE utf8_bin,
  `text_content_de` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `running_text`
--

INSERT INTO `running_text` (`text_id`, `text_content_sk`, `text_content_en`, `text_content_de`) VALUES
(1, 'running text sk', 'running text en', 'running text de');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `sponsors`
--

CREATE TABLE `sponsors` (
  `sponsors_id` int(5) NOT NULL,
  `sponsors_address` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `sponsors_email` text COLLATE utf8_bin NOT NULL,
  `sponsors_name` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `sponsors`
--

INSERT INTO `sponsors` (`sponsors_id`, `sponsors_address`, `sponsors_email`, `sponsors_name`) VALUES
(3, 'NÃ¡m. SNP 1475 / 3, 92145 PieÅ¡Å¥any', 'http://www.piestany.sk/', 'Mesto PieÅ¡Å¥any'),
(8, 'N. Teslu 6711/25, PieÅ¡Å¥any', 'http://www.itesco.sk/', 'TESCO - hypermarket PieÅ¡Å¥any'),
(9, 'BratislavskÃ¡ 78, 921 41 PieÅ¡Å¥any', 'http://www.nexa.eu/', 'NEXA'),
(10, 'RostovskÃ¡ 22, 831 06 Bratislava', 'http://www.petcenter.sk/', 'PETCENTER - Rozumieme reÄi zvierat'),
(11, 'RakÃºsko', 'https://hundstruppe.jimdofree.com/', 'Hund Sucht Sofa'),
(12, 'FG Vet s.r.o., ZavarskÃ¡ 11, 917 01 Trnava', 'http://www.svktt.sk/', 'SÃºkromnÃ¡ veterinÃ¡rna klinika Trnava'),
(13, 'Å tefÃ¡nikovÃ¡ 105, 92101 PieÅ¡Å¥any', 'https://www.facebook.com/petsalonpiestany/', 'PET SALON Ivana MateÄnÃ¡'),
(15, 'KrÃ­Å¾na 10, Piestany', 'https://www.facebook.com/Sal%C3%B3n-pre-psov-SNOOPY-142425775902052/', 'SNOOPY salÃ³n pre psov, strihanie, kÃºpanie'),
(19, 'DunajskÃ¡ 4, Bratislava', 'https://www.zamenej.sk/', 'ZaMenej.sk'),
(21, 'PriemyselnÃ¡ 5031/18, PieÅ¡Å¥any', 'http://www.ekom.sk/', 'Ekom'),
(22, 'AkademickÃ¡ 3, Nitra', 'http://www.veterinarnaklinikanitra.sk/', 'VeterinÃ¡rna klinika VET-CENTRUM'),
(23, 'TeplickÃ¡ 63 (City Passage), PieÅ¡Å¥any', 'https://www.piestanskydennik.sk/', 'PieÅ¡Å¥anskÃ½ tÃ½Å¾deÅˆ'),
(24, 'Å kolskÃ¡ ul. (bÃ½valÃ¡ PieÅ¡Å¥anka), PieÅ¡Å¥any', 'https://www.abpiestany.sk/', 'AB PieÅ¡Å¥any'),
(25, 'LipovÃ¡ 70/10, PieÅ¡Å¥any', 'http://www.veterinarpiestany.sk/', 'MVDr. Silvia Å tefÃ¡kovÃ¡'),
(26, 'Kalinciakova 27, Bratislava 3', 'https://svk.mars.com/', 'Mars SR Kom Sp'),
(27, 'KalinÄiakova 27, Bratislava', 'https://www.whiskas.sk/', 'WHISKASÂ® - Mars SR, kom. spol.'),
(28, 'VajanskÃ©ho 58, PieÅ¡Å¥any', 'https://www.q7.sk/', 'q7 digital media s.r.o.'),
(29, 'Am Aggerberg 1, 51491 Overath, Deutschland', 'http://tierwald.eu/', 'Tierwald e.V.'),
(30, 'NÃ¡lepkova 7556/44 PieÅ¡Å¥any', 'https://www.facebook.com/tvkarpaty/', 'TelevÃ­zia KARPATY'),
(31, 'HPA, s.r.o., Bodona 768/48, PieÅ¡Å¥any', 'https://www.pnky.sk/', 'PNky'),
(32, 'Mateja Bela 4667/21, PieÅ¡Å¥any', 'https://www.zpiestan.sk/', 'zpieÅ¡Å¥an.sk'),
(34, 'Winterova 24, PieÅ¡Å¥any', 'https://www.havkomoda.sk/', 'HAVKOMÃ“DA'),
(35, 'Znievska 20, Bratislava', 'https://www.superpes.sk/', 'SUPERPES.sk'),
(36, 'Nitrianska 1856/22, PieÅ¡Å¥any', 'https://www.facebook.com/ozKvas/', 'ObÄianske zdruÅ¾enie Kvas'),
(38, 'RadlinskÃ©ho 37, PieÅ¡Å¥any', 'https://www.veterinarnaklinikazverland.sk/', 'ZVERLAND PieÅ¡Å¥any'),
(39, 'x', 'https://www.ipredplatne.sk/katalog-produktov/noviny-a-casopisy/nielen-pes-a-macka#subscription_period=6490', 'Pes a maÄka'),
(40, 'TeplickÃ¡ 2235/89, PieÅ¡Å¥any', 'http://www.doktorzvierat.sk/', 'MVDr. MachÃ¡Ä'),
(41, 'KÃºpeÄ¾nÃ½ ostrov, PieÅ¡Å¥any', 'https://www.ensanahotels.com/sk/liecebne-kupelne-hotely/destinacie/slovensko/piestany', 'TermÃ¡lne kÃºpele PieÅ¡Å¥any');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `sponsors_image`
--

CREATE TABLE `sponsors_image` (
  `sponsors_image_id` int(11) NOT NULL,
  `sponsors_image` varchar(350) COLLATE utf8_bin NOT NULL,
  `fk_sponsors_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `sponsors_image`
--

INSERT INTO `sponsors_image` (`sponsors_image_id`, `sponsors_image`, `fk_sponsors_id`) VALUES
(3, 'SPONSOR.5e1b1e34a4c6c0.47167100.png', 3),
(7, 'SPONSOR.5e1b472b8c2533.51895153.png', 8),
(8, 'SPONSOR.5e1b47630cfcc0.77267246.jpg', 9),
(9, 'SPONSOR.5e1b47eacc07e9.70057326.jpg', 10),
(10, 'SPONSOR.5e245ba7e8d9b4.52278277.jpg', 11),
(11, 'SPONSOR.5e245c6e77f608.36534619.jpg', 12),
(12, 'SPONSOR.5e245dd949c005.51743120.jpg', 13),
(14, 'SPONSOR.5e245fa5b2d446.81266406.jpg', 15),
(18, 'SPONSOR.5e2462899611c2.01146992.png', 19),
(20, 'SPONSOR.5e2463d1ebd475.86645551.jpg', 21),
(21, 'SPONSOR.5e2464027a6af4.03225373.png', 22),
(22, 'SPONSOR.5e246495a551e8.04362424.jpg', 23),
(23, 'SPONSOR.5e2464f0479860.91854539.jpg', 24),
(24, 'SPONSOR.5e2465a460fff8.45330617.jpg', 25),
(25, 'SPONSOR.5e2466ae426e00.53859648.jpg', 26),
(26, 'SPONSOR.5e24672c57f599.93335102.png', 27),
(27, 'SPONSOR.5e2467bba44da6.40293231.png', 28),
(28, 'SPONSOR.5e246829ec2611.93658816.png', 29),
(29, 'SPONSOR.5e246938cd8337.74665188.jpg', 30),
(30, 'SPONSOR.5e2469e42b8514.73006820.png', 31),
(31, 'SPONSOR.5e246a697274b4.84188931.jpg', 32),
(33, 'SPONSOR.5e246b31391555.30566853.jpg', 34),
(34, 'SPONSOR.5e246bbeb14846.00993974.png', 35),
(35, 'SPONSOR.5e246cd4c276c8.88630924.jpg', 36),
(36, 'SPONSOR.5e246d9eb8ca69.38952229.jpg', 38),
(37, 'SPONSOR.5e246f1829f681.54343931.jpg', 39),
(38, 'SPONSOR.5e2470f47cfac7.51310877.jpg', 40),
(39, 'SPONSOR.5e518fdae716e6.04409557.jpg', 41);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `supporter`
--

CREATE TABLE `supporter` (
  `supporter_id` int(5) NOT NULL,
  `city` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `street` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zip` int(10) DEFAULT NULL,
  `tel` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(155) COLLATE utf8_bin NOT NULL,
  `fk_cat_id` int(11) DEFAULT NULL,
  `fk_dog_id` int(11) DEFAULT NULL,
  `verify` tinyint(4) NOT NULL,
  `anonym` varchar(2) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `req_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `supporter`
--

INSERT INTO `supporter` (`supporter_id`, `city`, `street`, `zip`, `tel`, `email`, `name`, `fk_cat_id`, `fk_dog_id`, `verify`, `anonym`, `req_date`) VALUES
(35, 'Bratislava', 'Donnerova, 717/27', 84104, '0908000000', 'janatalavaskova@gmail.com', 'Rastislav Å ofranko', 6, NULL, 1, '0', '2020-04-21 20:59:21'),
(37, 'Bratislava', 'Donnerova, 717/27', 84104, '0908000000', 'janatalavaskova@gmail.com', 'Sandra Schwehm', NULL, 63, 1, '0', '2020-04-21 20:59:25'),
(38, 'Bratislava', 'Donnerova, 717/27', 84104, '0908000000', 'janatalavaskova@gmail.com', 'Sandra Schwehm', NULL, 63, 2, '0', '2020-04-21 20:59:28'),
(39, 'Vienna', 'gs', 1220, '2321', '3rer@etew.hu', 'Eva Bukli99', NULL, 63, 1, '0', '2020-05-02 17:01:36'),
(40, 'Vienna', 'gkhgj', 1220, '12321', '3rer@etew.huee', 'Eva Bukli2222', NULL, 1, 1, '0', '2020-05-02 17:06:00'),
(41, 'Vienna', 'Langobardenstrasse 45 / 2', 1220, '3456', '3rer@etew.hu', 'Eva Bukli 01', NULL, 63, 1, '0', '2020-05-03 14:11:03'),
(42, 'Vienna', 'Langobardenstrasse 45 / 2', 1220, '546', '3rer@etew.hu', 'Eva Bukli 02i', NULL, 63, 1, '1', '2020-05-03 15:23:55'),
(43, 'Vienna', 'Langobardenstrasse 45 / 2', 1220, '546', '3rer@etew.hu', 'Eva Bukli 02u', NULL, 63, 2, '1', '2020-05-03 15:23:13'),
(44, 'Vienna', 'Langobardenstrasse 45 / 2', 1220, '342', '3rer@etew.hu', 'Eva Buklieeee', NULL, 62, 2, '0', '2020-05-03 14:47:55'),
(45, 'Vienna', 'Langobardenstrasse 45 / 2', 1220, '12', '3rer@etew.hu', 'Eva Bukli1', 6, NULL, 1, '0', '2020-05-03 15:04:32'),
(46, 'Vienna', 'Langobardenstrasse 45 / 2', 1220, '34', '3rer@etew.hu', 'Eva Bukli', 6, NULL, 2, '1', '2020-05-03 15:20:56'),
(47, 'Vienna', 'Langobardenstrasse 45 / 2', 1220, '213', '3rer@etew.hu', 'Eva BukliA', NULL, 63, 1, '1', '2020-05-03 15:39:19'),
(48, 'Vienna', 'Langobardenstrasse 45 / 2', 1220, '213', '3rer@etew.hu', 'Eva BukliA', NULL, 63, 1, '1', '2020-05-03 15:39:18'),
(49, 'Vienna', 'Langobardenstrasse 45 / 2', 1220, '2101', '3rer@etew.hu', 'Eva Bukli', NULL, 63, 1, '0', '2020-05-03 15:39:16'),
(50, 'Vienna', 'Langobardenstrasse 45 / 2', 1220, '21', '3rer@etew.hu', 'Eva BukliAAA', NULL, 5, 1, '0', '2020-05-03 15:39:15'),
(51, 'Vienna', 'Langobardenstrasse 45 / 2', 1220, '21', '3rer@etew.hu', 'Eva BukliAAA', NULL, 5, 1, '0', '2020-05-03 15:39:13'),
(52, 'Vienna', 'Langobardenstrasse 45 / 2', 1220, '2', '3rer@etew.hu', 'Eva BukliAAA', NULL, 1, 1, '0', '2020-05-03 15:39:10'),
(53, 'Vienna', 'Langobardenstrasse 45 / 24', 1220, '213456789', '3rer@etew.hu', 'Csingiling', NULL, 5, 2, '0', '2021-02-06 11:17:30'),
(54, 'Vienna', 'dfsgdgs', 1220, '23423423', '3rer@etew.hu', 'test', NULL, 11, 1, '0', '2021-02-28 12:41:45'),
(55, 'Vienna', 'dfsgdgs', 1220, '23423423', '3rer@etew.hu', 'test2', NULL, 11, 1, '0', '2021-02-28 12:41:58'),
(57, 'Vienna', 'Langobardenstrasse 45 / 24', 1220, '12312313', '3rer@etew.hu', 'anonym very', NULL, 11, 1, '1', '2021-02-28 12:49:19'),
(58, 'Vienna', 'Langobardenstrasse 45 / 24', 1220, '342342', '3rer@etew.hu', 'againaqgain', NULL, 6, 2, '0', '2021-02-28 13:01:53'),
(59, 'Vienna', 'Langobardenstrasse 45 / 24', 1220, '342342', '3rer@etew.hu', 'againaqgain', NULL, 6, 2, '0', '2021-02-28 13:02:03'),
(60, 'Vienna', 'Langobardenstrasse 45 / 24', 1220, '342342', '3rer@etew.hu', 'againaqgain', NULL, 6, 2, '0', '2021-02-28 13:04:17'),
(61, 'Vienna', 'Langobardenstrasse 45 / 24', 1220, '123123123', '3rer@etew.hu', 'ismetldik', NULL, 6, 2, '0', '2021-02-28 13:06:39'),
(62, 'Vienna', 'Langobardenstrasse 45 / 24', 1220, '2345678', '3rer@etew.hu', 'fail', NULL, 6, 2, '0', '2021-02-28 13:07:34'),
(63, 'Vienna', 'Langobardenstrasse 45 / 24', 1220, '2345678', '3rer@etew.hu', 'dont fail', NULL, 6, 2, '0', '2021-02-28 13:08:45'),
(64, 'Vienna', 'Langobardenstrasse 45 / 24', 1220, '2345678', '3rer@etew.hu', 'mostjolesz', NULL, 11, 2, '0', '2021-02-28 13:14:32'),
(65, 'Vienna', 'Langobardenstrasse 45 / 24', 1220, '234567', '3rer@etew.hu', 'lÃ©cci', NULL, 7, 2, '0', '2021-02-28 13:19:57'),
(66, 'Vienna', 'Langobardenstrasse 45 / 24', 1220, '34567', '3rer@etew.hu', 'plÃ­Ã­Ã­z', NULL, 6, 2, '0', '2021-02-28 13:25:50'),
(67, 'Vienna', 'Langobardenstrasse 45 / 24', 1220, '34678Ã¶Ã¼', '3rer@etew.hu', 'hulyeseg', NULL, 6, 2, '0', '2021-02-28 13:30:31'),
(68, 'Vienna', 'Langobardenstrasse 45 / 24', 1220, '23456789Ã¶', '3rer@etew.hu', 'php', NULL, 5, 2, '0', '2021-02-28 13:31:15'),
(69, 'Vienna', 'Langobardenstrasse 45 / 24', 1220, '23423213', '3rer@etew.hu', 'cicus', 12, NULL, 2, '0', '2021-02-28 13:33:31'),
(70, 'Vienna', 'Langobardenstrasse 45 / 24', 1220, '34567u8', '3rer@etew.hu', 'Eva Bukli', NULL, 6, 2, '0', '2021-02-28 13:44:51'),
(71, 'Vienna', 'Langobardenstrasse 45 / 24', 1220, '456789', '3rer@etew.hu', 'nelegyhulye', NULL, 6, 2, '0', '2021-02-28 13:45:13'),
(72, 'Vienna', 'Langobardenstrasse 45 / 24', 1220, '34234234', '3rer@etew.hu', 'hulyevagy', NULL, 12, 2, '0', '2021-02-28 13:46:16'),
(73, 'Vienna', 'Langobardenstrasse 45 / 24', 1220, '23423432', '3rer@etew.hu', 'legyszives', NULL, 12, 2, '0', '2021-02-28 13:46:51'),
(74, 'Vienna', 'Langobardenstrasse 45 / 24', 1220, '34234234', '3rer@etew.hu', 'jolesz', NULL, 14, 2, '0', '2021-02-28 13:47:27'),
(75, 'Vienna', 'Langobardenstrasse 45 / 24', 1220, '323423423', '3rer@etew.hu', 'cicc', 12, NULL, 2, '0', '2021-02-28 13:49:36'),
(76, 'Vienna', 'Langobardenstrasse 45 / 24', 1220, '3453453', '3rer@etew.hu', 'rtzr5tzrtgr', 12, NULL, 2, '0', '2021-02-28 13:50:37'),
(77, 'Vienna', 'Langobardenstrasse 45 / 24', 1220, '21321', '3rer@etew.hu', 'Eva Bukli', NULL, 5, 1, '0', '2021-02-28 18:51:32'),
(78, 'Vienna', 'Langobardenstrasse 45 / 24', 1220, '21321', '3rer@etew.hu', 'Eva Bukli', NULL, 5, 2, '0', '2021-02-28 18:51:35'),
(79, 'Vienna', 'Langobardenstrasse ', 1220, '324234', '3rer@etew.hu', 'eva', NULL, 69, 1, '0', '2021-03-18 18:40:32');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `team`
--

CREATE TABLE `team` (
  `team_id` int(5) NOT NULL,
  `name` varchar(125) COLLATE utf8_bin DEFAULT NULL,
  `position_sk` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `description_sk` text COLLATE utf8_bin,
  `position_en` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `description_en` text COLLATE utf8_bin,
  `position_de` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `description_de` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `team`
--

INSERT INTO `team` (`team_id`, `name`, `position_sk`, `description_sk`, `position_en`, `description_en`, `position_de`, `description_de`) VALUES
(6, 'Ä½ubomÃ­ra BalekovÃ¡', 'PredsednÃ­Äka organizÃ¡cie', 'Popri svojej prÃ¡ci sa starÃ¡ neziÅ¡tne o zabezpeÄenie prevÃ¡dzky a webovej strÃ¡nky.', NULL, NULL, NULL, NULL),
(7, 'ZdenÄ›k Schindler', '1. podpredseda a sprÃ¡vca Ãºtulku', 'AmbiciÃ³zny, zodpovednÃ½, nekompromisnÃ½, s prospeÅ¡nÃ½mi nÃ¡padmi pre organizÃ¡ciu a riadiacimi schopnosÅ¥ami.', NULL, NULL, NULL, NULL),
(8, 'Daniela KovÃ¡ÄovÃ¡', '2. podpredseda', 'HospodÃ¡rka a ÃºÄtovnÃ­Äka OZ, mÃ¡ na starosti administratÃ­vu, ekonomickÃ© a personÃ¡lne zÃ¡leÅ¾itosti, vynikajÃºci sprÃ¡vca organizÃ¡cie.', NULL, NULL, NULL, NULL),
(9, 'Ing. Erika AntalovÃ¡', 'ZakladateÄ¾ka RC SZ PN', 'ZakladateÄ¾ka pieÅ¡Å¥anskÃ©ho Ãºtulku, uÅ¾ na dÃ´chodku, ale stÃ¡le aktÃ­vne a neziÅ¡tne pomÃ¡ha s administratÃ­vou, opaterou zvieratiek v domÃ¡cnosti a finanÄne.', NULL, NULL, NULL, NULL),
(10, 'Martin PetruÅ¡ (Draky)', 'OpatrovateÄ¾ v Ãºtulku', 'NajlepÅ¡Ã­ oÅ¡etrovateÄ¾, zvieratkÃ¡ majÃº k nemu zvlÃ¡Å¡tny vzÅ¥ah, reÅ¡pektujÃº ho a nikto s nimi nevie pracovaÅ¥ tak dobre ako on.', NULL, NULL, NULL, NULL),
(11, 'Jana KoÄudÃ¡kovÃ¡ TalavaÅ¡kovÃ¡', 'SprÃ¡vca Facebooku, podpora fundraisingu', 'KreatÃ­vna milovnÃ­Äka zvieratiek, vÅ¾dy nÃ¡pomocnÃ¡ s vynikajÃºcimi ideami, ako pomÃ´cÅ¥.', NULL, NULL, NULL, NULL),
(12, 'OÄ¾ga OpatovÃ¡', 'OpatrovateÄ¾ v Ãºtulku aj doma', 'ÄŒlovek s veÄ¾kÃ½m srdcom a Ãºsmevom v tvÃ¡ri, skvelÃ¡ a starostlivÃ¡ opatrovateÄ¾ka.', NULL, NULL, NULL, NULL),
(13, 'eva', 'sk', 'sk', 'en', 'se', 'de', 'dde');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `team_image`
--

CREATE TABLE `team_image` (
  `team_image_id` int(11) NOT NULL,
  `team_image` text COLLATE utf8_bin NOT NULL,
  `fk_team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `team_image`
--

INSERT INTO `team_image` (`team_image_id`, `team_image`, `fk_team_id`) VALUES
(6, 'TEAM.5e0cf731204bf9.51556433.png', 6),
(7, 'TEAM.5e0cf769efad44.12725571.jpg', 7),
(8, 'TEAM.5e0cf7f0336063.67173513.png', 8),
(9, 'TEAM.5e0cf81d0822f5.12378831.jpg', 9),
(10, 'TEAM.5e0cf875242341.15215115.jpg', 10),
(11, 'TEAM.5e0cf8efef6370.17152339.jpg', 11),
(12, 'TEAM.5e52faee7fa199.03304591.jpg', 12),
(13, 'TEAM.5eaeebe398a474.83080821.png', 13);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `users_id` int(5) NOT NULL,
  `users_email` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `users_name` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `users_pass` longtext COLLATE utf8_bin,
  `users_role` varchar(25) COLLATE utf8_bin DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`users_id`, `users_email`, `users_name`, `users_pass`, `users_role`) VALUES
(1, 'test@test.com', 'testtest', '$2y$10$ysVuzgRwMl85toBd8tOsF.boovkPaIwdcIKxSkbxWybQ6lopwQVKW', '1'),
(9, 'lubab66@gmail.com', 'luba', '$2y$10$/w4mzeCP56OTFSdfWDxJUu3LiNfPo5zw14jS04Sp7UnGTAg3zlbYK', '0');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `videos`
--

CREATE TABLE `videos` (
  `video_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `title` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `visitors`
--

CREATE TABLE `visitors` (
  `ip_id` int(11) NOT NULL,
  `ip_address` varchar(200) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `adaption`
--
ALTER TABLE `adaption`
  ADD PRIMARY KEY (`adoption_id`),
  ADD KEY `fk_cat_id` (`fk_cat_id`),
  ADD KEY `fk_dog_id` (`fk_dog_id`);

--
-- A tábla indexei `annual_report`
--
ALTER TABLE `annual_report`
  ADD PRIMARY KEY (`annual_report_id`);

--
-- A tábla indexei `auction_bid`
--
ALTER TABLE `auction_bid`
  ADD PRIMARY KEY (`bid_id`),
  ADD KEY `fk_auction_product_id` (`fk_auction_product_id`);

--
-- A tábla indexei `auction_image`
--
ALTER TABLE `auction_image`
  ADD PRIMARY KEY (`auction_image_id`),
  ADD KEY `fk_auction_product_id` (`fk_auction_product_id`);

--
-- A tábla indexei `auction_product`
--
ALTER TABLE `auction_product`
  ADD PRIMARY KEY (`auction_product_id`);

--
-- A tábla indexei `cat`
--
ALTER TABLE `cat`
  ADD PRIMARY KEY (`cat_id`);

--
-- A tábla indexei `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`counter_id`);

--
-- A tábla indexei `dog`
--
ALTER TABLE `dog`
  ADD PRIMARY KEY (`dog_id`);

--
-- A tábla indexei `eshop`
--
ALTER TABLE `eshop`
  ADD PRIMARY KEY (`eshop_id`);

--
-- A tábla indexei `eshop_customer`
--
ALTER TABLE `eshop_customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `fk_eshop_id` (`fk_eshop_id`);

--
-- A tábla indexei `eshop_image`
--
ALTER TABLE `eshop_image`
  ADD PRIMARY KEY (`eshop_image_id`),
  ADD KEY `fk_eshop_id` (`fk_eshop_id`);

--
-- A tábla indexei `help_us`
--
ALTER TABLE `help_us`
  ADD PRIMARY KEY (`help_id`);

--
-- A tábla indexei `how_adopt`
--
ALTER TABLE `how_adopt`
  ADD PRIMARY KEY (`how_adopt_id`);

--
-- A tábla indexei `how_support`
--
ALTER TABLE `how_support`
  ADD PRIMARY KEY (`how_support_id`);

--
-- A tábla indexei `image_cat`
--
ALTER TABLE `image_cat`
  ADD PRIMARY KEY (`image_cat_id`),
  ADD KEY `fk_cat_id` (`fk_cat_id`);

--
-- A tábla indexei `image_dog`
--
ALTER TABLE `image_dog`
  ADD PRIMARY KEY (`image_dog_id`),
  ADD KEY `fk_dog_id` (`fk_dog_id`);

--
-- A tábla indexei `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`info_id`);

--
-- A tábla indexei `main_image_cat`
--
ALTER TABLE `main_image_cat`
  ADD PRIMARY KEY (`main_image_id`),
  ADD KEY `fk_cat_id` (`fk_cat_id`);

--
-- A tábla indexei `main_image_dog`
--
ALTER TABLE `main_image_dog`
  ADD PRIMARY KEY (`main_image_id`),
  ADD KEY `fk_dog_id` (`fk_dog_id`);

--
-- A tábla indexei `mission`
--
ALTER TABLE `mission`
  ADD PRIMARY KEY (`mission_id`);

--
-- A tábla indexei `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`place_id`);

--
-- A tábla indexei `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`reports_id`);

--
-- A tábla indexei `reports_image`
--
ALTER TABLE `reports_image`
  ADD PRIMARY KEY (`reports_image_id`),
  ADD KEY `fk_reports_id` (`fk_reports_id`);

--
-- A tábla indexei `reports_image_more`
--
ALTER TABLE `reports_image_more`
  ADD PRIMARY KEY (`reports_image_more_id`),
  ADD KEY `fk_reports_id` (`fk_reports_id`);

--
-- A tábla indexei `running_text`
--
ALTER TABLE `running_text`
  ADD PRIMARY KEY (`text_id`);

--
-- A tábla indexei `sponsors`
--
ALTER TABLE `sponsors`
  ADD PRIMARY KEY (`sponsors_id`);

--
-- A tábla indexei `sponsors_image`
--
ALTER TABLE `sponsors_image`
  ADD PRIMARY KEY (`sponsors_image_id`),
  ADD KEY `fk_sponsors_id` (`fk_sponsors_id`);

--
-- A tábla indexei `supporter`
--
ALTER TABLE `supporter`
  ADD PRIMARY KEY (`supporter_id`),
  ADD KEY `fk_cat_id` (`fk_cat_id`),
  ADD KEY `fk_dog_id` (`fk_dog_id`),
  ADD KEY `fk_cat_id_2` (`fk_cat_id`);

--
-- A tábla indexei `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`team_id`);

--
-- A tábla indexei `team_image`
--
ALTER TABLE `team_image`
  ADD PRIMARY KEY (`team_image_id`),
  ADD KEY `fk_team_id` (`fk_team_id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`);

--
-- A tábla indexei `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`video_id`);

--
-- A tábla indexei `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`ip_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `adaption`
--
ALTER TABLE `adaption`
  MODIFY `adoption_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT a táblához `annual_report`
--
ALTER TABLE `annual_report`
  MODIFY `annual_report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT a táblához `auction_bid`
--
ALTER TABLE `auction_bid`
  MODIFY `bid_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `auction_image`
--
ALTER TABLE `auction_image`
  MODIFY `auction_image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `auction_product`
--
ALTER TABLE `auction_product`
  MODIFY `auction_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `cat`
--
ALTER TABLE `cat`
  MODIFY `cat_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT a táblához `counter`
--
ALTER TABLE `counter`
  MODIFY `counter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `dog`
--
ALTER TABLE `dog`
  MODIFY `dog_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT a táblához `eshop`
--
ALTER TABLE `eshop`
  MODIFY `eshop_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `eshop_customer`
--
ALTER TABLE `eshop_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `eshop_image`
--
ALTER TABLE `eshop_image`
  MODIFY `eshop_image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `help_us`
--
ALTER TABLE `help_us`
  MODIFY `help_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `how_adopt`
--
ALTER TABLE `how_adopt`
  MODIFY `how_adopt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `how_support`
--
ALTER TABLE `how_support`
  MODIFY `how_support_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `image_cat`
--
ALTER TABLE `image_cat`
  MODIFY `image_cat_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT a táblához `image_dog`
--
ALTER TABLE `image_dog`
  MODIFY `image_dog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT a táblához `info`
--
ALTER TABLE `info`
  MODIFY `info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `main_image_cat`
--
ALTER TABLE `main_image_cat`
  MODIFY `main_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT a táblához `main_image_dog`
--
ALTER TABLE `main_image_dog`
  MODIFY `main_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT a táblához `mission`
--
ALTER TABLE `mission`
  MODIFY `mission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `place`
--
ALTER TABLE `place`
  MODIFY `place_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT a táblához `reports`
--
ALTER TABLE `reports`
  MODIFY `reports_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT a táblához `reports_image`
--
ALTER TABLE `reports_image`
  MODIFY `reports_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT a táblához `reports_image_more`
--
ALTER TABLE `reports_image_more`
  MODIFY `reports_image_more_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT a táblához `running_text`
--
ALTER TABLE `running_text`
  MODIFY `text_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `sponsors`
--
ALTER TABLE `sponsors`
  MODIFY `sponsors_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT a táblához `sponsors_image`
--
ALTER TABLE `sponsors_image`
  MODIFY `sponsors_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT a táblához `supporter`
--
ALTER TABLE `supporter`
  MODIFY `supporter_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT a táblához `team`
--
ALTER TABLE `team`
  MODIFY `team_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT a táblához `team_image`
--
ALTER TABLE `team_image`
  MODIFY `team_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT a táblához `videos`
--
ALTER TABLE `videos`
  MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT a táblához `visitors`
--
ALTER TABLE `visitors`
  MODIFY `ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `adaption`
--
ALTER TABLE `adaption`
  ADD CONSTRAINT `adaption_ibfk_1` FOREIGN KEY (`fk_cat_id`) REFERENCES `cat` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `adaption_ibfk_2` FOREIGN KEY (`fk_dog_id`) REFERENCES `dog` (`dog_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `auction_bid`
--
ALTER TABLE `auction_bid`
  ADD CONSTRAINT `auction_bid_ibfk_1` FOREIGN KEY (`fk_auction_product_id`) REFERENCES `auction_product` (`auction_product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `auction_image`
--
ALTER TABLE `auction_image`
  ADD CONSTRAINT `auction_image_ibfk_1` FOREIGN KEY (`fk_auction_product_id`) REFERENCES `auction_product` (`auction_product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `eshop_customer`
--
ALTER TABLE `eshop_customer`
  ADD CONSTRAINT `eshop_customer_ibfk_1` FOREIGN KEY (`fk_eshop_id`) REFERENCES `eshop` (`eshop_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `eshop_image`
--
ALTER TABLE `eshop_image`
  ADD CONSTRAINT `eshop_image_ibfk_1` FOREIGN KEY (`fk_eshop_id`) REFERENCES `eshop` (`eshop_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `image_cat`
--
ALTER TABLE `image_cat`
  ADD CONSTRAINT `image_cat_ibfk_1` FOREIGN KEY (`fk_cat_id`) REFERENCES `cat` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `image_dog`
--
ALTER TABLE `image_dog`
  ADD CONSTRAINT `image_dog_ibfk_1` FOREIGN KEY (`fk_dog_id`) REFERENCES `dog` (`dog_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `main_image_cat`
--
ALTER TABLE `main_image_cat`
  ADD CONSTRAINT `main_image_cat_ibfk_1` FOREIGN KEY (`fk_cat_id`) REFERENCES `cat` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `main_image_dog`
--
ALTER TABLE `main_image_dog`
  ADD CONSTRAINT `main_image_dog_ibfk_1` FOREIGN KEY (`fk_dog_id`) REFERENCES `dog` (`dog_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `reports_image`
--
ALTER TABLE `reports_image`
  ADD CONSTRAINT `reports_image_ibfk_1` FOREIGN KEY (`fk_reports_id`) REFERENCES `reports` (`reports_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `reports_image_more`
--
ALTER TABLE `reports_image_more`
  ADD CONSTRAINT `reports_image_more_ibfk_1` FOREIGN KEY (`fk_reports_id`) REFERENCES `reports` (`reports_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `sponsors_image`
--
ALTER TABLE `sponsors_image`
  ADD CONSTRAINT `sponsors_image_ibfk_1` FOREIGN KEY (`fk_sponsors_id`) REFERENCES `sponsors` (`sponsors_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `supporter`
--
ALTER TABLE `supporter`
  ADD CONSTRAINT `supporter_ibfk_1` FOREIGN KEY (`fk_dog_id`) REFERENCES `dog` (`dog_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `supporter_ibfk_2` FOREIGN KEY (`fk_cat_id`) REFERENCES `cat` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `team_image`
--
ALTER TABLE `team_image`
  ADD CONSTRAINT `team_image_ibfk_1` FOREIGN KEY (`fk_team_id`) REFERENCES `team` (`team_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
