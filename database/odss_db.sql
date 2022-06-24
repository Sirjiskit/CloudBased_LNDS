-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2021 at 02:16 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `odss_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course` varchar(10) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course`, `description`) VALUES
(2, 'COM101', 'Introduction to computing');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `file_json` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `title`, `description`, `file_json`, `user_id`, `date_created`) VALUES
(1, 'Sample documents', '								&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt orci eu erat dignissim, id commodo enim mattis. Cras egestas interdum ipsum. Fusce pretium porttitor tellus quis malesuada. Nullam et ex ullamcorper, accumsan nunc sed, tempor erat. Phasellus non nisi sagittis massa laoreet convallis eu id mauris. Cras malesuada sodales lectus non vehicula. Nulla lacinia fringilla felis convallis tempus. Cras volutpat lorem vitae congue rutrum. Sed scelerisque tempus fermentum.&lt;/span&gt;																						', '[\"1605074220_sample (4).pdf\",\"1605074220_sample (3).pdf\"]', 1, '2020-11-11 13:47:40'),
(2, 'Sample documents', '                                &lt;h2&gt;&lt;b&gt;Sample Header&amp;nbsp;&lt;/b&gt;&lt;/h2&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt orci eu erat dignissim, id commodo enim mattis. Cras egestas interdum ipsum. Fusce pretium porttitor tellus quis malesuada. Nullam et ex ullamcorper, accumsan nunc sed, tempor erat. Phasellus non nisi sagittis massa laoreet convallis eu id mauris. Cras malesuada sodales lectus non vehicula. Nulla lacinia fringilla felis convallis tempus. Cras volutpat lorem vitae congue rutrum. Sed scelerisque tempus fermentum.&lt;/span&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt orci eu erat dignissim, id commodo enim mattis. Cras egestas interdum ipsum. Fusce pretium porttitor tellus quis malesuada. Nullam et ex ullamcorper, accumsan nunc sed, tempor erat. Phasellus non nisi sagittis massa laoreet convallis eu id mauris. Cras malesuada sodales lectus non vehicula. Nulla lacinia fringilla felis convallis tempus. Cras volutpat lorem vitae congue rutrum. Sed scelerisque tempus fermentum.&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt orci eu erat dignissim, id commodo enim mattis. Cras egestas interdum ipsum. Fusce pretium porttitor tellus quis malesuada. Nullam et ex ullamcorper, accumsan nunc sed, tempor erat. Phasellus non nisi sagittis massa laoreet convallis eu id mauris. Cras malesuada sodales lectus non vehicula. Nulla lacinia fringilla felis convallis tempus. Cras volutpat lorem vitae congue rutrum. Sed scelerisque tempus fermentum.&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt orci eu erat dignissim, id commodo enim mattis. Cras egestas interdum ipsum. Fusce pretium porttitor tellus quis malesuada. Nullam et ex ullamcorper, accumsan nunc sed, tempor erat. Phasellus non nisi sagittis massa laoreet convallis eu id mauris. Cras malesuada sodales lectus non vehicula. Nulla lacinia fringilla felis convallis tempus. Cras volutpat lorem vitae congue rutrum. Sed scelerisque tempus fermentum.&lt;/span&gt;&lt;/li&gt;&lt;/ol&gt;															                            ', '[\"1638095640_5-6-13-498.pdf\",\"1605080340_Sample_Doc.doc\",\"1605080340_sample_pdf_file.pdf\"]', 1, '2020-11-11 15:39:50'),
(3, 'Note title', '&lt;p style=&quot;user-select: auto;&quot;&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px; user-select: auto;&quot;&gt;The Campeonato Nacional de Liga de Primera Divisi&oacute;n, commonly known simply as Primera Divisi&oacute;n in Spain, and as La Liga in English-speaking countries and officially as LaLiga Santander for sponsorship reasons, stylized as LaLiga, is the men&amp;#x2019;s top professional football division of the Spanish football league system.&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px; user-select: auto;&quot;&gt;&amp;nbsp;&lt;a class=&quot;ruhjFe NJLBac fl&quot; href=&quot;https://en.wikipedia.org/wiki/La_Liga&quot; data-ved=&quot;2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQmhN6BAhFEAI&quot; ping=&quot;/url?sa=t&amp;amp;source=web&amp;amp;rct=j&amp;amp;url=https://en.wikipedia.org/wiki/La_Liga&amp;amp;ved=2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQmhN6BAhFEAI&quot; style=&quot;color: rgb(26, 13, 171); -webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); white-space: nowrap; outline: 0px; user-select: auto;&quot;&gt;Wikipedia&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;wDYxhc&quot; data-attrid=&quot;hw:/collection/recurring_events:current champion&quot; data-md=&quot;1001&quot; lang=&quot;en-NG&quot; data-hveid=&quot;CG0QAA&quot; data-ved=&quot;2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQkCl6BAhtEAA&quot; style=&quot;clear: none; padding-left: 15px; padding-right: 15px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;&lt;div class=&quot;Z1hOCe&quot;&gt;&lt;div class=&quot;zloOqf PZPZlf&quot; data-ved=&quot;2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQyxMoAHoECG0QAQ&quot; style=&quot;margin-top: 7px;&quot;&gt;&lt;div class=&quot;rVusze&quot;&gt;&lt;span class=&quot;w8qArf&quot; style=&quot;font-weight: bolder;&quot;&gt;&lt;a class=&quot;fl&quot; href=&quot;https://www.google.com/search?rlz=1C1SQJL_enNG958NG958&amp;amp;sxsrf=AOaemvIKv0iAcO6vLdQ1BLdFVEO3pm0ldA:1638101684986&amp;amp;q=la+liga+current+champion&amp;amp;stick=H4sIAAAAAAAAAOPgE-LQz9U3sEwvrNAyyCi30k_Oz8lJTS7JzM_TL0pNLi0qysxLj08tS80rKbYCcYEMheSMxNwCoIpFrBI5iQo5memJCuhSAC6IIStZAAAA&amp;amp;sa=X&amp;amp;ved=2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQ6BMoAHoECG0QAg&quot; data-ved=&quot;2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQ6BMoAHoECG0QAg&quot; style=&quot;-webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); outline: 0px; color: rgb(32, 33, 36) !important;&quot;&gt;Current champion&lt;/a&gt;:&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;LrzXr kno-fv wHYlTd z8gr9e&quot; style=&quot;line-height: 22px;&quot;&gt;&lt;a class=&quot;fl&quot; href=&quot;https://www.google.com/search?rlz=1C1SQJL_enNG958NG958&amp;amp;sxsrf=AOaemvIKv0iAcO6vLdQ1BLdFVEO3pm0ldA:1638101684986&amp;amp;q=Atl%C3%A9tico+Madrid&amp;amp;stick=H4sIAAAAAAAAAOPgE-LQz9U3sEwvrFACs3LSzcu0DDLKrfST83NyUpNLMvPz9ItSk0uLijLz0uNTy1LzSoqtQFwgQyE5IzG3AKhiEauAY0nO4ZUlmcn5Cr6JKUWZKTtYGQFGuzxKXgAAAA&amp;amp;sa=X&amp;amp;ved=2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQmxMoAXoECG0QAw&quot; data-ved=&quot;2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQmxMoAXoECG0QAw&quot; style=&quot;color: rgb(26, 13, 171); -webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); outline: 0px;&quot;&gt;Atl&eacute;tico de Madrid&lt;/a&gt;&amp;nbsp;(11th title)&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;wDYxhc&quot; data-attrid=&quot;ss:/webfacts:most_appear&quot; data-md=&quot;1001&quot; lang=&quot;en-NG&quot; data-hveid=&quot;CGsQAA&quot; data-ved=&quot;2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQkCl6BAhrEAA&quot; style=&quot;clear: none; padding-left: 15px; padding-right: 15px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;&lt;div class=&quot;Z1hOCe&quot;&gt;&lt;div class=&quot;zloOqf PZPZlf&quot; data-ved=&quot;2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQyxMoAHoECGsQAQ&quot; style=&quot;margin-top: 7px;&quot;&gt;&lt;div class=&quot;rVusze&quot;&gt;&lt;span class=&quot;w8qArf&quot; style=&quot;font-weight: bolder;&quot;&gt;&lt;a class=&quot;fl&quot; href=&quot;https://www.google.com/search?rlz=1C1SQJL_enNG958NG958&amp;amp;sxsrf=AOaemvIKv0iAcO6vLdQ1BLdFVEO3pm0ldA:1638101684986&amp;amp;q=la+liga+most+appearances&amp;amp;sa=X&amp;amp;ved=2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQ6BMoAHoECGsQAg&quot; data-ved=&quot;2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQ6BMoAHoECGsQAg&quot; style=&quot;-webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); outline: 0px; color: rgb(32, 33, 36) !important;&quot;&gt;Most appearances&lt;/a&gt;:&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;LrzXr kno-fv wHYlTd z8gr9e&quot; style=&quot;line-height: 22px;&quot;&gt;&lt;a class=&quot;fl&quot; href=&quot;https://www.google.com/search?rlz=1C1SQJL_enNG958NG958&amp;amp;sxsrf=AOaemvIKv0iAcO6vLdQ1BLdFVEO3pm0ldA:1638101684986&amp;amp;q=Andoni+Zubizarreta&amp;amp;stick=H4sIAAAAAAAAAONgVuLUz9U3MDUxMMhYxCrkmJeSn5epEFWalFmVWFSUWpIIAGWAUBEiAAAA&amp;amp;sa=X&amp;amp;ved=2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQmxMoAXoECGsQAw&quot; data-ved=&quot;2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQmxMoAXoECGsQAw&quot; style=&quot;color: rgb(26, 13, 171); -webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); outline: 0px;&quot;&gt;Andoni Zubizarreta&lt;/a&gt;; (622)&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;wDYxhc&quot; data-attrid=&quot;ss:/webfacts:found&quot; data-md=&quot;1001&quot; lang=&quot;en-NG&quot; data-hveid=&quot;CGgQAA&quot; data-ved=&quot;2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQkCl6BAhoEAA&quot; style=&quot;clear: none; padding-left: 15px; padding-right: 15px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;&lt;div class=&quot;Z1hOCe&quot;&gt;&lt;div class=&quot;zloOqf PZPZlf&quot; data-ved=&quot;2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQyxMoAHoECGgQAQ&quot; style=&quot;margin-top: 7px;&quot;&gt;&lt;div class=&quot;rVusze&quot;&gt;&lt;span class=&quot;w8qArf&quot; style=&quot;font-weight: bolder;&quot;&gt;&lt;a class=&quot;fl&quot; href=&quot;https://www.google.com/search?rlz=1C1SQJL_enNG958NG958&amp;amp;sxsrf=AOaemvIKv0iAcO6vLdQ1BLdFVEO3pm0ldA:1638101684986&amp;amp;q=la+liga+founded&amp;amp;sa=X&amp;amp;ved=2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQ6BMoAHoECGgQAg&quot; data-ved=&quot;2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQ6BMoAHoECGgQAg&quot; style=&quot;-webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); outline: 0px; color: rgb(32, 33, 36) !important;&quot;&gt;Founded&lt;/a&gt;:&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;LrzXr kno-fv wHYlTd z8gr9e&quot; style=&quot;line-height: 22px;&quot;&gt;1929; 92 years ago&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;wDYxhc&quot; data-attrid=&quot;ss:/webfacts:top_goalscor&quot; data-md=&quot;1001&quot; lang=&quot;en-NG&quot; data-hveid=&quot;CGIQAA&quot; data-ved=&quot;2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQkCl6BAhiEAA&quot; style=&quot;clear: none; padding-left: 15px; padding-right: 15px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;&lt;div class=&quot;Z1hOCe&quot;&gt;&lt;div class=&quot;zloOqf PZPZlf&quot; data-ved=&quot;2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQyxMoAHoECGIQAQ&quot; style=&quot;margin-top: 7px;&quot;&gt;&lt;div class=&quot;rVusze&quot;&gt;&lt;span class=&quot;w8qArf&quot; style=&quot;font-weight: bolder;&quot;&gt;&lt;a class=&quot;fl&quot; href=&quot;https://www.google.com/search?rlz=1C1SQJL_enNG958NG958&amp;amp;sxsrf=AOaemvIKv0iAcO6vLdQ1BLdFVEO3pm0ldA:1638101684986&amp;amp;q=la+liga+top+goalscorer&amp;amp;sa=X&amp;amp;ved=2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQ6BMoAHoECGIQAg&quot; data-ved=&quot;2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQ6BMoAHoECGIQAg&quot; style=&quot;-webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); outline: 0px; color: rgb(32, 33, 36) !important;&quot;&gt;Top goalscorer&lt;/a&gt;:&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;LrzXr kno-fv wHYlTd z8gr9e&quot; style=&quot;line-height: 22px;&quot;&gt;&lt;a class=&quot;fl&quot; href=&quot;https://www.google.com/search?rlz=1C1SQJL_enNG958NG958&amp;amp;sxsrf=AOaemvIKv0iAcO6vLdQ1BLdFVEO3pm0ldA:1638101684986&amp;amp;q=Lionel+Messi&amp;amp;stick=H4sIAAAAAAAAAONgVuLUz9U3MCvMSk9exMrjk5mfl5qj4JtaXJwJAEaLA4AcAAAA&amp;amp;sa=X&amp;amp;ved=2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQmxMoAXoECGIQAw&quot; data-ved=&quot;2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQmxMoAXoECGIQAw&quot; style=&quot;color: rgb(26, 13, 171); -webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); outline: 0px;&quot;&gt;Lionel Messi&lt;/a&gt;; (474)&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;wDYxhc&quot; data-attrid=&quot;ss:/webfacts:most_championship&quot; data-md=&quot;1001&quot; lang=&quot;en-NG&quot; data-hveid=&quot;CFMQAA&quot; data-ved=&quot;2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQkCl6BAhTEAA&quot; style=&quot;clear: none; padding-left: 15px; padding-right: 15px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;&lt;div class=&quot;Z1hOCe&quot;&gt;&lt;div class=&quot;zloOqf PZPZlf&quot; data-ved=&quot;2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQyxMoAHoECFMQAQ&quot; style=&quot;margin-top: 7px;&quot;&gt;&lt;div class=&quot;rVusze&quot;&gt;&lt;span class=&quot;w8qArf&quot; style=&quot;font-weight: bolder;&quot;&gt;&lt;a class=&quot;fl&quot; href=&quot;https://www.google.com/search?rlz=1C1SQJL_enNG958NG958&amp;amp;sxsrf=AOaemvIKv0iAcO6vLdQ1BLdFVEO3pm0ldA:1638101684986&amp;amp;q=la+liga+most+championships&amp;amp;sa=X&amp;amp;ved=2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQ6BMoAHoECFMQAg&quot; data-ved=&quot;2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQ6BMoAHoECFMQAg&quot; style=&quot;-webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); outline: 0px; color: rgb(32, 33, 36) !important;&quot;&gt;Most championships&lt;/a&gt;:&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;LrzXr kno-fv wHYlTd z8gr9e&quot; style=&quot;line-height: 22px;&quot;&gt;&lt;a class=&quot;fl&quot; href=&quot;https://www.google.com/search?rlz=1C1SQJL_enNG958NG958&amp;amp;sxsrf=AOaemvIKv0iAcO6vLdQ1BLdFVEO3pm0ldA:1638101684986&amp;amp;q=Real+Madrid+(34+titles)&amp;amp;stick=H4sIAAAAAAAAAONgVuLQz9U3MMsxMlrEKh6Umpij4JuYUpSZoqBhbKJQklmSk1qsCQCPuBCfJgAAAA&amp;amp;sa=X&amp;amp;ved=2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQmxMoAXoECFMQAw&quot; data-ved=&quot;2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQmxMoAXoECFMQAw&quot; style=&quot;color: rgb(26, 13, 171); -webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); outline: 0px;&quot;&gt;Real Madrid (34 titles)&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;p style=&quot;user-select: auto;&quot;&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px; user-select: auto;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;wDYxhc&quot; data-attrid=&quot;ss:/webfacts:releg_to&quot; data-md=&quot;1001&quot; lang=&quot;en-NG&quot; data-hveid=&quot;CEsQAA&quot; data-ved=&quot;2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQkCl6BAhLEAA&quot; style=&quot;clear: none; padding-left: 15px; padding-right: 15px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 14px;&quot;&gt;&lt;div class=&quot;Z1hOCe&quot;&gt;&lt;div class=&quot;zloOqf PZPZlf&quot; data-ved=&quot;2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQyxMoAHoECEsQAQ&quot; style=&quot;margin-top: 7px;&quot;&gt;&lt;div class=&quot;rVusze&quot;&gt;&lt;span class=&quot;w8qArf&quot; style=&quot;font-weight: bolder;&quot;&gt;&lt;a class=&quot;fl&quot; href=&quot;https://www.google.com/search?rlz=1C1SQJL_enNG958NG958&amp;amp;sxsrf=AOaemvIKv0iAcO6vLdQ1BLdFVEO3pm0ldA:1638101684986&amp;amp;q=la+liga+relegation+to&amp;amp;sa=X&amp;amp;ved=2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQ6BMoAHoECEsQAg&quot; data-ved=&quot;2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQ6BMoAHoECEsQAg&quot; style=&quot;-webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); outline: 0px; color: rgb(32, 33, 36) !important;&quot;&gt;Relegation to&lt;/a&gt;:&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;LrzXr kno-fv wHYlTd z8gr9e&quot; style=&quot;line-height: 22px;&quot;&gt;&lt;a class=&quot;fl&quot; href=&quot;https://www.google.com/search?rlz=1C1SQJL_enNG958NG958&amp;amp;sxsrf=AOaemvIKv0iAcO6vLdQ1BLdFVEO3pm0ldA:1638101684986&amp;amp;q=Segunda+Divisi%C3%B3n&amp;amp;stick=H4sIAAAAAAAAAONgVuLUz9U3SDE1LTJdxCoYnJpempeSqOCSWZZZnHl4cx4Aep4KTCEAAAA&amp;amp;sa=X&amp;amp;ved=2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQmxMoAXoECEsQAw&quot; data-ved=&quot;2ahUKEwivgaiohLv0AhVJVsAKHVSFBcgQmxMoAXoECEsQAw&quot; style=&quot;color: rgb(26, 13, 171); -webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); outline: 0px;&quot;&gt;Segunda Divisi&oacute;n&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;p style=&quot;user-select: auto;&quot;&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px; user-select: auto;&quot;&gt;The Premier League, often referred to as the English Premier League or the EPL, is the top level of the English football league system. Contested by 20 clubs, it operates on a system of promotion and relegation with the English Football League. Seasons run from August to May with each team playing 38 matches.&lt;/span&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px; user-select: auto;&quot;&gt;&lt;span style=&quot;user-select: auto;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;a class=&quot;ruhjFe NJLBac fl&quot; href=&quot;https://en.wikipedia.org/wiki/Premier_League&quot; data-ved=&quot;2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8QmhN6BAhOEAI&quot; ping=&quot;/url?sa=t&amp;amp;source=web&amp;amp;rct=j&amp;amp;url=https://en.wikipedia.org/wiki/Premier_League&amp;amp;ved=2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8QmhN6BAhOEAI&quot; style=&quot;color: rgb(26, 13, 171); -webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); user-select: auto; white-space: nowrap; outline: 0px;&quot;&gt;Wikipedia&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;wDYxhc&quot; data-attrid=&quot;ss:/webfacts:top_goalscor&quot; data-md=&quot;1001&quot; lang=&quot;en-NG&quot; data-hveid=&quot;CGAQAA&quot; data-ved=&quot;2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8QkCl6BAhgEAA&quot; style=&quot;clear: none; padding-left: 15px; padding-right: 15px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 14px; user-select: auto;&quot;&gt;&lt;div class=&quot;Z1hOCe&quot; style=&quot;user-select: auto;&quot;&gt;&lt;div class=&quot;zloOqf PZPZlf&quot; data-ved=&quot;2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8QyxMoAHoECGAQAQ&quot; style=&quot;margin-top: 7px; user-select: auto;&quot;&gt;&lt;div class=&quot;rVusze&quot; style=&quot;user-select: auto;&quot;&gt;&lt;span class=&quot;w8qArf&quot; style=&quot;user-select: auto; font-weight: bolder;&quot;&gt;&lt;a class=&quot;fl&quot; href=&quot;https://www.google.com/search?rlz=1C1SQJL_enNG958NG958&amp;amp;sxsrf=AOaemvInKV6lqjC1Bdm8YHp4QSUXB51Jdw:1638101648625&amp;amp;q=premier+league+top+goalscorer&amp;amp;sa=X&amp;amp;ved=2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8Q6BMoAHoECGAQAg&quot; data-ved=&quot;2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8Q6BMoAHoECGAQAg&quot; style=&quot;-webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); user-select: auto; outline: 0px; color: rgb(32, 33, 36) !important;&quot;&gt;Top goalscorer&lt;/a&gt;:&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;LrzXr kno-fv wHYlTd z8gr9e&quot; style=&quot;user-select: auto; line-height: 22px; color: rgb(60, 64, 67);&quot;&gt;&lt;a class=&quot;fl&quot; href=&quot;https://www.google.com/search?rlz=1C1SQJL_enNG958NG958&amp;amp;sxsrf=AOaemvInKV6lqjC1Bdm8YHp4QSUXB51Jdw:1638101648625&amp;amp;q=Alan+Shearer&amp;amp;stick=H4sIAAAAAAAAAONgVuLQz9U3SDcoNlrEyuOYk5inEJyRmliUWgQAPP4zKRsAAAA&amp;amp;sa=X&amp;amp;ved=2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8QmxMoAXoECGAQAw&quot; data-ved=&quot;2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8QmxMoAXoECGAQAw&quot; style=&quot;color: rgb(26, 13, 171); -webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); user-select: auto; outline: 0px;&quot;&gt;Alan Shearer&lt;/a&gt;&amp;nbsp;(260)&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;wDYxhc&quot; data-attrid=&quot;ss:/webfacts:most_appear&quot; data-md=&quot;1001&quot; lang=&quot;en-NG&quot; data-hveid=&quot;CFkQAA&quot; data-ved=&quot;2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8QkCl6BAhZEAA&quot; style=&quot;clear: none; padding-left: 15px; padding-right: 15px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 14px; user-select: auto;&quot;&gt;&lt;div class=&quot;Z1hOCe&quot; style=&quot;user-select: auto;&quot;&gt;&lt;div class=&quot;zloOqf PZPZlf&quot; data-ved=&quot;2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8QyxMoAHoECFkQAQ&quot; style=&quot;margin-top: 7px; user-select: auto;&quot;&gt;&lt;div class=&quot;rVusze&quot; style=&quot;user-select: auto;&quot;&gt;&lt;span class=&quot;w8qArf&quot; style=&quot;user-select: auto; font-weight: bolder;&quot;&gt;&lt;a class=&quot;fl&quot; href=&quot;https://www.google.com/search?rlz=1C1SQJL_enNG958NG958&amp;amp;sxsrf=AOaemvInKV6lqjC1Bdm8YHp4QSUXB51Jdw:1638101648625&amp;amp;q=premier+league+most+appearances&amp;amp;sa=X&amp;amp;ved=2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8Q6BMoAHoECFkQAg&quot; data-ved=&quot;2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8Q6BMoAHoECFkQAg&quot; style=&quot;-webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); user-select: auto; outline: 0px; color: rgb(32, 33, 36) !important;&quot;&gt;Most appearances&lt;/a&gt;:&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;LrzXr kno-fv wHYlTd z8gr9e&quot; style=&quot;user-select: auto; line-height: 22px; color: rgb(60, 64, 67);&quot;&gt;&lt;a class=&quot;fl&quot; href=&quot;https://www.google.com/search?rlz=1C1SQJL_enNG958NG958&amp;amp;sxsrf=AOaemvInKV6lqjC1Bdm8YHp4QSUXB51Jdw:1638101648625&amp;amp;q=Gareth+Barry&amp;amp;stick=H4sIAAAAAAAAAONgVuLUz9U3MCnOrTBcxMrjnliUWpKh4JRYVFQJAAw5K5YcAAAA&amp;amp;sa=X&amp;amp;ved=2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8QmxMoAXoECFkQAw&quot; data-ved=&quot;2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8QmxMoAXoECFkQAw&quot; style=&quot;color: rgb(26, 13, 171); -webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); user-select: auto; outline: 0px;&quot;&gt;Gareth Barry&lt;/a&gt;&amp;nbsp;(653)&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;wDYxhc&quot; data-attrid=&quot;ss:/webfacts:releg_to&quot; data-md=&quot;1001&quot; lang=&quot;en-NG&quot; data-hveid=&quot;CFgQAA&quot; data-ved=&quot;2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8QkCl6BAhYEAA&quot; style=&quot;clear: none; padding-left: 15px; padding-right: 15px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 14px; user-select: auto;&quot;&gt;&lt;div class=&quot;Z1hOCe&quot; style=&quot;user-select: auto;&quot;&gt;&lt;div class=&quot;zloOqf PZPZlf&quot; data-ved=&quot;2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8QyxMoAHoECFgQAQ&quot; style=&quot;margin-top: 7px; user-select: auto;&quot;&gt;&lt;div class=&quot;rVusze&quot; style=&quot;user-select: auto;&quot;&gt;&lt;span class=&quot;w8qArf&quot; style=&quot;user-select: auto; font-weight: bolder;&quot;&gt;&lt;a class=&quot;fl&quot; href=&quot;https://www.google.com/search?rlz=1C1SQJL_enNG958NG958&amp;amp;sxsrf=AOaemvInKV6lqjC1Bdm8YHp4QSUXB51Jdw:1638101648625&amp;amp;q=premier+league+relegation+to&amp;amp;sa=X&amp;amp;ved=2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8Q6BMoAHoECFgQAg&quot; data-ved=&quot;2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8Q6BMoAHoECFgQAg&quot; style=&quot;-webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); user-select: auto; outline: 0px; color: rgb(32, 33, 36) !important;&quot;&gt;Relegation to&lt;/a&gt;:&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;LrzXr kno-fv wHYlTd z8gr9e&quot; style=&quot;user-select: auto; line-height: 22px; color: rgb(60, 64, 67);&quot;&gt;&lt;a class=&quot;fl&quot; href=&quot;https://www.google.com/search?rlz=1C1SQJL_enNG958NG958&amp;amp;sxsrf=AOaemvInKV6lqjC1Bdm8YHp4QSUXB51Jdw:1638101648625&amp;amp;q=EFL+Championship&amp;amp;stick=H4sIAAAAAAAAAONgVuLUz9U3MDY1LchZxCrg6uaj4JyRmFuQmZ9XnJFZAAC-3TyTIAAAAA&amp;amp;sa=X&amp;amp;ved=2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8QmxMoAXoECFgQAw&quot; data-ved=&quot;2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8QmxMoAXoECFgQAw&quot; style=&quot;color: rgb(26, 13, 171); -webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); user-select: auto; outline: 0px;&quot;&gt;EFL Championship&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;wDYxhc&quot; data-attrid=&quot;hw:/collection/recurring_events:current champion&quot; data-md=&quot;1001&quot; lang=&quot;en-NG&quot; data-hveid=&quot;CFcQAA&quot; data-ved=&quot;2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8QkCl6BAhXEAA&quot; style=&quot;clear: none; padding-left: 15px; padding-right: 15px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 14px; user-select: auto;&quot;&gt;&lt;div class=&quot;Z1hOCe&quot; style=&quot;user-select: auto;&quot;&gt;&lt;div class=&quot;zloOqf PZPZlf&quot; data-ved=&quot;2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8QyxMoAHoECFcQAQ&quot; style=&quot;margin-top: 7px; user-select: auto;&quot;&gt;&lt;div class=&quot;rVusze&quot; style=&quot;user-select: auto;&quot;&gt;&lt;span class=&quot;w8qArf&quot; style=&quot;user-select: auto; font-weight: bolder;&quot;&gt;&lt;a class=&quot;fl&quot; href=&quot;https://www.google.com/search?rlz=1C1SQJL_enNG958NG958&amp;amp;sxsrf=AOaemvInKV6lqjC1Bdm8YHp4QSUXB51Jdw:1638101648625&amp;amp;q=premier+league+current+champion&amp;amp;stick=H4sIAAAAAAAAAOPgE-LQz9U3MIovSdYyyCi30k_Oz8lJTS7JzM_TL0pNLi0qysxLj08tS80rKbYCcYEMheSMxNwCoIpFrPIFRam5malFCjmpiemlqQroKgAQmccWYAAAAA&amp;amp;sa=X&amp;amp;ved=2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8Q6BMoAHoECFcQAg&quot; data-ved=&quot;2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8Q6BMoAHoECFcQAg&quot; style=&quot;-webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); user-select: auto; outline: 0px; color: rgb(32, 33, 36) !important;&quot;&gt;Current champion&lt;/a&gt;:&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;LrzXr kno-fv wHYlTd z8gr9e&quot; style=&quot;user-select: auto; line-height: 22px; color: rgb(60, 64, 67);&quot;&gt;&lt;a class=&quot;fl&quot; href=&quot;https://www.google.com/search?rlz=1C1SQJL_enNG958NG958&amp;amp;sxsrf=AOaemvInKV6lqjC1Bdm8YHp4QSUXB51Jdw:1638101648625&amp;amp;q=Man+City&amp;amp;stick=H4sIAAAAAAAAAOPgE-LQz9U3MIovSVbiBLEMzYxNKrQMMsqt9JPzc3JSk0sy8_P0i1KTS4uKMvPS41PLUvNKiq1AXCBDITkjMbcAqGIRK4dvYp6Cc2ZJ5Q5WRgD8fu-6VwAAAA&amp;amp;sa=X&amp;amp;ved=2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8QmxMoAXoECFcQAw&quot; data-ved=&quot;2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8QmxMoAXoECFcQAw&quot; style=&quot;color: rgb(26, 13, 171); -webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); user-select: auto; outline: 0px;&quot;&gt;Manchester City F.C.&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;wDYxhc&quot; data-attrid=&quot;kc:/organization/organization:founded&quot; data-md=&quot;1001&quot; lang=&quot;en-NG&quot; data-hveid=&quot;CFAQAA&quot; data-ved=&quot;2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8QkCl6BAhQEAA&quot; style=&quot;clear: none; padding-left: 15px; padding-right: 15px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 14px; user-select: auto;&quot;&gt;&lt;div class=&quot;Z1hOCe&quot; style=&quot;user-select: auto;&quot;&gt;&lt;div class=&quot;zloOqf PZPZlf&quot; data-ved=&quot;2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8QyxMoAHoECFAQAQ&quot; style=&quot;margin-top: 7px; user-select: auto;&quot;&gt;&lt;div class=&quot;rVusze&quot; style=&quot;user-select: auto;&quot;&gt;&lt;span class=&quot;w8qArf&quot; style=&quot;user-select: auto; font-weight: bolder;&quot;&gt;&lt;a class=&quot;fl&quot; href=&quot;https://www.google.com/search?rlz=1C1SQJL_enNG958NG958&amp;amp;sxsrf=AOaemvInKV6lqjC1Bdm8YHp4QSUXB51Jdw:1638101648625&amp;amp;q=premier+league+founded&amp;amp;stick=H4sIAAAAAAAAAOPgE-LQz9U3MIovSdZSzU620s8vSk_My6xKLMnMz0PhWKXll-alpKYsYhUrKErNzUwtUshJTUwvTVWASgAAjYEyBEwAAAA&amp;amp;sa=X&amp;amp;ved=2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8Q6BMoAHoECFAQAg&quot; data-ved=&quot;2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8Q6BMoAHoECFAQAg&quot; style=&quot;-webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); user-select: auto; outline: 0px; color: rgb(32, 33, 36) !important;&quot;&gt;Founded&lt;/a&gt;:&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;LrzXr kno-fv wHYlTd z8gr9e&quot; style=&quot;user-select: auto; line-height: 22px; color: rgb(60, 64, 67);&quot;&gt;27 May 1992&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;p style=&quot;user-select: auto;&quot;&gt;&lt;span style=&quot;color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px; user-select: auto;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;wDYxhc&quot; data-attrid=&quot;kc:/organization/organization:headquarters&quot; data-md=&quot;1001&quot; lang=&quot;en-NG&quot; data-hveid=&quot;CE8QAA&quot; data-ved=&quot;2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8QkCl6BAhPEAA&quot; style=&quot;clear: none; padding-left: 15px; padding-right: 15px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 14px; user-select: auto;&quot;&gt;&lt;div class=&quot;Z1hOCe&quot; style=&quot;user-select: auto;&quot;&gt;&lt;div class=&quot;zloOqf PZPZlf&quot; data-ved=&quot;2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8QyxMoAHoECE8QAQ&quot; style=&quot;margin-top: 7px; user-select: auto;&quot;&gt;&lt;div class=&quot;rVusze&quot; style=&quot;user-select: auto;&quot;&gt;&lt;span class=&quot;w8qArf&quot; style=&quot;user-select: auto; font-weight: bolder;&quot;&gt;&lt;a class=&quot;fl&quot; href=&quot;https://www.google.com/search?rlz=1C1SQJL_enNG958NG958&amp;amp;sxsrf=AOaemvInKV6lqjC1Bdm8YHp4QSUXB51Jdw:1638101648625&amp;amp;q=premier+league+headquarters&amp;amp;stick=H4sIAAAAAAAAAOPgE-LQz9U3MIovSdbSyk620s8vSk_My6xKLMnMz0PhWGWkJqYUliYWlaQWFS9ilS4oSs3NTC1SyElNTC9NVUCWBQDt8OARVgAAAA&amp;amp;sa=X&amp;amp;ved=2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8Q6BMoAHoECE8QAg&quot; data-ved=&quot;2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8Q6BMoAHoECE8QAg&quot; style=&quot;-webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); user-select: auto; outline: 0px; color: rgb(32, 33, 36) !important;&quot;&gt;Headquarters&lt;/a&gt;:&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;LrzXr kno-fv wHYlTd z8gr9e&quot; style=&quot;user-select: auto; line-height: 22px; color: rgb(60, 64, 67);&quot;&gt;&lt;a class=&quot;fl&quot; href=&quot;https://www.google.com/search?rlz=1C1SQJL_enNG958NG958&amp;amp;sxsrf=AOaemvInKV6lqjC1Bdm8YHp4QSUXB51Jdw:1638101648625&amp;amp;q=London&amp;amp;stick=H4sIAAAAAAAAAOPgE-LQz9U3MIovSVYCs0yyCnK0tLKTrfTzi9IT8zKrEksy8_NQOFYZqYkphaWJRSWpRcWLWNl88vNS8vN2sDICAAiMRxNOAAAA&amp;amp;sa=X&amp;amp;ved=2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8QmxMoAXoECE8QAw&quot; data-ved=&quot;2ahUKEwjY1fyWhLv0AhUITcAKHaY_DQ8QmxMoAXoECE8QAw&quot; style=&quot;color: rgb(26, 13, 171); -webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); user-select: auto; outline: 0px;&quot;&gt;London, United Kingdom&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;', '[\"1638102180_fulltext (1).pdf\"]', 2, '2021-11-28 13:23:31');

-- --------------------------------------------------------

--
-- Table structure for table `doc_shared`
--

CREATE TABLE `doc_shared` (
  `id` int(11) NOT NULL,
  `nId` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `cId` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doc_shared`
