CREATE DATABASE  IF NOT EXISTS `books` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `books`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: books
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors` (
  `AuthorId` int(11) NOT NULL AUTO_INCREMENT,
  `AuthorName` varchar(100) NOT NULL,
  `AuthorDescr` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`AuthorId`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'ALAN LIGHTMAN','Alan Paige Lightman is an American physicist, writer, and social entrepreneur. In his scientific work, he has made fundamental contributions to the astrophysics of black holes and to the behavior of matter and radiation under conditions of extreme temperatures and densities. He has served on the faculties of Harvard and Massachusetts Institute of Technology (MIT) and is currently professor of the practice of the humanities at MIT. He is widely known as the author of the international bestseller Einstein\'s Dreams. Einstein\'s Dreams has been adapted into dozens of independent theatrical productions and is one of the most widely used \'common books\' on college campuses. Lightman\'s novel The Diagnosis was a finalist for the National Book Award. Lightman was the first professor at MIT to receive a joint appointment in the sciences and the humanities. He is the recipient of five honorary degrees. He is also the founder of the Harpswell Foundation, a nonprofit organization whose mission is to advance a new generation of women leaders in Southeast Asia.'),(2,'BEN GOLDACRE','Ben Michael Goldacre MBE is a British physician, academic and science writer. As of March 2015, he is a Senior Clinical Research Fellow at the Centre for Evidence-Based Medicine, part of the University of Oxford\'s Nuffield Department of Primary Care Health Sciences.[6] He is a founder of the AllTrials campaign and OpenTrials to require open science practices in clinical trials. Goldacre is known in particular for his Bad Science column in The Guardian, which he wrote between 2003 and 2011, and is the author of three books: Bad Science (2008), a critique of irrationality and certain forms of alternative medicine; Bad Pharma (2012), an examination of the pharmaceutical industry, its publishing and marketing practices, and its relationship with the medical profession, and I Think You\'ll Find It\'s a Bit More Complicated Than That,[10] a collection of his journalism. Goldacre frequently delivers free talks about bad science—he describes himself as a \'nerd evangelist\'.'),(3,'Steven Arthur Pinker','Steven Arthur Pinker is a Canadian-American cognitive psychologist, linguist, and popular science author. He is Johnstone Family Professor in the Department of Psychology at Harvard University, and is known for his advocacy of evolutionary psychology and the computational theory of mind.'),(4,'Michio Kaku','Michio Kaku is an American theoretical physicist, futurist, and popularizer of science. He is professor of theoretical physics at the City College of New York and CUNY Graduate Center.'),(5,'Alex Hutchinson','Alex Hutchinson is a former physicist and national-class runner, and a National Magazine Award-winning science journalist. He is the author of Endure: Mind, Body, and the Curiously Elastic Limits of Human Performance.'),(6,'Daniel Stone','Daniel Stone is a staff writer for National Geographic and a former White House correspondent for Newsweek and The Daily Beast. A native of Los Angeles, he holds degrees from UC Davis and Johns Hopkins University.'),(7,'Lauren Slater','Lauren Slater is an American psychologist and writer. She is the author of nine books, including Welcome To My Country, Prozac Diary, and Lying: A Metaphorical Memoir.'),(8,'Melissa A Schilling','Melissa A. Schilling is a professor at New York University\'s Stern School of Business and the author of the number one innovation strategy textbook in the world, Strategic Management of Technological Innovation. As one of the world\'s leading experts on innovation, she has appeared on numerous media outlets including Bloomberg BusinessWeek, Huffington Post, CNBC, The Brian Lehrer Show, Scientific American, USA Today, South China Morning Post, Energy Biz Insider, Clean Technica, and New Energy'),(9,'Gregg Easterbrook','Gregg Edmund Easterbrook is an American writer and a contributing editor of both The New Republic and The Atlantic Monthly.'),(10,'Asha Levine','Asha Levine is a journalist and a former editor of Moscow-based satirical newspaper The eXile. He is the author of the 2018 book Surveillance Valley: The Secret Military History of the Internet.'),(11,'Dhonielle Clayton hails ','Dhonielle Clayton hails from the Washington, DC, suburbs on the Maryland side. She earned an MA in children\'s literature from Hollins University and an MFA in writing for children at the New School. She taught secondary school for several years. She is a former librarian and cofounder of Cake Literary, a creative kitchen whipping up decadent--and decidedly diverse--literary confections for middle grade, young adult, and women\'s fiction readers.'),(12,'Tamora Pierce','Tamora Pierce is an American writer of fantasy fiction for teenagers, known best for stories featuring young heroines.'),(13,'Morgan Rhodes','Michelle Rowen is a full-time writer and self-confessed bibliophile living in Ontario, Canada. Her first young adult fantasy novel will be published in Fall 2009 from Walker Books for Young Readers. Under the pseudonym Michelle Maddox she has also written futuristic romantic suspense for Dorchester.'),(14,'Rebecca Ross','Rebecca Ross grew up in Georgia, USA, where she continues to reside with her husband. She received her bachelor\'s degree in English from UGA. In the past she has worked at a Colorado dude ranch, as a school librarian and as a live-time captionist for a college. THE QUEEN\'S RISING is her debut novel.'),(15,'S. Jae-Jones','My name is S. Jae-Jones, called JJ. I’m an artist, adrenaline junkie, and author of the New York Times bestselling Wintersong. The sequel, Shadowsong, is available now! I am a voracious and indiscriminate reader, a cuddler of baby harp seals, avid traveller, and not-so-secret goth.'),(16,'Tricia Levenseller','Hi there! I write fantasy books for teens (and adults who are still in denial). The Daughter of the Pirate King duology is available now wherever books are sold. February 2019, my standalone YA fantasy, WARRIOR OF THE WILD, will release. See the Books tab for more details!'),(17,'C.J. Redwine','C.J. Redwine is the New York Times bestselling author of THE SHADOW QUEEN, THE WISH GRANTER, and the DEFIANCE series. She adores Harry Potter, Sherlock, most of the shows on the CW, and Batman. '),(18,'Gena Showalter','Gena Showalter is an American author in the genres of contemporary romance, paranormal romance, and young adult. Showalter sold her first book at the age of 27, and has published over 25 books. '),(19,'Jennifer Anne Nielsen','Jennifer Anne Nielsen is an American author known primarily for young adult fiction. Her works include the Ascendance Trilogy, Behind Enemy Lines, The Mark of the Thief, A Night Divided, and the Underworld Chronicles.'),(20,'Tom Miller','Tom Miller is an American author primarily known for travel literature. His ten books include The Panama Hat Trail, On the Border, Trading with the Enemy, and Jack Ruby\'s Kitchen Sink.'),(21,'Tayari Jones','Tayari Jones is an American author and winner of the Hurston-Wright Legacy Award for Debut Fiction. She was educated at Spelman College, the University of Iowa and Arizona State University.'),(22,'Susan Meissner','In 1995, Susan Meissner was working as a part-time reporter for a county newspaper. In 1998, she was named editor of the Mountain Lake/Butterfield Observer Advocate, the town\'s weekly paper. The paper was named the Best Weekly Newspaper in Minnesota by the Minnesota Newspaper Association in 2002. She retired later that year to write her first book, Why the Sky is Blue, which was published in 2004. Her other books include The Girl in the Glass, The Shape of Mercy, In All Deep Places, and A Fall of Marigolds.'),(23,'Madeleine Sophie Wickham','Madeleine Sophie Wickham, also known under the pen name Sophie Kinsella, is an English author of chick lit. '),(24,'Laura Lippman','Lippman is a former reporter for the now defunct San Antonio Light and the Baltimore Sun. She is best known for writing a series of novels set in Baltimore and featuring Tess Monaghan, a reporter turned private investigator. Lippman\'s works have won the Agatha, Anthony, Edgar, Nero, Gumshoe and Shamus awards. Her 2007 release, What the Dead Know, was the first of her books to make the New York Times Best Seller list, and was shortlisted for the Crime Writer\'s Association Dagger Award. In addition to the Tess Monaghan novels, Lippman wrote 2003\'s Every Secret Thing, which was made into a 2014 movie starring Diane Lane.'),(25,'Chanel Cleeton','Chanel Cleeton, originally from Florida, grew up on stories of her family\'s exodus from Cuba following the events of the Cuban Revolution. Her passion for politics and history continued during her years spent studying in England where she earned a bachelor\'s degree in international relations from Richmond, the American International University in London, and a master\'s degree in global politics from the London School of Economics and Political Science. Chanel also received her Juris Doctor from the University of South Carolina School of Law. She loves to travel and has lived in the Caribbean, Europe, and Asia.'),(26,'Amy Bloom','Amy Bloom is an American writer and psychotherapist. She has been nominated for the National Book Award and the National Book Critics Circle Award.'),(27,'Rachel Hartman','Rachel Hartman is an American author of Young adult fiction. She is known for her books Seraphina, Shadow Scale, and Tess of the Road.'),(28,'Rhiannon Navin','Author of ONLY CHILD'),(29,'Tanaz Bhathena','Tanaz Bhathena was born in India and raised in Saudi Arabia and Canada. She is the author of A Girl Like That and The Beauty of the Moment (forthcoming in 2019). Her short stories have appeared in various journals including Blackbird, Witness and Room. A wanderer at heart, Tanaz can often be found travelling to different countries, learning bits and pieces of a foreign language, and taking way too many photographs. She loves slapstick comedies and any kind of music that makes her dance. She lives in the Toronto area with her family.'),(30,'Lisa Kleypas','Lisa Kleypas is a best-selling American author of historical and contemporary romance novels. In 1985, she was named Miss Massachusetts 1985 and competed in the Miss America 1986 pageant in Atlantic City.'),(31,'Gwendolyn Clare','I’m Gwendolyn Clare, and I write fantasy and science fiction. My debut young-adult steampunk novel — INK, IRON, AND GLASS — is forthcoming from Macmillan/Imprint (Feb 20th, 2018). My short fiction has appeared in Clarkesworld, Asimov’s, Analog, Fantasy & Science Fiction, and Beneath Ceaseless Skies, and my poetry has been nominated for the Rhysling Award. I’m represented by Jennifer Azantian of Azantian Literary Agency.'),(32,'Laura Smith','Laura Smith\'s writing has appeared in The New York Times, Slate, and Mother Jones. She worked on The Art of Vanishing while on a fellowship at the Banff Arts Centre. She lives in Oakland, California.'),(33,'Amy Andelson','Amy Andelson. Writer | Producer. Contribute to IMDb. Add a bio, trivia, and more. '),(34,'Emily Meyer','Emily Meyer is an American Author'),(35,'Abi Andrews','Abi Andrews was born in 1991 in the West Midlands and now lives and works in South East London. She studied English and Creative Writing at Goldsmiths University, and her work has been published in The Dark Mountain Project, Tender, Five Dials and The Bohemyth amongst others. Her debut novel The Word for Woman is Wilderness will be published by Serpent’s Tail in Spring 2018.'),(36,'Russell Ginns','Russell Ginns is a game designer, writer, producer, and composer, primarily known for children\'s and educational books and games. He is the author of more than 100 books, including puzzles, educational titles, and young adult fiction.'),(37,'Sara O\'Leary','Sara O\'Leary is a Canadian writer. She has published fiction, children\'s books, plays, and criticism. She is married to the poet and academic Daniel O’Leary and they have two sons.'),(38,'Leah Konen','Noah is a hopeless romantic. He’s traveling home for one last chance with his first love, and he needs a miracle to win her back. Ammy doesn’t believe in true love—just look at her parents. If there’s one thing she’s learned about love in the last year, it’s that it ends.'),(39,'Laurie Gwen','Laurie Gwen Shapiro is an American writer and filmmaker. She resides in New York City, where she was born and raised, and is a graduate of that city\'s renowned Stuyvesant High School.'),(40,'Shoba Narayan','Shoba Narayan is an award-winning author of Monsoon Diary: A Memoir with Recipes. She is the author of four books.'),(41,'Sara Zaske','Writer, parent, occasional ranter'),(42,'Daniel Kraus','Daniel Kraus is an American author.'),(43,'Guillermo del Toro','Guillermo del Toro Gómez is a Mexican film director, screenwriter, producer, and novelist. In his filmmaking career, del Toro has alternated between Spanish-language dark fantasy pieces, such as the gothic horror films The Devil\'s Backbone (2001) and Pan\'s Labyrinth (2006), and more mainstream American action films, such as the vampire superhero action film Blade II (2002), the supernatural superhero film Hellboy (2004), its sequel Hellboy II: The Golden Army (2008), and the science fiction monster film Pacific Rim (2013).'),(44,'Renata Adler','Renata Adler is an American author, journalist, and film critic.'),(45,'Carter Wilson','USA Today best-selling and award-winning author Carter Wilson was born in New Mexico and grew up in Los Angeles before attending Cornell University. As a consultant and frequent lecturer, has journeyed the globe both for work and pleasure, and as a volunteer for Habitat for Humanity. Revelation is Wilson\'s fourth novel. He lives in Colorado with his two children.'),(46,'Alisa Kwitney','Alisa Kwitney is a writer of comedic romance novels and graphic novels.'),(47,'Annie Walls','Annie Walls is an author of dark and urban fantasy. She resides on the Tennessee countryside with her husband, son, and bulldog. Far, far away from society. She’s a romantic and misanthropist. When she is not writing, she is reading.'),(48,'Katherine Clements','Katherine Clements is a critically acclaimed novelist, self-confessed costume drama addict and current Royal Literary Fund Fellow at the University of Manchester. She is editor of Historia, the online magazine of the Historical Writers\' Association, and is a member of the HWA committee.@KL_Clements'),(49,'Jaye Wells','Jaye Wells is an urban fantasy author. She writes the Sabina Kane series, which is published worldwide by science fiction and fantasy publishers Orbit Books. Before she became a full-time writer, she was a magazine editor and freelance journalist.'),(50,'James Markert','James Markert lives in Louisville with his wife and two children. He has a history degree from the University of Louisville, and is a USPTA tennis professional. His comedy screenplay, 2nd Serve, was produced by Sundance Award Winner Gil Holland and recently premiered.'),(51,'Colin Winnette ','Colin Winnette is an American novelist, short story writer, and poet. He is the author of five works of fiction.'),(52,'Martin Stewart','Matin Stewart has previously worked as a recycling technician, university lecturer, barman, golf caddy, and English teacher. Having written his first book on Post-Its as an eight year-old, it was his time back in the classroom that made him understand the unique joy of writing for younger readers. A native of Glasgow, where he still lives, he enjoys buying books to feed his to-be-read pile, and combining the city\'s urban splendour with walks on the beaches of Scotland\'s west coast. Martin\'s first novel, Riverkeep, was longlisted for the Guardian Children\'s Fiction Prize. Follow him on Twitter: @martinjstewart.');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookauthors`
