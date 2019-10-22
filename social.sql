-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 22, 2019 at 04:22 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(3, '1\r\n', 'z3275760', 'z5063045', '2019-10-23 01:02:57', 'no', 68),
(4, '2', 'z3275760', 'z5063045', '2019-10-23 01:03:00', 'no', 68),
(5, '3', 'z3275760', 'z5063045', '2019-10-23 01:03:02', 'no', 68),
(6, '4', 'z3275760', 'z5063045', '2019-10-23 01:03:04', 'no', 68),
(7, '5', 'z3275760', 'z5063045', '2019-10-23 01:03:06', 'no', 68),
(8, '6', 'z3275760', 'z5063045', '2019-10-23 01:03:08', 'no', 68),
(9, '7', 'z3275760', 'z5063045', '2019-10-23 01:03:11', 'no', 68),
(10, '8', 'z3275760', 'z5063045', '2019-10-23 01:03:13', 'no', 68),
(11, '9', 'z3275760', 'z5063045', '2019-10-23 01:03:16', 'no', 68),
(12, '10', 'z3275760', 'z5063045', '2019-10-23 01:03:18', 'no', 68),
(13, '11', 'z3275760', 'z5063045', '2019-10-23 01:03:19', 'no', 68),
(14, '12', 'z3275760', 'z5063045', '2019-10-23 01:03:21', 'no', 68),
(15, '13', 'z3275760', 'z5063045', '2019-10-23 01:03:26', 'no', 68),
(16, '14', 'z3275760', 'z5063045', '2019-10-23 01:03:27', 'no', 68),
(17, '15', 'z3275760', 'z5063045', '2019-10-23 01:03:30', 'no', 68),
(18, '16', 'z3275760', 'z5063045', '2019-10-23 01:03:32', 'no', 68),
(19, '17', 'z3275760', 'z5063045', '2019-10-23 01:03:35', 'no', 68),
(20, '18', 'z3275760', 'z5063045', '2019-10-23 01:03:38', 'no', 68),
(21, '19', 'z3275760', 'z5063045', '2019-10-23 01:03:41', 'no', 68),
(22, '20', 'z3275760', 'z5063045', '2019-10-23 01:03:43', 'no', 68),
(23, '21', 'z3275760', 'z5063045', '2019-10-23 01:03:45', 'no', 68),
(24, '22', 'z3275760', 'z5063045', '2019-10-23 01:03:47', 'no', 68),
(25, '23', 'z3275760', 'z5063045', '2019-10-23 01:03:48', 'no', 68),
(26, '24', 'z3275760', 'z5063045', '2019-10-23 01:03:51', 'no', 68),
(27, '1', 'z3275760', 'z5014335', '2019-10-23 01:05:21', 'no', 85),
(28, '2', 'z3275760', 'z5014335', '2019-10-23 01:05:24', 'no', 85),
(29, '3', 'z3275760', 'z5014335', '2019-10-23 01:05:26', 'no', 85),
(30, '4', 'z3275760', 'z5014335', '2019-10-23 01:05:28', 'no', 85),
(31, '5', 'z3275760', 'z5014335', '2019-10-23 01:05:30', 'no', 85),
(32, '6', 'z3275760', 'z5014335', '2019-10-23 01:05:32', 'no', 85),
(33, '7', 'z3275760', 'z5014335', '2019-10-23 01:05:34', 'no', 85),
(34, '8', 'z3275760', 'z5014335', '2019-10-23 01:05:36', 'no', 85),
(35, '9', 'z3275760', 'z5014335', '2019-10-23 01:05:38', 'no', 85),
(36, '10', 'z3275760', 'z5014335', '2019-10-23 01:05:40', 'no', 85),
(37, '11', 'z3275760', 'z5014335', '2019-10-23 01:05:42', 'no', 85),
(38, '12', 'z3275760', 'z5014335', '2019-10-23 01:05:44', 'no', 85),
(39, '13', 'z3275760', 'z5014335', '2019-10-23 01:05:45', 'no', 85),
(40, '14', 'z3275760', 'z5014335', '2019-10-23 01:05:47', 'no', 85),
(41, '15', 'z3275760', 'z5014335', '2019-10-23 01:05:49', 'no', 85),
(42, '16', 'z3275760', 'z5014335', '2019-10-23 01:05:51', 'no', 85),
(43, '17', 'z3275760', 'z5014335', '2019-10-23 01:05:54', 'no', 85),
(44, '18', 'z3275760', 'z5014335', '2019-10-23 01:05:58', 'no', 85),
(45, '19', 'z3275760', 'z5014335', '2019-10-23 01:06:00', 'no', 85),
(46, '20', 'z3275760', 'z5014335', '2019-10-23 01:06:02', 'no', 85),
(47, '21', 'z3275760', 'z5014335', '2019-10-23 01:06:04', 'no', 85),
(48, '22', 'z3275760', 'z5014335', '2019-10-23 01:06:06', 'no', 85),
(49, '23', 'z3275760', 'z5014335', '2019-10-23 01:06:07', 'no', 85),
(50, '24', 'z3275760', 'z5014335', '2019-10-23 01:06:09', 'no', 85),
(51, 'don\'t leave lab early anymore', 'z3275760', 'z5014335', '2019-10-23 01:06:46', 'no', 84);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `year` year(4) NOT NULL,
  `sem` varchar(2) NOT NULL,
  `course_id` varchar(8) NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`year`, `sem`, `course_id`, `username`) VALUES
