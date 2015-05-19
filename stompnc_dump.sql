-- phpMyAdmin SQL Dump
-- version 3.3.2deb1ubuntu1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 26, 2012 at 11:31 PM
-- Server version: 5.1.66
-- PHP Version: 5.3.2-1ubuntu4.18

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_stompthemonsternc`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_about`
--

DROP TABLE IF EXISTS `about_about`;
CREATE TABLE IF NOT EXISTS `about_about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mission_statement` longtext NOT NULL,
  `story` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `about_about`
--

INSERT INTO `about_about` (`id`, `mission_statement`, `story`) VALUES
(1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `auth_group`
--


-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_bda51c3c` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `auth_group_permissions`
--


-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_e4470c6e` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add content type', 4, 'add_contenttype'),
(11, 'Can change content type', 4, 'change_contenttype'),
(12, 'Can delete content type', 4, 'delete_contenttype'),
(13, 'Can add session', 5, 'add_session'),
(14, 'Can change session', 5, 'change_session'),
(15, 'Can delete session', 5, 'delete_session'),
(16, 'Can add site', 6, 'add_site'),
(17, 'Can change site', 6, 'change_site'),
(18, 'Can delete site', 6, 'delete_site'),
(19, 'Can add log entry', 7, 'add_logentry'),
(20, 'Can change log entry', 7, 'change_logentry'),
(21, 'Can delete log entry', 7, 'delete_logentry'),
(22, 'Can add stomp', 8, 'add_stomp'),
(23, 'Can change stomp', 8, 'change_stomp'),
(24, 'Can delete stomp', 8, 'delete_stomp'),
(25, 'Can add about', 9, 'add_about'),
(26, 'Can change about', 9, 'change_about'),
(27, 'Can delete about', 9, 'delete_about'),
(28, 'Can add Member', 10, 'add_member'),
(29, 'Can change Member', 10, 'change_member'),
(30, 'Can delete Member', 10, 'delete_member'),
(31, 'Can add Home Page', 11, 'add_homepage'),
(32, 'Can change Home Page', 11, 'change_homepage'),
(33, 'Can delete Home Page', 11, 'delete_homepage'),
(34, 'Can add Sponsor', 12, 'add_sponsor'),
(35, 'Can change Sponsor', 12, 'change_sponsor'),
(36, 'Can delete Sponsor', 12, 'delete_sponsor'),
(37, 'Can add volunteer', 13, 'add_volunteer'),
(38, 'Can change volunteer', 13, 'change_volunteer'),
(39, 'Can delete volunteer', 13, 'delete_volunteer');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `username`, `first_name`, `last_name`, `email`, `password`, `is_staff`, `is_active`, `is_superuser`, `last_login`, `date_joined`) VALUES
(1, 'admin', '', '', 'admin@stompthemonsternc.org', 'pbkdf2_sha256$10000$8jEpBNPc0vws$O77pGaq11wbqb6nXRrLJ9cNh5U0A3d/RtUZT9+g6sgE=', 1, 1, 1, '2012-12-24 16:07:39', '2012-11-28 03:28:49');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_fbfc09f1` (`user_id`),
  KEY `auth_user_groups_bda51c3c` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `auth_user_groups`
--


-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_fbfc09f1` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `auth_user_user_permissions`
--


-- --------------------------------------------------------

--
-- Table structure for table `board_members_member`
--

DROP TABLE IF EXISTS `board_members_member`;
CREATE TABLE IF NOT EXISTS `board_members_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `bio` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `pub_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `board_members_member`
--

