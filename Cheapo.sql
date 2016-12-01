
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
-- 
-- Database: `Cheapo`
-- 
-- --------------------------------------------------------
-- 
-- Table structure for table `message`
-- 
CREATE TABLE IF NOT EXISTS `message` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`body` text NOT NULL,
`subject` text NOT NULL,
`user_id` int(11) NOT NULL,
`recipient_ids` int(11) NOT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
-- --------------------------------------------------------
-- 
-- Table structure for table `message_read`
-- 
CREATE TABLE IF NOT EXISTS `message_read` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`message_id` int(11) NOT NULL,
`reader_id` int(11) NOT NULL,
`date` date NOT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
-- --------------------------------------------------------
-- 
-- Table structure for table `user`
-- 
CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`first_name` text NOT NULL,
`last_name` text NOT NULL,
`password` text NOT NULL,
`username` text NOT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
INSERT INTO user (first_name, last_name, password, username) VALUES ('Bob','Johnson','abc','bobby');
INSERT INTO user (first_name, last_name, password, username) VALUES ('Jennifer','Anderson','abc','jenny');

SHOW TABLES;
SELECT * FROM user;
SELECT * FROM message;
SELECT * FROM message_read;
