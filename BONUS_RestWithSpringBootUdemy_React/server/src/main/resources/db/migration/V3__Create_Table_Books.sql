CREATE TABLE `books` (
  `id` INT(10) AUTO_INCREMENT PRIMARY KEY,
  `author` longtext,
  `launch_date` datetime(6) NOT NULL,
  `price` decimal(65,2) NOT NULL,
  `title` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