INSERT INTO `board_members_member` (`id`, `name`, `bio`, `image`, `pub_date`) VALUES
(3, 'Susan Blumenthal', '<p>Susan, one of the founding board members of the North Carolina chapter of STOMP The Monster, has worked as a physician assistant in oncology since 2004. Having seen firsthand the financial distress that cancer can cause, she wanted to start a local chapter of STOMP, an organization co-founded by her close friend Andi Sawin in New Jersey in 2010 .</p>\r\n<p>Susan is a graduate of Smith College, where she earned a BA in biochemistry and sports science, and of Northeastern University, where she earned an MS in physician assistant studies. She currently works at Waverly Hematology Oncology in Cary, NC. When she is not spending time with her husband Scott and their two children, Eve (7) and Jonah (5), she is training for her next marathon or triathlon.</p>', 'board_members/Susan_Blumenthal.jpg', '2012-12-06 15:52:01'),
(4, 'Gay Purvis', 'Gay Purvis has a B.S. in Marketing from Michigan State University.\r\nShe spent 8 years working in sales and management for Hershey Chocolate. She called\r\non grocery store headquarters and managed a sales team.  Her team won the prestigious\r\n"President''s Cup" two years in a row, leading the country in sales volume.\r\nShe was happy to "retire" after her first son was born in 1997.\r\nSince then she and her husband and two boys relocated  from Richmond, Va to Cary, NC for John''s job.\r\nGay has loved raising a family in Cary for the last 11 years. She has been very involved in\r\nvolunteering at both of her son''s schools, scouting, as well as a Women''s day shelter in Raleigh.\r\nShe has been teaching music and yoga as well as a three year old class at a Cary pre-school for 7 years.\r\nShe loves to plan neighborhood gatherings, enjoys yard saling with friends, reading, excercising, and Scrabble.\r\nGay is most passionate about health and nutrition.  Especially educating others on disease prevention.\r\nShe joined Stomp the Monster because she wanted to help those with a real need.  She has a\r\nheart for those who are suffering tough times as well as health issues.\r\n', 'board_members/Gay_Purvis.JPG', '2012-12-06 15:53:55'),
(5, 'Erica Sanger', '<p>Erica Sanger holds a Bachelor of Science in Elementary Education from East Carolina University. Currently she is working towards her Masters in Special Education from Grand Canyon University&rsquo;s online program. She looks forward to the opportunity to work in a special education classroom. Since 2010 Erica has served as a preschool teacher for Little Pros Academy of East Cary. Erica is large supporter of the Leukemia and Lymphoma Society, advocating for a cure. The past two years she has organized a Little Pros Academy team for Light the Night Walk. Erica took the lead on the fundraising efforts for her team and exceeded the goals given to her both years.</p>\r\n<p>Having watched family and friends battle with cancer Erica understands the many struggles that the disease brings. She is proud to join STOMP to help support many families in need. Erica looks forward to seeing STOMP grow and is honored to be part of such an influential organization and great group of ladies! Erica was born and raised in Bel Air, Maryland and currently lives in Cary, NC with her husband, Ryan, and their dog, Simba.. Together they enjoy taking walks, bowling, and frisbee golf.</p>', 'board_members/Erica_Sanger.JPG', '2012-12-06 16:03:25'),
(6, 'Dede Strombotne', '<p>Dede''s background, until recently retiring, was in the aviation industry. A licensed respiratory therapist, she has also worked in the hotel industry as well as commercial aviation. Originally from Ohio, she has also lived in Indiana, Florida, California and for the past 21 years, in North Carolina. She and her husband, Clinton, have been married for 31 years and have two adult children, Kiersten and Spencer. She was raised in a household with a strong belief in social action and has participated in many worthy charities throughout the years. She was instrumental in helping her older sister, Ruth, start a non-profit organization in Phoenix, AZ. She provided the ideas and enthusiasm for many of their projects to assist underserved women know their options and treatments when faced with a diagnosis of breast cancer. Dede was also a weekly volunteer for five years with the local SPCA.</p>\r\n<p>Diagnosed herself in 2008 with breast cancer, Dede is a two-time survivor of cancer, with the most recent diagnosis of bone and liver cancer in 2011. She worked continuously throughout her courses of chemotherapy and radiation; her attitude was to "just breathe" and keep moving forward. She believes strongly in keeping a positive attitude and is grateful for her family and friends who were by her side during the difficult times. She believes it is paramount to "think globally but act locally," and she is and always has been dedicated to helping those less fortunate who need assistance during the trying times in their lives. An avid outdoorswoman, Dede enjoys walking, hiking, canoeing, and biking with her husband. She is a strong proponent of the occasional reverse dinner (dessert first!), laughing heartily, and she loves meeting people. An ardent advocate of smiling, it is rare to find her without one on her face.</p>', 'board_members/Dede_Strombotne.jpeg', '2012-12-06 16:08:16'),
(7, 'Carla Strickler', '<p>Carla received her BS in Public Relations from the University of Florida and her MS in Elementary Education from Nova Southeastern University. She also received an advanced certificate in ESL from Long Island University. Carla has been an elementary school teacher for 16 years. She has taught in Fort Collins, Co, Yonkers, NY, Garner, NC, and now works in Holly Springs, NC. One of the greatest joys of her profession is to instill a love for learning in her students and providing them with countless &ldquo;Aha&rdquo; moments. One of her favorite sayings is when Mary Poppin''s exclaims, "In every job that mustbe done, there is an element of fun!"</p>\r\n<p>Carla has had many close family members and friends battle cancer. Her mother battled and overcame breast cancer twice and then lost her fight to lung cancer. As her mother was battling lung cancer, Carla wanted to help others who were fighting this disease. STOMP was a great opportunity for her to get involved and help others. Carla resides with her husband, Brooks, in Cary, NC. Carla loves all types of fitness. She walks, runs, and enjoys going to the gym and taking group fitnessclasses. She is an avid skier and loves the mountains and the beach. She also enjoys cooking, reading, and traveling.</p>', 'board_members/Carla_Strickler.jpg', '2012-12-06 16:09:34'),
(8, 'Shawna Turrick', '<p>Working in the Oncology sales arena for the past ten years, Shawna is currently working as a hematology/oncology consultant for Celgene Corporation, which covers the eastern half of North Carolina. Her job has given her the opportunity to meet amazing people while visiting various oncology offices throughout the state and she is touched by the many stories of hope, compassion, and strength of the people. Shawna has the empathy to relate to those who have lost loved ones to this insidious disease, having lost her father to pancreatic cancer in 2009. Buoyed by patients'' stories and her personal experience, she is motivated to help serve patients when they need help the most.</p>\r\n<p>Shawna graduated from Ohio University with a degree in exercise physiology. She then received a Bachelor of Science degree in nursing from Rush University in Chicago. Prior to working in sales, she worked as a registered nurse in the pediatric intensive care nursery at Children''s Memorial Hospital in Chicago. Spending time with her children Landon and Laila and husband, Jeff, is Shawna''s favorite pastime. She is an advocate for promoting a healthy lifestyle for her family; they enjoy hiking together as well as biking, swimming, and playing sports. Shawna also actively trains and participates in 8Ks, half marathons and triathlons.</p>', 'board_members/Shawna_Turrick_1.jpg', '2012-12-06 16:11:12'),
(9, 'Seth Grumet', 'Seth is the founding Director of STOMP The Monster™, which was formed when he began battling Hodgkin''s Lymphoma. He is the owner of Matrix Distributors, Inc. a distributor of generic pharmaceuticals and medical supplies to pharmacies across the US, with offices in East Brunswick, NJ and Glasgow, KY.\r\n\r\nSeth earned his BS in Life Science from Glassboro State College/Rowan University. He is a resident of Marlboro, and enjoys cycling, open water swimming (especially at the Jersey Shore), running, mountain biking, and triathlons but most of all spending time with wife Margie and children Mariah, Madelyn, and Stevie.', 'board_members/-1.jpg', '2012-12-06 16:15:57'),
(10, 'Andi Grumet Sawin', '\r\nAndi has spent over a decade teaching and coaching, including Lacrosse Coach at Westfield High School and Drew University; Swim Coach at Kent Place High School, and Physical Education Teacher at Rutgers Preparatory School and Kent Place High School. She also spent 4 years as a Registered Dietitian.\r\n\r\nShe earned a BS in Dietetics from the University of Rhode Island, and a Masters in Public Health from the University of Hawaii, and is a founding Board Member of STOMP The Monster™.\r\n\r\nAndi is a resident of Basking Ridge, NJ. When she''s not spending time with husband Curtis and children Shane, Cameron, and Blake, she enjoys triathlons, snowboarding, and hiking. 	 \r\n\r\n\r\n', 'board_members/-1_1.jpg', '2012-12-06 16:16:50');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_fbfc09f1` (`user_id`),
  KEY `django_admin_log_e4470c6e` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `user_id`, `content_type_id`, `object_id`, `object_repr`, `action_flag`, `change_message`) VALUES
(1, '2012-11-28 03:45:03', 1, 8, '1', 'Stomp object', 1, ''),
(2, '2012-11-28 03:54:31', 1, 8, '1', 'Stomp object', 1, ''),
(3, '2012-11-29 03:19:34', 1, 10, '1', 'Spencer', 1, ''),
(4, '2012-12-03 00:00:21', 1, 11, '1', 'Home Page Settings', 2, 'Changed welcomeMessage, volunteerMessage, newsletterMessage, contactMessage and boardMessage.'),
(5, '2012-12-03 00:32:54', 1, 8, '1', 'Bob', 3, ''),
(6, '2012-12-03 00:56:02', 1, 11, '1', 'Home Page Settings', 2, 'Changed newsletterMessage and contactMessage.'),
(7, '2012-12-03 00:57:22', 1, 11, '1', 'Home Page Settings', 2, 'No fields changed.'),
(8, '2012-12-04 03:15:58', 1, 8, '1', 'Mr. Brown', 1, ''),
(9, '2012-12-04 03:16:03', 1, 8, '1', 'Mr. Brown', 2, 'No fields changed.'),
(10, '2012-12-04 03:16:22', 1, 8, '2', 'Mrs. Taylor', 1, ''),
(11, '2012-12-04 03:16:53', 1, 8, '3', 'Donna', 1, ''),
(12, '2012-12-04 03:17:09', 1, 8, '4', 'Kristin', 1, ''),
(13, '2012-12-04 03:18:24', 1, 8, '5', 'Valerie', 1, ''),
(14, '2012-12-05 03:02:47', 1, 11, '1', 'Home Page Settings', 2, 'Changed welcomeMessage and boardMessage.'),
(15, '2012-12-05 03:03:19', 1, 11, '1', 'Home Page Settings', 2, 'No fields changed.'),
(16, '2012-12-05 04:07:00', 1, 11, '1', 'Home Page Settings', 2, 'Changed welcomeMessage and eventMessage.'),
(17, '2012-12-05 04:10:37', 1, 11, '1', 'Home Page Settings', 2, 'Changed eventMessage.'),
(18, '2012-12-05 13:33:57', 1, 8, '2', 'Mrs. Taylor', 2, 'Changed story.'),
(19, '2012-12-05 19:39:40', 1, 10, '1', 'ShawnaTurrick', 1, ''),
(20, '2012-12-05 19:42:13', 1, 10, '1', 'ShawnaTurrick', 2, 'Changed bio.'),
(21, '2012-12-05 19:42:38', 1, 10, '1', 'ShawnaTurrick', 2, 'Changed bio.'),
(22, '2012-12-05 20:21:42', 1, 10, '2', 'test', 1, ''),
(23, '2012-12-05 20:22:31', 1, 10, '2', 'test', 3, ''),
(24, '2012-12-06 15:47:29', 1, 10, '1', 'ShawnaTurrick', 2, 'Changed image.'),
(25, '2012-12-06 15:47:54', 1, 10, '1', 'ShawnaTurrick', 2, 'No fields changed.'),
(26, '2012-12-06 15:52:01', 1, 10, '3', 'Susan Blumenthal', 1, ''),
(27, '2012-12-06 15:53:55', 1, 10, '4', 'Gay Purvis', 1, ''),
(28, '2012-12-06 15:54:11', 1, 10, '4', 'Gay Purvis', 2, 'Changed bio.'),
(29, '2012-12-06 16:03:25', 1, 10, '5', 'Erica Sanger', 1, ''),
(30, '2012-12-06 16:08:16', 1, 10, '6', 'Dede Strombotne', 1, ''),
(31, '2012-12-06 16:09:34', 1, 10, '7', 'Carla Strickler', 1, ''),
(32, '2012-12-06 16:10:24', 1, 10, '1', 'ShawnaTurrick', 3, ''),
(33, '2012-12-06 16:11:12', 1, 10, '8', 'Shawna Turrick', 1, ''),
(34, '2012-12-06 16:13:31', 1, 10, '6', 'Dede Strombotne', 2, 'Changed bio.'),
(35, '2012-12-06 16:15:57', 1, 10, '9', 'Seth Grumet', 1, ''),
(36, '2012-12-06 16:16:50', 1, 10, '10', 'Andi Grumet Sawin', 1, ''),
(37, '2012-12-08 17:19:41', 1, 10, '3', 'Susan Blumenthal', 2, 'Changed bio.'),
(38, '2012-12-09 02:32:19', 1, 10, '3', 'Susan Blumenthal', 2, 'No fields changed.'),
(39, '2012-12-09 02:34:40', 1, 10, '3', 'Susan Blumenthal', 2, 'Changed bio.'),
(40, '2012-12-09 02:57:20', 1, 10, '8', 'Shawna Turrick', 2, 'Changed bio.'),
(41, '2012-12-09 02:58:01', 1, 10, '7', 'Carla Strickler', 2, 'Changed bio.'),
(42, '2012-12-09 02:58:32', 1, 10, '6', 'Dede Strombotne', 2, 'Changed bio.'),
(43, '2012-12-09 02:58:48', 1, 10, '5', 'Erica Sanger', 2, 'Changed bio.'),
(44, '2012-12-11 02:30:12', 1, 8, '5', 'Valerie', 2, 'Changed story.'),
(45, '2012-12-23 01:12:08', 1, 8, '6', 'Paul', 1, ''),
(46, '2012-12-23 01:12:32', 1, 8, '7', 'Jill', 1, ''),
(47, '2012-12-23 01:12:55', 1, 8, '8', 'Ida', 1, ''),
(48, '2012-12-23 01:13:00', 1, 8, '8', 'Ida', 2, 'No fields changed.');

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'permission', 'auth', 'permission'),
(2, 'group', 'auth', 'group'),
(3, 'user', 'auth', 'user'),
(4, 'content type', 'contenttypes', 'contenttype'),
(5, 'session', 'sessions', 'session'),
(6, 'site', 'sites', 'site'),
(7, 'log entry', 'admin', 'logentry'),
(8, 'stomp', 'stomps', 'stomp'),
(9, 'about', 'about', 'about'),
(10, 'Member', 'board_members', 'member'),
(11, 'Home Page', 'homepage', 'homepage'),
(12, 'Sponsor', 'homepage', 'sponsor'),
(13, 'volunteer', 'volunteers', 'volunteer');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_c25c2c28` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1125632ff1367141f4a8176ad82539da', 'ODc4ZTAyYmVjZmFmN2FkODlhOWIyMmFhMGJmYmVhMGMxOWIzMmNlNTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2013-01-07 16:07:39'),
('15cb4c920dfa05a2e84541dbdf7316af', 'ODc4ZTAyYmVjZmFmN2FkODlhOWIyMmFhMGJmYmVhMGMxOWIzMmNlNTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-12-18 03:13:00'),
('182ebfe48f36b1f6fa9680d625e98930', 'ODc4ZTAyYmVjZmFmN2FkODlhOWIyMmFhMGJmYmVhMGMxOWIzMmNlNTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-12-18 02:32:25'),
('35a4825380e989b60860b5088417b473', 'ODc4ZTAyYmVjZmFmN2FkODlhOWIyMmFhMGJmYmVhMGMxOWIzMmNlNTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2013-01-05 13:11:41'),
('4c5a586d39f996ee5f6deeecd1d7397a', 'ODc4ZTAyYmVjZmFmN2FkODlhOWIyMmFhMGJmYmVhMGMxOWIzMmNlNTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-12-19 02:23:49'),
('544f7f7df191956af68a9fa150d39d56', 'OGMxOTNjZTIwYjI2OWFjMmUwMzUwNTk5Nzc2YzhhOTAxZjNhYTNkNzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n', '2012-12-19 19:50:12'),
('9e4dae51e5ba1b05b344512efbd52048', 'ODc4ZTAyYmVjZmFmN2FkODlhOWIyMmFhMGJmYmVhMGMxOWIzMmNlNTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-12-18 03:14:06'),
('a7583feabd08d2c88baebc479ad08000', 'ODc4ZTAyYmVjZmFmN2FkODlhOWIyMmFhMGJmYmVhMGMxOWIzMmNlNTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-12-20 21:54:41'),
('ade28bffb633d8d5cb20f64ab092ccd6', 'ODc4ZTAyYmVjZmFmN2FkODlhOWIyMmFhMGJmYmVhMGMxOWIzMmNlNTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-12-12 03:38:35'),
('b8a51dea94ac56b68e748c16d8f6e92b', 'ODc4ZTAyYmVjZmFmN2FkODlhOWIyMmFhMGJmYmVhMGMxOWIzMmNlNTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-12-23 02:31:32'),
('ceb696c5f184abfffdce21c636bb2387', 'ODc4ZTAyYmVjZmFmN2FkODlhOWIyMmFhMGJmYmVhMGMxOWIzMmNlNTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-12-16 16:50:16'),
('ded42d14fc6289bdaa05b0da6eab0058', 'ODc4ZTAyYmVjZmFmN2FkODlhOWIyMmFhMGJmYmVhMGMxOWIzMmNlNTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-12-19 13:32:42'),
('e3e41109370d21573fb7be6023a4c477', 'ODc4ZTAyYmVjZmFmN2FkODlhOWIyMmFhMGJmYmVhMGMxOWIzMmNlNTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-12-19 13:32:37'),
('ee6775d39c172797178a06e503291d9e', 'ODc4ZTAyYmVjZmFmN2FkODlhOWIyMmFhMGJmYmVhMGMxOWIzMmNlNTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-12-18 02:16:43'),
('fc31fe1612d2c911e830b96780b8d5ca', 'ODc4ZTAyYmVjZmFmN2FkODlhOWIyMmFhMGJmYmVhMGMxOWIzMmNlNTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-12-19 18:25:40');

