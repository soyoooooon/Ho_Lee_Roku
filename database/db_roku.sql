-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 14, 2020 at 03:02 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_roku`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_era`
--

CREATE TABLE `tbl_era` (
  `era_id` int(11) NOT NULL,
  `year` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_era`
--

INSERT INTO `tbl_era` (`era_id`, `year`) VALUES
(1, '1950'),
(2, '1960'),
(3, '1970'),
(4, '1980'),
(5, '1990');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_era_media`
--

CREATE TABLE `tbl_era_media` (
  `era_media_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  `era_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_era_media`
--

INSERT INTO `tbl_era_media` (`era_media_id`, `media_id`, `era_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 2),
(5, 5, 3),
(6, 6, 3),
(7, 7, 4),
(8, 8, 4),
(9, 9, 5),
(10, 10, 5),
(11, 11, 1),
(12, 12, 1),
(13, 13, 2),
(14, 14, 2),
(15, 15, 3),
(16, 16, 3),
(17, 17, 4),
(18, 18, 4),
(19, 19, 5),
(20, 20, 5),
(21, 21, 1),
(22, 22, 1),
(23, 23, 2),
(24, 24, 2),
(25, 25, 3),
(26, 26, 3),
(27, 27, 4),
(28, 28, 4),
(29, 29, 5),
(30, 30, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_era_movies`
--

CREATE TABLE `tbl_era_movies` (
  `era_movie_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `era_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_era_movies`
--

INSERT INTO `tbl_era_movies` (`era_movie_id`, `movie_id`, `era_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 2),
(5, 5, 3),
(6, 6, 3),
(7, 7, 4),
(8, 8, 4),
(9, 9, 5),
(10, 10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_era_music`
--

CREATE TABLE `tbl_era_music` (
  `era_music_id` int(11) NOT NULL,
  `music_id` int(11) NOT NULL,
  `era_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_era_music`
--

INSERT INTO `tbl_era_music` (`era_music_id`, `music_id`, `era_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 2),
(5, 5, 3),
(6, 6, 3),
(7, 7, 4),
(8, 8, 4),
(9, 9, 5),
(10, 10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_era_tv`
--

CREATE TABLE `tbl_era_tv` (
  `era_tv_id` int(11) NOT NULL,
  `tv_id` int(11) NOT NULL,
  `era_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_era_tv`
--

INSERT INTO `tbl_era_tv` (`era_tv_id`, `tv_id`, `era_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 2),
(5, 5, 3),
(6, 6, 3),
(7, 7, 4),
(8, 8, 4),
(9, 9, 5),
(10, 10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_media`
--

CREATE TABLE `tbl_media` (
  `media_id` int(11) NOT NULL,
  `media_name` varchar(100) NOT NULL,
  `media_image` varchar(100) NOT NULL,
  `media_video` varchar(100) NOT NULL,
  `media_type` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_media`
--

INSERT INTO `tbl_media` (`media_id`, `media_name`, `media_image`, `media_video`, `media_type`) VALUES
(1, 'Peter Pan', '1950_peter.jpg', '1950_peterpan.mp4', 'movie'),
(2, 'Rear Window', '1950_rear.jpg', '1950_rearwindow.mp4', 'movie'),
(3, '101 Dalmations', '1960_dalmation.jpg', '101dalmations.mp4', 'movie'),
(4, 'Psycho', '1960_psycho.jpg', 'Psycho.mp4', 'movie'),
(5, 'Patton', '1970_patton.jpg', 'Patton.mp4', 'movie'),
(6, 'The Aristocats', '1970_aristocat.jpg', 'TheAristocats.mp4', 'movie'),
(7, 'Star Wars: The Empire Strikes Back', '1980_star.jpg', 'starwars.mp4', 'movie'),
(8, 'E.T.', '1980_et.jpg', 'AcrosstheMoon-et.mp4', 'movie'),
(9, 'GoodFellas', '1990_goodfellas.jpg', 'Goodfellas-PaulPaulieCicero.mp4', 'movie'),
(10, 'Home Alone', '1990_home.jpg', 'HomeAlone.mp4', 'movie'),
(11, 'Leave It To Beaver', '1950_beaver.jpg', 'June Cleaver on womens changing roles in the 1960s.mp4', 'tv'),
(12, 'Ozzie and Harriet', '1950_ozzie.jpg', 'Ozzie.mp4', 'tv'),
(13, 'Coronation Street', '1960_coronation.jpg', 'CoronationStreet-FirstScene.mp4', 'tv'),
(14, 'The Flintstones', '1960_flintstones.jpg', 'Subway in the stone ageThe Flintstones.mp4', 'tv'),
(15, 'All In The Family', '1970_family.jpg', 'allinthefamily.mp4', 'tv'),
(16, 'M*A*S*H', '1970_mash.jpg', 'MASH.mp4', 'tv'),
(17, 'The Cosby Show', '1980_cosby.jpg', 'cosbyshow.mp4', 'tv'),
(18, 'Dallas', '1980_dallas.jpg', 'dallas.mp4', 'tv'),
(19, 'Seinfeld', '1990_seinfeld.jpg', 'Seinfeld.mp4', 'tv'),
(20, 'The Simpsons', '1990_simpsons.jpg', 'simpsons.mp4', 'tv'),
(21, 'All My Love', '1950_all.jpg', '1950_allmylove.mp4', 'music'),
(22, 'Put Your Head On My Shoulder', '1950_paul.jpg', '1950_PaulAnka.mp4', 'music'),
(23, 'I\'m A Believer', '1960_believer.jpg', 'TheMonkees.mp3', 'music'),
(24, 'Stand By Me', '1960_stand.jpg', 'Stand By Me.mp3', 'music'),
(25, 'Close to You', '1970_close.jpg', 'Carpenters - Close to you.mp3', 'music'),
(26, 'Let It Be', '1970_let.jpg', 'Let-it-be.mp3', 'music'),
(27, 'Call Me', '1980_call.jpg', 'Blondie-CallMe.mp3', 'music'),
(28, 'Eye of the Tiger', '1980_tiger.jpg', 'Survivor.mp3', 'music'),
(29, 'U Can\'t Touch This', '1990_hammer.jpg', 'MCHammer.mp3', 'music'),
(30, 'Smells Like Teen Spirit', '1990_nirvana.jpg', 'SmellsLikeTeenSpirit.mp3', 'music');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_media_kid`
--

CREATE TABLE `tbl_media_kid` (
  `media_kid_id` int(11) NOT NULL,
  `media_name` varchar(400) NOT NULL,
  `media_image` varchar(400) NOT NULL,
  `media_video` varchar(1000) NOT NULL,
  `media_type` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_media_kid`
--

INSERT INTO `tbl_media_kid` (`media_kid_id`, `media_name`, `media_image`, `media_video`, `media_type`) VALUES
(1, 'Peter Pan', '1950_peter.jpg', '1950_peterpan.mp4', 'movie'),
(2, '101 Dalmations', '1960_dalmation.jpg', '101 Dalmatians Official Clip Home Again (1961) - Animation Movie HD.mp4', 'movie'),
(3, 'The Aristocats', '1970_aristocat.jpg', 'The Aristocats Edgar sedates the cats HD.mp4', 'movie'),
(4, 'Star Wars: The Empire Strikes Back', '1980_star.jpg', 'The Empire Strikes Back Bounty Hunter scene (Full).mp4', 'movie'),
(5, 'E.T.', '1980_et.jpg', 'Across the Moon - E.T. The Extra-Terrestrial (710) Movie CLIP (1982)', 'movie'),
(6, 'Home Alone', '1990_home.jpg', 'Home Alone (1990) Supermarket Scene (12).mp4', 'movie'),
(7, 'Leave It To Beaver', '1950_beaver.jpg', 'June Cleaver on womens changing roles in the 1960s.mp4', 'tv'),
(8, 'Ozzie and Harriet', '1950_ozzie.jpg', '(Clip 2) Ozzie & Harriet Rick & The Maid of Honor Rick Nelson Jimmy ', 'tv'),
(9, 'Coronation Street', '1960_coronation.jpg', 'Coronation Street - First Scene (1960).mp4', 'tv'),
(10, 'The Cosby Show', '1980_cosby.jpg', 'cosbyshow.mp4', 'tv'),
(11, 'Seinfeld', '1990_seinfeld.jpg', 'Seinfeld Elaine\'s Out (Clip) TBS.mp4', 'tv'),
(12, 'The Simpsons', '1990_simpsons.jpg', 'simpsons.mp4', 'tv'),
(13, 'All My Love', '1950_all.jpg', '1950_allmylove.mp4', 'music'),
(14, 'Put Your Head On My Shoulder', '1950_paul.jpg', '1950_PaulAnka.mp4', 'music'),
(15, 'Stand By Me', '1960_stand.jpg', 'Stand By Me.mp3', 'music'),
(16, 'Close to You', '1970_close.jpg', 'Carpenters - Close to you.mp3', 'music'),
(17, 'Let It Be', '1970_let.jpg', 'Let It Be (Remastered 2009).mp3', 'music'),
(18, 'Call Me', '1980_call.jpg', 'Blondie - Call Me (Official Video).mp3', 'music'),
(19, 'Eye of the Tiger', '1980_tiger.jpg', 'Survivor - Eye Of The Tiger (Official Music Video).mp3', 'music'),
(20, 'U Can\'t Touch This', '1990_hammer.jpg', 'MC Hammer - U Can\'t Touch This (HQ).mp3', 'music');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_media_type`
--

CREATE TABLE `tbl_media_type` (
  `media_type_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_media_type`
--

INSERT INTO `tbl_media_type` (`media_type_id`, `media_id`, `type_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 2),
(12, 12, 2),
(13, 13, 2),
(14, 14, 2),
(15, 15, 2),
(16, 16, 2),
(17, 17, 2),
(18, 18, 2),
(19, 19, 2),
(20, 20, 2),
(21, 21, 3),
(22, 22, 3),
(23, 23, 3),
(24, 24, 3),
(25, 25, 3),
(26, 26, 3),
(27, 27, 3),
(28, 28, 3),
(29, 29, 3),
(30, 30, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movie_id` int(11) NOT NULL,
  `movie_name` varchar(300) NOT NULL,
  `movie_img` varchar(400) NOT NULL,
  `movie_story` varchar(3000) NOT NULL,
  `movie_year` varchar(100) NOT NULL,
  `movie_video` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movie_id`, `movie_name`, `movie_img`, `movie_story`, `movie_year`, `movie_video`) VALUES
(1, 'Peter Pan', '1950_peter.jpg', 'This 1955 musical production of the classic children\'s tale made history as the first Broadway musical adapted to TV with the entire cast and crew intact. Join Peter and his friends in their adventures in Neverland, against the evil pirate Captain Hook.', '1955', '1950_peterpan.mp4'),
(2, 'Rear Window', '1950_rear.jpg', 'A wheelchair-bound photographer spies on his neighbors from his apartment window and becomes convinced one of them has committed murder.', '1954', '1950_rearwindow.mp4'),
(3, 'One Hundred and One Dalmatians ', '1960_dalmation.jpg', 'Pongo and Perdita have a litter of 15 puppies. Cruella De Vil takes a fancy to the pups, and wants to get hold of them, as well as more pups, to make herself a lovely dalmatian skin coat... Cruella hires some thugs to kidnap the pups and hold them at her mansion. Will Pongo and Perdita find them in time ?', '1961', '101 Dalmatians Official Clip Home Again (1961) - Animation Movie HD.mp4'),
(4, 'Psycho', '1960_psycho.jpg', 'Phoenix office worker Marion Crane is fed up with the way life has treated her. She has to meet her lover Sam in lunch breaks, and they cannot get married because Sam has to give most of his money away in alimony. One Friday, Marion is trusted to bank forty thousand dollars by her employer. Seeing the opportunity to take the money and start a new life, Marion leaves town and heads towards Sam\'s California store. Tired after the long drive and caught in a storm, she gets off the main highway and pulls into the Bates Motel. The motel is managed by a quiet young man called Norman who seems to be dominated by his mother.', '1960', 'We All Go a Little Mad Sometimes - Psycho (312) Movie CLIP (1960) HD.mp4'),
(5, 'Patton', '1970_patton.jpg', 'The World War II phase of the career of controversial American general George S. Patton.', '1970', 'Patton (15) Movie CLIP - Americans Love a Winner (1970) HD.mp4'),
(6, 'The Aristocats', '1970_aristocat.jpg', 'With the help of a smooth talking tomcat, a family of Parisian felines set to inherit a fortune from their owner try to make it back home after a jealous butler kidnaps them and leaves them in the country', '1970', 'The Aristocats Edgar sedates the cats HD.mp4'),
(7, 'Star Wars: Episode V - The Empire Strikes Back', '1980_star.jpg', 'After the Rebels are brutally overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued by Darth Vader and a bounty hunter named Boba Fett all over the galaxy.', '1980', 'The Empire Strikes Back Bounty Hunter scene (Full).mp4'),
(8, 'E.T. the Extra-Terrestrial', '1980_et.jpg', 'A troubled child summons the courage to help a friendly alien escape Earth and return to his home world.', '1982', 'Across the Moon - E.T. The Extra-Terrestrial (710) Movie CLIP (1982) HD.mp4'),
(9, 'Goodfellas', '1990_goodfellas.jpg', 'The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito in the Italian-American crime syndicate.', '1990', 'Goodfellas - Paul Paulie Cicero (Paul Sorvino).mp4'),
(10, 'Home Alone', '1990_home.jpg', 'It is Christmas time and the McCallister family is preparing for a vacation in Paris, France. But the youngest in the family, Kevin (Macaulay Culkin), got into a scuffle with his older brother Buzz (Devin Ratray) and was sent to his room, which is on the third floor of his house. Then, the next morning, while the rest of the family was in a rush to make it to the airport on time, they completely forgot about Kevin, who now has the house all to himself. Being home alone was fun for Kevin, having a pizza all to himself, jumping on his parents\' bed, and making a mess. Then, Kevin discovers about two burglars, Harry (Joe Pesci) and Marv (Daniel Stern), about to rob his house on Christmas Eve. Kevin acts quickly by wiring his own house with makeshift booby traps to stop the burglars and to bring them to justice.', '1990', 'Home Alone (1990) Supermarket Scene (12).mp4');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_music`
--

CREATE TABLE `tbl_music` (
  `music_id` int(11) NOT NULL,
  `music_name` varchar(500) NOT NULL,
  `music_img` varchar(500) NOT NULL,
  `music_singer` varchar(500) NOT NULL,
  `music_year` varchar(400) NOT NULL,
  `music_video` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_music`
--

INSERT INTO `tbl_music` (`music_id`, `music_name`, `music_img`, `music_singer`, `music_year`, `music_video`) VALUES
(1, 'All my love (Bolero)', '1950_all.jpg', 'Patti Page', '1950', '1950_allmylove.mp4'),
(2, 'Put Your Head On My Shoulder', '1950_paul', 'Paul Anka', '1959', '1950_PaulAnka.mp4'),
(3, 'I\'m a Believer', '1960_believer.jpg', 'The Monkees', '1966', 'I\'m a Believer - The Monkees.mp3'),
(4, 'Stand By Me', '1960_stand.jpg', 'Ben E king', '1961', 'Stand By Me.mp3'),
(5, 'Close to you', '1970_close.jpg', 'Carpenters', '1970', 'Carpenters - Close to you.mp3'),
(6, 'Let It Be', '1970_let.jpg', 'Beatles', '1970', 'Let It Be (Remastered 2009).mp3'),
(7, 'Call Me', '1980_call.jpg', 'Blondie', '1978', 'Blondie - Call Me (Official Video).mp3'),
(8, 'Eye of the Tiger', '1980_tiger.jpg', 'Survivor', '1982', 'Survivor - Eye Of The Tiger (Official Music Video).mp3'),
(9, 'U Can\'t Touch This', '1990_hammer.jpg', 'MC Hammer', '1990', 'MC Hammer - U Can\'t Touch This (HQ).mp3'),
(10, 'Smells Like Teen Spirit ', '1990_nirvana.jpg', 'Nirvana', '1991', 'Nirvana - Smells Like Teen Spirit (Official Music Video).mp3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tv`
--

CREATE TABLE `tbl_tv` (
  `tv_id` int(11) NOT NULL,
  `tv_name` varchar(300) NOT NULL,
  `tv_img` varchar(300) NOT NULL,
  `tv_story` varchar(3000) NOT NULL,
  `tv_year` varchar(300) NOT NULL,
  `tv_video` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tv`
--

INSERT INTO `tbl_tv` (`tv_id`, `tv_name`, `tv_img`, `tv_story`, `tv_year`, `tv_video`) VALUES
(1, 'Leave it To Beaver', '1950_beaver.jpg', 'The Cleavers are the 1950\'s \'All-American Family\' in this \'feel-good\' family sitcom. Parents Ward and June, and older brother Wally, try to keep Theodore (\'the Beaver\') out of trouble. However, Beaver continues to end up in one kind of jam or another. Unlike real life, these situations are always easily resolved to the satisfaction of all involved and the Beaver gets off with a few stern moralistic words of parental advice. Instigator and troublemaker Eddie Haskell is an older kid who always manages to avoid being caught.', '1957', 'June Cleaver on womens changing roles in the 1960s.mp4'),
(2, 'The Adventures of Ozzie and Harriet ', '1950_ozzie.jpg', 'Ozzie and Harriet Nelson raise their two sons Ricky and David. As the sons age, they experience teenage dating problems, marriage and careers.', '1952', '(Clip 2) Ozzie & Harriet Rick & The Maid of Honor Rick Nelson Jimmy Hawkins.mp4'),
(3, 'Coronation Street', '1960_coronation.jpg', 'The U.K.\'s longest-running television soap, Coronation Street focuses on the everyday lives of working class people in Manchester, England.', '1960', 'Coronation Street - First Scene (1960).mp4'),
(4, 'The Flintstones ', '1960_flintstones.jpg', 'This popular animated television cartoon featured two Stone Age families, the Flintstones and their neighbors, the Rubbles. Much of the humor was based on its comic portrayals of modern conveniences, reinterpreted using Stone Age \'technology.\' Most notably were their cars, complete with absence of floorboards to allow them to be \'foot-powered.\'', '1960-1966', 'Subway in the stone ageThe Flintstones.mp4'),
(5, 'Family ', '1970_family.jpg', 'The joys and heartaches of the Lawrence family of Pasadena, California.', '1976-1980', 'allinthefamily.mp4'),
(6, 'M*A*S*H', '1970_mash.jpg', 'The staff of a Korean War field hospital use humor and high jinks to keep their sanity in the face of the horror of war', '1970', 'MASH S01E01 - Sorry Major Baby.mp4'),
(7, 'The Cosby Show ', '1980_cosby.jpg', 'The goings-on in the life of a successful African-American family.', '1984-1992', 'cosbyshow.mp4'),
(8, 'Dallas ', '1890_dallas.jpg', 'J.R. Ewing, a Texas oil baron, uses manipulation and blackmail to achieve his ambitions, both business and personal. He often comes into conflict with his brother Bobby, his arch-enemy Cliff Barnes and his long-suffering wife Sue Ellen.', '1978-1991', 'dallas.mp4'),
(9, 'Seinfeld \r\n', '1990_seinfeld.jpg', 'The continuing misadventures of neurotic New York City stand-up comedian Jerry Seinfeld and his equally neurotic New York City friends.', '1989-1998', 'Seinfeld Elaine\'s Out (Clip) TBS.mp4'),
(10, 'The Simpsons ', '1990_simpsmons.jpg', 'The satiric adventures of a working-class family in the misfit city of Springfield.', '1989-present', 'simpsons.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_type`
--

CREATE TABLE `tbl_type` (
  `type_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_type`
--

INSERT INTO `tbl_type` (`type_id`, `name`) VALUES
(1, 'Movies'),
(2, 'TVShows'),
(3, 'Music');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no',
  `user_avatar` varchar(20) NOT NULL,
  `user_permissions` int(11) NOT NULL,
  `user_admin` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`, `user_avatar`, `user_permissions`, `user_admin`) VALUES
(1, 'Soyoon', 'yoon', 'yoon', 'yoon@ca', '2020-04-08 20:55:56', '::1', 'soyoon.png', 5, 1),
(2, 'Daffodil', 'Dil', 'Dil', 'Dil@ca', '2020-04-09 07:44:08', '::1', 'daffodil.jpg', 2, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_era`
--
ALTER TABLE `tbl_era`
  ADD PRIMARY KEY (`era_id`);

--
-- Indexes for table `tbl_era_media`
--
ALTER TABLE `tbl_era_media`
  ADD PRIMARY KEY (`era_media_id`);

--
-- Indexes for table `tbl_era_movies`
--
ALTER TABLE `tbl_era_movies`
  ADD PRIMARY KEY (`era_movie_id`);

--
-- Indexes for table `tbl_era_music`
--
ALTER TABLE `tbl_era_music`
  ADD PRIMARY KEY (`era_music_id`);

--
-- Indexes for table `tbl_era_tv`
--
ALTER TABLE `tbl_era_tv`
  ADD PRIMARY KEY (`era_tv_id`);

--
-- Indexes for table `tbl_media`
--
ALTER TABLE `tbl_media`
  ADD PRIMARY KEY (`media_id`);

--
-- Indexes for table `tbl_media_kid`
--
ALTER TABLE `tbl_media_kid`
  ADD PRIMARY KEY (`media_kid_id`);

--
-- Indexes for table `tbl_media_type`
--
ALTER TABLE `tbl_media_type`
  ADD PRIMARY KEY (`media_type_id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `tbl_music`
--
ALTER TABLE `tbl_music`
  ADD PRIMARY KEY (`music_id`);

--
-- Indexes for table `tbl_tv`
--
ALTER TABLE `tbl_tv`
  ADD PRIMARY KEY (`tv_id`);

--
-- Indexes for table `tbl_type`
--
ALTER TABLE `tbl_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_era`
--
ALTER TABLE `tbl_era`
  MODIFY `era_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_era_media`
--
ALTER TABLE `tbl_era_media`
  MODIFY `era_media_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_era_movies`
--
ALTER TABLE `tbl_era_movies`
  MODIFY `era_movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_era_music`
--
ALTER TABLE `tbl_era_music`
  MODIFY `era_music_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_era_tv`
--
ALTER TABLE `tbl_era_tv`
  MODIFY `era_tv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_media`
--
ALTER TABLE `tbl_media`
  MODIFY `media_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_media_kid`
--
ALTER TABLE `tbl_media_kid`
  MODIFY `media_kid_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_media_type`
--
ALTER TABLE `tbl_media_type`
  MODIFY `media_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_music`
--
ALTER TABLE `tbl_music`
  MODIFY `music_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_tv`
--
ALTER TABLE `tbl_tv`
  MODIFY `tv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_type`
--
ALTER TABLE `tbl_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
