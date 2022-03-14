CREATE DATABASE InstaMMK;
USE InstaMMK;

# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.34)
# Datenbank: InstaMMK
# Erstellt am: 2022-03-14 17:10:55 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Export von Tabelle imageComments
# ------------------------------------------------------------

CREATE TABLE `imageComments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `imageId` int(11) DEFAULT NULL,
  `comments` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle posts
# ------------------------------------------------------------


CREATE TABLE `posts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `standort` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text,
  `link` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `posts` (`id`, `standort`, `image`, `description`, `link`, `date`, `userId`)
VALUES
	(1,'Mannheim','image1.jpeg','Bester Kurs der DHBW Mannheim \n',NULL,'2022-03-14','Marcel'),
	(2,'Mannheim','image2.jpeg','Tim Berners-Lee: Britischer Physiker und Informatiker, Veröffentlichte 1989 die ersten Entwürfe der Auszeichnungssprache HTML (Hypertext Markup Language), Entwickelte das Protokoll HTTP (Hypertext Transfer Protocol)\n',NULL,'2022-03-14','Anna'),
	(3,'Mannheim','image3.jpeg','Marc Andreessen: Erfinder des ersten modernen Browser (Mosaic-Browser), Gründer des Unternehmens Netscape und des gleichnamigen Browser, Bewegte Microsoft zur Entwicklung des Internet Explorer',NULL,'2022-03-14','Marcel'),
	(4,'Mannheim','image4.jpeg','Marcel Engelmann:\nMaster of Business Administration, Stanford University\nSenior Digital Consultant bei der Mercedes-Benz AG\nDozent von MMK21 in Internettechnologien\n',NULL,'2022-03-14','Anna'),
	(5,'Mannheim','image5.jpeg','Joseph Licklider: Gründerfigur der Künstlichen Intelligenz, moderner Interaktionskonzepte für Computer und des Internets, Bereits August 1962 beschrieb Licklider ein globales ComputerNetzwerk, welches nahezu alle Ideen enthielt, die heute das Internet kennzeichnen, 1969 entstand auf der Grundlage von Lickliders Forschungen das Arpanet, der Vorläufer des Internets',NULL,'2022-03-14','Marcel'),
	(6,'Mannheim','image6.jpeg','Diana Neddermeyer:\nDHBW Mannheim\nDozentin von MMK21 in Webtechnologien\nclientseitige Programmierung\n',NULL,'2022-03-14','Anna'),
	(7,'Mannheim','image7.jpeg','World Wide Web\n1989-2003 \nTim Berners-Lee entwickelte (1989) am CERN die Grundlage des World Wide Web\nEntwicklung von Mosaic (1993) -> erster grafikfähiger und kostenloser Webbrowser,\nEntwicklung von IPv6 \nZahl der Internetnutzer stieg rasant an\n',NULL,'2022-03-14','Marcel'),
	(8,'Mannheim','image8.jpeg','World Wide Web Consortium\nGremium zur Standardisierung der Techniken im World Wide Web\nGegründet am 1. Oktober 19994 \nEntwickelt technische Spezifikationen und Richtlinien in einem transparenten Prozess',NULL,'2022-03-14','Anna'),
	(9,'Mannheim','image9.jpeg','Webtechnologien at it’s best : Die Lernplattform der Studenten (Digitale Medien) an der DHBW Mannheim für die Studenten der DHBW Mannheim. ',NULL,'2022-03-14','Marcel'),
	(10,'Mannheim','image10.jpeg','Extensible Markup Language (XML): \nAuszeichnungssprache zur Darstellung hierarchisch strukturierter Daten im Format einer Textdatei\nBeschreibt Strukturen sehr genau\n XML- Standard am 10. Februar 1998 veröffentlicht\nXML ist die Basis für weitere Sprachen\n',NULL,'2022-03-14','Marcel'),
	(11,'Mannheim','image11.jpeg','Auszeichnungssprache zur Darstellung hierarchisch strukturierter Daten im Format einer Textdatei #OpaDerAuszeichnungssprachen #Datenbanke',NULL,'2022-03-14','Marcel'),
	(12,'Mannheim','image12.jpeg','JavaScript Object Notation Beispiel',NULL,'2022-03-14','Anna'),
	(13,'Mannheim','image13.jpeg','Internet-Technologien im Zusammenhang',NULL,'2022-03-14','Anna'),
	(14,'Mannheim','image14.jpeg','Client-Server',NULL,'2022-03-14','Marcel'),
	(15,'Mannheim','image15.jpeg','Heute wieder richtig viel Musik produziert. Blöd nur wenn die Datei zu groß ist! Zum Glück gibt es Datenkompression! Mit einem Codec kann ich meine MP3 Datei easy  konvertieren! Danke Technik! #codecs #datenkompression',NULL,'2022-03-14','Anna'),
	(16,'Mannheim','image16.jpeg','OSI- Referenzmodell: Text: Wie werden Daten transportiert? Die Ebenen des OSI-Referenzmodells erklären hier so einiges. Oder was meint ihr? #kommunikation #internettechnologien #daten\n',NULL,'2022-03-14','Marcel');


# Export von Tabelle users
# ------------------------------------------------------------

CREATE TABLE `users` (
  `id` int(11) DEFAULT NULL,
  `profileName` text,
  `profileImage` text,
  `followers` int(11) DEFAULT NULL,
  `bio` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `users` (`id`, `profileName`, `profileImage`, `followers`, `bio`)
VALUES
	(1,'Marcel','marcel.jpeg',31,'Dozent an der DHBW Mannheim'),
	(NULL,'Anna','anna.jpeg',12243,'Zukünftige Studentin an der DHBW Mannheim');


/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;