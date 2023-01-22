-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2023 at 02:46 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news_agency`
--

-- --------------------------------------------------------

--
-- Table structure for table `news_table`
--

CREATE TABLE `news_table` (
  `id` int(11) NOT NULL,
  `article_author` int(11) DEFAULT NULL,
  `article_date` datetime DEFAULT NULL,
  `article_title` varchar(100) DEFAULT NULL,
  `article_content` text DEFAULT NULL,
  `article_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news_table`
--

INSERT INTO `news_table` (`id`, `article_author`, `article_date`, `article_title`, `article_content`, `article_type`) VALUES
(1, 2, '2023-01-12 19:41:04', 'How to become a programmer', 'Step 1: Choose a Specialization and Path\nSpecializations fall under three categories. \n\nFront-End Development\n\nA front-end developer works on developing graphical user interfaces like buttons and links that are visible on the user end. They are usually experts in CSS, HTML, and JavaScript.\nBack-end developers work on the server side that helps power actions on the website. This involves managing database interactions, website speed, and library creation. They must know programming languages like Java and Python. \n\nFull-Stack Development \n\nA full-stack developer has expertise in both front-end and back-end development. They are creative, tech-savvy, and graphically inclined. They should know programming languages like SQL, AngularJS, CSS, and Polymer among others. \n\nStep 2: Learn Programming Languages\nThe most popular way to learn programming languages is to get a degree or certification in computer science. You can also learn programming languages through online courses, bootcamps, and online classes.\n\nStep 3: Develop Hard and Soft Skills\nA good computer programmer has a flair for both technical and soft skills. They must have strong communication skills, problem-solving, and adaptability skills as well as understand data structures, source control, and algorithms.\n\nStep 4: Create a Portfolio\nA strong portfolio will enhance your employability. You can contribute to open-source projects, use relevant college projects or add work that you may have curated on your own to showcase your skills. \n\nStep 5: Connect with Others in the Industry\nOnce you are clear about your specialization, seek guidance from industry experts or experienced programmers, or find a mentor. \n\nStep 6: Look for Internships\nA tech internship is a great way to expand your skills and become a competent computer programmer. ', 'programming'),
(2, 2, '2023-01-14 10:40:31', 'How to get free items for your avatar on Roblox', 'Roblox allows players to customize their look via wearing clothes that can be obtained through the Roblox catalog, which can be found here.\nThe Roblox catalog allows players to buy clothing items designed by other players with Robux, which acts as a global in-game currency common to the Roblox universe.\n\nHow to obtain free clothes and accessories in Roblox?\nThere are a few different methods one can use in order to get free clothes for their Roblox character. One of the easiest and best methods is by looking for free of charge items currently available in the Roblox catalog, performed as follows:\n\nStep 1: Visit and open the official Roblox catalog.\n\nStep 2: Select either \"Accessories\" or \"Clothes\" from the dropdown menu in the top right-hand corner.\n\nStep 3: After the appropriate category has been selected, using the next dropdown box, select the option \"Price (Low to High)\" as shown below.\n\nStep 4: If this has been done correctly, a myriad of free Roblox clothing items should be displayed on your screen and go!', 'games'),
(3, 1, '2023-01-14 10:56:34', 'List games at least you should play', 'What are the purpose of games?\nGames are a fundamental way that humans interact and learn. They provide so many benefits for people of all interests and abilities. Children especially love playing games and these activities provide such a great opportunity for them to practice so many skills.\n\nList games at least you should try to play:\nThe Legend of Zelda: Breath of the Wild. Nintendo.\nChrono Trigger. Square.\nThe Last of Us. Naughty Dog.\nSuper Mario 64. Nintendo EAD.\nHalo 2. Bungie.\nThe Legend of Zelda: Ocarina of Time. Nintendo EAD.\nResident Evil 4 [2005] Capcom Production Studio 4.\nGrand Theft Auto V. Rockstar North.\nThe Witcher 3\nMetro Exodus\nMinecraft\nStar Wars Fallen Order', 'games'),
(4, 2, '2023-01-14 11:57:54', 'For what is Unity used', 'Unity : Developing Your First Game with Unity\nWhat Unity Is\nUnity is a 2D/3D engine and framework that gives you a system for designing game or app scenes for 2D, 2.5D and 3D. I say games and apps because I’ve seen not just games, but training simulators, first-responder applications, and other business-focused applications developed with Unity that need to interact with 2D/3D space. Unity allows you to interact with them via not only code, but also visual components, and export them to every major mobile platform and a whole lot more—for free. (There’s also a pro version that’s very nice, but it isn’t free. You can do an impressive amount with the free version.) Unity supports all major 3D applications and many audio formats, and even understands the Photoshop .psd format so you can just drop a .psd file into a Unity project. Unity allows you to import and assemble assets, write code to interact with your objects, create or import animations for use with an advanced animation system, and much more.\n\nAs Figure 1 indicates, Unity has done work to ensure cross-platform support, and you can change platforms literally with one click, although to be fair, there’s typically some minimal effort \n, such as integrating with each store for in-app purchases.\n\nPerhaps the most powerful part of Unity is the Unity Asset Store, arguably the best asset marketplace in the gaming market. In it you can find all of your game component needs, such as artwork, 3D models, animation files for your 3D models (see Mixamo’s content in the store for more than 10,000 motions), audio effects and full tracks, plug-ins—including those like the MultiPlatform toolkit that can help with multiple platform support—visual scripting systems such as PlayMaker and Behave, advanced shaders, textures, particle effects, and more. The Unity interface is fully scriptable, allowing many third-party plug-ins to integrate right into the Unity GUI. Most, if not all, professional game developers use a number of packages from the asset store, and if you have something decent to offer, you can publish it there as well.', 'game dev'),
(5, 2, '2023-01-14 12:11:42', 'How to make a new habit', 'Most of us assume those hyper-achievers who are always able to squeeze in their workout, eat healthy foods, ace their exams and pick their kids up on time must have superhuman self-control. But science points to a different answer: What we mistake for willpower is often a hallmark of habit.\n\nPeople with good habits rarely need to resist the temptation to laze on the couch, order greasy takeout, procrastinate on assignments, or watch one more viral video before dashing out the door. That’s because autopilot takes over, eliminating temptation from the equation. Having established good habits, little to no willpower is required to choose wisely.\n\nSounds great, right? The only catch is that building good habits takes effort and insight. Thankfully, science offers both guidance on how to begin and strategies to lighten your lift. Here are a few research-backed steps sourced from my book, “How to Change,” that can set you on the path from where you are to where you want to be.\n\nSteps:\n\nSet a specific goal. The way you define the goal you hope to turn into a habit does matter.\nCreate a detailed, cue-based plan.\nMake it fun to repeat.\nFoster flexibility.\nFind the right kind of social support.', 'life'),
(6, 2, '2023-01-14 12:11:42', 'For what is PHP used?', 'PHP is the most widely used open source and general purpose server side scripting language used mainly in web development to create dynamic websites and applications. It was developed in 1994 by Rasmus Lerdorf. A survey by W3Tech shows that almost 79% of the websites in their data are developed using PHP. It is not only used to build the web apps of many tech giants like Facebook but is also used to build many CMS (Content Management System) like WordPress, Drupal, Shopify, WooCommerce etc.\n\nWhy to use PHP?\n\nPHP can actually do anything related to server-side scripting or more popularly known as the backend of a website. For example, PHP can receive data from forms, generate dynamic page content, can work with databases, create sessions, send and receive cookies, send emails etc. There are also many hash functions available in PHP to encrypt user’s data that makes PHP secure and reliable to be used as a server-side scripting language. So these are some of the abilities of PHP that makes it suitable to be used as server-side scripting language. You will get to know more of these abilities in further tutorials.\n\nEven if you are not convinced by the above abilities of PHP, there are some more features of PHP. PHP can run on all major operating systems like Windows, Linux, Unix, Mac OS X etc. Almost all of the major servers available today like Apache supports PHP. PHP allows using wide range of databases. ', 'programming'),
(7, 2, '2023-01-14 12:11:42', 'How to get robux', 'Robux or R$ is the only currency in Roblox (as of April 14, 2016). Were added to the game on May 14, 2007 as a replacement for ROBLOX Points. Robux was one of two currencies available on the platform at the time, along with tickets (becoming the only currency on April 14, 2016). Robax is known as the primary currency of the ROBLOX community and staff; all On-Sale items created by ROBLOX are sold for robax, and user-generated content such as Gamepass, Clothes are also purchased on them. The name Robax is a composite concept formed from the words \"ROBLOX\" and \"Bucks\" (English Dollar).\nThere are a few different ways Robux can be earned or purchased:\n\nWays to get robux:\nYou can purchase Robux in our mobile, browser, and Xbox One apps\nAccounts with a membership receive a Robux stipend\nAccounts with a membership can sell shirts and pants and get a percentage of the profit\nAny user can build an experience and earn Robux in a variety of ways', 'games'),
(8, 2, '2023-01-14 12:11:42', 'Tips to optimize your pc', 'If your PC is running slowly, the following suggestions might help speed things up. The tips are listed in order, so start with the first one, see if that helps, and then continue to the next one if it doesn’t. We all know how frustrating it can get when our PC runs slowly and takes infinitely long to perform the simplest of tasks. A slow computer ends up wasting time, effort and money in the long run. While you can always approach a technician to repair your Windows PC and get it up to speed, following certain fundamental rules of maintenance can usually help you fix the system on your own.\n\nThese are the best tips to speed up your device\'s performance on Windows\n1. Make sure you have the latest updates for Windows and device drivers\n2. Restart your PC and open only the apps you need\n3. Use ReadyBoost to help improve performance\n4. Make sure the system is managing the page file size\n5. Check for low disk space and free up space\n6. Adjust the appearance and performance of Windows\n7. Pause OneDrive syncing\n8. Disable unnecessary startup programs\n9. Check for and remove viruses and malware\n10. Restore your PC from a system restore point', 'it'),
(9, 2, '2023-01-14 12:11:42', 'Intel vs Amd', 'AMD’s latest Zen-based processor is the most powerful consumer-grade chip on the market. And Intel CPUs offer the best performance at an affordable price. So while AMD may be the best CPU in terms of overall power, Intel’s 13th-gen line of CPUs offer the best value and are more than enough for most users.\n\nThe CPU stress tests have spoken, and Intel’s clock speeds usually win out in all but the highest of high-end chips. Intel chips also tend to be more flexible and reliable, according to some reviews. You shouldn’t run into any problems with an Intel processor.\n\nWhen shopping for CPUS, look for deals that match your preferred specs. If you can grab an AMD chip that meets your requirements at a better price than the Intel equivalent, go for it. The stiff competition between the two companies is pushing them both to produce excellent and innovative hardware.\n\nTo sum up:\n\nIntel still leads the market for CPUs, offering the best balance between price and performance. Because of their unrivaled single-thread clock speeds, gamers will certainly want to go for an Intel CPU.\n\nAMD is increasingly competitive, and their new Ryzen 9 chip is the most powerful consumer-grade CPU. With 8+ cores and multithreaded Zen architecture AMD’s new-gen chips perform particularly well in high-end workstations.', 'it'),
(10, 2, '2023-01-14 12:11:42', 'For what is C# used', 'What Is C#?\nC# is a modern, general-purpose programming language that can be used to perform a wide range of tasks and objectives that span over a variety of professions. C# is primarily used on the Windows .NET framework, although it can be applied to an open source platform. This highly versatile programming language is an object-oriented programming language (OOP) and comparably new to the game, yet a reliable crowd pleaser.\n\nWhat is C# used for?\nLike other general-purpose programming languages, C# can be used to create a number of different programs and applications: mobile apps, desktop apps, cloud-based services, websites, enterprise software and games. Lots and lots of games. While C# is remarkably versatile, there are three areas in which it is most commonly used.\n\nWindows applications\nC# for Games\nC# for website development\nCross platform applications', 'programming'),
(11, 2, '2023-01-14 12:11:42', 'How to kill your bad habbits', 'Bad habits; we all got’em. You know what they are. You know you should stop. But… it’s hard. In fact, sometimes you feel downright powerless. And you’re not crazy.\nYeah, you spend almost half the day on autopilot. And changing bad habits isn’t just “kinda nice.” If you want to be a success, studies show habits really do matter.\n\nPeople who have career momentum are 53% more likely to have good habits.\n\nThe best steps to kill your bad habit:\n1.One at a time. Beat one bad habit per month and in a year you\'ll be awesome.\n2.Don\'t stop. Just count. \n3.Don\'t change you. \n4.Chill, dude. \n5.Don\'t eliminate. \n6.“If” and “Then.” A simple plan for how you\'ll beat temptation helps you beat temptation.\n7.Forgive yourself.', 'life'),
(12, 2, '2023-01-14 12:11:42', 'How to create your own game on Roblox', 'Roblox is designed as a platform for creators, where you can profit and benefit from your creations, earning Roblox free Robux by making games, or even going so far as to earn actual money from microtransactions, and through profit share.\nWith some patience and creativity, anyone can make a Roblox game, including kids. Roblox provides its own easy-to-use game editor, called Roblox Studio, where games may be created without any coding skills.\n\nYou may find that developing one experience just isn\'t enough to satisfy your craving for creativity. Luckily, we can help! All users are able to build as many experiences as they want, though accounts are limited to 200 public experiences (able to be played by others) at any given time.\n\nSteps do do it:\nDownload and Open Roblox Studio\nClick Create in the top bar of the website\nIn the My Creations tab, click Experiences if it isn\'t already highlighted\nFind the place you would like to make public/private and click the grey or green icon underneath the place\'s title to switch between the two statuses', 'game dev'),
(13, 2, '2023-01-14 12:11:42', 'How to become a web developer', 'What is web development?\nA web developer’s job is to create websites. While their primary role is to ensure the website is visually appealing and easy to navigate, many web developers are also responsible for the website’s performance and capacity. \n\nHow to become a web developer\nA formal education isn’t always necessary to become an entry-level web developer. Some web developers have an associate or bachelor’s degree in website design or computer science, but others teach themselves how to code and design websites. While earning a degree can make you a more competitive candidate, a strong portfolio can go a long way toward validating your skills to potential employers.\n\nIf you’re interested in becoming a web developer, here are some steps you can take.\n\n1. Build web developer skills.\n2. Consider a degree in computer science or web design.\n3. Take a course in web development.\n4. Build a portfolio of web development work.\n5. Get certified.', 'programming'),
(14, 2, '2023-01-14 12:11:42', 'List free programs you need to try', 'It\'s a mobile world, but we have not fully abandoned the desktop. The real work (and a lot of the play) of computing requires a full personal computing system, and to get the most out of that, you need software.\n\nSoftware can be expensive, but free programs have been a mainstay of the desktop experience for decades, and today\'s offerings are pretty powerful. You can find all manner of free audio and video editors, office suites, file utilities, organizers, photo converters, and more. Software developers can adopt an ad-based model, donation-ware to keep things afloat, or a shareware/freemium model that charges for extra features.\n\nList of programms:\nGoogle Chrome\nGoogle Drive\nSpotify\nLibre Office\nMedia Player: VLC\n7-Zip', 'it'),
(15, 1, '2023-01-17 16:00:01', 'How to get money when you are under 18', 'If you’re a teenager looking to make money, you’ve come to the right place! You’re at a time in your life when it’s important to learn how to earn and manage your own money.\n\nChances are that as a child you received an allowance for doing things around the house for your parents. If so, you have had a taste of what earning your own money is like. If you’ve never earned money a day in your life, that’s okay! Now is the time to learn, and I’m here to help you do that. \n\nBenefits Of Making Money As A Teen\nThere are so many benefits to making money when you’re a teenager. It helps you learn how to manage money on your own before you get out of your parent’s house. Not to mention, you get to spend it (for the most part) how you want.\n\nSwagbucks. There are tons of ways to make money through Swagbucks.  \nSurvey Junkie. Completing online surveys is so simple.\nWork as a camp counselor.  \nSign up for Fetch Rewards.  \nBabysitting.  \nPet Sitting.  \nFreelance writing.  \nReferee or umpire.', 'life');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `log` varchar(255) DEFAULT NULL,
  `pas` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `log`, `pas`) VALUES
(1, 'pit', '123'),
(2, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news_table`
--
ALTER TABLE `news_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news_table`
--
ALTER TABLE `news_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