-- --------------------------------------------------------

--
-- Table structure for table `homepage_homepage`
--

DROP TABLE IF EXISTS `homepage_homepage`;
CREATE TABLE IF NOT EXISTS `homepage_homepage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `welcomeMessage` longtext NOT NULL,
  `volunteerMessage` longtext NOT NULL,
  `eventMessage` longtext NOT NULL,
  `contactMessage` longtext NOT NULL,
  `boardMessage` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `homepage_homepage`
--

INSERT INTO `homepage_homepage` (`id`, `welcomeMessage`, `volunteerMessage`, `eventMessage`, `contactMessage`, `boardMessage`) VALUES
(1, 'STOMP The Monster™ provides financial and other support to cancer patients, their families, and caregivers when they need it most during their fight with the disease.  We promote a healthy lifestyle with proper diet and exercise, leading by example, and provide funding for potential advances in prevention and treatment. ', 'We rely on the generosity of volunteers to make this important work possible. If you are interested in volunteering,then please do', 'In addition to our annual events, we sponsor a variety of special events during the year. Check back periodically to see what we have going on.', 'If you have any comments, questions, or would like to say hello, please feel free to contact us. ', 'Find out who keeps STOMP The Monster™ going and our stories about why we volunteer.');

-- --------------------------------------------------------

--
-- Table structure for table `homepage_sponsor`
--

DROP TABLE IF EXISTS `homepage_sponsor`;
CREATE TABLE IF NOT EXISTS `homepage_sponsor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `homepage_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `homepage_sponsor_35da0e60` (`homepage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `homepage_sponsor`
--