(2014, 'S1', 'CHEM1011', 'z3275760'),
(2014, 'S1', 'ENGG1000', 'z3275760'),
(2014, 'S1', 'MATH1131', 'z3275760'),
(2014, 'S1', 'PHYS1121', 'z3275760'),
(2014, 'S2', 'CVEN1300', 'z3275760'),
(2014, 'S2', 'CVEN1701', 'z3275760'),
(2014, 'S2', 'ENGG1811', 'z3275760'),
(2014, 'S2', 'MATH1231', 'z3275760'),
(2015, 'S1', 'BIOS1301', 'z3275760'),
(2015, 'S1', 'CVEN2402', 'z3275760'),
(2015, 'S1', 'MARK1012', 'z3275760'),
(2015, 'S1', 'MATH2019', 'z3275760'),
(2015, 'S2', 'CEIC2009', 'z3275760'),
(2015, 'S2', 'CVEN2701', 'z3275760'),
(2015, 'S2', 'CVEN2702', 'z3275760'),
(2015, 'S2', 'CVEN3731', 'z3275760'),
(2016, 'S1', 'CVEN2501', 'z3275760'),
(2016, 'S1', 'CVEN3101', 'z3275760'),
(2016, 'S1', 'CVEN3202', 'z3275760'),
(2016, 'S1', 'CVEN3701', 'z3275760'),
(2016, 'S2', 'ACCT1501', 'z3275760'),
(2016, 'S2', 'ECON1101', 'z3275760'),
(2016, 'S2', 'FINS1613', 'z3275760'),
(2016, 'S2', 'MGMT1001', 'z3275760');

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(8, 'z3275760', 68),
(9, 'z3275760', 84);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`) VALUES
(37, 'im so happy to know that Ethan Lo is single. im hoping ill see you around soon ;)\r\n', 'z3275760', 'none', '2013-05-27 23:06:51', 'no', 'no', 0),
(38, 'To the cool guy, who\'s a second year arts/law student, I met in an English lecture earlier this year. I\'ve been thinking about you all semester, after the way you shook my hand with such masculine vigour and left a palimpsest on my heart. I have yearned for your erudite wit since that time I first laid my eyes on your superior intellect but have sought to seek you again with no avail. I\'ll be Daisy and you can be my Gatsby. Come meet me so we can gaze at the mechanical birds in the sky and maybe engage in some analysis of oral techniques?\r\n', 'z3275760', 'none', '2013-07-29 23:27:45', 'no', 'no', 0),
(39, 'Kevin Zheng, you are one hot techie ;)\r\n', 'z3275760', 'none', '2013-11-28 23:28:43', 'no', 'no', 0),
(40, 'Any asian guys wanna date an indian girl?', 'z3275760', 'none', '2016-05-06 23:29:34', 'no', 'no', 0),
(41, 'Jonathon Lim you are the reason I go to uni. Your witty puns are the pinnacle of my day. The classic blue ralph lauren shirt and those beige pants are a gift sent from the heavens heart emoticon I want to you respond to your questions of whether \'that make sense\' but I\'m lost in your eyes. Whats the probability that we end up together??', 'z3275760', 'none', '2016-05-12 23:30:15', 'no', 'no', 0),
(42, 'To the guy I met at OPM on 29/4/16, \\n\\nI was already tipsy when we talked last night so I can\'t remember much.. I only remember that your name was Kevin, from Hong Kong, 4th year law student who fast-tracked their degree, 24 years old. I was too scared to ask you for your number or FB.. sorry hahaha\r\n\r\nI would love to talk to you again, maybe we can get a coffee someday?\r\n', 'z3275760', 'none', '2016-05-13 23:31:25', 'no', 'no', 0),
(43, 'When does banter reach the stage of flirtatious banter? \r\nConfused', 'z3275760', 'none', '2016-07-17 23:32:21', 'no', 'no', 0),
(44, 'I got over my crush because she wanted the Pokemon Go hype to die down.\r\n\r\nGirls who play Pokemon Go, you are keepers for sure ', 'z3275760', 'none', '2016-08-08 23:33:33', 'no', 'no', 0),
(45, 'To that med girl who gets all the guys,\\n\\nI was heartbroken when i didnt get tagged in the post and all the other guys did... But even though i know i am not the one in your eyes, I get syncope whenever our eyes meet. When u walk into ww and beam me a giant smile, i wish you could hear the palpitations and atrial flutters you give me and diagnose my love. I dream of us being in the same cs group so we can perform physical examinations on each other. Oh, A. You are so mean yet so sweet to me.', 'z3275760', 'none', '2016-09-02 23:34:25', 'no', 'no', 0),
(46, 'Grant Feng, you\'re cute', 'z3275760', 'none', '2016-10-03 23:35:17', 'no', 'no', 0),
(47, 'o the red head that goes to COFA who was wearing a tie dye shirt with a heart on it. can i take your heart?\r\n', 'z3485885', 'none', '2013-04-14 23:40:18', 'no', 'no', 0),
(48, 'To Loi Boi \r\n\r\nTbh, i find ur autism really sexy\r\n\r\nsome people find it off putting, but  I think it\'s really endearing \r\n\r\nI want u\r\n', 'z3485885', 'none', '2016-05-13 23:41:30', 'no', 'no', 0),
(49, 'About eddie kim: Whenever i see you at uni, i have to say, it really brightens up my day, you dont really know me but i want to get close to you xx', 'z3485885', 'none', '2016-05-16 23:42:20', 'no', 'no', 0),
(50, 'Daniel Dang. Why are you so massive ', 'z3485885', 'none', '2016-06-07 23:43:16', 'no', 'no', 0),
(51, 'Please let me find a boyfriend who can dance really well and really smoothly. HAHAHA', 'z3485885', 'none', '2016-06-18 23:43:58', 'no', 'no', 0),
(52, 'Nivaaz Kaur. I want to go straight to the point. Can we get together and make babies already.\r\nLove \r\nL F', 'z3485885', 'none', '2016-06-27 23:45:01', 'no', 'no', 0),
(53, 'Danny in econ, I was about too talk to you ... But Danny you walked away .  But Danny I thought we had something', 'z3485885', 'none', '2016-07-11 23:45:49', 'no', 'no', 0),
(54, 'Ashika in my stats group, during mondays, I\'ve been admiring you for so long and I noticed you ignored my last letter. Your amazingly beautiful and I really love your smile. I would love to go out with you some time to maybe get to know you better. You keen on coffee?\r\n', 'z3485885', 'none', '2016-07-12 23:46:44', 'no', 'no', 0),
(55, 'I\'m in love with that girl on the CSE Revue poster. Tag girls who look like her pls.\r\nNeed a date to the show, must be available week 8.', 'z3485885', 'none', '2016-08-21 23:47:26', 'no', 'no', 0),
(56, 'I confessed my love to you today in the services marketing & mgmt lecture today. Heba, you and I are meant to be. Don\'t chop my balls off next week.', 'z5063045', 'none', '2013-04-20 23:51:47', 'no', 'no', 0),
(57, 'Jacob, I hate your knees', 'z5063045', 'none', '2013-04-26 23:53:23', 'no', 'no', 0),
(59, 'To Rebecca Lin (again), I am a different person and would just like to add that your sense of humour and ability to make people feel so warm, special and happy is something very unique. I wish you the very best in everything you do and you will go very far in life you super talented girl :)\r\n', 'z5063045', 'none', '2013-04-27 23:55:19', 'no', 'no', 0),
(60, 'To the skinny Asian girl who sits in Lawsoc office with the blond tips on the end of her hair (I think you are a Law Revue-er?). You are so damn cute -anytime, any day I would destroy the Law Building bathrooms with you. Call me!', 'z5063045', 'none', '2013-05-17 23:56:26', 'no', 'no', 0),
(61, 'Hot guy with glasses working at Boost. Julian, can I have your babies?\r\n', 'z5063045', 'none', '2013-06-17 23:57:30', 'no', 'no', 0),
(62, 'Dear Twoey,\r\n\r\nYou set my heart on fire like your red hot hair, \r\nI just want you to take me back to your lair. \r\n\r\nYou are the Ron to my Hermione,\r\nPlease come and find me. \r\n\r\nI want to get nasty,\r\nSee you at the Toga Party. \r\nxx\r\n', 'z5063045', 'none', '2016-04-28 23:58:54', 'no', 'no', 0),
(63, 'Dear I think your name is Kenji? You are a math beast (Asian) I want you.\r\n Be mine\r\nH.', 'z5063045', 'none', '2016-05-26 00:00:21', 'no', 'no', 0),
(64, 'Can anyone help pls. Which one of the cute photo club guys are single if any???', 'z5063045', 'none', '2016-06-21 00:01:03', 'no', 'no', 0),
(65, 'Roses are red\r\nViolets are blue\r\nRyuu-ga, \r\nWa-ga-te-ki-wo Ku-ra-u\r\n', 'z5063045', 'none', '2016-07-06 00:01:57', 'no', 'no', 0),
(66, 'Steven Tran from ASOC, I saw you at camp you\'re pretty cute and your muzz is pretty good. Let\'s go defqon together?', 'z5063045', 'none', '2016-08-08 00:08:53', 'no', 'no', 0),
(67, 'To the guy in post #12898. I think you should tell her. Chances are, she feels the same way about you.\r\n', 'z5063045', 'none', '2016-09-07 00:10:00', 'no', 'no', 0),
(68, 'To that friend I go to math lectures with, I am so thankful for having met such an intelligent and patient friend who helps me whenever I get stuck on a question but I absolutely hate it when your other friend comes along and distracts you from me. I wish I could tell you how much you mean to me but i\'m not sure if you feel the same way as me...', 'z5063045', 'none', '2016-10-01 00:10:55', 'no', 'no', 1),
(69, 'nice bengali girls and potential wives where are you?!', 'z5013363', 'none', '2013-08-28 00:23:40', 'no', 'no', 0),
(70, 'Assyrians at UNSW are hot and we need more of them.', 'z5013363', 'none', '2013-10-17 00:24:18', 'no', 'no', 0),
(71, 'Dear Clyde, \r\nI like your wide backside\r\nCan I go for a ride?\r\n', 'z5013363', 'none', '2016-08-11 00:24:41', 'no', 'no', 0),
(72, 'Gordon Lu I think it was? You\'re so cute, I love the way your hair just gives up about halfway. Your combover looks super cute in your pictures ðŸ˜….Maybe I can see it in person one day. ðŸ’– \r\nI.Z\r\n', 'z5013363', 'none', '2016-08-31 00:25:01', 'no', 'no', 0),
(73, 'One fat ugly guy looking for a hot sexy girl for motivation. I\'ve been very busy doing Ph.D couldn\'t control myself, really want someone to take me back to the life. If interested pls see me at tyree 1st floor.\r\n', 'z5013363', 'none', '2016-09-06 00:25:26', 'no', 'no', 0),
(74, 'To the guy at ASB labs who looked like Jonathan Rhys Meyers, you are so sexy. My friend and I couldn\'t help but giggle the whole time you were there. our bodies are ready when you are baby.', 'z5014335', 'none', '2013-04-23 00:36:41', 'no', 'no', 0),
(75, 'Tuesday afternoon: You - cute Asian guy asks me the time on the 895 Bus from High Street to Central. Me - cub with beard. You sit opposite me. Coffee sometime?\r\n', 'z5014335', 'none', '2013-05-24 00:36:54', 'no', 'no', 0),
(76, 'To the girl with curly brown hair and a fringe, who was wearing blue/green jelly sandals and a white shirt and in the ARTS1870 lecture today, i have no idea who you are but I\'ve seen you a couple times and i just wanted to tell you that you are very beautiful and i hope you had a nice day.', 'z5014335', 'none', '2016-04-27 00:37:12', 'no', 'no', 0),
(77, 'To Henry P in first year MATH1151\r\n\r\nI find you very cute everytime you smile, because that makes my heart skip a beat. Whenever you stretch I can see your shirt stretch too. You always hang with that boy and that makes me extremely jealous because I can never approach you. Ditch him next time and I\'ll sit with you\r\n', 'z5014335', 'none', '2016-05-12 00:37:24', 'no', 'no', 0),
(78, 'tfw i realise i have never gotten a love letter written about me because i drive to uni...', 'z5014335', 'none', '2016-05-17 00:37:56', 'no', 'no', 0),
(79, 'ATTN: Coptic orthodox girls. I present you the Arabic god ---> Mina Shehata . Currently looking for his Cleopatra. Selling points:\\nLoves volunteering for mission and Jesus. Champions of Champions soccer player (although recent fitness issues have limited him to futsal).elf-proclaimed ability to \'mummify people\' (interpret as you wish).Loves long walks along the Sahara desert (v romantic)\\nCompleted 4u maths in Year 11 (he is a genius).Disclaimer: You will have inherit a family history of sciatica. Apply by sending him a PM\r\n', 'z5014335', 'none', '2016-06-11 00:38:51', 'no', 'no', 0),
(80, 'To the guy I really like, who I adore in all my classes and everywhere else.  I hope every day for the next six years and every day after is a wonderful journey for you. â˜ºï¸ I know you could never possibly like me back because you probably don\'t \'swing\' that way and because even if you did I am too uninteresting and unattractive for you, but I hope that you have a wonderful second year here, and you have made my first year bright xx ðŸ˜˜\r\n', 'z5014335', 'none', '2016-06-14 00:39:19', 'no', 'no', 0),
(81, 'To the tall, dark, mysterious guy in the Higher Chem 1B lab on Thursday mornings, coffee sometime????', 'z5014335', 'none', '2016-08-09 00:39:31', 'no', 'no', 0),
(82, 'Chong first year advanced science. We will have the best chemical romance you chem god. Better than with your gf\r\n', 'z5014335', 'none', '2016-09-03 00:39:48', 'no', 'no', 0),
(83, 'Dear Nathan Suen,I hear you\'re into pokemon, can you catch me with one of your Ultra balls?- Secret Admirer', 'z5014335', 'none', '2016-09-13 00:40:08', 'no', 'no', 0),
(84, 'The cute curry girl in my INFS 1609 tute on Monday evenings, why you gotta leave so early??? Please stay longer so I can admire your beauty.\r\n', 'z5014335', 'none', '2016-09-25 00:40:20', 'no', 'no', 1),
(85, 'Joanna, we are a match and I superliked you. Do you superlike me?', 'z5014335', 'none', '2016-09-26 00:40:32', 'no', 'no', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `birthday`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(24, 'James', 'Franco', 'z3275760', 'J.franco@unsw.edu.au', '60e8c535fa34ce89e1b06c43695c0191', '1998-04-01', 'dataset-medium/z3275760/profile.jpg', 10, 0, 'no', ',z3485885,z5063045,z5013363,z5014335,z5014753,'),
(25, 'Angelina', 'Jolie', 'z3376221', 'A.jolie@unsw.edu.au', '098f6bcd4621d373cade4e832627b4f6', '1994-01-06', 'dataset-medium/z3376221/profile.jpg', 0, 0, 'no', ',z5040176,z3489385,z3413158,z5119437,z5059413,z5006234,z5017666,z5057619,'),
(26, 'Aaron', 'Peirsol', 'z3413158', 'A.peirsol@unsw.edu.au', 'c3581516868fb3b71746931cac66390e', '1995-04-11', 'assets/images/profile_pics/defaults/head_red.png', 0, 0, 'no', ',z5019161, z3462191, z5042573, z3493921, z5014753, z5018487,z5017258,z5115039,z5075923,z5014861, z3376221,z5117658,z5017165,z5057619,'),
(27, 'Lana', 'Clarkson', 'z3416238', 'L.clarkson@unsw.edu.au', 'cc989606b586f33918fe0552dec367c8', '1997-03-30', 'dataset-medium/z3416238/profile.jpg', 0, 0, 'no', ',z3466413,z5019161,z3489385,z5014753,z5062448,z5060415,z3470057,z5059413,z5013363,z5014229,z5057619,'),
(28, 'Pedro', 'Pauleta', 'z3462191', 'P.pauleta@unsw.edu.au', '8601f6e1028a8e8a966f6c33fcd9aec4', '1995-08-16', 'dataset-medium/z3462191/profile.jpg', 0, 0, 'no', ',z5019161,z3413158,z5063045,z5014753,z5079464,z5099187,z3493921,z5115039,z5014229,z5017165,'),
(29, 'Julianna', 'Margulies', 'z3463739', 'J.margulies@unsw.edu.au', 'd74fdde2944f475adc4a85e349d4ee7b', '1995-10-07', 'dataset-medium/z3463739/profile.jpg', 0, 0, 'no', ',z3489385,z5063045,z3470029,z5014753,z5099187,z3470057,z5062448,z5017258,z5006234,z3487885,z5017165,'),
(30, 'Vitali', 'Klitschko', 'z3466413', 'V.klitschko@unsw.edu.au', 'fc63f87c08d505264caba37514cd0cfd', '1997-07-15', 'dataset-medium/z3466413/profile.jpg', 0, 0, 'no', ',z5040176,z5014753,z5042573,z3485885,z5076158,z5117658,z3416238'),
(31, 'Susie', 'Castillo', 'z3470029', 'S.castillo@unsw.edu.au', 'f21c0d3e564c7db5ccf73c095a0b9371', '1998-07-16', 'assets/images/profile_pics/defaults/head_red.png', 0, 0, 'no', ',z5062399,z5040176,z5119437,z5014753,z5014335,z5017666,z3485885,z5115039,z5013363,z5076158,z5057619,'),
(32, 'Erin', 'Brockovich', 'z3470057', 'E.brockovich@unsw.edu.au', '6f4ec514eee84cc58c8e610a0c87d7a2', '1997-08-22', 'assets/images/profile_pics/defaults/head_red.png', 0, 0, 'no', ',z3466413,z5017666,z5014753,z3463739,z5014335,'),
(33, 'Piotr', 'Anderszewski', 'z3485885', 'P.anderszewski@unsw.edu.au', '3bf1114a986ba87ed28fc1b5884fc2f8', '1996-04-19', 'dataset-medium/z3485885/profile.jpg', 9, 0, 'no', ',z3466413,z5024986,z3470029,z5079464,z5099187,z5059413, z3487885,z3275760,'),
(34, 'Carmen', 'Electra', 'z3487885', 'C.electra@unsw.edu.au', '74b87337454200d4d33f80c4663dc5e5', '1995-03-13', 'dataset-medium/z3487885/profile.jpg', 0, 0, 'no', ',z5062399,z5019161,z5119437,z5063045,z5076002,z5059413, z3463739,z3485885,z5117658,'),
(35, 'Rachel', 'Hunter', 'z3489385', 'R.hunter@unsw.edu.au', '96e79218965eb72c92a549dd5a330112', '1996-02-29', 'dataset-medium/z3489385/profile.jpg', 0, 0, 'no', ',z5119437,z5024986,z5063045,z5076002,z5079464,z5023159, z3376221,z5117658,z3416238,'),
(36, 'Pierce', 'Brosnan', 'z3493921', 'P.brosnan@unsw.edu.au', 'b329f324cc17d6221a385ea1afb3a289', '1998-05-04', 'dataset-medium/z3493921/profile.jpg', 0, 0, 'no', ',z3462191,z3466413,z5013363,z3413158,'),
(37, 'Leann', 'Rimes', 'z5006234', 'Lea.rimes@unsw.edu.au', 'cd7b9b9b72636b59d09f6467e985e52d', '1993-12-16', 'dataset-medium/z5006234/profile.jpg', 0, 0, 'no', ',z5115039,z5024986,z5063045,z3376221,'),
(38, 'Marisa', 'Tomei', 'z5013363', 'M.tomei@unsw.edu.au', '1d3d37667a8d7eb02054c6afdf9e2e1c', '1998-10-05', 'dataset-medium/z5013363/profile.jpg', 5, 0, 'no', ',z5062399,z3470029,z3493921,z5099187,z5014335,z5062448,z5023159,z3275760,z5059413,z5075923,z5017666,z5117658,'),
(39, 'Amelia', 'Vega', 'z5014229', 'A.vega@unsw.edu.au', '912ec803b2ce49e4a541068d495ab570', '1995-07-26', 'dataset-medium/z5014229/profile.jpg', 0, 0, 'no', ',z5062399,z5019161,z3462191,z5076002,z5023159,z5006234, z5076158,z3416238,'),
(40, 'Alexandre', 'Despatie', 'z5014335', 'A.despatie@unsw.edu.au', 'f445e82d941e2f60985e61e63afd453c', '1998-07-01', 'dataset-medium/z5014335/profile.jpg', 12, 1, 'no', ',z5024986,z5062399,z5013363,z5014229,z3275760,'),
(41, 'Jennifer', 'Lopez', 'z5014753', 'J.lopez@unsw.edu.au', 'a29d1598024f9e87beab4b98411d48ce', '1996-12-11', 'dataset-medium/z5014753/profile.jpg', 0, 0, 'no', ',z3466413,z5019161,z3462191,z5024986,z3470029,z3470057, z5059413,z3487885,z5014229,z5057619,z5014861,z3275760,'),
(42, 'Marc-andre', 'Fleury', 'z5014861', 'M.a.fleury@unsw.edu.au', '91cb315a6405bfcc30e2c4571ccfb8ce', '1993-03-01', 'dataset-medium/z5014861/profile.jpg', 0, 0, 'no', ',z5062399,z3413158,z5119437,z5018487,z5062448,z5059413,z5014229,z5115039,z3376221,z5057619,z5014753,'),
(43, 'Lucy', 'Liu', 'z5017165', 'L.liu@unsw.edu.au', 'c2509a04559b9ed9e0217d5a0f52f843', '1996-01-09', 'dataset-medium/z5017165/profile.jpg', 0, 0, 'no', ',z3413158,z5024986,z3470057,z3463739,z5017666,z5014229,'),
(44, 'Sheryl', 'Crow', 'z5017258', 'S.crow@unsw.edu.au', '819a07afa4abc8660ec9042038a8c597', '1993-02-01', 'dataset-medium/z5017258/profile.jpg', 0, 0, 'no', ',z3413158,'),
(45, 'Patrick', 'Bourrat', 'z5017666', 'P.bourrat@unsw.edu.au', '1f3870be274f6c49b3e31a0c6728957f', '1996-11-15', 'dataset-medium/z5017666/profile.jpg', 0, 0, 'no', ','),
(46, 'Celine', 'Dion', 'z5018487', 'C.dion@unsw.edu.au', 'cd13b6a6af66fb774faa589a9d18f906', '1993-10-03', 'dataset-medium/z5018487/profile.jpg', 0, 0, 'no', ','),
(47, 'Scott', 'Blum', 'z5019161', 'S.blum@unsw.edu.au', '1c42f9c1ca2f65441465b43cd9339d6c', '1997-08-21', 'dataset-medium/z5019161/profile.jpg', 0, 0, 'no', ','),
(48, 'Reese', 'Witherspoon', 'z5023159', 'R.witherspoon@unsw.edu.au', '8dae58e3f282b974328d53f96753f4c1', '1997-04-14', 'dataset-medium/z5023159/profile.jpg', 0, 0, 'no', ','),
(49, 'Ralph', 'Firman', 'z5024986', 'R.firman@unsw.edu.au', 'd914e3ecf6cc481114a3f534a5faf90b', '1993-05-16', 'dataset-medium/z5024986/profile.jpg', 0, 0, 'no', ','),
(50, 'Richard', 'Virenque', 'z5040176', 'R.virenque@unsw.edu.au', '36388794be2cf5f298978498ff3c64a2', '1993-11-04', 'dataset-medium/z5040176/profile.jpg', 0, 0, 'no', ','),
(51, 'Juliette', 'Binoche', 'z5042573', 'J.binoche@unsw.edu.au', '7f8475ca28c870f5a4a47b4ce115fc6f', '1993-01-29', 'dataset-medium/z5042573/profile.jpg', 0, 0, 'no', ','),
(52, 'Grant', 'Hackett', 'z5057619', 'G.hackett@unsw.edu.au', '6b1628b016dff46e6fa35684be6acc96', '1994-03-20', 'dataset-medium/z5057619/profile.jpg', 0, 0, 'no', ','),
(53, 'Mika', 'Hakkinen', 'z5059413', 'M.hakkinen@unsw.edu.au', '7193529abbf96dcc058f06d45121d8b1', '1995-10-10', 'dataset-medium/z5059413/profile.jpg', 0, 0, 'no', ','),
(54, 'Trista', 'Rehn', 'z5060415', 'T.rehn@unsw.edu.au', '9726255eec083aa56dc0449a21b33190', '1994-03-26', 'dataset-medium/z5060415/profile.jpg', 0, 0, 'no', ','),
(55, 'Catherine', 'Zeta-jones', 'z5062399', 'C.z.jones@unsw.edu.au', '8ce18893d7762bff7bff7f487716030a', '1997-06-05', 'dataset-medium/z5062399/profile.jpg', 0, 0, 'no', ','),
(56, 'Alexandre', 'Daigle', 'z5062448', 'A.daigle@unsw.edu.au', '4f3b19063fb8bfe28f687196dcdcb3ae', '1994-01-11', 'dataset-medium/z5062448/profile.jpg', 0, 0, 'no', ','),
(57, 'Dominic', 'Monaghan', 'z5063045', 'D.monaghan@unsw.edu.au', '9f27410725ab8cc8854a2769c7a516b8', '1995-12-03', 'dataset-medium/z5063045/profile.jpg', 13, 1, 'no', ',z3489385,z3462191,z5014753,z5079464,z5060415,z3463739,z5006234,z3487885,z5075923,z3275760,'),
(58, 'Daisy', 'Fuentes', 'z5075923', 'D.fuentes@unsw.edu.au', 'ad92694923612da0600d7be498cc2e08', '1998-04-06', 'dataset-medium/z5075923/profile.jpg', 0, 0, 'no', ','),
(59, 'Juanpablo', 'Montoya', 'z5076002', 'J.p.montoya@unsw.edu.au', 'dc40b85276a1f4d7cb35f154236aa1b2', '1996-02-03', 'dataset-medium/z5076002/profile.jpg', 0, 0, 'no', ','),
(60, 'Nikki', 'Reed', 'z5076158', 'N.reed@unsw.edu.au', 'a5410ee37744c574ba5790034ea08f79', '1993-01-25', 'dataset-medium/z5076158/profile.jpg', 0, 0, 'no', ','),
(61, 'Andre', 'Agassi', 'z5079464', 'A.agassi@unsw.edu.au', '91cb315a6405bfcc30e2c4571ccfb8ce', '1995-04-11', 'dataset-medium/z5079464/profile.jpg', 0, 0, 'no', ','),
(62, 'Jose', 'Canseco', 'z5099187', 'J.canseco@unsw.edu.au', 'd9eaabe53adedb62bc74b7eb0a9477d4', '1995-07-20', 'dataset-medium/z5099187/profile.jpg', 0, 0, 'no', ','),
(63, 'Pamela', 'Anderson', 'z5115039', 'P.anderson@unsw.edu.au', '8afa847f50a716e64932d995c8e7435a', '1995-09-28', 'dataset-medium/z5115039/profile.jpg', 0, 0, 'no', ','),
(64, 'Carlos', 'Moya', 'z5117658', 'C.moya@unsw.edu.au', '7813d1590d28a7dd372ad54b5d29d033', '1994-08-26', 'dataset-medium/z5117658/profile.jpg', 0, 0, 'no', ','),
(65, 'Mark', 'Swartz', 'z5119437', 'M.swartz@unsw.edu.au', '0d343c0f0ca763f983c8042350059f56', '1997-09-05', 'dataset-medium/z5119437/profile.jpg', 0, 0, 'no', ',');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `username` varchar(60) NOT NULL,
  `home_suburb` varchar(100) NOT NULL,
  `program` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`username`, `home_suburb`, `program`) VALUES
('z3275760', 'University Of New South Wales', 'Engineering/Commerce');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
