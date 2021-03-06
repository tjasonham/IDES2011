-- phpMyAdmin SQL Dump
-- version 3.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 30, 2011 at 02:11 PM
-- Server version: 5.1.44
-- PHP Version: 5.2.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `ides_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `groupTable`
--

CREATE TABLE `groupTable` (
  `grp_id` int(5) NOT NULL AUTO_INCREMENT,
  `grp_name` varchar(255) NOT NULL,
  `grp_website` varchar(255) NOT NULL,
  `grp_abstract` varchar(255) NOT NULL,
  PRIMARY KEY (`grp_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `groupTable`
--

INSERT INTO `groupTable` VALUES(1, 'RIM', 'http://www.rim.ca', 'we create shit for RIM');

-- --------------------------------------------------------

--
-- Table structure for table `photoTable`
--

CREATE TABLE `photoTable` (
  `studentID` int(5) NOT NULL,
  `headshot` varchar(255) CHARACTER SET latin1 NOT NULL,
  `prjOne` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `prjTwo` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `prjThree` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  UNIQUE KEY `studentID` (`studentID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photoTable`
--


-- --------------------------------------------------------

--
-- Table structure for table `studentTable`
--

CREATE TABLE `studentTable` (
  `stu_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_fname` varchar(255) NOT NULL,
  `std_lname` varchar(255) NOT NULL,
  `stu_web` varchar(255) NOT NULL,
  `stu_email` varchar(255) NOT NULL,
  `stu_hometown` varchar(255) NOT NULL,
  `grp_title` varchar(255) NOT NULL,
  `grp_name` varchar(255) NOT NULL,
  `grp_id` int(11) NOT NULL,
  `instructor` varchar(255) NOT NULL,
  `quesOne` longtext NOT NULL COMMENT '1.  Project Abstract (100 words)',
  `quesTwo` longtext NOT NULL COMMENT '2.  How does design define/refine/redefine the way we live?',
  `quesThree` longtext NOT NULL COMMENT '3.  What inspires you to design?',
  `quesFour` longtext NOT NULL COMMENT '4.  What is your favourite book on design?',
  `quesFive` longtext NOT NULL COMMENT '5. Who is your favourite designer?',
  `quesSix` longtext NOT NULL COMMENT '6.  What do you enjoy most about design?',
  PRIMARY KEY (`stu_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `studentTable`
--

--
--Group ID 1 Adaptive Sports 2/5
--
INSERT INTO `studentTable` VALUES(1, 'Dao', 'Minh', 'http://minhdao.ca', 'design@minhdao.ca', 'Kanata, ON', 'Wheelchair Trainer', 'CPC: Adaptive Sports', 1, 'Stephen Field', 'A exercise machine that simulates wheelchair rolling, aimed towards athletes of all levels. It allows wheelchair users to warm up during matches/tournaments on the sidelines, to train in the winter, and to do cardiovascular workouts in the home. \n Athletes have been demanding a product that is compact and mobile to transport to practices and matches or to store easily in the home. Existing products on the market are large and difficult to use for someone with a disability often requiring help. This trainer is designed with the user-centered, focusing on allowing individuals to use the trainer independently. The trainer has built-in components that allows incremental change in difficulty. A weighted flywheel and magnetic resistor enable athletes to train and increase performance.', 'Industrial design is about creating products for people. These products can define a generation and become iconic of a time. As time goes on we design new objects which fufill needs and wants which redefine the way we live.', 'The feeling of a new pair of shoes out of the box, a new phone, a comfortable leather chair. It/'s that small bit of happiness that inspires to design.', 'n/a', 'n/a', 'What’s great about design is that there is no one answer, but infinite number of possible solutions to one problem.', '');

INSERT INTO `studentTable` VALUES(2, 'Healy', 'Joseph', 'n/a', 'n/a', 'Ottawa, ON', 'Paraplegic Sailboat Simulator', 'CPC: Adaptive Sports', 1, 'Stephen Field', 'The Paraplegic Sailboat Simulator is the abstraction of the real sailboat that is designed to inspire the imagination of a person and make them ask the question “what is it like to sail a real boat?” The design is for training the basic skills needed to operate a sailboat before using a full sized sailing boat out on open water. The simulator has a single mini sail that is controlled by the trainer who is showing a person how to control the mainsheet while operating the tiller and repositioning their body in relationship to the sail using the seat glider.', 'Design of a product, a service or a lifestyle transforms the experiences we have throughout our lives by making what seemed impossible now possible. Design bridges the gap between the science of discovery, engineering, and the person by using an interdisciplinary approach to solve conflicts and improve relationships between the product and the user.', 'My inspiration for creating a design is asking the question can it be actually be done and dreaming of actually doing it while making scribble sketches of the design.', 'I have many favourite design books that range from using science, technology, and art.', 'Many - They all are very good and all very different. My favourite designer depends on what I am doing.', 'It seems natural to me and I enjoy creatively thinking about the design of a solution and the using the different options that are often available to finding a solution.', '');

INSERT INTO `studentTable` VALUES(3, 'Jewell', 'Erin', 'http', '@', 'Ottawa', 'title', 'CPC: Adaptive Sports', 1, 'Stephen Field', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');
INSERT INTO `studentTable` VALUES(4, 'Lowe', 'Andrew', 'http', '@', 'Ottawa', 'title', 'CPC: Adaptive Sports', 1, 'Stephen Field', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');
INSERT INTO `studentTable` VALUES(5, 'Morgan', 'Kevin', 'http', '@', 'Ottawa', 'title', 'CPC: Adaptive Sports', 1, 'Stephen Field', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');

--
--Group ID 2 Workspace Next 4/6 CYNTHIA TITLE MISSING
--
INSERT INTO `studentTable` VALUES(6, 'Doiron', 'Charles', 'http://www.coroflot.com/doiron', 'charles.andre.doiron@gmail.com', 'Ottawa, ON', 'Satellite | Standing Workstation for the Shared Office', 'Teknion: Workspace Next', 2, 'Stephen Field', 'Satellite is a standing workstation suitable for laptop use within a shared office environment. It provides a power solution for portable devices through sockets that are positioned behind an adjustable work surface. The work surface conceals unappealing cables when it is inclined and elevates the laptop display for an improved posture. Satellite is available in various finishes and can be easily moved to supplement the office as an independent or benched unit. These freestanding units enhance temporary work while eliminating the space normally associated with traditional workstations.', 'Design is present with us throughout our lives as technology evolves. We decide how an object is to be used and understood. Likewise the design of the object defines our choices.', 'People and their relationship with objects have inspired me to design. I am attracted to memorable experiences and what makes them beautiful.', 'I really enjoyed Envisioning Information by Edward R. Tufte. The book itself is clear and features some stunning examples of maps, diagrams and charts. As a design student I found the design strategies in this book to be useful.', 'Currently it would have to be Adrian van Hooydonk, Director of BMW Group Design. Beyond admiring the aesthetics of their new concept cars I like the framework he has created for their new EfficientDynamics brand.', 'I enjoy the first steps in any design project the most. Brainstorming ideas and visualizing them is truly rewarding. There are not too many activities that give you that much freedom.', '');

INSERT INTO `studentTable` VALUES(7, 'Guerra Gunzel', 'Emmanuel', 'http', '@', 'Ottawa', 'title', 'Teknion: Workspace Next', 2, 'Stephen Field', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a',  '');

INSERT INTO `studentTable` VALUES(8, 'Kong', 'Claire', 'http', 'claire_kong@hotmail.com', 'Oshawa, ON', 'Shroudsystem for Personal Space', 'Teknion: Workspace Next', 2, 'Stephen Field', 'To design a shroud system for an existing office lounge chair to provide an individual office worker who seeks an isolated zone for privacy and relaxation in an open plan office environment.', 'I think, design helps to define each individual\'s personality.', 'A dream to design an \“icon\” of the era.', 'I don\’t have my favourite book yet, but I have my favourite movie, \“Objectified\”. It motivates me to design when I feel I\'m not doing well.', 'Karl Lagerfield. I like his creativity and his uniqueness.', 'I enjoy most about design when I see my final product.  That’s the only time I feel satisfied. I mean, I satisfied about my effort that went through the process, not the product itself.', '');

INSERT INTO `studentTable` VALUES(9, 'Lau', 'William', 'http://www.will-lau.com', '@', 'Vancouver, BC', 'Skiff – Mobile Storage for Teams and Projects', 'Teknion: Workspace Next', 2, 'Stephen Field', 'Skiff is an office storage solution which can be dedicated to teams or projects, and adapts to various shared-space and collaborative environments. It aims to allow movement within the office by providing an easy way of transporting the materials and equipment – from documents to digital devices – related to one subject. The storage unit contains horizontal and innovative vertical working surfaces which can be flexibly configured a number of ways, accommodating a variety of work and meeting situations.', 'No design, good or bad, lasts forever – but design allows us define, refine, and redefine the way we live by adapting to change.', 'The passion and enthusiasm of fellow designers.', 'n/a', 'n/a', 'Discovering tools and solutions which improve our future.', '');

INSERT INTO `studentTable` VALUES(10, 'Lee', 'Thomas', 'http', '@', 'Ottawa', 'title', 'Teknion: Workspace Next', 2, 'Stephen Field', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');

INSERT INTO `studentTable` VALUES(11, 'Zhang', 'Cynthia', 'http', 'april.cyan@gmail.com', 'China', 'TITLE NEEDED', 'Teknion: Workspace Next', 2, 'Stephen Field', 'As part of the Teknion group, the project goals revolve around creating solutions that focus on casual spaces in an office environment presented by today’s new workforece and collaborative workplace. Individually, my project objective is to design a versatile seating unit that is capable of being combined together into temporary areas to utilize the space and facilitate both individual and group work.', 'We must conclude that design is the vanguard of the human race’s innovation in lifestyle. Since the innovation of the first wheel, first light bulb, design has always bore the importance to our lives and improvements we’ll make in the future.', 'Inspired by thousands of years of civilization.', 'Have not found one yet', 'Maybe not a designer but an inventor: Thomas Edison, because of his perserverance after 3000 times of failure.', 'I am still wondering.', '');

--
--Group ID 3 Firetactics 4/6 LEE ABSTRACT
--
INSERT INTO `studentTable` VALUES(12, 'Fromow', 'Mark', 'http', 'mfromow@gmail.com', 'Calgary, AB', 'Portable Work Shelter', 'OMNR: Firetactics', 3, 'Stephen Field', 'A versatile temporary structure that can be used to provide quick access shelter for different work and work supporting activities the ﬁreﬁghter may engage in. The structure features a quick assembly system able to be assembled in under five minutes. Firefighters engage in a variety of different tasks, the structure is able to adapt to suit the needs of the firefighter and the differing scenarios. The degree of protection is adjustable for different amounts of coverage.', 'Design can force us to live in a certain way. \n Design can make aspects of our lives easier. \n Design can allow us to live our lives the way we want.', 'Changing the disconnect of the user from material, place, and nature.', 'White – Kenya Hara', 'Charles and Ray Eames –They had fun-', 'The creative process.', '');

INSERT INTO `studentTable` VALUES(13, 'Ho', 'Ruby', 'http://www.coroflot.com/rubyho', 'info@ruby-ho.com', 'Markham, ON', 'Ember Harness & Front Pack System', 'OMNR: Firetactics', 3, 'Stephen Field', 'The Ember Harness and Front Pack System is an innovative solution to the existing Initial Attack Incident Commander (IAIC) kit for wildland firefighters. The current IAIC kit is out-dated and does not take into consideration increasing additions of electronics in this occupation. The current design also does not ensure protection of manuals, legal documents and secondary items that are vital to successful fire suppression. This new solution transforms the IAIC kit into a wearable system increasing efficiency and productivity.', 'I believe that design is actually just a fancy word for problem solving, so in reality, we are just solving issues in our everyday lives. Clever solutions come about through thorough research and understanding of the end users need. Everything we see is essentially designed to solve a problem. With the continuous introduction of new products into our society, design is defining the way we live everyday.', 'My inspiration to design came from bubble wrap. When I was younger, I used to spend hours popping the bubbles as I am sure many others can relate. Early on in high school when I was figuring out my what to do in the future, I remembered how intrigued I was at bubble wrap and decided to look more into the history of it. Through this, I came to a realization that my inspiration was to solve existing problems. And what’s a better way to do it than through design?', 'This one\'s a hard one as I don’t see myself as a cliche designer. I don\'t follow the design society much. I could tell you what my favourite magazine is for inspiration though, Wired. Technology is such a big part of our lives now, it’s hard not to incorporate some aspects of it into the design of products.', 'I don\'t have one. I have a favourite artist, James Jean.', 'The best part of design is seeing the "wow" reaction of the people you are design for.', '');

INSERT INTO `studentTable` VALUES(14, 'Oddy', 'Lee', 'http', 'leefjoddy@gmail.com', 'Ottawa, ON', 'Portable Cooking Unit', 'OMNR: Firetactics', 3, 'Stephen Field', 'abstract', 'With a bit of extra thought, research and consideration all products can be improved upon. Proper design can improve how we interact with objects and each other and in some cases make important and meaningful improvements to life in general.', 'Bad designs sticks out but a lot of people accept it as the way it is. Just looking at the things around us and asking \"why is it that way?\" or \"is there a better way?\". Also looking at others design can inspire you to be creative.', 'I prefer gadget blogs and online magazines. They show you what others are working on and developing, keep you up to date with current technology and helps inspire you. Some of my favourites are Yanko Design (www.yankodesign.com) and Gizmodo (www.gizmodo.com) or Gizmag (www.gizmag.com). \n I also enjoy concept art like Daniel Simon’s book Cosmic Motors. He adds a lot of small details that help you to believe his concepts.', 'I dont have one designer that I like. Great designs and clever ideas can come from anyone.', 'I enjoy being creative and solving problems but coming up with an idea and then seeing it in a physical model or product is the best feeling that makes the hours and late nights worth it.', '');

INSERT INTO `studentTable` VALUES(15, 'Palmer', 'Jordan', 'http', '@', 'Ottawa', 'title', 'OMNR: Firetactics', 3, 'Stephen Field', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');

INSERT INTO `studentTable` VALUES(16, 'Pityk', 'Eugene', 'http', '@', 'Ottawa', 'title', 'OMNR: Firetactics', 3, 'Stephen Field', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');

INSERT INTO `studentTable` VALUES(17, 'Viol', 'Brandon', 'http://www.wix.com/bviol88/portfolio', 'brandon.viol@gmail.com', 'Morriston, ON', 'Removable Fireranger Cargo Management System', 'OMNR: Firetactics', 3, 'Stephen Field', 'Three quarter ton crew cab trucks are part of the OMNR’s initial attack firefighting equipment. They are used from dispatch to debriefing in the initial attack cycle. Due to the extreme conditions that the firefighters are required to work in, it is extremely important that equipment stored and organized in the truck be easily accessible and properly supported. The OMNR presently have no true system for the management of the cargo and equipment. Each headquarters will have their own spin on how they transport their equipment. Most headquarters have regular truck caps on their trucks, but beyond that it is all-different. Thus, the design of the ideal FireRanger cargo management system will be both new and useful for the ministry.', 'Design is a big part of my life. It’s everything around me; it\'s everything I see. Design is presently in every action one does throughout their day. Thus, design defines, refines and redefines the way we live on a daily basis. It’s all about making people’s lives easier without them realizing it.', 'We live each day surrounded by hundreds of products. The message and usability they transmit are the core values of their producer. We are aware of these values. I\'m inspired to one day have a design that is valued through its unique message and usability.', 'Design Sketching', 'William G. Davidson - Senior VP & Chief Styling Officer Harley-Davidson Motor Company.', 'I enjoy all aspects of design, but model making is definitely my thing. I am obsessed with the process, from mock-ups to detailed appearance models. This is by far my favourite aspect of design.', '');

--
--Group ID 4 Lota Renovacion - 4/6
--
INSERT INTO `studentTable` VALUES(18, 'Bhimani', 'Rahim', 'http', '@', 'Ottawa', 'title', 'OCE: Lota Renovación', 4, 'Lois Frankel', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');

INSERT INTO `studentTable` VALUES(19, 'Bussin', 'Rachel', 'http', 'rachelbussin@gmail.com', 'Toronto, ON', 'Introducing Composting to the Lota Market', 'OCE: Lota Renovación', 4, 'Lois Frankel', 'Lota is a small town in Chile full of citizens who are warm and welcoming. Unfortunately Lota’s infrastructure does not match the spirit of the town. The streets of the Lota market are littered with piles of dead fish, and unsold fruits and vegetables. By introducing a composting system into the market, not only is it a step towards encouraging tourism, but it raises the standard of living for those who work within the market. The bin that has been designed to encourage the compost system considers the market vendors, waste pickers, and potential tourists. In short term this design will help clean up the streets and hide the stench of rotten food, in the long term it will be the first step to encouraging sustainable practices that will provide much needed jobs.', 'Can you imagine a world without design?', 'All the bad design', 'Things I Have Learned in My Life So Far - Stefan Sagmeister', 'Koen de Winter', 'How multi-dimensional it is.', '');

INSERT INTO `studentTable` VALUES(20, 'Iouguina', 'Alëna', 'http://www.biologytodesign.com', '@', 'St. Petersburg, Russia', 'Balanza Verde', 'OCE: Lota Renovación', 4, 'Lois Frankel', 'The project addresses a waste management device for schools of Lota, Chile to educate local children about benefits of re-cycling and re-using, raise awareness of proper waste management and engage community in the process of re-cycling and composting. Since children will ultimately be the decision makers for the community, teaching personal responsibility for solid waste early on can only benefit Lota in later years. The device will motivate students to properly dispose of garbage, putting recyclables into appropriate containers, and diverting waste from landfills by re-using materials in various projects around the school.', 'I believe the role of designer is to gain a deeper understanding of resource management issues that human economic activity is facing in Canada and all over the world. It is not enough to simply be aware of environmental degradation anymore, it is important to seek practical approaches to environmental problems that encompass multiple disciplines and embrace holistic vision. Thoughtful design is capable of breeding understanding between the disciplines, and driving the innovation forward. \n Brian Burns has taught me that a key to good design is responsibility. As long as the actions of the designer are not frivolous endeavors but rather a means to create something that is good; something that heals, inspires, and serves its purpose – then design is capable of not only redefining, but also enhancing the quality of our lives and preserving the planet we live on.', 'I am continually inspired by the world of natural history and its potential connection to the discipline of industrial design through biomimicry. Biomimicry – a science, representing the study and imitation of nature’s methods, designs, and processes – offers sustainable solutions to design problems and is a critical answer to the contemporary problem of mass production. My ultimate goal, as a designer, would be to propose a scheme to connect industrial design and biological systems in a manner such that materials and energy are used efficiently, waste is minimized, and cyclic processes are integrated.', 'EcoSuss by Brian Burns Biomimicry: Innovation Inspired by Nature by Janine Benyus Exploring the way life works: The science of biology by Mahlon B. Hoagland Design with Nature by Ian L. McHarg', 'Richard Buckminster Fuller William McDonough Melissa Sterry', 'A full complex of diverse skills to bring about a positive change.', '');

INSERT INTO `studentTable` VALUES(21, 'Marusaik', 'Jane', 'http://www.twitter.com/jane_ottawa', '@', 'Stratford, ON', 'Mobile Fish Cart for Lota Feria', 'OCE: Lota Renovación', 4, 'Lois Frankel', 'The opportunity to improve the market in Lota aligns with their strategy of economic redevelopment through tourism. Development of a new cart for selling fish with a focus on vendor comfort and aesthetic appeal will hopefully act as a catalyst for change throughout the city.', 'Design is constantly informing human behaviour. The objects in our lives place constraints on us, but also give us freedom.', 'current events, inequality, beautiful images, frustrating situations', 'It\'s a tie between "Cradle to Cradle" and "Massive Change"', 'Emily Pilloton', 'Learning about how people live. Design has given me an glimpse into the private worlds of other professions, and other lives.', '');

INSERT INTO `studentTable` VALUES(22, 'Serrer', 'Samantha', 'http', 'samantha.serrer@gmail.com', 'Ottawa', 'Colores de Lota', 'OCE: Lora Renovación', 4, 'Lois Frankel', 'The project will provide the residents and graffiti artists of Lota with the opportunity to brand Lota\'s public space. This will be accomplished by designing a modular seating system that is manufactured, painted and maintained by the people of Lota. This system will function as a public art project, in which the residents will collaborate to create unique pieces of public art.', 'n/a', 'n/a', 'n/a', 'n/a', 'The challenge of solving a given problem in a way that is both effective and beautiful.', '');

INSERT INTO `studentTable` VALUES(23, 'Sheri', 'Yasaman', 'http', '@', 'Ottawa', 'title', 'OCE: Lota Renovación', 4, 'Lois Frankel', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');

--
--Group ID 5 Mobile Life 4/7 SISI HOMETOWN MISSING
--
INSERT INTO `studentTable` VALUES(24, 'Hill', 'Caleb', 'http', '@', 'Ottawa', 'title', 'RIM: Mobile Life', 5, 'Lois Frankel', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');

INSERT INTO `studentTable` VALUES(25, 'Lorsignol', 'Felix', 'http://ro.boti.ca', '@', 'Edmonton, AB & Austin, TX', 'BlackBerry Peer and myPeer BlackBerry App', 'RIM: Mobile Life', 5, 'Lois Frankel', 'The BlackBerry Peer and myPeer BlackBerry App work together to make travelling with children more memorable. The BlackBerry Peer is a device that makes it easy and fun for children to take photos and videos of memorable experiences and share them with their family and friends, even in real-time. Memories are wirelessly stored on the the parents’ BlackBerry for convenient playback anytime, anywhere. Finally, the Peer system acts as a 2-way communication system between parents and their children, especially in times of distress.', 'There are different facets to design. On one hand design tries to make the products that we use everyday get out of the way and into the background. On the other hand, it tries to make products stand out, give a bit more flavour to our lives.', 'Designing has always been a part of me: sketching, building, solving problems. ', 'I prefer books that address design issues from a non-design viewpoint, I’m currently reading Kevin Kelly’s What Technology Wants and it’s quite interesting.', 'Yves Béhar? Don’t really have a favourite designer.', 'Dreaming. Drawing', '');

INSERT INTO `studentTable` VALUES(26, 'Luong', 'Teddy', 'http://teddy-teddy.ca/', '@', 'Markham, ON', 'BlackBerry WorkSpace', 'RIM: Mobile Life', 5, 'Lois Frankel', 'BlackBerry WorkSpace is a portable projection unit used to simulate a physical workstation. While the typical modern workstation includes a vertical digital environment (computer) and a physical horizontal environment (desk), WorkSpace attempts to bridge the gap between the two using a projected display with multi-touch capabilities. Syncing with devices such as a laptop, smartphone or tablet, WorkSpace acts as an accessory that allows the user to interact with digital documents with more fluidity than current office tools allow. Documents can be transferred via \"drag and drop\" gestures and manipulated in a manner similar to that of paper on a desk, this includes: writing, drawing, sorting and storing.', 'Design doesn’t define the way we live but I couldn’t live without it.', 'Seeing things that make me go \"!\" ', 'Francois Blanciak – Siteless: 1000 Building Forms', 'Naoto Fukasawa', 'Making other people go \"!\" ', '');

INSERT INTO `studentTable` VALUES(27, 'Mullins', 'Torrin', 'http', 'torrinmullins@gmail.com', 'Dundas, ON', 'Medical Info- Transfer Project', 'RIM: Mobile Life', 5, 'Lois Frankel', 'My project involves increasing the efficiency and accuracy of transferring parient information between first-responders and hospital staff by incorporating a dedicated wireless storage device that attaches to patients. The device will follow a patient from their initial contact with first-responders to when they receive proper medical attention, and will contain the ability for first-responders to input, store and retrieve data using their BlackBerry devices.', 'All things are designed; what matters is how we interpret them.', 'I am inspired by the ideas of others that I wish I thought of first.', 'n/a', 'n/a', 'I enjoy finding a problem and solving it with design, by taking a simple idea and seeing it turn into something tangible.', '');

INSERT INTO `studentTable` VALUES(28, 'Tang', 'Sisi', 'http', 'stang5@connect.carleton.ca', 'Ottawa', 'Image In Motion', 'RIM: Mobile Life', 5, 'Lois Frankel', 'In collaboration with RIM (Research in Motion), we are exploring projects that enhance the travel experience for a range of different users. My individual direction is focus on memory capturing in leisure travel. The main focus of my project is to to develop an image-capturing device that works with the Blackberry to enhance the leisure travel experience by providing travellers a flexible and enjoyable way to capture their memory.', 'Good design makes people\'s life earlier. The way we behave is some how affected and shaped by design. For example, the seating posture is affected by the design of the chair.', 'My own desire is my main inspiration for design. If I don’t even want the product I design, I don\'t think it could ever be a good design.', 'Process: 50 Product Designs from Concept to Manufacture', 'n/a', 'Be able to create something that would help people in their everyday life.', '');

INSERT INTO `studentTable` VALUES(29, 'Toros', 'Ece', 'http', '@', 'Ottawa', 'title', 'RIM: Mobile Life', 5, 'Lois Frankel', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');
INSERT INTO `studentTable` VALUES(30, 'Yuzbasioglu', 'Mehmet', 'http', '@', 'Ottawa', 'title', 'RIM: Mobile Life', 5, 'Lois Frankel', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');

--
--Group ID 6 ConnectED
--
INSERT INTO `studentTable` VALUES(31, 'Henderson', 'Lisa', 'http', '@', 'Ottawa', 'title', 'Smart: ConnectED', 6, 'Lois Frankel', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');
INSERT INTO `studentTable` VALUES(32, 'Marin', 'Megan', 'http://', '@', 'Ottawa', 'title', 'Smart: ConnectED', 6, 'Lois Frankel', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');
INSERT INTO `studentTable` VALUES(33, 'McMahon', 'Cory', 'http://chat.carleton.ca/~cmcmaho3', 'cmcmaho3@connect.carleton.ca', 'Ottawa, ON', 'Qut Coach', 'Smart: ConnectED', 6, 'Lois Frankel', 'QUT COACH is an assistive electronic cutting board.  The device will help developmentally disabled users through a chosen recipe with ingredient retrieval cues and step-by-step instructions. Continued use with QUT COACH will generate a user profile with meal performance statistics.  This profile’s information can be used to stimulate online social interaction, or may be accessed by family members, caretakers, and teachers as a tool to keep track of the user’s meal habits and kitchen performance. With increased familiarity, users will begin to experience a higher level of kitchen independence to help prepare them for a life away from home.', 'Design defines, refines, and redefines what we create.  What we create defines, refines, and redefines how we live.', 'Exposure to the world’s great ideas and creative discoveries inspires me to design.', 'Geometry of Design: Studies in Proportion and Composition \n By: Kimberly Elam', 'Jacque Fresco: Such drive and passion for the future of human civilization.  How inspiring.', 'Allowing others to experience the physical manifestation of my own thoughts.', '');