-- --------------------------------------------------------

--
-- Table structure for table `stomps_stomp`
--

DROP TABLE IF EXISTS `stomps_stomp`;
CREATE TABLE IF NOT EXISTS `stomps_stomp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `story` longtext NOT NULL,
  `pub_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `stomps_stomp`
--

INSERT INTO `stomps_stomp` (`id`, `name`, `story`, `pub_date`) VALUES
(1, 'Mr. Brown', ' Mr. Brown is a 38 year old with colon cancer.   He is a husband and father with three young children, including one who was born during his second month of chemotherapy.  Early in his treatment he was out of work, but has since returned to work the night shift to help pay for his medical treatment and care for his family.  STOMP The Monster is helping Mr. Brown by paying off his medical bill and providing a gift card to help make this holiday season a little nicer. ', '2012-12-04 03:15:58'),
(2, 'Mrs. Taylor', 'Mrs. Taylor is a 46 year old with breast cancer.  Between her husband''s job loss, her surgery and chemotherapy, bills have gotten behind.  STOMP The Monster is helping Mrs. Taylor by paying off her electric bill and providing a gift card for groceries to help take the strain off her and her husband as they both get back on their feet. ', '2012-12-04 03:16:22'),
(3, 'Donna', 'Donna is a 52 year old with metastatic breast cancer.  She is on disability but it only covers her mortgage.  Her husband and 21-year-old son are working hard to cover their other expenses and $600/month medical insurance; however, her co-pays and deductibles have left her with a large balance.  STOMP the Monster is helping Donna by paying her medical bills to keep her treatment going.  ', '2012-12-04 03:16:53'),
(4, 'Kristin', 'Kristin is a 33 year old with metastatic gastric cancer.  She has been undergoing treatment for the past year and has been unable to work.  She lives alone with support of her family; however, she has been unable to pay many bills.  STOMP The Monster is able to pay her car insurance and homeowners insurance for the next year to take away the stress of making those monthly payments.  ', '2012-12-04 03:17:09'),
(5, 'Valerie', 'Valerie is a retired 63 year old who has metastatic colon cancer.  She and her husband are on a fixed income and have struggled to make their copays for her frequent doctor''s visits.  STOMP The Monster is going to ease the strain by providing a gift card for groceries. \r\n', '2012-12-04 03:18:24'),
(6, 'Paul', 'Paul is 40 years old from Cary who has been unemployed since September 2012 when he started chemotherapy for Non Hodgkins Lymphoma.  He has two kids who live with their mother and tried to support them right now but has been unable to do much.  STOMP has provided Paul with a little relief my paying off his bill at his doctor''s office and giving him a gift card to a local retailer to buy groceries, prescriptions, and holiday gifts for his children.', '2012-12-23 01:12:08'),
(7, 'Jill', 'Jill is 41 years old from Garner who has been fighting metastatic breast cancer since 2009.  While her husband is employed, making ends meet has been difficult.  STOMP is trying to ease the financial stress by making a car payment on her behalf.', '2012-12-23 01:12:32'),
(8, 'Ida', 'Ida is 56 years old from Garner who was on living on disability payments and food stamps prior to being diagnosed with advanced lung cancer.  Her rent payments are a significant part of her disability payments giving her little each month for groceries, prescriptions, and other daily needs.  STOMP is paying her rent for one month to give her a little breathing room.  ', '2012-12-23 01:12:55');

-- --------------------------------------------------------

--
-- Table structure for table `volunteers_volunteer`
--

DROP TABLE IF EXISTS `volunteers_volunteer`;
CREATE TABLE IF NOT EXISTS `volunteers_volunteer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `comments` longtext COLLATE utf8_unicode_ci NOT NULL,
  `submit_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `volunteers_volunteer`
--


--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `permission_id_refs_id_a7792de1` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `content_type_id_refs_id_728de91f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `group_id_refs_id_f0ee9890` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `user_id_refs_id_831107f1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `user_id_refs_id_f2045483` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `content_type_id_refs_id_288599e6` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `user_id_refs_id_c8665aa` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `homepage_sponsor`
--
ALTER TABLE `homepage_sponsor`
  ADD CONSTRAINT `homepage_id_refs_id_f47cd83e` FOREIGN KEY (`homepage_id`) REFERENCES `homepage_homepage` (`id`);