--

DROP TABLE IF EXISTS `bookauthors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookauthors` (
  `AuthorId` int(11) NOT NULL,
  `BookId` int(11) NOT NULL,
  KEY `fk_books_Bookauthors_BookId` (`BookId`),
  KEY `fk_books_Bookauthors_AuthorId` (`AuthorId`),
  CONSTRAINT `fk_books_Bookauthors_AuthorId` FOREIGN KEY (`AuthorId`) REFERENCES `authors` (`AuthorId`),
  CONSTRAINT `fk_books_Bookauthors_BookId` FOREIGN KEY (`BookId`) REFERENCES `books` (`BookId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookauthors`
--

LOCK TABLES `bookauthors` WRITE;
/*!40000 ALTER TABLE `bookauthors` DISABLE KEYS */;
INSERT INTO `bookauthors` VALUES (1,1),(2,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,33),(35,34),(36,35),(37,36),(38,37),(39,38),(40,39),(41,40),(42,41),(43,41),(44,42),(45,43),(46,44),(47,45),(48,46),(49,47),(50,48),(51,49),(52,50);
/*!40000 ALTER TABLE `bookauthors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `BookId` int(11) NOT NULL AUTO_INCREMENT,
  `ISBN` varchar(20) DEFAULT NULL,
  `BookName` varchar(1000) DEFAULT NULL,
  `BImage_small` varchar(500) DEFAULT NULL,
  `BImage_large` varchar(500) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `GenreId` int(11) DEFAULT NULL,
  `Book_Format` varchar(100) DEFAULT NULL,
  `PublishDate` datetime DEFAULT NULL,
  `BookDescr` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`BookId`),
  KEY `fk_genre_books_GenreId` (`GenreId`),
  CONSTRAINT `fk_genre_books_GenreId` FOREIGN KEY (`GenreId`) REFERENCES `genre` (`GenreId`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'9780307908582','The Accidental Universe','./Images/9780307908582_small.jpg','./Images/9780307908582_Large.jpg',20,1,'Hard Cover','2014-01-14 00:00:00','From the acclaimed author of Einstein\'s Dreams and Mr g, a meditation on the unexpected ways in which recent scientific findings have shaped our understanding of ourselves and our place in the cosmos.'),(2,'9780007284870','Bad Science','./Images/9780007284870_small.jpg','./Images/9780007284870_Large.jpg',120,1,'Hard Cover','2008-09-01 00:00:00','Bad Science is a book by Ben Goldacre, criticising mainstream media reporting on health and science issues. It was published by Fourth Estate in September 2008.[1] It has been positively reviewed by the British Medical Journal[2] and the Daily Telegraph[3] and has reached the Top 10 bestseller list for Amazon Books. It was shortlisted for the 2009 Samuel Johnson Prize. Bad Science or BadScience is also the title of Goldacre\'s column in The Guardian and his website.'),(3,'9780525529774','Enlightenment Now','./Images/9780525529774_small.jpg','./Images/9780525529774_Large.jpg',50,1,'Hard Cover','2018-02-13 00:00:00','A psychology professor at Harvard, Pinker is as interested in how to think as what to think. Worried about the big, global, existential threats — overpopulation, resource depletion, nuclear war and climate change? Pinker urges us first to change the way we think about them. They are not apocalypses in waiting but problems to be solved. He cites a study showing that people may be more likely to acknowledge a problem when they think it’s solvable than when they are frozen by fear'),(4,'9780525491835','The Future of Humanity: Terraforming Mars, Interstellar Travel, Immortality, and Our Destiny Beyond Earth','./Images/9780525491835_small.jpg','./Images/9780525491835_Large.jpg',40,1,'Paperback','2018-02-20 00:00:00','Formerly the domain of fiction, moving human civilization to the stars is increasingly becoming a scientific possibility--and a necessity. Whether in the near future due to climate change and the depletion of finite resources, or in the distant future due to catastrophic cosmological events, we must face the reality that humans will one day need to leave planet Earth to survive as a species. '),(5,'9781538502013','Endure: Mind, Body, and the Curiously Elastic Limits of Human Performance','./Images/9781538502013_small.jpg','./Images/9781538502013_Large.jpg',300,1,'Paperback','2018-02-06 00:00:00','Blending cutting-edge science and gripping storytelling in the spirit of Malcolm Gladwell—who contributes the book’s foreword—award-winning journalist Alex Hutchinson reveals that a wave of paradigm-altering research over the past decade suggests the seemingly physical barriers you encounter as set as much by your brain as by your body. This means the mind is the new frontier of endurance—and that the horizons of performance are much more elastic than we once thought.'),(6,'9781101990605','The Food Explorer: The True Adventures of the Globe-Trotting Botanist Who Transformed What America Eats','./Images/9781101990605_small.jpg','./Images/9781101990605_Large.jpg',120,1,'Hard Cover','2018-02-20 00:00:00','In the nineteenth century, American meals were about subsistence, not enjoyment. But as a new century approached, appetites broadened, and David Fairchild, a young botanist with an insatiable lust to explore and experience the world, set out in search of foods that would enrich the American farmer and enchant the American eater.'),(7,'9780316370585','Blue Dreams: The Science and the Story of the Drugs that Changed Our Minds','./Images/9780316370585_small.jpg','./Images/9780316370585_Large.jpg',120,1,'Hard Cover','2017-03-25 00:00:00','Blue Dreams: How mood-altering drugs saved author Lauren Slater from depression. When we meet Lauren Slater at the beginning of her ambitious new book, Blue Dreams: The Science and the Story of Drugs That Changed Our Minds (Little, Brown, 399 pp., out of four), her life is a mess'),(8,'9781549114724','Quirky: The Remarkable Story of the Traits, Foibles, and Genius of Breakthrough Innovators Who Changed the World','./Images/9781549114724_small.jpg','./Images/9781549114724_Large.jpg',120,1,'Hard Cover','2018-02-13 00:00:00','Quirky: The Remarkable Story of the Traits, Foibles, and Genius of Breakthrough Innovators Who Changed the World, by researcher Melissa A Schilling, takes a different viewpoint. This book looks at the personality behind the genius. In doing so, Schilling’s book helps us understand how these all-too human geniuses achieved their greatness despite setbacks we might not have even considered.'),(9,'9781610397414','It’s Better Than It Looks: Reasons for Optimism in an Age of Fear','./Images/9781610397414_small.jpg','./Images/9781610397414_Large.jpg',120,1,'Hard Cover','2018-02-20 00:00:00','Most people who read the news would tell you that 2017 is one of the worst years in recent memory. We’re facing a series of deeply troubling, even existential problems: fascism, terrorism, environmental collapse, racial and economic inequality, and more.'),(10,'9781610398039','Surveillance Valley: The Secret Military History of the Internet','./Images/9781610398039_small.jpg','./Images/9781610398039_Large.jpg',120,1,'Hard Cover','2018-02-18 00:00:00','The internet is the most effective weapon the government has ever built.In this fascinating book, investigative reporter Yasha Levine uncovers the secret origins of the internet, tracing it back to a Pentagon counterinsurgency surveillance project.'),(11,'9781484732496','The Belles','./Images/9781484732496_small.jpg','./Images/9781484732496_Large.jpg',120,2,'Hard Cover','2018-02-06 00:00:00','Camellia Beauregard is a Belle. In the opulent world of Orleans, Belles are revered, for they control Beauty, and Beauty is a commodity coveted above all else. In Orleans, the people are born gray, they are born damned, and only with the help of a Belle and her talents can they transform and be made beautiful.But it\'s not enough for Camellia to be just a Belle. She wants to be the favorite, the Belle chosen by the Queen of Orleans to live in the royal palace, to tend to the royal family and their court, to be recognized as the most talented Belle in the land.With the future of Orleans and its people at stake, Camellia must decide: save herself and her sisters and the way of the Belles, or resuscitate the princess, risk her own life, and change the ways of her world forever. '),(12,'9780375847110','Tempests and Slaughter ','./Images/9780375847110_small.jpg','./Images/9780375847110_Large.jpg',120,2,'Hard Cover','2018-02-06 00:00:00','Arram Draper is a boy on the path to becoming one of the realm’s most powerful mages. The youngest student in his class at the Imperial University of Carthak, he has a Gift with unlimited potential for greatness–and for attracting danger. At his side are his two best friends: Varice, a clever girl with an often-overlooked talent, and Ozorne, the “leftover prince” with secret ambitions. Together, these three friends forge a bond that will one day shape kingdoms. And as Ozorne gets closer to the throne and Varice gets closer to Arram’s heart, Arram begins to realize that one day soon he will have to decide where his loyalties truly lie. '),(13,'9781595148254','Immortal Reign','./Images/9781595148254_small.jpg','./Images/9781595148254_Large.jpg',120,2,'Hard Cover','2018-02-06 00:00:00','As two lethal elemental gods set out to destroy Mytica, sworn enemies must become allies in the final fight to save the kingdoms.Jonas continues to willfully defy his destiny, but the consequences of plotting his own course are drastic. As the fight for Mytica rages on, he must decide just how much more he\'s willing to sacrifice.'),(14,'9780062822246','The Queen\'s Rising ','./Images/9780062822246_small.jpg','./Images/9780062822246_Large.jpg',120,2,'Hard Cover','2018-02-06 00:00:00','When her seventeenth summer solstice arrives, Brienna desires only two things: to master her passion and to be chosen by a patron.Growing up in the southern Kingdom of Valenia at the renowned Magnalia House should have prepared her for such a life. While some are born with an innate talent for one of the five passions—art, music, dramatics, wit, and knowledge—Brienna struggled to find hers until she belatedly chose to study knowledge. However, despite all her preparations, Brienna’s greatest fear comes true—the solstice does not go according to plan and she is left without a patron.'),(15,'9781250129130','Shadowsong','./Images/9781250129130_small.jpg','./Images/9781250129130_Large.jpg',120,2,'Hard Cover','2018-01-30 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.'),(16,'9781427294647','Daughter of the Siren Queen','./Images/9781427294647_small.jpg','./Images/9781427294647_Large.jpg',120,2,'Hard Cover','2018-02-27 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.'),(17,'9781538501184','The Traitor Prince','./Images/9781538501184_small.jpg','./Images/9781538501184_Large.jpg',120,2,'Hard Cover','2018-02-13 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.'),(18,'9781489250667','Everlife ','./Images/9781489250667_small.jpg','./Images/9781489250667_Large.jpg',120,2,'Hard Cover','2018-02-27 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.'),(19,'9781338045390','The Traitor\'s Game','./Images/9781338045390_small.jpg','./Images/9781338045390_Large.jpg',120,2,'Hard Cover','2018-02-27 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.'),(20,'9781508253457','The Philosopher\'s Flight','./Images/9781508253457_small.jpg','./Images/9781508253457_Large.jpg',120,2,'Hard Cover','2018-02-13 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.'),(21,'9781786075161','An American Marriage','./Images/9781786075161_small.jpg','./Images/9781786075161_Large.jpg',120,3,'Hard Cover','2018-01-29 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.'),(22,'9780399585968','As Bright as Heaven','./Images/9780399585968_small.jpg','./Images/9780399585968_Large.jpg',120,3,'Hard Cover','2018-02-06 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.'),(23,'9780399592881','Surprise Me','./Images/9780399592881_small.jpg','./Images/9780399592881_Large.jpg',120,3,'Hard Cover','2018-02-08 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.'),(24,'9780062389923','Sunburn','./Images/9780062389923_small.jpg','./Images/9780062389923_Large.jpg',120,3,'Hard Cover','2018-02-20 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.'),(25,'9780399586699','Next Year in Havana','./Images/9780399586699_small.jpg','./Images/9780399586699_Large.jpg',120,3,'Hard Cover','2018-02-06 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.'),(26,'9781783784929','White Houses','./Images/9781783784929_small.jpg','./Images/9781783784929_Large.jpg',120,3,'Hard Cover','2018-02-13 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.'),(27,'1101931280','Tess of the Road','./Images/1101931280_small.jpg','./Images/1101931280_Large.jpg',120,3,'Hard Cover','2018-02-27 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.'),(28,'9781524733353','Only Child','./Images/9781524733353_small.jpg','./Images/9781524733353_Large.jpg',120,3,'Hard Cover','2018-02-06 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.'),(29,'9780374305444','A Girl Like That','./Images/9780374305444_small.jpg','./Images/9780374305444_Large.jpg',120,3,'Hard Cover','2018-02-27 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.'),(30,'9780062371911','Hello Stranger','./Images/9780062371911_small.jpg','./Images/9780062371911_Large.jpg',120,3,'Hard Cover','2018-02-27 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.'),(31,'9781250112767','Ink, Iron, and Glass','./Images/9781250112767_small.jpg','./Images/9781250112767_Large.jpg',120,4,'Hard Cover','2018-02-20 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.'),(32,'9780399563607','The Art of Vanishing: A Memoir of Wanderlust','./Images/9780399563607_small.jpg','./Images/9780399563607_Large.jpg',120,4,'Hard Cover','2018-02-06 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.'),(33,'9781524764876','Layover','./Images/9781524764876_small.jpg','./Images/9781524764876_Large.jpg',120,4,'Hard Cover','2018-02-06 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.'),(34,'9781782833802','The Word for Woman is Wilderness','./Images/9781782833802_small.jpg','./Images/9781782833802_Large.jpg',120,4,'Hard Cover','2018-02-01 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.'),(35,'9781524720025','Samantha Spinner and the Super Secret Plans','./Images/9781524720025_small.jpg','./Images/9781524720025_Large.jpg',120,4,'Hard Cover','2018-02-15 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.'),(36,'9781250304797','The Boy and the Blue Moon','./Images/9781250304797_small.jpg','./Images/9781250304797_Large.jpg',120,4,'Hard Cover','2018-02-13 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.'),(37,'9780062402509','Love and Other Train Wrecks','./Images/9780062402509_small.jpg','./Images/9780062402509_Large.jpg',120,4,'Hard Cover','2018-01-02 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.'),(38,'9781476753867','The Stowaway: A Young Man’s Extraordinary Adventure to Antarctica','./Images/9781476753867_small.jpg','./Images/9781476753867_Large.jpg',120,4,'Hard Cover','2018-01-16 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.'),(39,'9781616207618','The Milk Lady of Bangalore: An Unexpected Adventure','./Images/9781616207618_small.jpg','./Images/9781616207618_Large.jpg',120,4,'Hard Cover','2018-01-03 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.'),(40,'9781427295675','Achtung Baby: An American Mom on the German Art of Raising Self-Reliant Children','./Images/9781427295675_small.jpg','./Images/9781427295675_Large.jpg',120,4,'Hard Cover','2018-01-02 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.'),(41,'9788867024643','The Shape of Water','./Images/9788867024643_small.jpg','./Images/9788867024643_Large.jpg',120,5,'Hard Cover','2018-03-06 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.'),(42,'9780893407773','Pitch Dark','./Images/9780893407773_small.jpg','./Images/9780893407773_Large.jpg',120,5,'Hard Cover','2018-02-19 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.'),(43,'9781501971068','Mister Tender\'s Girl','./Images/9781501971068_small.jpg','./Images/9781501971068_Large.jpg',120,5,'Hard Cover','2018-02-13 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.'),(44,'9781335470461','Cadaver & Queen','./Images/9781335470461_small.jpg','./Images/9781335470461_Large.jpg',120,5,'Hard Cover','2018-02-27 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.'),(45,'9781935635215','Living with the Dead','./Images/9781935635215_small.jpg','./Images/9781935635215_Large.jpg',120,5,'Hard Cover','2018-01-31 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.'),(46,'9781472204271','The Coffin Path','./Images/9781472204271_small.jpg','./Images/9781472204271_Large.jpg',120,5,'Hard Cover','2018-02-08 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.'),(47,'9781983777790','High Lonesome Sound','./Images/9781983777790_small.jpg','./Images/9781983777790_Large.jpg',120,5,'Hard Cover','2018-02-13 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.'),(48,'9781543637984','All Things Bright and Strange','./Images/9781543637984_small.jpg','./Images/9781543637984_Large.jpg',120,5,'Hard Cover','2018-01-30 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.'),(49,'9781543666878','The Job of the Wasp','./Images/9781543666878_small.jpg','./Images/9781543666878_Large.jpg',120,5,'Hard Cover','2018-02-06 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.'),(50,'9780241353592','The Sacrifice Box','./Images/9780241353592_small.jpg','./Images/9780241353592_Large.jpg',120,5,'Hard Cover','2018-01-11 00:00:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quae tandem ista ratio est? Tollenda est atque extrahenda radicitus. Contemnit enim disserendi elegantiam, confuse loquitur. Qualem igitur hominem natura inchoavit? Duo Reges: constructio interrete.');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `GenreId` int(11) NOT NULL,
  `GenreName` varchar(100) NOT NULL,
  `GenreDescr` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`GenreId`),
  UNIQUE KEY `GenreName_UNIQUE` (`GenreName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Science',''),(2,'Fantasy',''),(3,'Fiction',''),(4,'Travel',''),(5,'Horror','');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interests`
--

DROP TABLE IF EXISTS `interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interests` (
  `InterestId` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `GenreId` int(11) NOT NULL,
  PRIMARY KEY (`InterestId`),
  KEY `fk_users_interests_UserId` (`UserId`),
  KEY `fk_genre_interests_GenreId` (`GenreId`),
  CONSTRAINT `fk_genre_interests_GenreId` FOREIGN KEY (`GenreId`) REFERENCES `genre` (`GenreId`),
  CONSTRAINT `fk_users_interests_UserId` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interests`
--

LOCK TABLES `interests` WRITE;
/*!40000 ALTER TABLE `interests` DISABLE KEYS */;
INSERT INTO `interests` VALUES (1,1,1),(2,10,2),(3,2,3),(4,2,4),(5,3,4),(6,4,5),(7,5,5),(8,6,2),(9,7,3),(10,8,1),(11,9,2),(12,3,5);
/*!40000 ALTER TABLE `interests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratings` (
  `RatingsId` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `BookId` int(11) NOT NULL,
  `Ratings` float DEFAULT NULL,
  PRIMARY KEY (`RatingsId`),
  KEY `fk_users_ratings_UserId` (`UserId`),
  KEY `fk_users_ratings_BookId` (`BookId`),
  CONSTRAINT `fk_users_ratings_BookId` FOREIGN KEY (`BookId`) REFERENCES `books` (`BookId`),
  CONSTRAINT `fk_users_ratings_UserId` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES (1,1,1,4.6),(2,2,2,3.6),(3,3,3,2.6),(4,4,4,4.5),(5,5,5,5),(6,6,6,3.6),(7,7,7,2.6),(8,8,8,4.5),(9,9,9,5),(10,10,10,3.6),(11,1,11,2.6),(12,1,12,4.5),(13,2,13,5),(14,3,14,3.6),(15,4,15,2.6),(16,2,16,4.5),(17,10,17,5),(18,8,18,3.6),(19,6,19,2.6),(20,5,20,4.5),(21,7,21,4),(22,7,7,4),(23,19,1,4),(24,19,1,4),(25,19,1,5),(26,19,11,5),(27,19,2,4),(28,19,1,1),(29,19,1,5),(30,19,1,5);
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `ReviewId` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `BookId` int(11) NOT NULL,
  `ReviewDescr` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ReviewId`),
  KEY `fk_users_reviews_UserId` (`UserId`),
  KEY `fk_users_reviews_BookId` (`BookId`),
  CONSTRAINT `fk_users_reviews_BookId` FOREIGN KEY (`BookId`) REFERENCES `books` (`BookId`),
  CONSTRAINT `fk_users_reviews_UserId` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,1,1,'good'),(2,2,2,'Average'),(3,3,3,'good'),(4,4,4,'great'),(5,5,5,'nice'),(6,6,6,'wonderful'),(7,7,7,'best'),(8,8,8,'best book'),(9,9,9,'wonderful'),(10,10,10,'best'),(11,3,11,'best book'),(12,6,12,'wonderful'),(13,7,13,'best'),(14,8,14,'best book'),(15,10,15,'good'),(16,9,16,'Average'),(17,8,17,'good'),(18,2,18,'great'),(19,2,19,'Average'),(20,5,20,'good'),(22,7,5,'   \n             hiiiii   '),(23,7,21,'   \n                the book takes you on a funny ride of how life changes after marriage'),(24,7,7,'   The book has concentrations on how the science and Drugs impact us\n                '),(26,19,11,'   \n                Nice content.'),(27,19,2,'  With rapier logic Goldacre skewers big pharma, the media (aka promoters of \"the public misunderstanding of science\") and misusers of evidence everywhere. His aim is to teach readers how to spot mumbo jumbo so that they become \"future-proofed against new variants of bullshit\". But as well as being educational, his demolitions are hugely entertaining. Homeopathic pills \"work no better than placebo\"; detox is, scientifically speaking, a \"meaningless concept\"; nutritionism (his b'),(29,19,1,'   \n                This a book I will reread many times.It helps bridge the world of science with religion. With revelations of our universe and possible multiuniverses our place in all of this causes one to rethink how we\'ve experience this earth we call home. It highlights the transcendental moments in our lives that no science can explain.');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewvotes`
--

DROP TABLE IF EXISTS `reviewvotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewvotes` (
  `ReviewId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Upvotes` int(11) DEFAULT NULL,
  `Downvotes` int(11) DEFAULT NULL,
  PRIMARY KEY (`ReviewId`,`UserId`),
  KEY `fk_users_reviewVotes_UserId` (`UserId`),
  CONSTRAINT `fk_reviews_reviewVotes_UserId` FOREIGN KEY (`ReviewId`) REFERENCES `reviews` (`ReviewId`),
  CONSTRAINT `fk_users_reviewVotes_UserId` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewvotes`
--

LOCK TABLES `reviewvotes` WRITE;
/*!40000 ALTER TABLE `reviewvotes` DISABLE KEYS */;
INSERT INTO `reviewvotes` VALUES (1,1,1,0),(1,2,1,0),(1,3,0,1),(1,19,1,0),(2,1,0,1),(2,2,1,0),(2,3,1,0),(2,7,1,0),(3,3,1,0),(3,5,1,0),(4,3,0,1),(5,4,1,0),(5,7,0,1),(6,5,1,0),(7,2,1,0),(8,2,1,0),(8,8,1,0);
/*!40000 ALTER TABLE `reviewvotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `UserId` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Organisation` varchar(100) DEFAULT NULL,
  `Occupation` varchar(100) DEFAULT NULL,
  `DOB` datetime DEFAULT NULL,
  `ProfilePic` varchar(500) DEFAULT NULL,
  `BlogURL` varchar(1000) DEFAULT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Surya Pavan','Malireddy','Male','7043696666','UNCC','Student','1993-03-21 00:00:00','./Images/male-icon.jpg',NULL,'hello','suryarocks@gmail.com','Guntur','India'),(2,'Vamshi','Veginati','Male','7043696966','UNCC','Student','1990-02-03 00:00:00','./Images/male-icon.jpg',NULL,NULL,'vamshirocks@gmail.com','khammam','India'),(3,'Shiva','Kommaragiri','Female','7043696969','UNCC','Student','1994-05-25 00:00:00','./Images/female-icon.png',NULL,NULL,'shivarocks@gmail.com','Hyderabad','India'),(4,'Teja','Karlapudi','Female','7048216966','UNCC','Student','1995-06-21 00:00:00','./Images/female-icon.jpg',NULL,NULL,'tejarocks@gmail.com','vizag','India'),(5,'vinay','david','male','7043696970','UNCC','Student','1993-05-25 00:00:00','./Images/male-icon.jpg',NULL,NULL,'vinayrocks@gmail.com','Hyderabad','India'),(6,'akhil','reddy','Female','7043697069','UNCC','Student','1996-01-25 00:00:00','./Images/female-icon.png',NULL,NULL,'akhilrocks@gmail.com','charlotte','USA'),(7,'akash','varma','Female','7045016969','UNCC','Student','1998-09-25 00:00:00','./Images/female-icon.png',NULL,NULL,'akashrocks@gmail.com','NewYork','USA'),(8,'anvesh','sharma','male','7043697969','UNCC','Student','1997-05-28 00:00:00','./Images/male-icon.jpg',NULL,NULL,'anveshrocks@gmail.com','Raliegh','USA'),(9,'jaya','chandra','male','8043696969','UNCC','Student','1984-05-25 00:00:00','./Images/male-icon.jpg',NULL,'describe about you','jayarocks@gmail.com','Columbia','USA'),(10,'nikitha','singh','Female','7048206969','UNCC','Student','1994-09-10 00:00:00','./Images/female-icon.png',NULL,NULL,'nikitharocks@gmail.com','Ottawa','Canada'),(19,'Alekhya','Pogaku','Female','7897897890','UNC Charlotte','Student',NULL,'./Images/user.jpg','','When the Day of Judgment dawns and people, great and small, come marching in to receive their heavenly rewards, the Almighty will gaze upon the mere bookworms and say to Peter, “Look, these need no reward. We have nothing to give them. They have loved reading.','apogaku@uncc.edu',NULL,NULL),(20,'Alekhya','Pogaku','Female','7897897890','UNC Charlotte','Student',NULL,'./Images/user.jpg','','When the Day of Judgment dawns and people, great and small, come marching in to receive their heavenly rewards, the Almighty will gaze upon the mere bookworms and say to Peter, “Look, these need no reward. We have nothing to give them. They have loved reading.','apogaku@uncc.edu',NULL,NULL),(21,'Alekhya','Pogaku','Female','7897897890','UNC Charlotte','Student',NULL,'./Images/user.jpg','','When the Day of Judgment dawns and people, great and small, come marching in to receive their heavenly rewards, the Almighty will gaze upon the mere bookworms and say to Peter, “Look, these need no reward. We have nothing to give them. They have loved reading.','apogaku@uncc.edu',NULL,NULL),(22,'Alekhya','Pogaku','Female','6767767767','UNC Charlotte','Student',NULL,'./Images/user.jpg','','When the Day of Judgment dawns and people, great and small, come marching in to receive their heavenly rewards, the Almighty will gaze upon the mere bookworms and say to Peter, “Look, these need no reward. We have nothing to give them. They have loved reading.','apogaku@uncc.edu',NULL,NULL),(23,'Alekhya','Pogaku','Female','6767767767','UNC Charlotte','Student',NULL,'./Images/user.jpg','','When the Day of Judgment dawns and people, great and small, come marching in to receive their heavenly rewards, the Almighty will gaze upon the mere bookworms and say to Peter, “Look, these need no reward. We have nothing to give them. They have loved reading.','apogaku@uncc.edu',NULL,NULL),(24,'Alekhya','Pogaku','Female','34534565677','Student','work',NULL,'./Images/user.jpg','','When the Day of Judgment dawns and people, great and small, come marching in to receive their heavenly rewards, the Almighty will gaze upon the mere bookworms and say to Peter, “Look, these need no reward. We have nothing to give them. They have loved reading.','user1@test.com',NULL,NULL),(25,'User1','User1','Female','1234567890','work','unc charlotte',NULL,'./Images/user.jpg','','When the Day of Judgment dawns and people, great and small, come marching in to receive their heavenly rewards, the Almighty will gaze upon the mere bookworms and say to Peter, “Look, these need no reward. We have nothing to give them. They have loved reading.','ESF@SDG.COM',NULL,NULL),(26,'ap','aptest','Female','3252342345','work','unc charlotte',NULL,'./Images/user.jpg','','When the Day of Judgment dawns and people, great and small, come marching in to receive their heavenly rewards, the Almighty will gaze upon the mere bookworms and say to Peter, “Look, these need no reward. We have nothing to give them. They have loved reading.','adf@ysdh.com',NULL,NULL),(27,'ap','aptest','Female','3252342345','work','unc charlotte',NULL,'./Images/user.jpg','','When the Day of Judgment dawns and people, great and small, come marching in to receive their heavenly rewards, the Almighty will gaze upon the mere bookworms and say to Peter, “Look, these need no reward. We have nothing to give them. They have loved reading.','adf@ysdh.com',NULL,NULL),(28,'Alekhya','Pogaku','Female','4657386789','school','uncc edu',NULL,'./Images/user.jpg','','When the Day of Judgment dawns and people, great and small, come marching in to receive their heavenly rewards, the Almighty will gaze upon the mere bookworms and say to Peter, “Look, these need no reward. We have nothing to give them. They have loved reading.','apogaku@uncc.edu',NULL,NULL),(29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersauth`
--

DROP TABLE IF EXISTS `usersauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usersauth` (
  `UserId` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`UserName`),
  KEY `fk_users_usersauth_UserId` (`UserId`),
  CONSTRAINT `fk_users_usersauth_UserId` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersauth`
--

LOCK TABLES `usersauth` WRITE;
/*!40000 ALTER TABLE `usersauth` DISABLE KEYS */;
INSERT INTO `usersauth` VALUES (7,'akashrocks@gmail.com','akash@123'),(6,'akhilrocks@gmail.com','akhil@123'),(8,'anveshrocks@gmail.com','anvesh'),(19,'apogaku@uncc.edu','123456'),(9,'jayarocks@gmail.com','jaya@123'),(10,'nikitharocks@gmail.com','nikitha@123'),(3,'shivarocks@gmail.com','shiva@123'),(1,'suryarocks@gmail.com','suryarocks@123'),(4,'tejarocks@gmail.com','tej@123'),(2,'vamshirocks@gmail.com','vamshi@123'),(5,'vinayrocks@gmail.com','vinay@123');
/*!40000 ALTER TABLE `usersauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wishlist` (
  `BookId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  PRIMARY KEY (`BookId`,`UserId`),
  KEY `fk_users_wishlist_UserId` (`UserId`),
  CONSTRAINT `fk_users_wishlist_BookId` FOREIGN KEY (`BookId`) REFERENCES `books` (`BookId`),
  CONSTRAINT `fk_users_wishlist_UserId` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (1,1),(2,2),(5,2),(2,3),(3,3),(12,4),(12,5),(42,6),(21,7),(10,8),(20,8),(32,10),(1,19),(2,19);
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'books'
--

--
-- Dumping routines for database 'books'
--
/*!50003 DROP PROCEDURE IF EXISTS `reviewDownvotes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `reviewDownvotes`(in revId int, in uId int)
BEGIN
	DECLARE count_rec INT;
    DECLARE count_down INT;
	SELECT count(*) into count_rec from reviewVotes rv  WHERE rv.ReviewId =  revId AND rv.UserId = uId;
    SELECT rv.downvotes into count_down from reviewVotes rv  WHERE rv.ReviewId =  revId AND rv.UserId = uId;
   if (count_rec > 0) then
		if ( count_down=1 ) then
			UPDATE reviewVotes rv SET rv.downvotes = 0 WHERE rv.ReviewId=revId AND rv.UserId= uId;
		else
			UPDATE reviewVotes rv SET rv.downvotes = 1, rv.upvotes =0 WHERE rv.ReviewId=revId AND rv.UserId= uId;
		end if;
    else 
        INSERT INTO reviewVotes (ReviewId, UserId, Downvotes) VALUES (revId, uId,1);
    end if;
    select ReviewId, sum(upvotes) as Upvotes ,sum(downvotes) as Downvotes from reviewVotes
    where ReviewId = revId group by ReviewId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `reviewUpvotes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `reviewUpvotes`(in revId int, in uId int)
BEGIN
	DECLARE count_rec INT;
    DECLARE count_up INT;
	SELECT count(*) into count_rec from reviewVotes rv  WHERE rv.ReviewId =  revId AND rv.UserId = uId;
    SELECT rv.upvotes into count_up from reviewVotes rv  WHERE rv.ReviewId =  revId AND rv.UserId = uId;   
   if ( count_rec > 0) then
		if ( count_up =1 ) then
			UPDATE reviewVotes rv SET rv.upvotes = 0 WHERE rv.ReviewId=revId AND rv.UserId= uId;
		else
			UPDATE reviewVotes SET upvotes = 1, downvotes =0 WHERE ReviewId=revId AND UserId= uId;
        end if;    
    else 
        INSERT INTO reviewVotes (ReviewId, UserId, Upvotes) VALUES (revId, uId,1);
    end if;
    select ReviewId, sum(upvotes) as Upvotes ,sum(downvotes) as Downvotes from reviewVotes
    where ReviewId = revId group by ReviewId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-01 17:05:12
