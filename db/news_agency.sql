-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2023 at 04:20 PM
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
(1, 2, '2023-01-12 19:41:04', 'How to become a programmer', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque explicabo doloremque ipsam eos corrupti earum quam voluptatibus, atque a ea iusto aut laboriosam minus veniam voluptate vitae numquam itaque tenetur eum repudiandae quis. Deserunt ducimus similique possimus quae at dolore quas in incidunt voluptatibus enim delectus repellat sint quibusdam eligendi suscipit, dignissimos adipisci quis laudantium asperiores sed voluptatem repudiandae! Voluptatem minima, illo quia nesciunt, ad ut ab repellendus, deleniti explicabo ullam tenetur provident fugit iste nihil excepturi ea nam autem dolores repellat? Vero saepe maiores cumque eaque aut itaque amet et ullam iure quaerat doloremque inventore autem odio temporibus dolore, repellendus voluptatem blanditiis. Fugit placeat velit accusamus libero nobis praesentium hic sequi quam dignissimos omnis? Vel quam quidem, a reiciendis et delectus, mollitia optio fugit nesciunt repudiandae praesentium rerum maiores distinctio laboriosam debitis facere sed asperiores. Voluptatibus ex atque dolores magnam facere eligendi est alias delectus nam illo, nihil, eveniet, voluptates vero aperiam! Dignissimos aperiam obcaecati ipsa aut inventore eius culpa qui! Velit, rerum? Qui itaque natus veniam veritatis reiciendis numquam, at, nulla possimus tenetur eos atque voluptatem reprehenderit aliquid, libero culpa rerum cumque non unde. Iusto, esse sit rem hic laudantium, earum vero consequuntur odio nulla quibusdam, non autem!', 'programming'),
(2, 2, '2023-01-14 10:40:31', 'How to get free items for your avatar on Roblox', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque explicabo doloremque ipsam eos corrupti earum quam voluptatibus, atque a ea iusto aut laboriosam minus veniam voluptate vitae numquam itaque tenetur eum repudiandae quis. Deserunt ducimus similique possimus quae at dolore quas in incidunt voluptatibus enim delectus repellat sint quibusdam eligendi suscipit, dignissimos adipisci quis laudantium asperiores sed voluptatem repudiandae! Voluptatem minima, illo quia nesciunt, ad ut ab repellendus, deleniti explicabo ullam tenetur provident fugit iste nihil excepturi ea nam autem dolores repellat? Vero saepe maiores cumque eaque aut itaque amet et ullam iure quaerat doloremque inventore autem odio temporibus dolore, repellendus voluptatem blanditiis. Fugit placeat velit accusamus libero nobis praesentium hic sequi quam dignissimos omnis? Vel quam quidem, a reiciendis et delectus, mollitia optio fugit nesciunt repudiandae praesentium rerum maiores distinctio laboriosam debitis facere sed asperiores. Voluptatibus ex atque dolores magnam facere eligendi est alias delectus nam illo, nihil, eveniet, voluptates vero aperiam! Dignissimos aperiam obcaecati ipsa aut inventore eius culpa qui! Velit, rerum? Qui itaque natus veniam veritatis reiciendis numquam, at, nulla possimus tenetur eos atque voluptatem reprehenderit aliquid, libero culpa rerum cumque non unde. Iusto, esse sit rem hic laudantium, earum vero consequuntur odio nulla quibusdam, non autem!', 'games'),
(3, 1, '2023-01-14 10:56:34', 'List games at least you should play', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque explicabo doloremque ipsam eos corrupti earum quam voluptatibus, atque a ea iusto aut laboriosam minus veniam voluptate vitae numquam itaque tenetur eum repudiandae quis. Deserunt ducimus similique possimus quae at dolore quas in incidunt voluptatibus enim delectus repellat sint quibusdam eligendi suscipit, dignissimos adipisci quis laudantium asperiores sed voluptatem repudiandae! Voluptatem minima, illo quia nesciunt, ad ut ab repellendus, deleniti explicabo ullam tenetur provident fugit iste nihil excepturi ea nam autem dolores repellat? Vero saepe maiores cumque eaque aut itaque amet et ullam iure quaerat doloremque inventore autem odio temporibus dolore, repellendus voluptatem blanditiis. Fugit placeat velit accusamus libero nobis praesentium hic sequi quam dignissimos omnis? Vel quam quidem, a reiciendis et delectus, mollitia optio fugit nesciunt repudiandae praesentium rerum maiores distinctio laboriosam debitis facere sed asperiores. Voluptatibus ex atque dolores magnam facere eligendi est alias delectus nam illo, nihil, eveniet, voluptates vero aperiam! Dignissimos aperiam obcaecati ipsa aut inventore eius culpa qui! Velit, rerum? Qui itaque natus veniam veritatis reiciendis numquam, at, nulla possimus tenetur eos atque voluptatem reprehenderit aliquid, libero culpa rerum cumque non unde. Iusto, esse sit rem hic laudantium, earum vero consequuntur odio nulla quibusdam, non autem!', 'games'),
(4, 2, '2023-01-14 11:57:54', 'How to download Unity properly', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam pariatur obcaecati incidunt quos repellendus enim magni eum molestias distinctio dolorum impedit, eveniet maxime odio perspiciatis veritatis dicta molestiae eos quod nam, ut quis. Fuga necessitatibus temporibus quos cum quasi placeat nulla saepe fugit consequatur? Ipsam explicabo asperiores fugit obcaecati ad voluptatum consequatur fugiat rem. Aliquam assumenda facere voluptas incidunt a fuga dolorum ipsam eaque rerum doloremque harum quibusdam error, recusandae, labore quia culpa rem fugiat. Accusantium eius possimus in perspiciatis nulla velit, nobis quia iusto assumenda tenetur, autem quam officiis eaque eum corporis dolore sed! Similique minima a architecto sunt aliquam excepturi rem sint fuga delectus deserunt distinctio, consectetur, dolorum odit fugiat at, amet illo facere. Voluptate molestiae doloremque voluptatem amet magnam ipsa obcaecati voluptates fuga inventore aut cum sequi commodi consequuntur ut libero, praesentium quibusdam minus sed ipsum excepturi assumenda, temporibus facere perferendis repellendus! Laudantium facilis itaque debitis aliquam.', 'game dev'),
(5, 2, '2023-01-14 12:11:42', 'How to make a new habit', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam pariatur obcaecati incidunt quos repellendus enim magni eum molestias distinctio dolorum impedit, eveniet maxime odio perspiciatis veritatis dicta molestiae eos quod nam, ut quis. Fuga necessitatibus temporibus quos cum quasi placeat nulla saepe fugit consequatur? Ipsam explicabo asperiores fugit obcaecati ad voluptatum consequatur fugiat rem. Aliquam assumenda facere voluptas incidunt a fuga dolorum ipsam eaque rerum doloremque harum quibusdam error, recusandae, labore quia culpa rem fugiat. Accusantium eius possimus in perspiciatis nulla velit, nobis quia iusto assumenda tenetur, autem quam officiis eaque eum corporis dolore sed! Similique minima a architecto sunt aliquam excepturi rem sint fuga delectus deserunt distinctio, consectetur, dolorum odit fugiat at, amet illo facere. Voluptate molestiae doloremque voluptatem amet magnam ipsa obcaecati voluptates fuga inventore aut cum sequi commodi consequuntur ut libero, praesentium quibusdam minus sed ipsum excepturi assumenda, temporibus facere perferendis repellendus! Laudantium facilis itaque debitis aliquam.', 'life'),
(6, 2, '2023-01-14 12:11:42', 'Php basis', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam pariatur obcaecati incidunt quos repellendus enim magni eum molestias distinctio dolorum impedit, eveniet maxime odio perspiciatis veritatis dicta molestiae eos quod nam, ut quis. Fuga necessitatibus temporibus quos cum quasi placeat nulla saepe fugit consequatur? Ipsam explicabo asperiores fugit obcaecati ad voluptatum consequatur fugiat rem. Aliquam assumenda facere voluptas incidunt a fuga dolorum ipsam eaque rerum doloremque harum quibusdam error, recusandae, labore quia culpa rem fugiat. Accusantium eius possimus in perspiciatis nulla velit, nobis quia iusto assumenda tenetur, autem quam officiis eaque eum corporis dolore sed! Similique minima a architecto sunt aliquam excepturi rem sint fuga delectus deserunt distinctio, consectetur, dolorum odit fugiat at, amet illo facere. Voluptate molestiae doloremque voluptatem amet magnam ipsa obcaecati voluptates fuga inventore aut cum sequi commodi consequuntur ut libero, praesentium quibusdam minus sed ipsum excepturi assumenda, temporibus facere perferendis repellendus! Laudantium facilis itaque debitis aliquam.', 'programming'),
(7, 2, '2023-01-14 12:11:42', 'How to get robux', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam pariatur obcaecati incidunt quos repellendus enim magni eum molestias distinctio dolorum impedit, eveniet maxime odio perspiciatis veritatis dicta molestiae eos quod nam, ut quis. Fuga necessitatibus temporibus quos cum quasi placeat nulla saepe fugit consequatur? Ipsam explicabo asperiores fugit obcaecati ad voluptatum consequatur fugiat rem. Aliquam assumenda facere voluptas incidunt a fuga dolorum ipsam eaque rerum doloremque harum quibusdam error, recusandae, labore quia culpa rem fugiat. Accusantium eius possimus in perspiciatis nulla velit, nobis quia iusto assumenda tenetur, autem quam officiis eaque eum corporis dolore sed! Similique minima a architecto sunt aliquam excepturi rem sint fuga delectus deserunt distinctio, consectetur, dolorum odit fugiat at, amet illo facere. Voluptate molestiae doloremque voluptatem amet magnam ipsa obcaecati voluptates fuga inventore aut cum sequi commodi consequuntur ut libero, praesentium quibusdam minus sed ipsum excepturi assumenda, temporibus facere perferendis repellendus! Laudantium facilis itaque debitis aliquam.', 'games'),
(8, 2, '2023-01-14 12:11:42', 'Tips to optimize your windows', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam pariatur obcaecati incidunt quos repellendus enim magni eum molestias distinctio dolorum impedit, eveniet maxime odio perspiciatis veritatis dicta molestiae eos quod nam, ut quis. Fuga necessitatibus temporibus quos cum quasi placeat nulla saepe fugit consequatur? Ipsam explicabo asperiores fugit obcaecati ad voluptatum consequatur fugiat rem. Aliquam assumenda facere voluptas incidunt a fuga dolorum ipsam eaque rerum doloremque harum quibusdam error, recusandae, labore quia culpa rem fugiat. Accusantium eius possimus in perspiciatis nulla velit, nobis quia iusto assumenda tenetur, autem quam officiis eaque eum corporis dolore sed! Similique minima a architecto sunt aliquam excepturi rem sint fuga delectus deserunt distinctio, consectetur, dolorum odit fugiat at, amet illo facere. Voluptate molestiae doloremque voluptatem amet magnam ipsa obcaecati voluptates fuga inventore aut cum sequi commodi consequuntur ut libero, praesentium quibusdam minus sed ipsum excepturi assumenda, temporibus facere perferendis repellendus! Laudantium facilis itaque debitis aliquam.', 'it'),
(9, 2, '2023-01-14 12:11:42', 'Intel vs Amd', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam pariatur obcaecati incidunt quos repellendus enim magni eum molestias distinctio dolorum impedit, eveniet maxime odio perspiciatis veritatis dicta molestiae eos quod nam, ut quis. Fuga necessitatibus temporibus quos cum quasi placeat nulla saepe fugit consequatur? Ipsam explicabo asperiores fugit obcaecati ad voluptatum consequatur fugiat rem. Aliquam assumenda facere voluptas incidunt a fuga dolorum ipsam eaque rerum doloremque harum quibusdam error, recusandae, labore quia culpa rem fugiat. Accusantium eius possimus in perspiciatis nulla velit, nobis quia iusto assumenda tenetur, autem quam officiis eaque eum corporis dolore sed! Similique minima a architecto sunt aliquam excepturi rem sint fuga delectus deserunt distinctio, consectetur, dolorum odit fugiat at, amet illo facere. Voluptate molestiae doloremque voluptatem amet magnam ipsa obcaecati voluptates fuga inventore aut cum sequi commodi consequuntur ut libero, praesentium quibusdam minus sed ipsum excepturi assumenda, temporibus facere perferendis repellendus! Laudantium facilis itaque debitis aliquam.', 'it'),
(10, 2, '2023-01-14 12:11:42', 'C# basis', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam pariatur obcaecati incidunt quos repellendus enim magni eum molestias distinctio dolorum impedit, eveniet maxime odio perspiciatis veritatis dicta molestiae eos quod nam, ut quis. Fuga necessitatibus temporibus quos cum quasi placeat nulla saepe fugit consequatur? Ipsam explicabo asperiores fugit obcaecati ad voluptatum consequatur fugiat rem. Aliquam assumenda facere voluptas incidunt a fuga dolorum ipsam eaque rerum doloremque harum quibusdam error, recusandae, labore quia culpa rem fugiat. Accusantium eius possimus in perspiciatis nulla velit, nobis quia iusto assumenda tenetur, autem quam officiis eaque eum corporis dolore sed! Similique minima a architecto sunt aliquam excepturi rem sint fuga delectus deserunt distinctio, consectetur, dolorum odit fugiat at, amet illo facere. Voluptate molestiae doloremque voluptatem amet magnam ipsa obcaecati voluptates fuga inventore aut cum sequi commodi consequuntur ut libero, praesentium quibusdam minus sed ipsum excepturi assumenda, temporibus facere perferendis repellendus! Laudantium facilis itaque debitis aliquam.', 'programming'),
(11, 2, '2023-01-14 12:11:42', 'Kill your bad habbits', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam pariatur obcaecati incidunt quos repellendus enim magni eum molestias distinctio dolorum impedit, eveniet maxime odio perspiciatis veritatis dicta molestiae eos quod nam, ut quis. Fuga necessitatibus temporibus quos cum quasi placeat nulla saepe fugit consequatur? Ipsam explicabo asperiores fugit obcaecati ad voluptatum consequatur fugiat rem. Aliquam assumenda facere voluptas incidunt a fuga dolorum ipsam eaque rerum doloremque harum quibusdam error, recusandae, labore quia culpa rem fugiat. Accusantium eius possimus in perspiciatis nulla velit, nobis quia iusto assumenda tenetur, autem quam officiis eaque eum corporis dolore sed! Similique minima a architecto sunt aliquam excepturi rem sint fuga delectus deserunt distinctio, consectetur, dolorum odit fugiat at, amet illo facere. Voluptate molestiae doloremque voluptatem amet magnam ipsa obcaecati voluptates fuga inventore aut cum sequi commodi consequuntur ut libero, praesentium quibusdam minus sed ipsum excepturi assumenda, temporibus facere perferendis repellendus! Laudantium facilis itaque debitis aliquam.', 'life'),
(12, 2, '2023-01-14 12:11:42', 'How to create your own game on Roblox', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam pariatur obcaecati incidunt quos repellendus enim magni eum molestias distinctio dolorum impedit, eveniet maxime odio perspiciatis veritatis dicta molestiae eos quod nam, ut quis. Fuga necessitatibus temporibus quos cum quasi placeat nulla saepe fugit consequatur? Ipsam explicabo asperiores fugit obcaecati ad voluptatum consequatur fugiat rem. Aliquam assumenda facere voluptas incidunt a fuga dolorum ipsam eaque rerum doloremque harum quibusdam error, recusandae, labore quia culpa rem fugiat. Accusantium eius possimus in perspiciatis nulla velit, nobis quia iusto assumenda tenetur, autem quam officiis eaque eum corporis dolore sed! Similique minima a architecto sunt aliquam excepturi rem sint fuga delectus deserunt distinctio, consectetur, dolorum odit fugiat at, amet illo facere. Voluptate molestiae doloremque voluptatem amet magnam ipsa obcaecati voluptates fuga inventore aut cum sequi commodi consequuntur ut libero, praesentium quibusdam minus sed ipsum excepturi assumenda, temporibus facere perferendis repellendus! Laudantium facilis itaque debitis aliquam.', 'game dev'),
(13, 2, '2023-01-14 12:11:42', 'How to become a web developer', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam pariatur obcaecati incidunt quos repellendus enim magni eum molestias distinctio dolorum impedit, eveniet maxime odio perspiciatis veritatis dicta molestiae eos quod nam, ut quis. Fuga necessitatibus temporibus quos cum quasi placeat nulla saepe fugit consequatur? Ipsam explicabo asperiores fugit obcaecati ad voluptatum consequatur fugiat rem. Aliquam assumenda facere voluptas incidunt a fuga dolorum ipsam eaque rerum doloremque harum quibusdam error, recusandae, labore quia culpa rem fugiat. Accusantium eius possimus in perspiciatis nulla velit, nobis quia iusto assumenda tenetur, autem quam officiis eaque eum corporis dolore sed! Similique minima a architecto sunt aliquam excepturi rem sint fuga delectus deserunt distinctio, consectetur, dolorum odit fugiat at, amet illo facere. Voluptate molestiae doloremque voluptatem amet magnam ipsa obcaecati voluptates fuga inventore aut cum sequi commodi consequuntur ut libero, praesentium quibusdam minus sed ipsum excepturi assumenda, temporibus facere perferendis repellendus! Laudantium facilis itaque debitis aliquam.', 'programming'),
(14, 2, '2023-01-14 12:11:42', 'List free programs you need to try', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam pariatur obcaecati incidunt quos repellendus enim magni eum molestias distinctio dolorum impedit, eveniet maxime odio perspiciatis veritatis dicta molestiae eos quod nam, ut quis. Fuga necessitatibus temporibus quos cum quasi placeat nulla saepe fugit consequatur? Ipsam explicabo asperiores fugit obcaecati ad voluptatum consequatur fugiat rem. Aliquam assumenda facere voluptas incidunt a fuga dolorum ipsam eaque rerum doloremque harum quibusdam error, recusandae, labore quia culpa rem fugiat. Accusantium eius possimus in perspiciatis nulla velit, nobis quia iusto assumenda tenetur, autem quam officiis eaque eum corporis dolore sed! Similique minima a architecto sunt aliquam excepturi rem sint fuga delectus deserunt distinctio, consectetur, dolorum odit fugiat at, amet illo facere. Voluptate molestiae doloremque voluptatem amet magnam ipsa obcaecati voluptates fuga inventore aut cum sequi commodi consequuntur ut libero, praesentium quibusdam minus sed ipsum excepturi assumenda, temporibus facere perferendis repellendus! Laudantium facilis itaque debitis aliquam.', 'it'),
(15, 1, '2023-01-17 16:00:01', 'How to get money when you are under 18', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed quia repellat, eligendi corrupti suscipit ab possimus voluptatibus aspernatur nihil accusamus! Deserunt ratione qui quaerat enim? Consectetur nemo neque esse rerum atque quo vitae. Ipsam neque eaque distinctio debitis at animi maiores cum voluptatum architecto rerum vitae deleniti laborum, nihil fugit asperiores sit et? Eum odio, officia quidem numquam dolore molestiae ea nam dolores quo aut ipsum, explicabo optio blanditiis est, accusamus ut consectetur beatae earum. Doloremque cupiditate libero fuga quos dolores quis. Deleniti exercitationem soluta minus nam iure odit qui ad eos. Ipsam similique optio laudantium beatae enim. Omnis, vel suscipit! Reprehenderit, mollitia natus. Cumque quia culpa quisquam libero exercitationem blanditiis sunt illo. Nam ipsa, dolore fugit aspernatur animi totam voluptates consectetur quas alias ratione rerum numquam earum odit sunt voluptas amet expedita quod. Nobis aliquid quia dolores deserunt tempora laborum sequi, quidem impedit inventore maxime numquam doloribus porro, facere maiores quisquam facilis repellat. Illo ut, libero officia consequatur rem, distinctio molestiae dolore unde nesciunt harum odit dignissimos aspernatur iusto, est assumenda! Amet ipsum distinctio quidem, accusamus fugiat unde repellendus! Possimus, similique vero odit veniam repellendus obcaecati unde recusandae magnam natus totam cupiditate laborum ipsam dolor rerum, sunt praesentium. Vitae?', 'life');

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
