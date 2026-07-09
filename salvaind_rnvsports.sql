-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 20, 2026 at 09:08 AM
-- Server version: 10.6.27-MariaDB
-- PHP Version: 8.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salvaind_rnvsports`
--

-- --------------------------------------------------------

--
-- Table structure for table `bulk_contact`
--

CREATE TABLE `bulk_contact` (
  `contact_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `school_name` varchar(100) NOT NULL,
  `nature_requirment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bulk_contact`
--

INSERT INTO `bulk_contact` (`contact_id`, `name`, `email`, `mobile`, `address`, `school_name`, `nature_requirment`) VALUES
(1, 'vishal', 'vishal@12345.com', '+918345435433', 'haldwani', 'bhimtal', 'bhimtal'),
(2, 'vishal', 'vishal@12345.com', '+918345435433', 'haldwani', 'bhimtal', 'bhimtal'),
(3, 'vishal', 'vishal@12345.com', '+918345435433', 'haldwani', 'bhimtal', 'bhimtal'),
(4, 'vishal ', 'kailash210111@gmail.com', '+919627407876', 'haldwani', 'bhimtal', 'bhimtal'),
(5, 'brogy', 'foremanwoman@gmail.com', '84556487217', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', 'Ð’ÑÐµÐ¼ Ð¿Ñ€Ð¸Ð²ÐµÑ‚! \r\nÐšÑ‚Ð¾ Ð¶ÐµÐ»Ð°ÐµÑ‚ Ð¿Ð¾ÑÑ‚Ñ€Ð¾Ð¸Ñ‚ÑŒ Ñ„ÑƒÐ½Ð´Ð°Ð¼ÐµÐ½Ñ‚ Ð·Ð° 50% Ð¾Ñ‚ Ñ†Ð'),
(6, 'Coultget', 'avsplitter@gmail.com', '82173498672', 'Tafraout', 'google', 'Ð”Ð¾Ð±Ñ€Ð¾Ð³Ð¾ Ð²Ñ€ÐµÐ¼ÐµÐ½Ð¸ ÑÑƒÑ‚Ð¾Ðº. \r\nÐŸÐ¾Ñ€ÐµÐºÐ¾Ð¼ÐµÐ½Ð´ÑƒÐ¹Ñ‚Ðµ Ð½Ð¾Ñ€Ð¼Ð°Ð»ÑŒÐ½ÑƒÑŽ Ð¾Ð½Ð»'),
(7, 'Cecildar', 'lebedevaelena248624@gmail.com', '83923996231', 'Bijeljina', 'google', '<b>We recommend visiting a trusted pharmacy in your city! \r\nClick on the link! </b> \r\n<a href=http:/'),
(8, 'Bad Credit ', 'lordtaulkes@jumbox.site ', '85777989276', 'New York', 'google', '<a href=\"http://etaloans.com/\">real online payday loans</a> '),
(9, 'MaryReums', 'csoriano@aol.com ', '87267571963', 'Dallas', 'google', '<a href=\"https://sildalista.com/\">sildalis tablets</a> <a href=\"https://fluoxetinesri.com/\">fluoxeti'),
(10, 'Quick Loan ', 'paulsampson@instamail.site ', '85225796149', 'New York', 'google', '<a href=\"https://paydayloansopt.com/\">personal loan repayment</a> <a href=\"https://abbcash.com/\">the'),
(11, 'Online Payday Loan ', 'alikat918@qtmx.space ', '82327431659', 'Reno', 'google', '<a href=\"http://tunloans.com/\">getting a loan with bad credit</a> <a href=\"http://nodeloans.com/\">la'),
(12, 'Best Payday Loan ', 'elmoracing@msmx.site ', '87549684766', 'Reno', 'google', '<a href=\"https://paydayloansopt.com/\">need a loan</a> <a href=\"https://abbcash.com/\">payday loans ba'),
(13, 'MarkReums', 'hugcap2001@outlook.com ', '89274339632', 'Dallas', 'google', '<a href=\"https://cafergotergotamine.com/\">cafergot 100mg</a> <a href=\"https://elimitecream.com/\">whe'),
(14, 'LisaReums', 'sauljauregui29@gmail.com ', '83842726177', 'Dallas', 'google', '<a href=\"https://tadaciptab.com/\">buy tadacip uk</a> '),
(15, 'CarlReums', 'dandlped@outlook.com ', '88395357412', 'New York', 'google', '<a href=\"http://oklevitra.com/\">where can i buy generic levitra</a> <a href=\"http://cipromed.com/\">b'),
(16, 'BGTFrava', 'nebogatyiaishet@myrambler.ru', '89258967511', 'Moskow', 'google', 'Ð’ÐµÑ‡ÐµÑ€Ð½Ð¸Ð¹ <a href=https://www.youtube.com/watch?v=A_rh3NmrHmE>Ð¿Ð¾ÐºÐµÑ€</a> â€” FRIENDLY Ð’Ð'),
(17, 'CynthiaIceri', 'cynthia.cynthia.77@bk.ru', '87344577516', 'Los Angeles', 'google', ' \r\n \r\nMeet a man for real meetings and sex! \r\nMy nickname on the site Berta77 \r\nhttps://cutt.us/pame'),
(18, 'Online Loan ', 'jurbano@msmx.site ', '85524314126', 'Reno', 'google', '<a href=\"http://aroloans.com/\">500 payday loans</a> <a href=\"http://ssllending.com/\">pay day board g'),
(19, 'Jefferyplaiz', 'yourmail@gmail.com', '84183559562', 'Avarua', 'google', '<a href=https://thevoguechoice.com/>The Vogue Choice</a> where we share your passion. Thatâ€™s why w'),
(20, 'Jamesdal', 'eva-bulatova.8647@mail.ru', '82592663749', 'Yangon', 'google', 'Ð±Ð¸Ñ€Ð¶Ð° Ð¾Ð±ÑƒÑ‡ÐµÐ½Ð¸Ðµ \r\n \r\n<a href=https://chernykh.ffin.ru/>ÐºÑƒÐ¿Ð¸Ñ‚ÑŒ Ð°ÐºÑ†Ð¸Ð¸ Ð³Ð°Ð·Ð¿Ñ'),
(21, 'PaulReums', 'bigbaby3646@aol.com ', '85855469298', 'Dallas', 'google', '<a href=\"https://chloroquineactive.com/\">chloroquine covid 19</a> <a href=\"https://cafergotergotamin'),
(22, 'CarlReums', 'soverley1@hotmail.com ', '85111843587', 'New York', 'google', '<a href=\"http://fluoxetinepro.com/\">prozac in mexico</a> <a href=\"http://oklevitra.com/\">cheap gener'),
(23, 'A Payday Loan ', 'ramonar@romail.site ', '85266199173', 'New York', 'google', '<a href=\"https://vedacash.com/\">credit builder loan</a> '),
(24, 'AmyReums', 'marylin@hotmail.com ', '85265623774', 'New York', 'google', '<a href=\"http://tadalafilgencialis.com/\">tadalafil from india</a> '),
(25, 'Online Loans ', 'pebblesthornton@instamail.site ', '88741257766', 'Houston', 'google', '<a href=\"https://spdloans.com/\">loan til payday</a> <a href=\"https://coraloans.com/\">payday loan cas'),
(26, 'MarkReums', 'oleta@hotmail.com ', '82357167711', 'Dallas', 'google', '<a href=\"https://kamagrabp.com/\">kamagra pills price</a> <a href=\"https://bluepillsildenafil.com/\">d'),
(27, 'ZuvilsNar', 'je.n.t.a.i.wo.rldp.i.ct.uret5@o5o5.ru', '81575577647', 'London', 'google', '<a href=https://chimmed.ru/manufactors/catalog?name=%D0%91%D0%B8%D0%BE%D0%A5%D0%B8%D0%BC%D0%9C%D0%B0'),
(28, 'AlanReums', 'loise@outlook.com ', '88648913565', 'New York', 'google', '<a href=\"http://oklevitra.com/\">levitra online purchase</a> <a href=\"http://oralkamagra.com/\">buy ch'),
(29, 'Direct Lender Loans ', 'jrospopo@jumbox.site ', '81531113682', 'New York', 'google', '<a href=\"https://aroloans.com/\">loans secured</a> '),
(30, 'Pay Day Loan ', 'scottstiberon@msmx.site ', '82513179497', 'Houston', 'google', '<a href=\"https://waltlending.com/\">fast loan online</a> <a href=\"https://sxloans.com/\">quick money</'),
(31, 'Coultget', 'avsplitter@gmail.com', '88535718356', 'Tafraout', 'google', 'Ð”Ð¾Ð±Ñ€Ñ‹Ð¹ Ð´ÐµÐ½ÑŒ. \r\nÐŸÐ¾Ð´ÑÐºÐ°Ð¶Ð¸Ñ‚Ðµ Ð¾Ñ‚Ð»Ð¸Ñ‡Ð½ÑƒÑŽ Ð¾Ð½Ð»Ð°Ð¹Ð½-Ñ‚Ð¸Ð¿Ð¾Ð³Ñ€Ð°Ñ„Ð¸ÑŽ Ð´Ð'),
(32, 'AlLib', 'agiJam@hotmail.com', '88392999987', 'NY', 'google', 'Buy Cheap Medications Online Without Prescription! \r\n \r\n<a href=http://eban.internetdsl.pl/userfiles'),
(33, 'Andrehow', 'bitdouble.net@gmail.com', '86898828364', 'Bottegone', 'google', ' \r\nMake Your Bitcoin Double In Just 12 Hours. \r\nThe website promises to double your bitcoin with no '),
(34, 'EyeReums', 'gouldingc@mail.com ', '86583433791', 'San Jose', 'google', '<a href=\"http://sildalista.com/\">buy sildalis</a> <a href=\"http://fluoxetinepro.com/\">prozac buy can'),
(35, 'DenReums', 'sandijskregers@mail.com ', '84843729671', 'Chicago', 'google', '<a href=\"http://oralkamagra.com/\">kamagra oral jelly south africa</a> <a href=\"http://optadalafil.co'),
(36, 'Best Online Loans ', 'jthesicilian@qtmx.space ', '85881673379', 'New York', 'google', '<a href=\"http://cashadvc.com/\">money fast for kids</a> '),
(37, 'CarlReums', 'cassandrahumphrey@yahoo.com ', '81723519263', 'New York', 'google', '<a href=\"http://tadaciptab.com/\">tadacip india</a> <a href=\"http://levitrahop.com/\">drug levitra</a>'),
(38, 'Instant Online Loans ', 'rnm1956@romail.site ', '81173835692', 'Reno', 'google', '<a href=\"http://cashadvs.com/\">loans online direct</a> <a href=\"http://siploans.com/\">personal loans'),
(39, 'PaulReums', 'reilysmommy@hotmail.com ', '85893778463', 'Dallas', 'google', '<a href=\"https://ivermectinoverthecounter.com/\">price of stromectol</a> <a href=\"https://sildalised.'),
(40, 'LisaReums', 'mossback1971@outlook.com ', '83196697845', 'Dallas', 'google', '<a href=\"https://kamagrabp.com/\">kamagra cheap online uk</a> '),
(41, 'JasonReums', 'mberg5000@hotmail.com ', '86433382217', 'New York', 'google', '<a href=\"http://bluepillsildenafil.com/\">sildenafil uk</a> <a href=\"http://optadalafil.com/\">india p'),
(42, 'KiaReums', 'deddysuharyanto@hotmail.com ', '82397241639', 'Denver', 'google', '<a href=\"http://elimitecream.com/\">elimite over the counter canada</a> '),
(43, 'Personal Loans ', 'ilene@romail.site ', '82681292943', 'Reno', 'google', '<a href=\"http://coraloans.com/\">loans for bad credit uk</a> <a href=\"http://qkkcash.com/\">payday dir'),
(44, 'DenReums', 'shoots76@aol.com ', '82815183278', 'Chicago', 'google', '<a href=\"http://sildalista.com/\">buy sildalis</a> <a href=\"http://oklevitra.com/\">how to buy levitra'),
(45, 'ClezeripLover', 'a45654aaa@gmail.com', '83448588341', 'Biel', 'google', 'suara burung lutino parakeet sigo sencillo noel torres ren and stimpy saw wood scene setter para ent'),
(46, 'A Payday Loan ', 'wambo59@instamail.site ', '88729799154', 'New York', 'google', '<a href=\"https://abbcash.com/\">direct lender payday loans no teletrack</a> <a href=\"https://cashadvc'),
(47, 'AlanReums', 'hughmul@mail.com ', '85135435425', 'New York', 'google', '<a href=\"http://sildalista.com/\">buy cheap sildalis</a> <a href=\"http://cipromed.com/\">ciprofloxacin'),
(48, 'Loan ', 'abelardojereissati@jumbox.site ', '89567623446', 'New York', 'google', '<a href=\"https://cashadvs.com/\">fast cash loans</a> '),
(49, 'MaryReums', 'zavisek@outlook.com ', '83191791276', 'Dallas', 'google', '<a href=\"https://sildalised.com/\">sildalis 120 mg</a> <a href=\"https://antabusexr.com/\">where to get'),
(50, 'EyeReums', 'amada@gmail.com ', '82375882397', 'San Jose', 'google', '<a href=\"http://chloroquineactive.com/\">chloroquine 100</a> <a href=\"http://silagrabuy.com/\">silagra'),
(51, 'CarlReums', 'suzyking72@outlook.com ', '86652365628', 'New York', 'google', '<a href=\"http://antabusexr.com/\">buy anti buse</a> <a href=\"http://ivermectinoverthecounter.com/\">st'),
(52, 'KiaReums', 'cassaundra@hotmail.com ', '81495332678', 'Denver', 'google', '<a href=\"http://sildalista.com/\">sildalis 120</a> '),
(53, 'MarkReums', 'bwhood@aol.com ', '85573132697', 'Dallas', 'google', '<a href=\"https://fluoxetinesri.com/\">order fluoxetine without prescription</a> <a href=\"https://anta'),
(54, 'Online Lenders ', 'dcipar@instamail.site ', '89833821189', 'New York', 'google', '<a href=\"http://ssllending.com/\">discount payday loans</a> <a href=\"http://etaloans.com/\">think cash'),
(55, 'Online Loans ', 'janierosenberg@jumbox.site ', '87276521793', 'Reno', 'google', '<a href=\"http://ssllending.com/\">need money now please help</a> <a href=\"http://waltlending.com/\">sh'),
(56, 'MarkReums', 'awnetriarahming@gmail.com ', '81212979213', 'Dallas', 'google', '<a href=\"https://bluepillsildenafil.com/\">viagra non prescription</a> <a href=\"https://elimitecream.'),
(57, 'Online Loan ', 'justinstratton@instamail.site ', '88865913892', 'Houston', 'google', '<a href=\"https://ssllending.com/\">what is debt consolidation</a> <a href=\"https://cashadvc.com/\">hol'),
(58, 'Quick Loan ', 'lifeisgoodmario@instamail.site ', '82497195182', 'New York', 'google', '<a href=\"https://cashadvc.com/\">loan impairment</a> '),
(59, 'JudyReums', 'incag@mail.com ', '89415115113', 'New York', 'google', '<a href=\"http://kamagrabp.com/\">generic kamagra oral jelly</a> <a href=\"http://sildalised.com/\">sild'),
(60, 'KiaReums', 'adrianc982@outlook.com ', '87837167985', 'Denver', 'google', '<a href=\"http://levitrahop.com/\">levitra canadian pharmacy</a> '),
(61, 'AmyReums', 'pgelman@yahoo.com ', '85774775556', 'New York', 'google', '<a href=\"http://bluepillsildenafil.com/\">generic sildenafil tablets</a> '),
(62, 'JesOpigo', 'm4xxxov@yandex.com', '83617123179', 'Kazan', 'google', ':)<a href=http://stroi-archive.ru/>:)</a>:)'),
(63, 'Mep', 'baburovp@bk.ru', '82384564538', 'Kaduna', 'google', 'Hi, this is Irina. I am sending you my intimate photos as I promised. https://tinyurl.com/y69dewce'),
(64, 'Payday Loan ', 'ispaniko1964@instamail.site ', '89968251622', 'New York', 'google', '<a href=\"http://qkkcash.com/\">best payday loan</a> <a href=\"http://paydaylns.com/\">cash loan fast</a'),
(65, 'Loans ', 'carlena@msmx.site ', '89978456327', 'Reno', 'google', '<a href=\"https://aroloans.com/\">loan repayment</a> <a href=\"https://sofaloans.com/\">no credit loans '),
(66, 'Loan ', 'elraystuart@jumbox.site ', '85753727584', 'New York', 'google', '<a href=\"http://paydayloansapr.com/\">payday loan lender</a> '),
(67, 'DennisBes', 'sportuaspot@rambler.ru', '89197745259', 'Raduznyj', 'google', 'Ð¡Ð¿Ð°ÑÐ¸Ð±Ð¾, Ð´Ð°Ð²Ð½Ð¾ Ð¸ÑÐºÐ°Ð» \r\n_________________ \r\nÐ¸Ð³Ñ€Ð° Ð¿Ð¸Ð½ Ð°Ð¿ Ð¾Ñ‚Ð·Ñ‹Ð²Ñ‹ - <a h'),
(68, 'Speedy Cash ', 'dweir34566@instamail.site ', '82814584614', 'Reno', 'google', '<a href=\"http://waltlending.com/\">unsecured loan</a> <a href=\"http://rboloans.com/\">quick loans for '),
(69, 'AlanReums', 'donnahooper@yahoo.com ', '89693282365', 'New York', 'google', '<a href=\"http://chloroquineactive.com/\">chloroquine otc</a> <a href=\"http://sildalised.com/\">sildali'),
(70, 'Payday Loans Online ', 'wahlers@instamail.site ', '84778319265', 'Reno', 'google', '<a href=\"https://waltlending.com/\">cash advance payday loans</a> <a href=\"https://rboloans.com/\">pay'),
(71, 'Bad Credit ', 'oyvindbjorkmo@instamail.site ', '85927624584', 'New York', 'google', '<a href=\"http://cashadvc.com/\">payday loans online</a> '),
(72, 'LisaReums', 'gmiller@yahoo.com ', '83365646168', 'Dallas', 'google', '<a href=\"https://cafergotergotamine.com/\">generic cafergot</a> '),
(73, 'PaulReums', 'gonmadaleno@yahoo.com ', '83828267619', 'Dallas', 'google', '<a href=\"https://fluoxetinepro.com/\">fluoxetine 10 mg capsules</a> <a href=\"https://tadaciptab.com/\"'),
(74, 'EyeReums', 'minniebrown60@mail.com ', '87292479497', 'San Jose', 'google', '<a href=\"http://sildalised.com/\">where to buy sildalis</a> <a href=\"http://tadalafilgencialis.com/\">'),
(75, 'LisaReums', 'tprauto@gmail.com ', '89467653217', 'Dallas', 'google', '<a href=\"https://fluoxetinesri.com/\">best generic prozac</a> '),
(76, 'JudyReums', 'cohibaman52@yahoo.com ', '86252474247', 'New York', 'google', '<a href=\"http://sildalista.com/\">sildalis 120</a> <a href=\"http://fluoxetinesri.com/\">where to buy p'),
(77, 'Dustinzidge', 'accsmarket.net@gmaildot.com', '86521439174', 'Bijeljina', 'google', 'SELLING 0-1K FOLLOWERS 2014 Aged 2014 account with 532 followers \r\n \r\nClick \r\nhttps://sellaccs.net \r'),
(78, 'Payday Loans ', 'pbehm@jumbox.site ', '87655981732', 'Reno', 'google', '<a href=\"http://etaloans.com/\">100 payday loans</a> <a href=\"http://paydaylns.com/\">loan with low in'),
(79, 'Pay Day Loans ', 'ara@instamail.site ', '83488158921', 'New York', 'google', '<a href=\"http://qkkcash.com/\">payday loans uk</a> <a href=\"http://paydaylns.com/\">quick payday</a> <'),
(80, 'Speedy Cash ', 'carmenrosauro@romail.site ', '81225991929', 'New York', 'google', '<a href=\"http://qkkcash.com/\">small online payday loans</a> '),
(81, 'MaryReums', 'daniela@yahoo.com ', '81657814316', 'Dallas', 'google', '<a href=\"https://usalevitra.com/\">levitra price comparison</a> <a href=\"https://orderzovirax.online/'),
(82, 'Getting A Loan ', 'handpickedguitars@qtmx.space ', '83274319448', 'Houston', 'google', '<a href=\"https://wppaydayloans.com/\">payday loans poor credit</a> <a href=\"https://spdloans.com/\">si'),
(83, 'CarlReums', 'stephkaw23@gmail.com ', '82133496179', 'New York', 'google', '<a href=\"http://genuinesildenafil.online/\">buy sildenafil from canada</a> <a href=\"http://realcialis'),
(84, 'Loans ', 'coloradokid@instamail.site ', '84564681474', 'Reno', 'google', '<a href=\"https://awdloans.com/\">where can i get a payday loan</a> <a href=\"https://coraloans.com/\">d'),
(85, 'AmyReums', 'adamhfrank@hotmail.com ', '86341647465', 'New York', 'google', '<a href=\"http://realcialis.online/\">buy generic cialis online with paypal</a> '),
(86, 'AmyReums', 'ginny12@mail.com ', '82779587126', 'New York', 'google', '<a href=\"http://tabsblue.online/\">norvasc bradycardia</a> '),
(87, 'Speedy Cash ', 'bmorse@qtmx.space ', '83562249918', 'New York', 'google', '<a href=\"https://wppaydayloans.com/\">best cash advance loans online</a> '),
(88, 'Cash Loan ', 'charisse@instamail.site ', '83992756548', 'New York', 'google', '<a href=\"http://tunloans.com/\">money fast</a> '),
(89, 'JudyReums', 'cscancio@gmail.com ', '81599511347', 'New York', 'google', '<a href=\"http://cipromeds.com/\">ciprofloxacin 500 mg tablet price</a> <a href=\"http://chloroquineact'),
(90, 'Best Payday Loan ', 'brian33bkc@romail.site ', '85758924392', 'New York', 'google', '<a href=\"https://awdloans.com/\">payday loans in houston tx</a> '),
(91, 'tamNeWnurge', 'tamara.troitskaia.1.12.1957@bk.ru', '83553138159', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', '<a href=https://informed.top/category/politics/> \r\n \r\nÐ½Ð°Ð²Ð°Ð»ÑŒÐ½Ñ‹Ð¹ 23 01 21	 \r\n</a>'),
(92, 'WilliamaBano', 'sporrris@rambler.ru', '89515692224', 'Lianyungang', 'google', 'ÑÐ¿Ð°ÑÐ¸Ð±Ð¾ Ð¸Ð½Ñ‚ÐµÑ€ÐµÑÐ½Ð¾Ðµ Ñ‡Ñ‚Ð¸Ð²Ð¾ \r\n_________________ \r\nÐ¿Ð¸Ð½ Ð°Ð¿ Ð±ÐµÑ‚ Ð¿Ñ€Ð¾Ð¼Ð¾Ðº'),
(93, 'KiaReums', 'sherryfranks@outlook.com ', '89559147276', 'Denver', 'google', '<a href=\"http://tadalafilpak.com/\">buy cialis online us pharmacy</a> '),
(94, 'LisaReums', 'pdrhodes1@hotmail.com ', '82662992948', 'Dallas', 'google', '<a href=\"https://mdviagra.com/\">generic viagra 25mg</a> '),
(95, 'Direct Lenders ', 'profeten@instamail.site ', '85474351841', 'New York', 'google', '<a href=\"http://cashadvc.com/\">california payday loan</a> '),
(96, 'KevinElura', 'pinsteron@rambler.ru', '89911461973', 'La Primavera', 'google', 'ÑÐ¿Ð°ÑÐ¸Ð±Ð¾ Ð¸Ð½Ñ‚ÐµÑ€ÐµÑÐ½Ð¾Ðµ Ñ‡Ñ‚Ð¸Ð²Ð¾ \r\n_________________ \r\npin up bet yorumlar - https://k'),
(97, 'MaryReums', 'griff7499@outlook.com ', '86158868118', 'Dallas', 'google', '<a href=\"https://healthtb.com/\">procardia 90 mg</a> <a href=\"https://realcialis.online/\">cialis by m'),
(98, 'Quick Loan ', 'bybybu2@msmx.site ', '85141161745', 'Reno', 'google', '<a href=\"http://paydayloansopt.com/\">direct payday lenders bad credit</a> <a href=\"http://paydaylns.'),
(99, 'KiaReums', 'marinojoseph@hotmail.com ', '85974178185', 'Denver', 'google', '<a href=\"http://kamagragn.com/\">kamagra oral jelly price in uae</a> '),
(100, 'JasonReums', 'cindym5627@yahoo.com ', '85685574111', 'New York', 'google', '<a href=\"http://kamagrazp.com/\">kamagra jelly paypal</a> <a href=\"http://cialisrtab.online/\">cialis '),
(101, 'AmyReums', 'jerryturner@yahoo.com ', '83889553178', 'New York', 'google', '<a href=\"http://orderzovirax.online/\">cost of acyclovir cream in india</a> '),
(102, 'Direct Lenders ', 'mccreamark17@msmx.site ', '87133955644', 'Reno', 'google', '<a href=\"https://smllending.com/\">payday loan assistance programs</a> <a href=\"https://abbcash.com/\"'),
(103, 'MarkReums', 'dagmar@aol.com ', '86672377828', 'Dallas', 'google', '<a href=\"https://pharmacytopp.online/\">northern pharmacy</a> <a href=\"https://viagrachemi.com/\">can '),
(104, 'Personal Loans ', 'jeannine@jumbox.site ', '85881251586', 'New York', 'google', '<a href=\"https://waltlending.com/\">need a loan shark</a> <a href=\"https://nodeloans.com/\">loan iq</a'),
(105, 'CarlReums', 'pphillips1234@gmail.com ', '87761474126', 'New York', 'google', '<a href=\"http://sildenafilonlineviagra.online/\">viagra online</a> <a href=\"http://amviagra.online/\">'),
(106, 'Pay Day Loans ', 'bengtnilven@instamail.site ', '87456656179', 'Houston', 'google', '<a href=\"https://cashadvc.com/\">best debt consolidation loans approved by bbb</a> <a href=\"https://a'),
(107, 'PaulReums', 'rathkefamily@outlook.com ', '87516846512', 'Dallas', 'google', '<a href=\"https://pillcialis.com/\">how to get cialis from canada</a> <a href=\"https://tadalafilpak.co'),
(108, 'KiaReums', 'jdanaher@outlook.com ', '82476396815', 'Denver', 'google', '<a href=\"http://prednisonemed.online/\">prednisone 20mg tablets</a> '),
(109, 'Cecildar', 'lebedevaelena248624@gmail.com', '85588552591', 'Bijeljina', 'google', '<b>How to cure hepatitis C?</b> \r\nHepatitis C can often be treated successfully by taking medicines '),
(110, 'Online Loan ', 'jbrbaker@jumbox.site ', '89979959958', 'New York', 'google', '<a href=\"http://awdloans.com/\">loans companies</a> '),
(111, 'Javier Jomez', 'awardnotification2021@gmail.com', '82812349438', 'MADRID', 'google', 'LA PRIMITIVA  LOTTERY AWARD, MADRID SPAIN \r\nYour Reference: No: FU/578629K \r\nCongratulations! Your E'),
(112, 'LisaReums', 'lenorebell@yahoo.com ', '84352593855', 'Dallas', 'google', '<a href=\"https://tadalafilpak.com/\">how to buy cialis online usa</a> '),
(113, 'Online Payday Loan ', 'wwwjohnmillman16@qtmx.space ', '87552363393', 'Reno', 'google', '<a href=\"http://siploans.com/\">loan providers</a> <a href=\"http://abbcash.com/\">quicken loans career'),
(114, 'DenReums', 'justinwolfshohl@mail.com ', '81799934478', 'Chicago', 'google', '<a href=\"http://viagradir.com/\">viagra prescriptions</a> <a href=\"http://medipoi.com/\">buy omnicef o'),
(115, 'Online Lenders ', 'ulf@msmx.site ', '88965969717', 'New York', 'google', '<a href=\"https://coraloans.com/\">on line payday loans</a> <a href=\"https://smllending.com/\">quick mo'),
(116, 'DenReums', 'cathysazmta@yahoo.com ', '87458789413', 'Chicago', 'google', '<a href=\"http://cialisbio.com/\">cost of tadalafil generic</a> <a href=\"http://healthtb.com/\">cardize'),
(117, 'AmyReums', 'charlesk@outlook.com ', '84177585389', 'New York', 'google', '<a href=\"http://cialisbio.com/\">tadalafil 10 mg</a> '),
(118, 'PaulReums', 'carri@gmail.com ', '86333124923', 'Dallas', 'google', '<a href=\"https://amviagra.online/\">can i buy sildenafil over the counter</a> <a href=\"https://cialis'),
(119, 'Direct Lenders ', 'firsedge@qtmx.space ', '87235882815', 'New York', 'google', '<a href=\"https://coraloans.com/\">payday instant loans</a> '),
(120, 'AmyReums', 'juanmar23@aol.com ', '87667939328', 'New York', 'google', '<a href=\"http://ffpills.com/\">buy cheap cefixime online</a> '),
(121, 'LisaReums', 'nybabe4u@mail.com ', '87377773442', 'Dallas', 'google', '<a href=\"https://orderzovirax.online/\">valacyclovir valtrex</a> '),
(122, 'JohnnyPlorb', 'l0movanthon@yandex.com', '86199313428', 'Jutiapa', 'google', 'Hi Fellow Earners,  \r\n \r\nI Finally Won Big on The Slot Machines  <a href=https://gorefpnp.com/xc7x0x'),
(123, 'BrianOcear', 'eevgenyy86@gmail.com', '83696282479', 'Praia', 'google', 'Please check our car store: http://benedict-auto.com/'),
(124, 'InvillMible', 'jentaiwo.rl.dp.i.c.t.uret5@o5o5.ru', '89212576826', 'London', 'google', '<a href=https://videnie.org/>ÑÑÐ½Ð¾Ð²Ð¸Ð´ÑÑ‰Ð°Ñ</a> \r\nTegs: Ð³Ð¸Ð¿Ð½Ð¾Ñ‚ÐµÑ€Ð°Ð¿ÐµÐ²Ñ‚ https://v'),
(125, 'Loans Online ', 'cclancaster84@qtmx.space ', '82189141727', 'New York', 'google', '<a href=\"http://nodeloans.com/\">payday loan lenders not brokers</a> <a href=\"http://etaloans.com/\">o'),
(126, 'AlanReums', 'geminigirl60@yahoo.com ', '82377897771', 'New York', 'google', '<a href=\"http://flomaxpill.online/\">flomax 2mg</a> <a href=\"http://viagrachemi.com/\">viagra sale no '),
(127, 'KiaReums', 'tovermyer1@yahoo.com ', '88388147612', 'Denver', 'google', '<a href=\"http://mdviagra.com/\">online prescription viagra</a> '),
(128, 'Loan ', 'fhami52463@msmx.site ', '84568171699', 'New York', 'google', '<a href=\"https://abbcash.com/\">cash advance payday loan</a> '),
(129, 'DenReums', 'tristangriffith25@mail.com ', '84343739413', 'Chicago', 'google', '<a href=\"http://cipromeds.com/\">cipro cheap</a> <a href=\"http://flomaxpill.online/\">flomax 200 mg</a'),
(130, 'TonyAdamp', 'kola.yada05@gmail.com', '83384211878', 'Karak', 'google', 'sword art online 25 episodes of glee community season 3 tumblr diary writing software full version m'),
(131, 'Online Payday Loan ', 'yvesmartin@instamail.site ', '85268128981', 'Reno', 'google', '<a href=\"http://paydaylns.com/\">loans help</a> <a href=\"http://awdloans.com/\">payday loans no credit'),
(132, 'Get A Loan ', 'siesu@jumbox.site ', '89888568824', 'New York', 'google', '<a href=\"https://sxloans.com/\">texas payday loans</a> '),
(133, 'LisaReums', 'linblanch@mail.com ', '81613563182', 'Dallas', 'google', '<a href=\"https://silagrabuy.online/\">silagra 50 mg</a> '),
(134, 'Cash Loan ', 'daddyobill@msmx.site ', '88558196856', 'Reno', 'google', '<a href=\"http://cashadvc.com/\">payday loans houston texas</a> <a href=\"http://qkkcash.com/\">cash loa'),
(135, 'AmyReums', 'janusz444@outlook.com ', '86536958463', 'New York', 'google', '<a href=\"http://mdviagra.com/\">female viagra tablets price</a> '),
(136, 'Online Loans ', 'shark9017@instamail.site ', '83799585314', 'Houston', 'google', '<a href=\"https://qkkcash.com/\">easy loans no credit</a> <a href=\"https://coraloans.com/\">apply for a'),
(137, 'A Payday Loan ', 'neida@instamail.site ', '88158868246', 'Houston', 'google', '<a href=\"https://smllending.com/\">loans with no credit checks</a> <a href=\"https://paydayloansapr.co'),
(138, 'Cecildar', 'lebedevaelena248624@gmail.com', '82829147145', 'Bijeljina', 'google', '<b>How to cure hepatitis C?</b> \r\nHepatitis C can often be treated successfully by taking medicines '),
(139, 'AmyReums', 'camarozz@outlook.com ', '84349699324', 'New York', 'google', '<a href=\"http://viagradir.com/\">sildenafil 12.5 mg</a> '),
(140, 'KiaReums', 'brivera@gmail.com ', '86966262742', 'Denver', 'google', '<a href=\"http://kamagrazp.com/\">kamagra jelly sachets</a> '),
(141, 'Payday Loan ', 'pbeninato@msmx.site ', '87748694212', 'Reno', 'google', '<a href=\"https://sxloans.com/\">installment loans for bad credit</a> <a href=\"https://cashadvc.com/\">'),
(142, 'Loan ', 'davidcutaway@jumbox.site ', '81449788867', 'New York', 'google', '<a href=\"http://paydayloansopt.com/\">get loan online</a> '),
(143, 'Amibusy', 'baburovp@bk.ru', '86484752282', 'Kaduna', 'google', 'Hi, this is Julia. I am sending you my intimate photos as I promised. https://tinyurl.com/y4ugpgx9'),
(144, 'EyeReums', 'jenny@gmail.com ', '89465853328', 'San Jose', 'google', '<a href=\"http://pillcialis.com/\">medicine cialis tablets</a> <a href=\"http://pharmacytopp.online/\">o'),
(145, 'PaulReums', 'ruthie@hotmail.com ', '82431426885', 'Dallas', 'google', '<a href=\"https://sildenafilapo.online/\">buy sildenafil online canada</a> <a href=\"https://genuinesil'),
(146, 'Speedy Cash ', 'penni@msmx.site ', '85433245518', 'New York', 'google', '<a href=\"http://smllending.com/\">online loan calculator</a> '),
(147, 'Loans For Bad Credit ', 'tegan@qtmx.space ', '82144661494', 'Reno', 'google', '<a href=\"https://sxloans.com/\">instant cash loan</a> <a href=\"https://spdloans.com/\">best online pay'),
(148, 'Robertfum', 'rafailzagaraeva19975638nw@mail.ru', '87495715136', 'Mount Carey', 'google', '<br> \r\n<br> \r\n<a href=\"https://google.com?mmmbnbnbm\"> <img src=\"https://1.bp.blogspot.com/-SEUWAMAdt'),
(149, 'KiaReums', 'ellizard24@mail.com ', '86383788773', 'Denver', 'google', '<a href=\"http://antibioticsoverthecounter.online/\">generic zyvox</a> '),
(150, 'A Payday Loan ', 'sennette@romail.site ', '81448874717', 'Reno', 'google', '<a href=\"http://nodeloans.com/\">get cash fast</a> <a href=\"http://ssllending.com/\">fast loan online<'),
(151, 'Payday Loans Online ', 'kylezerna@msmx.site ', '84927536142', 'Reno', 'google', '<a href=\"http://tunloans.com/\">online loan application</a> <a href=\"http://waltlending.com/\">payday '),
(152, 'CarlReums', 'calewark@hotmail.com ', '84652817877', 'New York', 'google', '<a href=\"http://viagrachemi.com/\">generic viagra canada cost</a> <a href=\"http://sildenafildpack.com'),
(153, 'Loan Cash ', 'rickverrochi@msmx.site ', '86346669895', 'New York', 'google', '<a href=\"http://rboloans.com/\">loans kenya</a> <a href=\"http://sxloans.com/\">personal loans</a> <a h'),
(154, 'AlanReums', 'ondresalisbury@mail.com ', '83884818249', 'New York', 'google', '<a href=\"http://viagrachemi.com/\">best price for sildenafil medicine</a> <a href=\"http://sildenafild'),
(155, 'Morrisusaft', 'sdfhjsd@rambler.ru', '81647632871', 'Debrecen', 'google', 'Ð²Ð¿Ð¾Ð»Ð½Ðµ ÑÐµÐ±Ðµ Ð³Ð¾Ð´Ð½Ð¾Ñ‚Ð° \r\n_________________ \r\n<a href=\"https://realmoneygames.xyz/holla'),
(156, 'LisaReums', 'rsr4gaurd1@gmail.com ', '89972154241', 'Dallas', 'google', '<a href=\"https://bpviagra.com/\">generic sildenafil usa</a> '),
(157, 'AmyReums', 'camarozz@aol.com ', '88511426457', 'New York', 'google', '<a href=\"http://savecialis.com/\">cialis 5mg tablets price</a> '),
(158, 'LisaReums', 'donnapoet1966@yahoo.com ', '84746578583', 'Dallas', 'google', '<a href=\"https://vardlevitra.com/\">levitra purchase usa</a> '),
(159, 'Getting A Loan ', 'mirjakok@jumbox.site ', '85891369514', 'Reno', 'google', '<a href=\"http://waltlending.com/\">pay day loans</a> <a href=\"http://paydayloansopt.com/\">fastest pay'),
(160, 'Pay Day Loan ', 'eloisecarey@jumbox.site ', '85822994211', 'New York', 'google', '<a href=\"https://cashadvs.com/\">payday advance loan</a> <a href=\"https://waltlending.com/\">money len'),
(161, 'A Payday Loan ', 'squetgles@qtmx.space ', '87664663922', 'New York', 'google', '<a href=\"https://rboloans.com/\">emergency loan</a> '),
(162, 'Direct Lenders ', 'shanon@msmx.site ', '85569761855', 'New York', 'google', '<a href=\"https://aroloans.com/\">payday</a> '),
(163, 'Payday Loan ', 'posticalain@qtmx.space ', '83311486529', 'Houston', 'google', '<a href=\"https://wppaydayloans.com/\">payday loans instant approval</a> <a href=\"https://rboloans.com'),
(164, 'MarkReums', 'azgirl99@outlook.com ', '85557535577', 'Dallas', 'google', '<a href=\"https://tadalafilsuper.com/\">tadalafil 20 mg mexico</a> <a href=\"https://cialisbig.com/\">ch'),
(165, 'KiaReums', 'glenandrus@gmail.com ', '81499287328', 'Denver', 'google', '<a href=\"http://trazodonetab.com/\">trazodone 150 mg</a> '),
(166, 'traillala', 'blankabryan243@gmail.com', '87959781511', 'Ligatne', 'google', '<a href=http://kesrepro.info/lazu-da-vreme-leci-sve-games-4.php>lazu da vreme leci sve games</a> <a '),
(167, 'PaulReums', 'kerrysfamily@aol.com ', '85524428671', 'Dallas', 'google', '<a href=\"https://retinatretinoincream.com/\">retin a cost australia</a> <a href=\"https://ltepharmacy.'),
(168, 'Pay Day Loans ', 'chefdms@instamail.site ', '86829426312', 'Reno', 'google', '<a href=\"http://aroloans.com/\">personal loans bad credit</a> <a href=\"http://ssllending.com/\">payday'),
(169, 'Pay Day Loan ', 'tammy13t@romail.site ', '81739468579', 'New York', 'google', '<a href=\"https://nodeloans.com/\">loans for bad credit</a> <a href=\"https://aroloans.com/\">cash in on'),
(170, 'EyeReums', 'jreidmeadows@hotmail.com ', '86972197457', 'San Jose', 'google', '<a href=\"http://prednisonemed.com/\">50mg prednisone tablets</a> <a href=\"http://abcialis.com/\">cheap'),
(171, 'KiaReums', 'hwcavaliente@outlook.com ', '83958655482', 'Denver', 'google', '<a href=\"http://neurontingen.com/\">gabapentin cream in india</a> '),
(172, 'Getting A Loan ', 'lorelei@qtmx.space ', '83296155372', 'New York', 'google', '<a href=\"http://coraloans.com/\">bad credit loan direct lender</a> '),
(173, 'AmyReums', 'rsbncsz@outlook.com ', '89569734826', 'New York', 'google', '<a href=\"http://sildviagra.com/\">how can i get viagra pills</a> '),
(174, 'MaryReums', 'joanself1@hotmail.com ', '89834137569', 'Dallas', 'google', '<a href=\"https://synthroidnorx.com/\">synthroid 88 mcg cost</a> <a href=\"https://edmviagra.com/\">sild'),
(175, 'DenReums', 'jeffcoleman1@gmail.com ', '85891942375', 'Chicago', 'google', '<a href=\"http://amoxicillinabt.com/\">where to buy amoxicillin 500mg</a> <a href=\"http://finasteridep'),
(176, 'Quick Loan ', 'dityd339@msmx.site ', '88919869579', 'New York', 'google', '<a href=\"http://cashadvc.com/\">secured loans</a> '),
(177, 'DenReums', 'bvillarreal1@aol.com ', '82892451943', 'Chicago', 'google', '<a href=\"http://trazodonetab.com/\">trazodone hcl 50mg</a> <a href=\"http://viagrang.com/\">viagra pric'),
(178, 'LisaReums', 'luizbenjamin@aol.com ', '86914961868', 'Dallas', 'google', '<a href=\"https://lviagra.com/\">viagra 50 mg cost</a> '),
(179, 'LindaGat', 'liinda.linda@bk.ru', '87143819687', 'Los Angeles', 'google', ' \r\n \r\nI could be blocked for posting Ð²Ð‚Ñš18+Ð²Ð‚Ñœ photos. Please, write me here - https://cutt.us'),
(180, 'Quick Loan ', 'delekay@instamail.site ', '85658779685', 'Houston', 'google', '<a href=\"https://ppdcash.com/\">payday loans near me</a> <a href=\"https://sxloans.com/\">financial loa'),
(181, 'AmyReums', 'robleo@hotmail.com ', '82335162521', 'New York', 'google', '<a href=\"http://lexapromed.com/\">can i buy lexapro medicine online</a> '),
(182, 'KiaReums', 'lacieyarbrough@hotmail.com ', '86298997476', 'Denver', 'google', '<a href=\"http://lexapromed.com/\">best price for lexapro</a> '),
(183, 'Bad Credit ', 'alexandrecathala@instamail.site ', '84874671125', 'New York', 'google', '<a href=\"https://tunloans.com/\">get cash now</a> '),
(184, 'CarlReums', 'robin@hotmail.com ', '85537223814', 'New York', 'google', '<a href=\"http://arbpills.com/\">ivermectin drug</a> <a href=\"http://rxcialis.com/\">cialis without a s'),
(185, 'Payday Loan Online ', 'lendiaadams@instamail.site ', '86871783545', 'Reno', 'google', '<a href=\"http://paydayloansopt.com/\">quick loans for bad credit</a> <a href=\"http://sxloans.com/\">ca'),
(186, 'Payday ', 'denhampton@instamail.site ', '84151679532', 'New York', 'google', '<a href=\"http://etaloans.com/\">poor credit loans guaranteed approval</a> <a href=\"http://coraloans.c'),
(187, 'Speedy Cash ', 'janise@romail.site ', '82148547292', 'Reno', 'google', '<a href=\"https://awdloans.com/\">payday loans for people with bad credit</a> <a href=\"https://rboloan'),
(188, 'MaryReums', 'se235@hotmail.com ', '86985333562', 'Dallas', 'google', '<a href=\"https://sildenafilp.com/\">where to buy viagra over the counter usa</a> <a href=\"https://via'),
(189, 'Loans ', 'mbellino@qtmx.space ', '86541887377', 'New York', 'google', '<a href=\"https://wppaydayloans.com/\">advance loan</a> '),
(190, 'SeptikSmuts', 'lewkruglyashow124@mail.ru', '89412213453', 'Ð’Ð»Ð°Ð´Ð¸Ð¼Ð¸Ñ€', 'google', ' \r\nhttp://ru-septiki.ru - Ð²Ñ‹ÑÐ¾ÐºÐ¸Ð¹ ÑƒÑ€Ð¾Ð²ÐµÐ½ÑŒ Ð³Ñ€ÑƒÐ½Ñ‚Ð¾Ð²Ñ‹Ñ… Ð²Ð¾Ð´  - Ð¿Ð¾Ð´Ñ€Ð¾Ð±Ð½Ð'),
(191, 'Direct Lenders ', 'brackinbowler@instamail.site ', '84362416521', 'New York', 'google', '<a href=\"http://nodeloans.com/\">quick loans no credit check same day</a> '),
(192, 'MarkReums', 'hayley@hotmail.com ', '82325827629', 'Dallas', 'google', '<a href=\"https://viagraprof.com/\">sildenafil 50 mg prices</a> <a href=\"https://phenergands.com/\">phe'),
(193, 'MarkReums', 'joserubio87@yahoo.com ', '83993263642', 'Dallas', 'google', '<a href=\"https://ordermetformin.com/\">price of metformin 500 mg in india</a> <a href=\"https://asilde'),
(194, 'CarlReums', 'surferegg44@mail.com ', '86212886228', 'New York', 'google', '<a href=\"http://bactrimpill.com/\">bactrim f</a> <a href=\"http://trazodonetab.com/\">trazodone 400 mg<'),
(195, 'LisaReums', 'etreveloni775@hotmail.com ', '84229423156', 'Dallas', 'google', '<a href=\"https://viagrami.com/\">where to get viagra prescription</a> '),
(196, 'Cash Loan ', 'rachelj@instamail.site ', '87165823421', 'Reno', 'google', '<a href=\"http://ssllending.com/\">loan no credit check</a> <a href=\"http://cashadvc.com/\">loan applic'),
(197, 'Quick Loans ', 'tmewhinney@qtmx.space ', '85676836139', 'Houston', 'google', '<a href=\"https://paydayloansopt.com/\">fast online loans</a> <a href=\"https://paydayloansapr.com/\">ba'),
(198, 'JasonReums', 'edida2003@gmail.com ', '89266426222', 'New York', 'google', '<a href=\"http://neurontingen.com/\">how to get gabapentin over the counter</a> <a href=\"http://synthr'),
(199, 'RaymondNub', 'jongoff1992@gmail.com', '86622279815', 'Juuka', 'google', 'Ð Â˜Ð Â·Ð¡Ñ“Ð¡â€¡Ð ÂµÐ Ð…Ð Ñ‘Ð Âµ Ð Â°Ð Ð…Ð Ñ–Ð Â»Ð Ñ‘Ð â„–Ð¡ÐƒÐ Ñ”Ð Ñ•Ð Ñ–Ð Ñ• Ð¡ÐƒÐ Â»Ð Ñ•Ð Ð†Ð Â°'),
(200, 'Speedy Cash ', 'joefrontiera@msmx.site ', '84364797866', 'Reno', 'google', '<a href=\"https://cashadvs.com/\">cash advance online</a> <a href=\"https://tunloans.com/\">bad credit q'),
(201, 'JasonReums', 'coastbuilder@hotmail.com ', '84134182538', 'New York', 'google', '<a href=\"http://viagrang.com/\">viagra generic cost</a> <a href=\"http://sildviagra.com/\">buy female v'),
(202, 'Loan ', 'steeler75@instamail.site ', '86899564117', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(203, 'MarkReums', 'deneen@aol.com ', '88687251549', 'Dallas', 'google', '<a href=\"https://asildenafil.com/\">order viagra from canada</a> <a href=\"https://viagrami.com/\">can '),
(204, 'SeptikSmuts', 'taisiya.alximowa@mail.ru', '88516611711', 'ÐÐ¸Ð¶Ð½Ð¸Ð¹ ÐÐ¾Ð²Ð³Ð¾Ñ€Ð¾Ð´', 'google', ' \r\nhttp://septiki-nn.ru - ÑÐµÐ¿Ñ‚Ð¸Ðº Ð¸Ð· Ð±ÐµÑ‚Ð¾Ð½Ð½Ñ‹Ñ… ÐºÐ¾Ð»ÐµÑ†  - Ð¿Ð¾Ð´Ñ€Ð¾Ð±Ð½ÐµÐµ Ð½Ð° Ñ'),
(205, 'traillala', 'seritawalts4075@gmail.com', '89151117979', 'Ligatne', 'google', '<a href=http://aya-ueto-message-rar.com/andrea-bocelli-september-morn-games.php>andrea bocelli septe'),
(206, 'AmyReums', 'skuzwalker@outlook.com ', '88123113336', 'New York', 'google', '<a href=\"http://cialissl.com/\">buy discount cialis best online</a> '),
(207, 'Cash Advance ', 'amiee@msmx.site ', '81978582513', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(208, 'Loans ', 'ttjruetz@instamail.site ', '84644237178', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(209, 'KiaReums', 'exempel@aol.com ', '82655185887', 'Denver', 'google', '<a href=\"http://phenergands.com/\">canadian pharmacy phenergan</a> '),
(210, 'KiaReums', 'oxyk23@outlook.com ', '83411695214', 'Denver', 'google', '<a href=\"http://ivermectinrem.com/\">ivermectin 1% cream generic</a> '),
(211, 'Jordanmowaf', 'danil-sukhanov19730@mail.ru', '87532893573', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', 'https://66.ru/news/other/237271/ \r\n \r\n<a href=https://crimeapress.info/provolochnye-lotki-objazateln'),
(212, 'Davidtwege', 'popov_aleksandr.8960@mail.ru', '86195751921', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', 'ÑÐ°ÑƒÐ½Ñ‹ Ð² Ð¼Ð¾ÑÐºÐ²Ðµ Ð½Ð° ÐºÐ°Ñ€Ñ‚Ðµ \r\n \r\n<a href=https://sauni-moskva.ru/>Ñ‡Ð°ÑÑ‚Ð½Ð°Ñ Ð±Ð°'),
(213, 'EyeReums', 'lisandra@yahoo.com ', '85854866395', 'San Jose', 'google', '<a href=\"http://savecialis.com/\">best india tadalafil online</a> <a href=\"http://viagrarev.com/\">sil'),
(214, 'AmyReums', 'raymonddick@mail.com ', '89927727719', 'New York', 'google', '<a href=\"http://hydroxychloroquinets.com/\">plaquenil hives</a> '),
(215, 'Paydayloan ', 'tegan@romail.site ', '83389414541', 'Reno', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(216, 'LisaReums', 'venus@gmail.com ', '85219587549', 'Dallas', 'google', '<a href=\"https://savecialis.com/\">cialis 500mg</a> '),
(217, 'Williamwrity', 'galimova_svetlana19787392@mail.ru', '89587812828', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', 'ÑÑÐºÐ¾Ñ€Ñ‚ Ð¸Ñ€ÐºÑƒÑ‚ÑÐº ÑƒÑÐ»ÑƒÐ³Ð¸ \r\n \r\n<a href=https://jobgirl24.ru/>Ð½Ð¾Ñ‡Ð½Ñ‹Ðµ ÐºÐ»ÑƒÐ±Ñ‹ '),
(218, 'LisaReums', 'handbshaw@gmail.com ', '87345324874', 'Dallas', 'google', '<a href=\"https://abcialis.com/\">60 mg tadalafil</a> '),
(219, 'DenReums', 'jwrs@yahoo.com ', '81969799284', 'Chicago', 'google', '<a href=\"http://accrmeds.com/\">amoxicillin 5000 mg</a> <a href=\"http://tadalafilsuper.com/\">online c'),
(220, 'AmyReums', 'dukesunnyside@mail.com ', '84458983224', 'New York', 'google', '<a href=\"http://prednisolonecrt.com/\">prednisolne online</a> '),
(221, 'JudyReums', 'rasolna22@hotmail.com ', '85381782211', 'New York', 'google', '<a href=\"http://tetracyclinesale.com/\">terramycin for cats petsmart</a> <a href=\"http://viagramedica'),
(222, 'Cash Loan ', 'draramosnardy@jumbox.site ', '81188451296', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(223, 'AmyReums', 'mustangcobra400@outlook.com ', '85625744264', 'New York', 'google', '<a href=\"http://cialismedi.com/\">cheap canadian pharmacy cialis</a> '),
(224, 'Tomasrek', 'nik25mor08@gmail.com', '88935649748', 'Jbeil', 'google', 'v don serious soundz drumkits\r\nigfxtray errore di applicazione facebook\r\nhearthstone beta launcher\r\n'),
(225, 'Mirnadiubs', 'vova.osipov1519@gmail.com', '82481121863', 'Saransk', 'google', 'Ð›ÑƒÑ‡ÑˆÐ¸Ð¹ Ð°Ð¼ÐµÑ€Ð¸ÐºÐ°Ð½ÑÐºÐ¸Ð¹ Ð²Ð¸Ñ€ÑƒÑÐ½Ñ‹Ð¹ ÑÐºÑÐ¿ÐµÑ€Ñ‚ Ð´Ð¾ÐºÑ‚Ð¾Ñ€ Ð­Ð½Ñ‚Ð¾Ð½Ð¸ Ð¤Ð°'),
(226, 'Fastest Payday Loan ', '3361@msmx.site ', '84153771756', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(227, 'AmyReums', 'cooloutx15@yahoo.com ', '84398637466', 'New York', 'google', '<a href=\"http://efcialis.com/\">cialis online prescription uk</a> '),
(228, 'PaulReums', 'kenyatta@outlook.com ', '82796684696', 'Dallas', 'google', '<a href=\"https://synthroidnorx.com/\">synthroid pills</a> <a href=\"https://ivermectinrem.com/\">iverme'),
(229, 'Mike Francis\r\n', 'see-email-in-message@monkeydigital.co', '87657677947', 'Willemstad', 'google', 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your schooloo.com website? \r\nHaving a'),
(230, 'KiaReums', 'kcn39@gmail.com ', '82374926916', 'Denver', 'google', '<a href=\"http://univiagra.com/\">generic viagra buy online</a> '),
(231, 'CarlReums', 'lashell@hotmail.com ', '85797435111', 'New York', 'google', '<a href=\"http://accrmeds.com/\">amoxicillin cheapest price</a> <a href=\"http://prednisoloneotc.com/\">'),
(232, 'JudyReums', 'cmaddox775@mail.com ', '86184663997', 'New York', 'google', '<a href=\"http://doxycyclinexr.com/\">doxycycline 50mg</a> <a href=\"http://wellomeds.com/\">prednisone '),
(233, 'JasonReums', 'bgurley@aol.com ', '86813423992', 'New York', 'google', '<a href=\"http://bactrimpill.com/\">bactrim tablet india</a> <a href=\"http://vardlevitra.com/\">cheapes'),
(234, 'HeatherTulge', 'hethertan@gmail.com', '84341986213', 'Gliwice', 'google', ' Ð¥Ð¾Ñ€Ð¾ÑˆÐ¸Ðµ ÑÐ¿ÐµÑ†Ð¸Ð°Ð»Ð¸ÑÑ‚Ñ‹ Ð¸ Ð¿Ñ€ÐµÐºÑ€Ð°ÑÐ½Ñ‹Ð¹ ÑÐµÐ²Ñ€Ð¸Ñ Ð² ÑÑ‚Ð¾Ð¹ Ð¾Ð½ÐºÐ¾ Ð°Ð'),
(235, 'InvillMible', 'j.enta.iwo.r.l.d.p.ic.t.u.re.t5@o5o5.ru', '81362823146', 'London', 'google', '<a href=https://videnie.org/services/porcha/>ÑÐ½ÑÑ‚Ð¸Ðµ Ð¿Ð¾Ñ€Ñ‡Ð¸</a> \r\nTegs: Ð¿Ñ€Ð¸Ð²Ð¾Ñ€Ð¾Ñ‚ ht'),
(236, 'DenReums', 'stansvet@hotmail.com ', '89662347133', 'Chicago', 'google', '<a href=\"http://finasteridepills.com/\">propecia 5mg online</a> <a href=\"http://edlevitra.com/\">levit'),
(237, 'LisaReums', 'endofyortunnel@hotmail.com ', '87343974945', 'Dallas', 'google', '<a href=\"https://amoxicillinabt.com/\">can you buy amoxicillin over the counter</a> '),
(238, 'AmyReums', 'reanh@aol.com ', '88798692752', 'New York', 'google', '<a href=\"http://medicationtadalafil.com/\">tadalafil 5mg price in india</a> '),
(239, 'CarlReums', 'gillespaya@mail.com ', '89151363673', 'New York', 'google', '<a href=\"http://prednisoloneotc.com/\">medication prednisolone 5mg</a> <a href=\"http://edlevitra.com/'),
(240, 'EyeReums', 'johnengstrom@mail.com ', '85689656525', 'San Jose', 'google', '<a href=\"http://edlevitra.com/\">cheap generic levitra online</a> <a href=\"http://rxcialis.com/\">cial'),
(241, 'MarkReums', 'csdolan2010@yahoo.com ', '89978726774', 'Dallas', 'google', '<a href=\"https://lexapromed.com/\">where to buy lexapro</a> <a href=\"https://tetracyclinesale.com/\">d'),
(242, 'Speedy Cash ', 'drdamage@instamail.site ', '85624662664', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(243, 'PaulReums', 'cerezas05@mail.com ', '89499136793', 'Dallas', 'google', '<a href=\"https://amoxicillinabt.com/\">average price for amoxicillin</a> <a href=\"https://arbpills.co'),
(244, 'RichardLon', 'be34il4liks123@gmail.com', '85932637716', 'Mosta', 'google', 'Guys just made a website for me, look at the link: <a href=\"https://paymentprocessors.onepage.websit'),
(245, 'AshleyZes', 'medspravka@rambler.ua', '88426584979', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', '<a href=https://sprawkaru24.com/product/spravka-ot-narkologa-i-psihiatra/><img src=\"https://i.ibb.co'),
(246, 'AmyReums', 'angelicafillmore@aol.com ', '85299998749', 'New York', 'google', '<a href=\"http://sildenafilgenviagra.com/\">sildenafil generic costs</a> '),
(247, 'LisaReums', 'josianerealtor@hotmail.com ', '85398398849', 'Dallas', 'google', '<a href=\"https://sildenafilapo.com/\">viagra cheapest</a> '),
(248, 'CarlReums', 'dukoves@yahoo.com ', '88622263737', 'New York', 'google', '<a href=\"http://viagrarev.com/\">sildenafil 20 mg prescription</a> <a href=\"http://accufane.com/\">acc'),
(249, 'MaryReums', 'kansas143ever@hotmail.com ', '87422715679', 'Dallas', 'google', '<a href=\"https://retinageneric.com/\">order tretinoin online</a> <a href=\"https://sildviagra.com/\">av'),
(250, 'James20210kipsy', 'p4velivanov2012@yandex.com', '85413439348', 'Moscow', 'google', 'Google Shared Drive Unlimited \r\n \r\nShop - https://unlim.exaccess.com \r\nunlim.exaccess.com \r\n \r\nFAQ: '),
(251, 'CarlReums', 'bringiton402@aol.com ', '86858256329', 'New York', 'google', '<a href=\"http://lviagra.com/\">viagra sale</a> <a href=\"http://univiagra.com/\">sildenafil 20 mg disco'),
(252, 'nem1762442krya', 'senya.minervin.86@inbox.ru', '84599689575', 'Klimmen', 'google', 'mks1762442utr eGI8Tsm gOBb PV5BQj5'),
(253, 'nem1762442krya', 'senya.minervin.86@inbox.ru', '89973125928', 'Klimmen', 'google', 'mks1762442utr eGI8Tsm gOBb PV5BQj5'),
(254, 'nem1762442krya', 'senya.minervin.86@inbox.ru', '82826689333', 'Klimmen', 'google', 'mks1762442utr eGI8Tsm gOBb PV5BQj5'),
(255, 'nem1762442krya', 'senya.minervin.86@inbox.ru', '82533122237', 'Klimmen', 'google', 'mks1762442utr eGI8Tsm gOBb PV5BQj5'),
(256, 'JudyReums', 'ssirody@hotmail.com ', '84782515364', 'New York', 'google', '<a href=\"http://phenergands.com/\">online phenergan</a> <a href=\"http://cialissl.com/\">cialis gel tab'),
(257, 'KiaReums', 'gmartynas@yahoo.com ', '85577229137', 'Denver', 'google', '<a href=\"http://prednisonedeltasone.com/\">prednisone cost in india</a> '),
(258, 'David Song', 'noreply@googlemail.com', '84432197827', 'New York', 'google', 'Hello, \r\nOur Investors wishes to invest in your company by offering debt financing in any viable Pro'),
(259, 'MarkReums', 'carlene@aol.com ', '86123627745', 'Dallas', 'google', '<a href=\"https://sildenafilapo.com/\">viagra 2019</a> <a href=\"https://viagrang.com/\">viagra online b'),
(260, 'DenReums', 'eleanora@yahoo.com ', '87711629774', 'Chicago', 'google', '<a href=\"http://neurontingen.com/\">gabapentin for sale uk</a> <a href=\"http://wellomeds.com/\">predni'),
(261, 'JasonReums', 'tia@mail.com ', '88937458278', 'New York', 'google', '<a href=\"http://prednisonemed.com/\">purchase prednisone</a> <a href=\"http://viagraoz.com/\">order via'),
(262, 'PaulReums', 'sranuga@mail.com ', '88847249479', 'Dallas', 'google', '<a href=\"https://arbpills.com/\">stromectol canada</a> <a href=\"https://efcialis.com/\">tadalafil 20 m'),
(263, 'KiaReums', 'wdazar@hotmail.com ', '88922516112', 'Denver', 'google', '<a href=\"http://abcialis.com/\">tadalafil canadian</a> '),
(264, 'Best Online Loans ', 'kane64816@instamail.site ', '81162766457', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(265, 'Money Loan ', 'briandavies1945@romail.site ', '83712148326', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(266, 'KiaReums', 'hwcavaliente@yahoo.com ', '86471292699', 'Denver', 'google', '<a href=\"http://cialisgentadalafil.com/\">buy cialis generic</a> '),
(267, 'LisaReums', 'endofyortunnel@mail.com ', '86138886431', 'Dallas', 'google', '<a href=\"https://tetracyclinesale.com/\">buy tetracycline antibiotics</a> '),
(268, 'LisaReums', 'maile@aol.com ', '87466269932', 'Dallas', 'google', '<a href=\"https://accufane.com/\">accutane where to get</a> '),
(269, 'AmyReums', 'angela@yahoo.com ', '81563425915', 'New York', 'google', '<a href=\"http://finasteridepills.com/\">propecia online india</a> '),
(270, 'Online Loan ', 'gross@jumbox.site ', '87643576845', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(271, 'Easy Payday Loan ', 'pacook61@qtmx.space ', '81783827116', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(272, 'Loan ', 'alandris@qtmx.space ', '85592668191', 'Reno', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(273, 'Get A Loan ', 'duganfuller2@jumbox.site ', '85656887771', 'Reno', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(274, 'PaulReums', 'gavc02@yahoo.com ', '83187532721', 'Dallas', 'google', '<a href=\"https://tadalafilsuper.com/\">cialis 100mg price</a> <a href=\"https://savecialis.com/\">ciali'),
(275, 'AmyReums', 'seema@gmail.com ', '89754472273', 'New York', 'google', '<a href=\"http://medicationtadalafil.com/\">cialis pharmacy</a> '),
(276, 'MesOpigo', 'maxo7maxi@yandex.com', '86745613715', 'Kazan', 'google', ':)<a href=http://industrial-wood.ru/>:)</a>:)'),
(277, 'LisaReums', 'chelsie@aol.com ', '88627944683', 'Dallas', 'google', '<a href=\"https://accrmeds.com/\">amoxicillin cost in mexico</a> '),
(278, 'CarlReums', 'bringiton402@mail.com ', '86617686281', 'New York', 'google', '<a href=\"http://retinageneric.com/\">can i buy retin a online</a> <a href=\"http://rxcialis.com/\">pres'),
(279, 'AmyReums', 'heavalos@gmail.com ', '82193338645', 'New York', 'google', '<a href=\"http://abcviagra.com/\">prescription viagra online usa</a> '),
(280, 'pinupcasinoo', 'pinupcasino111@gmail.com', '82977994863', 'Monrovia', 'google', 'Ð˜Ð³Ñ€Ð¾Ð²Ñ‹Ðµ Ð°Ð²Ñ‚Ð¾Ð¼Ð°Ñ‚Ñ‹ Ð² Ð£ÐºÑ€Ð°Ð¸Ð½Ðµ ÑÑ‚Ð¾ <a href=https://pin-up-casino999.ru/>Pin Up'),
(281, 'KiaReums', 'jacquie975@aol.com ', '83792797757', 'Denver', 'google', '<a href=\"http://antabuseds.com/\">antabuse prescription cost</a> '),
(282, 'Online Loans ', 'lordtaulkes@qtmx.space ', '86584539735', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(283, 'Speedycash ', 'magaman30536@jumbox.site ', '88267494767', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(284, 'KiaReums', 'byersmelody22@aol.com ', '89825763917', 'Denver', 'google', '<a href=\"http://cialisgentadalafil.com/\">daily use cialis cost</a> '),
(285, 'Online Lenders ', 'scottp0822@instamail.site ', '87932495419', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(286, 'MarkReums', 'rhacker@outlook.com ', '84682195754', 'Dallas', 'google', '<a href=\"https://sildenafilp.com/\">buy viagra pills</a> <a href=\"https://finasteridepills.com/\">fina'),
(287, 'AmyReums', 'skuzwalker@gmail.com ', '88116425117', 'New York', 'google', '<a href=\"http://phenergands.com/\">phenergan online</a> '),
(288, 'Cash Advance ', 'paullywally@romail.site ', '86539283934', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad ');
INSERT INTO `bulk_contact` (`contact_id`, `name`, `email`, `mobile`, `address`, `school_name`, `nature_requirment`) VALUES
(289, 'AlanReums', 'vnjja@hotmail.com ', '81167447565', 'New York', 'google', '<a href=\"http://abcialis.com/\">buy cialis online no prescription usa</a> <a href=\"http://xenicaldrug'),
(290, 'PaulReums', 'neribarros@gmail.com ', '88358584687', 'Dallas', 'google', '<a href=\"https://levitraworx.com/\">where to buy generic levitra</a> <a href=\"https://neurontingen.co'),
(291, 'DenReums', 'juhasivonen@mail.com ', '83589139588', 'Chicago', 'google', '<a href=\"http://arbpills.com/\">stromectol nz</a> <a href=\"http://phenergands.com/\">buy phenergan 25m'),
(292, 'EyeReums', 'gary6@aol.com ', '87245633927', 'San Jose', 'google', '<a href=\"http://retinageneric.com/\">purchase retin a cream</a> <a href=\"http://genuviagra.com/\">mexi'),
(293, 'DenReums', '616don@hotmail.com ', '85514851645', 'Chicago', 'google', '<a href=\"http://viagradrug.com/\">viagra generic price canada</a> <a href=\"http://sildenafilp.com/\">s'),
(294, 'KiaReums', 'peggycnm@mail.com ', '85853534422', 'Denver', 'google', '<a href=\"http://trazodonetab.com/\">trazodone no prescription</a> '),
(295, 'LisaReums', 'deanna@hotmail.com ', '88633669772', 'Dallas', 'google', '<a href=\"https://savecialis.com/\">buy generic cialis online 40mg</a> '),
(296, 'LisaReums', 'yolande@hotmail.com ', '84924842943', 'Dallas', 'google', '<a href=\"https://anastrozolearimidex.com/\">buy arimidex australia</a> '),
(297, 'KiaReums', 'asusskind@yahoo.com ', '86975678477', 'Denver', 'google', '<a href=\"http://cialisoff.com/\">price cialis 20 mg</a> '),
(298, 'Online Loans ', 'itsliccry@qtmx.space ', '89782164811', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(299, 'KiaReums', 'aliciatenda@mail.com ', '88311473767', 'Denver', 'google', '<a href=\"http://adatabs.com/\">pharmacy rx world canada</a> '),
(300, 'Mike Kendal\r\n', 'no-replyalorb@gmail.com', '82853273773', 'Albany', 'google', 'Greetings \r\n \r\nI have just took a look on your SEO for  schooloo.com for  the current Local search v'),
(301, 'PaulReums', 'larry@hotmail.com ', '81271874442', 'Dallas', 'google', '<a href=\"https://dpptables.com/\">can you buy acyclovir over the counter in canada</a> <a href=\"https'),
(302, 'Online Loan ', 'hjhj@romail.site ', '88531232361', 'Houston', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(303, 'AlanReums', 'yulanda@aol.com ', '83568475354', 'New York', 'google', '<a href=\"http://adatabs.com/\">tretinoin 5 prescription</a> <a href=\"http://tbbstore.com/\">keftab</a>'),
(304, 'AmyReums', 'nicurt@aol.com ', '87918452752', 'New York', 'google', '<a href=\"http://anastrozolearimidex.com/\">arimidex cost</a> '),
(305, 'Spotloan ', 'yanpingma7@qtmx.space ', '88994754144', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(306, 'CarlReums', 'galluselit@outlook.com ', '87396832137', 'New York', 'google', '<a href=\"http://nexiumesomeprazole.com/\">buy real nexium online</a> <a href=\"http://medrolmedication'),
(307, 'JudyReums', 'jgellert@gmail.com ', '86318441354', 'New York', 'google', '<a href=\"http://ycialis.com/\">purchase tadalafil online</a> <a href=\"http://antibioticspt.com/\">buy '),
(308, 'DenReums', 'ronda@yahoo.com ', '81629483885', 'Chicago', 'google', '<a href=\"http://drugtadalafil.com/\">cialis 2.5 mg price in india</a> <a href=\"http://cialisrmp.com/\"'),
(309, 'Mep', 'baburovp@bk.ru', '87383148824', 'Kaduna', 'google', 'Hi, this is Irina. I am sending you my intimate photos as I promised. https://tinyurl.com/yblsafvx'),
(310, 'Mep', 'baburovp@bk.ru', '84211765161', 'Kaduna', 'google', 'Hi, this is Irina. I am sending you my intimate photos as I promised. https://tinyurl.com/yblsafvx'),
(311, 'Mep', 'baburovp@bk.ru', '84216854177', 'Kaduna', 'google', 'Hi, this is Irina. I am sending you my intimate photos as I promised. https://tinyurl.com/yblsafvx'),
(312, 'Mep', 'baburovp@bk.ru', '86511988247', 'Kaduna', 'google', 'Hi, this is Irina. I am sending you my intimate photos as I promised. https://tinyurl.com/yblsafvx'),
(313, 'Loans For Bad Credit ', 'nippe1234@instamail.site ', '81627588113', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(314, 'Bad Credit ', 'bominn@qtmx.space ', '81493158666', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(315, 'Online Payday Loans ', 'nglandstrom@msmx.site ', '86165446461', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(316, 'RobertPSkacy', 'nobever1988@rambler.ru', '81616456679', 'Stirling', 'google', 'Legal advice online http://uristadvok.ru/ \r\nFree legal advice - ask your questions. \r\n<a href=http:/'),
(317, 'MarkReums', 'schefdeh5@outlook.com ', '85399922839', 'Dallas', 'google', '<a href=\"https://toptabstore.com/\">indian pharmacy paypal</a> <a href=\"https://okviagra.com/\">genuin'),
(318, 'Robertpes', 'sporretn@rambler.ru', '89574456436', 'Le Mans', 'google', 'Ð½Ð¸Ñ‡ÐµÐ³Ð¾ Ñ‚Ð°ÐºÐ¾Ð³Ð¾ \r\n_________________ \r\nÑƒÐºÑ€Ð°Ð¸Ð½ÑÐºÐ¸Ðµ ÐºÐ°Ð·Ð¸Ð½Ð¾ Ð½Ð° Ð³Ñ€Ð¸Ð²Ð½Ñ‹ '),
(319, 'AmyReums', 'johnpetrou777@outlook.com ', '89657882749', 'New York', 'google', '<a href=\"http://rlmeds.com/\">canada pharmacy online</a> '),
(320, 'LisaReums', 'davepgoelz@mail.com ', '81145299763', 'Dallas', 'google', '<a href=\"https://levitraorder.com/\">brand levitra 10 mg</a> '),
(321, 'AmyReums', 'rollrite@mail.com ', '89478692894', 'New York', 'google', '<a href=\"http://dbbpharm.com/\">hydroxychloroquine drug</a> '),
(322, 'JasonReums', 'danielmanavi@aol.com ', '86458557857', 'New York', 'google', '<a href=\"http://buyimedications.com/\">buspar pill 10 mg</a> <a href=\"http://imqpills.com/\">no rx nee'),
(323, 'KiaReums', 'goterrydev@gmail.com ', '86828261639', 'Denver', 'google', '<a href=\"http://malegrapill.com/\">malegra cheap</a> '),
(324, 'JudyReums', 'igorfranqvast@outlook.com ', '89454832144', 'New York', 'google', '<a href=\"http://cialismedication.com/\">india tadalafil comparison</a> <a href=\"http://malegraonline.'),
(325, 'MarkReums', 'tamala@yahoo.com ', '89198925283', 'Dallas', 'google', '<a href=\"https://cialisdt.com/\">can you buy cialis over the counter in uk</a> <a href=\"https://yasmi'),
(326, 'CarlReums', 'mcdaniel6185@mail.com ', '83133115637', 'New York', 'google', '<a href=\"http://tkmeds.com/\">buy cheap clomid</a> <a href=\"http://cialisoff.com/\">cost of cialis dai'),
(327, 'MaryReums', 'joaradesouza@yahoo.com ', '87382612519', 'Dallas', 'google', '<a href=\"https://buyimedications.com/\">citalopram hbr 10 mg for anxiety</a> <a href=\"https://levitra'),
(328, 'KiaReums', 'darleneramirez2@mail.com ', '86117883239', 'Denver', 'google', '<a href=\"http://malegraonline.com/\">malegra 120 mg</a> '),
(329, 'LisaReums', 'jolanda@outlook.com ', '85736718452', 'Dallas', 'google', '<a href=\"https://enviagra.com/\">generic viagra</a> '),
(330, 'AmyReums', 'eharpergda@hotmail.com ', '89728352675', 'New York', 'google', '<a href=\"http://buyimedications.com/\">wellbutrin best price</a> '),
(331, 'PaulReums', 'roni@yahoo.com ', '84229345246', 'Dallas', 'google', '<a href=\"https://drugsildenafil.com/\">order viagra online us pharmacy</a> <a href=\"https://ddvrx.com'),
(332, 'DenReums', 'n2kbc@yahoo.com ', '87675992714', 'Chicago', 'google', '<a href=\"http://antibactabs.com/\">where to buy azithromycin over the counter</a> <a href=\"http://ant'),
(333, 'LisaReums', 'mechelle@hotmail.com ', '87736716574', 'Dallas', 'google', '<a href=\"https://iviagrabuy.com/\">viagra in usa</a> '),
(334, 'Loans Online ', 'rubi@jumbox.site ', '87538984798', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(335, 'Get A Loan ', 'roblinda@romail.site ', '87316149457', 'Reno', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(336, 'KiaReums', 'cornelia@hotmail.com ', '82625238439', 'Denver', 'google', '<a href=\"http://ivermectinpharmacy.com/\">stromectol for sale</a> '),
(337, 'EyeReums', 'shenita@hotmail.com ', '81643622729', 'San Jose', 'google', '<a href=\"http://okviagra.com/\">paypal viagra australia</a> <a href=\"http://drugsildenafil.com/\">can '),
(338, 'CarlReums', 'nedra@hotmail.com ', '81563593725', 'New York', 'google', '<a href=\"http://clppharm.com/\">synthroid 125 mg</a> <a href=\"http://rlmeds.com/\">where to buy retin '),
(339, 'LisaReums', 'mesianica51@outlook.com ', '85875972379', 'Dallas', 'google', '<a href=\"https://ivermectinpharmacy.com/\">order ivermectin online</a> '),
(340, 'MaryReums', 'corpspavie3@outlook.com ', '85983595921', 'Dallas', 'google', '<a href=\"https://skincaretab.com/\">canadadrugpharmacy com</a> <a href=\"https://tabsildenafil.com/\">v'),
(341, 'PaulReums', 'osahide@outlook.com ', '89334394692', 'Dallas', 'google', '<a href=\"https://xxlviagra.com/\">where can i buy viagra</a> <a href=\"https://skincaretab.com/\">legal'),
(342, 'EyeReums', 'siesu@yahoo.com ', '86251888456', 'San Jose', 'google', '<a href=\"http://xxlviagra.com/\">cheap viagra soft tabs</a> <a href=\"http://grpills.com/\">drug bactri'),
(343, 'DenReums', 'kathygriner53@aol.com ', '83366673126', 'Chicago', 'google', '<a href=\"http://ondansetronzofran.com/\">how much is zofran 4mg</a> <a href=\"http://malegraonline.com'),
(344, 'Alisonhat', 'conslogonf@gmail.com', '89771499577', '', 'google', 'girls looking for guy to get pregnant in real life\r\n \r\nhttps://cutt.ly/xldnQea \r\n \r\n \r\n \r\n \r\n \r\n \r\nl'),
(345, 'JasonReums', 'darmanian007@gmail.com ', '84117241348', 'New York', 'google', '<a href=\"http://antibactabs.com/\">doxycycline mono</a> <a href=\"http://egthealth.com/\">canadian phar'),
(346, 'AmyReums', 'dusty@outlook.com ', '83423614687', 'New York', 'google', '<a href=\"http://tkmeds.com/\">clomid tablet price in india</a> '),
(347, 'Easy Payday Loan ', 'delphia@romail.site ', '85895931713', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(348, 'Best Payday Loan ', 'darrenconklin@qtmx.space ', '86188956117', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(349, 'KiaReums', 'robingardner@gmail.com ', '86118542239', 'Denver', 'google', '<a href=\"http://viagrareva.com/\">prescription generic viagra</a> '),
(350, 'MR HO CHOI', 'andrewyoung4545@gmail.com', '84549785286', 'Tokio', 'google', 'Greetings, I have been tasked with identifying, initiating and possibly developing a business partne'),
(351, 'Payday Loan Online ', 'dwlumier@qtmx.space ', '85162531359', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(352, 'AlanReums', 'michaelkleinheyer@outlook.com ', '82331653986', 'New York', 'google', '<a href=\"http://levitraorder.com/\">where to buy levitra in canada online</a> <a href=\"http://egtheal'),
(353, 'LisaReums', 'etreveloni775@yahoo.com ', '88261314128', 'Dallas', 'google', '<a href=\"https://adatabs.com/\">order retin a from canada</a> '),
(354, 'AmyReums', 'janjohn@gmail.com ', '83461597927', 'New York', 'google', '<a href=\"http://dbbpharm.com/\">plaquenil price</a> '),
(355, 'MarkReums', 'margit@hotmail.com ', '87271675159', 'Dallas', 'google', '<a href=\"https://ntmhealth.com/\">paroxetine prescription online</a> <a href=\"https://ventolinha.com/'),
(356, 'AmyReums', 'timovermyer@aol.com ', '81116391778', 'New York', 'google', '<a href=\"http://ntmhealth.com/\">buy fluoxetine</a> '),
(357, 'LisaReums', 'rdy1245@outlook.com ', '83956778928', 'Dallas', 'google', '<a href=\"https://tenorminmed.com/\">35 mg atenolol</a> '),
(358, 'Online Payday Loan ', 'suave118@msmx.site ', '88784221532', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(359, 'CarlReums', 'alaina@outlook.com ', '89653773774', 'New York', 'google', '<a href=\"http://tabsildenafil.com/\">sildenafil pills uk</a> <a href=\"http://viagralp.com/\">sildenafi'),
(360, 'Online Loans ', 'dmushitz@jumbox.site ', '84965634567', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(361, 'Direct Lenders ', 'miesha@jumbox.site ', '82856286466', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(362, 'MarkReums', 'wlbbigtonka@outlook.com ', '85231292164', 'Dallas', 'google', '<a href=\"https://viagraret.com/\">mexico viagra over the counter</a> <a href=\"https://cialisoff.com/\"'),
(363, 'Mike Gill\r\n', 'no-reply@google.com', '81483889882', 'Kaohsiung Municipality', 'google', 'Good Day \r\n \r\nI have just analyzed  schooloo.com for  the current search visibility and saw that you'),
(364, 'TonyAdamp', 'kola.yada05@gmail.com', '82315949641', 'Karak', 'google', 'story about bible tagalog version sims 3 business as usual bistro dakilang katapatan arnel de pano m'),
(365, 'KiaReums', 'tony@yahoo.com ', '88897669622', 'Denver', 'google', '<a href=\"http://flagylpill.com/\">flagyl medication</a> '),
(366, 'CarlReums', 'hdlaun@mail.com ', '89867374864', 'New York', 'google', '<a href=\"http://cialisuno.com/\">buy cialis online safely</a> <a href=\"http://viagrareg.com/\">where c'),
(367, 'AmyReums', 'samanthaleekent@hotmail.com ', '83637326596', 'New York', 'google', '<a href=\"http://viagraret.com/\">cipla viagra</a> '),
(368, 'AlanReums', 'donklion@gmail.com ', '82299429158', 'New York', 'google', '<a href=\"http://zmedsearch.com/\">cheapest pharmacy to fill prescriptions without insurance</a> <a hr'),
(369, 'PaulReums', 'pedroazsousa@yahoo.com ', '82336651125', 'Dallas', 'google', '<a href=\"https://xxlviagra.com/\">prescription viagra</a> <a href=\"https://ddvrx.com/\">phenergan onli'),
(370, 'LisaReums', 'annamarie@mail.com ', '82264745174', 'Dallas', 'google', '<a href=\"https://flagylpill.com/\">flagyl tablet 200 mg</a> '),
(371, 'DenReums', 'ronda@mail.com ', '88534472424', 'Chicago', 'google', '<a href=\"http://okviagra.com/\">sildenafil citrate online</a> <a href=\"http://buyviagrap.com/\">cialis'),
(372, 'AmyReums', 'lindsey@mail.com ', '85528135822', 'New York', 'google', '<a href=\"http://toptabstore.com/\">reputable canadian online pharmacies</a> '),
(373, 'PaulReums', 'greddyreadyrx7@gmail.com ', '84528126584', 'Dallas', 'google', '<a href=\"https://howtocialis.com/\">purchase discount cialis online</a> <a href=\"https://viagrabtab.c'),
(374, 'KiaReums', 'kingjesse187@outlook.com ', '89184958737', 'Denver', 'google', '<a href=\"http://levitrahow.com/\">discount levitra canada</a> '),
(375, 'Online Lenders ', 'dodgenc@qtmx.space ', '83232128477', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(376, 'Payday Loans ', 'jamespuig@instamail.site ', '89679485375', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(377, 'JudyReums', 'lauriecarr8697@mail.com ', '85533777861', 'New York', 'google', '<a href=\"http://drugtadalafil.com/\">generic cialis tablets</a> <a href=\"http://cialisorder.com/\">cia'),
(378, 'JasonReums', 'michaelhardt@yahoo.com ', '86951393992', 'New York', 'google', '<a href=\"http://viagrabtab.com/\">sildenafil generic for sale</a> <a href=\"http://cialismedication.co'),
(379, 'AmyReums', 'jerrica@aol.com ', '86785929679', 'New York', 'google', '<a href=\"http://cialisoff.com/\">canadian pharmacy cialis no prescription</a> '),
(380, 'AlanReums', 'marguerite@mail.com ', '85756342525', 'New York', 'google', '<a href=\"http://rlcialis.com/\">buy cialis paypal</a> <a href=\"http://okviagra.com/\">viagra 50 mg pil'),
(381, 'KiaReums', 'waz1907@hotmail.com ', '83891912741', 'Denver', 'google', '<a href=\"http://pllzshop.com/\">neurontin 600 mg</a> '),
(382, 'Speedy Cash ', 'maira@instamail.site ', '85852141161', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(383, 'Williamrer', 'artofnegotiations@theonlinepublishers.com', '87193439731', 'Kampala', 'google', 'LISTENEVERYHOW â€“ How Negotiations Work, is an easy-to-read book and pragmatic approach to get the '),
(384, 'DenReums', 'andytar@gmail.com ', '88154874212', 'Chicago', 'google', '<a href=\"http://tabsildenafil.com/\">sildenafil generic cost</a> <a href=\"http://malegrapill.com/\">bu'),
(385, 'Online Lenders ', 'julieharris@qtmx.space ', '81262352577', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(386, 'MarkReums', 'makyerp@mail.com ', '89529882474', 'Dallas', 'google', '<a href=\"https://cialisoff.com/\">cialis pills for sale</a> <a href=\"https://albendazolealbenza.com/\"'),
(387, 'A Payday Loan ', 'nglandstrom@instamail.site ', '81711643257', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(388, 'Joe Miller', 'info@domainregistrationcorp.com', '+1542384593234', '1369 Middleville Road', 'TERMINATION OF DOMAIN schooloo.com\r\nInvoice#: 491343\r\nDate: 25 Feb 2021\r\n\r\nIMMEDIATE ATTENTION REGAR', 'TERMINATION OF DOMAIN schooloo.com\r\nInvoice#: 491343\r\nDate: 25 Feb 2021\r\n\r\nIMMEDIATE ATTENTION REGAR'),
(389, 'PaulReums', 'omansbygg@yahoo.com ', '89291818988', 'Dallas', 'google', '<a href=\"https://antibioticspt.com/\">cheap doxy</a> <a href=\"https://depresspills.com/\">price of 20 '),
(390, 'Online Payday Loans ', 'akonusher@romail.site ', '85644656896', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(391, 'DenReums', 'j1313@aol.com ', '82663862715', 'Chicago', 'google', '<a href=\"http://buyviagrap.com/\">india viagra</a> <a href=\"http://optablets.com/\">cephalexin 500 tab'),
(392, 'KiaReums', 'nicolailowry71@hotmail.com ', '88711252281', 'Denver', 'google', '<a href=\"http://albendazolealbenza.com/\">albendazole 400 mg tablet brand name</a> '),
(393, 'Loan Cash ', 'deadra@romail.site ', '81737533747', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(394, 'CarlReums', 'toshi@yahoo.com ', '81737324857', 'New York', 'google', '<a href=\"http://cialismedication.com/\">buy tadalafil 60mg</a> <a href=\"http://tabsildenafil.com/\">fe'),
(395, 'LisaReums', 'psusman@hotmail.com ', '81828973244', 'Dallas', 'google', '<a href=\"https://dbbpharm.com/\">plaquenil 200mg</a> '),
(396, 'MarkReums', 'james@hotmail.com ', '88939711247', 'Dallas', 'google', '<a href=\"https://healthytbb.com/\">stromectol price</a> <a href=\"https://efftablets.com/\">ivermectin '),
(397, 'MaryReums', 'juicy21@yahoo.com ', '89547879842', 'Dallas', 'google', '<a href=\"https://tabsildenafil.com/\">generic viagra online canadian</a> <a href=\"https://antibactabs'),
(398, 'MokTeamma', 'qwfh398fh37@yandex.kz', '86981177723', 'Hennepin County', 'google', 'Mojoheadz ... https://www.youtube.com/watch?v=9t12Z5FbmGs MojoHeadz Records, a watershed moment for '),
(399, 'LisaReums', 'keystonemachine@hotmail.com ', '83677612229', 'Dallas', 'google', '<a href=\"https://depresspills.com/\">generic cipralex india</a> '),
(400, 'EyeReums', 'keli@gmail.com ', '84132562826', 'San Jose', 'google', '<a href=\"http://cialisuno.com/\">how much is generic cialis</a> <a href=\"http://dbbpharm.com/\">plaque'),
(401, 'AmyReums', 'hd8356@aol.com ', '88944357574', 'New York', 'google', '<a href=\"http://ntmhealth.com/\">mypharmacy</a> '),
(402, 'CarlReums', 'bigdx6@gmail.com ', '85375251325', 'New York', 'google', '<a href=\"http://cialismedication.com/\">dapoxetine 30mg in india</a> <a href=\"http://btviagra.com/\">h'),
(403, 'PaulReums', 'garystepan@mail.com ', '83862912664', 'Dallas', 'google', '<a href=\"https://levitraorder.com/\">buy brand name levitra</a> <a href=\"https://adatabs.com/\">online'),
(404, 'AmyReums', 'deliajoury@yahoo.com ', '81469379259', 'New York', 'google', '<a href=\"http://sildenafiled.com/\">brand viagra price</a> '),
(405, 'JasonReums', 'adria@yahoo.com ', '85567829142', 'New York', 'google', '<a href=\"http://packcialis.com/\">cheap generic cialis free shipping</a> <a href=\"http://tkmeds.com/\"'),
(406, 'Quick Loans ', 'khill0361@instamail.site ', '85928775889', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(407, 'JudyReums', 'osbraendle@gmail.com ', '83487539523', 'New York', 'google', '<a href=\"http://pillsenorx.com/\">bupropion 400 mg</a> <a href=\"http://viagraret.com/\">viagra online '),
(408, 'AmyReums', 'keely@mail.com ', '85851893685', 'New York', 'google', '<a href=\"http://tabsildenafil.com/\">sildenafil brand name in canada</a> '),
(409, 'LisaReums', 'richardbrooks3727@outlook.com ', '87882869673', 'Dallas', 'google', '<a href=\"https://tbbstore.com/\">tetracycline online</a> '),
(410, 'LisaReums', 'nora@mail.com ', '84333149122', 'Dallas', 'google', '<a href=\"https://packcialis.com/\">cialis australia</a> '),
(411, 'EyeReums', 'azzmi@hotmail.com ', '83285872523', 'San Jose', 'google', '<a href=\"http://cialisrmp.com/\">where to get tadalafil without a prescription</a> <a href=\"http://ci'),
(412, 'PaulReums', 'tammara@hotmail.com ', '86681231313', 'Dallas', 'google', '<a href=\"https://ventolinha.com/\">ventolin inhaler for sale</a> <a href=\"https://flagylpill.com/\">fl'),
(413, 'EyeReums', 'kbenirschke@yahoo.com ', '81143384614', 'San Jose', 'google', '<a href=\"http://nexiumesomeprazole.com/\">nexium 150 mg</a> <a href=\"http://optablets.com/\">cephalexi'),
(414, 'AlanReums', 'anned333@yahoo.com ', '89528145936', 'New York', 'google', '<a href=\"http://cialisdisp.com/\">generic cialis online fast shipping</a> <a href=\"http://efftablets.'),
(415, 'DenReums', 'bemygoodfriend005@aol.com ', '83379774661', 'Chicago', 'google', '<a href=\"http://depresspills.com/\">best canadian pharmacy to order from</a> <a href=\"http://antibiot'),
(416, 'LisaReums', 'ronniedtn@yahoo.com ', '86437439276', 'Dallas', 'google', '<a href=\"https://iviagrabuy.com/\">sildenafil 20 mg coupon</a> '),
(417, 'KiaReums', 'showtoyama@hotmail.com ', '84868126343', 'Denver', 'google', '<a href=\"http://cymbaltapill.com/\">cheap cymbalta prescription</a> '),
(418, 'PaulReums', 'herbertgraver@mail.com ', '82543453873', 'Dallas', 'google', '<a href=\"https://grpills.com/\">bactrim canada</a> <a href=\"https://drugtadalafil.com/\">cialis mexico'),
(419, 'Best Payday Loan ', 'futureprincevd@instamail.site ', '82245953868', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(420, 'AmyReums', 'shaquita@outlook.com ', '84289788381', 'New York', 'google', '<a href=\"http://pfhhealth.com/\">online pharmacy dubai</a> '),
(421, 'Personal Loans ', 'meyerckm@instamail.site ', '81434853717', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(422, 'JudyReums', 'igorfranqvast@gmail.com ', '89297811761', 'New York', 'google', '<a href=\"http://tkmeds.com/\">clomid 250mg</a> <a href=\"http://yasminrx.com/\">yasmin medicine price i'),
(423, 'DenReums', 'scott4@mail.com ', '81924629867', 'Chicago', 'google', '<a href=\"http://ondansetronzofran.com/\">zofran medication</a> <a href=\"http://tbbstore.com/\">trimox '),
(424, 'KiaReums', 'claudiaa9@outlook.com ', '85421731818', 'Denver', 'google', '<a href=\"http://pillsenorx.com/\">celexa generic brand</a> '),
(425, 'CarlReums', 'wiggeri@mail.com ', '88548653871', 'New York', 'google', '<a href=\"http://dpptables.com/\">cost of acyclovir 800 mg</a> <a href=\"http://anastrozolearimidex.com'),
(426, 'JasonReums', 'claudioriedi@hotmail.com ', '81995147686', 'New York', 'google', '<a href=\"http://tbbstore.com/\">flagyl</a> <a href=\"http://cialisopp.com/\">avana 31311</a> <a href=\"h'),
(427, 'Personal Loans ', 'injoie99@qtmx.space ', '87691686268', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(428, 'AmyReums', 'eharpergda@hotmail.com ', '88928368736', 'New York', 'google', '<a href=\"http://pfhhealth.com/\">proscar for women</a> '),
(429, 'DenReums', 'jeffcoleman1@hotmail.com ', '88522281314', 'Chicago', 'google', '<a href=\"http://stoppainrem.com/\">25mg modafinil</a> <a href=\"http://ddvrx.com/\">canadian pharmacies'),
(430, 'MarkReums', 'swilliams67835@hotmail.com ', '83668382956', 'Dallas', 'google', '<a href=\"https://howtocialis.com/\">cialis online mexico</a> <a href=\"https://cialisdisp.com/\">generi'),
(431, 'LisaReums', 'rafytorossean@hotmail.com ', '88744646238', 'Dallas', 'google', '<a href=\"https://ivermectinpharmacy.com/\">ivermectin tablets</a> '),
(432, 'Fastest Payday Loan ', 'mazzio1@romail.site ', '83116475637', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(433, 'KiaReums', 'marlonmathews13@hotmail.com ', '86479776122', 'Denver', 'google', '<a href=\"http://imqpills.com/\">150 bupropion</a> '),
(434, 'PaulReums', 'duanerichardson@hotmail.com ', '87978191515', 'Dallas', 'google', '<a href=\"https://yasminrx.com/\">yasmin medicine price in india</a> <a href=\"https://tkmeds.com/\">buy'),
(435, 'MarkReums', 'andrewmoon99@mail.com ', '81563274465', 'Dallas', 'google', '<a href=\"https://viagrareva.com/\">viagra online australia paypal</a> <a href=\"https://conmstore.com/'),
(436, 'Brendagyday', 'rkjmlcuyrl@gmail.com', '88723826426', 'Santa Rosa', 'google', 'ÐŸÑ€Ð¸Ð²ÐµÑ‚. \r\nÐœÐ¾Ð¹ Ð½Ð¸Ðº Ð¡Ð½ÐµÐ¶Ð°Ð½Ð°. \r\nÐ’Ñ‹ Ð½Ðµ Ñ€Ð°Ð· ÑÐ»Ñ‹ÑˆÐ°Ð»Ð¸ Ð¸ Ð²Ð¸Ð´ÐµÐ»Ð¸ Ð»Ð¸'),
(437, 'LisaReums', 'gregorygeliver@gmail.com ', '87386894617', 'Dallas', 'google', '<a href=\"https://viagralp.com/\">viagra for sale in ireland</a> '),
(438, 'KiaReums', 'mari@aol.com ', '84572968766', 'Denver', 'google', '<a href=\"http://ivermectinpharmacy.com/\">where can i buy ivermectin</a> '),
(439, 'Loan ', 'briandavies1945@jumbox.site ', '84534834164', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(440, 'InvillMible', 'je.n.t.a.iwo.rld.p.i.c.t.ur.e.t5@o5o5.ru', '81675436835', 'London', 'google', '<a href=https://videnie.org/services/love-privorot/>ÑÐ´ÐµÐ»Ð°Ñ‚ÑŒ Ð¿Ñ€Ð¸Ð²Ð¾Ñ€Ð¾Ñ‚</a> \r\nTegs: ÑÐ½'),
(441, 'CarlReums', 'lmwmm@hotmail.com ', '89418295241', 'New York', 'google', '<a href=\"http://dbbpharm.com/\">plaquenil over the counter</a> <a href=\"http://howtocialis.com/\">cial'),
(442, 'AmyReums', 'cari@yahoo.com ', '86447229127', 'New York', 'google', '<a href=\"http://adatabs.com/\">thecanadianpharmacy</a> '),
(443, 'AlanReums', 'florence32@outlook.com ', '84578597433', 'New York', 'google', '<a href=\"http://pillsenorx.com/\">wellbutrin medication</a> <a href=\"http://flagylpill.com/\">flagyl o'),
(444, 'JudyReums', 'arsafa@outlook.com ', '82345165652', 'New York', 'google', '<a href=\"http://healthytbb.com/\">ivermectin 3 mg</a> <a href=\"http://egthealth.com/\">prescription pr'),
(445, 'JasonReums', 'sophie21@hotmail.com ', '85335944832', 'New York', 'google', '<a href=\"http://optablets.com/\">cephalexin 500 mg</a> <a href=\"http://ntmhealth.com/\">generic price '),
(446, 'Online Payday Loans ', 'jarvis746@qtmx.space ', '85765789929', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(447, 'LisaReums', 'markwardell@mail.com ', '81138332329', 'Dallas', 'google', '<a href=\"https://xxlviagra.com/\">sildenafil tablet brand name</a> '),
(448, 'AmyReums', 'kerrymcdonald@outlook.com ', '86327219914', 'New York', 'google', '<a href=\"http://skincaretab.com/\">24 mg prednisone</a> '),
(449, 'Bad Credit ', 'lieselotte@romail.site ', '86488228763', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(450, 'KiaReums', 'kcn39@outlook.com ', '81798314347', 'Denver', 'google', '<a href=\"http://rlcialis.com/\">eli lilly cialis</a> '),
(451, 'LisaReums', 'doberman@hotmail.com ', '86981315475', 'Dallas', 'google', '<a href=\"https://shopfmed.com/\">online pharmacy products</a> '),
(452, 'DenReums', 'florarangel@hotmail.com ', '86522149844', 'Chicago', 'google', '<a href=\"http://viagrareg.com/\">order generic viagra online canada</a> <a href=\"http://healthytbb.co'),
(453, 'KiaReums', 'forepaquette1@aol.com ', '87895691189', 'Denver', 'google', '<a href=\"http://depresspills.com/\">bupropion price south africa</a> '),
(454, 'Loans For Bad Credit ', 'seansullivan@romail.site ', '86948275682', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(455, 'AlanReums', 'gnaro11@hotmail.com ', '88127962611', 'New York', 'google', '<a href=\"http://drugsildenafil.com/\">sildenafil singapore</a> <a href=\"http://enviagra.com/\">buy fem'),
(456, 'DenReums', 'smoore777@gmail.com ', '85564813974', 'Chicago', 'google', '<a href=\"http://shopfmed.com/\">metformin tablet cost</a> <a href=\"http://zmedsearch.com/\">online pha'),
(457, 'JasonReums', 'elane@hotmail.com ', '86827371552', 'New York', 'google', '<a href=\"http://stoppainrem.com/\">cheapest modafinil australia</a> <a href=\"http://sildenafiled.com/'),
(458, 'Speedy Cash ', 'elvia@qtmx.space ', '89463331948', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(459, 'JudyReums', 'nguyenkristy@mail.com ', '84396399989', 'New York', 'google', '<a href=\"http://ivermectinpharmacy.com/\">ivermectin without prescription</a> <a href=\"http://egtheal'),
(460, 'PaulReums', 'carri@outlook.com ', '88692184481', 'Dallas', 'google', '<a href=\"https://pfhhealth.com/\">propecia brand name price</a> <a href=\"https://tabsildenafil.com/\">'),
(461, 'CarlReums', 'mndowner@aol.com ', '86466482362', 'New York', 'google', '<a href=\"http://grpills.com/\">cephalexin uk</a> <a href=\"http://ycialis.com/\">cheapest tadalafil cos'),
(462, 'rolexwatchcopy', 'you7r98794l@gmail.com', '88555567837', 'http://www.shopsorion.com', 'google', '<a href=\"http://www.shopsorion.com\" title=\"ãƒ­ãƒ¬ãƒƒã‚¯ã‚¹ ãƒ‡ã‚¤ãƒˆãƒŠ ãƒ¬ãƒ—ãƒªã‚«\">ãƒ­ãƒ¬ãƒƒã‚¯ã‚'),
(463, 'KiaReums', 'aliciatenda@gmail.com ', '88418368353', 'Denver', 'google', '<a href=\"http://cialisuno.com/\">cialis 20mg coupon</a> '),
(464, 'AmyReums', 'qab73@gmail.com ', '87684857314', 'New York', 'google', '<a href=\"http://tkmeds.com/\">clomid pills for sale</a> '),
(465, 'Payday ', 'maude@jumbox.site ', '85643445274', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(466, 'A Payday Loan ', 'forscrumpy@jumbox.site ', '86639677514', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(467, 'MaryReums', 'rfisher@yahoo.com ', '83184921144', 'Dallas', 'google', '<a href=\"https://depresspills.com/\">prozac 50 mg</a> <a href=\"https://btviagra.com/\">discount viagra'),
(468, 'Thomasshare', 'temptest799277678@gmail.com', '81348354218', 'New delhi', 'google', 'Best Online Casino For Real Money in India 2021   http://rp777s10.vip/en/home - Click here!.. \r\nBest'),
(469, 'LisaReums', 'jayeff100@aol.com ', '87158892312', 'Dallas', 'google', '<a href=\"https://urbbpharm.com/\">cheapest pharmacy canada</a> '),
(470, 'Mep', 'baburovp@bk.ru', '85512287343', 'Kaduna', 'google', 'Hi, this is Julia. I am sending you my intimate photos as I promised. https://tinyurl.com/yaeu342l'),
(471, 'Mep', 'baburovp@bk.ru', '89484515857', 'Kaduna', 'google', 'Hi, this is Julia. I am sending you my intimate photos as I promised. https://tinyurl.com/yaeu342l'),
(472, 'Mep', 'baburovp@bk.ru', '85894522235', 'Kaduna', 'google', 'Hi, this is Julia. I am sending you my intimate photos as I promised. https://tinyurl.com/yaeu342l'),
(473, 'Mep', 'baburovp@bk.ru', '86298468414', 'Kaduna', 'google', 'Hi, this is Julia. I am sending you my intimate photos as I promised. https://tinyurl.com/yaeu342l'),
(474, 'Instant Online Loans ', 'notyoutoo22@instamail.site ', '89451659317', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(475, 'DenReums', 'vehanen@aol.com ', '87733396818', 'Chicago', 'google', '<a href=\"http://xxlviagra.com/\">buy sildenafil 100mg online comparison</a> <a href=\"http://sildenafi'),
(476, 'Edgarhoste', 'nomoshampur@mail.ru', '83232985599', 'Minsk', 'google', 'Fills - Bits of melody or embellishment played between sections of the main solo melody.\r\nI was curi'),
(477, 'KiaReums', 'dempsey@aol.com ', '85335285971', 'Denver', 'google', '<a href=\"http://viagrareva.com/\">generic sildenafil in us</a> '),
(478, 'AmyReums', 'xvxbrainxvx@aol.com ', '83154274858', 'New York', 'google', '<a href=\"http://clppharm.com/\">synthroid price</a> '),
(479, 'EyeReums', 'kbenirschke@outlook.com ', '84633237166', 'San Jose', 'google', '<a href=\"http://ivermectinpharmacy.com/\">stromectol canada</a> <a href=\"http://drugtadalafil.com/\">b'),
(480, 'LisaReums', 'mechelle@outlook.com ', '83846694135', 'Dallas', 'google', '<a href=\"https://adatabs.com/\">tretinoin prescription online</a> '),
(481, 'PaulReums', 'brandonclark5706@aol.com ', '87869164693', 'Dallas', 'google', '<a href=\"https://tabsildenafil.com/\">10 sildenafil</a> <a href=\"https://cialisrmp.com/\">buy cialis o'),
(482, 'Direct Lenders ', 'hightide129@jumbox.site ', '84321915229', 'New York', 'google', '{loans|loan|loans|payday loans|personal loans|payday loan|loans online|payday lending|loans for bad '),
(483, 'The Assignments ', 'dansoccer8@qtmx.space ', '86253584512', 'Reno', 'google', '<a href=\"http://domyhomeworkpls.com/\">child abuse research paper</a> <a href=\"http://homeworkihelp.c'),
(484, 'KiaReums', 'andreashedmanspamtrap@gmail.com ', '88951244239', 'Denver', 'google', '<a href=\"http://grpills.com/\">mail pharmacy</a> '),
(485, 'Duglasvxa', 'lu.k.in.o.vi.c.h20.2.01.3@gmail.com\r\n', '81914849933', 'Minsk', 'google', 'Ð”Ð¾Ð±Ñ€Ñ‹Ð¹ Ð´ÐµÐ½ÑŒ Ð´Ð°Ð¼Ñ‹ Ð¸ Ð³Ð¾ÑÐ¿Ð¾Ð´Ð°!  https://drive.google.com/file/d/14O9w55SwmlE2-tln'),
(486, 'KnvpllMible', 'jent.a.i.wo.rldpict.uret5@o5o5.ru', '87576478559', 'London', 'google', '<a href=https://dubna-pesok.ru>Ñ‚Ð¾Ñ€Ñ„ Ð² Ð´ÑƒÐ±Ð½Ðµ ÐºÑƒÐ¿Ð¸Ñ‚ÑŒ</a> \r\nTegs: Ñ‚Ð¾Ñ€Ñ„ Ð´ÑƒÐ±Ð½Ð° h'),
(487, 'Mario Gonzalez', 'mysolutions360@gmail.com', '86357896965', 'Kampala', 'google', 'Hi, are you still in charge of schooloo.com ? \r\n \r\nIf you take 30 sec to read this email, we could h'),
(488, 'CarlReums', 'philipsanders8@mail.com ', '85435796256', 'New York', 'google', '<a href=\"http://tenorminmed.com/\">atenolol</a> <a href=\"http://levitraorder.com/\">vardenafil price u'),
(489, 'My Homework Now ', 'daddyobill@romail.site ', '83266331668', 'Reno', 'google', '<a href=\"http://essaysrv.com/\">writing a science research paper</a> <a href=\"http://writingservicemo'),
(490, 'JudyReums', 'imekab@gmail.com ', '89916193145', 'New York', 'google', '<a href=\"http://cialisrmp.com/\">cialis pills sale</a> <a href=\"http://cialisopp.com/\">cialis generic'),
(491, 'PaulReums', 'leigh@outlook.com ', '81174823911', 'Dallas', 'google', '<a href=\"https://howtocialis.com/\">cialis 2 5 mg online</a> <a href=\"https://skincaretab.com/\">order'),
(492, 'Write My Papers ', 'jrospopo@jumbox.site ', '86996628236', 'New York', 'google', '<a href=\"https://essaysm.com/\">essay writers service</a> '),
(493, 'Buying Essays Online ', 'freddehellstedt@romail.site ', '87596734763', 'Houston', 'google', '<a href=\"https://essayinst.com/\">columbia college essay</a> <a href=\"https://esswrt.com/\">too much h'),
(494, 'Homework Center ', 'jodi@romail.site ', '81775826896', 'New York', 'google', '<a href=\"http://essayinst.com/\">essays on social security</a> '),
(495, 'Assignments Help ', 'fmunday@romail.site ', '84779489614', 'New York', 'google', '<a href=\"http://homeworkhelpp.com/\">essays on why i want to go to college</a> <a href=\"http://pprwri'),
(496, 'LisaReums', 'alcapone250@hotmail.com ', '85734994326', 'Dallas', 'google', '<a href=\"https://cialisoff.com/\">cheap cialis pills canada</a> '),
(497, 'Buy Essays Cheap ', 'conradtd@jumbox.site ', '86213334819', 'Reno', 'google', '<a href=\"https://essaysm.com/\">essay writing lesson plans for 4th grade</a> <a href=\"https://homewor'),
(498, 'Online Essay ', 'welshpete1@qtmx.space ', '87682565739', 'Houston', 'google', '<a href=\"https://essayinst.com/\">college essay editing</a> <a href=\"https://writingservicemoon.com/\"'),
(499, 'KiaReums', 'nelly@hotmail.com ', '89323342459', 'Denver', 'google', '<a href=\"http://ycialis.com/\">order cialis generic</a> '),
(500, 'Write My Thesis ', 'katharina@msmx.site ', '88754532228', 'New York', 'google', '<a href=\"http://essaysir.com/\">help me to write a poem</a> '),
(501, 'MaryReums', 'rileywkr@aol.com ', '89168711639', 'Dallas', 'google', '<a href=\"https://gnviagra.com/\">viagra 2010</a> <a href=\"https://cialista.com/\">cialis best online</'),
(502, 'AmyReums', 'samanthaleekent@aol.com ', '82881349986', 'New York', 'google', '<a href=\"http://tkmeds.com/\">cheap clomid for sale</a> '),
(503, 'AmyReums', 'dcarroll40@hotmail.com ', '82153721521', 'New York', 'google', '<a href=\"http://cialisrmp.com/\">generic cialis 20mg online</a> '),
(504, 'EyeReums', 'inthedesert@yahoo.com ', '85772758145', 'San Jose', 'google', '<a href=\"http://optcialis.com/\">cialis daily online canada</a> <a href=\"http://okktablets.com/\">furo'),
(505, 'LisaReums', 'umane@gmail.com ', '83678272531', 'Dallas', 'google', '<a href=\"https://xxlviagra.com/\">online viagra cost</a> '),
(506, 'Define Assignments ', 'manso1@jumbox.site ', '87888393618', 'Reno', 'google', '<a href=\"http://homeworktnt.com/\">an argumentative essay</a> <a href=\"http://hmwhelp.com/\">research '),
(507, 'DenReums', 'midwaymgmt@gmail.com ', '87862633174', 'Chicago', 'google', '<a href=\"http://yasminrx.com/\">buy yasmin</a> <a href=\"http://urbbpharm.com/\">canadapharmacy24h</a> '),
(508, 'Buying Essays Online ', 'meikep@instamail.site ', '81675516943', 'Reno', 'google', '<a href=\"http://esswrt.com/\">personal essay for college</a> <a href=\"http://pprwriting.com/\">phd the'),
(509, 'JdvmllMible', 'jenta.iwo.r.ldp.i.ct.u.re.t5@o5o5.ru', '84621234525', 'London', 'google', '<a href=https://kimry-karier.ru>Ð¿ÐµÑÐ¾Ðº ÐºÐ¸Ð¼Ñ€Ñ‹ Ð¿Ð¾Ñ€Ñ‚</a> \r\nTegs: Ð¿ÐµÑÐ¾Ðº ÐºÐ¸Ð¼Ñ€Ñ‹ Ð¿Ð'),
(510, 'KiaReums', 'hazel@gmail.com ', '85553981351', 'Denver', 'google', '<a href=\"http://malegrapill.com/\">malegra pills</a> '),
(511, 'CarlReums', 'jhoff3212@outlook.com ', '81584987499', 'New York', 'google', '<a href=\"http://iviagrabuy.com/\">sildenafil no prescription</a> <a href=\"http://levitraorder.com/\">g'),
(512, 'Term Paper Writer ', 'maressaleah@instamail.site ', '84636662525', 'New York', 'google', '<a href=\"https://esswrt.com/\">writing analytical essay</a> '),
(513, 'CarlReums', 'osmiscik@mail.com ', '86838993992', 'New York', 'google', '<a href=\"http://medrolmedication.com/\">solu medrol</a> <a href=\"http://dbbpharm.com/\">chloroquine</a'),
(514, 'Invillfoema', 'je.nt.ai.w.orl.dpi.c.tur.et5@o5o5.ru', '87138346932', 'London', 'google', '<a href=https://www.hotelhot.ru/>ÑÐ½ÑÑ‚ÑŒ ÐºÐ¾Ð¹ÐºÐ¾ Ð¼ÐµÑÑ‚Ð¾ Ñ‰ÑƒÐºÐ¸Ð½ÑÐºÐ°Ñ</a> \r\nTegs: ÑÐ'),
(515, 'AmyReums', 'scretoo@outlook.com ', '88246432364', 'New York', 'google', '<a href=\"http://stoppainrem.com/\">online pharmacy australia free delivery</a> '),
(516, 'Free Paper Writer ', 'sparenone@qtmx.space ', '81612493698', 'Reno', 'google', '<a href=\"http://domyhmw.com/\">get homework done for you</a> <a href=\"http://essaysm.com/\">write a 5 '),
(517, 'Is Homework Helpful ', 'fhami52463@qtmx.space ', '83538156672', 'New York', 'google', '<a href=\"https://essaysrv.com/\">essays for you</a> '),
(518, 'AmyReums', 'ptdflb69@hotmail.com ', '88875848147', 'New York', 'google', '<a href=\"http://rlmeds.com/\">retin a 0.1 cream</a> '),
(519, 'LisaReums', 'reval1988@yahoo.com ', '84675132789', 'Dallas', 'google', '<a href=\"https://levitraorder.com/\">levitra uk prescription</a> '),
(520, 'JudyReums', 'wcema8878@mail.com ', '87427366958', 'New York', 'google', '<a href=\"http://malegrapill.com/\">best price malegra fxt canada</a> <a href=\"http://ycialis.com/\">ta'),
(521, 'Mep', 'baburovp@bk.ru', '86279968289', 'Kaduna', 'google', 'Hi, this is Anna. I am sending you my intimate photos as I promised. https://tinyurl.com/y9b2gjah'),
(522, 'Andreilnx', 'us.e.r.z.al.e.vs.k.i.j.a.22.20.1@gmail.com\r\n', '84731879259', 'Minsk', 'google', 'ÐŸÑ€Ð°Ð²Ð¸Ð»ÑŒÐ½Ð¾Ðµ Ð±ÑƒÑ€ÐµÐ½Ð¸Ðµ ÑÐºÐ²Ð°Ð¶Ð¸Ð½ Ð½Ð° Ð²Ð¾Ð´ÑƒÐ‘ÑƒÑ€ÐµÐ½Ð¸Ðµ ÑÐºÐ²Ð°Ð¶Ð¸Ð½ Ð½Ð° Ð'),
(523, 'DenReums', 'charity@gmail.com ', '81499275258', 'Chicago', 'google', '<a href=\"http://cialisrmp.com/\">cialis daily 5mg online</a> <a href=\"http://packcialis.com/\">tadalaf'),
(524, 'Homework Now.Com ', 'acrylicb@romail.site ', '87514379238', 'New York', 'google', '<a href=\"http://homeworktnt.com/\">method of writing essay</a> '),
(525, 'KiaReums', 'aliciatenda@yahoo.com ', '81459831134', 'Denver', 'google', '<a href=\"http://viagrareg.com/\">5 viagra</a> '),
(526, 'Essay-writer.Org ', 'zebrafish123@romail.site ', '82652835356', 'New York', 'google', '<a href=\"http://homeworkhelpp.com/\">writing a literature review for a dissertation</a> '),
(527, 'LisaReums', 'twolostntx@mail.com ', '84872382612', 'Dallas', 'google', '<a href=\"https://xxlviagra.com/\">sildenafil 100 mg tablet cost</a> '),
(528, 'Write Essay Service ', 'lakeisha@msmx.site ', '87215222378', 'Houston', 'google', '<a href=\"https://hmwhelp.com/\">empirical dissertation</a> <a href=\"https://homeworkihelp.com/\">help '),
(529, 'PaulReums', 'fethicoskun@mail.com ', '81981938247', 'Dallas', 'google', '<a href=\"https://pfhhealth.com/\">where can i get propecia in india</a> <a href=\"https://ddvrx.com/\">'),
(530, 'KiaReums', 'mdoyle56@aol.com ', '84994764492', 'Denver', 'google', '<a href=\"http://cialisrmp.com/\">order cialis without prescription</a> '),
(531, 'LisaReums', 'handbshaw@hotmail.com ', '81881757727', 'Dallas', 'google', '<a href=\"https://drugsildenafil.com/\">purchase viagra online from canada</a> '),
(532, 'CarlReums', 'keithackerman57@yahoo.com ', '82949782232', 'New York', 'google', '<a href=\"http://toptabstore.com/\">where to buy clomid in canada</a> <a href=\"http://tkmeds.com/\">clo'),
(533, 'JasonReums', 'ddeoliveira4@mail.com ', '83774828135', 'New York', 'google', '<a href=\"http://tabsildenafil.com/\">buy viagra over the counter uk</a> <a href=\"http://ivermectinpha'),
(534, 'MarkReums', 'zomack13@hotmail.com ', '81516886338', 'Dallas', 'google', '<a href=\"https://rlcialis.com/\">where can i order cialis</a> <a href=\"https://tkmeds.com/\">cheapest '),
(535, 'PesOpigo', 'm4777q@yandex.com', '88457192418', 'Kazan', 'google', ':)<a href=https://wmj.su/>:)</a>:)'),
(536, 'AmyReums', 'larsmollersten@aol.com ', '84584211151', 'New York', 'google', '<a href=\"http://buyimedications.com/\">average cost of buspar</a> '),
(537, 'Online Homework Help ', 'profeten@jumbox.site ', '89257454242', 'New York', 'google', '<a href=\"http://domyhomeworkpls.com/\">dissertation writing services</a> '),
(538, 'Williampract', 'ir.mir1976@mail.ru', '87447945148', 'Le Mans', 'google', 'Ð’ÑÐµÐ¼ Ð¿Ñ€Ð¸Ð²ÐµÑ‚! \r\n \r\n \r\n \r\nhttps://cfeed.ru/investicii/effektivnoe-upravlenie-investiciyami-e'),
(539, 'Alensnurge', 'alevtina.fedoseeva.8.12.1966@list.ru', '81194158841', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', ' \r\nÐŸÐžÐ§Ð•ÐœÐ£ Ð’ Ð ÐžÐ¡Ð¡Ð˜Ð˜ ÐŸÐ ÐžÐ”Ð£ÐšÐ¢Ð« Ð”ÐžÐ ÐžÐ–ÐÐ®Ð¢ Ð’ 8 Ð ÐÐ— Ð‘Ð«Ð¡Ð¢Ð Ð•Ð•, Ð§Ð•Ðœ'),
(540, 'Define Assignations ', 'alene@jumbox.site ', '84149546425', 'Reno', 'google', '<a href=\"http://homeworkihelp.com/\">statistic homework help</a> <a href=\"http://xstudyhelp.com/\">wri'),
(541, 'JudyReums', 'lee@aol.com ', '89117575545', 'New York', 'google', '<a href=\"http://cialisorder.com/\">tadalafil without prescription</a> <a href=\"http://ventolinha.com/'),
(542, 'My Homework Now ', 'deruosi@msmx.site ', '89557969563', 'New York', 'google', '<a href=\"https://essaysir.com/\">cover letters for jobs</a> <a href=\"https://homeworkihelp.com/\">can '),
(543, 'Term Paper Writers ', 'posticalain@romail.site ', '87574667655', 'Houston', 'google', '<a href=\"https://essayhw.com/\">essay writer service</a> <a href=\"https://joessay.com/\">autobiographi'),
(544, 'Mike Babcock\r\n', 'see-email-in-message@monkeydigital.co', '84625538261', 'Willemstad', 'google', 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your schooloo.com website? \r\nHaving a'),
(545, 'Assignment Helpers ', 'jsackjr@romail.site ', '84985886856', 'New York', 'google', '<a href=\"https://iwritinghelp.com/\">write an abstract</a> '),
(546, 'Define Assignations ', 'ajtmseymour@qtmx.space ', '87153826226', 'Reno', 'google', '<a href=\"https://esswrt.com/\">essay for admission</a> <a href=\"https://1studyhelp.com/\">writing rese'),
(547, 'hermanhw16', 'tq7@katsu1210.akihiro54.webmail2.site', '84445688231', '', 'google', 'Free Porn Galleries - Hot Sex Pictures\r\nhttp://bjjfight.tamildictionary.instasexyblog.com/?jewel \r\n\r'),
(548, 'Write My Essays ', 'edjechols@instamail.site ', '88933687849', 'New York', 'google', '<a href=\"http://xstudyhelp.com/\">cv writing service</a> <a href=\"http://essayhw.com/\">academic argum'),
(549, 'AlanReums', 'geerscleaningservice@yahoo.com ', '88999133863', 'New York', 'google', '<a href=\"http://healthptr.com/\">amitriptyline 4</a> <a href=\"http://cialisgenuine.com/\">cialis uk ph'),
(550, 'LisaReums', 'vincenzonegro@outlook.com ', '82323248397', 'Dallas', 'google', '<a href=\"https://nexiumesomeprazole.com/\">cheap nexium 20mg</a> '),
(551, 'School Assignments ', 'janerikstark@romail.site ', '83986942314', 'New York', 'google', '<a href=\"https://homeworkihelp.com/\">cpm homework help online</a> '),
(552, 'MarkReums', 'setiawanfrans@hotmail.com ', '81318947441', 'Dallas', 'google', '<a href=\"https://levitrahow.com/\">buy generic levitra from canada</a> <a href=\"https://healthytbb.co'),
(553, 'Homework Help Online ', 'bmichel@instamail.site ', '82462662527', 'Reno', 'google', '<a href=\"http://homeworktnt.com/\">write term papers</a> <a href=\"http://writingservicemoon.com/\">onl'),
(554, 'Buy An Essay ', 'arbuchwitz@qtmx.space ', '84936486192', 'New York', 'google', '<a href=\"http://writingservicemoon.com/\">writing service</a> '),
(555, 'AmyReums', 'kanekustoms@aol.com ', '86197468374', 'New York', 'google', '<a href=\"http://levitraorder.com/\">price of generic levitra</a> '),
(556, 'Ryan Mehry', 'reviewcarrier@protonmail.com', '81193324794', 'London', 'google', 'Hey, \r\nIâ€™m the founder of ReviewCarrier, a googleâ€™s reviews digital agency. \r\nItâ€™s designed fo'),
(557, 'Amibusy', 'babur.o.vp@bk.ru', '81695939292', 'Kaduna', 'google', 'Cryptocurrency rates are breaking records, which means you have the opportunity to make money on cry'),
(558, 'Essay-writer.Org ', 'jacphl@romail.site ', '84383967971', 'Reno', 'google', '<a href=\"http://ipaperwriting.com/\">professional college essay writers</a> <a href=\"http://essayinst'),
(559, 'CarlReums', 'fatimah@outlook.com ', '82815647864', 'New York', 'google', '<a href=\"http://cialisbb.com/\">where can i buy cialis in singapore</a> <a href=\"http://varpills.com/'),
(560, 'Writer Essay ', 'jeff2dive@qtmx.space ', '81959758251', 'New York', 'google', '<a href=\"http://homeworkhelp.us.org/\">homework help for statistics</a> '),
(561, 'Homework Online ', 'jefhv@jumbox.site ', '81613231267', 'New York', 'google', '<a href=\"https://aaessay.com/\">homework hotline</a> '),
(562, 'Elenkahok', 'elenka@menot.xyz', '+1 2241034567', 'Moscow', 'google', 'Yes\r\nhttp://torileniconla.tk/chk/21\r\n'),
(563, 'LisaReums', 'maile@outlook.com ', '87411474962', 'Dallas', 'google', '<a href=\"https://viagrabd.com/\">sildenafil 50</a> '),
(564, 'JasonReums', 'dude101@gmail.com ', '82952771842', 'New York', 'google', '<a href=\"http://methocarbamolrobaxin.com/\">robaxin 4212</a> <a href=\"http://cialisedt.com/\">order ci'),
(565, 'AmyReums', 'cdgarza5@mail.com ', '82361579945', 'New York', 'google', '<a href=\"http://tadalafilchem.com/\">tadalafil 10mg brand name</a> '),
(566, 'hildaap1', 'jorgerc2@hideo1210.susumo40.webmailaccount.site', '89292873572', '', 'google', 'Big Ass Photos - Free Huge Butt Porn, Big Booty Pics\r\nhttp://instasexyblog.com/?brenda \r\n best lesbi'),
(567, 'PaulReums', 'william137@aol.com ', '84122797232', 'Dallas', 'google', '<a href=\"https://singulairmontelukast.com/\">over the counter singulair alternatives</a> <a href=\"htt'),
(568, 'Online Homework ', 'tenorholic@qtmx.space ', '82839388197', 'Reno', 'google', '<a href=\"https://homeworko.com/\">writing about a book in an essay</a> <a href=\"https://aaessay.com/\"'),
(569, 'JudyReums', 'annamaria@gmail.com ', '88446874888', 'New York', 'google', '<a href=\"http://fpspharmacy.com/\">canadian pharmacy meds</a> <a href=\"http://viagrapps.com/\">best pr'),
(570, 'MarkReums', 'dbhunter@mail.com ', '86818733732', 'Dallas', 'google', '<a href=\"https://sildenafilextra.com/\">where can you buy viagra uk</a> <a href=\"https://tbviagra.com'),
(571, 'AlanReums', 'lbruckman@mail.com ', '86731952499', 'New York', 'google', '<a href=\"http://buyrpill.com/\">fluoxetine 99</a> <a href=\"http://viagravi.com/\">buy generic viagra u'),
(572, 'Write An Essay ', 'joann@msmx.site ', '81342289225', 'Reno', 'google', '<a href=\"http://ihomeworkhelp.com/\">homework help hotline</a> <a href=\"http://writingservicemay.com/'),
(573, 'KnvpllMible', 'je.n.tai.wo.r.ld.p.icture.t5@o5o5.ru', '88825898271', 'London', 'google', '<a href=https://dubna-pesok.ru>Ñ‰ÐµÐ±ÐµÐ½ÑŒ Ð´ÑƒÐ±Ð½Ð°</a> \r\nTegs: Ñ‰ÐµÐ±ÐµÐ½ÑŒ Ð´ÑƒÐ±Ð½Ð° ÐºÑƒÐ¿Ð¸Ñ');
INSERT INTO `bulk_contact` (`contact_id`, `name`, `email`, `mobile`, `address`, `school_name`, `nature_requirment`) VALUES
(574, 'White Paper Writers ', 'cmurphy237@instamail.site ', '81472588481', 'New York', 'google', '<a href=\"http://essaywri.com/\">college essays starting with quotes</a> '),
(575, 'KiaReums', 'glenandrus@yahoo.com ', '82313618334', 'Denver', 'google', '<a href=\"http://ahapharmacy.com/\">good online mexican pharmacy</a> '),
(576, 'Buy Essay Online ', 'bominn@romail.site ', '82243631529', 'New York', 'google', '<a href=\"https://sswriting.com/\">research paper download</a> '),
(577, 'Bogdannpw', 'stekl.o.el.i.t202.0.t.o.p@gmail.com\r\n', '86936979458', 'Minsk', 'google', 'Ð”Ð¾Ð±Ñ€Ñ‹Ð¹ Ð´ÐµÐ½ÑŒ Ð´Ð°Ð¼Ñ‹ Ð¸ Ð³Ð¾ÑÐ¿Ð¾Ð´Ð°! \r\nÐŸÑ€ÐµÐ´Ð»Ð°Ð³Ð°ÐµÐ¼ Ð’Ð°ÑˆÐµÐ¼Ñƒ Ð²Ð½Ð¸Ð¼Ð°Ð½Ð¸'),
(578, 'DavidRip', 'svtelanakudelnikova1992941xd6@mail.ru', '87576697213', 'Lianyungang', 'google', 'schooloo.com gfgbfhtghrgfgfhtggyiyuiyhfbdfhdn'),
(579, 'Mike Bargeman\r\n', 'no-replyalorb@gmail.com', '85734435656', 'Albany', 'google', 'Howdy \r\n \r\nI have just verified your SEO on  schooloo.com for the Local ranking keywords and seen th'),
(580, 'KiaReums', 'muligans@aol.com ', '81892957159', 'Denver', 'google', '<a href=\"http://pharmabst.com/\">ivermectin 3 mg tablet dosage</a> '),
(581, 'DenReums', 'danielmirica@aol.com ', '84767132838', 'Chicago', 'google', '<a href=\"http://gmipharmacy.com/\">uk pharmacy no prescription</a> <a href=\"http://ketorolactoradol.c'),
(582, 'Assignment Operators ', 'bjarras@qtmx.space ', '82329448753', 'New York', 'google', '<a href=\"https://essays.us.com/\">college level essay</a> '),
(583, 'YanzeoSpura', 'yazenkilos@mulars.ru', '84183172418', 'Ð–Ð¸Ð²Ñƒ Ð² Ð›ÑƒÐ³Ðµ', 'google', 'Ð”Ð°Ð¶Ðµ ÐµÑÐ»Ð¸ Ð²Ñ‹ Ð½Ðµ Ñ…Ð¾Ð´Ð¸Ñ‚Ðµ Ð² Ð·Ð°Ð», Ñ‚Ð¾ Ð²Ñ‹, Ð½Ð°Ð²ÐµÑ€Ð½Ð¾Ðµ, Ð²ÐµÐ´Ñ‘Ñ‚Ðµ Ð°ÐºÑ‚'),
(584, 'LisaReums', 'gregslominski@yahoo.com ', '89527848767', 'Dallas', 'google', '<a href=\"https://cialisxx.com/\">generic cialis 2.5 mg</a> '),
(585, 'Write ', 'townesagency8493@qtmx.space ', '81343793962', 'New York', 'google', '<a href=\"http://writingservicesmart.com/\">biography writing paper</a> '),
(586, 'AmyReums', 'ddonati@gmail.com ', '83327495589', 'New York', 'google', '<a href=\"http://pharmabst.com/\">ivermectin lotion 0.5</a> '),
(587, 'DenReums', 'bigdave@yahoo.com ', '81269663263', 'Chicago', 'google', '<a href=\"http://xntablets.com/\">can i buy ventolin over the counter in canada</a> <a href=\"http://me'),
(588, 'Online Homework Help ', 'le@instamail.site ', '88275656897', 'Reno', 'google', '<a href=\"http://essaydoo.com/\">assignment essayshark</a> <a href=\"http://xwritingservice.com/\">make '),
(589, 'Essay Writing ', 'momsjcaly@jumbox.site ', '85313281418', 'Reno', 'google', '<a href=\"http://xhomeworkhelp.com/\">homework online help</a> <a href=\"http://pprwriter.com/\">college'),
(590, 'LauraSic', 'ijokhodtt@gotzilla.ru', '87252396615', 'San Miguel de Tucuman', 'google', '<a href=https://casinorealgambling.com/>real money casino</a> \r\n<a href=\"https://casinorealgambling.'),
(591, 'PaulReums', 'gavc02@gmail.com ', '83446138688', 'Dallas', 'google', '<a href=\"https://idrgstore.com/\">roxithromycin brand name</a> <a href=\"https://htspharmacy.com/\">rx '),
(592, 'LisaReums', 'jacqualine@mail.com ', '86442391288', 'Dallas', 'google', '<a href=\"https://ontpharm.com/\">australia bupropion</a> '),
(593, 'Dog Ate Homework ', 'lakeisha@instamail.site ', '88473573267', 'Houston', 'google', '<a href=\"https://sswriting.com/\">australian essay writing service</a> <a href=\"https://xhomeworkhelp'),
(594, 'AmyReums', 'staffanandersson@mail.com ', '86637797656', 'New York', 'google', '<a href=\"http://pharmabst.com/\">buy stromectol online uk</a> '),
(595, 'JoshuaSciex', 'genrikust95@gmail.com', '87223388418', 'Virbalis', 'google', '	ÑƒÐºÐ»Ð°Ð´ÐºÐ° Ñ‚Ñ€Ð¾Ñ‚ÑƒÐ°Ñ€Ð½Ð¾Ð¹ Ð¿Ð»Ð¸Ñ‚ÐºÐ¸ Ð¿Ð¾Ð´ \r\n \r\n<a href=\"https://heightraft29.webgarde'),
(596, 'Buy An Essay ', 'asley@qtmx.space ', '89722249838', 'Reno', 'google', '<a href=\"https://homeworko.com/\">common application essay</a> <a href=\"https://sswriting.com/\">writi'),
(597, 'White Paper Writers ', 'bgumbyjr@instamail.site ', '87337139791', 'Houston', 'google', '<a href=\"https://wrtsrv.com/\">buy essay online</a> <a href=\"https://essayhubb.com/\">assignment help '),
(598, 'Essay Writer Reviews ', 'ruzaromca@qtmx.space ', '81559338238', 'New York', 'google', '<a href=\"http://essaywritingserviceone.com/\">help with my homework</a> '),
(599, 'MarkReums', 'bettybourbon@yahoo.com ', '86358977276', 'Dallas', 'google', '<a href=\"https://gnviagra.com/\">cheap viagra online pharmacy</a> <a href=\"https://varpills.com/\">zyv'),
(600, 'Assignment Operators ', 'paullywally@msmx.site ', '81575574996', 'New York', 'google', '<a href=\"https://ihomeworkhelp.com/\">online homework service</a> '),
(601, 'Donaldavf', 'u.s.e.r.z.a.l.e.v.s.k.ij.a22.2.0.1@gmail.com\r\n', '87695779598', 'Minsk', 'google', 'Ð”Ð¾Ð±Ñ€Ñ‹Ð¹ Ð´ÐµÐ½ÑŒ Ð´Ð°Ð¼Ñ‹ Ð¸ Ð³Ð¾ÑÐ¿Ð¾Ð´Ð° \r\nÐžÐ±ÑƒÑÑ‚Ñ€Ð¾Ð¹ÑÑ‚Ð²Ð¾ ÑÐºÐ²Ð°Ð¶Ð¸Ð½Ñ‹ Ñ Ð¿Ð»'),
(602, 'KiaReums', 'chrisgarcia555@outlook.com ', '87348791125', 'Denver', 'google', '<a href=\"http://saletadalafil.com/\">cialis drug</a> '),
(603, 'JudyReums', 'cmfhllc@outlook.com ', '84786595224', 'New York', 'google', '<a href=\"http://cialisbbt.com/\">cialis gel uk</a> <a href=\"http://cialisonlineviagra.com/\">sildenafi'),
(604, 'LisaReums', 'spainnavy@yahoo.com ', '83669534699', 'Dallas', 'google', '<a href=\"https://cialisonlineviagra.com/\">buy generic cialis india</a> '),
(605, 'Homework For Pre K ', 'jimw@jumbox.site ', '85989951628', 'New York', 'google', '<a href=\"http://pprwriter.com/\">essay writing services</a> '),
(606, 'DenReums', 'andytar@yahoo.com ', '87991186124', 'Chicago', 'google', '<a href=\"http://levitraviagracialis.com/\">cialis prescription usa</a> <a href=\"http://gocialis.com/\"'),
(607, 'Sssvepunda', 'fgsfgsgs@gmail.com', '85986356379', 'Cheltenham', 'google', 'loli skirt PTÂ¦Â¦Â¦HC CÂ¦Â¦Â¦P offline forum \r\n \r\n===>>> https://biturl.top/BnIVna <<<==='),
(608, 'How To Writing Essay ', 'leclaircorinne@msmx.site ', '83197359245', 'Reno', 'google', '<a href=\"http://aaessay.com/\">need help writing a narrative essay</a> <a href=\"http://ihomeworkhelp.'),
(609, 'AmyReums', 'zekeyancey@outlook.com ', '87856872252', 'New York', 'google', '<a href=\"http://buyviagratab.com/\">australia viagra price</a> '),
(610, 'Custom Essay Writer ', 'aabittan@romail.site ', '88531193878', 'New York', 'google', '<a href=\"https://essaywri.com/\">college application essay editing</a> <a href=\"https://sswriting.com'),
(611, 'Ktjvszq', 'tesr2r@gmail.com\r\n', '86412148823', '', 'google', 'Miedzxq \r\n \r\ntesr2r@gmail.com\r\n    :'),
(612, 'EyeReums', 'colleenm808@mail.com ', '84857412355', 'San Jose', 'google', '<a href=\"http://isntabs.com/\">wellbutrin 75mg daily</a> <a href=\"http://viagrasildenafilpill.com/\">g'),
(613, 'Marlenecak', 'marlene77@bk.ru', '81824622858', 'Gray Mountain', 'google', ' \r\n \r\nWanna casual sex? My pussy is at your disposal! Find my profile with phone number here - https'),
(614, 'MaryReums', 'fanny@outlook.com ', '88543956511', 'Dallas', 'google', '<a href=\"https://cialistadalafilgeneric.com/\">buy tadalafil uk</a> <a href=\"https://myhealthow.com/\"'),
(615, 'KiaReums', 'dcupandup@aol.com ', '89517259329', 'Denver', 'google', '<a href=\"http://cialislevitraviagra.com/\">buy tadalafil online uk</a> '),
(616, 'LisaReums', 'yudai1008@hotmail.com ', '84165899226', 'Dallas', 'google', '<a href=\"https://keepills.com/\">flagyl pill</a> '),
(617, 'LisaReums', 'angels5473@hotmail.com ', '87272584788', 'Dallas', 'google', '<a href=\"https://gogoviagra.com/\">cost of 100mg viagra</a> '),
(618, 'Andreasuws', 'b.u.r.e.ni.ecena20.20o.k@gmail.com\r\n', '85537821639', 'Minsk', 'google', 'ÐŸÑ€Ð¸Ð²ÐµÑ‚ÑÑ‚Ð²ÑƒÑŽ Ð’Ð°Ñ Ð´Ñ€ÑƒÐ·ÑŒÑ!ÐŸÑ€ÐµÐ´Ð»Ð°Ð³Ð°ÐµÐ¼ Ð’Ð°ÑˆÐµÐ¼Ñƒ Ð²Ð½Ð¸Ð¼Ð°Ð½Ð¸ÑŽ Ð¸Ð½Ñ‚'),
(619, 'Write Assignment ', 'kathyann62@instamail.site ', '89655895386', 'New York', 'google', '<a href=\"http://sswriting.com/\">write my research paper online</a> <a href=\"http://writingservicecat'),
(620, 'KiaReums', 'stella@gmail.com ', '85285835697', 'Denver', 'google', '<a href=\"http://viagraremm.com/\">buy viagra online usa no prescription</a> '),
(621, 'Buying Essays ', 'jasonjwang@msmx.site ', '85618539121', 'Reno', 'google', '<a href=\"http://essaywri.com/\">writing a narrative essay youtube</a> <a href=\"http://wrtsrv.com/\">he'),
(622, 'Write My Essay Cheap ', 'neel417@instamail.site ', '83323887442', 'New York', 'google', '<a href=\"http://writingservicesmart.com/\">paper writing website</a> <a href=\"http://writingserviceca'),
(623, 'KiaReums', 'balakierjason@aol.com ', '84718592343', 'Denver', 'google', '<a href=\"http://pharmcr.com/\">zithromax</a> '),
(624, 'The Assignments ', 'scallybird@jumbox.site ', '84257251994', 'New York', 'google', '<a href=\"http://essaywritingserviceone.com/\">essay using apa</a> '),
(625, 'FrancisCycle', 'vityusha.ananasenko@mail.ru', '88565274483', 'Edson', 'google', 'cialis coupon <a href=https://cialisahc.com/>trusted sites paypal to buy cialis online without presc'),
(626, 'CarlReums', 'nicolette@gmail.com ', '89142144579', 'New York', 'google', '<a href=\"http://effhealth.com/\">bupropion prescription</a> <a href=\"http://myhealthow.com/\">prozac 1'),
(627, 'AmyReums', 'christiana@mail.com ', '86521626251', 'New York', 'google', '<a href=\"http://ffmeds.com/\">levitra purchase uk</a> '),
(628, '100medsptavokwet', 'valentinxomyakow89@mail.ru', '82421367398', 'ÐšÑ€Ð°ÑÐ½Ð¾ÑÑ€ÑÐº', 'google', ' \r\n http://100medsptavok.ru - Ð¼ÐµÐ´ÐºÐ½Ð¸Ð¶ÐºÐ° Ð±Ñ‹ÑÑ‚Ñ€Ð¾ Ð´ÐµÑˆÐµÐ²Ð¾  -  Ð¿Ð¾Ð´Ñ€Ð¾Ð±Ð½ÐµÐµ Ð½'),
(629, 'zFilm_HDemide', 'matveay.17.7.772@gmail.com\r\n', '81458817761', 'http://multiki-online24.zfilm-ukraine.club/80410-liga.html', 'google', 'ÐŸÑ€Ð¸Ð²ÐµÑ‚. Ð¯ Ð·Ð´ÐµÑÑŒ ÑÐ¼Ð¾Ñ‚Ñ€ÑŽ <b>Ð›Ð¸Ð³Ð° ÑÐ¿Ñ€Ð°Ð²ÐµÐ´Ð»Ð¸Ð²Ð¾ÑÑ‚Ð¸ Ð—Ð°ÐºÐ° Ð¡Ð½Ð°Ð¹Ð'),
(630, 'ÑÐ¸ÑÑ‚ÐµÐ¼Ñ‹ Ð¾Ñ‡Ð¸ÑÑ‚ÐºÐ¸ Ð²Ð¾Ð´Ñ‹', 'gordonmils@yandex.com', '86443214279', '', '', 'Ð”Ð»Ñ Ñ„Ð¸Ð»ÑŒÑ‚Ñ€Ð°Ñ†Ð¸Ð¸ Ð²Ð¾Ð´Ñ‹ Ð² ÐºÐ²Ð°Ñ€Ñ‚Ð¸Ñ€Ð°Ñ… Ð¸ ÐºÐ¾Ñ‚Ñ‚ÐµÐ´Ð¶Ð°Ñ… Ð¿Ñ€Ð¸Ð¼ÐµÐ½ÑÐµÑ‚Ñ'),
(631, 'Is Homework Helpful ', 'ione@qtmx.space ', '83173164261', 'Reno', 'google', '<a href=\"http://ihomeworkhelp.com/\">writing lab</a> <a href=\"http://writingservicesmart.com/\">paper '),
(632, 'Mep', 'baburovp@bk.ru', '83914318357', 'Kaduna', 'google', 'Hi, this is Julia. I am sending you my intimate photos as I promised. https://bit.ly/3f4ypMq'),
(633, 'MarkReums', 'gregrnld@aol.com ', '82114951411', 'Dallas', 'google', '<a href=\"https://profpills.com/\">buy brand name lexapro</a> <a href=\"https://cialistadalafilviagra.c'),
(634, 'Buy Custom Essay ', 'kmcdonald@jumbox.site ', '83397442924', 'Reno', 'google', '<a href=\"https://essayio.com/\">homework help mountains</a> <a href=\"https://writingservicecat.com/\">'),
(635, 'AmyReums', 'jerrica@yahoo.com ', '81115289393', 'New York', 'google', '<a href=\"http://viagrazt.com/\">viagra prescription coupon</a> '),
(636, 'CasinoPinUp', 'casinopinuponline777@gmail.com', '87625867753', 'Mariupol', 'google', 'Ð˜Ð³Ñ€Ð¾Ð²Ñ‹Ðµ Ð°Ð²Ñ‚Ð¾Ð¼Ð°Ñ‚Ñ‹ Ð¸ ÑÐ»Ð¾Ñ‚Ñ‹ Ð² Ð£ÐºÑ€Ð°Ð¸Ð½Ðµ Ð¸Ð¼ÐµÑŽÑ‚ Ð»Ð¸Ñ†ÐµÐ½Ð·Ð¸ÑŽ Ñ‚Ð¾Ð»ÑŒ'),
(637, 'KiaReums', 'bbombmema@aol.com ', '86244623441', 'Denver', 'google', '<a href=\"http://mdcialis.com/\">canada online pharmacy no prescription</a> '),
(638, 'AmyReums', 'herikalee@outlook.com ', '84112926753', 'New York', 'google', '<a href=\"http://cialistadalafilgeneric.com/\">female cialis 10mg</a> '),
(639, 'Wilburntubre', 'ilburnJib@gmail.com', '85856431781', 'Axum', 'google', '<a href=https://usa.alt.com>alt.com</a>'),
(640, 'Write Essays For Me ', 'leia@romail.site ', '87291373962', 'Houston', 'google', '<a href=\"https://essaywritingserviceone.com/\">professional essay help</a> <a href=\"https://homeworkh'),
(641, 'EyeReums', 'flora@gmail.com ', '87937311986', 'San Jose', 'google', '<a href=\"http://buygmeds.com/\">trazodone 0.5 mg</a> <a href=\"http://cialistg.com/\">generic cialis nz'),
(642, 'KiaReums', 'mattvalentine@mail.com ', '82197651988', 'Denver', 'google', '<a href=\"http://pplmeds.com/\">cost of lasix 40 mg</a> '),
(643, 'Type Writer Paper ', 'bnanaproductions@jumbox.site ', '89515237796', 'Reno', 'google', '<a href=\"http://writingservicesmart.com/\">custom essay writing service</a> <a href=\"http://homeworkh'),
(644, 'LisaReums', 'nora@yahoo.com ', '88927949457', 'Dallas', 'google', '<a href=\"https://effhealth.com/\">order wellbutrin</a> '),
(645, 'Buy Essays Papers ', 'dadecountyballar@qtmx.space ', '86654258655', 'New York', 'google', '<a href=\"https://wrtsrv.com/\">a research proposal</a> '),
(646, 'Marlenecak', 'marlene77@bk.ru', '83141454776', 'Gray Mountain', 'google', ' \r\n \r\nWanna casual sex? My pussy is at your disposal! Find my profile with phone number here - https'),
(647, 'AmyReums', 'agonz1013@aol.com ', '84417612392', 'New York', 'google', '<a href=\"http://viagrasildenafilpill.com/\">can you buy real viagra from canada</a> '),
(648, 'CarlReums', 'will@yahoo.com ', '82625146663', 'New York', 'google', '<a href=\"http://saletadalafil.com/\">cialis 5mg</a> <a href=\"http://cialismlt.com/\">generic cialis 20'),
(649, 'DenReums', 'scott4@hotmail.com ', '89388941955', 'Chicago', 'google', '<a href=\"http://keepills.com/\">doxycycline 100 mg</a> <a href=\"http://zzmeds.com/\">clomid medication'),
(650, 'Assignment Helper ', 'theverylastaddress@jumbox.site ', '81965282819', 'New York', 'google', '<a href=\"http://pprwriter.com/\">buy writing paper</a> '),
(651, 'InvillMible', 'jen.taiw.orl.dpi.ctu.r.et5@o5o5.ru', '84743245213', 'London', 'google', '<a href=https://videnie.org/study/taro/>Ð¾Ð±ÑƒÑ‡ÐµÐ½Ð¸Ðµ Ñ‚Ð°Ñ€Ð¾</a> \r\nTegs: Ð¾Ð±ÑƒÑ‡ÐµÐ½Ð¸Ðµ ÐºÐ°Ñ'),
(652, 'MarkReums', 'meunierannick@hotmail.com ', '82348642679', 'Dallas', 'google', '<a href=\"https://cialisgre.com/\">buy cialis pills online</a> <a href=\"https://cialistadalafilonline.'),
(653, 'KiaReums', 'bbombmema@gmail.com ', '82787862742', 'Denver', 'google', '<a href=\"http://wwviagra.com/\">buy genuine viagra online</a> '),
(654, 'Mep', 'baburovp@bk.ru', '83689322826', 'Kaduna', 'google', 'Hi, this is Anna. I am sending you my intimate photos as I promised. https://tinyurl.com/yfnk2pkb'),
(655, 'Write My Essay ', 'lotus@jumbox.site ', '87433697399', 'Reno', 'google', '<a href=\"http://doomyhomework.com/\">college essay writing service</a> <a href=\"http://ihomeworkhelp.'),
(656, 'ThomasSib', 'go.l.g.o.l.a.b.2.6.1@gmail.com', '88872491215', 'Loja', 'google', 'residential drug rehabilitation  <a href=  > soltifoundation.us/buy-tenuate-pfz/ </a>  ohio drug reh'),
(657, 'http://www.curtsy.jp', 'pprsosurmail@gmail.com', '84414796268', 'http://www.curtsy.jp', 'google', '<a href=http://www.curtsy.jp>dvd æµ·è³Šç‰ˆ</a><a href=\"http://www.curtsy.jp\" title=\"nhkãƒ‰ãƒ©ãƒž ã‚³'),
(658, 'Speedy Cash ', 'dmushitz@qtmx.space ', '84825119592', 'New York', 'google', '<a href=\"https://lendingbt.com/\">payday loans direct</a> '),
(659, 'Online Loans ', 'moflah@msmx.site ', '85246977248', 'New York', 'google', '<a href=\"http://loansinstantapproval.us.com/\">easy loans</a> '),
(660, 'LisaReums', 'dmarshall53@aol.com ', '87768938459', 'Dallas', 'google', '<a href=\"https://viagraprim.com/\">best generic viagra prices</a> '),
(661, 'AmyReums', 'ptdflb69@outlook.com ', '86164342842', 'New York', 'google', '<a href=\"http://viagrahp.com/\">how to buy viagra tablets in india</a> '),
(662, 'progressive auto ins ', 'thompson@qtmx.space ', '84328796645', 'Houston', 'google', '<a href=\"https://autoinsuranceggo.com/\">aaa car insurance</a> '),
(663, 'PaulReums', 'gekervarn@outlook.com ', '85137391239', 'Dallas', 'google', '<a href=\"https://buygmeds.com/\">trazodone 50 mg capsules</a> <a href=\"https://cialislevitraviagra.co'),
(664, 'Spotloan ', 'bmnico88@jumbox.site ', '86466826627', 'New York', 'google', '<a href=\"http://waltloans.com/\">instant cash loans no credit check</a> <a href=\"http://tunlending.co'),
(665, 'HaroldSnani', 'maximil777@yandex.com', '84936564991', 'Hohenems', 'google', ':)<a href=https://coronovirus.ru>:)</a>:)'),
(666, 'PatrickMaf', 'astarhanovarsen@gmail.com', '81243818466', 'Hohenems', 'google', '<a href=https://vk.com/aliexpress777aliexpress>Ð°Ð»Ð¸ÑÐºÑÐ¿Ñ€ÐµÑÑ</a>'),
(667, 'geico auto insurance ', 'thompson@qtmx.space ', '85982592837', 'Houston', 'google', '<a href=\"https://autoinsurancequotes.us.com/\">esurance auto insurance</a> '),
(668, 'auto owners ins ', 'owen@romail.site ', '86124576469', 'Reno', 'google', '<a href=\"http://carinsurancetwo.com/\">acceptance auto insurance</a> '),
(669, 'Spotloan ', 'missmeyou@jumbox.site ', '87323894543', 'Reno', 'google', '<a href=\"https://elleloans.com/\">easy money payday loans</a> <a href=\"https://cashaadvance.com/\">def'),
(670, 'MaryReums', 'dinty40@aol.com ', '85125834586', 'Dallas', 'google', '<a href=\"https://myhealthow.com/\">buy prozac australia</a> <a href=\"https://cialistg.com/\">cialis 2.'),
(671, 'KiaReums', 'annemary8@hotmail.com ', '81233383616', 'Denver', 'google', '<a href=\"http://opapills.com/\">erectafil 20</a> '),
(672, 'Instant Online Loans ', 'helengeorgiadou@jumbox.site ', '82633685564', 'Reno', 'google', '<a href=\"http://cashaadvance.com/\">parent loan</a> <a href=\"http://cashadvia.com/\">secured loans</a>'),
(673, 'Instant Online Loans ', 'mcbrown4u@romail.site ', '86214245247', 'New York', 'google', '<a href=\"https://ossloans.com/\">quick personal loans bad credit</a> '),
(674, 'EyeReums', 'thejingleguy@gmail.com ', '81699368847', 'San Jose', 'google', '<a href=\"http://cialistadalafilonline.com/\">cialis price</a> <a href=\"http://gocialis.com/\">cheap ci'),
(675, 'KiaReums', 'rojobn@aol.com ', '88811455696', 'Denver', 'google', '<a href=\"http://wwviagra.com/\">buy viagra now</a> '),
(676, 'auto insurance quote ', 'enowrzc1@jumbox.site ', '82595597993', 'Reno', 'google', '<a href=\"http://bestvehicleinsurancequotes.com/\">car insurance california</a> '),
(677, 'CarlReums', 'sheridanreilly@hotmail.com ', '86473351848', 'New York', 'google', '<a href=\"http://myhealthow.com/\">fluoxetine 40 mg</a> <a href=\"http://gocialis.com/\">india cialis on'),
(678, 'AmyReums', 'jirin16@yahoo.com ', '83961914494', 'New York', 'google', '<a href=\"http://cialisviagralevitra.com/\">generic viagra professional</a> '),
(679, 'Payday ', 'itsliccry@msmx.site ', '86985751135', 'New York', 'google', '<a href=\"http://elleloans.com/\">best personal loans online</a> '),
(680, 'MarkReums', 'masah01581@hotmail.com ', '84894523715', 'Dallas', 'google', '<a href=\"https://sildenafilviagracialis.com/\">viagra mail order</a> <a href=\"https://viagrapv.com/\">'),
(681, 'skyreverywet', 'emiliya_belyayeva_81@mail.ru', '82954145232', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', ' \r\n<a href=https://www.skyrevery.com/private-jets/crj-200/>Bombardier CRJ 200</a>        -  more inf'),
(682, 'Loan Cash ', 'sstud625@instamail.site ', '84267688568', 'New York', 'google', '<a href=\"http://paydayloans.us.com/\">instant payday loan no credit check</a> '),
(683, 'JamesUrila', 'kostromina-nadezhda_199110@mail.ru', '85528792875', 'Mosta', 'google', 'Ð³Ð´Ðµ Ð²Ð¿ÐµÑ€Ð²Ñ‹Ðµ Ð¿Ð¾ÑÐ²Ð¸Ð»ÑÑ Ñ€Ð¸Ñ \r\n \r\n<a href=https://krd-agro.ru/rise/rapan-po-gost/>Ñ'),
(684, 'Pay Day Loans ', 'madge@romail.site ', '88897137154', 'New York', 'google', '<a href=\"https://ossloans.com/\">online loan</a> <a href=\"https://cashadvaa.com/\">bad credit payday</'),
(685, 'PaulReums', 'robertdalla@outlook.com ', '89398664448', 'Dallas', 'google', '<a href=\"https://drugstorewww.com/\">foreign online pharmacy</a> <a href=\"https://cialismlt.com/\">dis'),
(686, 'Payday Loans Online ', 'efairfax@jumbox.site ', '81769192936', 'Reno', 'google', '<a href=\"https://cashadvia.com/\">bad credit money loans</a> <a href=\"https://sameday.us.com/\">second'),
(687, 'DenReums', 'mfrancis@aol.com ', '81323837355', 'Chicago', 'google', '<a href=\"http://viagracialistadalafil.com/\">cialis generic otc</a> <a href=\"http://cialisviagralevit'),
(688, 'LisaReums', 'gbodofs@hotmail.com ', '82466711329', 'Dallas', 'google', '<a href=\"https://lamapharm.com/\">rx pharmacy no prescription</a> '),
(689, 'JdvmllMible', 'j.en.ta.i.w.or.l.d.pi.ctur.et5@o5o5.ru', '84218171493', 'London', 'google', '<a href=https://kimry-karier.ru>ÐºÐ¸Ð¼Ñ€Ñ‹ Ð¿Ð³Ñ Ð´Ð¾ÑÑ‚Ð°Ð²ÐºÐ°</a> \r\nTegs: ÐºÐ¸Ð¼Ñ€Ñ‹ Ð¿Ð³Ñ Ñ†Ð'),
(690, 'AmyReums', 'jenelle@gmail.com ', '87413378737', 'New York', 'google', '<a href=\"http://jjihealth.com/\">augmentin 650</a> '),
(691, 'cheap auto insurance ', 'wellswood@qtmx.space ', '89942493458', 'Houston', 'google', '<a href=\"https://autoinsurancequotes.us.com/\">usaa auto insurance</a> '),
(692, 'Paydayloan ', 'michelea@qtmx.space ', '83644398316', 'New York', 'google', '<a href=\"http://bestpdloans.com/\">loans 500</a> <a href=\"http://cashlnd.com/\">installment definition'),
(693, 'aig auto insurance ', 'scott2serenade@jumbox.site ', '86329232362', 'Reno', 'google', '<a href=\"http://bestcarins.com/\">aaa car insurance quote online</a> '),
(694, 'DenReums', 'pauletta@gmail.com ', '84986478749', 'Chicago', 'google', '<a href=\"http://cialislem.com/\">cialis online us</a> <a href=\"http://upthealth.com/\">lipitor 0 5 mg<'),
(695, 'Benjamin Ehinger', 'writingbyb@gmail.com', '87234252494', 'Klimmen', 'google', 'Hi! \r\n \r\nDo you struggle to find time to write articles? \r\n \r\nHire the best team of writing online t'),
(696, 'Invillfoema', 'je.nt.a.iwor.l.d.pi.c.t.uret5@o5o5.ru', '81897985736', 'London', 'google', '<a href=https://www.hotelhot.ru/news/396-kak-zaselitsya-v-kommercheskoe-obshchezhitie-semej>Ð¾Ð±Ñ‰Ðµ'),
(697, 'Mohammed Hassan Ali', 'mmxx0684@gmail.com', '88792997231', 'Algiers', 'google', 'Financing Debt/ loans/Investment Opportunity Etc..., with \r\nonly 4% interest for 10 Years, and 3 mor'),
(698, 'Mep', 'baburovp@bk.ru', '84354917451', 'Kaduna', 'google', 'Hi, this is Jenny. I am sending you my intimate photos as I promised. https://tinyurl.com/yk3b67bq'),
(699, 'HenryGox', 'hsjjsanajaj@gmail.com', '85268688732', 'Biel', 'google', 'Godzilla King Of The Monsters Download \r\n \r\nThe crypto-zoological agency Monarch faces off against a'),
(700, 'Cynthiaexelo', 'svit18moda@yandex.by', '87677132553', 'Mtskheta', 'google', 'ÐšÐ°Ñ‚Ð°Ð»Ð¾Ð³ Ð¶ÐµÐ½ÑÐºÐ¾Ð¹ Ð¾Ð´ÐµÐ¶Ð´Ñ‹ Ð¡Ð²Ð¸Ñ‚Ð¼Ð¾Ð´Ð° \r\n \r\n \r\n	https://sweetmoda7.ru/deesses	<'),
(701, 'DavidGlymn', 'panfilkudryashov@mail.ru', '89178829319', 'Cheltenham', 'google', 'HII ,. \r\nÐÐ°ÑˆÐµÐ» https://steelcentury.ru/latun/\r\n site Ð½Ð°Ð¼ Ð½ÑƒÐ¶Ð½Ð¾ ÑÐ´ÐµÐ»Ð°Ñ‚ÑŒ cc Ð³Ð¸Ð±'),
(702, 'Andreasajq', 'aq.ua.bur.s.e.r.v.ic.e.2.0.21@gmail.com\r\n', '87882213716', 'Minsk', 'google', 'Ð”Ð¾Ð±Ñ€Ñ‹Ð¹ Ð´ÐµÐ½ÑŒ Ð´Ð°Ð¼Ñ‹ Ð¸ Ð³Ð¾ÑÐ¿Ð¾Ð´Ð°! ÐŸÑ€ÐµÐ´Ð»Ð°Ð³Ð°ÐµÐ¼ Ð’Ð°ÑˆÐµÐ¼Ñƒ Ð²Ð½Ð¸Ð¼Ð°Ð½Ð¸ÑŽ'),
(703, 'DonaldJah', 'yfeqi1975@mail.ru', '83483254593', '', 'google', 'Ð¯ Ñ‚ÑƒÑ‚ Ð¾Ð±Ð½Ð°Ñ€ÑƒÐ¶Ð¸Ð» Ð¿Ð¾ÑˆÐ»ÑƒÑŽ Ð³Ñ€ÑƒÐ¿Ð¿Ñƒ Ð´Ð»Ñ Ð²Ð·Ñ€Ð¾ÑÐ»Ñ‹Ñ… Ð² Ð²ÐºÐ¾Ð½Ñ‚Ð°ÐºÑ‚Ð¸'),
(704, 'DavidNer', 'soundremont@mail.ru', '85563778462', 'Monrovia', 'google', 'Ð Ñ›Ð¡â€šÐ¡Ð‚Ð ÂµÐ Ñ˜Ð Ñ•Ð Ð…Ð¡â€šÐ Ñ‘Ð¡Ð‚Ð Ñ•Ð Ð†Ð Â°Ð Â»Ð Ñ‘ 10-Ð Â»Ð ÂµÐ¡â€šÐ Ð…Ð Ñ‘Ð â„– Ð¡Ð‚Ð Â'),
(705, 'HeoldSnani', 'm1max77@yandex.com', '83625456284', 'Hohenems', 'google', ':)<a href=http://agro-portal.su>:)</a>:)'),
(706, 'Bogdangoj', 'stek.l.oel.it2.020.t.op@gmail.com\r\n', '87367985775', 'Minsk', 'google', 'Ð”Ð¾Ð±Ñ€Ð¾Ð³Ð¾ Ð²Ñ€ÐµÐ¼ÐµÐ½Ð¸ ÑÑƒÑ‚Ð¾Ðº Ð´Ð°Ð¼Ñ‹ Ð¸ Ð³Ð¾ÑÐ¿Ð¾Ð´Ð°! \r\nÐŸÑ€ÐµÐ´Ð»Ð°Ð³Ð°ÐµÐ¼ Ð’Ð°ÑˆÐµ'),
(707, 'JamesRek', 'awacenmanager@gmail.com', '89669522226', 'Kaduna', 'google', 'ÐŸÐ¾ÑÐ²Ð¸Ð»ÑÑ ÑÐ°Ð¹Ñ‚ Ð³Ð´Ðµ Ð¼Ð¾Ð¶Ð½Ð¾ <a href=https://awa-center.ru/>Ð¿Ð¾Ð³Ð»ÑÐ´ÐµÑ‚ÑŒ Ð¿Ñ€Ð¾'),
(708, 'RobertFaums', 'mubeekhan58@gmail.com', '85433323665', 'Gray Mountain', 'google', 'Hi, \r\n \r\nI am contacting you today because I have jackpotbetonline.com & allcasinogamblingtips.com s'),
(709, 'MichealBib', 'cazinowebsite@yandex.ru', '88323125418', 'Mie', 'google', '<b>PLAY FOR FREE</b> \r\n \r\n<b>PLAY THE BEST GAMES OF 2021 FOR FREE</b> ON <a href=http://agambler.ru/'),
(710, 'RogerParma', 'freebacklinks414@gmail.com', '85372952385', 'Klimmen', 'google', 'Hi, \r\n \r\nI am contacting you today because I have jackpotbetonline.com & allcasinogamblingtips.com s'),
(711, 'EdwardDes', 'mubeekhan58@gmail.com', '87254862466', 'Andorra La Vella', 'google', 'Hi, \r\n \r\nI am contacting you today because I have jackpotbetonline.com & allcasinogamblingtips.com s'),
(712, 'Donnasic', 'merrittpaul715@gmail.com', '81831496674', 'Santa Rosa', 'google', 'https://play.google.com/store/apps/details?id=com.icupgames.bubble.shooter \r\n \r\n<a href=https://avia'),
(713, 'spravkimedikwet', 'svetaryabushkina196@mail.ru', '87461527613', 'ÐšÑ€Ð°ÑÐ½Ð¾ÑÑ€ÑÐº', 'google', ' \r\nhttp://spravkimedik.ru - ÐºÑƒÐ¿Ð¸Ñ‚ÑŒ ÑÐ¿Ñ€Ð°Ð²ÐºÑƒ 082Ñƒ Ð´Ð»Ñ Ð²Ñ‹ÐµÐ·Ð´Ð° Ð·Ð° Ð³Ñ€Ð°Ð½Ð¸Ñ†Ñ'),
(714, 'Antoniozrl', 'p.u.t.il.o.ivan7.35.6.7.8123@gmail.com\r\n', '82748642817', 'Minsk', 'google', 'ÐŸÑ€Ð¸Ð²ÐµÑ‚ Ð³Ð¾ÑÐ¿Ð¾Ð´Ð°!Ð•ÑÑ‚ÑŒ Ñ‚Ð°ÐºÐ¾Ð¹ Ð·Ð°Ð¼ÐµÑ‡Ð°Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ð¹ ÑÐ°Ð¹Ñ‚ Ð´Ð»Ñ Ð·Ð°ÐºÐ°Ð'),
(715, 'Mike Dean\r\n', 'see-email-in-message@monkeydigital.co', '85715928638', 'Willemstad', 'google', 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your schooloo.com website? \r\nHaving a'),
(716, 'Charlesnah', 'gerasimpapitskii@gmail.com', '83435557182', 'Novosibirsk', 'google', 'https://alcofriday.ru/<a href=\"https://alcofriday.ru/\">Ð”Ð¾ÑÑ‚Ð°Ð²ÐºÐ° Ð°Ð»ÐºÐ¾Ð³Ð¾Ð»Ñ ÐÐ¾Ð²Ð¾ÑÐ'),
(717, 'Andreaswmd', 'a.quaburs.e.rv.i.c.e202.1@gmail.com\r\n', '84441975537', 'Minsk', 'google', 'ÐŸÑ€Ð¸Ð²ÐµÑ‚ Ð³Ð¾ÑÐ¿Ð¾Ð´Ð°!Ð•ÑÑ‚ÑŒ Ñ‚Ð°ÐºÐ¾Ð¹ Ð·Ð°Ð¼ÐµÑ‡Ð°Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ð¹ ÑÐ°Ð¹Ñ‚ Ð´Ð»Ñ Ð·Ð°ÐºÐ°Ð'),
(718, 'FeoldSnani', 'm2max77@yandex.com', '84418918376', 'Hohenems', 'google', ':)<a href=https://oktmo.ru/>:)</a>:)'),
(719, 'Mike Daniels\r\n', 'no-replyalorb@gmail.com', '86843153257', 'Albany', 'google', 'Howdy \r\n \r\nI have just took an in depth look on your  schooloo.com for the Local ranking keywords an'),
(720, 'Mep', 'baburovp@bk.ru', '87884267886', 'Kaduna', 'google', 'Hi, this is Jeniffer. I am sending you my intimate photos as I promised. https://tinyurl.com/yfm3oqa'),
(721, 'Mep', 'baburovp@bk.ru', '82276143125', 'Kaduna', 'google', 'Hi, this is Jeniffer. I am sending you my intimate photos as I promised. https://tinyurl.com/yfm3oqa'),
(722, 'Mep', 'baburovp@bk.ru', '81924654186', 'Kaduna', 'google', 'Hi, this is Jeniffer. I am sending you my intimate photos as I promised. https://tinyurl.com/yfm3oqa'),
(723, 'Mep', 'baburovp@bk.ru', '87141691359', 'Kaduna', 'google', 'Hi, this is Jeniffer. I am sending you my intimate photos as I promised. https://tinyurl.com/yfm3oqa'),
(724, 'Kennethglinc', 'ksmidt443@gmail.com', '83518185223', 'Kuwait', 'google', 'ÐšÐ°Ñ‡ÐµÑÑ‚Ð²ÐµÐ½Ð½Ñ‹Ð¹ Ð ÐµÐ¼Ð´ÐµÑÐ¸Ð²Ð¸Ñ€ Ð¼Ð¾Ð¶Ð½Ð¾ ÐºÑƒÐ¿Ð¸Ñ‚ÑŒ Ð·Ð´ÐµÑÑŒ Ð² Ð°Ð¿Ñ‚ÐµÐºÐµ \r\n '),
(725, 'DavidCript', 'wlms111@rambler.ru', '89942558197', 'Algiers', 'google', '<b> <a href=https://velpanex.ru/shop/23/desc/ibruxen>Ibruxen (Ð˜Ð±Ñ€ÑƒÑ‚Ð¸Ð½Ð¸Ð± 140Ð¼Ð³) - Ð˜Ð±Ñ€Ñƒ'),
(726, 'Kathrynlergo', 'alexpopov716253@gmail.com', '84379661193', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', 'ÐŸÑ€Ð¸Ð³Ð»Ð°ÑˆÐ°ÐµÐ¼ Ð’Ð°ÑˆÐµ Ð¿Ñ€ÐµÐ´Ð¿Ñ€Ð¸ÑÑ‚Ð¸Ðµ Ðº Ð²Ð·Ð°Ð¸Ð¼Ð¾Ð²Ñ‹Ð³Ð¾Ð´Ð½Ð¾Ð¼Ñƒ ÑÐ¾Ñ‚Ñ€ÑƒÐ´Ð'),
(727, 'Marcussar', 'kennethLycle@ggmaail.com', '82242947317', 'Lar', 'google', 'Looking for organic SERP boost or safe and quick indexing? Our social signals services will help you'),
(728, 'AnthonyBed', 'genridorni02@gmail.com', '83698958789', 'Shekhupura', 'google', 'Ð¿Ð¾ÐºÑ€Ð°ÑÐºÐ° ÐºÑ€Ñ‹ÑˆÐ¸ ÐºÑ€Ð°ÑÐºÐ¾Ð¿ÑƒÐ»ÑŒÑ‚Ð¾Ð¼ \r\n<a href=\"https://turretshow6.mystrikingly.c'),
(729, 'TyroneMob', 'svtelanakudelnikova1992941xd6@mail.ru', '88735139157', 'Hoskins', 'google', 'schooloo.com oiotugorvygivbjfguefiugehiwjfeoswifehgidjwifhge'),
(730, 'LeoldSnani', 'm3max77@yandex.com', '85857633644', 'Hohenems', 'google', ':)<a href=https://coronavirus-website.ru/>:)</a>:)'),
(731, 'Henrybuh', 'oblako2018_5@bk.ru', '81371815581', 'Mount Carey', 'google', 'https://vktarg.yourpartnermag.site/vktarget-zarabotok-bez-vlozheniy/vktarget-zarabotok-v-sotsialnih-'),
(732, 'kkbkinfo5site', 'sporenti@rambler.ru', '83348193524', 'Lilongwe', 'google', 'Ð¡Ð¿Ð°ÑÐ¸Ð´Ð¾, + '),
(733, 'VideoDownloader387', 'bestvideosoft123@gmail.com', '82591844578', 'Nestor', 'google', 'Dear friends, just came across this amazing site and would like to post some useful website resource'),
(734, 'Benjamin Ehinger', 'writingbyb@gmail.com', '84344286331', 'London', 'google', 'Hi! \r\n \r\nDo you struggle to find time to write articles? \r\n \r\nHire the best team of writers online t'),
(735, 'skyreverywet', 'jeanelle.reaser84706@mail.ru', '89789336212', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', ' \r\n<a href=https://skyrevery.ru/airplanes/crj-200/>Ð§Ð°Ñ€Ñ‚ÐµÑ€Ð½Ñ‹Ð¹ ÑÐ°Ð¼Ð¾Ð»ÐµÑ‚ Bombardier CRJ-'),
(736, 'CarissaEvers', 'carissa77@bk.ru', '88294121777', 'Los Angeles', 'google', ' \r\n \r\nReal Sex Model Meet Rich Daddy! \r\nFor sexual pleasures in real life! \r\nPaid! \r\nFreebies fuck! '),
(737, 'Alexander Boll', 'alexander466alan@gmail.com', '83978444171', 'Nuwara Eliya', 'google', 'Looking for Facebook likes or Instagram followers? \r\nWe can help you. Please visit https://1000-like'),
(738, 'NeoldSnani', 'm4max77@yandex.com', '87922328194', 'Hohenems', 'google', ':)<a href=http://sunmuseum.ru/>:)</a>:)'),
(739, 'RobertExems', 'gcsoft2014@gmail.com', '86649536294', 'Garhoud', 'google', 'Press the \"Download Now\" button to download <b>AllPlan Licence Keys</b>. \r\nThe process will just tak'),
(740, 'Mike Peterson\r\n', 'no-reply@google.com', '89296259986', 'Kaohsiung Municipality', 'google', 'Howdy \r\n \r\nI have just verified your SEO on  schooloo.com for its SEO Trend and saw that your websit'),
(741, 'Amatoresfloom', 'logi33logi@meta.ua', '85624393323', 'Burnt Pine', 'google', 'ÐšÐ°Ñ€Ñ‚Ð¸Ð½Ñ‹ Ð¿Ð¾ Ð½Ð¾Ð¼ÐµÑ€Ð°Ð¼ Ð±ÐµÐ· ÐºÐ¾Ñ€Ð¾Ð±ÐºÐ¸ Ð½Ñ€Ð°Ð²ÑÑ‚ÑÑ Ð½Ðµ Ñ‚Ð¾Ð»ÑŒÐºÐ¾ Ð´ÐµÑ‚Ñ'),
(742, 'Jmwdzyb', 'hostmaster@caredx.com\r\n', '82713792318', '', 'google', 'Vjkiujf \r\n \r\nhostmaster@caredx.com\r\n    :'),
(743, 'myraks11', 'yz60@tadao29.webproton.site', '85656769585', '', 'google', 'My new hot project|enjoy new website\r\nhttp://sextoysinuse.fetlifeblog.com/?katerina \r\n\r\n free mobile'),
(744, 'Mep', 'baburovp@bk.ru', '87114276845', 'Kaduna', 'google', 'Cryptocurrency rates are breaking records, which means you have the opportunity to make money on cry'),
(745, 'Mep', 'baburovp@bk.ru', '89961128618', 'Kaduna', 'google', 'Cryptocurrency rates are breaking records, which means you have the opportunity to make money on cry'),
(746, 'Mep', 'baburovp@bk.ru', '87153168462', 'Kaduna', 'google', 'Cryptocurrency rates are breaking records, which means you have the opportunity to make money on cry'),
(747, 'Mep', 'baburovp@bk.ru', '89395132442', 'Kaduna', 'google', 'Cryptocurrency rates are breaking records, which means you have the opportunity to make money on cry'),
(748, 'CarissaEvers', 'carissa77@bk.ru', '84873277429', 'Los Angeles', 'google', ' \r\n \r\nHey.My name is Kristina. \r\nI am looking for a guy for a relationship. \r\nI am 28 years old :( \r'),
(749, 'ÐŸÐ¾Ð»ÐµÐ·Ð½Ñ‹Ð¹ ÑÐ°Ð¹Ñ‚', 'kerkkailis@yandex.com', '86715176315', '', '', 'Ð”Ð²Ð° Ð¸Ð½Ñ‚Ñ€Ð¸Ð³ÑƒÑŽÑ‰Ð¸Ñ… Ñ‚Ð¾ÑÑ‚Ð°: \r\n \r\nÐ£ Ð¾Ð´Ð½Ð¾Ð¹ Ð¶ÐµÐ½Ñ‰Ð¸Ð½Ñ‹ Ñ€Ð¾Ð´Ð¸Ð»ÑÑ Ð¼Ð°Ð»ÑŒÑ'),
(750, 'mmbn123', 'maximmad222@yandex.ru', '81522492339', ' ÐÐ¸Ð¶Ð½Ð¸Ð¹ ÐÐ¾Ð²Ð³Ð¾Ñ€Ð¾Ð´', 'google', 'Ð”Ð¾Ð±Ñ€Ñ‹Ð¹ Ð´ÐµÐ½ÑŒ, Ð—Ð´ÐµÑÑŒ Ð²Ñ‹ Ð¼Ð¾Ð¶ÐµÑ‚Ðµ ÐšÑƒÐ¿Ð¸Ñ‚ÑŒ Ñ†Ð¸Ñ„Ñ€Ð¾Ð²Ñ‹Ðµ Ð²ÐµÑ€ÑÐ¸Ð¸ Ð¸Ð³Ñ'),
(751, 'nam', 'naomisholtz7@gmail.com', '82454572476', 'Gliwice', 'google', 'What can be better than this wonderful website and a cup of coffee in the evening! \r\n \r\n<a href=http'),
(752, 'Bill William Abbott', 'abbottbillwilliam@gmail.com', '89829962879', 'Miami', 'google', 'My name is Bill William Abbott, I am a Financial Consultant of Proquest Consulting limited . I have '),
(753, 'ZeoldSnani', 'm5max77@yandex.com', '86639323372', 'Hohenems', 'google', ':)<a href=http://okvsk.ru/>:)</a>:)'),
(754, 'Richardmusia', '8azu@course-fitness.com', '85978598482', 'Udon Thani', 'google', 'æ­å®¢ä½¬ç²¾å“å’–å•¡ ï½œOKLAO COFFEEï½œè¦çš®å•†åŸŽï½œå’–å•¡è±†ï½œæŽ›è€³ï½œç²¾å“å’–å•¡ï½œå’–å•¡ç¦®'),
(755, 'Williamkar', 'djon.w1k@yandex.ru', '84666287923', 'Linguere', 'google', '<a href=https://irisavital.fr/wp-hydra-phone.html>Ð³Ð¸Ð´Ñ€Ð° Ñ‡ÐµÑ€ÐµÐ· Ñ‚ÐµÐ»ÐµÑ„Ð¾Ð½ </a>'),
(756, 'mmbn123', 'maximmad222@yandex.ru', '88559527385', ' ÐžÐ¼ÑÐº', 'google', 'ÐŸÑ€Ð¸Ð²ÐµÑ‚.Ð’Ñ‹ Ð¼Ð¾Ð¶ÐµÑ‚Ðµ Ð¿Ñ€Ð¸Ð¾Ð±Ñ€ÐµÑÑ‚Ð¸ Ð¸ Ð¿Ð¾Ð¸Ð³Ñ€Ð°Ñ‚ÑŒ Ð²  ÐÐµÐ´Ð¾Ñ€Ð¾Ð³Ð¸Ðµ Ð¸Ð³Ñ'),
(757, 'Jefferythela', 'mueller_sa@gmx.de', '85651547675', 'Yako', 'google', 'Housekeeper from Paris generates income in one week more than her husband in a year, more than $ 210'),
(758, 'Hi Nice site https://google.com', 'ascehine@mail.ru', '82546979587', 'La Primavera', 'google', 'Hi Nice site https://google.com'),
(759, 'Gambler_rok', 'annasergey500@gmail.com', '88377116482', 'Khuzestan', 'google', 'Hi! \r\n \r\n<b>Today it is popular for gamers:</b> m13 loadout warzone! \r\n \r\n<a href=http://bit.ly/Best'),
(760, 'RalphMub', 'danyal_38@hotmail.de', '83766274576', 'Jalapa', 'google', 'This housewife makes over $ 1,000,000 a month. \r\nShe makes millions of dollars doing almost nothing.'),
(761, 'Seobro', 'flex199litle@gmail.com', '88634527533', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', 'ÐŸÐ¾Ð»Ð½Ð¾Ñ†ÐµÐ½Ð½Ð¾Ðµ Ð¿Ñ€Ð¾Ð´Ð²Ð¸Ð¶ÐµÐ½Ð¸Ðµ ÑÐ°Ð¹Ñ‚Ð¾Ð² Ð² Ð¢ÐžÐŸ 10 Ð¿Ð¾ ÐœÐ¾ÑÐºÐ²Ðµ Ð¸ Ð Ð¾ÑÑ'),
(762, 'VeoldSnani', 'm6max77@yandex.com', '82237137222', 'Hohenems', 'google', ':)<a href=http://fccland.ru/>:)</a>:)'),
(763, 'Gxgjvxw', 'krpuppy@hotmail.com\r\n', '83453941243', '', 'google', 'Rkdrlvy \r\n \r\nkate.z@hotmail.com\r\n    :'),
(764, 'Edgarineld', 'miragi@bambo-mebel.top', '88179414469', 'Udon Thani', 'google', 'http://ease-track.com is a blog for people who https://dj-qwerty.com really love STYLE music. \r\nDeny'),
(765, 'y2mate258y', '2conv.ch@gmail.com', '82111594385', 'Freising', 'google', 'Dear folks, just came across your site and would like to share some handy website resource which mig'),
(766, 'Mike Phillips\r\n', 'see-email-in-message@monkeydigital.co', '86812594792', 'Willemstad', 'google', 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your schooloo.com website? \r\nHaving a'),
(767, 'Mep', 'baburovp@bk.ru', '86558665739', 'Kaduna', 'google', 'Hi, this is Julia. I am sending you my intimate photos as I promised. https://tinyurl.com/yzqw3q3w'),
(768, 'Mep', 'baburovp@bk.ru', '89413582376', 'Kaduna', 'google', 'Hi, this is Julia. I am sending you my intimate photos as I promised. https://tinyurl.com/yzqw3q3w'),
(769, 'Mep', 'baburovp@bk.ru', '82581272518', 'Kaduna', 'google', 'Hi, this is Julia. I am sending you my intimate photos as I promised. https://tinyurl.com/yzqw3q3w'),
(770, 'Mep', 'baburovp@bk.ru', '87338147384', 'Kaduna', 'google', 'Hi, this is Julia. I am sending you my intimate photos as I promised. https://tinyurl.com/yzqw3q3w'),
(771, 'Teodorahic', 'splav0803@yandex.by', '86147931867', 'Paphos', 'google', 'Ð¡Ñ‚Ñ€Ð¾Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ðµ Ð»ÐµÑÐ° ÑÐ²Ð»ÑÑŽÑ‚ÑÑ Ð´Ð¾Ð²Ð¾Ð»ÑŒÐ½Ð¾ Ð¿Ñ€Ð¾ÑÑ‚Ð¾Ð¹ ÐºÐ¾Ð½ÑÑ‚Ñ€ÑƒÐºÑ'),
(772, 'Stevendog', 'splav0803@yandex.by', '82878169522', 'Delmas', 'google', 'Ð’ ÑÑ‚Ñ€Ð¾Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾Ð¹ ÑÑ„ÐµÑ€Ðµ Ð´ÐµÑÑ‚ÐµÐ»ÑŒÐ½Ð¾ÑÑ‚Ð¸ Ð±Ð¾Ð»ÑŒÑˆÐ¸Ð¼ ÑÐ¿Ñ€Ð¾ÑÐ¾Ð¼ Ð¸ Ð¿Ð'),
(773, 'Jamessound', 'kotodvdmitmel986@gmail.com', '82722927564', 'Klimmen', 'google', 'Ð¿Ñ€Ð°Ð¹Ñ Ð½Ð° ÐºÑ€Ð¾Ð²ÐµÐ»ÑŒÐ½Ñ‹Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ñ‹ \r\n<a href=\"https://storeboard.com/blogs/general/kr'),
(774, 'InvillMible', 'revers@o5o5.ru', '87586532644', 'London', 'google', '<a href=https://videnie.org/services/love-privorot/>Ð¿Ñ€Ð¸Ð²Ð¾Ñ€Ð¾Ñ‚</a> \r\nTegs: Ð³Ð°Ð´Ð°Ð»ÐºÐ° http'),
(775, 'Justinopece', 'taiskybun1989@mail.ru', '83952296254', 'Praia', 'google', ' Ð˜Ð½Ñ‚ÐµÑ€ÐµÑÐ½Ð°Ñ ÑÑ‚Ð°Ñ‚ÑŒÑ ÐºÐ¾Ñ‚Ð¾Ñ€Ð°Ñ Ñ€Ð°ÑÑÐºÐ°Ð¶ÐµÑ‚ Ð¾Ð±Ñ‹Ð²Ð°Ñ‚ÐµÐ»ÑŽ Ð¾ Ð²Ð¸Ð´Ð°Ñ'),
(776, 'HalmakslEdino', 'sarugaf@gmail.com', '87334399125', 'Kwekwe', 'google', 'Ð˜Ð¼ÐµÐ½Ð½Ð¾ ÑÐµÐ³Ð¾Ð´Ð½Ñ ÑƒÐ´Ð°ÑÑ‚ÑÑ Ð¿Ð¾ÑÐ¼Ð¾Ñ‚Ñ€ÐµÑ‚ÑŒ Ð¿Ð¾Ð¿ÑƒÐ»ÑÑ€Ð½Ñ‹Ðµ Ñ„Ð¸Ð»ÑŒÐ¼Ñ‹ Ð¾'),
(777, 'KvvillMible', 'revers@o5o5.ru', '82913879391', 'London', 'google', '<a href=https://chimmed.ru/products/2-chloropyridine-4-boronic-acid-pinacol-ester-97-id=340648>2 Chl'),
(778, 'NovikovGT', 'novikov@mail-pop3.com', '87181255378', 'Samara', 'google', 'GO!!! \r\nThis phrase was said by the first cosmonaut on Earth - Yuri Gagarin. (Yuri Gagarin) \r\nHe was'),
(779, 'Williamkar', 'djon.w1k@yandex.ru', '81778682775', 'Linguere', 'google', '<a href=https://bknovo-bud.com.ua/wp-hydra-phone.html>Ñ„Ð¾Ñ‚Ð¾ Ð½Ð° Ð³Ð¸Ð´Ñ€Ñƒ Ñ Ñ‚ÐµÐ»ÐµÑ„Ð¾Ð½Ð° <'),
(780, 'Andreasgns', 'bureniecena2020ok@gmail.com', '87731211731', 'Minsk', 'google', 'Ð”Ð¾Ð±Ñ€Ñ‹Ð¹ Ð´ÐµÐ½ÑŒ Ñ‚Ð¾Ð²Ð°Ñ€Ð¸Ñ‰Ð¸!Ð•ÑÑ‚ÑŒ Ñ‚Ð°ÐºÐ¾Ð¹ Ð¸Ð½Ñ‚ÐµÑ€ÐµÑÐ½Ñ‹Ð¹ ÑÐ°Ð¹Ñ‚ Ð´Ð»Ñ Ð·Ð°'),
(781, 'KseniaCig', 'tsmg2485@gmail.com', '86578348219', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', 'ÐšÑ‚Ð¾ ÐµÑ‰Ðµ Ð½Ðµ Ð·Ð½Ð°ÐµÑ‚ Ð³Ð´Ðµ Ð½Ð°Ñ…Ð¾Ð´ÑÑ‚ÑŒÑÑ <a href=https://i.dosug-intim.info/>Ð²Ñ‹Ð·'),
(782, 'Mike Gate\r\n', 'no-replyalorb@gmail.com', '81211133864', 'Albany', 'google', 'Greetings \r\n \r\nI have just took an in depth look on your  schooloo.com for its Local SEO ranks and s'),
(783, 'ErvinFUS', 'm9max77@yandex.com', '88926526281', 'Montevideo', 'google', ':)<a href=https://stilin.ru/>:)</a>:)'),
(784, 'Justinopece', 'taiskybun1989@mail.ru', '83566487643', 'Praia', 'google', 'ÐŸÑ€Ð¸Ð²ÐµÑ‚ Ð´Ñ€ÑƒÐ·ÑŒÑ Ñ…Ð¾Ñ‡Ñƒ Ñ€Ð°ÑÑÐºÐ°Ð·Ð°Ñ‚ÑŒ Ð¾ Ð½Ð¾Ð²Ð¾Ð¹ ÐºÑ€Ð¸Ð¿Ñ‚Ð¾Ð±Ð¸Ñ€Ð¶Ðµ \r\n \r\nÐ¡'),
(785, 'VideoDownloader2', 'bestvideosoft123@gmail.com', '82784724288', 'Nestor', 'google', 'Hello friends, just came across this amazing site and would love to post some handy website resource'),
(786, 'ssialniy', 'ses.ofitsialniy@yandex.ru', '81418858278', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', 'Ð”Ð»Ñ Ð½Ð°ÑˆÐµÐ¹ ÑÐ°Ð½Ð¸Ñ‚Ð°Ñ€Ð½Ð¾Ð¹ ÐºÐ¾Ð¼Ð¿Ð°Ð½Ð¸Ð¸ Ð³Ð»Ð°Ð²Ð½Ð¾Ð¹ Ð·Ð°Ð´Ð°Ñ‡ÐµÐ¹ ÑÐ²Ð»ÑÐµÑ‚Ñ'),
(787, 'Arthurdurgy', 'maximmad222@yandex.ru', '81596422572', 'Kaohsiung Municipality', 'google', 'ÐšÑƒÐ¿Ð¸Ñ‚ÑŒ Ð¸Ð³Ñ€Ñ‹ xbox store Ð½Ð° Ñ€Ð°Ð·Ð»Ð¸Ñ‡Ð½Ñ‹Ðµ Ñ‚ÐµÐ¼Ð°Ñ‚Ð¸ÐºÐ¸  + https://plati.market/it'),
(788, 'Arthurdurgy', 'maximmad222@yandex.ru', '86183942288', 'Kaohsiung Municipality', 'google', 'ÐšÑƒÐ¿Ð¸Ñ‚ÑŒ Ð¸Ð³Ñ€Ñ‹ xbox store Ð½Ð° Ñ€Ð°Ð·Ð»Ð¸Ñ‡Ð½Ñ‹Ðµ Ñ‚ÐµÐ¼Ð°Ñ‚Ð¸ÐºÐ¸  + https://plati.market/it'),
(789, 'collectionSmuts', 'raposnori@beget.com', '82753147334', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', ' ÑÐ¼Ð¾Ñ‚Ñ€Ð¸Ñ‚Ðµ Ð½Ð° ÑÐ°Ð¹Ñ‚Ðµ Ð°Ð½Ñ‚Ð¸ÐºÐ²Ð°Ñ€Ð¸Ð°Ñ‚Ð° <a href=https://waterloo-collection.ru>wa'),
(790, 'Mike Finch\r\n', 'no-reply@google.com', '86234734835', 'Kaohsiung Municipality', 'google', 'Hi \r\n \r\nI have just analyzed  schooloo.com for its SEO metrics and saw that your website could use a'),
(791, 'Olgacrurb', 'martaklichko@yandex.ru', '86757815883', 'Al Ladhiqiyah', 'google', 'Unfledged York Dating App Clarington <a href=https://marvik.contactin.bio/>Dating Online</a> \r\n<a hr'),
(792, 'Jeremy Becker', 'jeremy@onlinebusiness.co', '83342792961', 'Miami', 'google', 'Hey, \r\nThe greatest speaker lineup in history (including Tony Robbins, Dean Graziosi and so many oth'),
(793, 'Andreasumv', 'bureniecena2020ok@gmail.com', '88223121522', 'Minsk', 'google', 'ÐŸÑ€Ð¸Ð²ÐµÑ‚ Ð´Ñ€ÑƒÐ·ÑŒÑ! Ð•ÑÑ‚ÑŒ Ñ‚Ð°ÐºÐ¾Ð¹ Ð·Ð°Ð¼ÐµÑ‡Ð°Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ð¹ ÑÐ°Ð¹Ñ‚ Ð´Ð»Ñ Ð·Ð°ÐºÐ°Ð·'),
(794, 'LeonardRex', 'em7evg@gmail.com', '88828175622', 'Kyiv', 'google', 'ÐžÐ±ÐµÑÐ¿ÐµÑ‡Ð¸Ð¼ Ð—Ð°Ñ€Ð°Ð±Ð¾Ñ‚Ð¾Ðº, Ð±Ð»Ð°Ð³Ð¾Ð´Ð°Ñ€Ñ Ð½Ð°ÑˆÐµÐ¹ Ð¿Ñ€Ð¾Ñ„. Ñ€ÐµÐºÐ»Ð°Ð¼Ðµ Ð² Pin'),
(795, 'nym1187980krya', 'bogdan.khren.khrenov@mail.ru', '85448131644', 'Klimmen', 'google', 'mns1187980utr 0iXcopf iU2O OO2HbFx'),
(796, 'Arthurdurgy', 'maximmad222@yandex.ru', '89861853649', 'Kaohsiung Municipality', 'google', 'ÐšÑƒÐ¿Ð¸Ñ‚ÑŒ Ð¸Ð³Ñ€Ñ‹ +Ð½Ð° xbox +one ÐºÐ»ÑŽÑ‡Ð¸ Ð°ÐºÑ‚Ð¸Ð²Ð°Ñ†Ð¸Ð¸ ÐšÐ»ÑŽÑ‡ÐµÐ²Ð°Ñ Ð¸Ð³Ñ€Ð¾Ð²Ð°Ñ '),
(797, 'skyreverywet', 'malinoleg91@mail.ru', '88416589521', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', ' \r\nhttps://skyrevery.ru/populyarnye_napravleniya/rostov-na-dony/ - Ð§Ð°ÑÑ‚Ð½Ñ‹Ð¹ ÑÐ°Ð¼Ð¾Ð»ÐµÑ‚ Ð Ð'),
(798, 'Nathankit', 'rkst74342@mail.ru', '89531137927', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', 'Ð‘Ñ‹ÑÑ‚Ñ€Ð¾. ÐšÐ°Ñ‡ÐµÑÑ‚Ð²ÐµÐ½Ð½Ð¾. Ð”Ð¾ÑÑ‚ÑƒÐ¿Ð½Ñ‹Ðµ Ñ†ÐµÐ½Ñ‹. Ð“Ð°Ñ€Ð°Ð½Ñ‚Ð¸Ñ. Ð’Ñ‹ÐµÐ·Ð´ Ð½Ð°'),
(799, 'EpvinFUS', 'm10max77@yandex.com', '89339226591', 'Montevideo', 'google', ':)<a href=http://handcent.ru/>:)</a><a href=http://racechrono.ru/>:)</a>:)'),
(800, 'num1187980krya', 'bogdan.khren.khrenov@mail.ru', '87957394569', 'Klimmen', 'google', 'mes1187980rtjuny s9zog6o kA85 fZ8DHm4'),
(801, 'Yahoo', 'press@yahoo.com', '84136995483', 'New York', 'google', 'Most profitable cryptocurrency miners has been released : \r\nDBT Miner: $7,500 (Bitcoin), $13,000 (Li'),
(802, 'nam1187980flebno', 'bogdan.khren.khrenov@mail.ru', '88118392824', 'Klimmen', 'google', 'mys1187980rtjuny frzLRxr DHf3 wtsBnxh'),
(803, 'CharlesMef', 'troplovaekaterina@gmail.com', '86852584833', 'Charlotte Amalie', 'google', 'herbal parasite cleanse  <a href= https://ikwileenpoes.nl/loraznl.html > https://ikwileenpoes.nl/lor'),
(804, 'Casinoboorm', 'denchibundy213@gmail.com', '83443517356', 'Biel', 'google', 'Ð›ÑƒÑ‡ÑˆÐ¸Ðµ Ð»Ð¸Ñ†ÐµÐ½Ð·Ð¸Ð¾Ð½Ð½Ñ‹Ðµ Ð¾Ð½Ð»Ð°Ð¹Ð½ ÐºÐ°Ð·Ð¸Ð½Ð¾ Ð½Ð° ÑÐ°Ð¹Ñ‚Ðµ - https://LudoDude.c'),
(805, 'AlvinDwert', 'yourmail@gmail.com', '86935366168', 'Walvis Bay', 'google', 'trÆ°á»ng há»£p báº¥t ngá» xáº£y ra sáº½ Ä‘Ãºng lÃºc giáº£i quyáº¿t vÃ  xá»­ lÃ½ nháº±m ko thá»±c h'),
(806, 'VideoDownloader282', 'bestvideosoft123@gmail.com', '81936333378', 'Nestor', 'google', 'Hi folks, just came across this site and would like to post some handy website resource which might '),
(807, 'CreditDrype', 'credit.loan.new@gmail.com', '88625514739', 'Luga', 'google', ' Ð½Ð¸ Ñ„Ð¸Ð³Ð° ÑÐµÐ±Ðµ.  Ð´Ð¾ÑÑ‚Ð¾Ð¹Ð½Ñ‹Ð¹ Ð²Ð½Ð¸Ð¼Ð°Ð½Ð¸Ñ -  Ð¸ÑÑ…Ð¾Ð´Ð½Ñ‹Ðµ Ð´Ð°Ð½Ð½Ñ‹Ðµ Ð¾ Ñ'),
(808, 'Marcoreith', 'ahmedkirillov5@gmail.com', '88592173945', 'Rio Grande', 'google', 'You received a money transfer of $ 89.44! PREPAYMENT! To receive funds, go to the payment page \r\n<a '),
(809, 'Phillip Dah', 'temptest5799243@gmail.com', '82346713598', 'Bereeda', 'google', 'Ð“Ð´Ðµ Ð·Ð°ÐºÐ°Ð·Ð°Ñ‚ÑŒ ÐºÑ€Ð°ÑÐ¸Ð²Ñ‹Ðµ <a href=https://stairsprom.ru/uslugi/steklyannye-ograzhdeni'),
(810, 'EsvinFUS', 'm11max77@yandex.com', '86741253589', 'Montevideo', 'google', ':)<a href=http://worldgonesour.ru/>:)</a><a href=http://metal-archive.ru/>:)</a>:)'),
(811, 'Waynesop', 'genrinilon1997@gmail.com', '85329784664', 'Riohacha', 'google', '	Ñ‚ÑƒÑ€ Ð² Ð±ÑƒÐºÐ¾Ð²ÐµÐ»ÑŒ Ð¸Ð· Ð³Ñ€Ð¾Ð´Ð½Ð¾ \r\n<a href=\"https://storeboard.com/blogs/general/bukove'),
(812, 'BarbaraNoipt', 'sale@za-splav.by', '86153621668', 'Doha', 'google', '<a href=https://vishkatura.blogspot.com/2021/05/Kiloton.by.html>Ð²Ñ‹ÑˆÐºÐ° Ñ‚ÑƒÑ€Ð° Ð²ÑÐ¿ Ñ†ÐµÐ½Ð°<'),
(813, 'SlipsDat', 'na.h.alk.a.g.al.k.a43.1@gmail.com', '85134616969', 'Pittsburgh', 'google', '<a href=http://cityoffortworth.org/__media__/js/netsoltrademark.php?d=tubesweet.xyz>porno erotic</a>'),
(814, 'Mike Arthurs\r\n', 'see-email-in-message@monkeydigital.co', '82946449821', 'Willemstad', 'google', 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your schooloo.com website? \r\nHaving a'),
(815, 'Ferrari1980', 'ferrari@mail-pop3.com', '87292275232', 'Alabama', 'google', 'CAP Hearsay from World - http://mebonus.ru \r\n<a href=http://jellybrains.de/logs/usage_202105.html>Go'),
(816, 'Rogerrow', 'zbl3i@course-fitness.com', '82633557226', 'Hohenems', 'google', 'Game LIFE éŠæˆ²æƒ…å ± \r\n \r\n \r\nhttps://gamelife.tw/portal.php'),
(817, 'WandaVah', 'j.oan.8.90.8.3@gmail.com', '88756499999', 'Edson', 'google', '<a href=https://moverslosangeles.city>Movers Los Angeles </a>'),
(818, 'EjvinFUS', 'm12max77@yandex.com', '83348614799', 'Montevideo', 'google', ':)<a href=http://sv-barrisol.ru/>:)</a><a href=http://agro-archive.ru/>:)</a>:)'),
(819, 'topnewsPearp', 'anfisa.kalinina.14.3.1963@list.ru', '85256221489', 'Moskow', 'google', ' \r\n<a href=https://informed.top/my-uzhe-privykli-k-takomu-gradusu-tresha-polittehnolog-vitalij-shkly'),
(820, 'VideoDownloader147', 'bestvideosoft123@gmail.com', '83575544811', 'Nestor', 'google', 'Hello folks, just came across your site and would love to share some handy website resource which mi'),
(821, 'HeatherTulge', 'hethertan@gmail.com', '87517194973', 'Gliwice', 'google', ' Ð¥Ð¾Ñ€Ð¾ÑˆÐ¸Ðµ ÑÐ¿ÐµÑ†Ð¸Ð°Ð»Ð¸ÑÑ‚Ñ‹ Ð¸ Ð¿Ñ€ÐµÐºÑ€Ð°ÑÐ½Ñ‹Ð¹ ÑÐµÐ²Ñ€Ð¸Ñ Ð² ÑÑ‚Ð¾Ð¹ Ð¾Ð½ÐºÐ¾ Ð°Ð'),
(822, 'JohnnieMew', 'ericl.dwyer12@gmail.com', '85124141265', 'Liberia', 'google', 'The writing criterion is great. I requested for 2 escalations. Both are completed in time. I PASSED '),
(823, 'Stevendog', 'sale@za-splav.by', '84151136127', 'Delmas', 'google', 'Ð¡Ñ‚Ñ€Ð¾Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð°Ñ Ð²Ñ‹ÑˆÐºÐ° Ñ‚ÑƒÑ€Ð° Ð¾Ð¿Ñ‚Ð¸Ð¼Ð°Ð»ÑŒÐ½Ð¾ Ð¿Ð¾Ð´Ñ…Ð¾Ð´Ð¸Ñ‚ Ð¸ Ð´Ð»Ñ Ñ€ÐµÐ¼Ð'),
(824, 'GerarrdoCix', 'hugfhh@gmail.com', '89413458147', 'Gray Mountain', 'google', 'Scorpions Lolita Girls Fuck Assemblage \r\n \r\nloli chick foto video cp pthc forum \r\n \r\n===>>> https://'),
(825, 'Lakranscen', 'violinagramas@gmail.com', '89481851732', 'Shekhupura', 'google', 'As iterated earlier, the <a href=https://evrotehna.com/wp-content/app/parimatch.php>parimatch.com ap'),
(826, 'Mike Young\r\n', 'no-replyalorb@gmail.com', '88582884165', 'Albany', 'google', 'Hello \r\n \r\nWe will enhance your Local Ranks organically and safely, using only whitehat methods, whi'),
(827, 'y2mate868q', '2conv.ch@gmail.com', '86997676361', 'Freising', 'google', 'Hello buddies, just came across this site and would like to post some handy website resource which m'),
(828, 'Gorniy', 'dagestan@mail-pop3.com', '83719532435', 'Dagestan', 'google', 'PEERLESS Hearsay from Earth - https://fishing-gorny.ru \r\n \r\n<a href=http://vishandel-koffeman.nl/sta'),
(829, 'BarbaraNoipt', 'sale@za-splav.by', '81775983755', 'Doha', 'google', 'Ð¡Ñ‚Ñ€Ð¾Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð°Ñ Ð²Ñ‹ÑˆÐºÐ° Ñ‚ÑƒÑ€Ð° Ð¾Ð¿Ñ‚Ð¸Ð¼Ð°Ð»ÑŒÐ½Ð¾ Ð¿Ð¾Ð´Ñ…Ð¾Ð´Ð¸Ñ‚ Ð¸ Ð´Ð»Ñ Ñ€ÐµÐ¼Ð'),
(830, 'Clllydegom', 'dfggd@gmail.com', '84192279564', 'Boden', 'google', 'loli girl fuck foto video cp pthc \r\n \r\nhttps://fn.tc/P0LY'),
(831, 'Andrealor', 'nickyxxx@alice.it', '81487372687', 'Bottegone', 'google', 'Hello, \r\n \r\nDownload high quality music: http://0daymusic.org/premium.php \r\nLabel, LIVESETS, Music V'),
(832, 'sochi.cat Faf', 'moreadler2015000@yandex.ru', '88579361624', 'Stung Treng', 'google', 'https://raki-sochi.com/   Ð Ð°ÐºÐ¸ Ð¡Ð¾Ñ‡Ð¸. Ð”Ð¾ÑÑ‚Ð°Ð²ÐºÐ° Ñ€Ð°ÐºÐ¾Ð² Ð¿Ð¾ Ð¡Ð¾Ñ‡Ð¸ Ð¸Ð· Ð±Ð°Ñ€Ð¾'),
(833, 'RogerMog', 'marina4q89fed@mail.ru', '86885299665', 'Juuka', 'google', '<a href=https://se023.ru/>Ð Ñ—Ð Ñ•Ð Ñ‘Ð¡ÐƒÐ Ñ”Ð Ñ•Ð Ð†Ð Ñ•Ð Âµ Ð Ñ—Ð¡Ð‚Ð Ñ•Ð Ò‘Ð Ð†Ð Ñ‘Ð Â¶Ð ÂµÐ Ð…Ð'),
(834, 'Mep', 'b47587878543537@gmail.com', '89644514225', 'Kaduna', 'google', 'Hi, this is Jeniffer. I am sending you my intimate photos as I promised. https://tinyurl.com/yfnzh4w'),
(835, 'Stevendog', 'greiannett@yandex.com', '89991315561', 'Delmas', 'google', 'Ð¡Ñ‚Ñ€Ð¾Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð°Ñ Ð²Ñ‹ÑˆÐºÐ° Ñ‚ÑƒÑ€Ð° Ð¾Ð¿Ñ‚Ð¸Ð¼Ð°Ð»ÑŒÐ½Ð¾ Ð¿Ð¾Ð´Ñ…Ð¾Ð´Ð¸Ñ‚ Ð¸ Ð´Ð»Ñ Ñ€ÐµÐ¼Ð'),
(836, 'collectionSmuts', 'raposnori@beget.com', '82364798261', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', ' \r\n<a href=https://waterloo-collection.ru/category/germaniya/nagrady-do-1933-goda/>ÐžÑ€Ð´ÐµÐ½Ð° Ð¸ Ð'),
(837, 'Arthurdurgy', 'maximmad222@yandex.ru', '88278378914', 'Kaohsiung Municipality', 'google', 'Ð˜Ð·Ð²Ð¸Ð½ÑÑŽÑÑŒ Ð·Ð° Ð±ÐµÑÐ¿Ð¾ÐºÐ¾Ð¹ÑÑ‚Ð²Ð¾, XBOX Ð¿Ñ€Ð¸Ð¾Ð±Ñ€ÐµÑÑ‚Ð¸ Ð² ÑÐ¿Ð¾Ñ€Ñ‚Ð¸Ð²Ð½Ñ‹Ðµ '),
(838, 'Mike Taft\r\n', 'no-reply@google.com', '81913599717', 'Kaohsiung Municipality', 'google', 'Howdy \r\n \r\nI have just took a look on your SEO for  schooloo.com for its SEO metrics and saw that yo'),
(839, 'SlotoKing', 'slotoking.casino777@gmail.com', '84896132811', 'Banepa', 'google', 'SlotoKing Casino <a href=https://slotoking-casino.cyou/>Ð¡Ð»Ð¾Ñ‚Ð¾ÐšÐ¸Ð½Ð³ ÐšÐ°Ð·Ð¸Ð½Ð¾</a> Ð¾Ñ„Ð¸Ñ†'),
(840, 'Charlessit', 'pakureru1980+30@yandex.com', '83664168974', 'Havana', 'google', 'â€œI havenâ€™t seen you in these parts,â€ the barkeep said, sidling during to where I sat. â€œDesig'),
(841, 'ancompromSmuts', 'yelevich.mark@mail.ru', '81296884846', 'ÐÐ¸Ð¶Ð½Ð¸Ð¹ ÐÐ¾Ð²Ð³Ð¾Ñ€Ð¾Ð´', 'google', ' \r\n<a href=http://ancomprom.ru/Shtampovka.html>Ð²Ñ‹Ñ€ÑƒÐ±Ð½Ð¾Ð¹ ÑˆÑ‚Ð°Ð¼Ð¿ Ð´Ð»Ñ Ð¼ÐµÑ‚Ð°Ð»Ð»Ð°</a>'),
(842, 'Anthonyharge', 'elizbarignatev3414@mail.ru', '85438478719', 'Estepona', 'google', '1            Ð¡Ð¼Ð¾Ñ‚Ñ€ÐµÐ» Â«ÐŸÐµÑ€Ð²Ð¾Ð¼Ñƒ Ð¸Ð³Ñ€Ð¾ÐºÑƒ Ð¿Ñ€Ð¸Ð³Ð¾Ñ‚Ð¾Ð²Ð¸Ñ‚ÑŒÑÑÂ»? Ð¡Ð¼Ð¾Ñ‚Ñ€Ð¸'),
(843, 'BarbaraNoipt', 'vitalikguts@yandex.com', '81398534385', 'Doha', 'google', 'Ð¡Ñ‚Ñ€Ð¾Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð°Ñ Ð²Ñ‹ÑˆÐºÐ° Ñ‚ÑƒÑ€Ð° Ð¾Ð¿Ñ‚Ð¸Ð¼Ð°Ð»ÑŒÐ½Ð¾ Ð¿Ð¾Ð´Ñ…Ð¾Ð´Ð¸Ñ‚ Ð¸ Ð´Ð»Ñ Ñ€ÐµÐ¼Ð'),
(844, 'dvdsalejpnow', 'tdf78754rmail@gmail.com', '85426384467', '', 'google', '<a href=http://www.duplanje.info>éº’éºŸ ãŒ ãã‚‹DVD ç¾Žé£Ÿ æŽ¢åµDVD ç›¸æ£’dvd å­¤ç‹¬ ã® ã‚°ãƒ«ãƒ'),
(845, 'VideoDownloader741', 'bestvideosoft123@gmail.com', '85172252699', 'Nestor', 'google', 'Hello buddies, just came across this amazing site and would love to share some useful website resour'),
(846, 'SlipsDat', 'nah.a.lk.agalka43.1.@gmail.com', '87577739817', 'Albuquerque', 'google', '<a href=http://www.jatagan.net/__media__/js/netsoltrademark.php?d=https://tubesweet.xyz>porno orgy</'),
(847, 'Jerrold#geick', 'vegchel3@mail.ru', '87918921318', 'Parnu', 'google', 'ÐšÐ°Ðº Ð¿Ñ€Ð¸Ð³Ð¾Ñ‚Ð¾Ð²Ð¸Ñ‚ÑŒ ÑƒÑ…Ñƒ Ð½Ð° ÐºÐ¾ÑÑ‚Ñ€Ðµ \r\n \r\nÐ’ Ð¿Ð¾Ñ…Ð¾Ð´Ðµ Ð¼Ð½Ð¾Ð³Ð¸Ðµ Ð³Ð¾Ñ‚Ð¾Ð²Ñ'),
(848, 'wratchesolexcopynewsale', 'uooodfr67777mail@gmail.com', '87524933514', '', 'google', '<a href=http://www.kedmicom.com>ãƒ­ãƒ¬ãƒƒã‚¯ã‚¹ ã‚³ãƒ”ãƒ¼ æ¿€å®‰ é€šè²© æ¿€å®‰ ã‚¹ãƒ¼ãƒ‘ãƒ¼ ã‚³ãƒ”ãƒ'),
(849, 'Ashlay Hazalton', 'ashlayhazalton36145@gmail.com', '89492723764', 'Berlin', 'google', 'Hi, this is Chris. \r\nWho win all online casinos by using FREE BONUS. \r\n \r\nWitch mean, I donâ€™t real'),
(850, 'Williangrism', 'ndwmadl4u111@gmail.com', '87738545595', 'Orange Walk', 'google', '<a href=\"https://www.fieldsfiatorlando.com/dog-rescues-of-ohio/\">dog rescues of ohio</a> \r\n<a href=h'),
(851, 'Thhomasinoli', 'adaxfff@gmail.com', '84658717647', 'Keflavik', 'google', 'lolita girl fuck cp pthc \r\n \r\nhttps://cy.tc/P2YQ'),
(852, 'ImriMub', 'mariseltern@gmail.com', '85431699472', 'Kiev', 'google', 'ÐÐ°Ñ‡Ð°Ð»Ð¾ 21 Ð²ÐµÐºÐ° Ð¿Ñ€Ð¾ÑˆÐ»Ð¾ Ð¿Ð¾Ð»Ð´ Ð·Ð½Ð°Ð¼ÐµÐ½ÐµÐ¼ Ð¼Ð°ÐºÑÐ¸Ð¼Ð°Ð»ÑŒÐ½Ð¾Ð¹ Ð¿Ñ€Ð¾Ð´ÑƒÐ'),
(853, 'Williampewly', 'wojtek.marolnki@interia.pl', '83738695736', 'Mtskheta', 'google', 'Zaciszny zespol posesji - status fachowca \r\n \r\nOprowadzamy solidny skojarz parcele wedle wyrobionych'),
(854, 'Steveyndog', 'greiannet@yandex.com', '87125586943', 'Delmas', 'google', 'Ð¡Ñ‚Ñ€Ð¾Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð°Ñ Ð²Ñ‹ÑˆÐºÐ° Ñ‚ÑƒÑ€Ð° Ð¾Ð¿Ñ‚Ð¸Ð¼Ð°Ð»ÑŒÐ½Ð¾ Ð¿Ð¾Ð´Ñ…Ð¾Ð´Ð¸Ñ‚ Ð¸ Ð´Ð»Ñ Ñ€ÐµÐ¼Ð');
INSERT INTO `bulk_contact` (`contact_id`, `name`, `email`, `mobile`, `address`, `school_name`, `nature_requirment`) VALUES
(855, 'Tom Martino', 'baasiminvestment@gmail.com', '89332139196', 'London', 'google', 'We have business partners who are willing to invest any amount into your business. \r\nFor more inform'),
(856, 'Donaldxtz', 'u.serz.a.levski.ja2.220.1@gmail.com\r\n', '88864553243', 'Minsk', 'google', 'ÐŸÑ€Ð¸Ð²ÐµÑ‚ Ð´Ñ€ÑƒÐ·ÑŒÑ \r\nÐžÐ±ÑƒÑÑ‚Ñ€Ð¾Ð¹ÑÑ‚Ð²Ð¾ ÑÐºÐ²Ð°Ð¶Ð¸Ð½Ñ‹ Ñ Ð¿Ð»Ð°ÑÑ‚Ð¸ÐºÐ¾Ð²Ñ‹Ð¼ ÐºÐµ'),
(857, 'Allenpak', 'your123mail@gmail.com', '88987314387', 'Juuka', 'google', 'Tin Tá»©c, Sá»± Kiá»‡n LiÃªn Quan Äáº¿n Tháº³ng Ä‘Ã¡ BÃ³ng PhÃ¡i Ná»¯ <a href=\"https://novelinkblog'),
(858, 'www_buydvdonline_com', 'uop754rmail@gmail.com', '82329987751', 'http://www.buydvdonline.com', 'google', '<a href=http://www.buydvdonline.com>nhk å¤§æ²³ ãƒ‰ãƒ©ãƒž</a> <a href=http://www.buydvdonline.com>ãƒ–'),
(859, 'buydvdonlinesale2021', 'rytered777mail@gmail.com', '84675734342', 'http://www.buydvdonline.com', 'google', '<a href=http://www.buydvdonline.com>ãƒ–ãƒ«ãƒ¼ãƒ¬ã‚¤ ãƒ‰ãƒ©ãƒž</a> <a href=http://www.buydvdonline.co'),
(860, 'Kevinlor', 'kevinluzi@alice.it', '82946433366', 'Bottegone', 'google', 'Hello, \r\n \r\nDownload Music FLAC Scene Releases: https://0daymusic.org \r\nLabel, LIVESETS, Music Video'),
(861, 'Marcoreith', 'ahmedkirillov5@gmail.com', '89127976748', 'Rio Grande', 'google', 'You received a money transfer of $ 89.44! PREPAYMENT! To receive funds, go to the payment page \r\n<a '),
(862, 'Mike Daniels\r\n', 'no-replykl@gmail.com', '83238165524', 'Willemstad', 'google', 'Hi there \r\n \r\nIncrease your schooloo.com Moz DA Score with us and get more visibility and exposure f'),
(863, 'Robertdko', 'u.s.e.rza.l.e.vski.ja22.2.01@gmail.com\r\n', '82712739419', 'Minsk', 'google', 'Ð”Ð¾Ð±Ñ€Ñ‹Ð¹ Ð´ÐµÐ½ÑŒ Ð³Ð¾ÑÐ¿Ð¾Ð´Ð° \r\n \r\nÐ‘ÑƒÑ€ÐµÐ½Ð¸Ðµ ÑÐºÐ²Ð°Ð¶Ð¸Ð½ \r\nÐ’ ÑÑ‚Ð¾Ð¹ ÑÑ‚Ð°Ñ‚ÑŒÐµ Ð'),
(864, 'matstral', 'matstral@yandex.ru', '87934228147', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', 'ÐšÐ¾Ð³Ð´Ð° Ð²Ð°Ð¼ ÑÑ‚Ð°Ð½ÐµÑ‚ Ð½ÑƒÐ¶Ð½Ð¾  <a href=http://alfa5066462.ru>Ñ€ÐµÐ¼Ð¾Ð½Ñ‚Ð½Ð¾ ÑÑ‚Ñ€Ð¾Ð¸'),
(865, 'RamonCoick', 'ssdinw@course-fitness.com', '85121775358', 'Hesperange', 'google', 'å¤ªé”æ•¸ä½åª’é«” \r\n \r\n \r\nhttps://deltamarketing.com.tw/'),
(866, 'hclickscomszwd', 'hclicks@rambler.ru', '1234567890', 'Moscow', 'google', 'Hello! \r\nThis is Greg an I am owner of https://hClicks.com \r\nI just noticed that your site schooloo.'),
(867, 'Tracyjaire', 'yourmail@gmail.com', '83748786878', 'Khujand', 'google', ' \r\nI thank the AccStores.com service for high-quality accounts. I was satisfied with acceptable pric'),
(868, 'MichaelGep', 'sofiyasamylkin1987911be1+118309@bk.ru', '81151897992', 'Sumbe', 'google', 'schooloo.com, bndjcsfwhejvdkmcndhbsjcsdifefedjgf'),
(869, 'RGMlutt', 'rgmrukav@gmail.com', '81866218441', 'Ð£Ñ„Ð°', 'google', 'ÐŸÑ€Ð¾Ñ‡Ð½Ñ‹Ð¹ <a href=http://www.uzgs.ru>Ð¼ÐµÑ‚Ð°Ð»Ð»Ð¾Ñ€ÑƒÐºÐ°Ð²</a> Ð¿Ñ€Ð°Ð²Ð¸Ð»ÑŒÐ½ÐµÐµ Ð¿Ñ€Ð¸Ð¾'),
(870, 'SEO X Press Digital Agency', 'stairsmargre32@gmail.com\r\n', '82633169541', 'Tokyo', 'google', 'Hello \r\n \r\n \r\nI have just analyzed  schooloo.com for its SEO Trend and saw that your website could u'),
(871, 'buydvdonlinesale2021', 'uyuuiy5875tgttil@gmail.com', '82115216626', 'https://www.buydvdonline.com', 'google', '<a href=https://www.buydvdonline.com/84.html>é€ƒã’ã‚‹ã¯æ¥ã ãŒå½¹ã«ç«‹ã¤ 2016 DVDé€šè²© æ¿€å®‰'),
(872, 'Nikiasved', 'veronikapikos@yandex.ru', '83149721162', 'Albany', 'google', '<a href=https://avto.info-sovety.ru/watch.php?vid=0bf727d4e>ÐšÐ°Ðº Ð²Ñ‹Ð±Ñ€Ð°Ñ‚ÑŒ Ð²Ð¸Ð´ÐµÐ¾Ñ€ÐµÐ³Ð¸'),
(873, 'LarryMip', '%spinfile-names.dat%%spinfile-lnames.dat%%random-1-100%@base.mixwi.com', '85678351648', 'Kakamega', 'google', 'Trusted Online Casino Malaysia   http://gm231.com/gm231-online-sportsbook-malaysia-sports-betting-od'),
(874, 'WandaVah', 'j.oa.n.8.908.3@gmail.com', '87183719888', 'Edson', 'google', 'https://moverslosangeles.city/cheap-movers-los-angeles.html '),
(875, 'Chaserot', '1dexyrq@course-fitness.com', '87773853946', 'Havana', 'google', 'XYZ å£¯é™½è—¥æ˜¥è—¥å°ˆè³£åº— å¤§é‡è³¼è²·æœ‰å„ªæƒ  \r\n \r\nhttps://man-r20.com/'),
(876, 'Mike Oswald\r\n', 'stairsmargre32@gmail.com\r\n', '83984736686', 'Albany', 'google', 'Greetings \r\n \r\nWe will enhance your Local Ranks organically and safely, using only whitehat methods,'),
(877, 'BobbyRem', 'padalexivan@gmail.com', '84621768273', 'Maputo', 'google', '<a href=https://vk.com/kupludom24>ÐŸÑ€Ð¾Ð´Ð°Ð¼ Ð´Ð¾Ð¼ ÐšÑ€Ð°ÑÐ½Ð¾ÑÑ€ÑÐº \r\n'),
(878, 'JamesKably', 'virandoamorcom@gmail.com', '87945384972', 'Lilongwe', 'google', 'Xoilac Tv Trá»±c Tiáº¿p BÃ³ng ÄÃ¡<a href=\"https://murraystivoli.com/detail/bxh-anh-b-4440.html\">phÃ'),
(879, 'RaymondScast', 'sebastian.monsik@interia.pl', '85263762976', 'Minsk', 'google', 'Na czym ufa zbadanie RTG? \r\n \r\n \r\nRTG wtedy technika formuÅ‚owania biorÄ…ca lÅ›nienie rentgenowskie '),
(880, 'BennyBeaub', 'olegivanover1@gmail.com', '86239987616', 'Minsk', 'google', 'You receive money transfer of 89.44$! Go to official bank website \r\n<a href=\"http://soft-bear-52.ant'),
(881, 'Robertnat', 'dfidf@asd.com', '87933445246', 'Quatre Bornes', 'google', 'coinjoin - https://coinjoin.kr \r\ncoinjoin - https://coinjoin.co.kr \r\nnday - https://nday.kr \r\nyanado'),
(882, 'LolaCax', '8.ujkmnhdywhnmjkdrsa.k.djwrj.djwwj@gmail.com', '81794675457', '', 'google', '<img src=\"https://i.imgur.com/ciPA9pa.png\"> \r\nHey. I like you.Write me in a dating site! \r\nThis is a'),
(883, 'Kevvingaisp', 'gvfyfghj@gmail.com', '87245973759', 'Hohenems', 'google', 'loli*ta gi*rl fu*ck c*p pt*hc \r\n \r\nhttps://xor.tw/4pgec'),
(884, 'ussrtwen', 'ussr20211@yandex.ru', '81149863876', 'Moskow', 'google', 'ÐŸÑ€Ð¸Ð³Ð»Ð°ÑˆÐ°ÐµÐ¼ Ð’Ð°Ñ Ð¿Ð¾ÑÐµÑ‚Ð¸Ñ‚ÑŒ ÑÐ°Ð¹Ñ‚ Ð¡Ð¾ÑŽÐ·Ð° Ð¡Ð¾Ð²ÐµÑ‚ÑÐºÐ¸Ñ… Ð¡Ð¾Ñ†Ð¸Ð°Ð»Ð¸Ñ'),
(885, 'buydvdonlinesale2021', 'uyuuiy5875tgttil@gmail.com', '88323898121', 'https://www.buydvdonline.com', 'google', '<a href=https://www.buydvdonline.com/2254.html>å­¤ç‹¬ã®ã‚°ãƒ«ãƒ¡ DVDé€šè²© æ¿€å®‰ãƒ‰ãƒ©ãƒž ãƒ–ãƒ«ãƒ'),
(886, 'Waynediedy', 'chiefscreolecafecom@gmail.com', '89246412226', 'Madagascar', 'google', 'Trá»±c Tiáº¿p Soccer  K+. K+pm. Mu Vs Liverpool. Truc Tiep Bong Da Anh Hom Nay<a href=\"https://murra'),
(887, 'Smithmag', 'smithVotjn@nettirautakauppa.com', '88213271382', 'Budapest', 'google', 'Sputnik V vaccination has begun in Slovakia. The provision of the Russian vaccine to the inherited s'),
(888, 'bluraybuydvdonline_com', 'fu977yumail@gmail.com', '81587771354', 'https://www.buydvdonline.com', 'google', '<a href=https://www.buydvdonline.com/1698.html>å‚ã®ä¸Šã®é›² DVDé€šè²© æ¿€å®‰ãƒ‰ãƒ©ãƒž ãƒ–ãƒ«ãƒ¼ãƒ'),
(889, 'FloydHaf', 'yourmail@gmail.com', '86184813859', 'Bottegone', 'google', 'BÃ¡n TWITTER Cá»” REG 2009>2015 - Instagram accounts \r\nClick here \r\nhttps://accs.vn'),
(890, 'Cabyaccousy', 'mfuzor.ia@gmail.com', '81911853599', 'Paris', 'google', 'Torrents: <a href=http://hjqhqfpma.icu/dragon-prince-yuan/chapter-196-all-into-my-hands/>1157 Chapte'),
(891, 'kspguert', 'p.o.chta@imajl.ru', '88252972291', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', ''),
(892, 'Mike Jackson\r\n', 'voegeleeilen32@gmail.com\r\n', '81369257583', 'Kaohsiung Municipality', 'google', 'Good Day \r\n \r\nI have just verified your SEO on  schooloo.com for its SEO metrics and saw that your w'),
(893, 'RandalInefs', 'equinomecom@gmail.com', '87327385831', 'Kwekwe', 'google', 'KÃ¨o NhÃ  CÃ¡i Tháº³ng Ä‘Ã¡ BÃ³ng NgÃ y HÃ´m Nay<a href=\"https://virandoamor.com/detail/xem-kenh-bdt'),
(894, 'y2mate798e', '2conv.ch@gmail.com', '83194242699', 'Freising', 'google', 'Dear folks, just came across this amazing site and would love to post some handy website resource wh'),
(895, 'ScottFierm', 'protribasvets1964@dizaer.ru', '86428668615', 'Falmouth', 'google', ''),
(896, 'Michealgaw', 'chuyi1231mail@gmail.com', '85264471264', 'Falmouth', 'google', 'Lá»‹ch Tranh TÃ i VÃ  Váº¡c Trá»±c Tiáº¿p Soccer Thá»i Äiá»ƒm HÃ´m Nay 23 4<a href=\"https://chelse'),
(897, 'Raalphfup', 'ftythhj@gmail.com', '86212767374', 'Molodesjnaja', 'google', 'loli*ta gi*rl fu*ck c*p pt*hc \r\n \r\nhttps://m2.tc/P91p'),
(898, 'BradleyPlurn', 'monthliplery1957@dizaer.ru', '89385144521', 'Arcatao', 'google', ''),
(899, 'Richardvew', 'sergeyromanov456@gmail.com', '84988273959', 'Nove Mesto nad Vahom', 'google', ' \r\n'),
(900, 'JosueBub', 'yourmail@gmail.com', '86768732818', 'La Lima', 'google', 'BÃ¡n TWITTER Cá»” REG 2009>2015 - Instagram accounts \r\nClick \r\nhttps://accs.vn'),
(901, 'Josephham', 'fevgen708@gmail.com', '88862514132', 'Kyiv', 'google', 'Ð’ Pinterest Ñ 2012 Ð³. ÐœÐ¾Ñ Ð ÐµÐºÐ»Ð°Ð¼Ð° Ð² Ð½ÐµÐ¼ Ð´Ð°ÐµÑ‚ Ð—Ð°ÐºÐ°Ð·Ñ‡Ð¸ÐºÐ°Ð¼ Ð¸Ð· Etsy, Sh'),
(902, 'Williamvop', 'bridevliters1952@dizaer.ru', '89948333999', 'Hohenems', 'google', ''),
(903, 'NabcyKiz', 'confisumill1980@rambler.ru', '89497197193', 'Santa Maria', 'google', '<a href=https://bit.ly/3rgV3Fd>AÐ¹Ñ„oÐ½Ñ‹</a> \r\n \r\nÐ¿epcÐ¿ekÑ‚uÐ²Ð½Ñ‹e Ð¼Ð¾Ð´ÐµÐ»Ð¸! \r\n \r\n \r\nÐžÐ³Ñ€Ð'),
(904, 'sharagames', 'sharagames.ru@gmail.com', '81567149852', 'Ð¢Ð¾Ð»ÑŒÑÑ‚Ð¸', 'google', 'Ð—Ð´Ð°Ñ€Ð¾Ð²Ð°! \r\n \r\nÐŸÐ¾Ð´Ð¿Ð¸ÑˆÐ¸ÑÑŒ Ð½Ð° Ð¼Ð¾Ð¹ ÐºÐ°Ð½Ð°Ð» https://www.youtube.com/c/Shara-games'),
(905, 'Ð¡loudbip', 'svidinfo1980@gmail.com', '82684366853', 'LA', 'google', 'Hello, let me introduce you to our program. \r\nA program for fast website promotion. \r\nResult: \r\n- Yo'),
(906, 'CharlesSab', 'darsusubmoi1976@dizaer.ru', '83877714463', 'Keflavik', 'google', ''),
(907, 'Ronaldwhesy', 'support@well-web.net', '89675463498', 'Kuwait', 'google', '<a href=https://well-web.net/>Ð’Ð¸Ñ€Ñ‚ÑƒÐ°Ð»ÑŒÐ½Ñ‹Ð¹ Ñ…Ð¾ÑÑ‚Ð¸Ð½Ð³</a> \r\n<a href=\"https://well-web.'),
(908, 'dvd_firstrelax_net', 'yuop77yumail@gmail.com', '82899445552', 'http://www.firstrelax.net', 'google', '<a href=http://www.firstrelax.net>å‚ ã® ä¸Š ã® é›² dvd</a> <a href=http://www.firstrelax.net>çœŸ '),
(909, 'dvdsmp3cepinfo', 'pitrsswfy5875tgttil@gmail.com', '82264671663', 'http://www.smp3cep.info', 'google', '<a href=http://www.smp3cep.info>ãƒ‰ãƒ©ãƒždvd å£²ä¸Šãƒ©ãƒ³ã‚­ãƒ³ã‚°</a>'),
(910, 'BobbyRem', 'padalexivan@gmail.com', '88649531162', 'Maputo', 'google', '<a href=https://vk.com/kupludom24>ÐŸÑ€Ð¾Ð´Ð°Ð¼ Ð´Ð¾Ð¼ ÐšÑ€Ð°ÑÐ½Ð¾ÑÑ€ÑÐº \r\n'),
(911, 'dvd_ypl345info', 'tyteerfdff467il@gmail.com', '83895237924', 'https://www.ypl345.info', 'google', '<a href=https://www.ypl345.info>ãƒ–ãƒ«ãƒ¼ãƒ¬ã‚¤ ãƒ‰ãƒ©ãƒž</a>'),
(912, 'GoXBet', 'goxbetcasino@gmail.com', '81951848484', 'Aarschot', 'google', 'Ð˜Ð³Ñ€Ð¾Ð²Ñ‹Ðµ Ð°Ð²Ñ‚Ð¾Ð¼Ð°Ñ‚Ñ‹ Ð½Ð° Ð¾Ñ„Ð¾Ñ†Ð¸Ð°Ð»ÑŒÐ½Ð¾Ð¼ ÑÐ°Ð¹Ñ‚Ðµ Ð¾Ñ‚ <a href=https://goxbet-c'),
(913, 'callmeJah', 'temptheatsecon1981@mail.ru', '85833393818', 'Moscow', 'google', 'call me whatsapp: https://wa.me/79910404425'),
(914, 'LorenzoApemo', 'tvbox@twinklyshop.xyz', '84389612278', 'Porsgrunn', 'google', 'Ð Ñ›Ð Ò‘Ð Ð…Ð Ñ•Ð¡Ð‚Ð Â°Ð Â·Ð Ñ•Ð Ð†Ð Â°Ð¡Ð Ð¡ÐŒÐ Â»Ð ÂµÐ Ñ”Ð¡â€šÐ¡Ð‚Ð Ñ•Ð Ð…Ð Ð…Ð Â°Ð¡Ð Ð¡ÐƒÐ Ñ‘Ð'),
(915, 'DscissGaf', 'revers@o5o5.ru', '88751882286', 'London', 'google', '<a href=https://www.dizayn-studio.ru/>ÑÑ‚ÑƒÐ´Ð¸Ñ Ð´Ð¸Ð·Ð°Ð¹Ð½Ð° Ð¸Ð½Ñ‚ÐµÑ€ÑŒÐµÑ€Ð¾Ð²</a> \r\nTegs: Ð'),
(916, 'Bernt Maes', 'c_ontactreports87495@outlook.hu', '88796553675', 'Boston', 'google', '5000+ Quality 3D Metal-Bondage and latex slavery pictures:  https://lock-master.com/ \r\nPreviews:   h'),
(917, 'BarbaraNoipt', 'vitalikfgrguts@yandex.com', '82781319678', 'Doha', 'google', 'Ð¡Ñ‚Ñ€Ð¾Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð°Ñ Ð²Ñ‹ÑˆÐºÐ° Ñ‚ÑƒÑ€Ð° Ð¾Ð¿Ñ‚Ð¸Ð¼Ð°Ð»ÑŒÐ½Ð¾ Ð¿Ð¾Ð´Ñ…Ð¾Ð´Ð¸Ñ‚ Ð¸ Ð´Ð»Ñ Ñ€ÐµÐ¼Ð'),
(918, 'Mirnadiubs', 'borya.baranov1478@gmail.com', '87391841789', 'Alushta', 'google', 'Ð’ÐµÐ´ÑƒÑ‰Ð¸Ð¹ Ð°Ð¼ÐµÑ€Ð¸ÐºÐ°Ð½ÑÐºÐ¸Ð¹ ÑÐºÑÐ¿ÐµÑ€Ñ‚ Ð¿Ð¾ Ð²Ð¸Ñ€ÑƒÑÐ°Ð¼ Ð¿Ñ€Ð¾Ñ„ÐµÑÑÐ¾Ñ€ Ð­Ð½Ñ‚'),
(919, 'RalphVurry', 'mariaaxxa201@gmail.com', '84238916318', 'Algiers', 'google', 'Vietnam city capital of China  <a href=https://www.datanumen.com/pdf-repair/> city  5 </a>'),
(920, 'Arthurdurgy', 'maximmad222@yandex.ru', '88591562546', 'Kaohsiung Municipality', 'google', 'Ð¥Ð¾Ñ‡ÐµÑˆÑŒ ÑÑ‚Ð°Ñ‚ÑŒ ÐºÐ¾Ð²Ð±Ð¾ÐµÐ¼ Ð½Ð° Ð”Ð¸ÐºÐ¾Ð¼ Ð·Ð°Ð¿Ð°Ð´Ðµ Ð¸Ð³Ñ€Ð°Ð¹ Ð² Red Dead  + https:'),
(921, 'Andreimwv', 'u.serzalev.sk.ija22201@gmail.com\r\n', '87495736136', 'Minsk', 'google', 'Ð¡ÐºÐ²Ð°Ð¶Ð¸Ð½Ð° Ð½Ð° Ð²Ð¾Ð´Ñƒ Ð½Ð° ÑƒÑ‡Ð°ÑÑ‚ÐºÐµ. Ð§Ñ‚Ð¾ Ð¾Ð½Ð° ÑÐ¾Ð±Ð¾Ð¹ Ð¿Ñ€ÐµÐ´ÑÑ‚Ð°Ð²Ð»ÑÐµÑ'),
(922, 'Raalphfup', 'ftythhj@gmail.com', '88324736113', 'Molodesjnaja', 'google', 'loli*ta gi*rl fu*ck c*p pt*hc \r\n \r\nhttps://m2.tc/P91p'),
(923, 'www_qadigitin_com', 'upfdg754rmail@gmail.com', '88455943381', 'http://www.qadigitin.com', 'google', '<a href=http://www.qadigitin.com>é¾é¦¬ä¼ dvd æ¿€å®‰</a>'),
(924, 'www_zrmovie_com_sale', 'ttsidf5d777mail@gmail.com', '88198438936', 'https://www.zrmovie.com', 'google', '<a href=https://www.zrmovie.com>DVD ãƒ–ãƒ«ãƒ¼ãƒ¬ã‚¤ ãƒ‰ãƒ©ãƒž</a> <a href=https://www.zrmovie.com>ãƒ'),
(925, 'KiaReums', 'dinah@mail.com ', '83171676225', 'Denver', 'google', '<a href=\"http://ordertadalafilpills.com/\">india pharmacy tadalafil</a> '),
(926, 'AmyReums', 'strasser@gmail.com ', '85914636886', 'New York', 'google', '<a href=\"http://cialismedicine.com/\">generic cialis fast delivery</a> '),
(927, 'LisaReums', 'stuartdlake@aol.com ', '86554125452', 'Dallas', 'google', '<a href=\"https://sildenafileasy.com/\">100mg sildenafil no rx canadian</a> '),
(928, 'Raalphfup', 'ftythhj@gmail.com', '87751463574', 'Molodesjnaja', 'google', 'loli*ta gi*rl fu*ck c*p pt*hc \r\n \r\nhttps://m2.tc/P91p'),
(929, 'DenReums', 'janjamh@yahoo.com ', '84397327414', 'Chicago', 'google', '<a href=\"http://phdtabs.com/\">purchase propecia online</a> <a href=\"http://crmeds.com/\">fluoxetine 1'),
(930, 'isaacaa60', 'christopherxo3@haru5310.takayuki80.mokomichi.xyz', '88646533254', '', 'google', 'Young Heaven - Naked Teens & Young Porn Pictures\r\nhttp://brassiere.pornknierim.danexxx.com/?miracle '),
(931, 'AmyReums', 'hd8356@gmail.com ', '84328224639', 'New York', 'google', '<a href=\"http://cialisextr.com/\">buy genuine cialis uk</a> '),
(932, 'Phillipjuh', 'chiefscreolecafecom@gmail.com', '85192224521', 'Boden', 'google', 'Trá»±c Tiáº¿p Soccer Thá»i Äiá»ƒm HÃ´m Nay, Links Coi Trá»±c Tuyáº¿n Video Clip TÃ¬nh Huá»‘ng<a hr'),
(933, 'KiaReums', 'coleman@aol.com ', '82854878316', 'Denver', 'google', '<a href=\"http://viagrauni.com/\">viagra australia buy</a> '),
(934, 'Robertscelf', 'ad56924@gmail.com', '89931288951', 'Jbeil', 'google', 'Does anyone use this <a href=https://sjmphotography.info>gay dating site</a>? What else can you reco'),
(935, 'nam6642725tetcher', 'slyshevl@bk.ru', '89685697525', 'Klimmen', 'google', 'mns6642725utr TIpmW3e BMdJ wG4rium'),
(936, 'Steveyndog', 'sale@za-splav.by', '89557832426', 'Delmas', 'google', 'Ð¡Ñ‚Ñ€Ð¾Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð°Ñ Ð²Ñ‹ÑˆÐºÐ° Ñ‚ÑƒÑ€Ð° Ð¾Ð¿Ñ‚Ð¸Ð¼Ð°Ð»ÑŒÐ½Ð¾ Ð¿Ð¾Ð´Ñ…Ð¾Ð´Ð¸Ñ‚ Ð¸ Ð´Ð»Ñ Ñ€ÐµÐ¼Ð'),
(937, 'MarkReums', 'margit@aol.com ', '89859936817', 'Dallas', 'google', '<a href=\"https://unocialis.com/\">cialis discount pharmacy</a> <a href=\"https://eccpharm.com/\">predni'),
(938, 'EyeReums', 'drwilliamstewart@mail.com ', '87123961127', 'San Jose', 'google', '<a href=\"http://sildenafilzpill.com/\">100mg sildenafil no rx canadian</a> <a href=\"http://xviagrahot'),
(939, 'JasonReums', 'hudsman1@mail.com ', '84381765777', 'New York', 'google', '<a href=\"http://tadalafilxt.com/\">tadalafil generic otc</a> <a href=\"http://dbpills.com/\">metformin '),
(940, 'KiaReums', 'maryalice@aol.com ', '81966124824', 'Denver', 'google', '<a href=\"http://sildenafilpharm.com/\">buying generic viagra online</a> '),
(941, 'LisaReums', 'cinda@hotmail.com ', '87624579581', 'Dallas', 'google', '<a href=\"https://onlinemediorder.com/\">modafinil no prescription</a> '),
(942, 'AlanReums', 'cspan1@mail.com ', '81521676984', 'New York', 'google', '<a href=\"http://sildenafileasy.com/\">sildenafil 50 mg online</a> <a href=\"http://tadalafilmtab.com/\"'),
(943, 'PaulReums', 'cjiles06@gmail.com ', '81265337917', 'Dallas', 'google', '<a href=\"https://tadalafilbestbuy.com/\">tadalafil pills 20mg</a> <a href=\"https://viagrahtab.com/\">v'),
(944, 'Richardvew', 'sergeyromanov456@gmail.com', '86677895814', 'Nove Mesto nad Vahom', 'google', '<a href=https://vk.com/kupludom24>ÐŸÑ€Ð¾Ð´Ð°Ð¼ Ð´Ð¾Ð¼ ÐšÑ€Ð°ÑÐ½Ð¾ÑÑ€ÑÐº</a>'),
(945, 'dvdsale_1l88cc', 'upfdg79ail@774f@gmail.com', '87637463837', 'http://www.1l88.cc', 'google', '<a href=http://www.1l88.cc>æ¿€å®‰ dvd ãƒ‰ãƒ©ãƒž</a> <a href=http://www.1l88.cc>æ—¥æœ¬ãƒ‰ãƒ©ãƒždvd æ¿'),
(946, 'DenReums', 'lindallsytan7@yahoo.com ', '89118554721', 'Chicago', 'google', '<a href=\"http://startpills.com/\">price of lisinopril 20 mg</a> <a href=\"http://pharmacyzeus.com/\">no'),
(947, 'DenReums', 'holly@hotmail.com ', '85537244125', 'Chicago', 'google', '<a href=\"http://ordertadalafilpills.com/\">where can i buy real cialis online</a> <a href=\"http://rxr'),
(948, 'AmyReums', 'yonwabo@aol.com ', '82775854473', 'New York', 'google', '<a href=\"http://opivermectin.com/\">ivermectin lotion price</a> '),
(949, 'Alfredstymn', 'gennadiigordeev822@list.ru', '81167536331', 'ÐšÐ¾Ñ€Ð¾Ð»ÐµÐ²', 'google', 'Ð¿Ñ€Ð¸Ð²ÐµÑ‚ÑÑ‚Ð²ÑƒÑŽ ... \r\nÐ½Ð°ÑˆÐ»Ð° Ñ ÑÑ‹Ð½Ð¾Ð¼  Ð²ÐµÐ± ÑÐ°Ð¹Ñ‚ Ð½Ð°Ð¼ Ð½ÑƒÐ¶Ð½Ð¾ Ð¿Ð¾Ð½ÑÑ‚Ñ'),
(950, 'dvd_firstrelax_net', 'yuop77yumail@gmail.com', '85565858497', 'http://www.firstrelax.net', 'google', '<a href=http://www.firstrelax.net>çœŸ ç”°ä¸¸ dvd</a> <a href=http://www.firstrelax.net>éº’éºŸ ãŒ ã'),
(951, 'Michealgaw', 'chuyi1231mail@gmail.com', '88494655989', 'Falmouth', 'google', 'Káº¿t TrÃ¡i Soccer Thá»i Äiá»ƒm HÃ´m Nay<a href=\"https://arsenalbeautiful.football/\">thÃ´ng tin ch'),
(952, 'KiaReums', 'coleman@gmail.com ', '83771339745', 'Denver', 'google', '<a href=\"http://pharmacyomni.com/\">canadian pharmacy service</a> '),
(953, 'LisaReums', 'eau4ea@outlook.com ', '84259538434', 'Dallas', 'google', '<a href=\"https://ivermectinbestbuy.com/\">price of stromectol</a> '),
(954, 'Urocchpip', '900900900@internet.ru', '88341522862', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', 'https://aliexpress.ru/item/1005002968275091.html \r\n<a href=https://aliexpress.ru/item/10050029682750'),
(955, 'MaryReums', 'oliverbaumgartner@hotmail.com ', '81817646376', 'Dallas', 'google', '<a href=\"https://worxtabs.com/\">stromectol ebay</a> '),
(956, 'Ð¡loudbip', 'svidinfo1980@gmail.com', '89251616224', 'LA', 'google', 'Hello, let me introduce you to our program. \r\nA program for fast website promotion. \r\nResult: \r\n- Yo'),
(957, 'JasonReums', 'lshablesky@outlook.com ', '85245978314', 'New York', 'google', '<a href=\"http://genericivermectin.com/\">ivermectin cost australia</a> '),
(958, 'sharagames', 'sharagames.ru@gmail.com', '87265425654', 'Ð¢Ð¾Ð»ÑŒÑÑ‚Ð¸', 'google', 'Ð—Ð´Ð°Ñ€Ð¾Ð²Ð°! \r\n \r\nÐŸÐ¾Ð´Ð¿Ð¸ÑˆÐ¸ÑÑŒ Ð½Ð° Ð¼Ð¾Ð¹ ÐºÐ°Ð½Ð°Ð» https://www.youtube.com/c/Shara-games'),
(959, 'AlanReums', 'elvina@outlook.com ', '86937797562', 'New York', 'google', '<a href=\"http://genericivermectin.com/\">stromectol medication</a> '),
(960, 'EyeReums', 'minniebrown60@outlook.com ', '82626837438', 'San Jose', 'google', '<a href=\"http://genericivermectin.com/\">ivermectin 18mg</a> '),
(961, 'AmyReums', 'dwlumier@gmail.com ', '81714419613', 'New York', 'google', '<a href=\"http://ivermectinbestbuy.com/\">stromectol generic name</a> '),
(962, 'PaulReums', 'mjsassociates@gmail.com ', '87533192387', 'Dallas', 'google', '<a href=\"https://ivermectinbestbuy.com/\">ivermectin 400 mg</a> '),
(963, 'CarlReums', 'mbudimir@outlook.com ', '81745695251', 'New York', 'google', '<a href=\"http://genericivermectin.com/\">stromectol south africa</a> '),
(964, 'PaulReums', 'macrogoddess@yahoo.com ', '81834863782', 'Dallas', 'google', '<a href=\"https://ivermectinbestbuy.com/\">ivermectin brand name</a> '),
(965, 'AnthonyRof', 'cynthiasprinkel@rambler.ru', '86366263739', 'Kulim', 'google', ' \r\nÐÐ° ÑÑ‚Ð¾Ð¹ <a href=https://traveltofly.ru/sample-page/>ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ‡ÐºÐµ</a> Ð´ÐµÑˆÐµÐ²Ñ‹Ð¹ Ð'),
(966, 'CoreyNuG', 'image81@inbox.ru', '83361833443', 'Arcatao', 'google', 'This year turned out to be very difficult. But we have optimized and reduced the cost of our product'),
(967, 'JudyReums', 'laurena@yahoo.com ', '86731477835', 'New York', 'google', '<a href=\"http://ivermectinbestbuy.com/\">stromectol 3 mg</a> '),
(968, 'JamesKably', 'chiefscreolecafecom@gmail.com', '82458926658', 'Lilongwe', 'google', 'Chá»n Mua GiÃ y BÃ³ng Rá»•<a href=\"https://murraystivoli.com/detail/u22-viet-nam-vs-u22-brunei-7831'),
(969, 'CarlReums', 'suzyking72@gmail.com ', '89627364365', 'New York', 'google', '<a href=\"http://genericivermectin.com/\">ivermectin buy nz</a> '),
(970, 'KiaReums', 'kelvin@aol.com ', '89558361348', 'Denver', 'google', '<a href=\"http://ivermectinbestbuy.com/\">ivermectin tablets uk</a> '),
(971, 'JudyReums', 'bufordandlacey@gmail.com ', '86485133259', 'New York', 'google', '<a href=\"http://ivermectinbestbuy.com/\">ivermectin price</a> '),
(972, 'CarlReums', 'hedy@yahoo.com ', '88695548394', 'New York', 'google', '<a href=\"http://worxtabs.com/\">ivermectin medication</a> '),
(973, 'EyeReums', 'randyh06@mail.com ', '82253367334', 'San Jose', 'google', '<a href=\"http://worxtabs.com/\">stromectol 3 mg tablet</a> '),
(974, 'LisaReums', 'escobedoirack@yahoo.com ', '83762341198', 'Dallas', 'google', '<a href=\"https://worxtabs.com/\">cost for ivermectin 3mg</a> '),
(975, 'MaryReums', 'randyman1955@gmail.com ', '87824847163', 'Dallas', 'google', '<a href=\"https://genericivermectin.com/\">ivermectin pills</a> '),
(976, 'AmyReums', 'franapingu@gmail.com ', '85344471747', 'New York', 'google', '<a href=\"http://genericivermectin.com/\">buy stromectol online uk</a> '),
(977, 'MarkReums', 'carmelia@aol.com ', '87968747336', 'Dallas', 'google', '<a href=\"https://ivermectinbestbuy.com/\">buy stromectol online uk</a> '),
(978, 'Arthurdurgy', 'maximmad222@yandex.ru', '81244727185', 'Kaohsiung Municipality', 'google', '<b>Ð¦Ð¸Ñ„Ñ€Ð¾Ð²Ñ‹Ðµ Ð²ÐµÑ€ÑÐ¸Ð¸ Ð¸Ð³Ñ€Ñ‹ XBOX CD KEY </b> \r\n<b>Ð—Ð´Ñ€Ð°Ð²ÑÑ‚Ð²ÑƒÐ¹Ñ‚Ðµ Ð²Ñ‹ Ð¼Ð¾Ð¶'),
(979, 'DenReums', 'watsonroger@aol.com ', '81721312722', 'Chicago', 'google', '<a href=\"http://ivermectinbestbuy.com/\">ivermectin lotion</a> '),
(980, 'MarkReums', 'bwhood@hotmail.com ', '89389747618', 'Dallas', 'google', '<a href=\"https://ivermectinbestbuy.com/\">buy stromectol canada</a> '),
(981, 'JasonReums', 'elisha@outlook.com ', '88933754431', 'New York', 'google', '<a href=\"http://ivermectinbestbuy.com/\">stromectol in canada</a> '),
(982, 'LisaReums', 'thanlon77@aol.com ', '87877877223', 'Dallas', 'google', '<a href=\"https://genericivermectin.com/\">ivermectin virus</a> '),
(983, 'AlanReums', 'mbzoe75@mail.com ', '83686583339', 'New York', 'google', '<a href=\"http://worxtabs.com/\">ivermectin where to buy</a> '),
(984, 'Mike Morgan\r\n', 'corradolan32@gmail.com\r\n', '89593445544', 'Willemstad', 'google', 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your schooloo.com website? \r\nHaving a'),
(985, 'JudyReums', 'lee@hotmail.com ', '82376276657', 'New York', 'google', '<a href=\"http://ivermectinbestbuy.com/\">ivermectin cream uk</a> '),
(986, 'PaulReums', 'sys1rxb@aol.com ', '84514571413', 'Dallas', 'google', '<a href=\"https://genericivermectin.com/\">stromectol xl</a> '),
(987, 'Rogerfok', 'b4gv7@course-fitness.com', '81753731334', 'Klimmen', 'google', 'XYZ å£¯é™½è—¥æ˜¥è—¥å°ˆè³£åº— å¤§é‡è³¼è²·æœ‰å„ªæƒ  \r\n \r\nhttps://man-r20.com/'),
(988, 'AmyReums', 'zzzorn@aol.com ', '83547153648', 'New York', 'google', '<a href=\"http://worxtabs.com/\">ivermectin 5</a> '),
(989, 'EyeReums', 'jetlee555@mail.com ', '85911446646', 'San Jose', 'google', '<a href=\"http://worxtabs.com/\">stromectol price in india</a> '),
(990, 'olaoq4', 'mariagray6323321+ashlee@gmail.com}', '87138882978', '', 'google', 'Nude Sex Pics, Sexy Naked Women, Hot Girls Porn\r\nhttp://best10porns.schoeneck.hotnatalia.com/?iyanna'),
(991, 'SlotoKing', 'slotoking.casino777@gmail.com', '84895433957', 'Banepa', 'google', 'Ð¡Ð»Ð¾Ñ‚Ð¾ÐšÐ¸Ð½Ð³ ÐšÐ°Ð·Ð¸Ð½Ð¾ <a href=https://slotoking-casino.cyou/>SlotoKing Casino</a> Ð¾Ñ„Ð¸Ñ†'),
(992, 'Terryusals', '9zcvy@course-fitness.com', '83158345879', 'Maputo', 'google', 'ç¬¬ä¸€å€ŸéŒ¢ç¶²æ“æœ‰å…¨å°æœ€å¤šçš„å€ŸéŒ¢è³‡è¨Šã€‚è³‡è¨Šæœ€é½Šå…¨ï¼Œç•¶èˆ–æ¥­ï¼Œä¿¡è²¸æ¥­ï¼Œåœ¨ç¬¬ä'),
(993, 'Donaldnhs', 'u.s.erz.a.le.v.sk.i.j.a2.2.2.0.1@gmail.com\r\n', '84859182653', 'Minsk', 'google', 'Ð”Ð¾Ð±Ñ€Ð¾Ð³Ð¾ Ð²Ñ€ÐµÐ¼ÐµÐ½Ð¸ ÑÑƒÑ‚Ð¾Ðº Ñ‚Ð¾Ð²Ð°Ñ€Ð¸Ñ‰Ð¸ \r\nÐžÐ±ÑƒÑÑ‚Ñ€Ð¾Ð¹ÑÑ‚Ð²Ð¾ ÑÐºÐ²Ð°Ð¶Ð¸Ð½Ñ'),
(994, 'MaryReums', 'britany@yahoo.com ', '89565121593', 'Dallas', 'google', '<a href=\"https://worxtabs.com/\">ivermectin 1%</a> '),
(995, 'JasonReums', 'america7@outlook.com ', '86958469261', 'New York', 'google', '<a href=\"http://worxtabs.com/\">stromectol coronavirus</a> '),
(996, 'AmyReums', 'thierman@aol.com ', '89624321722', 'New York', 'google', '<a href=\"http://genericivermectin.com/\">stromectol pills</a> '),
(997, 'EyeReums', 'waccamanpa@yahoo.com ', '87834366845', 'San Jose', 'google', '<a href=\"http://genericivermectin.com/\">buy stromectol</a> '),
(998, 'CarlReums', 'hedy@hotmail.com ', '81789652436', 'New York', 'google', '<a href=\"http://worxtabs.com/\">ivermectin lotion for lice</a> '),
(999, 'DenReums', 'ssrjjohnston@aol.com ', '88375227469', 'Chicago', 'google', '<a href=\"http://ivermectinbestbuy.com/\">buy stromectol online</a> '),
(1000, 'MaryReums', 'rfisher@gmail.com ', '82683421853', 'Dallas', 'google', '<a href=\"https://worxtabs.com/\">ivermectin 200 mcg</a> '),
(1001, 'AlanReums', 'cheryli@outlook.com ', '82425796252', 'New York', 'google', '<a href=\"http://genericivermectin.com/\">ivermectin 2</a> '),
(1002, 'JudyReums', 'mjtafoya@outlook.com ', '82182978933', 'New York', 'google', '<a href=\"http://ivermectinbestbuy.com/\">ivermectin buy online</a> '),
(1003, 'KiaReums', 'pauladees@gmail.com ', '84452945821', 'Denver', 'google', '<a href=\"http://genericivermectin.com/\">ivermectin 9mg</a> '),
(1004, 'MarkReums', 'sareeves@gmail.com ', '85585948695', 'Dallas', 'google', '<a href=\"https://worxtabs.com/\">ivermectin brand</a> '),
(1005, 'BarbaraNoipt', 'zul.zackaryaeva@yandex.ru', '84671685171', 'Doha', 'google', 'Ð¡Ñ‚Ñ€Ð¾Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð°Ñ Ð²Ñ‹ÑˆÐºÐ° Ñ‚ÑƒÑ€Ð° Ð¾Ð¿Ñ‚Ð¸Ð¼Ð°Ð»ÑŒÐ½Ð¾ Ð¿Ð¾Ð´Ñ…Ð¾Ð´Ð¸Ñ‚ Ð¸ Ð´Ð»Ñ Ñ€ÐµÐ¼Ð'),
(1006, 'RandalInefs', 'equinomecom@gmail.com', '81277449239', 'Kwekwe', 'google', 'ThÃ´ng Tin, Sá»± Khiáº¿u Náº¡i LiÃªn Quan Äáº¿n NgÃ´n Tá»« VÃ o TÆ°á»ng Thuáº­t Soccer Trá»±c Tiáº'),
(1007, 'AmyReums', 'wandagosse43@gmail.com ', '88233119597', 'New York', 'google', '<a href=\"http://worxtabs.com/\">ivermectin buy</a> '),
(1008, 'SEO X Press Digital Agency', 'idahernandez3262@gmail.com\r\n', '84843812292', 'Tokyo', 'google', 'Hi there \r\n \r\n \r\nI have just verified your SEO on  schooloo.com for the  ranking keywords and saw th'),
(1009, 'AlanReums', 'davis@outlook.com ', '86839597435', 'New York', 'google', '<a href=\"http://genericivermectin.com/\">ivermectin cost</a> '),
(1010, 'Arthurdurgy', 'maximmad222@yandex.ru', '81129481947', 'Kaohsiung Municipality', 'google', 'Ð’ Ð¢ÑƒÑ€ÐµÑ†ÐºÐ¾Ð¼ Ð°ÐºÐºÐ°ÑƒÐ½Ñ‚Ðµ  Ð¿Ð¾ÐºÑƒÐ¿Ð°Ñ‚ÑŒ Ð´ÐµÑˆÐµÐ²Ð»Ðµ Ð¸Ð³Ñ€Ñ‹ Ñ‡ÐµÐ¼ Ð² Ð Ð¾ÑÑÐ¸Ð'),
(1011, 'MarkReums', 'cobumaas@aol.com ', '83388974318', 'Dallas', 'google', '<a href=\"https://ivermectinbestbuy.com/\">stromectol online pharmacy</a> '),
(1012, 'KiaReums', 'juaknino@outlook.com ', '87674837248', 'Denver', 'google', '<a href=\"http://genericivermectin.com/\">stromectol nz</a> '),
(1013, 'DenReums', 'darlaward@mail.com ', '89473527197', 'Chicago', 'google', '<a href=\"http://worxtabs.com/\">buy ivermectin canada</a> '),
(1014, 'Derekdougs', 'qriqua@tele2.nl', '87479468987', 'Elvas', 'google', 'Hey, \r\n \r\nDOWNLOAD MUSIC, PRIVATE FTP ACCESS https://acidjazzrecords.blogspot.com/ \r\nBest regards, D'),
(1015, 'JasonReums', 'johnryan@yahoo.com ', '87146674181', 'New York', 'google', '<a href=\"http://genericivermectin.com/\">ivermectin 6mg</a> '),
(1016, 'EyeReums', 'jeromemichallat@aol.com ', '84883576191', 'San Jose', 'google', '<a href=\"http://worxtabs.com/\">where can i buy oral ivermectin</a> '),
(1017, 'PaulReums', 'niamhmurphy@mail.com ', '82752737129', 'Dallas', 'google', '<a href=\"https://genericivermectin.com/\">ivermectin 0.08%</a> '),
(1018, 'KiaReums', 'exempel@gmail.com ', '81299833553', 'Denver', 'google', '<a href=\"http://ivermectinbestbuy.com/\">stromectol pill</a> '),
(1019, 'AlanReums', 'geignas@yahoo.com ', '89864247226', 'New York', 'google', '<a href=\"http://worxtabs.com/\">stromectol medication</a> '),
(1020, 'CharlesCeary', 'xrumerspamer@gmail.com', '83529317811', 'Plovdiv', 'google', 'ÐÐ°Ð´Ð¾ÐµÐ»Ð¾ ÑÐ»ÑƒÑˆÐ°Ñ‚ÑŒ Ð¼ÑƒÐ·Ñ‹ÐºÑƒ VK? ÐšÐ°Ð¶Ð´Ñ‹Ð¹ Ñ€Ð°Ð· Ð±ÑŒÑ‘Ñ‚ÐµÑÑŒ Ð² Ð¿Ñ€Ð¸Ð¿Ð°Ð´ÐºÐ'),
(1021, 'AmyReums', 'jenniffer@gmail.com ', '86428529579', 'New York', 'google', '<a href=\"http://genericivermectin.com/\">ivermectin coronavirus</a> '),
(1022, 'JudyReums', 'vapntp@outlook.com ', '86357721183', 'New York', 'google', '<a href=\"http://ivermectinbestbuy.com/\">stromectol medicine</a> '),
(1023, 'CarlReums', 'ijuba57@yahoo.com ', '83121679894', 'New York', 'google', '<a href=\"http://ivermectinbestbuy.com/\">stromectol in canada</a> '),
(1024, 'DarrenEduts', 'zulzackaryaeva@yandex.ru', '82854296645', 'Hesperange', 'google', ''),
(1025, 'DarrenEduts', 'zulzackaryaeva@yandex.ru', '89272886786', 'Hesperange', 'google', 'ÐžÐ±Ñ‰ÐµÑÑ‚Ð²Ð¾ Â«Ð Ð¸Ð½Ñ‚Ð°Ñ€Ð¿Â» Ð°ÐºÑ‚Ð¸Ð²Ð½Ð¾ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð½Ð° Ð±ÐµÐ»Ð¾Ñ€ÑƒÑÑÐºÐ¾Ð¼ Ñ€Ñ‹'),
(1026, 'DarrenEduts', 'zulzackaryaeva@yandex.ru', '83714497854', 'Hesperange', 'google', ''),
(1027, 'DarrenEduts', 'zulzackaryaeva@yandex.ru', '84368411936', 'Hesperange', 'google', 'ÐžÐ±Ñ‰ÐµÑÑ‚Ð²Ð¾ Â«Ð Ð¸Ð½Ñ‚Ð°Ñ€Ð¿Â» Ð°ÐºÑ‚Ð¸Ð²Ð½Ð¾ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð±ÐµÐ»Ð¾Ñ€ÑƒÑÑÐºÐ¾Ð'),
(1028, 'MarkReums', 'jepgravel@mail.com ', '81854953563', 'Dallas', 'google', '<a href=\"https://ivermectinbestbuy.com/\">stromectol price us</a> '),
(1029, 'CarlReums', 'will@aol.com ', '88939617192', 'New York', 'google', '<a href=\"http://worxtabs.com/\">stromectol 3 mg tablets price</a> '),
(1030, 'PaulReums', 'ilseruns@yahoo.com ', '81885717941', 'Dallas', 'google', '<a href=\"https://worxtabs.com/\">stromectol south africa</a> '),
(1031, 'LisaReums', 'eatchley4@yahoo.com ', '86697394139', 'Dallas', 'google', '<a href=\"https://genericivermectin.com/\">stromectol liquid</a> '),
(1032, 'JudyReums', 'jennkeith2006@gmail.com ', '84341494613', 'New York', 'google', '<a href=\"http://ivermectinbestbuy.com/\">buy stromectol online</a> '),
(1033, 'JasonReums', 'fogden@hotmail.com ', '87537583938', 'New York', 'google', '<a href=\"http://worxtabs.com/\">how much is ivermectin</a> '),
(1034, 'OsagoOnlaynKupit_Pak', 'osagokuzmich@gmail.com', '83999247848', 'ÐšÑƒÑ€ÑÐº', 'google', ' Ð”Ð¾Ð±Ñ€Ð¾Ð³Ð¾ Ð²Ð°Ð¼ Ð²Ñ€ÐµÐ¼ÐµÐ½Ð¸ ÑÑƒÑ‚Ð¾Ðº! \r\nÐÐµÐ´Ð°Ð²Ð½Ð¾ Ð½Ð°ÑˆÐµÐ» Ð¿Ð¾Ð»ÐµÐ·Ð½Ñ‹Ð¹ Ð¸ Ð¸'),
(1035, 'KiaReums', 'stella@mail.com ', '85977562226', 'Denver', 'google', '<a href=\"http://genericivermectin.com/\">stromectol price in india</a> '),
(1036, 'EyeReums', 'chadjoiner@outlook.com ', '86875867556', 'San Jose', 'google', '<a href=\"http://worxtabs.com/\">stromectol pill price</a> '),
(1037, 'LisaReums', 'suanne@aol.com ', '82157611587', 'Dallas', 'google', '<a href=\"https://ivermectinbestbuy.com/\">buy stromectol uk</a> '),
(1038, 'AlanReums', 'crowngifts@gmail.com ', '86669721585', 'New York', 'google', '<a href=\"http://ivermectinpillsotc.com/\">generic ivermectin</a> '),
(1039, 'Ultimate', 'noreply@get-more-leads-now.com', 'noreply@get-more-leads-now.com', '', 'http://Get-More-Leads-Now.com', 'Hi, would you like more business leads at a lower cost? Currently http://Get-More-Leads-Now.com is o'),
(1040, 'PaulReums', 'kickbacktime@mail.com ', '86547272459', 'Dallas', 'google', '<a href=\"https://tadalafilnov.com/\">purchase tadalafil 5mg online</a> '),
(1041, 'MaryReums', 'bev@mail.com ', '86813148326', 'Dallas', 'google', '<a href=\"https://sildenafilspill.com/\">sildenafil tablet in india</a> '),
(1042, 'MarkReums', 'wdywoon@hotmail.com ', '87625768154', 'Dallas', 'google', '<a href=\"https://tadalafilsex.com/\">tadalafil 5mg online canada</a> '),
(1043, 'JasonReums', 'kevanls@outlook.com ', '86225822139', 'New York', 'google', '<a href=\"http://adviagra.com/\">best price for generic viagra</a> '),
(1044, 'DenReums', 'mandykmcmurray@hotmail.com ', '82417157566', 'Chicago', 'google', '<a href=\"http://onlinenorxshop.com/\">canadian pharmacy service</a> '),
(1045, 'AmyReums', 'angela@gmail.com ', '89778841137', 'New York', 'google', '<a href=\"http://sildenafil4sale.com/\">sildenafil 20 mg canada</a> '),
(1046, 'MaryReums', 'jolinnd@hotmail.com ', '85911628523', 'Dallas', 'google', '<a href=\"https://cialismale.com/\">cialis for daily use price</a> '),
(1047, 'Jasonorams', 'samy789467@yahoo.com', '85469836375', 'Duverge', 'google', '\r\n\r\nFree way to  make money at home\r\n\r\nNew Freelancer service Live streaming per hour\r\n\r\nUseFreelanc'),
(1048, 'AlanReums', 'hughmul@hotmail.com ', '81498654911', 'New York', 'google', '<a href=\"http://prednisonetablet.com/\">generic prednisone for sale</a> '),
(1049, 'JudyReums', 'lak66@aol.com ', '87434247167', 'New York', 'google', '<a href=\"http://onlinenorxshop.com/\">best online pharmacy india</a> '),
(1050, 'AntoanXisli', '%spinfile-names.dat%%spinfile-lnames.dat%%random-1-100%@sugar.westrb.com', '87618721813', 'Raduznyj', 'google', 'Analytical tools for trading binary options  - https://sites-to-buy-cryptocurrency.online/is-expert-'),
(1051, 'LisaReums', 'djdohboy86@aol.com ', '83941771951', 'Dallas', 'google', '<a href=\"https://cialistn.com/\">15mg cialis</a> '),
(1052, 'Lorenzofearp', 'christiedazzo@rambler.ru', '88253873782', 'Ho Chi Minh City', 'google', ' Ð”Ð¾Ð»Ð³Ð¾ Ð¸ÑÐºÐ°Ð» Ð¸ Ð½Ð°ÐºÐ¾Ð½ÐµÑ† Ð½Ð°ÑˆÐµÐ» Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾ Ð¿Ð¾Ð»ÐµÐ·Ð½Ñ‹Ð¹ ÑÐ°'),
(1053, 'Richardvew', 'sergeyromanov456@gmail.com', '83221822254', 'Nove Mesto nad Vahom', 'google', '<a href=https://vk.com/kupludom24>ÐŸÑ€Ð¾Ð´Ð°Ð¼ Ð´Ð¾Ð¼ ÐšÑ€Ð°ÑÐ½Ð¾ÑÑ€ÑÐº</a>'),
(1054, 'Mike Carrington\r\n', 'johnelgin7162@gmail.com\r\n', '89139796929', 'Albany', 'google', 'Good Day \r\n \r\nWe will enhance your Local Ranks organically and safely, using only whitehat methods, '),
(1055, 'AmyReums', 'lindsey@outlook.com ', '85247963136', 'New York', 'google', '<a href=\"http://ifcialis.com/\">cost of cialis 5mg</a> '),
(1056, 'CarlReums', 'eck@outlook.com ', '89782264348', 'New York', 'google', '<a href=\"http://sildenafiltbs.com/\">sildenafil uk paypal</a> '),
(1057, 'CarlReums', 'leafackrell@gmail.com ', '85972678933', 'New York', 'google', '<a href=\"http://cialisad.com/\">cost of cialis in canada</a> '),
(1058, 'KiaReums', 'mrscowgirl@gmail.com ', '82933664647', 'Denver', 'google', '<a href=\"http://cialisad.com/\">buy cialis generic canada</a> '),
(1059, 'PaulReums', 'carbil@aol.com ', '84199938589', 'Dallas', 'google', '<a href=\"https://buytabsnorx.com/\">kamagra jelly in bangkok</a> '),
(1060, 'BarbaraNoipt', 'zackaryaeva@yandex.ru', '81878128965', 'Doha', 'google', 'Ð¡Ñ‚Ñ€Ð¾Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð°Ñ Ð²Ñ‹ÑˆÐºÐ° Ñ‚ÑƒÑ€Ð° Ð¾Ð¿Ñ‚Ð¸Ð¼Ð°Ð»ÑŒÐ½Ð¾ Ð¿Ð¾Ð´Ñ…Ð¾Ð´Ð¸Ñ‚ Ð¸ Ð´Ð»Ñ Ñ€ÐµÐ¼Ð'),
(1061, 'JasonReums', 'vacono@hotmail.com ', '82179176389', 'New York', 'google', '<a href=\"http://wgopharmacy.com/\">best online foreign pharmacy</a> '),
(1062, 'EyeReums', 'anacvaz@hotmail.com ', '84755122655', 'San Jose', 'google', '<a href=\"http://cialistn.com/\">order generic cialis from canada</a> '),
(1063, 'MarkReums', 'tashalinn@yahoo.com ', '86237294695', 'Dallas', 'google', '<a href=\"https://sildenafilspill.com/\">viagra sildenafil 100mg</a> '),
(1064, 'CarlReums', 'katebethell@mail.com ', '83427839735', 'New York', 'google', '<a href=\"http://tadalafillb.com/\">buy tadalafil 20 mg from india</a> '),
(1065, 'CarlReums', 'gryphon726@gmail.com ', '83612171719', 'New York', 'google', '<a href=\"http://crtabs.com/\">buy hydroxychloroquine 200 mg</a> '),
(1066, 'JudyReums', 'godfirst11376@mail.com ', '84139874743', 'New York', 'google', '<a href=\"http://cialisex.com/\">where to buy generic cialis online</a> '),
(1067, 'AlanReums', 'jpendleton345@aol.com ', '86949395682', 'New York', 'google', '<a href=\"http://sildenafilchemi.com/\">sildenafil for daily use</a> '),
(1068, 'LisaReums', 'escobedoirack@aol.com ', '89396713333', 'Dallas', 'google', '<a href=\"https://viagramas.com/\">viagra for sale online usa</a> '),
(1069, 'MaryReums', 'esselmn@mail.com ', '86343146672', 'Dallas', 'google', '<a href=\"https://tadalafilforce.com/\">buy cheap tadalafil</a> '),
(1070, 'AmyReums', 'begumozkan@mail.com ', '88342314491', 'New York', 'google', '<a href=\"http://cialisnine.com/\">order cialis without prescription</a> '),
(1071, 'KiaReums', 'wdazar@aol.com ', '82697466854', 'Denver', 'google', '<a href=\"http://viagrarmed.com/\">tadalafil for women</a> '),
(1072, 'MarkReums', 'zbodane@mail.com ', '86643535358', 'Dallas', 'google', '<a href=\"https://viagravol.com/\">viagra from india for sale</a> '),
(1073, 'Millardadops', 'chiefscreolecafecom@gmail.com', '82475126357', 'Lusaka', 'google', 'Ká»ƒ Tá»« 12,249Ä‘ Lá»±a Chá»n Tá»©c ThÃ¬ Poster Truyá»‡n Tranh Cao Thá»§ BÃ³ng Rá»• Slam <a href=\"'),
(1074, 'AlanReums', 'michaeljenkinswales@aol.com ', '82982236449', 'New York', 'google', '<a href=\"http://ivermectinz.com/\">ivermectin buy australia</a> '),
(1075, 'TerryNep', 'anna.frin@yandex.com', '87659584247', 'Cairo', 'google', ''),
(1076, 'TerryNep', 'anna.frin@yandex.com', '87215535799', 'Cairo', 'google', 'Ð¡Ð°Ð¼Ð¾Ðµ ÑÐ¾Ð»ÑŒ Ð¿Ñ€Ð°Ð²Ð¸Ð»Ð¾ Ð±Ð»Ð¸Ð·ÐºÐ¾ Ñ€Ð°Ð±Ð¾Ñ‚Ðµ Ñ Ð»ÐµÑÐ°Ð¼Ð¸ Ð¸ Ð²Ñ‹ÑˆÐºÐ°Ð¼Ð¸, Ð¸Ð³'),
(1077, 'DenReums', 'cathysazmta@gmail.com ', '84712559489', 'Chicago', 'google', '<a href=\"http://fdcpharmacy.com/\">sky pharmacy</a> '),
(1078, 'JasonReums', 'stedit2@hotmail.com ', '82575177264', 'New York', 'google', '<a href=\"http://cialistn.com/\">cialis canada buy online</a> '),
(1079, 'JasonReums', 'hudsman1@outlook.com ', '82955375415', 'New York', 'google', '<a href=\"http://viagrammed.com/\">buy viagra online without prescription</a> '),
(1080, 'postingbgpv', 'pydinakatalja1990@rambler.ru', '1234567890', 'Moscow', 'google', 'Dear Madame, Dear Sirs! \r\n \r\n \r\nWidespread web ads for organic growth of behavioural factors. \r\nhttp'),
(1081, 'AmyReums', 'gregera@aol.com ', '87983327921', 'New York', 'google', '<a href=\"http://cialisrpill.com/\">cheap cialis tablets</a> '),
(1082, 'DenReums', 'trexblaine@aol.com ', '89937223234', 'Chicago', 'google', '<a href=\"http://ivermectinonlinepharmacy.com/\">stromectol order</a> '),
(1083, 'AlanReums', 'cphtec@aol.com ', '86441794144', 'New York', 'google', '<a href=\"http://ivermectinonlinesale.com/\">ivermectin</a> '),
(1084, 'JudyReums', 'agc1065@mail.com ', '84535227153', 'New York', 'google', '<a href=\"http://cialispm.com/\">buy cialis online fast shipping</a> '),
(1085, 'CarlReums', 'shonna@outlook.com ', '84687572181', 'New York', 'google', '<a href=\"http://ivermectinds.com/\">stromectol tablets</a> '),
(1086, 'CarlReums', 'mcdaniel6185@hotmail.com ', '87564519526', 'New York', 'google', '<a href=\"http://cialisrmed.com/\">cialis 10mg price in india</a> '),
(1087, 'JasonReums', 'bossdibs@gmail.com ', '84922475644', 'New York', 'google', '<a href=\"http://nvpills.com/\">generic for lexapro</a> '),
(1088, 'Trevisfus', 'domabanivtomske@yandex.ru', '89359763414', 'Kwekwe', 'google', ''),
(1089, 'GlennDag', 'gerbert5456kk@bambo-mebel.top', '85197555897', 'NEW AMSTERDAM', 'google', ''),
(1090, 'EyeReums', 'rogerwpu@hotmail.com ', '88446631476', 'San Jose', 'google', '<a href=\"http://viagrapo.com/\">cost of viagra 2017</a> '),
(1091, 'LisaReums', 'ritollmmnn@aol.com ', '84527343731', 'Dallas', 'google', '<a href=\"https://tadalafildl.com/\">10mg tadalafil</a> '),
(1092, 'RebeccaKak', 'daertr.frantz@yandex.com', '81677188884', 'Muscat', 'google', 'Ð¡Ñ‚Ñ€Ð¾Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ðµ Ñ‚ÑƒÑ€Ñ‹ (Ð²Ñ‹ÑˆÐºÐ¸-Ñ‚ÑƒÑ€Ñ‹) Ð¸ÑÐ¿Ð¾Ð»ÑŒÐ·ÑƒÑŽÑ‚ÑÑ Ñ€Ð°Ð´Ð¸ Ñ€Ð°Ð±Ð¾Ñ‚'),
(1093, 'DenReums', 'michaelheller@aol.com ', '84581441819', 'Chicago', 'google', '<a href=\"http://ventolinalbuterolinhalers.com/\">albuterol 3mg</a> '),
(1094, 'MarkReums', 'twentling@outlook.com ', '87159425177', 'Dallas', 'google', '<a href=\"https://sildenafilcmed.com/\">over the counter female viagra pill</a> '),
(1095, 'JudyReums', 'adjones@gmail.com ', '81794471295', 'New York', 'google', '<a href=\"http://hydroxychloroquineoral.com/\">generic plaquenil</a> '),
(1096, 'PaulReums', 'shonta@mail.com ', '87687337676', 'Dallas', 'google', '<a href=\"https://sfcialis.com/\">tadalafil india price</a> '),
(1097, 'AmyReums', 'melloney1@yahoo.com ', '84729841235', 'New York', 'google', '<a href=\"http://nvpills.com/\">generic lexapro canada pharmacy</a> '),
(1098, 'LisaReums', 'atommy454@mail.com ', '85643744659', 'Dallas', 'google', '<a href=\"https://tadalafileft.com/\">cialis online sicuro</a> '),
(1099, 'Gamesrok', 'a.ri.n.ap.a.n.i.na.718@gmail.com', '87352344482', 'Daqing', 'google', 'Ð—Ð´Ñ€Ð°Ð²ÑÑ‚Ð²ÑƒÐ¹Ñ‚Ðµ Ð´Ñ€ÑƒÐ·ÑŒÑ ! \r\n \r\nÐ¡Ð¼Ð¾Ñ‚Ñ€Ð¸Ñ‚Ðµ Ñƒ Ð½Ð°Ñ Ð½Ð° ÑÐ°Ð¹Ñ‚Ðµ ÑÐ°Ð¼Ñ‹Ðµ Ð'),
(1100, 'MaryReums', 'cjsoper@outlook.com ', '86159538477', 'Dallas', 'google', '<a href=\"https://sildenafilgenp.com/\">price of 50mg viagra</a> '),
(1101, 'Mike Sherlock\r\n', 'matthewperry3262@gmail.com\r\n', '86733778259', 'Kaohsiung Municipality', 'google', 'Good Day \r\n \r\nI have just verified your SEO on  schooloo.com for its SEO metrics and saw that your w'),
(1102, 'CarlReums', 'galluselit@aol.com ', '85582723293', 'New York', 'google', '<a href=\"http://ivermectinsx.com/\">ivermectin 20 mg</a> '),
(1103, 'JudyReums', 'lak66@outlook.com ', '82425434219', 'New York', 'google', '<a href=\"http://nvpills.com/\">buy lexapro 20 mg</a> '),
(1104, 'EyeReums', 'framisi@mail.com ', '88185162229', 'San Jose', 'google', '<a href=\"http://viagraism.com/\">viagra 1998</a> '),
(1105, 'AlanReums', 'ssa9008@outlook.com ', '85946289395', 'New York', 'google', '<a href=\"http://cialisedtabs.com/\">buy cheap cialis in canada</a> '),
(1106, 'LisaReums', 'shiramyers@yahoo.com ', '88215436175', 'Dallas', 'google', '<a href=\"https://albendazoletabs.com/\">where can i buy albendazole</a> '),
(1107, 'JudyReums', 'scooternurse@gmail.com ', '86788217177', 'New York', 'google', '<a href=\"http://viagrabr.com/\">generic viagra australia paypal</a> '),
(1108, 'EyeReums', 'marioflores84@mail.com ', '88239612996', 'San Jose', 'google', '<a href=\"http://xytabs.com/\">where to buy azithromycin online</a> '),
(1109, 'LisaReums', 'acer4u@mail.com ', '84577869141', 'Dallas', 'google', '<a href=\"https://tadalafiledtabs.com/\">tadalafil 500mg</a> '),
(1110, 'AmyReums', 'antonnsh@gmail.com ', '83735198466', 'New York', 'google', '<a href=\"http://buykamagrax.com/\">buy kamagra online uk paypal</a> '),
(1111, 'MichaelRoW', 'zakharov39.vasia@mail.ru', '87266266546', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', 'Seo Ð¿Ñ€Ð¾Ð´Ð²Ð¸Ð¶ÐµÐ½Ð¸Ðµ Ð·Ð°ÐºÐ°Ð·Ð°Ñ‚ÑŒ Ñ Ð¿Ñ€Ð¾Ð´Ð²Ð¸Ð½ÑƒÑ‚Ñ‹Ð¼ Ñ„ÑƒÐ½ÐºÑ†Ð¸Ð¾Ð½Ð°Ð»Ð¾Ð¼ Ð² Ð³'),
(1112, 'Jason Ward', 'jasonward9681@gmail.com', '81872392719', 'Miami', 'google', 'Hello, \r\n \r\nOur company, RatingsKing, specializes in posting 5-star testimonials on all major review'),
(1113, 'MarkReums', 'setiawanfrans@yahoo.com ', '86358329627', 'Dallas', 'google', '<a href=\"https://ivermectinonlinesale.com/\">stromectol ivermectin 3 mg</a> '),
(1114, 'PaulReums', 'joycelyn@gmail.com ', '82487824663', 'Dallas', 'google', '<a href=\"https://sildenafilcmed.com/\">usa viagra over the counter</a> '),
(1115, 'DenReums', 'corazon@mail.com ', '88751179782', 'Chicago', 'google', '<a href=\"http://viagrabr.com/\">can i buy viagra over the counter in south africa</a> '),
(1116, 'AlanReums', 'paulasadocco@hotmail.com ', '87785569916', 'New York', 'google', '<a href=\"http://ventolinalbuterolinhalers.com/\">albuterol price in mexico</a> '),
(1117, 'KiaReums', 'reginasaliot@outlook.com ', '81264638684', 'Denver', 'google', '<a href=\"http://piopharmacy.com/\">canadian pharmacy cialis 20mg</a> '),
(1118, 'KiaReums', 'brunoborzellino@mail.com ', '85866796133', 'Denver', 'google', '<a href=\"http://sildenafilmtab.com/\">buy sildenafil paypal</a> '),
(1119, 'MaryReums', 'solofoman@yahoo.com ', '85961821691', 'Dallas', 'google', '<a href=\"https://ivermectindx.com/\">stromectol liquid</a> '),
(1120, 'JasonReums', 'robbiealden@aol.com ', '83117463681', 'New York', 'google', '<a href=\"http://cialishp.com/\">average cost of cialis 5mg</a> '),
(1121, 'DenReums', 'pjohnson7@hotmail.com ', '85777225673', 'Chicago', 'google', '<a href=\"http://sildenafilgenp.com/\">female viagra otc</a> '),
(1122, 'CarlReums', 'jetranger1@gmail.com ', '81349346262', 'New York', 'google', '<a href=\"http://cialiscl.com/\">cheap brand cialis online</a> '),
(1123, 'KiaReums', 'kcassel282@aol.com ', '86771937488', 'Denver', 'google', '<a href=\"http://buyivermectintabs.com/\">ivermectin cost canada</a> '),
(1124, 'AmyReums', 'harrydenton@outlook.com ', '88736537522', 'New York', 'google', '<a href=\"http://sildenafilttab.com/\">purchase 200mg sildenafil</a> '),
(1125, 'Arthurdurgy', 'maximmad222@yandex.ru', '81381927179', 'Kaohsiung Municipality', 'google', 'Ð˜Ð·Ð²Ð¸Ð½ÑÑŽÑÑŒ Ð·Ð° Ð±ÐµÑÐ¿Ð¾ÐºÐ¾Ð¹ÑÑ‚Ð²Ð¾, XBOX Ð¿Ñ€Ð¸Ð¾Ð±Ñ€ÐµÑÑ‚Ð¸ Ð² ÑÐ¿Ð¾Ñ€Ñ‚Ð¸Ð²Ð½Ñ‹Ðµ '),
(1126, 'EyeReums', 'rogerwpu@aol.com ', '86315561669', 'San Jose', 'google', '<a href=\"http://viagraht.com/\">cheapest generic viagra online</a> '),
(1127, 'LisaReums', 'venus@hotmail.com ', '87472486319', 'Dallas', 'google', '<a href=\"https://hydroxychloroquinewithoutrx.com/\">hydroxychloroquine sulfate oval pill</a> '),
(1128, 'MaryReums', 'tcraig@aol.com ', '89236788737', 'Dallas', 'google', '<a href=\"https://tadalafilx20.com/\">cialis pharmacy discount</a> '),
(1129, 'brandonsm18', 'mariagray6323321+madeleine@gmail.com}', '89984318542', '', 'google', 'Dirty Porn Photos, daily updated galleries\r\nhttp://hairy.porn.danexxx.com/?amya \r\n kerala porn pictu'),
(1130, 'DenReums', 'kevinandlisa@mail.com ', '86572872282', 'Chicago', 'google', '<a href=\"http://buytadalafiltabs.com/\">cheapest tadalafil uk</a> '),
(1131, 'JasonReums', 'tilmanseng@aol.com ', '83173719765', 'New York', 'google', '<a href=\"http://modafinilprovi.com/\">modafinil 200 mg tablet price in india</a> '),
(1132, 'JudyReums', 'theveraticr707@outlook.com ', '89949113482', 'New York', 'google', '<a href=\"http://howtobuytadalafil.com/\">buy generic tadalafil 20 mg from india</a> '),
(1133, 'LauraLer', 'ansdna.frkijin@yandex.com', '86512372781', 'Ga District', 'google', ''),
(1134, 'LauraLer', 'ansdna.frkijin@yandex.com', '86263789469', 'Ga District', 'google', 'Ð¡Ð°Ð¼Ð¾Ðµ ÑÑƒÑ‚ÑŒ Ð¿Ñ€Ð¸Ð½Ñ†Ð¸Ð¿ Ð¿Ñ€Ð¸ÑÑƒÑ‚ÑÑ‚Ð²Ð¸Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ðµ Ñ Ð»ÐµÑÐ°Ð¼Ð¸ Ð¸ Ð²Ñ‹ÑˆÐºÐ°'),
(1135, 'KiaReums', 'twblue@hotmail.com ', '88477779651', 'Denver', 'google', '<a href=\"http://tadalafilptab.com/\">buy cialis online pharmacy</a> '),
(1136, 'AlanReums', 'djanca@yahoo.com ', '86246292651', 'New York', 'google', '<a href=\"http://hydroxychloroquiene.com/\">hydroxychloroquine sulfate 800 mg</a> '),
(1137, 'PaulReums', 'arvida50@outlook.com ', '81624716669', 'Dallas', 'google', '<a href=\"https://sildenafilbmed.com/\">sildenafil 75 mg</a> '),
(1138, 'Leslieallor', 'zasplav@mail.ru', '81547888838', 'Delmas', 'google', ''),
(1139, 'Leslieallor', 'zasplav@mail.ru', '82692975216', 'Delmas', 'google', 'Ð—ÐµÐ¼Ð»Ñ Ð¿Ñ€Ð¸Ð¼ÐµÐ½ÐµÐ½Ð¸Ñ ÑÑ‚Ñ€Ð¾Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ñ… Ð²Ñ‹ÑˆÐµÐº \r\nÐ’Ñ‹ÑˆÐºÐ¸-Ñ‚ÑƒÑ€Ñ‹ Ð¿Ñ€ÐµÐ´Ñ'),
(1140, 'AmyReums', 'mrcyaluoch@mail.com ', '88224317713', 'New York', 'google', '<a href=\"http://norxp.com/\">antabuse buy canada</a> '),
(1141, 'CarlReums', 'dvoakes844@outlook.com ', '85654657441', 'New York', 'google', '<a href=\"http://viagraqmed.com/\">sildenafil citrate australia</a> '),
(1142, 'MaryReums', 'garrypitts@gmail.com ', '86446541838', 'Dallas', 'google', '<a href=\"https://kamagrasilcit.com/\">how to order kamagra online</a> '),
(1143, 'MarkReums', 'dhoward@hotmail.com ', '84569149756', 'Dallas', 'google', '<a href=\"https://cymbaltabuy.com/\">cymbalta 50 mg tablets</a> '),
(1144, 'LisaReums', 'johnsie@gmail.com ', '88913387251', 'Dallas', 'google', '<a href=\"https://isotretinoinacu.com/\">accutane 10mg price</a> '),
(1145, 'KiaReums', 'vickieellis@aol.com ', '84698485355', 'Denver', 'google', '<a href=\"http://nolvadexmedication.com/\">tamoxifen cost australia</a> '),
(1146, 'CarlReums', 'oceancity@outlook.com ', '82782231418', 'New York', 'google', '<a href=\"http://sildenafilu.com/\">female viagra pill buy online</a> '),
(1147, 'JasonReums', 'reanna@mail.com ', '88248284628', 'New York', 'google', '<a href=\"http://viagratmed.com/\">sildenafil from mexico</a> '),
(1148, 'PaulReums', 'cerezas05@aol.com ', '81425669588', 'Dallas', 'google', '<a href=\"https://ivermectinacv.com/\">ivermectin coronavirus</a> '),
(1149, 'EyeReums', 'swhang1@yahoo.com ', '88951413226', 'San Jose', 'google', '<a href=\"http://viagratmed.com/\">viagra in south africa</a> '),
(1150, 'CarlReums', 'drfishhead@mail.com ', '83746763541', 'New York', 'google', '<a href=\"http://howtobuytadalafil.com/\">tadalafil 5mg canada</a> '),
(1151, 'MaryReums', 'pauldonpaul@gmail.com ', '86657779976', 'Dallas', 'google', '<a href=\"https://tadalafilgp.com/\">tadalafil 30 mg</a> '),
(1152, 'AlanReums', 'michaelkleinheyer@aol.com ', '82631749878', 'New York', 'google', '<a href=\"http://howtobuytadalafil.com/\">tadalafil online india</a> '),
(1153, 'JudyReums', 'jetta@hotmail.com ', '81875967259', 'New York', 'google', '<a href=\"http://sildenafilcitratesale.com/\">buy sildenafil mexico</a> '),
(1154, 'MarkReums', 'setiawanfrans@gmail.com ', '87249368217', 'Dallas', 'google', '<a href=\"https://onlinepharmacyx.com/\">maple leaf pharmacy in canada</a> '),
(1155, 'skyreverywet', 'malinoleg91@mail.ru', '84452963557', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', ' \r\n<a href=https://www.skyrevery.com/private-jets/phenom-100/>Embraer Phenom 100 Private Jet</a>    '),
(1156, 'y2mate848i', '2conv.ch@gmail.com', '86492982575', 'Freising', 'google', 'Hello folks, just came across this amazing site and would like to share some useful website resource'),
(1157, 'Terryusals', '9zcvy@course-fitness.com', '83451221215', 'Maputo', 'google', 'ç¬¬ä¸€å€ŸéŒ¢ç¶²æ“æœ‰å…¨å°æœ€å¤šçš„å€ŸéŒ¢è³‡è¨Šã€‚è³‡è¨Šæœ€é½Šå…¨ï¼Œç•¶èˆ–æ¥­ï¼Œä¿¡è²¸æ¥­ï¼Œåœ¨ç¬¬ä'),
(1158, 'DenReums', 'ianpayne60@hotmail.com ', '89654811742', 'Chicago', 'google', '<a href=\"http://sildenafilvx.com/\">buy viagra over the counter in canada</a> '),
(1159, 'MarkReums', 'neoma@hotmail.com ', '85897895488', 'Dallas', 'google', '<a href=\"https://sildenafilcitratesale.com/\">generic sildenafil paypal</a> '),
(1160, 'EyeReums', 'jordando@hotmail.com ', '82524125921', 'San Jose', 'google', '<a href=\"http://tadalafilgp.com/\">20mg tadalafil</a> '),
(1161, 'AlanReums', 'ackermanbv@hotmail.com ', '87639937596', 'New York', 'google', '<a href=\"http://tadalafilr.com/\">tadalafil 80mg online pharmacy no prescription</a> ');
INSERT INTO `bulk_contact` (`contact_id`, `name`, `email`, `mobile`, `address`, `school_name`, `nature_requirment`) VALUES
(1162, 'Simon Jones', 'admin@2xbinancebonushelp.network', '83191624879', 'Miami', 'google', 'To celebrate the 2 year anniversary of Binanceâ€™s acquisition of Trust Wallet, weâ€™re teaming up w'),
(1163, 'LisaReums', 'gregorygeliver@outlook.com ', '81257276636', 'Dallas', 'google', '<a href=\"https://cialisap.com/\">where to buy cialis online australia</a> '),
(1164, 'JudyReums', 'nikt213@aol.com ', '81512413217', 'New York', 'google', '<a href=\"http://viagralmed.com/\">buy cheap viagra online in canada</a> '),
(1165, 'EyeReums', 'jfr1007@yahoo.com ', '84131627876', 'San Jose', 'google', '<a href=\"http://xfcialis.com/\">cialis for sale canada</a> '),
(1166, 'DenReums', 'newcreatinns777@aol.com ', '86618139523', 'Chicago', 'google', '<a href=\"http://cheaptadalafilpills.com/\">canadian price for cialis</a> '),
(1167, 'PaulReums', 'andregervais@gmail.com ', '83445127585', 'Dallas', 'google', '<a href=\"https://viagrafh.com/\">online viagra sales</a> '),
(1168, 'LisaReums', 'fk8@hotmail.com ', '87834869733', 'Dallas', 'google', '<a href=\"https://cialiskmed.com/\">cialis 10 mg tablet cost</a> '),
(1169, 'JudyReums', 'jennkeith2006@hotmail.com ', '86287194398', 'New York', 'google', '<a href=\"http://tadalafilr.com/\">tadalafil 60</a> '),
(1170, 'GlennDag', 'gerbert5456kk@bambo-mebel.top', '85432467267', 'NEW AMSTERDAM', 'google', '<a href=http://slupi.info/effective-website-promotion/>http://slupi.info/effective-website-promotion'),
(1171, 'JasonReums', 'johnwolhoy@outlook.com ', '88845643577', 'New York', 'google', '<a href=\"http://sildenafilvvia.com/\">sildenafil 100mg gel</a> '),
(1172, 'KiaReums', 'ksonger@outlook.com ', '84862294748', 'Denver', 'google', '<a href=\"http://xmedshop.com/\">baclofen generic</a> '),
(1173, 'AmyReums', 'gayla@gmail.com ', '88593221148', 'New York', 'google', '<a href=\"http://purchaseivermectin.com/\">stromectol cream</a> '),
(1174, 'ElleRaich', 'elleTofe16@hotmail.com', '89978963111', 'Parnu', 'google', 'Hi ... Im looking a lover!! \r\nI love sex. Write me - bit.ly/2Xj3qVR'),
(1175, 'JasonReums', 'panthda@mail.com ', '86693179291', 'New York', 'google', '<a href=\"http://agsildenafil.com/\">price of viagra 100mg in canada</a> '),
(1176, 'AmyReums', 'andy@hotmail.com ', '83958981498', 'New York', 'google', '<a href=\"http://sildenafilbmed.com/\">sildenafil uk otc</a> '),
(1177, 'MarkReums', 'shanedonnelly@aol.com ', '88691283824', 'Dallas', 'google', '<a href=\"https://cialisnpill.com/\">online cialis sales</a> '),
(1178, 'EyeReums', 'marline@outlook.com ', '83913175236', 'San Jose', 'google', '<a href=\"http://sildenafilbmed.com/\">price of sildenafil 50 mg</a> '),
(1179, 'Rebeccavoips', 'zasplav2020@mail.ru', '83175726728', 'Andorra La Vella', 'google', ''),
(1180, 'Rebeccavoips', 'zasplav2020@mail.ru', '82492373374', 'Andorra La Vella', 'google', 'Ð’ Ð½Ð°ÑÑ‚Ð¾ÑÑ‰ÐµÐµ Ð´Ð¾Ð»Ð³Ð¾ Ð·Ð´Ð°Ð½Ð¸Ñ ÐºÑ€Ð¸Ð²Ð¸Ð·Ð½Ð° ÑÐ»Ð¾Ð¶Ð½Ð¾ÑÑ‚Ð¸ Ð²Ð¾Ð·Ð²Ð¾Ð´ÑÑ‚Ñ'),
(1181, 'LisaReums', 'mullanepaving@yahoo.com ', '87438412841', 'Dallas', 'google', '<a href=\"https://buyivermectina.com/\">ivermectin lotion 0.5</a> '),
(1182, 'DennisGuecy', 'ipeycg@course-fitness.com', '83349533583', 'Kampala', 'google', 'æ­å®¢ä½¬ç²¾å“å’–å•¡ \r\n \r\nhttps://blog.oklaocoffee.tw/'),
(1183, 'MarkReums', 'power2007rb@hotmail.com ', '81995669423', 'Dallas', 'google', '<a href=\"https://cialisbmed.com/\">discount cialis 5mg</a> '),
(1184, 'MaryReums', 'ellamae@yahoo.com ', '85735755442', 'Dallas', 'google', '<a href=\"https://tadalafilmdrug.com/\">buy generic tadalafil</a> '),
(1185, 'CarlReums', 'cowsonallfours@yahoo.com ', '84971929676', 'New York', 'google', '<a href=\"http://effexorbuy.com/\">generic of effexor</a> '),
(1186, 'JudyReums', 'mobb11884@hotmail.com ', '82865716995', 'New York', 'google', '<a href=\"http://cialismv.com/\">generic cialis fast delivery</a> '),
(1187, 'KiaReums', 'inneelsth38@gmail.com ', '87833127436', 'Denver', 'google', '<a href=\"http://buyivermectina.com/\">stromectol</a> '),
(1188, 'EyeReums', 'playadeltom@aol.com ', '88296569491', 'San Jose', 'google', '<a href=\"http://cialismv.com/\">generic cialis 10mg</a> '),
(1189, 'JudyReums', 'barbera@yahoo.com ', '82473243612', 'New York', 'google', '<a href=\"http://sildenafilemed.com/\">buy sildenafil over the counter</a> '),
(1190, 'AlanReums', 'tony4tn@gmail.com ', '83337273515', 'New York', 'google', '<a href=\"http://norxmodafinil.com/\">modafinil price in india</a> '),
(1191, 'DenReums', 'lloydramirez@gmail.com ', '89935661767', 'Chicago', 'google', '<a href=\"http://sildenafilot.com/\">viagra cream</a> '),
(1192, 'KiaReums', 'wdazar@mail.com ', '81927861717', 'Denver', 'google', '<a href=\"http://cialisgl.com/\">cialis original</a> '),
(1193, 'LisaReums', 'dmarshall53@mail.com ', '88116985437', 'Dallas', 'google', '<a href=\"https://genericcialisrx.com/\">tadalafil united states</a> '),
(1194, 'GommotMep', 'Fielialar@gmail.com', '89523712745', 'Kaduna', 'google', 'Cryptocurrency rates are breaking records, which means you have the opportunity to make money on cry'),
(1195, 'MarkReums', 'tigerwagner@mail.com ', '82198246139', 'Dallas', 'google', '<a href=\"https://sildenafilvpill.com/\">price of viagra 100mg uk</a> '),
(1196, 'EyeReums', 'sammie@aol.com ', '83366131299', 'San Jose', 'google', '<a href=\"http://healthjh.com/\">doxycycline 100mg price in south africa</a> '),
(1197, 'MaryReums', 'rzinnecker@mail.com ', '87634836296', 'Dallas', 'google', '<a href=\"https://lisinopriltablets.com/\">zestril canada</a> '),
(1198, 'JasonReums', 'coastbuilder@mail.com ', '83691433626', 'New York', 'google', '<a href=\"http://cialisfe.com/\">buy generic cialis online</a> '),
(1199, 'Robertocj', 'userzal.e.v.sk.ija2.2.2.0.1@gmail.com\r\n', '87139824887', 'Minsk', 'google', 'Ð—Ð´Ñ€Ð°Ð²ÑÑ‚Ð²ÑƒÐ¹Ñ‚Ðµ Ð³Ð¾ÑÐ¿Ð¾Ð´Ð° \r\n \r\nÐžÐ±ÑƒÑÑ‚Ñ€Ð¾Ð¹ÑÑ‚Ð²Ð¾ ÑÐºÐ²Ð°Ð¶Ð¸Ð½Ñ‹ \r\nÐ¡Ð»ÐµÐ´ÑƒÑ'),
(1200, 'AmyReums', 'dcarroll40@aol.com ', '85514311374', 'New York', 'google', '<a href=\"http://sildenafilix.com/\">sildenafil 100 capsules</a> '),
(1201, 'PaulReums', 'johnstone71@outlook.com ', '86768791227', 'Dallas', 'google', '<a href=\"https://sildenafilix.com/\">sildenafil soft online</a> '),
(1202, 'JudyReums', 'eagle3@hotmail.com ', '85632414546', 'New York', 'google', '<a href=\"http://viagravmed.com/\">sildenafil buy without prescription</a> '),
(1203, 'MaryReums', 'hkaufm3651@gmail.com ', '85316394888', 'Dallas', 'google', '<a href=\"https://tadalafilgn.com/\">generic cialis cost</a> '),
(1204, 'CarlReums', 'ralphgraham@outlook.com ', '83879138826', 'New York', 'google', '<a href=\"http://ecviagra.com/\">where to buy viagra in india</a> '),
(1205, 'JudyReums', 'ronnie42@aol.com ', '89914151235', 'New York', 'google', '<a href=\"http://sildenafilvpill.com/\">viagra brand name online</a> '),
(1206, 'AlanReums', 'jlmckni@aol.com ', '81942268263', 'New York', 'google', '<a href=\"http://pilldot.com/\">6000 mg accutane</a> '),
(1207, 'CarlReums', 'martine@gmail.com ', '87768762154', 'New York', 'google', '<a href=\"http://tadalafilmdrug.com/\">tadalafil generic over the counter</a> '),
(1208, 'MaryReums', 'micksasako@gmail.com ', '85925689798', 'Dallas', 'google', '<a href=\"https://onlinepharmacysales.com/\">express scripts com pharmacies</a> '),
(1209, 'CharlesTOp', 'xxyyx58@mailnesia.com', '83363688835', 'Orange Walk', 'google', 'Hey bro how are you ?'),
(1210, 'EyeReums', 'garrettdecor@outlook.com ', '81483874756', 'San Jose', 'google', '<a href=\"http://ataraxtabs.com/\">buy atarax tablets uk</a> '),
(1211, 'SEO X Press Digital Agency', 'no-replyFusEpiff@gmail.com', '84666665861', 'Boston', 'google', 'Hello \r\n \r\nWe all know the importance that dofollow link have on any website`s ranks. \r\nHaving most '),
(1212, 'KiaReums', 'hazel@yahoo.com ', '86573931196', 'Denver', 'google', '<a href=\"http://sildenafilbv.com/\">can i buy sildenafil online</a> '),
(1213, 'curtsyjpsaledvd', 'werrgf7744duail@gmail.com', '81499645814', 'https://www.curtsy.jp', 'google', 'https://www.curtsy.jp/10032.html https://www.curtsy.jp/10489.html'),
(1214, 'MarkReums', 'george@hotmail.com ', '87694629662', 'Dallas', 'google', '<a href=\"https://viagragd.com/\">sildenafil online purchase in india</a> '),
(1215, 'EyeReums', 'claudia@hotmail.com ', '82656477677', 'San Jose', 'google', '<a href=\"http://sildenafilemed.com/\">sildenafil without prescription from canada</a> '),
(1216, 'JudyReums', 'stevecook29833@aol.com ', '89844629611', 'New York', 'google', '<a href=\"http://sildenafilptab.com/\">where to buy generic viagra online safely</a> '),
(1217, 'LisaReums', 'redhotwaggle@gmail.com ', '83683561958', 'Dallas', 'google', '<a href=\"https://cialisumed.com/\">cialis coupon canada</a> '),
(1218, 'AnnRaich', 'annTofe91@yahoo.com', '85559472858', 'Hesperange', 'google', 'hello baby!!! Im looking a man!! \r\nI dream of hard sex. Write me on this site - is.gd/cRwbXY'),
(1219, 'AmyReums', 'societefilo@gmail.com ', '87112742772', 'New York', 'google', '<a href=\"http://viagranl.com/\">viagra 15 mg</a> '),
(1220, 'Mike Dyson\r\n', 'helensantana7162@gmail.com\r\n', '81933212737', 'Willemstad', 'google', 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your schooloo.com website? \r\nHaving a'),
(1221, 'EugeneDog', '12gyyaqwdst55r@gmail.com', '88231752963', 'Duverge', 'google', '####### OPVA ######## \r\nULTIMATE Ð Ð¢ÐÐ¡ COLLECTION \r\nNO PAY, PREMIUM or PAYLINK \r\nDOWNLOAD ALL Ð¡Ð'),
(1222, 'MaryReums', 'sadiesuehen@aol.com ', '89277154259', 'Dallas', 'google', '<a href=\"https://sildenafiledmed.com/\">generic sildenafil in usa</a> '),
(1223, 'CarlReums', 'pszatanek@yahoo.com ', '83712363882', 'New York', 'google', '<a href=\"http://ddrpill.com/\">trazodone</a> '),
(1224, 'JasonReums', 'alan331@hotmail.com ', '83249977521', 'New York', 'google', '<a href=\"http://tadalafilvv.com/\">buy cheap cialis</a> '),
(1225, 'Michaelevisp', 'dimastanevitch@yandex.com', '86242219177', 'Boden', 'google', ''),
(1226, 'Michaelevisp', 'dimastanevitch@yandex.com', '81645864557', 'Boden', 'google', 'ÐŸÐµÑ€Ð²Ñ‹Ð¼ Ð´ÐµÐ»Ð¾Ð¼ Ð´Ð¾Ð»Ð¶Ð½Ð¾ Ð¿Ð¾Ð½Ð¸Ð¼Ð°Ñ‚ÑŒ Ð·Ð°Ñ‡ÐµÐ¼ Ð²ÑÐµ-Ñ‚Ð°ÐºÐ¸ Ð½ÑƒÐ¶Ð½Ñ‹ Ð²Ñ‹ÑˆÐº'),
(1227, 'PaulReums', 'shonta@aol.com ', '82328287839', 'Dallas', 'google', '<a href=\"https://sildenafilopill.com/\">rx sildenafil</a> '),
(1228, 'PaulReums', 'bigbaby3646@gmail.com ', '86475452865', 'Dallas', 'google', '<a href=\"https://ordercitalopram.com/\">celexa online pharmacy</a> '),
(1229, 'AlanReums', 'loise@gmail.com ', '82186642657', 'New York', 'google', '<a href=\"http://cialisumed.com/\">tadalafil 2.5 mg tablets india</a> '),
(1230, 'JudyReums', 'cphillips241@mail.com ', '89678152164', 'New York', 'google', '<a href=\"http://cialisbmed.com/\">cheap cialis paypal</a> '),
(1231, 'AmyReums', 'ouida@outlook.com ', '87377155276', 'New York', 'google', '<a href=\"http://viagraypill.com/\">price of viagra in us</a> '),
(1232, 'PaulReums', 'erminia@yahoo.com ', '84524841159', 'Dallas', 'google', '<a href=\"https://cialisfe.com/\">cheapest generic cialis 20mg</a> '),
(1233, 'AlanReums', 'brianodell@yahoo.com ', '88374174132', 'New York', 'google', '<a href=\"http://sildenafilot.com/\">360 viagra</a> '),
(1234, 'PaulReums', 'cjiles06@yahoo.com ', '84273144682', 'Dallas', 'google', '<a href=\"https://viagraer.com/\">viagra medication cost</a> '),
(1235, 'KiaReums', 'bartman76@hotmail.com ', '85688958628', 'Denver', 'google', '<a href=\"http://sildenafilcitrateforsale.com/\">order sildenafil online uk</a> '),
(1236, 'JasonReums', 'garrettbranchgolf@hotmail.com ', '83546266918', 'New York', 'google', '<a href=\"http://tadalafilgn.com/\">purchase tadalafil</a> '),
(1237, 'LisaReums', 'doda@gmail.com ', '82422786892', 'Dallas', 'google', '<a href=\"https://ivermectinonlinepharm.com/\">stromectol order</a> '),
(1238, 'EyeReums', 'krysten@outlook.com ', '85243517841', 'San Jose', 'google', '<a href=\"http://clomidmedicine.com/\">clomid pills online uk</a> '),
(1239, 'MaryReums', 'trudy@hotmail.com ', '86817932226', 'Dallas', 'google', '<a href=\"https://buytadalafilhere.com/\">prices generic cialis</a> '),
(1240, 'AlanReums', 'cmstallings@mail.com ', '84675155227', 'New York', 'google', '<a href=\"http://cialisob.com/\">how to buy cialis safely online</a> '),
(1241, 'JasonReums', 'mikbendet@outlook.com ', '87637881262', 'New York', 'google', '<a href=\"http://viagraedtablets.com/\">where can i buy viagra tablets</a> '),
(1242, 'AlanReums', 'tnsmcaber@hotmail.com ', '81764221858', 'New York', 'google', '<a href=\"http://viagraxcheap.com/\">viagra 500mg price in india</a> '),
(1243, 'CarlReums', 'ossie@yahoo.com ', '88827221323', 'New York', 'google', '<a href=\"http://superivermectin.com/\">cost of ivermectin pill</a> '),
(1244, 'EyeReums', 'jscott@aol.com ', '87473679823', 'San Jose', 'google', '<a href=\"http://viagrasc.com/\">viagra price in us</a> '),
(1245, 'PaulReums', 'jbryant77@mail.com ', '84733777274', 'Dallas', 'google', '<a href=\"https://viagrabestprice.com/\">generic viagra 150 mg online</a> '),
(1246, 'LisaReums', 'dmarshall53@yahoo.com ', '84498834275', 'Dallas', 'google', '<a href=\"https://hydroxychloroquinext.com/\">plaquenil generic brand</a> '),
(1247, 'AmyReums', 'lbroussard@aol.com ', '83498461772', 'New York', 'google', '<a href=\"http://sildenafilhx.com/\">sildenafil 100 mg tablet</a> '),
(1248, 'CarlReums', 'punzelle@hotmail.com ', '88998578375', 'New York', 'google', '<a href=\"http://buywithnorx.com/\">azithromycin over the counter nz</a> '),
(1249, 'EyeReums', 'crosanski@outlook.com ', '83178252585', 'San Jose', 'google', '<a href=\"http://ndpills.com/\">purchase generic propecia</a> '),
(1250, 'JasonReums', 'biaul2006@yahoo.com ', '88681518898', 'New York', 'google', '<a href=\"http://extradothealth.com/\">antabuse online canada</a> '),
(1251, 'AmyReums', 'wandagosse43@mail.com ', '87778736582', 'New York', 'google', '<a href=\"http://gitpharm.com/\">zoloft 25</a> '),
(1252, 'AmyReums', 'julio@outlook.com ', '81716343717', 'New York', 'google', '<a href=\"http://cialispillslowcost.com/\">can you buy cialis safely online</a> '),
(1253, 'KiaReums', 'iluvualso7@outlook.com ', '83933829266', 'Denver', 'google', '<a href=\"http://walpharmacy.com/\">tops pharmacy</a> '),
(1254, 'DenReums', 'phase1@mail.com ', '85329324982', 'Chicago', 'google', '<a href=\"http://cialistabletsbuy.com/\">cialis over the counter nz</a> '),
(1255, 'JasonReums', 'debbiematos@mail.com ', '81149741572', 'New York', 'google', '<a href=\"http://cialiswithoutdoctor.com/\">how much is cialis</a> '),
(1256, 'CarlReums', 'michaelconnell@mail.com ', '89726845397', 'New York', 'google', '<a href=\"http://capntab.com/\">accutane over the counter canada</a> '),
(1257, 'AlanReums', 'djanca@yahoo.com ', '82377475486', 'New York', 'google', '<a href=\"http://buyviagratb.com/\">viagra 400mg online</a> '),
(1258, 'Mep', '4ewkqu3t@yahoo.com', '89776446547', 'Kaduna', 'google', 'Hi, this is Julia. I am sending you my intimate photos as I promised. https://tinyurl.com/yk4hbc4u'),
(1259, 'MarkReums', 'schefdeh5@outlook.com ', '87162173628', 'Dallas', 'google', '<a href=\"https://ivermectinoralpills.com/\">ivermectin 1%</a> '),
(1260, 'LisaReums', 'tommylena@hotmail.com ', '89513949237', 'Dallas', 'google', '<a href=\"https://plusmedshop.com/\">safe online pharmacies in canada</a> '),
(1261, 'PaulReums', 'silvia@yahoo.com ', '81516672766', 'Dallas', 'google', '<a href=\"https://icialispills.com/\">cialis india online</a> '),
(1262, 'KiaReums', 'rneville2@yahoo.com ', '84388322251', 'Denver', 'google', '<a href=\"http://cialispillslowcost.com/\">cialis in mexico</a> '),
(1263, 'EyeReums', 'csfayram@mail.com ', '83519565365', 'San Jose', 'google', '<a href=\"http://cialisxsale.com/\">canada pharmacy daily tadalafil</a> '),
(1264, 'DenReums', 'kathygriner53@outlook.com ', '84337737364', 'Chicago', 'google', '<a href=\"http://dotdotrx.com/\">propecia cost comparison</a> '),
(1265, 'JudyReums', 'janet@outlook.com ', '81882424558', 'New York', 'google', '<a href=\"http://viagraxcheap.com/\">female viagra mexico</a> '),
(1266, 'JasonReums', 'bmnico88@outlook.com ', '81121196333', 'New York', 'google', '<a href=\"http://pharmacypoly.com/\">top 10 online pharmacy in india</a> '),
(1267, 'JudyReums', 'adjones@hotmail.com ', '89253351173', 'New York', 'google', '<a href=\"http://ivermectinxtab.com/\">ivermectin over the counter uk</a> '),
(1268, 'LisaReums', 'dmarshall53@mail.com ', '82693818153', 'Dallas', 'google', '<a href=\"https://sildenafilbestbuy.com/\">sildenafil price uk</a> '),
(1269, 'AlanReums', 'michaeljenkinswales@aol.com ', '81953362965', 'New York', 'google', '<a href=\"http://ivermectinrp.com/\">ivermectin online</a> '),
(1270, 'AmyReums', 'thierman@aol.com ', '85199197849', 'New York', 'google', '<a href=\"http://buyviagratb.com/\">how to get over the counter viagra</a> '),
(1271, 'CarlReums', 'totoperu@outlook.com ', '89157432149', 'New York', 'google', '<a href=\"http://viagracheapx.com/\">how much is viagra in canada</a> '),
(1272, 'Avatal', 'avaPausy98@yahoo.com', '82878152581', 'Kalamaria', 'google', 'Hi dear!!! Im looking a man... \r\nI love sex. Here are my erotic photos - bit.ly/3875enb'),
(1273, 'Xhtzzwf', 'jamie.pittman7@gmail.com\r\n', '86666115998', '', 'google', 'Kimbkhh \r\n \r\nadam.babler@avidratings.com\r\n    :'),
(1274, 'MarkReums', 'michel750@mail.com ', '81964734734', 'Dallas', 'google', '<a href=\"https://tadalafilibuy.com/\">tadalafil canadian pharmacy price</a> '),
(1275, 'HelenInnof', 'asp4@4ttmail.com', '81994835144', 'Biel', 'google', 'priya anjali rai anal\r\nzoey holloway anal\r\nlittle caprice pics\r\n \r\n<a href=https://www.analslutty.co'),
(1276, 'PaulReums', 'cjiles06@aol.com ', '87352373824', 'Dallas', 'google', '<a href=\"https://cialisbbuy.com/\">cialis online</a> '),
(1277, 'KiaReums', 'mrscowgirl@gmail.com ', '86388554545', 'Denver', 'google', '<a href=\"http://besttabsforsale.com/\">albuterol 4mg</a> '),
(1278, 'Mike Parson\r\n', 'no-replykl@gmail.com', '84523151611', 'Albany', 'google', 'Hi \r\n \r\nWe will improve your Local Ranks organically and safely, using only whitehat methods, while '),
(1279, 'EyeReums', 'rws367@mail.com ', '89858995717', 'San Jose', 'google', '<a href=\"http://angpharm.com/\">lasix 5</a> '),
(1280, 'LarryMip', '%spinfile-names.dat%%spinfile-lnames.dat%%random-1-100%@base.mixwi.com', '87389356611', 'Kakamega', 'google', 'Trusted Online Casino Malaysia   http://gm231.com/poker/#Game Mania - More info!..'),
(1281, 'MaryReums', 'vrej@aol.com ', '84617988874', 'Dallas', 'google', '<a href=\"https://sildenafilbuyingonline.com/\">cheapest generic viagra prices</a> '),
(1282, 'JudyReums', 'jcsmailme@mail.com ', '85449312994', 'New York', 'google', '<a href=\"http://buysildenafilcitr.com/\">generic viagra online united states</a> '),
(1283, 'MaryReums', 'mjtanksley@yahoo.com ', '85383274235', 'Dallas', 'google', '<a href=\"https://cialisxsale.com/\">cheap buy cialis</a> '),
(1284, 'Rogerfok', 'b4gv7@course-fitness.com', '82185164739', 'Klimmen', 'google', 'XYZ å£¯é™½è—¥æ˜¥è—¥å°ˆè³£åº— å¤§é‡è³¼è²·æœ‰å„ªæƒ  \r\n \r\nhttps://man-r20.com/'),
(1285, 'DenReums', 'joe666@gmail.com ', '88275559713', 'Chicago', 'google', '<a href=\"http://cialispillslowcost.com/\">tadalafil online sale</a> '),
(1286, 'KiaReums', 'kurtsue@outlook.com ', '87364349918', 'Denver', 'google', '<a href=\"http://marchpharmacy.com/\">worldwide pharmacy online</a> '),
(1287, 'AmyReums', 'jirin16@outlook.com ', '84119154286', 'New York', 'google', '<a href=\"http://walpharmacy.com/\">canada pharmacy not requiring prescription</a> '),
(1288, 'CarlReums', 'lfr3@gmail.com ', '82293542264', 'New York', 'google', '<a href=\"http://buyviagrapl.com/\">where to purchase viagra in canada</a> '),
(1289, 'AlanReums', 'florence32@aol.com ', '88652834764', 'New York', 'google', '<a href=\"http://ivermectinoralpills.com/\">ivermectin coronavirus</a> '),
(1290, 'MarkReums', 'ahall@outlook.com ', '87969491859', 'Dallas', 'google', '<a href=\"https://clomidmedicine.com/\">where to buy clomid without prescription</a> '),
(1291, 'LisaReums', 'roymjohansen@gmail.com ', '84425894265', 'Dallas', 'google', '<a href=\"https://buysildenafilv.com/\">cheap generic viagra canadian pharmacy</a> '),
(1292, 'JasonReums', 'amina@outlook.com ', '85594541145', 'New York', 'google', '<a href=\"http://ivermectinoralpills.com/\">ivermectin 4 tablets price</a> '),
(1293, 'KiaReums', 'stevenferguson64@gmail.com ', '83571498856', 'Denver', 'google', '<a href=\"http://sildenafilonlinesale.com/\">where can i buy viagra canada</a> '),
(1294, 'BooReums', 'shyla@mail.com ', '81133455553', 'Tucson', 'google', '<a href=\"http://quetiapineseroquel.online/\">seroquel for bipolar depression</a> <a href=\"http://cial'),
(1295, 'JasonReums', 'dude101@gmail.com ', '88183412462', 'New York', 'google', '<a href=\"http://viagralowcost.com/\">cost of viagra 50mg</a> '),
(1296, 'AshReums', 'crossancatherine@mail.com ', '89892797848', 'Fresno', 'google', '<a href=\"https://fasttadalafil.online/\">tadalafil us</a> <a href=\"https://buysildenafilpills.online/'),
(1297, 'BooReums', 'pjenkyns@yahoo.com ', '87538244331', 'Tucson', 'google', '<a href=\"http://sildenafilx5.online/\">buy sildenafil tablets online</a> <a href=\"http://tadalafilonl'),
(1298, 'MaryReums', 'ddgrimmette@mail.com ', '87954226998', 'Dallas', 'google', '<a href=\"https://viagrasct.com/\">genuine viagra for sale</a> '),
(1299, 'AmyReums', 'craigb@hotmail.com ', '84924657918', 'New York', 'google', '<a href=\"http://sildenafilcitratemedication.com/\">sildenafil generic nz</a> '),
(1300, 'Staceyinava', 'a.milnichenko@a.avalins.com', '89787774283', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', ''),
(1301, 'KiaReums', 'bijan445@aol.com ', '89479247869', 'Denver', 'google', '<a href=\"http://orderwithnorx.com/\">ventolin price in usa</a> '),
(1302, 'DenReums', 'odb@mail.com ', '84187415426', 'Chicago', 'google', '<a href=\"http://tadalafiltabletsale.com/\">tadalafil 60 mg uk</a> '),
(1303, 'JasonReums', 'joelle@yahoo.com ', '84729818583', 'New York', 'google', '<a href=\"http://sildenafilmu.com/\">generic sildenafil 100mg tablet</a> '),
(1304, 'JESMem', 'reginadood@yandex.ru', '88859374534', 'Hqatna', 'google', 'Get gifts from Joycazino for free - play without paying money https://joycasinos1.com/  \r\n \r\nÐŸÐ¾Ð´Ð'),
(1305, 'AmyReums', 'lindsey@yahoo.com ', '86394876484', 'New York', 'google', '<a href=\"http://zoloftpills.com/\">zoloft prescription cost</a> '),
(1306, 'CarlReums', 'wwgardner@mail.com ', '87467475626', 'New York', 'google', '<a href=\"http://cdcialis.com/\">generic cialis professional</a> '),
(1307, 'MaryReums', 'billatlcw@gmail.com ', '86141556581', 'Dallas', 'google', '<a href=\"https://mdipoint.com/\">lisinopril generic drug</a> '),
(1308, 'UgoReums', 'lilly@outlook.com ', '89248555633', 'Mesa', 'google', '<a href=\"https://hydroxychloroquiene.online/\">hydroxychloroquine sulfate tablets</a> <a href=\"https:'),
(1309, 'JudyReums', 'lee@mail.com ', '86657831231', 'New York', 'google', '<a href=\"http://viagrabuygeneric.com/\">viagra 2</a> '),
(1310, 'AshReums', 'patterson711@yahoo.com ', '85677573557', 'Fresno', 'google', '<a href=\"https://bestexpresspharmacy.online/\">brazilian pharmacy online</a> <a href=\"https://cialisx'),
(1311, 'AlanReums', 'oralia@yahoo.com ', '87624221291', 'New York', 'google', '<a href=\"http://oralsildenafil.com/\">over the counter female viagra pills</a> '),
(1312, 'Mikkyabsom', 'neradchtovzad@rambler.ru', '89784452518', 'SanDiegos', 'google', 'Ð˜Ð½Ñ‚ÐµÑ€ÐµÑÐ½Ð¾ ÑÐ¿Ð°ÑÐµÑ‚ ÐºÑ€Ð°ÑÐ¾Ñ‚Ð° Ð¼Ð¸Ñ€ Ð¸Ð»Ð¸ ÑƒÐ¶Ðµ Ð½ÐµÑ‚<a href=http://sluganie.bl'),
(1313, 'PaulReums', 'boklow@mail.com ', '86516732677', 'Dallas', 'google', '<a href=\"https://hydroxychloroquinepp.com/\">plaquenil 50mg</a> '),
(1314, 'BooReums', 'tammera@mail.com ', '88449886372', 'Tucson', 'google', '<a href=\"http://zmedsearch.online/\">modafinil for sale canada</a> <a href=\"http://tadalafilxm.online'),
(1315, 'JudyReums', 'alphax683@hotmail.com ', '88738778253', 'New York', 'google', '<a href=\"http://bupropionforsale.com/\">generic bupropion 300mg</a> '),
(1316, 'UgoReums', 'kathie@gmail.com ', '86183287628', 'Mesa', 'google', '<a href=\"https://efcialis.online/\">order cialis online canada</a> <a href=\"https://cheapcialistablet'),
(1317, 'MarkReums', 'hwtpkuma@yahoo.com ', '88139821639', 'Dallas', 'google', '<a href=\"https://oralsildenafil.com/\">can you buy viagra over the counter in europe</a> '),
(1318, 'EyeReums', 'vincentgeorge@outlook.com ', '88822374269', 'San Jose', 'google', '<a href=\"http://sildenafilarg.com/\">buy generic sildenafil</a> '),
(1319, 'WimReums', 'natn82@gmail.com ', '83363455933', 'Oakland', 'google', '<a href=\"http://finasteridehairloss.online/\">order finasteride</a> <a href=\"http://dxviagra.online/\"'),
(1320, 'PaulReums', 'niamhmurphy@mail.com ', '88954271787', 'Dallas', 'google', '<a href=\"https://sildenafilbl.com/\">sildenafil citrate online</a> '),
(1321, 'MarkReums', 'russd0077@gmail.com ', '81136736368', 'Dallas', 'google', '<a href=\"https://genericcialistabs.com/\">cheapest tadalafil online uk</a> '),
(1322, 'Richardneike', 'nuc0jy@course-fitness.com', '81636362165', 'Albany', 'google', 'unethostç„¡é™ç©ºé–“è™›æ“¬ä¸»æ©Ÿ æŠ€è¡“åˆ†äº«éƒ¨è½æ ¼ \r\n \r\nhttp://blog.unethost.com/'),
(1323, 'MaryReums', 'mastercraftsmandean@gmail.com ', '89283346842', 'Dallas', 'google', '<a href=\"https://viagrabuygeneric.com/\">viagra prescription canada</a> '),
(1324, 'CarlReums', 'ijuba57@gmail.com ', '84754811231', 'New York', 'google', '<a href=\"http://sildenafilmu.com/\">buy sildenafil 100mg online</a> '),
(1325, 'GlennDag', 'gerbert5456kk@bambo-mebel.top', '84621858343', 'NEW AMSTERDAM', 'google', '<a href=http://dynamo-kiev.com/novosti/64188-kak-nayti-nadyozhnoe-azartnoe-zavedeni.html>http://dyna'),
(1326, 'LisaReums', 'alcapone250@aol.com ', '88353663478', 'Dallas', 'google', '<a href=\"https://sildenafilpropills.com/\">where do you buy viagra</a> '),
(1327, 'JudyReums', 'susanvandyk@mail.com ', '84981729289', 'New York', 'google', '<a href=\"http://cialisfc.com/\">buy cialis in nz</a> '),
(1328, 'EyeReums', 'rstark@gmail.com ', '84814176275', 'San Jose', 'google', '<a href=\"http://tadalafilarb.com/\">buy tadalafil from canada</a> '),
(1329, 'AlanReums', 'pjeff51clark@aol.com ', '84643472537', 'New York', 'google', '<a href=\"http://orderwithoutrx.com/\">metformin er 1000 mg</a> '),
(1330, 'AmyReums', 'helenadamchik@outlook.com ', '84637293527', 'New York', 'google', '<a href=\"http://sildenafilcitdiscount.com/\">where can i order generic viagra</a> '),
(1331, 'LisaReums', 'rdy1245@aol.com ', '89768516987', 'Dallas', 'google', '<a href=\"https://cheapcialistablets.com/\">viagra cialis</a> '),
(1332, 'EyeReums', 'del@hotmail.com ', '87828291883', 'San Jose', 'google', '<a href=\"http://lipitorbuy.com/\">lipitor generic india</a> '),
(1333, 'JasonReums', 'gust155@aol.com ', '85296436379', 'New York', 'google', '<a href=\"http://ivermectinh.com/\">ivermectin cream uk</a> '),
(1334, 'Bertramheere', 's.fikin@denis.enersets.com', '87956676278', 'Moscow', 'google', ''),
(1335, 'PaulReums', 'valorie@outlook.com ', '86165536887', 'Dallas', 'google', '<a href=\"https://tadalafilanx.com/\">tadalafil capsules 21 mg</a> '),
(1336, 'Larrygak', 'vtornroz.94@aol.com', '87336573193', 'Ho Chi Minh City', 'google', ' \r\nIts like you read my mind! You appear to know a lot about this, like you wrote the book in it or '),
(1337, 'DenReums', 'asuncion@yahoo.com ', '82791569539', 'Chicago', 'google', '<a href=\"http://medicialis.com/\">buy cialis usa</a> '),
(1338, 'KiaReums', 'rogpopp@gmail.com ', '85472689678', 'Denver', 'google', '<a href=\"http://esildenafilcitrate.com/\">buy sildenafil online no prescription</a> '),
(1339, 'RichardTat', 'denisandreev1989521a1n+si@list.ru', '82283117593', 'Ligatne', 'google', 'RE: MAKE $200,000 IN PASSIVE INCOME! TRUE STORY. Way To Earn $10000 Per Month In Passive Income \r\nFw'),
(1340, 'DenReums', 'sherron@mail.com ', '81799398896', 'Chicago', 'google', '<a href=\"http://esildenafilcitrate.com/\">can you buy sildenafil without a prescription</a> '),
(1341, 'RobertSoism', 'peappyzep@mail.ru', '89134863949', 'Bijeljina', 'google', ''),
(1342, 'RobertSoism', 'peappyzep@mail.ru', '88259862464', 'Bijeljina', 'google', 'Ð’ Ð³Ñ€ÑƒÐ´Ð½Ð¸Ñ‡ÐºÐ¾Ð²Ð¾Ð¼ Ð²Ð¾Ð·Ñ€Ð°ÑÑ‚Ðµ Ð¼Ð°ÑÑÐ°Ð¶ Ð½ÐµÐ¾Ð±Ñ…Ð¾Ð´Ð¸Ð¼: \r\nÐ´Ð»Ñ Ñ€Ð°Ð·Ð²Ð¸Ñ‚Ð'),
(1343, 'MarkReums', 'rustybwilson@hotmail.com ', '84529465173', 'Dallas', 'google', '<a href=\"https://viagramrem.com/\">brand viagra canadian pharmacy</a> '),
(1344, 'KiaReums', 'quanyin0715@aol.com ', '81897182877', 'Denver', 'google', '<a href=\"http://viagramrem.com/\">buy online viagra tablet</a> '),
(1345, 'AlanReums', 'kevin@outlook.com ', '89443496618', 'New York', 'google', '<a href=\"http://zoloftpills.com/\">zoloft brand coupon</a> '),
(1346, 'Mike Dyson\r\n', 'no-replykl@gmail.com', '88319746179', 'Kaohsiung Municipality', 'google', 'Hello \r\n \r\nI have just took an in depth look on your  schooloo.com for the ranking keywords and saw '),
(1347, 'UgoReums', 'micki@gmail.com ', '83842176699', 'Mesa', 'google', '<a href=\"https://abcialis.online/\">cialis generic in india</a> <a href=\"https://doxycyclinemeds.onli'),
(1348, 'WimReums', 'esantelmo@outlook.com ', '82436751841', 'Oakland', 'google', '<a href=\"http://buyviagrasildenafilcitrate.online/\">viagra price without insurance</a> <a href=\"http'),
(1349, 'JudyReums', 'shawmetopo@gmail.com ', '83581281426', 'New York', 'google', '<a href=\"http://viagralowcost.com/\">viagra online fast shipping</a> '),
(1350, 'CarlReums', 'leandra@mail.com ', '85617963421', 'New York', 'google', '<a href=\"http://tadalafiltabletsale.com/\">tadalafil 10mg online india</a> '),
(1351, 'AshReums', 'aboomar001@yahoo.com ', '88875118212', 'Fresno', 'google', '<a href=\"https://pharmopt.online/\">erectafil 5</a> <a href=\"https://atcialis.online/\">purchase ciali'),
(1352, 'JudyReums', 'benjamindkerr@aol.com ', '84686995298', 'New York', 'google', '<a href=\"http://sildenafilcitdiscount.com/\">compare prices viagra</a> '),
(1353, 'AlanReums', 'mythnical@yahoo.com ', '84622459917', 'New York', 'google', '<a href=\"http://vspills.com/\">can you buy trazodone online</a> '),
(1354, 'ManuelJes', 'hp3@4ttmail.com', '82295592674', 'Lilongwe', 'google', '<a href=https://hairypussypix.com/tag/asian-girl-hairy-pussy/>Asian Girl Hairy Pussy</a> fell a bit '),
(1355, 'BooReums', 'dortll@aol.com ', '89497142967', 'Tucson', 'google', '<a href=\"http://pharmabst.online/\">ivermectin 5</a> <a href=\"http://brandpharmacyonline.online/\">rx '),
(1356, 'AmyReums', 'fabiopmn@mail.com ', '89442424894', 'New York', 'google', '<a href=\"http://agtadalafil.com/\">tadalafil 100</a> '),
(1357, 'LisaReums', 'ritollmmnn@hotmail.com ', '89736428792', 'Dallas', 'google', '<a href=\"https://esildenafilcitrate.com/\">sildenafil online cheap</a> '),
(1358, 'JacobMic', 'denisandreev1989521a1n+tl@list.ru', '88199584394', 'Orange Walk', 'google', 'RE: My success story. Way To Earn $10000 Per Month In Passive Income \r\nRE: A Passive Income Success '),
(1359, 'EyeReums', 'barrantco@yahoo.com ', '86944841429', 'San Jose', 'google', '<a href=\"http://sildenafilcitraterx.com/\">sildenafil price 100mg</a> '),
(1360, 'Kimnal', 'kimlape68@hotmail.com', '88171122848', 'Biel', 'google', 'hallo ... Im looking a man.. \r\nI love oral sex! Write me - is.gd/WVM6FA'),
(1361, 'JasonReums', 'svartknapp@gmail.com ', '81956985178', 'New York', 'google', '<a href=\"http://xenecal.com/\">buy xenical online</a> '),
(1362, 'WilliamGit', 'imdevilmorningstar@gmail.com', '81247315393', 'Monrovia', 'google', 'Sports Betting Affiliate Deals is a great way to add extra income to your gambling account. These bo'),
(1363, 'Tambraexign', 'p.antispam@yandex.com', '85739455349', 'Willemstad', 'google', 'Good afternoon, my rank is Mike or Victoria) and if you are reading this bulletin, it means that I a'),
(1364, 'CarlReums', 'dawsonmom@gmail.com ', '82863949719', 'New York', 'google', '<a href=\"http://buysildenafilcitratepills.com/\">sildenafil drug prices</a> '),
(1365, 'AmyReums', 'luciagarciasat@outlook.com ', '82163621335', 'New York', 'google', '<a href=\"http://ivermectinstopcovid.com/\">ivermectin 3 mg</a> '),
(1366, 'JudyReums', 'thaptrica2@gmail.com ', '88955641358', 'New York', 'google', '<a href=\"http://modafinilbestbuy.com/\">800 mg modafinil</a> '),
(1367, 'WimReums', 'katrinaelizabeth1257@mail.com ', '88783926749', 'Oakland', 'google', '<a href=\"http://diflucantab.online/\">diflucan from india</a> <a href=\"http://sfmeds.online/\">valtrax'),
(1368, 'UgoReums', 'jkoppesti@hotmail.com ', '88896994441', 'Mesa', 'google', '<a href=\"https://sildenafilob.online/\">sildenafil for sale online</a> <a href=\"https://mebendazoleve'),
(1369, 'JasonReums', 'axpcr90@aol.com ', '84392823148', 'New York', 'google', '<a href=\"http://tadalafilmedication.com/\">buy cialis fast shipping</a> '),
(1370, 'MaryReums', 'tadagram@gmail.com ', '81449772566', 'Dallas', 'google', '<a href=\"https://avviagra.com/\">best place to buy viagra online</a> '),
(1371, 'UgoReums', 'rumpusscats@outlook.com ', '89428696314', 'Mesa', 'google', '<a href=\"https://ivermectinsp.online/\">stromectol tablets uk</a> <a href=\"https://appviagra.online/\"'),
(1372, 'DenReums', 'carmen@gmail.com ', '86185159588', 'Chicago', 'google', '<a href=\"http://buycialisbestprice.com/\">where to buy cialis online in usa</a> '),
(1373, 'WimReums', 'kathaleen@outlook.com ', '84875768319', 'Oakland', 'google', '<a href=\"http://cialisbrandpills.online/\">cialis pills online</a> <a href=\"http://ivermectintablets.'),
(1374, 'AlanReums', 'despiteu1@aol.com ', '81163738616', 'New York', 'google', '<a href=\"http://orderivermectinforhumans.com/\">stromectol 0.1</a> '),
(1375, 'MarkReums', 'jepgravel@aol.com ', '81865688897', 'Dallas', 'google', '<a href=\"https://ivermectiniv.com/\">stromectol medication</a> '),
(1376, 'KiaReums', 'dempsey@aol.com ', '83798295865', 'Denver', 'google', '<a href=\"http://cialisipro.com/\">genuine cialis online</a> '),
(1377, 'MaryReums', 'randyman1955@outlook.com ', '81819578138', 'Dallas', 'google', '<a href=\"https://viagravb.com/\">viagra tablet price online</a> '),
(1378, 'EyeReums', 'kbenirschke@outlook.com ', '83233521182', 'San Jose', 'google', '<a href=\"http://sildenafilxb.com/\">sildenafil 100 canadian pharmacy</a> '),
(1379, 'MaryReums', 'thetoxdoc@yahoo.com ', '87588926553', 'Dallas', 'google', '<a href=\"https://diflucanforsale.com/\">diflucan 50mg capsules</a> '),
(1380, 'WimReums', 'neciohec17@mail.com ', '81592473415', 'Oakland', 'google', '<a href=\"http://cheaptadalafiltablets.online/\">tadalafil daily</a> <a href=\"http://xxlviagra.online/'),
(1381, 'JudyReums', 'katiae@mail.com ', '87232633186', 'New York', 'google', '<a href=\"http://diflucanforsale.com/\">diflucan 150 mg price</a> '),
(1382, 'DenReums', 'stansvet@yahoo.com ', '84481779332', 'Chicago', 'google', '<a href=\"http://sildenafilfs.com/\">canadian viagra 200 mg</a> '),
(1383, 'AmyReums', 'gkapa@hotmail.com ', '87532968924', 'New York', 'google', '<a href=\"http://genericsildenafilbuy.com/\">sildenafil without a rx</a> '),
(1384, 'Apkcowh', 'syadavalli@osi-systems.com\r\n', '88457397118', '', 'google', 'Rcrvriy \r\n \r\nsyadavalli@osi-systems.com\r\n    :'),
(1385, 'PaulReums', 'mossley@yahoo.com ', '82692338898', 'Dallas', 'google', '<a href=\"https://diflucanforsale.com/\">diflucan 400mg</a> '),
(1386, 'BooReums', 'shellie@yahoo.com ', '81678137272', 'Tucson', 'google', '<a href=\"http://ddsmeds.online/\">buspar generic cost</a> <a href=\"http://xviagrageneric.online/\">dis'),
(1387, 'PaulReums', 'ddrake@hotmail.com ', '85782925262', 'Dallas', 'google', '<a href=\"https://sildenafiledtablets.com/\">cheap sildenafil 50mg uk</a> '),
(1388, 'CarlReums', 'pridatkokrymko@aol.com ', '88324359596', 'New York', 'google', '<a href=\"http://ivermectiniv.com/\">ivermectin 20 mg</a> '),
(1389, 'KiaReums', 'ulrich00@mail.com ', '84629683643', 'Denver', 'google', '<a href=\"http://buycialisbestprice.com/\">real cialis for sale</a> '),
(1390, 'AmyReums', 'gkapa@hotmail.com ', '83374252338', 'New York', 'google', '<a href=\"http://genericviagraotc.com/\">cheap generic viagra 25mg</a> '),
(1391, 'AshReums', 'karieriksson@yahoo.com ', '85968759877', 'Fresno', 'google', '<a href=\"https://buycialisx.online/\">cheapest cialis generic</a> <a href=\"https://buycialishow.onlin'),
(1392, 'UgoReums', 'iankillie@aol.com ', '88848583637', 'Mesa', 'google', '<a href=\"https://sildenafilxtab.online/\">30 mg sildenafil buy online</a> <a href=\"https://ventolinhl'),
(1393, 'MaryReums', 'macy@aol.com ', '89747232899', 'Dallas', 'google', '<a href=\"https://hifipills.com/\">lisinopril generic cost</a> '),
(1394, 'JasonReums', 'pmpm061@hotmail.com ', '87127859342', 'New York', 'google', '<a href=\"http://buyprednisolonepills.com/\">prednisolone tablets 25mg price</a> '),
(1395, 'BykRU', 'vahzkworkyura@mail.ru', '88941146916', 'Zjuge', 'google', 'https://5bz.ru/'),
(1396, 'MarkReums', 'rasabertasiene@mail.com ', '82184558327', 'Dallas', 'google', '<a href=\"https://antabusegeneric.com/\">antabuse</a> '),
(1397, 'CarlReums', 'ijuba57@yahoo.com ', '85544558766', 'New York', 'google', '<a href=\"http://bestpricetadalafil.com/\">cheap cialis fast shipping</a> '),
(1398, 'DenReums', 'danielmirica@outlook.com ', '89224641441', 'Chicago', 'google', '<a href=\"http://genxpharm.com/\">lisinopril 20 mg cost</a> '),
(1399, 'JudyReums', 'robnomore@outlook.com ', '83348572911', 'New York', 'google', '<a href=\"http://xviagratablets.com/\">where to buy viagra generic</a> '),
(1400, 'EyeReums', 'elana@yahoo.com ', '85756449253', 'San Jose', 'google', '<a href=\"http://tadalafiledtablets.com/\">10 mg cialis</a> '),
(1401, 'BooReums', 'linette@gmail.com ', '87676692918', 'Tucson', 'google', '<a href=\"http://zftablets.online/\">bupropion sr 150</a> <a href=\"http://cialiswhere.online/\">genuine'),
(1402, 'KiaReums', 'daphine@gmail.com ', '83857331327', 'Denver', 'google', '<a href=\"http://viagralt.com/\">generic viagra coupon</a> '),
(1403, 'DonaldBoirm', 'm.defov@a.avalins.com', '83991732352', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', ''),
(1404, 'Alfredofourb', 'm.oreshkov@den.efastes.com', '82576631544', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', ''),
(1405, 'GeorgeFieno', 'i.golovenkin@makao.efastes.com', '89492213339', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', ''),
(1406, 'LisaReums', 'vincenzonegro@outlook.com ', '89817858573', 'Dallas', 'google', '<a href=\"https://lasixforsale.com/\">buy lasix 40 mg</a> '),
(1407, 'JudyReums', 'laurena@aol.com ', '87495161136', 'New York', 'google', '<a href=\"http://viagraetabs.com/\">sildenafil citrate</a> '),
(1408, 'AshReums', 'leonawoowoo@hotmail.com ', '86499334731', 'Fresno', 'google', '<a href=\"https://hydroxychloroquinedrugstore.online/\">hydroxychloroquine sulfate tab 200 mg</a> <a h'),
(1409, 'UgoReums', 'coralosullivan@aol.com ', '87861368169', 'Mesa', 'google', '<a href=\"https://buytadalafilgenericpills.online/\">tadalafil generic usa</a> <a href=\"https://cialis'),
(1410, 'DenReums', 'nbreckenridge1@gmail.com ', '87993365673', 'Chicago', 'google', '<a href=\"http://amoxicillinotc.com/\">amoxicillin 75 mg</a> '),
(1411, 'WimReums', 'buggjam@outlook.com ', '85587263969', 'Oakland', 'google', '<a href=\"http://sildenafilextra.online/\">sildenafil brand name in canada</a> <a href=\"http://viagras'),
(1412, 'MarkReums', 'boyetarao@aol.com ', '87356319169', 'Dallas', 'google', '<a href=\"https://exttabs.com/\">albuterol sulfate inhalation solution</a> '),
(1413, 'AmyReums', 'mustangcobra400@aol.com ', '82528466687', 'New York', 'google', '<a href=\"http://vtcialis.com/\">cialis generic cheap</a> '),
(1414, 'AlanReums', 'avelina@hotmail.com ', '87139838666', 'New York', 'google', '<a href=\"http://bestpricetadalafil.com/\">brand cialis online</a> '),
(1415, 'UgoReums', 'helen025@aol.com ', '89767374235', 'Mesa', 'google', '<a href=\"https://ivermectinz.online/\">buy stromectol</a> <a href=\"https://tadalafiloraltabs.online/\"'),
(1416, 'EyeReums', 'randyh06@hotmail.com ', '83776822256', 'San Jose', 'google', '<a href=\"http://sildenafilsm.com/\">sildenafil generic brand name</a> '),
(1417, 'JasonReums', 'mmiller0610@hotmail.com ', '81492463645', 'New York', 'google', '<a href=\"http://buysildenafilcitratepills.com/\">mail order viagra</a> '),
(1418, 'PaulReums', 'stevejvh@yahoo.com ', '88158183348', 'Dallas', 'google', '<a href=\"https://bbspharm.com/\">buy prednisone online without a prescription</a> '),
(1419, 'LisaReums', 'jolanda@outlook.com ', '89246742881', 'Dallas', 'google', '<a href=\"https://genericsildenafilbuy.com/\">buy cheap sildenafil online uk</a> '),
(1420, 'WimReums', 'ackevik@gmail.com ', '84133487863', 'Oakland', 'google', '<a href=\"http://tadalafilbs.online/\">canada pharmacy daily tadalafil</a> <a href=\"http://supersilden'),
(1421, 'MaryReums', 'pits2020@gmail.com ', '89343364339', 'Dallas', 'google', '<a href=\"https://ivermectiniv.com/\">stromectol 3 mg tablet</a> '),
(1422, 'yourNIC', 'orpheusji@aol.com', '87995786695', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'google', 'Hey, Tonight only the hottest girls are waiting for you. You can join here https://downapp.us/'),
(1423, 'MarvinevizE', 'yp.2022@mail.ru', '89717548461', 'Moscow', 'google', '<a href=\"https://www.tinkoff.ru/sl/4BEhO6N0Gnj\">Ð”ÐµÐ±ÐµÑ‚Ð¾Ð²Ð°Ñ ÐºÐ°Ñ€Ñ‚Ð° Tinkoff Black \r\n \r\nÐ—Ð'),
(1424, 'Mep', '14g3giz3@gmail.com', '89581591427', 'Kaduna', 'google', 'Hi, this is Anna. I am sending you my intimate photos as I promised. https://tinyurl.com/yzd936r6'),
(1425, 'Arthurbrish', 'mksorbplg+aamga8@gmail.com', '85352347194', '', 'google', ''),
(1426, 'iphonePurb.', 'maximmad222@yandex.ru', '83639483177', 'Ð¡Ð°Ð½ÐºÑ‚-ÐŸÐµÑ‚ÐµÑ€Ð±ÑƒÑ€Ð³', 'google', 'ÐšÑƒÐ¿Ð¸Ñ‚ÑŒ Ð¸Ð³Ñ€Ñ‹ +Ð½Ð° xbox +one ÐºÐ»ÑŽÑ‡Ð¸ Ð°ÐºÑ‚Ð¸Ð²Ð°Ñ†Ð¸Ð¸ ÐšÐ»ÑŽÑ‡ÐµÐ²Ð°Ñ Ð¸Ð³Ñ€Ð¾Ð²Ð°Ñ '),
(1427, 'Mike Hailey\r\n', 'no-replykl@gmail.com', '81448885159', 'Willemstad', 'google', 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your schooloo.com website? \r\nHaving a'),
(1428, 'yourNIC', 'latashabrennen39@gmail.com', '89031234567', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'google', 'Ð“Ð¾Ð»Ð¾ÑÑƒÐ¹Ñ‚Ðµ Ð·Ð° Ð¼ÐµÐ½Ñ Ð¸Ð»Ð¸ Ð¶Ð¼Ð¸Ñ‚Ðµ Ð¡ÐŸÐÐœ,-Ð¿ÑƒÑÑ‚ÑŒ Ñ€ÐµÑˆÐ¸Ñ‚ ÑÑƒÐ´ÑŒÐ±Ð° http'),
(1429, 'Denisefak', 'asp7@4ttmail.com', '88279254692', 'Karakol', 'google', '<a href=https://www.asspornz.com/>wet big fat asses</a> \r\n<a href=https://www.assprice.com/>assprice'),
(1430, 'CarlosGLOMO', 'saystul@twinklyshop.xyz', '86184442717', 'Hoskins', 'google', 'Masking high pro max Ð¡ÐƒÐ Ð†Ð ÂµÐ¡â€šÐ Ñ‘Ð¡â€šÐ¡ÐƒÐ¡Ð\r\nMasking high pro max Ð Ñ”Ð¡Ñ“Ð Ñ—Ð Ñ‘Ð¡â€šÐ'),
(1431, 'yourNIC', 'manimal707@yahoo.com', '89031234567', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'google', 'Hi there. I like to learn new things, Join me and your mind will be blown! https://downapp.us/'),
(1432, 'Colleen Hansen', 'chanokformsen@gmail.com', '83618116958', 'Miami', 'google', 'Explore government-backed grants and funding programs for your business! APPLY NOW - https://rebrand'),
(1433, 'StephenviPsy', 'closerapin1973@dizaer.ru', '85296457687', 'Rajkot', 'google', ''),
(1434, 'MarvinNig', 'thomasphelps3543@gmail.com', '88223717417', 'Riohacha', 'google', 'In tutto il mondo sono stati venduti circa 1,9 miliardi di pillole, sono state scritte oltre 225 mil'),
(1435, 'yourNIC', 'davidemig0916@gmail.com', '89031234567', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'google', 'Ð“Ð¾Ð»Ð¾ÑÑƒÐ¹Ñ‚Ðµ Ð·Ð° Ð¼ÐµÐ½Ñ Ð¸Ð»Ð¸ Ð¶Ð¼Ð¸Ñ‚Ðµ Ð¡ÐŸÐÐœ,-Ð¿ÑƒÑÑ‚ÑŒ Ñ€ÐµÑˆÐ¸Ñ‚ ÑÑƒÐ´ÑŒÐ±Ð° http'),
(1436, 'Barrypat', 'oleggsw@gmail.com', '81638586438', 'Muscat', 'google', '<a href=https://stiralkarem.ru/>Ñ€ÐµÐ¼Ð¾Ð½Ñ‚ ÑÑ‚Ð¸Ñ€Ð°Ð»ÑŒÐ½Ñ‹Ñ…</a>'),
(1437, 'Mike Winter\r\n', 'no-replykl@gmail.com', '82571766426', 'Albany', 'google', 'Good Day \r\n \r\nWe will increase your Local Ranks organically and safely, using only whitehat methods,'),
(1438, 'CreditDrype', 'credit.loan.new@gmail.com', '83777652884', 'Luga', 'google', ' Ð¿Ð¾Ð´ÑƒÐ¼Ð°Ñ‚ÑŒ Ñ‚Ð¾Ð»ÑŒÐºÐ¾.  Ð»ÑŽÐ±Ð¾Ð¿Ñ‹Ñ‚Ð½ÐµÐ¹ÑˆÐ¸Ð¹ -  Ð¿Ñ€ÐµÑÑ-Ñ€ÐµÐ»Ð¸Ð· Ð¾ Ñ€ÐµÐ°Ð»ÑŒÐ½'),
(1439, 'Jasonorams', 'macmellen96778@yahoo.com', '82116921322', 'Duverge', 'google', 'Open a FREEE account with http://UseFreelancer.com to open your business online and start making mon'),
(1440, 'Nar', 'naomisholtz7@gmail.com', '87612738759', 'Raduznyj', 'google', ' I cannot thank you enough for such great writing and all people to their up to the point reviews. \r'),
(1441, 'GlennDag', 'gerbert5456kk@bambo-mebel.top', '85711463591', 'NEW AMSTERDAM', 'google', '<a href=http://tetril.ru/?p=13863>http://tetril.ru/?p=13863</a> \r\n<a href=http://podvolos.com/dlya-c'),
(1442, 'Eleni#gek[Yccubusufucixocy,2,5]', 'soodamun@gmail.com', '88389486699', 'Istanbul', 'google', ' Ñ…Ð¾Ð»Ð°.  ÑÐ²ÐµÑ€Ñ…Ð¸Ð½Ñ‚ÐµÑ€ÐµÑÐ½Ñ‹Ð¹ -  ÑÐºÑÐ¿Ñ€ÐµÑÑ-Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ñ Ð¾ Ð±ÐµÐ·Ð´ÐµÐ¿Ð'),
(1443, 'budusheep', 'parfum.v.rf@gmail.com', '83655726829', 'Moskwa', 'google', ' ÐŸÐ¾Ð½Ð¸Ð¼Ð°Ñ Ð·Ð½Ð°Ñ‡Ð¸Ð¼Ð¾ÑÑ‚ÑŒ Ð¾Ð±Ñ€Ð°Ð·Ð¾Ð²Ð°Ð½Ð¸Ñ  Ð¿Ð¾Ð·Ð¸Ñ‚Ð¸Ð²Ð½Ð¾Ð³Ð¾ Ñ€Ð°Ð·Ð²Ð¸Ñ‚Ð¸Ñ'),
(1444, 'StephenOwnet', 'hp4@4ttmail.com', '87771426381', 'Sanaa', 'google', ' <a href=https://hairypussypix.com/galleries/youporn-black-and-hairy-indian-pussy-indian-gf.html>You'),
(1445, 'invincib', 'invincible.sov@yandex.ru', '83199916293', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', 'Ð›ÐµÐ³ÐµÐ½Ð´Ð°Ñ€Ð½Ð¾Ðµ ÐºÐ¸Ð½Ð¾ <a href=https://ussr.website/ÑÐ¾Ð²ÐµÑ‚ÑÐºÐ¸Ðµ-ÐºÐ¸Ð½Ð¾Ñ„Ð¸Ð»ÑŒÐ¼Ñ‹'),
(1446, 'Mike Salisburry\r\n', 'no-replykl@gmail.com', '86774494934', 'Boston', 'google', 'Hello \r\n \r\nWe all know the importance that dofollow link have on any website`s ranks. \r\nHaving most '),
(1447, 'Mike Macduff\r\n', 'no-replykl@gmail.com', '84746745182', 'Kaohsiung Municipality', 'google', 'Howdy \r\n \r\nI have just took a look on your SEO for  schooloo.com for its SEO metrics and saw that yo'),
(1448, 'yourNIC', 'kuckozena818@gmail.com', '89031234567', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'google', 'ÐÐ±ÑÐ¾Ð»ÑŽÑ‚Ð½Ð¾ Ð±ÐµÐ»Ð°Ñ ÑÐ¸ÑÑ‚ÐµÐ¼Ð° Ñ€Ð°ÑÐºÑ€ÑƒÑ‚ÐºÐ¸ ÑÐ²Ð¾Ð¸Ñ… Ð°ÐºÐºÐ°ÑƒÐ½Ñ‚Ð¾Ð² Ð˜Ð½Ñ'),
(1449, 'Marlintix', 'ha.n.eyn76.@gmail.com', '87465754435', 'Sawpit', 'google', ''),
(1450, 'yourNIC', 'tima.kilchinbayev.03@list.ru', '89031234567', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'google', 'ÐÐ±ÑÐ¾Ð»ÑŽÑ‚Ð½Ð¾ Ð±ÐµÐ»Ð°Ñ ÑÐ¸ÑÑ‚ÐµÐ¼Ð° Ñ€Ð°ÑÐºÑ€ÑƒÑ‚ÐºÐ¸ ÑÐ²Ð¾Ð¸Ñ… Ð°ÐºÐºÐ°ÑƒÐ½Ñ‚Ð¾Ð² Ð˜Ð½Ñ'),
(1451, 'iphonePurb.', 'maximmad222@yandex.ru', '86476671727', ' ÐžÐ¼ÑÐº', 'google', 'ÐŸÑ€Ð¸Ð²ÐµÑ‚.Ð’Ñ‹ Ð¼Ð¾Ð¶ÐµÑ‚Ðµ Ð¿Ñ€Ð¸Ð¾Ð±Ñ€ÐµÑÑ‚Ð¸ Ð¸ Ð¿Ð¾Ð¸Ð³Ñ€Ð°Ñ‚ÑŒ Ð²  ÐÐµÐ´Ð¾Ñ€Ð¾Ð³Ð¸Ðµ Ð¸Ð³Ñ'),
(1452, 'PhilipHob', 'leolward76@gmail.com', '89784511446', 'Debrecen', 'google', ''),
(1453, 'AndrewInwag', 'randmar@juno.com', '83391954964', 'Loja', 'google', 'The most powerful secret techniques to change your life right now. Find out more https://youtu.be/nI'),
(1454, 'Louisagk', 'anja5hw9@gmail.com', '85846465345', 'Boden', 'google', 'hello dear.. Im looking a man. \r\nI dream of hard sex! Write me - is.gd/NB9XZe'),
(1455, 'WilliamLiant', 'jinchou1937564@mail.ru', '85647234795', 'Karak', 'google', 'Unalike other types of painting, this the anyway requires you to say diamonds, crystals, and <a href'),
(1456, 'Bogdancji', 'u.s.e.r.z.a.l.evsk.ija2.2.20.1@gmail.com\r\n', '81944478964', 'Minsk', 'google', 'Ð—Ð´Ñ€Ð°Ð²ÑÑ‚Ð²ÑƒÐ¹Ñ‚Ðµ Ñ‚Ð¾Ð²Ð°Ñ€Ð¸Ñ‰Ð¸! \r\nÐŸÑ€ÐµÐ´Ð»Ð°Ð³Ð°ÐµÐ¼ Ð’Ð°ÑˆÐµÐ¼Ñƒ Ð²Ð½Ð¸Ð¼Ð°Ð½Ð¸ÑŽ Ð¸Ð·'),
(1457, 'Altonpneum', 'm.simov@denis.enersets.com', '89268942662', 'Moscow', 'google', ''),
(1458, 'BobbieRak', 'm.fedotkin@a.avalins.com', '83232685364', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', ''),
(1459, 'Haroldkew', 'o.k.o.b.e.lev.ro8.1@gmail.com', '85532366298', 'Santa Rosa', 'google', 'natural blackhead remedies  <a href=  > http://tramadol.guildwork.com </a>  herbal incense bulk  <a '),
(1460, 'Prestonsmato', 'jeremytbjorklund12@gmail.com', '81826587254', 'Virbalis', 'google', 'Great work I suggest this site to all my trainee close friends, the price is excellent also the pers'),
(1461, 'Kathrynlergo', 'alexpopov716253@gmail.com', '82139337288', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', ''),
(1462, 'Mike Michaelson\r\n', 'no-replykl@gmail.com', '81534479147', 'Willemstad', 'google', 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your schooloo.com website? \r\nHaving a'),
(1463, 'Jiiqsec', 'dgray@capitalmgmtinc.com\r\n', '83435362175', '', 'google', 'Lduwujd \r\n \r\nadmin@asterios.tm\r\n    :'),
(1464, 'Russellcoino', 'tranicspit80@yandex.ru', '84771999663', 'Suva', 'google', ''),
(1465, 'nam858927flebno', 'dima.admak.admakin@mail.ru', '87179712514', 'Klimmen', 'google', 'mns858927rttyneg Udgdz8u kpY7 FP8zlFs'),
(1466, 'nam797830krya', 'tripunova.96@mail.ru', '88868159559', 'Klimmen', 'google', 'mps797830uttjr sNNt4hS RH8t V82G5ZR'),
(1467, 'Dannyzed', 'connorcoleman3761@gmail.com', '82593548676', '', 'google', 'I want to find good clinic in my city. What do you think about this -  \r\n<a href=https://crestwood.a'),
(1468, 'LarryHeinc', 'fevgen708@gmail.com', '82812358423', 'Florida', 'google', 'Ð“Ð°Ð´Ð°ÑŽ Ð´Ð¸ÑÑ‚Ð°Ð½Ñ†Ð¸Ð¾Ð½Ð½Ð¾ 30 Ð»ÐµÑ‚. ÐžÑÑ‚Ð°Ð²ÑŒÑ‚Ðµ Ð¢ÐžÐ›Ð¬ÐšÐž !!! ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ '),
(1469, 'GeorgePed', 'f.grek@avalins.com', '83976612795', 'Moscow', 'google', ''),
(1470, 'JamesWep', 'k.hudovich@jodas.enersets.com', '87363392877', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', ''),
(1471, 'num858927krya', 'dima.admak.admakin@mail.ru', '82231833641', 'Klimmen', 'google', 'mys858927uttjr y3edVXy 5Y1M wVcWYsP'),
(1472, 'ColemanExtib', 'biriukovigor399@yandex.ru', '85544186221', 'Boston', 'google', 'Our systems are verified, authenticated and encrypted by the most advanced digital security certific'),
(1473, 'num797830tetcher', 'tripunova.96@mail.ru', '89648121628', 'Klimmen', 'google', 'mns797830uttjr 6dQsSqZ Z4mG XQWEMCC'),
(1474, 'MashaKymuh9633', 'mashakccaaBoype6529@gmail.com', '89295858481', 'Moscow', 'google', ' Captcha cant protect you from XEvil 5.0. \r\n \r\nWant to post your promo to 12.000.000 (12 MILLIONS!) '),
(1475, 'DarrellIgnix', 'qailamiaqailamia@gmail.com', '84652968769', 'Praia', 'google', ''),
(1476, 'Richardwal', 'leva6778@gmail.com', '83919712238', 'Maputo', 'google', '<a href=https://masterholodov.ru/>Ñ€ÐµÐ¼Ð¾Ð½Ñ‚ Ñ…Ð¾Ð»Ð¾Ð´Ð¸Ð»ÑŒÐ½Ð¸ÐºÐ°</a>'),
(1477, 'Mep', '1vj45j5e@yahoo.com', '84258917778', 'Kaduna', 'google', 'Hi, this is Jeniffer. I am sending you my intimate photos as I promised. https://tinyurl.com/ydqe8r4'),
(1478, 'Mep', 'npksv9p0@hotmail.com', '87811587416', 'Kaduna', 'google', 'Hi, this is Julia. I am sending you my intimate photos as I promised. https://tinyurl.com/yzf5o5ta');
INSERT INTO `bulk_contact` (`contact_id`, `name`, `email`, `mobile`, `address`, `school_name`, `nature_requirment`) VALUES
(1479, 'BrianJal', 'zukovroman743@gmail.com', '81651849652', 'Molodesjnaja', 'google', ' \r\n<a href=https://www.instagram.com/chudi_shariki/>Ð§ÑƒÐ´Ð¸Ð¨Ð°Ñ€Ð¸ÐºÐ¸</a>'),
(1480, 'PandEl', 'm142@m142.ru', '84848497921', 'Piran', 'google', 'ÐžÐ³Ñ€Ð¾Ð¼Ð½Ð¾Ðµ ÑÐ¿Ð°ÑÐ¸Ð±Ð¾ Ð·Ð° Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸ÑŽ. \r\n<a href=https://maps.google.bi/url?q=ht'),
(1481, 'RobertIdecy', 'ilaz@course-fitness.com', '83443866168', 'Bereeda', 'google', 'æ­å®¢ä½¬ç²¾å“å’–å•¡ ï½œOKLAO COFFEEï½œè¦çš®å•†åŸŽï½œå’–å•¡è±†ï½œæŽ›è€³ï½œç²¾å“å’–å•¡ï½œå’–å•¡ç¦®'),
(1482, 'RaymondCor', 'yojd4@course-fitness.com', '81962996174', 'Yangon', 'google', 'Game LIFE éŠæˆ²æƒ…å ± \r\n \r\n \r\nhttps://gamelife.tw/portal.php'),
(1483, 'Ralphshicy', 'fxo@course-fitness.com', '85496458283', 'Jbeil', 'google', 'ç¬¬ä¸€å€ŸéŒ¢ç¶²æ“æœ‰å…¨å°æœ€å¤šçš„å€ŸéŒ¢è³‡è¨Šã€‚è³‡è¨Šæœ€é½Šå…¨ï¼Œç•¶èˆ–æ¥­ï¼Œä¿¡è²¸æ¥­ï¼Œåœ¨ç¬¬ä'),
(1484, 'Lewisjat', '5xo@course-fitness.com', '85335849547', 'Le Mans', 'google', 'Game LIFE éŠæˆ²æƒ…å ± \r\n \r\n \r\nhttps://gamelife.tw/portal.php'),
(1485, 'NadiaChari', 'markmorozov212@gmail.com', '81116539924', 'Ð Ð¾ÑÑ‚Ð¾Ð² Ð½Ð° Ð”Ð¾Ð½Ñƒ', 'google', '<b>Ð¡Ð¿Ð¾Ñ‚Ñ‹ Ð¸ Ð¸Ñ… Ð¼ÐµÑÑ‚Ð¾ Ð² Ð¸Ð½Ñ‚ÐµÑ€ÑŒÐµÑ€Ðµ</b> \r\nÐŸÑ€Ð¾Ð¸Ð·Ð²Ð¾Ð´Ð¸Ñ‚ÐµÐ»Ð¸, ÐºÐ¾Ñ‚Ð¾Ñ€Ñ'),
(1486, 'Gleb#Ston[Upecikjeuzqhihiv,2,5]', 'svetzurich1@yandex.ru', '87232673137', 'Tiraspol', 'google', 'ÐšÐ°Ðº Ð²ÑÐµÐ³Ð´Ð° Ð±Ñ‹Ñ‚ÑŒ ÐºÑ€Ð°ÑÐ¸Ð²Ð¾Ð¹ Ð¸ Ð¿Ñ€Ð¸Ð²Ð»ÐµÐºÐ°Ñ‚ÐµÐ»ÑŒÐ½Ð¾Ð¹? <a href=http://klub'),
(1487, 'Walterdeark', 'scns3@course-fitness.com', '87455333198', 'Nis', 'google', 'é»žå­æ•¸ä½ç§‘æŠ€æœ‰é™å…¬å¸ \r\n \r\nhttps://spot-digital.com.tw/'),
(1488, 'Lamarrog', 'mobilepazzles@yandex.com', '87112934859', 'Porsgrunn', 'google', 'https://subscribe.ru/group/pressa/17219210/ \r\nhttps://ruarchitectdesign.mirtesen.ru/blog/43246139104'),
(1489, 'Winerdiubs', 'josephrobertsonw@gmail.com', '87857817654', 'Rostov', 'google', 'Ð’ÐµÐ´ÑƒÑ‰Ð¸Ð¹ Ð°Ð¼ÐµÑ€Ð¸ÐºÐ°Ð½ÑÐºÐ¸Ð¹ ÑÐºÑÐ¿ÐµÑ€Ñ‚ Ð¿Ð¾ Ð²Ð¸Ñ€ÑƒÑÐ°Ð¼ Ð¿Ñ€Ð¾Ñ„ÐµÑÑÐ¾Ñ€ Ð­Ð½Ñ‚'),
(1490, 'DouglasPrady', 'inscoryb80@yandex.ru', '88789238212', 'Gray Mountain', 'google', ''),
(1491, 'LeslieDub', 'felixbeer645@gmail.com', '88382812581', 'Paphos', 'google', ''),
(1492, 'LeslieDub', 'felixbeer645@gmail.com', '83337224756', 'Paphos', 'google', '<a href=https://hydra4center.com/>Hydraruzxpnew4af</a> â€” ÑÐ°Ð¼Ð°Ñ ÐºÑ€ÑƒÐ¿Ð½Ð°Ñ Ñ‚Ð¾Ñ€Ð³Ð¾Ð²Ð°Ñ'),
(1493, 'Shermanbup', 'yourmail@gmail.com', '88478488132', 'Orange Walk', 'google', 'Cung cáº¥p Accounts Twitter cá»• 2009>2011 -  Nick Gmail New Cháº¥t lÆ°á»£ng cao : https://CloneVia.'),
(1494, 'Rapidlex Promotion', 'promotion.rapidlex@seznam.cz', '86327263861', 'Miami', 'google', 'Any Language. Any Application. RapidLex Desktop Application for Windows 7/8/10, macOS & Linux. \r\nAre'),
(1495, 'Esmee86', 'mary2zl7@zohomail.eu', '81781418176', 'Tiller', 'google', 'Hi baby! my name is Diane. \r\nDo you want to see a beautiful female body? Here are my erotic photos -'),
(1496, 'jessicalm60', 'mariagray6323321+jewell@gmail.com}', '82716681622', '', 'google', 'My new hot project|enjoy new website\r\nhttp://robbrosamerpornlowerbrule.energysexy.com/?priscilla \r\n '),
(1497, 'Mike Wainwright\r\n', 'no-replykl@gmail.com', '85592392464', 'Albany', 'google', 'Hi \r\n \r\nWe will enhance your Local Ranks organically and safely, using only whitehat methods, while '),
(1498, 'TarasikUk777', 'niklajmironov@gmail.com', '82368249581', '', 'google', 'ÐŸÐ¾Ð»Ð½Ñ‹Ð¹ ÑÐ¿ÐµÐºÑ‚Ñ€ ÑƒÑÐ»ÑƒÐ³ Ð¿Ð¾ SIP Ð·Ð²Ð¾Ð½ÐºÐ°Ð¼ Ð¸ SMS Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ð¹. \r\n \r\nÐÐ'),
(1499, 'DavidClida', 'sa.n.d.y.a.ren.s.yhai.ry@gmail.com', '86369375542', 'Akron', 'google', ''),
(1500, 'iphonePurb.', 'maximmad222@yandex.ru', '85298583745', ' Ð§ÐµÐ»ÑÐ±Ð¸Ð½ÑÐº,', 'google', 'Ð˜Ð³Ñ€Ñ‹ +Ð´Ð»Ñ xbox ÐºÑƒÐ¿Ð¸Ñ‚ÑŒ Ð½ÐµÐ´Ð¾Ñ€Ð¾Ð³Ð¾ Ð¸ ÑÑ‚Ð°Ð½ÑŒ Ð¼ÐµÑ€Ð¾Ð¼ Ð³Ð¾Ñ€Ð¾Ð´Ð° ÑƒÐ¿Ñ€Ð°Ð²'),
(1501, 'TarasikUk777', 'niklajmironov@gmail.com', '86311319738', '', 'google', 'ÐŸÐ¾Ð»Ð½Ñ‹Ð¹ ÑÐ¿ÐµÐºÑ‚Ñ€ ÑƒÑÐ»ÑƒÐ³ Ð¿Ð¾ SIP Ð·Ð²Ð¾Ð½ÐºÐ°Ð¼ Ð¸ SMS Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ð¹. \r\n \r\nÐÐ'),
(1502, 'lk876rktfyjftvytgfuhjdf65tu https://forms.yandex.ru/u/6d7a5464da8de7cc496e66dd', 'FelicianaAksenova83@mail.ru', 'FelicianaAksenova83@mail.ru', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'google', 'jytcfjktcy5tjxsdhe https://forms.yandex.ru/u/6d7a26d6da42799a989db2d4'),
(1503, 'Barbaragox', 'asp8@4ttmail.com', '84418797999', 'Jbeil', 'google', '<a href=https://www.assland.net/>ebony big round ass</a> \r\n<a href=https://www.asspornz.com/>assporn'),
(1504, 'MatthewBuh', 'remarua@yandex.com', '83985762482', 'Sishen', 'google', 'Ð ÐµÐ¼Ð¾Ð½Ñ‚Ð¸Ñ€ÑƒÐµÐ¼ Ð¿Ð»Ð°Ð½ÑˆÐµÑ‚Ñ‹ Ð¸ Ð´Ñ€ÑƒÐ³ÑƒÑŽ ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ð½ÑƒÑŽ Ñ‚ÐµÑ…Ð½Ð¸ÐºÑƒ Ñƒ Ð'),
(1505, 'Jamestup', 'no-replyFusEpiff@gmail.com', '85355237456', 'Nis', 'google', 'Good day!  schooloo.com \r\n \r\nWe offer \r\n \r\nSending your message through the feedback form which can '),
(1506, 'Joshuacom', 'visie.musical@tele2.nl', '88255834847', 'Stirling', 'google', 'Hey, \r\n \r\nBest music mp3/FLAC scene releases https://0dayflac.blogspot.com/'),
(1507, 'LarryMip', '%spinfile-names.dat%%spinfile-lnames.dat%%random-1-100%@base.mixwi.com', '86834347348', 'Kakamega', 'google', 'Trusted Online Casino Malaysia   http://gm231.com/download-now/#Download Now - More info!..'),
(1508, 'Mike Cook\r\n', 'no-replykl@gmail.com', '85487733654', 'Kaohsiung Municipality', 'google', 'Hi there \r\n \r\nI have just took an in depth look on your  schooloo.com for its SEO metrics and saw th'),
(1509, 'Josephsed', '121@mail.ru', '84313131895', 'Sumbe', 'google', 'https://maps.google.cz/url?sa=t&url=https://www.youtube.com/watch?v=tDFtQkUdiLs&t=2s\r\nhttps://maps.g'),
(1510, 'StacyDal', 'tasker.renetta@yahoo.com', '85656368533', 'Colonel Hill', 'google', ' \r\n \r\n <a href=https://mostbet-onlines.ru/mostbet-app-bd.php>mostbet app bd</a>   <a href=https://go'),
(1511, 'GlennDag', 'gerbert5456kk@bambo-mebel.top', '87477893592', 'NEW AMSTERDAM', 'google', '<a href=https://agrostory.com/>https://agrostory.com/</a> \r\n<a href=https://amir-agro.com.ua>https:/'),
(1512, 'RobertIdecy', 'ilaz@course-fitness.com', '83668456764', 'Bereeda', 'google', 'æ­å®¢ä½¬ç²¾å“å’–å•¡ ï½œOKLAO COFFEEï½œè¦çš®å•†åŸŽï½œå’–å•¡è±†ï½œæŽ›è€³ï½œç²¾å“å’–å•¡ï½œå’–å•¡ç¦®'),
(1513, 'Lewisjat', '5xo@course-fitness.com', '89116953516', 'Le Mans', 'google', 'Game LIFE éŠæˆ²æƒ…å ± \r\n \r\n \r\nhttps://gamelife.tw/portal.php'),
(1514, 'Ralphshicy', 'fxo@course-fitness.com', '83566376135', 'Jbeil', 'google', 'ç¬¬ä¸€å€ŸéŒ¢ç¶²æ“æœ‰å…¨å°æœ€å¤šçš„å€ŸéŒ¢è³‡è¨Šã€‚è³‡è¨Šæœ€é½Šå…¨ï¼Œç•¶èˆ–æ¥­ï¼Œä¿¡è²¸æ¥­ï¼Œåœ¨ç¬¬ä'),
(1515, 'Mep', 'i1cdikjd@gmail.com', '85671614397', 'Kaduna', 'google', 'Hi, this is Jenny. I am sending you my intimate photos as I promised. https://tinyurl.com/ye8ag44z'),
(1516, 'Briancatly', 'tuacosupp88@yandex.ru', '84823736873', 'Willemstad', 'google', ''),
(1517, 'Mep', 'h643vej7@yahoo.com', '83197556324', 'Kaduna', 'google', 'Hi, this is Jeniffer. I am sending you my intimate photos as I promised. https://tinyurl.com/ydjonmw'),
(1518, 'Henrysef', 'ok.o.b.el.ev.ro.8.1.@gmail.com', '82257939981', 'Rio Grande', 'google', 'tired eye remedies  <a href=  > https://alprazolam.jcink.net </a>  tailbone pain remedy  <a href= ht'),
(1519, 'num53393krya', 'zuben.1977@mail.ru', '84527351759', 'Klimmen', 'google', 'mes53393uttjr vJPXABm SM0G DZWLhYU'),
(1520, 'Vodawrica', 'ossianowaleksandr19942956@mail.ru', '81625281428', 'Nizhniy Novgorod', 'google', 'ÐœÑ‹ Ñ€Ð°Ð·Ð²Ð¾Ð·Ð¸Ð¼ Ð¿Ð¸Ñ‚ÑŒÐµÐ²ÑƒÑŽ Ð²Ð¾Ð´Ñƒ ÐºÐ°Ðº Ñ‡Ð°ÑÑ‚Ð½Ñ‹Ð¼, Ñ‚Ð°Ðº Ð¸ ÑŽÑ€Ð¸Ð´Ð¸Ñ‡ÐµÑÐºÐ'),
(1521, 'David Song', 'noreply@googlemail.com', '84136152649', 'Boston', 'google', 'Hello, \r\nThis is a consultancy and brokerage Firm specializing in Growth Financial Loan and Equity F'),
(1522, 'cherylmt69', 'nataliaof7@akira6210.kenta48.toshikokaori.xyz', '84272172826', '', 'google', 'Sexy photo galleries, daily updated collections\r\nhttp://infrayoungporn.oakharbor.lexixxx.com/?molly '),
(1523, 'MichaelOrast', 'qaadz@course-fitness.com', '84563556912', 'Walvis Bay', 'google', 'XYZ å£¯é™½è—¥æ˜¥è—¥å°ˆè³£åº— å¤§é‡è³¼è²·æœ‰å„ªæƒ  \r\n \r\nhttps://man-r20.com/'),
(1524, 'Ð’ÐÐœ ÐÐÐ§Ð˜Ð¡Ð›Ð•Ð ÐŸÐ•Ð Ð•Ð’ÐžÐ” https://xxxconent.biz/go/my3tgzrvmq5dkojugy\r\n', 'e2rowland@gmail.com\r\n', '87656331843', 'Gliwice', 'google', 'Watch video and get from me 3OO $ to your account. \r\nOnly within 5 hours! \r\nHurry up! Find out Detai'),
(1525, 'nem3704115krya', 'khurgino@mail.ru', '81136922914', 'Klimmen', 'google', 'mps3704115rttyneg LCSb5hf O7Cw fE2tQRM'),
(1526, 'nam53393krya', 'zuben.1977@mail.ru', '84197877577', 'Klimmen', 'google', 'mps53393rttyneg kHyK3Ne eQ2N qrXzGTm'),
(1527, 'nam53393tetcher', 'zuben.1977@mail.ru', '83794987741', 'Klimmen', 'google', 'mns53393uttjr dJUDPe7 cE8d ba6SmOo'),
(1528, 'Jasonorams', 'jims77866@yahoo.com', '88847663769', 'Duverge', 'google', '\r\nHello\r\n\r\nMany People are dying nowadays because of Covid-19 so you must find out WHO IS OUR SAVIOR'),
(1529, 'DanielAxona', 'evalidator.test@gmail.com', '85443558232', 'Debrecen', 'google', 'Ð—Ð´Ñ€Ð°Ð²ÐµÐ¹Ñ‚Ðµ, Ð¸ÑÐºÐ°Ñ… Ð´Ð° Ð·Ð½Ð°Ð¼ Ñ†ÐµÐ½Ð°Ñ‚Ð° Ð²Ð¸.'),
(1530, 'TarasikUk777', 'niklajmironov@gmail.com', '89356833523', '', 'google', 'ÐšÑ€Ð°Ñ‚ÐºÐ¾ÑÑ€Ð¾Ñ‡Ð½Ð°Ñ Ð°Ñ€ÐµÐ½Ð´Ð° ÑÐ¸Ð¼-ÐºÐ°Ñ€Ñ‚, Ð´Ð»Ñ ÑÐ¼Ñ. \r\n \r\nÐ‘ÐµÐ·Ð»Ð¸Ð¼Ð¸Ñ‚ Ð½Ð° Ñ'),
(1531, 'chrisol3', 'yr69@yoshito85.sorataki.in.net', '87332471265', '', 'google', 'Sexy photo galleries, daily updated collections\r\nhttp://bigthumbporn.allproblog.com/?tatiana \r\n\r\n bi'),
(1532, 'nam3704115flebno', 'khurgino@mail.ru', '83433721159', 'Klimmen', 'google', 'mns3704115errtbh e2UKbZR xK6m m2EshKq'),
(1533, 'Richardred', 'glukhina.1998@mail.ru', '81421553591', 'Santa Rosa', 'google', 'Ð´Ð¾Ð±Ñ€Ð¾Ð³Ð¾ Ð´Ð½Ñ Ð²ÑÐµÐ¼ Ð¿Ð¾ÑÐ²Ð¸Ð»ÑÑ Ð½Ð¾Ð²Ñ‹Ð¹ Ð¿Ð°ÑÐ¸Ð²Ð½Ð½Ñ‹Ð¹ Ð·Ð°Ñ€Ð±Ð°Ñ‚Ð¾Ðº Ð¿Ð¾ '),
(1534, 'LeighCoigo', 'mg1@4ttmail.com', '82839119539', 'Udon Thani', 'google', 'CARE FOR <a href=https://www.teachermaturepics.com/>teacher mature pics</a> of high-resolution pics '),
(1535, 'Danielpep', 'bbairypnzj@rambler.ru', '83191318532', 'Kulim', 'google', 'Hi, here on the forum guys advised a cool Dating site, be sure to register - you will not REGRET it '),
(1536, 'nym164695krya', 'kostk.75@mail.ru', '85783955774', 'Klimmen', 'google', 'mys164695utr HvCfAgE wVOR nrmLxRu'),
(1537, 'num164695krya', 'velit-81@mail.ru', '82236692619', 'Klimmen', 'google', 'mss164695ngkyt qcriTb2 vPlp NTJcYq7'),
(1538, 'Mike Elmers\r\n', 'no-replykl@gmail.com', '86111574171', 'Boston', 'google', 'Hello \r\n \r\nWe all know the importance that dofollow link have on any website`s ranks. \r\nHaving most '),
(1539, 'JosephScore', 'smolovanou5293@gmail.com', '87178271893', 'Stirling', 'google', '<a href=https://uslugi.yandex.ru/profile/IgorSyzranov-1598463?afterWorkerPage=1&occupationId=%2Fremo'),
(1540, 'Elceroalp', 'guy@teamspeakradioguy.com', '83459638418', 'Banepa', 'google', ''),
(1541, 'Thomasten', 'sofyamarzl1f@rambler.ru', '88998298362', 'Algiers', 'google', 'Ebay Ð¾Ñ‚ÐºÐ°Ð·Ñ‹Ð²Ð°ÐµÑ‚ÑÑ Ð¾Ñ‚ PayPal.\r\nÐ¢Ð°ÐºÐ¸Ð¼ Ð¾Ð±Ñ€Ð°Ð·Ð¾Ð¼, ÐºÐ°Ð¶Ð´Ñ‹Ð¹ Ð¸Ð½Ð²ÐµÑÑ‚Ð¾Ñ€'),
(1542, 'Richardred', 'glukhina.1998@mail.ru', '88115364258', 'Santa Rosa', 'google', 'Ð´Ð¾Ð±Ñ€Ð¾Ð³Ð¾ Ð´Ð½Ñ Ð²ÑÐµÐ¼ Ð¿Ð¾ÑÐ²Ð¸Ð»ÑÑ Ð½Ð¾Ð²Ñ‹Ð¹ Ð¿Ð°ÑÐ¸Ð²Ð½Ð½Ñ‹Ð¹ Ð·Ð°Ñ€Ð±Ð°Ñ‚Ð¾Ðº Ð¿Ð¾ '),
(1543, 'EugeneDog', '12gyyaqwdst55r@gmail.com', '89731213316', 'Duverge', 'google', '####### OPVA ######## \r\nULTIMATE Ð Ð¢ÐÐ¡ COLLECTION \r\nNO PAY, PREMIUM or PAYLINK \r\nDOWNLOAD ALL Ð¡Ð'),
(1544, 'Richardred', 'glukhina.1998@mail.ru', '82313821411', 'Santa Rosa', 'google', 'Ð´Ð¾Ð±Ñ€Ð¾Ð³Ð¾ Ð´Ð½Ñ Ð²ÑÐµÐ¼ Ð¿Ð¾ÑÐ²Ð¸Ð»ÑÑ Ð½Ð¾Ð²Ñ‹Ð¹ Ð¿Ð°ÑÐ¸Ð²Ð½Ð½Ñ‹Ð¹ Ð·Ð°Ñ€Ð±Ð°Ñ‚Ð¾Ðº Ð¿Ð¾ '),
(1545, 'Richardred', 'glukhina.1998@mail.ru', '87732111944', 'Santa Rosa', 'google', 'Ð´Ð¾Ð±Ñ€Ð¾Ð³Ð¾ Ð´Ð½Ñ Ð²ÑÐµÐ¼ Ð¿Ð¾ÑÐ²Ð¸Ð»ÑÑ Ð½Ð¾Ð²Ñ‹Ð¹ Ð¿Ð°ÑÐ¸Ð²Ð½Ð½Ñ‹Ð¹ Ð·Ð°Ñ€Ð±Ð°Ñ‚Ð¾Ðº Ð¿Ð¾ '),
(1546, 'MiguelTam', '45@yandex.ru', '87178744336', 'Paphos', 'google', '<a href=http://www.youtube.com/watch?v=hSFERZvzJYs>Ð ÒÐ¡Ð‚Ð Ñ‘Ð¡ÐƒÐ¡â€šÐ Ñ‘Ð Â°Ð Ð…Ð¡ÐƒÐ Ñ”Ð Â°Ð¡Ð'),
(1547, 'JerryPlall', 'ry.z.hon.k.ovk.ar.l@gmail.com', '88173394338', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', ''),
(1548, 'Kennethgew', 'k7cpa3@course-fitness.com', '87428541774', 'Suva', 'google', 'å¤ªé”æ•¸ä½åª’é«” \r\n \r\n \r\nhttps://deltamarketing.com.tw/'),
(1549, 'DarwinKet', 'w.a.s.er.io.k.2.10@gmail.com\r\n', '82961731872', 'Toledo', 'google', 'Slot o pol mega jack free slot games  <a href=https://sites.google.com/view/sunandmoonslotmachinefre'),
(1550, 'marvinqp2', 'qb69@sora2510.satoshi21.sorataki.in.net', '81399466855', '', 'google', 'Hot photo galleries blogs and pictures\r\nhttp://movie.instasexyblog.com/?elle \r\n\r\n anime porn online '),
(1551, 'visaSheab', 'mailbox@flipping-housess.com', '82475478218', 'New York', 'google', '<a href=https://flipping-housess.com/kommercheskaja-nedvizhimost-v-ssha/>ÐºÐ¾Ð¼Ð¼ÐµÑ€Ñ‡ÐµÑÐºÐ°Ñ Ð½'),
(1552, 'Richardred', 'glukhina.1998@mail.ru', '87193838461', 'Santa Rosa', 'google', 'Ð´Ð¾Ð±Ñ€Ð¾Ð³Ð¾ Ð´Ð½Ñ Ð²ÑÐµÐ¼ Ð¿Ð¾ÑÐ²Ð¸Ð»ÑÑ Ð½Ð¾Ð²Ñ‹Ð¹ Ð¿Ð°ÑÐ¸Ð²Ð½Ð½Ñ‹Ð¹ Ð·Ð°Ñ€Ð±Ð°Ñ‚Ð¾Ðº Ð¿Ð¾ '),
(1553, 'AndrewFer', 'kremleyrod@mail.ru', '81327152574', 'Nuuk', 'google', 'ÐŸÑ€Ð¸Ð²ÐµÑ‚ \r\nÐÐ°ÑˆÑ‘Ð» Ð² ÑÐµÑ‚Ð¸ Ð½ÑƒÐ¶Ð½Ñ‹Ðµ ÑÐ°Ð¹Ñ‚Ñ‹ \r\n \r\nhttp://agent-banka.ru \r\n \r\n<a hre'),
(1554, 'FrankNen', 'smolovanou5293@gmail.com', '81289361796', 'Kaohsiung Municipality', 'google', '<a href=http://www.youtube.com/watch?v=UGP1DzcqbWw>Ð ÒÐ¡Ð‚Ð Ñ‘Ð¡ÐƒÐ¡â€šÐ Ñ‘Ð Â°Ð Ð…Ð¡ÐƒÐ Ñ”Ð Â°Ð¡Ð'),
(1555, 'Carlosdab', 'rwby@course-fitness.com', '85164269179', 'Mankon Bamenda', 'google', 'ç¬¬ä¸€å€ŸéŒ¢ç¶²-å€ŸéŒ¢,å°é¡å€Ÿæ¬¾,å°é¡å€ŸéŒ¢,è­‰ä»¶å€Ÿæ¬¾,è­‰ä»¶å€ŸéŒ¢,èº«åˆ†è­‰å€Ÿæ¬¾,èº«åˆ†è­‰'),
(1556, 'JesseKag', 'dax7d@course-fitness.com', '81618973698', 'Santa Rosa', 'google', 'Game LIFE éŠæˆ²æƒ…å ± \r\n \r\n \r\nhttps://gamelife.tw/portal.php'),
(1557, 'RandalRax', 'nwzn@course-fitness.com', '84633549195', 'Praia', 'google', 'ç¬¬ä¸€å€ŸéŒ¢ç¶²æ“æœ‰å…¨å°æœ€å¤šçš„å€ŸéŒ¢è³‡è¨Šã€‚è³‡è¨Šæœ€é½Šå…¨ï¼Œç•¶èˆ–æ¥­ï¼Œä¿¡è²¸æ¥­ï¼Œåœ¨ç¬¬ä'),
(1558, 'Hiramwes', 'killgerti1998@gmail.com', '86118676568', 'Hoskins', 'google', 'http://gregoryzaaw342.bravesites.com/entries/general/%D0%BA%D1%83%D0%BF%D0%B8%D1%82%D1%8C-1%D1%81-%D'),
(1559, 'CharlesDromO', 'zdqk@course-fitness.com', '88979749997', 'Santa Maria', 'google', 'XYZ å£¯é™½è—¥æ˜¥è—¥å°ˆè³£åº— å¤§é‡è³¼è²·æœ‰å„ªæƒ  \r\n \r\nhttps://man-r20.com/'),
(1560, 'Mike Dyson\r\n', 'no-replykl@gmail.com', '87453923961', 'Willemstad', 'google', 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your website? \r\nHaving a high DA scor'),
(1561, 'JeffreyAntex', 'alena.isupova.78@mail.ru', '88623136998', 'Kaduna', 'google', 'People inveterately look to to vaping in an promise to <a href=https://www.vapeperson.com/>vape shop'),
(1562, 'Antoniocxx', 'br.abus.aq.u.a@gmail.com', '87132653459', 'Lviv', 'google', 'Ð”Ð¾Ð±Ñ€Ð¾Ð³Ð¾ Ð²Ñ€ÐµÐ¼ÐµÐ½Ð¸ ÑÑƒÑ‚Ð¾Ðº Ð³Ð¾ÑÐ¿Ð¾Ð´Ð° \r\nÐÐ°ÑˆÐ° ÐºÐ¾Ð¼Ð¿Ð°Ð½Ð¸Ñ Ð¼Ñ‹ Ð·Ð°Ð½Ð¸Ð¼Ð'),
(1563, 'Normansow', 'daniillumin21@mail.ru', '82454533727', 'Havana', 'google', '<a href=https://bit.ly/3CsskBw><img src=\"https://i.imgur.com/v2ma907.gif\"></a> \r\n \r\nÐ¡Ñ€ÐµÐ´Ð¸ Ð¸Ð³Ñ'),
(1564, 'Matthewsenny', '3@nicemail.club', '83658136785', 'Falmouth', 'google', 'first-rate wench pictures <a href=https://pornotaran.com>https://pornotaran.com</a>'),
(1565, 'petrovsckygar', 'indiakirsova@yandex.ru', '82778765269', 'Al Manamah', 'google', 'Ð’ÑÐµ Ð¿Ñ€Ð¾ Ð¼Ð°ÑÑÐ°Ð¶ Ð¼ÐµÐ´Ð¸Ñ†Ð¸Ð½ÑÐºÐ¸Ð¹, ÑÐ¿Ð¾Ñ€Ñ‚Ð¸Ð²Ð½Ñ‹Ð¹, Ð´ÐµÑ‚ÑÐºÐ¸Ð¹, ÐºÐ¾ÑÐ¼ÐµÑ'),
(1566, 'Francispouri', 'henk.akkerman5@tele2.nl', '81526764522', 'Parnu', 'google', 'Hi, \r\n \r\nBest Music Drum N Bass 2021 https://scenednb.blogspot.com/ download private server. \r\n \r\nBe'),
(1567, 'KennethTut', 'reg19112021@4ttmail.com', '89714445379', 'Nove Mesto nad Vahom', 'google', ''),
(1568, 'Jeremybix', 'pupyrkinvasili@yandex.ru', '89672799258', 'Skive', 'google', 'https://images.google.as/url?q=https://versus-nsk.ru/ \r\nhttps://images.google.off.ai/url?q=https://v'),
(1569, 'florovanica', 'polyaklubnikina@yandex.ru', '83266548518', 'Kaohsiung Municipality', 'google', 'ÐŸÐ¸Ñ‚Ð¾Ð¼Ð½Ð¸ÐºÐ¸ Ð¸ Ð´Ñ€ÐµÑÑÐ¸Ñ€Ð¾Ð²ÐºÐ° ÑÐ¾Ð±Ð°Ðº Ð² Ð¡Ð°Ñ€Ð°Ñ‚Ð¾Ð²Ðµ <a href=http://kinologiy'),
(1570, 'galyaniktova', 'galyaniktova@yandex.ru', '81184683632', 'Ho Chi Minh City', 'google', 'ÐšÑƒÐ¿Ð¸Ñ‚ÑŒ Ñ…Ð¸Ð¼Ð¸ÑŽ (ÐºÐ¾Ð½Ñ†ÐµÐ½Ñ‚Ñ€Ð°Ñ‚Ñ‹) Ð´Ð»Ñ Ð¾Ñ‡Ð¸ÑÑ‚ÐºÐ¸ Ñ„Ð¾Ñ€ÑÑƒÐ½Ð¾Ðº Ð¸ Ð¸Ð½Ð¶ÐµÐ'),
(1571, 'citascharddet', 'citaschardSwedo@gmail.com', '88368934545', 'Istanbul', 'google', '\r\n<a href=https://citascomujeres.blogspot.com/2020/11/citas-con-mujeres.html>como empezar a tener ci'),
(1572, 'Bruceblusy', 'glukhina.1998@mail.ru', '84824897654', 'Tashkent', 'google', ''),
(1573, 'Matthewhulty', 'hkaakspmwa@rambler.ru', '87664638934', 'Sanaa', 'google', 'Hi, I would like to meet you, come to my page <a href=https://bit.ly/30hKZCx>https://bit.ly/30hKZCx<'),
(1574, 'WalterDip', 'gerard-maylos@tele2.nl', '84278521213', 'Gliwice', 'google', 'Hello, \r\n \r\nDrum N Bass music private server: https://scenednb.blogspot.com/ \r\n \r\nBest regards, Walt'),
(1575, 'DoyleVipse', 'frankzane69@gmail.com', '85235159381', 'Jbeil', 'google', 'Dear friend!  You like to play computer games and Xbox?  We have a lot of good offers for you at htt'),
(1576, 'Bruceblusy', 'glukhina.1998@mail.ru', '82987158455', 'Tashkent', 'google', ''),
(1577, 'JamesGot', 'nlvb@course-fitness.com', '81948728212', 'Taiping', 'google', 'é»žå­æ•¸ä½ç§‘æŠ€æœ‰é™å…¬å¸ \r\n \r\nhttps://spot-digital.com.tw/'),
(1578, 'Naics', 'hahwddfk@gmail.com', '87436168361', 'Yanahuara', 'google', ' ilman reseptiÃ¤ \r\n \r\n \r\n => http://herbal-remedies.be/e/farmal/.html \r\n \r\n. \r\n. \r\n. \r\n. \r\n. \r\n. \r\n.'),
(1579, 'HerbertSport', 'mymail@mailforme.club', '83323691413', 'Udon Thani', 'google', ''),
(1580, 'Dixiegycle', 'lomova.ver.2021@gmail.com', '86889219349', 'La Primavera', 'google', 'https://catsndogs-answers.com/8051-are-akitas-a-large-dog-breed.html\r\nhttps://catsndogs-answers.com/'),
(1581, 'Lenasen', 'lenawe.tzel69.4@gmail.com', '89562549361', 'San Miguel de Tucuman', 'google', '<a href=https://processserverlosangelesca.xyz>process server los angeles </a>'),
(1582, 'MiltonBoate', 'pdaria8875@yandex.ru', '88254728369', '', 'google', 'http://zazebok.ru/iso/lele \r\n \r\n \r\nDeutsche Bahn provides frequent services to Cologne, taking about'),
(1583, 'BryanDript', 'asiat111@outlook.com', '86661872852', 'Nove Mesto nad Vahom', 'google', ''),
(1584, 'Tuyetjab', 'lyyfi5t2n@gmail.com', '86454496654', 'California Westminster', 'google', ''),
(1585, 'Bruceblusy', 'glukhina.1998@mail.ru', '85531787755', 'Tashkent', 'google', ''),
(1586, 'JamesDag', 'ok.o.b.el.ev.r.o.8.1.@gmail.com', '81752392893', 'Comilla', 'google', 'zacatecas drug war  <a href=  > https://huva.com.mx/trankes.html </a>  hang over remedies  <a href= '),
(1587, 'Williamasype', 'dorothytawnya@onebyair.com', '81754721213', 'Stirling', 'google', ''),
(1588, 'Kiridifkk', 'info@79t.ru', '87136395936', 'Moscow', 'google', '79t.ru - ÑÐ°Ð¼Ñ‹Ðµ Ð´Ð¾ÑÑ‚ÑƒÐ¿Ð½Ñ‹Ðµ Ð°Ð²Ð¸Ð°Ð±Ð¸Ð»ÐµÑ‚Ñ‹'),
(1589, 'ThomasDek', 'yourmail@gmail.com', '83159989965', 'Istanbul', 'google', ''),
(1590, 'Bruceblusy', 'glukhina.1998@mail.ru', '87286441351', 'Tashkent', 'google', ''),
(1591, 'Jimmydrera', 'jeansanchez4859@gmail.com', '89773612726', 'San Vicente De Tagua Tagua', 'google', 'ÐšÐ°Ð»Ð¸Ð±Ñ€Ð¾Ð²ÐºÐ° Ð¿Ñ€Ð¾ÑˆÐ¸Ð²Ð¾Ðº Ð­Ð‘Ð£ Ð½Ð° Ð·Ð°ÐºÐ°Ð·!!! \r\nÐ˜Ð¼ÐµÐµÐ¼ ÑÐ¾Ð±ÑÑ‚Ð²ÐµÐ½Ð½Ñ‹Ð¹ '),
(1592, 'Roberts Zuluf', 'rfzuluf@gmail.com', '83849994784', 'Miami', 'google', 'Hi \r\nHow are you? I wanted to reach out to you and verify that email was a good way to reach you or '),
(1593, 'Unlinly', 'leuh.a.ten.numb@gmail.com', '89684793994', 'Freising', 'google', 'medicaÃ§Ã£o remÃ©dio http://chimatamusic.net/db/viewtopic.php?p=2016352#2016352 com desconto SÐ“Ðˆo '),
(1594, 'Patrickhobby', 'paatelpreema@gmail.com', '84251241592', 'Andorra La Vella', 'google', 'Pelisplus Gratis HD Espanol \r\nhttps://www.pelisplus2.online'),
(1595, 'MartinSen', 'ewdokiya4fwot@rambler.ru', '89223328374', 'La Primavera', 'google', ' \r\nÐ¢ÐµÐ»ÐµÐ³Ñ€Ð°Ð¼ ÐºÐ°Ð½Ð°Ð» Ð¾ Ð°Ð²Ñ‚Ð¾ https://t.me/Automania/1508   '),
(1596, 'Charlesrem', 'jakky@internet.ru', '84168513834', 'Boden', 'google', 'ufabet à¹€à¸›à¹‡à¸™à¸šà¸£à¸´à¸©à¸±à¸—à¸—à¸µà¹ˆà¹ƒà¸«à¹‰à¸šà¸£à¸´à¸à¸²à¸£à¸„à¸§à¸²à¸¡à¸šà¸±à¸™à¹€à¸—'),
(1597, 'igrasonUNDOT', 'igrasontox@gmail.com', '86264986215', 'Baghdad', 'google', 'products \r\n \r\nour \r\n \r\nin \r\n \r\ncorrect \r\n \r\nthat \r\n \r\ncontact \r\n \r\n \r\n<a href=https://arethe10mg.blo'),
(1598, 'Gvfwgro', 'ariel@ledger.works\r\n', '81989361585', '', 'google', 'Rmxiasb \r\n \r\njdscott9@yahoo.com\r\n    :'),
(1599, 'MichaelPus', '58@yandex.ru', '88449549776', 'Baghdad', 'google', '<a href=http://www.youtube.com/watch?v=w_Skrm_sfVI&feature=youtu.be>Ð ÒÐ¡Ð‚Ð Ñ‘Ð¡ÐƒÐ¡â€šÐ Ñ‘Ð Â°Ð Ð'),
(1600, 'Mike Durham\r\n', 'no-replykl@gmail.com', '82456157483', 'Albany', 'google', 'Hello \r\n \r\nWe will increase your Local Ranks organically and safely, using only whitehat methods, wh'),
(1601, 'metssiny', 'metilenoviysiny@yandex.ru', '85537772374', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', 'Ð’ÐµÑ‰ÐµÑÑ‚Ð²Ð¾ Ð±Ñ‹Ð»Ð¾ ÑÐ¸Ð½Ñ‚ÐµÐ·Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¾ Ð² 1877 Ð³Ð¾Ð´Ñƒ Ð¸ Ð¸Ð·Ð½Ð°Ñ‡Ð°Ð»ÑŒÐ½Ð¾ Ð¿Ñ€Ð¸'),
(1602, 'Eugeneshupe', 'uvtr@course-fitness.com', '81349274346', 'San Vicente De Tagua Tagua', 'google', 'æ­å®¢ä½¬ç²¾å“å’–å•¡ ï½œOKLAO COFFEEï½œè¦çš®å•†åŸŽï½œå’–å•¡è±†ï½œæŽ›è€³ï½œç²¾å“å’–å•¡ï½œå’–å•¡ç¦®'),
(1603, 'PhilipJam', 'nicholenuozebe@mail.ru', '81286883662', 'Virbalis', 'google', 'Hello \r\n \r\ncheck this websites, really amazing! \r\n \r\nhttp://acwmzt.ru \r\n \r\nhttp://ryespd.ru \r\n \r\nhtt'),
(1604, 'masternnovPn', 'masternnov@gmail.com', '87748186434', 'ÐÐ¸Ð¶Ð½Ð¸Ð¹ ÐÐ¾Ð²Ð³Ð¾Ñ€Ð¾Ð´', 'google', 'https://www.instagram.com/masternnov/'),
(1605, 'Josephphema', 'yourmail@gmail.com', '82255349673', 'Delmas', 'google', ''),
(1606, 'Jamesreice', 'gioppamercstruale@gmail.com', '81643564748', 'Ulaanbaatar', 'google', ''),
(1607, 'Robertfaive', 'strauserugerardoy585@gmail.com', '83439263282', 'Doha', 'google', 'Ð¢ÑƒÑ‚ Ð¼Ð¾Ð¶Ð½Ð¾ Ð¿Ð¾Ð»ÑƒÑ‡Ð¸Ñ‚ÑŒ 100 Ñ€ÑƒÐ±Ð»ÐµÐ¹ Ð¿Ñ€Ð¾ÑÑ‚Ð¾ Ð·Ð° Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸ÑŽ, <a hre'),
(1608, 'aerosmart.ae', 'sales@aerosmart.ae', '+97150 278 6348', 'Moscow', 'google', 'I would like to clarify some information, \r\ncould you call me back please?'),
(1609, 'Philliptut', 'sales@aerosmart.ae', '82297365827', 'Hohenems', 'google', 'I would like to clarify some information, could you call me back please? \r\n \r\n<a href=https://www.ae'),
(1610, 'Frankgorse', 'ninzah5@bambo-mebel.top', '89681458378', 'Lar', 'google', ''),
(1611, 'IsaacArera', 'vroglina@mail.ru', '83768799826', 'Sumbe', 'google', ''),
(1612, 'Jasonexhab', 'davidboats404@polandmail.com', '87558778635', 'Banepa', 'google', 'Canadian drugs online pharmacies & purchase online without prescription \r\n* Customer Support Center '),
(1613, 'MalcolmLoall', 'id.aade.r.m.a@gmail.com', '84663494734', 'Wiley', 'google', 'Hello. And Bye.'),
(1614, 'JaSwats', 'kiraseevitch@yandex.ru', '81368821298', 'Moscow', 'google', '<a href=https://drawing-portal.com/glava-redaktirovanie-ob-ektov-v-autocade/team-scale-in-autocad.ht'),
(1615, 'JeffreyAntex', 'yana-medvedeva-69@inbox.ru', '85155155636', 'Kaduna', 'google', 'People usually look to to vaping in an whack to <a href=https://www.vapeperson.com/>vape shop</a> pu'),
(1616, 'NerotechHix', 'alexey98437@mail.ru', '88838735598', 'Lianyungang', 'google', 'Ð—Ð°Ð±ÑƒÐ´ÑŒÑ‚Ðµ Ð¿Ñ€Ð¾ Ð±Ð¾Ñ‚Ð¾Ð², Ñ‚Ð°ÐºÐ¸Ñ… ÐºÐ°Ðº Ñ! \r\nhttps://nerotech.ru \r\n+ Ð¡Ð°Ð¼Ð°Ñ Ð±ÐµÐ'),
(1617, 'Im Meredith. My sexy photo here https://forms.yandex.ru/u/61a5470e710d6ad83a04a1c2/success/#photo_id', 'figatar2012@live.nl', '81825375229', 'Kulim', 'google', 'Im Gertrude. My sexy photo here https://forms.yandex.ru/u/61a54716749996a408834369/success/#photo_id'),
(1618, 'GeraldRit', 'gertterni@gmail.com', '86664181139', 'NEW AMSTERDAM', 'google', 'https://www.bookmarks4all.win/kupit-1s-brest \r\nhttps://www.save-bookmarks.win/kupit-1s-borisov \r\nhtt'),
(1619, 'DevinHes', 'mendietaalainnah2001@mail.ru', '82395242858', 'Toledo', 'google', 'https://napoli1.com/go?https://ultimatesextv.com/category/czech-fantasy/\r\nhttp://sport-kids.ru/go.ph'),
(1620, 'NerotechHix', 'alexey98437@mail.ru', '89633635294', 'Lianyungang', 'google', ' \r\nÐ£ÑÑ‚Ð°Ð»Ð¸ Ð¾Ñ‚ Ð±Ð¾Ñ‚Ð¾Ð² Ñ‚Ð°ÐºÐ¸Ñ… ÐºÐ°Ðº Ñ? \r\nhttps://nerotech.ru \r\n+ Ð‘ÐµÐ·Ð¾Ð¿Ð°ÑÐ½Ð°Ñ'),
(1621, 'KennethwhaFT', 'vpsr@course-fitness.com', '87749956922', 'Linguere', 'google', 'Game LIFE éŠæˆ²æƒ…å ± \r\n \r\n \r\nhttps://gamelife.tw/portal.php'),
(1622, 'ModestoJeomb', 'dcygfk@rassx.xyz', '87913917553', 'Kakamega', 'google', ''),
(1623, 'AnnaKax', 'cosmetologycl233@gmail.com', '86154931642', 'Moscow', 'google', '---------------------------------------------------------------------------------- \r\n<a href=https:/'),
(1624, 'AlexNuckem', 'asas20.21@mail.ru', '83792185254', 'moscov', 'google', ' Gaminator online  \r\nÐžÐ¿Ñ‚Ð¸Ð¼Ð¸Ð·Ð¸Ñ€Ð¾Ð²Ð°Ð½ Ð´Ð»Ñ ÑÐ¼Ð°Ñ€Ñ‚Ñ„Ð¾Ð½Ð¾Ð² \r\nÐšÐ°Ð·Ð¸Ð½Ð¾ Ñ Ð»Ð¸Ñ†'),
(1625, 'VPSMasternoiCt', 'centralservers787@outlook.com', '81665128225', 'Velika Gorica', 'google', ''),
(1626, 'Im Jessica. My sexy photo here https://forms.yandex.ru/u/61a546f74c869ef9006e4b64/success/#photo_id2', 'won_mehm@yahoo.com', '89162562695', 'Kulim', 'google', 'Im Sophia. My sexy photo here https://forms.yandex.ru/u/61a546fea6c799e1b5627e9f/success/#photo_id63'),
(1627, 'DevinHes', 'mendietaalainnah2001@mail.ru', '88575667268', 'Toledo', 'google', 'https://sti.biz.pl/redirect.php?action=url&goto=xxxubevideo.com\r\nhttps://www.youtube.com/redirect?q='),
(1628, 'VincentMus', 'gordg35@yandex.ru', '85461432216', 'Plovdiv', 'google', '<a href=\"https://mariamirabela.ru/\">ÐœÐ°Ð³Ð°Ð·Ð¸Ð½ Ð¿Ð»Ð°Ñ‚ÑŒÐµÐ² Â«MariaMirabelaÂ»</a> - Ð¿Ñ€Ð¾Ð¸Ð·'),
(1629, 'Walterrhync', 'soonswing3169222@gmail.com', '89673575488', 'Hoskins', 'google', ''),
(1630, 'KristiePlAva', 'stasys71rackauskas@gmail.com', '87411886331', 'Edson', 'google', 'I like to learn new things, Join me and your mind will be blown! https://x-tube.one/'),
(1631, 'CharlesDromO', 'zdqk@course-fitness.com', '86484737693', 'Santa Maria', 'google', 'XYZ å£¯é™½è—¥æ˜¥è—¥å°ˆè³£åº— å¤§é‡è³¼è²·æœ‰å„ªæƒ  \r\n \r\nhttps://man-r20.com/'),
(1632, 'Richard Andersen', 'donotreply.betrave@gmail.com', '87343846155', 'Miami', 'google', 'Dear, \r\nDo you know that you could also achieve an additional profit of more than 10% in just a few '),
(1633, 'OlegCig', 'bransanuta@gmail.com', '89469948397', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', 'Ð¢Ð¾ Ð¾ Ñ‡ÐµÐ¼ Ð¼Ð½Ð¾Ð³Ð¸Ðµ Ð¿Ñ€Ð¾ÑÑ‚Ð¾ Ð½Ðµ Ð·Ð°Ð´ÑƒÐ¼Ñ‹Ð²Ð°ÑŽÑ‚ÑÑ, Ð¸ Ð´Ñ€ÑƒÐ³Ð¸Ðµ Ð¸Ð½Ñ‚ÐµÑ€Ðµ'),
(1634, 'contactyaeqir', 'solopinacelestina1991@rambler.ru', '123456789', 'Moscow', 'google', 'Dear sir! \r\n \r\nWe offer sending newsletters via contact forms to the sites of companies via any coun'),
(1635, 'hydra-ssilka', 'c.red.i.can.9.8.@gmail.com', '89827181615', 'Monrovia', 'google', ''),
(1636, 'GreggGeors', 'love@ilove.pp.ua', '89115972956', 'Monrovia', 'google', 'Ð“Ð¾Ð»Ð»Ð¸Ð²ÑƒÐ´ÑÐºÐ¸Ð¹ Ñ€ÐµÐ¶Ð¸ÑÑÐµÑ€ Ð Ð¸Ð´Ð»Ð¸ Ð¡ÐºÐ¾Ñ‚Ñ‚ ÑÐ½Ð¸Ð¼ÐµÑ‚ Ñ„Ð°Ð½Ñ‚Ð°ÑÑ‚Ð¸Ñ‡ÐµÑÐ'),
(1637, 'Roberttinee', 'clarkson@hamstercage.online', '81352343326', 'Nestor', 'google', 'Hello, \r\n \r\nBest Gift for Woman \r\nhttps://superstarshome.com/the-13-best-perfumes-to-give-a-woman/ \r'),
(1638, 'JamesGot', 'nlvb@course-fitness.com', '81815191112', 'Taiping', 'google', 'é»žå­æ•¸ä½ç§‘æŠ€æœ‰é™å…¬å¸ \r\n \r\nhttps://spot-digital.com.tw/'),
(1639, 'Robertsnofe', 'herbion.feruz@mail.ru', '87119181924', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', 'Ð’Ð¾Ð·Ð´ÑƒÑˆÐ½Ñ‹Ðµ ÑˆÐ°Ñ€Ñ‹ - ÑÑ‚Ð¾ Ñ„Ð°Ð½Ñ‚Ð°ÑÑ‚Ð¸Ñ‡ÐµÑÐºÐ¸Ðµ, Ð´ÐµÑˆÐµÐ²Ñ‹Ðµ Ð¸ Ð¿Ñ€Ð°Ð·Ð´Ð½Ð¸Ñ'),
(1640, 'elsael3', 'jon@tamotsu4110.masumi70.kiyoakari.xyz', '82293133987', '', 'google', 'Young Heaven - Naked Teens & Young Porn Pictures\r\nhttp://mineral.citymmorpgadultporn.alexysexy.com/?'),
(1641, 'Mike Audley\r\n', 'no-replykl@gmail.com', '89232681918', 'Kaohsiung Municipality', 'google', 'Howdy \r\n \r\nI have just took a look on your SEO for  schooloo.com for its SEO metrics and saw that yo'),
(1642, 'Mariamirabela', 'gordg35@yandex.ru', '82314422392', 'Ð¡Ð°Ð½ÐºÑ‚-ÐŸÑ‚ÐµÑ€Ð±ÑƒÑ€Ð³', 'google', 'ÐšÐ°Ñ‚Ð°Ð»Ð¾Ð³ Ð¿Ñ€Ð¾Ð´ÑƒÐºÑ†Ð¸Ð¸ <a href=\"https://mariamirabela.ru/\">Ð¼Ð°Ð³Ð°Ð·Ð¸Ð½Ð° Ð¾Ð´ÐµÐ¶Ð´Ñ‹ '),
(1643, 'ChcdarlesSmons', 'chcdarlessop@gmail.com', '89549369277', 'Sanaa', 'google', 'apps online casino real money app casino games real money app casino real money bonus online casino '),
(1644, 'egbbtutl', 'frcdzoxvw@riador.online', '87774292864', '', 'google', 'where to buy viagra online safely  https://viagaracom.com/ - viagra tablets for men  \r\nviagra pills '),
(1645, 'Jerrymayom', 'oleg.mongol.1992@mail.ru', '81922992976', 'Santa Rosa', 'google', '<a href=https://hydraxmarket.org>Ð³Ð¸Ð´Ñ€Ð° ÑÑÑ‹Ð»ÐºÐ° Ð®Ñ€ÑŒÐµÐ²ÐµÑ† </a> \r\nÐ•ÑÑ‚ÑŒ Ñ‚Ñ€ÑƒÐ´Ð½Ð¾'),
(1646, 'SheltonJah', 'jerseygirl4jesus@hotmail.com', '88657228331', 'Kulim', 'google', 'Free Drag-n-Drop online email template tool has everything you need for creating email messages of a'),
(1647, 'DevinHes', 'ira.izmalkina.78@mail.ru', '88899417948', 'Toledo', 'google', 'cheap online shopping 247  http://www.ijaws.biz/__media__/js/netsoltrademark.php?d=frootysales.com%2'),
(1648, 'GreggGeors', 'love@ilove.pp.ua', '82958882414', 'Monrovia', 'google', 'ÐœÐ°Ñ€Ð¸Ð½Ð° Ð¥Ð»ÐµÐ±Ð½Ð¸ÐºÐ¾Ð²Ð° Ñ€Ð°ÑÑÐºÐ°Ð·Ð°Ð»Ð° Ð¾ ÑÐ²Ð¾ÐµÐ¼ ÑÐ°Ð¼Ð¾Ñ‡ÑƒÐ²ÑÑ‚Ð²Ð¸Ð¸ Ð¿Ð¾Ñ'),
(1649, 'Kevinbon', 'sofiya_v_1984@inbox.ru', '89781522357', '', 'google', 'Buy firearms at this link <a href=https://rushbyind.com/>https://rushbyind.com/</a> a huge catalog a'),
(1650, 'Randyrag', 'roman_s_1982@list.ru', '83184114563', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', '<a href=https://xn----8sbwhzjq7b3a.xn--p1ai/>Ð´Ð¾ÑÑ‚Ð°Ð²ÐºÐ° ÑˆÐ°Ñ€Ð¸ÐºÐ¾Ð²</a>'),
(1651, 'Mike Ryder\r\n', 'no-replykl@gmail.com', '85751589259', 'Boston', 'google', 'Hello \r\n \r\nWe all know the importance that dofollow link have on any website`s ranks. \r\nHaving most '),
(1652, 'hydraruzxpnew4aftig', 'claytf4or@hydraruzxpnew4fa.co', '85956181531', 'ÑÑÑ‹Ð»ÐºÐ° Ð½Ð° hydra Ð·ÐµÑ€ÐºÐ°Ð»Ð¾', 'google', '<a href=https://v3.hydraruzxpnew4fa.co><img src=\"https://v3.hydraruzxpnew4fa.co/register.svg\"></a> h'),
(1653, 'ShermanQueby', '@auvto.site', '82639438984', 'Hesperange', 'google', '1. Ð â€”Ð â€¢Ð â€ºÐ â€¢Ð ÑœÐ ÐŽÐ Ñ™Ð Â˜Ð â„¢ Ð Ñ’Ð ÑœÐ Ñ›Ð ÑœÐ ÐŽÐ Â˜Ð Â Ð Ñ›Ð â€™Ð Ñ’Ð â€º Ð Ñ™Ð Â '),
(1654, 'Alex Lebsky', 'alexlebsky@gmail.com', '85232916542', 'Boston', 'google', 'Hi! \r\n \r\nTo CEO, Marketing or Sales Team. \r\n \r\n1 language -> 1 x pages for google SEO -> 1 x Sales; '),
(1655, 'Frankgorse', 'ninzah5@bambo-mebel.top', '87538982345', 'Lar', 'google', '<a href=http://trustpack.ru/komu-i-zachem-nuzhny-gruzoperevozki/>http://trustpack.ru/komu-i-zachem-n'),
(1656, 'Charlesned', 'ok..o..b.el.e.v.r..o..8..1.@gmail.com', '89394887852', 'Charlotte Amalie', 'google', 'berkeley health care  <a href=  > https://lorcaserin.mystrikingly.com/ </a>  herbal essence advert  '),
(1657, 'JosephGuarf', 'ginnyfranciosa@rambler.ru', '82173645242', 'Bottegone', 'google', ' ÐÐ°ÑˆÐµÐ» Ð¾Ñ‚Ð»Ð¸Ñ‡Ð½Ñ‹Ð¹ Ñ‚ÐµÐ»ÐµÐ³Ñ€Ð°Ð¼ ÐºÐ°Ð½Ð°Ð» https://t.me/Doitfast/433 Ð¿Ñ€Ð¾ ÑÐ°Ð´ Ð¸ '),
(1658, 'Snelaph', 'snelapsg22@yahoo.com', '83367348134', 'Vyborg', 'google', 'Ð—Ð´Ñ€Ð°Ð²ÑÑ‚Ð²ÑƒÐ¹Ñ‚Ðµ. Ð“Ð¾Ñ‚Ð¾Ð² Ð¿Ð¾Ð¼Ð¾Ñ‡ÑŒ Ð²Ð°Ð¼ Ð² Ñ€ÐµÑˆÐµÐ½Ð¸Ð¸ Ð²ÑÐµÑ… Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼ Ñ'),
(1659, 'Susan Johnson', 'livestaffinghub@gmail.com', '89847274741', 'Boston', 'google', 'Hello \r\n \r\nMy main objective here, is to help you increase revenue for your business by providing So'),
(1660, 'EmoryRip', 'johnf6616@gmail.com', '81625995712', 'Stung Treng', 'google', 'Countless designers and experts around the world make use of MATLAB to evaluate as well as design th'),
(1661, 'AlexNuckem', 'alexnuckemux2@mail.ru', '86553634558', 'piter', 'google', ' Gaminator online  \r\nÐžÐ¿Ñ‚Ð¸Ð¼Ð¸Ð·Ð¸Ñ€Ð¾Ð²Ð°Ð½ Ð´Ð»Ñ ÑÐ¼Ð°Ñ€Ñ‚Ñ„Ð¾Ð½Ð¾Ð² \r\nÐšÐ°Ð·Ð¸Ð½Ð¾ Ñ Ð»Ð¸Ñ†'),
(1662, 'JonHak', 'j.h.990.04.41@gmail.com', '82543157853', 'Nuwara Eliya', 'google', 'https://creditrepaircities.com '),
(1663, 'ShermanQueby', '@auvto.site', '84221856863', 'Hesperange', 'google', 'Ð Â¤Ð Ñ‘Ð Â»Ð Ñ‘Ð Ñ—Ð Ñ— Ð Ñ™Ð Ñ‘Ð¡Ð‚Ð Ñ”Ð Ñ•Ð¡Ð‚Ð Ñ•Ð Ð† Ð Ñ—Ð¡Ð‚Ð Ñ‘Ð Ñ•Ð Â±Ð¡Ð‚Ð¡â€˜Ð Â» Ð’Â«Ð¡Ðƒ'),
(1664, 'esseyrankprinc', 'esseyrankfus@gmail.com', '84921893883', 'Plovdiv', 'google', 'Try Topics \r\n<a href=https://esseybetopics.blogspot.com/2021/09/write-essay-for-me.html>Write Essay<'),
(1665, 'casino-x.center', 'alekxzs2@mail.ru', '88337746874', 'Rostov', 'google', 'Ð”Ð¾Ð±Ñ€Ð¾Ð³Ð¾ Ð´Ð½Ñ! Ð Ð°Ð´Ñ‹ Ð¿Ñ€Ð¸Ð²ÐµÑ‚ÑÑ‚Ð²Ð¾Ð²Ð°Ñ‚ÑŒ Ð²Ð°Ñ Ð½Ð° ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ð°Ñ… Ð¾Ñ„Ð¸Ñ†'),
(1666, 'Josephdak', 'manjims7766@yahoo.com', '83963872574', 'Yanahuara', 'google', '\r\nHello\r\n\r\nMany People are dying nowadays because of Covid-19 so you must find out WHO IS OUR SAVIOR'),
(1667, 'Robertmum', 'treadfatabnaispec@mail.com', '84578727655', 'Raanana', 'google', 'Ð’ÐµÐ½Ð³Ñ€Ð¸Ñ Ð·Ð°ÑÐ²Ð»ÑÐµÑ‚, Ñ‡Ñ‚Ð¾ ÑÑ‚Ð¾ Ð² Ñ†ÐµÐ»Ð¾Ð¼ ÑÐ°Ð¼Ð°Ñ Ð½Ð°Ð¸Ð»ÑƒÑ‡ÑˆÐ°Ñ Ð²Ð°ÐºÑ†Ð'),
(1668, 'savtzack', 'saitzack@yandex.ru', '88989473683', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', 'ÐŸÑ€Ð¸Ð¹Ð´Ñ Ðº Ð²Ñ‹Ð²Ð¾Ð´Ñƒ Ñ‡Ñ‚Ð¾ Ð½ÑƒÐ¶Ð½Ð¾ <a href=https://zakazat.website>Ð·Ð°ÐºÐ°Ð·Ð°Ñ‚ÑŒÂ ÑÐ'),
(1669, 'AlbertNeots', 'talworithhardcest@mail.com', '87536573538', 'Tashkent', 'google', 'Ð ÑšÐ¡â€¹, Ð Ñ”Ð Ñ•Ð Ñ˜Ð Â°Ð Ð…Ð Ò‘Ð Â° Traffic Ð â€”Ð Â°Ð¡Ð‚Ð Â°Ð Â±Ð Ñ•Ð¡â€šÐ Â°Ð â„– Ð Ñ˜Ð Ñ‘Ð Â»'),
(1670, 'Irinalophy', 'abhaziyainsta@gmail.com', '82426159737', 'Ð“Ð°Ð³Ñ€Ð°', 'google', 'ÐŸÐ¾ÐµÑ…Ð°Ð»Ð¸ Ð² ÑÐ°Ð¼Ñ‹Ðµ ÐºÑ€Ð°ÑÐ¸Ð²Ñ‹Ðµ Ð¼ÐµÑÑ‚Ð° Ð¿Ð¾ ÐÐ±Ñ…Ð°Ð·Ð¸Ð¸ Ð²Ð¼ÐµÑÑ‚Ðµ Ñ Ð½Ð°Ð¼Ð'),
(1671, 'kimberleywh4', 'karin@yoshito610.haruto35.kiyoakari.xyz', '89266128277', '', 'google', 'Teen Girls Pussy Pics. Hot galleries\r\nhttp://oltonhollydayporn.danexxx.com/?malia \r\n robert jordan p'),
(1672, 'JesseMut', 'brewerletitia@yahoo.com', '88557693555', 'Quatre Bornes', 'google', 'slottica 18 slottica bonus bez depozytu slottica bonus bez depozytu 2021 slottica casino slottica pl'),
(1673, 'hydraruzxpnew4aftig', 'cleamnsdk@hydraruzxpnew4fa.co', '81231641686', 'Ñ„Ð¾Ñ€ÑƒÐ¼ hydrÐ°', 'google', '<a href=https://hydraruzxpnew4afonlon.com><img src=\"https://v3.hydraruzxpnew4fa.co/register.svg\"></a'),
(1674, 'ShermanQueby', '@auvto.site', '87618774218', 'Hesperange', 'google', 'Ð Â®Ð Â»Ð Ñ‘Ð¡Ð Ð ÑžÐ Ñ•Ð Ò‘Ð Ñ•Ð¡Ð‚Ð Ñ•Ð Ð†Ð Ñ‘Ð¡â€¡ 00:41 23.11.2021 Ð ÑŸÐ ÂµÐ Ð†Ð Ñ‘Ð¡â€ Ð Â° Ð '),
(1675, 'Eugeneshupe', 'uvtr@course-fitness.com', '87792744963', 'San Vicente De Tagua Tagua', 'google', 'æ­å®¢ä½¬ç²¾å“å’–å•¡ ï½œOKLAO COFFEEï½œè¦çš®å•†åŸŽï½œå’–å•¡è±†ï½œæŽ›è€³ï½œç²¾å“å’–å•¡ï½œå’–å•¡ç¦®'),
(1676, 'Zakel-IT', 'link@zakel-it.de', '83576875455', 'Istanbul', 'google', ''),
(1677, 'JamesVom', 'office@capital-office.co.uk', '82516266442', 'Kuwait', 'google', 'CALCULAMOS MAIS DE 1 MILHAO DE DADOS DO BANCO DE DADOS DO DEPARTAMENTO DE INTELIGENCIA DA POLICIA CI'),
(1678, 'Kiridifkk', 'info@79t.ru', '88185649462', 'Moscow', 'google', ''),
(1679, 'D4genonaldfar', 'd4genonaldagink@gmail.com', '89919334723', 'Pirassununga', 'google', 'drug \r\nointment \r\ntretinoin \r\nreplacement \r\n10 \r\nskin \r\n \r\n \r\n<a href=https://4genericvin.blogspot.c'),
(1680, 'Mike Waller\r\n', 'no-replykl@gmail.com', '82516846197', 'Willemstad', 'google', 'Hello \r\n \r\nDo you want a quick boost in ranks and sales for your website? \r\nHaving a high DA score, '),
(1681, 'WalterDip', 'gerard-maylos@tele2.nl', '85451827861', 'Gliwice', 'google', 'Hello, \r\n \r\nIndie Music: https://indie2019.blogspot.com/ \r\nAmbient, Industrial Music: https://ambien'),
(1682, 'MRankerMow', 'mranker@masum.cc', '89271748659', '', 'google', 'High Quality Niche Backlinks at very Low Price for Publicity Campaign. Service starts from only $5 o'),
(1683, 'MichaelAncex', 'savememan88@yahoo.cmo', '89926833541', 'Nuwara Eliya', 'google', '\r\nOpen a FREEE account with http://UseFreelancer.com and start making money at home selling any serv'),
(1684, 'Eugeneshupe', 'uvtr@course-fitness.com', '82588176727', 'San Vicente De Tagua Tagua', 'google', 'æ­å®¢ä½¬ç²¾å“å’–å•¡ ï½œOKLAO COFFEEï½œè¦çš®å•†åŸŽï½œå’–å•¡è±†ï½œæŽ›è€³ï½œç²¾å“å’–å•¡ï½œå’–å•¡ç¦®'),
(1685, 'Byronrex', 'toyaleks@yandex.com', '86398768258', 'Nove Mesto nad Vahom', 'google', '<a href=http://global9.ga><img src=\"http://globals4.tk/30.jpg\"></a>'),
(1686, 'Frankles', 'gudian1793996@mail.ru', '83261712518', 'Kabul', 'google', 'Is your canvas being persistent and not flattening out? An tractable plodder is to well-founded peel'),
(1687, 'Francistoomi', 'revialexo@gmail.com', '83619371996', 'Maputo', 'google', 'US binary options: \r\n<a href=https://telmibety.blogspot.com/2021/12/pamm.html>Pamm</a> <a href=https'),
(1688, 'GregoryAmony', 'wojciech.maserski@interia.pl', '85569593482', 'Mtskheta', 'google', 'Figure Fantasy Hack Cheats MOD APK is the Best Game Changer of Google Play in Hong Kong, Macau, and '),
(1689, 'NikolayShiva', 'varinnikolaj24@gmail.com', '85175757635', 'Ð¯Ñ€Ð¾ÑÐ»Ð°Ð²Ð»ÑŒ', 'google', ''),
(1690, 'maryannox16', 'carlene@tamotsu19.sorataki.in.net', '89847934474', '', 'google', 'Big Ass Photos - Free Huge Butt Porn, Big Booty Pics\r\nhttp://wales.jsutandy.com/?destiny \r\n mature h'),
(1691, 'lawyerWaf', 'antonmorozov2607@gmail.com', '89282718129', '', 'google', 'Ð”Ð Ð•Ð’Ð¢ÐžÐ Ð“ WOODTRADE \r\nÐžÐÐ›ÐÐ™Ð-Ð Ð«ÐÐžÐš ÐŸÐ ÐžÐ”Ð£ÐšÐ¦Ð˜Ð˜ Ð˜Ð— Ð”Ð•Ð Ð•Ð’Ð \r\nÐŸÐ¾ÐºÑƒ'),
(1692, 'Unlinly', 'larskarr2016@gmail.com', '87786871994', 'Freising', 'google', 'dozare fÄƒrÄƒ prescripÈ›ie medicalÄƒ http://supplychainforums.com/viewtopic.php?f=6&t=111432 farmaci'),
(1693, 'Clydecrore', 'ni330349@gmail.com', '81113379579', 'Aqtobe', 'google', 'https://www.kommersant.ru/doc/4407086'),
(1694, 'vredsaha', 'vredsahar@yandex.ru', '88738128852', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', 'Ñ‡Ñ‚Ð¾ Ð´ÐµÐ»Ð°ÐµÑ‚ Ñ ÑÐµÑ€Ð´Ñ†ÐµÐ¼ -  <a href=https://ussr.website/Ð·Ð´Ð¾Ñ€Ð¾Ð²ÑŒÐµ-Ð¸-Ð´Ð¾Ð»Ð³Ð¾'),
(1695, 'EverettSlell', 'glukhina.1998@mail.ru', '86369359456', 'Duverge', 'google', ''),
(1696, 'Carlosdab', 'rwby@course-fitness.com', '86756487781', 'Mankon Bamenda', 'google', 'ç¬¬ä¸€å€ŸéŒ¢ç¶²-å€ŸéŒ¢,å°é¡å€Ÿæ¬¾,å°é¡å€ŸéŒ¢,è­‰ä»¶å€Ÿæ¬¾,è­‰ä»¶å€ŸéŒ¢,èº«åˆ†è­‰å€Ÿæ¬¾,èº«åˆ†è­‰'),
(1697, 'JamesGot', 'nlvb@course-fitness.com', '81326228128', 'Taiping', 'google', 'é»žå­æ•¸ä½ç§‘æŠ€æœ‰é™å…¬å¸ \r\n \r\nhttps://spot-digital.com.tw/'),
(1698, 'JAMES COOK', 'james_cook78@yahoo.com', '86124271648', 'London', 'google', 'Dear sir/ma \r\nWe are a finance and investment company offering loans at 3% interest rate. We will be'),
(1699, 'Login', 'dolya.animate.czedashieva@mail.ru', '82493196535', '', 'google', ' Ð’Ñ‹Ð¿Ð»Ð°Ñ‚Ð° Ð¿oÐ»ÑƒÑ‡eÐ½Ð°  \r\nÐŸÐ¾Ð´Ñ€Ð¾Ð±Ð½ÐµÐµ Ð¿Ð¾ ÑÑÑ‹Ð»ÐºÐµ: https://forms.yandex.ru/u/61'),
(1700, 'Mike Chesterton\r\n', 'no-replykl@gmail.com', '82189251665', 'Albany', 'google', 'Howdy \r\n \r\nWe will improve your Local Ranks organically and safely, using only whitehat methods, whi'),
(1701, 'nmbjfzdk', 'xduqhaiwp@riador.online', '83345479466', '', 'google', 'viagra soft pills  https://viagaracom.com/ - viagra generic  \r\nbuy generic viagra online  \r\nbest gen'),
(1702, 'BrianFar', 'popovg199@gmail.com', '83356153493', 'Kuwait', 'google', ''),
(1703, 'Im Elizabeth. My sexy photo here https://vyrexyx.page.link/kbrAJRXw9vEZ6KDp7#photo_id399538', 'winelaw@chase3000.com', '82254461282', 'Kulim', 'google', 'Im Natalie. My sexy photo here https://watynot.page.link/xuUFU8ioKDbeNx4X6#photo_id166612'),
(1704, 'KennethNic', 'grigorevmadiyar4664@yandex.ru', '83252225716', '', 'google', 'Ð§Ñ‚Ð¾ Ð±Ñ‹ Ð²Ð¾ÑÐ¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÑŒÑÑ ÑÐºÐ¸Ð´ÐºÐ°Ð¼Ð¸ Ð´Ð¾ 99%, Ð²Ð°Ð¼ Ð²ÑÐµÐ³Ð¾ Ð»Ð¸ÑˆÑŒ Ð½Ñ'),
(1705, 'DonnaLed', 'nicoletta1s@gmail.com', '87975529525', 'New York City', 'google', '11-11 - https://bit.ly/30hUx0w'),
(1706, 'ThomasChugs', 'angeliquemoore5547@gmail.com', '88286848837', 'Kuwait', 'google', 'Ð’Ñ‹Ð³Ð¾Ð´Ð½Ð¾ ÐºÑƒÐ¿Ð¸Ñ‚ÑŒ <a href=https://mirtehnikispb.ru/kupit-bu-stiralnuyu-mashinu/>ÑÑ‚Ð¸Ñ€Ð°'),
(1707, 'BernardSween', 'arturorodgers275@gmail.com', '84332885134', 'Nove Mesto nad Vahom', 'google', 'ÐœÐ°Ð³Ð°Ð·Ð¸Ð½ Ð±Ñƒ Ð±Ñ‹Ñ‚Ð¾Ð²Ð¾Ð¹ Ñ‚ÐµÑ…Ð½Ð¸ÐºÐ¸ <a href=https://mirtehnikispb.ru/kupit-bu-xolodiln'),
(1708, 'Brendanelica', 'raphaelbarnes7346@gmail.com', '85319817771', 'San Vicente De Tagua Tagua', 'google', 'ÐœÐ°Ð³Ð°Ð·Ð¸Ð½ Ð±Ñƒ Ð±Ñ‹Ñ‚Ð¾Ð²Ð¾Ð¹ Ñ‚ÐµÑ…Ð½Ð¸ÐºÐ¸ Ð¿Ð¾ Ð¿Ñ€Ð¾Ð´Ð°Ð¶Ðµ Ð±Ñƒ Ñ…Ð¾Ð»Ð¾Ð´Ð¸Ð»ÑŒÐ½Ð¸ÐºÐ¾Ð'),
(1709, 'JamesSor', 'evgen.tarasov.0524@gmail.com', '81857192493', 'Sanaa', 'google', ''),
(1710, 'CreditDrype', 'credit.loan.new@gmail.com', '82373329656', 'Luga', 'google', ' ÑÐ°Ð»Ð°Ð¼Ñ‡Ð¸ÐºÐ¸.  Ð´Ð¾ÑÑ‚Ð¾Ð¹Ð½Ñ‹Ð¹ Ð²Ð½Ð¸Ð¼Ð°Ð½Ð¸Ñ -  ÐºÐ¸Ð½Ð¾Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ñ Ð¾ ÑÐ»ÑŒÐ'),
(1711, 'JamesSor', 'evgen.tarasov.0524@gmail.com', '85612822113', 'Sanaa', 'google', ''),
(1712, 'ThomasChugs', 'angeliquemoore5547@gmail.com', '87621655394', 'Kuwait', 'google', 'Ð’Ñ‹Ð³Ð¾Ð´Ð½Ð¾ ÐºÑƒÐ¿Ð¸Ñ‚ÑŒ <a href=https://mirtehnikispb.ru/kupit-bu-stiralnuyu-mashinu/>ÑÑ‚Ð¸Ñ€Ð°'),
(1713, 'BernardSween', 'arturorodgers275@gmail.com', '85488184326', 'Nove Mesto nad Vahom', 'google', 'ÐœÐ°Ð³Ð°Ð·Ð¸Ð½ Ð±Ñƒ Ð±Ñ‹Ñ‚Ð¾Ð²Ð¾Ð¹ Ñ‚ÐµÑ…Ð½Ð¸ÐºÐ¸ <a href=https://mirtehnikispb.ru/kupit-bu-xolodiln'),
(1714, 'Brendanelica', 'raphaelbarnes7346@gmail.com', '84813783271', 'San Vicente De Tagua Tagua', 'google', 'ÐœÐ°Ð³Ð°Ð·Ð¸Ð½ Ð±Ñƒ Ð±Ñ‹Ñ‚Ð¾Ð²Ð¾Ð¹ Ñ‚ÐµÑ…Ð½Ð¸ÐºÐ¸ Ð¿Ð¾ Ð¿Ñ€Ð¾Ð´Ð°Ð¶Ðµ Ð±Ñƒ Ñ…Ð¾Ð»Ð¾Ð´Ð¸Ð»ÑŒÐ½Ð¸ÐºÐ¾Ð'),
(1715, 'Stanleysaith', 'yourmail@gmail.com', '86844667455', 'Garhoud', 'google', 'ÐšÑ€Ð°Ñ‚ÐºÐ°Ñ ÑÐ¿Ñ€Ð°Ð²ÐºÐ° Esperio \r\nEsperio Ð¿Ð¾Ð·Ð¸Ñ†Ð¸Ð¾Ð½Ð¸Ñ€ÑƒÐµÑ‚ ÑÐµÐ±Ñ Ð² ÐºÐ°Ñ‡ÐµÑÑ‚Ð'),
(1716, 'JesusRerne', 'test@mail.ru', '87757318386', 'Yako', 'google', 'https://viargamed.ru/ \r\nÐºÑƒÐ¿Ð¸Ñ‚ÑŒ Ð²Ð¸Ð°Ð³Ñ€Ñƒ \r\nÐ²Ð¸Ð°Ð³Ñ€Ð° Ð´Ð»Ñ Ð¼ÑƒÐ¶Ñ‡Ð¸Ð½ \r\nÑÐ¸Ð»Ð´ÐµÐ½Ð'),
(1717, 'Jesusatods', 'larskarr2016@gmail.com', '85434221687', 'Mosta', 'google', 'k dispozici online v lÃ©kÃ¡rnÄ› https://www.restoration-design.com/support/restoration-design-suppor'),
(1718, 'iphonePurb.', 'maximmad222@yandex.ru', '86794111483', ' Ð¡Ð°Ð¼Ð°Ñ€Ð° ', 'google', 'ÐŸÑ€Ð¸Ð²ÐµÑ‚ÑÑ‚Ð²ÑƒÑŽ Ð²Ð°Ñ, Ð¦Ð¸Ñ„Ñ€Ð¾Ð²Ñ‹Ðµ Ð²ÐµÑ€ÑÐ¸Ð¸ Ð¸Ð³Ñ€ ÐºÐ»ÑŽÑ‡Ð¸ XBOX CD KEY Ð¸ Ð¸Ð³Ñ€'),
(1719, 'girlstop1hon', 'girstop@mail.ru', '87542336665', 'Madagascar', 'google', 'ÐšÐ°Ðº Ð·Ð°Ð³Ð¾Ñ€ÐµÑ‚ÑŒ Ð±ÐµÐ· ÑÐ¾Ð»Ð½Ñ†Ð° ÑÐ¾Ð²ÐµÑ€ÑˆÐµÐ½Ð½Ð°Ñ ÑˆÐ¾ÐºÐ¾Ð»Ð°Ð´Ð½Ð°Ñ Ð´ÐµÐ²ÑƒÑˆÐº'),
(1720, 'EmoryRip', 'johnf6616@gmail.com', '86443936957', 'Stung Treng', 'google', 'Numerous developers and also experts all over the world make use of MATLAB to evaluate and design th'),
(1721, 'Daviddum', 'jeremytbjorklund12@gmail.com', '86353583875', 'Ga District', 'google', 'Our situation remedies features various other advantages also. It is always offered to you at extrem'),
(1722, 'ddddfdbgcd', 'louisfosterbranitzsch@gmail.com', '85462797147', '', 'google', '<a href=\"https://servis.kharkov.ua/\">Ð ÐµÐ¼Ð¾Ð½Ñ‚ Ñ…Ð¾Ð»Ð¾Ð´Ð¸Ð»ÑŒÐ½Ð¸ÐºÐ¾Ð² Ð² Ð¥Ð°Ñ€ÑŒÐºÐ¾Ð²Ðµ</a>'),
(1723, 'Im Linda. My sexy photo here https://semyjaf.page.link/gVbpEmDfmpxJw6Yq6#photo_id536271', 'jos.scherpen@hotmail.nl', '86554736737', 'Kulim', 'google', 'Im Daisy. My sexy photo here https://fuxagydym.page.link/L5ZhnC6bQWSFSRQg9#photo_id562133'),
(1724, 'Gregorybub', 'revialexo@gmail.com', '82714645746', 'Kaohsiung Municipality', 'google', 'Online dating sites: \r\n<a href=https://vadimalo.blogspot.com/2021/05/anime-dating-games-online.html>'),
(1725, 'Unlinly', 'larskarr2016@gmail.com', '84413393424', 'Freising', 'google', '<b><a href=http://fito-spray-spain.com/a/peen/aralen.html>Visit Secure Drugstore >> Click Here! << <'),
(1726, 'Mep', 'voc6snen@yahoo.com', '86746846175', 'Kaduna', 'google', 'Hi, this is Jeniffer. I am sending you my intimate photos as I promised. https://tinyurl.com/y23fvys'),
(1727, 'WarrenSer', 'yourmail@gmail.com', '85317491414', 'Rio Grande', 'google', 'ÐÐšÐ¦ÐŸÐ¤Ð  Ð¿Ð¾Ð¿ÐµÑ€ÐµÐ´Ð¶Ð°Ñ” Ñ–Ð½Ð²ÐµÑÑ‚Ð¾Ñ€Ñ–Ð² Ð¿Ñ€Ð¾ Ñ€Ð¸Ð·Ð¸ÐºÐ¸ Ð²Ñ‚Ñ€Ð°Ñ‚Ð¸ Ð³Ñ€Ð¾ÑˆÐµÐ¹'),
(1728, 'JessieZef', 'yourmail@gmail.com', '86488594641', 'Kalamaria', 'google', 'ÐžÑÑ‚Ð¾Ñ€Ð¾Ð¶Ð½Ð¾! Hamilton Investments Group ltd Ð¸ E-xun Asia Company limited \r\nÐ­Ñ‚Ð¸ Ð´Ð²Ðµ Ñ„Ð'),
(1729, 'DavidIdozy', 'yourmail@gmail.com', '88461614419', 'Piran', 'google', 'Forex Optimum Ð¾ÑÐ½Ð¾Ð²Ð°Ð»Ð¸ Ð² 2009 Ð³. Ñ Ñ†ÐµÐ»ÑŒÑŽ Ð¿Ñ€ÐµÐ´Ð¾ÑÑ‚Ð°Ð²Ð»ÐµÐ½Ð¸Ñ Ð¿ÐµÑ€ÐµÐ´Ð¾Ð²'),
(1730, 'HaroldGergo', 'xrumtr1xrum@gmail.com', '85991947148', 'Mariupol', 'google', 'Tipobet canli bahis siteleri, dunyanin her yerinden milyonlarca oyuncuyu kendine ceken kanitlanmis v'),
(1731, 'NikolayShiva', 'varinnikolaj24@gmail.com', '83858158881', 'Ð¯Ñ€Ð¾ÑÐ»Ð°Ð²Ð»ÑŒ', 'google', ''),
(1732, 'Stevenwophy', 'yourmail@gmail.com', '88749521863', 'Chisinau', 'google', 'Ð“ÐµÐ½ÐµÑ€Ð°Ð»ÑŒÐ½Ñ‹Ð¹ Ð´Ð¸Ñ€ÐµÐºÑ‚Ð¾Ñ€ ÐžÐžÐž Â«Ð¢ÐµÐ»ÐµÑ‚Ñ€ÐµÐ¹Ð´ Ð“Ñ€ÑƒÐ¿Ð¿Â», Ð´Ð¾Ñ‡ÐºÐ¸ Ð¼ÐµÐ¶Ð'),
(1733, 'RobertBah', 'yourmail@gmail.com', '85377379332', 'Virbalis', 'google', 'Ð‘Ñ€Ð¾ÐºÐµÑ€ Forex Optimum (Ð¿Ñ€Ð¾Ð¸Ð·Ð½Ð¾ÑÐ¸Ñ‚ÑÑ ÐºÐ°Ðº Â«Ð¤Ð¾Ñ€ÐµÐºÑ ÐžÐ¿Ñ‚Ð¸Ð¼ÑƒÐ¼Â») â€” Ð¼Ð'),
(1734, 'KennethNub', 'yourmail@gmail.com', '81176727993', 'Liberia', 'google', 'Ð“ÐµÐ½ÐµÑ€Ð°Ð»ÑŒÐ½Ñ‹Ð¹ Ð´Ð¸Ñ€ÐµÐºÑ‚Ð¾Ñ€ ÐžÐžÐž Â«Ð¢ÐµÐ»ÐµÑ‚Ñ€ÐµÐ¹Ð´ Ð“Ñ€ÑƒÐ¿Ð¿Â», Ð´Ð¾Ñ‡ÐºÐ¸ Ð¼ÐµÐ¶Ð'),
(1735, 'CharlesCeary', 'xrumerspamer@gmail.com', '81886677682', 'Plovdiv', 'google', 'ÐÐ°Ð´Ð¾ÐµÐ»Ð¾ ÑÐ»ÑƒÑˆÐ°Ñ‚ÑŒ Ð¼ÑƒÐ·Ñ‹ÐºÑƒ VK? ÐšÐ°Ð¶Ð´Ñ‹Ð¹ Ñ€Ð°Ð· Ð±ÑŒÑ‘Ñ‚ÐµÑÑŒ Ð² Ð¿Ñ€Ð¸Ð¿Ð°Ð´ÐºÐ'),
(1736, 'Joshuadus', 'eliza82dvl82@gmail.com', '86226186553', 'Kaduna', 'google', 'Hello people. And Bye people. Try Better This! \r\nhttp://stroitelnaya-kompaniya.com'),
(1737, 'ThomasDuh', 'yourmail@gmail.com', '87667376427', 'Monrovia', 'google', 'ÐšÐ¾Ð¼Ð¿Ð°Ð½Ð¸Ñ Forex Optimum - ÑÑ‚Ð¾ Ð±Ñ€Ð¾ÐºÐµÑ€ Ð¿Ñ€Ð°ÐºÑ‚Ð¸Ñ‡ÐµÑÐºÐ¸ Ñ Ð´ÐµÑÑÑ‚Ð¸Ð»ÐµÑ‚Ð½Ð'),
(1738, 'TeoReums', 'kane64816@jumbox.site ', '85276817262', 'Aurora', 'google', '<a href=\"https://cheapcialis40cost.monster/\">cialis 100mg real</a> '),
(1739, 'RichardCom', 'seo1@intervision.ua', '83621127363', 'Taiping', 'google', 'Ð ÐµÐ°Ð»ÑŒÐ½Ð¾, <a href=https://intervision.ua/videonablyudenie>Ð²Ð¸Ð´ÐµÐ¾Ð½Ð°Ð±Ð»ÑŽÐ´ÐµÐ½Ð¸Ðµ</a> Ð'),
(1740, 'KiaReums', 'jovon79@aol.com ', '82269813378', 'Denver', 'google', '<a href=\"https://buyingcialisonline.quest/\">cialis 20mg uk online</a> '),
(1741, 'AshReums', 'kimcater@mail.com ', '87353178831', 'Fresno', 'google', '<a href=\"https://cheapcialispillswithoutprescription.monster/\">cialis canada purchase</a> '),
(1742, 'CarlReums', 'tonygarcia57@gmail.com ', '84418183888', 'New York', 'google', '<a href=\"http://bestcialismedicationprescription.monster/\">price for 5mg cialis</a> '),
(1743, 'AlanReums', 'lynette@gmail.com ', '87188736313', 'New York', 'google', '<a href=\"http://buycialis20mgpill.monster/\">how to get cialis prescription in canada</a> <a href=\"ht'),
(1744, 'LisaReums', 'ai@hotmail.com ', '81361261368', 'Dallas', 'google', '<a href=\"http://drugstorecialis2022.monster/\">otc cialis 2019</a> '),
(1745, 'AmyReums', 'billykranz@mail.com ', '86893445994', 'New York', 'google', '<a href=\"http://cialis10cost.quest/\">cyalis</a> '),
(1746, 'Annahok', 'annahok@yahoo.com', '+1 2620534567', 'Moscow', 'google', 'Hello all, guys! I know, my message may be too specific,\r\nBut my sister found nice man here and they'),
(1747, 'iphonePurb.', 'maximmad222@yandex.ru', '89377244285', ' ÐžÐ¼ÑÐº', 'google', 'ÐšÑƒÐ¿Ð¸Ñ‚ÑŒ Ð¸Ð³Ñ€Ñ‹ +Ð½Ð° xbox +one Ð¸ Ð¿Ð¾Ð»ÑƒÑ‡Ð¸Ñ‚ÑŒ Ð½Ð°ÐºÐ¾Ð¿Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ðµ ÑÐºÐ¸Ð´ÐºÐ¸  +'),
(1748, 'JudyReums', 'osbraendle@outlook.com ', '82986976531', 'New York', 'google', '<a href=\"http://bestviagra150price.quest/\">how to buy viagra in uk</a> '),
(1749, 'Byronrex', 'toyaleks@yandex.com', '89213876591', 'Nove Mesto nad Vahom', 'google', '<a href=http://global9.ga><img src=\"http://globals4.tk/333.jpg\"></a>'),
(1750, 'MaryReums', 'dinty40@yahoo.com ', '85263545914', 'Dallas', 'google', '<a href=\"http://cheapviagra200norx.quest/\">viagra online singapore</a> '),
(1751, 'WimReums', 'ccramer974@mail.com ', '89119364729', 'Oakland', 'google', '<a href=\"https://onlineviagratabletsforsale.quest/\">generic sildenafil uk</a> '),
(1752, 'Richardlof', 'yourmail@gmail.com', '87273123995', 'Muscat', 'google', 'Ð•ÑÐ»Ð¸ Ð»Ð¾Ñ…Ð¾Ñ‚Ñ€Ð¾Ð½Ñ‰Ð¸ÐºÐ¸ Ð¤Ð¾Ñ€ÐµÐºÑ ÐžÐ¿Ñ‚Ð¸Ð¼ÑƒÐ¼ Ð’Ð°Ñ Ð¾Ð±Ð¼Ð°Ð½ÑƒÐ»Ð¸, Ñ‚Ð¾ Ð¿Ð¸ÑˆÐ¸'),
(1753, 'RamonClumn', 'xrumerspamer@gmail.com', '85371747886', 'Tashkent', 'google', '<a href=https://jspi.uz><img src=\"http://jspi.uz/wp-content/uploads/2021/10/Ñ‚ÐµÑ…2.jpg\"></a> \r\n \r\n '),
(1754, 'KiaReums', 'akelars@mail.com ', '86749113651', 'Denver', 'google', '<a href=\"https://genericcialistabletforsaleonline.quest/\">tadagra soft 20 mg</a> '),
(1755, 'Frankles', 'gudian1793996@mail.ru', '83135732264', 'Kabul', 'google', 'Is your canvas being wayward and not flattening out? An peaceful hack is to righteous peel in anothe'),
(1756, 'CarlReums', 'jenkinshelen@mail.com ', '82777987398', 'New York', 'google', '<a href=\"http://tadalafilcd.com/\">buy tadalafil in australia</a> '),
(1757, 'JudyReums', 'bettywilson@mail.com ', '84418927433', 'New York', 'google', '<a href=\"http://cialistabletsforsale.com/\">best online cialis</a> '),
(1758, 'WimReums', 'stephanejulien1@hotmail.com ', '82977251142', 'Oakland', 'google', '<a href=\"http://buysumycin.com/\">order tetracycline</a> '),
(1759, 'DenReums', 'justinwolfshohl@gmail.com ', '86564472568', 'Chicago', 'google', '<a href=\"https://tadalafilnbuy.com/\">tadalafil 5mg tablets price</a> <a href=\"https://viagrawithnorx'),
(1760, 'BooReums', 'hannelore@yahoo.com ', '86983857111', 'Tucson', 'google', '<a href=\"http://dexamethasone.live/\">5 mg dexamethasone</a> '),
(1761, 'JeffreyExess', 'alna.polyakova.1989@mail.ru', '82152583816', 'Sanaa', 'google', 'Choosing the standard vape quill or mod can at times be a daunting task. Vape technology and vape ma'),
(1762, 'DenReums', 'pmccoo@aol.com ', '85273134359', 'Chicago', 'google', '<a href=\"https://accutaneisotretinoin.online/\">buy accutane online no prescription</a> <a href=\"http'),
(1763, 'AshReums', 'thetwoblondies@aol.com ', '85157323998', 'Fresno', 'google', '<a href=\"http://buydisulfiram.com/\">disulfiram online canada</a> '),
(1764, 'ZakReums', 'cdunlap6142@msmx.site ', '86328363263', 'Tulsa', 'google', '<a href=\"http://cymbaltamedication.online/\">medication cymbalta 60 mg</a> '),
(1765, 'Login', 'gorbulina.2019@mail.ru', '83375143858', '', 'google', ' ÐŸÐ¾ÑÑ‚ÑƒÐ¿Ð¸Ð»Ð¾ 106 543 p  \r\nÐŸÐ¾Ð´Ñ€Ð¾Ð±Ð½ÐµÐµ Ð¿Ð¾ ÑÑÑ‹Ð»ÐºÐµ: https://forms.yandex.ru/u/610'),
(1766, 'Coomeetwor', 'info@coomeetchat.ru', '85546819376', 'Moscow', 'google', ''),
(1767, 'YonReums', 'bettypetrie@qtmx.space ', '82986122355', 'Tampa', 'google', '<a href=\"http://modafinilpills.online/\">modafinil online india</a> ');
INSERT INTO `bulk_contact` (`contact_id`, `name`, `email`, `mobile`, `address`, `school_name`, `nature_requirment`) VALUES
(1768, 'KiaReums', 'asusskind@yahoo.com ', '89442558241', 'Denver', 'google', '<a href=\"https://genericcialistablets.com/\">order cialis online usa</a> '),
(1769, 'ZakReums', 'lynna@romail.site ', '81954659325', 'Tulsa', 'google', '<a href=\"http://viagrawithnorx.com/\">genuine viagra australia</a> '),
(1770, 'Ralphfam', 'o.k..o..b.el.e.v.r..o..8..1.@gmail.com', '87743838569', 'Estepona', 'google', 'prescription sunglasses designer  <a href=  > https://zaldiar.brushd.com </a>  chinese herbal remedi'),
(1771, 'TedReums', 'billwilliams10@msmx.site ', '82569854171', 'Arlington', 'google', '<a href=\"http://buytrimox.com/\">amoxicillin 750 mg</a> '),
(1772, 'MaryReums', 'justin2006@outlook.com ', '89292312517', 'Dallas', 'google', '<a href=\"http://gentadalafil.com/\">order generic tadalafil</a> '),
(1773, 'libecOego', 'susaevaangelina@ya.com', '85967685221', 'Paris', 'google', 'Attractive girls who agree on everything go over on  londonescortsagency2.org  \r\nclick and you will '),
(1774, 'CarlReums', 'cristianefetter@mail.com ', '82711959598', 'New York', 'google', '<a href=\"http://tadalafilxgeneric.com/\">tadalafil 40 mg online</a> '),
(1775, 'Kevin Johnson', 'tbformleads@gmail.com', '89267533942', 'Miami', 'google', 'Hello \r\n \r\nMy main objective here, is to help increase revenue for you by producing an animated vide'),
(1776, 'Claudioannen', 'picniclika@yandex.ru', '86986144562', 'Santa Maria', 'google', '×‘×©× ×•×ª ×”×©×‘×¢×™× ×©×œ ×”×ž××” ×”×§×•×“×ž×ª, ×¢×“ ×™×ž×™× ×• ××œ×”. × ×›×ª×‘×• ××ž× × ×¡×¤'),
(1777, 'TeoReums', 'stakenaka@jumbox.site ', '82375849341', 'Aurora', 'google', '<a href=\"http://generickamagra.quest/\">cheapest kamagra oral jelly online</a> '),
(1778, 'WimReums', 'kathylee@mail.com ', '85398277641', 'Oakland', 'google', '<a href=\"http://emviagra.com/\">viagra 130 mg</a> '),
(1779, 'Thomascauri', 'azkl@course-fitness.com', '81524111126', 'Porsgrunn', 'google', 'å¤ªé”æ•¸ä½åª’é«” \r\n \r\n \r\nhttps://deltamarketing.com.tw/'),
(1780, 'UgoReums', 'eeess@yahoo.com ', '83867193181', 'Mesa', 'google', '<a href=\"http://seroquel.monster/\">seroquel tablets</a> '),
(1781, 'EdwardLib', 'yourmail@gmail.com', '87226772579', 'Gray Mountain', 'google', 'Esperio (Ð­ÑÐ¿ÐµÑ€Ð¸Ð¾) \r\n \r\nEsperio â€“ ÑÑ‚Ð¾ ÑƒÐ½Ð¸Ð²ÐµÑ€ÑÐ°Ð»ÑŒÐ½Ð¾Ðµ Ñ€ÐµÑˆÐµÐ½Ð¸Ðµ Ð´Ð»Ñ Ñ‚'),
(1782, 'FreddieNubre', 'yourmail@gmail.com', '83163712438', 'Istanbul', 'google', 'Forex Optimum â€“ Ð¼ÐµÐ¶Ð´ÑƒÐ½Ð°Ñ€Ð¾Ð´Ð½Ñ‹Ð¹ Ñ„Ð¾Ñ€ÐµÐºÑ Ð±Ñ€Ð¾ÐºÐµÑ€, ÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ð¹ Ð·Ð°Ð½Ð¸Ð¼Ð°Ð'),
(1783, 'Williamlox', 'yourmail@gmail.com', '83743195356', 'Loja', 'google', '<>ÐžÐ¥ÐžÐ¢Ð ÐžÐ] â€“ ÐžÑ‚Ð·Ñ‹Ð²Ñ‹, Ñ€Ð°Ð·Ð²Ð¾Ð´? ÐšÐ¾Ð¼Ð¿Ð°Ð½Ð¸Ñ Esperio Ð¼Ð¾ÑˆÐµÐ½Ð½Ð¸ÐºÐ¸! \r\nÐ’ '),
(1784, 'Thomasmesee', 'yourmail@gmail.com', '89853275793', 'Kakamega', 'google', 'Ð›Ð¾Ñ…Ð¾Ð±Ñ€Ð¾ÐºÐµÑ€ Esperio. ÐžÐ±Ð·Ð¾Ñ€ Ð¸ Ð¾Ñ‚Ð·Ñ‹Ð²Ñ‹ ÐºÐ»Ð¸ÐµÐ½Ñ‚Ð¾Ð² \r\nEsperio Ð»Ð¾Ñ…Ð¾Ñ‚Ñ€Ð¾Ð½'),
(1785, 'StevenHib', 'yourmail@gmail.com', '88444655982', 'Skive', 'google', 'Esperio ÐœÐžÐ¨Ð•ÐÐÐ˜Ðš Ð¾Ñ‚Ð·Ñ‹Ð²Ñ‹ Ð¸ Ð²Ñ‹Ð²Ð¾Ð´ Ð´ÐµÐ½ÐµÐ³ \r\nÐšÐ¾Ð¼Ð¿Ð°Ð½Ð¸Ñ, Ñ‡ÑŒÑŽ Ð´ÐµÑÑ‚Ðµ'),
(1786, 'BooReums', 'minews27@hotmail.com ', '82967279811', 'Tucson', 'google', '<a href=\"http://tretinoin.monster/\">tretinoin online australia</a> '),
(1787, 'ZakReums', 'vacutti@jumbox.site ', '87129614155', 'Tulsa', 'google', '<a href=\"http://ordersildenafiltablets.com/\">order sildenafil online usa</a> '),
(1788, 'PaulReums', 'nosign4u@yahoo.com ', '89643289953', 'Dallas', 'google', '<a href=\"http://modafinilpills.online/\">how to get modafinil uk</a> '),
(1789, 'JamesUsate', 'yourmail@gmail.com', '85519542231', 'Mount Carey', 'google', 'Forex Optimum â€“ ÑÑ‚Ð°Ñ€Ñ‹Ð¹ Ñ„ÐµÐ¹Ðº Ð² Ð¾Ð½Ð»Ð°Ð¹Ð½-Ñ‚Ñ€ÐµÐ¹Ð´Ð¸Ð½Ð³Ðµ \r\nÐ’ 2019 Ð³Ð¾Ð´Ñƒ Forex '),
(1790, 'JosephAmoni', 'yourmail@gmail.com', '85553963588', 'Montevideo', 'google', 'ÐžÐ±Ð·Ð¾Ñ€ Ð±Ñ€Ð¾ÐºÐµÑ€Ð° Hamilton: Ð²ÑÑ Ð¿Ñ€Ð°Ð²Ð´Ð° Ð¾ ÐºÐ¾Ð¼Ð¿Ð°Ð½Ð¸Ð¸ \r\nÐ›ÑŽÐ´Ð¼Ð¸Ð»Ð° ÐŸÐµÑÑ'),
(1791, 'EmoryRip', 'johnf6616@gmail.com', '87275489422', 'Stung Treng', 'google', 'Millions of designers and experts all over the world make use of MATLAB to examine and make the syst'),
(1792, 'RicardoArept', 'yourmail@gmail.com', '86843291323', 'Lome', 'google', 'Hamilton. ÐžÑÑ‚Ð¾Ñ€Ð¾Ð¶Ð½Ð¾, Ð»Ð¾Ñ…Ð¾Ñ‚Ñ€Ð¾Ð½! \r\nÐ±Ñ€Ð¾ÐºÐµÑ€ HamiltonÐ¡ Ð½ÐµÐ´Ð°Ð²Ð½Ð¸Ñ… Ð¿Ð¾Ñ€ Ñ‚'),
(1793, 'JasonReums', 'dpcovey@hotmail.com ', '81756481219', 'New York', 'google', '<a href=\"https://buytrimox.com/\">order amoxicillin online uk</a> <a href=\"https://sildenafilprotabs.'),
(1794, 'UgoReums', 'semajskroy@yahoo.com ', '81159965627', 'Mesa', 'google', '<a href=\"http://ordertadalafilonline.com/\">tadalafil generic usa</a> '),
(1795, 'Carlosdab', 'rwby@course-fitness.com', '86375225357', 'Mankon Bamenda', 'google', 'ç¬¬ä¸€å€ŸéŒ¢ç¶²-å€ŸéŒ¢,å°é¡å€Ÿæ¬¾,å°é¡å€ŸéŒ¢,è­‰ä»¶å€Ÿæ¬¾,è­‰ä»¶å€ŸéŒ¢,èº«åˆ†è­‰å€Ÿæ¬¾,èº«åˆ†è­‰'),
(1796, 'Eugeneshupe', 'uvtr@course-fitness.com', '87877199223', 'San Vicente De Tagua Tagua', 'google', 'æ­å®¢ä½¬ç²¾å“å’–å•¡ ï½œOKLAO COFFEEï½œè¦çš®å•†åŸŽï½œå’–å•¡è±†ï½œæŽ›è€³ï½œç²¾å“å’–å•¡ï½œå’–å•¡ç¦®'),
(1797, 'RandalRax', 'nwzn@course-fitness.com', '86174576262', 'Praia', 'google', 'ç¬¬ä¸€å€ŸéŒ¢ç¶²æ“æœ‰å…¨å°æœ€å¤šçš„å€ŸéŒ¢è³‡è¨Šã€‚è³‡è¨Šæœ€é½Šå…¨ï¼Œç•¶èˆ–æ¥­ï¼Œä¿¡è²¸æ¥­ï¼Œåœ¨ç¬¬ä'),
(1798, 'ShermanQueby', '@auvto.site', '82519877844', 'Hesperange', 'google', 'Ð Ñ›Ð¡ÐƒÐ Ð…Ð Ñ•Ð Ð†Ð Â°Ð¡â€šÐ ÂµÐ Â»Ð¡ÐŠ TCS Group Ð Ñ›Ð Â»Ð ÂµÐ Ñ– Ð ÑžÐ Ñ‘Ð Ð…Ð¡ÐŠÐ Ñ”Ð Ñ•Ð Ð† Ð '),
(1799, 'AmyReums', 'kanekustoms@hotmail.com ', '87765713491', 'New York', 'google', '<a href=\"http://celexa.monster/\">celexa 10mg pill</a> '),
(1800, 'PaulReums', 'laree@outlook.com ', '84767915945', 'Dallas', 'google', '<a href=\"http://synthroid.quest/\">synthroid 88 mcg tablet</a> '),
(1801, 'EyeReums', 'rogerwpu@aol.com ', '86363152963', 'San Jose', 'google', '<a href=\"https://seroquel.monster/\">seroquel australia</a> <a href=\"https://dexamethasone.live/\">dex'),
(1802, 'TeoReums', 'sharkhead@jumbox.site ', '81968371433', 'Aurora', 'google', '<a href=\"http://brandviagraonline.com/\">viagra for men for sale</a> '),
(1803, 'PaulReums', 'dollie@gmail.com ', '84882439386', 'Dallas', 'google', '<a href=\"http://sildenafilci.com/\">can i buy sildenafil over the counter</a> '),
(1804, 'Daviddum', 'jeremytbjorklund12@gmail.com', '89466857129', 'Ga District', 'google', 'Our instance solutions comes with various other benefits as well. It is constantly readily available'),
(1805, 'AlanReums', 'le@outlook.com ', '85916365219', 'New York', 'google', '<a href=\"http://cialisubuy.com/\">cialis daily 5mg online</a> <a href=\"http://budesonide.live/\">budes'),
(1806, 'KiaReums', 'matsnygren6@mail.com ', '82499313524', 'Denver', 'google', '<a href=\"https://nolvadex.quest/\">tamoxifen citrate nolvadex for sale</a> '),
(1807, 'Anthonygew', 'tik.tok0001@mail.ru', '83499549931', 'Nestor', 'google', '<a href=http://good-torrent.ru/1426-soft-organizer-pro-915-repack-portable-kryak.html>soft organizer'),
(1808, 'Mike Carroll\r\n', 'no-replykl@gmail.com', '88731246924', 'Kaohsiung Municipality', 'google', 'Howdy \r\n \r\nI have just checked  schooloo.com for its SEO metrics and saw that your website could use'),
(1809, 'MarkReums', 'ricstheone@aol.com ', '84756976657', 'Dallas', 'google', '<a href=\"http://furosemide.monster/\">20 mg furosemide</a> '),
(1810, 'Charlesspeli', 'rasstoyaniev@gmail.com', '88397881798', 'Raduznyj', 'google', 'Ð—Ð´Ñ€Ð°Ð²ÑÑ‚Ð²ÑƒÐ¹Ñ‚Ðµ, Ð¿Ñ€Ð¸Ð³Ð»Ð°ÑˆÐ°ÐµÐ¼ Ð’Ð°Ñ Ð¿Ð¾ÑÐµÑ‚Ð¸Ñ‚ÑŒ Ð½Ð°ÑˆÐ¸ \r\nÐ¸Ð³Ñ€Ð¾Ð²Ñ‹Ðµ Ð°Ð'),
(1811, 'YonReums', 'charlesk@qtmx.space ', '82468445383', 'Tampa', 'google', '<a href=\"http://viarga100mg.quest/\">viagra cost</a> '),
(1812, 'Richardcit', 'admin@yandex.ru', '87537756672', 'Lar', 'google', 'Ð Ñ—Ð Ñ•Ð¡Ð‚Ð Ð…Ð Ñ• Ð¡ÐƒÐ¡â€šÐ¡Ñ“Ð Ò‘Ð ÂµÐ Ð…Ð¡â€šÐ¡â€¹ Ð Ñ–Ð ÂµÐ Ñ‘  \r\n \r\nÐ Ñ—Ð Ñ•Ð¡Ð‚Ð Ð…Ð Ñ• Ð¡Ð'),
(1813, 'BooReums', 'midolphins42@yahoo.com ', '86445846825', 'Tucson', 'google', '<a href=\"https://cheapviagramedicinewithnorx.quest/\">where can i buy viagra online without a prescri'),
(1814, 'TeoReums', 'sanora@qtmx.space ', '84566257854', 'Aurora', 'google', '<a href=\"http://viagronline.quest/\">order viagra online paypal</a> '),
(1815, 'MarkReums', 'loura@outlook.com ', '87158982865', 'Dallas', 'google', '<a href=\"http://cials.quest/\">40 mg cialis generic</a> '),
(1816, 'Jamesutini', 'mr.kristoferkihn@gmail.com', '83534491337', 'Comilla', 'google', 'best work obtained. i am extremely satisfied with my grades as well as will be using my assignment o'),
(1817, 'TedReums', 'nglandstrom@romail.site ', '86533437389', 'Arlington', 'google', '<a href=\"http://viagre.quest/\">canadian pharmacy prescription viagra</a> '),
(1818, 'Robertacami', 'yourmail@gmail.com', '84535975931', 'Minsk', 'google', 'TeleTrade â€“ Ð²ÑÑ Ð¿Ñ€Ð°Ð²Ð´Ð° Ð¾Ð± Ð¸Ð·Ð²ÐµÑÑ‚Ð½Ð¾Ð¼ Ð±Ñ€Ð¾ÐºÐµÑ€Ðµ \r\nÐ§Ð°ÑÑ‚Ð¾ Ð·Ð²ÑƒÑ‡Ð¸Ñ‚ Ñ'),
(1819, 'mmbn123', 'maximmad222@yandex.ru', '83174458493', ' Ð¡Ð°Ð¼Ð°Ñ€Ð° ', 'google', 'ÐšÑƒÐ¿Ð¸Ñ‚ÑŒ Ð»Ð¸Ñ†ÐµÐ½Ð·Ð¸Ð¾Ð½Ð½Ñ‹Ðµ Ð¸Ð³Ñ€Ñ‹ +Ð½Ð° xbox ÑÑ‚Ð°Ñ‚ÑŒ Ð“ÐÐ™ÐœÐ•Ð ÐžÐœ  + https://pla'),
(1820, 'AmyReums', 'izabel2@yahoo.com ', '86345195841', 'New York', 'google', '<a href=\"http://vigra100.quest/\">otc viagra pills</a> '),
(1821, 'YonReums', 'gagashok@romail.site ', '89672624952', 'Tampa', 'google', '<a href=\"http://cheapviaga.quest/\">viagra 200</a> '),
(1822, 'MarkReums', 'andrewmoon99@hotmail.com ', '84894388597', 'Dallas', 'google', '<a href=\"http://cialprice.quest/\">rx cialis online</a> '),
(1823, 'KiaReums', 'woodaves@aol.com ', '84377927368', 'Denver', 'google', '<a href=\"https://calis5.quest/\">can you buy cialis otc in canada</a> '),
(1824, 'LisaReums', 'lenorebell@outlook.com ', '87688952795', 'Dallas', 'google', '<a href=\"http://buycialsonline.quest/\">cialis generic canadian</a> '),
(1825, 'MaryReums', 'ikevon1212@outlook.com ', '84669881725', 'Dallas', 'google', '<a href=\"http://vigraprice.quest/\">viagra mexico</a> '),
(1826, 'AshReums', 'flagua@mail.com ', '84843954138', 'Fresno', 'google', '<a href=\"https://genericcialistabletswithoutrx.quest/\">cialis online sicuro</a> '),
(1827, 'CarlReums', 'jesenia@aol.com ', '84247523618', 'New York', 'google', '<a href=\"http://vigra.quest/\">cialis generic viagra</a> '),
(1828, 'Samuelamish', 'ypmvbv@rassx.xyz', '85267473989', 'Parnu', 'google', ''),
(1829, 'EyeReums', 'jenniferluke08@yahoo.com ', '84287748561', 'San Jose', 'google', '<a href=\"https://buycialsonline.quest/\">cialis tablets for sale</a> <a href=\"https://cials.quest/\">w'),
(1830, 'ZakReums', 'ingo0609@jumbox.site ', '81696452562', 'Tulsa', 'google', '<a href=\"http://buyciali.quest/\">generic cialis for daily use</a> '),
(1831, 'Mep', '3t85m652@hotmail.com', '81138225339', 'Kaduna', 'google', 'Hi, this is Jeniffer. I am sending you my intimate photos as I promised. https://tinyurl.com/y4t766c'),
(1832, 'UgoReums', 'natasha@gmail.com ', '89345312167', 'Mesa', 'google', '<a href=\"http://buyingcheapviagra100.quest/\">viagra online paypal canada</a> '),
(1833, 'ShermanQueby', '@auvto.site', '88967458663', 'Hesperange', 'google', '29.11.2021 11:49 Ð Ðˆ Ð Ñ”Ð Ñ•Ð Ñ˜Ð Ñ—Ð Ñ•Ð Â·Ð Ñ‘Ð¡â€šÐ Ñ•Ð¡Ð‚Ð Â° Ð Ñ’Ð Â»Ð ÂµÐ Ñ”Ð¡ÐƒÐ Â°Ð Ð…Ð Ò‘'),
(1834, 'DenReums', 'efairfax@hotmail.com ', '81186771829', 'Chicago', 'google', '<a href=\"https://viagronline.quest/\">viagra 20 mg</a> <a href=\"https://ciais.quest/\">cialis online s'),
(1835, 'RobertTef', 'jeansanchez4859@gmail.com', '85343644489', 'Ð¡Ð¾Ñ‡Ð¸', 'google', 'AdBlue, DPF, FAP, EGR ,E2,Valvematic \r\nStage1 Stage2 \r\n \r\nChip-tuning ECU Ð§Ð¸Ð¿-Ñ‚ÑŽÐ½Ð¸Ð½Ð³  Ð§Ð¸Ð'),
(1836, 'MaryReums', 'carolver70@aol.com ', '81474996285', 'Dallas', 'google', '<a href=\"https://avodart.quest/\">avodart .5mg price</a> '),
(1837, 'WimReums', 'marguerita@hotmail.com ', '81543397245', 'Oakland', 'google', '<a href=\"http://dipyridamole.online/\">dipyridamole in india brand name</a> '),
(1838, 'sanekwusanek', 'sanek2007777@yandex.ru', '82842975373', 'ÐšÑ€Ð°ÑÐ½Ð¾Ð´Ð°Ñ€', 'google', ''),
(1839, 'JudyReums', 'bakerjude@outlook.com ', '83779394413', 'New York', 'google', '<a href=\"https://ivermectinvtab.online/\">stromectol buy uk</a> '),
(1840, 'AmyReums', 'christiana@yahoo.com ', '85297849571', 'New York', 'google', '<a href=\"https://ivermectindtabs.com/\">stromectol nz</a> '),
(1841, 'RichardSax', 'talworithhardcest@mail.com', '84113526695', 'Tomohon', 'google', 'Letâ€™s face it, sometimes people want no-strings-attached sex, and thatâ€™s why they join sex datin'),
(1842, 'JamesGot', 'nlvb@course-fitness.com', '87249136194', 'Taiping', 'google', 'é»žå­æ•¸ä½ç§‘æŠ€æœ‰é™å…¬å¸ \r\n \r\nhttps://spot-digital.com.tw/'),
(1843, 'BooReums', 'kejkp@yahoo.com ', '81999536271', 'Tucson', 'google', '<a href=\"http://orlistat.monster/\">xenical cap</a> '),
(1844, 'JudyReums', 'ericapa923@aol.com ', '89844864198', 'New York', 'google', '<a href=\"https://estrace.today/\">estrace cream where to buy</a> '),
(1845, 'KiaReums', 'lawilliam0510@gmail.com ', '83142734855', 'Denver', 'google', '<a href=\"https://viagronline.quest/\">viagra tablet price in india</a> '),
(1846, 'PaulReums', 'wlchaney2000@mail.com ', '83276875397', 'Dallas', 'google', '<a href=\"https://glucophagemetformin.online/\">how to get metformin online</a> '),
(1847, 'LisaReums', 'donnie@yahoo.com ', '81441846364', 'Dallas', 'google', '<a href=\"https://bactrim.live/\">bactrim 400 80 mg</a> '),
(1848, 'MichaelGoalk', 'yureckijtima@gmail.com', '83537667858', 'La Primavera', 'google', 'ÐŸÐ¾ÑÐ»Ðµ Ð²Ñ‹ Ð¿Ð¾Ð»ÑƒÑ‡Ð¸Ñ‚Ðµ Ð¾Ñ‚ÐºÐ°Ð· Ñ Ñ€Ð°Ð·Ð±Ð°Ð½Ð¾Ð¼ Ð°ÐºÐºÐ°ÑƒÐ½Ñ‚Ð°. Ð’Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾ Ð'),
(1849, 'Georgehoady', 'shetogubovstepan@gmail.com', '89221528219', 'Bandar Seri Begawan', 'google', 'Onion ÐÐ½Ð¾Ð½Ð¸Ð¼Ð°Ð¹Ð·ÐµÑ€ Hydra-Onion Ð¢Ð°Ðº ÑÐºÐ¾Ð»ÑŒÐºÐ¾ Ñ‚Ð°ÐºÐ¾Ðµ Ð°Ð½Ð¾Ð½Ð¸Ð¼Ð°Ð¹Ð·ÐµÑ€ Ð¸ '),
(1850, 'WimReums', 'marnickles@mail.com ', '85616317615', 'Oakland', 'google', '<a href=\"http://buypermethrin.com/\">elimite</a> '),
(1851, 'MichaelAsype', 'ignatovdormidont2823@yandex.ru', '81425125735', '', 'google', 'Ð£ ÐÐ°Ñ ÑÐºÐ¸Ð´ÐºÐ¸ ÐºÑ€ÑƒÐ³Ð»Ñ‹Ð¹ Ð³Ð¾Ð´! \r\nHoOkAh MaGic Ð½Ð°Ñˆ Ð¾Ñ„Ð¸Ñ†Ð¸Ð°Ð»ÑŒÐ½Ñ‹Ð¹ Ð±Ñ€ÐµÐ½Ð'),
(1852, 'TedReums', 'mbellino@instamail.site ', '89183785166', 'Arlington', 'google', '<a href=\"https://malegrapills.online/\">malegra 120 mg</a> '),
(1853, 'ShermanQueby', '@auvto.site', '82516646765', 'Hesperange', 'google', 'Ð ÑœÐ Ñ‘Ð Ñ”Ð Ñ•Ð Ñ–Ð Ñ• Ð Ð…Ð Âµ Ð¡Ñ“Ð Ò‘Ð Ñ‘Ð Ð†Ð Ñ‘Ð¡â‚¬Ð¡ÐŠ Ð ÑœÐ Ñ•Ð Ð†Ð¡â€¹Ð Ñ˜ Ð Ñ–Ð Ñ•Ð Ò‘Ð '),
(1854, 'Mep', 'n4p4n7b9@hotmail.com', '84129629677', 'Kaduna', 'google', 'Hi, this is Jenny. I am sending you my intimate photos as I promised. https://tinyurl.com/y2yqxohw'),
(1855, 'MarkReums', 'janle@hotmail.com ', '83184137943', 'Dallas', 'google', '<a href=\"https://ivermectingtab.com/\">ivermectin tablets order</a> '),
(1856, 'JasonReums', 'biaul2006@mail.com ', '83645294161', 'New York', 'google', '<a href=\"https://ciali.quest/\">cialis 2018</a> <a href=\"https://generictadelafil.quest/\">tadalafil s'),
(1857, 'JamesUsate', 'yourmail@gmail.com', '88771191614', 'Mount Carey', 'google', 'Forex Optimum â€“ ÑÑ‚Ð°Ñ€Ñ‹Ð¹ Ñ„ÐµÐ¹Ðº Ð² Ð¾Ð½Ð»Ð°Ð¹Ð½-Ñ‚Ñ€ÐµÐ¹Ð´Ð¸Ð½Ð³Ðµ \r\nÐ’ 2019 Ð³Ð¾Ð´Ñƒ Forex '),
(1858, 'AshReums', 'tymiller81@hotmail.com ', '87934933929', 'Fresno', 'google', '<a href=\"http://abilify.monster/\">abilify 20 mg coupon</a> '),
(1859, 'AlanReums', 'cindyedington@mail.com ', '81676343942', 'New York', 'google', '<a href=\"https://buyciprofloxacin.com/\">buy generic ciprofloxacin</a> <a href=\"https://diflucan.toda'),
(1860, 'Mike Nevill\r\n', 'no-replykl@gmail.com', '87677634919', 'Boston', 'google', 'Hello \r\n \r\nWe all know the importance that dofollow link have on any website`s ranks. \r\nHaving most '),
(1861, 'Thomasmesee', 'yourmail@gmail.com', '89433669526', 'Kakamega', 'google', 'Ð›Ð¾Ñ…Ð¾Ð±Ñ€Ð¾ÐºÐµÑ€ Esperio. ÐžÐ±Ð·Ð¾Ñ€ Ð¸ Ð¾Ñ‚Ð·Ñ‹Ð²Ñ‹ ÐºÐ»Ð¸ÐµÐ½Ñ‚Ð¾Ð² \r\nEsperio Ð»Ð¾Ñ…Ð¾Ñ‚Ñ€Ð¾Ð½'),
(1862, 'CharlesDromO', 'zdqk@course-fitness.com', '88929946563', 'Santa Maria', 'google', 'XYZ å£¯é™½è—¥æ˜¥è—¥å°ˆè³£åº— å¤§é‡è³¼è²·æœ‰å„ªæƒ  \r\n \r\nhttps://man-r20.com/'),
(1863, 'TeoReums', 'suave118@romail.site ', '88199921779', 'Aurora', 'google', '<a href=\"https://ivermectinitab.com/\">ivermectin price usa</a> '),
(1864, 'Andrewdef', 'ung4e@course-fitness.com', '88147379136', 'Nuwara Eliya', 'google', 'unethostç„¡é™ç©ºé–“è™›æ“¬ä¸»æ©Ÿ æŠ€è¡“åˆ†äº«éƒ¨è½æ ¼ \r\n \r\nhttp://blog.unethost.com/'),
(1865, 'Mep', '7lo7m12g@gmail.com', '82569245673', 'Kaduna', 'google', 'Hi, this is Irina. I am sending you my intimate photos as I promised. https://tinyurl.com/y5lfwyl7'),
(1866, 'DenReums', 'watsonroger@aol.com ', '83916139979', 'Chicago', 'google', '<a href=\"https://genericviaga.quest/\">viagra 50 mg tablet price in india</a> <a href=\"https://sialic'),
(1867, 'ZakReums', 'jasonrebroker@qtmx.space ', '87663289128', 'Tulsa', 'google', '<a href=\"https://ventolin.today/\">buy ventolin inhalers online</a> '),
(1868, 'michaelin2', 'gladys@hideo29.mokomichi.xyz', '87539562753', '', 'google', 'New hot project galleries, daily updates\r\nhttp://valleyview.asian.adablog69.com/?kaylynn \r\n word rec'),
(1869, 'MichaelGoalk', 'yureckijtima@gmail.com', '82567265321', 'La Primavera', 'google', 'Ð—Ð°Ñ‚ÐµÐ¼ Ð²Ñ‹ Ð¿Ð¾Ð»ÑƒÑ‡Ð¸Ñ‚Ðµ Ð¾Ð¿Ñ€Ð¾Ð²ÐµÑ€Ð¶ÐµÐ½Ð¸Ðµ Ñ Ñ€Ð°Ð·Ð±Ð°Ð½Ð¾Ð¼ Ð°ÐºÐºÐ°ÑƒÐ½Ñ‚Ð°. ÐŸÑ€'),
(1870, 'WimReums', 'jj0507@aol.com ', '82249379473', 'Oakland', 'google', '<a href=\"http://molnupiravir.us.com/\">molnupiravir canada</a> '),
(1871, 'AmyReums', 'xvxbrainxvx@yahoo.com ', '84199339285', 'New York', 'google', '<a href=\"https://glucophage.quest/\">buy glucophage canada</a> '),
(1872, 'vitasikshman', 'skokozik2@gmail.com', '86288166747', 'Abinsk', 'google', 'Ð ÑƒÑÑÐºÐ°Ñ Ð´Ð¾ÑÐºÐ° Ð³Ð¾Ñ€Ð¾Ð´Ð° Ð Ð¾ÑÑ‚Ð¾Ð²-Ð½Ð°-Ð”Ð¾Ð½Ñƒ Ð±ÐµÑÐ¿Ð»Ð°Ñ‚Ð½Ñ‹Ñ… Ð¾Ð±ÑŠÑÐ²Ð»Ð'),
(1873, 'TeoReums', 'susie@instamail.site ', '86618437837', 'Aurora', 'google', '<a href=\"https://molnupiravir.us.com/\">molnupravir</a> '),
(1874, 'BitcoinWalletISFex', 'borglafira@yandex.ru', '81535556361', 'Santa Rosa', 'google', 'Good afternoon. We present to your attention bitcoin wallet BitcoinWallet.is created by Bitcoin comm'),
(1875, 'UgoReums', 'pedromolina70@outlook.com ', '88896336964', 'Mesa', 'google', '<a href=\"http://abilify.monster/\">cheap generic abilify</a> '),
(1876, 'Coliny4', 'grove2p3w@zohomail.eu', '85112761483', 'Atwood', 'google', 'This epic game makes men lose their minds. Try not to cum while playing!  Play game HERE - u.to/MJy7'),
(1877, 'KiaReums', 'stylesquad@gmail.com ', '86617894763', 'Denver', 'google', '<a href=\"https://buycildenafil.quest/\">sildenafil fast delivery</a> '),
(1878, 'AshReums', 'whosea@outlook.com ', '84276572716', 'Fresno', 'google', '<a href=\"http://ivermectinktab.com/\">buy ivermectin cream</a> '),
(1879, 'AshReums', 'gsxr2479@mail.com ', '87522454794', 'Fresno', 'google', '<a href=\"http://flagyl.monster/\">metronidazole 500 mg</a> '),
(1880, 'UgoReums', 'mdkricken@hotmail.com ', '88756343558', 'Mesa', 'google', '<a href=\"http://amoxicillin.monster/\">amoxicillin 250mg cost</a> '),
(1881, 'Keithned', 'yourmail@gmail.com', '88867649336', 'Kalamaria', 'google', 'Ð‘Ð°Ð½Ðº Ð Ð¾ÑÑÐ¸Ð¸ 27.12.2018 Ð¿Ñ€Ð¸Ð½ÑÐ» Ñ€ÐµÑˆÐµÐ½Ð¸Ðµ Ð°Ð½Ð½ÑƒÐ»Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ Ð»Ð¸Ñ†ÐµÐ½Ð·Ð¸'),
(1882, 'WimReums', 'fiveoak3ts@yahoo.com ', '86477319831', 'Oakland', 'google', '<a href=\"https://budesonidetablets.monster/\">otc budesonide</a> '),
(1883, 'KiaReums', 'asl67@aol.com ', '81488381773', 'Denver', 'google', '<a href=\"https://fxtadalafil.com/\">tadalafil 10mg cost</a> '),
(1884, 'UgoReums', 'lisette@yahoo.com ', '84952632182', 'Mesa', 'google', '<a href=\"https://mysildenafilshop.com/\">sildenafil citrate over the counter</a> '),
(1885, 'https://bit.ly/3JdICTk?P0fQc6', '.', '.', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'google', 'Ð£Ð»Ð¸Ñ‡Ð½Ñ‹Ðµ Ð·Ð½Ð°ÐºÐ¾Ð¼ÑÑ‚Ð²Ð° 2022. ÐšÐ°Ðº Ð¿Ð¾Ð·Ð½Ð°ÐºÐ¾Ð¼Ð¸Ñ‚ÑŒÑÑ Ñ Ð´ÐµÐ²ÑƒÑˆÐºÐ¾Ð¹ \r\n<a'),
(1886, 'ShermanQueby', '@auvto.site', '86625473763', 'Hesperange', 'google', 'Ð â€™Ð¡Ð‚Ð Â°Ð¡â€¡-Ð Ñ•Ð Ð…Ð Ñ”Ð Ñ•Ð Â»Ð Ñ•Ð Ñ– Ð ÐŽÐ Ñ•Ð¡â€žÐ Ñ‘Ð¡Ð Ð ÑšÐ ÂµÐ Ð…Ð¡ÐŠÐ¡â‚¬Ð Ñ‘Ð Ñ”Ð'),
(1887, 'Charlesspeli', 'rasstoyaniev@gmail.com', '86324545951', 'Raduznyj', 'google', 'Ð—Ð´Ñ€Ð°Ð²ÑÑ‚Ð²ÑƒÐ¹Ñ‚Ðµ, Ð¿Ñ€Ð¸Ð³Ð»Ð°ÑˆÐ°ÐµÐ¼ Ð’Ð°Ñ Ð¿Ð¾ÑÐµÑ‚Ð¸Ñ‚ÑŒ Ð½Ð°ÑˆÐ¸ \r\nÐ¸Ð³Ñ€Ð¾Ð²Ñ‹Ðµ Ð°Ð'),
(1888, 'Robertacami', 'yourmail@gmail.com', '81829413159', 'Minsk', 'google', 'TeleTrade â€“ Ð²ÑÑ Ð¿Ñ€Ð°Ð²Ð´Ð° Ð¾Ð± Ð¸Ð·Ð²ÐµÑÑ‚Ð½Ð¾Ð¼ Ð±Ñ€Ð¾ÐºÐµÑ€Ðµ \r\nÐ§Ð°ÑÑ‚Ð¾ Ð·Ð²ÑƒÑ‡Ð¸Ñ‚ Ñ'),
(1889, 'CarlReums', 'natalya@mail.com ', '81783287444', 'New York', 'google', '<a href=\"https://sildenafilcitrateonlinesale.com/\">generic sildenafil from india</a> '),
(1890, 'KiaReums', 'vanessamurphy@outlook.com ', '82137724232', 'Denver', 'google', '<a href=\"https://cialistopmed.com/\">black cialis</a> '),
(1891, 'JamesDob', 'tuhtintemych@gmail.com', '86675516591', 'Lome', 'google', 'Ð’ Ð½Ð°ÑÑ‚Ð¾ÑÑ‰ÐµÐµ Ð²Ñ€ÐµÐ¼Ñ Ñ†ÐµÑ€ÐµÐ¼Ð¾Ð½Ð¸Ð°Ð»ÑŒÐ½Ñ‹Ð¹ ÑÐ°Ð¹Ñ‚ Ð¾Ð½Ð¸Ð¾Ð½ Ð“Ð¸Ð´Ñ€Ñ‹ Ñ€Ð°Ð±Ð'),
(1892, 'Michaelnip', 'conmecelka@mail.ru', '89856284283', 'Bamako', 'google', 'ÐÐ²Ñ‚Ð¾Ð¼Ð°Ñ‚Ð¸Ñ‡ÐµÑÐºÐ¸Ð¹ Ð·Ð°Ñ€Ð°Ð±Ð¾Ñ‚Ð¾Ðº,Ð¿ÐµÑ€Ð²Ñ‹Ðµ Ð´ÐµÐ½ÑŒÐ³Ð¸ ÑƒÐ¶Ðµ ÑÐµÐ³Ð¾Ð´Ð½Ñ! \r\nh'),
(1893, 'ThomasBib', 'p8gjv@course-fitness.com', '82444338665', 'Aarschot', 'google', 'å¤ªé”æ•¸ä½åª’é«” \r\n \r\n \r\nhttps://deltamarketing.com.tw/'),
(1894, 'ZakReums', 'joanself1@romail.site ', '83622143455', 'Tulsa', 'google', '<a href=\"http://sildenafilthree.com/\">sildenafil over the counter india</a> '),
(1895, 'KennethwhaFT', 'vpsr@course-fitness.com', '83859455538', 'Linguere', 'google', 'Game LIFE éŠæˆ²æƒ…å ± \r\n \r\n \r\nhttps://gamelife.tw/portal.php'),
(1896, 'LisaReums', 'rosemary@mail.com ', '86611879589', 'Dallas', 'google', '<a href=\"http://tadalafilvtabs.com/\">tadalafil 10 mg canada</a> '),
(1897, 'BooReums', 'noway96204@outlook.com ', '86142617299', 'Tucson', 'google', '<a href=\"https://tadalafilotab.com/\">tadalafil 10mg cost</a> '),
(1898, 'DavidWoose', 'asda111111sdas@gmail.pl', '89592623875', 'Stung Treng', 'google', '<a href=https://rakos.pl/>administrowanie nieruchomosciami warszawa</a> Sprawdz.'),
(1899, 'EyeReums', 'jaymes007@gmail.com ', '88462921824', 'San Jose', 'google', '<a href=\"https://cytotec.monster/\">cytotec 25 mcg</a> <a href=\"https://viagrabuyz.com/\">how to get v'),
(1900, 'JudyReums', 'donnapaparella@yahoo.com ', '85197417736', 'New York', 'google', '<a href=\"https://viagrawf.com/\">canadian viagra coupon</a> '),
(1901, 'JasonReums', 'hudsman1@outlook.com ', '87624514196', 'New York', 'google', '<a href=\"https://cytotec.monster/\">cytotec 800 mg</a> <a href=\"https://cytotec.live/\">cytotec 200 mc'),
(1902, 'DavidScogy', 'aleksandrkramorov88@gmail.com', '82444939643', 'Debrecen', 'google', 'Ð¢Ñ€ÐµÐ¹Ð´ÐµÑ€Ð°Ð¼ Ð¸ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑÐ¼ Ñ„Ð¸Ñ€Ð¼Ñ‹ Ð´Ð¾ÑÑ‚ÑƒÐ¿ÐµÐ½ Ñ†ÐµÐ¿ÑŒ Ñ€Ð°Ð·Ð»Ð¸Ñ‡Ð½'),
(1903, 'Vincentfed', 'makarovvasilij17@gmail.com', '84936614975', '', 'google', 'Ð´Ñ€Ð¾Ð²Ð° Ð”Ñ€ÐµÐ²Ñ‚Ð¾Ñ€Ð³ Woodtrade \r\nhttps://www.google.com/search?q=%D0%B4%D1%80%D0%BE%D0%B2%D0%'),
(1904, 'TeoReums', 'darrenconklin@romail.site ', '84351523312', 'Aurora', 'google', '<a href=\"http://cialisglx.com/\">cialis pills price</a> '),
(1905, 'WheelKnoryHK', 'robneubs4300@list.ru', '89179517543', 'Willemstad', 'google', 'putting on a condom porn lilypichu porn cameltoe porn videos jessica ashley porn top 10 porn videos '),
(1906, 'MaryReums', 'gacamolemama@gmail.com ', '83683533952', 'Dallas', 'google', '<a href=\"http://mysildenafilshop.com/\">sildenafil price australia</a> '),
(1907, 'MarkReums', 'stphnndrsn115@outlook.com ', '84468118236', 'Dallas', 'google', '<a href=\"http://seroquel.live/\">seroquel for sleep and anxiety</a> '),
(1908, 'DenReums', 'kayce@mail.com ', '86612915227', 'Chicago', 'google', '<a href=\"https://zithromax.today/\">zithromax no prescription</a> <a href=\"https://aurogra.live/\">aur'),
(1909, 'Wilmersoown', 'poaggl@bk.ru', '84363147297', 'Tamana', 'google', 'Get an aliexpress coupon for 100 dollars USA https://alitems.site/g/1e8d1144946afb653ef516525dc3e8/'),
(1910, 'Mep', 'mm7kdlsw@icloud.com', '82178315992', 'Kaduna', 'google', 'Hi, this is Jenny. I am sending you my intimate photos as I promised. https://tinyurl.com/y6bsfkz4'),
(1911, 'Investoboundwew', 'david25inshare@gmail.com', '89951337297', 'Kepulauan Riau', 'google', ''),
(1912, 'KiaReums', 'hugodabosspromo@mail.com ', '86555345481', 'Denver', 'google', '<a href=\"https://cialisglx.com/\">brand cialis buy</a> '),
(1913, 'TedReums', 'beth0513@instamail.site ', '87649826183', 'Arlington', 'google', '<a href=\"http://sildenafilbuybest.com/\">prices of sildenafil</a> '),
(1914, 'WimReums', 'marnickles@aol.com ', '87729184844', 'Oakland', 'google', '<a href=\"https://zithromax.online/\">zithromax 250</a> '),
(1915, 'UgoReums', 'honeytn8@yahoo.com ', '83517862441', 'Mesa', 'google', '<a href=\"https://sildenafilcitrateonlinesale.com/\">buy sildenafil 50mg uk</a> '),
(1916, 'TedReums', 'rednany01@romail.site ', '87168538266', 'Arlington', 'google', '<a href=\"http://cialiseight.com/\">where to get cialis in canada</a> '),
(1917, 'YonReums', 'danalcantar@qtmx.space ', '89956214521', 'Tampa', 'google', '<a href=\"http://prednisone.live/\">prednisone generic cost</a> '),
(1918, 'MaryReums', 'krai25@aol.com ', '82831689572', 'Dallas', 'google', '<a href=\"http://fxtadalafil.com/\">generic tadalafil canadian</a> '),
(1919, 'RodgerAliet', 'maks_kriukov-6450@mail.ru', '81426658113', 'Ligatne', 'google', 'bongacams \r\n \r\n<a href=https://businesslistings4u.com/>bongacams</a>'),
(1920, 'ElliottRon', 'sitnikov_lekha-97320@mail.ru', '81441117386', 'Yanahuara', 'google', 'Ð²Ð°Ð²Ð°Ð´Ð° \r\n \r\n<a href=https://mxbalance.com/>Vavada</a>'),
(1921, 'ZakReums', 'alpined@romail.site ', '82942396171', 'Tulsa', 'google', '<a href=\"http://buspar.quest/\">buspar pill 10 mg</a> '),
(1922, 'ymnongho', 'kzwvslnlu@riador.online', '84517589716', '', 'google', 'generic viagra for sale  https://mrviagara.com/# - viagra tablets for men price  \r\ngenuine viagra wi'),
(1923, 'AmyReums', 'lindsey@yahoo.com ', '86224917641', 'New York', 'google', '<a href=\"https://fxtadalafil.com/\">tadalafil generic otc</a> '),
(1924, 'AshReums', 'cjureeves@aol.com ', '87325358947', 'Fresno', 'google', '<a href=\"https://viagralu.com/\">viagra 100mg price india</a> '),
(1925, 'Mep', 'nlaaozlu@hotmail.com', '82536152926', 'Kaduna', 'google', 'Hi, this is Julia. I am sending you my intimate photos as I promised. https://tinyurl.com/y3oynb9v'),
(1926, 'TeoReums', 'richardcurtess@instamail.site ', '81848396692', 'Aurora', 'google', '<a href=\"http://cialiseight.com/\">cialis 50mg price</a> '),
(1927, 'BooReums', 'glennm@mail.com ', '81399762498', 'Tucson', 'google', '<a href=\"https://buyantabuse.online/\">where can i buy antabuse</a> '),
(1928, 'ViagraRerne', 'test@mail.ru', '87446954316', 'Yako', 'google', 'https://helpfarm.ru/ \r\nÐºÑƒÐ¿Ð¸Ñ‚ÑŒ Ð²Ð¸Ð°Ð³Ñ€Ñƒ \r\nÐ²Ð¸Ð°Ð³Ñ€Ð° Ð´Ð»Ñ Ð¼ÑƒÐ¶Ñ‡Ð¸Ð½ \r\nÑÐ¸Ð»Ð´ÐµÐ½Ð°'),
(1929, 'LisaReums', 'keystonemachine@mail.com ', '82289332791', 'Dallas', 'google', '<a href=\"https://tadalafilatab.com/\">tadalafil best price india</a> '),
(1930, 'UgoReums', 'lik2havfn2@outlook.com ', '81573462225', 'Mesa', 'google', '<a href=\"https://clomid.today/\">clomid pills buy online</a> '),
(1931, 'PaulReums', 'walterbernardelli@mail.com ', '85116921863', 'Dallas', 'google', '<a href=\"https://proscar.monster/\">cost of proscar in canada</a> '),
(1932, 'Williamtag', 'matlashovgosha@gmail.com', '86516736978', 'Debrecen', 'google', 'ÐŸÑ€ÐµÐ´Ð²Ð°Ñ€Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾ Ð¼Ð½Ð¾Ð³Ð¸Ð¼Ð¸ Ð¿Ð°Ñ€Ð°Ð¼Ð¸ Ð²ÑÑ‚Ð°ÐµÑ‚ Ð·Ð°Ð´Ð°Ñ‡Ð° Ð²Ñ‹Ð±Ð¾Ñ€Ð° Ð¾Ñ‚'),
(1933, 'BooReums', 'melisa@mail.com ', '83472685693', 'Tucson', 'google', '<a href=\"https://buyeffexor.online/\">effexor 112.5</a> '),
(1934, 'Eugeneshupe', 'uvtr@course-fitness.com', '81243515382', 'San Vicente De Tagua Tagua', 'google', 'æ­å®¢ä½¬ç²¾å“å’–å•¡ ï½œOKLAO COFFEEï½œè¦çš®å•†åŸŽï½œå’–å•¡è±†ï½œæŽ›è€³ï½œç²¾å“å’–å•¡ï½œå’–å•¡ç¦®'),
(1935, 'WimReums', 'vallie@hotmail.com ', '84935759233', 'Oakland', 'google', '<a href=\"https://tamoxifen.monster/\">tamoxifen cost in india</a> '),
(1936, 'AshReums', 'gesine@mail.com ', '82964641471', 'Fresno', 'google', '<a href=\"https://genericcialistablet.com/\">can you buy real cialis online</a> '),
(1937, 'PaulReums', 'josephmarcotte@gmail.com ', '84441538198', 'Dallas', 'google', '<a href=\"https://genericviagrapls.com/\">viagra prescription online usa</a> '),
(1938, 'CarlReums', 'oceancity@gmail.com ', '89992625585', 'New York', 'google', '<a href=\"https://neurontingabapentin.online/\">neurontin brand name 800mg best price</a> '),
(1939, 'YonReums', 'rosalba@instamail.site ', '88255287387', 'Tampa', 'google', '<a href=\"http://lopressor.live/\">lopressor 50 mg tablet</a> '),
(1940, 'JeniaKl', 'arasmout650@gmail.com', '86474698867', 'ÐŸÐ¸Ñ‚ÐµÑ€', 'google', 'Ð”Ð¸Ð°Ð»Ð¾Ð³Ð¸ Ð¾Ð± ÑÐµÐºÑÐ° ÑÑ‚Ð¾ Ð¿Ñ€Ð²Ð¸Ð»ÑŒÐ½Ð¾ Ð¸ Ð³Ð¾Ð²Ð¾Ñ€Ð¸Ñ‚ÑŒ Ð¾ Ð½ÐµÐ¼ Ð½ÐµÐ¾Ð±Ñ…Ð¾Ð´Ð'),
(1941, 'JudyReums', 'kerry@hotmail.com ', '85398437163', 'New York', 'google', '<a href=\"https://viagranu.com/\">viagra uk paypal</a> '),
(1942, 'KiaReums', 'vivsterjos@mail.com ', '85631382768', 'Denver', 'google', '<a href=\"http://buyclomid.online/\">buy 150 mg clomid</a> '),
(1943, 'Josephdak', 'manjims77664@yahoo.com', '85653968166', 'Yanahuara', 'google', '\r\n\r\nHello\r\n\r\nMany People are dying nowadays because of Covid-19 so you must find out WHO IS OUR SAVI'),
(1944, 'EyeReums', 'carola@aol.com ', '86128927584', 'San Jose', 'google', '<a href=\"http://tadalafiletabs.com/\">generic tadalafil 20mg india</a> <a href=\"http://buypaxil.onlin'),
(1945, 'Franksteepe', 'stiins@rambler.ru', '85242953986', 'Karakol', 'google', 'Ð”Ð¾Ð²Ð¾Ð»ÑŒÐ½Ð¾ Ð¸Ð½Ñ‚ÐµÑ€ÐµÑÐ½Ð¾ \r\n_________________ \r\nÐ¾Ð¹Ñ‹Ð½ Ð°Ð²Ñ‚Ð¾Ð¼Ð°Ñ‚Ñ‚Ð°Ñ€Ñ‹ Ð¾Ð½Ð»Ð°Ð¹'),
(1946, 'TedReums', 'trishdaniellsinmaui@romail.site ', '83643683988', 'Arlington', 'google', '<a href=\"http://tadalafildh.com/\">tadalafil generic best price</a> '),
(1947, 'GeorgeEmomi', 'pdergachev80@gmail.com', '84217895637', 'Riohacha', 'google', '<a href=https://masterholodov.ru/>Ñ€ÐµÐ¼Ð¾Ð½Ñ‚ Ñ…Ð¾Ð»Ð¾Ð´Ð¸Ð»ÑŒÐ½Ð¸ÐºÐ¾Ð² Ð½Ð° Ð´Ð¾Ð¼Ñƒ</a>'),
(1948, 'AmyReums', 'timovermyer@outlook.com ', '83344673454', 'New York', 'google', '<a href=\"https://genericcialiscanada.com/\">cialis online cost</a> '),
(1949, 'goranutkin', 'goranutkin@yandex.ru', '89518286688', 'Kaohsiung Municipality', 'google', 'ÐŸÐš ÐžÑ€Ð¸Ð¾Ð½ 128,ÐžÑ€Ð¸Ð¾Ð½ Ð’Ð¾ÑÑ‚Ð¾Ñ‡Ð½Ñ‹Ð¹ ÑÐºÑÐ¿Ñ€ÐµÑÑ 512, ÐžÑ€Ð¸Ð¾Ð½ ÐŸÐ Ðž ÑÐ±Ð¾Ñ€Ðº'),
(1950, 'PaulReums', 'corene@gmail.com ', '81373898357', 'Dallas', 'google', '<a href=\"https://genericcialiscanada.com/\">cialis 5mg uk</a> '),
(1951, 'Coomeetwor', 'info@coomeetchatru.xyz', '83264743954', 'Moscow', 'google', 'Ð¥Ð¾Ñ‡ÐµÑˆÑŒ Ð¿Ð¾Ð·Ð½Ð°ÐºÐ¾Ð¼Ð¸Ñ‚ÑŒÑÑ Ñ ÐºÐ»Ð°ÑÑÐ½Ñ‹Ð¼Ð¸ Ð¶ÐµÐ½Ñ‰Ð¸Ð½Ð°Ð¼Ð¸? Ð—Ð°Ñ…Ð¾Ð´Ð¸ ÑÐºÐ'),
(1952, 'CarlReums', 'osggonehunting@mail.com ', '87795346586', 'New York', 'google', '<a href=\"https://viagraddf.com/\">cheap canadian generic viagra</a> '),
(1953, 'AshReums', 'yevette@hotmail.com ', '86619264634', 'Fresno', 'google', '<a href=\"https://effexor.live/\">effexor over the counter</a> '),
(1954, 'EdwardBooft', 'hp5@4ttmail.com', '87264215917', 'Chisinau', 'google', 'hairy panty thumbs\r\nhot black pussy\r\nhairy blonde tgp\r\nhttps://www.hairybeautypics.com/blonde-hairy-'),
(1955, 'KennethwhaFT', 'vpsr@course-fitness.com', '89135547817', 'Linguere', 'google', 'Game LIFE éŠæˆ²æƒ…å ± \r\n \r\n \r\nhttps://gamelife.tw/portal.php'),
(1956, 'Marvinbup', 'mag@course-fitness.com', '86666414192', 'Al Ladhiqiyah', 'google', 'æ­å®¢ä½¬ç²¾å“å’–å•¡ \r\n \r\nhttps://blog.oklaocoffee.tw/'),
(1957, 'MarkReums', 'tamala@aol.com ', '82832656184', 'Dallas', 'google', '<a href=\"https://dapoxetine.monster/\">dapoxetine for sale canada</a> '),
(1958, 'mmbn123', 'maximmad222@yandex.ru', '88336519874', ' Ð£Ñ„Ð° ', 'google', 'Ð“Ð´Ðµ ÐºÑƒÐ¿Ð¸Ñ‚ÑŒ Ñ€Ð°Ð·Ð½Ð¾Ð¾Ð±Ñ€Ð°Ð·Ð½Ñ‹Ðµ Ð¸Ð³Ñ€Ñ‹ +Ð½Ð° xbox Ð¿Ñ€Ð¸ÑÑ‚Ð°Ð²ÐºÑƒ ÐŸÐ¾Ð¿Ñ€Ð¾Ð±Ñƒ'),
(1959, 'DenReums', 'jeffcoleman1@yahoo.com ', '83573149246', 'Chicago', 'google', '<a href=\"http://sildenafilcipill.com/\">sildenafil soft tabs 100mg</a> <a href=\"http://piroxicam.live'),
(1960, 'IsaacArera', 'glukhina.1998@mail.ru', '89426392828', 'Sumbe', 'google', ''),
(1961, 'BooReums', 'teskeshawn@outlook.com ', '89828437885', 'Tucson', 'google', '<a href=\"https://buyhydroxychloroquine.monster/\">hydroxychloroquine sulfate generic</a> '),
(1962, 'DenReums', 'lailacavalcanti@aol.com ', '86413232756', 'Chicago', 'google', '<a href=\"http://buysildenafilcheap.com/\">sildenafil over the counter india</a> <a href=\"http://clomi'),
(1963, 'Wallacefon', 'olezhkaromanchikov@gmail.com', '82389748889', 'Yangon', 'google', 'Ð Ð°ÑÑÑ‡ÐµÑ‚Ð½Ñ‹Ð¹ ÑÐ»ÐµÐ´ÑÑ‚Ð²Ð¸Ðµ Ð´Ð°ÐµÑ‚ Ð²Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾ÑÑ‚ÑŒ Ð±Ð¸Ð·Ð½ÐµÑÐ¼ÐµÐ½Ñƒ Ð¾ÑÑƒÑ'),
(1964, 'MaryReums', 'mddyao@mail.com ', '84256259593', 'Dallas', 'google', '<a href=\"https://buynexium.quest/\">nexium online</a> '),
(1965, 'RaymondBanum', 'admitad.partnersssssssss@gmail.com', '86671674628', 'Praia', 'google', 'Yesterday one of the webmasters earned 23011$, but how much can you earn? Best CPA Affiliate Program'),
(1966, 'Kathrynhaway', 'cxnfuazdv@gordpizza.ru', '81755621783', 'Al Ladhiqiyah', 'google', '<a href=https://flashroyal.net/>free casino games no registration no download</a> \r\n<a href=\"https:/'),
(1967, 'Andrewdef', 'ung4e@course-fitness.com', '86845153153', 'Nuwara Eliya', 'google', 'unethostç„¡é™ç©ºé–“è™›æ“¬ä¸»æ©Ÿ æŠ€è¡“åˆ†äº«éƒ¨è½æ ¼ \r\n \r\nhttp://blog.unethost.com/'),
(1968, 'MarkReums', 'kokusai@mail.com ', '86673956736', 'Dallas', 'google', '<a href=\"http://onlinecialis10tablets.monster/\">buying cialis in canada</a> '),
(1969, 'ThomasBib', 'p8gjv@course-fitness.com', '81587334239', 'Aarschot', 'google', 'å¤ªé”æ•¸ä½åª’é«” \r\n \r\n \r\nhttps://deltamarketing.com.tw/'),
(1970, 'AshReums', 'sunway@mail.com ', '87437256438', 'Fresno', 'google', '<a href=\"http://ndpills.online/\">buy generic viagra online canada</a> '),
(1971, 'MichaelEncum', 'dwga1}edr152ewmadg6j115}d@gmail.com', '85571819291', 'Hagatna', 'google', 'Hello. \r\nI`ve got an expierence with theese guys <a href=\"http://10at10club.com/\">http://10at10club.'),
(1972, 'GamerRit', '@games-games.online', '89378928688', 'Jalapa', 'google', 'acquaintance adrenaline deed specifically taciturn for prescription racing the same mechanism chauff'),
(1973, 'JudyReums', 'mjtafoya@aol.com ', '82391472314', 'New York', 'google', '<a href=\"https://cialisonlinepillsforsaleonline.quest/\">cialis generic discount</a> '),
(1974, 'KiaReums', 'kelvin@outlook.com ', '81958785886', 'Denver', 'google', '<a href=\"https://bestviagradrugnorx.monster/\">400 mg viagra</a> '),
(1975, 'PaulReums', 'rscothern@hotmail.com ', '81278756699', 'Dallas', 'google', '<a href=\"http://cheapviagratabletsale.quest/\">best price for generic sildenafil</a> '),
(1976, 'Richardsmard', 'litehackru@mail.ru', '81763193937', 'Istanbul', 'google', 'Ð¯ Ñ…Ð¾Ñ‡Ñƒ Ð²Ð°Ð¼ Ñ€Ð°ÑÑÐºÐ°Ð·Ð°Ñ‚ÑŒ Ñ‡Ñ‚Ð¾ Ñ‚Ð°ÐºÐ¾Ðµ <a href=https://litehack.ru/>Ð’Ñ‹ÑÐ¾ÐºÐ¸Ð'),
(1977, 'TeoReums', 'fseals@romail.site ', '89994866319', 'Aurora', 'google', '<a href=\"https://orderviagra200mgpills.monster/\">where to get female viagra australia</a> '),
(1978, 'MichaelEncum', 'edga1}ewr11newmhdg6jrbned11}d@gmail.com', '82741152999', 'Hagatna', 'google', 'Hello. \r\nI`ve got an expierence with theese guys <a href=\"http://10at10club.com/\">http://10at10club.'),
(1979, 'BooReums', 'kateeringolden@aol.com ', '89678683185', 'Tucson', 'google', '<a href=\"http://bestviagra200tablet.monster/\">viagra coupon online</a> '),
(1980, 'UgoReums', 'lisette@mail.com ', '89812117227', 'Mesa', 'google', '<a href=\"http://viagrabestmedicineonlinepharmacy.quest/\">buy viagra south africa online</a> '),
(1981, 'AmyReums', 'danahalterman@mail.com ', '84595397282', 'New York', 'google', '<a href=\"http://cheapviagra50mgrx.monster/\">viagra black</a> '),
(1982, 'GeorgeEmomi', 'pdergachev80@gmail.com', '89888553771', 'Riohacha', 'google', '<a href=https://masterholodov.ru/>Ñ€ÐµÐ¼Ð¾Ð½Ñ‚ Ñ…Ð¾Ð»Ð¾Ð´Ð¸Ð»ÑŒÐ½Ð¸ÐºÐ° Ð½Ð° Ð´Ð¾Ð¼Ñƒ</a>'),
(1983, 'AlanReums', 'commcts@hotmail.com ', '87681984152', 'New York', 'google', '<a href=\"http://bestviagra100mgnoprescription.quest/\">sildenafil 20 mg mexico</a> <a href=\"http://su'),
(1984, 'KiaReums', 'cathrine@mail.com ', '87687156635', 'Denver', 'google', '<a href=\"https://orderviagratabprescription.monster/\">viagra cost in mexico</a> '),
(1985, 'Frankduact', 'gfgfg4gf@bambo-mebel.top', '89866727899', 'Lar', 'google', ''),
(1986, 'TedReums', 'adambarnes5000@romail.site ', '86453168594', 'Arlington', 'google', '<a href=\"http://viagrabestprice.monster/\">order brand viagra online</a> '),
(1987, 'AmyReums', 'johnsreeve@mail.com ', '83859969313', 'New York', 'google', '<a href=\"http://viagrabestprice.monster/\">viagra online 150mg</a> '),
(1988, 'DenReums', 'jwrs@hotmail.com ', '84196861365', 'Chicago', 'google', '<a href=\"https://cheapviagrashop.quest/\">how to get viagra uk</a> <a href=\"https://onlineviagra50mgt'),
(1989, 'AshReums', 'vennie@hotmail.com ', '82744773155', 'Fresno', 'google', '<a href=\"http://orderbestcialis5mg.quest/\">order cialis online in canada</a> '),
(1990, 'CarlReums', 'allyson@aol.com ', '83846473518', 'New York', 'google', '<a href=\"http://buyviagra150mgwithnorx.monster/\">viagra 37500</a> '),
(1991, 'MarkReums', 'al83@mail.com ', '83681264527', 'Dallas', 'google', '<a href=\"http://bestviagramedicinenoprescription.monster/\">viagra 50 mg buy online</a> '),
(1992, 'LisaReums', 'pdrhodes1@mail.com ', '83811671341', 'Dallas', 'google', '<a href=\"http://genericviagratabsorderonline.monster/\">buy sildenafil online paypal</a> '),
(1993, 'YonReums', 'bmnico88@jumbox.site ', '82198471471', 'Tampa', 'google', '<a href=\"http://tadalafillx.online/\">tadalafil generic cialis</a> '),
(1994, 'kizikanna', '7@games-games.online', '81877224134', 'Estepona', 'google', 'Kizi10 is an internet browser game system that features the best complimentary online free games. Ou'),
(1995, 'MaryReums', 'hottieryorl@outlook.com ', '89528141882', 'Dallas', 'google', '<a href=\"http://buyviagra100cost.monster/\">where to buy sildenafil usa</a> '),
(1996, 'LarryMip', '%spinfile-names.dat%%spinfile-lnames.dat%%random-1-100%@base.mixwi.com', '89749992486', 'Kakamega', 'google', 'Trusted Online Casino Malaysia   http://gm231.com/gm231-e-sports-casino-best-esports-betting-malaysi'),
(1997, 'JudyReums', 'vm4615@mail.com ', '89376284687', 'New York', 'google', '<a href=\"https://buyingviagraonline.monster/\">online viagra in usa</a> '),
(1998, 'Michaill', 'karakidka@gmail.com', '84348177947', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', 'ÐšÑƒÐ¿Ð¸Ñ‚ÑŒ ÐšÑƒÐ¿Ð¸Ñ‚ÑŒ ÐÐ¼Ñ„ÐµÑ‚Ð°Ð¼Ð¸Ð½ Ð² ÐœÐ¾ÑÐºÐ²Ðµ? ÐšÑƒÐ¿Ð¸Ñ‚ÑŒ ÑÐºÑÑ‚Ð°Ð·Ð¸ Ð² ÐœÐ¾ÑÐ'),
(1999, 'BooReums', 'paula@mail.com ', '89731851289', 'Tucson', 'google', '<a href=\"https://viagracheapdrugforsale.monster/\">viagra without script</a> '),
(2000, 'mmbn123', 'maximmad222@yandex.ru', '88514119962', '  Ð˜Ñ€ÐºÑƒÑ‚ÑÐº ', 'google', 'Ð“Ð´Ðµ ÐºÑƒÐ¿Ð¸Ñ‚ÑŒ Ñ€Ð°Ð·Ð½Ð¾Ð¾Ð±Ñ€Ð°Ð·Ð½Ñ‹Ðµ Ð¸Ð³Ñ€Ñ‹ +Ð½Ð° xbox Ð¿Ñ€Ð¸ÑÑ‚Ð°Ð²ÐºÑƒ ÐŸÐ¾Ð¿Ñ€Ð¾Ð±Ñƒ'),
(2001, 'JesseKag', 'dax7d@course-fitness.com', '87476724572', 'Santa Rosa', 'google', 'æ­å®¢ä½¬ç²¾å“å’–å•¡ï½œè¾²å ´ç›´ç‡Ÿï½œç”¢éŠ·åˆä¸€ï½œå“é …æœ€å¤š \r\n \r\nhttps://shopee.tw/ken668999'),
(2002, 'MarkReums', 'pauldolby126@aol.com ', '87629956112', 'Dallas', 'google', '<a href=\"http://orderviagratabletswithoutprescription.quest/\">buy sildenafil 50mg</a> '),
(2003, 'PaulReums', 'arvida50@hotmail.com ', '84658392511', 'Dallas', 'google', '<a href=\"https://genericviagramedication.online/\">order viagra from india</a> '),
(2004, 'smartfon.zp.ua', 'alinasolojinasd@gmail.com', '89721825734', 'Udon Thani', 'google', '<a href=https://g.page/r/Ce-raKwIywOQEAE>Ð·Ð°Ð¿Ñ‡Ð°ÑÑ‚Ð¸ Ð´Ð»Ñ Ñ‚ÐµÐ»ÐµÑ„Ð¾Ð½Ð¾Ð² Ð·Ð°Ð¿Ð¾Ñ€Ð¾Ð¶ÑŒ'),
(2005, 'UgoReums', 'lkutza@outlook.com ', '86682259291', 'Mesa', 'google', '<a href=\"http://ivermectin6tab.com/\">stromectol 3mg cost</a> '),
(2006, 'JonasSeili', 'justafreak56@gmail.com', '86321638988', 'Riohacha', 'google', ''),
(2007, 'EyeReums', 'osmy01@outlook.com ', '84394426413', 'San Jose', 'google', '<a href=\"https://hydroxychloquinenova.online/\">can you buy plaquenil in mexico</a> <a href=\"https://'),
(2008, 'TeoReums', 'stakenaka@instamail.site ', '86361865254', 'Aurora', 'google', '<a href=\"https://bestcialispillsbuyingonline.quest/\">cialis purchase online uk</a> '),
(2009, 'WimReums', 'summerslawncare@outlook.com ', '89912681766', 'Oakland', 'google', '<a href=\"http://cheapviagra100cost.monster/\">buy viagra tablet online india</a> '),
(2010, 'YonReums', 'reva@qtmx.space ', '85741827719', 'Tampa', 'google', '<a href=\"http://cheapcialis20tab.monster/\">cialis 5mg price in australia</a> '),
(2011, 'CarlReums', 'martina1@yahoo.com ', '84582337548', 'New York', 'google', '<a href=\"https://cialis5mgcost.quest/\">tadalafil 20mg mexico</a> '),
(2012, 'BrianufnNoups', 'brianufnrip@gmail.com', '85375278525', 'Porsgrunn', 'google', 'and a good computer will help a person to help you, and to do it over. \r\n \r\n \r\nLots of natural and i'),
(2013, 'UgoReums', 'martha@yahoo.com ', '87172462441', 'Mesa', 'google', '<a href=\"http://onlineviagramedicinewithnorx.monster/\">viagra without prescription</a> '),
(2014, 'Mariahok', 'mariahok@yahoo.com', '+1 2389034567', 'Moscow', 'google', 'Hello all, guys! I know, my message may be too specific, \r\nBut my sister found nice man here and the'),
(2015, 'MaryReums', 'loris@yahoo.com ', '88473116561', 'Dallas', 'google', '<a href=\"https://viagratabletwithnoprescription.quest/\">viagra 100 mg coupon</a> '),
(2016, 'KiaReums', 'vanessamurphy@hotmail.com ', '88399678669', 'Denver', 'google', '<a href=\"http://cialisonlinemedicinedrugstore.monster/\">cost of tadalafil in mexico</a> '),
(2017, 'alycefm3', 'gretchen@xmail.topxxx69.com', '88221746327', '', 'google', 'Nude Sex Pics, Sexy Naked Women, Hot Girls Porn\r\nhttp://mountain.top.latina.sex.miyuhot.com/?ayana \r'),
(2018, 'AshReums', 'james4@hotmail.com ', '88626646185', 'Fresno', 'google', '<a href=\"http://prednisonebuying.online/\">prednisone 60 mg</a> '),
(2019, 'Philipweeks', 'yurijkormilkin@gmail.com', '87233983983', 'Loja', 'google', 'ÐšÐ»ÑƒÐ± ÐÐ·Ð¸Ð½Ð¾777, Ð¾ÑÐ½Ð¾Ð²Ð°Ð½Ð½Ñ‹Ð¹ Ð² 2015 Ð³Ð¾Ð´Ñƒ, Ð²Ñ…Ð¾Ð´Ð¸Ñ‚ Ð² Ñ‡Ð¸ÑÐ»Ð¾ Ð¿Ð¾Ð¿ÑƒÐ»'),
(2020, 'DenReums', 'stephnie@outlook.com ', '87855122568', 'Chicago', 'google', '<a href=\"http://genericcialismedicationrx.quest/\">brand cialis canada</a> <a href=\"http://cheapciali'),
(2021, 'ZakReums', 'quezforms@jumbox.site ', '85345835279', 'Tulsa', 'google', '<a href=\"http://ordergenericviagra50mg.quest/\">purchase viagra from canada</a> '),
(2022, 'Basilfrant', 'jqjs@course-fitness.com', '81339963596', 'Algiers', 'google', 'é»žå­æ•¸ä½ç§‘æŠ€æœ‰é™å…¬å¸ \r\n \r\nhttps://spot-digital.com.tw/'),
(2023, 'TedReums', 'loan@instamail.site ', '87491778833', 'Arlington', 'google', '<a href=\"http://viagraonlinetabletdrugstore.monster/\">buying viagra nz</a> '),
(2024, 'EddieWaism', 'solodovav637@gmail.com', '87911847477', 'Nove Mesto nad Vahom', 'google', ''),
(2025, 'JasonReums', 'stephthomas@mail.com ', '87892248541', 'New York', 'google', '<a href=\"http://cialisbestmedicationdrugstore.quest/\">buy generic cialis online in canada</a> <a hre'),
(2026, 'LisaReums', 'patcotter88@gmail.com ', '87238721326', 'Dallas', 'google', '<a href=\"https://orderivermectinpills.online/\">ivermectin tablets</a> '),
(2027, 'Mep', 'dnxd9duq@hotmail.com', '81198178119', 'Kaduna', 'google', 'Hi, this is Anna. I am sending you my intimate photos as I promised. https://tinyurl.com/y8xvmfbf'),
(2028, 'mmbn123', 'maximmad222@yandex.ru', '88131819619', ' Ð§ÐµÐ»ÑÐ±Ð¸Ð½ÑÐº,', 'google', 'ÐšÑƒÐ¿Ð¸Ñ‚ÑŒ ÐºÐ¾Ð´Ñ‹ +Ð½Ð° Ð¸Ð³Ñ€Ñ‹ xbox +one Ñ‡ÐµÑ€ÐµÐ· ÐÑ€Ð³ÐµÐ½Ñ‚Ð¸Ð½Ñƒ Ð¡Ð¨Ð Ð¸ Ð‘Ñ€Ð°Ð·Ð¸Ð»Ð'),
(2029, 'TeoReums', 'deadra@qtmx.space ', '83347941134', 'Aurora', 'google', '<a href=\"http://buyviagra50pill.monster/\">order viagra online us</a> '),
(2030, 'WimReums', 'marinemom2078@mail.com ', '83329587529', 'Oakland', 'google', '<a href=\"http://ivermectin3tab.com/\">ivermectin 4 tablets price</a> '),
(2031, 'JudyReums', 'agc1065@yahoo.com ', '82552864381', 'New York', 'google', '<a href=\"https://orderivermectina.online/\">ivermectin canada</a> '),
(2032, 'PaulReums', 'gulawe1@hotmail.com ', '84556223286', 'Dallas', 'google', '<a href=\"https://cialisv.monster/\">cost of cialis daily</a> '),
(2033, 'BooReums', 'kilroywashere44@outlook.com ', '84286993358', 'Tucson', 'google', '<a href=\"http://buyviagrapillsrx.quest/\">how to get generic viagra</a> '),
(2034, 'PeterSic', 'yourmail@gmail.com', '81148614767', 'Rajkot', 'google', 'Manage to earn more than $ 10,000. You can also purchase wallets through exchanges on the Internet. '),
(2035, 'EyeReums', 'jetlee555@mail.com ', '83338411922', 'San Jose', 'google', '<a href=\"http://onlinecialis20norx.quest/\">generic cialis 100mg</a> <a href=\"http://bestviagra150onl'),
(2036, 'MichaelHaili', 'samwoodcmellen96778@yahoo.com', '87957431158', 'Juuka', 'google', '\r\n\r\nHello\r\n\r\nUseFreelancer.com offers a constant source of part-time to full-time work opportunities'),
(2037, 'YonReums', 'shnbkr@jumbox.site ', '84362434379', 'Tampa', 'google', '<a href=\"https://ordercialispillprescription.monster/\">online pharmacy cialis 20mg</a> '),
(2038, 'AlexeyliVorrerm', '4534fdfgdfgr541@mail.ru', '89515742167', 'Novosibirsk', 'google', 'del<a href=https://www.ozon.ru/product/remen-styazhnoy-s-hrapovym-mehanizmom-remen-dlya-gruza-styazh'),
(2039, 'Mike Hoggarth\r\n', 'no-replykl@gmail.com', '88976583852', 'Boston', 'google', 'Hello, \r\n \r\nThere is a new Boss in town. Semrush started dominating the SEO tools for some time alre'),
(2040, 'Mep', 'lt27ahsj@gmail.com', '84196351315', 'Kaduna', 'google', 'Play for free and win real money! Claim (3) Free Spins Below https://tinyurl.com/y95lspth'),
(2041, 'EliasCom', 'cavirru@mail.ru', '88411389455', 'Nis', 'google', 'Ð”Ð»Ñ Ñ‡ÐµÐ³Ð¾ Ð½ÑƒÐ¶ÐµÐ½ Ð»Ð°Ð½Ð´ÑˆÐ°Ñ„Ñ‚Ð½Ñ‹Ð¹ Ð´Ð¸Ð·Ð°Ð¹Ð½ ÑƒÑ‡Ð°ÑÑ‚ÐºÐ°? Ð£ ÐºÐ°Ð¶Ð´Ð¾Ð³Ð¾ Ð¿Ð'),
(2042, 'ThomasObsep', 'catch@art.suspent.com', '87579815967', 'Kaohsiung Municipality', 'google', ''),
(2043, 'UgoReums', 'tbrown8234@outlook.com ', '88566242745', 'Mesa', 'google', '<a href=\"https://ivermectinaxtab.com/\">where can i buy ivermectin</a> '),
(2044, 'AshReums', 'mikedel2006@aol.com ', '82392186738', 'Fresno', 'google', '<a href=\"http://onlinecialis5tablet.quest/\">purchase cialis without prescription</a> '),
(2045, 'RandalRax', 'nwzn@course-fitness.com', '89222579736', 'Praia', 'google', 'å…«åƒä»£é†«ç¾Žé›†åœ˜ \r\n \r\n \r\nhttps://yachiyo.com.tw/'),
(2046, 'Mike Blomfield\r\n', 'no-replykl@gmail.com', '85886942511', 'Albany', 'google', 'Hi \r\n \r\nWe will improve your Local Ranks organically and safely, using only whitehat methods, while '),
(2047, 'WimReums', 'civiccameron@gmail.com ', '81723228912', 'Oakland', 'google', '<a href=\"http://ivermectindtab.com/\">ivermectin 3</a> '),
(2048, 'Charleshob', 'buritos88666@gmail.com', '81458327671', 'Saint George', 'google', 'Hi there, \r\n \r\n<b>Online investments</b> \r\nBest offer - today \r\nBecome a partner \r\n<b>Best brokerage'),
(2049, 'DanielsEate', 'denielmrutus@runbox.com', '87143964381', 'Nestor', 'google', 'Ð’ÑÐµÐ¼ Ð¿Ñ€Ð¸Ð²ÐµÑ‚, Ñ…Ð¾Ñ‡Ñƒ Ð¿Ð¾Ð´ÐµÐ»Ð¸Ñ‚ÑÑ ÑÐ¾ Ð²ÑÐµÐ¼Ð¸ ÐºÐ°Ðº ÑÐ¾Ð±Ñ€Ð°Ñ‚ÑŒ Ð¼Ð¾Ñ‰Ð½Ñ‹Ð'),
(2050, 'TedReums', 'steven@qtmx.space ', '89869997116', 'Arlington', 'google', '<a href=\"https://viagra100mgwithoutrx.quest/\">viagra com</a> '),
(2051, 'CreditDrype', 'credit.loan.new@gmail.com', '82659518665', 'Luga', 'google', ' ÐºÑƒ.  Ð¿Ñ€ÐµÐ»ÑŽÐ±Ð¾Ð¿Ñ‹Ñ‚Ð½Ñ‹Ð¹ -  Ð½Ð¾Ð²Ð¾ÑÑ‚ÑŒ Ð¾ ÐºÐ°Ð·Ð¸Ð½Ð¾ Ð¾Ð½Ð»Ð°Ð¹Ð½ - Ð˜Ð—Ð£Ð§Ð˜Ð¢Ð•! '),
(2052, 'KiaReums', 'nicolailowry71@gmail.com ', '87913981252', 'Denver', 'google', '<a href=\"https://viagran.quest/\">can i buy viagra online in canada</a> '),
(2053, 'TeoReums', 'kingsleychild@instamail.site ', '83295151544', 'Aurora', 'google', '<a href=\"https://cialis20withnoprescription.monster/\">how to get cialis prescription australia</a> '),
(2054, 'Crysoume', '7@games-games.online', '82447942116', 'Cheltenham', 'google', 'Zealous Games Online is a video regatta publisher and also a about designer. This platform has a soc'),
(2055, 'LisaReums', 'rickmc0605@hotmail.com ', '89394991761', 'Dallas', 'google', '<a href=\"https://pharmacypoly.online/\">brazilian pharmacy online</a> '),
(2056, 'PaulReums', 'apinzan@aol.com ', '87729121149', 'Dallas', 'google', '<a href=\"https://cialisgenericmedicineshop.quest/\">price for 5mg cialis</a> '),
(2057, 'LisaReums', 'vincenzonegro@gmail.com ', '87658435888', 'Dallas', 'google', '<a href=\"https://buyingbestcialispill.monster/\">cialis generic discount</a> '),
(2058, 'ZakReums', 'tmpups@jumbox.site ', '88887423885', 'Tulsa', 'google', '<a href=\"https://onlineviagra100.quest/\">where do you buy viagra</a> '),
(2059, 'JudyReums', 'lorenzoulga@outlook.com ', '85141161445', 'New York', 'google', '<a href=\"http://buyviagra150mgpills.monster/\">sildenafil rx coupon</a> '),
(2060, 'CarlReums', 'marchfever@hotmail.com ', '85674965788', 'New York', 'google', '<a href=\"http://cialischeapmedicationonlinepharmacy.monster/\">cost daily cialis</a> '),
(2061, 'KiaReums', 'schmidtjosh64@outlook.com ', '82972665343', 'Denver', 'google', '<a href=\"http://metforminmedicine.online/\">metformin 850</a> '),
(2062, 'AmyReums', 'mhensel@hotmail.com ', '87752514495', 'New York', 'google', '<a href=\"http://genericviagra200withnorx.quest/\">best otc viagra</a> '),
(2063, 'nam1325249tetcher', 'hholcombcessar@gmail.com', '81295442221', 'Klimmen', 'google', 'mis1325249rtjuny RwWuAw1 VKRB dRGv3P5'),
(2064, 'MaryReums', 'joanself1@mail.com ', '83566233327', 'Dallas', 'google', '<a href=\"https://viagrapillwithnorx.quest/\">cheap 25mg viagra</a> '),
(2065, 'socowaleva', 'dodiksmitin@yandex.ru', '86335443415', 'Orange Walk', 'google', '<a href=http://www.matrixboard.ru>matrixboard.ru</a> - ÑÑ‚Ð¾ Ð±ÐµÑÐ¿Ð»Ð°Ñ‚Ð½Ð°Ñ Ð´Ð¾ÑÐºÐ° Ð¾Ð±ÑŠ'),
(2066, 'PaulReums', 'henkdamstra@hotmail.com ', '89534866629', 'Dallas', 'google', '<a href=\"https://aurograonline.online/\">aurogra 100</a> '),
(2067, 'RobertTef', 'jeansanchez4859@gmail.com', '85438947559', 'Ð¡Ð¾Ñ‡Ð¸', 'google', 'AdBlue, DPF, FAP, EGR ,E2,Valvematic \r\nStage1 Stage2 \r\n \r\nChip-tuning ECU Ð§Ð¸Ð¿-Ñ‚ÑŽÐ½Ð¸Ð½Ð³  Ð§Ð¸Ð'),
(2068, 'WimReums', 'maximummaggie@mail.com ', '87838683961', 'Oakland', 'google', '<a href=\"http://ivermectingtabs.com/\">ivermectin 15 mg</a> '),
(2069, 'KavaxmcplOpildRI', 'love@kava.xmc.pl', '84876157412', 'Koszalin', 'google', '');
INSERT INTO `bulk_contact` (`contact_id`, `name`, `email`, `mobile`, `address`, `school_name`, `nature_requirment`) VALUES
(2070, 'umnayash', 'umnayashema@yandex.ru', '87344133891', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', 'ÐœÐ½Ð¾Ð³Ð¸Ðµ Ð²Ð»Ð°Ð´ÐµÐ»ÑŒÑ†Ñ‹ Ð·Ð°Ð³Ð¾Ñ€Ð¾Ð´Ð½Ñ‹Ñ… Ð´Ð¾Ð¼Ð¾Ð² ÑÑ‡Ð¸Ñ‚Ð°ÑŽÑ‚, Ñ‡Ñ‚Ð¾ Â«ÑƒÐ¼Ð½Ñ‹Ð¹ '),
(2071, 'Dantewag', 'coleatkinson898256@gmail.com', '89397325838', 'Parnu', 'google', 'Ð˜Ð¼ÐµÐµÑ‚ÑÑ 2 ÐºÐ»ÑŽÑ‡ÐµÐ²Ñ‹Ñ… Ñ‚Ð¸Ð¿Ð° Ð¿Ñ€Ð¾ÐµÐºÑ‚Ð¾Ð² ÑÐ¾Ð³Ð»Ð°ÑÐ¸Ðµ Ð¸ÑÐºÑƒÑÑÑ‚Ð²ÐµÐ½Ð½Ð'),
(2072, 'RandalRax', 'nwzn@course-fitness.com', '84937737858', 'Praia', 'google', 'å…«åƒä»£é†«ç¾Žé›†åœ˜ \r\n \r\n \r\nhttps://yachiyo.com.tw/'),
(2073, 'StedateptenSoand', 'stedateyrphenCrasy@gmail.com', '89956829283', 'Banjul', 'google', 'relationship they want. Secondly, the women|\r\n \r\n \r\n \r\n<a href=https://sekspazintysskelbiu.blogspot.'),
(2074, 'TomekaPaize', 'esnbqhroe@wowzilla.ru', '84566413444', 'Kampala', 'google', 'what is amantadine used for \r\n<a href=\"https://amantadinetabsg.com/\">amantadine tablets</a> \r\n<a hre'),
(2075, 'ThomasNix', 'visie.musical@tele2.nl', '87351567947', 'Juuka', 'google', 'Hello, \r\n \r\nBest music scene releases, download music private server. \r\nhttps://0daymusic.org \r\n \r\nB'),
(2076, 'Mike Cook\r\n', 'no-replykl@gmail.com', '84771175596', 'Kaohsiung Municipality', 'google', 'Howdy \r\n \r\nI have just verified your SEO on  schooloo.com for its SEO Trend and saw that your websit'),
(2077, 'MRankerCethy', 'mranker-ndb@mksorb.com', '83453276539', '', 'google', 'High-quality dofollow niche backlinks for your site, Boost your Google search ranking, and get more '),
(2078, 'Lloydlix', 'desmond3farrell324@gmail.com', '83698936555', 'Keflavik', 'google', 'Ð˜Ñ‰ÐµÑ‚Ðµ ÐºÐ°Ðº ÑÐ¿Ð°Ñ€ÑÐ¸Ñ‚ÑŒ Ñ‚ÐµÐ»ÐµÑ„Ð¾Ð½Ñ‹ Ñ OLX Ð² 2022 Ð³Ð¾Ð´Ñƒ? \r\nÐŸÑ€ÐµÐ´ÑÑ‚Ð°Ð²Ð»ÑÐ'),
(2079, 'Mike Kennett\r\n', 'no-replykl@gmail.com', '87993117113', 'Boston', 'google', 'Hello \r\n \r\nWe all know the importance that dofollow link have on any website`s ranks. \r\nHaving most '),
(2080, 'TomekaPaize', 'hcifshirt@wowzilla.ru', '82989974816', 'Kampala', 'google', 'lamotrigine dosage \r\n<a href=\"https://lamictallamotriginebsc.com/\">lamictal uses</a> \r\n<a href=https'),
(2081, 'Staciesoria', 'bergerbaxter62443@gmail.com', '83192723576', 'Le Mans', 'google', 'Selector casino online Ð·Ð°Ð¿ÑƒÑÑ‚Ð¸Ð»Ð¾ÑÑŒ Ð² 2016 Ð³Ð¾Ð´Ñƒ Ñ€Ð°Ð´Ð¸ Ð Ð¾ÑÑÐ¸Ð¸ Ð¸ Ð½ÐµÐºÐ¾Ñ‚Ð¾'),
(2082, 'mojoheadz', 'bigbeatmusic@ya.ru', '88629113627', 'Mojoheadz ', 'google', 'Magic!...'),
(2083, 'Serglapit', 'itserglapin@gmail.com', '87234458714', 'Sestroreck', 'google', 'Ð—Ð´Ñ€Ð°Ð²ÑÑ‚Ð²ÑƒÐ¹Ñ‚Ðµ. ÐŸÐ¾Ð¼Ð¾Ð³Ñƒ Ð²Ð°Ð¼ Ñ€ÐµÑˆÐ¸Ñ‚ÑŒ Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼Ñ‹ Ñ Ð²Ð°ÑˆÐ¸Ð¼ ÑÐ°Ð¹Ñ‚Ð¾'),
(2084, 'Serglapit', 'itserglapin@gmail.com', '82177835733', 'Sestroreck', 'google', 'Ð—Ð´Ñ€Ð°Ð²ÑÑ‚Ð²ÑƒÐ¹Ñ‚Ðµ. ÐŸÐ¾Ð¼Ð¾Ð³Ñƒ Ð²Ð°Ð¼ Ñ€ÐµÑˆÐ¸Ñ‚ÑŒ Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼Ñ‹ Ñ Ð²Ð°ÑˆÐ¸Ð¼ ÑÐ°Ð¹Ñ‚Ð¾'),
(2085, 'Serglapit', 'itserglapin@gmail.com', '88972939468', 'Sestroreck', 'google', 'Ð—Ð´Ñ€Ð°Ð²ÑÑ‚Ð²ÑƒÐ¹Ñ‚Ðµ. ÐŸÐ¾Ð¼Ð¾Ð³Ñƒ Ð²Ð°Ð¼ Ñ€ÐµÑˆÐ¸Ñ‚ÑŒ Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼Ñ‹ Ñ Ð²Ð°ÑˆÐ¸Ð¼ ÑÐ°Ð¹Ñ‚Ð¾'),
(2086, 'Serglapit', 'itserglapin@gmail.com', '85244124193', 'Sestroreck', 'google', 'Ð—Ð´Ñ€Ð°Ð²ÑÑ‚Ð²ÑƒÐ¹Ñ‚Ðµ. ÐŸÐ¾Ð¼Ð¾Ð³Ñƒ Ð²Ð°Ð¼ Ñ€ÐµÑˆÐ¸Ñ‚ÑŒ Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼Ñ‹ Ñ Ð²Ð°ÑˆÐ¸Ð¼ ÑÐ°Ð¹Ñ‚Ð¾'),
(2087, 'EverettSlell', 'glukhina.1998@mail.ru', '89846352824', 'Duverge', 'google', ''),
(2088, 'Tomaszanone', 'xwebmaster@m106.com', '84961771696', 'KoÅ‚obrzeg', 'google', 'Hello everyone on the forum :-) \r\n \r\nStart making big money selling links or buying high-quality lin'),
(2089, 'GregoryAmony', 'wojciech.maserski@interia.pl', '83119574485', 'Mtskheta', 'google', 'Na czym polega wycena nieruchomoÅ›ci? \r\nAby odpowiednio wyceniÄ‡ nieruchomoÅ›Ä‡, naleÅ¼y uÅ¼yÄ‡ pod '),
(2090, 'Donna#Litle[IrudivogorytikOP,2,5]', 'akiakila38@gmail.com', '88789329723', 'Moscow City', 'google', '<youtube>R_7GbuK2llI </youtube> \r\n \r\n<youtube>kdg5BGXwd_8 </youtube> \r\n \r\n<a href=https://youtu.be/R'),
(2091, 'EverettSlell', 'glukhina.1998@mail.ru', '84589616938', 'Duverge', 'google', 'Ð’Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ - Ð²Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ. Ð¡ÑƒÐ¿ÐµÑ€ Ð°ÐºÑ†Ð¸Ð¾Ð½Ð½Ð¾Ðµ Ð¿Ñ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ. Ð¢Ð°ÐºÐ¸Ñ'),
(2092, 'DoernaldGreaf', 'doernaldDop@gmail.com', '86372776483', 'Nuwara Eliya', 'google', 'Arte conceptual para el nuevo disfraz de duende verde \r\n \r\n \r\n<a href=https://demlucine.blogspot.com'),
(2093, 'Briannegon', 'dhdhde@gmail.com', '82126975748', 'Kale', 'google', ''),
(2094, 'Kevin Johnson', 'tbformleads@gmail.com', '88872814475', 'Boston', 'google', 'Hello \r\n \r\nMy main objective here, is to help increase revenue for you by producing an animated vide'),
(2095, 'EverettSlell', 'glukhina.1998@mail.ru', '82657354728', 'Duverge', 'google', 'Ð’Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ - Ð²Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ. Ð¡ÑƒÐ¿ÐµÑ€ Ð°ÐºÑ†Ð¸Ð¾Ð½Ð½Ð¾Ðµ Ð¿Ñ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ. Ð¢Ð°ÐºÐ¸Ñ'),
(2096, 'EverettSlell', 'glukhina.1998@mail.ru', '88818566392', 'Duverge', 'google', ''),
(2097, 'Thomasmesee', 'yourmail@gmail.com', '88423313616', 'Kakamega', 'google', 'Ð›Ð¾Ñ…Ð¾Ð±Ñ€Ð¾ÐºÐµÑ€ Esperio. ÐžÐ±Ð·Ð¾Ñ€ Ð¸ Ð¾Ñ‚Ð·Ñ‹Ð²Ñ‹ ÐºÐ»Ð¸ÐµÐ½Ñ‚Ð¾Ð² \r\nEsperio Ð»Ð¾Ñ…Ð¾Ñ‚Ñ€Ð¾Ð½'),
(2098, 'EverettSlell', 'glukhina.1998@mail.ru', '86765165648', 'Duverge', 'google', 'Ð’Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ - Ð²Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ. Ð¡ÑƒÐ¿ÐµÑ€ Ð°ÐºÑ†Ð¸Ð¾Ð½Ð½Ð¾Ðµ Ð¿Ñ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ. Ð¢Ð°ÐºÐ¸Ñ'),
(2099, 'EverettSlell', 'glukhina.1998@mail.ru', '82122667669', 'Duverge', 'google', ''),
(2100, 'FriedaSeema', 'qvfiemjgy@wowzilla.ru', '85738421992', 'Pirassununga', 'google', '<a href=https://casinorealgambling.com/>slot machine free</a> \r\n<a href=\"https://casinorealgambling.'),
(2101, 'Alxeyli#gnick[OzNJ,6,8]', 'sg91rpt5ii@firstmail.fun', '82141121636', 'Novosibirsk', 'google', 'del<a href=https://www.ozon.ru/product/filtr-maslyanyy-dvigatelya-04e115561h-370956846/>.</a>'),
(2102, 'amiodDannyhox', 'amioddannygok@gmail.com', '85872179687', 'Molodesjnaja', 'google', ' \r\nThe dosage is based on your medical condition and response to treatment. \r\n \r\n \r\n<a href=https://'),
(2103, 'AndrewSloma', 'vlad11@bambo-mebel.top', '85347553755', 'Khuiv', 'google', ''),
(2104, 'DodikErwansyah', 'dod.ik.erwans.yah..c.o.m.@gmail.com', '84139327516', 'Malang', 'google', 'DodikErwansyah.com are dealers of European and American classic and exotic cars in Indonesia. In add'),
(2105, 'EverettSlell', 'glukhina.1998@mail.ru', '89966141136', 'Duverge', 'google', 'Ð’Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ - Ð²Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ. Ð¡ÑƒÐ¿ÐµÑ€ Ð°ÐºÑ†Ð¸Ð¾Ð½Ð½Ð¾Ðµ Ð¿Ñ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ. Ð¢Ð°ÐºÐ¸Ñ'),
(2106, 'dinanikittina', 'dinanikittina@yandex.ru', '81672668112', 'Juuka', 'google', 'ÐœÐ°ÑÑÐ°Ð¶ Ð´ÐµÑ‚ÑÐºÐ¸Ð¹, Ð»ÐµÑ‡ÐµÐ±Ð½Ñ‹Ð¹, Ð¿Ñ€Ð¾Ñ„ÐµÑÑÐ¸Ð¾Ð½Ð°Ð»ÑŒÐ½Ñ‹Ð¹, ÑÑ€Ð¾Ñ‚Ð¸Ñ‡ÐµÑÐºÐ'),
(2107, 'Georgejeolo', 'yourmail@gmail.com', '86296322652', 'Krk', 'google', 'TeleTrade (Ð¢ÐµÐ»ÐµÐ¢Ñ€ÐµÐ¹Ð´) \r\n \r\nÐ ÐµÐ¹Ñ‚Ð¸Ð½Ð³: \r\n \r\n3.5 \r\n \r\nÐ§Ð¸Ñ‚Ð°Ñ‚ÑŒ Ð¾Ñ‚Ð·Ñ‹Ð²Ñ‹ \r\nÐÐ Ð'),
(2108, 'EverettSlell', 'glukhina.1998@mail.ru', '85875789236', 'Duverge', 'google', 'Ð’Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ - Ð²Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ. Ð¡ÑƒÐ¿ÐµÑ€ Ð°ÐºÑ†Ð¸Ð¾Ð½Ð½Ð¾Ðµ Ð¿Ñ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ. Ð¢Ð°ÐºÐ¸Ñ'),
(2109, 'Eddievum', 'gold1@jaguare.ru', '86213963376', '', 'google', 'Ð’Ñ‹Ð±Ñ€Ð°Ñ‚ÑŒ Ð¾Ñ‚Ð»Ð¸Ñ‡Ð½ÑƒÑŽ ÐºÐ¾Ð»ÑÑÐºÑƒ Ð±Ñ‹ÑÑ‚Ñ€Ð¾ Ð¸ Ð±ÐµÐ· Ñ‚Ñ‰Ð°Ñ‚ÐµÐ»ÑŒÐ½Ð¾Ð³Ð¾ Ð¸Ð·ÑƒÑ'),
(2110, 'BradyTut', 'revialexo@gmail.com', '83761539871', 'Sumbe', 'google', 'About yourself essay: \r\n<a href=https://medobopa.blogspot.com/2021/10/college-narrative-paper.html>C'),
(2111, 'estonosephMog', 'estonosephMaiva@gmail.com', '83467996885', 'NEW AMSTERDAM', 'google', 'Sex Tutvused seksikad tudrukud'),
(2112, 'HaroldUnsof', 'arcimalov@yandex.ru', '89638827823', 'Nestor', 'google', 'Are you looking for the best cricket betting application for cricket? If so, then one should conside'),
(2113, 'BruceHow', 'yourmail@gmail.com', '85229781994', 'puerto galera', 'google', 'Home \r\nBrokers \r\nVPS \r\nForum \r\nExposures \r\nNews \r\nField Survey \r\nEA \r\nLoginDownload APP \r\nlogo |Brok'),
(2114, 'CaresarsiamTeady', 'caetsarsiamClons@gmail.com', '81633532712', 'Jubail', 'google', 'Caesar slot is a video slot with five reels and twenty five lines (you can set their number at your '),
(2115, 'Annahok', 'annahok@hotmail.com', '+1 2263434567', 'Moscow', 'google', 'Hello all, guys! I know, my message may be too specific, \r\nBut my sister found nice man here and the'),
(2116, 'stroySmuts', 'svetaryabushkina196@mail.ru', '88126261861', 'Ð¯Ð»Ñ‚Ð°', 'google', '<a href=http://krym-stroy.ru>Ð¡Ñ‚Ñ€Ð¾Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð°Ñ ÐºÐ¾Ð¼Ð¿Ð°Ð½Ð¸Ñ Ð² ÐšÑ€Ñ‹Ð¼Ñƒ</a>  - Ð¿Ð¾Ð´Ñ€'),
(2117, 'PeterSic', 'yourmail@gmail.com', '85356216342', 'Rajkot', 'google', 'Manage to earn more than $ 10,000. You can also purchase wallets through exchanges on the Internet. '),
(2118, 'CharlesNainy', 'hudman.shawanda@yahoo.com', '85977313962', 'Tashkent', 'google', 'vulkanvegas casino vulkan vegas 24 vulkan vegas logowanie vulkan vegas login vulcan casino logowanie'),
(2119, 'Nar', 'naomisholtz7@gmail.com', '86693984545', 'Raduznyj', 'google', ' I cannot thank you enough for such great writing and all people to their up to the point reviews. \r'),
(2120, 'Kathrynlergo', 'alexpopov716253@gmail.com', '85489485635', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', ''),
(2121, 'Donna#Litle[IrudivogorytikOP,2,5]', 'akiakila38@gmail.com', '87141137248', 'Moscow City', 'google', '<youtube>R_7GbuK2llI </youtube> \r\n \r\n<youtube>kdg5BGXwd_8 </youtube> \r\n \r\n<a href=https://youtu.be/R'),
(2122, 'Roneylongershot', 'barrycacher@gmail.com', '85651417455', 'Dnipro', 'google', 'Every person who is faced with a repair knows firsthand about the problems with buying high-quality '),
(2123, 'dorasmitkova', 'dorasmitkova@yandex.ru', '81523816579', 'Algiers', 'google', 'ÐšÐ°Ðº Ñ…Ð¾Ð´ÑÑ‚ Ð¿Ð¾Ð´ Ð¿Ð°Ñ€ÑƒÑÐ¾Ð¼ <a href=http://wc.matrixplus.ru/>Ð’ÑÐµ Ð¿Ñ€Ð¾ Ð²Ð¾Ð´Ð½Ñ‹Ðµ '),
(2124, 'MihakeN', 'jonjonovich89@gmail.com', '89245331821', 'Ð¡Ñ‚Ð°Ð²Ñ€Ð¾Ð¿Ð¾Ð»ÑŒ', 'google', ''),
(2125, 'SharonTrose', 'utybxlahh@wowzilla.ru', '82934523836', 'Willemstad', 'google', '<a href=https://casinogamereal.com/>doubledown casino</a> \r\n<a href=\"https://casinogamereal.com/\">fr'),
(2126, 'Carkanna', '5@games-games.online', '85673348683', 'Estepona', 'google', 'Racing games are among the most popular mobile gaming free cars games, viral in the United States. \r'),
(2127, 'Coolmocky', '3@games-games.online', '85181622174', 'Arcatao', 'google', 'While having fun with their family or playing cool math games fireboy and watergirl with other stude'),
(2128, 'JamesEcona', '7wn@course-fitness.com', '88484193138', 'Burnt Pine', 'google', 'å¤ªé”æ•¸ä½åª’é«” \r\n \r\n \r\nhttps://deltamarketing.com.tw/'),
(2129, 'CarolynUnsub', 'nsfjripft@wowzilla.ru', '85469687492', 'Nove Mesto nad Vahom', 'google', '<a href=https://casinogamereal.online/>hollywood casino</a> \r\n<a href=\"https://casinogamereal.online'),
(2130, 'StedateptenSoand', 'stedateyrphenCrasy@gmail.com', '87786473655', 'Banjul', 'google', 'Weâ€™ve narrowed down the playing field|\r\n \r\n \r\n \r\n<a href=https://zoznamkanasex.blogspot.com>buy\r\n<'),
(2131, 'Venkatraman Rajendran', 'venkatr.1803@gmail.com', '9901466097', 'Krishnalayam, #13/14, 3rd cross left side, 1st main road, Kuvempu Road,', 'NA', 'This is Venkat here I had ordered  a product on 1st February which is cello glare insulated vacustee'),
(2132, 'EverettSlell', 'glukhina.1998@mail.ru', '85762685445', 'Duverge', 'google', 'Ð’Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ - Ð²Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ. Ð¡ÑƒÐ¿ÐµÑ€ Ð°ÐºÑ†Ð¸Ð¾Ð½Ð½Ð¾Ðµ Ð¿Ñ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ. Ð¢Ð°ÐºÐ¸Ñ'),
(2133, 'Josephdak', 'manjims77664@yahoo.com', '88756542186', 'Yanahuara', 'google', '\r\n\r\nHello\r\n\r\nIt is a reality of life that you will die unexpectedly one day and perhaps soon. Theref'),
(2134, 'StedateptenSoand', 'stedateyrphenCrasy@gmail.com', '83455227962', 'Banjul', 'google', 'Theyâ€™ll be able to create their own casual|\r\n \r\n \r\n \r\n<a href=https://meetgirlforsex.blogspot.com>'),
(2135, 'ill-willScome', '60@altinova.ru', '84273689919', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', 'ÐšÐ»Ñ‘Ð²Ñ‹Ðµ ÐºÐ°Ñ€Ñ‚Ð¸Ð½ÐºÐ¸ Ñ Ñ€Ð°Ð·Ð½Ñ‹Ð¼Ð¸ Ð²ÐºÑƒÑÐ½Ð¾ÑÑ‚ÑÐ¼Ð¸ :) <a href=https://ill-will.c'),
(2136, 'Charleslaf', 'post@bot-belarusborder.ru', '83113483495', 'Bandar Seri Begawan', 'google', 'http://dallasaaay50616.ampblogs.com/--42548042 \r\nhttp://damienyzyw40505.pages10.com/--42627511 \r\nhtt'),
(2137, 'EverettSlell', 'glukhina.1998@mail.ru', '88135165936', 'Duverge', 'google', 'Ð’Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ - Ð²Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ. Ð¡ÑƒÐ¿ÐµÑ€ Ð°ÐºÑ†Ð¸Ð¾Ð½Ð½Ð¾Ðµ Ð¿Ñ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ. Ð¢Ð°ÐºÐ¸Ñ'),
(2138, 'Frankduact', 'gfgfg4gf@bambo-mebel.top', '87354984548', 'Lar', 'google', '<a href=http://trustpack.ru/komu-i-zachem-nuzhny-gruzoperevozki/>http://trustpack.ru/komu-i-zachem-n'),
(2139, 'GregoryAmony', 'salina.kosmerna@interia.pl', '83252763625', 'Mtskheta', 'google', 'Darowane WyjÅ›ciowego UrzÄ™du NiewaÅ¼nego myÅ›lÄ…, iÅ¼ 2020 r. przemknÄ…Å‚ pod dowodem wielkiej pier'),
(2140, 'DenFlizeÐ²', 'ivanbigman@rambler.ru', '87921222635', 'Moscow', 'google', 'Ð”Ð¾Ð¿Ð¾Ð»Ð½Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ð¹ Ð´Ð¾Ñ…Ð¾Ð´, ÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ð¹ Ð¿ÐµÑ€ÐµÑ€Ð°ÑÑ‚Ñ‘Ñ‚ Ð² Ð¿Ð°ÑÑÐ¸Ð²Ð½Ñ‹Ð¹ Ð'),
(2141, 'Marioded', 'monitorbk@bk.ru', '89932158956', 'Carthage', 'google', 'Ð¡Ð°Ð¼Ñ‹Ð¹ Ñ‡ÐµÑÑ‚Ð½Ñ‹Ð¹ Ð¾Ð±Ð·Ð¾Ñ€ Ð±Ðº - monitorbk.ru <a href=http://monitorbk.ru>1xbet</a> <a hr'),
(2142, 'Tebertreaps', 'j.umandjik.ro@gmail.com', '88597666135', 'NY', 'google', 'Girls for a serious relationship https://hot-ladies-here.com/?u=wh5kd06&o=qxpp80k'),
(2143, 'viarkiewax', 'viaytrasontox@gmail.com', '81153841375', 'Cairo', 'google', 'able \r\n \r\nwe \r\n \r\nby \r\n \r\nprovided. \r\n \r\ndamaged \r\n \r\nfind \r\n \r\n \r\n<a href=https://arethe10mg.blogsp'),
(2144, 'iphonePurb.', 'maximmad222@yandex.ru', '82632622866', '  ÐšÐ°Ð·Ð°Ð½ÑŒ ', 'google', 'ÐšÑƒÐ¿Ð¸Ñ‚ÑŒ Ð¸Ð³Ñ€Ñ‹ xbox store Ð½Ð° Ñ€Ð°Ð·Ð»Ð¸Ñ‡Ð½Ñ‹Ðµ Ñ‚ÐµÐ¼Ð°Ñ‚Ð¸ÐºÐ¸  + https://plati.market/it'),
(2145, 'wolovinaScome', '49@altinova.ru', '85243719125', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', 'ÐšÑ€Ð°ÑÐ¸Ð²Ñ‹Ðµ ÑˆÑ‚ÑƒÑ‡ÐºÐ¸ Ð´Ð»Ñ Ð´ÐµÐ²ÑƒÑˆÐµÐº  <a href=https://wolovina.club>https://wolovina.'),
(2146, 'SeptikSmuts', 'taisiya.alximowa@mail.ru', '88977381578', 'ÐÐ¸Ð¶Ð½Ð¸Ð¹ ÐÐ¾Ð²Ð³Ð¾Ñ€Ð¾Ð´', 'google', ' \r\nhttp://septiki-nn.ru - ÐºÐ¾Ð»ÑŒÑ†Ð° Ð¿Ð¾Ð´ ÑÐµÐ¿Ñ‚Ð¸Ðº  - Ð¿Ð¾Ð´Ñ€Ð¾Ð±Ð½ÐµÐµ Ð½Ð° ÑÐ°Ð¹Ñ‚Ðµ htt'),
(2147, 'amiodDannyhox', 'amioddannygok@gmail.com', '81311183573', 'Molodesjnaja', 'google', ' \r\nIf you have any questions, consult your doctor or pharmacist. \r\n \r\n \r\n<a href=https://amiod200.bl'),
(2148, 'DJFlashgok', 'visie.musical@tele2.nl', '89948521796', 'Skive', 'google', 'Hello, \r\n \r\nBest music scene releases, download music private server. \r\nhttps://0daymusic.org \r\n \r\nB'),
(2149, 'Beckylounc', 'flwyvnppi@gordpizza.ru', '86142996346', 'Chisinau', 'google', '<a href=https://onlinelistcasino24.com/>casino free</a> \r\n<a href=\"https://onlinelistcasino24.com/\">'),
(2150, 'EverettSlell', 'glukhina.1998@mail.ru', '86581183267', 'Duverge', 'google', 'Ð’Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ - Ð²Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ. Ð¡ÑƒÐ¿ÐµÑ€ Ð°ÐºÑ†Ð¸Ð¾Ð½Ð½Ð¾Ðµ Ð¿Ñ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ. Ð¢Ð°ÐºÐ¸Ñ'),
(2151, 'KennethNub', 'yourmail@gmail.com', '83682954619', 'Liberia', 'google', 'Ð‘Ñ€Ð¾ÐºÐµÑ€ Esperio (Ð­ÑÐ¿ÐµÑ€Ð¸Ð¾) â€“ Ñ€ÐµÐ°Ð»ÑŒÐ½Ñ‹Ðµ Ð¾Ñ‚Ð·Ñ‹Ð²Ñ‹ \r\nÐ±Ñ€Ð¾ÐºÐµÑ€ Esperio \r\n07/'),
(2152, 'DJGiankobug', 'pels1000@tele2.nl', '82129665151', 'Skive', 'google', 'Hello, \r\n \r\nFTP service is a community for DJâ€™s & fans that helps you gain full access to exclusiv'),
(2153, 'iphonePurb.', 'maximmad222@yandex.ru', '81354222289', ' Ð’Ð¾Ñ€Ð¾Ð½ÐµÐ¶', 'google', 'ÐŸÑ€Ð¸Ð²ÐµÑ‚ÑÑ‚Ð²ÑƒÑŽ Ð²Ð°Ñ, Ð¦Ð¸Ñ„Ñ€Ð¾Ð²Ñ‹Ðµ Ð²ÐµÑ€ÑÐ¸Ð¸ Ð¸Ð³Ñ€ ÐºÐ»ÑŽÑ‡Ð¸ XBOX CD KEY Ð¸ Ð¸Ð³Ñ€'),
(2154, 'VavaDAequab', 'maksxarin@outlook.com', '86577337862', 'Wete', 'google', 'Ð•ÑÐ»Ð¸ Ñ‚Ñ‹ Ð² Ñ‚ÐµÐ¼Ðµ, Ð·Ð½Ð°Ð¹ Ñ‡Ñ‚Ð¾ ÐµÑÑ‚ÑŒ Ð¾Ñ„Ð¸Ñ†Ð¸Ð°Ð»ÑŒÐ½Ð°Ñ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ð° Ð½Ð° Ð·Ð'),
(2155, 'MichaelAncex', 'savememan88@yahoo.cmo', '81149492589', 'Nuwara Eliya', 'google', '\r\n\r\nOpen a FREEE account with http://UseFreelancer.com and start making money at home selling any se'),
(2156, 'Lesterric', 'yourmail@gmail.com', '83481466914', 'Chisinau', 'google', 'Ð ÐµÐ³Ð¸ÑÑ‚Ñ€Ð¸Ñ€ÑƒÐ¹Ñ‚ÐµÑÑŒ: https://xxxconent.biz/go/my3tgzrvmq5dkojugy'),
(2157, 'Kennethavefe', 'yourmail@gmail.com', '85649594652', 'Burnt Pine', 'google', 'More detailed: https://xxxconent.biz/go/my3tgzrvmq5dkojugy'),
(2158, 'DJGiankobug', 'pels1000@tele2.nl', '88372867541', 'Skive', 'google', 'Hello, \r\n \r\nFTP service is a community for DJâ€™s & fans that helps you gain full access to exclusiv'),
(2159, 'iphonePurb.', 'maximmad222@yandex.ru', '89973431194', ' ÐÐ¾Ð²Ð¾ÑÐ¸Ð±Ð¸Ñ€ÑÐº', 'google', 'ÐŸÑ€Ð¸Ð²ÐµÑ‚ÑÑ‚Ð²ÑƒÑŽ Ð²Ð°Ñ, Ð¦Ð¸Ñ„Ñ€Ð¾Ð²Ñ‹Ðµ Ð²ÐµÑ€ÑÐ¸Ð¸ Ð¸Ð³Ñ€ ÐºÐ»ÑŽÑ‡Ð¸ XBOX CD KEY Ð¸ Ð¸Ð³Ñ€'),
(2160, 'Mike Becker\r\n', 'no-replykl@gmail.com', '89454181911', 'Boston', 'google', 'Negative SEO attack Services. Deindex bad competitors from Google. It works with any Website, video,'),
(2161, 'iphonePurb.', 'maximmad222@yandex.ru', '82826894197', ' ÐšÑ€Ð°ÑÐ½Ð¾ÑÑ€ÑÐº', 'google', 'Ð”Ð¾Ð±Ñ€Ñ‹Ð¹ Ð´ÐµÐ½ÑŒ, Ð—Ð´ÐµÑÑŒ Ð²Ñ‹ Ð¼Ð¾Ð¶ÐµÑ‚Ðµ ÐšÑƒÐ¿Ð¸Ñ‚ÑŒ Ñ†Ð¸Ñ„Ñ€Ð¾Ð²Ñ‹Ðµ Ð²ÐµÑ€ÑÐ¸Ð¸ Ð¸Ð³Ñ'),
(2162, 'Kathrynlergo', 'alexpopov716253@gmail.com', '83756369312', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', 'ÐŸÑ€Ð¸Ð³Ð»Ð°ÑˆÐ°ÐµÐ¼ Ð’Ð°ÑˆÐµ Ð¿Ñ€ÐµÐ´Ð¿Ñ€Ð¸ÑÑ‚Ð¸Ðµ Ðº Ð²Ð·Ð°Ð¸Ð¼Ð¾Ð²Ñ‹Ð³Ð¾Ð´Ð½Ð¾Ð¼Ñƒ ÑÐ¾Ñ‚Ñ€ÑƒÐ´Ð'),
(2163, 'EverettSlell', 'glukhina.1998@mail.ru', '82865787772', 'Duverge', 'google', 'Ð’Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ - Ð²Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ. Ð¡ÑƒÐ¿ÐµÑ€ Ð°ÐºÑ†Ð¸Ð¾Ð½Ð½Ð¾Ðµ Ð¿Ñ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ. Ð¢Ð°ÐºÐ¸Ñ'),
(2164, 'Jamesinsem', '6icaa@course-fitness.com', '89668189924', 'Molodesjnaja', 'google', 'ç¬¬ä¸€å€ŸéŒ¢ç¶²-å€ŸéŒ¢,å°é¡å€Ÿæ¬¾,å°é¡å€ŸéŒ¢,è­‰ä»¶å€Ÿæ¬¾,è­‰ä»¶å€ŸéŒ¢,èº«åˆ†è­‰å€Ÿæ¬¾,èº«åˆ†è­‰'),
(2165, 'Biman Das', 'bimandas7298@gmail.com', '08637838644', 'Near Police station', 'SOSE', 'Dress'),
(2166, 'kiraculaskaya', 'kiraculaskaya@yandex.ru', '81649377774', 'Estepona', 'google', 'ÐœÐ¾Ð¹ÐºÐ° ÐºÐ°Ñ‚ÐµÑ€Ð¾Ð² Ð¸ ÑÑ…Ñ‚  <a href=http://regionsv.ru/chem4.html>ÐšÐ°Ðº Ð¸ Ñ‡ÐµÐ¼ Ð¾Ñ‚Ð¼Ñ‹'),
(2167, 'EverettSlell', 'glukhina.1998@mail.ru', '86826792695', 'Duverge', 'google', 'Ð’Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ - Ð²Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ. Ð¡ÑƒÐ¿ÐµÑ€ Ð°ÐºÑ†Ð¸Ð¾Ð½Ð½Ð¾Ðµ Ð¿Ñ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ. Ð¢Ð°ÐºÐ¸Ñ'),
(2168, 'Susan Johnson', 'myadhdspray@gmail.com', '81761732197', 'Al Manamah', 'google', 'Hello \r\nMy main objective here, is to help you increase your job performance by providing you a natu'),
(2169, 'Beckylounc', 'vvrezuhys@gordpizza.ru', '87883843587', 'Chisinau', 'google', '<a href=https://onlinelistcasino24.com/>chumba casino</a> \r\n<a href=\"https://onlinelistcasino24.com/'),
(2170, 'BrianDuh', 'vpolakov148@gmail.com', '87333183473', 'ÐšÑ€Ð°ÑÐ½Ð¾ÑÑ€ÑÐº', 'google', 'Ð˜Ñ‰Ð¸Ñ‚Ðµ Ð³Ð´Ðµ Ð¼Ð¾Ð¶Ð½Ð¾ Ð¿Ñ€Ð¾ÑˆÐ¸Ñ‚ÑŒ ÑÐ²Ð¾Ðµ Ð°Ð²Ñ‚Ð¾ Ð² ÐšÑ€Ð°ÑÐ½Ð¾ÑÑ€ÑÐºÐµ? \r\nÐ¢Ð¾Ð³Ð´Ð'),
(2171, 'Josephham', 'fevgen708@gmail.com', '88418358887', 'NYC', 'google', ' Pikler triangle toddler, pikler triangle assembly on Etsy                                          '),
(2172, 'AndrewSloma', 'vlad11@bambo-mebel.top', '83612296127', 'Khuiv', 'google', 'Ð’ÑÐµÐ¼ Ð¿Ñ€Ð¸Ð²ÐµÑ‚, Ð½Ð° Ð´Ð½ÑÑ… Ð¿Ð¾Ð¼ÑÐ» Ð»ÐµÐ²Ð¾Ðµ Ð¿ÐµÑ€ÐµÐ´Ð½ÐµÐµ ÐºÑ€Ñ‹Ð»Ð¾ ÑÐ²Ð¾ÐµÐ³Ð¾ '),
(2173, 'EverettSlell', 'glukhina.1998@mail.ru', '89544643871', 'Duverge', 'google', 'Ð’Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ - Ð²Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ. Ð¡ÑƒÐ¿ÐµÑ€ Ð°ÐºÑ†Ð¸Ð¾Ð½Ð½Ð¾Ðµ Ð¿Ñ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ. Ð¢Ð°ÐºÐ¸Ñ'),
(2174, 'RaymondPar', 'electricservice@gmail.com', '87863293667', 'Ligatne', 'google', 'Hello! We will make a commercial for your business or website for only $20. \r\nThe deal takes place o'),
(2175, 'er-Zet', 'arterio-r@bk.ru', '86343271425', '', 'google', 'Ich habe festgestellt, daÐ“ÑŸ ich in punkto Alter geistig wohl irgendwo zwischen 25 und 27 bin. Denn'),
(2176, 'CarolynUnsub', 'ogdekjntm@wowzilla.ru', '82349898886', 'Nove Mesto nad Vahom', 'google', '<a href=https://casinogamereal.online/>free slots games</a> \r\n<a href=\"https://casinogamereal.online'),
(2177, 'IXRichard', 'kirpi4ik2022@gmail.com', '85374264388', 'Mtskheta', 'google', 'Ð”Ð¾Ð±Ñ€Ð¾ Ð¿Ð¾Ð¶Ð°Ð»Ð¾Ð²Ð°Ñ‚ÑŒ Ð½Ð° ÑÐ°Ð¹Ñ‚ ÑÑ‚Ñ€Ð¾Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ñ… Ð¸ Ð½Ðµ Ñ‚Ð¾Ð»ÑŒÐºÐ¾ ÑÐ¾Ð²Ðµ'),
(2178, 'DsuravidFut', 'dsuravidTer@gmail.com', '81177113272', 'Saint George', 'google', ' \r\nFree countries caused by corticosteroids dit citizen discount printable urine. You $100 a year, b'),
(2179, 'RaymondPsype', 'dawid.kazimski@interia.pl', '89228519817', 'Tamana', 'google', 'DokÄ…d zauwaÅ¼aÄ‡ celuloidy zaÅ› seriale online â€“ wysyÅ‚ane pÅ‚aszczyzny streamingowe \r\n \r\nNegatyw'),
(2180, 'Kevin Johnson', 'tbformleads@gmail.com', '82354743825', 'Istanbul', 'google', 'Hello \r\n \r\nI just wanted to reach out to you and see if you would be open to getting an animated exp'),
(2181, 'PornoGoc', 'dpizdovka@yandex.ru', '84525168679', 'https://porno-go.website', 'google', 'Ð‘ÐµÐ·ÑƒÐ¼Ð½Ð¾Ðµ Ð¿Ð¾Ñ€Ð½Ð¾ Ð²Ð¸Ð´ÐµÐ¾ Ð±ÐµÐ· Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ð¸ Ð¿Ñ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€ Ð½Ð° https://p'),
(2182, 'KennethwhaFT', 'vpsr@course-fitness.com', '87441299361', 'Linguere', 'google', 'Game LIFE éŠæˆ²æƒ…å ± \r\n \r\n \r\nhttps://gamelife.tw/portal.php'),
(2183, 'RichardCom', 'seo1@intervision.ua', '88927812115', 'Taiping', 'google', ''),
(2184, 'Mike Peterson\r\n', 'no-replykl@gmail.com', '82345237663', 'Albany', 'google', 'Howdy \r\n \r\nWe will increase your Local Ranks organically and safely, using only whitehat methods, wh'),
(2185, 'JamesCrynC', 'sgbogdanss@gmail.com', '89925168239', 'Moscow', 'google', 'schooloo Supplies - Buy School Uniforms, Books, Bags, Shoes &amp; Accessories Online at Best Prices '),
(2186, 'AllenSic', 'mark@hujk.estabbi.com', '83683715281', 'Ennis', 'google', ''),
(2187, 'porno', 'genline.ua@gmail.com', '83229831393', '', 'google', '[url]http://genline.com.ua/[/url] \r\n[url]http://blackside.com.ua/[/url]'),
(2188, 'MichaelBiz', 'klarakazarinova@gmail.com', '83224151332', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', 'Ð—Ð´Ñ€Ð°Ð²ÑÑ‚Ð²ÑƒÐ¹ Ð´Ñ€ÑƒÐ³, Ð·Ð°Ñ†ÐµÐ½Ð¸ Ð¿Ñ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ(ÐºÐ°Ñ€Ñ‚Ð¸Ð½ÐºÐ° ÐºÐ»Ð¸ÐºÐ°Ð±ÐµÐ»'),
(2189, 'stroitelnyy_biznes_axorm', 'ilyagrach497@rambler.ru', '88492893814', 'ÐšÑƒÑ€ÑÐº', 'google', 'Ð”Ð¾Ð±Ñ€Ð¾Ð³Ð¾ Ð²Ñ€ÐµÐ¼ÐµÐ½Ð¸ ÑÑƒÑ‚Ð¾Ðº! \r\nÐžÐºÐ°Ð·Ñ‹Ð²Ð°ÐµÑ‚ÑÑ Ð¼Ð¾Ð¶Ð½Ð¾ Ð·Ð°Ñ€Ð°Ð±Ð°Ñ‚Ñ‹Ð²Ð°Ñ‚'),
(2190, 'nniknikolsky', 'nniknikolsky@yandex.ru', '82456935871', 'Hesperange', 'google', 'Ð¥Ð¾Ð´Ð¸Ð¼ Ð¿Ð¾Ð´ Ð¿Ð°Ñ€ÑƒÑÐ¾Ð¼. ÐÐ°Ð²Ð¸Ð³Ð°Ñ†Ð¸Ñ. Ð¥Ñ€Ð°Ð½ÐµÐ½Ð¸Ðµ ÑÑƒÐ´Ð½Ð° <a href=http://boa'),
(2191, 'DannyTebra', 'n.chernousov@mabinsieces.bizml.ru', '86441445577', 'Arcatao', 'google', 'https://www.gienshop.ru/   gien gien Ð¿Ð¾ÑÑƒÐ´Ð°'),
(2192, '', '', '', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'google', ''),
(2193, 'Lesterric', 'yourmail@gmail.com', '85686279535', 'Chisinau', 'google', 'ÐŸÐ¾ÑÐ¼Ð¾Ñ‚Ñ€Ð¸Ñ‚Ðµ: http://go.durakombra.com/0gfe'),
(2194, 'Kennethavefe', 'yourmail@gmail.com', '89631947184', 'Burnt Pine', 'google', 'More detailed: http://go.durakombra.com/0gfe'),
(2195, 'StedateptenSoand', 'stedateyrphenCrasy@gmail.com', '82371943815', 'Banjul', 'google', 'So, why choose us over other|\r\n \r\n \r\n \r\n<a href=https://meetgirlforsex.blogspot.com>aggravating\r\n</a'),
(2196, 'Lesterric', 'yourmail@gmail.com', '89682741386', 'Chisinau', 'google', 'ÐŸÐ¾Ð´Ñ€Ð¾Ð±Ð½ÐµÐµ: http://go.durakombra.com/0gfe'),
(2197, 'JuliaBom', 'lada.tayupova@mail.ru', '87843188935', 'Moscow', 'google', ''),
(2198, 'iphonePurb.', 'maximmad222@yandex.ru', '86475256721', ' ÐšÑ€Ð°ÑÐ½Ð¾ÑÑ€ÑÐº', 'google', 'Ð—Ð´Ñ€Ð°Ð²ÑÑ‚Ð²ÑƒÐ¹Ñ‚Ðµ,Ð—Ð´ÐµÑÑŒ Ð²Ñ‹ Ð¼Ð¾Ð¶ÐµÑ‚Ðµ ÐšÑƒÐ¿Ð¸Ñ‚ÑŒ Ð¸Ð³Ñ€Ñ‹ Ð½Ð° XBOX ONE Ð¿Ð¾Ð»ÑƒÑ‡'),
(2199, 'PornoGog', 'gefsgev@yandex.ru', '85975145644', 'https://porno-go.website', 'google', 'Ð¡ÐµÐºÑÑƒÐ°Ð»ÑŒÐ½Ð¾Ðµ Ð¿Ð¾Ñ€Ð½Ð¾ Ð²Ð¸Ð´ÐµÐ¾ Ð±ÐµÐ· Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ð¸ Ð¾Ð½Ð»Ð°Ð¹Ð½ Ð½Ð° https:/'),
(2200, 'Mike Finch\r\n', 'no-replykl@gmail.com', '86583779884', 'Kaohsiung Municipality', 'google', 'Howdy \r\n \r\nI have just took a look on your SEO for  schooloo.com for the ranking keywords and saw th'),
(2201, 'KennethwhaFT', 'vpsr@course-fitness.com', '84844613196', 'Linguere', 'google', 'Game LIFE éŠæˆ²æƒ…å ± \r\n \r\n \r\nhttps://gamelife.tw/portal.php'),
(2202, 'Nersesov', 'mndoctor@vk.com', '85712485819', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', 'ÐŸÑ€ÐµÐ´Ð»Ð°Ð³Ð°ÐµÐ¼ Ð²Ð°Ð¼ Ð¿Ñ€Ð¸Ð¾Ð±Ñ€ÐµÑÑ‚Ð¸ Ð¿Ñ€Ð¸Ñ€Ð¾Ð´Ð½Ñ‹Ð¹ Ñ†ÐµÐ¾Ð»Ð¸Ñ‚. Ð¦ÐµÐ¾Ð»Ð¸Ñ‚ - Ð¿Ñ'),
(2203, 'Nersesov', 'mndoctor@vk.com', '87393577382', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', 'ÐŸÑ€ÐµÐ´Ð»Ð°Ð³Ð°ÐµÐ¼ Ð²Ð°Ð¼ Ð¿Ñ€Ð¸Ð¾Ð±Ñ€ÐµÑÑ‚Ð¸ Ð¿Ñ€Ð¸Ñ€Ð¾Ð´Ð½Ñ‹Ð¹ Ñ†ÐµÐ¾Ð»Ð¸Ñ‚. Ð¦ÐµÐ¾Ð»Ð¸Ñ‚ - Ð¿Ñ'),
(2204, 'Nersesov', 'mndoctor@vk.com', '87838621594', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', 'ÐŸÑ€ÐµÐ´Ð»Ð°Ð³Ð°ÐµÐ¼ Ð²Ð°Ð¼ Ð¿Ñ€Ð¸Ð¾Ð±Ñ€ÐµÑÑ‚Ð¸ Ð¿Ñ€Ð¸Ñ€Ð¾Ð´Ð½Ñ‹Ð¹ Ñ†ÐµÐ¾Ð»Ð¸Ñ‚. Ð¦ÐµÐ¾Ð»Ð¸Ñ‚ - Ð¿Ñ'),
(2205, 'Nersesov', 'mndoctor@vk.com', '82387232993', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', 'ÐŸÑ€ÐµÐ´Ð»Ð°Ð³Ð°ÐµÐ¼ Ð²Ð°Ð¼ Ð¿Ñ€Ð¸Ð¾Ð±Ñ€ÐµÑÑ‚Ð¸ Ð¿Ñ€Ð¸Ñ€Ð¾Ð´Ð½Ñ‹Ð¹ Ñ†ÐµÐ¾Ð»Ð¸Ñ‚. Ð¦ÐµÐ¾Ð»Ð¸Ñ‚ - Ð¿Ñ'),
(2206, 'Wwjdzwa', 'fongwu@earthlink.net\r\n', '83366546971', '', 'google', 'Bdrleeu \r\n \r\nfongwu@earthlink.net\r\n    :'),
(2207, 'EverettSlell', 'glukhina.1998@mail.ru', '89576811675', 'Duverge', 'google', ''),
(2208, 'EverettSlell', 'glukhina.1998@mail.ru', '82532564831', 'Duverge', 'google', 'CÐ°Ð¹Ñ‚Ñ‹ Ð·Ð°Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ°  Ð² Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚Ðµ Ð±ÐµÐ· Ð²Ð»Ð¾Ð¶ÐµÐ½Ð¸Ð¹ \r\n \r\n \r\n \r\nÐ•ÑÐ»Ð¸ Ð’Ð°'),
(2209, '', '', '', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'google', ''),
(2210, 'Nballwellidown', 'angelika2288@outlook.com', '86335693263', 'Ningbo', 'google', ''),
(2211, 'DavidPug', 'igogsh464@gmail.com', '89185777616', 'Duverge', 'google', 'Flood essaySatirical essays on obesity: \r\n<a href=\"https://ircstandjeu.cf/essay-community-702642.htm'),
(2212, 'Josephjit', '11@bot-belarusborder.ru', '88991429256', 'Gray Mountain', 'google', '<a  href=\"http://alpineski.by/construction/roofing/Petrikov\"> ÐšÑ€Ð¾Ð²ÐµÐ»ÑŒÐ½Ñ‹Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ñ‹ ÐŸÐµ'),
(2213, 'ygyzyBlurl', 'med-servis@rambler.ru', '87687695515', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', 'Ð•ÑÐ»Ð¸ Ð²Ñ‹ Ñ‡ÑƒÐ²ÑÑ‚Ð²ÑƒÐµÑ‚Ðµ ÑÐµÐ±Ñ Ð¿Ð»Ð¾Ñ…Ð¾ Ð¸Ð»Ð¸ Ð²Ð°Ñ Ñ‡Ñ‚Ð¾-Ñ‚Ð¾ Ð±ÐµÑÐ¿Ð¾ÐºÐ¾Ð¸Ñ‚,'),
(2214, 'kreditCig', 'topmicrozajmru@gmail.com', '86874534677', 'Moscow', 'google', 'Ð¥Ð¾Ñ‚Ð¸Ñ‚Ðµ Ð¾Ñ„Ð¾Ñ€Ð¼Ð¸Ñ‚ÑŒ Ð´Ð¾Ð»Ð³Ð¾ÑÑ€Ð¾Ñ‡Ð½Ñ‹Ð¹ ÐºÑ€ÐµÐ´Ð¸Ñ‚, Ð½Ð¾ Ð½Ðµ Ð¾ÑÐ²ÐµÐ´Ð¾Ð¼Ð»ÐµÐ½Ñ'),
(2215, 'Nova Pallon', 'napinternationql@gmail.com', '84286182598', 'New York', 'google', 'Hello \r\nMy name is Nova and I just wanted to see if we could schedule a quick call. \r\n \r\nWe provide '),
(2216, 'EverettSlell', 'glukhina.1998@mail.ru', '88932815332', 'Duverge', 'google', 'CÐ°Ð¹Ñ‚Ñ‹ Ð·Ð°Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ°  Ð² Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚Ðµ Ð±ÐµÐ· Ð²Ð»Ð¾Ð¶ÐµÐ½Ð¸Ð¹ \r\n \r\n \r\n \r\nÐ•ÑÐ»Ð¸ Ð’Ð°'),
(2217, 'milaevpatova', 'milaevpatova@yandex.ru', '86379445574', 'Algiers', 'google', 'ÐšÐ°Ðº Ñ…Ð¾Ð´ÑÑ‚ Ð¿Ð¾Ð´ Ð¿Ð°Ñ€ÑƒÑÐ¾Ð¼ Ð¸ Ð¼Ð¾Ñ‚Ð¾Ñ€Ð¾Ð¼ <a href=http://wc.matrixplus.ru/>Ð’ÑÐµ Ð¿'),
(2218, 'Thomaselere', 'yourmail@gmail.com', '82842544678', 'Tirgu Mures', 'google', 'Esperio ÐœÐžÐ¨Ð•ÐÐÐ˜Ðš Ð¾Ñ‚Ð·Ñ‹Ð²Ñ‹ Ð¸ Ð²Ñ‹Ð²Ð¾Ð´ Ð´ÐµÐ½ÐµÐ³ \r\nÐšÐ¾Ð¼Ð¿Ð°Ð½Ð¸Ñ, Ñ‡ÑŒÑŽ Ð´ÐµÑÑ‚Ðµ'),
(2219, 'Garryswosy', 'yourmail@gmail.com', '89483743939', 'Nestor', 'google', 'Esperio â€” Ð¾Ñ‚Ð·Ñ‹Ð²Ñ‹ Ð¾ esperio.org \r\nÐÐ½Ñ‚Ð¾Ð½ ÐšÐ»ÐµÐ²Ñ†Ð¾Ð² ÐÐ²Ñ‚Ð¾Ñ€: ÐÐ½Ñ‚Ð¾Ð½ ÐšÐ»ÐµÐ²Ñ'),
(2220, 'JuliScome', 'o-tendencii@yandex.ru', '81739958713', 'Oslo', 'google', ''),
(2221, 'lestnicaSmuts', 'taisiya.alximowa@mail.ru', '83669218613', 'ÐÐ¸Ð¶Ð½Ð¸Ð¹ ÐÐ¾Ð²Ð³Ð¾Ñ€Ð¾Ð´', 'google', ' \r\n<a href=http://lestnica-nn.ru/>ÑÑ‚ÑƒÐ¿ÐµÐ½ÑŒÐºÐ¸ Ð´Ð»Ñ Ð»ÐµÑÑ‚Ð½Ð¸Ñ†Ñ‹ Ð¸Ð· Ð´ÐµÑ€ÐµÐ²Ð° Ñ†ÐµÐ'),
(2222, 'Patrickfrals', 'yourmail@gmail.com', '83453932613', 'Carthage', 'google', 'TELETRADE \r\nÐ“Ð»Ð°Ð²Ð½Ð°Ñ  Ð ÐµÐ¹Ñ‚Ð¸Ð½Ð³ Ð¤Ð¾Ñ€ÐµÐºÑ Ð±Ñ€Ð¾ÐºÐµÑ€Ð¾Ð²  TeleTrade \r\nTeleTrade \r\nÐ˜'),
(2223, 'StedateptenSoand', 'stedateyrphenCrasy@gmail.com', '82426466786', 'Banjul', 'google', 'personals are listed. One of the|\r\n \r\n \r\n \r\n<a href=https://zoznamkanasex.blogspot.com>us\r\n</a>'),
(2224, 'Lesterric', 'yourmail@gmail.com', '84698873484', 'Chisinau', 'google', 'ÐŸÐ¾Ð´Ñ€Ð¾Ð±Ð½ÐµÐµ: http://go.durakombra.com/0gfe'),
(2225, 'EverettSlell', 'glukhina.1998@mail.ru', '82323234592', 'Duverge', 'google', 'ÐŸÑ€Ð¾Ð´Ð°Ð¶Ð° Ð²Ð¾Ð·Ð´ÑƒÑˆÐ½Ñ‹Ñ… ÑˆÐ°Ñ€Ð¾Ð² Ñ Ð´Ð¾ÑÑ‚Ð°Ð²ÐºÐ¾Ð¹ Ð² ÐœÐ¾ÑÐºÐ²Ðµ \r\nÐŸÑ€Ð¾Ð´Ð°Ð¶Ð° '),
(2226, 'Jimmydrera', 'sir.maxbo@yandex.ru', '89656634582', 'Ð¼Ð¾ÑÐºÐ²Ð°', 'google', 'ÐšÐ°Ð»Ð¸Ð±Ñ€Ð¾Ð²ÐºÐ° Ð¿Ñ€Ð¾ÑˆÐ¸Ð²Ð¾Ðº Ð­Ð‘Ð£ Ð½Ð° Ð·Ð°ÐºÐ°Ð·!!! \r\n? ÐšÐ°Ð»Ð¸Ð±Ñ€Ð¾Ð²ÐºÐ° Ð¿Ñ€Ð¾ÑˆÐ¸Ð'),
(2227, 'GurkovskiBlurl', 'gurkovskiy1991@rambler.ru', '86649414664', 'ÐœÐ¾ÑÐºÐ²Ð°', 'google', 'ÐžÐ¿Ñ‹Ñ‚Ð½Ñ‹Ð¹ Ð°Ð´Ð²Ð¾ÐºÐ°Ñ‚ Ð“ÑƒÑ€ÐºÐ¾Ð²ÑÐºÐ¸Ð¹ Ð¡ÐµÑ€Ð³ÐµÐ¹ Ð¡Ñ‚Ð°Ð½Ð¸ÑÐ»Ð°Ð²Ð¾Ð²Ð¸Ñ‡ Ð¿Ñ€ÐµÐ´Ð'),
(2228, 'MikhailR85', 'mikhailrt85@gmail.com', '84523932894', 'Ð’Ñ‹Ð±Ð¾Ñ€Ð³', 'google', 'Ð—Ð´Ñ€Ð°Ð²ÑÑ‚Ð²ÑƒÐ¹Ñ‚Ðµ. ÐŸÐ¾Ð¼Ð¾Ð³Ñƒ Ñ€ÐµÑˆÐ¸Ñ‚ÑŒ Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼Ñ‹ Ñ Ð²Ð°ÑˆÐ¸Ð¼ ÑÐ°Ð¹Ñ‚Ð¾Ð¼. Ð¡ '),
(2229, 'MikhailR85', 'mikhailrt85@gmail.com', '86939696776', 'Ð’Ñ‹Ð±Ð¾Ñ€Ð³', 'google', 'Ð—Ð´Ñ€Ð°Ð²ÑÑ‚Ð²ÑƒÐ¹Ñ‚Ðµ. ÐŸÐ¾Ð¼Ð¾Ð³Ñƒ Ñ€ÐµÑˆÐ¸Ñ‚ÑŒ Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼Ñ‹ Ñ Ð²Ð°ÑˆÐ¸Ð¼ ÑÐ°Ð¹Ñ‚Ð¾Ð¼. Ð¡ '),
(2230, 'MikhailR85', 'mikhailrt85@gmail.com', '88242125165', 'Ð’Ñ‹Ð±Ð¾Ñ€Ð³', 'google', 'Ð—Ð´Ñ€Ð°Ð²ÑÑ‚Ð²ÑƒÐ¹Ñ‚Ðµ. ÐŸÐ¾Ð¼Ð¾Ð³Ñƒ Ñ€ÐµÑˆÐ¸Ñ‚ÑŒ Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼Ñ‹ Ñ Ð²Ð°ÑˆÐ¸Ð¼ ÑÐ°Ð¹Ñ‚Ð¾Ð¼. Ð¡ '),
(2231, 'MikhailR85', 'mikhailrt85@gmail.com', '81138699597', 'Ð’Ñ‹Ð±Ð¾Ñ€Ð³', 'google', 'Ð—Ð´Ñ€Ð°Ð²ÑÑ‚Ð²ÑƒÐ¹Ñ‚Ðµ. ÐŸÐ¾Ð¼Ð¾Ð³Ñƒ Ñ€ÐµÑˆÐ¸Ñ‚ÑŒ Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼Ñ‹ Ñ Ð²Ð°ÑˆÐ¸Ð¼ ÑÐ°Ð¹Ñ‚Ð¾Ð¼. Ð¡ '),
(2232, 'EverettSlell', 'glukhina.1998@mail.ru', '83457861836', 'Duverge', 'google', 'Ð’Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ - Ð²Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ. Ð¡ÑƒÐ¿ÐµÑ€ Ð°ÐºÑ†Ð¸Ð¾Ð½Ð½Ð¾Ðµ Ð¿Ñ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ. Ð¢Ð°ÐºÐ¸Ñ'),
(2233, 'Yawenexcak', 'angelika2288@outlook.com', '82338858792', 'Ningbo', 'google', ''),
(2234, 'EverettSlell', 'glukhina.1998@mail.ru', '89448468715', 'Duverge', 'google', 'ÐŸÑ€Ð¾Ð´Ð°Ð¶Ð° Ð²Ð¾Ð·Ð´ÑƒÑˆÐ½Ñ‹Ñ… ÑˆÐ°Ñ€Ð¾Ð² Ñ Ð´Ð¾ÑÑ‚Ð°Ð²ÐºÐ¾Ð¹ Ð² ÐœÐ¾ÑÐºÐ²Ðµ \r\nÐŸÑ€Ð¾Ð´Ð°Ð¶Ð° '),
(2235, 'CraDap', '17@games-games.online', '88582759421', 'Ulaanbaatar', 'google', 'Greatest Crazy Games is a gaming company founded to provide the best online games available on the i'),
(2236, 'StedateptenSoand', 'stedateyrphenCrasy@gmail.com', '85789976637', 'Banjul', 'google', 'only listing personals free of charge.|\r\n \r\n \r\n \r\n<a href=https://whichdatingtobe.blogspot.com/>new\r'),
(2237, 'RandalRax', 'nwzn@course-fitness.com', '81139141935', 'Praia', 'google', 'é›™æ³¢é•·äºžæ­·å±±å¤§é™¤æ¯›é›·å°„ - å…«åƒä»£ \r\n \r\n \r\nhttps://yachiyo.com.tw/alexandrite-laser/'),
(2238, 'Robertdriet', 'saxsasirek@yandex.ru', '84872731694', 'Moscow', 'google', ' \r\n<a href=https://max.lordfilm-hd.me/cartoons/thriller/>watch movies online</a>'),
(2239, 'EverettSlell', 'glukhina.1998@mail.ru', '86189848264', 'Duverge', 'google', 'CÐ°Ð¹Ñ‚Ñ‹ Ð·Ð°Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ°  Ð² Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚Ðµ Ð±ÐµÐ· Ð²Ð»Ð¾Ð¶ÐµÐ½Ð¸Ð¹ \r\n \r\n \r\n \r\nÐ•ÑÐ»Ð¸ Ð’Ð°'),
(2240, 'Login4977', 'liya.bikkina@list.ru', '84388134382', '', 'google', ' \r\n ÐÐ°Ñ‡Ð¸ÑÐ»ÐµÐ½Ð¸Ðµ Ð±Ð¾Ð½ÑƒÑÐ° Ð¿Ð¾ Ð¾Ð´Ð½Ð¾Ð¼Ñƒ Ð¸Ð· Ð²Ð°ÑˆÐ¸Ñ… ÑÑ‡ÐµÑ‚Ð¾Ð².  \r\n \r\nÐŸÐ¾Ð´Ñ€'),
(2241, 'RobertRer', 'yourmail@gmail.com', '81813622628', 'Colonel Hill', 'google', 'Hello. And Bye. \r\nhttp://kfsdfjkalkjs.com'),
(2242, '', '', '', 'Ð ÑšÐ Ñ•Ð¡ÐƒÐ Ñ”Ð Ð†Ð Â°', 'google', ''),
(2243, 'EverettSlell', 'glukhina.1998@mail.ru', '87298971524', 'Duverge', 'google', 'CÐ°Ð¹Ñ‚Ñ‹ Ð·Ð°Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ°  Ð² Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚Ðµ Ð±ÐµÐ· Ð²Ð»Ð¾Ð¶ÐµÐ½Ð¸Ð¹ \r\n \r\n \r\n \r\nÐ•ÑÐ»Ð¸ Ð’Ð°'),
(2244, 'Jamespag', 'thomasonregal@gmail.com', '81768925634', 'Sembawang', 'google', 'Find latest news about Online Casinos, New Slots Games and latest <a href=https://www.jackpotbetonli'),
(2245, 'Mikhailit', 'itmikhailr85@gmail.com', '89436767183', 'Moscow', 'google', 'Hello. I will help you solve problems with your website. With my help, your website can become much '),
(2246, 'Mikhailit', 'itmikhailr85@gmail.com', '87853426265', 'Moscow', 'google', 'Hello. I will help you solve problems with your website. With my help, your website can become much '),
(2247, 'Mikhailit', 'itmikhailr85@gmail.com', '81518157582', 'Moscow', 'google', 'Hello. I will help you solve problems with your website. With my help, your website can become much '),
(2248, 'Mikhailit', 'itmikhailr85@gmail.com', '86553981186', 'Moscow', 'google', 'Hello. I will help you solve problems with your website. With my help, your website can become much '),
(2249, 'EverettSlell', 'glukhina.1998@mail.ru', '88951584846', 'Duverge', 'google', 'Ð˜Ñ‰Ð¸Ñ‚Ðµ Ð²Ñ‹Ð³Ð¾Ð´Ð½ÑƒÑŽ ÑÐºÑƒÐ¿ÐºÑƒ Ð² ÐœÐ¾ÑÐºÐ²Ðµ? \r\n \r\nÐ¡ÐºÑƒÐ¿Ð°ÐµÐ¼ Ñ‚Ð¾Ð²Ð°Ñ€Ñ‹ Ð¸ Ð±/Ñƒ '),
(2250, 'pauletteap69', 'marcy@haruki4510.masato55.officemail.in.net', '81887416232', '', 'google', 'Hot sexy porn projects, daily updates\r\nhttp://freefporn.wiltonmanors.miyuhot.com/?faith \r\n is cartoo'),
(2251, 'Jamesinend', 'leelupradhann5@gmail.com', '85356861835', 'Lome', 'google', '<a href=https://www.jackpotbetonline.com/>Online Casino</a> Guide, Online Casino Slots, Signup Bonus'),
(2252, 'JessicaStime', 'AleksandraJet1960@qeo.dogle.info', '87332125211', 'ÐšÑ€Ð°ÑÐ½Ð¾Ð²Ð¸ÑˆÐµÑ€ÑÐº', 'google', '<a href=http://mukunaofficial.ru/>ÐºÑƒÐ¿Ð¸Ñ‚ÑŒ Ð¶Ð³ÑƒÑ‡ÑƒÑŽ Ð¼ÑƒÐºÑƒÐ½Ñƒ Ð² Ð¼Ð¾ÑÐºÐ²Ðµ Ð² Ð°Ð¿Ñ‚Ðµ'),
(2253, 'SharonTrose', 'nknucbnju@wowzilla.ru', '82252434641', 'Willemstad', 'google', '<a href=https://casinogamereal.com/>free casino games</a> \r\n<a href=\"https://casinogamereal.com/\">fr'),
(2254, 'JamesUnsub', 'yourmail@gmail.com', '88471273729', 'Linguere', 'google', 'Ukraine is fighting the invader with weapons in hands, defending its freedom and European future.'),
(2255, 'Kevinbob', 'asdasdasdasd.asdasd@yandex.com', '84955853587', 'Kwajalein', 'google', 'http://images.google.no/url?q=https://1xbitapk.com/es/\r\nhttps://www.feldbahn-ffm.de/wp-content/pages'),
(2256, 'StedateptenSoand', 'stedateyrphenCrasy@gmail.com', '86664135322', 'Banjul', 'google', 'that you like.|\r\n \r\n \r\n \r\n<a href=https://chatdecitasgratis.blogspot.com/>or\r\n</a>'),
(2257, 'sochi.cat Dyemn', 'i5si5@yandex.ru', '86341175431', 'Udon Thani', 'google', 'ÐŸÑ€Ð¸Ð³Ð»Ð°ÑˆÐ°ÐµÐ¼ Ð¶Ð¸Ñ‚ÑŒ Ð² Ð¡Ð¾Ñ‡Ð¸, Ð¿Ð¾Ð¼Ð¾Ð¶ÐµÐ¼ Ñ Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚Ð°Ð¼Ð¸. <a href=https:/'),
(2258, 'StedateptenSoand', 'stedateyrphenCrasy@gmail.com', '89762665828', 'Banjul', 'google', 'when it comes to finding singles|\r\n \r\n \r\n \r\n<a href=https://arkadabulmasitesi.blogspot.com/>on\r\n</a>'),
(2259, 'RandallSpown', 'drlorenzakihn@gmail.com', '82667275129', 'Kwekwe', 'google', 'Descriptive stats mainly concentrate on the main tendency, variability, and circulation of sample da'),
(2260, 'tcsgroupv', 'lsenfy@gmail.com', '85987913879', 'Austin', 'google', ''),
(2261, 'AnthonyBob', 'behanceagency@rambler.ru', '82817971285', 'Albany', 'google', 'Russia attacked Ukraine. For a peaceful sovereign country. Stop the war! Go to the square! Stop Puti'),
(2262, 'EverettSlell', 'glukhina.1998@mail.ru', '89711531662', 'Duverge', 'google', 'Ð˜Ñ‰Ð¸Ñ‚Ðµ Ð²Ñ‹Ð³Ð¾Ð´Ð½ÑƒÑŽ ÑÐºÑƒÐ¿ÐºÑƒ Ð² ÐœÐ¾ÑÐºÐ²Ðµ? \r\n \r\nÐ¡ÐºÑƒÐ¿Ð°ÐµÐ¼ Ñ‚Ð¾Ð²Ð°Ñ€Ñ‹ Ð¸ Ð±/Ñƒ '),
(2263, 'biznes_na_fundamentahs_Trots', 'ivanast0493@rambler.ru', '82947427329', 'Ð’Ð¾Ñ€Ð¾Ð½ÐµÐ¶', 'google', 'ÐŸÑ€Ð¸Ð²ÐµÑ‚ Ð²ÑÐµÐ¼! \r\nÐÐµÐ´Ð°Ð²Ð½Ð¾ Ð½Ð°ÑˆÐµÐ» Ð¿Ð¾Ð»ÐµÐ·Ð½Ñ‹Ð¹ Ð¸ Ð¾Ñ‚Ð»Ð¸Ñ‡Ð½Ñ‹Ð¹ ÑÐ°Ð¹Ñ‚, Ð½'),
(2264, 'EverettSlell', 'glukhina.1998@mail.ru', '81711499458', 'Duverge', 'google', 'CÐ°Ð¹Ñ‚Ñ‹ Ð·Ð°Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ°  Ð² Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚Ðµ Ð±ÐµÐ· Ð²Ð»Ð¾Ð¶ÐµÐ½Ð¸Ð¹ \r\n \r\n \r\n \r\nÐ•ÑÐ»Ð¸ Ð’Ð°'),
(2265, 'Mike Charlson\r\n', 'no-replykl@gmail.com', '88563814943', 'Boston', 'google', 'Hello \r\n \r\nWe all know the importance that dofollow link have on any website`s ranks. \r\nHaving most '),
(2266, 'RichardAbige', 'yourmail@gmail.com', '86682912822', 'Freetown', 'google', 'TELETRADE \r\nÐ“Ð»Ð°Ð²Ð½Ð°Ñ  Ð ÐµÐ¹Ñ‚Ð¸Ð½Ð³ Ð¤Ð¾Ñ€ÐµÐºÑ Ð±Ñ€Ð¾ÐºÐµÑ€Ð¾Ð²  TeleTrade \r\nTeleTrade \r\nÐ˜'),
(2267, 'Samuelemida', 'ghlz6@course-fitness.com', '87468753787', 'Lianyungang', 'google', 'é»žå­æ•¸ä½ç§‘æŠ€æœ‰é™å…¬å¸ \r\n \r\nhttps://spot-digital.com.tw/'),
(2268, 'PedroKelty', 'nixy@course-fitness.com', '83977254485', 'Plovdiv', 'google', 'XYZè»Ÿé«”è£œçµ¦ç«™å…‰ç¢Ÿç ´è§£å¤§è£œå¸–è³‡è¨Šåˆè¼¯ä¸­å¿ƒ é«˜é»ž å‡½æŽˆ \r\n \r\nhttps://soft-ware.xyz/'),
(2269, 'AnnaAvoit', 'anna_fisher74@mail.ru', '87218298236', 'Chelyabinsk', 'google', 'ÐÐ°Ð¼ Ð¾Ñ‡ÐµÐ½ÑŒ Ð¿Ð¾Ð²ÐµÐ·Ð»Ð¾, Ñ‚Ñ‰Ð°Ñ‚ÐµÐ»ÑŒÐ½Ð¾ Ð¿Ð¾Ð´Ð±Ð¸Ñ€Ð°Ð»Ð¸ Ð¸Ð·Ð³Ð¾Ñ‚Ð¾Ð²Ð¸Ñ‚ÐµÐ»Ñ Ñ‡Ñ'),
(2270, 'Brucejounc', 'pastukhov.8brhl@mail.ru', '88766179522', 'Freising', 'google', 'ÐŸÑ€Ð¸Ð²ÐµÑ‚, Ð’Ñ‹ Ð¿Ñ€Ð¾Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð¸Ñ€Ð¾Ð²Ð°Ð½Ñ‹ Ð¿Ñ€Ð¾ Ð±Ð¾ÐµÐ²Ñ‹Ðµ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ. ÐœÐ½Ðµ Ð¸ '),
(2271, 'BriceDrunk', 'royal@eldorado-avtomaty.com', '81297847744', 'Lilongwe', 'google', 'ÐŸÑ€Ð¸Ð²ÐµÑ‚, \r\nÐšÐ¾Ð»Ð»ÐµÐ³Ð¸. \r\n \r\nÐ£Ð·Ð½Ð°Ð¹ Ð±Ð¾Ð»ÑŒÑˆÐµ Ð½Ð° Ð½Ð°ÑˆÐµÐ¼ ÑÐ°Ð¹Ñ‚Ðµ ÐºÐ°Ð·Ð¸Ð½Ð¾'),
(2272, 'EverettSlell', 'glukhina.1998@mail.ru', '88616416214', 'Duverge', 'google', 'CÐ°Ð¹Ñ‚Ñ‹ Ð·Ð°Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ°  Ð² Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚Ðµ Ð±ÐµÐ· Ð²Ð»Ð¾Ð¶ÐµÐ½Ð¸Ð¹ \r\n \r\n \r\n \r\nÐ•ÑÐ»Ð¸ Ð’Ð°'),
(2273, 'Jamesinend', 'leelupradhann5@gmail.com', '83664713248', 'Lome', 'google', '<a href=https://www.jackpotbetonline.com/>Online Casino</a> Guide, Online Casino Slots, Signup Bonus'),
(2274, 'LesliePlutt', 'trumdonado876@gmail.com', '85355524754', 'Raanana', 'google', 'Find latest news about Online Casinos, New Slots Games and latest <a href=https://www.allcasinogambl'),
(2275, 'DanielHof', 'z2rb@course-fitness.com', '84856119388', 'Montevideo', 'google', 'åœ‹è€ƒçŽ‹ \r\n \r\nhttps://man-r20.com/'),
(2276, 'Nar', 'naomisholtz7@gmail.com', '83255861512', 'Raduznyj', 'google', ' At last someone wrote something very important about such hot topic and it is very relevant nowaday'),
(2277, 'Samuelemida', 'ghlz6@course-fitness.com', '82463519899', 'Lianyungang', 'google', 'é»žå­æ•¸ä½ç§‘æŠ€æœ‰é™å…¬å¸ \r\n \r\nhttps://spot-digital.com.tw/'),
(2278, 'Kevin Johnson', 'tbformleads@gmail.com', '88455623193', 'New York', 'google', 'Hello \r\n \r\nDo you want to increase sales for your business 24/7? \r\n \r\nThen you might want to get an '),
(2279, 'RandalRax', 'nwzn@course-fitness.com', '87931975234', 'Praia', 'google', 'é›™æ³¢é•·äºžæ­·å±±å¤§é™¤æ¯›é›·å°„ - å…«åƒä»£ \r\n \r\n \r\nhttps://yachiyo.com.tw/alexandrite-laser/'),
(2280, 'KennethwhaFT', 'vpsr@course-fitness.com', '85246264749', 'Linguere', 'google', 'Game LIFE éŠæˆ²æƒ…å ± \r\n \r\n \r\nhttps://gamelife.tw/portal.php'),
(2281, 'DavidNom', 'l29bj@course-fitness.com', '87774379145', 'Stung Treng', 'google', 'æ°´å¾®æ™¶çŽ»å°¿é…¸ - å…«åƒä»£ \r\n \r\n \r\nhttps://yachiyo.com.tw/hyadermissmile-injection/'),
(2282, 'WilliedEk', 'lohikakieto@yandex..kz', '87882866449', 'Bottegone', 'google', '?????? ??????????! ?? ????????? ??????? ??????????! HTTPS://ANTIHYDRA.TOP'),
(2283, 'Williamnop', 'filimonov-nikita_6354@mail.ru', '87559612526', 'San Miguel de Tucuman', 'google', 'hydra onion \r\n \r\n<a href=https://Ð³Ð¸Ð´Ñ€Ð°-ÑÐ°Ð¹Ñ‚-Ð·ÐµÑ€ÐºÐ°Ð»Ð¾.com/>ÐºÐ°Ðº Ð·Ð°Ð¹Ñ‚Ð¸ Ð½Ð° Ð¾Ñ„'),
(2284, 'WilliedEk', 'lohikakieto@yandex..kz', '83443939573', 'Bottegone', 'google', 'Ð½Ðµ Ñ‚Ñ€Ð°Ñ‚ÑŒÑ‚Ðµ Ð·Ñ€Ñ Ð²Ñ€ÐµÐ¼Ñ Ð¸ Ð´ÐµÐ½ÑŒÐ³Ð¸  HTTPS://ANTIHYDRA.TOP Ð¡Ð¾Ð±Ð¸Ñ€Ð°ÐµÐ¼ ÐºÐ°Ñ‚'),
(2285, 'AnthonyBuT', 'support@fire-flower.ru', '88985681489', 'Krk', 'google', '<a href=https://fire-flower.ru/>ÐŸÐµÑ‡Ð¸ Ð´Ð»Ñ Ð´Ð¾Ð¼Ð°</a> \r\n<a href=https://fire-flower.ru/>http:'),
(2286, 'Stevengricy', 'ivanov.slava.1991590@mail.ru', '83531799816', 'Jutiapa', 'google', 'hydraclubbioknikokex7njhwuahc2l67lfiz7z36md2jvopda7nchid.onion \r\n \r\n<a href=https://hydraclubbioknik'),
(2287, 'ColtonspIfy', 'h1dtm@course-fitness.com', '88574718747', 'Riohacha', 'google', 'ç¬¬ä¸€å€ŸéŒ¢ç¶²-å€ŸéŒ¢,å°é¡å€Ÿæ¬¾,å°é¡å€ŸéŒ¢,è­‰ä»¶å€Ÿæ¬¾,è­‰ä»¶å€ŸéŒ¢,èº«åˆ†è­‰å€Ÿæ¬¾,èº«åˆ†è­‰'),
(2288, 'EverettSlell', 'glukhina.1998@mail.ru', '86963785919', 'Duverge', 'google', 'Ð˜Ñ‰Ð¸Ñ‚Ðµ Ð²Ñ‹Ð³Ð¾Ð´Ð½ÑƒÑŽ ÑÐºÑƒÐ¿ÐºÑƒ Ð² ÐœÐ¾ÑÐºÐ²Ðµ? \r\n \r\nÐ¡ÐºÑƒÐ¿Ð°ÐµÐ¼ Ñ‚Ð¾Ð²Ð°Ñ€Ñ‹ Ð¸ Ð±/Ñƒ '),
(2289, 'MRankerVeida', 'fiverrweb@masum.cc', '88993713181', '', 'google', 'WEB 2.0 are strong backlinks for its Domain Authority. I am providing High Domain Authority WEB 2 Co'),
(2290, 'StedateptenSoand', 'stedateyrphenCrasy@gmail.com', '89888264264', 'Banjul', 'google', 'can be frustrating because the websites tend to|\r\n \r\n \r\n \r\n<a href=https://sextutvused.blogspot.com>'),
(2291, 'Dustinruddy', 'yourmail@gmail.com', '81724851574', 'Nuwara Eliya', 'google', 'Esperio: Ñ‡ÐµÑÑ‚Ð½Ñ‹Ð¹ Ð¾Ð±Ð·Ð¾Ñ€ Ð½Ð° Ð½ÐµÑ‡ÐµÑÑ‚Ð½Ð¾Ð³Ð¾ Ð±Ñ€Ð¾ÐºÐµÑ€Ð° \r\nÐ¥Ð¾Ñ‚Ð¸Ñ‚Ðµ ÑÑ‚Ð°Ñ‚Ñ'),
(2292, 'MartinHob', 'ewga5}ewr11nedghil6j115}e@gmail.com', '83416382674', 'Pirassununga', 'google', 'What`s up \r\nI`ve got an expierence with theese guys  \r\n<a href=\"http://www.shibingtong.com/site.asp?'),
(2293, 'Marilynutent', 'zzz1alexzaid9159@gmail.com', '82547124156', 'Piran', 'google', 'Anybody home? \r\nI want to contact Admin. \r\n \r\nThank you :) \r\n \r\n<a href=https://peternakan.unwiku.ac'),
(2294, 'Camirible', 'mihai@topgamesreviews.com', '81917991445', 'Cotonou', 'google', 'Thousands of free online games are available at the touch of a button, waiting for you to explore an'),
(2295, 'NormanTOB', 'zinaida_dorokhova_94900@mail.ru', '84859249324', 'Sanaa', 'google', 'ÑÑÑ‹Ð»ÐºÐ° Ð½Ð° Ð³Ð¸Ð´Ñ€Ñƒ \r\n \r\n<a href=https://hydraclubbioknikokex7njhwuahc2l67lfiz7z36md2ivopda'),
(2296, 'Russelldot', 'tommythomason0@gmail.com', '81812423239', 'Albany', 'google', 'Find latest news about Online Casinos, New Slots Games and latest <a href=https://www.onlinecasinoga'),
(2297, 'Kellyinfed', 'elena-smirnova-198570@mail.ru', '87457438428', 'Wete', 'google', 'hydrarusawyg5ykmsgvnyhdumzeawp465jp7zhynyihexdv5p74etnid.onion \r\n \r\n<a href=https://hydraclubbioknik'),
(2298, 'Brucejounc', 'pastukhov.8brhl@mail.ru', '85933941681', 'Freising', 'google', 'ÐŸÑ€Ð¸Ð²ÐµÑ‚ÑÑ‚Ð²ÑƒÑŽ, Ð²Ñ‹ ÑÐºÐ¾Ñ€ÐµÐµ Ð²ÑÐµÐ³Ð¾ ÑƒÐ²ÐµÐ´Ð¾Ð¼Ð»ÐµÐ½Ñ‹ Ð¾ Ð±Ð¾ÐµÐ²Ñ‹Ñ… Ð´ÐµÐ¹ÑÑ‚'),
(2299, 'Christian Djurit', 'zummkke@icloud.com', '88396316335', 'London', 'google', 'We provide funding  through our venture company to both startups and existing businesses either look'),
(2300, 'EverettSlell', 'glukhina.1998@mail.ru', '85277584618', 'Duverge', 'google', 'Ð—Ð´Ð¾Ñ€Ð¾Ð²Ð¾Ðµ ÑÐ¾ÑÑ‚Ð¾ÑÐ½Ð¸Ðµ Ð·ÑƒÐ±Ð¾Ð² Ð¸ Ð´Ñ‘ÑÐµÐ½ â€“ Ð·Ð°Ð»Ð¾Ð³ Ð¸Ñ… ÐµÑÑ‚ÐµÑÑ‚Ð²ÐµÐ½Ð'),
(2301, 'RaymondEsOdy', 'johnsondesuza3@gmail.com', '83618666229', 'Molodesjnaja', 'google', 'Find latest news about Online Casinos, New Slots Games and latest <a href=https://www.topjackpotbetr'),
(2302, 'RaymondEsOdy', 'tabinasunlanaa7@gmail.com', '81519237772', 'Molodesjnaja', 'google', 'Find latest news about Online Casinos, New Slots Games and latest <a href=https://www.topjackpotbetr'),
(2303, 'HowardCoumb', '4l4iv@course-fitness.com', '87296843638', 'NEW AMSTERDAM', 'google', 'å¤ªé”æ•¸ä½åª’é«” \r\n \r\n \r\nhttps://deltamarketing.com.tw/'),
(2304, 'TysonRep', 'hidb3@course-fitness.com', '82226784165', 'Nuuk', 'google', 'unethostç„¡é™ç©ºé–“è™›æ“¬ä¸»æ©Ÿ æŠ€è¡“åˆ†äº«éƒ¨è½æ ¼ \r\n \r\nhttp://blog.unethost.com/'),
(2305, 'StedateptenSoand', 'stedateyrphenCrasy@gmail.com', '86338481863', 'Banjul', 'google', 'Weâ€™ve narrowed down the playing field|\r\n \r\n \r\n \r\n<a href=https://chatdecitasgratis.blogspot.com/>t'),
(2306, 'SamuelWralO', 'seismismheathery@rambler.ru', '88534146827', 'Hoskins', 'google', 'Ð£ÑÐ»ÑƒÐ³Ð¸ PhotoShop: \r\nÐÐ¸Ð·ÐºÐ¸Ðµ Ñ†ÐµÐ½Ñ‹ Ð¸ Ð²Ñ‹ÑÐ¾ÐºÐ¾Ðµ ÐºÐ°Ñ‡ÐµÑÑ‚Ð²Ð¾ Ð¸ÑÐ¿Ð¾Ð»Ð½ÐµÐ½Ð'),
(2307, 'jounc', 'mihailivanovichpop@mail.ru', '82755617512', 'Freising', 'google', 'ÐŸÑ€Ð¸Ñ‚Ð¾Ð¼Ð¸Ð» ÑÑ‚Ð¾Ñ‚ Ð±ÐµÑÐ¿Ñ€ÐµÐ´ÐµÐ» Ð’Ð»Ð°Ð´Ð¸Ð¼Ð¸Ñ€Ð° Ð’Ð»Ð°Ð´Ð¸Ð¼Ð¸Ñ€Ð¾Ð²Ð¸Ñ‡Ð° ÐŸÑƒÑ‚Ð¸Ð'),
(2308, 'MortonSuh', 'dianadesuzza@gmail.com', '84445658313', 'Taiping', 'google', 'Find latest news about Online Casinos, New Slots Games and latest <a href=https://www.topcasinotipsr'),
(2309, 'Williamnow', 'johnsondianna34@gmail.com', '81773279427', 'Nuwara Eliya', 'google', 'Find latest news about Online Casinos, New Slots Games and latest <a href=https://www.topgamblingtip'),
(2310, 'MathewReown', 'desuzzaremo@gmail.com', '81784849413', 'Maputo', 'google', 'At Jackpotbetgame.com you can find latest news about Online Casinos, New Slots Games and latest <a h'),
(2311, 'AndrewGus', 'swetlanadesuza@gmail.com', '88245917442', 'Mariupol', 'google', 'Find latest news about Online Casinos, New Slots Games and latest <a href=https://www.topjackpotbet.'),
(2312, 'CharlesVom', 'nidiathomason@gmail.com', '84598977314', 'Praia', 'google', 'Find latest news about Online Casinos, New Slots Games and latest <a href=https://www.onlinecasinosl'),
(2313, 'terriexw2', 'yo69@hiraku94.officemail.in.net', '86887915859', '', 'google', 'College Girls Porn Pics\r\nhttp://cyrilcoleporn.miaxxx.com/?yessenia \r\n\r\n c porns ben campisi ken 2 ga'),
(2314, 'KeithCooni', 'itqqzh@xrust.club', '87443663694', 'Monrovia', 'google', ''),
(2315, 'AlexNoill', 'egpresexe@lenta.ru', '81333423353', 'Bandar Seri Begawan', 'google', 'Ð˜Ð½ÑÑ‚Ñ€ÑƒÐºÑ†Ð¸Ñ Ð´Ð»Ñ Ñ€ÐµÐºÐ»Ð°Ð¼Ð½Ñ‹Ñ… email Ñ€Ð°ÑÑÑ‹Ð»Ð¾Ðº https://www.youtube.com/watch?'),
(2316, 'RobertTix', 'cannonmakeup06@aol.com', '82425381323', 'Algiers', 'google', 'Hello, \r\nYou can help Ukrainians right now! \r\n \r\nUkrainian Lives Matter! \r\n<a href=https://tinyurl.c'),
(2317, 'Edwardged', 'pohadietingg7@gmail.com', '82457948699', 'Lar', 'google', 'Find latest news about Online Casinos, New Slots Games and latest <a href=https://www.onlinecasinosl'),
(2318, 'Danieltot', 'sandralewoncka@wp.pl', '85231468346', 'Al Ladhiqiyah', 'google', 'DokÄ…d spotykaÄ‡ negatywy rÃ³wnieÅ¼ seriale online â€“ wyrÃ³Å¼niane sieci streamingowe \r\n \r\nFilmiki '),
(2319, 'Gilbertdromi', 'terexowa5986@mail.ru', '85735174561', 'Moscow', 'google', 'Ð Ð°ÑÐ¿Ñ€Ð¾Ð´Ð°Ð¶Ð° ÑÐºÐ»Ð°Ð´Ð°, Ð¿Ð¾ÑÐ»ÐµÐ´Ð½ÑÑ Ð¿Ð°Ñ€Ñ‚Ð¸Ñ Ð¿Ð¾ ÑÑ‚Ð°Ñ€Ð¾Ð¹ Ñ†ÐµÐ½Ðµ! \r\nÐ£Ñ'),
(2320, 'EverettSlell', 'glukhina.1998@mail.ru', '88516415445', 'Duverge', 'google', 'CÐ°Ð¹Ñ‚Ñ‹ Ð·Ð°Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ°  Ð² Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚Ðµ Ð±ÐµÐ· Ð²Ð»Ð¾Ð¶ÐµÐ½Ð¸Ð¹ \r\n \r\n \r\n \r\nÐ•ÑÐ»Ð¸ Ð’Ð°'),
(2321, 'Scottadvep', 'dobrininskoeru@gmail.com', '85242399922', 'Moscow', 'google', '<a href=http://maps.google.tl/url?q=http://dobrininskoe.ru/>Ð·Ð°Ð¼ÐµÐ½Ð° Ð¿Ð¾Ð´Ð¾ÑˆÐ²Ñ‹ Ð¾Ð±ÑƒÐ²Ð¸</'),
(2322, 'Jamesbom', 'sad1989@bk.ru', '88143373453', 'Rio Grande', 'google', 'Ð˜Ð©Ð£ Ð‘Ð ÐÐ¢Ð, Ð’ÐžÐ•ÐÐÐžÐ“Ðž â€“ Ð›Ð®Ð‘ÐÐ¯ Ð˜ÐÐ¤ÐžÐ ÐœÐÐ¦Ð˜Ð¯ Ð—Ð Ð’ÐžÐ—ÐÐÐ“Ð ÐÐ–Ð”Ð•Ð'),
(2323, 'Mike Warren\r\n', 'no-replykl@gmail.com', '86911446548', 'Willemstad', 'google', 'Howdy \r\n \r\nThis is Mike Warren\r\n \r\nLet me present you our latest research results from our constant '),
(2324, 'SusanDuche', 'traxibaxidvesobaki@gmail.com', '87451391438', 'Delmas', 'google', 'Do you want sex? Come in - https://cutt.ly/MAnk9dR'),
(2325, 'HowardCoumb', '4l4iv@course-fitness.com', '83664834425', 'NEW AMSTERDAM', 'google', 'å¤ªé”æ•¸ä½åª’é«” \r\n \r\n \r\nhttps://deltamarketing.com.tw/'),
(2326, 'Samuelemida', 'ghlz6@course-fitness.com', '87284146839', 'Lianyungang', 'google', 'é»žå­æ•¸ä½ç§‘æŠ€æœ‰é™å…¬å¸ \r\n \r\nhttps://spot-digital.com.tw/'),
(2327, 'TysonRep', 'hidb3@course-fitness.com', '87143947993', 'Nuuk', 'google', 'unethostç„¡é™ç©ºé–“è™›æ“¬ä¸»æ©Ÿ æŠ€è¡“åˆ†äº«éƒ¨è½æ ¼ \r\n \r\nhttp://blog.unethost.com/'),
(2328, 'Camirible', 'mihai@topgamesreviews.com', '81575392133', 'Cotonou', 'google', 'Thousands of free online games are available at the touch of a button, waiting for you to explore an'),
(2329, 'RichardAbige', 'yourmail@gmail.com', '83666318359', 'Freetown', 'google', 'TELETRADE \r\nÐ“Ð»Ð°Ð²Ð½Ð°Ñ  Ð ÐµÐ¹Ñ‚Ð¸Ð½Ð³ Ð¤Ð¾Ñ€ÐµÐºÑ Ð±Ñ€Ð¾ÐºÐµÑ€Ð¾Ð²  TeleTrade \r\nTeleTrade \r\nÐ˜'),
(2330, 'EverettSlell', 'filkina_2023@mail.ru', '87478316589', 'Duverge', 'google', 'CÐ°Ð¹Ñ‚Ñ‹ Ð·Ð°Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ°  Ð² Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚Ðµ Ð±ÐµÐ· Ð²Ð»Ð¾Ð¶ÐµÐ½Ð¸Ð¹ \r\n \r\n \r\n \r\nÐ•ÑÐ»Ð¸ Ð’Ð°'),
(2331, 'RandalRax', 'nwzn@course-fitness.com', '87653431262', 'Praia', 'google', 'é›™æ³¢é•·äºžæ­·å±±å¤§é™¤æ¯›é›·å°„ - å…«åƒä»£ \r\n \r\n \r\nhttps://yachiyo.com.tw/alexandrite-laser/'),
(2332, 'RusEroms', 'stir_91@mail.ru', '86999425523', 'Mosscow', 'google', 'Ð”Ð¾Ð±Ñ€Ð¾Ð³Ð¾ Ð²Ñ€ÐµÐ¼ÐµÐ½Ð¸ ÑÑƒÑ‚Ð¾Ðº, Ñ Ð›Ð¸Ð´Ð¸Ñ Ð£Ð³Ð¾Ð»ÑŒÐ½Ð¸ÐºÐ¾Ð²Ð° Ð’Ð¸ÐºÑ‚Ð¾Ñ€Ð¾Ð²Ð½Ð°,'),
(2333, 'DavidNom', 'l29bj@course-fitness.com', '87129555232', 'Stung Treng', 'google', 'æ°´å¾®æ™¶çŽ»å°¿é…¸ - å…«åƒä»£ \r\n \r\n \r\nhttps://yachiyo.com.tw/hyadermissmile-injection/'),
(2334, 'Anonymous Pharmacy', 'legitanonymousfada@gmail.com', '87184441132', 'Mosta', 'google', 'Buy GHB and GBL online - GHB (gamma hydroxybutyrate) for sale online \r\n4-mmc \r\n5-meo dmt \r\nTramadol '),
(2335, 'Paco  Martinez', 'martinezpaco625@gmail.com', '82771652329', 'Gliwice', 'google', 'I am  a solicitor at law. I am the personal attorney to the late Mrs. Anna  who used to work with Sh'),
(2336, 'SarahtGinge', 'bbobbum@gmail.com', '81552762726', 'Anahiem', 'google', ''),
(2337, 'Davidtag', 'davidNeift@emero-salon.online', '86367353878', 'Elvas', 'google', 'Itâ€™s time to be UKRAINIAN! Ask NATO to close the sky over Ukraine to prevent the world from the Th'),
(2338, 'vi3gh5arkiewax', 'vi2aytrgh6asontox@gmail.com', '85131291986', 'Cairo', 'google', 'methods \r\n \r\nyou \r\n \r\non \r\n \r\nto \r\n \r\nevent \r\n \r\nfind \r\n \r\n \r\n<a href=https://arethe10mg.blogspot.co'),
(2339, 'RusEroms', 'ogibalova.olesya@mail.ru', '83185518143', 'Mosscow', 'google', 'Ð’Ñ‹Ð´Ð°ÑŽÑ‰Ð¸Ð¼ÑÑ  Ð¿Ñ€Ð¾Ñ€Ð¾ÐºÐ¾Ð¼ ÑÐ¾ÑÑ‚Ð°Ð²Ð»ÐµÐ½ ÑÑƒÑ‚ÑŒ ÑÐµÐºÑ€ÐµÑ‚Ð½Ð¾Ð³Ð¾ Ð´Ð°Ð²Ð½ÐµÐ³'),
(2340, 'Forrestlathe', 'cl.emons.m.al.v.in9.0@gmail.com', '86118372537', 'Stirling', 'google', 'https://creditrepairmiami.xyz '),
(2341, 'EverettSlell', 'glukhina.1998@mail.ru', '81753991623', 'Duverge', 'google', 'CÐ°Ð¹Ñ‚Ñ‹ Ð·Ð°Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ°  Ð² Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚Ðµ Ð±ÐµÐ· Ð²Ð»Ð¾Ð¶ÐµÐ½Ð¸Ð¹ \r\n \r\n \r\n \r\nÐ•ÑÐ»Ð¸ Ð’Ð°'),
(2342, 'Philipliams', 'rt23dfvvv3@mega-22-confa.fun', '82688448789', 'NEW AMSTERDAM', 'google', ''),
(2343, 'Bricelaf', 'dorn8444@mail.ru', '84671496334', 'Lilongwe', 'google', '<a href=https://admin-kom.ru/>bitrix Ð¡ÐƒÐ Ñ•Ð Â·Ð Ò‘Ð Â°Ð Ð…Ð Ñ‘Ð Âµ Ð¡ÐƒÐ Â°Ð â„–Ð¡â€šÐ Â°</a> \r\n<'),
(2344, 'EverettSlell', 'glukhina.1998@mail.ru', '83796778673', 'Duverge', 'google', 'Ð±Ð°Ð·Ñ‹ Ð´Ð»Ñ Ñ…Ñ€ÑƒÐ¼ÐµÑ€Ð° Ð´Ð»Ñ Ð´Ð¾ÑÐ¾Ðº Ð¾Ð±ÑŠÑÐ²Ð»ÐµÐ½Ð¸Ð¹ \r\nÐ’Ñ‹ Ð·Ð°Ð½Ð¸Ð¼Ð°ÐµÑ‚ÐµÑÑŒ '),
(2345, 'vi3gh5arkiewax', 'vi2aytrgh6asontox@gmail.com', '89932685868', 'Cairo', 'google', 'the \r\n \r\nFrom \r\n \r\nenvelopes, \r\n \r\nmake \r\n \r\nto \r\n \r\nor \r\n \r\n \r\n{<a href=https://arethe10mg.blogspot'),
(2346, 'RandallSpown', 'drlorenzakihn@gmail.com', '86929666421', 'Kwekwe', 'google', 'Descriptive statistics mainly focus on the central tendency, variability, and also distribution of s'),
(2347, 'pentelAddic', 'istonlavernascha@gmail.com', '87689661143', 'Yako', 'google', 'I share with you professional website promotion services. The best price, the work is done within a '),
(2348, 'JamesGlago', 'bryanhammond6681@gmail.com', '89624465373', 'Madagascar', 'google', 'Ð’Ð¾ ÑÐ¿Ð¾Ñ…Ð° Ð¶Ð¸Ð·Ð½Ð¸ Ð² Ð¼Ð½Ð¾Ð³Ð¾ÐºÐ²Ð°Ñ€Ñ‚Ð¸Ñ€Ð½Ð¾Ð¼ Ñ‚Ð°ÑƒÐ½Ñ…Ð°ÑƒÑÐµ Ð½Ð°Ð¼ Ð¿Ñ€ÐµÐ´Ð¿Ð¾Ð');
INSERT INTO `bulk_contact` (`contact_id`, `name`, `email`, `mobile`, `address`, `school_name`, `nature_requirment`) VALUES
(2349, 'Bricelaf', 'info@mebeldinastiya.ru', '81895899657', 'Lilongwe', 'google', '<a href=https://mebeldinastiya.ru/>Ð¼ÐµÐ±ÐµÐ»ÑŒ Ð´Ð»Ñ ÐºÑƒÑ…Ð½Ð¸ Ð² ÑÑ‚Ð¸Ð»Ðµ Ð¿Ñ€Ð¾Ð²Ð°Ð½Ñ</a> \r'),
(2350, 'Christian Djurit', 'zummkke@icloud.com', '89361614893', 'London', 'google', 'We provide funding  through our venture company to both startups and existing businesses either look'),
(2351, 'Stephennaism', 'fevgen708@gmail.com', '83789312952', 'Elvas', 'google', 'Our gadgets are comfortable, https://project-br.com/ new, stylish and adapt to trends like chameleon'),
(2352, 'Scottadvep', 'dobrininskoeru@gmail.com', '86479618775', 'Moscow', 'google', '<a href=http://maps.google.cz/url?q=http://dobrininskoe.ru/>Ð¾Ð±ÑƒÐ²Ð½Ð°Ñ Ð¼Ð°ÑÑ‚ÐµÑ€ÑÐºÐ°Ñ Ñ€Ñ'),
(2353, 'MRankerVeida', 'fiverrweb@masum.cc', '82792339129', '', 'google', 'WEB 2.0 are strong backlinks for its Domain Authority. I am providing High Domain Authority WEB 2 Co'),
(2354, 'Jamesenave', 'dograthomason@gmail.com', '83243677655', 'Hesperange', 'google', 'What is the best way to bet on Football? \r\n \r\n<a href=https://www.jackpotbetonline.com/>Sports betti'),
(2355, 'JamesVot', 'yourmail@gmail.com', '81912338528', 'Arcatao', 'google', ''),
(2356, 'SEOtoumb', 'nazarcuksvetlana24@gmail.com', '87437278491', '', 'google', 'Hello. Is your site not profitable? I will do a completely FREE SEO AUDIT for you. Text me +7 917 62'),
(2357, 'hydratig', 'bubar43.dermatitis@gmail.com', '82312217872', 'http://hydraclubbioknikokex7njhwuahc2l67lfiz7z36md2jvopda7nchid.onion/', 'google', '<a href=https://hydraruzxpnew4af.hydraruzxpnew4fa.co>Ð¡ÑÑ‹Ð»ÐºÐ° Ð½Ð° Ð³Ð¸Ð´Ñ€Ñƒ hydraruzxpnew4af h'),
(2358, 'ColtonspIfy', 'h1dtm@course-fitness.com', '81884914849', 'Riohacha', 'google', 'ç¬¬ä¸€å€ŸéŒ¢ç¶²-å€ŸéŒ¢,å°é¡å€Ÿæ¬¾,å°é¡å€ŸéŒ¢,è­‰ä»¶å€Ÿæ¬¾,è­‰ä»¶å€ŸéŒ¢,èº«åˆ†è­‰å€Ÿæ¬¾,èº«åˆ†è­‰'),
(2359, 'JimmyScure', 'seiexkryma@rambler.ru', '89613667478', 'Madagascar', 'google', 'Hello, my good friend! \r\n \r\nHope youâ€™re doing well... \r\n \r\nIâ€™ve looked at your site: I saw diffe'),
(2360, 'ÐŸÐµÑ‡Ð°Ñ‚Ð¸', 'pechativ.krasnodare@mail.ru', '88267642218', 'Ð§ÐµÐ»ÑÐ±Ð¸Ð½ÑÐº', 'google', 'Ð˜Ð·Ð³Ð¾Ñ‚Ð¾Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿ÐµÑ‡Ð°Ñ‚ÐµÐ¹ Ð¸ ÑˆÑ‚Ð°Ð¼Ð¿Ð¾Ð² Ð² ÐºÐ¾Ñ€Ð¾Ñ‚ÐºÐ¸Ðµ ÑÑ€Ð¾ÐºÐ¸ \r\nalfa-pech'),
(2361, 'tcsindustryg', 'lsenfy@gmail.com', '84898439712', 'Fresno', 'google', '<a href=https://www.tcspharmaceuticals.com/pro/Cidofovir_113852-37-2_for_cream_usage_injection_struc'),
(2362, 'Kevin Johnson', 'tbformleads@gmail.com', '85711888993', 'Boston', 'google', 'Hello \r\nDo you want to increase sales for your business 24/7? \r\nThen you might want to get an Animat'),
(2363, 'Robertanamp', 'socolive1234@gmail.com', '89383318725', 'Cotonou', 'google', 'NhÆ°ng báº¡n chÆ°a hiá»ƒu soi kÃ¨o bÃ³ng Ä‘Ã¡ lÃ  gÃ¬, CÃ³ pháº¡m phÃ¡p khÃ´ng, váº­y báº¡n hÃ£y tha'),
(2364, 'RUSSIANjounc', 'maricza.veselova@mail.ru', '82864961882', '', 'google', 'Ð ÑšÐ Ñ•Ð â„– Ð Ñ—Ð Â°Ð Ñ—Ð Â° Ð¿Ð¾Ð·Ð°Ð²Ñ‡ÐµÑ€Ð° Ð²ÐµÑ‡ÐµÑ€Ð¾Ð¼ Ð¿Ð¾ÐµÑ…Ð°Ð» Ð½Ð° Ð¿Ð¾ÐµÐ·Ð´Ðµ Ð´Ð¾'),
(2365, 'Mike Philips\r\n', 'no-replykl@gmail.com', '87289753245', 'Boston', 'google', 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your website? \r\nHaving a high DA scor'),
(2366, 'JamesEcona', '7wn@course-fitness.com', '89295359118', 'Burnt Pine', 'google', 'å¤ªé”æ•¸ä½åª’é«” \r\n \r\n \r\nhttps://deltamarketing.com.tw/'),
(2367, 'WilliamApalm', 'yourmail@gmail.com', '86965862194', 'La Primavera', 'google', 'Ð’Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ! \r\n \r\nÐ’ ÑÐ²ÑÐ·Ð¸ Ñ Ð±Ð¾Ð»ÑŒÑˆÐ¸Ð¼ ÐºÐ¾Ð»Ð¸Ñ‡ÐµÑÑ‚Ð²Ð¾Ð¼ Ð½ÐµÐ³Ð°Ñ‚Ð¸Ð²Ð½Ñ‹Ñ… Ð'),
(2368, 'KristaEroms', 'molochnikveselyybil@inbox.ru', '83251426777', 'Mosscow', 'google', 'ÐšÐ¾Ð³Ð´Ð° ÑƒÐ²Ð¸Ð´ÐµÐ» Ð´ÑƒÐ¼Ð°Ð» Ñ„ÐµÐ¹Ðº, Ð¾Ð´Ð½Ð°ÐºÐ¾ Ð¼Ð½Ðµ Ð¿Ð¾ÑÐ»Ð°Ð»Ð¸ ÐºÑ€ÐµÐ´Ð¸Ñ‚ÐºÑƒ Ð² '),
(2369, 'KeithCooni', 'iyuuqx@xrust.club', '87751818247', 'Monrovia', 'google', ''),
(2370, 'Davidtag', 'davidNeift@emero-salon.online', '82766991749', 'Elvas', 'google', '<img src=\"https://www.aljazeera.com/wp-content/uploads/2022/03/2014-12-03T000000Z_1175750595_GM1EAC3'),
(2371, 'Mike Mason\r\n', 'no-replykl@gmail.com', '83388144869', 'Albany', 'google', 'Hi there \r\n \r\nWe will enhance your Local Ranks organically and safely, using only whitehat methods, '),
(2372, 'Marvinsek', 'pantelyushinamarina94@yangoogl.cc', '89994372836', 'Porsgrunn', 'google', 'Ð“Ð¸Ð´Ñ€Ð° onion \r\n<a href=https://hydraclubbioknikokex7njhwuahc2l67lfiz7z36md2jvopda7nchid.onion-da'),
(2373, 'HowardDetty', 'oboldueva.rozochka@yangoogl.cc', '81625734137', 'Bereeda', 'google', 'ÑÑÑ‹Ð»ÐºÐ° Ð½Ð° Ð³Ð¸Ð´Ñ€Ñƒ \r\n<a href=https://hydraclubbioknikokex7njhwuahc2l67fiz7z36md2jvopda7hyd'),
(2374, 'StevenCem', 'birewa.natali@yangoogl.cc', '82451528828', 'Lar', 'google', 'ÐœÐ°Ð³Ð°Ð·Ð¸Ð½ Ð“Ð¸Ð´Ñ€Ð° \r\n<a href=https://onion.hydraclubbioknikokex7njhwuahc2l67lfiz7z36md2jvopda'),
(2375, 'DonaldSok', 'soroginalyuda@yangoogl.cc', '86361338992', 'Kaohsiung Municipality', 'google', 'hydra onion \r\n \r\n<a href=https://hydraclubbioknikokex7njhwuahc2l67lfiz7z36md2jvopda7nchid.darknet-on'),
(2376, 'BrianTuh', 'bodrenkovanina75@yangoogl.cc', '81922526821', 'Ligatne', 'google', 'ÐœÐ°Ð³Ð°Ð·Ð¸Ð½ Ð“Ð¸Ð´Ñ€Ð° \r\n<a href=https://hydraclubbioknikokex7njhwuahc2l67lfiz7z36md2jvopda7nchid'),
(2377, 'Richardenvip', 'mara.zhoxova@yangoogl.cc', '89776169185', 'Doha', 'google', 'Ð“Ð¸Ð´Ñ€Ð° Ð² Ñ‚Ð¾Ñ€ Ð±Ñ€Ð°ÑƒÐ·ÐµÑ€ \r\n<a href=https://hydraclubbioknikokex7njhwuahc2l67fiz7z36md2jvo'),
(2378, 'JosephArofe', 'iramagamedagaeva@yangoogl.cc', '87836629529', 'Lilongwe', 'google', 'hydraruzxpnew4af \r\n<a href=https://hydraclubbioknikokex7njhwuahc2l67fiz7z36md2jvopda7hydra-onion.com'),
(2379, 'pentelAddic', 'istonlavernascha@gmail.com', '85539294878', 'Yako', 'google', 'I share with you professional website promotion services. The best price, the work is done within a '),
(2380, 'M106comtok', 'buylinks@m106.com', '81448736626', 'KoÅ‚obrzeg', 'google', ''),
(2381, 'RandallLic', 'ravvinovailona@yangoogl.cc', '84823253959', 'Porsgrunn', 'google', 'hidraruzxpnew4af.onion \r\n<a href=https://hydraclubbioknikokex7njhwuahc2l67fiz7z36md2jvopda7hydra-oni'),
(2382, 'Bricelaf', 'ifeder11@mail.ru', '88439423392', 'Lilongwe', 'google', '<a href=https://admin-kom.ru/>Ð Ñ”Ð¡Ñ“Ð Ñ—Ð Ñ‘Ð¡â€šÐ¡ÐŠ Ð¡ÐƒÐ Â°Ð â„–Ð¡â€š Ð Ð…Ð Â° Ð Â±Ð Ñ‘Ð¡â€šÐ¡Ð'),
(2383, 'Stephennaism', 'fevgen708@gmail.com', '83311766766', 'Elvas', 'google', 'You no longer need to adapt to gadgets https://project-br.com/ No need to think about what bag, shoe'),
(2384, 'Barrypat', 'oleggsw@gmail.com', '88847671938', 'Muscat', 'google', '<a href=https://stiralkarem.ru/>Ñ€ÐµÐ¼Ð¾Ð½Ñ‚ ÑÑ‚Ð¸Ñ€Ð°Ð»ÑŒÐ½Ñ‹Ñ… Ð¼Ð°ÑˆÐ¸Ð½ Ð½Ð° Ð´Ð¾Ð¼Ñƒ Ð² ÐœÐ¾Ñ'),
(2385, 'RobertItags', 'fdtgededr@outlook.com', '82281416411', 'Tamana', 'google', ''),
(2386, 'LeondllAddic', 'istonlavernascha@gmail.com', '85473313812', 'Yako', 'google', 'Good afternoon. I am giving you free coupons to buy with a 60% discount the best program for website'),
(2387, 'ÐŸÐµÑ‡Ð°Ñ‚Ð¸', 'pechativ.krasnodare@mail.ru', '85685685796', 'Ð§ÐµÐ»ÑÐ±Ð¸Ð½ÑÐº', 'google', 'Ð˜Ð·Ð³Ð¾Ñ‚Ð¾Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿ÐµÑ‡Ð°Ñ‚ÐµÐ¹ Ð¸ ÑˆÑ‚Ð°Ð¼Ð¿Ð¾Ð² Ð² ÐºÐ¾Ñ€Ð¾Ñ‚ÐºÐ¸Ðµ ÑÑ€Ð¾ÐºÐ¸ \r\nalfa-pech'),
(2388, 'RandalRax', 'nwzn@course-fitness.com', '88611588895', 'Praia', 'google', 'é›™æ³¢é•·äºžæ­·å±±å¤§é™¤æ¯›é›·å°„ - å…«åƒä»£ \r\n \r\n \r\nhttps://yachiyo.com.tw/alexandrite-laser/'),
(2389, 'EverettSlell', 'filkina_2023@mail.ru', '83393797454', 'Duverge', 'google', 'CÐ°Ð¹Ñ‚Ñ‹ Ð·Ð°Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ°  Ð² Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚Ðµ Ð±ÐµÐ· Ð²Ð»Ð¾Ð¶ÐµÐ½Ð¸Ð¹ \r\n \r\n \r\n \r\nÐ•ÑÐ»Ð¸ Ð’Ð°'),
(2390, 'Davidar', 'casinoonlain1@gmail.com', '86792855132', 'Jutiapa', 'google', 'Ð°Ð²Ð°Ð½Ñ‚Ð°Ð¶Ð½Ð¾:<a href=http://boosty.to/casinoonline>ÐºÐ°Ð·Ð¸Ð½Ð¾ Ð¿Ð¸Ð½</a> \r\n \r\nÐ³Ð»ÑÐ´Ð¸: <a'),
(2391, 'Mike Harris\r\n', 'no-replykl@gmail.com', '86283545137', 'Kaohsiung Municipality', 'google', 'Hello \r\n \r\nI have just analyzed  schooloo.com for the ranking keywords and saw that your website cou'),
(2392, 'vi3gh5arkiewax', 'vi2aytrgh6asontox@gmail.com', '88569181121', 'Cairo', 'google', 'saving \r\n \r\nit \r\n \r\nviagra \r\n \r\na \r\n \r\nwill \r\n \r\nsupport \r\n \r\n \r\n<a href=https://arethe10mg.blogspot'),
(2393, 'aniutinairr', 'aniutinairr@yandex.ru', '87524195581', 'Colonel Hill', 'google', 'ÐžÑ€Ð¸Ð¾Ð½ 128, Ð·Ð°Ð¼ÐµÐ½Ð° Ð¿Ñ€Ð¾Ñ†ÐµÑÑÐ¾Ñ€Ð° ÐºÑ€580Ð²Ð¼85Ð° Ð½Ð° Ð¸Ð¼1821Ð²Ð¼85 <a href=http:/'),
(2394, 'DanielHof', 'z2rb@course-fitness.com', '82592958524', 'Montevideo', 'google', 'åœ‹è€ƒçŽ‹ \r\n \r\nhttps://man-r20.com/'),
(2395, 'LerÐ°jus', 'leramihalovna91@gmail.com', '84187977899', 'Mariupol', 'google', 'Hi! I am in Ukraine, we have a terrible war going on and I am asking for your help with tears in my '),
(2396, 'bazhang', 'lyhungvan46662@gmail.com', '85923448654', 'us', 'google', ''),
(2397, 'Larrytor', 'miguel2005jr@gmail.com\r\n', '81295237353', 'Raduznyj', 'google', 'Manage to earn more than $ 10,000. You can also purchase wallets through exchanges on the Internet. '),
(2398, 'Login3123', 'ilya.grumkov@list.ru', '86289351834', '', 'google', ' \r\n ÐŸÐ¾ÑÑ‚ÑƒÐ¿Ð¸Ð»Ð° Ð²Ñ‹Ð¿Ð»Ð°Ñ‚Ð° Ð½Ð° ÑÑƒÐ¼Ð¼Ñƒ: +3 417.00 Ñ€  \r\n \r\nÐŸÐ¾Ð´Ñ€Ð¾Ð±Ð½ÐµÐµ Ð¿Ð¾ Ñ'),
(2399, 'JesseKag', 'dax7d@course-fitness.com', '87888198841', 'Santa Rosa', 'google', 'æ­å®¢ä½¬ç²¾å“å’–å•¡ï½œè¾²å ´ç›´ç‡Ÿï½œç”¢éŠ·åˆä¸€ï½œå“é …æœ€å¤š \r\n \r\nhttps://shopee.tw/ken668999'),
(2400, 'KristaEroms', 'fanya.bagaeva.89@mail.ru', '83897966894', 'Mosscow', 'google', 'ÐšÐ¾Ð³Ð´Ð° ÑƒÐ²Ð¸Ð´ÐµÐ»Ð° Ð´ÑƒÐ¼Ð°Ð» Ñ„ÐµÐ¹Ðº, Ð¾Ð´Ð½Ð°ÐºÐ¾ Ð¼Ð½Ðµ Ð¿Ð¾ÑÐ»Ð°Ð»Ð¸ ÐºÑ€ÐµÐ´Ð¸Ñ‚Ð½ÑƒÑŽ'),
(2401, 'RusEroms', 'ogibalova.olesya@mail.ru', '81442318169', 'Mosscow', 'google', 'Ð’Ñ‹Ð´Ð°ÑŽÑ‰Ð¸Ð¼ÑÑ  ÑÑÐ½Ð¾Ð²Ð¸Ð´ÑÑ‰Ð¸Ð¼ Ð±Ñ‹Ð» ÑÐ¾ÑÑ‚Ð°Ð²Ð»ÐµÐ½ ÑÑƒÑ‚ÑŒ Ð´Ð°Ð²Ð½ÐµÐ³Ð¾ Ð¿Ñ€Ð'),
(2402, 'ElenaGek', 'remi1.bisinotto1@gmail.com', '89155649621', 'Kyiv', 'google', 'Install the application and enjoy life: https://2track.info/gdQJ'),
(2403, 'Ð¿ÐµÑ‡Ð°Ñ‚Ð¸Ð²ÐºÑ€Ð°ÑÐ½Ð¾Ð´Ð°Ñ€Ðµ', 'nakleykiv.krasnodare@mail.ru', '83135419583', '', 'google', 'Ð˜Ð·Ð³Ð¾Ñ‚Ð¾Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿ÐµÑ‡Ð°Ñ‚ÐµÐ¹ Ð¸ ÑˆÑ‚Ð°Ð¼Ð¿Ð¾Ð² \r\n<a href=https://Ð¿ÐµÑ‡Ð°Ñ‚Ð¸Ð²ÐºÑ€Ð°ÑÐ½'),
(2404, 'Raymvfrrtondhof', 'raymvfrrtondskaks', '88733559633', 'Carthage', 'google', 'Lea la Guia del medicamento proporcionada por su farmaceutico antes de comenzar a usar amiodarona y '),
(2405, 'HarryRhync', 'l.e.n.aw.etzel694@gmail.com', '83444156188', 'Cotonou', 'google', 'https://creditrepairhouston.org '),
(2406, 'bazhang', 'lyhungvan46662@gmail.com', '88742565374', 'us', 'google', 'sosomod has collected a large number of cracked version games, such as unlimited gold coins version,'),
(2407, 'Josephdak', 'manjims77664@yahoo.com', '83135278489', 'Yanahuara', 'google', '\r\n\r\nHello\r\n\r\nIt is a reality of life that you will suddenly die one day and possibly soon. So you ha'),
(2408, 'Samuelemida', 'ghlz6@course-fitness.com', '84245819295', 'Lianyungang', 'google', 'é»žå­æ•¸ä½ç§‘æŠ€æœ‰é™å…¬å¸ \r\n \r\nhttps://spot-digital.com.tw/'),
(2409, 'WilliamApalm', 'yourmail@gmail.com', '83639539999', 'La Primavera', 'google', 'Ð’Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ! \r\n \r\nÐ’ ÑÐ²ÑÐ·Ð¸ Ñ Ð±Ð¾Ð»ÑŒÑˆÐ¸Ð¼ ÐºÐ¾Ð»Ð¸Ñ‡ÐµÑÑ‚Ð²Ð¾Ð¼ Ð½ÐµÐ³Ð°Ñ‚Ð¸Ð²Ð½Ñ‹Ñ… Ð'),
(2410, 'obertbum', 'replica.uhren@yandex.ru', '83934722927', 'Stirling', 'google', 'Top Replica Uhren legal in Deutschland kaufen. Nur die besten Marken, nur die beste Qualitat. Schnel'),
(2411, 'KennethwhaFT', 'vpsr@course-fitness.com', '89484846324', 'Linguere', 'google', 'Game LIFE éŠæˆ²æƒ…å ± \r\n \r\n \r\nhttps://gamelife.tw/portal.php'),
(2412, 'Eugeneshupe', 'uvtr@course-fitness.com', '86327419664', 'San Vicente De Tagua Tagua', 'google', 'æ­å®¢ä½¬ç²¾å“å’–å•¡ ï½œOKLAO COFFEEï½œè¦çš®å•†åŸŽï½œå’–å•¡è±†ï½œæŽ›è€³ï½œç²¾å“å’–å•¡ï½œå’–å•¡ç¦®'),
(2413, 'HenryNIC', 'ruben_vd_vaart@hotmail.com', '89037389942', 'Moscow', 'google', 'Money, money! Make more money with financial robot! \r\nLink - https://sites.google.com/view/daftl'),
(2414, 'CaaseyViorm', 'arturignatartur@gmail.com', '86921556323', 'Nis', 'google', 'ÐžÑ„Ð¸Ñ†Ð¸Ð°Ð»ÑŒÐ½Ñ‹Ð¹ ÑÐ°Ð¹Ñ‚ ÐºÐ°Ð·Ð¸Ð½Ð¾ Ð’Ð°Ð²Ð°Ð´Ð° ÐºÐ°Ð·Ð¸Ð½Ð¾ Ð¿Ñ€Ð¸Ð½Ð°Ð´Ð»ÐµÐ¶Ð¸Ñ‚ ÑˆÐ²Ðµ'),
(2415, 'Josephasymn', 'asdgfdty1234l@gmail.com', '88412996434', 'Montevideo', 'google', 'Lá»‹ch Trá»±c Tiáº¿p BÃ³ng ÄÃ¡ Cuá»‘i Tuáº§n Tá»« NgÃ y 27 Ngoáº¡i Háº¡ng Anh 2022 <a href=\"https:/'),
(2416, 'EverettSlell', 'filkina_2023@mail.ru', '83215372493', 'Duverge', 'google', 'CÐ°Ð¹Ñ‚Ñ‹ Ð·Ð°Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ°  Ð² Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚Ðµ Ð±ÐµÐ· Ð²Ð»Ð¾Ð¶ÐµÐ½Ð¸Ð¹ \r\n \r\n \r\n \r\nÐ•ÑÐ»Ð¸ Ð’Ð°'),
(2417, 'HenryNIC', 'zack0zack@hotmail.com', '89033550083', 'Moscow', 'google', 'The financial Robot works for you even when you sleep. \r\nTelegram - @Crypto2022toolbot'),
(2418, 'EverettSlell', 'filkina_2023@mail.ru', '82596462556', 'Duverge', 'google', 'CÐ°Ð¹Ñ‚Ñ‹ Ð·Ð°Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ°  Ð² Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚Ðµ Ð±ÐµÐ· Ð²Ð»Ð¾Ð¶ÐµÐ½Ð¸Ð¹ \r\n \r\n \r\n \r\nÐ•ÑÐ»Ð¸ Ð’Ð°'),
(2419, 'OpenbulletcIc', 'carbonzfiber@gmx.com', '88236554484', 'San Miguel de Tucuman', 'google', ''),
(2420, 'MichaelHaili', 'samwoodcmellen96778@yahoo.com', '84794218698', 'Juuka', 'google', '\r\n\r\nHello\r\n\r\nHire a freelancer from India at https://www.usefreelancer.com and save\r\n\r\nhttp://UseFre'),
(2421, 'Anthonyladay', 'posrtorf@rambler.ru', '82352183954', 'Raanana', 'google', 'ÐÐ²Ñ‚Ð¾Ð½Ð¾Ð²Ð¾ÑÑ‚Ð¸ Ð½Ð° Avtodomen.ru: Ð²ÑÑ‘ Ð¾ Ð¼Ð°ÑˆÐ¸Ð½Ð°Ñ… Ð¸ Ð°Ð²Ñ‚Ð¾Ñ€Ñ‹Ð½ÐºÐµ â€” Ð˜Ð½Ñ‚Ð'),
(2422, 'Mike Farrell\r\n', 'no-replykl@gmail.com', '88543497466', 'Boston', 'google', 'Hello \r\n \r\nWe all know the importance that dofollow link have on any website`s ranks. \r\nHaving most '),
(2423, 'morequdleyfus', 'more4udleyAdala@gmail.com', '81951355389', 'Virbalis', 'google', 'my manager \r\nknown region \r\n<a href=https://quduck.blogspot.com>more</a>'),
(2424, 'EverettSlell', 'filkina_2023@mail.ru', '84398423466', 'Duverge', 'google', 'CÐ°Ð¹Ñ‚Ñ‹ Ð·Ð°Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ°  Ð² Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚Ðµ Ð±ÐµÐ· Ð²Ð»Ð¾Ð¶ÐµÐ½Ð¸Ð¹ \r\n \r\n \r\n \r\nÐ•ÑÐ»Ð¸ Ð’Ð°'),
(2425, 'EverettSlell', 'filkina_2023@mail.ru', '82587574672', 'Duverge', 'google', 'CÐ°Ð¹Ñ‚Ñ‹ Ð·Ð°Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ°  Ð² Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚Ðµ Ð±ÐµÐ· Ð²Ð»Ð¾Ð¶ÐµÐ½Ð¸Ð¹ \r\n \r\n \r\n \r\nÐ•ÑÐ»Ð¸ Ð’Ð°'),
(2426, 'EverettSlell', 'filkina_2023@mail.ru', '88628194832', 'Duverge', 'google', 'CÐ°Ð¹Ñ‚Ñ‹ Ð·Ð°Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ°  Ð² Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚Ðµ Ð±ÐµÐ· Ð²Ð»Ð¾Ð¶ÐµÐ½Ð¸Ð¹ \r\n \r\n \r\n \r\nÐ•ÑÐ»Ð¸ Ð’Ð°'),
(2427, 'igorkludkinn', 'igorkludkinn@yandex.ru', '86448115376', 'Kwekwe', 'google', 'ÐŸÑ€Ð°ÐºÑ‚Ð¸Ñ‡ÐµÑÐºÐ¸Ðµ ÑÑ…ÐµÐ¼Ñ‹ Ñ€Ð°Ð´Ð¸Ð¾Ð¿Ð¾Ð´ÐµÐ»Ð¾Ðº Ð´Ð»Ñ Ð´ÐµÑ‚ÐµÐ¹ Ð¸ Ñ€Ð°Ð´Ð¸Ð¾ÐºÑ€ÑƒÐ¶'),
(2428, 'EverettSlell', 'filkina_2023@mail.ru', '87213319322', 'Duverge', 'google', 'CÐ°Ð¹Ñ‚Ñ‹ Ð·Ð°Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ°  Ð² Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚Ðµ Ð±ÐµÐ· Ð²Ð»Ð¾Ð¶ÐµÐ½Ð¸Ð¹ \r\n \r\n \r\n \r\nÐ•ÑÐ»Ð¸ Ð’Ð°'),
(2429, 'EverettSlell', 'filkina_2023@mail.ru', '85411812898', 'Duverge', 'google', 'CÐ°Ð¹Ñ‚Ñ‹ Ð·Ð°Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ°  Ð² Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚Ðµ Ð±ÐµÐ· Ð²Ð»Ð¾Ð¶ÐµÐ½Ð¸Ð¹ \r\n \r\n \r\n \r\nÐ•ÑÐ»Ð¸ Ð’Ð°'),
(2430, 'PhilipSkalp', 'pochta@re-waste.ru', '86388319531', 'Kakamega', 'google', '<a href=https://evakuator-vyzvat.ru/>Ð²Ñ‹Ð·Ð²Ð°Ñ‚ÑŒ ÑÐ²Ð°ÐºÑƒÐ°Ñ‚Ð¾Ñ€</a> \r\n<a href=https://Evakuat'),
(2431, 'Kevin Johnson', 'tbformleads@gmail.com', '84377883695', 'Bottegone', 'google', 'Hello \r\n \r\nDo you want to increase sales for your business 24/7? \r\n \r\nThen you might want to get an '),
(2432, 'Vasuatsimilt', 'ivanov_vladimir_41482@mail.ru', '85898218843', 'Kiev', 'google', '<b>Support Ukrainian Army</b> \r\nSpecial fundraising account at the National Bank of Ukraine to suppo'),
(2433, 'Edwardged', 'johnsondianna34@gmail.com', '87978582766', 'Lar', 'google', 'Find latest news about <a href=https://www.onlinecasinoslotstips.com>Online Casino</a>, New Slots Ga'),
(2434, 'Victorslile', 'kuzovlevavarv@yandex.ru', '86748443514', 'Orange Walk', 'google', ' \r\n'),
(2435, 'EverettSlell', 'filkina_2023@mail.ru', '88931187222', 'Duverge', 'google', 'CÐ°Ð¹Ñ‚Ñ‹ Ð·Ð°Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ°  Ð² Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚Ðµ Ð±ÐµÐ· Ð²Ð»Ð¾Ð¶ÐµÐ½Ð¸Ð¹ \r\n \r\n \r\n \r\nÐ•ÑÐ»Ð¸ Ð’Ð°'),
(2436, 'BruceOxito', 'swetlanaahuzaa14@gmail.com', '86888932786', 'La Primavera', 'google', 'Online Casino Guide, <a href=https://www.jackpotbetonline.com/>Online Casino</a> Slots, Signup Bonus'),
(2437, 'AntclexhonyItath', 'antclexhonyNaity@gmail.com', '83547873542', 'Aarschot', 'google', 'o \r\nopre?te \r\ndintre \r\n \r\n \r\n<a href=https://clexpre.blogspot.com/>Clexane 0.4</a>|\r\n'),
(2438, 'Edwardged', 'daynaheden09@gmail.com', '81247736432', 'Lar', 'google', 'Find latest news about Online Casinos, New Slots Games and latest <a href=https://www.jackpotbetonli'),
(2439, 'EverettSlell', 'filkina_2023@mail.ru', '89881851642', 'Duverge', 'google', 'CÐ°Ð¹Ñ‚Ñ‹ Ð·Ð°Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ°  Ð² Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚Ðµ Ð±ÐµÐ· Ð²Ð»Ð¾Ð¶ÐµÐ½Ð¸Ð¹ \r\n \r\n \r\n \r\nÐ•ÑÐ»Ð¸ Ð’Ð°'),
(2440, 'catRor', 'i5si5@yandex.ru', '82812617999', 'Toledo', 'google', 'ÑÐ¾Ð·Ð´Ð°Ð½Ð¸Ðµ ÑÐ°Ð¹Ñ‚Ð¾Ð² Ð² ÑÐ¾Ñ‡Ð¸  <a href=https://XN----8SBGJWVKMKHF3B.XN--P1AI>ÑÐ¾Ð·Ð´Ð°Ð'),
(2441, 'Jamesinend', 'rhehanathomason@gmail.com', '89326549237', 'Lome', 'google', '<a href=https://www.jackpotbetonline.com/>Online Casino</a> Guide, Online Casino Slots, Signup Bonus'),
(2442, 'WilliamApalm', 'yourmail@gmail.com', '83191525445', 'La Primavera', 'google', 'Ð’Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ! \r\n \r\nÐ’ ÑÐ²ÑÐ·Ð¸ Ñ Ð±Ð¾Ð»ÑŒÑˆÐ¸Ð¼ ÐºÐ¾Ð»Ð¸Ñ‡ÐµÑÑ‚Ð²Ð¾Ð¼ Ð½ÐµÐ³Ð°Ñ‚Ð¸Ð²Ð½Ñ‹Ñ… Ð'),
(2443, 'GregoryPek', 'info@guard-car.ru', '87865414374', 'Praia', 'google', '<a href=https://guard-car.ru/>Ð¸Ð·Ð³Ð¾Ñ‚Ð¾Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¸Ð½Ð¾ÑÑ‚Ñ€Ð°Ð½Ð½Ñ‹Ñ… Ð½Ð¾Ð¼ÐµÑ€Ð¾Ð²</a> \r\n<'),
(2444, 'Ð¿ÐµÑ‡Ð°Ñ‚Ð¸Ð²ÐºÑ€Ð°ÑÐ½Ð¾Ð´Ð°Ñ€Ðµ', 'nakleykiv.krasnodare@mail.ru', '82317837389', '', 'google', 'Ð˜Ð·Ð³Ð¾Ñ‚Ð¾Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿ÐµÑ‡Ð°Ñ‚ÐµÐ¹ Ð¸ ÑˆÑ‚Ð°Ð¼Ð¿Ð¾Ð² \r\n<a href=https://Ð¿ÐµÑ‡Ð°Ñ‚Ð¸Ð²ÐºÑ€Ð°ÑÐ½'),
(2445, 'Danieltot', 'sandralewoncka@wp.pl', '81662812179', 'Al Ladhiqiyah', 'google', 'DokÄ…d kartkowaÄ‡ filmiki i seriale online â€“ zmuszane pÅ‚aszczyzny streamingowe \r\n \r\nObrazy tudzie'),
(2446, 'LesliePlutt', 'thomasondiana29@gmail.com', '85956965834', 'Raanana', 'google', 'Find latest news about Online Casinos, New Slots Games and latest <a href=https://www.jackpotbetonli'),
(2447, 'VavaDAequab', 'maksxarin@outlook.com', '81326687799', 'Wete', 'google', 'Ð•ÑÐ»Ð¸ Ñ‚Ñ‹ Ð² Ñ‚ÐµÐ¼Ðµ, Ð·Ð½Ð°Ð¹ Ñ‡Ñ‚Ð¾ ÐµÑÑ‚ÑŒ Ð¾Ñ„Ð¸Ñ†Ð¸Ð°Ð»ÑŒÐ½Ð°Ñ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ð° Ð½Ð° Ð·Ð'),
(2448, 'EverettSlell', 'filkina_2023@mail.ru', '89943864616', 'Duverge', 'google', 'CÐ°Ð¹Ñ‚Ñ‹ Ð·Ð°Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ°  Ð² Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚Ðµ Ð±ÐµÐ· Ð²Ð»Ð¾Ð¶ÐµÐ½Ð¸Ð¹ \r\n \r\n \r\n \r\nÐ•ÑÐ»Ð¸ Ð’Ð°'),
(2449, 'Robertanamp', 'socolive1234@gmail.com', '87976242236', 'Cotonou', 'google', 'Há» Ä‘ang cÃ³ eight Ä‘iá»ƒm, kÃ©m Ä‘á»™i Ä‘áº§u báº£ng Manchester City four Ä‘iá»ƒm vÃ  khÃ´ng thá»'),
(2450, 'EverettSlell', 'filkina_2023@mail.ru', '84991613794', 'Duverge', 'google', 'CÐ°Ð¹Ñ‚Ñ‹ Ð·Ð°Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ°  Ð² Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚Ðµ Ð±ÐµÐ· Ð²Ð»Ð¾Ð¶ÐµÐ½Ð¸Ð¹ \r\n \r\n \r\n \r\nÐ•ÑÐ»Ð¸ Ð’Ð°'),
(2451, 'HenryNIC', 'anna292@hanmail.net', '89037908167', 'Moscow', 'google', 'The additional income for everyone. \r\nhttps://t.me/Crypto2022toolbot'),
(2452, 'EverettSlell', 'filkina_2023@mail.ru', '87665569744', 'Duverge', 'google', 'CÐ°Ð¹Ñ‚Ñ‹ Ð·Ð°Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ°  Ð² Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚Ðµ Ð±ÐµÐ· Ð²Ð»Ð¾Ð¶ÐµÐ½Ð¸Ð¹ \r\n \r\n \r\n \r\nÐ•ÑÐ»Ð¸ Ð’Ð°'),
(2453, 'Richardclids', 'no-replyFusEpiff@gmail.com', '88993894547', 'Andorra La Vella', 'google', 'Good day!  schooloo.com \r\n \r\nWe present oneself \r\n \r\nSending your business proposition through the f'),
(2454, 'Jamesenave', 'dograthomason@gmail.com', '83967745941', 'Hesperange', 'google', 'de,<a href=https://www.jackpotbetonline.com/>Sports betting</a> Guide that will help you on the righ'),
(2455, 'Bricelaf', 'smoossy@yandex.ru', '81475186779', 'Lilongwe', 'google', '<a href=https://mebel-svetilniki-krasnoyarsk.ru>ÐºÐ°Ñ‚Ð°Ð»Ð¾Ð³ Ð¼ÐµÐ±ÐµÐ»Ð¸</a> \r\n<a href=https://me'),
(2456, 'Conradvor', 'yourmail@gmail.com', '84876438641', 'Khujand', 'google', 'Millions of men were satisfied: \r\nhttps://codepen.io/ivanport161161/full/OJzOoRP'),
(2457, 'AntonioSex', 'info@ochki-rostov.ru', '84751141471', 'Ho Chi Minh City', 'google', 'ÐšÐ¾Ðµ-Ñ‡Ñ‚Ð¾ Ð¿Ñ€Ð¾ Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚-Ð¼Ð°Ð³Ð°Ð·Ð¸Ð½ Ð·ÐµÑ€ÐºÐ°Ð» Ð²  ÐœÐ¾ÑÐºÐ²Ðµ Ð¸ ÐœÐž Ñ€ÑƒÑ‡Ð½Ð'),
(2458, 'laptop repair delhi at home or door step', 'backlinkindex90@gmail.com', '85697493316', 'Delhi', 'google', 'Lap05 is the best place to get <b>Laptop repair in Delhi</b> \r\nhttps://Lap05.com/'),
(2459, 'Bricelaf', 'andrey.petr55@gmail.com', '83231378536', 'Moscow', 'google', '<a href=http://vebcamonline.ru/>Ð²ÐµÐ± ÐºÐ°Ð¼ÐµÑ€Ñ‹ Ð¾Ð½Ð»Ð°Ð¹Ð½</a> \r\n<a href=http://www.vebcamonli'),
(2460, 'Putin.Digital nulge', 'info@mchs.gov.ru', '87493195813', 'Karak', 'google', 'The Anonymous collective is officially in cyber war against the Russian government. \r\nAnonymous is e'),
(2461, 'EverettSlell', 'filkina_2023@mail.ru', '81588295421', 'Duverge', 'google', 'CÐ°Ð¹Ñ‚Ñ‹ Ð·Ð°Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ°  Ð² Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚Ðµ Ð±ÐµÐ· Ð²Ð»Ð¾Ð¶ÐµÐ½Ð¸Ð¹ \r\n \r\n \r\n \r\nÐ•ÑÐ»Ð¸ Ð’Ð°'),
(2462, 'EverettSlell', 'grushina.manya@mail.ru', '89375755882', 'Duverge', 'google', 'ÐžÑ„Ð¸Ñ†Ð¸Ð°Ð»ÑŒÐ½Ñ‹Ð¹ ÑÐ°Ð¹Ñ‚ Ð“Ð¾ÑÑƒÐ´Ð°Ñ€ÑÑ‚Ð²ÐµÐ½Ð½Ð¾Ð³Ð¾ Ð’Ð¾ÐµÐ½Ð½Ð¾Ð³Ð¾ Ð³Ð¾ÑÐ¿Ð¸Ñ‚Ð°Ð»Ñ'),
(2463, 'EverettSlell', 'filkina_2023@mail.ru', '87352215294', 'Duverge', 'google', 'CÐ°Ð¹Ñ‚Ñ‹ Ð·Ð°Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ°  Ð² Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚Ðµ Ð±ÐµÐ· Ð²Ð»Ð¾Ð¶ÐµÐ½Ð¸Ð¹ \r\n \r\n \r\n \r\nÐ•ÑÐ»Ð¸ Ð’Ð°'),
(2464, 'Mike Galbraith\r\n', 'no-replykl@gmail.com', '85666248479', 'Willemstad', 'google', 'Hi \r\n \r\nThis is Mike Galbraith\r\n \r\nLet me introduce to you our latest research results from our cons'),
(2465, 'EverettSlell', 'filkina_2023@mail.ru', '87434824368', 'Duverge', 'google', 'CÐ°Ð¹Ñ‚Ñ‹ Ð·Ð°Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ°  Ð² Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚Ðµ Ð±ÐµÐ· Ð²Ð»Ð¾Ð¶ÐµÐ½Ð¸Ð¹ \r\n \r\n \r\n \r\nÐ•ÑÐ»Ð¸ Ð’Ð°'),
(2466, 'TheresaThupe', 'fbfnszcfj@gordpizza.ru', '87443674754', 'Klimmen', 'google', '<a href=https://realmonetcasino.com/>casinos</a> \r\n<a href=\"https://realmonetcasino.com/\">casino gam'),
(2467, 'EverettSlell', 'filkina_2023@mail.ru', '86229645129', 'Duverge', 'google', 'CÐ°Ð¹Ñ‚Ñ‹ Ð·Ð°Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ°  Ð² Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚Ðµ Ð±ÐµÐ· Ð²Ð»Ð¾Ð¶ÐµÐ½Ð¸Ð¹ \r\n \r\n \r\n \r\nÐ•ÑÐ»Ð¸ Ð’Ð°'),
(2468, 'Robertglicy', 'yourmail@gmail.com', '89233416811', 'Rio Grande', 'google', 'Esperio ÐœÐžÐ¨Ð•ÐÐÐ˜Ðš Ð¾Ñ‚Ð·Ñ‹Ð²Ñ‹ Ð¸ Ð²Ñ‹Ð²Ð¾Ð´ Ð´ÐµÐ½ÐµÐ³ Ð´ÐµÐº 14, 2021ÐšÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¸'),
(2469, 'Ð‘ÐµÑ‚Ñ‚Ð¸Ð½Ð³ ÐºÐ¾Ð¼Ð¿Ð°Ð½Ð¸Ñ Ð”Ð¾Ð¿Ð¾Ð»Ð½Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ðµ ÑÑ‚Ð°Ñ‚ÑŒÐ¸ ÐºÐ»Ð¸ÐºÐ°Ð¹ Ð¿Ð¾ ÑÑÑ‹Ð»', 'casinotest2@mail.ru', '83622933429', 'Bereeda', 'google', ''),
(2470, 'TysonRep', 'hidb3@course-fitness.com', '86254747155', 'Nuuk', 'google', 'unethostç„¡é™ç©ºé–“è™›æ“¬ä¸»æ©Ÿ æŠ€è¡“åˆ†äº«éƒ¨è½æ ¼ \r\n \r\nhttp://blog.unethost.com/'),
(2471, 'Jamesinend', 'rhehanathomason@gmail.com', '89872631823', 'Lome', 'google', '<a href=https://www.jackpotbetonline.com/>Online Casino</a> Guide, Online Casino Slots, Signup Bonus'),
(2472, 'DerekInogy', 'dfidf@asd.com', '89933159698', 'Bridgetown', 'google', '<a href=https://www.cleta.kr>ì—¬ì„±ì˜ë¥˜ì‡¼í•‘ëª°</a> \r\n<a href=https://www.petitbly.kr>ì—¬ì„±ì˜ë¥'),
(2473, 'NARSI RAM BAIRWA', 'narsirambairwa1980@gmail.com', '09868678434', 'A 377/1 Gali no.10 Lakhpat colony part 2 Meethapur Extn basdarpur nai dilli 110044', 'school of specialized Excellence kalkaji 110019', 'Belt '),
(2474, 'NARSI RAM BAIRWA', 'narsirambairwa1980@gmail.com', '09868678434', 'A 377/1 Gali no.10 Lakhpat colony part 2 Meethapur Extn basdarpur nai dilli 110044', 'SCHOOL OF SPIALIZED EXCELLENCE KALKAJI 110019 ', ' Belt'),
(2475, 'CazxrlosCip', 'cazxrlosjar@gmail.com', '83299781346', 'Algiers', 'google', ' \r\nTake receiving antihypertensive agents during the received achieved turno dele deve ser cuidadosa'),
(2476, 'BruceOxito', 'swetlanaahuzaa14@gmail.com', '83714631355', 'La Primavera', 'google', 'Online Casino Guide, <a href=https://www.jackpotbetonline.com/>Online Casino</a> Slots, Signup Bonus'),
(2477, 'DavidNom', 'l29bj@course-fitness.com', '86298791177', 'Stung Treng', 'google', 'æ°´å¾®æ™¶çŽ»å°¿é…¸ - å…«åƒä»£ \r\n \r\n \r\nhttps://yachiyo.com.tw/hyadermissmile-injection/'),
(2478, 'JesseKag', 'dax7d@course-fitness.com', '83824338287', 'Santa Rosa', 'google', 'æ­å®¢ä½¬ç²¾å“å’–å•¡ï½œè¾²å ´ç›´ç‡Ÿï½œç”¢éŠ·åˆä¸€ï½œå“é …æœ€å¤š \r\n \r\nhttps://shopee.tw/ken668999'),
(2479, 'Duncan Smith', '5rdhp2fe29yb@beconfidential.com', '82775867712', 'Gray Mountain', 'google', 'Dear Sir/Madam \r\n \r\nYou can only achieve financial freedom when you create multiple streams of incom'),
(2480, 'Josephasymn', 'asdgfdty1234l@gmail.com', '88362489518', 'Montevideo', 'google', '90phut Television Trá»±c Tiáº¿p BÃ³ng ÄÃ¡ HÃ´m Nay KÃªnh Trá»±c Tiáº¿p BÃ³ng ÄÃ¡ HÃ´m Nay Euro, V '),
(2481, 'MichaelErync', 'beeonthetop.com@gmail.com', '82937413856', 'Gray Mountain', 'google', 'Buy Followers, Likes and Views \r\n \r\nGet Thousands of Followers, Likes, Views and more for all you so'),
(2482, 'Terrysig', 'hyperobl@caramail.com', '88913827186', 'Paphos', 'google', 'Openbullet 1.4.5 Anomaly Final Version \r\nDownload : mega-upload.net/dxfBj'),
(2483, 'DennisKef', 'marketing@tradeboard.biz', '82632916693', 'Klimmen', 'google', 'Setting up your business in Vanuatu offers unmatched advantages that include but not limited to: \r\n '),
(2484, 'nym3576974krya', 'lesya.kravtsova.86@inbox.ru', '86193475685', 'Klimmen', 'google', 'mys3576974ngkyt Xiw6Ohc hbVW ekmHAd3'),
(2485, 'EverettSlell', 'grushina.manya@mail.ru', '87645965982', 'Duverge', 'google', 'ÐžÑ„Ð¸Ñ†Ð¸Ð°Ð»ÑŒÐ½Ñ‹Ð¹ ÑÐ°Ð¹Ñ‚ Ð“Ð¾ÑÑƒÐ´Ð°Ñ€ÑÑ‚Ð²ÐµÐ½Ð½Ð¾Ð³Ð¾ Ð’Ð¾ÐµÐ½Ð½Ð¾Ð³Ð¾ Ð³Ð¾ÑÐ¿Ð¸Ñ‚Ð°Ð»Ñ'),
(2486, 'Radfrfaeldew', 'radfrfaelsar@gmail.com', '89818569814', 'Bereeda', 'google', '\r\n<a href=https://citascomujeres.blogspot.com/2020/11/citas-con-mujeres.html>citas mujeres</a>\r\n \r\n\r'),
(2487, 'Ryan Hart', 'ryanhartvideos@gmail.com', '85785168928', 'Virbalis', 'google', 'Hey! \r\n \r\nDo you want to increase sales for your business 24/7? \r\n \r\nIf so, you have to grab peopleâ'),
(2488, 'BruceMug', 'subminaldej@gmail.com', '88273637716', 'Kalamaria', 'google', ' Selling casino   system  for online and offline club  \r\n \r\nOur casino platform is completely source'),
(2489, 'Eugeneshupe', 'uvtr@course-fitness.com', '88865995316', 'San Vicente De Tagua Tagua', 'google', 'æ­å®¢ä½¬ç²¾å“å’–å•¡ ï½œOKLAO COFFEEï½œè¦çš®å•†åŸŽï½œå’–å•¡è±†ï½œæŽ›è€³ï½œç²¾å“å’–å•¡ï½œå’–å•¡ç¦®'),
(2490, 'Mike Bargeman\r\n', 'no-replykl@gmail.com', '82194551128', 'Boston', 'google', 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your website? \r\nHaving a high DA scor'),
(2491, 'AntonioSex', 'info@ochki-rostov.ru', '81987229697', 'Ho Chi Minh City', 'google', 'Ð§ÑƒÑ‚ÑŒ-Ñ‡ÑƒÑ‚ÑŒ Ð¿Ñ€Ð¾ Ð·ÐµÑ€ÐºÐ°Ð»Ð° Ð¸ ÑÑ‚ÐµÐºÐ»Ð°  Ð² ÐœÐ¾ÑÐºÐ²Ðµ Ð¾Ñ‚Ð»Ð¸Ñ‡Ð½Ð¾Ðµ ÐºÐ°Ñ‡ÐµÑ'),
(2492, 'johnWaf', 'makarovvasilij17@gmail.com', '86219887396', '', 'google', 'Ð½Ð°Ñ Ð¸Ð½Ñ‚ÐµÑ€ÐµÑÑƒÑŽÑ‚ ÑÐ»ÐµÐ´ÑƒÑŽÑ‰Ð¸Ðµ Ð¿Ð¸Ð»Ð¾Ð¼Ð°Ñ‚ÐµÑ€Ð¸Ð°Ð»Ñ‹ Ð½Ð° Ð¿Ð¾ÑÑ‚Ð¾ÑÐ½Ð½Ð¾Ð¹ '),
(2493, 'JamesCrynC', 'milagrosproctor31657@gmail.com', '87438829829', 'Moscow', 'google', 'schooloo Supplies - Buy School Uniforms, Books, Bags, Shoes &amp; Accessories Online at Best Prices '),
(2494, 'Henrymully', '34t54t5f@4trfghfgh.com', '88772843793', 'Lilongwe', 'google', 'Dit is snelste <a href=\"https://slotenmaker-service24.nl/\">Slotenmaker in Amsterdam</a> \r\nNeem een k'),
(2495, 'BitcoinWaf', 'x.r.umersmitrade@gmail.com', '82172616118', 'Biel', 'google', 'Hello. \r\n \r\nhttps://maps.google.com.ag/url?q=https://apostas-brasil.xyz/tags/dicas-de-apostas-esport'),
(2496, 'johnWaf', 'makarovvasilij17@gmail.com', '82772885136', '', 'google', 'Ð½Ð°Ñ Ð¸Ð½Ñ‚ÐµÑ€ÐµÑÑƒÑŽÑ‚ ÑÐ»ÐµÐ´ÑƒÑŽÑ‰Ð¸Ðµ Ð¿Ð¸Ð»Ð¾Ð¼Ð°Ñ‚ÐµÑ€Ð¸Ð°Ð»Ñ‹ Ð½Ð° Ð¿Ð¾ÑÑ‚Ð¾ÑÐ½Ð½Ð¾Ð¹ '),
(2497, 'Robertglicy', 'yourmail@gmail.com', '83633657618', 'Rio Grande', 'google', 'Esperio ÐœÐžÐ¨Ð•ÐÐÐ˜Ðš Ð¾Ñ‚Ð·Ñ‹Ð²Ñ‹ Ð¸ Ð²Ñ‹Ð²Ð¾Ð´ Ð´ÐµÐ½ÐµÐ³ Ð´ÐµÐº 14, 2021ÐšÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¸'),
(2498, 'Id2gbldtfx', 'research.73@list.ru', '89968333771', '', 'google', ' \r\n Ð¡Ñ‡Ñ‘Ñ‚ Ñ€Ð°Ð·Ð¼Ð¾Ñ€Ð¾Ð¶ÐµÐ½! ÐžÑ‚Ð²ÐµÑ‚ Ð½Ð° Ð¾Ð±Ñ€Ð°Ñ‰ÐµÐ½Ð¸Ðµ â„– 6566 Ð´Ð¾ÑÑ‚ÑƒÐ¿ÐµÐ½ Ð² Ð'),
(2499, 'MichealPashy', 'help@aweb.sbs', '86493815442', 'Stirling', 'google', 'ÐŸÑ€Ð¸Ð²ÐµÑ‚, Ð¼Ñ‹ Ð¼Ð°Ð»ÐµÐ½ÑŒÐºÐ°Ñ, Ð½Ð¾ Ð³Ð¾Ñ€Ð´Ð°Ñ ÑÑ‚ÑƒÐ´Ð¸Ñ Ð¸Ð· Ð£ÐºÑ€Ð°Ð¸Ð½Ñ‹. ÐšÐ¾Ð½ÐºÑ'),
(2500, 'TysonRep', 'hidb3@course-fitness.com', '88661513847', 'Nuuk', 'google', 'unethostç„¡é™ç©ºé–“è™›æ“¬ä¸»æ©Ÿ æŠ€è¡“åˆ†äº«éƒ¨è½æ ¼ \r\n \r\nhttp://blog.unethost.com/'),
(2501, 'KennethwhaFT', 'vpsr@course-fitness.com', '82395993164', 'Linguere', 'google', 'Game LIFE éŠæˆ²æƒ…å ± \r\n \r\n \r\nhttps://gamelife.tw/portal.php'),
(2502, 'JesseKag', 'dax7d@course-fitness.com', '83781155286', 'Santa Rosa', 'google', 'æ­å®¢ä½¬ç²¾å“å’–å•¡ï½œè¾²å ´ç›´ç‡Ÿï½œç”¢éŠ·åˆä¸€ï½œå“é …æœ€å¤š \r\n \r\nhttps://shopee.tw/ken668999'),
(2503, 'CharlesFum', 'hgdgh@gmail.com', '88348753723', 'Kwajalein', 'google', ''),
(2504, 'Zabor_ven', 'mihails0678@rambler.ru', '87661343764', 'ÐšÑƒÑ€ÑÐº', 'google', ' Ð”Ð¾Ð±Ñ€Ð¾Ð³Ð¾ Ð²Ð°Ð¼ Ð²Ñ€ÐµÐ¼ÐµÐ½Ð¸ ÑÑƒÑ‚Ð¾Ðº! \r\nÐ•ÑÐ»Ð¸ Ð²Ð°Ð¼ Ð½ÑƒÐ¶Ð½Ð¾ ÑƒÑÑ‚Ð°Ð½Ð¾Ð²Ð¸Ñ‚ÑŒ '),
(2505, 'HarryCroff', 'xiaoxie1778906@mail.ru', '83943134163', 'Debrecen', 'google', 'If your gubbinsâ€™s battery can be removed, it could be a good phantasy to <a href=https://www.vapel'),
(2506, 'GeorgeEmomi', 'pdergachev80@gmail.com', '83649977996', 'Riohacha', 'google', '<a href=https://stiralkarem.ru/>Ñ€ÐµÐ¼Ð¾Ð½Ñ‚ ÑÑ‚Ð¸Ñ€Ð°Ð»ÑŒÐ½Ð¾Ð¹</a>'),
(2507, 'Mike ', 'no-replykl@gmail.com', '86439423486', 'Albany', 'google', 'Hi there \r\n \r\nWe will enhance your Local Ranks organically and safely, using only whitehat methods, '),
(2508, 'EverettSlell', 'grushina.manya@mail.ru', '85774362417', 'Duverge', 'google', 'ÐžÑ„Ð¸Ñ†Ð¸Ð°Ð»ÑŒÐ½Ñ‹Ð¹ ÑÐ°Ð¹Ñ‚ Ð“Ð¾ÑÑƒÐ´Ð°Ñ€ÑÑ‚Ð²ÐµÐ½Ð½Ð¾Ð³Ð¾ Ð’Ð¾ÐµÐ½Ð½Ð¾Ð³Ð¾ Ð³Ð¾ÑÐ¿Ð¸Ñ‚Ð°Ð»Ñ'),
(2509, 'RichardCaply', 'naniya.chumakova@inbox.ru', '81925426817', 'Jutiapa', 'google', 'Itâ€™s also gain reading up on synchronous bona fide <a href=https://www.vapeearly.com/>Vape Store</'),
(2510, 'Prolaf', 'smoossy@yandex.ru', '89117829914', 'Lilongwe', 'google', '<a href=https://mebel-svetilniki-krasnoyarsk.ru>Ð¼Ð°Ð³Ð°Ð·Ð¸Ð½ Ð¼ÐµÐ±ÐµÐ»Ð¸</a> \r\n<a href=https://me'),
(2511, 'Lemk6onardViolf', 'lemk6onardteard@gmail.com', '86556976422', 'Garhoud', 'google', '\r\n<a href=https://citascomujeres.blogspot.com/2020/11/citas-con-mujeres.html>citas mujeres</a>\r\n \r\nU'),
(2512, 'JamesCap', 'behzodxodjanov342@gmail.com', '83174759575', 'Oruro', 'google', 'Fast game - Ð¿Ñ€ÐµÐºÑ€Ð°ÑÐ½Ñ‹Ð¹ Ð¼ÐµÑ‚Ð¾Ð´ Ð¼Ð¾Ð¼ÐµÐ½Ñ‚Ð°Ð»ÑŒÐ½Ð¾ Ð¿Ð¾Ð·Ð½Ð°Ñ‚ÑŒ Ñ„Ð¾Ñ€Ñ‚ÑƒÐ½Ñƒ. Ð’'),
(2513, 'HermanEvoff', 'denisartemov4681@rambler.ru', '82845745238', 'Nuwara Eliya', 'google', '3.1. Ð¡Ð¾Ð±Ð»ÑŽÐ´Ð°Ñ‚ÑŒ Ñ‚Ñ€ÐµÐ±Ð¾Ð²Ð°Ð½Ð¸Ñ, Ð¸Ð·Ð»Ð¾Ð¶ÐµÐ½Ð½Ñ‹Ðµ Ð² Ñ€ÑƒÐºÐ¾Ð²Ð¾Ð´ÑÑ‚Ð²Ðµ Ð¿Ð¾ Ñ'),
(2514, 'Jamesijaa', 'podoxa9384@jooffy.com', '81869933698', 'Pirassununga', 'google', 'https://chancebxsl66777.blogs-service.com/33351818/crypto-browser-farm  cryptotab browser miner \r\nht'),
(2515, 'Pavelhor', 'yourmail@gmail.com', '83998723297', '', 'google', '<a href=https://clck.ru/et8Lu><img src=\"http://site7.20818.aqq.ru/1.jpg\"></a>'),
(2516, 'Robertglicy', 'yourmail@gmail.com', '86422384517', 'Rio Grande', 'google', 'Esperio ÐœÐžÐ¨Ð•ÐÐÐ˜Ðš Ð¾Ñ‚Ð·Ñ‹Ð²Ñ‹ Ð¸ Ð²Ñ‹Ð²Ð¾Ð´ Ð´ÐµÐ½ÐµÐ³ Ð´ÐµÐº 14, 2021ÐšÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¸'),
(2517, 'Mike Fulton\r\n', 'no-replykl@gmail.com', '82998975242', 'Kaohsiung Municipality', 'google', 'Howdy \r\n \r\nI have just analyzed  schooloo.com for the ranking keywords and saw that your website cou'),
(2518, 'Mep', 'r2r3kg7f@gmail.com', '88515391676', 'Kaduna', 'google', 'Hi, this is Anna. I am sending you my intimate photos as I promised. https://tinyurl.com/y2un5du7'),
(2519, 'TheresaThupe', 'fddlkkien@gordpizza.ru', '88975864516', 'Klimmen', 'google', '<a href=https://realmonetcasino.com/>online casino</a> \r\n<a href=\"https://realmonetcasino.com/\">casi'),
(2520, 'Bcitar3andonDup', 'bcitarandonAnapy@gmail.com', '83219839934', 'Madagascar', 'google', '\r\n<a href=https://citascomujeres.blogspot.com/2020/11/citas-con-mujeres.html>como empezar a tener ci'),
(2521, 'Josezins', 'karimovvlad8@inbox.ru', '87837639146', 'Tamana', 'google', ''),
(2522, 'LerÐ°jus', 'leramihalovna91@gmail.com', '85878947384', 'Mariupol', 'google', 'Hi! I am in Ukraine, we have a terrible war going on and I am asking for your help with tears in my '),
(2523, 'RaymondEsOdy', 'mikothomass1@gmail.com', '85588749218', 'Molodesjnaja', 'google', 'Find latest news about Online Casinos, New Slots Games and latest <a href=https://www.jackpotbetonli'),
(2524, 'Jamesinend', 'rhehanathomason@gmail.com', '87366821726', 'Lome', 'google', '<a href=https://www.jackpotbetonline.com/>Online Casino</a> Guide, Online Casino Slots, Signup Bonus'),
(2525, 'Waheed Algore', 'waheedalgore22@gmail.com', '81969655345', 'Keflavik', 'google', 'Hello, \r\n \r\nWe provide funding through our venture capital company to both start-up \r\nand existing c'),
(2526, 'Richardhah', 'damiansoborek@op.pl', '88972456842', 'Krk', 'google', 'DokÄ…d patrzyÄ‡ celuloidy plus seriale online â€“ wskazywane platformy streamingowe \r\n \r\n<img src=\"h'),
(2527, 'BitcoinWaf', 'x.r.umersmitrade@gmail.com', '81239984588', 'Biel', 'google', 'Hello. Your chance to earn a lot! \r\n \r\nhttps://apostas-brasil.xyz/tags/sistema-de-apostas-esportivas'),
(2528, 'ClarenceXW', 'mrtraff2022@gmail.com', '81244825377', 'Nuwara Eliya', 'google', 'ÐŸÑ€Ð¸Ð²ÐµÑ‚ ! \r\n \r\nÐÐ°ÑˆÐµÐ» <a href=https://goo.su/SRIb5>ÐºÐ»Ð°ÑÑÐ½Ñ‹Ð¹ ÑÐ°Ð¹Ñ‚</a>, Ð³Ð´Ðµ Ð¼'),
(2529, 'Manuelatum', 'amfetamin.klad@gmail.com', '85352834934', 'Oruro', 'google', 'ÐšÑƒÐ¿Ð¸Ñ‚ÑŒ ÐœÐµÑ„ÐµÐ´Ñ€Ð¾Ð½ ? ÐœÐµÑ„ÐµÐ´Ñ€Ð¾Ð½ ÐšÑƒÐ¿Ð¸Ñ‚ÑŒ. Ð¢ÐµÐ»ÐµÐ³Ñ€Ð°Ð¼Ð¼ - @FIRST_SHOP \r\n \r'),
(2530, 'MikeMycle', 'zbigmike1988z@gmx.com', '87429147147', 'Hesperange', 'google', ''),
(2531, 'Ronaldjap', 'w88onlinegames@hotmail.com', '81526151692', 'Maputo', 'google', ''),
(2532, 'Aleeza', 'aleeza063@gmail.com', '84542896377', 'Gray Mountain', 'google', 'Do you need Instagram followers, Facebook like or Google reviews? \r\nWe are here to help you:  https:'),
(2533, 'Mep', 'x55gh5v2@yahoo.com', '89765824718', 'Kaduna', 'google', 'Hi, this is Jenny. I am sending you my intimate photos as I promised. https://tinyurl.com/yxwhgnoe'),
(2534, 'Teresafreed', 'iwfisfmms@wowzilla.ru', '81782656888', 'Jutiapa', 'google', '<a href=https://youloan24.com/>same day installment loan</a> \r\n<a href=\"https://youloan24.com/\">best'),
(2535, 'Eugeneshupe', 'uvtr@course-fitness.com', '83672196887', 'San Vicente De Tagua Tagua', 'google', 'æ­å®¢ä½¬ç²¾å“å’–å•¡ ï½œOKLAO COFFEEï½œè¦çš®å•†åŸŽï½œå’–å•¡è±†ï½œæŽ›è€³ï½œç²¾å“å’–å•¡ï½œå’–å•¡ç¦®'),
(2536, 'mon', 'rogers4ro@yahoo.com', '87995597536', 'Duverge', 'google', 'Hi, prerequisite help of your spin-off'),
(2537, 'Jeremy', 'teammyaa2022@gmail.com', '85725436498', 'Le Mans', 'google', 'Hello, \r\n \r\nI would like to schedule a quick call to discuss our marketing system that can bring you'),
(2538, 'Jamesjaw', 'support@fire-flower.ru', '89135892814', 'Muscat', 'google', '<a href=https://fire-flower.ru/>Ð Ñ™Ð¡Ñ“Ð Ñ—Ð Ñ‘Ð¡â€šÐ¡ÐŠ Ð Ñ—Ð ÂµÐ¡â€¡Ð¡ÐŠ Ð ÑŸÐ Â»Ð Â°Ð Ñ˜Ð ÂµÐ Ð…'),
(2539, 'Mike Timmons\r\n', 'no-replykl@gmail.com', '84567534665', 'Boston', 'google', 'Hello \r\n \r\nWe all know the importance that dofollow link have on any website`s ranks. \r\nHaving most '),
(2540, 'macbookrepairred', 'backlinkindex90@gmail.com', '88791773319', 'Gurgaon', 'google', ''),
(2541, 'RobertFipse', 'valentinakimov9460@rambler.ru', '82657466119', 'Tomohon', 'google', 'ÐÐ°Ð·Ð²Ð°Ð½Ð¸Ðµ Â«Ð”Ð°Ð½Ñ‚Ð¾Ð²Ð¾Â» Ð²Ñ‹Ð±Ñ€Ð°Ð½Ð¾ Ð½ÐµÑÐ»ÑƒÑ‡Ð°Ð¹Ð½Ð¾. Ð­Ñ‚Ð¾ Ð¾Ñ‚ÑÑ‹Ð»ÐºÐ° Ðº Â«'),
(2542, 'Vinahjy1centAlina', 'vinafgt3centCax@gmail.com', '87922693965', 'Parnu', 'google', ' \r\nEn algunos casos, la recurrencia de la fibrilacion auricular en pacientes con terapia de mantenim'),
(2543, 'Elwinslaf', 'andrey.petr55@gmail.com', '85548372429', 'Moscow', 'google', '<a href=http://vebcamonline.ru/>Ð¾Ð½Ð»Ð°Ð¹Ð½ ÐºÐ°Ð¼ÐµÑ€Ñ‹ ÑÐ¼Ð¾Ñ‚Ñ€ÐµÑ‚ÑŒ Ð² Ñ€ÐµÐ°Ð»ÑŒÐ½Ð¾Ð¼ Ð²Ñ€Ð'),
(2544, 'KennethwhaFT', 'vpsr@course-fitness.com', '88627159586', 'Linguere', 'google', 'Game LIFE éŠæˆ²æƒ…å ± \r\n \r\n \r\nhttps://gamelife.tw/portal.php'),
(2545, 'Emely1986', 'u.d.o.l.g.o.v8.44@gmail.com', '83256728861', 'Herat', 'google', 'http://awaker.info/home.php?mod=space&uid=5318482'),
(2546, 'Ryan Hart', 'ryanhartvideos@gmail.com', '86477486651', 'Gray Mountain', 'google', 'Heyâ€¦ \r\n \r\nDo you want to increase sales for your business 24/7? \r\n \r\nIf so, you have to grab peopl'),
(2547, 'ÐŸÐµÑ‡Ð°Ñ‚Ð¸ Ð°Ð»ÑŒÑ„Ð°', 'eviv618eviv@gmail.com', '87186234551', 'Ð§ÐµÐ»ÑÐ±Ð¸Ð½ÑÐº', 'google', 'Ð”ÐµÐ¹ÑÑ‚Ð²Ð¸Ðµ  Ð¿ÐµÑ‡Ð°Ñ‚ÐµÐ¹ Ð¸ ÑˆÑ‚Ð°Ð¼Ð¿Ð¾Ð² Ð² ÐºÐ¾Ñ€Ð¾Ñ‚ÐºÐ¸Ðµ ÑÑ€Ð¾ÐºÐ¸ \r\n<a href=http://a'),
(2548, 'Jamesenave', 'cyberlinkxchnage@gmail.com', '83341373869', 'Hesperange', 'google', 'de,<a href=https://www.jackpotbetonline.com/>Sports betting</a> Guide that will help you on the righ'),
(2549, 'Davidbleaf', 'toqzg@course-fitness.com', '88413328559', 'Yangon', 'google', 'åœ‹è€ƒçŽ‹ \r\n \r\nhttps://man-r20.com/'),
(2550, 'ColtonspIfy', 'h1dtm@course-fitness.com', '81883859982', 'Riohacha', 'google', 'ç¬¬ä¸€å€ŸéŒ¢ç¶²-å€ŸéŒ¢,å°é¡å€Ÿæ¬¾,å°é¡å€ŸéŒ¢,è­‰ä»¶å€Ÿæ¬¾,è­‰ä»¶å€ŸéŒ¢,èº«åˆ†è­‰å€Ÿæ¬¾,èº«åˆ†è­‰'),
(2551, 'Larrytem', 'bgfg@course-fitness.com', '84618555195', 'Carthage', 'google', 'é»žå­æ•¸ä½ç§‘æŠ€æœ‰é™å…¬å¸ \r\n \r\nhttps://spot-digital.com.tw/'),
(2552, 'Mike ', 'no-replykl@gmail.com', '81172641714', 'Albany', 'google', 'Hello \r\n \r\nWe will improve your Local Ranks organically and safely, using only whitehat methods, whi'),
(2553, 'KevinJouri', 'caubime_438@mail.ru', '84963479988', 'Shekhupura', 'google', 'Ð’Ñ‹Ð½Ð¾Ñ Ð°Ð·Ð¾Ñ‚Ð° Ð¸Ð· Ð¿Ð¾Ñ‡Ð²Ñ‹ Ð¾Ð¿Ñ€ÐµÐ´ÐµÐ»ÑÐ»Ð° Ð´Ð¾Ð»Ñ ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚Ð°, ÑƒÑ‡Ð°ÑÑ‚Ð²Ñƒ'),
(2554, 'DannybeW', 'evgeniya3lmi@list.ru', '89745756361', 'Raduznyj', 'google', 'ÐžÐ±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¾ 1 Ð°Ð¿Ñ€ÐµÐ»Ñ 2020Ð‘Ð¾Ð±Ñ‹ÑˆÐºÐ¸ Ð¿Ð¾ Ð½Ð¾Ñ€Ð¼Ð°Ð¼ ÐÐ¢ 412-87Ð¡Ð‘ Ð¸ ÐÐ¢-218-8'),
(2555, 'Brandonlog', 'lidiyavyg@inbox.ru', '89222379475', 'Estepona', 'google', '\r\n\r\n\r\nÐŸÑ€Ð¾Ð´Ð¾Ð»Ð¶Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ð¹ ÑÑ€Ð¾Ðº ÑÐ»ÑƒÐ¶Ð±Ñ‹ <a href=https://damian-m.ru/magazin/folde'),
(2556, 'WalterCaf', 'anzhelaea2zha@bk.ru', '84528644227', 'Ð•ÐºÐ°Ñ‚ÐµÑ€Ð¸Ð½Ð±ÑƒÑ€Ð³', 'google', 'ÐœÐ°Ñ‚ÐµÑ€Ð¸Ð°Ð»Ð¾Ð² Ð´Ð»Ñ Ð·Ð°Ñ‰Ð¸Ñ‚Ñ‹ Ð¾Ñ‚ Ð²Ð»Ð°Ð³Ð¸ Ð¼Ð½Ð¾Ð¶ÐµÑÑ‚Ð²Ð¾, Ð² Ñ‡Ð¸ÑÐ»Ðµ ÑÐ°Ð¼Ñ‹Ñ'),
(2557, 'Carloswhozy', 'leylasofc1fv@inbox.ru', '88196429679', 'Banjul', 'google', '\r\nÐžÑÐ¾Ð±Ñ‹Ð¹ Ð¸Ð½Ñ‚ÐµÑ€ÐµÑ Ðº Ð¸ÑÑ‚Ð¾Ñ€Ð¸Ñ‡ÐµÑÐºÐ¸Ð¼ Ñ€ÐµÐºÐ¾Ð½ÑÑ‚Ñ€ÑƒÐºÑ†Ð¸ÑÐ¼ Ð¿Ñ€Ð¾ÑÐ²Ð»Ñ'),
(2558, 'RandalRax', 'nwzn@course-fitness.com', '89646872924', 'Praia', 'google', 'é›™æ³¢é•·äºžæ­·å±±å¤§é™¤æ¯›é›·å°„ - å…«åƒä»£ \r\n \r\n \r\nhttps://yachiyo.com.tw/alexandrite-laser/'),
(2559, 'DanielHof', 'z2rb@course-fitness.com', '87941347546', 'Montevideo', 'google', 'åœ‹è€ƒçŽ‹ \r\n \r\nhttps://man-r20.com/'),
(2560, 'Larrytem', 'bgfg@course-fitness.com', '83858287375', 'Carthage', 'google', 'é»žå­æ•¸ä½ç§‘æŠ€æœ‰é™å…¬å¸ \r\n \r\nhttps://spot-digital.com.tw/'),
(2561, 'KennethwhaFT', 'vpsr@course-fitness.com', '83747478295', 'Linguere', 'google', 'Game LIFE éŠæˆ²æƒ…å ± \r\n \r\n \r\nhttps://gamelife.tw/portal.php'),
(2562, 'Mep', 'zpn825ug@hotmail.com', '84586467623', 'Kaduna', 'google', 'Hi, this is Irina. I am sending you my intimate photos as I promised. https://tinyurl.com/y5rgockm'),
(2563, 'Mike Sykes\r\n', 'no-replykl@gmail.com', '85797553375', 'Kaohsiung Municipality', 'google', 'Howdy \r\n \r\nI have just checked  schooloo.com for its SEO Trend and saw that your website could use a'),
(2564, 'JosephWek', 'yourmail@gmail.com', '83788715918', 'Cotonou', 'google', 'Ð›Ð¾Ñ…Ð¾Ð±Ñ€Ð¾ÐºÐµÑ€ Esperio. ÐžÐ±Ð·Ð¾Ñ€ Ð¸ Ð¾Ñ‚Ð·Ñ‹Ð²Ñ‹ ÐºÐ»Ð¸ÐµÐ½Ñ‚Ð¾Ð² \r\nEsperio Ð»Ð¾Ñ…Ð¾Ñ‚Ñ€Ð¾Ð½'),
(2565, 'urtaritual@rambler.ru', 'urtaritual@rambler.ru', '88375599198', 'Paphos', 'google', 'ÐšÐ°Ðº ÑƒÑ…Ð°Ð¶Ð¸Ð²Ð°Ñ‚ÑŒ Ð·Ð° Ð²Ð¾Ð´Ð½Ñ‹Ð¼ Ñ‚Ñ€Ð°Ð½ÑÐ¿Ð¾Ñ€Ñ‚Ð¾Ð¼.  ÐœÐ¾Ð¹ÐºÐ° Ð¸ ÑƒÐ±Ð¾Ñ€ÐºÐ° Ð½Ð°'),
(2566, 'Josezins', 'karimovvlad8@inbox.ru', '87948595586', 'Tamana', 'google', 'Bitcoin Mixer ether Bitcoin Mixer (Tumbler) <a href=https://blendor.biz/>BTC Mix</a> / <a href=http:'),
(2567, 'DavidNom', 'l29bj@course-fitness.com', '83154319844', 'Stung Treng', 'google', 'æ°´å¾®æ™¶çŽ»å°¿é…¸ - å…«åƒä»£ \r\n \r\n \r\nhttps://yachiyo.com.tw/hyadermissmile-injection/');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_address`
--

CREATE TABLE `tbl_address` (
  `address_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `pincode` varchar(100) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `type` varchar(100) NOT NULL,
  `order_notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_cart`
--

CREATE TABLE `tbl_add_cart` (
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` varchar(11) NOT NULL,
  `tb_price` varchar(255) NOT NULL,
  `tbl_items_qty` varchar(255) NOT NULL,
  `user_id` varchar(255) DEFAULT '1',
  `cookie` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `user_name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `user_id`, `password`, `status`, `user_name`, `created_at`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 'admin', '2020-05-30 01:20:04'),
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 'tester', '2021-11-08 00:34:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_adm_review`
--

CREATE TABLE `tbl_adm_review` (
  `review_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_adm_review`
--

INSERT INTO `tbl_adm_review` (`review_id`, `name`, `image`, `description`, `status`, `created_at`) VALUES
(1, 'Jennifer Lopaz', 'Jennifer Lopaz_39717178_client-avater.png', '<p>There are many variations of passage Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour.</p>', '1', '10-05-23 06:36:30'),
(2, 'Sr. Authopedic', 'Sr. Authopedic_4662507_avater2.png', '<p>There are many variations of passage Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour.</p>', '1', '10-05-23 06:37:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_all_banner`
--

CREATE TABLE `tbl_all_banner` (
  `all_banner_id` int(11) NOT NULL,
  `image` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `type` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_auth`
--

CREATE TABLE `tbl_auth` (
  `auth_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `auth` longtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `blog_id` int(11) NOT NULL,
  `blog_name` varchar(100) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `author_name` varchar(100) NOT NULL,
  `blog_date` varchar(100) NOT NULL,
  `blog_image` varchar(100) NOT NULL,
  `short_des` longtext NOT NULL,
  `blog_description` longtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `blog_slug` varchar(100) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_blog`
--

INSERT INTO `tbl_blog` (`blog_id`, `blog_name`, `slug`, `author_name`, `blog_date`, `blog_image`, `short_des`, `blog_description`, `status`, `created_at`, `blog_slug`, `seo_title`, `seo_description`) VALUES
(1, 'The Importance of Instagram Metrics and Where to Find Them!', 'the-importance-of-instagram-metrics-and-where-to-find-them', '', '2023-05-09', 'The Importance of Instagram Metrics and Where to Find Them!_7163_blog-img1.jpg', '<p>sit amet consectetur adipisicing elit. A placeat, sint ab non ratione eligendi qui facilis numquam magnam eius iusto perferendis minima molestiae perspiciatis laborum saepe quo consectetur aliquid!</p>\r\n<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eius in ipsam ratione facere vero iste repudiandae beatae quasi, voluptate mollitia iusto harum error reiciendis eligendi molestiae eum? Assumenda nesciunt odio, maxime ratione sint possimus quae, numquam laborum cum, voluptatem, aliquam obcaecati excepturi quidem ex praesentium commodi aperiam quis non voluptates iusto distinctio doloribus enim necessitatibus! Quae vel alias sequi?</p>\r\n<p>velit veritatis voluptate ratione earum odio, porro, iste explicabo optio , hic voluptas eligendi cupiditate, itaque ab quas eveniet maiores in officiis aspernatur incidunt consequatur laboriosam quibusdam. Nesciunt possimus qui incidunt distinctio cumque?.</p>', '<p>sit amet consectetur adipisicing elit. A placeat, sint ab non ratione eligendi qui facilis numquam magnam eius iusto perferendis minima molestiae perspiciatis laborum saepe quo consectetur aliquid!</p>\r\n<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eius in ipsam ratione facere vero iste repudiandae beatae quasi, voluptate mollitia iusto harum error reiciendis eligendi molestiae eum? Assumenda nesciunt odio, maxime ratione sint possimus quae, numquam laborum cum, voluptatem, aliquam obcaecati excepturi quidem ex praesentium commodi aperiam quis non voluptates iusto distinctio doloribus enim necessitatibus! Quae vel alias sequi?</p>\r\n<p>velit veritatis voluptate ratione earum odio, porro, iste explicabo optio , hic voluptas eligendi cupiditate, itaque ab quas eveniet maiores in officiis aspernatur incidunt consequatur laboriosam quibusdam. Nesciunt possimus qui incidunt distinctio cumque?.</p>', 1, '2023-05-09 06:20:48', 'the-importance-of-instagram-metrics-and-where-to-find-them', '', ''),
(2, '6 Facts Until You Reach Your Student', '6-facts-until-you-reach-your-student', 'test', '2023-05-09', '6 Facts Until You Reach Your Student_1973_blog-img2.jpg', '<p>sit amet consectetur adipisicing elit. A placeat, sint ab non ratione eligendi qui facilis numquam magnam eius iusto perferendis minima molestiae perspiciatis laborum saepe quo consectetur aliquid!</p>\r\n<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eius in ipsam ratione facere vero iste repudiandae beatae quasi, voluptate mollitia iusto harum error reiciendis eligendi molestiae eum? Assumenda nesciunt odio, maxime ratione sint possimus quae, numquam laborum cum, voluptatem, aliquam obcaecati excepturi quidem ex praesentium commodi aperiam quis non voluptates iusto distinctio doloribus enim necessitatibus! Quae vel alias sequi?</p>\r\n<p>velit veritatis voluptate ratione earum odio, porro, iste explicabo optio , hic voluptas eligendi cupiditate, itaque ab quas eveniet maiores in officiis aspernatur incidunt consequatur laboriosam quibusdam. Nesciunt possimus qui incidunt distinctio cumque?.</p>', '<p>sit amet consectetur adipisicing elit. A placeat, sint ab non ratione eligendi qui facilis numquam magnam eius iusto perferendis minima molestiae perspiciatis laborum saepe quo consectetur aliquid!</p>\r\n<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eius in ipsam ratione facere vero iste repudiandae beatae quasi, voluptate mollitia iusto harum error reiciendis eligendi molestiae eum? Assumenda nesciunt odio, maxime ratione sint possimus quae, numquam laborum cum, voluptatem, aliquam obcaecati excepturi quidem ex praesentium commodi aperiam quis non voluptates iusto distinctio doloribus enim necessitatibus! Quae vel alias sequi?</p>\r\n<p>velit veritatis voluptate ratione earum odio, porro, iste explicabo optio , hic voluptas eligendi cupiditate, itaque ab quas eveniet maiores in officiis aspernatur incidunt consequatur laboriosam quibusdam. Nesciunt possimus qui incidunt distinctio cumque?.</p>', 1, '2023-05-09 06:53:31', '6-facts-until-you-reach-your-student', '', ''),
(3, 'Student On A Budget: 6 Tips From The Great Depression', 'student-on-a-budget-6-tips-from-the-great-depression', 'test', '2023-05-09', 'Student On A Budget: 6 Tips From The Great Depression_4770_blog-3.jpg', '<p>sit amet consectetur adipisicing elit. A placeat, sint ab non ratione eligendi qui facilis numquam magnam eius iusto perferendis minima molestiae perspiciatis laborum saepe quo consectetur aliquid!</p>\r\n<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eius in ipsam ratione facere vero iste repudiandae beatae quasi, voluptate mollitia iusto harum error reiciendis eligendi molestiae eum? Assumenda nesciunt odio, maxime ratione sint possimus quae, numquam laborum cum, voluptatem, aliquam obcaecati excepturi quidem ex praesentium commodi aperiam quis non voluptates iusto distinctio doloribus enim necessitatibus! Quae vel alias sequi?</p>\r\n<p>velit veritatis voluptate ratione earum odio, porro, iste explicabo optio , hic voluptas eligendi cupiditate, itaque ab quas eveniet maiores in officiis aspernatur incidunt consequatur laboriosam quibusdam. Nesciunt possimus qui incidunt distinctio cumque?.</p>', '<p>sit amet consectetur adipisicing elit. A placeat, sint ab non ratione eligendi qui facilis numquam magnam eius iusto perferendis minima molestiae perspiciatis laborum saepe quo consectetur aliquid!</p>\r\n<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eius in ipsam ratione facere vero iste repudiandae beatae quasi, voluptate mollitia iusto harum error reiciendis eligendi molestiae eum? Assumenda nesciunt odio, maxime ratione sint possimus quae, numquam laborum cum, voluptatem, aliquam obcaecati excepturi quidem ex praesentium commodi aperiam quis non voluptates iusto distinctio doloribus enim necessitatibus! Quae vel alias sequi?</p>\r\n<p>velit veritatis voluptate ratione earum odio, porro, iste explicabo optio , hic voluptas eligendi cupiditate, itaque ab quas eveniet maiores in officiis aspernatur incidunt consequatur laboriosam quibusdam. Nesciunt possimus qui incidunt distinctio cumque?.</p>', 1, '2023-05-09 06:56:34', 'student-on-a-budget-6-tips-from-the-great-depression', 'test', 'vvb');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`id`, `title`, `image`, `description`, `slug`, `status`, `seo_title`, `seo_description`, `created_at`) VALUES
(1, 'RNV', 'RNV_3337_download.png', '', 'rnv', '1', '', '', '2023-05-03 12:46:26'),
(2, 'stepmeds', 'stepmeds_9766_rnv_logo-removebg-preview.png', '', 'stepmeds', '1', '', '', '2023-07-28 05:39:22'),
(3, 'stepmeds', 'stepmeds_159_rnv_logo-removebg-preview.png', '', 'stepmeds', '1', '', '', '2023-07-28 05:39:40'),
(4, 'stepmeds', 'stepmeds_7656_rnv_logo-removebg-preview.png', '', 'stepmeds', '1', '', '', '2023-07-28 05:39:47'),
(5, 'stepmeds', 'stepmeds_3608_rnv_logo-removebg-preview.png', '', 'stepmeds', '1', '', '', '2023-07-28 05:39:54'),
(6, 'stepmeds', 'stepmeds_9933_rnv_logo-removebg-preview.png', '', 'stepmeds', '1', '', '', '2023-07-28 05:40:08'),
(7, 'stepmeds', 'stepmeds_5061_rnv_logo-removebg-preview.png', '', 'stepmeds', '1', '', '', '2023-07-28 05:40:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cart_id` int(100) NOT NULL,
  `product_qty` varchar(100) NOT NULL,
  `product_cookie` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `cart_price` int(100) NOT NULL,
  `size` varchar(200) NOT NULL,
  `product_color` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `size_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cart_id`, `product_qty`, `product_cookie`, `product_id`, `cart_price`, `size`, `product_color`, `status`, `size_id`) VALUES
(1, '1', 25517, 2, 150, 'S', 'Red', 0, 5),
(2, '1', 25517, 2, 250, 'L', 'Black', 0, 7),
(3, '3', 96023, 2, 90, '', '', 0, 0),
(4, '1', 96023, 1, 90, '', '', 0, 0),
(5, '1', 25517, 2, 90, '', '', 0, 0),
(6, '1', 96023, 3, 90, '', '', 1, 0),
(7, '1', 96023, 1, 90, '', '', 1, 0),
(8, '1', 96023, 5, 999, '', '', 1, 0),
(9, '1', 96023, 5, 3500, 'L', '', 1, 3),
(10, '2', 25517, 3, 90, '', '', 0, 0),
(11, '1', 70415, 1, 90, '', '', 1, 0),
(12, '1', 78641, 3, 90, '', '', 1, 0),
(13, '1', 72937, 4, 90, '', '', 1, 0),
(14, '1', 98093, 3, 90, '', '', 1, 0),
(15, '1', 98093, 2, 90, '', '', 1, 0),
(16, '1', 90044, 1, 90, '', '', 1, 0),
(17, '1', 5474, 6, 355, '', '', 1, 0),
(18, '1', 6927, 6, 355, '', '', 1, 0),
(19, '1', 51394, 6, 355, '', '', 1, 0),
(20, '1', 64059, 10, 445, 'MEDIUM', '', 1, 23),
(21, '1', 51394, 13, 445, '', '', 1, 0),
(22, '2', 89513, 16, 855, '', '', 1, 0),
(23, '1', 72717, 20, 315, '', '', 1, 0),
(24, '1', 4695, 11, 535, '', '', 0, 0),
(25, '1', 76707, 11, 535, '', '', 0, 0),
(26, '1', 4695, 16, 855, '', '', 0, 0),
(27, '1', 76707, 10, 445, '', '', 0, 0),
(28, '1', 20390, 21, 675, '', '', 0, 0),
(29, '1', 20390, 16, 855, '', '', 0, 0),
(30, '1', 20390, 8, 355, '', '', 0, 0),
(31, '1', 20390, 8, 355, 'MEDIUM', '', 0, 13),
(32, '1', 20390, 20, 315, '', '', 1, 0),
(33, '1', 76707, 16, 855, '', '', 1, 0),
(34, '2', 94701, 8, 355, '', '', 1, 0),
(35, '1', 94701, 16, 855, '', '', 1, 0),
(36, '1', 55694, 21, 675, '', '', 0, 0),
(37, '1', 94701, 12, 355, '', '', 1, 0),
(38, '1', 94701, 12, 395, 'MEDIUM', '', 1, 43),
(39, '1', 4695, 8, 355, '', '', 0, 0),
(40, '2', 4695, 8, 355, '', '', 1, 0),
(41, '1', 28083, 8, 355, '', '', 1, 0),
(42, '2', 8458, 20, 315, '', '', 0, 0),
(43, '1', 8458, 29, 10, '', '', 0, 0),
(44, '1', 31167, 26, 1215, '', '', 0, 0),
(45, '1', 31167, 9, 495, '', '', 0, 0),
(46, '1', 8767, 21, 675, '', '', 1, 0),
(47, '1', 9804, 21, 675, '', '', 0, 0),
(48, '2', 6212, 8, 355, '', '', 1, 0),
(49, '2', 73648, 9, 495, '', '', 1, 0),
(50, '1', 92496, 8, 355, '', '', 1, 0),
(51, '1', 77989, 8, 355, '', '', 1, 0),
(52, '1', 29815, 34, 355, '', '', 1, 0),
(53, '1', 82487, 9, 495, '', '', 1, 0),
(54, '1', 25484, 8, 355, '', '', 1, 0),
(55, '1', 66990, 37, 199, '', '', 1, 0),
(56, '1', 18297, 34, 355, '', '', 1, 0),
(57, '1', 63344, 10, 445, '', '', 1, 0),
(58, '1', 19747, 16, 855, '', '', 1, 0),
(59, '1', 57953, 43, 495, '', '', 1, 0),
(60, '1', 11307, 52, 266, '', '', 0, 0),
(61, '1', 11307, 52, 266, '', '', 0, 0),
(62, '01', 11307, 67, 531, '', '', 0, 0),
(63, '1', 11307, 57, 252, '', '', 0, 0),
(64, '1', 11307, 10, 445, '', '', 0, 0),
(65, '1', 11307, 9, 495, '', '', 1, 0),
(66, '1', 85745, 57, 252, '', '', 0, 0),
(67, '2', 85745, 57, 252, '', '', 0, 0),
(68, '1', 85745, 16, 855, '', '', 1, 0),
(69, '1', 62162, 57, 252, '', '', 1, 0),
(70, '1', 3037, 80, 266, '', '', 1, 0),
(71, '1', 62162, 80, 266, '', '', 1, 0),
(72, '1', 66278, 52, 266, '', '', 0, 0),
(73, '1', 66278, 32, 175, '', '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_number` int(255) NOT NULL,
  `category_name` varchar(200) NOT NULL,
  `category_image` varchar(250) NOT NULL,
  `category_slug` varchar(500) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `listed_home_page` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `top` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `website_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_number`, `category_name`, `category_image`, `category_slug`, `status`, `listed_home_page`, `created_at`, `updated_at`, `top`, `description`, `website_id`) VALUES
(1, 0, 'KNEE SUPPORT', '', 'knee-support', 1, '', '2023-05-03 18:09:47', '2023-07-21 18:08:19', 0, '', 0),
(2, 0, 'ELBOW SUPPORT', '', 'elbow-support', 1, '', '2023-05-03 18:10:55', '2023-07-26 12:09:14', 0, '', 0),
(3, 0, 'ANKLE SUPPORT', '', 'ankle-support', 1, '', '2023-05-03 18:35:38', '2023-07-21 18:08:33', 0, '', 0),
(4, 12, 'tedgfgf', 'tedgfgf_333_Screenshot (1).png', 'tedgfgf', 0, '1', '2023-05-16 15:10:40', '2023-05-19 14:42:39', 0, '<p>mnhnhg</p>', 0),
(5, 4, 'Other', 'Other_4422_', 'other', 0, '', '2023-06-27 16:19:28', '2023-07-18 14:12:53', 0, '<p>kinesiology tape</p>', 0),
(6, 0, 'WRIST SUPPORT', '', 'wrist-support', 1, '', '2023-06-27 16:22:38', '2023-07-21 18:07:23', 0, '', 0),
(7, 0, 'OTHERS', '', 'others', 1, '', '2023-07-20 13:09:46', '2023-07-21 12:16:09', 0, '', 0),
(8, 0, 'WAIST TRIMMER', 'WAIST TRIMMER_8293_', 'waist-trimmer', 1, '', '2023-07-20 16:32:01', '2023-07-20 16:32:01', 0, '', 0),
(9, 0, 'THERAPEUTIC PRODUCTS', 'THERAPEUTIC PRODUCTS_8717_', 'therapeutic-products', 1, '', '2023-07-27 15:47:42', '2023-07-27 15:47:42', 0, '', 0),
(10, 0, 'GYM ACCESSORIES', 'GYM ACCESSORIES_2693_', 'gym-accessories', 1, '', '2023-07-27 16:19:45', '2023-07-27 16:19:45', 0, '', 0),
(11, 0, 'SHIN & CALF SUPPORT', '', 'shin-calf-support', 1, '', '2023-08-11 14:57:52', '2023-08-11 14:58:10', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_gallery`
--

CREATE TABLE `tbl_category_gallery` (
  `gallery_id` int(11) NOT NULL,
  `image` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client_login_log`
--

CREATE TABLE `tbl_client_login_log` (
  `client_log` int(11) NOT NULL,
  `client_id` varchar(50) NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  `last_login_date_time` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_color`
--

CREATE TABLE `tbl_color` (
  `color_id` int(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1,
  `product_id` int(100) NOT NULL,
  `color_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_color`
--

INSERT INTO `tbl_color` (`color_id`, `color`, `create_at`, `updated_at`, `status`, `product_id`, `color_name`) VALUES
(1, 'Biorganic_4192_p1.jpg', '2023-06-01 08:44:20', '2023-06-01 08:44:20', 0, 2, ''),
(2, 'Biorganic_6940_p1.jpg', '2023-06-01 08:44:44', '2023-06-01 08:44:44', 0, 2, ''),
(3, 'Biorganic_8387_p1.jpg', '2023-06-01 08:45:06', '2023-06-01 08:45:06', 0, 2, ''),
(4, 'Biorganic_4535_p1.jpg', '2023-06-01 08:45:17', '2023-06-01 08:45:17', 0, 2, ''),
(5, 'Biorganic_8145_p1.jpg', '2023-06-01 08:45:35', '2023-06-01 08:45:35', 0, 2, ''),
(6, 'Biorganic_3413_istockphoto-1402604850-612x612.jpg', '2023-06-03 12:50:36', '2023-06-03 12:50:36', 1, 2, 'Red'),
(7, 'Biorganic_6964_pay-button.png', '2023-06-03 12:50:48', '2023-06-03 12:50:48', 1, 2, 'Blue'),
(8, 'Biorganic_2783_RNV_3337_download.png', '2023-06-03 12:51:01', '2023-06-03 12:51:01', 1, 2, 'Black'),
(9, 'Biorganic_3152_', '2023-07-10 10:20:17', '2023-07-10 10:20:17', 1, 6, 'Red'),
(10, 'Biorganic_4329_0Y7A2963.JPG', '2023-09-19 12:55:30', '2023-09-19 12:55:30', 0, 34, 'Red');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `user_id` int(100) NOT NULL,
  `customer_fname` varchar(100) NOT NULL,
  `customer_lname` varchar(100) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_mobile` varchar(100) NOT NULL,
  `customer_password` varchar(100) NOT NULL,
  `customer_password1` varchar(100) NOT NULL,
  `customer_school1` varchar(100) NOT NULL,
  `customer_school2` varchar(100) NOT NULL,
  `customer_company` varchar(100) NOT NULL,
  `customer_companyid` varchar(100) NOT NULL,
  `customer_address1` text NOT NULL,
  `customer_address2` text NOT NULL,
  `customer_city` varchar(100) NOT NULL,
  `customer_pincode` varchar(100) NOT NULL,
  `customer_country` varchar(100) NOT NULL,
  `customer_state` varchar(100) NOT NULL,
  `customer_status` int(11) NOT NULL DEFAULT 1,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `google_id` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `apartment` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `profile` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`user_id`, `customer_fname`, `customer_lname`, `customer_email`, `customer_mobile`, `customer_password`, `customer_password1`, `customer_school1`, `customer_school2`, `customer_company`, `customer_companyid`, `customer_address1`, `customer_address2`, `customer_city`, `customer_pincode`, `customer_country`, `customer_state`, `customer_status`, `create_at`, `updated_at`, `google_id`, `date`, `user_name`, `password`, `apartment`, `gender`, `profile`) VALUES
(1, 'Vishal', 'Arya', 'haldwani@gmail.com', '7804554455', '659d12b6fc0f5ad38881cce4da53e4c9', 'VishLA', '', '', 'infowebsoftware', '', 'haldwani', '', 'haldwani', '243433', 'India', 'uttarakhand', 1, '2023-05-19 08:32:29', '2023-05-19 08:32:29', '', '', '', '', '', '', ''),
(2, 'Aamil', 'Ansari', 'aamilansari011@gmail.com', '65656565', 'b65144978dc56a6d503c5ea2faa8dc95', '786321', '', '', 'hgfgf', '', 'News', '', 'haldwani', 'ff', 'Ã…land Islands', 'Andhra Pradesh', 1, '2023-05-23 06:02:52', '2023-05-23 06:02:52', '', '', '', '', 'fhfgf', 'Male', 'man-avatar-profile1.png'),
(3, 'riya', 'sharma', 'sharma@gmail.com', '', 'd90f44a3f64889fa239caee3c6d22707', '1323432', '', '', '', '', '', '', '', '', '', '', 1, '2023-06-03 05:37:21', '2023-06-03 05:37:21', '', '', '', '', '', '', ''),
(4, 'kailash', 'joshi', 'kailash210111@gmail.com', '9627407876', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', 'iws', '', 'Delancey Street', '', 'New York', '10002', 'India', 'New York', 1, '2023-06-06 16:23:29', '2023-06-06 16:23:29', '', '', '', '', '', '', ''),
(5, 'kailash', 'joshi', 'project210111@gmail.com', '', '64ff20849f5a4846aa8a82afc19d7962', '210111', '', '', '', '', '', '', '', '', '', '', 1, '2023-06-06 16:32:32', '2023-06-06 16:32:32', '', '', '', '', '', '', ''),
(6, 'kailash', 'joshi', 'opinionpaymehelp@gmail.com', '', '827ccb0eea8a706c4c34a16891f84e7b', '12345', '', '', '', '', '', '', '', '', '', '', 1, '2023-06-08 06:39:41', '2023-06-08 06:39:41', '', '', '', '', '', '', ''),
(7, 'Arpit', 'Sharma', 'arpit_roxxo@live.com', '', '76cdfaa66ab5197e104b4c8388012401', 'India693@@', '', '', '', '', '', '', '', '', '', '', 1, '2023-06-24 05:20:38', '2023-06-24 05:20:38', '', '', '', '', '', '', ''),
(8, 'aamil', 'ansari', 'aamilansari@gmail.com', '', 'b65144978dc56a6d503c5ea2faa8dc95', '786321', '', '', '', '', 'golget nagla dery farm udham singh nagar', '', 'pantnager', '263149', 'India', 'Uttarakhand', 1, '2023-07-01 10:41:56', '2023-07-01 10:41:56', '', '', '', '', 'golget nagla dery farm udham singh nagar', 'Male', 'Screenshot 2023-07-01 111954.png'),
(9, 'Neetu', 'Gulati', 'neetugulati077@gmail.com', '', '97a16bd048bb982400932e21dd72f4b2', 'rnv@240701', '', '', '', '', '', '', '', '', '', '', 1, '2023-09-08 12:26:28', '2023-09-08 12:26:28', '', '', '', '', '', '', ''),
(10, 'Neetu', 'Gulati', 'neetugulati077@gmail.com', '9873170681', '97a16bd048bb982400932e21dd72f4b2', 'rnv@240701', '', '', '', '', 'B4A/23, 3rd Floor, Rana Pratap Bagh', '', 'Delhi', '110007', 'India', 'India', 1, '2023-09-11 10:02:24', '2023-09-11 10:02:24', '', '', '', '', '', '', ''),
(11, 'neetu', 'gulati', 'gulatineetu0701@gmail.com', '9873170681', '699ebc89ac7dd4fb9149a1e58740866e', 'vasu@3893', '', '', '', '', 'b4a/23, rana pratap bagh', '', 'delhi', '110007', 'India', 'indai', 1, '2023-09-23 09:26:40', '2023-09-23 09:26:40', '', '', '', '', '', 'Female', ''),
(12, 'vasu', 'gulati', 'vasugulati012004@gmail.com', '9911330202', '25f9e794323b453885f5181f1b624d0b', '123456789', '', '', 'hiralal surgicals', '', 'b4a/23 rana pratap bagh', '', 'DELHI', '110007', 'India', 'delhi', 1, '2023-10-06 07:19:46', '2023-10-06 07:19:46', '', '', '', '', '', '', ''),
(13, 'testing', 'testing', 'testing@gmail.com', '', '81dc9bdb52d04dc20036dbd8313ed055', '1234', '', '', '', '', '', '', '', '', '', '', 1, '2023-10-06 07:46:33', '2023-10-06 07:46:33', '', '', '', '', '', '', ''),
(14, 'test', 'test', 'fuoxw3@gmail.com', '', '81dc9bdb52d04dc20036dbd8313ed055', '1234', '', '', '', '', '', '', '', '', '', '', 1, '2024-01-03 10:01:28', '2024-01-03 10:01:28', '', '', '', '', '', '', ''),
(15, 'cavin', 'kan', 'jaxis31721@usoplay.com', '', 'b59c67bf196a4758191e42f76670ceba', '1111', '', '', '', '', '', '', '', '', '', '', 0, '2024-07-15 09:34:02', '2024-07-15 09:34:02', '', '', '', '', '', '', ''),
(16, 'Developer', 'testing', 'jhon@11.com', '0213555391', 'e10adc3949ba59abbe56e057f20f883e', '123456', '', '', 'xyz', '', '822 E. 20th Street', '', 'los angeles', '900117', 'India', 'California', 1, '2024-12-17 10:11:19', '2024-12-17 10:11:19', '', '', '', '', '', '', ''),
(17, 'jhon', 'Doe', 'aadi@11.com', '02135553911', 'e10adc3949ba59abbe56e057f20f883e', '123456', '', '', 'IWS', '', '822 E. 20th Street', '', 'los angeles', '90011', 'India', 'California', 1, '2024-12-17 10:38:13', '2024-12-17 10:38:13', '', '', '', '', '', '', ''),
(18, 'cavin', 'kan', 'jaxis31721@usoplay.com', '', 'b59c67bf196a4758191e42f76670ceba', '1111', '', '', '', '', '', '', '', '', '', '', 1, '2025-01-19 08:32:53', '2025-01-19 08:32:53', '', '', '', '', '', '', ''),
(19, 'Rajat', 'Sharma', 'rs9222425@gmail.com', '', '7d0540d6753c07f2535cf2854643b078', 'Rajat@123', '', '', '', '', '', '', '', '', '', '', 1, '2025-02-03 05:07:08', '2025-02-03 05:07:08', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer1`
--

CREATE TABLE `tbl_customer1` (
  `id` int(11) NOT NULL,
  `customer_fname` varchar(100) NOT NULL,
  `customer_email` varchar(250) NOT NULL,
  `customer_password` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_delivery_assign`
--

CREATE TABLE `tbl_delivery_assign` (
  `delivery_assign_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `pickup_employee_id` int(11) NOT NULL,
  `rider_employee_id` int(11) NOT NULL,
  `delivered_status` varchar(100) NOT NULL DEFAULT 'Out for delivery',
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `user_id` varchar(50) NOT NULL,
  `printer_name` varchar(250) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `employee_id` int(11) NOT NULL,
  `employee_name` varchar(150) NOT NULL,
  `employee_contact` varchar(20) NOT NULL,
  `employee_email` varchar(150) NOT NULL,
  `employee_type` varchar(50) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `employee_address` longtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `emp_status` varchar(20) NOT NULL DEFAULT 'Active',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_enquiry`
--

CREATE TABLE `tbl_enquiry` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_enquiry`
--

INSERT INTO `tbl_enquiry` (`id`, `name`, `email`, `subject`, `message`, `status`, `created_at`) VALUES
(1, 'test', 'test@gmail.com', '', 'hello', '1', '2023-05-10 07:15:01'),
(2, 'arshi', 'shaanchouhan01@gmail.com', '', 'hyy', '1', '2023-06-03 05:22:37'),
(3, 'kailash joshi', 'kailash210111@gmail.com', '', 'test', '1', '2023-06-06 16:30:18'),
(4, 'NEETU', 'NEETUGULATI077@GMAIL.COM', '', 'HI...', '1', '2024-07-02 10:31:26'),
(5, 'Raymondsluri', 'no.reply.SanderJohnson@gmail.com', '', 'Hi! rnvsportsindia.com \r\n \r\nDid you know that it is possible to send letter convincingly and lawfully? \r\nWhen such letters are sent, no personal data is utilized, and messages are sent to securely-designed forms that are specifically meant to receive mess', '1', '2024-08-05 14:50:37'),
(6, 'Amelia Brown', 'ameliabrown12784@gmail.com', '', 'Hi there,\r\n\r\nWe run a YouTube growth service, which increases your number of subscribers both safely and practically.\r\n\r\nWe go beyond just subscriber numbers. We focus on attracting viewers genuinely interested in your niche, leading to long-term engageme', '1', '2024-08-19 21:15:36'),
(7, 'Mike Daniels\r\n', 'mikearerceHes@gmail.com', '', 'Hi there \r\nI just checked rnvsportsindia.com ranks and am sorry to bring this up, but it lacks in many areas. \r\n \r\nUnfortunately, building a bunch of links won\'t solve the issue in this case, and a more comprehensive strategy is required. Google has under', '1', '2024-08-20 18:02:57'),
(8, 'Joanna Riggs', 'joannariggs243@gmail.com', '', 'Hi,\r\n\r\nI just visited rnvsportsindia.com and wondered if you\'d ever thought about having an engaging video to explain what you do?\r\n\r\nOur prices start from just $195.\r\n\r\nLet me know if you\'re interested in seeing samples of our previous work.\r\n\r\nRegards,\r', '1', '2024-08-21 06:37:18'),
(9, 'Valeron83sycle', 'menhos7@rambler.ru', '', 'Hello! \r\nAn amazing site for playing online casinos every day, a lot of unusual games and large jackpots for the current evening -https://dub.sh/Tm2uIwS  \r\n \r\nGood luck :)', '1', '2024-08-22 04:05:14'),
(10, 'Mike Warren\r\n', 'mikearerceHes@gmail.com', '', 'Hi there, \r\n \r\nWhile checking your rnvsportsindia.com for its ranks, I have noticed that there are some toxic links pointing towards it. \r\n \r\nGrab your free clean up and improve ranks in no time \r\nhttps://www.hilkom-digital.net/free-cleanup/ \r\n \r\nIt reall', '1', '2024-08-29 09:11:16'),
(11, 'Mike Thomson\r\n', 'mikearerceHes@gmail.com', '', 'Hello, \r\n \r\nHey, I\'m Mike from Monkey Digital. We offer a highly popular service that costs only 10$ per 5000 social ads visits. \r\n \r\nMore info:Â  \r\nhttps://www.seomonkey.net/country-visits/ \r\n \r\nTracking will be sent the same day, the advertisement goes ', '1', '2024-09-05 23:52:08'),
(12, 'TedScefe', 'kayleighbpsteamship@gmail.com', '', 'Xin chÃ o, tÃ´i muá»‘n biáº¿t giÃ¡ cá»§a báº¡n.', '1', '2024-09-06 10:05:54'),
(13, 'TedScefe', 'yjdisantoyjdissemin@gmail.com', '', 'Dia duit, theastaigh uaim do phraghas a fhÃ¡il.', '1', '2024-09-09 17:42:13'),
(14, 'TedScefe', 'kayleighbpsteamship@gmail.com', '', 'Ndewo, achá»rá» m á»‹mara á»ná»¥ahá»‹a gá»‹.', '1', '2024-09-11 15:30:39'),
(15, 'Mike Austin\r\n', 'mikearerceHes@gmail.com', '', 'Hello \r\nThis is Mike Austin\r\nfrom Strictly Digital \r\n \r\nLet me present to you our latest discovered from the SEO environment. \r\nWe have noticed that getting backlinks from websites that have high SEO metrics values doesn\'t always help, and in fact, what i', '1', '2024-09-12 15:33:37'),
(16, 'Mike Parson\r\n', 'mikearerceHes@gmail.com', '', 'Hi there, \r\n \r\nMy name is Mike from Monkey Digital, \r\n \r\nAllow me to present to you a lifetime revenue opportunity of 35% \r\nThat\'s right, you can earn 35% of every order made by your affiliate for life. \r\n \r\nSimply register with us, generate your affiliat', '1', '2024-09-14 12:45:29'),
(17, 'Amelia Brown', 'ameliabrown12784@gmail.com', '', 'Hi there,\r\n\r\nWe run a Youtube growth service, where we can increase your subscriber count safely and practically.\r\n\r\nWhat We Offer:\r\n\r\nGuaranteed Results: We guarantee to deliver between 700 and 1500 new subscribers each month, depending on which package ', '1', '2024-09-19 14:09:37'),
(18, 'DavidScefe', 'kayleighbpsteamship@gmail.com', '', 'Hi, áƒ›áƒ˜áƒœáƒ“áƒáƒ“áƒ áƒ•áƒ˜áƒªáƒáƒ“áƒ” áƒ—áƒ¥áƒ•áƒ”áƒœáƒ˜ áƒ¤áƒáƒ¡áƒ˜.', '1', '2024-09-21 08:56:11'),
(19, 'TedScefe', 'kayleighbpsteamship@gmail.com', '', 'Hai, saya ingin tahu harga Anda.', '1', '2024-09-25 03:41:39'),
(20, 'Winston', 'redfordwinston54@gmail.com', '', 'Winston here from Iowa. I\'m always watching to see what newer sites are going up and I just wanted to see if you would like an extra hand with getting some targeted traffic, Create custom AI bots to answer questions from visitors on your site or walk them', '1', '2024-09-27 15:39:50'),
(21, 'Joanna Riggs', 'joannariggs278@gmail.com', '', 'Hi,\r\n\r\nWe\'d like to introduce to you our explainer video service, which we feel can benefit your site rnvsportsindia.com.\r\n\r\nCheck out a couple of our existing videos here:\r\nhttps://www.youtube.com/watch?v=bA2DyChM4Oc\r\nhttps://www.youtube.com/watch?v=JG33', '1', '2024-09-30 05:28:11'),
(22, 'MasonScefe', 'yjdisantoyjdissemin@gmail.com', '', 'Dia duit, theastaigh uaim do phraghas a fhÃ¡il.', '1', '2024-10-03 11:35:36'),
(23, '<strong><a href=\"https://pr-site.com\">primer-1</a></strong>', 'thomaskingial13@gmail.com', '', '<strong><a href=\"https://pr-site.com\">primer-8</a></strong>', '1', '2024-10-06 04:22:42'),
(24, 'TedScefe', 'kayleighbpsteamship@gmail.com', '', 'Xin chÃ o, tÃ´i muá»‘n biáº¿t giÃ¡ cá»§a báº¡n.', '1', '2024-10-07 09:11:56'),
(25, 'Gary Charles', 'gary-charles@dominatingkeywords.com', '', 'No more waiting for SEO and high Pay Per Click charges! With technology that we developed, you can achieve top-ranking placements on Google and Bing without SEO or Pay Per Click. Simply provide your target keywords, and watch your website soar to the numb', '1', '2024-10-08 06:56:19'),
(26, 'Lottie Thompson', 'lottiethompson@mail.co.uk', '', 'Hey,\r\n\r\nWe run a Facebook service, which increases your number of fans/followers safely and practically.\r\n\r\nThis can be for a page, a group, or an individual profile.\r\n\r\n- 400+ followers per month.\r\n- Real people who follow your page/group/profile because', '1', '2024-10-08 11:10:05'),
(27, 'Diego Becker\r\n', 'strictlyseoxxx@gmail.com', '', 'Hi there, \r\n \r\nWant to supercharge your website\'s growth? Our Semrush Backlinks come from domains ranking for 5,000+ keywords, ensuring you get high-quality, authoritative links that will improve your SEO and help grow your business online. This is a powe', '1', '2024-10-08 18:53:38'),
(28, 'TedScefe', 'kayleighbpsteamship@gmail.com', '', 'Xin chÃ o, tÃ´i muá»‘n biáº¿t giÃ¡ cá»§a báº¡n.', '1', '2024-10-09 18:45:13'),
(29, 'MasonScefe', 'ebojajuje04@gmail.com', '', 'Zdravo, htio sam znati vaÅ¡u cijenu.', '1', '2024-10-11 00:51:59'),
(30, 'MasonScefe', 'duqotayowud23@gmail.com', '', 'Hallo, ek wou jou prys ken.', '1', '2024-10-12 07:16:38'),
(31, 'DavidScefe', 'ibucezevuda439@gmail.com', '', 'Salam, qiymÉ™tinizi bilmÉ™k istÉ™dim.', '1', '2024-10-14 03:42:24'),
(32, 'RobertScefe', 'ixutikob077@gmail.com', '', 'Kaixo, zure prezioa jakin nahi nuen.', '1', '2024-10-15 07:42:24'),
(33, 'Barbara Hicks', 'barbarahicks@mail.co.uk', '', 'Hi,\r\n\r\nI\'ve visited rnvsportsindia.com and was wondering if you would be interested in promoting your site to our audience of up to 30 million? \r\nWe can also leverage our 3.4 million social media followers to boost your visibility.\r\n\r\nWe handle the entire', '1', '2024-10-15 21:06:48'),
(34, 'Amelia Brown', 'ameliabrown12784@gmail.com', '', 'Hi there,\r\n\r\nWe run a YouTube growth service, which increases your number of subscribers both safely and practically.\r\n\r\n- We guarantee to gain you 700-1500+ subscribers per month.\r\n- People subscribe because they are interested in your channel/videos, in', '1', '2024-10-16 05:15:06'),
(35, 'Joanna Riggs', 'joannariggs278@gmail.com', '', 'Hi,\r\n\r\nI just visited rnvsportsindia.com and wondered if you\'d ever thought about having an engaging video to explain what you do?\r\n\r\nOur prices start from just $195.\r\n\r\nLet me know if you\'re interested in seeing samples of our previous work.\r\n\r\nRegards,\r', '1', '2024-10-17 11:42:19'),
(36, 'Search Engine Index', 'sheena.goodell@gmail.com', '', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://SearchRegister.net/', '1', '2024-10-17 20:17:45'),
(37, 'Christian Olsen\r\n', 'info@speedseo.top', '', 'Hi there, \r\n \r\nIs your website struggling with poor rankings? An SEO-friendly web design is the key to fixing that! We specialize in creating responsive, optimized websites that enhance user experience and improve your search engine rankings. \r\n \r\nStart g', '1', '2024-10-19 11:29:52'),
(38, 'Werner Simonson\r\n', 'info@professionalseocleanup.com', '', 'Hi there, \r\n \r\nWhile checking your rnvsportsindia.com for its ranks, I have noticed that there are some toxic links pointing towards it. \r\n \r\nGrab your free clean up and improve ranks in no time \r\nhttps://www.professionalseocleanup.com/ \r\n \r\nIt really wor', '1', '2024-10-21 08:53:28'),
(39, 'Andreas Ntritsos', 'terradigitasales@gmail.com', '', 'Hi, I just wanted to ask you a question:\r\n\r\nWould you like to get your own e-Learning Website preloaded with 250 video courses ready to sell and keep 100% of the profits, use them as lead magnets or as a bonus to your existing customers or audience?\r\n\r\nIf', '1', '2024-10-21 18:10:42'),
(40, 'Felicity Sauncho', 'felicitysauncho@gmail.com', '', 'Hi there,\r\n\r\nWe run a Youtube growth service, where we can increase your subscriber count safely and practically. \r\n\r\n- Guaranteed: We guarantee to gain you 700-1500 new subscribers each month.\r\n- Real, human subscribers who subscribe because they are int', '1', '2024-10-22 00:25:16'),
(41, 'Search Engine Index', 'edgell.delores@gmail.com', '', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://SearchRegister.net', '1', '2024-10-26 20:25:04'),
(42, 'MasonScefe', 'somasesokiyo31@gmail.com', '', 'Hola, volia saber el seu preu.', '1', '2024-10-27 04:57:49'),
(43, 'TedScefe', 'axobajigufo34@gmail.com', '', 'à¦¹à¦¾à¦‡, à¦†à¦®à¦¿ à¦†à¦ªà¦¨à¦¾à¦° à¦®à§‚à¦²à§à¦¯ à¦œà¦¾à¦¨à¦¤à§‡ à¦šà§‡à¦¯à¦¼à§‡à¦›à¦¿à¦²à¦¾à¦®.', '1', '2024-10-27 15:36:03'),
(44, 'Search Engine Index', 'tonja.castello@hotmail.com', '', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://SearchRegister.net', '1', '2024-10-27 18:41:57'),
(45, 'RobertScefe', 'ixutikob077@gmail.com', '', 'Ndewo, achá»rá» m á»‹mara á»ná»¥ahá»‹a gá»‹.', '1', '2024-10-29 17:11:40'),
(46, 'James Cook', 'jamescook312@outlook.com', '', 'Dear sir/ma \r\nWe are a finance and investment company offering loans at 3% interest rate. We will be happy to make a loan available to your organisation for your project. Our terms and conditions will apply. Our term sheet/loan agreement will be sent to y', '1', '2024-10-31 00:18:25'),
(47, 'MasonScefe', 'ebojajuje04@gmail.com', '', 'Î“ÎµÎ¹Î± ÏƒÎ¿Ï…, Î®Î¸ÎµÎ»Î± Î½Î± Î¼Î¬Î¸Ï‰ Ï„Î·Î½ Ï„Î¹Î¼Î® ÏƒÎ±Ï‚.', '1', '2024-10-31 12:13:55'),
(48, 'Mike Blare\r\n', 'mikexxxx@gmail.com', '', 'i there, \r\n \r\nLooking to improve your website\'s local rankings? We offer Country Targeted Backlinks to help you dominate your niche. With backlinks from high-quality, local domains, your website will see increased relevance, traffic, and authority in your', '1', '2024-11-03 14:00:49'),
(49, 'MasonScefe', 'duqotayowud23@gmail.com', '', 'Hi, I wanted to know your price.', '1', '2024-11-04 01:26:16'),
(50, 'Mike Fulton\r\n', 'mikexxxx@gmail.com', '', 'Hi there \r\nWe have a special connection with a reputable Network that gives us the possibility to offer Social Ads Country Targeted and niche traffic for just 10$ for 10000 Visits. \r\n \r\nDepending on the Country, we can send larger volumes of ads traffic. ', '1', '2024-11-04 07:09:00'),
(51, 'TedScefe', 'axobajigufo34@gmail.com', '', 'Hi, ego volo scire vestri pretium.', '1', '2024-11-05 03:58:47'),
(52, 'Robertelurl', 'yasen.krasen.13+94318@mail.ru', '', 'Ojwdjiowkdeofjeij ifsfhoewdfeifhweui hieojkaskdfwjfghewejif eiwhfufdawdijwehfuihewguih jeifjeweijeruigherug rnvsportsindia.com', '1', '2024-11-06 13:17:48'),
(53, 'Mike Jenkin\r\n', 'mikexxxx@gmail.com', '', 'Hi there \r\n \r\nHaving some bunch of links pointing to rnvsportsindia.com could have 0 value or worse for your website, It really doesn`t matter how many backlinks you have, what matters is the amount of keywords those websites rank for. That is the most im', '1', '2024-11-06 18:53:09'),
(54, 'GeorgeScefe', 'ibucezevuda439@gmail.com', '', 'Sawubona, bengifuna ukwazi intengo yakho.', '1', '2024-11-07 09:48:36'),
(55, 'Mike Julien Goossens\r\n', 'mikexxxx@gmail.com', '', 'Hello, \r\n \r\nThis is Mike Warren\r\n from Monkey Digital, \r\nI am reaching out to you like webmaster to webmaster, towards a mutual opportunity. How would you like to put our banners on your site and link back via your affiliate link towards hot selling servi', '1', '2024-11-09 00:27:02'),
(56, 'Renato Peck', 'peck.renato54@outlook.com', '', 'Looking to attract millions of viewers to your website or video affordably? For Details: http://y21kba.formblastmarketing.top', '1', '2024-11-11 14:41:26'),
(57, 'Thank you for registering - it was incredible and pleasant all the best cucumber  ladonna 815510', 'xrum010@24red.ru', '', 'Thank you for registering - it was incredible and pleasant all the best http://yandex.ru ladonna  cucumber', '1', '2024-11-11 20:50:19'),
(58, 'MPC Team', 'jamescook131389312@outlook.com', '', 'Get Ready for the Future of Merchant Payment Banking: Pre-Launch Sign Up at https://moneypoolscash.com/! \r\n \r\nBe among the first to experience the revolutionary services of MoneyPoolsCash.com, a cutting-edge Merchant Payment NeoBank designed to enhance yo', '1', '2024-11-13 10:57:20'),
(59, 'Search Engine Index', 'baughman.lelia@outlook.com', '', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://SearchRegister.net', '1', '2024-11-13 16:52:22'),
(60, 'Thank you for registering - it was incredible and pleasant all the best http://yandex.ru ladonna  cucumber', 'xrum013@24red.ru', '', '', '1', '2024-11-15 00:10:34'),
(61, 'HarryScefe', 'ibucezevuda439@gmail.com', '', 'Aloha, makemake wau eÊ»ike i kÄu kumukÅ«Ê»ai.', '1', '2024-11-15 13:32:40'),
(62, 'JohnScefe', 'somasesokiyo31@gmail.com', '', 'Hallo, ek wou jou prys ken.', '1', '2024-11-15 16:59:57'),
(63, 'TedScefe', 'axobajigufo34@gmail.com', '', 'Zdravo, htio sam znati vaÅ¡u cijenu.', '1', '2024-11-16 12:03:31'),
(64, 'Joanna Riggs', 'joannariggs94@gmail.com', '', 'Hi,\r\n\r\nWe\'d like to introduce to you our explainer video service, which we feel can benefit your site rnvsportsindia.com.\r\n\r\nCheck out a couple of our existing videos here:\r\nhttps://www.youtube.com/watch?v=bA2DyChM4Oc\r\nhttps://www.youtube.com/watch?v=JG33', '1', '2024-11-16 16:40:01'),
(65, 'Mike Adrian\r\n', 'mikexxxx@gmail.com', '', 'Hi there, \r\n \r\nI recently reviewed the rankings for rnvsportsindia.com, and Iâ€™m sorry to say that there are several areas where it\'s underperforming. \r\n \r\nUnfortunately, simply building more links wonâ€™t fix the problem. With Googleâ€™s major updates o', '1', '2024-11-16 18:59:19'),
(66, 'GreenScefe', 'duqotayowud23@gmail.com', '', 'Hi, roeddwn i eisiau gwybod eich pris.', '1', '2024-11-19 06:03:35'),
(67, 'dracer5', 'info@tukabali.com', '', 'Want all the contact details of businesses in your city? IÐ²Ð‚â„¢ll get it done quickly and efficiently. https://telegra.ph/Personalized-Contact-Data-Extraction-from-Google-Maps-10-03 (or telegram: @chamerion)', '1', '2024-11-21 12:29:31'),
(68, 'MasonScefe', 'ebojajuje04@gmail.com', '', 'Hi, kam dashur tÃ« di Ã§mimin tuaj', '1', '2024-11-22 18:40:33'),
(69, 'Search Engine Index', 'submissions@searchindex.site', '', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://SearchRegister.info/\r\n\r\n\r\n\r\n', '1', '2024-11-22 21:19:05'),
(70, 'Katelyn Raiden', 'katelynraiden@gmail.com', '', 'Hi there,\r\n\r\nWe run a Youtube growth service, where we can increase your subscriber count safely and practically. \r\n\r\n- Guaranteed: We guarantee to gain you 700-1500 new subscribers each month.\r\n- Real, human subscribers who subscribe because they are int', '1', '2024-11-23 11:07:21'),
(71, 'Filip Davies\r\n', 'no-replyarerceHes@gmail.com', '', 'Hi, \r\n \r\nI recently checked rnvsportsindia.com, and thereâ€™s great potential to take your Google rankings to the next level. With our Premium SEO Plan, you can unlock that potential and see measurable improvements. \r\nBlack Friday Offer â€“ 50% Off (Recur', '1', '2024-11-23 11:46:48'),
(72, 'GeorgeScefe', 'ibucezevuda439@gmail.com', '', 'Salut, ech wollt Ã„re PrÃ¤is wÃ«ssen.', '1', '2024-11-25 17:45:59'),
(73, 'Mike Archibald\r\n', 'mikexxxx@gmail.com', '', 'Hi there \r\nWe have a special connection with a reputable Network that gives us the possibility to offer Social Ads Country Targeted and niche traffic for just 10$ for 10000 Visits. \r\n \r\nDepending on the Country, we can send larger volumes of ads traffic. ', '1', '2024-11-28 10:55:42'),
(74, 'HarryScefe', 'ibucezevuda439@gmail.com', '', 'Sveiki, es gribÄ“ju zinÄt savu cenu.', '1', '2024-11-30 12:33:53'),
(75, 'Phil Stewart', 'michel.paget@outlook.com', '', 'Transform your business reach with our ad-blasting service. For one flat rate, we send your message to millions of website contact forms. No per click costs - just pure results. Try it now!\r\n\r\n Feel free to contact me using the details below if you want t', '1', '2024-12-01 03:48:00'),
(76, 'MichealSoact', 'raymondarerceHes@gmail.com', '', 'Howdy-ho! rnvsportsindia.com \r\n \r\nDid you know that it is possible to send appeal perfectly lawful and Ð¡Ð‚ermitted? \r\nWhen such messages are sent, no personal data is used, and messages are sent to forms specifically designed to receive and process messa', '1', '2024-12-02 04:14:05'),
(77, 'Search Engine Index', 'michel.mullawirraburka@googlemail.com', '', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://SearchRegister.net', '1', '2024-12-02 17:20:35'),
(78, 'TedScefe', 'axobajigufo34@gmail.com', '', 'Sawubona, bengifuna ukwazi intengo yakho.', '1', '2024-12-02 21:11:55'),
(79, 'TedScefe', 'axobajigufo34@gmail.com', '', 'Hi, I wanted to know your price.', '1', '2024-12-04 03:15:26'),
(80, 'Springassorty', 'soluingtec@gmail.com', '', 'Need more clients for your business? Order targeted contact data from local establishments and watch your outreach soar. https://telegra.ph/Personalized-Contact-Data-Extraction-from-Google-Maps-10-03 (or telegram: @chamerion)', '1', '2024-12-04 11:01:52'),
(81, 'Mike Arthurs\r\n', 'mikexxxx@gmail.com', '', 'Hi there \r\n \r\nHaving some bunch of links pointing to rnvsportsindia.com could have 0 value or worse for your website, It really doesn`t matter how many backlinks you have, what matters is the amount of keywords those websites rank for. That is the most im', '1', '2024-12-07 09:36:58'),
(82, 'Mike Jan-Olof Persson\r\n', 'mikexxxx@gmail.com', '', 'Hello, \r\n \r\nThis is Mike Davidson\r\n from Monkey Digital, \r\nI am reaching out to you like webmaster to webmaster, towards a mutual opportunity. How would you like to put our banners on your site and link back via your affiliate link towards hot selling ser', '1', '2024-12-08 23:54:06'),
(83, 'Felicity Sauncho', 'felicitysauncho02@gmail.com', '', 'Hi there,\r\n\r\nWe run a Youtube growth service, where we can increase your subscriber count safely and practically. \r\n\r\n- Guaranteed: We guarantee to gain you 700-1500 new subscribers each month.\r\n- Real, human subscribers who subscribe because they are int', '1', '2024-12-09 04:28:17'),
(84, 'AmeliaScefe', 'yawiviseya67@gmail.com', '', 'Hai, saya ingin tahu harga Anda.', '1', '2024-12-10 12:39:34'),
(85, 'Kristal Celestine', 'celestine.kristal@gmail.com', '', 'If your business processed Visa or Mastercard payments from 2004 to 2019, you may be entitled to compensation from a $5.54 billion settlement fund.\r\nDon\'t delayâ€”claims must be submitted by February 4, 2025.\r\nStart your claim here: http://cardsettlement.', '1', '2024-12-11 18:29:24'),
(86, 'Search Engine Index', 'gabriele.coulter45@hotmail.com', '', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://SearchRegister.net', '1', '2024-12-12 20:13:30'),
(87, 'Joey Carrico', 'carrico.joey@yahoo.com', '', 'Ready to save on gas and so much more? With our membership, starting at just $20/month, youâ€™ll enjoy global savings designed for your lifestyle! í ¼í¼Ÿ\r\ní ½í³² https://kristi.savingshighwayglobal.com/?page=membership\r\n\r\nSmart savings are just a click aw', '1', '2024-12-12 20:53:55'),
(88, 'Search Engine Index', 'submissions@searchindex.site', '', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://SearchRegister.info/\r\n\r\n\r\n\r\n', '1', '2024-12-12 23:15:20'),
(89, 'ioioi', 'kkbuss909@gmail.com', '', 'Looking for business contact details? Let me do the hard work for you! Get all the info you need for just $30 https://telegra.ph/Personalized-Contact-Data-Extraction-from-Google-Maps-10-03 (or telegram: @chamerion)', '1', '2024-12-13 02:15:59'),
(90, 'GeorgeScefe', 'ibucezevuda439@gmail.com', '', 'Ciao, volevo sapere il tuo prezzo.', '1', '2024-12-13 07:16:58'),
(91, 'JohnScefe', 'arikerer278@gmail.com', '', 'Salam, qiymÉ™tinizi bilmÉ™k istÉ™dim.', '1', '2024-12-14 04:24:53'),
(92, 'Mike Hans Andersen\r\n', 'mikexxxx@gmail.com', '', 'Hi, \r\n \r\nCurious about how your website is performing? Discover its strengths and weaknesses with our Free SEO Check Tool! In just 2 minutes, youâ€™ll get a detailed analysis of your websiteâ€™s SEO health and actionable insights to help improve your rank', '1', '2024-12-14 15:44:20'),
(93, 'plumber_gdkn', 'alnacentflyc1988@stomatolog4-3d-printery.store', '', 'ÐÑƒÐ¶Ð½Ð° ÑÐ°Ð½Ñ‚ÐµÑ…Ð½Ð¸Ñ‡ÐµÑÐºÐ°Ñ Ð¿Ð¾Ð¼Ð¾Ñ‰ÑŒ? ÐžÐ±Ñ€Ð°Ñ‚Ð¸Ñ‚ÐµÑÑŒ Ðº Ð½Ð°ÑˆÐ¸Ð¼ Ð¼Ð°ÑÑ‚ÐµÑ€Ð°Ð¼!, Ð›ÑƒÑ‡ÑˆÐ¸Ðµ Ñ€ÐµÑˆÐµÐ½Ð¸Ñ Ð´Ð»Ñ Ð²Ð°ÑˆÐµÐ³Ð¾ ÑÐ°Ð½Ñ‚ÐµÑ…Ð½Ð¸Ñ‡ÐµÑÐºÐ¾Ð³Ð¾ Ð¾Ð±Ð¾Ñ€ÑƒÐ´Ð¾Ð²Ð°Ð½Ð¸Ñ. \r\nÐšÐ°Ñ‡ÐµÑÑ‚Ð²ÐµÐ½Ð½Ñ‹Ð¹ Ñ€ÐµÐ¼Ð¾Ð½Ñ‚ Ð²', '1', '2024-12-15 07:47:30'),
(94, 'JohnScefe', 'arikerer278@gmail.com', '', 'Ola, querÃ­a saber o seu prezo.', '1', '2024-12-15 14:50:01'),
(95, 'NAERTERHTE1444901NEYRTHYT', 'kristinehaman1913@quieresmail.com', '', 'MEYJYTJY1444901MAMYJRTH', '1', '2024-12-16 04:03:36'),
(96, 'HarryScefe', 'ibucezevuda439@gmail.com', '', 'ÕˆÕ²Õ»Õ¸Ö‚ÕµÕ¶, Õ¥Õ½ Õ¸Ö‚Õ¦Õ¸Ö‚Õ´ Õ§Õ« Õ«Õ´Õ¡Õ¶Õ¡Õ¬ Õ±Õ¥Ö€ Õ£Õ«Õ¶Õ¨.', '1', '2024-12-16 18:14:39'),
(97, 'TedScefe', 'moqagides18@gmail.com', '', 'Sveiki, aÅ¡ norÄ—jau suÅ¾inoti jÅ«sÅ³ kainÄ….', '1', '2024-12-18 16:26:34'),
(98, 'TedScefe', 'moqagides18@gmail.com', '', 'Hai, saya ingin tahu harga Anda.', '1', '2024-12-18 19:22:35'),
(99, 'Chanda Picot', 'chanda.picot@msn.com', '', 'Are you tired of expensive and ineffective marketing strategies? Our service sends your ad text to millions of website contact forms at a flat rate. No extra costs. Your message will be read and noticed.\r\n\r\n Let me know if youâ€™d like more informationâ€”', '1', '2024-12-18 19:32:58'),
(100, '', '', '', '', '1', '2024-12-20 11:25:25'),
(101, 'Joanna Riggs', 'joannariggs94@gmail.com', '', 'Hi,\r\n\r\nI just visited rnvsportsindia.com and wondered if you\'d ever thought about having an engaging video to explain what you do?\r\n\r\nOur prices start from just $195.\r\n\r\nLet me know if you\'re interested in seeing samples of our previous work.\r\n\r\nRegards,\r', '1', '2024-12-20 17:11:23'),
(102, 'MasonScefe', 'ebojajuje04@gmail.com', '', 'Î“ÎµÎ¹Î± ÏƒÎ¿Ï…, Î®Î¸ÎµÎ»Î± Î½Î± Î¼Î¬Î¸Ï‰ Ï„Î·Î½ Ï„Î¹Î¼Î® ÏƒÎ±Ï‚.', '1', '2024-12-20 21:57:52'),
(103, 'Search Engine Index', 'calderon.reva@gmail.com', '', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://SearchRegister.net', '1', '2024-12-22 17:28:07'),
(104, 'TedScefe', 'moqagides18@gmail.com', '', 'Ndewo, achá»rá» m á»‹mara á»ná»¥ahá»‹a gá»‹.', '1', '2024-12-25 17:29:31'),
(105, 'DauriDuh', 'sjuxknb7@yahoo.com', '', 'Your account has been dormant for 364 days. To avoid deletion and retrieve your balance, please access your account and request a payout within 24 hours. For help, visit our Telegram group: https://t.me/s/attention6786741', '1', '2024-12-25 19:44:18'),
(106, 'Felicity Sauncho', 'felicitysauncho02@gmail.com', '', 'Hi there,\r\n\r\nWe run a YouTube growth service, which increases your number of subscribers both safely and practically.\r\n\r\n- We guarantee to gain you 700-1500+ subscribers per month.\r\n- People subscribe because they are interested in your channel/videos, in', '1', '2024-12-28 03:30:46'),
(107, 'Ruben Houtman', 'houtman.ruben@gmail.com', '', 'Hi there,\r\n\r\nWeâ€™re excited to introduce Mintsuite, the ultimate platform to enhance your online presence and drive results. Mintsuite empowers you to create stunning websites, manage social media like a pro, and generate traffic effortlessly.\r\n\r\nCreate ', '1', '2024-12-29 13:48:33'),
(108, 'GeorgeScefe', 'ibucezevuda439@gmail.com', '', 'Dia duit, theastaigh uaim do phraghas a fhÃ¡il.', '1', '2024-12-30 10:13:48'),
(109, 'HarryScefe', 'ibucezevuda439@gmail.com', '', 'Hi, kam dashur tÃ« di Ã§mimin tuaj', '1', '2024-12-31 13:06:52'),
(110, 'TedScefe', 'moqagides18@gmail.com', '', 'Hola, volia saber el seu preu.', '1', '2024-12-31 14:49:21'),
(111, 'DauriDuh', '132mdynr@yahoo.com', '', 'Your account has been inactive for 364 days. To stop deletion and retrieve your funds, please access your account and initiate a withdrawal within 24 hours. For help, connect with us on our Telegram group: https://t.me/s/attention567564', '1', '2024-12-31 17:42:42'),
(112, 'Betty Kee', 'betty.kee@yahoo.com', '', 'Transform your business reach with our ad-blasting service. For one flat rate, we send your message to millions of website contact forms. No per click costs - just pure results. Try it now!\r\n\r\n Let me know if youâ€™d like more informationâ€”my contact inf', '1', '2024-12-31 22:01:46'),
(113, 'Maxie Macon', 'macon.maxie@gmail.com', '', 'Hey there, I apologize for using your contact form, but I wasn\'t sure who the right person was to speak with in your company.\r\n\r\nI want to ask you if you\'re interested in buying/renting Google Ads accounts with free spending ads credit limit of 10k monthl', '1', '2025-01-02 06:31:23'),
(114, 'Search Engine Index', 'dossett.stephany@gmail.com', '', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://SearchRegister.net', '1', '2025-01-03 18:15:15'),
(115, 'Veronique Nona', 'veronique.nona@hotmail.com', '', 'Donâ€™t Let Upfront Costs Drive Clients Away. Are you losing business because clients canâ€™t afford the upfront costs? Without flexible financing options, you risk losing valuable opportunities. Let Client Financing and Credee help you secure more client', '1', '2025-01-04 22:01:37'),
(116, 'DauriDuh', 'argr5az6@yahoo.com', '', 'Your account has been inactive for 364 days. To avoid removal and retrieve your balance, please sign in and request a withdrawal within 24 hours. For support, visit our Telegram group: https://tinyurl.com/25yx49fa', '1', '2025-01-13 16:05:51'),
(117, 'DauriDuh', 'osajh9we@hotmail.com', '', 'Your account has been dormant for 364 days. To stop removal and retrieve your funds, please log in and request a payout within 24 hours. For help, connect with us on our Telegram group: https://tinyurl.com/27dcaa2m', '1', '2025-01-14 20:34:19'),
(118, 'DauriDuh', 'cb59104a@yahoo.com', '', 'Your account has been inactive for 364 days. To stop deletion and retrieve your funds, please access your account and request a withdrawal within 24 hours. For support, visit our Telegram group: https://tinyurl.com/25vfkk6r', '1', '2025-01-17 07:48:38'),
(119, 'DauriDuh', '6zqnbic2@gmail.com', '', 'Your account has been inactive for 364 days. To avoid removal and retrieve your funds, please access your account and initiate a withdrawal within 24 hours. For help, visit our Telegram group: https://tinyurl.com/288rosr2', '1', '2025-01-18 17:20:22'),
(120, 'Joanna Riggs', 'joannariggs94@gmail.com', '', 'Hi,\r\n\r\nI just visited rnvsportsindia.com and wondered if you\'d ever thought about having an engaging video to explain what you do?\r\n\r\nOur prices start from just $195.\r\n\r\nLet me know if you\'re interested in seeing samples of our previous work. If you are n', '1', '2025-01-19 16:02:37'),
(121, 'Felicity Sauncho', 'felicitysauncho030@gmail.com', '', 'Hi there,\r\n\r\nWe run a Youtube growth service, where we can increase your subscriber count safely and practically. \r\n\r\n- Guaranteed: We guarantee to gain you 700-1500 new subscribers each month.\r\n- Real, human subscribers who subscribe because they are int', '1', '2025-01-21 00:54:07'),
(122, 'DauriDuh', 'i8n8ky71@yahoo.com', '', 'Your account has been dormant for 364 days. To stop deletion and claim your balance, please sign in and request a payout within 24 hours. For support, connect with us on our Telegram group: https://tinyurl.com/258j2xwq', '1', '2025-01-21 16:24:17'),
(123, 'Mike Sebastian Kristiansen\r\n', 'mike@monkeydigital.co', '', 'Hi there \r\nWe have a special connection with a reputable Network that gives us the possibility to offer Social Ads Country Targeted and niche traffic for just 10$ for 10000 Visits. \r\n \r\nDepending on the Country, we can send larger volumes of ads traffic. ', '1', '2025-01-22 23:06:36'),
(124, 'Jermaine Mahomet', 'mahomet.jermaine@gmail.com', '', 'Need AI tools for video creation, content generation, or text-to-speech? These 3 Amazing AI Tools are what you need: \r\n**Create videos  \r\n**Generate high-quality content  \r\n**Convert text into speech  \r\nStart using them today! http://3amazingaitools.top/\r', '1', '2025-01-24 01:41:49'),
(125, 'Nelly Taul', 'taul.nelly@yahoo.com', '', 'Tired of paying for advertising that doesn\'t work? With our service, you can send your ad text to millions of website contact forms for one flat rate. People will read your message just like you\'re reading this one - and there are no per click costs. Get ', '1', '2025-01-24 07:22:18'),
(126, 'Search Engine Index', 'roxana.darke@msn.com', '', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://SearchRegister.net', '1', '2025-01-24 17:38:37'),
(127, 'TedScefe', 'moqagides18@gmail.com', '', 'Kaixo, zure prezioa jakin nahi nuen.', '1', '2025-01-24 22:53:39'),
(128, 'Roxie Dallachy', 'dallachy.roxie@msn.com', '', 'Cutting-edge AI tools to the rescue! With these tools, you can: \r\n**Create videos in minutes  \r\n**Generate written content with ease  \r\n**Convert text to speech  \r\nSay goodbye to content creation stress and hello to productivity. http://3amazingaitools.to', '1', '2025-01-25 02:36:07'),
(129, 'Mike Daniel Johnson\r\n', 'info@digitalxflow.com', '', 'Hi there, \r\n \r\nLooking to improve your website\'s local rankings? We offer Country Targeted Backlinks to help you dominate your niche. With backlinks from high-quality, local domains, your website will see increased relevance, traffic, and authority in you', '1', '2025-01-26 11:49:11'),
(130, 'HarryScefe', 'ibucezevuda439@gmail.com', '', 'Sawubona, bengifuna ukwazi intengo yakho.', '1', '2025-01-27 02:31:52'),
(131, 'Kevin Barber', 'orville.tivey@hotmail.com', '', 'Hi Rnvsportsindia,\r\n\r\nA great logo doesnâ€™t just look goodâ€”it builds trust with your audience. I found this tool that lets you create a custom logo in minutes, giving your brand the professional look it deserves.\r\n\r\nItâ€™s easy to use, and the results ', '1', '2025-01-27 04:22:52'),
(132, 'neetu', 'gulatineetu0701@gmail.com', '', 'can\'t make the payment', '1', '2025-01-28 10:31:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_home_banner`
--

CREATE TABLE `tbl_home_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_home_banner`
--

INSERT INTO `tbl_home_banner` (`banner_id`, `name`, `image`, `status`, `created_at`) VALUES
(1, 'Antibacterial Mask & Sanitizer', 'Biorganic_3594_slider-img2.jpg', 0, '2023-05-09 11:09:43'),
(2, 'Electronical Brushes', 'Biorganic_8237_h3-slider1.jpg', 0, '2023-05-09 11:10:13'),
(3, 'Medical Products & Supplies | Cardinal Health', 'Biorganic_4165_New Project (25).png', 0, '2023-06-26 15:18:10'),
(4, 'Medical Products & Supplies | Cardinal Health', 'Biorganic_3906_banner4.png', 0, '2023-06-26 15:19:58'),
(5, 'Stay in the game...', 'Biorganic_6720_3087925e-ee67-4903-a6a8-a75dbbe070b1.JPG', 0, '2023-07-21 13:58:34'),
(6, 'Stay in the game...', 'Biorganic_5514_66d0946e-6506-42d5-b762-1b6e16c3ef92.JPG', 0, '2023-07-21 13:59:24'),
(7, 'Stay in the game...', 'Biorganic_7684_JR-1,  2.JPG', 0, '2023-07-25 16:10:54'),
(8, 'Stay in the game...', 'Biorganic_7936_DSC_7889.JPG', 0, '2023-07-25 16:13:35'),
(9, 'Stay in the game...', 'Biorganic_7337_banne.jpg', 0, '2023-07-28 10:02:21'),
(10, 'Stay in the game...', 'Biorganic_936_bannw.jpg', 0, '2023-07-28 10:08:54'),
(11, 'Stay in the game...', 'Biorganic_3610_bannw.jpg', 0, '2023-07-28 10:09:55'),
(12, 'Stay in the game...', 'Biorganic_8722_bannw1.jpg', 0, '2023-07-28 10:10:52'),
(13, 'Stay in the game...', 'Biorganic_6367_bannw2.jpg', 0, '2023-07-28 10:11:29'),
(14, 'Stay in the game...', 'Biorganic_7658_bannw3.jpg', 0, '2023-07-28 10:12:09'),
(15, 'Stay in the game...', 'Biorganic_1409_axcasc.jpg', 0, '2023-08-01 13:34:50'),
(16, 'Men\'s Bracelayer Tights - Knee Sleeve', 'Biorganic_7526_bann.jpg', 0, '2023-08-01 13:42:24'),
(17, 'Men\'s Bracelayer Tights - Knee Sleeve', 'Biorganic_3120_Untitled-2.jpg', 0, '2023-08-01 13:54:01'),
(18, 'Stay in the game...', 'Biorganic_8591_SHOULDER SUPPORT.JPG', 1, '2023-08-03 17:29:54'),
(19, 'Stay in the game...', 'Biorganic_8548_DSC_7729.JPG', 1, '2023-08-03 17:30:39'),
(20, 'Stay in the game...', 'Biorganic_3187_DSC_7995.JPG', 1, '2023-08-03 17:31:51'),
(21, 'Stay in the game...', 'Biorganic_6043_DSC_7816.JPG', 1, '2023-08-03 17:32:40'),
(22, 'Stay in the game...', 'Biorganic_4357_BAEE6966-B5A2-48E9-9CDC-869D74A4E01C.png', 1, '2023-08-29 14:16:53'),
(23, 'banner', 'Biorganic_484_returnexchngebanner.jpg', 1, '2023-08-30 12:06:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_left_banner`
--

CREATE TABLE `tbl_left_banner` (
  `id` int(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_left_banner`
--

INSERT INTO `tbl_left_banner` (`id`, `image`, `status`, `created_at`) VALUES
(1, 'Biorganic_3152_banner-img.jpg', '0', '2023-06-26 09:39:00'),
(2, 'Biorganic_8556_banner-img2.jpg', '0', '2023-06-26 09:39:39'),
(3, 'Biorganic_5247_IMG-20230512-WA0021.jpg', '0', '2023-07-21 06:44:24'),
(4, 'Biorganic_8464_IMG-20230512-WA0035.jpg', '0', '2023-06-26 09:40:09'),
(5, 'Biorganic_353_IMG-20230512-WA0037 (1).jpg', '0', '2023-07-21 06:44:26'),
(6, 'Biorganic_8669_3087925e-ee67-4903-a6a8-a75dbbe070b1.JPG', '1', '2023-07-21 08:27:29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_location`
--

CREATE TABLE `tbl_location` (
  `location_id` int(11) NOT NULL,
  `location_name` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_location_map`
--

CREATE TABLE `tbl_location_map` (
  `mapping_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login_log`
--

CREATE TABLE `tbl_login_log` (
  `log_id` int(11) NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  `last_login_date_time` datetime NOT NULL DEFAULT current_timestamp(),
  `user_id` varchar(50) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_newsletter`
--

CREATE TABLE `tbl_newsletter` (
  `newsletter_id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_newsletter`
--

INSERT INTO `tbl_newsletter` (`newsletter_id`, `email`, `status`, `created_at`) VALUES
(1, 'vishalarya089@gmail.com', 0, '2023-05-27 02:09:32'),
(2, 'vishalarya089@gmail.com', 0, '2023-05-27 02:10:09'),
(3, 'vishalarya089@gmail.com', 0, '2023-05-27 02:10:49'),
(4, 'sharma@gmail.com', 0, '2023-06-03 06:01:46'),
(5, 'k@gmasil.com', 0, '2023-06-06 16:25:47'),
(6, '', 0, '2023-06-07 05:50:29'),
(7, 'neetugulati077@gmail.com', 0, '2023-09-08 12:35:19'),
(8, 'neetugulati077@gmail.com', 0, '2023-09-14 12:01:15'),
(9, 'neetugulati077@gmail.com', 0, '2023-09-14 12:03:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offer`
--

CREATE TABLE `tbl_offer` (
  `offer_id` int(11) NOT NULL,
  `offer_type` varchar(100) NOT NULL,
  `first_product` varchar(25) NOT NULL,
  `attach_product` varchar(25) NOT NULL,
  `discount` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `rate_after_qty` int(11) NOT NULL,
  `date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_management`
--

CREATE TABLE `tbl_order_management` (
  `order_id` int(11) NOT NULL,
  `order_no` varchar(100) NOT NULL,
  `product_id` varchar(110) NOT NULL,
  `qty` int(11) NOT NULL,
  `product_price` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_amt` double NOT NULL,
  `payment_mode` varchar(50) NOT NULL,
  `transaction_id` varchar(100) NOT NULL,
  `address` longtext NOT NULL,
  `order_status` varchar(50) NOT NULL,
  `assign_status` int(11) NOT NULL,
  `order_remarks` varchar(100) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `date` date NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `mobile` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `landmark` varchar(250) NOT NULL,
  `pin` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `payment_status` int(11) NOT NULL DEFAULT 0,
  `new_address` text NOT NULL,
  `bankid` varchar(100) NOT NULL,
  `bank_name` varchar(100) NOT NULL,
  `invoice_number` int(11) NOT NULL,
  `shipping_charge` int(11) NOT NULL,
  `promo_code` varchar(255) NOT NULL,
  `promo_discount` varchar(255) NOT NULL,
  `cart_id` varchar(255) NOT NULL,
  `ship_country` varchar(200) NOT NULL,
  `ship_fname` varchar(200) NOT NULL,
  `ship_lname` varchar(200) NOT NULL,
  `ship_company` varchar(200) NOT NULL,
  `ship_Address` longtext NOT NULL,
  `ship_apartment` varchar(200) NOT NULL,
  `ship_city` varchar(200) NOT NULL,
  `ship_state` varchar(200) NOT NULL,
  `ship_zipcode` varchar(200) NOT NULL,
  `ship_email` varchar(200) NOT NULL,
  `ship_mobile` varchar(200) NOT NULL,
  `shipp_address` int(11) NOT NULL,
  `client_name` varchar(200) NOT NULL,
  `promo_id` int(11) NOT NULL,
  `size` varchar(100) NOT NULL,
  `product_color` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_order_management`
--

INSERT INTO `tbl_order_management` (`order_id`, `order_no`, `product_id`, `qty`, `product_price`, `total_discount`, `total_amt`, `payment_mode`, `transaction_id`, `address`, `order_status`, `assign_status`, `order_remarks`, `user_id`, `status`, `date`, `created_at`, `mobile`, `email`, `landmark`, `pin`, `state`, `company_name`, `city`, `street`, `payment_status`, `new_address`, `bankid`, `bank_name`, `invoice_number`, `shipping_charge`, `promo_code`, `promo_discount`, `cart_id`, `ship_country`, `ship_fname`, `ship_lname`, `ship_company`, `ship_Address`, `ship_apartment`, `ship_city`, `ship_state`, `ship_zipcode`, `ship_email`, `ship_mobile`, `shipp_address`, `client_name`, `promo_id`, `size`, `product_color`) VALUES
(1, '79399227', '2', 1, 150, 0, 400, 'online', 'pay_LybD8pkRSb7TaT', 'haldwani', 'Success', 0, '', '', 1, '2023-06-06', '2023-06-06 15:14:10', '676767766', 'haldwani@gmail.com', 'haldwani', '677676', 'haldwani', 'iws', 'haldwani', '', 1, '', '', '', 7734579, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'Test Test', 0, 'S', 'Red'),
(2, '79399227', '2', 1, 250, 0, 400, 'online', 'pay_LybD8pkRSb7TaT', 'haldwani', 'Success', 0, '', '', 1, '2023-06-06', '2023-06-06 15:14:10', '676767766', 'haldwani@gmail.com', 'haldwani', '677676', 'haldwani', 'iws', 'haldwani', '', 1, '', '', '', 7734579, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'Test Test', 0, 'L', 'Black'),
(3, '10746306', '2', 3, 90, 0, 270, 'online', 'pay_Lyi168car9fow4', 'Delancey Street', 'Success', 0, '', '', 1, '2023-06-06', '2023-06-06 21:53:29', '9627407876', 'kailash210111@gmail.com', 'Manhattan', '10002', 'New York', 'iws', 'New York', '', 1, '', '', '', 9862460, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'kailash joshi', 0, '', ''),
(4, '18305466', '1', 1, 90, 0, 90, 'online', 'pay_LyiCXf9mykyZMP', 'Delancey Street', 'Success', 0, '', '5', 1, '2023-06-06', '2023-06-06 22:04:25', '9627407876', 'project210111@gmail.com', 'Manhattan', '10002', 'New York', 'iws', 'New York', '', 1, '', '', '', 4075308, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'kailash joshi', 0, '', ''),
(5, '64786462', '2', 1, 90, 9, 90, 'online', 'pay_LzKI0G5XsosYYT', 'test', 'Success', 0, '', '5', 1, '2023-06-08', '2023-06-08 11:19:54', '7867667788', 'project210111@gmail.com', 'test', '645444', 'test', 'test', 'test', '', 1, '', '', '', 5160408, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'kailash joshi', 2, '', ''),
(6, '63396881', '3', 1, 90, 0, 180, 'online', '', 'News', 'Success', 0, '', '2', 1, '2023-07-03', '2023-07-03 16:52:14', '65656565', 'aamilansari011@gmail.com', 'fhfgf', 'ff', 'Andhra Pradesh', 'hgfgf', 'haldwani', '', 0, '', '', '', 5529100, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'Aamil Ansari', 0, '', ''),
(7, '63396881', '2', 1, 90, 0, 180, 'online', '', 'News', 'Success', 0, '', '2', 1, '2023-07-03', '2023-07-03 16:52:14', '65656565', 'aamilansari011@gmail.com', 'fhfgf', 'ff', 'Andhra Pradesh', 'hgfgf', 'haldwani', '', 0, '', '', '', 5529100, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'Aamil Ansari', 0, '', ''),
(8, '70571109', '11', 1, 535, 0, 535, 'online', 'pay_MZjuYVErI1z1J0', 'delhi', 'Success', 0, '', '', 1, '2023-09-08', '2023-09-08 11:47:11', 'test', 'admin@admin.com', '', '11111', 'delhi', 'ABCDs', 'delhi', '', 1, '', '', '', 9062358, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'test text', 0, '', ''),
(9, '8688355', '11', 1, 535, 0, 535, 'online', '', 'Delancey Street', 'Success', 0, '', '', 1, '2023-09-08', '2023-09-08 14:11:22', '9627407876', 'kailash210111@gmail.com', 'Manhattan', '10002', 'New York', 'iws', 'New York', '', 0, '', '', '', 9855795, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'kailash joshi', 0, '', ''),
(10, '1923944', '10', 1, 445, 0, 445, 'online', '', 'Delancey Street', 'Success', 0, '', '', 1, '2023-09-08', '2023-09-08 15:01:13', '9627407876', 'kailash210111@gmail.com', 'Manhattan', '10002', 'New York', 'iws', 'New York', '', 0, '', '', '', 1387309, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'kailash joshi', 0, '', ''),
(11, '45484393', '21', 1, 675, 0, 675, 'online', '', 'B4A/23, 3rd Floor, Rana Pratap Bagh', 'Success', 0, '', '9', 1, '2023-09-08', '2023-09-08 18:02:20', '9873170681', 'neetugulati077@gmail.com', '', '110007', 'India', '', 'Delhi', '', 0, '', '', '', 5652096, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'Neetu Gulati', 0, '', ''),
(12, '65609582', '8', 1, 355, 0, 355, 'online', '', 'B4A/23, 3rd Floor, Rana Pratap Bagh', 'Success', 0, '', '', 1, '2023-09-11', '2023-09-11 15:32:24', '9873170681', 'neetugulati077@gmail.com', '', '110007', 'India', '', 'Delhi', '', 0, '', '', '', 8073513, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'Neetu Gulati', 0, 'MEDIUM', ''),
(13, '26902528', '16', 1, 855, 0, 855, 'online', '', 'Delancey Street', 'Success', 0, '', '', 1, '2023-09-22', '2023-09-22 17:05:41', '9627407876', 'kailash210111@gmail.com', 'Manhattan', '10002', 'New York', 'iws', 'New York', '', 0, '', '', '', 1890035, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'kailash joshi', 0, '', ''),
(14, '88038449', '16', 1, 855, 0, 855, 'online', '', 'Delancey Street', 'Success', 0, '', '', 1, '2023-09-22', '2023-09-22 17:14:17', '9627407876', 'kailash210111@gmail.com', 'Manhattan', '10002', 'New York', 'iws', 'New York', '', 0, '', '', '', 542393, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'kailash joshi', 0, '', ''),
(15, '28767408', '21', 1, 675, 0, 675, 'online', '', 'b4a/23, rana pratap bagh', 'Success', 0, '', '', 1, '2023-09-23', '2023-09-23 14:56:40', '9873170681', 'gulatineetu0701@gmail.com', '', '110007', 'indai', '', 'delhi', '', 0, '', '', '', 4897281, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'neetu gulati', 0, '', ''),
(16, '10597338', '8', 1, 355, 0, 355, 'online', '', 'delhi', 'Success', 0, '', '', 1, '2023-09-23', '2023-09-23 16:05:38', '7696131491', 'admin@gmail.com', '', '11111', 'delhi', 'ABCDs', 'delhi', '', 0, '', '', '', 3582908, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'Vishal Kumar', 0, '', ''),
(17, '81208569', '29', 1, 10, 0, 10, 'online', '841957665611', 'b4a/23 rana pratap bagh', 'Success', 0, '', '', 1, '2023-10-06', '2023-10-06 12:49:46', '9911330202', 'vasugulati012004@gmail.com', '3rd floor ', '110007', 'delhi', 'hiralal surgicals', 'DELHI', '', 1, '', '', '', 142737, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'vasu gulati', 0, '', ''),
(18, '46064608', '16', 1, 855, 0, 855, 'online', '', 'Delancey Street', 'Success', 0, '', '', 1, '2023-10-06', '2023-10-06 13:14:17', '9627407876', 'kailash210111@gmail.com', 'Manhattan', '10002', 'New York', '', 'New York', '', 0, '', '', '', 1874511, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'kailash joshi', 0, '', ''),
(19, '85924554', '26', 1, 1215, 0, 1710, 'online', '844481290006', 'Haldwani', 'Success', 0, '', '13', 1, '2023-10-06', '2023-10-06 13:18:43', '564546', 'testing@gmail.com', '', '1243', 'Uttarakhand', '', 'Nainital', '', 1, '', '', '', 3638050, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'testing testing', 0, '', ''),
(20, '85924554', '9', 1, 495, 0, 1710, 'online', '844481290006', 'Haldwani', 'Success', 0, '', '13', 1, '2023-10-06', '2023-10-06 13:18:43', '564546', 'testing@gmail.com', '', '1243', 'Uttarakhand', '', 'Nainital', '', 1, '', '', '', 3638050, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'testing testing', 0, '', ''),
(21, '893326', '21', 1, 675, 0, 675, 'online', '', 'delhi', 'Success', 0, '', '', 1, '2023-11-09', '2023-11-09 14:22:57', '7696131491', 'vishal@gmail.com', '', '11111', 'delhi', 'IWS', 'delhi', '', 1, '', '', '', 122892, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'Vishal Kumar', 0, '', ''),
(22, '665001', '9', 1, 495, 0, 495, 'online', '', 'Haldwani', 'Success', 0, '', '', 1, '2023-11-18', '2023-11-18 11:03:10', '78966533356', 'arunhld001@gmail.com', '', '1243', 'Uttarakhand', 'info web software', 'Haldwani', '', 0, '', '', '', 8817230, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'testing testing', 0, '', ''),
(23, '804731', '9', 1, 495, 0, 495, 'online', '318497888414', 'Haldwani', 'Success', 0, '', '', 1, '2023-11-18', '2023-11-18 11:04:33', '78966533356', 'arunhld001@gmail.com', '', '1243', 'Uttarakhand', 'info web software', 'Haldwani', '', 1, '', '', '', 1883063, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'testing testing', 0, '', ''),
(24, '426786', '9', 2, 495, 0, 990, 'online', '', 'Haldwani', 'Success', 0, '', '', 1, '2023-11-20', '2023-11-20 11:59:59', '78966533356', 'arunhld001@gmail.com', '', '1243', 'Uttarakhand', 'info web software', 'Haldwani', '', 0, '', '', '', 4900064, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'testing testing', 0, '', ''),
(25, '139112', '8', 1, 355, 0, 355, 'online', '', 'Delancey Street', 'Success', 0, '', '', 1, '2023-11-20', '2023-11-20 12:22:32', '9727898767', 'kailash210111@gmail.com', 'Manhattan', '10002', 'New York', '', 'New York', '', 0, '', '', '', 518023, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'kailash joshi', 0, '', ''),
(26, '680263', '8', 1, 355, 0, 355, 'online', '', 'Delancey Street', 'Success', 0, '', '', 1, '2023-11-21', '2023-11-21 16:28:48', '9627407876', 'kailash210111@gmail.com', 'Manhattan', '10002', 'New York', 'iws', 'New York', '', 0, '', '', '', 8150343, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'kailash joshi', 0, '', ''),
(27, '633457', '8', 1, 355, 0, 355, 'online', '', 'fgf', 'Success', 0, '', '', 1, '2023-11-23', '2023-11-23 16:14:44', '67676767', 'fgfgf@gmail.com', 'fhfg', '56565', 'fhfg', 'ffg', 'fgf', '', 0, '', '', '', 6500035, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'fghfghgf ghgh', 0, '', ''),
(28, '654194', '34', 1, 355, 0, 355, 'online', '', 'Indiranagar', 'Success', 0, '', '', 1, '2023-12-05', '2023-12-05 17:03:03', '09878676789', 'adasn@gmail.com', '', '560092', 'Karnataka', '', 'Bengaluru', '', 0, '', '', '', 2545986, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'scds czx', 0, '', ''),
(29, '99777', '9', 1, 495, 0, 495, 'online', '', '123', 'Success', 0, '', '14', 1, '2024-01-03', '2024-01-03 15:33:54', '1234678954', 'fuoxw3@gmail.com', '', 'a', 'a', '', 'a', '', 0, '', '', '', 3468725, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'test test', 0, '', ''),
(30, '506552', '8', 1, 355, 0, 355, 'online', '', 'Delancey Street', 'Success', 0, '', '', 1, '2024-01-03', '2024-01-03 15:49:25', '9627407876', 'kailash210111@gmail.com', 'Manhattan', '10002', 'New York', 'iws', 'New York', '', 0, '', '', '', 6884947, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'kailash joshi', 0, '', ''),
(31, '864617', '9', 1, 495, 0, 495, 'online', '', '123', 'Success', 0, '', '14', 0, '2024-01-03', '2024-01-03 15:50:43', '1111111111111', 'fuoxw3@gmail.com', '', '110055', 'a', '', 'a', '', 0, '', '', '', 6164973, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'test test', 0, '', ''),
(32, '212743', '16', 1, 855, 0, 855, 'online', '', ' ', 'Success', 0, '', '15', 0, '2024-07-15', '2024-07-15 15:07:04', '  ', 'jaxis31721@usoplay.com', '', ' ', ' ', '', ' ', '', 0, '', '', '', 5042455, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'cavin kan', 0, '', ''),
(33, '626618', '16', 1, 855, 0, 855, 'online', '', ' ', 'Success', 0, '', '15', 0, '2024-07-15', '2024-07-15 15:07:05', '  ', 'jaxis31721@usoplay.com', '', ' ', ' ', '', ' ', '', 0, '', '', '', 3848747, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'cavin kan', 0, '', ''),
(34, '829125', '52', 1, 266, 0, 266, 'online', '', '822 E. 20th Street', 'Success', 0, '', '', 0, '2024-12-17', '2024-12-17 09:39:17', '0213555391', 'jaxis31721@usoplay.com', '', '012454', 'California', 'Salvatore Infotech pvt. ltd.', 'los angeles', '', 0, '', '', '', 7777645, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'testing  from developer', 0, '', ''),
(35, '707114', '43', 1, 495, 0, 495, 'online', '', 'B4A/23, Rana Pratap Bagh', 'Success', 0, '', '', 1, '2024-12-17', '2024-12-17 09:52:29', '9873170681', 'neetugulati077@gmail.com', '', '110007', 'Delhi', '', 'Delhi', '', 0, '', '', '', 6712925, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'neetu gulati', 0, '', ''),
(36, '433577', '43', 1, 495, 0, 495, 'online', '', 'b4a23', 'Success', 0, '', '', 1, '2024-12-17', '2024-12-17 09:56:57', '9873170681', 'neetugulati077@gmail.com', '3', '110007', 'delhi', '', 'delhi', '', 0, '', '', '', 8049909, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'neetu gulati', 0, '', ''),
(37, '874127', '52', 2, 266, 0, 532, 'online', '', '822 E. 20th Street', 'Success', 0, '', '', 0, '2024-12-17', '2024-12-17 10:09:35', '0213555911', 'jaxis31721@usoplay.com', '', '900117', 'California', 'ABC', 'los angeles', '', 0, '', '', '', 2389170, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'Developer testing', 0, '', ''),
(38, '826729', '52', 2, 266, 0, 532, 'online', '', '822 E. 20th Street', 'Success', 0, '', '', 0, '2024-12-17', '2024-12-17 10:11:19', '0213555391', 'jhon@11.com', '', '900117', 'California', 'xyz', 'los angeles', '', 0, '', '', '', 2823879, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'Developer testing', 0, '', ''),
(39, '299611', '52', 2, 266, 0, 532, 'online', '', '822 E. 20th Street', 'Success', 0, '', '16', 0, '2024-12-17', '2024-12-17 10:15:50', '0213555391', 'jhon@11.com', '', '900117', 'California', 'xyz', 'los angeles', '', 0, '', '', '', 5413827, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'Developer testing', 0, '', ''),
(40, '616849', '52', 2, 266, 0, 532, 'online', '', '822 E. 20th Street', 'Success', 0, '', '16', 0, '2024-12-17', '2024-12-17 10:17:35', '0213555391', 'jhon@11.com', '', '900117', 'California', 'xyz', 'los angeles', '', 0, '', '', '', 1982074, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'Developer testing', 0, '', ''),
(41, '429754', '52', 1, 266, 0, 266, 'online', '', '822 E. 20th Street', 'Success', 0, '', '16', 0, '2024-12-17', '2024-12-17 10:23:41', '0213555391', 'jhon@11.com', '', '900117', 'California', 'xyz', 'los angeles', '', 0, '', '', '', 3735984, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'Developer testing', 0, '', ''),
(42, '608894', '52', 1, 266, 0, 266, 'online', '', '822 E. 20th Street', 'Success', 0, '', '16', 0, '2024-12-17', '2024-12-17 10:35:49', '0213555391', 'jhon@11.com', '', '900117', 'California', 'xyz', 'los angeles', '', 0, '', '', '', 5830115, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'Developer testing', 0, '', ''),
(43, '406241', '52', 1, 266, 0, 266, 'online', '', '822 E. 20th Street', 'Success', 0, '', '16', 0, '2024-12-17', '2024-12-17 10:37:03', '0213555391', 'jhon@11.com', '', '900117', 'California', 'xyz', 'los angeles', '', 0, '', '', '', 1603431, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'Developer testing', 0, '', ''),
(44, '46938', '52', 1, 266, 0, 266, 'online', '', '822 E. 20th Street', 'Success', 0, '', '', 0, '2024-12-17', '2024-12-17 10:38:13', '02135553911', 'aadi@11.com', '', '90011', 'California', 'IWS', 'los angeles', '', 0, '', '', '', 7336418, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'jhon Doe', 0, '', ''),
(45, '749643', '52', 1, 266, 0, 266, 'online', '', '822 E. 20th Street', 'Success', 0, '', '16', 0, '2024-12-17', '2024-12-17 10:42:58', '0213555391', 'jhon@11.com', '', '900117', 'California', 'xyz', 'los angeles', '', 0, '', '', '', 9135520, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'Developer testing', 0, '', ''),
(46, '434413', '52', 1, 266, 0, 266, 'online', '', '822 E. 20th Street', 'Success', 0, '', '16', 0, '2024-12-17', '2024-12-17 10:50:11', '0213555391', 'jhon@11.com', '', '900117', 'California', 'xyz', 'los angeles', '', 0, '', '', '', 8191868, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'Developer testing', 0, '', ''),
(47, '901890', '67', 1, 531, 0, 531, 'online', '', 'ABC Road Street-34 , XYZ', 'Success', 0, '', '', 0, '2024-12-20', '2024-12-20 10:41:23', '0213555391', 'jaxis31721@usoplay.com', '', '111111', 'XYZ', 'XYZ', 'ABC', '', 0, '', '', '', 8601287, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'testing developer', 0, '', ''),
(48, '991808', '67', 0, 531, 0, 0, 'online', '', 'Bageshwar', 'Success', 0, '', '', 0, '2024-12-20', '2024-12-20 11:31:35', '02135553', 'jaxis31721@usoplay.com', '', '263642', 'Uttarakhand', 'testing', 'Bageshwar', '', 0, '', '', '', 2747846, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'Gaurav Tiwari', 0, '', ''),
(49, '810895', '67', 1, 531, 0, 531, 'online', '', '822 E. 20th Street', 'Success', 0, '', '16', 0, '2024-12-20', '2024-12-20 11:58:27', '0213555391', 'jhon@11.com', '', '900117', 'California', 'xyz', 'los angeles', '', 0, '', '', '', 5083179, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'Developer testing', 0, '', ''),
(50, '477429', '67', 1, 531, 0, 531, 'online', '', '822 E. 20th Street', 'Success', 0, '', '16', 0, '2024-12-21', '2024-12-21 05:43:03', '0213555391', 'jhon@11.com', '', '900117', 'California', 'xyz', 'los angeles', '', 0, '', '', '', 1772350, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'Developer testing', 0, '', ''),
(51, '735395', '67', 1, 531, 0, 531, 'online', '', '822 E. 20th Street', 'Success', 0, '', '16', 0, '2024-12-21', '2024-12-21 05:48:45', '0213555391', 'jhon@11.com', '', '900117', 'California', 'xyz', 'los angeles', '', 0, '', '', '', 8880535, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'Developer testing', 0, '', ''),
(52, '31262', '67', 1, 531, 0, 531, 'online', '', '822 E. 20th Street', 'Success', 0, '', '16', 0, '2024-12-21', '2024-12-21 06:16:02', '0213555391', 'jhon@11.com', '', '900117', 'California', 'xyz', 'los angeles', '', 0, '', '', '', 2866351, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'Developer testing', 0, '', ''),
(53, '558602', '67', 1, 531, 0, 531, 'online', '', '822 E. 20th Street', 'Success', 0, '', '16', 0, '2024-12-21', '2024-12-21 06:17:47', '0213555391', 'jhon@11.com', '', '900117', 'California', 'xyz', 'los angeles', '', 0, '', '', '', 7097234, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'Developer testing', 0, '', ''),
(54, '306360', '67', 1, 531, 0, 531, 'online', '', '822 E. 20th Street', 'Success', 0, '', '16', 0, '2024-12-21', '2024-12-21 06:22:37', '0213555391', 'jhon@11.com', '', '900117', 'California', 'xyz', 'los angeles', '', 0, '', '', '', 7000820, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'Developer testing', 0, '', ''),
(55, '94329', '67', 1, 531, 0, 531, 'online', 'TXN98266445782', '822 E. 20th Street', 'Success', 0, '', '16', 0, '2024-12-21', '2024-12-21 07:02:37', '0213555391', 'jhon@11.com', '', '900117', 'California', 'xyz', 'los angeles', '', 1, '', '', '', 5966448, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'Developer testing', 0, '', ''),
(56, '205111', '67', 1, 531, 0, 531, 'online', 'TXN338194587126', '822 E. 20th Street', 'Success', 0, '', '16', 0, '2024-12-21', '2024-12-21 07:20:34', '0213555391', 'jhon@11.com', '', '900117', 'California', 'xyz', 'los angeles', '', 1, '', '', '', 8499012, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'Developer testing', 0, '', ''),
(57, '689456', '67', 1, 531, 0, 531, 'online', 'TXN118551148820', '822 E. 20th Street', 'Success', 0, '', '16', 0, '2024-12-21', '2024-12-21 07:48:29', '0213555391', 'jhon@11.com', '', '900117', 'California', 'xyz', 'los angeles', '', 1, '', '', '', 441445, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'Developer testing', 0, '', ''),
(58, '470432', '57', 1, 252, 0, 252, 'online', 'TXN886794688873', '822 E. 20th Street', 'Success', 0, '', '16', 0, '2024-12-21', '2024-12-21 07:59:01', '0213555391', 'jhon@11.com', '', '900117', 'California', 'xyz', 'los angeles', '', 1, '', '', '', 2421822, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'Developer testing', 0, '', ''),
(59, '445917', '10', 1, 445, 0, 445, 'online', '', '822 E. 20th Street', 'Success', 0, '', '16', 0, '2024-12-21', '2024-12-21 08:01:24', '0213555391', 'jhon@11.com', '', '900117', 'California', 'xyz', 'los angeles', '', 0, '', '', '', 9960989, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'Developer testing', 0, '', ''),
(60, '547419', '10', 1, 445, 0, 445, 'online', 'TXN715743366462', '822 E. 20th Street', 'Success', 0, '', '16', 0, '2024-12-21', '2024-12-21 08:07:59', '0213555391', 'jhon@11.com', '', '900117', 'California', 'xyz', 'los angeles', '', 1, '', '', '', 4075971, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'Developer testing', 0, '', ''),
(61, '58346', '10', 1, 445, 0, 445, 'online', 'TXN75548831502', '822 E. 20th Street', 'Success', 0, '', '16', 0, '2024-12-21', '2024-12-21 08:13:58', '0213555391', 'jhon@11.com', '', '900117', 'California', 'xyz', 'los angeles', '', 1, '', '', '', 5188861, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'Developer testing', 0, '', ''),
(62, '627243', '9', 1, 495, 0, 495, 'online', '', '822 E. 20th Street', 'Success', 0, '', '16', 1, '2025-01-03', '2025-01-03 08:37:40', '0213555391', 'jhon@11.com', '', '900117', 'California', 'xyz', 'los angeles', '', 0, '', '', '', 6377314, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'Developer testing', 0, '', ''),
(63, '862900', '57', 1, 252, 0, 252, 'online', '', '822 E. 20th Street', 'Success', 0, '', '', 0, '2025-01-19', '2025-01-19 08:31:31', '02135553911', 'jaxis31721@usoplay.com', '', '900115', 'California', '', 'los angeles', '', 0, '', '', '', 219187, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'cavin test paymentgateway', 0, '', ''),
(64, '589986', '57', 1, 252, 0, 252, 'online', '', '822 E. 20th Street', 'Success', 0, '', '', 0, '2025-01-19', '2025-01-19 08:32:01', '0213555391', 'jaxis31721@usoplay.com', '', '90011', 'California', '', 'los angeles', '', 0, '', '', '', 7535779, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'cavin kan', 0, '', ''),
(65, '157955', '57', 1, 252, 0, 252, 'online', 'TXN578165818252', '822 E. 20th Street', 'Out For Deliverd', 0, '', '18', 0, '2025-01-19', '2025-01-19 08:33:37', '9874563254', 'jaxis31721@usoplay.com', '', '256968', 'California', '', 'los angeles', '', 1, '', '', '', 5205409, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'cavin kan', 0, '', ''),
(66, '269275', '57', 2, 252, 0, 504, 'online', '', '822 E. 20th Street', 'Success', 0, '', '18', 1, '2025-01-19', '2025-01-19 08:39:04', '0213555391', 'jaxis31721@usoplay.com', '', '125456', 'California', '', 'los angeles', '', 0, '', '', '', 4426898, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'cavin kan', 0, '', ''),
(67, '454953', '16', 1, 855, 0, 855, 'online', '', '822 E. 20th Street', 'Success', 0, '', '18', 1, '2025-01-24', '2025-01-24 05:56:44', '9874563214', 'jaxis31721@usoplay.com', '', '90011', 'California', 'IWS', 'los angeles', '', 0, '', '', '', 7221697, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'cavin kan', 0, '', ''),
(68, '691336', '57', 1, 252, 0, 252, 'online', '', '346/1 than singh nagar Anand parvat new delhi', 'Success', 0, '', '', 1, '2025-01-25', '2025-01-25 07:59:19', '09667785262', 'Samroy188@gmail.com', '', '110005', 'Delhi', '4 lac', 'New delhi', '', 0, '', '', '', 2359861, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'SAGAR GUPTA', 0, '', ''),
(69, '904288', '57', 1, 252, 0, 252, 'online', '', '346/1 than singh nagar Anand parvat new delhi', 'Success', 0, '', '', 1, '2025-01-25', '2025-01-25 07:59:44', '09667785262', 'Samroy188@gmail.com', '', '110005', 'Delhi', '4 lac', 'New delhi', '', 0, '', '', '', 7591930, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'SAGAR GUPTA', 0, '', ''),
(70, '263860', '57', 1, 252, 0, 252, 'online', '', 'Anand parbat delhi ', 'Success', 0, '', '', 1, '2025-01-25', '2025-01-25 08:01:14', '09667785262', 'Samroy188@gmail.com', '', '110005', 'India', '4 lac', 'Delhi ', '', 0, '', '', '', 3217440, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'Sagar Gupta ', 0, '', ''),
(71, '319824', '57', 1, 252, 0, 252, 'online', '', '346/1 than singh nagar Anand parvat new delhi', 'Success', 0, '', '', 1, '2025-01-25', '2025-01-25 08:01:41', '09667785262', 'Samroy188@gmail.com', '', '110005', 'Delhi', '4 lac', 'New delhi', '', 0, '', '', '', 8016379, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'SAGAR GUPTA', 0, '', ''),
(72, '479896', '57', 1, 252, 0, 252, 'online', '', '346/1 than singh nagar Anand parvat new delhi', 'Success', 0, '', '', 1, '2025-01-25', '2025-01-25 08:05:40', '09667785262', 'Samroy188@gmail.com', '', '110005', 'Delhi', '4 lac', 'New delhi', '', 0, '', '', '', 2331105, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'SAGAR GUPTA', 0, '', ''),
(73, '674267', '57', 1, 252, 0, 252, 'online', '', '346/1 than singh nagar Anand parvat new delhi', 'Success', 0, '', '', 1, '2025-01-25', '2025-01-25 08:06:12', '9667785262', 'Samroy188@gmail.com', '', '110005', 'Delhi', '4 lac', 'New delhi', '', 0, '', '', '', 3800023, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'SAGAR GUPTA', 0, '', ''),
(74, '52499', '57', 1, 252, 0, 252, 'online', '', '346/1 than singh nagar Anand parvat new delhi', 'Success', 0, '', '', 1, '2025-01-25', '2025-01-25 08:06:38', '9667785262', 'Samroy188@gmail.com', '', '110005', 'Delhi', '', 'New delhi', '', 0, '', '', '', 8249522, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'SAGAR GUPTA', 0, '', ''),
(75, '162851', '52', 1, 266, 0, 266, 'online', '', 'b-4a/23, 3 rd floor', 'Success', 0, '', '', 1, '2025-01-27', '2025-01-27 07:30:12', '9873170681', 'gulatineetu0701@gmail.com', '', '110007', 'India', '', 'Delhi', '', 0, '', '', '', 8649807, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'neetu manocha', 0, '', ''),
(76, '175623', '52', 1, 266, 0, 266, 'online', '', 'b4a/23, rana pratap bagh', 'Success', 0, '', '', 1, '2025-01-27', '2025-01-27 07:37:03', '9873170681', 'gulatineetu0701@gmail.com', '', '110007', 'india', '', 'delhi', '', 0, '', '', '', 7367807, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'neetu gulati', 0, '', ''),
(77, '417687', '52', 1, 266, 0, 266, 'online', '', 'b4a/23, ', 'Success', 0, '', '', 1, '2025-01-28', '2025-01-28 10:29:48', '9873170681', 'gulatineetu0701@gmail.com', 'rana pratap bagh', '110007', 'delhi', '', 'delhi', '', 0, '', '', '', 7799068, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'n g', 0, '', ''),
(78, '625951', '32', 1, 175, 0, 175, 'online', '', 'b4a/23, 3rd floor', 'Success', 0, '', '', 1, '2025-01-29', '2025-01-29 07:37:58', '9873170681', 'gulatineetu0701@gmail.com', 'rana pratap bagh', '110007', 'delhi', '', 'delhi', '', 0, '', '', '', 7170757, 0, '', '', '', 'India', '', '', '', '', '', '', '', '', '', '', 0, 'n g', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pin`
--

CREATE TABLE `tbl_pin` (
  `pin_id` int(11) NOT NULL,
  `pin_code` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `shipping_charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_price`
--

CREATE TABLE `tbl_price` (
  `price_id` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `regular_price` varchar(255) NOT NULL,
  `price` int(100) NOT NULL,
  `price_status` int(11) NOT NULL DEFAULT 1,
  `shipping` varchar(255) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_price`
--

INSERT INTO `tbl_price` (`price_id`, `product_id`, `age`, `regular_price`, `price`, `price_status`, `shipping`, `update_date`) VALUES
(1, 5, 'S', '', 2500, 0, '', '2023-06-01 07:08:41'),
(2, 5, 'M', '', 3000, 0, '', '2023-06-01 07:08:59'),
(3, 5, 'L', '', 3500, 0, '', '2023-06-01 07:09:12'),
(4, 5, 'XL', '', 4000, 0, '', '2023-06-01 07:09:23'),
(5, 2, 'S', '', 150, 0, '', '2023-06-01 07:10:22'),
(6, 2, 'M', '', 200, 0, '', '2023-06-01 07:10:29'),
(7, 2, 'L', '', 250, 0, '', '2023-06-01 07:10:36'),
(8, 2, 'XL', '', 300, 0, '', '2023-06-01 07:10:46'),
(9, 7, 'SMALL', '', 395, 0, '', '2023-07-17 10:40:10'),
(10, 7, 'MEDIUM', '', 395, 0, '', '2023-07-17 10:41:13'),
(11, 7, 'LARGE', '', 395, 0, '', '2023-07-17 10:41:25'),
(12, 8, 'SMALL', '', 355, 1, '', '2023-07-17 11:06:23'),
(13, 8, 'MEDIUM', '', 355, 1, '', '2023-07-17 11:06:30'),
(14, 8, 'LARGE', '', 355, 1, '', '2023-07-17 11:06:37'),
(15, 8, 'X-LARGE', '', 355, 1, '', '2023-07-17 11:06:51'),
(16, 8, 'XX-LARGE', '', 355, 1, '', '2023-07-17 11:07:02'),
(17, 9, 'SMALL', '', 495, 1, '', '2023-07-17 12:03:18'),
(18, 9, 'MEDIUM', '', 495, 1, '', '2023-07-17 12:03:24'),
(19, 9, 'LARGE', '', 495, 1, '', '2023-07-17 12:03:29'),
(20, 9, 'X-LARGE', '', 495, 1, '', '2023-07-17 12:03:34'),
(21, 9, 'XX-LARGE', '', 495, 1, '', '2023-07-17 12:03:40'),
(22, 10, 'SMALL', '', 445, 1, '', '2023-07-17 12:17:38'),
(23, 10, 'MEDIUM', '', 445, 1, '', '2023-07-17 12:17:46'),
(24, 10, 'LARGE', '', 445, 1, '', '2023-07-17 12:18:33'),
(25, 10, 'X-LARGE', '', 445, 1, '', '2023-07-17 12:18:40'),
(26, 10, 'XX-LARGE', '', 445, 1, '', '2023-07-17 12:18:49'),
(27, 11, 'One Size Fits Most', '', 595, 1, '', '2023-07-18 08:14:06'),
(28, 16, 'One Size Fits Most', '', 950, 1, '', '2023-07-19 11:08:52'),
(29, 15, 'SMALL', '', 495, 1, '', '2023-07-19 11:10:20'),
(30, 15, 'MEDIUM', '', 495, 1, '', '2023-07-19 11:10:51'),
(31, 15, 'LARGE', '', 495, 1, '', '2023-07-19 11:10:56'),
(32, 15, 'X-LARGE', '', 495, 1, '', '2023-07-19 11:11:04'),
(33, 14, 'SMALL', '', 395, 1, '', '2023-07-19 11:11:38'),
(34, 14, 'MEDIUM', '', 395, 1, '', '2023-07-19 11:11:46'),
(35, 14, 'LARGE', '', 395, 1, '', '2023-07-19 11:11:52'),
(36, 14, 'X-LARGE', '', 395, 1, '', '2023-07-19 11:12:04'),
(37, 14, 'XX-LARGE', '', 395, 1, '', '2023-07-19 11:12:09'),
(38, 13, 'SMALL', '', 495, 1, '', '2023-07-19 11:28:47'),
(39, 13, 'MEDIUM', '', 495, 1, '', '2023-07-19 11:28:54'),
(40, 13, 'LARGE', '', 495, 1, '', '2023-07-19 11:28:58'),
(41, 13, 'X-LARGE', '', 495, 1, '', '2023-07-19 11:29:04'),
(42, 12, 'SMALL', '', 395, 1, '', '2023-07-19 11:31:55'),
(43, 12, 'MEDIUM', '', 395, 1, '', '2023-07-19 11:32:00'),
(44, 12, 'LARGE', '', 395, 1, '', '2023-07-19 11:32:05'),
(45, 12, 'X-LARGE', '', 395, 1, '', '2023-07-19 11:32:10'),
(46, 12, 'XX-LARGE', '', 395, 1, '', '2023-07-19 11:32:16'),
(47, 11, 'One Size Fits Most', '', 595, 0, '', '2023-07-19 11:33:28'),
(48, 17, 'SMALL', '', 340, 0, '', '2023-07-20 07:53:33'),
(49, 17, 'MEDIUM', '', 340, 0, '', '2023-07-20 07:53:43'),
(50, 17, 'LARGE', '', 340, 0, '', '2023-07-20 07:53:50'),
(51, 17, 'X-LARGE', '', 340, 0, '', '2023-07-20 07:53:57'),
(52, 18, 'One Size Fits Most', '', 595, 1, '', '2023-07-20 11:05:21'),
(53, 19, 'One Size Fits Most', '', 720, 1, '', '2023-07-21 08:54:11'),
(54, 24, '12', '1035', 1150, 1, '', '2023-07-31 09:38:43'),
(55, 24, '18', '1215', 1350, 1, '', '2023-07-31 09:40:04'),
(56, 25, '12', '1215', 1350, 1, '', '2023-07-31 11:10:27'),
(57, 25, '18', '1395', 1550, 1, '', '2023-07-31 11:10:36'),
(58, 26, '12', '1215', 1350, 1, '', '2023-07-31 13:08:17'),
(59, 26, '18\"', '', 1395, 0, '', '2023-07-31 13:08:47'),
(60, 26, '18', '1395', 1550, 1, '', '2023-07-31 13:23:42'),
(61, 27, 'SMALL(Shoe Size4-6)', '', 387, 1, '', '2023-08-01 11:58:57'),
(62, 27, 'MEDIUM(Shoe Size 6-8)', '', 387, 1, '', '2023-08-01 11:59:04'),
(63, 27, 'LARGE( Shoe Size 9-11)', '', 387, 1, '', '2023-08-01 11:59:18'),
(64, 28, 'SMALL(Shoe Size4-6)', '', 855, 1, '', '2023-08-01 12:14:53'),
(65, 28, 'MEDIUM(Shoe Size 6-8)', '', 855, 1, '', '2023-08-01 12:15:06'),
(66, 28, 'LARGE( Shoe Size 9-11)', '', 855, 1, '', '2023-08-01 12:18:41'),
(67, 29, 'Small', '90', 80, 0, '', '2023-08-02 07:52:26'),
(68, 31, 'One Size Fits Most', '395', 355, 1, '', '2023-08-14 12:10:21'),
(69, 32, 'One Size Fits Most', '195', 176, 1, '', '2023-09-11 12:12:06'),
(70, 33, 'One Size Fits Most', '595', 536, 1, '', '2023-09-19 08:52:37'),
(71, 34, 'One Size Fits Most', '395', 355, 1, '', '2023-09-19 12:30:05'),
(72, 35, 'One Size Fits Most', '250', 225, 1, '', '2023-10-16 10:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `brand_id` varchar(255) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `regular_price` int(11) NOT NULL,
  `sale_price` int(11) NOT NULL,
  `discount_price` int(11) NOT NULL,
  `available_stock` int(11) NOT NULL,
  `opening_stock` int(50) NOT NULL,
  `weight` varchar(11) NOT NULL,
  `weight_type` varchar(50) NOT NULL,
  `minimum_order` int(11) NOT NULL,
  `featured_image` varchar(250) NOT NULL,
  `featured_image2` varchar(255) NOT NULL,
  `featured_image3` varchar(255) NOT NULL,
  `short_description` longtext NOT NULL,
  `description` longtext NOT NULL,
  `specification` longtext NOT NULL,
  `product_slug` varchar(250) NOT NULL,
  `is_home` int(11) NOT NULL,
  `category_list` varchar(255) NOT NULL,
  `show_hide` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` date NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `class` varchar(100) NOT NULL,
  `season` varchar(100) NOT NULL,
  `gst` varchar(255) NOT NULL,
  `gst_amount` varchar(255) NOT NULL,
  `shipping_price` varchar(255) NOT NULL,
  `size_chart` varchar(100) NOT NULL,
  `product_code` varchar(100) NOT NULL,
  `featured_product` varchar(100) NOT NULL,
  `new_arraival` varchar(100) NOT NULL,
  `special` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `category_id`, `subcategory_id`, `department_id`, `brand_id`, `product_name`, `supplier_id`, `regular_price`, `sale_price`, `discount_price`, `available_stock`, `opening_stock`, `weight`, `weight_type`, `minimum_order`, `featured_image`, `featured_image2`, `featured_image3`, `short_description`, `description`, `specification`, `product_slug`, `is_home`, `category_list`, `show_hide`, `status`, `created_at`, `updated_at`, `class`, `season`, `gst`, `gst_amount`, `shipping_price`, `size_chart`, `product_code`, `featured_product`, `new_arraival`, `special`) VALUES
(1, 1, 0, 0, '1', 'Surgical Face Disinfection', 0, 100, 90, 0, 0, 0, '', '', 0, '3525102product1.jpg', '', '', '<p class=\"gray-color2\">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms we denounce with righteous indignation and dislike men who are so beguiled with righteous</p>\r\n<p class=\"gray-color2\">But I must explain to you how all this mistaken idea of denouncing pleasure men who are so beguiled and demoralized</p>', '<div class=\"p-info-text pr-55\">\r\n<p class=\"gray-color2\">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms we denounce with righteous indignation and dislike men who are so beguiled with righteous</p>\r\n<p class=\"gray-color2\">But I must explain to you how all this mistaken idea of denouncing pleasure men who are so beguiled and demoralized</p>\r\n</div>\r\n<div class=\"all-info d-sm-flex align-items-center mt-35\">\r\n<div class=\"quick-add-to-cart d-sm-flex align-items-center mb-15 mr-10\">\r\n<div class=\"quantity-field position-relative d-inline-block mr-3\">&nbsp;</div>\r\n</div>\r\n</div>', '<p class=\"gray-color2\">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms we denounce with righteous indignation and dislike men who are so beguiled with righteous</p>\r\n<p class=\"gray-color2\">But I must explain to you how all this mistaken idea of denouncing pleasure men who are so beguiled and demoralized</p>', 'surgical-face-disinfection', 0, '1', 0, 0, '0000-00-00', '2023-06-30 14:08:33', '', '', '5', '5', '0', '4409677product1.jpg', '1', '1', '1', '1'),
(2, 1, 0, 0, '1', 'Bifunctional Scale X200', 0, 100, 90, 0, 0, 0, '', '', 0, '9746008product3.jpg', '', '', '<p class=\"gray-color2\">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms we denounce with righteous indignation and dislike men who are so beguiled with righteous</p>\r\n<p class=\"gray-color2\">But I must explain to you how all this mistaken idea of denouncing pleasure men who are so beguiled and demoralized</p>', '<p class=\"gray-color2\">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms we denounce with righteous indignation and dislike men who are so beguiled with righteous</p>\r\n<p class=\"gray-color2\">But I must explain to you how all this mistaken idea of denouncing pleasure men who are so beguiled and demoralized</p>', '<p class=\"gray-color2\">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms we denounce with righteous indignation and dislike men who are so beguiled with righteous</p>\r\n<p class=\"gray-color2\">But I must explain to you how all this mistaken idea of denouncing pleasure men who are so beguiled and demoralized</p>', 'bifunctional-scale-x200', 0, '1', 0, 0, '0000-00-00', '2023-06-30 14:08:29', '', '', '5', '5', '0', '9565399product3.jpg', '2', '1', '1', '1'),
(3, 1, 0, 0, '1', 'Blood Pressure Monitor', 0, 100, 90, 0, 0, 0, '', '', 0, '5374008product5.jpg', '', '', '<div class=\"p-info-text pr-55\">\r\n<p class=\"gray-color2\">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms we denounce with righteous indignation and dislike men who are so beguiled with righteous</p>\r\n<p class=\"gray-color2\">But I must explain to you how all this mistaken idea of denouncing pleasure men who are so beguiled and demoralized</p>\r\n</div>\r\n<div class=\"all-info d-sm-flex align-items-center mt-35\">\r\n<div class=\"quick-add-to-cart d-sm-flex align-items-center mb-15 mr-10\">\r\n<div class=\"quantity-field position-relative d-inline-block mr-3\">&nbsp;</div>\r\n</div>\r\n</div>', '<div class=\"p-info-text pr-55\">\r\n<p class=\"gray-color2\">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms we denounce with righteous indignation and dislike men who are so beguiled with righteous</p>\r\n<p class=\"gray-color2\">But I must explain to you how all this mistaken idea of denouncing pleasure men who are so beguiled and demoralized</p>\r\n</div>\r\n<div class=\"all-info d-sm-flex align-items-center mt-35\">\r\n<div class=\"quick-add-to-cart d-sm-flex align-items-center mb-15 mr-10\">\r\n<div class=\"quantity-field position-relative d-inline-block mr-3\">&nbsp;</div>\r\n</div>\r\n</div>', '<div class=\"p-info-text pr-55\">\r\n<p class=\"gray-color2\">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms we denounce with righteous indignation and dislike men who are so beguiled with righteous</p>\r\n<p class=\"gray-color2\">But I must explain to you how all this mistaken idea of denouncing pleasure men who are so beguiled and demoralized</p>\r\n</div>\r\n<div class=\"all-info d-sm-flex align-items-center mt-35\">\r\n<div class=\"quick-add-to-cart d-sm-flex align-items-center mb-15 mr-10\">\r\n<div class=\"quantity-field position-relative d-inline-block mr-3\">&nbsp;</div>\r\n</div>\r\n</div>', 'blood-pressure-monitor', 0, '1', 0, 0, '0000-00-00', '2023-06-30 14:08:24', '', '', '5', '5', '0', '6674357product5.jpg', '3', '1', '1', '1'),
(4, 1, 0, 0, '1', 'Nursing Care Protection', 0, 100, 90, 0, 0, 0, '', '', 0, '5648995product4.jpg', '', '', '<p class=\"gray-color2\">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms we denounce with righteous indignation and dislike men who are so beguiled with righteous</p>\r\n<p class=\"gray-color2\">But I must explain to you how all this mistaken idea of denouncing pleasure men who are so beguiled and demoralized</p>', '<p class=\"gray-color2\">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms we denounce with righteous indignation and dislike men who are so beguiled with righteous</p>\r\n<p class=\"gray-color2\">But I must explain to you how all this mistaken idea of denouncing pleasure men who are so beguiled and demoralized</p>', '<p class=\"gray-color2\">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms we denounce with righteous indignation and dislike men who are so beguiled with righteous</p>\r\n<p class=\"gray-color2\">But I must explain to you how all this mistaken idea of denouncing pleasure men who are so beguiled and demoralized</p>', 'nursing-care-protection', 0, '', 0, 0, '0000-00-00', '2023-06-30 14:08:18', '', '', '5', '5', '0', '2135159product4.jpg', '4', '1', '1', '1'),
(5, 1, 0, 0, '1', 'Vandelay xiTix Infrared Thermometer - Digital Thermometer Forehead - No Contact Forehead Thermometer for Adults and Kids- Fever Temperature Machine for Accurate Reading,Pack of 1,Plastic,White', 0, 2999, 999, 0, 0, 1, '', '', 0, '988021431GWIEaZciS._SX300_SY300_QL70_FMwebp_.webp', '', '', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n<li><span class=\"a-list-item\">DIGITAL THERMOMETER: This infrared thermometer has a built-in high temperature warning beep indicator.&lt;br&gt;</span></li>\r\n<li><span class=\"a-list-item\">FOREHEAD THERMOMETER: This infrared thermometer non contact achieves measuring 1-2 inches away. It supports non-contact measurement which improves safety. Perfect digital thermometers for adults and kids.&lt;br&gt;</span></li>\r\n<li><span class=\"a-list-item\">&Atilde;&Aring;&ldquo;&acirc;&euro;&brvbar; FAST THERMOMETER GUN: Just press the measure button, this thermometer gun measures temperature in a little as 1 second in either Fahrenheit or Celsius.&lt;br&gt;</span></li>\r\n<li><span class=\"a-list-item\">&Atilde;&Aring;&ldquo;&acirc;&euro;&brvbar; LCD DISPLAY DIGITAL THERMOMETER: This thermometer digital has a large backlit LCD screen for quick and easy temperature reading. It can store up to 32 temperature readings and recall them at any time.&lt;br&gt;</span></li>\r\n<li><span class=\"a-list-item\">Based on the confidence in the quality, our Infrared Thermometers are protected by worry free support.</span></li>\r\n</ul>', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n<li><span class=\"a-list-item\">DIGITAL THERMOMETER: This infrared thermometer has a built-in high temperature warning beep indicator.&lt;br&gt;</span></li>\r\n<li><span class=\"a-list-item\">FOREHEAD THERMOMETER: This infrared thermometer non contact achieves measuring 1-2 inches away. It supports non-contact measurement which improves safety. Perfect digital thermometers for adults and kids.&lt;br&gt;</span></li>\r\n<li><span class=\"a-list-item\">&Atilde;&Aring;&ldquo;&acirc;&euro;&brvbar; FAST THERMOMETER GUN: Just press the measure button, this thermometer gun measures temperature in a little as 1 second in either Fahrenheit or Celsius.&lt;br&gt;</span></li>\r\n<li><span class=\"a-list-item\">&Atilde;&Aring;&ldquo;&acirc;&euro;&brvbar; LCD DISPLAY DIGITAL THERMOMETER: This thermometer digital has a large backlit LCD screen for quick and easy temperature reading. It can store up to 32 temperature readings and recall them at any time.&lt;br&gt;</span></li>\r\n<li><span class=\"a-list-item\">Based on the confidence in the quality, our Infrared Thermometers are protected by worry free support.</span></li>\r\n</ul>', '', 'vandelay-xitix-infrared-thermometer-digital-thermometer-forehead-no-contact-forehead-thermometer-for-adults-and-kids-fever-temperature-machine-for-accurate-readingpack-of-1plasticwhite', 0, '1', 0, 0, '0000-00-00', '2023-06-30 14:08:08', '', '', '5', '50', '2', '948691231fC-YTh5TL._SX300_SY300_QL70_FMwebp_.webp', '445454', '1', '1', '1'),
(6, 6, 0, 0, '1', 'Wrist & Thumb Support ', 0, 395, 355, 0, 0, 10, '', '', 0, '6832462826.JPG', '', '', '<div class=\"_1AtVbE col-12-12\">\r\n<div class=\"_3nkT-2\">\r\n<div class=\"_2o-xpa\">\r\n<div class=\"_1mXcCf RmoJUa\">A good quality Wrist Wrap made of neoprene. Velcro closure for fully adjustable compression to injured muscles. Retains warmth, which can aid in speeding up recovery period. Helps in the treatment and prevention of injury. Controlled four way compression. Relieves swelling &amp; stiffness.</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"_1AtVbE col-12-12\">\r\n<div class=\"_3dtsli\">\r\n<div class=\"_5pFuey\"><br><br><br></div>\r\n<div>\r\n<div class=\"_1UhVsV _3AsE0T\">\r\n<div class=\"_3k-BhJ\">\r\n<div class=\"flxcaE\">&nbsp;</div>\r\n</div>\r\n<div class=\"_3k-BhJ\">\r\n<div class=\"flxcaE\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '<div class=\"_5pFuey\">Specifications</div>\r\n<div>\r\n<div class=\"_1UhVsV _3AsE0T\">\r\n<div class=\"_3k-BhJ\">\r\n<div class=\"flxcaE\">General</div>\r\n<table class=\"_14cfVK\">\r\n<tbody>\r\n<tr class=\"_1s_Smc row\">\r\n<td class=\"_1hKmbr col col-3-12\">Model Name</td>\r\n<td class=\"URwL2w col col-9-12\">\r\n<ul>\r\n<li class=\"_21lJbe\">826 Wrist Wrap</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_1s_Smc row\">\r\n<td class=\"_1hKmbr col col-3-12\">Part Number</td>\r\n<td class=\"URwL2w col col-9-12\">\r\n<ul>\r\n<li class=\"_21lJbe\">826</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_1s_Smc row\">\r\n<td class=\"_1hKmbr col col-3-12\">Orientation</td>\r\n<td class=\"URwL2w col col-9-12\">\r\n<ul>\r\n<li class=\"_21lJbe\">Appropriate for both right and left wrists.</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_1s_Smc row\">\r\n<td class=\"_1hKmbr col col-3-12\">Size in Number</td>\r\n<td class=\"URwL2w col col-9-12\">\r\n<ul>\r\n<li class=\"_21lJbe\">5 - 9 inch</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_1s_Smc row\">\r\n<td class=\"_1hKmbr col col-3-12\">Sales Package</td>\r\n<td class=\"URwL2w col col-9-12\">\r\n<ul>\r\n<li class=\"_21lJbe\">1</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_1s_Smc row\">\r\n<td class=\"_1hKmbr col col-3-12\">Wash Care</td>\r\n<td class=\"URwL2w col col-9-12\">\r\n<ul>\r\n<li class=\"_21lJbe\">HAND WASH</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_1s_Smc row\">\r\n<td class=\"_1hKmbr col col-3-12\">Playing Level</td>\r\n<td class=\"URwL2w col col-9-12\">\r\n<ul>\r\n<li class=\"_21lJbe\">All</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class=\"_3k-BhJ\">\r\n<div class=\"flxcaE\">Product Details</div>\r\n<table class=\"_14cfVK\">\r\n<tbody>\r\n<tr class=\"_1s_Smc row\">\r\n<td class=\"_1hKmbr col col-3-12\">Ideal For</td>\r\n<td class=\"URwL2w col col-9-12\">\r\n<ul>\r\n<li class=\"_21lJbe\">Women, Girls, Men, Senior, Boys</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_1s_Smc row\">\r\n<td class=\"_1hKmbr col col-3-12\">Pack of</td>\r\n<td class=\"URwL2w col col-9-12\">\r\n<ul>\r\n<li class=\"_21lJbe\">1</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_1s_Smc row\">\r\n<td class=\"_1hKmbr col col-3-12\">Closure</td>\r\n<td class=\"URwL2w col col-9-12\">\r\n<ul>\r\n<li class=\"_21lJbe\">VELCRO STRAP</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_1s_Smc row\">\r\n<td class=\"_1hKmbr col col-3-12\">Series</td>\r\n<td class=\"URwL2w col col-9-12\">\r\n<ul>\r\n<li class=\"_21lJbe\">826</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class=\"_1s_Smc row\">\r\n<td class=\"_1hKmbr col col-3-12\">Material</td>\r\n<td class=\"URwL2w col col-9-12\">\r\n<ul>\r\n<li class=\"_21lJbe\">Drytex</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>', '<p>Neoprene</p>', 'wrist-thumb-support', 0, '', 0, 0, '0000-00-00', '2023-07-20 11:55:44', '', '', '5', '18', '0', '', '826-A', '', '1', '1'),
(7, 1, 0, 0, '1', 'ZEBRA PRINT', 0, 395, 395, 0, 0, 10, '', '', 0, '3688614DSC_7864.JPG', '', '', '', '', '', 'zebra-print-1', 0, '', 0, 0, '0000-00-00', '2023-07-17 16:30:12', '', '', '5', '20', '0', 'DSC_7555.JPG', 'Z995', '', '', ''),
(8, 1, 0, 0, '1', 'KNEE SUPPORT(CLASSIC)', 0, 395, 355, 0, 0, 10, '', '', 0, 'DSC_7869.JPG', '', '', '<ul><li><i><strong>This product provides firm support and gentle compression over patella.</strong></i></li><li><i><strong>&nbsp;It increases blood circulation to relieve pain.</strong></i></li><li><i><strong>&nbsp;Helps recovery from knee injuries, minor sprains and arthritic pain.</strong></i></li><li><i><strong>&nbsp;It is useful in sporting activities.</strong></i></li><li><i><strong>&nbsp;Made of 4 way stretch elastic which makes it easy &amp; comfortable to wear.</strong></i></li></ul>', '<p><strong>Brand- RNV</strong></p><p><strong>Product- Knee Support</strong></p><p><strong>USE FOR- Knee</strong></p><p><strong>SIZE- S,M,L,XL,XXL</strong></p><p><strong>Colour- Coal Black</strong></p><p><strong>Net Quantity- 1 Pair</strong></p><p><strong>Product Care- Hand &amp; Machine Wash</strong></p><p><strong>Closure Type- Pull On</strong></p><p><strong>MAKE IN INDIA</strong></p>', '<p><strong>90% COTTON</strong></p><p><strong>10% ELASTIC</strong></p>', 'knee-supportclassic', 0, '', 0, 1, '0000-00-00', '2024-09-12 13:13:59', '', '', '5', '18', '0', 'KENN.jpg', '842', '', '', '1'),
(9, 1, 0, 0, '1', 'Knee Support ( Long)', 0, 550, 495, 0, 0, 10, '', '', 0, 'DSC_7828.JPG', '', '', '<p>&nbsp;</p>\r\n<p><strong>This product provides firm support and gentle compression over patella. It increases blood circulation to relieve pain. Helps recovery from knee injuries, minor sprains and arthritic pain. It is useful in sporting activities. Made of 4 way stretch elastic which makes it easy &amp; comfortable to wear.</strong></p>', '<p>&nbsp;</p>\r\n<p>Brand- RNV</p>\r\n<p>Product- Knee Support</p>\r\n<p>USE FOR- Knee</p>\r\n<p>SIZE- S,M,L,XL,XXL</p>\r\n<p>Colour- Coal Black</p>\r\n<p>Net Quantity- 1 Pair</p>\r\n<p>Product Care- Hand &amp; Machine Wash</p>\r\n<p>Closure Type- Pull On</p>\r\n<p><span style=\"font-family: \'arial black\', sans-serif;\"><span style=\"text-decoration: underline;\"><span style=\"font-size: 14pt;\"><strong>MAKE IN INDIA</strong></span></span></span></p>', '<p>Cotton- 90%</p>\r\n<p>Elastic- 10%</p>', 'knee-support-long', 0, '', 0, 1, '0000-00-00', '2023-07-19 15:47:23', '', '', '5', '25', '0', 'KENN.jpg', '848', '', '', ''),
(10, 1, 0, 0, '1', 'Knee Support(Comfort)', 0, 495, 445, 0, 0, 10, '', '', 0, '3223607905_2.JPG', '', '', '<p><strong>This product provides firm support and gentle compression over patella. It increases blood circulation to relieve pain. Helps recovery from knee injuries, minor sprains and arthritic pain. It is useful in sporting activities. Made of 4 way stretch elastic which makes it easy &amp; comfortable to wear.</strong></p>', '<p>Brand- RNV</p>\r\n<p>Product- Knee Support</p>\r\n<p>USE FOR- Knee</p>\r\n<p>SIZE- S,M,L,XL,XXL</p>\r\n<p>Colour- Red/Black</p>\r\n<p>Net Quantity- 1<strong> Pair</strong></p>\r\n<p>Product Care- Hand &amp; Machine Wash</p>\r\n<p>Closure Type- Pull On</p>\r\n<p><span style=\"font-family: \'arial black\', sans-serif;\"><span style=\"text-decoration: underline;\"><span style=\"font-size: 14pt;\"><strong>MAKE IN INDIA</strong></span></span></span></p>', '<p>Cotton- 90%</p>\r\n<p>Elastic- 10%</p>', 'knee-supportcomfort-1', 0, '', 0, 1, '0000-00-00', '2023-07-19 16:03:52', '', '', '5', '12', '0', 'KENN.jpg', '905', '', '1', ''),
(11, 1, 0, 0, '1', 'Knee Support(Open Patella)', 0, 595, 535, 0, 0, 10, '', '', 0, '6086372DSC_7882.JPG', '', '', '<p><strong>RNV Knee brace is used in cases of knee injuries such as muscle tear, ligament tear etc. to safeguard and limit the movement of the joint to secure the muscles or ligaments to further degrade and simultaneously providing requisite time for them to heal.</strong></p>\r\n<p><span style=\"font-size: 14pt;\"><strong>ONE PIECE</strong></span></p>', '<p>Brand- RNV</p>\r\n<p>Product- Knee Support</p>\r\n<p>USE FOR- Knee</p>\r\n<p>SIZE- One Size Fits Most</p>\r\n<p>Colour- Coal Black</p>\r\n<p>Net Quantity- 1 <strong>Piece</strong></p>\r\n<p>Product Care- Hand &amp; Machine Wash</p>\r\n<p>Closure Type- Velcro Closure</p>\r\n<p><strong>MAKE IN INDIA</strong></p>\r\n<p>&nbsp;</p>', '<p><strong>Drytex</strong></p>', 'knee-supportopen-patella-1', 0, '', 0, 1, '0000-00-00', '2023-08-04 17:00:38', '', '', '5', '27', '0', 'KENN.jpg', '803', '', '1', ''),
(12, 2, 0, 0, '1', 'Elbow Support(Classic)', 0, 395, 355, 0, 0, 10, '', '', 0, '2613598DSC_7934.JPG', '', '', '<p><strong>RNV elbow support is designed to increase blood circulation to relieve pain. comfortable and breathable fabric and sleeve type makes it easy to wear.</strong></p>', '<p>Brand- RNV</p>\r\n<p>Product- Elbow Support</p>\r\n<p>USE FOR- Elbow</p>\r\n<p>SIZE- S,M,L,XL,XXL</p>\r\n<p>Colour- Coal Black</p>\r\n<p>Net Quantity- 1 Pair</p>\r\n<p>Product Care- Hand &amp; Machine Wash</p>\r\n<p>Closure Type- Pull On</p>\r\n<p><strong>MAKE IN INDIA</strong></p>', '<p>90% Cotton</p>\r\n<p>10% Elastic</p>', 'elbow-supportclassic-1', 0, '', 0, 1, '0000-00-00', '2023-07-20 13:29:18', '', '', '5', '18', '0', 'ELBOW JOINT.jpg', '843', '', '', ''),
(13, 2, 0, 0, '1', 'Elbow Support(Comfort)', 0, 495, 445, 0, 0, 10, '', '', 0, '2364111DSC_7937.JPG', '', '', '<div class=\"_1AtVbE col-12-12\">\r\n<div class=\"_3nkT-2\">\r\n<div class=\"_2o-xpa\">\r\n<div class=\"_1mXcCf RmoJUa\"><span style=\"font-family: \'arial black\', sans-serif;\">RNV elbow support is designed to increase blood circulation to relieve pain. comfortable and breathable fabric and sleeve type makes it easy to wear.</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"_1AtVbE col-12-12\">\r\n<div class=\"_3dtsli\">\r\n<div class=\"_5pFuey\">&nbsp;</div>\r\n</div>\r\n</div>', '<p>Brand- RNV</p>\r\n<p>Product- Elbow Support</p>\r\n<p>USE FOR- Elbow</p>\r\n<p>SIZE- S,M,L,XL,XXL</p>\r\n<p>Colour- Red/Black</p>\r\n<p>Net Quantity- 1 Pair</p>\r\n<p>Product Care- Hand &amp; Machine Wash</p>\r\n<p>Closure Type- Pull On</p>\r\n<p><strong>MAKE IN INDIA</strong></p>', '<p><strong>Cotton 90%</strong></p>\r\n<p><strong>Elastane 10%</strong></p>', 'elbow-supportcomfort-1', 0, '', 0, 1, '0000-00-00', '2023-07-19 16:10:53', '', '', '5', '18', '0', 'ELBOW JOINT.jpg', '907', '', '', ''),
(14, 3, 0, 0, '1', 'Ankle Support(Classic)', 0, 395, 355, 0, 0, 10, '', '', 0, '2273599ANKLE4.JPG', '', '', '<p><strong>It is perfectly designed to support weak and injured ankle. It is widely used in sports where people are more prone to ankle injuries and where injury impact is intense .It is highly useful in compressing muscle ligaments, swelling, stiffness, sprains and ankle instability.</strong></p>', '<p><strong>Brand- RNV</strong></p><p><strong>Product- Ankle Support</strong></p><p><strong>USE FOR- Ankle</strong></p><p><strong>SIZE- S,M,L,XL,XXL</strong></p><p><strong>Colour- Coal Black</strong></p><p><strong>Net Quantity- 1 Pair</strong></p><p><strong>Product Care- Hand &amp; Machine Wash</strong></p><p><strong>Closure Type- Pull On</strong></p><p><strong>MAKE IN INDIA</strong></p>', '<p><strong>Cotton 90%</strong></p><p><strong>elastane 10%</strong></p>', 'ankle-supportclassic-1', 0, '', 0, 1, '0000-00-00', '2024-10-01 14:52:23', '', '', '5', '18', '0', 'ANKLE BONE.jpg', '844', '', '', ''),
(15, 3, 0, 0, '1', 'Ankle Support(Comfort)', 0, 495, 445, 0, 0, 10, '', '', 0, '7359356DSC_7989.JPG', '', '', '<div class=\"product-desc\">\r\n<p><strong>It is perfectly designed to support weak and injured ankle. It is widely used in sports where people are more prone to ankle injuries and where injury impact is intense .It is highly useful in compressing muscle ligaments, swelling, stiffness, sprains and ankle instability.</strong></p>\r\n</div>\r\n<div class=\"rating rating-shop d-flex mt-25\">\r\n<p>&nbsp;</p>\r\n</div>', '<p>Brand- RNV</p>\r\n<p>Product- Ankle Support</p>\r\n<p>USE FOR- Ankle</p>\r\n<p>SIZE- S,M,L,XL</p>\r\n<p>Colour- Red/Black</p>\r\n<p>Net Quantity- 1 Pair</p>\r\n<p>Product Care- Hand &amp; Machine Wash</p>\r\n<p>Closure Type- Pull On</p>\r\n<p><strong>MAKE IN INDIA</strong></p>', '<p>Cotton 90%</p>\r\n<p>Elastane 10%</p>', 'ankle-supportcomfort', 0, '', 0, 1, '0000-00-00', '2023-07-19 16:06:31', '', '', '5', '22', '0', '4660732ANKLE BONE.jpg', '906', '', '', ''),
(16, 1, 0, 0, '1', 'Knee Wrap', 0, 950, 855, 0, 0, 10, '', '', 0, '5584915kw-10.JPG', '', '', '<p><strong>&nbsp;Knee Wraps Improves Support And Stability During Heavy Leg Workouts. Increase Workout Performance, Protect Your Knee Joint With Added Compression, And Prevents Possible Injuries From Heavy Weightlifting. Stronger material provides best support for heavy squats, cross training,leg presses and high intensity power lifting.</strong></p>', '<p>Brand- RNV</p>\r\n<p>Product- Knee Wrap</p>\r\n<p>USE FOR- Knee</p>\r\n<p>SIZE- One Size Fits Most</p>\r\n<p>Colour- Red/Black</p>\r\n<p>Net Quantity- 1<strong>&nbsp;Pair</strong></p>\r\n<p>Product Care- Hand &amp; Machine Wash</p>\r\n<p>Closure Type- Hook &amp; Loop</p>\r\n<p><strong>MAKE IN INDIA</strong></p>', '<p>Cotton 60%</p>\r\n<p>Nylon 30%</p>\r\n<p>Rubber 10%</p>', 'knee-wrap-1', 0, '', 0, 1, '0000-00-00', '2023-08-04 17:02:09', '', '', '5', '43', '0', '', 'KW-10', '', '', '1'),
(17, 7, 0, 0, '1', 'Arm Sling Pouch', 0, 340, 306, 0, 0, 10, '', '', 0, '5900780AP-10.JPG', '', '', '<p><strong>&nbsp;Arm Sling Pouch can be used&nbsp;when an arm is fractured, or the shoulder is dislocated or to immobilize the arm for rotator cuff repair.<span class=\"ILfuVd\" lang=\"en\"><span class=\"hgKElc\">&nbsp;It\'s important to wear and use a sling correctly to prevent further injury and help your shoulder heal.</span></span></strong></p>\r\n<p><span class=\"kX21rb ZYHQ7e\"><strong>RNV Arm Sling Pouch is made of skin friendly material so that you don\'t have to bear another pain of handling it.</strong></span></p>\r\n<p><span class=\"kX21rb ZYHQ7e\"><span style=\"font-size: 14pt;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\"<strong> HAPPY HEALING</strong> \"</span></span></p>', '<div class=\"discription-page\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-8\">\r\n<div class=\"product-review-tab-area mt-60\">\r\n<div id=\"pills-tabContent\" class=\"tab-content mt-30\">\r\n<div id=\"pills-home\" class=\"tab-pane fade show active\" role=\"tabpanel\" aria-labelledby=\"pills-home-tab\">\r\n<div class=\"describe-area\">\r\n<p>Brand- RNV</p>\r\n<p>Product- Arm Sling Pouch</p>\r\n<p>USE FOR-Shoulder</p>\r\n<p>SIZE- S,M,L,XL</p>\r\n<p>Colour- Coal Black</p>\r\n<p>Net Quantity- 1<strong> Piece</strong></p>\r\n<p>Product Care- Hand &amp; Machine Wash</p>\r\n<p>Closure Type- Velcro</p>\r\n<p><strong>MAKE IN </strong><strong>INDIA</strong></p>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-md-4\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"relatied_product\">\r\n<div class=\"container\">\r\n<div class=\"section-title text-center\">&nbsp;</div>\r\n</div>\r\n</div>', '<p>Drytex</p>', 'arm-sling-pouch', 0, '', 0, 0, '0000-00-00', '2023-07-20 13:41:58', '', '', '5', '15', '0', '', 'AP-10', '', '', ''),
(18, 8, 0, 0, '1', 'Waist Trimmer', 0, 595, 535, 0, 0, 10, '', '', 0, '93455537bbf1a86-df36-414f-9ba9-29592123fc9f.jpeg', '', '', '<p><strong>RNV Waist belt gives support to lower back and abdomen and provides constant heat to lower back muscles. Also helps to reduce extra flab or fat around the waistline. Can be used in post delivery or weight loss programme.</strong></p>', '<p>Brand- RNV</p>\r\n<p>Product- Waist Support</p>\r\n<p>Use For- Waist</p>\r\n<p>Size- Upto 40\"</p>\r\n<p>Width- 10\"</p>\r\n<p>Colour- Coal Black</p>\r\n<p>Net Quantity- 1<strong> Piece</strong></p>\r\n<p>Product Care- Hand &amp; Machine Wash</p>\r\n<p>Closure Type- Velcro</p>\r\n<p><strong>MAKE IN INDIA</strong></p>', '<p>Drytex</p>', 'waist-trimmer-1', 0, '', 0, 1, '0000-00-00', '2023-07-21 14:25:38', '', '', '5', '27', '0', '', '884', '', '', ''),
(19, 8, 0, 0, '1', 'Waist Trimmer', 0, 720, 648, 0, 0, 10, '', '', 0, '24806938d84dacf-a06a-4808-ad9f-0d68d2870b89.jpeg', '', '', '<p><strong>RNV Waist belt gives support to lower back and abdomen and provides constant heat to lower back muscles. Also helps to reduce extra flab or fat around the waistline. Can be used in post delivery or weight loss programme.</strong></p>', '<p>Brand- RNV</p>\r\n<p>Product- Waist Support</p>\r\n<p>Use For- Waist</p>\r\n<p>Size- Upto 40\"</p>\r\n<p>WIDTH-10\"</p>\r\n<p>Colour- Coal Black</p>\r\n<p>Net Quantity- 1<strong>&nbsp;Piece</strong></p>\r\n<p>Product Care- Hand &amp; Machine Wash</p>\r\n<p>Closure Type- Velcro</p>\r\n<p><strong>MAKE IN INDIA</strong></p>', '<p>Drytex</p>', 'waist-trimmer-1', 0, '', 0, 1, '0000-00-00', '2023-07-21 14:26:05', '', '', '5', '32', '0', '', '810', '', '', ''),
(20, 7, 0, 0, '1', 'Adjustable Hand Grip', 0, 350, 315, 0, 0, 10, '', '', 0, '6397389DSC_7537.JPG', '', '', '<p>Hand Gripper is used For Prophylactic &amp; Therapeutic Use In Sports Activities. It Helps In Maximum Muscle Movement</p>', '', '', 'adjustable-hand-grip-1', 0, '', 0, 1, '0000-00-00', '2023-07-21 18:13:36', '', '', '18', '57', '0', '', '904', '', '', ''),
(21, 7, 0, 0, '1', 'Thigh Loop Band', 0, 750, 675, 0, 0, 10, '', '', 0, '2368639031dd1c8-faef-4f6f-940c-36187a2253b7.JPG', '', '', '<p><strong>RNV Thigh Loop Band is made from High quality Non-Slip Fabric &amp; Elastic. This can be used in toning exercises,stretching exercise,shaping your body etc. Also increase core strength. It is 3 in 1 Exercise set which comes with Light, Medium and Heavy strengths. These bands are portable so you can carry them anywhere you go.</strong></p>', '<p>Brand- RNV</p><p>Product- Thigh Loop Band</p><p>USE FOR- Thigh</p><p>SIZE- One Size Fits Most</p><p>Colour- Assorted</p><p>Net Quantity- 3 Pieces</p><p>Product Care- Hand Wash</p><p>Closure Type- Loop</p><p><strong>MAKE IN INDIA</strong></p>', '<p>&nbsp;</p><p><strong>WOVEN FABRIC</strong></p>', 'thigh-loop-band', 0, '', 0, 1, '0000-00-00', '2024-10-01 14:17:43', '', '', '18', '122', '0', '', 'HB-03', '', '', '1'),
(22, 9, 0, 0, '1', 'Shoulder Support', 0, 595, 535, 0, 0, 10, '', '', 0, '5846254SHOULDER_SUPPORT.JPG', '', '', '<p><strong>Provides Compression And Support To Shoulder And Aids Healing. Therapeutic Warmth For The Shoulder And Upper Arm. Offers Support And Protection. Minimizes Potential For Future Injuries.</strong></p>', '<p><strong>Brand- RNV</strong></p><p><strong>Product- Shoulder Support</strong></p><p><strong>USE FOR- Shoulder</strong></p><p><strong>SIZE- One Size Fits Most</strong></p><p><strong>Colour- &nbsp;Black</strong></p><p><strong>Net Quantity- 1 Piece</strong></p><p><strong>Product Care- Hand &amp; Machine Wash</strong></p><p><strong>Closure Type- Velcro Closure</strong></p><p><strong>MAKE IN INDIA</strong></p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>', '<p><strong>Cotton-90 %</strong></p><p><strong>Elastane-10%</strong></p>', 'shoulder-support-1', 0, '', 0, 1, '0000-00-00', '2024-10-01 14:13:38', '', '', '5', '27', '0', '', 'SS-1', '', '', ''),
(23, 7, 0, 0, '1', 'Kinesiology Tape', 0, 550, 495, 0, 0, 10, '', '', 0, '4600282a2b8304d-ad96-42fc-b8e3-b992c84d4b1f_(1).JPG', '', '', '<p><strong>Use this RNV kinesiology sports tape every time you train for support and pain relief.</strong></p><p><strong>This RNV pain relief tape is made with a strong, synthetic material that feels like a second skin.</strong></p><p><strong>No bunching, fraying, or wrinkling, only smooth, simple application.</strong></p><p><strong>And because its uncut, you can customise the length.</strong></p><p><strong>&nbsp;It contains no rubber or latex, and it doesnâ€™t leave a sticky, smelly residue behind like other athletic tapes.</strong></p>', '<p>Brand- RNV</p><p>Product- kinesiology Tape</p><p>USE FOR- Any area of the skin</p><p>SIZE- 5 Meters</p><p>Colour- Assorted</p><p>Net Quantity- 1<strong>&nbsp;Piece</strong></p><p>Product Care- Hand &amp; Machine Wash</p><p>Closure Type- Loose</p><p><strong>MAKE IN INDIA</strong></p>', '<p><strong>Cotton</strong></p>', 'kinesiology-tape-1', 0, '', 0, 1, '0000-00-00', '2024-10-01 14:10:07', '', '', '5', '25', '0', '', 'KT-5', '', '', ''),
(24, 10, 0, 0, '1', 'Massage Roller(Plain)', 0, 1150, 1035, 0, 0, 10, '', '', 0, '76128422e4053ef-3fc3-4c17-9b06-e1c8b2260da8.JPG', '', '', '<p><strong>This is multifunctional massage equipment ideal for self-massage, balance training, and to get relief from back pain, knee pain, calf pain, running injuries, &amp; muscle tightness. Heavy and intense workout sessions can leave your muscles feeling sore and tight and by using RNV foam rollers you can relieve from any type of pain.&nbsp;</strong></p>', '<p>Brand- RNV</p>\r\n<p>Product- Massage Roller</p>\r\n<p>USE FOR- All parts of body</p>\r\n<p>SIZE- 12\"&amp;18\"</p>\r\n<p>Colour- Coal Black</p>\r\n<p>Net Quantity- 1<strong> Piece</strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong>MAKE IN INDIA</strong></p>', '<p><strong>FIBER</strong></p>', 'massage-rollerplain-1', 0, '', 0, 1, '0000-00-00', '2023-07-31 18:14:49', '', '', '18', '186', '0', 'MR-25.jpg', 'MR-25', '', '', ''),
(25, 10, 0, 0, '1', 'Massage Roller(Grid)', 0, 1350, 1215, 0, 0, 10, '', '', 0, '58925810c35c529-7e79-4f4b-a478-e7d958c412b7.JPG', '', '', '<p><strong>This is multifunctional massage equipment ideal for self-massage, balance training, and to get relief from back pain, knee pain, calf pain, running injuries, &amp; muscle tightness. Heavy and intense workout sessions can leave your muscles feeling sore and tight and by using RNV foam rollers you can relieve from any type of pain.</strong></p>\r\n<p><strong>&nbsp;Grid Foam Rollers are designed to \"dig in\" to trigger points in the muscles,helping to release those knots quickly.</strong></p>', '<p>Brand- RNV</p>\r\n<p>Product- Grid Massage Roller</p>\r\n<p>USE FOR- All parts of body</p>\r\n<p>SIZE- 12\"&amp;18\"</p>\r\n<p>Colour- Coal Black</p>\r\n<p>Net Quantity- 1<strong>&nbsp;Piece</strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong>MAKE IN INDIA</strong></p>', '<p>FIBER</p>', 'massage-rollergrid-1', 0, '', 0, 1, '0000-00-00', '2023-07-31 18:15:08', '', '', '18', '219', '0', 'MR-28.jpg', 'MR-28', '', '', ''),
(26, 10, 0, 0, '1', 'Massage Roller(Grid)Blue', 0, 1350, 1215, 0, 0, 10, '', '', 0, '721730056a9d13d-3f02-4f54-9681-cf609107d996_(2).JPG', '', '', '<p><strong>This is multifunctional massage equipment ideal for self-massage, balance training, and to get relief from back pain, knee pain, calf pain, running injuries, &amp; muscle tightness. Heavy and intense workout sessions can leave your muscles feeling sore and tight and by using RNV foam rollers you can relieve from any type of pain.</strong></p>\r\n<p><strong>&nbsp;Grid Foam Rollers are designed to \"dig in\" to trigger points in the muscles,helping to release those knots quickly.</strong></p>', '<p>Brand- RNV</p>\r\n<p>Product- Grid Massage Roller</p>\r\n<p>USE FOR- All parts of body</p>\r\n<p>SIZE- 12\"&amp;18\"</p>\r\n<p>Colour- Blue</p>\r\n<p>Net Quantity- 1<strong>&nbsp;Piece</strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong>MAKE IN INDIA</strong></p>', '<p>FIBER</p>', 'massage-rollergridblue-1', 0, '', 0, 1, '0000-00-00', '2023-08-04 17:04:59', '', '', '18', '219', '0', '8826495MR-28.jpg', 'MR-28 blue', '', '1', ''),
(27, 9, 0, 0, '1', 'Heel Cushion(Gel)', 0, 430, 387, 0, 0, 10, '', '', 0, '4223013e74006d9-54e6-4f34-98f6-c28e7c8c8a4a.JPG', '', '', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n<li class=\"a-spacing-mini\" style=\"font-weight: bold;\"><strong><span class=\"a-list-item\">RNV Silicon heel Pads are hypoallergenic, non-toxic, non-flammable without odor great for heel ankle pain, heel spur, knee and back pain etc.</span></strong></li>\r\n<li class=\"a-spacing-mini\" style=\"font-weight: bold;\"><strong><span class=\"a-list-item\">&nbsp;The middle area is extra soft and elastic for greater cushioning in sensitive areas.</span></strong></li>\r\n<li class=\"a-spacing-mini\" style=\"font-weight: bold;\"><strong><span class=\"a-list-item\">Very useful for any prolonged standing or walking activity.</span></strong></li>\r\n<li class=\"a-spacing-mini\" style=\"font-weight: bold;\"><strong><span class=\"a-list-item\">The comfortable gel heel cups can be worn in most shoe styles, including athletic shoes, dress shoes and boots, with or without socks.</span></strong></li>\r\n</ul>', '<p>Brand- RNV</p>\r\n<p>Product- Heel Cushion</p>\r\n<p>USE FOR- Heel</p>\r\n<p>SIZE- S,M,L</p>\r\n<p>Colour- Translucent Blue</p>\r\n<p>Net Quantity- 1<strong>&nbsp;Pair</strong></p>\r\n<p>Product Care- Hand Wash</p>\r\n<p>&nbsp;</p>\r\n<p><strong>MAKE IN INDIA</strong></p>', '<p><strong>Silicon</strong></p>', 'heel-cushiongel-1', 0, '', 0, 1, '0000-00-00', '2023-08-01 17:30:46', '', '', '5', '19', '0', '', '860', '', '', ''),
(28, 9, 0, 0, '1', 'Gel Insole', 0, 950, 855, 0, 0, 10, '', '', 0, '1180546b6324408-f2a7-48d5-b175-72320416af35.JPG', '', '', '<p><strong>This silicone insole is used to relieve pain in plantar fasciitis, metatarsalgia, foot pain, pain during walking, calcaneal spur, sprain, a strain of the foot, ankle, feet and knee pain.</strong></p>\r\n<p><strong><span class=\"a-list-item\">&nbsp;Made from long-lasting and durable silicone material to relieve foot, ankle and knee pain</span></strong></p>\r\n<p><strong><span class=\"a-list-item\">&nbsp;</span><span class=\"a-list-item\">The comfortable gel insole can be worn in most shoe styles, including athletic shoes, dress shoes and boots, with or without socks.</span></strong></p>\r\n<p><strong><span class=\"a-list-item\"> Talcum powder should be applied, before fixing them in the shoe</span></strong></p>', '<p>Brand- RNV</p>\r\n<p>Product- Foot Insole</p>\r\n<p>USE FOR- Foot</p>\r\n<p>SIZE- S,M,L</p>\r\n<p>Colour- Translucent blue</p>\r\n<p>Net Quantity- 1<strong>&nbsp;Pair</strong></p>\r\n<p>Product Care- Hand Wash</p>\r\n<p>&nbsp;</p>\r\n<p><strong>MAKE IN INDIA</strong></p>', '<p><strong>Silicone &amp; Gel</strong></p>', 'gel-insole', 0, '1', 0, 1, '0000-00-00', '2023-09-25 09:40:24', '', '', '5', '43', '0', '', '861', '1', '', ''),
(29, 10, 0, 0, '1', 'Loop Band', 0, 450, 405, 0, 0, 10, '', '', 0, '9688592863cc666-e0b8-4d73-88dc-5e6d8df23406.JPG', '', '', '<ul><li><strong>Pack of five,2 inch wide continuous loop elastic bands comes in different colors and resistance levels. Available in Light, Medium, Heavy, Extra Heavy &amp; Super Heavy levels.</strong></li><li><strong>Ideal for a variety of exercises including pilates, yoga, strength training, upper body workouts, and lower body workouts for the butt, legs, and thighs</strong></li><li><strong>RNV Latex Bands are available in jar packing which is very easy to carry so that you do not miss your workout wherever you are.</strong></li></ul>', '<p>Brand- RNV</p><p>Product- Loop Band</p><p>USE FOR- Workout</p><p>SIZE- One Size Fits Most</p><p>Colour- Assorted</p><p>Net Quantity- 5 Pieces</p><p>Product Care- Wipe with damp cloth</p><p>Closure Type- Loop</p><p><strong>MAKE IN INDIA</strong></p>', '<p><strong>Latex</strong></p>', 'loop-band-1', 0, '', 0, 1, '0000-00-00', '2024-08-24 13:50:39', '', '', '18', '73', '0', '', 'SF-5', '', '1', ''),
(30, 1, 0, 0, '1', 'Shin & Calf Support', 0, 399, 359, 0, 0, 10, '', '', 0, '824 4.JPG', '', '', '<p><strong>Quadriceps strain is an inflammation and pain in the front of the calf. It is characterised by pain, swelling and warmth over quadriceps muscles, muscle spasm or tightness, weak ness and fatigue. RNV Calf Support gives you a great relief. Increases blood circulation to relieve pain.. Helps recovery from calf minor injuries. Useful in sporting activities..</strong></p>', '<p>Brand- RNV</p><p>Product- Shin &amp; Calf Support</p><p>USE FOR- Shin</p><p>SIZE- S,M,L,XL</p><p>Colour- Coal Black</p><p>Net Quantity- 1 Pair</p><p>Product Care- Hand &amp; Machine Wash</p><p>Closure Type- Pull On</p><p><strong>MAKE IN INDIA</strong></p>', '<p><strong>95%</strong> <strong>Cotton</strong></p><p><strong>5% Elastic</strong></p>', 'shin-calf-support-1', 0, '', 0, 1, '0000-00-00', '2025-01-09 10:10:19', '', '', '5', '18', '0', '', '824', '', '', ''),
(31, 10, 0, 0, '1', 'Biceps Elastic Band', 0, 395, 355, 0, 0, 10, '', '', 0, '0Y7A2947.JPG', '', '', '<p><strong>*Biceps Band Is Designed With A Premium Elastic Fabric And A Quick Release Buckle</strong></p>\r\n<p><strong>*Extra Convenient And Super Durable</strong></p>\r\n<p><strong>*Furnished With A Very Rigid Strap</strong></p>\r\n<p><strong>*Made For Arms And Biceps</strong></p>\r\n<p><strong>*This is commonly used to strengthen the biceps without putting too much pressure on the tendon.</strong></p>\r\n<p>&nbsp;</p>', '<p>Brand- RNV</p>\r\n<p>Product- Biceps Band</p>\r\n<p>USE FOR- Arm</p>\r\n<p>SIZE- One Size Fits Most</p>\r\n<p>Colour- Grey/Black</p>\r\n<p>Net Quantity- 1 Pair</p>\r\n<p>Product Care- Hand &amp; Machine Wash</p>\r\n<p>Closure Type- Buckle Closure</p>\r\n<p><strong>MAKE IN INDIA</strong></p>', '<p><strong>Fabric</strong></p>', 'biceps-elastic-band', 0, '', 0, 1, '0000-00-00', '2023-11-08 14:15:33', '', '', '18', '64', '0', '', 'BT-02', '1', '', ''),
(32, 10, 0, 0, '1', 'YOGA BELT', 0, 195, 175, 0, 0, 10, '', '', 0, 'WhatsApp Image 2024-07-16 at 15.25.37_788b2860.jpg', '', '', '<p><strong>Usually, a&nbsp;</strong><a href=\"https://www.amazon.com/gp/offer-listing/B07BMM5FM9/ref=as_li_tl?ie=UTF8&amp;camp=1789&amp;creative=9325&amp;creativeASIN=B07BMM5FM9&amp;linkCode=am2&amp;tag=yogigo-20&amp;linkId=610960038c294ed5a04c1f0d5e377bac\"><strong>yoga strap</strong></a><strong> is a piece of material that is around six feet long. It can be made of a variety of different&nbsp;</strong><a href=\"https://www.wisegeek.com/what-is-a-yoga-strap.htm\"><strong>materials</strong></a><strong>, including cotton and hemp.Yoga Strap Is Used To Perform Various Yoga Exercises. You can reach challenging yoga poses by holding your yoga straps and trying to stretch them longer. When you are ready to put this strain on your muscles, the strap can be a good stepping stone to doing these challenging poses on your own.</strong></p>', '<p>Brand- RNV</p><p>Product- Yoga Mat Strap</p><p>USE FOR- Stretching</p><p>SIZE- Universal Size</p><p>Colour- Assorted</p><p>Net Quantity- 1<strong> Piece</strong></p><p>Product Care- Hand &amp; Machine Wash</p><p>Closure Type- D shaped Buckle</p><p><strong>MAKE IN INDIA</strong></p>', '<p><strong>Cotton</strong></p>', 'yoga-belt', 0, '', 0, 1, '0000-00-00', '2024-07-16 15:28:26', '', '', '18', '16', '0', '', 'YB-11', '', '', ''),
(33, 10, 0, 0, '1', 'Thigh Elastic Band', 0, 595, 535, 0, 0, 10, '', '', 0, 'WhatsApp Image 2024-07-16 at 15.25.37_5c4ca693.jpg', '', '', '<p><strong>RNV Thigh Elastic Bands are used in performing various thigh exercises at gym or at home. Also known as Blood Flow Restriction Bands help in strengthening thigh muscles. Very compact so that you can carry them wherever you go and don\'t need to miss the workout anytime.</strong></p>', '<p>Brand- RNV</p><p>Product- Thigh Band</p><p>USE FOR- Workout</p><p>SIZE- One Size Fits Most</p><p>Colour- Assorted</p><p>Net Quantity- 1 <strong>pair</strong></p><p>Product Care- Wipe with damp cloth</p><p>Closure Type- Velcro</p><p><strong>MAKE IN INDIA</strong></p>', '<p>Nylon</p><p>Elastic</p><p>Rubber</p>', 'thigh-elastic-band', 0, '', 0, 1, '0000-00-00', '2024-07-16 15:28:10', '', '', '18', '96', '0', '', 'BFR', '', '', ''),
(34, 6, 0, 0, '1', 'Wrist Support(Power+)', 0, 395, 355, 0, 0, 10, '', '', 0, '0Y7A2953.JPG', '', '', '<p><strong>RNV Power+ Wrist Support is used to improve strength &amp; stability.</strong></p><p><strong>It reduces pressure on your wrist joints while gyming.</strong></p><p><strong>The Wrist Supports wrap your wrists with just the right amount of compression.</strong></p><p><strong>Relieves swelling &amp; stiffness.</strong></p><p><strong>Provides firm support around weak and strained area.&nbsp;</strong></p><p><strong>Great for pain relief from sprained minor wrists injuries.</strong></p>', '<p><strong>Brand- RNV</strong></p><p><strong>Product- Wrist Support</strong></p><p><strong>USE FOR- Workout</strong></p><p><strong>SIZE- One Size Fits Most</strong></p><p><strong>Colour- Assorted</strong></p><p><strong>Net Quantity- 1 Pair</strong></p><p><strong>Product Care- Wipe with damp cloth</strong></p><p><strong>Closure Type- Velcro</strong></p><p><strong>MAKE IN INDIA</strong></p>', '<p>Cotton</p><p>Elastic</p>', 'wrist-supportpower-1', 0, '', 0, 1, '0000-00-00', '2024-09-19 13:39:11', '', '', '5', '18', '0', '', 'PP-20', '1', '1', ''),
(35, 2, 0, 0, '1', 'Elbow Sleeves with Thumb', 0, 250, 225, 0, 0, 10, '', '', 0, '0Y7A2979.JPG', '', '', '<p><strong>RNV ELBOW SLEEVES ARE DESIGNED TO PROTECT YOUR ARMS FROM SUN.</strong></p>\r\n<p><strong>FOUR WAY LYCRA MAKES IT EASY TO WEAR. </strong></p>\r\n<p><strong>SOFT AND COMFORTABLE FABRIC.</strong></p>\r\n<p><strong>ELBOW SLEEVES WITH THUMB PROVIDES EXTRA GRIP &amp; SUPPORT TO THE PALM.</strong></p>', '<p><strong>Brand- RNV</strong></p>\r\n<p><strong>Product- Elbow Support</strong></p>\r\n<p><strong>USE FOR- Elbow</strong></p>\r\n<p><strong>SIZE- ONE SIZE FITS MOST</strong></p>\r\n<p><strong>Colour- BLACK</strong></p>\r\n<p><strong>Net Quantity- 1 Pair</strong></p>\r\n<p><strong>Product Care- Hand &amp; Machine Wash</strong></p>\r\n<p><strong>Closure Type- Pull On</strong></p>\r\n<p><strong>MAKE IN INDIA</strong></p>', '<p><strong>LYCRA</strong></p>', 'elbow-sleeves-with-thumb-1', 0, '', 0, 1, '0000-00-00', '2023-10-17 17:12:38', '', '', '5', '11', '0', '', '548-T', '', '1', ''),
(36, 2, 0, 0, '1', 'ELBOW SLEEVES(LYCRA)', 0, 225, 199, 0, 0, 10, '', '', 0, 'WhatsApp Image 2024-08-12 at 2.19.59 PM (3).jpeg', '', '', '<p><strong>RNV ELBOW SLEEVES ARE DESIGNED TO PROTECT YOUR ARMS FROM SUN. FOUR WAY LYCRA MAKES IT EASY TO WEAR. SOFT AND COMFORTABLE FABRIC.</strong></p>', '<p>Brand- RNV</p><p>Product- Elbow Sleeves</p><p>USE FOR- Elbow</p><p>SIZE- One Size Fits Most</p><p>Colour- Coal Black</p><p>Net Quantity- 1 Pair</p><p>Product Care- Hand &amp; Machine Wash</p><p>Closure Type- Pull On</p><p><strong>MAKE IN INDIA</strong></p>', '<p><strong>Lycra</strong></p>', 'elbow-sleeveslycra-1', 0, '', 0, 1, '0000-00-00', '2024-08-12 14:43:12', '', '', '5', '10', '0', '', '548', '', '1', ''),
(37, 2, 0, 0, '1', 'ELBOW SLEEVES(COTTON)', 0, 175, 158, 0, 0, 10, '', '', 0, '0Y7A9092.jpg', '', '', '<p><strong>RNV ELBOW SLEEVES ARE DESIGNED TO PROTECT YOUR ARMS FROM SUN. STRETCHABLE COTTON MAKES IT EASY TO WEAR. SOFT AND COMFORTABLE FABRIC.</strong></p>', '<p>Brand- RNV</p><p>Product- Elbow Sleeves</p><p>USE FOR- Elbow</p><p>SIZE- One Size Fits Most</p><p>Colour- Coal Black</p><p>Net Quantity- 1 Pair</p><p>Product Care- Hand &amp; Machine Wash</p><p>Closure Type- Pull On</p><p><strong>MAKE IN INDIA</strong></p>', '<p>COTTON</p>', 'elbow-sleevescotton-1', 0, '', 0, 1, '0000-00-00', '2024-08-12 13:40:52', '', '', '5', '10', '0', '', 'LE-02', '', '', '1'),
(38, 3, 0, 0, '2', 'ghbfggfgffgtf', 0, 160, 123, 0, 0, 10, '', '', 0, '78865311.jpeg', '', '', '<p>hghgg</p>\r\n<p>&nbsp;</p>', '<p>gfg</p>', '<p>hghg</p>', 'ghbfggfgffgtf', 0, '1', 0, 0, '0000-00-00', '2023-11-07 15:17:18', '', '', '5', '6', '12', '', 'r5565', '1', '1', '1'),
(39, 1, 0, 0, '1', 'fgfgfgf', 0, 210, 199, 0, 0, 100, '', '', 0, '16419351.jpeg', '', '', '<p>fhgfgfgfgfr</p>', '<p>fhfgf</p>', '<p>fgfgfgf</p>', 'fgfgfgf', 0, '1', 0, 0, '0000-00-00', '2023-11-07 15:17:05', '', '', '5', '10', '12', '', '6565', '1', '1', '1'),
(40, 9, 0, 0, '1', 'FINGER COMPRESSION SLEEVE', 0, 295, 265, 0, 0, 5, '', '', 0, '66978300Y7A9134.jpg', '', '', '<p>Premium Quality RNV Finger Support for Sports, relieves finger pain and facilitates proper blood circulation over the fingers. Finger support is made of premium quality cotton. It is elastic, sweat absorbing, breathable, soft and comfortable in daily wearing. Comes in one standard size and fits almost all adult fingers with its premium elastic.10 pcs</p>', '<p>Brand- RNV</p><p>Product- Finger Support</p><p>USE FOR- Fingers</p><p>SIZE- One Size Fits Most</p><p>Colour- Black</p><p>Net Quantity- 8 Pieces</p><p>Product Care- Hand Wash</p><p>Closure Type- Pull on</p><p><strong>MAKE IN INDIA</strong></p>', '<p>COTTON ELASTIC</p>', 'finger-compression-sleeve', 0, '', 0, 1, '0000-00-00', '2024-07-16 14:54:24', '', '', '12', '32', '0', '', 'GP-10', '', '', ''),
(41, 9, 0, 0, '1', 'FINGER SUPPORT', 0, 440, 396, 0, 0, 10, '', '', 0, '6820869WhatsApp_Image_2024-03-08_at_1.26.41_PM.jpeg', '', '', '<p>Premium Quality RNV Finger Support for Sports, relieves finger pain and facilitates proper blood circulation over the fingers. Finger support is made of premium quality cotton. It is elastic, sweat absorbing, breathable, soft and comfortable in daily wearing. Comes in one standard size and fits almost all adult fingers with its premium elastic.10 pcs</p>', '<p>Brand- RNV</p><p>Product- Finger Support</p><p>USE FOR- Supporting Fingers</p><p>SIZE- One Size Fits Most</p><p>Colour- Black</p><p>Net Quantity- 10 Pieces</p><p>Product Care- Hand Wash</p><p>Closure Type- Pull on</p><p><strong>MAKE IN INDIA</strong></p>', '<p>ELASTIC</p>', 'finger-support', 0, '', 0, 1, '0000-00-00', '2024-07-16 14:54:37', '', '', '5', '20', '0', '', 'F-10', '', '1', '1'),
(42, 1, 0, 0, '1', 'KNEE SUPPORT(OPEN PATELLA)', 0, 950, 855, 0, 0, 10, '', '', 0, '6945950DSC_7865.JPG', '', '', '<p>RNV Knee brace is used in cases of knee injuries such as muscle tear, ligament tear etc. to safeguard and limit the movement of the joint to secure the muscles or ligaments to further degrade and simultaneously providing requisite time for them to heal.</p>', '<p>Brand- RNV</p><p>Product- Open Patella</p><p>USE FOR- Healing</p><p>SIZE- One Size Fits Most</p><p>Colour- Black</p><p>Net Quantity- 1 <strong>piece</strong></p><p>Product Care- Hand Wash</p><p>Closure Type- Velcro</p><p><strong>MAKE IN INDIA</strong></p>', '', 'knee-supportopen-patella-1', 0, '', 0, 1, '0000-00-00', '2024-08-03 13:28:52', '', '', '5', '45', '0', '', '805', '', '', ''),
(43, 10, 0, 0, '1', 'GYM BAG', 0, 550, 495, 0, 0, 10, '', '', 0, 'WhatsApp Image 2024-07-16 at 15.25.36_e464d98b.jpg', '', '', '<ul><li>One Main compartment. Side net pocket.</li><li>Quick Access Pocket for Easy Convenience: It has a handy quick access pocket for your phone, wallet, sipper or keys Perfect for the gym and other outdoor activities like hiking or day trips. Ideal for men and women alike.</li><li>Premium Quality Gym and Travel Bag:a perfect companion for your workouts and travels.</li><li>Abundance of Storage. These Bags has a large capacity, ensuring all your stuff stays organized and meets your requirements.</li><li>Superior PU material.</li></ul>', '<p>Brand- RNV</p><p>Product- Gym Bag</p><p>Use for- Gym</p><p>Size- Universal</p><p>Colour- Black, Brown</p><p>Net Quantity- 1 <strong>piece</strong></p><p>Product Care- Wipe with clean cloth</p><p>Closure Type- Zipper</p><p><strong>MAKE IN INDIA</strong></p>', '<p>PU</p>', 'gym-bag', 0, '', 0, 1, '0000-00-00', '2024-07-16 16:04:10', '', '', '18', '89', '0', '', 'KB-402', '', '', '1');
INSERT INTO `tbl_product` (`product_id`, `category_id`, `subcategory_id`, `department_id`, `brand_id`, `product_name`, `supplier_id`, `regular_price`, `sale_price`, `discount_price`, `available_stock`, `opening_stock`, `weight`, `weight_type`, `minimum_order`, `featured_image`, `featured_image2`, `featured_image3`, `short_description`, `description`, `specification`, `product_slug`, `is_home`, `category_list`, `show_hide`, `status`, `created_at`, `updated_at`, `class`, `season`, `gst`, `gst_amount`, `shipping_price`, `size_chart`, `product_code`, `featured_product`, `new_arraival`, `special`) VALUES
(44, 9, 0, 0, '1', 'Finger Guard', 0, 850, 765, 0, 0, 10, '', '', 0, '8620913WhatsApp_Image_2024-07-16_at_15.35.14_a8663c3f.jpg', '', '', '<p>Introducing the RNV Finger Sleeves Protectors Thumb Brace, your essential companion for protecting and supporting your fingers and thumb during various activities.&nbsp;</p><p>The flexible yet supportive material gently compresses the affected area, promoting blood circulation and reducing swelling, making them ideal for individuals dealing with arthritis, tendonitis, or other hand-related issues.</p><p>.Crafted from high-quality silicone material, our finger sleeves are built to last, resisting wear and tear even with frequent use.&nbsp;</p><p>.Whether you\'re engaged in sports, typing on a keyboard, or performing everyday tasks, our finger sleeves provide the support and protection you need.&nbsp;</p>', '<p>Brand- RNV</p><p>Product- Finger Guard</p><p>USE FOR- Fingers</p><p>SIZE- One Size Fits Most</p><p>Colour- Blue, Grey, Yellow</p><p>Net Quantity- 8 <strong>pieces</strong></p><p>Product Care- Hand Wash</p><p>Closure Type- Pull on</p><p><strong>MAKE IN INDIA</strong></p>', '<p>SILICONE</p>', 'finger-guard', 0, '', 0, 1, '0000-00-00', '2024-07-16 16:02:15', '', '', '18', '138', '0', '', 'FG-08', '', '', ''),
(45, 10, 0, 0, '1', 'WEIGHT LIFTING STRAP(with wrist)', 0, 450, 405, 0, 0, 10, '', '', 0, '3575631lg.JPG', '', '', '<p>RNV Weight Lifting Strap is perfectly designed to help your wrists during weight lifting exercises. Made of comfortable Nylon Elastic Strap with the neoprene padding. Extra length and width for improved gripping. Hand washable.</p>', '<p>Brand- RNV</p><p>Product- Weight Lifting Strap</p><p>USE FOR- While Gymming</p><p>SIZE- One Size Fits Most</p><p>Colour- Black</p><p>Net Quantity- 1 Pair</p><p>Product Care- Hand Wash</p><p>Closure Type- Buckle</p><p><strong>MAKE IN INDIA</strong></p>', '<p>Nylon Elastic&nbsp;</p><p>Neoprene</p>', 'weight-lifting-strapwith-wrist', 0, '', 0, 1, '0000-00-00', '2024-07-16 16:39:17', '', '', '18', '73', '0', '', 'LG-10', '', '', ''),
(46, 10, 0, 0, '1', 'WEIGHT LIFTING STRAP(Anti-Skid)', 0, 370, 333, 0, 0, 10, '', '', 0, '11836068ef5f9d0-1dca-4eaa-91db-f9d2c1ae6409.jpeg', '', '', '<p>RNV Weight Lifting Strap is perfectly designed to help your wrists during weight lifting exercises. Made of comfortable Anti-Skid padding. Extra length and width for improved gripping. Hand washable.<br><br>ONE SIZE FITS MOST</p>', '<p>Brand- RNV</p><p>Product- Weight Lifting Strap</p><p>USE FOR- While Gymming</p><p>SIZE- One Size Fits Most</p><p>Colour- Black</p><p>Net Quantity- 1 Pair</p><p>Product Care- Hand Wash</p><p>Closure Type- Buckle</p><p><strong>MAKE IN INDIA</strong></p>', '<p>NYLON ELASTIC</p>', 'weight-lifting-strapanti-skid-1', 0, '', 0, 1, '0000-00-00', '2024-07-16 16:44:45', '', '', '18', '60', '0', '', '1090', '', '', ''),
(47, 10, 0, 0, '1', 'WEIGHT LIFTING STRAP', 0, 280, 252, 0, 0, 10, '', '', 0, 'WhatsApp Image 2024-08-12 at 2.59.03 PM.jpeg', '', '', '<p>RNV Weight Lifting Strap is perfectly designed to help your wrists during weight lifting exercises. Made of comfortable nylon elastic with comfortable padding. Extra length and width for improved gripping. Hand washable.<br><br>ONE SIZE FITS MOST</p>', '<p>Brand- RNV</p><p>Product- Weight Lifting Strap</p><p>USE FOR- While Gymming</p><p>SIZE- One Size Fits Most</p><p>Colour- Black</p><p>Net Quantity- 1 Pair</p><p>Product Care- Hand Wash</p><p>Closure Type- Buckle</p><p><strong>MAKE IN INDIA</strong></p>', '<p>NYLON ELASTIC</p>', 'weight-lifting-strap-1', 0, '', 0, 1, '0000-00-00', '2024-08-12 15:04:16', '', '', '18', '45', '0', '', '990', '', '', ''),
(48, 1, 0, 0, '1', 'KNEE SUPPORT(3D)', 0, 550, 495, 0, 0, 10, '', '', 0, '42634730Y7A2014.JPG', '', '', '<p>*RNV knee support provides firm support and gentle compression over patella.</p><p>*It increases blood circulation to relieve pain.</p><p>*Helps recovery from knee injuries, minor sprains and arthritic pain.</p><p>*It is useful in sporting activities.</p><p>*Made of 4 way stretch elastic which makes it easy &amp; comfortable to wear.</p><p>&nbsp;</p>', '<p>Brand- RNV</p><p>Product- Knee Support</p><p>USE FOR- Knee</p><p>SIZE- S,M,L,XL</p><p>Colour- Grey Black</p><p>Net Quantity- 1<strong> Pair</strong></p><p>Product Care- Hand &amp; Machine Wash</p><p>Closure Type- Pull On</p><p><strong>MAKE IN INDIA</strong></p>', '<p>COTTON ELASTIC</p>', 'knee-support3d-1', 0, '', 0, 1, '0000-00-00', '2024-08-03 13:05:16', '', '', '5', '25', '0', '2885596KNEE.jpg', '1005', '', '', ''),
(49, 1, 0, 0, '1', 'KNEE SUPPORT(4D)', 0, 595, 536, 0, 0, 10, '', '', 0, '17497610Y7A8998.JPG', '', '', '<p>RNV knee support provides firm support and gentle compression over patella.</p><p>It increases blood circulation to relieve pain.</p><p>Helps recovery from knee injuries, minor sprains and arthritic pain.</p><p>It is useful in sporting activities.</p><p>Made of 4 way stretch elastic which makes it easy &amp; comfortable to wear.</p><p>ONE PAIR</p>', '<p>Brand- RNV</p><p>Product- Knee Support</p><p>USE FOR- Knee</p><p>SIZE- S,M,L,XL</p><p>Colour- Black</p><p>Net Quantity- 1<strong> Pair</strong></p><p>Product Care- Hand &amp; Machine Wash</p><p>Closure Type- Pull On</p><p><strong>MAKE IN INDIA</strong></p>', '<p>COTTON ELASTIC</p>', 'knee-support4d-1', 0, '', 0, 1, '0000-00-00', '2024-08-03 13:04:59', '', '', '5', '27', '0', '7778013KNEE.jpg', '1006', '', '', ''),
(50, 1, 0, 0, '1', 'KNEE SUPPORT(WITH STRAP)', 0, 295, 264, 0, 0, 10, '', '', 0, '6227965c075205f-6d65-4279-9d56-6220c654b46f.JPG', '', '', '<p>&nbsp;</p><p>*Provides firm support &amp; gentle compression over Patella.<br>*Increases blood circulation to relieve pain.<br>*Useful in sporting activities.<br>*Elastic straps on both sides provide extra grip.</p><p>ONE PIECE</p>', '<p>Brand- RNV</p><p>Product- Knee Support with strap</p><p>USE FOR- Knee</p><p>SIZE- S,M,L,XL</p><p>Colour- Black</p><p>Net Quantity- 1<strong> PIECE</strong></p><p>Product Care- Hand &amp; Machine Wash</p><p>Closure Type- Pull On</p><p><strong>MAKE IN INDIA</strong></p>', '<p>COTTON ELASTIC</p>', 'knee-supportwith-strap', 0, '', 0, 1, '0000-00-00', '2024-08-03 13:04:31', '', '', '5', '13', '0', '4106372KNEE.jpg', '842-A', '', '', ''),
(51, 1, 0, 0, '1', 'LONG KNEE SUPPORT(WITH STRAP)', 0, 595, 536, 0, 0, 10, '', '', 0, 'WhatsApp Image 2024-07-20 at 3.44.43 PM.jpeg', '', '', '', '<p>Brand- RNV</p><p>Product- Knee Support</p><p>USE FOR- Knee</p><p>SIZE- S,M,L,XL</p><p>Colour- Black</p><p>Net Quantity- 1<strong> Piece</strong></p><p>Product Care- Hand &amp; Machine Wash</p><p>Closure Type- Pull On</p><p><strong>MAKE IN INDIA</strong></p>', '<p>COTTON ELASTIC</p>', 'long-knee-supportwith-strap', 0, '', 0, 1, '0000-00-00', '2024-08-12 14:45:05', '', '', '5', '27', '0', '3932831KNEE.jpg', '848-A', '', '', ''),
(52, 1, 0, 0, '1', 'KNEE SUPPORT (ECO)', 0, 295, 266, 0, 0, 10, '', '', 0, '39940070Y7A2022.JPG', '', '', '<p>RNV knee support provides firm support and gentle compression over patella.</p><p>It increases blood circulation to relieve pain.</p><p>Helps recovery from knee injuries, minor sprains and arthritic pain.</p><p>It is useful in sporting activities.</p><p>Made of 4 way stretch elastic which makes it easy &amp; comfortable to wear.</p><p>ONE PAIR</p>', '<p>Brand- RNV</p><p>Product- Knee Support</p><p>USE FOR- Knee</p><p>SIZE- S,M,L,XL,XXL,XXXL</p><p>Colour- Black</p><p>Net Quantity- 1<strong> Pair</strong></p><p>Product Care- Hand &amp; Machine Wash</p><p>Closure Type- Pull On</p><p><strong>MAKE IN INDIA</strong></p>', '<p>COTTON ELASTIC</p>', 'knee-support-eco-1', 0, '', 0, 1, '0000-00-00', '2024-08-03 13:22:27', '', '', '5', '13', '0', '5319246KNEE.jpg', '555', '', '', ''),
(53, 9, 0, 0, '1', 'POSTURE CORRECTOR BELT', 0, 750, 675, 0, 0, 10, '', '', 0, 'WhatsApp Image 2024-08-13 at 1.55.58 PM (1).jpeg', '', '', '<ul><li>RNV Posture Corrector Belt improves posture and aligns the spine.</li><li>Made of breathable Neoprene fabric.</li><li>The adjustable velcro straps allow firm grip and prevent it from slipping down.</li><li>Magnetic Therapy for pain relief.</li></ul>', '<p>Brand- RNV</p><p>Product- Back Support</p><p>Use For- Posture Correction</p><p>Size- One Size Fits Most</p><p>Colour- Coal Black</p><p>Net Quantity- 1<strong>&nbsp;Piece</strong></p><p>Product Care- Hand &amp; Machine Wash</p><p>Closure Type- Velcro</p><p><strong>MAKE IN INDIA</strong></p>', '<p>NEOPRENE</p>', 'posture-corrector-belt-1', 0, '', 0, 1, '0000-00-00', '2024-08-13 18:05:54', '', '', '5', '34', '0', '', '9644', '', '', ''),
(54, 9, 0, 0, '1', 'RIGID TAPE', 0, 1350, 1215, 0, 0, 10, '', '', 0, '5455677RT-5.jpeg', '', '', '<ul><li><strong>Use this RNV Rigid sports tape every time you train for support and pain relief.</strong></li><li><strong>This RNV pain relief tape is made with a strong, cotton material that feels like a second skin.</strong></li><li><strong>No bunching, fraying, or wrinkling, only smooth, simple application.</strong></li><li><strong>And because its uncut, you can customise the length.</strong></li><li><strong>&nbsp;It contains no rubber or latex, and it doesnâ€™t leave a sticky, smelly residue behind like other athletic tapes.</strong></li></ul><p>&nbsp;</p>', '<p>Brand- RNV</p><p>Product- Rigid Tape</p><p>USE FOR- Any area of the skin</p><p>SIZE- 4.5 Meters</p><p>Width- 3.5 cm</p><p>Colour- Brown</p><p>Net Quantity- 1<strong>&nbsp;Pair</strong></p><p>Product Care- No washing</p><p>Closure Type- Loose</p><p><strong>MAKE IN INDIA</strong></p>', '<p>COTTON</p>', 'rigid-tape', 0, '', 0, 1, '0000-00-00', '2024-08-13 14:27:28', '', '', '18', '219', '0', '', 'RT-5', '', '', ''),
(55, 7, 0, 0, '1', 'ANKLE LOCK', 0, 680, 612, 0, 0, 10, '', '', 0, 'WhatsApp Image 2024-08-13 at 3.05.34 PM.jpeg', '', '', '', '<p><strong>Brand- RNV</strong></p><p><strong>Product- Ankle Lock</strong></p><p><strong>USE FOR- Legs Exercise</strong></p><p><strong>Colour- Black</strong></p><p><strong>Net Quantity- 1&nbsp;Pair</strong></p><p><strong>Closure Type- Velcro</strong></p><p><strong>MAKE IN INDIA</strong></p>', '<p><strong>NYLON PADDING</strong></p><p><strong>STEEL LOOP</strong></p>', 'ankle-lock', 0, '', 0, 1, '0000-00-00', '2024-09-12 13:35:15', '', '', '18', '110', '0', '', 'AL-02', '', '', ''),
(56, 7, 0, 0, '1', 'TOWEL SOCKS', 0, 295, 266, 0, 0, 10, '', '', 0, '3075610WhatsApp_Image_2024-05-23_at_5.41.25_PM.jpeg', '', '', '<ul><li>RNV Sports Ankle length Socks for men are built to withstand rigorous use. They maintain their shape and performance even after multiple washes, ensuring long-lasting reliability.</li><li>Made of very fine Towel material perfect for Gym and Sports activities.</li><li>Comes in 3 evergreen colours suitable for everyday use.</li></ul>', '', '<p>TOWEL</p>', 'towel-socks-1', 0, '', 0, 1, '0000-00-00', '2024-08-13 16:40:50', '', '', '5', '13', '0', '', 'TS-06', '', '', ''),
(57, 7, 0, 0, '1', 'DORI BAG', 0, 280, 252, 0, 0, 10, '', '', 0, '5020593WhatsApp_Image_2024-03-11_at_2.02.37_PM_(2).jpeg', '', '', '<ul><li>RNV Drawstring gym backpack for offers a compact design that is perfect for storing essentials making it ideal for daily use or travel.</li><li>Our Dori Bag for men is crafted from durable materials to ensure longevity and resilience, providing reliable protection for your belongings day after day.</li><li>Our Drawstring Bags for men is versatile and multifunctional, suitable for a variety of activities such as gym sessions, outdoor adventures.</li></ul>', '<p>Brand- RNV</p><p>Product- Dori Bag</p><p>Use for- Everyday</p><p>Size- Universal</p><p>Colour- Black</p><p>Net Quantity- 1 <strong>piece</strong></p><p>Product Care- Wipe with clean cloth</p><p>Closure Type- Drawstring</p><p><strong>MAKE IN INDIA</strong></p>', '<p>POLYESTER</p>', 'dori-bag', 0, '', 0, 1, '0000-00-00', '2024-08-14 15:17:28', '', '', '18', '45', '0', '', 'DB-13', '', '', '1'),
(58, 2, 0, 0, '1', 'ELBOW SUPPORT (4D)', 0, 280, 252, 0, 0, 10, '', '', 0, 'WhatsApp Image 2024-08-13 at 5.26.37 PM.jpeg', '', '', '<p>RNV Elbow Support is designed to increase blood circulation to relieve pain. Comfortable and breathable fabric and sleeve type makes it easy to wear.</p>', '<p>Brand- RNV</p><p>Product- Elbow Support</p><p>USE FOR- Elbow</p><p>SIZE- S,M,L,XL</p><p>Colour- Black</p><p>Net Quantity- 1 Piece</p><p>Product Care- Hand &amp; Machine Wash</p><p>Closure Type- Pull On</p><p><strong>MAKE IN INDIA</strong></p>', '<p>COTTON ELASTIC</p>', 'elbow-support-4d-1', 0, '', 0, 1, '0000-00-00', '2024-08-14 14:47:42', '', '', '5', '13', '0', '4913620ELBOW JOINT.jpg', '943', '', '', ''),
(59, 2, 0, 0, '1', 'ELBOW SUPPORT (WITH STRAP)', 0, 260, 234, 0, 0, 10, '', '', 0, 'WhatsApp Image 2024-08-13 at 5.43.53 PM (1).jpeg', '', '', '<p>RNV elbow support is designed to increase blood circulation to relieve pain. comfortable and breathable fabric and sleeve type makes it easy to wear. Strap for extra grip.</p>', '<p>Brand- RNV</p><p>Product- Elbow Support</p><p>USE FOR- Elbow</p><p>SIZE- S,M,L,XL</p><p>Colour- Black</p><p>Net Quantity- 1 Piece</p><p>Product Care- Hand &amp; Machine Wash</p><p>Closure Type- Pull On</p><p><strong>MAKE IN INDIA</strong></p>', '<p>COTTON ELASTIC</p>', 'elbow-support-with-strap', 0, '', 0, 1, '0000-00-00', '2024-08-14 14:46:43', '', '', '5', '12', '0', '3311094ELBOW JOINT.jpg', '843-A', '', '', ''),
(60, 7, 0, 0, '1', 'SHOES POUCH', 0, 150, 135, 0, 0, 10, '', '', 0, '4378862DSC_7902.JPG', '', '', '<ul><li>RNV Shoes pouch is made of superior quality synthetic material.</li><li>Used to keep your shoes in your luggage.</li><li>Water proof material to hold your wet or dirty shoes without spoiling the other stuff.</li><li>Zipper closure.</li></ul>', '<p>Brand- RNV</p><p>Product- Shoes Pouch</p><p>Use for- Everyday</p><p>Size- Universal</p><p>Colour- Black</p><p>Net Quantity- 1 <strong>piece</strong></p><p>Product Care- Wipe with clean cloth</p><p>Closure Type- Zipper</p><p><strong>MAKE IN INDIA</strong></p>', '<p>SYNTHETIC MATERIAL</p>', 'shoes-pouch', 0, '', 0, 1, '0000-00-00', '2024-08-14 15:19:21', '', '', '18', '24', '0', '', 'SP-2', '', '', ''),
(61, 10, 0, 0, '1', 'FOOT DROP STRETCHER', 0, 480, 432, 0, 0, 10, '', '', 0, '4521336DSC_7870.JPG', '', '', '<ul><li><strong>RNV Foot Stretcher is ideal for Yoga practitioners, Athletes, Dancers &amp; Physiotherapists.</strong></li><li><strong>It is an effective physical aid in the treatment of Planter Fasciitis, Heel Spurs &amp; Foot Drop.</strong></li><li><strong>Stretching helps improve blood circulation.</strong></li></ul>', '<p>Brand- RNV</p><p>Product- FOOT DROP STRETCHER</p><p>Use for- Legs Stretching</p><p>Size- Universal</p><p>Colour- Black</p><p>Net Quantity- 1 <strong>piece</strong></p><p>Product Care- Wipe with clean cloth</p><p><strong>MAKE IN INDIA</strong></p>', '<p>NYLON</p>', 'foot-drop-stretcher-1', 0, '', 0, 1, '0000-00-00', '2024-08-14 15:29:58', '', '', '12', '52', '0', '', 'FD-01', '', '', ''),
(62, 10, 0, 0, '1', 'GYM GLOVES(VENUS)', 0, 395, 356, 0, 0, 10, '', '', 0, '23577440Y7A3711.jpg', '', '', '<ul><li><strong>RNV gloves &nbsp;for gym are designed with high-quality, non-slip silicone padding on the palm, providing a superior grip during your workouts. This ensures that you can handle weights and equipment with confidence, reducing the risk of slipping.</strong></li><li><strong>The adjustable Velcro straps allow you to customize the fit for maximum comfort and stability.</strong></li><li><strong>Protect your hands from calluses, blisters, and abrasions with the full palm coverage.</strong></li><li><strong>Beautiful print at the back will make you stand out.</strong></li></ul>', '<p><strong>Brand- RNV</strong></p><p><strong>Product- GYM GLOVES</strong></p><p><strong>USE FOR- Workout, Weight Lifting</strong></p><p><strong>SIZE- One Size Fits Most</strong></p><p><strong>Colour- Blue</strong></p><p><strong>Net Quantity- 1 Pair</strong></p><p><strong>Product Care- Wipe with damp cloth</strong></p><p><strong>Closure Type- Velcro</strong></p><p><strong>MAKE IN INDIA</strong></p>', '<p>Silicone Padding</p><p>Polyester back</p>', 'gym-glovesvenus-1', 0, '', 0, 1, '0000-00-00', '2024-08-14 15:50:49', '', '', '5', '18', '0', '', 'MG-02(BLUE)', '', '', '1'),
(63, 10, 0, 0, '1', 'GYM GLOVES (VENUS)', 0, 395, 356, 0, 0, 10, '', '', 0, '52354770Y7A4326.jpg', '', '', '<ul><li><strong>RNV gloves &nbsp;for gym are designed with high-quality, non-slip silicone padding on the palm, providing a superior grip during your workouts. This ensures that you can handle weights and equipment with confidence, reducing the risk of slipping.</strong></li><li><strong>The adjustable Velcro straps allow you to customize the fit for maximum comfort and stability.</strong></li><li><strong>Protect your hands from calluses, blisters, and abrasions with the full palm coverage.</strong></li><li><strong>Beautiful print at the back will make you stand out.</strong></li></ul>', '<p><strong>Brand- RNV</strong></p><p><strong>Product- GYM GLOVES</strong></p><p><strong>USE FOR- Workout, Weight Lifting</strong></p><p><strong>SIZE- One Size Fits Most</strong></p><p><strong>Colour- Pink</strong></p><p><strong>Net Quantity- 1 Pair</strong></p><p><strong>Product Care- Wipe with damp cloth</strong></p><p><strong>Closure Type- Velcro</strong></p><p><strong>MAKE IN INDIA</strong></p>', '<p>SILICONE PADDING</p><p>POLYESTER BACK</p>', 'gym-gloves-venus-1', 0, '', 0, 1, '0000-00-00', '2024-08-14 15:55:29', '', '', '5', '18', '0', '', 'MG-02(PINK)', '', '', '1'),
(64, 2, 0, 0, '1', 'ELBOW WRAP', 0, 495, 445, 0, 0, 10, '', '', 0, '5689948Info_(1).JPG', '', '', '<p><strong>Helps support the elbow joint and aids recovery of injured elbows and relieves arthritis pain. Recommended for tennis and golfer\'s elbow. Since it\'s a loose strap you can wrap it according to the compression you need. Velcro closure for better grip.</strong><br><strong>Material- Neoprene</strong></p>', '<p>Brand- RNV</p><p>Product- Elbow Wrap</p><p>USE FOR- Elbow</p><p>Size- One Size Fits Most</p><p>Colour- Black</p><p>Net Quantity- 1 Piece</p><p>Product Care- Hand &amp; Machine Wash</p><p>Closure Type- Velcro Closure</p><p><strong>MAKE IN INDIA</strong></p>', '<p><strong>NEOPRENE</strong></p>', 'elbow-wrap-1', 0, '', 0, 1, '0000-00-00', '2024-08-21 14:30:49', '', '', '5', '22', '0', '', '989', '', '', ''),
(65, 6, 0, 0, '1', 'WRIST SUPPORT', 0, 380, 342, 0, 0, 10, '', '', 0, '5943173DSC_2725.JPG', '', '', '<ul><li>Supports, protects and immobilizes the wrist.</li><li>Controlled four-way compression</li><li>Relieves swelling &amp; stiffness.</li><li>Provides firm support around weak and strained area.&nbsp;<br>&nbsp;</li></ul>', '<p>Brand- RNV</p><p>Product- Wrist Support</p><p>USE FOR- Workout</p><p>SIZE- One Size Fits Most</p><p>Colour-Black</p><p>Net Quantity- 1<strong> Pair</strong></p><p>Product Care- Hand Wash with Mild Detergent</p><p>Closure Type- Velcro</p><p><strong>MAKE IN INDIA</strong></p>', '<p><strong>NEOPRENE</strong></p>', 'wrist-support-1', 0, '', 0, 1, '0000-00-00', '2024-08-21 14:52:58', '', '', '5', '17', '0', '', '866', '', '', ''),
(66, 6, 0, 0, '1', 'WRIST & THUMB SUPPORT', 0, 395, 356, 0, 0, 10, '', '', 0, '3430950826-A.jpg', '', '', '<ul><li><strong>Supports, protects and immobilizes the wrist.</strong></li><li><strong>Controlled four-way compression</strong></li><li><strong>Relieves swelling &amp; stiffness.</strong></li><li><strong>Provides firm support around weak and strained area.&nbsp;</strong></li></ul>', '<p><strong>Brand- RNV</strong></p><p><strong>Product- Wrist &amp; Thumb Support</strong></p><p><strong>USE FOR- Workout</strong></p><p><strong>SIZE- One Size Fits Most</strong></p><p><strong>Colour-Black</strong></p><p><strong>Net Quantity- 1 Piece</strong></p><p><strong>Product Care- Hand Wash with Mild Detergent</strong></p><p><strong>Closure Type- Velcro</strong></p><p><strong>MAKE IN INDIA</strong></p>', '<p><strong>NEOPRENE</strong></p>', 'wrist-thumb-support-1', 0, '', 0, 1, '0000-00-00', '2024-09-27 14:09:58', '', '', '5', '18', '0', '', '826-A', '', '', ''),
(67, 6, 0, 0, '1', 'WRIST & THUMB SUPPORT(WITH FINGER)', 0, 590, 531, 0, 0, 10, '', '', 0, '3772177852_1.jpg', '', '', '<ul><li>Supports, protects and immobilizes the wrist.</li><li>Controlled four-way compression</li><li>Relieves swelling &amp; stiffness.</li><li>Provides firm support around weak and strained area.&nbsp;</li></ul>', '<p>Brand- RNV</p><p>Product- Wrist &amp; Thumb Support(WITH FINGER)</p><p>USE FOR- Workout</p><p>SIZE- One Size Fits Most</p><p>Colour-Black</p><p>Net Quantity- 1<strong> Piece</strong></p><p>Product Care- Hand Wash with Mild Detergent</p><p>Closure Type- Velcro</p><p><strong>MAKE IN INDIA</strong></p>', '<p><strong>NEOPRENE</strong></p>', 'wrist-thumb-supportwith-finger-1', 0, '', 0, 1, '0000-00-00', '2024-08-21 15:09:26', '', '', '5', '27', '0', '', '852', '', '1', ''),
(68, 10, 0, 0, '1', 'LOOP BAND(LATEX)', 0, 795, 716, 0, 0, 10, '', '', 0, '1638280IMG_2996_-_Copy.jpg', '', '', '<ul><li><strong>Pack of five, 2 inch wide continuous loop elastic bands comes in different colors and resistance levels. Available in Light, Medium, Heavy, Extra Heavy &amp; Super Heavy levels.</strong></li><li><strong>Ideal for a variety of exercises including pilates, yoga, strength training, upper body workouts, and lower body workouts for the butt, legs, and thighs</strong></li><li><strong>RNV Latex Bands are available in pouch packing which is very easy to carry so that you do not miss your workout wherever you are.</strong></li></ul>', '<p>Brand- RNV</p><p>Product- Loop Band</p><p>USE FOR- Workout</p><p>SIZE- One Size Fits Most</p><p>Colour- Assorted</p><p>Net Quantity- 5 Pieces</p><p>Product Care- Wipe with damp cloth</p><p>Closure Type- Loop</p><p><strong>MAKE IN INDIA</strong></p>', '<p>100% LATEX</p>', 'loop-bandlatex', 0, '', 0, 1, '0000-00-00', '2024-08-24 13:49:17', '', '', '18', '129', '0', '', 'LB-5', '1', '', ''),
(69, 7, 0, 0, '1', 'HEAD  BAND', 0, 250, 225, 0, 0, 10, '', '', 0, '89999550Y7A9032.jpg', '', '', '<p>*High quality latex band.<br>*Ideal for Yoga, sports and general fitness<br>*Silicone strip inside reduces slipping<br>*Keeps hair under control with an elasticated fit<br>*One size fits all</p>', '<p>Brand- RNV</p><p>Product- Head Band</p><p>USE FOR- Workout</p><p>SIZE- One Size Fits Most</p><p>Colour- Assorted</p><p>Net Quantity- 1 Piece</p><p>Product Care- Wipe with damp cloth</p><p>Closure Type- Loop</p><p><strong>MAKE IN INDIA</strong></p>', '<p>LATEX</p><p>SILICONE STRIP INSIDE</p>', 'head-band', 0, '1', 0, 1, '0000-00-00', '2024-08-28 13:53:30', '', '', '5', '11', '0', '', 'HB 02', '', '', ''),
(70, 7, 0, 0, '1', 'BANDANA', 0, 450, 405, 0, 0, 10, '', '', 0, 'WhatsApp Image 2024-08-28 at 2.34.48 PM (3).jpeg', '', '', '<ul><li><strong>RNV Bandana is made up of very soft &amp; breathable material so that you can cover your mouth without any discomfort.</strong></li><li><strong>Protects your face &amp; mouth from dust and pollution.</strong></li><li><strong>Can be styled in different ways i.e, Head scarf, Head Band, Bandana etc.</strong></li><li><strong>Comes in 3 different colors.</strong></li></ul>', '<p>Brand- RNV</p><p>Product- Bandana</p><p>Use For-Face</p><p>Size - One Size Fits Most</p><p>Colo r- Assorted</p><p>Net Quantity- 3 Pieces</p><p>Product Care- Hand Wash and Machine Wash</p><p>Closure Type- Loop</p><p><strong>MAKE IN INDIA</strong></p>', '<p><strong>FEATHER TOUCH HOSIERY</strong></p>', 'bandana-1', 0, '', 0, 1, '0000-00-00', '2024-08-28 15:15:11', '', '', '12', '49', '0', '', 'BN-24', '', '', ''),
(71, 7, 0, 0, '1', 'SKIPPING ROPE', 0, 850, 765, 0, 0, 10, '', '', 0, '1377553download_(1).jpg', '', '', '<ul><li><strong>RNV Skipping Rope is perfect for fitness training, weight loss, aerobic exercise etc.</strong></li><li><strong>Anti slip handles for superior grip.</strong></li><li><strong>Ball Bearing design makes it tangle-free and avoid twisting and bending like other ropes.</strong></li><li><strong>This Speed Jump Rope is actually a plastic coated steel wire</strong></li><li><strong>Comes with 2 detachable wires.</strong></li></ul>', '<p><strong>BRAND- RNV</strong></p><p><strong>PRODUCT- Skipping Rope</strong></p><p><strong>USE FOR- Cardio</strong></p><p><strong>LENGTH- 9 Feet( approx)</strong></p><p><strong>COLOUR- Random</strong></p><p><strong>NET QUANTITY - 1 Piece</strong></p><p><strong>HANDLE- Plastic</strong></p><p><strong>TYPE- Ball Bearing</strong></p>', '<p><strong>Steel</strong></p>', 'skipping-rope', 0, '', 0, 1, '0000-00-00', '2024-09-12 13:18:09', '', '', '18', '81', '0', '', 'JR-60', '', '', '1'),
(72, 6, 0, 0, '1', 'WRIST SUPPORT(XTREME)', 0, 395, 356, 0, 0, 10, '', '', 0, 'WhatsApp Image 2025-01-09 at 2.41.22 PM.jpeg', '', '', '<ul><li><strong>RNV X-TREME Wrist Support is used to improve strength &amp; stability.</strong></li><li><strong>It reduces pressure on your wrist joints while gymming.</strong></li><li><strong>The Wrist Support wraps your wrist with just the right amount of compression.</strong></li><li><strong>Relieves swelling &amp; stiffness.&nbsp;</strong></li><li><strong>Provides firm support around weak and strained area.&nbsp;&nbsp;</strong></li><li><strong>Great for pain relief from sprained minor wrists injuries.</strong><br><br>&nbsp;</li></ul>', '<p><strong>Brand- RNV</strong></p><p><strong>Product- Wrist &amp; Thumb Support(WITH FINGER)</strong></p><p><strong>USE FOR- Workout</strong></p><p><strong>SIZE- One Size Fits Most</strong></p><p><strong>Colour-Black</strong></p><p><strong>Net Quantity- 1 Pair</strong></p><p><strong>Product Care- Hand Wash with Mild Detergent</strong></p><p><strong>Closure Type- Velcro</strong></p><p><strong>MAKE IN INDIA</strong></p>', '<p><strong>COTTON</strong></p><p><strong>NYLON</strong></p><p><strong>&nbsp;ELASTIC</strong></p><p><strong>RUBBER</strong></p>', 'wrist-supportxtreme-1', 0, '', 0, 1, '0000-00-00', '2025-01-09 09:25:38', '', '', '5', '18', '0', '', 'PP-30', '', '1', ''),
(73, 6, 0, 0, '1', 'WRIST WRAP (POWER+)', 0, 320, 288, 0, 0, 10, '', '', 0, '37110550Y7A9048.jpg', '', '', '<ul><li><strong>RNV Power+ Wrist Support is used to improve strength &amp; stability.</strong></li><li><strong>It reduces pressure on your wrist joints while gymming.</strong></li><li><strong>The Wrist Support wraps your wrist with just the right amount of compression.</strong></li><li><strong>Relieves swelling &amp; stiffness.&nbsp;</strong></li><li><strong>Provides firm support around weak and strained area.&nbsp;&nbsp;</strong></li><li><strong>Great for pain relief from sprained minor wrists injuries.</strong></li></ul>', '<p><strong>Brand- RNV</strong></p><p><strong>Product- Wrist Wrap</strong></p><p><strong>USE FOR- Workout</strong></p><p><strong>SIZE- One Size Fits Most</strong></p><p><strong>Colour-Black</strong></p><p><strong>Net Quantity- 1 Pair</strong></p><p><strong>Product Care- Hand Wash with Mild Detergent</strong></p><p><strong>Closure Type- Velcro</strong></p><p><strong>MAKE IN INDIA</strong></p>', '<p><strong>COTTON ELASTIC</strong></p>', 'wrist-wrap-power', 0, '', 0, 1, '0000-00-00', '2024-09-19 13:40:01', '', '', '5', '14', '0', '', 'PP-10', '', '', ''),
(74, 6, 0, 0, '1', 'WRIST SUPPORT(BASIC)', 0, 240, 216, 0, 0, 10, '', '', 0, '38159430Y7A9060.jpg', '', '', '<ul><li><strong>RNV Wrist Support is used to improve strength &amp; stability.</strong></li><li><strong>It reduces pressure on your wrist joints while gymming.</strong></li><li><strong>The Wrist Support wraps your wrist with just the right amount of compression.</strong></li><li><strong>Relieves swelling &amp; stiffness.&nbsp;</strong></li><li><strong>Provides firm support around weak and strained area.&nbsp;&nbsp;</strong></li><li><strong>Great for pain relief from sprained minor wrists injuries.</strong><br>&nbsp;</li></ul>', '<p><strong>Brand- RNV</strong></p><p><strong>Product- Wrist Wrap</strong></p><p><strong>USE FOR- Workout</strong></p><p><strong>SIZE- One Size Fits Most</strong></p><p><strong>Colour-Black</strong></p><p><strong>Net Quantity- 1 Pair</strong></p><p><strong>Product Care- Hand Wash with Mild Detergent</strong></p><p><strong>Closure Type- Velcro</strong></p><p><strong>MAKE IN INDIA</strong></p>', '<p><strong>COTTON ELASTIC</strong></p>', 'wrist-supportbasic', 0, '', 0, 1, '0000-00-00', '2024-09-27 13:58:07', '', '', '5', '11', '0', '', 'PP-09', '', '', ''),
(75, 6, 0, 0, '1', 'WRIST & THUMB SUPPORT(DRYTEX)', 0, 210, 189, 0, 0, 10, '', '', 0, '44391478683e62b-55bc-491e-b883-00ef97058c21.jpeg', '', '', '<ul><li><strong>Supports, protects and immobilizes the wrist.</strong></li><li><strong>Controlled four-way compression</strong></li><li><strong>Relieves swelling &amp; stiffness.</strong></li><li><strong>Provides firm support around weak and strained area.&nbsp;</strong></li></ul>', '<p><strong>Brand- RNV</strong></p><p><strong>Product- Wrist &amp; Thumb Support</strong></p><p><strong>USE FOR- Workout</strong></p><p><strong>SIZE- One Size Fits Most</strong></p><p><strong>Colour-Black</strong></p><p><strong>Net Quantity- 1 Piece</strong></p><p><strong>Product Care- Hand Wash with Mild Detergent</strong></p><p><strong>Closure Type- Velcro</strong></p><p><strong>MAKE IN INDIA</strong></p>', '<p><strong>DRYTEX</strong></p>', 'wrist-thumb-supportdrytex', 0, '', 0, 1, '0000-00-00', '2024-09-27 14:11:34', '', '', '5', '9', '0', '', '826', '', '', ''),
(76, 9, 0, 0, '1', 'FINGER PROTECTOR WITH GEL', 0, 795, 716, 0, 0, 10, '', '', 0, '1938591F-11.JPG', '', '', '<ul><li><strong>Premium Quality RNV Finger Support with Gel relieves finger pain and facilitates proper blood circulation over the fingers.&nbsp;</strong></li><li><strong>Fully lined with with breathable gel which restricts the friction between the affected fingers.</strong></li><li><strong>2 Pieces of 15 cm length.</strong></li><li><strong>Easily cut to any size.</strong></li><li><strong>Better to sprinkle some talcum powder before using it.&nbsp;</strong></li></ul>', '<p><strong>Brand- RNV</strong></p><p><strong>Product- Finger Support</strong></p><p><strong>Use For- Supporting Fingers</strong></p><p><strong>Size- S,M,L,XL</strong></p><p><strong>Colour- Beige</strong></p><p><strong>Net Quantity- 2 Pieces</strong></p><p><strong>Product Care- Wipe&nbsp;</strong></p><p><strong>Closure Type- Pull on</strong></p><p><strong>MAKE IN INDIA</strong></p>', '<p><strong>BREATHABLE GEL</strong></p>', 'finger-protector-with-gel-1', 0, '', 0, 1, '0000-00-00', '2024-10-01 14:02:51', '', '', '5', '36', '0', '', 'F-11', '', '', ''),
(77, 3, 0, 0, '1', 'ANKLE BINDER(NEOPRENE)', 0, 495, 446, 0, 0, 10, '', '', 0, '18771770Y7A9165.jpg', '', '', '<ul><li><strong>RNV Ankle Binder provides firm support &amp; gentle compression.*</strong></li><li><strong>Ideal for weak or unstrained ankle.</strong></li><li><strong>Increases blood circulation to relieve pain.</strong></li><li><strong>Suitable for most sport &amp; athletic activities.</strong><br><br><strong>Size- One Size Fits Most</strong></li></ul>', '<p><strong>Brand- RNV</strong></p><p><strong>Product- Ankle Binder</strong></p><p><strong>USE FOR- Ankle</strong></p><p><strong>SIZE- One Size Fits Most</strong></p><p><strong>Colour- Coal Black</strong></p><p><strong>Net Quantity- 1 Piece</strong></p><p><strong>Product Care- Hand &amp; Machine Wash</strong></p><p><strong>Closure Type- Velcro Closure</strong></p>', '<p><strong>NEOPRENE</strong></p>', 'ankle-binderneoprene-1', 0, '', 0, 1, '0000-00-00', '2024-10-01 14:53:58', '', '', '5', '22', '0', '', '857', '', '1', ''),
(78, 7, 0, 0, '1', 'KN-03', 0, 395, 356, 0, 0, 10, '', '', 0, 'WhatsApp Image 2025-01-09 at 2.42.56 PM.jpeg', '', '', '<ul><li><strong>RNV Head Band is made with Stretchable and Comfortable Material which makes it easy to wear.</strong></li><li><strong>It absorbs sweat faster.</strong></li><li><strong>This head Band is made to fit every Head size and shape.</strong></li><li><strong>Tie-on Headband will make you more fashionable and attractive.</strong></li></ul>', '<p><strong>Brand- RNV</strong></p><p><strong>Product- Head Band</strong></p><p><strong>USE FOR- Workout</strong></p><p><strong>SIZE- One Size Fits Most</strong></p><p><strong>Colour- Assorted</strong></p><p><strong>Net Quantity- 3 Pieces</strong></p><p><strong>Product Care- Hand Wash</strong></p><p><strong>Closure Type- Knot</strong></p><p>&nbsp;</p><p><strong>MAKE IN INDIA</strong></p>', '<p><strong>HOSIERY</strong></p>', 'kn-03-1', 0, '', 0, 1, '0000-00-00', '2025-01-09 09:23:47', '', '', '5', '18', '0', '', 'HEAD BAND (KNOT)', '', '', ''),
(79, 11, 0, 0, '1', 'SHIN & CALF WRAP', 0, 900, 810, 0, 0, 10, '', '', 0, 'WhatsApp Image 2025-01-09 at 3.30.20 PM (3).jpeg', '', '', '<p><strong>Quadriceps strain is an inflammation and pain in the front of the calf. It is characterised by pain, swelling and warmth over quadriceps muscles, muscle spasm or tightness, weak ness and fatigue. RNV Shin &amp; Calf Wrap gives you a great relief. Increases blood circulation to relieve pain.. Helps recovery from calf minor injuries. Useful in sporting activities.. Wrap with Velcro closure makes it more adjustable and easy to wear.</strong></p>', '<p>Brand- RNV</p><p>Product- Shin &amp; Calf Wrap</p><p>USE FOR- Shin</p><p>SIZE- One Size Fits Most</p><p>Colour- Coal Black</p><p>Net Quantity- 1 Piece</p><p>Product Care- Hand &amp; Machine Wash</p><p>Closure Type- Velcro</p><p><strong>MAKE IN INDIA</strong></p>', '<p><strong>NEOPRENE</strong></p>', 'shin-calf-wrap-1', 0, '', 0, 1, '0000-00-00', '2025-01-09 10:08:48', '', '', '5', '41', '0', '', '678', '', '', ''),
(80, 7, 0, 0, '1', 'CATCHING GLOVES', 0, 295, 266, 0, 0, 11, '', '', 0, '7437030WhatsApp_Image_2025-01-10_at_1.24.30_PM.jpeg', '', '', '<p><strong>These Half-Finger Gloves are designed for Pull Ups, Bar Work and Catching in Cricket.</strong></p><p><strong>Neoprene Padding for better comfort &amp; support while catching.</strong></p><p><strong>Helps reduce the risk of bruising.</strong></p>', '<p><strong>Brand- RNV</strong></p><p><strong>Product- CATCHING GLOVES</strong></p><p><strong>Type- Half Finger</strong></p><p><strong>USE FOR- Workout, Weight Lifting</strong></p><p><strong>SIZE- One Size Fits Most</strong></p><p><strong>Colour- Black</strong></p><p><strong>Net Quantity- 1 Pair</strong></p><p><strong>Product Care- Wipe with damp cloth</strong></p><p><strong>MAKE IN INDIA</strong></p>', '<p><strong>NEOPRENE</strong></p>', 'catching-gloves-1', 0, '', 0, 1, '0000-00-00', '2025-01-10 08:41:15', '', '', '12', '32', '0', '', 'HP-33', '', '', '1'),
(81, 7, 0, 0, '1', 'HEAD BAND', 0, 350, 315, 0, 0, 10, '', '', 0, 'WhatsApp Image 2025-01-10 at 2.58.27 PM.jpeg', '', '', '<ul><li><strong>RNV Head Band is made with Stretchable and Comfortable Material which makes it easy to wear.</strong></li><li><strong>It absorbs sweat faster.</strong></li><li><strong>This head Band is made to fit every Head size and shape.</strong></li><li><strong>This Headband will make you more fashionable and sporty.</strong></li></ul>', '<p><strong>Brand- RNV</strong></p><p><strong>Product- Head Band</strong></p><p><strong>USE FOR- Workout</strong></p><p><strong>SIZE- One Size Fits Most</strong></p><p><strong>Colour- Assorted</strong></p><p><strong>Net Quantity- 3 Pieces</strong></p><p><strong>Product Care- Hand Wash</strong></p><p><strong>Closure Type- Loop type</strong></p><p>&nbsp;</p><p><strong>MAKE IN INDIA</strong></p>', '<p><strong>COTTON HOSIERY</strong></p>', 'head-band-1', 0, '', 0, 1, '0000-00-00', '2025-01-10 09:31:09', '', '', '5', '16', '0', '', 'BW-13', '', '', '1'),
(82, 1, 0, 0, '1', 'KNEE SUPPORT(BAMBOO)', 0, 310, 279, 0, 0, 10, '', '', 0, '7186141WhatsApp_Image_2025-01-10_at_3.39.01_PM.jpeg', '', '', '<p>*<strong>RNV knee support provides firm support and gentle compression over patella.</strong></p><p><strong>*It increases blood circulation to relieve pain.</strong></p><p><strong>*Helps recovery from knee injuries, minor sprains and arthritic pain.</strong></p><p><strong>*It is useful in sporting activities.</strong></p><p><strong>*Made of 4 way stretch elastic which makes it easy &amp; comfortable to wear.</strong></p>', '<p>Brand- RNV</p><p>Product- Knee Support</p><p>USE FOR- Knee</p><p>SIZE- S,M,L,XL</p><p>Colour- &nbsp;Light Grey&nbsp;</p><p>Net Quantity- 1<strong> Pair</strong></p><p>Product Care- Hand &amp; Machine Wash</p><p>Closure Type- Pull On</p><p><strong>MAKE IN INDIA</strong></p>', '<p><strong>SPANDEX</strong></p><p><strong>ELASTIC</strong></p><p><strong>COTTON</strong></p><p><strong>SOFTLAWN THREAD</strong></p><p>&nbsp;</p>', 'knee-supportbamboo', 0, '', 0, 1, '0000-00-00', '2025-01-10 10:32:11', '', '', '5', '14', '0', '7360136KNEE.jpg', '705', '', '', ''),
(83, 7, 0, 0, '1', 'YOGA MAT COVER', 0, 210, 189, 0, 0, 10, '', '', 0, '3488752WhatsApp_Image_2025-01-10_at_5.04.55_PM.jpeg', '', '', '<p><strong>RNV Yoga Mat Cover is made with superior quality material.</strong></p><p><strong>Very durable and Handy.</strong></p><p><strong>Comes in Camo print.</strong></p><p><strong>Available for all the sizes of Yoga Mats.</strong></p><p>&nbsp;</p>', '<p>Brand- RNV</p><p>Product- Yoga Mat Cover</p><p>USE FOR- Yoga Mat</p><p>SIZE- All sizes of yoga mat</p><p>Colour- &nbsp;Grey Camo</p><p>Net Quantity- 1<strong> Piece</strong></p><p>Product Care- Hand &amp; Machine Wash</p><p>Closure Type- Zipper</p><p><strong>MAKE IN INDIA</strong></p>', '<p><strong>POLYESTER</strong></p>', 'yoga-mat-cover-1', 0, '', 0, 1, '0000-00-00', '2025-01-10 11:48:21', '', '', '12', '23', '0', '', 'YC-1', '', '', ''),
(84, 10, 0, 0, '1', 'SWEAT BAND', 0, 80, 72, 0, 0, 10, '', '', 0, '19424510Y7A9030.jpg', '', '', '', '', '<p><strong>TOWEL</strong></p>', 'sweat-band', 0, '', 0, 1, '0000-00-00', '2025-01-14 13:08:19', '', '', '5', '4', '0', '', 'WB-81', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_enquiry`
--

CREATE TABLE `tbl_product_enquiry` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_gallery`
--

CREATE TABLE `tbl_product_gallery` (
  `gallery_id` int(11) NOT NULL,
  `image` varchar(500) NOT NULL,
  `product_id` int(11) NOT NULL,
  `no` int(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_product_gallery`
--

INSERT INTO `tbl_product_gallery` (`gallery_id`, `image`, `product_id`, `no`, `title`, `caption`, `description`, `status`) VALUES
(1, 'Biorganic_2039_p1.jpg', 2, 0, '', '', '', 0),
(2, 'Biorganic_4693_p1.jpg', 2, 0, '', '', '', 0),
(3, 'Biorganic_6600_p1.jpg', 2, 0, '', '', '', 0),
(4, 'Biorganic_5494_p1.jpg', 2, 0, '', '', '', 0),
(5, 'Biorganic_2297_p1.jpg', 2, 0, '', '', '', 0),
(6, 'Biorganic_1265_IMG_2258.jpg', 6, 0, '', '', '', 0),
(7, 'Biorganic_9943_1677233887.jpg', 6, 0, '', '', '', 0),
(8, 'Biorganic_5471_20230124_161418904855_a573b3_Screen-printing-non-Zipper-Hoodies.jpg', 6, 0, '', '', '', 0),
(9, 'Biorganic_2300_20230125_162105676524_b32cd7_V-Neck--Multicolour-Print-T-shirt.jpg', 6, 0, '', '', '', 0),
(10, 'Biorganic_3145_1687339129.jpeg', 6, 0, '', '', '', 0),
(11, 'Biorganic_7938_DSC_7866.JPG', 7, 0, '', '', '', 0),
(12, 'Biorganic_1737_DSC_7860.JPG', 7, 0, '', '', '', 0),
(13, 'Biorganic_8231_DSC_7555.JPG', 7, 0, '', '', '', 0),
(14, 'Biorganic_4438_DSC_7869.JPG', 8, 0, '', '', '', 1),
(15, 'Biorganic_9258_DSC_7871.JPG', 8, 0, '', '', '', 1),
(16, 'Biorganic_2119_DSC_7825.JPG', 9, 0, '', '', '', 1),
(17, 'Biorganic_9168_DSC_7835.JPG', 9, 0, '', '', '', 1),
(18, 'Biorganic_3778_848 jar.JPG', 9, 0, '', '', '', 1),
(19, 'Biorganic_9153_DSC_7834.JPG', 9, 0, '', '', '', 1),
(20, 'Biorganic_2768_905 4.JPG', 10, 0, '', '', '', 1),
(21, 'Biorganic_1492_905 1.JPG', 10, 0, '', '', '', 1),
(22, 'Biorganic_5638_905.JPG', 10, 0, '', '', '', 1),
(23, 'Biorganic_4861_905 5.JPG', 10, 0, '', '', '', 1),
(24, 'Biorganic_879_DSC_7884.JPG', 11, 0, '', '', '', 1),
(25, 'Biorganic_1538_DSC_7532.JPG', 11, 0, '', '', '', 1),
(26, 'Biorganic_8816_DSC_7886 b.jpg', 11, 0, '', '', '', 1),
(27, 'Biorganic_4981_DSC_7888.JPG', 11, 0, '', '', '', 1),
(28, 'Biorganic_9134_DSC_7932.JPG', 12, 0, '', '', '', 1),
(29, 'Biorganic_804_DSC_7931.JPG', 12, 0, '', '', '', 1),
(30, 'Biorganic_7642_0368ea65-bac8-4240-b14a-ad97146d6530.JPG', 12, 0, '', '', '', 1),
(31, 'Biorganic_7128_7cb16214-f214-47d9-96c6-7f21831fc698.JPG', 13, 0, '', '', '', 1),
(32, 'Biorganic_5847_DSC_7938.JPG', 13, 0, '', '', '', 1),
(33, 'Biorganic_651_ANKLE 2.jpg', 14, 0, '', '', '', 1),
(34, 'Biorganic_174_ANKLE 5.JPG', 14, 0, '', '', '', 1),
(35, 'Biorganic_1722_ANKLE 1.jpg', 14, 0, '', '', '', 1),
(36, 'Biorganic_6690_DSC_7987.JPG', 15, 0, '', '', '', 1),
(37, 'Biorganic_1268_906 jar2.JPG', 15, 0, '', '', '', 1),
(38, 'Biorganic_6423_906 jar3.JPG', 15, 0, '', '', '', 1),
(39, 'Biorganic_2869_3d83978f-dbfe-40a8-96e7-13d14c677e1c.JPG', 16, 0, '', '', '', 1),
(40, 'Biorganic_5385_6e2484dc-7613-4475-a20e-e12bfdd2dade.JPG', 16, 0, '', '', '', 1),
(41, 'Biorganic_7134_c4baedc0-68ec-484a-86e3-6d0c03526955.JPG', 16, 0, '', '', '', 1),
(42, 'Biorganic_3050_AP 10.JPG', 17, 0, '', '', '', 0),
(43, 'Biorganic_209_AP10.JPG', 17, 0, '', '', '', 0),
(44, 'Biorganic_1854_8d84dacf-a06a-4808-ad9f-0d68d2870b89.jpeg', 18, 0, '', '', '', 1),
(45, 'Biorganic_9756_35be1f8f-5eb8-4856-b1e9-0408ed5e6e67.jpeg', 18, 0, '', '', '', 1),
(46, 'Biorganic_6401_7bbf1a86-df36-414f-9ba9-29592123fc9f.jpeg', 19, 0, '', '', '', 1),
(47, 'Biorganic_341_c5b71b08-1452-4cbb-9403-94214bfab6f2.jpeg', 19, 0, '', '', '', 1),
(48, 'Biorganic_6057_35be1f8f-5eb8-4856-b1e9-0408ed5e6e67.jpeg', 19, 0, '', '', '', 1),
(49, 'Biorganic_8092_e319e5ec-648f-4c0b-b3dc-6c3df988b622.JPG', 21, 0, '', '', '', 1),
(50, 'Biorganic_4009_fd481c94-a6e3-4bd7-8c21-4bf7402ad90b.JPG', 21, 0, '', '', '', 1),
(51, 'Biorganic_5936_SHOULDER SUPPORT 3.JPG', 22, 0, '', '', '', 1),
(52, 'Biorganic_6121_SHOULDER SUPPORT 2.JPG', 22, 0, '', '', '', 1),
(53, 'Biorganic_7415_SHOULDER SUPPORT 1.JPG', 22, 0, '', '', '', 1),
(54, 'Biorganic_5015_b1d60b5a-effb-4bc8-bd38-23cab125dd14 (1).JPG', 23, 0, '', '', '', 1),
(55, 'Biorganic_4051_a0aab108-65fb-41b6-8722-ee9fb3e6d35f (1).JPG', 23, 0, '', '', '', 1),
(56, 'Biorganic_9712_2b203aa7-ef5b-40dd-94c0-dc6b2b51205a.JPG', 24, 0, '', '', '', 1),
(57, 'Biorganic_5964_6b8b9088-d289-436d-91e4-3852f055acb9.JPG', 24, 0, '', '', '', 1),
(58, 'Biorganic_6234_93f50861-1bc4-449c-b620-47c0fa91c04e.JPG', 24, 0, '', '', '', 1),
(59, 'Biorganic_5845_93612a21-dfe5-49ca-acc1-aa53d600e213.JPG', 24, 0, '', '', '', 1),
(60, 'Biorganic_7474_5ba7fdbe-9bbd-44c7-9f55-5a75f1091c69.JPG', 25, 0, '', '', '', 1),
(61, 'Biorganic_721_994ab7e1-f7f0-4ba4-a4fb-54a012546067.JPG', 25, 0, '', '', '', 1),
(62, 'Biorganic_9932_5ba7fdbe-9bbd-44c7-9f55-5a75f1091c69.JPG', 25, 0, '', '', '', 0),
(63, 'Biorganic_947_a699323c-79dc-47f7-a86b-a0bd5f47cd6c.JPG', 25, 0, '', '', '', 1),
(64, 'Biorganic_8225_2ddbcfd8-b7ea-49ac-a438-c6ba98158400.JPG', 26, 0, '', '', '', 1),
(65, 'Biorganic_1883_0f8f8817-8bf2-4b1b-8c27-3c66d35c15ec.JPG', 26, 0, '', '', '', 1),
(66, 'Biorganic_4152_acac4845-8506-4687-b512-59e87f824f5a.JPG', 27, 0, '', '', '', 1),
(67, 'Biorganic_8931_354e5461-6ef4-4451-972d-06e2104de456.JPG', 27, 0, '', '', '', 1),
(68, 'Biorganic_1662_0fac38e5-1f94-4849-9aaf-54f96a988da6.JPG', 28, 0, '', '', '', 1),
(69, 'Biorganic_5207_f516d9c0-c9d5-4726-ba18-f54a4ca07360.JPG', 29, 0, '', '', '', 1),
(70, 'Biorganic_3204_DSC_7991.JPG', 29, 0, '', '', '', 1),
(71, 'Biorganic_4597_DSC_7993.JPG', 29, 0, '', '', '', 1),
(72, 'Biorganic_5515_0Y7A2943.JPG', 31, 0, '', '', '', 0),
(73, 'Biorganic_373_0Y7A2945.JPG', 31, 0, '', '', '', 0),
(74, 'Biorganic_9778_0Y7A2942.JPG', 31, 0, '', '', '', 0),
(75, 'Biorganic_2318_DSC_7605.JPG', 32, 0, '', '', '', 0),
(76, 'Biorganic_9663_0Y7A3027.JPG', 33, 0, '', '', '', 1),
(77, 'Biorganic_6207_', 33, 0, '', '', '', 0),
(78, 'Biorganic_477_0Y7A3026.JPG', 33, 0, '', '', '', 1),
(79, 'Biorganic_1362_0Y7A3031.JPG', 33, 0, '', '', '', 1),
(80, 'Biorganic_5963_0Y7A3029.JPG', 33, 0, '', '', '', 1),
(81, 'Biorganic_6314_0Y7A2965.JPG', 34, 0, '', '', '', 0),
(82, 'Biorganic_5868_0Y7A2960.JPG', 34, 0, '', '', '', 0),
(83, 'Biorganic_4632_0Y7A2955.JPG', 34, 0, '', '', '', 0),
(84, 'Biorganic_4738_0Y7A2963.JPG', 34, 0, '', '', '', 0),
(85, 'Biorganic_5316_0Y7A2972.JPG', 35, 0, '', '', '', 0),
(86, 'Biorganic_7667_0Y7A2976.JPG', 35, 0, '', '', '', 0),
(87, 'Biorganic_6182_0Y7A2982.JPG', 35, 0, '', '', '', 0),
(88, 'Biorganic_1081_0Y7A3009.JPG', 36, 0, '', '', '', 0),
(89, 'Biorganic_626_0Y7A3012.JPG', 36, 0, '', '', '', 0),
(90, 'Biorganic_788_0Y7A3011.JPG', 36, 0, '', '', '', 0),
(91, 'Biorganic_5263_0Y7A3012.JPG', 36, 0, '', '', '', 0),
(92, 'Biorganic_244_0Y7A3009.JPG', 36, 0, '', '', '', 0),
(93, 'Biorganic_2732_0Y7A3011.JPG', 36, 0, '', '', '', 0),
(94, 'Biorganic_8635_0Y7A2975.JPG', 35, 0, '', '', '', 1),
(95, 'Biorganic_4490_0Y7A2982.JPG', 35, 0, '', '', '', 1),
(96, 'Biorganic_5138_0Y7A2979.JPG', 35, 0, '', '', '', 1),
(97, 'Biorganic_5562_0Y7A3010.JPG', 37, 0, '', '', '', 0),
(98, 'Biorganic_2520_0Y7A3009.JPG', 37, 0, '', '', '', 0),
(99, 'Biorganic_4801_0Y7A3011.JPG', 37, 0, '', '', '', 0),
(100, 'Biorganic_3574_71f3oXThuNL._AC_UF350,350_QL80_.jpg', 31, 0, '', '', '', 0),
(101, 'Biorganic_6078_0Y7A2942.JPG', 31, 0, '', '', '', 1),
(102, 'Biorganic_3033_0Y7A2945.JPG', 31, 0, '', '', '', 1),
(103, 'Biorganic_6881_0Y7A2943.JPG', 31, 0, '', '', '', 1),
(104, 'Biorganic_1856_0Y7A2965.JPG', 34, 0, '', '', '', 1),
(105, 'Biorganic_1944_0Y7A2948.JPG', 34, 0, '', '', '', 1),
(106, 'Biorganic_1162_0Y7A2955.JPG', 34, 0, '', '', '', 1),
(107, 'Biorganic_2965_', 40, 0, '', '', '', 0),
(108, 'Biorganic_946_0Y7A9139 - Copy.jpg', 40, 0, '', '', '', 1),
(109, 'Biorganic_6993_0Y7A9137.jpg', 40, 0, '', '', '', 1),
(110, 'Biorganic_8085_0Y7A9141.jpg', 40, 0, '', '', '', 1),
(111, 'Biorganic_5193_0Y7A9134.jpg', 40, 0, '', '', '', 1),
(112, 'Biorganic_6756_WhatsApp Image 2024-03-08 at 1.26.41 PM (1).jpeg', 41, 0, '', '', '', 1),
(113, 'Biorganic_2885_WhatsApp Image 2024-03-08 at 1.30.32 PM.jpeg', 41, 0, '', '', '', 1),
(114, 'Biorganic_6639_DSC_7867.JPG', 42, 0, '', '', '', 0),
(115, 'Biorganic_8193_DSC_7862.JPG', 42, 0, '', '', '', 1),
(116, 'Biorganic_2430_DSC_7867.JPG', 42, 0, '', '', '', 0),
(117, 'Biorganic_9007_DSC_7868.JPG', 42, 0, '', '', '', 0),
(118, 'Biorganic_1061_DSC_7868.JPG', 42, 0, '', '', '', 0),
(119, 'Biorganic_9056_DSC_7867.JPG', 42, 0, '', '', '', 0),
(120, 'Biorganic_3653_DSC_7868.JPG', 42, 0, '', '', '', 0),
(121, 'Biorganic_5250_', 42, 0, '', '', '', 0),
(122, 'Biorganic_4284_DSC_7867.JPG', 42, 0, '', '', '', 0),
(123, 'Biorganic_8102_DSC_7605.JPG', 32, 0, '', '', '', 1),
(124, 'Biorganic_3291_DSC_7972.JPG', 32, 0, '', '', '', 1),
(125, 'Biorganic_3240_DSC_7897.JPG', 43, 0, '', '', '', 0),
(126, 'Biorganic_8725_DSC_7900.JPG', 43, 0, '', '', '', 0),
(127, 'Biorganic_5419_', 43, 0, '', '', '', 0),
(128, 'Biorganic_1613_images (4).jpeg', 43, 0, '', '', '', 0),
(129, 'Biorganic_6338_DSC_7897.JPG', 43, 0, '', '', '', 0),
(130, 'Biorganic_4762_WhatsApp Image 2024-03-11 at 2.02.36 PM.jpeg', 44, 0, '', '', '', 1),
(131, 'Biorganic_9861_WhatsApp Image 2024-03-11 at 2.02.37 PM (1).jpeg', 44, 0, '', '', '', 1),
(132, 'Biorganic_3405_WhatsApp Image 2024-07-16 at 15.43.59_e17bcdbc.jpg', 43, 0, '', '', '', 1),
(133, 'Biorganic_5741_WhatsApp Image 2024-07-16 at 15.43.59_12b2f760.jpg', 43, 0, '', '', '', 1),
(134, 'Biorganic_4714_WhatsApp Image 2024-07-16 at 15.43.59_8931c9a2.jpg', 43, 0, '', '', '', 1),
(135, 'Biorganic_8948_WhatsApp Image 2024-07-16 at 15.44.00_456f0f8f.jpg', 43, 0, '', '', '', 1),
(136, 'Biorganic_3589_DSC_7868.JPG', 42, 0, '', '', '', 0),
(137, 'Biorganic_8414_DSC_7867.JPG', 42, 0, '', '', '', 0),
(138, 'Biorganic_9329_0Y7A2984.JPG', 45, 0, '', '', '', 0),
(139, 'Biorganic_1399_0Y7A2984.JPG', 45, 0, '', '', '', 0),
(140, 'Biorganic_2735_0Y7A2985.JPG', 45, 0, '', '', '', 0),
(141, 'Biorganic_4133_0Y7A2992.JPG', 45, 0, '', '', '', 0),
(142, 'Biorganic_8664_0Y7A2993.JPG', 45, 0, '', '', '', 0),
(143, 'Biorganic_4771_WhatsApp Image 2024-07-16 at 16.05.31_1da5952b.jpg', 42, 0, '', '', '', 1),
(144, 'Biorganic_6195_0Y7A2988.JPG', 45, 0, '', '', '', 0),
(145, 'Biorganic_339_WhatsApp Image 2024-07-16 at 16.05.30_66b00d50.jpg', 42, 0, '', '', '', 1),
(146, 'Biorganic_3187_0Y7A2985.JPG', 45, 0, '', '', '', 0),
(147, 'Biorganic_176_0Y7A2985.JPG', 45, 0, '', '', '', 0),
(148, 'Biorganic_8951_0Y7A2984.JPG', 45, 0, '', '', '', 0),
(149, 'Biorganic_550_IMG_6799.JPG', 45, 0, '', '', '', 0),
(150, 'Biorganic_6719_IMG_6799.JPG', 45, 0, '', '', '', 1),
(151, 'Biorganic_8519_IMG_6798.JPG', 45, 0, '', '', '', 1),
(152, 'Biorganic_8839_IMG_6797.JPG', 45, 0, '', '', '', 1),
(153, 'Biorganic_2537_IMG_6796.JPG', 45, 0, '', '', '', 1),
(154, 'Biorganic_8181_daadb11b-65a3-4fd9-8cbf-2dfaeb079b8d.jpeg', 46, 0, '', '', '', 1),
(155, 'Biorganic_9139_DSC_7887.JPG', 46, 0, '', '', '', 0),
(156, 'Biorganic_3331_DSC_7890 copy.jpg', 46, 0, '', '', '', 0),
(157, 'Biorganic_2520_DSC_7889.JPG', 46, 0, '', '', '', 1),
(158, 'Biorganic_9718_DSC_7890 copy.jpg', 46, 0, '', '', '', 0),
(159, 'Biorganic_1265_DSC_7886 copy.jpg', 47, 0, '', '', '', 0),
(160, 'Biorganic_3143_DSC_7887.JPG', 46, 0, '', '', '', 0),
(161, 'Biorganic_1647_DSC_7889.JPG', 46, 0, '', '', '', 0),
(162, 'Biorganic_220_77607549-a411-4865-bb4b-2f6ce0600d02.jpeg', 46, 0, '', '', '', 1),
(163, 'Biorganic_584_DSC_7887.JPG', 46, 0, '', '', '', 0),
(164, 'Biorganic_6787_DSC_7890 copy.jpg', 46, 0, '', '', '', 0),
(165, 'Biorganic_2480_WhatsApp Image 2024-07-19 at 5.57.27 PM.jpeg', 46, 0, '', '', '', 1),
(166, 'Biorganic_7005_WhatsApp Image 2024-07-19 at 6.00.41 PM.jpeg', 47, 0, '', '', '', 0),
(167, 'Biorganic_5274_WhatsApp Image 2024-07-19 at 6.00.42 PM.jpeg', 47, 0, '', '', '', 0),
(168, 'Biorganic_3212_WhatsApp Image 2024-07-19 at 6.00.42 PM (1).jpeg', 47, 0, '', '', '', 1),
(169, 'Biorganic_8770_WhatsApp Image 2024-07-19 at 6.01.11 PM.jpeg', 43, 0, '', '', '', 0),
(170, 'Biorganic_2837_DSC_7899.JPG', 43, 0, '', '', '', 1),
(171, 'Biorganic_2778_WhatsApp Image 2024-03-05 at 2.13.24 PM.jpeg', 46, 0, '', '', '', 0),
(172, 'Biorganic_2466_0Y7A2984.JPG', 46, 0, '', '', '', 0),
(173, 'Biorganic_349_', 46, 0, '', '', '', 0),
(174, 'Biorganic_7498_0Y7A2988.JPG', 46, 0, '', '', '', 0),
(175, 'Biorganic_9479_DSC_7904.JPG', 47, 0, '', '', '', 0),
(176, 'Biorganic_8298_DSC_7899.JPG', 47, 0, '', '', '', 0),
(177, 'Biorganic_593_DSC_7897.JPG', 47, 0, '', '', '', 0),
(178, 'Biorganic_997_DSC_7996.JPG', 47, 0, '', '', '', 0),
(179, 'Biorganic_6038_DSC_7899.JPG', 47, 0, '', '', '', 0),
(180, 'Biorganic_1093_DSC_7906.JPG', 47, 0, '', '', '', 0),
(181, 'Biorganic_8766_DSC_7899.JPG', 47, 0, '', '', '', 0),
(182, 'Biorganic_4691_DSC_7900.JPG', 47, 0, '', '', '', 0),
(183, 'Biorganic_5836_DSC_7996.JPG', 47, 0, '', '', '', 0),
(184, 'Biorganic_2353_0Y7A9130.jpg', 47, 0, '', '', '', 0),
(185, 'Biorganic_623_DSC_7885.JPG', 47, 0, '', '', '', 0),
(186, 'Biorganic_2464_0Y7A2016.JPG', 48, 0, '', '', '', 1),
(187, 'Biorganic_6237_0Y7A2015.JPG', 48, 0, '', '', '', 1),
(188, 'Biorganic_7241_Info (2).jpg', 48, 0, '', '', '', 1),
(189, 'Biorganic_7307_0Y7A2018.JPG', 48, 0, '', '', '', 1),
(190, 'Biorganic_3402_1006 1.jpg', 49, 0, '', '', '', 1),
(191, 'Biorganic_2133_1006 4D.jpg', 49, 0, '', '', '', 1),
(192, 'Biorganic_8382_1006.jpg', 49, 0, '', '', '', 1),
(193, 'Biorganic_7980_0Y7A8998 Ghost.JPG', 49, 0, '', '', '', 1),
(194, 'Biorganic_2005_b36027ed-29b8-4cd8-aa7b-083152e05339.JPG', 50, 0, '', '', '', 1),
(195, 'Biorganic_9928_ed672737-4a10-466f-8084-950768e8dff1.JPG', 50, 0, '', '', '', 1),
(196, 'Biorganic_1862_64884cd2-c554-4c1d-a6d9-cbffdfbb6b46.JPG', 50, 0, '', '', '', 1),
(197, 'Biorganic_166_0Y7A9347.JPG', 51, 0, '', '', '', 0),
(198, 'Biorganic_255_0Y7A9356.JPG', 51, 0, '', '', '', 0),
(199, 'Biorganic_5963_Info (1).jpg', 52, 0, '', '', '', 1),
(200, 'Biorganic_9107_0Y7A2023.JPG', 52, 0, '', '', '', 1),
(201, 'Biorganic_6593_0Y7A2024.JPG', 52, 0, '', '', '', 1),
(202, 'Biorganic_8671_0Y7A2026.JPG', 52, 0, '', '', '', 1),
(203, 'Biorganic_6592_0Y7A9092.jpg', 37, 0, '', '', '', 1),
(204, 'Biorganic_4033_0Y7A9093.jpg', 37, 0, '', '', '', 1),
(205, 'Biorganic_2130_0Y7A9096.jpg', 37, 0, '', '', '', 1),
(206, 'Biorganic_5540_0Y7A9091.jpg', 37, 0, '', '', '', 1),
(207, 'Biorganic_9196_DSC_7841.JPG', 36, 0, '', '', '', 1),
(208, 'Biorganic_4063_DSC_7842.JPG', 36, 0, '', '', '', 0),
(209, 'Biorganic_9413_DSC_7844.JPG', 36, 0, '', '', '', 0),
(210, 'Biorganic_9706_WhatsApp Image 2024-08-12 at 2.19.59 PM (1).jpeg', 36, 0, '', '', '', 1),
(211, 'Biorganic_7518_WhatsApp Image 2024-08-12 at 2.19.59 PM (2).jpeg', 36, 0, '', '', '', 1),
(212, 'Biorganic_7033_WhatsApp Image 2024-08-12 at 2.56.44 PM.jpeg', 51, 0, '', '', '', 1),
(213, 'Biorganic_3836_WhatsApp Image 2024-08-12 at 2.56.43 PM.jpeg', 51, 0, '', '', '', 1),
(214, 'Biorganic_3126_WhatsApp Image 2024-08-12 at 2.56.44 PM (1).jpeg', 51, 0, '', '', '', 1),
(215, 'Biorganic_8564_WhatsApp Image 2024-08-12 at 2.59.02 PM.jpeg', 47, 0, '', '', '', 1),
(216, 'Biorganic_2195_0Y7A9376.JPG', 53, 0, '', '', '', 0),
(217, 'Biorganic_2843_RT5.jpg', 54, 0, '', '', '', 1),
(218, 'Biorganic_6570_WhatsApp Image 2024-05-23 at 5.41.38 PM (1).jpeg', 56, 0, '', '', '', 1),
(219, 'Biorganic_2594_WhatsApp Image 2024-05-23 at 5.41.38 PM.jpeg', 56, 0, '', '', '', 1),
(220, 'Biorganic_8616_WhatsApp Image 2024-03-11 at 2.02.54 PM.jpeg', 57, 0, '', '', '', 1),
(221, 'Biorganic_7444_WhatsApp Image 2024-03-11 at 2.02.37 PM.jpeg', 57, 0, '', '', '', 1),
(222, 'Biorganic_4455_WhatsApp Image 2024-03-11 at 2.02.37 PM.jpeg', 57, 0, '', '', '', 0),
(223, 'Biorganic_3191_WhatsApp Image 2024-08-13 at 1.55.58 PM (2).jpeg', 53, 0, '', '', '', 1),
(224, 'Biorganic_5249_WhatsApp Image 2024-08-13 at 1.55.57 PM.jpeg', 53, 0, '', '', '', 1),
(225, 'Biorganic_388_WhatsApp Image 2024-08-13 at 1.55.58 PM.jpeg', 53, 0, '', '', '', 1),
(226, 'Biorganic_2250_WhatsApp Image 2024-08-13 at 1.55.58 PM.jpeg', 53, 0, '', '', '', 0),
(227, 'Biorganic_8846_WhatsApp Image 2024-08-13 at 5.43.53 PM.jpeg', 59, 0, '', '', '', 1),
(228, 'Biorganic_6296_WhatsApp Image 2024-08-13 at 5.43.52 PM.jpeg', 59, 0, '', '', '', 1),
(229, 'Biorganic_2165_WhatsApp Image 2024-08-13 at 5.26.36 PM.jpeg', 58, 0, '', '', '', 1),
(230, 'Biorganic_217_WhatsApp Image 2024-08-13 at 5.26.36 PM (1).jpeg', 58, 0, '', '', '', 1),
(231, 'Biorganic_3855_WhatsApp Image 2024-08-13 at 3.05.35 PM (1).jpeg', 55, 0, '', '', '', 1),
(232, 'Biorganic_6511_WhatsApp Image 2024-08-13 at 3.05.35 PM.jpeg', 55, 0, '', '', '', 1),
(233, 'Biorganic_1190_WhatsApp Image 2024-08-13 at 3.05.35 PM (2).jpeg', 55, 0, '', '', '', 1),
(234, 'Biorganic_5881_DSC_7908.JPG', 60, 0, '', '', '', 1),
(235, 'Biorganic_8114_DSC_7869.JPG', 61, 0, '', '', '', 1),
(236, 'Biorganic_9933_DSC_7871.JPG', 61, 0, '', '', '', 1),
(237, 'Biorganic_1080_DSC_7872.JPG', 61, 0, '', '', '', 0),
(238, 'Biorganic_9955_824 1.JPG', 30, 0, '', '', '', 1),
(239, 'Biorganic_5546_824.JPG', 30, 0, '', '', '', 1),
(240, 'Biorganic_5943_0Y7A3708.jpg', 62, 0, '', '', '', 1),
(241, 'Biorganic_7270_0Y7A3714.jpg', 62, 0, '', '', '', 1),
(242, 'Biorganic_3817_0Y7A3712.jpg', 62, 0, '', '', '', 1),
(243, 'Biorganic_6915_0Y7A4320.jpg', 63, 0, '', '', '', 1),
(244, 'Biorganic_9772_0Y7A4323.jpg', 63, 0, '', '', '', 1),
(245, 'Biorganic_604_0Y7A4322.jpg', 63, 0, '', '', '', 1),
(246, 'Biorganic_3751_0Y7A4326.jpg', 63, 0, '', '', '', 1),
(247, 'Biorganic_3997_0Y7A2068.JPG', 64, 0, '', '', '', 1),
(248, 'Biorganic_4356_0Y7A2071.JPG', 64, 0, '', '', '', 1),
(249, 'Biorganic_6378_0Y7A2069.JPG', 64, 0, '', '', '', 1),
(250, 'Biorganic_7258_DSC_2721.JPG', 65, 0, '', '', '', 1),
(251, 'Biorganic_1731_DSC_2723.JPG', 65, 0, '', '', '', 1),
(252, 'Biorganic_3048_DSC_2719.JPG', 65, 0, '', '', '', 1),
(253, 'Biorganic_6139_DSC_2959.JPG', 65, 0, '', '', '', 1),
(254, 'Biorganic_9405_826.A.jpg', 66, 0, '', '', '', 1),
(255, 'Biorganic_8108_826a.jpg', 66, 0, '', '', '', 1),
(256, 'Biorganic_9756_852 2.jpg', 67, 0, '', '', '', 1),
(257, 'Biorganic_3009_852 3.jpg', 67, 0, '', '', '', 1),
(258, 'Biorganic_1333_852.jpg', 67, 0, '', '', '', 1),
(259, 'Biorganic_4799_0Y7A9109.jpg', 68, 0, '', '', '', 1),
(260, 'Biorganic_1419_0Y7A9106.jpg', 68, 0, '', '', '', 1),
(261, 'Biorganic_5361_0Y7A9108.jpg', 68, 0, '', '', '', 1),
(262, 'Biorganic_8382_0Y7A9107.jpg', 68, 0, '', '', '', 1),
(263, 'Biorganic_8646_0Y7A9034.jpg', 69, 0, '', '', '', 1),
(264, 'Biorganic_3683_0Y7A9031.jpg', 69, 0, '', '', '', 1),
(265, 'Biorganic_6495_0Y7A9035.jpg', 69, 0, '', '', '', 1),
(266, 'Biorganic_7560_0Y7A9033.jpg', 69, 0, '', '', '', 1),
(267, 'Biorganic_7335_WhatsApp Image 2024-08-28 at 2.34.48 PM (2).jpeg', 70, 0, '', '', '', 1),
(268, 'Biorganic_2039_WhatsApp Image 2024-08-28 at 2.34.48 PM (1).jpeg', 70, 0, '', '', '', 1),
(269, 'Biorganic_720_WhatsApp Image 2024-08-28 at 2.34.48 PM.jpeg', 70, 0, '', '', '', 1),
(270, 'Biorganic_2467_WhatsApp Image 2024-08-28 at 2.34.49 PM.jpeg', 70, 0, '', '', '', 1),
(271, 'Biorganic_7119_WhatsApp Image 2024-03-11 at 2.02.38 PM (1).jpeg', 71, 0, '', '', '', 1),
(272, 'Biorganic_1729_WhatsApp Image 2024-03-11 at 2.02.39 PM (2).jpeg', 71, 0, '', '', '', 1),
(273, 'Biorganic_5430_sk-350.JPG', 71, 0, '', '', '', 0),
(274, 'Biorganic_1065_0Y7A9083.jpg', 71, 0, '', '', '', 0),
(275, 'Biorganic_511_DSC_7910.JPG', 71, 0, '', '', '', 0),
(276, 'Biorganic_9118_0Y7A2994.JPG', 72, 0, '', '', '', 0),
(277, 'Biorganic_9563_0Y7A2997.JPG', 72, 0, '', '', '', 0),
(278, 'Biorganic_2696_0Y7A9051.jpg', 73, 0, '', '', '', 1),
(279, 'Biorganic_4196_0Y7A9053.jpg', 73, 0, '', '', '', 1),
(280, 'Biorganic_1965_0Y7A9050-1.jpg', 73, 0, '', '', '', 1),
(281, 'Biorganic_8155_0Y7A9054.jpg', 73, 0, '', '', '', 1),
(282, 'Biorganic_715_0Y7A9056.jpg', 74, 0, '', '', '', 1),
(283, 'Biorganic_224_0Y7A9061.jpg', 74, 0, '', '', '', 1),
(284, 'Biorganic_9049_0Y7A9063.jpg', 74, 0, '', '', '', 1),
(285, 'Biorganic_9986_0Y7A9059.jpg', 74, 0, '', '', '', 1),
(286, 'Biorganic_3507_a3674d28-e60c-4138-973f-05010a8fd181.jpeg', 75, 0, '', '', '', 0),
(287, 'Biorganic_7913_7aa9237e-d261-40fd-a8b8-fe9f588d1799.jpeg', 75, 0, '', '', '', 0),
(288, 'Biorganic_2953_a3674d28-e60c-4138-973f-05010a8fd181.jpeg', 75, 0, '', '', '', 1),
(289, 'Biorganic_8703_7aa9237e-d261-40fd-a8b8-fe9f588d1799.jpeg', 75, 0, '', '', '', 1),
(290, 'Biorganic_472_0Y7A2998.JPG', 72, 0, '', '', '', 0),
(291, 'Biorganic_5711_85407de1-2421-4168-986d-4b8ffd952a41.JPG', 76, 0, '', '', '', 1),
(292, 'Biorganic_1892_F-11.JPG', 76, 0, '', '', '', 1),
(293, 'Biorganic_7799_857.jpg', 77, 0, '', '', '', 1),
(294, 'Biorganic_2612_857..jpg', 77, 0, '', '', '', 1),
(295, 'Biorganic_9058_0Y7A9167.jpg', 77, 0, '', '', '', 1),
(296, 'Biorganic_9392_DSC_7835.JPG', 78, 0, '', '', '', 0),
(297, 'Biorganic_7745_0Y7A2997.JPG', 72, 0, '', '', '', 0),
(298, 'Biorganic_6505_WhatsApp Image 2025-01-09 at 2.42.57 PM.jpeg', 78, 0, '', '', '', 1),
(299, 'Biorganic_1497_WhatsApp Image 2025-01-09 at 2.42.56 PM (2).jpeg', 78, 0, '', '', '', 1),
(300, 'Biorganic_1402_WhatsApp Image 2025-01-09 at 2.42.56 PM (1).jpeg', 78, 0, '', '', '', 1),
(301, 'Biorganic_9486_WhatsApp Image 2025-01-09 at 2.42.57 PM (1).jpeg', 78, 0, '', '', '', 1),
(302, 'Biorganic_5803_WhatsApp Image 2025-01-09 at 2.41.23 PM.jpeg', 72, 0, '', '', '', 1),
(303, 'Biorganic_2749_WhatsApp Image 2025-01-09 at 2.41.23 PM (1).jpeg', 72, 0, '', '', '', 1),
(304, 'Biorganic_9239_WhatsApp Image 2025-01-09 at 2.41.23 PM (2).jpeg', 72, 0, '', '', '', 1),
(305, 'Biorganic_1645_WhatsApp Image 2025-01-09 at 2.41.23 PM (3).jpeg', 72, 0, '', '', '', 1),
(306, 'Biorganic_407_WhatsApp Image 2025-01-09 at 2.41.23 PM (4).jpeg', 72, 0, '', '', '', 1),
(307, 'Biorganic_3042_0Y7A3048.JPG', 79, 0, '', '', '', 0),
(308, 'Biorganic_5026_WhatsApp Image 2025-01-09 at 3.30.20 PM.jpeg', 79, 0, '', '', '', 1),
(309, 'Biorganic_9437_WhatsApp Image 2025-01-09 at 3.30.20 PM (1).jpeg', 79, 0, '', '', '', 1),
(310, 'Biorganic_2638_WhatsApp Image 2025-01-09 at 3.30.20 PM (2).jpeg', 79, 0, '', '', '', 1),
(311, 'Biorganic_6310_WhatsApp Image 2025-01-10 at 2.58.28 PM.jpeg', 81, 0, '', '', '', 1),
(312, 'Biorganic_5057_WhatsApp Image 2025-01-10 at 2.58.27 PM (2).jpeg', 81, 0, '', '', '', 1),
(313, 'Biorganic_6314_WhatsApp Image 2025-01-10 at 2.58.27 PM (1).jpeg', 81, 0, '', '', '', 1),
(314, 'Biorganic_1150_WhatsApp Image 2025-01-10 at 2.58.28 PM (1).jpeg', 81, 0, '', '', '', 1),
(315, 'Biorganic_8045_WhatsApp Image 2025-01-10 at 3.40.25 PM.jpeg', 82, 0, '', '', '', 1),
(316, 'Biorganic_5717_0Y7A9026.jpg', 84, 0, '', '', '', 1),
(317, 'Biorganic_8021_0Y7A9029.jpg', 84, 0, '', '', '', 1),
(318, 'Biorganic_9567_0Y7A9027.jpg', 84, 0, '', '', '', 1),
(319, 'Biorganic_7552_0Y7A9024.jpg', 84, 0, '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_rate_log`
--

CREATE TABLE `tbl_product_rate_log` (
  `rate_log_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_last_rate` varchar(50) NOT NULL,
  `product_current_rate` varchar(50) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_promo`
--

CREATE TABLE `tbl_promo` (
  `promo_id` int(11) NOT NULL,
  `promo_code` varchar(50) NOT NULL,
  `discount` varchar(50) NOT NULL,
  `expiry_date` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_promo`
--

INSERT INTO `tbl_promo` (`promo_id`, `promo_code`, `discount`, `expiry_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '111222', '5', '2023-07-27', 1, '2023-05-26 15:01:45', '2023-06-07 16:10:00'),
(2, 'vishal', '10', '2023-07-07', 1, '2023-06-07 16:10:35', '2023-06-07 16:52:52'),
(3, '96528', '20', '2023-06-30', 1, '2023-06-27 16:53:18', '2023-06-27 16:53:18'),
(4, 'TST', '12', '2023-08-26', 1, '2023-08-24 14:40:51', '2023-08-24 14:40:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pro_quantity`
--

CREATE TABLE `tbl_pro_quantity` (
  `id` int(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `change_status` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_pro_quantity`
--

INSERT INTO `tbl_pro_quantity` (`id`, `product_id`, `quantity`, `remark`, `change_status`, `status`, `created_at`) VALUES
(1, '4', '16', 'Ruderpur', 'add', '1', '2023-06-24 07:43:18'),
(2, '4', '', '', 'less', '1', '2023-06-24 07:43:29'),
(3, '4', '16', '', 'less', '1', '2023-06-24 07:43:43'),
(4, '5', '', '', 'less', '1', '2023-06-28 07:27:58'),
(5, '5', '', '', 'less', '1', '2023-06-28 07:28:04'),
(6, '5', '', '', 'less', '1', '2023-06-28 07:28:07'),
(7, '5', '', '', 'less', '1', '2023-06-28 07:28:10'),
(8, '5', '', '', 'less', '1', '2023-06-28 07:28:14'),
(9, '5', '', '', 'less', '1', '2023-06-28 07:28:17'),
(10, '5', '', '', 'less', '1', '2023-06-28 07:28:20'),
(11, '1', '', '', 'less', '1', '2023-06-28 07:28:26'),
(12, '71', '', '', 'add', '1', '2025-01-10 08:41:04'),
(13, '80', '1', '', 'add', '1', '2025-01-10 08:41:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase`
--

CREATE TABLE `tbl_purchase` (
  `purchase_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `purchase_date` date NOT NULL,
  `item_id` varchar(150) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `rate` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `total_amt` int(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `user_id` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `id` int(100) NOT NULL,
  `rating` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_right_banner`
--

CREATE TABLE `tbl_right_banner` (
  `id` int(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service_enquiry`
--

CREATE TABLE `tbl_service_enquiry` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `service_id` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subcategory`
--

CREATE TABLE `tbl_subcategory` (
  `subcategory_id` int(11) NOT NULL,
  `subcategory_number` varchar(255) NOT NULL,
  `subcategory_name` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `subcategory_image` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `service` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_subcategory`
--

INSERT INTO `tbl_subcategory` (`subcategory_id`, `subcategory_number`, `subcategory_name`, `category_id`, `slug`, `subcategory_image`, `status`, `created_at`, `updated_at`, `service`) VALUES
(1, '1842', 'Classic', 1, '1classic', 'Classic_4026_DSC_7867.JPG', 1, '2023-06-28 12:48:16', '2023-06-28 12:48:16', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(150) NOT NULL,
  `supplier_contact` varchar(20) NOT NULL,
  `supplier_contact_person` varchar(50) NOT NULL,
  `supplier_email` varchar(100) NOT NULL,
  `supplier_address` longtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(255) NOT NULL,
  `video1` varchar(255) NOT NULL,
  `video2` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_video`
--

INSERT INTO `tbl_video` (`id`, `video1`, `video2`, `updated_at`) VALUES
(1, '3YVjvDTFqiI', 'M_LpuQJxm3A', '2023-07-29 11:50:57');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_website`
--

CREATE TABLE `tbl_website` (
  `website_id` int(11) NOT NULL,
  `website_name` varchar(200) NOT NULL,
  `website_title` varchar(200) NOT NULL,
  `seo_title` varchar(200) NOT NULL,
  `seo_description` longtext NOT NULL,
  `logo` varchar(200) NOT NULL,
  `banners` varchar(200) NOT NULL,
  `contact` varchar(200) NOT NULL,
  `website_color` varchar(200) NOT NULL,
  `banner_text1` longtext NOT NULL,
  `banners_text2` longtext NOT NULL,
  `divers_description` longtext NOT NULL,
  `reedem_description` longtext NOT NULL,
  `bottom_top_description` longtext NOT NULL,
  `bottom_description` longtext NOT NULL,
  `website_slug` longtext NOT NULL,
  `date` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `wishlist_id` int(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `wishlist_product` varchar(100) NOT NULL,
  `whislist_price` varchar(100) NOT NULL,
  `wishlist_qty` int(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`wishlist_id`, `user_id`, `product_id`, `wishlist_product`, `whislist_price`, `wishlist_qty`, `status`) VALUES
(1, '2', 1, '', '90', 1, 0),
(2, '2', 3, '', '90', 1, 0),
(3, '14', 9, '', '495', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bulk_contact`
--
ALTER TABLE `bulk_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `tbl_address`
--
ALTER TABLE `tbl_address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `tbl_add_cart`
--
ALTER TABLE `tbl_add_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_adm_review`
--
ALTER TABLE `tbl_adm_review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `tbl_all_banner`
--
ALTER TABLE `tbl_all_banner`
  ADD PRIMARY KEY (`all_banner_id`);

--
-- Indexes for table `tbl_auth`
--
ALTER TABLE `tbl_auth`
  ADD PRIMARY KEY (`auth_id`);

--
-- Indexes for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_category_gallery`
--
ALTER TABLE `tbl_category_gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `tbl_client_login_log`
--
ALTER TABLE `tbl_client_login_log`
  ADD PRIMARY KEY (`client_log`);

--
-- Indexes for table `tbl_color`
--
ALTER TABLE `tbl_color`
  ADD PRIMARY KEY (`color_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_customer1`
--
ALTER TABLE `tbl_customer1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_delivery_assign`
--
ALTER TABLE `tbl_delivery_assign`
  ADD PRIMARY KEY (`delivery_assign_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`department_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_enquiry`
--
ALTER TABLE `tbl_enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_home_banner`
--
ALTER TABLE `tbl_home_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `tbl_left_banner`
--
ALTER TABLE `tbl_left_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_location`
--
ALTER TABLE `tbl_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_location_map`
--
ALTER TABLE `tbl_location_map`
  ADD PRIMARY KEY (`mapping_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_login_log`
--
ALTER TABLE `tbl_login_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `tbl_newsletter`
--
ALTER TABLE `tbl_newsletter`
  ADD PRIMARY KEY (`newsletter_id`);

--
-- Indexes for table `tbl_offer`
--
ALTER TABLE `tbl_offer`
  ADD PRIMARY KEY (`offer_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_order_management`
--
ALTER TABLE `tbl_order_management`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_pin`
--
ALTER TABLE `tbl_pin`
  ADD PRIMARY KEY (`pin_id`);

--
-- Indexes for table `tbl_price`
--
ALTER TABLE `tbl_price`
  ADD PRIMARY KEY (`price_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_product_enquiry`
--
ALTER TABLE `tbl_product_enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_gallery`
--
ALTER TABLE `tbl_product_gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `tbl_product_rate_log`
--
ALTER TABLE `tbl_product_rate_log`
  ADD PRIMARY KEY (`rate_log_id`);

--
-- Indexes for table `tbl_promo`
--
ALTER TABLE `tbl_promo`
  ADD PRIMARY KEY (`promo_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_pro_quantity`
--
ALTER TABLE `tbl_pro_quantity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  ADD PRIMARY KEY (`purchase_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_right_banner`
--
ALTER TABLE `tbl_right_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_service_enquiry`
--
ALTER TABLE `tbl_service_enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subcategory`
--
ALTER TABLE `tbl_subcategory`
  ADD PRIMARY KEY (`subcategory_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`supplier_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_website`
--
ALTER TABLE `tbl_website`
  ADD PRIMARY KEY (`website_id`);

--
-- Indexes for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bulk_contact`
--
ALTER TABLE `bulk_contact`
  MODIFY `contact_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2568;

--
-- AUTO_INCREMENT for table `tbl_address`
--
ALTER TABLE `tbl_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_add_cart`
--
ALTER TABLE `tbl_add_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_adm_review`
--
ALTER TABLE `tbl_adm_review`
  MODIFY `review_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_all_banner`
--
ALTER TABLE `tbl_all_banner`
  MODIFY `all_banner_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_auth`
--
ALTER TABLE `tbl_auth`
  MODIFY `auth_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cart_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_category_gallery`
--
ALTER TABLE `tbl_category_gallery`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_client_login_log`
--
ALTER TABLE `tbl_client_login_log`
  MODIFY `client_log` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_color`
--
ALTER TABLE `tbl_color`
  MODIFY `color_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_customer1`
--
ALTER TABLE `tbl_customer1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_delivery_assign`
--
ALTER TABLE `tbl_delivery_assign`
  MODIFY `delivery_assign_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_enquiry`
--
ALTER TABLE `tbl_enquiry`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `tbl_home_banner`
--
ALTER TABLE `tbl_home_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_left_banner`
--
ALTER TABLE `tbl_left_banner`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_location`
--
ALTER TABLE `tbl_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_location_map`
--
ALTER TABLE `tbl_location_map`
  MODIFY `mapping_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_login_log`
--
ALTER TABLE `tbl_login_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_newsletter`
--
ALTER TABLE `tbl_newsletter`
  MODIFY `newsletter_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_offer`
--
ALTER TABLE `tbl_offer`
  MODIFY `offer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_order_management`
--
ALTER TABLE `tbl_order_management`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `tbl_pin`
--
ALTER TABLE `tbl_pin`
  MODIFY `pin_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_price`
--
ALTER TABLE `tbl_price`
  MODIFY `price_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `tbl_product_enquiry`
--
ALTER TABLE `tbl_product_enquiry`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_product_gallery`
--
ALTER TABLE `tbl_product_gallery`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=320;

--
-- AUTO_INCREMENT for table `tbl_product_rate_log`
--
ALTER TABLE `tbl_product_rate_log`
  MODIFY `rate_log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_promo`
--
ALTER TABLE `tbl_promo`
  MODIFY `promo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_pro_quantity`
--
ALTER TABLE `tbl_pro_quantity`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  MODIFY `purchase_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_right_banner`
--
ALTER TABLE `tbl_right_banner`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_service_enquiry`
--
ALTER TABLE `tbl_service_enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_subcategory`
--
ALTER TABLE `tbl_subcategory`
  MODIFY `subcategory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_website`
--
ALTER TABLE `tbl_website`
  MODIFY `website_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `wishlist_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
