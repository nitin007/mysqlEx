CREATE TABLE `LOCATIONS` (
  `LNAME` varchar(40) DEFAULT NULL,
  `PHONE` int(11) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `LOCATIONS` VALUES ('Lincoln',6834523,'Lincoln Place'),('O\'Neill\'s',6742134,'Pearse St'),('Old Nag',7678132,'College St'),('Buttery',7023421,'Dame St');



CREATE TABLE `SANDWICHES` (
  `LOCATION` varchar(40) DEFAULT NULL,
  `BREAD` varchar(20) DEFAULT NULL,
  `FILLING` varchar(20) DEFAULT NULL,
  `PRICE` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



INSERT INTO `SANDWICHES` VALUES ('Lincoln','Ray','Ham',1.25),('O\'Neill\'s','White','Cheese',1.2),('O\'Neill\'s','Hole','Ham',1.25),('Old Nag','Rye','Beef',1.35),('Buttery','White','Cheese',1),('O\'Neill\'s','White','Turkey',1.35),('Buttery','White','Ham',1.1),('Lincoln','Rye','Beef',1.35),('Lincoln','White','Ham',1.3),('Old Nag','Rye','Ham',1.4);

CREATE TABLE `TASTES` (
  `Name` varchar(20) DEFAULT NULL,
  `Filling` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


INSERT INTO `TASTES` VALUES ('Brown','Turkey'),('Brown','Beef'),('Brown','Ham'),('Jones','Cheese'),('Green','Beef'),('Green','Turkey'),('Green','Cheese');

