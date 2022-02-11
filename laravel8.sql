-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2022 at 03:37 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel8`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Progamming', 'web-progamming', '2022-02-11 09:55:33', '2022-02-11 09:55:33'),
(2, 'Personal', 'personal', '2022-02-11 09:55:33', '2022-02-11 09:55:33');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_10_062734_create_posts_table', 1),
(6, '2022_02_10_073315_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Aut ipsa laborum ut.', 'enim-quas-delectus-vitae-delectus-sint', 'Nesciunt quia eos numquam blanditiis provident. Illum ab maiores officiis hic ex ut.', 'Accusamus consectetur quia nam dolorem repellat. Aut quo dolorem voluptates natus mollitia temporibus. Pariatur laboriosam minima molestiae consequatur. Aut omnis reiciendis accusantium eius.', NULL, '2022-02-11 09:55:33', '2022-02-11 09:55:33'),
(2, 1, 1, 'Laborum mollitia reiciendis nemo molestias.', 'labore-consequatur-error-quos-rerum-reiciendis-reiciendis', 'Est at dignissimos quo minus dolorum. Est fugiat ea mollitia ab et blanditiis atque.', 'Animi blanditiis aliquam quia. Illo minima quibusdam odit. Blanditiis neque fugit magnam est. Nesciunt earum qui ut adipisci. Totam assumenda distinctio optio debitis explicabo. Sint quae repellat autem maiores. Earum eius pariatur eos at consequatur quo nemo. Similique ut magnam ratione velit. Sed temporibus debitis libero assumenda.', NULL, '2022-02-11 09:55:33', '2022-02-11 09:55:33'),
(3, 1, 2, 'Dicta animi qui in provident accusantium consequatur.', 'numquam-magni-quidem-tenetur-impedit-quis-enim', 'Voluptas molestiae excepturi temporibus enim nulla. Pariatur itaque aut expedita voluptas est ut. Ea ut ducimus vel et nihil laboriosam nobis. Molestias non ipsam voluptates sit dolores odio.', 'Suscipit eos odit architecto repellat omnis voluptatem. Explicabo similique asperiores alias sed et enim voluptas. Aut architecto esse maiores voluptatem. Dignissimos et nulla nulla nam nesciunt quibusdam esse. Aut ex facere qui. Beatae odio fuga tenetur earum dolores quisquam. Est numquam fugit ab architecto qui. Doloremque alias aliquam officia dignissimos ex repudiandae illo. Porro ducimus molestiae maxime porro corporis et quisquam nostrum. Qui maxime quam sed vero nemo. Ipsa maxime necessitatibus sunt officia et reprehenderit. Aut enim molestiae dolorem eligendi minima dolores qui.', NULL, '2022-02-11 09:55:33', '2022-02-11 09:55:33'),
(4, 1, 2, 'Similique aut praesentium sequi quibusdam nobis.', 'dolores-officiis-consequatur-molestiae-sed-ut', 'Ex recusandae quas quasi corrupti quasi. Eveniet ipsam fugit sunt qui vel. Eius in nesciunt corrupti eveniet eum illum inventore. Amet aut a tempore qui.', 'Sint officiis omnis quibusdam facere voluptatum eveniet. Dolorum saepe voluptatum numquam libero dolorum. Est aut aut nesciunt voluptas iusto labore eligendi expedita. Assumenda consequatur minus cupiditate qui laborum. Consequatur itaque in incidunt non eos dolore repellat. Velit nihil eligendi qui id. Architecto cumque quisquam incidunt hic quia ut nam.', NULL, '2022-02-11 09:55:33', '2022-02-11 09:55:33'),
(5, 2, 2, 'Ipsa neque cupiditate.', 'molestiae-voluptas-sed-numquam-dolores', 'Ipsum velit fuga modi voluptatem necessitatibus. Aut voluptate harum officia. Quibusdam nisi ut nulla. Officiis quo dolorem et tempora dicta.', 'Eligendi autem sed iusto quo iste totam. Eaque est dolorem saepe est. Cum eligendi molestiae cupiditate aperiam. In qui sint ut id commodi. Dignissimos harum sequi sed. Non consequatur voluptatem asperiores sequi aperiam. Id quos quia et dicta. Pariatur voluptas ipsa voluptate quisquam. Qui est consequatur amet voluptatem voluptates autem modi eum. Nostrum earum fuga qui libero cum. Rerum nihil consequatur architecto doloribus aperiam.', NULL, '2022-02-11 09:55:33', '2022-02-11 09:55:33'),
(6, 1, 1, 'Quia ducimus repellendus.', 'corporis-enim-voluptatum-amet-soluta-fuga-architecto', 'Architecto velit aliquam est vel. Commodi eaque eius aspernatur. Numquam id aliquid at expedita ut ut suscipit. Hic eum vel tenetur veritatis sed. Distinctio similique at voluptatem eius.', 'Eos aut similique nesciunt et voluptas eum nam sit. Voluptates recusandae alias perspiciatis unde in. Rem a quam consequuntur sunt sunt. Sed fugiat quia et dolorum voluptas eveniet ut. Saepe sed aperiam aut sint est inventore at. Itaque ducimus nihil eos ut deserunt facere qui. Ea perspiciatis nostrum amet sint quis dolorem quia repudiandae.', NULL, '2022-02-11 09:55:33', '2022-02-11 09:55:33'),
(7, 2, 1, 'Reiciendis hic culpa odit animi.', 'nihil-et-voluptatum-voluptatem-sequi-qui', 'Animi quo aliquam eligendi ad. Iusto eum ut velit rerum ut earum. Enim et dicta dolorum ea culpa. Aliquam eos tempora enim et id. Accusamus quia voluptates rerum quisquam pariatur amet.', 'Qui voluptatibus similique pariatur labore est a et. Quo molestiae rerum dolorem molestiae nostrum voluptas aut. Voluptatum enim dicta impedit. Libero magnam incidunt ullam. Animi mollitia et laboriosam quod amet.', NULL, '2022-02-11 09:55:33', '2022-02-11 09:55:33'),
(8, 2, 3, 'Quia illo quia consequatur omnis deleniti est quos.', 'voluptatum-nihil-omnis-quae-voluptate', 'Et reiciendis aut qui voluptatum eum. Dolorum sed ex quis delectus et quis reprehenderit. Error aut at error nisi. Quae impedit ab quasi a iusto fugiat corporis et.', 'Cumque exercitationem dignissimos inventore animi voluptate rerum minima. Eligendi aut repellendus repudiandae in. Aut laudantium blanditiis ipsum pariatur. Dolore vero eos soluta velit. Magni vel quas dolor qui occaecati molestiae accusantium. Et sapiente illum eum vel impedit explicabo. Consequuntur doloribus repudiandae et velit consequuntur. Eaque quisquam in iure et nihil. Est quod temporibus pariatur sed ullam tempora odio. Quis autem corrupti numquam.', NULL, '2022-02-11 09:55:33', '2022-02-11 09:55:33'),
(9, 1, 1, 'Et dignissimos maiores.', 'fuga-sunt-sed-vel-repudiandae-nisi-dicta', 'Assumenda nesciunt natus laborum est. Assumenda ducimus aut est consequatur et voluptatem eum. Ut reiciendis aliquam ut dolorem provident et.', 'Ut suscipit officiis et sint possimus. Reprehenderit quos saepe occaecati accusamus mollitia. Aut eos accusantium sint necessitatibus voluptates fugit alias cumque. Culpa qui sapiente repudiandae aut culpa ut. Aut accusantium dolore non. Eaque est amet illum et veniam. Enim molestiae velit aut velit. Et est porro odit eum. Necessitatibus officiis consectetur qui ut.', NULL, '2022-02-11 09:55:34', '2022-02-11 09:55:34'),
(10, 1, 1, 'Quisquam sit optio error voluptate.', 'quidem-qui-quibusdam-nesciunt-ea-ut', 'At tempora ea vitae sit. Non id animi sequi necessitatibus unde. Aperiam architecto veniam voluptas. Et aspernatur reprehenderit saepe molestias accusantium et.', 'Atque eos consequatur officiis veritatis. Velit aliquid quidem consequatur iste. Magni dignissimos neque possimus minus necessitatibus incidunt temporibus. Distinctio incidunt qui veritatis dolore repudiandae libero et. Qui veritatis provident rem saepe.', NULL, '2022-02-11 09:55:34', '2022-02-11 09:55:34'),
(11, 1, 3, 'Omnis omnis repudiandae vel.', 'reprehenderit-aliquid-praesentium-molestiae-distinctio-soluta', 'Quia id facere porro porro sit dolores consequuntur aut. Tempore aliquam molestiae non quis vero est. Suscipit laborum dolorem nihil dolores dicta odit. Voluptatum sint aut nesciunt voluptatem quo.', 'Similique quo minus enim et enim. A tempore reprehenderit quis nobis similique aut laborum. Dignissimos vel molestias omnis dolores rerum distinctio. Pariatur est sunt asperiores dolores quod est. Soluta aut dignissimos ab et occaecati magni. Delectus iure amet veritatis dolorem dolorem ipsum est.', NULL, '2022-02-11 09:55:34', '2022-02-11 09:55:34'),
(12, 2, 3, 'Omnis maxime nisi corporis culpa est libero.', 'fugit-vitae-quae-eos-voluptate-ratione-ut', 'Et accusamus repellat possimus corporis delectus excepturi. Temporibus numquam vitae repudiandae a aut molestiae similique eveniet. Excepturi tenetur quo at blanditiis. Dolores quo sapiente ducimus velit rem asperiores repudiandae.', 'Eius qui aliquam veniam perspiciatis quia inventore error. Quo deleniti optio dolore ratione corporis. Dolores ducimus et aut beatae culpa delectus dolorem. Ea odit ut quaerat delectus nam corporis. Maxime magnam nihil optio. Exercitationem voluptatem iste cum qui.', NULL, '2022-02-11 09:55:34', '2022-02-11 09:55:34'),
(13, 2, 3, 'Minima illum aliquam saepe maxime sit porro non dolores.', 'et-earum-qui-id-non', 'Architecto magni est asperiores debitis. Quia sint est molestiae sed corrupti et enim. Fugiat sed aut placeat eaque. Voluptatem ut sint exercitationem molestias.', 'Sed sunt corporis sit est sunt esse. Et sunt expedita dicta error consequatur assumenda. Ut deserunt id laborum magnam. Vel et perspiciatis ea magnam provident consequatur sunt. Beatae vitae quia magni ipsam sunt blanditiis non odio. Provident officia inventore nihil iure distinctio quas qui.', NULL, '2022-02-11 09:55:34', '2022-02-11 09:55:34'),
(14, 2, 1, 'Repellendus est rerum repellat ut quam quis.', 'soluta-perferendis-maiores-nihil-sequi-dolor', 'Incidunt vel voluptas quaerat voluptatem sed. Quidem et est deleniti sunt. Iusto nulla ut molestiae veniam minima. A doloremque laboriosam ea aut. Rem dolorum voluptatem voluptatem optio nihil.', 'Quod non ipsa et repudiandae molestias officia itaque. Excepturi dignissimos quaerat quam maiores sit. Soluta et tempore esse. Et vitae quis impedit facere sed totam nemo. Voluptatum est eaque optio iste sequi veritatis qui. Ipsum reprehenderit amet sed sunt dolor velit. Itaque quo quia rem incidunt nihil. Qui omnis tempore amet suscipit vitae quidem earum. Dolor soluta debitis ab omnis. Qui officia est impedit qui unde accusantium qui. Nobis exercitationem culpa qui est mollitia soluta a.', NULL, '2022-02-11 09:55:34', '2022-02-11 09:55:34'),
(15, 2, 3, 'Aperiam molestiae vel cupiditate voluptas itaque rerum quasi et et ut.', 'ab-error-in-dolore-architecto-cum-dolorem-in', 'Placeat minima distinctio sequi eligendi eius est repellendus. Praesentium ut provident aperiam aut tempore voluptatem. Ipsam qui repellendus aliquam aperiam voluptatibus veniam labore. Quibusdam id omnis eos eum adipisci unde ipsam. Id debitis cumque aut perferendis molestiae earum qui.', 'Incidunt fuga ullam cumque. Eos et totam autem. Repellendus voluptatibus libero rerum dignissimos eaque ipsa ut. Sit reiciendis placeat sapiente quia. Maiores temporibus est quaerat corrupti omnis adipisci non. Id odit labore doloribus quibusdam sapiente eum neque. Rerum non modi nisi amet sit delectus incidunt. Laboriosam quo architecto sequi blanditiis. Quas quo voluptas consectetur ab corporis non nostrum. Pariatur ullam iure illo unde architecto in. Qui accusamus molestiae qui officiis quia facilis optio. Ipsam voluptas expedita quas ut.', NULL, '2022-02-11 09:55:34', '2022-02-11 09:55:34'),
(16, 2, 1, 'Sapiente sit molestias delectus ut.', 'fugiat-laudantium-voluptas-beatae', 'Est et quibusdam qui magnam consequatur harum. Vitae quo id eos ducimus et suscipit ut. Molestiae id rerum enim sed.', 'Occaecati sit et ea vitae occaecati ducimus exercitationem. Ratione consectetur expedita laborum et ea commodi non. Aut eum sint debitis quis enim veritatis velit. Aut praesentium vitae nihil voluptatem reiciendis ducimus. Corrupti quidem odio minus a. Sed distinctio et accusamus est dolorum iusto. Delectus sit qui voluptatem nihil. Dolores in corporis minus labore. Nisi a omnis et porro veritatis neque magnam ut.', NULL, '2022-02-11 09:55:34', '2022-02-11 09:55:34'),
(17, 1, 3, 'Occaecati est impedit eos non sequi ad consequatur quis nostrum.', 'omnis-qui-illum-commodi-aut-ab', 'Iusto vitae harum ut tempora totam qui ad. At aspernatur non delectus alias quis. Aut minus molestias iusto eaque iste aliquam. Qui ut earum nesciunt autem incidunt dolorum sequi. Harum architecto ea deserunt dolores provident consequatur repellat architecto.', 'Quasi aperiam mollitia aut culpa. Pariatur quasi quae quo nisi error et at. Eos sint esse atque perspiciatis error est. Doloremque nulla id quidem porro nisi iure laboriosam. Fugit reiciendis similique blanditiis sunt incidunt doloremque odio.', NULL, '2022-02-11 09:55:34', '2022-02-11 09:55:34'),
(18, 1, 2, 'Nihil provident minus.', 'fugiat-consequuntur-sunt-harum-eos-blanditiis', 'Dolores maiores placeat aliquam porro voluptate unde. Sunt autem pariatur voluptatem voluptas ut sed optio. Sit sint aperiam natus perferendis. Non accusamus facere omnis et cupiditate perferendis labore dignissimos. Explicabo molestiae ut harum et dolores quibusdam doloribus.', 'Cum itaque quia nihil eum. Ex rerum ipsum occaecati vel incidunt. Illum incidunt similique est nam sint vel enim. Nemo ab eos dicta corrupti sed rerum labore repellendus. Et maiores et et itaque est rem.', NULL, '2022-02-11 09:55:34', '2022-02-11 09:55:34'),
(19, 2, 1, 'Maiores consequuntur cupiditate amet sit eos quaerat libero alias aut.', 'natus-amet-ut-eaque-distinctio-fugiat', 'Accusamus rerum non quia. Laudantium ea quasi odit et non et ipsa itaque. Eius iure qui sit consequuntur labore aperiam ea soluta. Rerum eos debitis quos at provident quis.', 'Amet inventore laudantium dignissimos sed necessitatibus qui. Iure facilis nulla repudiandae consequatur et nostrum vel. Perferendis sint repellat fuga minus delectus distinctio provident ducimus. Praesentium dolor veritatis voluptate hic minus. Rem consectetur et perferendis esse autem.', NULL, '2022-02-11 09:55:34', '2022-02-11 09:55:34'),
(20, 1, 1, 'Quidem omnis quia qui ut enim iure.', 'sequi-qui-iure-voluptatem-consequatur-amet-harum-perferendis', 'Eligendi rerum error impedit laudantium repellat eligendi. Quasi harum excepturi minima pariatur nulla cupiditate voluptatem voluptatibus. Quia quam iusto ea cumque ut beatae inventore.', 'Qui explicabo perferendis dolorum nam doloribus qui. Sed corrupti cumque molestiae recusandae quibusdam et ab velit. Consequatur iure enim doloremque consequatur dolor eaque. Repellendus odio repellat consequatur officia doloremque mollitia. Qui ducimus assumenda ipsum et et. Cumque voluptates soluta et. Molestiae blanditiis quia eos libero in pariatur sunt. Accusantium qui ratione quidem perspiciatis voluptatem magni sunt velit. Mollitia ab occaecati omnis.', NULL, '2022-02-11 09:55:34', '2022-02-11 09:55:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dylan Crist', 'samir63', 'alycia15@example.org', '2022-02-11 09:55:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Tgv0Djm6WW', '2022-02-11 09:55:33', '2022-02-11 09:55:33'),
(2, 'Blanca Ferry', 'nedra.kihn', 'xparker@example.com', '2022-02-11 09:55:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UW5zx30Ylg', '2022-02-11 09:55:33', '2022-02-11 09:55:33'),
(3, 'Luigi Zieme', 'spencer.helga', 'garrett40@example.com', '2022-02-11 09:55:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mMafpO5Cqf', '2022-02-11 09:55:33', '2022-02-11 09:55:33'),
(6, 'ferdi', 'muhammad ferdiansyah', 'mtskrmmarzuki67@gmail.com', NULL, '$2y$10$BNc9rTE11di3Jfdj40OU6.yUhHi9Cn.zpvxwDLzf8fYA66JO9gaSe', NULL, '2022-02-11 14:13:29', '2022-02-11 14:13:29'),
(9, 'firdhi', 'firdhi al', 'firdhi@gmail.com', NULL, '$2y$10$9bmiuWExkE4sk1oI0S7Pr.orzrrmI0sC6ELaR6Nh1QTZNl01N/gxS', NULL, '2022-02-11 22:32:30', '2022-02-11 22:32:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
