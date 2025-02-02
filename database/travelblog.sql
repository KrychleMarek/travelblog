-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Pát 17. led 2025, 13:43
-- Verze serveru: 10.4.32-MariaDB
-- Verze PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `travelblog`
--
CREATE DATABASE IF NOT EXISTS `travelblog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `travelblog`;

-- --------------------------------------------------------

--
-- Struktura tabulky `articles`
--

CREATE TABLE `articles` (
  `idArticles` int(11) NOT NULL,
  `Title` varchar(120) NOT NULL,
  `Content` longtext NOT NULL,
  `ProfileImg` varchar(45) NOT NULL,
  `Author` int(11) NOT NULL,
  `Destination` int(11) NOT NULL,
  `DatePublic` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `articles`
--

INSERT INTO `articles` (`idArticles`, `Title`, `Content`, `ProfileImg`, `Author`, `Destination`, `DatePublic`) VALUES
(1, 'Nejlelpší výhledy testonska', 'V Testonsku se nenachází nic zajímavého.', './images/stockMountians.jpg', 1, 1, '1000-01-01'),
(2, 'Krásy Placeholdárijského hlavního města.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Et harum quidem rerum facilis est et expedita distinctio. Duis risus. Etiam neque. Nulla non lectus sed nisl molestie malesuada. Nulla turpis magna, cursus sit amet, suscipit a, interdum id, felis. Nullam rhoncus aliquam metus. In laoreet, magna id viverra tincidunt, sem odio bibendum justo, vel imperdiet sapien wisi sed libero. Aenean vel massa quis mauris vehicula lacinia. Nullam lectus justo, vulputate eget mollis sed, tempor sed magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', './images/stockMountians.jpg', 2, 2, '2025-01-22'),
(3, 'Placeholdárijský nejznámější autor.', 'Marcus Tullius Cicero (3. ledna 106 př. n. l. Arpinum – 7. prosince 43 př. n. l. Řím) byl římský řečník, republikánský politik, filosof a spisovatel.\r\n\r\nNarodil se v Arpinu (dnes Arpino, asi 100 km jihovýchodně od Říma) v zámožné rodině jezdeckého stavu, která se však v politickém životě neangažovala. První vzdělání získal v Arpinu, později se vzdělával ještě v Římě. Studoval především rétoriku, ale i právo a filosofii. V době studií překládal z řečtiny.\r\n\r\nRoku 79 př. n. l. začal vystupovat veřejně, jako řečník u soudu. V tomto roce byl nucen ze zdravotních důvodů opustit Řím, odjel do Řecka, kde se spřátelil s řadou významných filosofů mladší Akademie a seznámil se s různými proudy řecké filosofie. Později cestoval i po Malé Asii a na ostrov Rhodos. Na těchto cestách se dále vzdělával a cvičil v rétorice. O dva roky později 77 př. n. l. se vrátil do Říma, zde se oženil s Terentií a začal se věnovat veřejným záležitostem, především obhajobám u soudu. Svou činností získal značnou popularitu a roku 76 př. n. l. byl zvolen quaestorem na Sicílii. Vyznamenal se poctivostí a snahou o spravedlnost a po ukončení quaestury se stal senátorem.[10]\r\n\r\n\r\nMarcus T. Cicero – mramorová busta\r\nRoku 70 př. n. l. se stal aedilem kurulským, v roce 67 př. n. l. městským praetorem a roku 64 př. n. l. byl proti zchudlému aristokratovi Catilinovi zvolen konzulem. Jako zastánce římské „smíšené ústavy“ s prvky monarchie (imperium magistrátů), aristokracie (senát jako nejvyšší moc) i demokracie (concilium plebis, lidové shromáždění) odvrátil pozemkový zákon předložený Publiem Serviliem Rullem, protože by ohrozil moc aristokracie, a Catilinovo spiknutí, které patrně usilovalo o diktaturu v Římě.\r\n\r\nPo porážce Catilinova povstání dal bez soudu popravit řadu jeho přívrženců a roku 58 př. n. l. musel proto odejít do vyhnanství, ale již roku 57 př. n. l. mu byl povolen návrat do Říma. Zde se dále snažil vystupovat na obranu republiky, ale vzhledem k tomu, že veškerá moc již byla v rukou triumvirů, odešel z veřejného života a věnoval se výuce především gramatiky a rétoriky, veřejně vystupoval pouze při soudních obhajobách.\r\n\r\nPřed občanskou válkou se přiklonil na stranu Pompeiovu, po jeho porážce odmítl vedení republikánského loďstva a raději odprosil Caesara, se kterým se vrátil do Říma jako přítel. Od roku 47 př. n. l. nevykonával žádnou veřejnou funkci a věnoval se pouze filosofii. Na veřejnosti vystupoval pouze v případech, kdy některý z jeho přátel potřeboval pomoc (Oratio pro Marcello, Oratio pro Ligario a Oratio pro rege Deiotario).\r\n\r\nPo Caesarově smrti věřil v obrat k republice, ale byl zklamán, proto opustil Řím, cestou ho zastihla nepravdivá zpráva, že se Antonius vzdal moci. Po návratu zjistil, že se tato zpráva nezakládala na pravdě a začal proti Marcu Antoniovi veřejně vystupovat a přednesl 14 řečí proti Antoniovi, kde ho velmi ostře napadal. Po těchto projevech senát vyhlásil Antoniovi válku, jejíž vedení svěřil Octavianovi, ten se ale s Antoniem spojil a tím byla moc senátu definitivně zlomena. Cicero se pokusil o útěk z Říma, avšak byl 7. prosince 43 př. n. l. dostižen a zabit. Mrtvolu vláčeli po římských ulicích, jeho hlava a pravá ruka byly vystaveny na Foru.[10]', './images/stockMountians.jpg', 1, 2, '2025-01-02'),
(4, 'Nejlepší pochutiny testonska.', 'Pes na grilu, gril na psovy, pečená košišta, koláčová buchta.', './images/stockMountians.jpg', 2, 1, '2024-11-14');

-- --------------------------------------------------------

--
-- Struktura tabulky `destination`
--

CREATE TABLE `destination` (
  `idDestination` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `destination`
--

INSERT INTO `destination` (`idDestination`, `Name`) VALUES
(1, 'Testonsko'),
(2, 'Placehodária');

-- --------------------------------------------------------

--
-- Struktura tabulky `users`
--

CREATE TABLE `users` (
  `idUsers` int(11) NOT NULL,
  `UserName` varchar(45) NOT NULL,
  `Login` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `users`
--

INSERT INTO `users` (`idUsers`, `UserName`, `Login`, `Password`, `Email`) VALUES
(1, 'František Slepička', 'kkk', '', 'pepa@hmmmail.cz'),
(2, 'Pepa Vomáčka', 'ppp', '', 'pepa@mmmail.cz');

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`idArticles`);

--
-- Indexy pro tabulku `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`idDestination`);

--
-- Indexy pro tabulku `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUsers`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `articles`
--
ALTER TABLE `articles`
  MODIFY `idArticles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pro tabulku `destination`
--
ALTER TABLE `destination`
  MODIFY `idDestination` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pro tabulku `users`
--
ALTER TABLE `users`
  MODIFY `idUsers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
