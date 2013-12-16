CREATE DATABASE  IF NOT EXISTS `simple` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `simple`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: simple
-- ------------------------------------------------------
-- Server version	5.6.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `body` text,
  `date` int(11) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `descriptions` varchar(255) DEFAULT NULL,
  `alias` varchar(45) DEFAULT NULL,
  `preview` text,
  `cat_id` int(11) NOT NULL,
  `active` int(2) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias_UNIQUE` (`alias`),
  KEY `test_idx` (`cat_id`),
  CONSTRAINT `fk_newstocat` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (5,'Новость 1','дравствуй уважаемый читатель блога LifeExample, с момента публикации последней статьи прошло много времени, сегодня у меня появилось свободное время на написание новой. В этой статье я собираюсь систематизировать информацию об использовании регулярных выражений в PHP, собранную с разных сайтов.\n\nТак сложилось, что последнее время мне часто приходится сталкиваться с проблемой поиска подстроки в тексте, причем эта подстрока может иметь не фиксированный набор символов. На примитивном уровне работы с текстом можно использовать стандартные функции PHP:\n\nstrpos() – Возвращает подстроку в строке.\nsubstr() -Возвращает заданный участок строки.\nstrcmp() - Сравнивает две строки.\nstr_replace() - Заменяет в строке все вхождения одной подстроки на другую подстроку.\nexplode() – разбивает строку в массив по заданному разделителю\nstrip_tags() – Удаляет из строки все HTML тэги.\nstrtolower() – Перевод в нижний регистр.\nstrtoupper() – Перевод в верхний регистр.\ntrim() – Удаляет (” “, \\n, \\r, \\t) символы в начале и в конце строки.\nHtmlSpecialChars() – Заменяет специальные символы на их HTML эквиваленты.\nconvert_cyr_string() – Преобразует русский текст из одной кодировки в другую. ',0,'','','News1','дравствуй уважаемый читатель блога LifeExample, с момента публикации последней статьи прошло много времени, сегодня у меня появилось свободное время на написание новой. В этой статье я собираюсь систематизировать информацию об использовании регулярных выражений в PHP, собранную с разных сайтов.\n\nТак сложилось, что последнее время мне часто приходится сталкиваться с проблемой поиска подстроки в тексте, причем эта подстрока может иметь не фиксированный набор символов. На примитивном уровне работы с текстом можно использовать стандартные функции PHP:\n\nstrpos() – Возвращает подстроку в строке.\nsubstr() -Возвращает заданный участок строки.\nstrcmp() - Сравнивает две строки.\nstr_replace() - Заменяет в строке все вхождения одной подстроки на другую подстроку.\nexplode() – разбивает строку в массив по заданному разделителю\nstrip_tags() – Удаляет из строки все HTML тэги.\nstrtolower() – Перевод в нижний регистр.\nstrtoupper() – Перевод в верхний регистр.\ntrim() – Удаляет (” “, \\n, \\r, \\t) символы в начале и в конце строки.\nHtmlSpecialChars() – Заменяет специальные символы на их HTML эквиваленты.\nconvert_cyr_string() – Преобразует русский текст из одной кодировки в другую. ',1,NULL,'ttest'),(6,'Новость2','дравствуй уважаемый читатель блога LifeExample, с момента публикации последней статьи прошло много времени, сегодня у меня появилось свободное время на написание новой. В этой статье я собираюсь систематизировать информацию об использовании регулярных выражений в PHP, собранную с разных сайтов.\n\n',0,'','','News2','дравствуй уважаемый читатель блога LifeExample, с момента публикации последней статьи прошло много времени, сегодня у меня появилось свободное время на написание новой. В этой статье я собираюсь систематизировать информацию об использовании регулярных выражений в PHP, собранную с разных сайтов.\n\n',1,NULL,'test'),(7,'test1_1','уважаемый читатель блога LifeExample, с момента публикации последней статьи прошло много времени, сегодня у меня появилось свободное время на написание новой. В этой статье я собираюсь систематизировать информацию об использовании регулярных выражений в PHP, собранную с разных сайтов. Так сложилось, что последнее время мне часто приходится сталкиваться с проблемой поиска подстроки в тексте, причем эта подстрока может иметь не фиксированный набор символов. На примитивном уровне работы с текстом можно использовать стандартные функции PHP: strpos() – Возвращает подстроку в строке. substr() -Возвращает заданный участок строки. s',1387112340,'','','test1_1','уважаемый читатель блога LifeExample, с момента публикации последней статьи прошло много времени, сегодня у меня появилось свободное время на написание новой. В этой статье я собираюсь систематизировать информацию об использовании регулярных выражений в PHP, собранную с разных сайтов. Так сложилось, что последнее время мне часто приходится сталкиваться с проблемой поиска подстроки в тексте, причем эта подстрока может иметь не фиксированный набор символов. На примитивном уровне работы с текстом можно использовать стандартные функции PHP: strpos() – Возвращает подстроку в строке. substr() -Возвращает заданный участок строки. s',1,NULL,'test'),(8,'test5','ых выражений в PHP, собранную с разных сайтов. Так сложилось, что последнее время мне часто приходится сталкиваться с проблемой поиска подстроки в тексте, причем эта подстрока может иметь не фиксированный набор символов. На примитивном уровне работы с текстом можно использовать стандартные функции PHP: strpos() – Возвращает подстроку в строке. substr() -Возвращает заданный участок строки. strcmp() - Сравнивает две строки. str_replace() - Заменяет в строке все вхождения одной подстроки на другую подстроку. explode() – разбивает строку в массив по заданному разделителю strip_tags() – Удаляет из строки все HTML тэги. strtolower() – Перевод в нижний регистр. strtoupper() – Перевод в вер',1387112354,'test5','test5','test5','ых выражений в PHP, собранную с разных сайтов. Так сложилось, что последнее время мне часто приходится сталкиваться с проблемой поиска подстроки в тексте, причем эта подстрока может иметь не фиксированный набор символов. На примитивном уровне работы с текстом можно использовать стандартные функции PHP: strpos() – Возвращает подстроку в строке. substr() -Возвращает заданный участок строки. strcmp() - Сравнивает две строки. str_replace() - Заменяет в строке все вхождения одной подстроки на другую подстроку. explode() – разбивает строку в массив по заданному разделителю strip_tags() – Удаляет из строки все HTML тэги. strtolower() – Перевод в нижний регистр. strtoupper() – Перевод в вер',1,NULL,'test'),(9,'test6','efef',0,'efef','efef','test6','efe',1,NULL,'test'),(11,'testet','efef',1387111771,'efe','efef','test333','efef',1,NULL,'efef'),(12,'в','в',1387113022,'в','в','d','в',1,NULL,'в');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-12-16 10:45:31
