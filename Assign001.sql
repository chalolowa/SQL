CREATE DATABASE IF NOT EXISTS `universitydb`;
USE `universitydb`;


CREATE TABLE IF NOT EXISTS `courses` (
  `CourseID` int(11) NOT NULL,
  `CourseName` varchar(50) NOT NULL DEFAULT '',
  `Instructor` varchar(50) NOT NULL DEFAULT '',
  `Credits` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`CourseID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `courses` (`CourseID`, `CourseName`, `Instructor`, `Credits`) VALUES
	(24, 'Mechanical', 'Locha', 80),
	(33, 'Telecomunications', 'Ted', 60),
	(45, 'Sociology', 'Ron', 40),
	(55, 'Forensics', 'Karen', 35),
	(101, 'Biosystems', 'Locha', 60);


CREATE TABLE IF NOT EXISTS `enrolledstudents` (
  `StudentID` int(11) unsigned NOT NULL,
  `GPA` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Major` varchar(50) DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `enrolledstudents` (`StudentID`, `GPA`, `LastName`, `Age`, `Major`, `FirstName`) VALUES
	(28, 'B+', 'Spartan', 28, 'Telecommunications', 'Riz'),
	(117, 'A', 'Owino', 25, 'Biosystems', 'Charles'),
	(125, 'C+', 'Spartan', 27, 'Sociology', 'Kai'),
	(134, 'A-', 'Spartan', 27, 'Mechanical', 'Vannak'),
	(500, 'D', 'Pirate', 32, 'Forensics', 'Soren');

DROP TABLE IF EXISTS `enrolledstudents`;