--

INSERT INTO `doc_shared` (`id`, `nId`, `level`, `cId`, `date`) VALUES
(1, 2, 1, 2, '2021-11-28 11:57:43'),
(2, 3, 1, 2, '2021-11-28 12:24:01');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(30) NOT NULL,
  `regNo` varchar(17) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `level` int(1) NOT NULL,
  `avatar` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `regNo`, `firstname`, `lastname`, `middlename`, `phone`, `email`, `password`, `level`, `avatar`, `date_created`) VALUES
(1, 'ST/CS/ND/20/001', 'Kenneth', 'Peter', 'Oduh', '08068393114', 'kenneth@gmail.com', 'b59c67bf196a4758191e42f76670ceba', 1, '1638094200_images.jpeg', '2021-11-28 10:43:12'),
(2, 'ST/CS/ND/20/002', 'Manasseh', 'Ife', '', '09034342323', 'manasseh@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', 1, '', '2021-11-28 10:45:55'),
(3, 'ST/CS/ND/20/003', 'Aishatu', 'Ibrahim', '', '08068393119', 'aishatu@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 1, '1638094140_159fd33380ec213fc514be7ad7af555d.jpg', '2021-11-28 10:47:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1=Admin,2= users',
  `avatar` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `middlename`, `contact`, `email`, `password`, `type`, `avatar`, `date_created`) VALUES
(1, 'Admin', 'User', 'C', '07034323223', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3', 1, '1605080820_avatar.jpg', '2021-11-28 09:24:40'),
(2, 'Bali', 'Matheu', '', '07018277223', 'bali@gmail.com', 'b59c67bf196a4758191e42f76670ceba', 2, '', '2021-11-28 13:19:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doc_shared`
--
ALTER TABLE `doc_shared`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `doc_shared`
--
ALTER TABLE `doc_shared`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
