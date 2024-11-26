-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 25, 2024 at 09:49 AM
-- Server version: 10.11.9-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u466525280_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `major` varchar(255) NOT NULL,
  `photo_url` varchar(255) DEFAULT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `full_name`, `email`, `major`, `photo_url`, `comment`, `created_at`, `updated_at`) VALUES
(3, 'Rayed Alshoubaki', 'rayedalshoubaki@icloud.com', 'Data Analyst', '/assets/img/profile.jpg', 'I would like to thank the skilled developer who worked on developing the kournfula.com store website. He demonstrated excellent responsiveness throughout the project and was attentive to all our requirements. Thanks to his expertise, we achieved a user-friendly and attractive site that beautifully reflects our brand\'s identity. Highly recommend working with him.', '2024-11-17 07:49:17', '2024-11-17 07:49:17'),
(4, 'Osama Hamdan', 'info@whitemediadv.com', 'Marketing and Advertising', '/assets/img/profile.jpg', 'I want to extend my appreciation to the developer who worked on building our Arak Perfume website. His prompt responses and depth of expertise were evident throughout the project. The end result was a beautifully designed, intuitive site that truly represents our brand and products in a captivating way. I highly recommend him for anyone in need of a skilled and professional developer.', '2024-11-17 07:55:10', '2024-11-17 07:55:10');

-- --------------------------------------------------------

--
-- Table structure for table `educations`
--

CREATE TABLE `educations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `institute` varchar(255) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date DEFAULT NULL,
  `certificate_link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `educations`
--

INSERT INTO `educations` (`id`, `title`, `institute`, `from_date`, `to_date`, `certificate_link`, `created_at`, `updated_at`) VALUES
(2, 'Information Technology Engineering - Machine Learning Engineering', 'Syrian Virtual University', '2020-01-02', '2025-06-17', NULL, '2024-11-17 09:19:13', '2024-11-17 10:04:55');

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `title`, `source`, `from_date`, `to_date`, `created_at`, `updated_at`) VALUES
(2, 'Full Stack Web Developer', 'Freelance', '2020-06-17', '2024-01-17', '2024-11-17 09:20:36', '2024-11-17 09:21:27');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000001_create_cache_table', 1),
(2, '0001_01_01_000002_create_jobs_table', 1),
(3, '2024_10_26_131608_create_pages_table', 1),
(4, '2024_10_26_131609_create_projects_table', 1),
(5, '2024_10_26_131609_create_sections_table', 1),
(6, '2024_10_26_131610_create_services_table', 1),
(7, '2024_10_26_131610_create_skills_table', 1),
(8, '2024_10_26_131611_create_clients_table', 1),
(9, '2024_10_26_131611_create_education_table', 1),
(10, '2024_10_26_131611_create_experiences_table', 1),
(11, '2024_10_26_131612_create_settings_table', 1),
(12, '2024_10_26_132227_create_project_service_table', 1),
(13, '2024_10_26_133121_create_sessions_table', 2),
(14, '2024_10_26_133429_create_users_table', 3),
(15, '2024_10_26_134607_create_personal_access_tokens_table', 4),
(16, '2024_10_26_135415_add_is_admin_to_users_table', 5),
(17, '2024_11_15_134113_add_image_url_to_services_table', 6),
(18, '2024_11_17_182743_create_telescope_entries_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `path`, `content`, `created_at`, `updated_at`) VALUES
(1, 'home', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'admin-token', 'fbf5cf2bf12cc404ce63be423543e03ed14723d6d8a9fbed92349366d2b02bf2', '[\"*\"]', NULL, NULL, '2024-11-14 09:22:26', '2024-11-14 09:22:26'),
(2, 'App\\Models\\User', 1, 'admin-token', '81a64d41f25c8b416f19bb35894f1e000a194cc77a56679a0fd71f832137b3f5', '[\"*\"]', '2024-11-17 17:44:58', NULL, '2024-11-14 09:25:35', '2024-11-17 17:44:58'),
(3, 'App\\Models\\User', 1, 'admin-token', '95dbdc096b2ff267be0d892f677e79a6c2d7f21f7780c084b8f232dba8231c03', '[\"*\"]', NULL, NULL, '2024-11-18 00:16:53', '2024-11-18 00:16:53'),
(4, 'App\\Models\\User', 1, 'admin-token', 'ef03ed23b690e848fdc9c7106008b6b8549fbb62c21a63e28c45ec0681228b69', '[\"*\"]', '2024-11-19 15:15:01', NULL, '2024-11-19 14:14:53', '2024-11-19 15:15:01');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `quick_info` text NOT NULL,
  `thumbnail_url` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `partners` varchar(255) NOT NULL,
  `project_link` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `techs` varchar(255) NOT NULL,
  `more_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`more_images`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `quick_info`, `thumbnail_url`, `start_date`, `client_name`, `partners`, `project_link`, `description`, `techs`, `more_images`, `created_at`, `updated_at`) VALUES
(7, 'Korunfula Store', 'Korunfula Store is your ideal destination in Saudi Arabia for purchasing rare and meticulously selected products. Our store offers a unique and diverse range of premium items that elevate your daily essentials with a touch of luxury and distinction. From special types of natural soap and beauty products to a curated selection of exquisite spices and authentic coffee. Additionally, we provide extra virgin olive oil and high-quality nuts that add a special touch to your lifestyle. At Carnfola, we ensure a one-of-a-kind shopping experience where authenticity meets superior quality in every product we carefully select for you.', '/uploads/projects/1731789379_Snapinsta.app_355426687_787806892680395_5768282265169923214_n_1080.jpg', '2023-02-16', 'Rayed Alshoubaki', 'Just me', 'https://korunfula.com/', 'Korunfula Store is a specialized e-commerce platform developed to offer a unique selection of rare and premium products such as natural soaps, beauty products, spices, coffee, extra virgin olive oil, and high-quality nuts in Saudi Arabia. The platform utilizes cutting-edge web technologies and frameworks to deliver an exceptional user experience and seamless performance.\r\n\r\nThe frontend of the store is built using HTML, CSS, and JavaScript, with styling and responsive design facilitated by Bootstrap to ensure a consistent and user-friendly interface across devices. Vue.js is integrated to provide dynamic and reactive components, enhancing user interactivity and navigation speed.\r\n\r\nOn the backend, the platform is powered by Laravel, a robust PHP framework known for its high performance, scalability, and security features. Communication between the client and server is managed through RESTful APIs, enabling efficient data exchange and integration capabilities. All customer and product data is securely stored and managed in a MySQL database, ensuring reliable data integrity and fast query performance.\r\n\r\nKorunfula Store combines modern web development best practices to create an engaging, efficient, and high-performing shopping experience for its customers.', 'html,css,js,bootstrap,vue.js,restfull-api,laravel,mysql', '\"[\\\"\\\\\\/uploads\\\\\\/projects\\\\\\/1731789379_Snapinsta.app_355426687_787806892680395_5768282265169923214_n_1080.jpg\\\"]\"', '2024-11-16 17:36:19', '2024-11-16 17:36:19'),
(8, 'Arak Perfume Store', 'The perfume store in the UAE offers a luxurious and exclusive experience for fragrance enthusiasts from around the world. The store is distinguished by its wide range of premium and innovative perfumes that blend traditional Arabian and oriental heritage with the latest global trends. The collection features a variety of scents, including rich oriental perfumes, musk, amber, as well as renowned French and international fragrances, catering to all tastes. The store also offers bespoke perfume services tailored to each customer’s unique personality and style. With high-quality products and exceptional service, it is the ideal destination for fragrance lovers seeking an extraordinary experience in the world of captivating scents', '/uploads/projects/1731789867_FireShot Capture 0054 - Arakperfume - arakperfumes.ae.png', '2024-05-07', 'Osama Hamdan', 'Just me', 'https://arakperfumes.ae/', 'This project is an e-commerce store for selling perfumes, developed using the latest web technologies to ensure a seamless and integrated user experience. The front-end interface is built using HTML and CSS to provide a structured and attractive design, enhanced by JavaScript and the robust Vue.js framework, which ensures dynamic updates to the user interface without needing a full page reload.\r\n\r\nThe back-end of the application is developed with Laravel, a powerful PHP framework that provides a strong structure and facilitates the management of e-commerce operations, including user registration, authentication, product management, orders, and payments. MySQL is used as the database management system to ensure efficient and secure data storage and retrieval.\r\n\r\nThe connection between the front-end and back-end is handled through a RESTful API, enabling fast and secure data transfer between the client and server, and providing flexibility to integrate with different applications or external services as needed. This technical stack ensures a fast, secure, and user-friendly experience, with high scalability and maintainability for future enhancements.', 'html,css,js,vue.js,resfull-api,mysql,laravel', '\"[\\\"\\\\\\/uploads\\\\\\/projects\\\\\\/1731789821_FireShot Capture 005 - Arakperfume - arakperfumes.ae.png\\\"]\"', '2024-11-16 17:43:41', '2024-11-16 17:44:48');

-- --------------------------------------------------------

--
-- Table structure for table `project_service`
--

CREATE TABLE `project_service` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_service`
--

INSERT INTO `project_service` (`id`, `project_id`, `service_id`, `created_at`, `updated_at`) VALUES
(5, 7, 8, NULL, NULL),
(6, 8, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`content`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `title`, `page_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 'hero', 1, '{\"quote\":\"I build the digital bridges between imagination and reality\\u2014whether through intelligent AI, captivating web experiences, or seamless mobile apps. Every line of code is a stroke on the canvas of innovation, bringing ideas to life.\"}', '2024-11-14 16:18:23', '2024-11-15 05:39:41'),
(2, 'client', 1, '{\"quote\":\"test\"}', '2024-11-14 16:21:41', '2024-11-14 16:21:41'),
(3, 'projects', 1, '{\"quote\":\"Each project is a testament to our commitment to excellence, creativity, and delivering results that exceed expectations. We turn ideas into impactful realities.\"}', '2024-11-14 16:24:16', '2024-11-19 15:13:31'),
(4, 'services', 1, '{\"quote\":\"Bringing your vision to life with precision, creativity, and impact. Our portfolio services showcase not just projects, but stories of success and innovation.\"}', '2024-11-14 16:28:04', '2024-11-19 15:11:40'),
(5, 'work-together', 1, '{\"quote\":\"Collaboration drives success. Let\\u2019s partner to bring your ideas to life and create lasting impact, together.\"}', '2024-11-14 16:31:49', '2024-11-19 15:15:01');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon_code_html` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `icon_code_html`, `content`, `image_url`, `created_at`, `updated_at`) VALUES
(7, 'Build AI System', '<i class=\"bi bi-stars\"></i>', 'Bring your digital experience to life with custom AI solutions. I design and implement AI models tailored for websites and apps, ensuring they meet the unique needs of your project. From intelligent recommendation systems to natural language processing features, I can help you leverage cutting-edge AI to enhance user interactions and automate processes. Additionally, I offer AI API integration services, allowing your applications to connect seamlessly with powerful AI models. Whether you need predictive analytics, conversational AI, or image recognition, my solutions are built to be scalable, efficient, and ready to evolve with your business. I also specialize in end-to-end AI system development, covering everything from data collection and preprocessing to model training, deployment, and maintenance. My approach involves closely collaborating with clients to understand their business goals and identify opportunities where AI can deliver value. By adopting an agile development process, I ensure that your AI solution is flexible and adaptable to changing requirements. Beyond technical implementation, I provide comprehensive documentation and training to help your team understand and manage the AI systems effectively. This empowers your organization to make the most of AI technology and stay ahead of the competition. Whether you\'re looking to build a chatbot, an advanced predictive model, or any custom AI solution, I\'m here to transform your vision into reality.', '/uploads/services/1731679385_machinelearning.jpg', '2024-11-15 11:03:05', '2024-11-15 11:03:05'),
(8, 'Web Development', '<i class=\"bi bi-layout-text-window-reverse\"></i>', 'I offer complete web development services to build all types of websites, from simple landing pages to complex web applications. Utilizing modern frameworks and technologies, I create websites that are fast, responsive, and tailored to your specific needs. My expertise spans front-end and back-end development, ensuring that every aspect of your website is optimized for performance, usability, and scalability. Whether you need an e-commerce platform, a corporate website, a personal blog, or a custom web solution, I have the skills to bring your ideas to life. I focus on creating engaging user experiences, implementing intuitive designs, and integrating all the necessary features to meet your business goals. Additionally, I ensure that every website I build is secure, SEO-friendly, and easy to maintain. With a deep understanding of both user experience (UX) and technical requirements, I can help you create a web presence that stands out and delivers value to your audience. My development process is collaborative and transparent, keeping you informed at every stage to ensure the final product exceeds your expectations.', '/uploads/services/1731680461_web-development.jpg', '2024-11-15 11:21:01', '2024-11-15 11:21:01'),
(9, 'App Development', '<i class=\"bi bi-app-indicator\"></i>', 'I provide comprehensive app development services for both iOS and Android platforms. Whether you\'re looking to build a native app, a cross-platform solution, or a progressive web app (PWA), I have the expertise to bring your vision to life. By leveraging frameworks such as Flutter and React Native, I ensure that your app is fast, responsive, and provides a consistent user experience across devices. My app development process starts with understanding your business needs and translating them into user-centric designs and robust functionality. I prioritize performance, security, and scalability, making sure your app can grow alongside your business. From ideation to deployment, I handle every stage of development, including UI/UX design, backend integration, and testing. In addition, I offer post-launch support and maintenance to ensure your app remains up-to-date and performs optimally. Whether you\'re aiming to build a utility app, a social platform, an e-commerce solution, or anything in between, I am here to help you create an app that not only meets but exceeds your users\' expectations.', '/uploads/services/1731680562_wp9517064-app-development-wallpapers.jpg', '2024-11-15 11:22:42', '2024-11-15 11:22:42');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0EhAYfhZ1qPhVmlYqQCkw52sT9AQdQHRHMALgqoX', NULL, '35.165.215.140', 'Go-http-client/2.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid3dNRkJwM25oNnBOdkZkRjF6SVlOeUpDRWlrNU50akk5em1rTUxaaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732504576),
('0vcvhbf8jzfbdUE1jIMgUDMWyqgbC1f1XyRmIdMj', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNW9SZlc3ZGNXdEdOdW1wd2dxUnBKNkJPMFcxQnVRTmRDSU1pYzZyNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd29yZHByZXNzL3dwLWFkbWluL3NldHVwLWNvbmZpZy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732510138),
('10GBFsKG2NXFtJ2YvtWnpu8hd1jQ9xUFqOIJCPyv', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiem1xWFNwNmtNakxoY3pMNkdubGFwS0dhU1h0eGQzbzdRczdyRTVwOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd3AtYWRtaW4vc2V0dXAtY29uZmlnLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732507048),
('197QThGBNkiXhhFPHmd0MQbrZzcvT4mwqCmben8v', NULL, '117.62.235.53', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiamZZMzJKa2FielpLbjZzYWEweGQ4dWZJUXBVUFJMQnJxZXMzNGZITiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vd3d3Lmhhbmktc3VsYWltYW4uY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1732526185),
('2K46TEUiKc4jWd03h7xjwiqRYS1dd2GZ2YqC2RMe', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV1hpWTR6OWR5OG9pTGc5bmFsdVpvUGtDWFcyN1Y1NkJvb3FKa3NrUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd29yZHByZXNzL3dwLWFkbWluL3NldHVwLWNvbmZpZy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732478091),
('3et5wZ3tclhxGBWS1TwKnEvVty1hHAB1Rb3BIR5F', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaGlibnNNb2V1T2R1OGlFSEN5UVNWVGJobUZtTXB6N1k1cEVGSkMzTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd3AtYWRtaW4vc2V0dXAtY29uZmlnLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732421164),
('3NlaXaflBOnJuYAXyoa6GpzrzMXQ42dsmVbJcWas', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNFFnb3ZlbTh2SFFsVmowNlFvRjRhVjRObW5IYUxpMVZCQ0poVUY2RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd29yZHByZXNzL3dwLWFkbWluL3NldHVwLWNvbmZpZy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732444651),
('4KGg0YXtN4e4mhok87q3sBohIGEVuFE3FOtFxbyv', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVVg5OGFIZEZCeTMycmlzQ3VEaDNwYVFMeVpyRll4QjR3b3lHcXg2RCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd29yZHByZXNzL3dwLWFkbWluL3NldHVwLWNvbmZpZy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732484945),
('4mI6NtnqKWh2vvGgUCMo4fouWNglSsEQjvYSPD38', NULL, '35.165.215.140', 'Go-http-client/2.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY1ZUVHAzNHBZdHhBR0dJUlpnVzF0RGpZZnNScXpPb0paUWZpa0JXbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vd3d3Lmhhbmktc3VsYWltYW4uY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1732504576),
('5MoKcPeXQY4T5sJ4L4AMPZza0gFXjzvTA3S2qxog', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWWU5YkR3SDBJVmNXa2pRWGhyeklLTm5QWU5yOWJZMm1DcW51YVJxTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd29yZHByZXNzL3dwLWFkbWluL3NldHVwLWNvbmZpZy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732444725),
('74HLHDYZDZXkkSv8UVnHZU5pY9vnCVTDazhx782Z', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZTg1V25YTnVSaVBoV3V4VG5weTdLOTJPN2ZjaHRSenF4T3VpZHlJaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd3AtYWRtaW4vc2V0dXAtY29uZmlnLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732444573),
('7zsWbndRzgQ5poOtM19dLqHVb6YaOAHKgdFn6Gd8', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOFB1aTZGSkNaNXZDV2k1djNQQ1dHVDlrZzRxYzYwOTZFdUVQWFJYQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd29yZHByZXNzL3dwLWFkbWluL3NldHVwLWNvbmZpZy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732476071),
('968UJTtZh9eiWG0iPOjNCfFNTp7VHQnwv0qyXvsa', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOVJqclJBTjdjeTVPS0pHbE1NQnNhRUV4SWtTVzZzc0ZPMWxFS2pYTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd3AtYWRtaW4vc2V0dXAtY29uZmlnLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732414745),
('acrfS3VLdHu3f1EjmQ7mVeqAolLHHL2VFZrv0acp', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibkVQNERyeUpZMG5OdkV2aUVhcTZLNUxrMkdiVTBPZnZtV0ZQNmhGRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd3AtYWRtaW4vc2V0dXAtY29uZmlnLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732435540),
('aRFxuhrOra9zHP3WDeEB2iizG3Azdfp4yua841rd', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVW1JaFl4YmdNSXJYV2ZQYkR5ekp0NkZ0OWpXVk52SkRPUEZHMnM4WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd29yZHByZXNzL3dwLWFkbWluL3NldHVwLWNvbmZpZy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732454475),
('B1D0jm21xdEVoUKa1qvuSwAW97QOmEDmKfZBbjql', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNzFEb0RTNFlhdkkxTnBxSWk1SEN0cnZHdThTemVOaGoyd0NySHpKaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd3AtYWRtaW4vc2V0dXAtY29uZmlnLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732478145),
('bGihxeFSOq5X0SpMgGgbQ7WeI2nW8vJutflYFzoj', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQTVncTI4aWFYV01WTnFXY1ZsZWlKUkpUTGR5OGFmQ0syTEhqRHN5TyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd29yZHByZXNzL3dwLWFkbWluL3NldHVwLWNvbmZpZy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732454464),
('bnIdiLTNJe6yu5isc141Pbr7d4rL3GLpiC1qlh2j', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMktVVnBRUWhpakpiRzIzQ0duSG1yY0NQSVRCS1RwUmtPbnJPblpYRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd3AtYWRtaW4vc2V0dXAtY29uZmlnLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732476137),
('buWGmXmRZSgSsDEL1LJ0zH5cSBMM7JprS35z0YuF', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQUhwMTd3elN1WkZnZE1RZnZldHlzYWNiRkk5VVJVMFd4bXlndjNrRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd3AtYWRtaW4vc2V0dXAtY29uZmlnLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732510120),
('C3ksqFt7jN8UaW8n4CLEvl4X4UwzL72bqBfHFegP', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3NhZ3Y5eUZzMWtBZEVRZDl4Rlg5QTBvbkVaN0Vtb1gyaG9kQVlXcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd3AtYWRtaW4vc2V0dXAtY29uZmlnLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732524559),
('c50cqh8e1WUre58HXDlWjEOEkRlWRVf9q3YR7vzb', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWh4SW5yc2lsOHpjemdSVUxOVFVQOUxjeGtYVnV1TW1VUVcxNXh4aCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd29yZHByZXNzL3dwLWFkbWluL3NldHVwLWNvbmZpZy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732464696),
('cH3k5sUwbY54HgnOsAXxdNhZBGNwuWoe3Q2GINHQ', NULL, '52.167.144.207', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaGhTQ1RJVUJRUk9mWFVtUUVBRm5VRkJBS3ZFako3VERFM3E0RGdVTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732483395),
('DAcvVRRL7IlCQmWnqXO61R9vr9FQ42Hl4COeDkZg', NULL, '35.165.215.140', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/124.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT3RqYzYwMXVFVUlIWVJRUDhyZ3lNVGoydXhFcnBNVjlWeUJKRklxZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732504577),
('dBsvBGFWUvkPNOTc3gAnx4U6Zmesw1QNM8Ozq2IZ', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoienM3TXM5WXAxVWVqb3d6dXVwNndOcDNjUWNuU3U5bVl1SU9SR3A3cyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd29yZHByZXNzL3dwLWFkbWluL3NldHVwLWNvbmZpZy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732456352),
('dCpCgB5EGf4XKRfmgoGwzlMxRiTqMtLk320VyIVG', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYTlUbjQydmlKZDlGUEJZbk9DMlJLWURzbDdCbmltV01wSWpHZDlzdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd3AtYWRtaW4vc2V0dXAtY29uZmlnLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732429468),
('DWDXEjtq1ygxTzd26JGqW1QThFnZn8bqkrG7dNVm', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaU10RnpOamhQM2t6QlhmeW9TdFdsVXZwZTNoaVhMYnoxMHFXdkJ6biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd29yZHByZXNzL3dwLWFkbWluL3NldHVwLWNvbmZpZy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732429462),
('DZAq3KCO0d5m5uPZ0VjciHwHM77s3j6N35PCp3VQ', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaDJOUEowZ3Awc1VsMWYyb1hudEpsT0dYaU5DeDBRd0FIZENTQ3B6byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd29yZHByZXNzL3dwLWFkbWluL3NldHVwLWNvbmZpZy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732435550),
('EInuFZpCRrmnNZpbNCjJtOiHds3C2duqWpZcgaFd', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRDVySTdwRWhBcWF2clhIdGM1SVNVelB1Q1N2QjVIaW1LcTdLZ0pkMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd3AtYWRtaW4vc2V0dXAtY29uZmlnLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732484830),
('eL47sZlvEN01WDJqFnCa5bWkxCxP14UxboVVacRc', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWUlzNkxHamtIbUo1RGxuZU9YRlJGTkVHMm5GQ0xKeHJ1bDBYQ2JRQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd29yZHByZXNzL3dwLWFkbWluL3NldHVwLWNvbmZpZy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732484785),
('emAs3SjdCdqnzU4qDzhko8LZQz8CNmCiyOW65TbL', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaTJDQVVIb3VSNHd2VXptZ2ZQM1dpMEdoejc0RkE4WnFsUUoyQUR4cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd3AtYWRtaW4vc2V0dXAtY29uZmlnLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732454389),
('ESYtyiQjWbOodvp5jxZ7Xi6wf097YO1h4SrsCJl7', NULL, '203.33.203.148', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZkJjRXdRRkRUUFE4bHAyVlVMQXpPZUhJZExDVFp3YjBLMUlScVNFSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vd3d3Lmhhbmktc3VsYWltYW4uY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1732405008),
('F0dBzLmXwvf79GlEoZnhFatFyWwlDSDQQ0Hsv8pi', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSVN5cERUejNCbUZ4UVFsN2xjNll6RlhJUUplTVZOdkVVZXhXSlVUUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd29yZHByZXNzL3dwLWFkbWluL3NldHVwLWNvbmZpZy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732524628),
('FAZUF4cOVleaVs0V4LOGJUREw3IrQhCjKfUe65fY', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibWM0Zmx1MEhVYlhZQVhxd1hqbFFOM0RiR0lzUVo2c0lacFlpcW1WViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd3AtYWRtaW4vc2V0dXAtY29uZmlnLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732484848),
('ffK2Fu2wPTM9gCqu8G4rSmQXa9dT1dY0ucJ8TdhT', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUDB5WGNXWVZBeHJVaXp2Y1RFSjZKWHhhQmVFQWxYdjF3bGMxM0JYaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd3AtYWRtaW4vc2V0dXAtY29uZmlnLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732435560),
('FfX1tJlYTWSSVCjuJEz8j2sU0Z5BZetmtcTryR5o', NULL, '46.17.174.172', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:98.0) Gecko/20100101 Firefox/98.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOXJoWHNIdWlJalBySGFRczBvNVZjMzNZcTR1Q2Rwa3R4WmhqQkp2ZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732503200),
('fpGcc8XuXByAc9KugQDcMBKxlErQBi9tTddZr5F9', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUDhrV2VtZm5WcjBoTFkzUndzY3gxYjVpT0pVNGVXYXhZY2xCakdqUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd3AtYWRtaW4vc2V0dXAtY29uZmlnLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732456234),
('FqF8RKSqTYojQn9wJhGue64hX5CoUFPDLjOVjXLZ', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNHdvOERIM0FZbkgzUE41dkl1UEZOcFVVZXRreklPa2RlN05lNFcxdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd29yZHByZXNzL3dwLWFkbWluL3NldHVwLWNvbmZpZy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732414778),
('fVde1ZkgsyVfg8JZohWTh17jjRjWUvwvkoFVWLNV', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0Ewb1p3enRmaHcxMzV4YnJZWmJUVFRCa0FjcFhWd0F3b2ViMjVibiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd29yZHByZXNzL3dwLWFkbWluL3NldHVwLWNvbmZpZy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732524559),
('gIEbTE9tWeTpSKqeJv6YmmnXmuov4mXEBt4lzHhd', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia3RiNnJiZFozblEweGw4dExySDlSMzduT0hWWDRYVzJ1ZncwZlViYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd29yZHByZXNzL3dwLWFkbWluL3NldHVwLWNvbmZpZy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732456369),
('goAjjBDBzqBT6ynrAn2IJ1E3xnqaErGI2KOS5cnz', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMEg1dktieHV4Y0tuVENLdUlvU3psWnJ1dGgyWkloU0NEd09mTGlMUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd3AtYWRtaW4vc2V0dXAtY29uZmlnLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732476083),
('I2fUKP2ZPJXllSKqv2IJtzBPdOMZYG1gjltGLFP1', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZWtvWGw1aENvZHFycWRvQ1B5THNFTm9iUDU0NEMwc3FuQUdOb0xERCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd29yZHByZXNzL3dwLWFkbWluL3NldHVwLWNvbmZpZy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732476077),
('J4akOJywConzWhhP7fO6czxOS0PZ8nGdTNHthEyj', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRTJuNDRpTzBBZms2ZjNWd094SmZpVDdlSHdsZnpnSkVLYWZiR1B4aCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd3AtYWRtaW4vc2V0dXAtY29uZmlnLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732492816),
('J7WjAqYREjdputv6QNmNSlCrrkTYkFYnHPjpzxJW', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVnp4Wm1RM2xXdGtpR1MwU050U21MSWpNd3EzUGhFbW9GVFpSME1DSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd29yZHByZXNzL3dwLWFkbWluL3NldHVwLWNvbmZpZy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732478221),
('JcFu2FPUrETDJvb7xbV496aibqDdpyoE0abyDCwH', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTU40RGtyTlBUalNJSk0xc2g0U1F0TzNwanpnS09RRkJERzF1R0ZKWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd3AtYWRtaW4vc2V0dXAtY29uZmlnLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732492776),
('JNRbJXE0MeN5DUsgaYvvyC8ImXcThbwBHnBlk7jn', NULL, '2a02:4780:2c:3::5', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTVZPcVVTR1cxNlNJVXk0bzdVRnBwQm5sWlJvbVV3NlYwUGpybXVyRyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1732433752),
('juJymiaqzIVH8nbyV4Hw3ppKQnpBHbQxgz2NJbLw', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic1d6akh5NG5BNXV1blR2OVYzUTBDYVRzYjdYeHR3YWYxTUh2NDJRWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd29yZHByZXNzL3dwLWFkbWluL3NldHVwLWNvbmZpZy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732478073),
('kjkYu6yczs7JuEk7ykrYpPfYRNLCGNwc0cHREADk', NULL, '43.159.145.149', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWXJYWGFseWpXNUZISFo0NUZaeU5VSXJjOU9xQUR3VFkxWmoxM3k0bCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vd3d3Lmhhbmktc3VsYWltYW4uY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1732413938),
('l4zI97fvXdSVSxdNhg9FA44bovwZyxQ0zDcrVZ1T', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVWpta24zNjhZaXZKT0VQRU9KWFlJYUN4OEZiOUE2OWZ3Y1BScUtBVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd29yZHByZXNzL3dwLWFkbWluL3NldHVwLWNvbmZpZy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732510272),
('LGRqxndl1Xyu84g1WgCjANkwWDvQEGxOVt65yk2r', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVXN5c29kOUwwTEdZUU1sWFgyeUZ6bVdERW5IM3ZPeWhpSzA0N3hMVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd3AtYWRtaW4vc2V0dXAtY29uZmlnLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732478157),
('LIWfRpEwWfn9c0bQpMvVLcdfV3XeN5OnkBiure1l', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidk5scGJYdVYyelNaOUxSMTV0WTFJTlA2dEJ6QW9jdVBrT1drMzVYRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd29yZHByZXNzL3dwLWFkbWluL3NldHVwLWNvbmZpZy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732410581),
('LzK4Ha8KL1IUI5xGxQZkCYd9z4ZSxtDDr6bZY5Ww', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT1Ywa09yUWY1cDlqaGFCYzc5cWQzMVRhbjZHNXY5VDhlaFBXSFoxMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd3AtYWRtaW4vc2V0dXAtY29uZmlnLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732429384),
('Mng0aeHjyxlaYanEfY5ntJ6oJG7aOu0oB4tZGI3S', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDlla244N1RmN2g2SE9CMU1Fd283SXp6WWFwQjdmWGljUnlSemY5QyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd29yZHByZXNzL3dwLWFkbWluL3NldHVwLWNvbmZpZy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732492859),
('MoKuoHYDJ3Mt3d2lLBBTskXVJkgwY3khEc9ifbhA', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMHYyZnA4MU1VWnk2Y3dJU29xckhyOUphWlNhS3ByNHk2TktEazluMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd3AtYWRtaW4vc2V0dXAtY29uZmlnLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732444646),
('mu9jxcGDuqZkcB1y4jtWClghP601X1MnNFwXpnl7', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUUdNdG1tQ0ZqRGVDcUFuOWFCTHVKUlY0R3Nsb25YZENIZ1Jnb0RabiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd3AtYWRtaW4vc2V0dXAtY29uZmlnLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732464594),
('mUfyj7s4zG2Xiisx1i74tERLhTY1mSmzlAUKZtpG', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN29lZFc3cnJ6THlWMmhuYzFwRE44ZmxrNUl3RjdsYkMybTdlMWJkcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd3AtYWRtaW4vc2V0dXAtY29uZmlnLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732454367),
('nn8HRNLgjJnngip8OShqxGcJq5fuvToUYKqvUbDG', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMm94aEZySjZtaWhpS1hNWG1VRVBwWFJDc0I2UXo5THNsc29CdGNycyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd29yZHByZXNzL3dwLWFkbWluL3NldHVwLWNvbmZpZy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732435416),
('NOTx0BeHcxHi3XGVyzEQCIderCsc0tWHCD7TpJV7', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWllKQ3V5QzFFbEpoYkFNR1VlenBxTDgwN090QmVUMDFIVzNYV2ZSbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd3AtYWRtaW4vc2V0dXAtY29uZmlnLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732521164),
('O3ZmXazgLqklUJDuevrkiCe1HMuN237BesKvKt2w', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoienJORGdmU3dsZ1Q2YnNJZ255TVpsNHZxSjlMQUY2aDgxbFVaVUgyUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd3AtYWRtaW4vc2V0dXAtY29uZmlnLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732414773),
('ofj9FgGgKsbpKxAuItfQcfK4bsMJPRuZKZW0sgPO', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWTIwb09IVjZrcXZTOFRBNFg1UFAzaUJZcXA5Q2VPRlYzaFp1MzVvVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd3AtYWRtaW4vc2V0dXAtY29uZmlnLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732524541),
('OKgh3VHof2fijUJ3mWExTLnR9cdRXPJZEUulBu7J', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMDlQMWo0cXZDb0FNUTNid1JXRjFJcXpvTGtjcTlicXAxcVBFS0JsMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd3AtYWRtaW4vc2V0dXAtY29uZmlnLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732506923),
('oYacujZqNDqAmVAwne5dD3iWui73BLERJY0kiVOi', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRW1WaUd3SFpQcEFZZ0lGdUNNREk4NUFVQjZ1UjhaTnZBdHlBOTQ5OSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd3AtYWRtaW4vc2V0dXAtY29uZmlnLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732410588),
('sijDiOS1et0LkoArrHWOo1iDwk0ZngmqCse62KeI', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV2dOdERTdVcyQzEzQjdDUDdPZUx4NE45QnhlZXYxdWtDMjBrcUNCRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd29yZHByZXNzL3dwLWFkbWluL3NldHVwLWNvbmZpZy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732429276),
('su7nwpsPvwTEnxn0LL7iPJazyV5kmGIT9y2r0aYk', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiekloNG9oc21tWDVaa3BiSmtURzRpNkVTbmV6eGs0eEp4R3BTeEVGaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd29yZHByZXNzL3dwLWFkbWluL3NldHVwLWNvbmZpZy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732521088),
('th0QnYnsuCN59xUFCeQtSACSDynH8uHoGJgAxMMh', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRVhPeU1MYzBIRHl6cUtac2ZobDI5alZSSVlzR3hHazR5M0diTWFnTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd29yZHByZXNzL3dwLWFkbWluL3NldHVwLWNvbmZpZy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732464566),
('tQr6txVgSRa0OXyBGQzkEzVXO65uwMevsIFgflYZ', NULL, '2607:f298:6:a014::2bf:4623', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibXRDQW9CWU1oTXZwNVljd3IwbWIzbGZxUllTVkE5dUs3WHAzZFV6dSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vcG9ydGZvbGlvL3dwLWxvZ2luLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732484461),
('ty4WMHZiz3TddZrIsY2OsFw0qQbDcMRlX534YCaT', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib2Y1aTJySEpHNjNoV2hhTHNVbkpvNnNKbG1JMHdyTjlPWFhxdUlhTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd29yZHByZXNzL3dwLWFkbWluL3NldHVwLWNvbmZpZy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732414851),
('UGRb5NqYtqRLlhIZ8CfT3f6Wus08GzCg950xjJYr', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUdrMElRMGpSWWtvcEJaaFdFMzVVT25yMk91Vk0xb2xxU295ZmdpRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd29yZHByZXNzL3dwLWFkbWluL3NldHVwLWNvbmZpZy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732421040),
('Uq3Bem7SH9kXXS6tAXrfkXC0MIal6iJWsIM8fYY0', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjBWcWoyZW50NjdkbnNWVXF5QkdFcTNRdWZnaHJOemtLMVY5c3F0SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd29yZHByZXNzL3dwLWFkbWluL3NldHVwLWNvbmZpZy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732521187),
('V88rwwydxfJXH6bCtmyo57UBcdymGXhGcWIQfHDY', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSm1ZakZPOGFaRTNNcmc3c1VwWHlLZ05JMzZYRTlGRk1qRExOcUFPYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd3AtYWRtaW4vc2V0dXAtY29uZmlnLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732521146),
('Vd0smSKczE860n3v1dzIRVNLhN5acSdngjWuGG3v', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTmJKeDJ1eG5yZDFIZ2hwb2JTQ2hsQlY4Z0dvYzh3V3l4ZDEyTnJpZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd29yZHByZXNzL3dwLWFkbWluL3NldHVwLWNvbmZpZy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732492776),
('Vd2puJmC8lMmTcLVkcsQ98GXROBMH1M5S1tGsbuy', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVFdQUmJncDNHNWhxbDlITDluSTM0c0kybXhZdGJaVGhYeElwZ253SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd3AtYWRtaW4vc2V0dXAtY29uZmlnLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732456302),
('VRfLbshFyQjz0m2iayiNg5nxld94pYCzUSBDENW2', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieFZtQW5oU2tzc2JNQWIzRUdUVVhnNXByc2FZb1o4MFRhWHB5SDVHRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd29yZHByZXNzL3dwLWFkbWluL3NldHVwLWNvbmZpZy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732421040),
('wgD0I6RutEVvVHVFBmg4edmcMF4dH9GRjy8IUvNY', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSkxEOFViZmdhazB1Q2Q0Um93MFp0S1ZGN0xYR1ZCYVRiVDVldTNrdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd3AtYWRtaW4vc2V0dXAtY29uZmlnLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732510162),
('WOBFjC4eekh5BGBJP9nU7MxGho5BtdFSeDJrS7Ic', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0lsYllyZHVpV0UxQnQydlhEU0I4Nzdab2xKVXpzWjZ6dFBoYk95WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd29yZHByZXNzL3dwLWFkbWluL3NldHVwLWNvbmZpZy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732506850),
('xHBAcCr5MRiIoCpwNoyWLmlHQY1bLz4gZ9tIdfST', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiczVBSU00T3NDWDF2NkRtYzZkbHlEbExiRGhmSHBLRUM1THpxYkZYaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd3AtYWRtaW4vc2V0dXAtY29uZmlnLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732410486),
('xMganeVJJiDqDVhCdN8PzW67M7fVFh5Owpp1pgqH', NULL, '43.135.145.73', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUlpnNlIzSFQ5N1AyTlhPaUVpVXhoWnM3V0tkVmdrZmp3Qnl4TGlJaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732407094),
('YkVTD7bGiUfjYVh533rvJs44gl17DQOCpOq4Z9yW', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSGdqVDlVeVptbENMem1DMm1vU3dzek8zZXFhVWczc0I3ZWcxWE1BTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd3AtYWRtaW4vc2V0dXAtY29uZmlnLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732421082),
('YQ925r7fZFYuHymotackQBTp1zrHOpWWmZ5z0mXV', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibkR6amdiMnBMTFQxSzBGRE9RSmlBajBIemZ1UUdLVmlTejlBaWZwVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd3AtYWRtaW4vc2V0dXAtY29uZmlnLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732510285),
('yUvns9YSBte5K06UZJrFdKTx6xz7EvB9GiTAqMGg', NULL, '137.184.171.228', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGhGUTV3NVVNQlhpT21LMEVRd2k2aFY4M1hzdUd4TE11aXpnZktxbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732498756),
('YzXuV2s4Mm8XULAH6rltszbRLIuCHZNEClagFlgm', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUtiRDJreFFRanJIUjRVMlBCYUIzeXJUVVpSVWN1bUJCTUc5WXFqZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd3AtYWRtaW4vc2V0dXAtY29uZmlnLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732464566),
('z2CqECqG6z8RWGGc2Vn8AZCVvRlShHyAxZHDaYbS', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicXVsYVcwMUhCalRqa3Q4WnVmZGY0WU1WVlpaNnB1blgyUnN4TTczMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd29yZHByZXNzL3dwLWFkbWluL3NldHVwLWNvbmZpZy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732506994),
('ZT7j1KNGdcGnx6BwTf4bY02xrHms6eBJR3EoXtf2', NULL, '2a06:98c0:3600::103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWklubXJzT1VFdk1wV1NnQUc5T3NhZ01PWExiZnU4QnYxSVM1Q1FXQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8vaGFuaS1zdWxhaW1hbi5jb20vd29yZHByZXNzL3dwLWFkbWluL3NldHVwLWNvbmZpZy5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1732410625);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key_setting` varchar(255) NOT NULL,
  `value_setting` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key_setting`, `value_setting`, `created_at`, `updated_at`) VALUES
(1, 'fullname', 'Hani Sulaiman', '2024-11-14 14:56:09', '2024-11-15 05:37:28'),
(2, 'phoneNumber', '+963932682483', '2024-11-14 14:56:09', '2024-11-15 05:37:28'),
(3, 'email', 'info@hani-sulaiman.com', '2024-11-14 14:56:09', '2024-11-17 17:44:58'),
(4, 'mainMajor', 'Machine Learning Engineer', '2024-11-14 14:56:09', '2024-11-15 05:37:28'),
(5, 'cvLink', 'http://127.0.0.1:8000/api/skills', '2024-11-14 14:56:09', '2024-11-14 14:56:09'),
(6, 'whatsappLink', 'https://wa.me/963932682483', '2024-11-14 14:56:10', '2024-11-19 14:16:56'),
(7, 'facebookLink', 'https://facebook.com/hani.sulaiman.sulaiman', '2024-11-14 14:56:10', '2024-11-19 14:20:46'),
(8, 'instagramLink', 'https://instagram.com/hani.sulaiman.sulaiman', '2024-11-14 14:56:10', '2024-11-19 14:25:05'),
(9, 'githubLink', 'https://github.com/hani-sulaiman', '2024-11-14 14:56:10', '2024-11-19 14:25:05'),
(10, 'linkedinLink', 'https://www.linkedin.com/in/hani-sulaiman-aaa361221', '2024-11-14 14:56:10', '2024-11-19 14:25:05'),
(11, 'address', 'Syria-Damascus-Jaramana', '2024-11-14 14:56:10', '2024-11-15 05:37:28'),
(12, 'experienceStartDate', '2021-01-14', '2024-11-14 14:56:11', '2024-11-15 05:37:28'),
(13, 'personalPhoto', '/uploads/settings/1732026698_me.png', '2024-11-15 04:29:08', '2024-11-19 14:31:38'),
(14, 'cvFile', '/uploads/settings/1732025717_HaniSulaimanResume.pdf', '2024-11-15 04:47:07', '2024-11-19 14:15:17');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `percentage` int(11) NOT NULL,
  `icon_url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `title`, `percentage`, `icon_url`, `created_at`, `updated_at`) VALUES
(2, 'HTML', 100, '/uploads/skills/1731846136_732212.png', '2024-11-17 09:22:16', '2024-11-17 09:22:16'),
(3, 'Css', 95, '/uploads/skills/1731846220_css3.png', '2024-11-17 09:23:40', '2024-11-17 09:23:40'),
(4, 'JavaScript', 80, '/uploads/skills/1731846275_javascript-logo-javascript-icon-transparent-free-png.png', '2024-11-17 09:24:35', '2024-11-17 09:24:35'),
(5, 'Vue.js', 90, '/uploads/skills/1731846327_vue-js-icon.png', '2024-11-17 09:25:27', '2024-11-17 09:25:27'),
(6, 'Ajax', 75, '/uploads/skills/1731846500_image-removebg-preview.png', '2024-11-17 09:28:20', '2024-11-17 09:28:20'),
(7, 'Bootstrap', 70, '/uploads/skills/1731846581_bootstrap-icon-css.png', '2024-11-17 09:29:41', '2024-11-17 09:29:41'),
(8, 'Flutter', 60, '/uploads/skills/1731846723_flutter-logo-5086DD11C5-seeklogo.com.png', '2024-11-17 09:32:03', '2024-11-17 09:32:03'),
(9, 'Dart', 60, '/uploads/skills/1731846778_dart-icon-1021x1024-0q8oyg7c.png', '2024-11-17 09:32:58', '2024-11-17 09:32:58'),
(10, 'Laravel', 95, '/uploads/skills/1731846854_laravel-icon-995x1024-dk77ahh4.png', '2024-11-17 09:34:14', '2024-11-17 09:34:14'),
(11, 'MySql', 80, '/uploads/skills/1731846909_pngimg.com - mysql_PNG23.png', '2024-11-17 09:35:09', '2024-11-17 09:35:09'),
(12, 'Rest Api', 100, '/uploads/skills/1731847004_rest-api-icon.png', '2024-11-17 09:36:44', '2024-11-17 09:36:44'),
(13, 'Firebase', 80, '/uploads/skills/1731847055_1611674.png', '2024-11-17 09:37:35', '2024-11-17 09:37:35');

-- --------------------------------------------------------

--
-- Table structure for table `telescope_entries`
--

CREATE TABLE `telescope_entries` (
  `sequence` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `batch_id` char(36) NOT NULL,
  `family_hash` varchar(255) DEFAULT NULL,
  `should_display_on_index` tinyint(1) NOT NULL DEFAULT 1,
  `type` varchar(20) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `telescope_entries`
--

INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(118, '9d8333c1-0b48-435d-943a-e7d6e45015ad', '9d8333c1-15a8-42ba-975e-6342f8e899b6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `sessions` where `id` = \'CaEjSgTsNyq0ZhEC05LmNzIjRjG5qdS84Nr0fkrg\' limit 1\",\"time\":\"0.46\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\public\\\\index.php\",\"line\":17,\"hash\":\"f48fa5df8fd323d753d03a2e0070fcde\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:25'),
(119, '9d8333c1-1217-4fcc-a339-35102073221c', '9d8333c1-15a8-42ba-975e-6342f8e899b6', NULL, 1, 'view', '{\"name\":\"main\",\"path\":\"\\\\resources\\\\views\\/main.blade.php\",\"data\":[],\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:25'),
(120, '9d8333c1-14ab-4392-bdb0-dc79b3a0c66a', '9d8333c1-15a8-42ba-975e-6342f8e899b6', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `sessions` set `payload` = \'YTozOntzOjY6Il90b2tlbiI7czo0MDoidlVyR2VHRnV3M282OVJmNmRjcENhaW1xblZtSTZMZFhhWU1TQkRWZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=\', `last_activity` = 1731868345, `user_id` = null, `ip_address` = \'127.0.0.1\', `user_agent` = \'Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\' where `id` = \'CaEjSgTsNyq0ZhEC05LmNzIjRjG5qdS84Nr0fkrg\'\",\"time\":\"1.10\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\public\\\\index.php\",\"line\":17,\"hash\":\"8ca748303d971bd62c762f74392caa83\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:25'),
(121, '9d8333c1-14e6-4255-b85d-ae8e616dac7f', '9d8333c1-15a8-42ba-975e-6342f8e899b6', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"Closure\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"connection\":\"keep-alive\",\"cache-control\":\"max-age=0\",\"sec-ch-ua\":\"\\\"Google Chrome\\\";v=\\\"131\\\", \\\"Chromium\\\";v=\\\"131\\\", \\\"Not_A Brand\\\";v=\\\"24\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"accept-language\":\"en-US,en;q=0.9,ar;q=0.8\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IjdrOHdDQWdYaFVFQ3R2NTdBSTZUdlE9PSIsInZhbHVlIjoiOG5wcHVsNzhMRDc2SDhPSXR5S0xGdnVHSVl2OHNTVDQ2QUNNN1dpRlhHbFd0TFZxa0IybC81NnZLNjB3T0hUN281YVc5LzYxcXVJUHErZUZTdi9ybTRtNHdkenR6T2Q2dWYrZmZ3bW8wdFYwcC9jdmwrSUFuZVh1dE53TC93ZEsiLCJtYWMiOiI3NTlmMmE0YTEzZDJmZWM4ZTM3ZGI3MzRlYmU3NjZkZmE1MTM3Y2NiNzQxZmE3ZDgwYmM4NzcxNTJlMzJmNGQwIiwidGFnIjoiIn0%3D; devhani_session=eyJpdiI6ImxZQU1JN3VlRVZnUEgxYm1PTTJTUnc9PSIsInZhbHVlIjoieHJTZVREbHVBZElsaXBuTklDRnY0WVBKYVJaUHg4ZzJUcTRZVGtFcW5PdnJLRDIzamxxeXduY0sxM1M4Z3pPYVQ3SEw1anlIQVlMdVF4S3RDSjV1Q2NTQktUaTVaU2crN0VmQVkvQktXeURoanVGRU94SWphbXh2MmM5WWdGUUUiLCJtYWMiOiIwNzc3ODIyZDY2YWM1OTEyMDdiYTk5YzgwMzlkNjMxODFiMWVjYmEyNTNhMzI1ZGNmMGM0NTc0MTI2MTliZmFmIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"vUrGeGFuw3o69Rf6dcpCaimqnVmI6LdXaYMSBDVf\",\"_previous\":{\"url\":\"http:\\/\\/127.0.0.1:8000\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\resources\\\\views\\/main.blade.php\",\"data\":[]},\"duration\":175,\"memory\":20,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:25'),
(122, '9d8333c2-580b-40f4-a422-680a7c24c535', '9d8333c2-5e7e-45c6-8e1b-1a22723031a2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `settings`\",\"time\":\"0.33\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\app\\\\Http\\\\Controllers\\\\Api\\\\SettingController.php\",\"line\":20,\"hash\":\"9a0c1b1878c6704a2df2ae90c2a24cef\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:26'),
(123, '9d8333c2-5997-4abe-a092-0558011c2468', '9d8333c2-5e7e-45c6-8e1b-1a22723031a2', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Setting\",\"count\":14,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:26'),
(124, '9d8333c2-5da7-442c-b17a-f49956ea6e9c', '9d8333c2-5e7e-45c6-8e1b-1a22723031a2', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/api\\/all-settings\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Api\\\\SettingController@all\",\"middleware\":[\"api\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"authorization\":\"********\",\"x-xsrf-token\":\"eyJpdiI6ImJZam94WHVQWnU3M0RIak9uYlQ2ZUE9PSIsInZhbHVlIjoiM2t5OVA3QTdCdGdnOXNYY0VYYjArWTRSYURic3lKbXVkQUZVTkRnVUtubFVZdFBQUW5zeGpsSWcvazZBckYyY0Z6Wk1IWkEzREUxTzVZaENCUTdGVjh0eTdGdWswcUpVSUFIdTBkOHp1WkNuTWdTY2FxckJKNXRZWS9zL0xWOFYiLCJtYWMiOiJhY2E1NjczNWY1MDg0MzNlNGU2ZWNhM2QzMTlkMDdmZjhkYzI1ODNjMGY5MGUzYWZhMzI4YzA3NDY1Yjc1MmQ1IiwidGFnIjoiIn0=\",\"sec-ch-ua\":\"\\\"Google Chrome\\\";v=\\\"131\\\", \\\"Chromium\\\";v=\\\"131\\\", \\\"Not_A Brand\\\";v=\\\"24\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"x-requested-with\":\"XMLHttpRequest\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\",\"accept\":\"application\\/json, text\\/plain, *\\/*\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http:\\/\\/127.0.0.1:8000\\/\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"accept-language\":\"en-US,en;q=0.9,ar;q=0.8\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6ImJZam94WHVQWnU3M0RIak9uYlQ2ZUE9PSIsInZhbHVlIjoiM2t5OVA3QTdCdGdnOXNYY0VYYjArWTRSYURic3lKbXVkQUZVTkRnVUtubFVZdFBQUW5zeGpsSWcvazZBckYyY0Z6Wk1IWkEzREUxTzVZaENCUTdGVjh0eTdGdWswcUpVSUFIdTBkOHp1WkNuTWdTY2FxckJKNXRZWS9zL0xWOFYiLCJtYWMiOiJhY2E1NjczNWY1MDg0MzNlNGU2ZWNhM2QzMTlkMDdmZjhkYzI1ODNjMGY5MGUzYWZhMzI4YzA3NDY1Yjc1MmQ1IiwidGFnIjoiIn0%3D; devhani_session=eyJpdiI6IjdWSXVKdkpqMXU3eERocE54RzVKYlE9PSIsInZhbHVlIjoiUUNRUkRmL2IwakFzREg5SDh1VTFxanNYWmxYOWpSNS9TcDFDZ0xFaytmME4rdlVDSzQydFdDSW1ueDcyZUxlSnZ6bEJ6dndaNjFhdHhJd0laY0tCb25IMzE5dy8vNGdob3pFWkx6aTBzQkJ6dS93Z1QzUHVXUEtyajFtWE5zeEMiLCJtYWMiOiI4YmJmYjJiMDEwMWM5YWFkNDY1ZmRjZWEzYTU0YjEyZmU2NDE2YjgwODZjYzFiM2U5M2ZjYWFkMzM3ZDI0N2VlIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":200,\"response\":{\"fullname\":\"Hani Sulaiman\",\"phoneNumber\":\"+963932682483\",\"email\":\"hani.sulaiman.2002@gmail.com\",\"mainMajor\":\"Machine Learning Engineer\",\"cvLink\":\"http:\\/\\/127.0.0.1:8000\\/api\\/skills\",\"whatsappLink\":\"http:\\/\\/127.0.0.1:8000\\/api\\/skills\",\"facebookLink\":\"http:\\/\\/127.0.0.1:8000\\/api\\/skills\",\"instagramLink\":\"http:\\/\\/127.0.0.1:8000\\/api\\/skills\",\"githubLink\":\"http:\\/\\/127.0.0.1:8000\\/api\\/skills\",\"linkedinLink\":\"http:\\/\\/127.0.0.1:8000\\/api\\/skills\",\"address\":\"Syria-Damascus-Jaramana\",\"experienceStartDate\":\"2021-01-14\",\"personalPhoto\":\"\\/uploads\\/settings\\/1731659848_me.png\",\"cvFile\":\"\\/uploads\\/settings\\/1731656827_ITE-BPR601-C63.pdf\"},\"duration\":175,\"memory\":20,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:26'),
(125, '9d8333c2-98a2-4e0e-9df4-d6a9a15d7d3c', '9d8333c2-9f32-4819-9204-6867eadf607c', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `sections` where `page_id` = 1 and `title` = \'hero\' limit 1\",\"time\":\"0.92\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\app\\\\Http\\\\Controllers\\\\Api\\\\cms\\\\HeroSectionController.php\",\"line\":13,\"hash\":\"be928a9e728533c6f4d6deef490f8737\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:26'),
(126, '9d8333c2-9a2a-428c-ab33-2a1f846f4614', '9d8333c2-9f32-4819-9204-6867eadf607c', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Section\",\"count\":1,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:26'),
(127, '9d8333c2-9e77-470a-b27b-2f0cb4ae218b', '9d8333c2-9f32-4819-9204-6867eadf607c', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/api\\/hero-section\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Api\\\\cms\\\\HeroSectionController@show\",\"middleware\":[\"api\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"authorization\":\"********\",\"x-xsrf-token\":\"eyJpdiI6ImJZam94WHVQWnU3M0RIak9uYlQ2ZUE9PSIsInZhbHVlIjoiM2t5OVA3QTdCdGdnOXNYY0VYYjArWTRSYURic3lKbXVkQUZVTkRnVUtubFVZdFBQUW5zeGpsSWcvazZBckYyY0Z6Wk1IWkEzREUxTzVZaENCUTdGVjh0eTdGdWswcUpVSUFIdTBkOHp1WkNuTWdTY2FxckJKNXRZWS9zL0xWOFYiLCJtYWMiOiJhY2E1NjczNWY1MDg0MzNlNGU2ZWNhM2QzMTlkMDdmZjhkYzI1ODNjMGY5MGUzYWZhMzI4YzA3NDY1Yjc1MmQ1IiwidGFnIjoiIn0=\",\"sec-ch-ua\":\"\\\"Google Chrome\\\";v=\\\"131\\\", \\\"Chromium\\\";v=\\\"131\\\", \\\"Not_A Brand\\\";v=\\\"24\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"x-requested-with\":\"XMLHttpRequest\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\",\"accept\":\"application\\/json, text\\/plain, *\\/*\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http:\\/\\/127.0.0.1:8000\\/\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"accept-language\":\"en-US,en;q=0.9,ar;q=0.8\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6ImJZam94WHVQWnU3M0RIak9uYlQ2ZUE9PSIsInZhbHVlIjoiM2t5OVA3QTdCdGdnOXNYY0VYYjArWTRSYURic3lKbXVkQUZVTkRnVUtubFVZdFBQUW5zeGpsSWcvazZBckYyY0Z6Wk1IWkEzREUxTzVZaENCUTdGVjh0eTdGdWswcUpVSUFIdTBkOHp1WkNuTWdTY2FxckJKNXRZWS9zL0xWOFYiLCJtYWMiOiJhY2E1NjczNWY1MDg0MzNlNGU2ZWNhM2QzMTlkMDdmZjhkYzI1ODNjMGY5MGUzYWZhMzI4YzA3NDY1Yjc1MmQ1IiwidGFnIjoiIn0%3D; devhani_session=eyJpdiI6IjdWSXVKdkpqMXU3eERocE54RzVKYlE9PSIsInZhbHVlIjoiUUNRUkRmL2IwakFzREg5SDh1VTFxanNYWmxYOWpSNS9TcDFDZ0xFaytmME4rdlVDSzQydFdDSW1ueDcyZUxlSnZ6bEJ6dndaNjFhdHhJd0laY0tCb25IMzE5dy8vNGdob3pFWkx6aTBzQkJ6dS93Z1QzUHVXUEtyajFtWE5zeEMiLCJtYWMiOiI4YmJmYjJiMDEwMWM5YWFkNDY1ZmRjZWEzYTU0YjEyZmU2NDE2YjgwODZjYzFiM2U5M2ZjYWFkMzM3ZDI0N2VlIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":200,\"response\":{\"id\":1,\"title\":\"hero\",\"page_id\":1,\"content\":{\"quote\":\"I build the digital bridges between imagination and reality\\u2014whether through intelligent AI, captivating web experiences, or seamless mobile apps. Every line of code is a stroke on the canvas of innovation, bringing ideas to life.\"},\"created_at\":\"2024-11-14T19:18:23.000000Z\",\"updated_at\":\"2024-11-15T08:39:41.000000Z\"},\"duration\":160,\"memory\":22,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:26'),
(128, '9d8333c2-d77a-469b-84e3-58edbb719e7b', '9d8333c2-de5f-4805-997a-813009a32164', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `sections` where `page_id` = 1 and `title` = \'services\' limit 1\",\"time\":\"0.44\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\app\\\\Http\\\\Controllers\\\\Api\\\\cms\\\\ServicesSectionController.php\",\"line\":17,\"hash\":\"be928a9e728533c6f4d6deef490f8737\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:26'),
(129, '9d8333c2-d97f-4815-ac14-a6d9377407c6', '9d8333c2-de5f-4805-997a-813009a32164', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Section\",\"count\":1,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:26'),
(130, '9d8333c2-dd5d-4cf5-9786-6854afa36828', '9d8333c2-de5f-4805-997a-813009a32164', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/api\\/services-section\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Api\\\\cms\\\\ServicesSectionController@show\",\"middleware\":[\"api\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"authorization\":\"********\",\"x-xsrf-token\":\"eyJpdiI6ImJZam94WHVQWnU3M0RIak9uYlQ2ZUE9PSIsInZhbHVlIjoiM2t5OVA3QTdCdGdnOXNYY0VYYjArWTRSYURic3lKbXVkQUZVTkRnVUtubFVZdFBQUW5zeGpsSWcvazZBckYyY0Z6Wk1IWkEzREUxTzVZaENCUTdGVjh0eTdGdWswcUpVSUFIdTBkOHp1WkNuTWdTY2FxckJKNXRZWS9zL0xWOFYiLCJtYWMiOiJhY2E1NjczNWY1MDg0MzNlNGU2ZWNhM2QzMTlkMDdmZjhkYzI1ODNjMGY5MGUzYWZhMzI4YzA3NDY1Yjc1MmQ1IiwidGFnIjoiIn0=\",\"sec-ch-ua\":\"\\\"Google Chrome\\\";v=\\\"131\\\", \\\"Chromium\\\";v=\\\"131\\\", \\\"Not_A Brand\\\";v=\\\"24\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"x-requested-with\":\"XMLHttpRequest\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\",\"accept\":\"application\\/json, text\\/plain, *\\/*\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http:\\/\\/127.0.0.1:8000\\/\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"accept-language\":\"en-US,en;q=0.9,ar;q=0.8\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6ImJZam94WHVQWnU3M0RIak9uYlQ2ZUE9PSIsInZhbHVlIjoiM2t5OVA3QTdCdGdnOXNYY0VYYjArWTRSYURic3lKbXVkQUZVTkRnVUtubFVZdFBQUW5zeGpsSWcvazZBckYyY0Z6Wk1IWkEzREUxTzVZaENCUTdGVjh0eTdGdWswcUpVSUFIdTBkOHp1WkNuTWdTY2FxckJKNXRZWS9zL0xWOFYiLCJtYWMiOiJhY2E1NjczNWY1MDg0MzNlNGU2ZWNhM2QzMTlkMDdmZjhkYzI1ODNjMGY5MGUzYWZhMzI4YzA3NDY1Yjc1MmQ1IiwidGFnIjoiIn0%3D; devhani_session=eyJpdiI6IjdWSXVKdkpqMXU3eERocE54RzVKYlE9PSIsInZhbHVlIjoiUUNRUkRmL2IwakFzREg5SDh1VTFxanNYWmxYOWpSNS9TcDFDZ0xFaytmME4rdlVDSzQydFdDSW1ueDcyZUxlSnZ6bEJ6dndaNjFhdHhJd0laY0tCb25IMzE5dy8vNGdob3pFWkx6aTBzQkJ6dS93Z1QzUHVXUEtyajFtWE5zeEMiLCJtYWMiOiI4YmJmYjJiMDEwMWM5YWFkNDY1ZmRjZWEzYTU0YjEyZmU2NDE2YjgwODZjYzFiM2U5M2ZjYWFkMzM3ZDI0N2VlIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":200,\"response\":{\"id\":4,\"title\":\"services\",\"page_id\":1,\"content\":{\"quote\":\"test\"},\"created_at\":\"2024-11-14T19:28:04.000000Z\",\"updated_at\":\"2024-11-14T19:28:04.000000Z\"},\"duration\":155,\"memory\":22,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:26'),
(131, '9d8333c3-1bfd-4653-9320-5ea869e9be77', '9d8333c3-22e9-4a65-80eb-4224e2b4d0b9', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `sections` where `page_id` = 1 and `title` = \'projects\' limit 1\",\"time\":\"0.44\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\app\\\\Http\\\\Controllers\\\\Api\\\\cms\\\\ProjectSectionController.php\",\"line\":17,\"hash\":\"be928a9e728533c6f4d6deef490f8737\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:27'),
(132, '9d8333c3-1d86-47fd-9c60-59967542ee38', '9d8333c3-22e9-4a65-80eb-4224e2b4d0b9', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Section\",\"count\":1,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:27'),
(133, '9d8333c3-2220-48dd-b1f0-f5d9177165c2', '9d8333c3-22e9-4a65-80eb-4224e2b4d0b9', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/api\\/projects-section\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Api\\\\cms\\\\ProjectSectionController@show\",\"middleware\":[\"api\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"authorization\":\"********\",\"x-xsrf-token\":\"eyJpdiI6ImJZam94WHVQWnU3M0RIak9uYlQ2ZUE9PSIsInZhbHVlIjoiM2t5OVA3QTdCdGdnOXNYY0VYYjArWTRSYURic3lKbXVkQUZVTkRnVUtubFVZdFBQUW5zeGpsSWcvazZBckYyY0Z6Wk1IWkEzREUxTzVZaENCUTdGVjh0eTdGdWswcUpVSUFIdTBkOHp1WkNuTWdTY2FxckJKNXRZWS9zL0xWOFYiLCJtYWMiOiJhY2E1NjczNWY1MDg0MzNlNGU2ZWNhM2QzMTlkMDdmZjhkYzI1ODNjMGY5MGUzYWZhMzI4YzA3NDY1Yjc1MmQ1IiwidGFnIjoiIn0=\",\"sec-ch-ua\":\"\\\"Google Chrome\\\";v=\\\"131\\\", \\\"Chromium\\\";v=\\\"131\\\", \\\"Not_A Brand\\\";v=\\\"24\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"x-requested-with\":\"XMLHttpRequest\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\",\"accept\":\"application\\/json, text\\/plain, *\\/*\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http:\\/\\/127.0.0.1:8000\\/\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"accept-language\":\"en-US,en;q=0.9,ar;q=0.8\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6ImJZam94WHVQWnU3M0RIak9uYlQ2ZUE9PSIsInZhbHVlIjoiM2t5OVA3QTdCdGdnOXNYY0VYYjArWTRSYURic3lKbXVkQUZVTkRnVUtubFVZdFBQUW5zeGpsSWcvazZBckYyY0Z6Wk1IWkEzREUxTzVZaENCUTdGVjh0eTdGdWswcUpVSUFIdTBkOHp1WkNuTWdTY2FxckJKNXRZWS9zL0xWOFYiLCJtYWMiOiJhY2E1NjczNWY1MDg0MzNlNGU2ZWNhM2QzMTlkMDdmZjhkYzI1ODNjMGY5MGUzYWZhMzI4YzA3NDY1Yjc1MmQ1IiwidGFnIjoiIn0%3D; devhani_session=eyJpdiI6IjdWSXVKdkpqMXU3eERocE54RzVKYlE9PSIsInZhbHVlIjoiUUNRUkRmL2IwakFzREg5SDh1VTFxanNYWmxYOWpSNS9TcDFDZ0xFaytmME4rdlVDSzQydFdDSW1ueDcyZUxlSnZ6bEJ6dndaNjFhdHhJd0laY0tCb25IMzE5dy8vNGdob3pFWkx6aTBzQkJ6dS93Z1QzUHVXUEtyajFtWE5zeEMiLCJtYWMiOiI4YmJmYjJiMDEwMWM5YWFkNDY1ZmRjZWEzYTU0YjEyZmU2NDE2YjgwODZjYzFiM2U5M2ZjYWFkMzM3ZDI0N2VlIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":200,\"response\":{\"id\":3,\"title\":\"projects\",\"page_id\":1,\"content\":{\"quote\":\"test\"},\"created_at\":\"2024-11-14T19:24:16.000000Z\",\"updated_at\":\"2024-11-14T19:24:16.000000Z\"},\"duration\":168,\"memory\":22,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:27'),
(134, '9d8333c3-5b92-4b6e-b1dc-01e7064216a5', '9d8333c3-5fe7-4f33-bc77-feebd55f64da', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `experiences`\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\app\\\\Http\\\\Controllers\\\\Api\\\\ExperienceController.php\",\"line\":18,\"hash\":\"1c9cb2ce49f17169ee5c9c2f2266ecc8\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:27'),
(135, '9d8333c3-5d1f-4b57-a720-a0a6d651d68c', '9d8333c3-5fe7-4f33-bc77-feebd55f64da', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Experience\",\"count\":1,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:27'),
(136, '9d8333c3-5f24-4e14-888e-ff525e4d566a', '9d8333c3-5fe7-4f33-bc77-feebd55f64da', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/api\\/experiences\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Api\\\\ExperienceController@index\",\"middleware\":[\"api\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"authorization\":\"********\",\"x-xsrf-token\":\"eyJpdiI6ImJZam94WHVQWnU3M0RIak9uYlQ2ZUE9PSIsInZhbHVlIjoiM2t5OVA3QTdCdGdnOXNYY0VYYjArWTRSYURic3lKbXVkQUZVTkRnVUtubFVZdFBQUW5zeGpsSWcvazZBckYyY0Z6Wk1IWkEzREUxTzVZaENCUTdGVjh0eTdGdWswcUpVSUFIdTBkOHp1WkNuTWdTY2FxckJKNXRZWS9zL0xWOFYiLCJtYWMiOiJhY2E1NjczNWY1MDg0MzNlNGU2ZWNhM2QzMTlkMDdmZjhkYzI1ODNjMGY5MGUzYWZhMzI4YzA3NDY1Yjc1MmQ1IiwidGFnIjoiIn0=\",\"sec-ch-ua\":\"\\\"Google Chrome\\\";v=\\\"131\\\", \\\"Chromium\\\";v=\\\"131\\\", \\\"Not_A Brand\\\";v=\\\"24\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"x-requested-with\":\"XMLHttpRequest\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\",\"accept\":\"application\\/json, text\\/plain, *\\/*\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http:\\/\\/127.0.0.1:8000\\/\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"accept-language\":\"en-US,en;q=0.9,ar;q=0.8\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6ImJZam94WHVQWnU3M0RIak9uYlQ2ZUE9PSIsInZhbHVlIjoiM2t5OVA3QTdCdGdnOXNYY0VYYjArWTRSYURic3lKbXVkQUZVTkRnVUtubFVZdFBQUW5zeGpsSWcvazZBckYyY0Z6Wk1IWkEzREUxTzVZaENCUTdGVjh0eTdGdWswcUpVSUFIdTBkOHp1WkNuTWdTY2FxckJKNXRZWS9zL0xWOFYiLCJtYWMiOiJhY2E1NjczNWY1MDg0MzNlNGU2ZWNhM2QzMTlkMDdmZjhkYzI1ODNjMGY5MGUzYWZhMzI4YzA3NDY1Yjc1MmQ1IiwidGFnIjoiIn0%3D; devhani_session=eyJpdiI6IjdWSXVKdkpqMXU3eERocE54RzVKYlE9PSIsInZhbHVlIjoiUUNRUkRmL2IwakFzREg5SDh1VTFxanNYWmxYOWpSNS9TcDFDZ0xFaytmME4rdlVDSzQydFdDSW1ueDcyZUxlSnZ6bEJ6dndaNjFhdHhJd0laY0tCb25IMzE5dy8vNGdob3pFWkx6aTBzQkJ6dS93Z1QzUHVXUEtyajFtWE5zeEMiLCJtYWMiOiI4YmJmYjJiMDEwMWM5YWFkNDY1ZmRjZWEzYTU0YjEyZmU2NDE2YjgwODZjYzFiM2U5M2ZjYWFkMzM3ZDI0N2VlIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":200,\"response\":[{\"id\":2,\"title\":\"Full Stack Web Developer\",\"source\":\"Freelance\",\"from_date\":\"2020-06-17\",\"to_date\":\"2024-01-17\",\"created_at\":\"2024-11-17T12:20:36.000000Z\",\"updated_at\":\"2024-11-17T12:21:27.000000Z\"}],\"duration\":150,\"memory\":22,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:27'),
(137, '9d8333c3-9bdb-42cc-8f74-71b5b3e872d1', '9d8333c3-a03d-4396-9a94-a6b8f647b65e', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `educations`\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\app\\\\Http\\\\Controllers\\\\Api\\\\EducationController.php\",\"line\":18,\"hash\":\"9b588a26be82e49e6ecb08ac24c0b325\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:27'),
(138, '9d8333c3-9d72-462d-8170-77eb84e0c4a2', '9d8333c3-a03d-4396-9a94-a6b8f647b65e', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Education\",\"count\":1,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:27'),
(139, '9d8333c3-9f77-428d-bf30-3ad73a01ac22', '9d8333c3-a03d-4396-9a94-a6b8f647b65e', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/api\\/educations\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Api\\\\EducationController@index\",\"middleware\":[\"api\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"authorization\":\"********\",\"x-xsrf-token\":\"eyJpdiI6ImJZam94WHVQWnU3M0RIak9uYlQ2ZUE9PSIsInZhbHVlIjoiM2t5OVA3QTdCdGdnOXNYY0VYYjArWTRSYURic3lKbXVkQUZVTkRnVUtubFVZdFBQUW5zeGpsSWcvazZBckYyY0Z6Wk1IWkEzREUxTzVZaENCUTdGVjh0eTdGdWswcUpVSUFIdTBkOHp1WkNuTWdTY2FxckJKNXRZWS9zL0xWOFYiLCJtYWMiOiJhY2E1NjczNWY1MDg0MzNlNGU2ZWNhM2QzMTlkMDdmZjhkYzI1ODNjMGY5MGUzYWZhMzI4YzA3NDY1Yjc1MmQ1IiwidGFnIjoiIn0=\",\"sec-ch-ua\":\"\\\"Google Chrome\\\";v=\\\"131\\\", \\\"Chromium\\\";v=\\\"131\\\", \\\"Not_A Brand\\\";v=\\\"24\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"x-requested-with\":\"XMLHttpRequest\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\",\"accept\":\"application\\/json, text\\/plain, *\\/*\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http:\\/\\/127.0.0.1:8000\\/\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"accept-language\":\"en-US,en;q=0.9,ar;q=0.8\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6ImJZam94WHVQWnU3M0RIak9uYlQ2ZUE9PSIsInZhbHVlIjoiM2t5OVA3QTdCdGdnOXNYY0VYYjArWTRSYURic3lKbXVkQUZVTkRnVUtubFVZdFBQUW5zeGpsSWcvazZBckYyY0Z6Wk1IWkEzREUxTzVZaENCUTdGVjh0eTdGdWswcUpVSUFIdTBkOHp1WkNuTWdTY2FxckJKNXRZWS9zL0xWOFYiLCJtYWMiOiJhY2E1NjczNWY1MDg0MzNlNGU2ZWNhM2QzMTlkMDdmZjhkYzI1ODNjMGY5MGUzYWZhMzI4YzA3NDY1Yjc1MmQ1IiwidGFnIjoiIn0%3D; devhani_session=eyJpdiI6IjdWSXVKdkpqMXU3eERocE54RzVKYlE9PSIsInZhbHVlIjoiUUNRUkRmL2IwakFzREg5SDh1VTFxanNYWmxYOWpSNS9TcDFDZ0xFaytmME4rdlVDSzQydFdDSW1ueDcyZUxlSnZ6bEJ6dndaNjFhdHhJd0laY0tCb25IMzE5dy8vNGdob3pFWkx6aTBzQkJ6dS93Z1QzUHVXUEtyajFtWE5zeEMiLCJtYWMiOiI4YmJmYjJiMDEwMWM5YWFkNDY1ZmRjZWEzYTU0YjEyZmU2NDE2YjgwODZjYzFiM2U5M2ZjYWFkMzM3ZDI0N2VlIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":200,\"response\":[{\"id\":2,\"title\":\"Information Technology Engineering - Machine Learning Engineering\",\"institute\":\"Syrian Virtual University\",\"from_date\":\"2020-01-02\",\"to_date\":\"2025-06-17\",\"certificate_link\":null,\"created_at\":\"2024-11-17T12:19:13.000000Z\",\"updated_at\":\"2024-11-17T13:04:55.000000Z\"}],\"duration\":158,\"memory\":20,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:27'),
(140, '9d8333c3-d8b1-48c4-a3e3-ae0a5077a918', '9d8333c3-ddf4-4945-ace7-37452c648952', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `skills`\",\"time\":\"0.85\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\app\\\\Http\\\\Controllers\\\\Api\\\\SkillController.php\",\"line\":18,\"hash\":\"f89325d300023de7d453d72e82a588d3\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:27'),
(141, '9d8333c3-da3c-4743-a80e-33af71e34dab', '9d8333c3-ddf4-4945-ace7-37452c648952', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Skill\",\"count\":12,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:27'),
(142, '9d8333c3-dd1c-4568-866d-0322ec570c1d', '9d8333c3-ddf4-4945-ace7-37452c648952', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/api\\/skills\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Api\\\\SkillController@index\",\"middleware\":[\"api\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"authorization\":\"********\",\"x-xsrf-token\":\"eyJpdiI6ImJZam94WHVQWnU3M0RIak9uYlQ2ZUE9PSIsInZhbHVlIjoiM2t5OVA3QTdCdGdnOXNYY0VYYjArWTRSYURic3lKbXVkQUZVTkRnVUtubFVZdFBQUW5zeGpsSWcvazZBckYyY0Z6Wk1IWkEzREUxTzVZaENCUTdGVjh0eTdGdWswcUpVSUFIdTBkOHp1WkNuTWdTY2FxckJKNXRZWS9zL0xWOFYiLCJtYWMiOiJhY2E1NjczNWY1MDg0MzNlNGU2ZWNhM2QzMTlkMDdmZjhkYzI1ODNjMGY5MGUzYWZhMzI4YzA3NDY1Yjc1MmQ1IiwidGFnIjoiIn0=\",\"sec-ch-ua\":\"\\\"Google Chrome\\\";v=\\\"131\\\", \\\"Chromium\\\";v=\\\"131\\\", \\\"Not_A Brand\\\";v=\\\"24\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"x-requested-with\":\"XMLHttpRequest\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\",\"accept\":\"application\\/json, text\\/plain, *\\/*\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http:\\/\\/127.0.0.1:8000\\/\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"accept-language\":\"en-US,en;q=0.9,ar;q=0.8\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6ImJZam94WHVQWnU3M0RIak9uYlQ2ZUE9PSIsInZhbHVlIjoiM2t5OVA3QTdCdGdnOXNYY0VYYjArWTRSYURic3lKbXVkQUZVTkRnVUtubFVZdFBQUW5zeGpsSWcvazZBckYyY0Z6Wk1IWkEzREUxTzVZaENCUTdGVjh0eTdGdWswcUpVSUFIdTBkOHp1WkNuTWdTY2FxckJKNXRZWS9zL0xWOFYiLCJtYWMiOiJhY2E1NjczNWY1MDg0MzNlNGU2ZWNhM2QzMTlkMDdmZjhkYzI1ODNjMGY5MGUzYWZhMzI4YzA3NDY1Yjc1MmQ1IiwidGFnIjoiIn0%3D; devhani_session=eyJpdiI6IjdWSXVKdkpqMXU3eERocE54RzVKYlE9PSIsInZhbHVlIjoiUUNRUkRmL2IwakFzREg5SDh1VTFxanNYWmxYOWpSNS9TcDFDZ0xFaytmME4rdlVDSzQydFdDSW1ueDcyZUxlSnZ6bEJ6dndaNjFhdHhJd0laY0tCb25IMzE5dy8vNGdob3pFWkx6aTBzQkJ6dS93Z1QzUHVXUEtyajFtWE5zeEMiLCJtYWMiOiI4YmJmYjJiMDEwMWM5YWFkNDY1ZmRjZWEzYTU0YjEyZmU2NDE2YjgwODZjYzFiM2U5M2ZjYWFkMzM3ZDI0N2VlIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":200,\"response\":[{\"id\":2,\"title\":\"HTML\",\"percentage\":100,\"icon_url\":\"\\/uploads\\/skills\\/1731846136_732212.png\",\"created_at\":\"2024-11-17T12:22:16.000000Z\",\"updated_at\":\"2024-11-17T12:22:16.000000Z\"},{\"id\":3,\"title\":\"Css\",\"percentage\":95,\"icon_url\":\"\\/uploads\\/skills\\/1731846220_css3.png\",\"created_at\":\"2024-11-17T12:23:40.000000Z\",\"updated_at\":\"2024-11-17T12:23:40.000000Z\"},{\"id\":4,\"title\":\"JavaScript\",\"percentage\":80,\"icon_url\":\"\\/uploads\\/skills\\/1731846275_javascript-logo-javascript-icon-transparent-free-png.png\",\"created_at\":\"2024-11-17T12:24:35.000000Z\",\"updated_at\":\"2024-11-17T12:24:35.000000Z\"},{\"id\":5,\"title\":\"Vue.js\",\"percentage\":90,\"icon_url\":\"\\/uploads\\/skills\\/1731846327_vue-js-icon.png\",\"created_at\":\"2024-11-17T12:25:27.000000Z\",\"updated_at\":\"2024-11-17T12:25:27.000000Z\"},{\"id\":6,\"title\":\"Ajax\",\"percentage\":75,\"icon_url\":\"\\/uploads\\/skills\\/1731846500_image-removebg-preview.png\",\"created_at\":\"2024-11-17T12:28:20.000000Z\",\"updated_at\":\"2024-11-17T12:28:20.000000Z\"},{\"id\":7,\"title\":\"Bootstrap\",\"percentage\":70,\"icon_url\":\"\\/uploads\\/skills\\/1731846581_bootstrap-icon-css.png\",\"created_at\":\"2024-11-17T12:29:41.000000Z\",\"updated_at\":\"2024-11-17T12:29:41.000000Z\"},{\"id\":8,\"title\":\"Flutter\",\"percentage\":60,\"icon_url\":\"\\/uploads\\/skills\\/1731846723_flutter-logo-5086DD11C5-seeklogo.com.png\",\"created_at\":\"2024-11-17T12:32:03.000000Z\",\"updated_at\":\"2024-11-17T12:32:03.000000Z\"},{\"id\":9,\"title\":\"Dart\",\"percentage\":60,\"icon_url\":\"\\/uploads\\/skills\\/1731846778_dart-icon-1021x1024-0q8oyg7c.png\",\"created_at\":\"2024-11-17T12:32:58.000000Z\",\"updated_at\":\"2024-11-17T12:32:58.000000Z\"},{\"id\":10,\"title\":\"Laravel\",\"percentage\":95,\"icon_url\":\"\\/uploads\\/skills\\/1731846854_laravel-icon-995x1024-dk77ahh4.png\",\"created_at\":\"2024-11-17T12:34:14.000000Z\",\"updated_at\":\"2024-11-17T12:34:14.000000Z\"},{\"id\":11,\"title\":\"MySql\",\"percentage\":80,\"icon_url\":\"\\/uploads\\/skills\\/1731846909_pngimg.com - mysql_PNG23.png\",\"created_at\":\"2024-11-17T12:35:09.000000Z\",\"updated_at\":\"2024-11-17T12:35:09.000000Z\"},{\"id\":12,\"title\":\"Rest Api\",\"percentage\":100,\"icon_url\":\"\\/uploads\\/skills\\/1731847004_rest-api-icon.png\",\"created_at\":\"2024-11-17T12:36:44.000000Z\",\"updated_at\":\"2024-11-17T12:36:44.000000Z\"},{\"id\":13,\"title\":\"Firebase\",\"percentage\":80,\"icon_url\":\"\\/uploads\\/skills\\/1731847055_1611674.png\",\"created_at\":\"2024-11-17T12:37:35.000000Z\",\"updated_at\":\"2024-11-17T12:37:35.000000Z\"}],\"duration\":151,\"memory\":22,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:27'),
(143, '9d8333c4-18e7-4d49-b759-ebe4ad3195cf', '9d8333c4-1f34-4cc4-9520-7eb8a4a7fc61', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `sections` where `page_id` = 1 and `title` = \'client\' limit 1\",\"time\":\"0.51\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\app\\\\Http\\\\Controllers\\\\Api\\\\cms\\\\ClientSectionController.php\",\"line\":17,\"hash\":\"be928a9e728533c6f4d6deef490f8737\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:27'),
(144, '9d8333c4-1a71-411a-b9d2-f50813d2c7d1', '9d8333c4-1f34-4cc4-9520-7eb8a4a7fc61', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Section\",\"count\":1,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:27'),
(145, '9d8333c4-1e74-4a55-8493-0f3057528760', '9d8333c4-1f34-4cc4-9520-7eb8a4a7fc61', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/api\\/clients-section\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Api\\\\cms\\\\ClientSectionController@show\",\"middleware\":[\"api\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"authorization\":\"********\",\"x-xsrf-token\":\"eyJpdiI6ImJZam94WHVQWnU3M0RIak9uYlQ2ZUE9PSIsInZhbHVlIjoiM2t5OVA3QTdCdGdnOXNYY0VYYjArWTRSYURic3lKbXVkQUZVTkRnVUtubFVZdFBQUW5zeGpsSWcvazZBckYyY0Z6Wk1IWkEzREUxTzVZaENCUTdGVjh0eTdGdWswcUpVSUFIdTBkOHp1WkNuTWdTY2FxckJKNXRZWS9zL0xWOFYiLCJtYWMiOiJhY2E1NjczNWY1MDg0MzNlNGU2ZWNhM2QzMTlkMDdmZjhkYzI1ODNjMGY5MGUzYWZhMzI4YzA3NDY1Yjc1MmQ1IiwidGFnIjoiIn0=\",\"sec-ch-ua\":\"\\\"Google Chrome\\\";v=\\\"131\\\", \\\"Chromium\\\";v=\\\"131\\\", \\\"Not_A Brand\\\";v=\\\"24\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"x-requested-with\":\"XMLHttpRequest\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\",\"accept\":\"application\\/json, text\\/plain, *\\/*\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http:\\/\\/127.0.0.1:8000\\/\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"accept-language\":\"en-US,en;q=0.9,ar;q=0.8\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6ImJZam94WHVQWnU3M0RIak9uYlQ2ZUE9PSIsInZhbHVlIjoiM2t5OVA3QTdCdGdnOXNYY0VYYjArWTRSYURic3lKbXVkQUZVTkRnVUtubFVZdFBQUW5zeGpsSWcvazZBckYyY0Z6Wk1IWkEzREUxTzVZaENCUTdGVjh0eTdGdWswcUpVSUFIdTBkOHp1WkNuTWdTY2FxckJKNXRZWS9zL0xWOFYiLCJtYWMiOiJhY2E1NjczNWY1MDg0MzNlNGU2ZWNhM2QzMTlkMDdmZjhkYzI1ODNjMGY5MGUzYWZhMzI4YzA3NDY1Yjc1MmQ1IiwidGFnIjoiIn0%3D; devhani_session=eyJpdiI6IjdWSXVKdkpqMXU3eERocE54RzVKYlE9PSIsInZhbHVlIjoiUUNRUkRmL2IwakFzREg5SDh1VTFxanNYWmxYOWpSNS9TcDFDZ0xFaytmME4rdlVDSzQydFdDSW1ueDcyZUxlSnZ6bEJ6dndaNjFhdHhJd0laY0tCb25IMzE5dy8vNGdob3pFWkx6aTBzQkJ6dS93Z1QzUHVXUEtyajFtWE5zeEMiLCJtYWMiOiI4YmJmYjJiMDEwMWM5YWFkNDY1ZmRjZWEzYTU0YjEyZmU2NDE2YjgwODZjYzFiM2U5M2ZjYWFkMzM3ZDI0N2VlIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":200,\"response\":{\"id\":2,\"title\":\"client\",\"page_id\":1,\"content\":{\"quote\":\"test\"},\"created_at\":\"2024-11-14T19:21:41.000000Z\",\"updated_at\":\"2024-11-14T19:21:41.000000Z\"},\"duration\":161,\"memory\":22,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:27'),
(146, '9d8333c4-95e7-4a7a-be33-4999fca7b4eb', '9d8333c4-9b5a-45bb-8f68-2b1b89e8f60e', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `settings`\",\"time\":\"0.33\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\app\\\\Http\\\\Controllers\\\\Api\\\\SettingController.php\",\"line\":20,\"hash\":\"9a0c1b1878c6704a2df2ae90c2a24cef\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:27'),
(147, '9d8333c4-976d-41d0-9e68-764ccd0354e5', '9d8333c4-9b5a-45bb-8f68-2b1b89e8f60e', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Setting\",\"count\":14,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:27'),
(148, '9d8333c4-9aa8-4475-8141-579b53948e6e', '9d8333c4-9b5a-45bb-8f68-2b1b89e8f60e', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/api\\/all-settings\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Api\\\\SettingController@all\",\"middleware\":[\"api\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"authorization\":\"********\",\"x-xsrf-token\":\"eyJpdiI6ImJZam94WHVQWnU3M0RIak9uYlQ2ZUE9PSIsInZhbHVlIjoiM2t5OVA3QTdCdGdnOXNYY0VYYjArWTRSYURic3lKbXVkQUZVTkRnVUtubFVZdFBQUW5zeGpsSWcvazZBckYyY0Z6Wk1IWkEzREUxTzVZaENCUTdGVjh0eTdGdWswcUpVSUFIdTBkOHp1WkNuTWdTY2FxckJKNXRZWS9zL0xWOFYiLCJtYWMiOiJhY2E1NjczNWY1MDg0MzNlNGU2ZWNhM2QzMTlkMDdmZjhkYzI1ODNjMGY5MGUzYWZhMzI4YzA3NDY1Yjc1MmQ1IiwidGFnIjoiIn0=\",\"sec-ch-ua\":\"\\\"Google Chrome\\\";v=\\\"131\\\", \\\"Chromium\\\";v=\\\"131\\\", \\\"Not_A Brand\\\";v=\\\"24\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"x-requested-with\":\"XMLHttpRequest\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\",\"accept\":\"application\\/json, text\\/plain, *\\/*\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http:\\/\\/127.0.0.1:8000\\/\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"accept-language\":\"en-US,en;q=0.9,ar;q=0.8\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6ImJZam94WHVQWnU3M0RIak9uYlQ2ZUE9PSIsInZhbHVlIjoiM2t5OVA3QTdCdGdnOXNYY0VYYjArWTRSYURic3lKbXVkQUZVTkRnVUtubFVZdFBQUW5zeGpsSWcvazZBckYyY0Z6Wk1IWkEzREUxTzVZaENCUTdGVjh0eTdGdWswcUpVSUFIdTBkOHp1WkNuTWdTY2FxckJKNXRZWS9zL0xWOFYiLCJtYWMiOiJhY2E1NjczNWY1MDg0MzNlNGU2ZWNhM2QzMTlkMDdmZjhkYzI1ODNjMGY5MGUzYWZhMzI4YzA3NDY1Yjc1MmQ1IiwidGFnIjoiIn0%3D; devhani_session=eyJpdiI6IjdWSXVKdkpqMXU3eERocE54RzVKYlE9PSIsInZhbHVlIjoiUUNRUkRmL2IwakFzREg5SDh1VTFxanNYWmxYOWpSNS9TcDFDZ0xFaytmME4rdlVDSzQydFdDSW1ueDcyZUxlSnZ6bEJ6dndaNjFhdHhJd0laY0tCb25IMzE5dy8vNGdob3pFWkx6aTBzQkJ6dS93Z1QzUHVXUEtyajFtWE5zeEMiLCJtYWMiOiI4YmJmYjJiMDEwMWM5YWFkNDY1ZmRjZWEzYTU0YjEyZmU2NDE2YjgwODZjYzFiM2U5M2ZjYWFkMzM3ZDI0N2VlIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":200,\"response\":{\"fullname\":\"Hani Sulaiman\",\"phoneNumber\":\"+963932682483\",\"email\":\"hani.sulaiman.2002@gmail.com\",\"mainMajor\":\"Machine Learning Engineer\",\"cvLink\":\"http:\\/\\/127.0.0.1:8000\\/api\\/skills\",\"whatsappLink\":\"http:\\/\\/127.0.0.1:8000\\/api\\/skills\",\"facebookLink\":\"http:\\/\\/127.0.0.1:8000\\/api\\/skills\",\"instagramLink\":\"http:\\/\\/127.0.0.1:8000\\/api\\/skills\",\"githubLink\":\"http:\\/\\/127.0.0.1:8000\\/api\\/skills\",\"linkedinLink\":\"http:\\/\\/127.0.0.1:8000\\/api\\/skills\",\"address\":\"Syria-Damascus-Jaramana\",\"experienceStartDate\":\"2021-01-14\",\"personalPhoto\":\"\\/uploads\\/settings\\/1731659848_me.png\",\"cvFile\":\"\\/uploads\\/settings\\/1731656827_ITE-BPR601-C63.pdf\"},\"duration\":141,\"memory\":20,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:27'),
(149, '9d8333c4-ceef-4293-bf01-ff13fb7c2dd9', '9d8333c4-d5f7-42a9-9fdd-732901a952cf', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `settings` where `key_setting` = \'experienceStartDate\' limit 1\",\"time\":\"0.40\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\app\\\\Http\\\\Controllers\\\\Api\\\\StatisticsController.php\",\"line\":18,\"hash\":\"35ca6ea5b2895a351c845334af7c288e\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:28'),
(150, '9d8333c4-d074-4812-a850-0e2ee2d3b05d', '9d8333c4-d5f7-42a9-9fdd-732901a952cf', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Setting\",\"count\":1,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:28'),
(151, '9d8333c4-d16c-46cd-b962-aa1ce5fb211c', '9d8333c4-d5f7-42a9-9fdd-732901a952cf', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select count(*) as aggregate from `projects`\",\"time\":\"0.53\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\app\\\\Http\\\\Controllers\\\\Api\\\\StatisticsController.php\",\"line\":35,\"hash\":\"d0533f73256ad563595ab3e52cf6d28e\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:28'),
(152, '9d8333c4-d1cf-49e7-a2fa-09119c6f80db', '9d8333c4-d5f7-42a9-9fdd-732901a952cf', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select count(*) as aggregate from `clients`\",\"time\":\"0.38\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\app\\\\Http\\\\Controllers\\\\Api\\\\StatisticsController.php\",\"line\":38,\"hash\":\"99a681c0cd3e547d0965629ccc17e250\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:28'),
(153, '9d8333c4-d221-496f-bf6c-674444f899a5', '9d8333c4-d5f7-42a9-9fdd-732901a952cf', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select count(*) as aggregate from `skills`\",\"time\":\"0.25\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\app\\\\Http\\\\Controllers\\\\Api\\\\StatisticsController.php\",\"line\":41,\"hash\":\"1baa7e9486c5f33d0928c64a570cb77e\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:28'),
(154, '9d8333c4-d541-4b36-bac4-cd852d39bbb3', '9d8333c4-d5f7-42a9-9fdd-732901a952cf', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/api\\/statistics\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Api\\\\StatisticsController@getStatistics\",\"middleware\":[\"api\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"authorization\":\"********\",\"x-xsrf-token\":\"eyJpdiI6IlZhczFZY00rQjl1RUl6THJXNkE1dUE9PSIsInZhbHVlIjoid3lBL1pPTCtrdDVmbnBxUi9tamhIVTJhMEFGOEVRY1M0anoxRW4wWGRoYnhoSHBMV3Z0ZVlyOVdxRDRqK2swQllHeE1hcFJiRnNCT2xKbXBBVTJFM2N1Y0s5eW1JS0hQUUZVTkZISU1JYjdNRm0yejYzV0FSamRjT2J0MzRRVUkiLCJtYWMiOiI0Zjc1NDZhZTA3M2NmY2YzOGMzOTY3NDhjZGI2ODU4NTJkOTBhNjQ5YzZjNGYxYzRiNDk0YzVkNjNjZGM4M2E2IiwidGFnIjoiIn0=\",\"sec-ch-ua\":\"\\\"Google Chrome\\\";v=\\\"131\\\", \\\"Chromium\\\";v=\\\"131\\\", \\\"Not_A Brand\\\";v=\\\"24\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"x-requested-with\":\"XMLHttpRequest\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\",\"accept\":\"application\\/json, text\\/plain, *\\/*\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http:\\/\\/127.0.0.1:8000\\/\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"accept-language\":\"en-US,en;q=0.9,ar;q=0.8\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlZhczFZY00rQjl1RUl6THJXNkE1dUE9PSIsInZhbHVlIjoid3lBL1pPTCtrdDVmbnBxUi9tamhIVTJhMEFGOEVRY1M0anoxRW4wWGRoYnhoSHBMV3Z0ZVlyOVdxRDRqK2swQllHeE1hcFJiRnNCT2xKbXBBVTJFM2N1Y0s5eW1JS0hQUUZVTkZISU1JYjdNRm0yejYzV0FSamRjT2J0MzRRVUkiLCJtYWMiOiI0Zjc1NDZhZTA3M2NmY2YzOGMzOTY3NDhjZGI2ODU4NTJkOTBhNjQ5YzZjNGYxYzRiNDk0YzVkNjNjZGM4M2E2IiwidGFnIjoiIn0%3D; devhani_session=eyJpdiI6ImtKRlVWWG42enA4VUorbHRKVWdSK2c9PSIsInZhbHVlIjoiODd5T0x3ZTVFemJVTXJPcnhBTFlxYjIyVVdnNGVhZ1V6SEhvU3p3alJrL1FaTmp3SDRVQ2g2aTBnM2pubnF3emJNNW5kSkljdEpPMXVaS29QcHVTMWV6OFk4dXVlY2NLc09NWTNaeXB2UkQ2VW9iRWxJcWFUa0lEMWFBQmpLaXMiLCJtYWMiOiJlZGZjZTc3YTlkOGQ5ZjY3N2MwMmI4ODg1ODRlY2Q3MWM5OTQ4ODgzNjU3Nzg3ODJhNDM1ZGUzYmI2NTliZDdhIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":200,\"response\":{\"years_of_experience\":3,\"projects_completed\":2,\"happy_clients\":2,\"skills_count\":12},\"duration\":145,\"memory\":20,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:28'),
(155, '9d8333c5-0be9-4b33-bb49-a9450cf2f265', '9d8333c5-107b-472b-ac1b-e1f95e7a4579', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `services`\",\"time\":\"0.48\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\app\\\\Http\\\\Controllers\\\\Api\\\\ServiceController.php\",\"line\":17,\"hash\":\"c0f29b3aeb2013b9e21306140d4adabc\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:28'),
(156, '9d8333c5-0d72-416c-a58a-53a93e53c607', '9d8333c5-107b-472b-ac1b-e1f95e7a4579', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Service\",\"count\":3,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:28'),
(157, '9d8333c5-0fc4-478a-a97c-8efcee14578b', '9d8333c5-107b-472b-ac1b-e1f95e7a4579', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/api\\/services\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Api\\\\ServiceController@index\",\"middleware\":[\"api\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"authorization\":\"********\",\"x-xsrf-token\":\"eyJpdiI6IlZhczFZY00rQjl1RUl6THJXNkE1dUE9PSIsInZhbHVlIjoid3lBL1pPTCtrdDVmbnBxUi9tamhIVTJhMEFGOEVRY1M0anoxRW4wWGRoYnhoSHBMV3Z0ZVlyOVdxRDRqK2swQllHeE1hcFJiRnNCT2xKbXBBVTJFM2N1Y0s5eW1JS0hQUUZVTkZISU1JYjdNRm0yejYzV0FSamRjT2J0MzRRVUkiLCJtYWMiOiI0Zjc1NDZhZTA3M2NmY2YzOGMzOTY3NDhjZGI2ODU4NTJkOTBhNjQ5YzZjNGYxYzRiNDk0YzVkNjNjZGM4M2E2IiwidGFnIjoiIn0=\",\"sec-ch-ua\":\"\\\"Google Chrome\\\";v=\\\"131\\\", \\\"Chromium\\\";v=\\\"131\\\", \\\"Not_A Brand\\\";v=\\\"24\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"x-requested-with\":\"XMLHttpRequest\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\",\"accept\":\"application\\/json, text\\/plain, *\\/*\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http:\\/\\/127.0.0.1:8000\\/\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"accept-language\":\"en-US,en;q=0.9,ar;q=0.8\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlZhczFZY00rQjl1RUl6THJXNkE1dUE9PSIsInZhbHVlIjoid3lBL1pPTCtrdDVmbnBxUi9tamhIVTJhMEFGOEVRY1M0anoxRW4wWGRoYnhoSHBMV3Z0ZVlyOVdxRDRqK2swQllHeE1hcFJiRnNCT2xKbXBBVTJFM2N1Y0s5eW1JS0hQUUZVTkZISU1JYjdNRm0yejYzV0FSamRjT2J0MzRRVUkiLCJtYWMiOiI0Zjc1NDZhZTA3M2NmY2YzOGMzOTY3NDhjZGI2ODU4NTJkOTBhNjQ5YzZjNGYxYzRiNDk0YzVkNjNjZGM4M2E2IiwidGFnIjoiIn0%3D; devhani_session=eyJpdiI6ImtKRlVWWG42enA4VUorbHRKVWdSK2c9PSIsInZhbHVlIjoiODd5T0x3ZTVFemJVTXJPcnhBTFlxYjIyVVdnNGVhZ1V6SEhvU3p3alJrL1FaTmp3SDRVQ2g2aTBnM2pubnF3emJNNW5kSkljdEpPMXVaS29QcHVTMWV6OFk4dXVlY2NLc09NWTNaeXB2UkQ2VW9iRWxJcWFUa0lEMWFBQmpLaXMiLCJtYWMiOiJlZGZjZTc3YTlkOGQ5ZjY3N2MwMmI4ODg1ODRlY2Q3MWM5OTQ4ODgzNjU3Nzg3ODJhNDM1ZGUzYmI2NTliZDdhIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":200,\"response\":[{\"id\":7,\"title\":\"Build AI System\",\"icon_code_html\":\"<i class=\\\"bi bi-stars\\\"><\\/i>\",\"content\":\"Bring your digital experience to life with custom AI solutions. I design and implement AI models tailored for websites and apps, ensuring they meet the unique needs of your project. From intelligent recommendation systems to natural language processing features, I can help you leverage cutting-edge AI to enhance user interactions and automate processes. Additionally, I offer AI API integration services, allowing your applications to connect seamlessly with powerful AI models. Whether you need predictive analytics, conversational AI, or image recognition, my solutions are built to be scalable, efficient, and ready to evolve with your business. I also specialize in end-to-end AI system development, covering everything from data collection and preprocessing to model training, deployment, and maintenance. My approach involves closely collaborating with clients to understand their business goals and identify opportunities where AI can deliver value. By adopting an agile development process, I ensure that your AI solution is flexible and adaptable to changing requirements. Beyond technical implementation, I provide comprehensive documentation and training to help your team understand and manage the AI systems effectively. This empowers your organization to make the most of AI technology and stay ahead of the competition. Whether you\'re looking to build a chatbot, an advanced predictive model, or any custom AI solution, I\'m here to transform your vision into reality.\",\"image_url\":\"\\/uploads\\/services\\/1731679385_machinelearning.jpg\",\"created_at\":\"2024-11-15T14:03:05.000000Z\",\"updated_at\":\"2024-11-15T14:03:05.000000Z\"},{\"id\":8,\"title\":\"Web Development\",\"icon_code_html\":\"<i class=\\\"bi bi-layout-text-window-reverse\\\"><\\/i>\",\"content\":\"I offer complete web development services to build all types of websites, from simple landing pages to complex web applications. Utilizing modern frameworks and technologies, I create websites that are fast, responsive, and tailored to your specific needs. My expertise spans front-end and back-end development, ensuring that every aspect of your website is optimized for performance, usability, and scalability. Whether you need an e-commerce platform, a corporate website, a personal blog, or a custom web solution, I have the skills to bring your ideas to life. I focus on creating engaging user experiences, implementing intuitive designs, and integrating all the necessary features to meet your business goals. Additionally, I ensure that every website I build is secure, SEO-friendly, and easy to maintain. With a deep understanding of both user experience (UX) and technical requirements, I can help you create a web presence that stands out and delivers value to your audience. My development process is collaborative and transparent, keeping you informed at every stage to ensure the final product exceeds your expectations.\",\"image_url\":\"\\/uploads\\/services\\/1731680461_web-development.jpg\",\"created_at\":\"2024-11-15T14:21:01.000000Z\",\"updated_at\":\"2024-11-15T14:21:01.000000Z\"},{\"id\":9,\"title\":\"App Development\",\"icon_code_html\":\"<i class=\\\"bi bi-app-indicator\\\"><\\/i>\",\"content\":\"I provide comprehensive app development services for both iOS and Android platforms. Whether you\'re looking to build a native app, a cross-platform solution, or a progressive web app (PWA), I have the expertise to bring your vision to life. By leveraging frameworks such as Flutter and React Native, I ensure that your app is fast, responsive, and provides a consistent user experience across devices. My app development process starts with understanding your business needs and translating them into user-centric designs and robust functionality. I prioritize performance, security, and scalability, making sure your app can grow alongside your business. From ideation to deployment, I handle every stage of development, including UI\\/UX design, backend integration, and testing. In addition, I offer post-launch support and maintenance to ensure your app remains up-to-date and performs optimally. Whether you\'re aiming to build a utility app, a social platform, an e-commerce solution, or anything in between, I am here to help you create an app that not only meets but exceeds your users\' expectations.\",\"image_url\":\"\\/uploads\\/services\\/1731680562_wp9517064-app-development-wallpapers.jpg\",\"created_at\":\"2024-11-15T14:22:42.000000Z\",\"updated_at\":\"2024-11-15T14:22:42.000000Z\"}],\"duration\":144,\"memory\":22,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:28'),
(158, '9d8333c5-4473-44c6-96ef-235529f5f768', '9d8333c5-4f9a-4857-b6ea-de4872e708cb', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `services`\",\"time\":\"0.38\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\app\\\\Http\\\\Controllers\\\\Api\\\\ProjectController.php\",\"line\":25,\"hash\":\"c0f29b3aeb2013b9e21306140d4adabc\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:28'),
(159, '9d8333c5-45fe-4f3a-bbce-9e3227943dd4', '9d8333c5-4f9a-4857-b6ea-de4872e708cb', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Service\",\"count\":3,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:28');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(160, '9d8333c5-4b45-4a5d-a5ba-18ccf0405e70', '9d8333c5-4f9a-4857-b6ea-de4872e708cb', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `projects`.*, `project_service`.`service_id` as `pivot_service_id`, `project_service`.`project_id` as `pivot_project_id` from `projects` inner join `project_service` on `projects`.`id` = `project_service`.`project_id` where `project_service`.`service_id` in (7, 8, 9) order by `created_at` desc\",\"time\":\"9.72\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\app\\\\Http\\\\Controllers\\\\Api\\\\ProjectController.php\",\"line\":25,\"hash\":\"43676303c156f04d342674f17b93aa9f\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:28'),
(161, '9d8333c5-4b6e-4ca1-971c-fd25aed2bb21', '9d8333c5-4f9a-4857-b6ea-de4872e708cb', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Project\",\"count\":2,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:28'),
(162, '9d8333c5-4ec8-4eae-85a2-e6542efd3d9c', '9d8333c5-4f9a-4857-b6ea-de4872e708cb', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/api\\/recent-projects\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Api\\\\ProjectController@recent\",\"middleware\":[\"api\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"authorization\":\"********\",\"x-xsrf-token\":\"eyJpdiI6IlZhczFZY00rQjl1RUl6THJXNkE1dUE9PSIsInZhbHVlIjoid3lBL1pPTCtrdDVmbnBxUi9tamhIVTJhMEFGOEVRY1M0anoxRW4wWGRoYnhoSHBMV3Z0ZVlyOVdxRDRqK2swQllHeE1hcFJiRnNCT2xKbXBBVTJFM2N1Y0s5eW1JS0hQUUZVTkZISU1JYjdNRm0yejYzV0FSamRjT2J0MzRRVUkiLCJtYWMiOiI0Zjc1NDZhZTA3M2NmY2YzOGMzOTY3NDhjZGI2ODU4NTJkOTBhNjQ5YzZjNGYxYzRiNDk0YzVkNjNjZGM4M2E2IiwidGFnIjoiIn0=\",\"sec-ch-ua\":\"\\\"Google Chrome\\\";v=\\\"131\\\", \\\"Chromium\\\";v=\\\"131\\\", \\\"Not_A Brand\\\";v=\\\"24\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"x-requested-with\":\"XMLHttpRequest\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\",\"accept\":\"application\\/json, text\\/plain, *\\/*\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http:\\/\\/127.0.0.1:8000\\/\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"accept-language\":\"en-US,en;q=0.9,ar;q=0.8\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlZhczFZY00rQjl1RUl6THJXNkE1dUE9PSIsInZhbHVlIjoid3lBL1pPTCtrdDVmbnBxUi9tamhIVTJhMEFGOEVRY1M0anoxRW4wWGRoYnhoSHBMV3Z0ZVlyOVdxRDRqK2swQllHeE1hcFJiRnNCT2xKbXBBVTJFM2N1Y0s5eW1JS0hQUUZVTkZISU1JYjdNRm0yejYzV0FSamRjT2J0MzRRVUkiLCJtYWMiOiI0Zjc1NDZhZTA3M2NmY2YzOGMzOTY3NDhjZGI2ODU4NTJkOTBhNjQ5YzZjNGYxYzRiNDk0YzVkNjNjZGM4M2E2IiwidGFnIjoiIn0%3D; devhani_session=eyJpdiI6ImtKRlVWWG42enA4VUorbHRKVWdSK2c9PSIsInZhbHVlIjoiODd5T0x3ZTVFemJVTXJPcnhBTFlxYjIyVVdnNGVhZ1V6SEhvU3p3alJrL1FaTmp3SDRVQ2g2aTBnM2pubnF3emJNNW5kSkljdEpPMXVaS29QcHVTMWV6OFk4dXVlY2NLc09NWTNaeXB2UkQ2VW9iRWxJcWFUa0lEMWFBQmpLaXMiLCJtYWMiOiJlZGZjZTc3YTlkOGQ5ZjY3N2MwMmI4ODg1ODRlY2Q3MWM5OTQ4ODgzNjU3Nzg3ODJhNDM1ZGUzYmI2NTliZDdhIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":200,\"response\":[{\"service\":\"Web Development\",\"projects\":[{\"id\":8,\"title\":\"Arak Perfume Store\",\"thumbnail_url\":\"\\/uploads\\/projects\\/1731789867_FireShot Capture 0054 - Arakperfume - arakperfumes.ae.png\",\"quick_info\":\"The perfume store in the UAE offers a luxurious and exclusive experience for fragrance enthusiasts from around the world. The store is distinguished by its wide range of premium and innovative perfumes that blend traditional Arabian and oriental heritage with the latest global trends. The collection features a variety of scents, including rich oriental perfumes, musk, amber, as well as renowned French and international fragrances, catering to all tastes. The store also offers bespoke perfume services tailored to each customer\\u2019s unique personality and style. With high-quality products and exceptional service, it is the ideal destination for fragrance lovers seeking an extraordinary experience in the world of captivating scents\",\"start_date\":\"2024-05-07\",\"client_name\":\"Osama Hamdan\",\"project_link\":\"https:\\/\\/arakperfumes.ae\\/\"},{\"id\":7,\"title\":\"Korunfula Store\",\"thumbnail_url\":\"\\/uploads\\/projects\\/1731789379_Snapinsta.app_355426687_787806892680395_5768282265169923214_n_1080.jpg\",\"quick_info\":\"Korunfula Store is your ideal destination in Saudi Arabia for purchasing rare and meticulously selected products. Our store offers a unique and diverse range of premium items that elevate your daily essentials with a touch of luxury and distinction. From special types of natural soap and beauty products to a curated selection of exquisite spices and authentic coffee. Additionally, we provide extra virgin olive oil and high-quality nuts that add a special touch to your lifestyle. At Carnfola, we ensure a one-of-a-kind shopping experience where authenticity meets superior quality in every product we carefully select for you.\",\"start_date\":\"2023-02-16\",\"client_name\":\"Rayed Alshoubaki\",\"project_link\":\"https:\\/\\/korunfula.com\\/\"}]}],\"duration\":156,\"memory\":22,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:28'),
(163, '9d8333c5-8560-4b0e-b335-7c23c0250f6c', '9d8333c5-89be-4351-9066-7586e39f8378', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `clients`\",\"time\":\"0.30\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\app\\\\Http\\\\Controllers\\\\Api\\\\ClientController.php\",\"line\":17,\"hash\":\"1f890d8bfc45eb42935384ec9105d384\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:28'),
(164, '9d8333c5-86e7-4b3b-a261-2cbb297de4cb', '9d8333c5-89be-4351-9066-7586e39f8378', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Client\",\"count\":2,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:28'),
(165, '9d8333c5-8901-47e4-b5d9-131e203463ce', '9d8333c5-89be-4351-9066-7586e39f8378', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/api\\/clients\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Api\\\\ClientController@index\",\"middleware\":[\"api\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"authorization\":\"********\",\"x-xsrf-token\":\"eyJpdiI6IlZhczFZY00rQjl1RUl6THJXNkE1dUE9PSIsInZhbHVlIjoid3lBL1pPTCtrdDVmbnBxUi9tamhIVTJhMEFGOEVRY1M0anoxRW4wWGRoYnhoSHBMV3Z0ZVlyOVdxRDRqK2swQllHeE1hcFJiRnNCT2xKbXBBVTJFM2N1Y0s5eW1JS0hQUUZVTkZISU1JYjdNRm0yejYzV0FSamRjT2J0MzRRVUkiLCJtYWMiOiI0Zjc1NDZhZTA3M2NmY2YzOGMzOTY3NDhjZGI2ODU4NTJkOTBhNjQ5YzZjNGYxYzRiNDk0YzVkNjNjZGM4M2E2IiwidGFnIjoiIn0=\",\"sec-ch-ua\":\"\\\"Google Chrome\\\";v=\\\"131\\\", \\\"Chromium\\\";v=\\\"131\\\", \\\"Not_A Brand\\\";v=\\\"24\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"x-requested-with\":\"XMLHttpRequest\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\",\"accept\":\"application\\/json, text\\/plain, *\\/*\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http:\\/\\/127.0.0.1:8000\\/\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"accept-language\":\"en-US,en;q=0.9,ar;q=0.8\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlZhczFZY00rQjl1RUl6THJXNkE1dUE9PSIsInZhbHVlIjoid3lBL1pPTCtrdDVmbnBxUi9tamhIVTJhMEFGOEVRY1M0anoxRW4wWGRoYnhoSHBMV3Z0ZVlyOVdxRDRqK2swQllHeE1hcFJiRnNCT2xKbXBBVTJFM2N1Y0s5eW1JS0hQUUZVTkZISU1JYjdNRm0yejYzV0FSamRjT2J0MzRRVUkiLCJtYWMiOiI0Zjc1NDZhZTA3M2NmY2YzOGMzOTY3NDhjZGI2ODU4NTJkOTBhNjQ5YzZjNGYxYzRiNDk0YzVkNjNjZGM4M2E2IiwidGFnIjoiIn0%3D; devhani_session=eyJpdiI6ImtKRlVWWG42enA4VUorbHRKVWdSK2c9PSIsInZhbHVlIjoiODd5T0x3ZTVFemJVTXJPcnhBTFlxYjIyVVdnNGVhZ1V6SEhvU3p3alJrL1FaTmp3SDRVQ2g2aTBnM2pubnF3emJNNW5kSkljdEpPMXVaS29QcHVTMWV6OFk4dXVlY2NLc09NWTNaeXB2UkQ2VW9iRWxJcWFUa0lEMWFBQmpLaXMiLCJtYWMiOiJlZGZjZTc3YTlkOGQ5ZjY3N2MwMmI4ODg1ODRlY2Q3MWM5OTQ4ODgzNjU3Nzg3ODJhNDM1ZGUzYmI2NTliZDdhIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":200,\"response\":[{\"id\":3,\"full_name\":\"Rayed Alshoubaki\",\"email\":\"rayedalshoubaki@icloud.com\",\"major\":\"Data Analyst\",\"photo_url\":\"\\/assets\\/img\\/profile.jpg\",\"comment\":\"I would like to thank the skilled developer who worked on developing the kournfula.com store website. He demonstrated excellent responsiveness throughout the project and was attentive to all our requirements. Thanks to his expertise, we achieved a user-friendly and attractive site that beautifully reflects our brand\'s identity. Highly recommend working with him.\",\"created_at\":\"2024-11-17T10:49:17.000000Z\",\"updated_at\":\"2024-11-17T10:49:17.000000Z\"},{\"id\":4,\"full_name\":\"Osama Hamdan\",\"email\":\"info@whitemediadv.com\",\"major\":\"Marketing and Advertising\",\"photo_url\":\"\\/assets\\/img\\/profile.jpg\",\"comment\":\"I want to extend my appreciation to the developer who worked on building our Arak Perfume website. His prompt responses and depth of expertise were evident throughout the project. The end result was a beautifully designed, intuitive site that truly represents our brand and products in a captivating way. I highly recommend him for anyone in need of a skilled and professional developer.\",\"created_at\":\"2024-11-17T10:55:10.000000Z\",\"updated_at\":\"2024-11-17T10:55:10.000000Z\"}],\"duration\":143,\"memory\":22,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:28'),
(166, '9d8333d6-1560-41c4-abb7-da63648af8f2', '9d8333d6-1edb-49ad-8127-cbf6c392381f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `sessions` where `id` = \'CaEjSgTsNyq0ZhEC05LmNzIjRjG5qdS84Nr0fkrg\' limit 1\",\"time\":\"0.38\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\public\\\\index.php\",\"line\":17,\"hash\":\"f48fa5df8fd323d753d03a2e0070fcde\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:39'),
(167, '9d8333d6-1bb3-4c39-ae79-1e89fe61cfd7', '9d8333d6-1edb-49ad-8127-cbf6c392381f', NULL, 1, 'view', '{\"name\":\"main\",\"path\":\"\\\\resources\\\\views\\/main.blade.php\",\"data\":[],\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:39'),
(168, '9d8333d6-1dec-4e53-bddd-14e907a9b5c8', '9d8333d6-1edb-49ad-8127-cbf6c392381f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"update `sessions` set `payload` = \'YTozOntzOjY6Il90b2tlbiI7czo0MDoidlVyR2VHRnV3M282OVJmNmRjcENhaW1xblZtSTZMZFhhWU1TQkRWZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=\', `last_activity` = 1731868359, `user_id` = null, `ip_address` = \'127.0.0.1\', `user_agent` = \'Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\' where `id` = \'CaEjSgTsNyq0ZhEC05LmNzIjRjG5qdS84Nr0fkrg\'\",\"time\":\"0.42\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\public\\\\index.php\",\"line\":17,\"hash\":\"8ca748303d971bd62c762f74392caa83\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:39'),
(169, '9d8333d6-1e21-4c3d-a254-7afeb3998b5d', '9d8333d6-1edb-49ad-8127-cbf6c392381f', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"Closure\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"connection\":\"keep-alive\",\"cache-control\":\"max-age=0\",\"sec-ch-ua\":\"\\\"Google Chrome\\\";v=\\\"131\\\", \\\"Chromium\\\";v=\\\"131\\\", \\\"Not_A Brand\\\";v=\\\"24\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-user\":\"?1\",\"sec-fetch-dest\":\"document\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"accept-language\":\"en-US,en;q=0.9,ar;q=0.8\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IldLUE9yQUFyY1BMZEFmUlcvMkllOWc9PSIsInZhbHVlIjoiS2RZWU5YbFppYmY1eEkvc0lPK01rL2RwZzFqdGtuZzlkOXpDU0JPMlNiRWU0L2JTNndibVdzd2R3N2VQcmkrd3lsR24vK2hCRGg5aVFkV2luNXZINlg4KzhtMXE5WjRRN1Z1ME1zRnlyZEhITy9Sbjd6UUpERGsyOHhRWHhqN20iLCJtYWMiOiJhODhiZDQ5ZmI1NzhiYTVlODhkMTVlZjBlOGM0MzE3ZDJjZjQ2NGM1NGZlNzUyYzYzYWRkNWZhMjNjMmZiMzQ0IiwidGFnIjoiIn0%3D; devhani_session=eyJpdiI6IktCV004NEUvcTRXbGNiaU1tMFByaXc9PSIsInZhbHVlIjoiQ1FyUEdnV3piT2ZPMWFzTDVSMjRERHNoZisrdE1HNWtac2ttZ0lTaERKVDRlMTVOaVUrODdFRjd5bTZwQmVkc0pFSDlIdEVuVVUyMWFoRG1ZUzZpenQ0b29rK25SeHYweGJycllXMW9YeGZra3N4ZTA1RS8zVVc2ZVNhRElWbUgiLCJtYWMiOiJkNzk5NmI2N2RhZWU4Y2VmMmNkMDM0ZTNlZTdmMWViZjgxYTczMjQwNTE1NjE2ODE5NWE0NGQ5Y2ZkZjY1NjIxIiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"vUrGeGFuw3o69Rf6dcpCaimqnVmI6LdXaYMSBDVf\",\"_previous\":{\"url\":\"http:\\/\\/127.0.0.1:8000\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\resources\\\\views\\/main.blade.php\",\"data\":[]},\"duration\":164,\"memory\":20,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:39'),
(170, '9d8333d6-c797-4dae-bc4c-461fde8c26b5', '9d8333d6-cddd-4224-9a17-549947477ca2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `settings`\",\"time\":\"0.39\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\app\\\\Http\\\\Controllers\\\\Api\\\\SettingController.php\",\"line\":20,\"hash\":\"9a0c1b1878c6704a2df2ae90c2a24cef\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:39'),
(171, '9d8333d6-c920-4d40-8e1a-681d76bfd140', '9d8333d6-cddd-4224-9a17-549947477ca2', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Setting\",\"count\":14,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:39'),
(172, '9d8333d6-cd1f-4ef1-95dc-359c4282b6dd', '9d8333d6-cddd-4224-9a17-549947477ca2', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/api\\/all-settings\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Api\\\\SettingController@all\",\"middleware\":[\"api\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"authorization\":\"********\",\"x-xsrf-token\":\"eyJpdiI6IlU5SWRBcHNSbEpycXozREN4MllCa2c9PSIsInZhbHVlIjoiRXlsRzIzK21GN0U2Yit5WDdLdlpNMGswK3JyWWJibjVydVZ0WFQwQzEzblhiTWJHa3NrWUE4QkpPYjVrRjR5Q05zeFVLc0J5TVdFUGdqUEwwMkVIc1pYdnJqWVJoenZsOU1Ic1BmQW9ueGlaTnBGR0UzbFB3R0dkZVhyYVlYa24iLCJtYWMiOiJmNmEwZWJkM2E1MWFhNmIwMGM3MmJjOTkxNGE3NDFmNjk1M2U5YzQ5NWZkMTNkYTEwYWE2ZDhiMTIzNzEzMjk3IiwidGFnIjoiIn0=\",\"sec-ch-ua\":\"\\\"Google Chrome\\\";v=\\\"131\\\", \\\"Chromium\\\";v=\\\"131\\\", \\\"Not_A Brand\\\";v=\\\"24\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"x-requested-with\":\"XMLHttpRequest\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\",\"accept\":\"application\\/json, text\\/plain, *\\/*\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http:\\/\\/127.0.0.1:8000\\/\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"accept-language\":\"en-US,en;q=0.9,ar;q=0.8\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlU5SWRBcHNSbEpycXozREN4MllCa2c9PSIsInZhbHVlIjoiRXlsRzIzK21GN0U2Yit5WDdLdlpNMGswK3JyWWJibjVydVZ0WFQwQzEzblhiTWJHa3NrWUE4QkpPYjVrRjR5Q05zeFVLc0J5TVdFUGdqUEwwMkVIc1pYdnJqWVJoenZsOU1Ic1BmQW9ueGlaTnBGR0UzbFB3R0dkZVhyYVlYa24iLCJtYWMiOiJmNmEwZWJkM2E1MWFhNmIwMGM3MmJjOTkxNGE3NDFmNjk1M2U5YzQ5NWZkMTNkYTEwYWE2ZDhiMTIzNzEzMjk3IiwidGFnIjoiIn0%3D; devhani_session=eyJpdiI6Im1PbW94S3cyMGhqZmNnbHFFY3MwWEE9PSIsInZhbHVlIjoiYnpkOUlWc1lyV0N2aENNb0tia1d5U2dLbGtJS0h1b2pWaWVSTkRuUW9CSUNYbitLTGhtbzVXU1FkbFU1V0tXNUIwbkRUaFlFbjA0MHk4MjV0TXpEVVRQa3owOUZaU2pVallSbi9NZGtUZnJGNWt5S0hRMGoyRUNqbmFJL0w1R24iLCJtYWMiOiJjZjQ5Y2NiY2M1ZDQ5N2ZjZjk2MmRlN2MyNDk4ZWVjMmJhYzM3MzQ0Y2RlNTUzNDkwZDhjNTk2ZTRlOTM1Mzk5IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":200,\"response\":{\"fullname\":\"Hani Sulaiman\",\"phoneNumber\":\"+963932682483\",\"email\":\"hani.sulaiman.2002@gmail.com\",\"mainMajor\":\"Machine Learning Engineer\",\"cvLink\":\"http:\\/\\/127.0.0.1:8000\\/api\\/skills\",\"whatsappLink\":\"http:\\/\\/127.0.0.1:8000\\/api\\/skills\",\"facebookLink\":\"http:\\/\\/127.0.0.1:8000\\/api\\/skills\",\"instagramLink\":\"http:\\/\\/127.0.0.1:8000\\/api\\/skills\",\"githubLink\":\"http:\\/\\/127.0.0.1:8000\\/api\\/skills\",\"linkedinLink\":\"http:\\/\\/127.0.0.1:8000\\/api\\/skills\",\"address\":\"Syria-Damascus-Jaramana\",\"experienceStartDate\":\"2021-01-14\",\"personalPhoto\":\"\\/uploads\\/settings\\/1731659848_me.png\",\"cvFile\":\"\\/uploads\\/settings\\/1731656827_ITE-BPR601-C63.pdf\"},\"duration\":185,\"memory\":20,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:39'),
(173, '9d8333d7-07fd-46db-a6c1-984e2353f404', '9d8333d7-0ee3-4fe2-a988-ac594c02e40b', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `sections` where `page_id` = 1 and `title` = \'hero\' limit 1\",\"time\":\"0.83\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\app\\\\Http\\\\Controllers\\\\Api\\\\cms\\\\HeroSectionController.php\",\"line\":13,\"hash\":\"be928a9e728533c6f4d6deef490f8737\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:40'),
(174, '9d8333d7-098d-4a9b-a0ac-7f765dd74261', '9d8333d7-0ee3-4fe2-a988-ac594c02e40b', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Section\",\"count\":1,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:40'),
(175, '9d8333d7-0e2c-4654-b368-c964c161394d', '9d8333d7-0ee3-4fe2-a988-ac594c02e40b', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/api\\/hero-section\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Api\\\\cms\\\\HeroSectionController@show\",\"middleware\":[\"api\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"authorization\":\"********\",\"x-xsrf-token\":\"eyJpdiI6IlU5SWRBcHNSbEpycXozREN4MllCa2c9PSIsInZhbHVlIjoiRXlsRzIzK21GN0U2Yit5WDdLdlpNMGswK3JyWWJibjVydVZ0WFQwQzEzblhiTWJHa3NrWUE4QkpPYjVrRjR5Q05zeFVLc0J5TVdFUGdqUEwwMkVIc1pYdnJqWVJoenZsOU1Ic1BmQW9ueGlaTnBGR0UzbFB3R0dkZVhyYVlYa24iLCJtYWMiOiJmNmEwZWJkM2E1MWFhNmIwMGM3MmJjOTkxNGE3NDFmNjk1M2U5YzQ5NWZkMTNkYTEwYWE2ZDhiMTIzNzEzMjk3IiwidGFnIjoiIn0=\",\"sec-ch-ua\":\"\\\"Google Chrome\\\";v=\\\"131\\\", \\\"Chromium\\\";v=\\\"131\\\", \\\"Not_A Brand\\\";v=\\\"24\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"x-requested-with\":\"XMLHttpRequest\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\",\"accept\":\"application\\/json, text\\/plain, *\\/*\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http:\\/\\/127.0.0.1:8000\\/\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"accept-language\":\"en-US,en;q=0.9,ar;q=0.8\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlU5SWRBcHNSbEpycXozREN4MllCa2c9PSIsInZhbHVlIjoiRXlsRzIzK21GN0U2Yit5WDdLdlpNMGswK3JyWWJibjVydVZ0WFQwQzEzblhiTWJHa3NrWUE4QkpPYjVrRjR5Q05zeFVLc0J5TVdFUGdqUEwwMkVIc1pYdnJqWVJoenZsOU1Ic1BmQW9ueGlaTnBGR0UzbFB3R0dkZVhyYVlYa24iLCJtYWMiOiJmNmEwZWJkM2E1MWFhNmIwMGM3MmJjOTkxNGE3NDFmNjk1M2U5YzQ5NWZkMTNkYTEwYWE2ZDhiMTIzNzEzMjk3IiwidGFnIjoiIn0%3D; devhani_session=eyJpdiI6Im1PbW94S3cyMGhqZmNnbHFFY3MwWEE9PSIsInZhbHVlIjoiYnpkOUlWc1lyV0N2aENNb0tia1d5U2dLbGtJS0h1b2pWaWVSTkRuUW9CSUNYbitLTGhtbzVXU1FkbFU1V0tXNUIwbkRUaFlFbjA0MHk4MjV0TXpEVVRQa3owOUZaU2pVallSbi9NZGtUZnJGNWt5S0hRMGoyRUNqbmFJL0w1R24iLCJtYWMiOiJjZjQ5Y2NiY2M1ZDQ5N2ZjZjk2MmRlN2MyNDk4ZWVjMmJhYzM3MzQ0Y2RlNTUzNDkwZDhjNTk2ZTRlOTM1Mzk5IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":200,\"response\":{\"id\":1,\"title\":\"hero\",\"page_id\":1,\"content\":{\"quote\":\"I build the digital bridges between imagination and reality\\u2014whether through intelligent AI, captivating web experiences, or seamless mobile apps. Every line of code is a stroke on the canvas of innovation, bringing ideas to life.\"},\"created_at\":\"2024-11-14T19:18:23.000000Z\",\"updated_at\":\"2024-11-15T08:39:41.000000Z\"},\"duration\":160,\"memory\":22,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:40'),
(176, '9d8333d7-4833-47b7-9ee1-83724f95161d', '9d8333d7-4ef8-4fcc-ae63-fcff26b81da5', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `sections` where `page_id` = 1 and `title` = \'services\' limit 1\",\"time\":\"0.43\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\app\\\\Http\\\\Controllers\\\\Api\\\\cms\\\\ServicesSectionController.php\",\"line\":17,\"hash\":\"be928a9e728533c6f4d6deef490f8737\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:40'),
(177, '9d8333d7-49bd-4cae-9e7b-de35dbb8897b', '9d8333d7-4ef8-4fcc-ae63-fcff26b81da5', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Section\",\"count\":1,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:40'),
(178, '9d8333d7-4e32-4c0f-977a-dc4b40fe1101', '9d8333d7-4ef8-4fcc-ae63-fcff26b81da5', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/api\\/services-section\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Api\\\\cms\\\\ServicesSectionController@show\",\"middleware\":[\"api\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"authorization\":\"********\",\"x-xsrf-token\":\"eyJpdiI6IlU5SWRBcHNSbEpycXozREN4MllCa2c9PSIsInZhbHVlIjoiRXlsRzIzK21GN0U2Yit5WDdLdlpNMGswK3JyWWJibjVydVZ0WFQwQzEzblhiTWJHa3NrWUE4QkpPYjVrRjR5Q05zeFVLc0J5TVdFUGdqUEwwMkVIc1pYdnJqWVJoenZsOU1Ic1BmQW9ueGlaTnBGR0UzbFB3R0dkZVhyYVlYa24iLCJtYWMiOiJmNmEwZWJkM2E1MWFhNmIwMGM3MmJjOTkxNGE3NDFmNjk1M2U5YzQ5NWZkMTNkYTEwYWE2ZDhiMTIzNzEzMjk3IiwidGFnIjoiIn0=\",\"sec-ch-ua\":\"\\\"Google Chrome\\\";v=\\\"131\\\", \\\"Chromium\\\";v=\\\"131\\\", \\\"Not_A Brand\\\";v=\\\"24\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"x-requested-with\":\"XMLHttpRequest\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\",\"accept\":\"application\\/json, text\\/plain, *\\/*\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http:\\/\\/127.0.0.1:8000\\/\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"accept-language\":\"en-US,en;q=0.9,ar;q=0.8\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlU5SWRBcHNSbEpycXozREN4MllCa2c9PSIsInZhbHVlIjoiRXlsRzIzK21GN0U2Yit5WDdLdlpNMGswK3JyWWJibjVydVZ0WFQwQzEzblhiTWJHa3NrWUE4QkpPYjVrRjR5Q05zeFVLc0J5TVdFUGdqUEwwMkVIc1pYdnJqWVJoenZsOU1Ic1BmQW9ueGlaTnBGR0UzbFB3R0dkZVhyYVlYa24iLCJtYWMiOiJmNmEwZWJkM2E1MWFhNmIwMGM3MmJjOTkxNGE3NDFmNjk1M2U5YzQ5NWZkMTNkYTEwYWE2ZDhiMTIzNzEzMjk3IiwidGFnIjoiIn0%3D; devhani_session=eyJpdiI6Im1PbW94S3cyMGhqZmNnbHFFY3MwWEE9PSIsInZhbHVlIjoiYnpkOUlWc1lyV0N2aENNb0tia1d5U2dLbGtJS0h1b2pWaWVSTkRuUW9CSUNYbitLTGhtbzVXU1FkbFU1V0tXNUIwbkRUaFlFbjA0MHk4MjV0TXpEVVRQa3owOUZaU2pVallSbi9NZGtUZnJGNWt5S0hRMGoyRUNqbmFJL0w1R24iLCJtYWMiOiJjZjQ5Y2NiY2M1ZDQ5N2ZjZjk2MmRlN2MyNDk4ZWVjMmJhYzM3MzQ0Y2RlNTUzNDkwZDhjNTk2ZTRlOTM1Mzk5IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":200,\"response\":{\"id\":4,\"title\":\"services\",\"page_id\":1,\"content\":{\"quote\":\"test\"},\"created_at\":\"2024-11-14T19:28:04.000000Z\",\"updated_at\":\"2024-11-14T19:28:04.000000Z\"},\"duration\":158,\"memory\":22,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:40'),
(179, '9d8333d7-8595-4986-b243-1c6c61e48625', '9d8333d7-8bfe-4dec-947a-cc46e543dfbe', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `sections` where `page_id` = 1 and `title` = \'projects\' limit 1\",\"time\":\"0.42\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\app\\\\Http\\\\Controllers\\\\Api\\\\cms\\\\ProjectSectionController.php\",\"line\":17,\"hash\":\"be928a9e728533c6f4d6deef490f8737\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:40'),
(180, '9d8333d7-8761-4408-b436-cd5ecb910ee1', '9d8333d7-8bfe-4dec-947a-cc46e543dfbe', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Section\",\"count\":1,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:40'),
(181, '9d8333d7-8b4b-4eca-8145-e39b31e35431', '9d8333d7-8bfe-4dec-947a-cc46e543dfbe', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/api\\/projects-section\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Api\\\\cms\\\\ProjectSectionController@show\",\"middleware\":[\"api\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"authorization\":\"********\",\"x-xsrf-token\":\"eyJpdiI6IlU5SWRBcHNSbEpycXozREN4MllCa2c9PSIsInZhbHVlIjoiRXlsRzIzK21GN0U2Yit5WDdLdlpNMGswK3JyWWJibjVydVZ0WFQwQzEzblhiTWJHa3NrWUE4QkpPYjVrRjR5Q05zeFVLc0J5TVdFUGdqUEwwMkVIc1pYdnJqWVJoenZsOU1Ic1BmQW9ueGlaTnBGR0UzbFB3R0dkZVhyYVlYa24iLCJtYWMiOiJmNmEwZWJkM2E1MWFhNmIwMGM3MmJjOTkxNGE3NDFmNjk1M2U5YzQ5NWZkMTNkYTEwYWE2ZDhiMTIzNzEzMjk3IiwidGFnIjoiIn0=\",\"sec-ch-ua\":\"\\\"Google Chrome\\\";v=\\\"131\\\", \\\"Chromium\\\";v=\\\"131\\\", \\\"Not_A Brand\\\";v=\\\"24\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"x-requested-with\":\"XMLHttpRequest\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\",\"accept\":\"application\\/json, text\\/plain, *\\/*\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http:\\/\\/127.0.0.1:8000\\/\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"accept-language\":\"en-US,en;q=0.9,ar;q=0.8\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlU5SWRBcHNSbEpycXozREN4MllCa2c9PSIsInZhbHVlIjoiRXlsRzIzK21GN0U2Yit5WDdLdlpNMGswK3JyWWJibjVydVZ0WFQwQzEzblhiTWJHa3NrWUE4QkpPYjVrRjR5Q05zeFVLc0J5TVdFUGdqUEwwMkVIc1pYdnJqWVJoenZsOU1Ic1BmQW9ueGlaTnBGR0UzbFB3R0dkZVhyYVlYa24iLCJtYWMiOiJmNmEwZWJkM2E1MWFhNmIwMGM3MmJjOTkxNGE3NDFmNjk1M2U5YzQ5NWZkMTNkYTEwYWE2ZDhiMTIzNzEzMjk3IiwidGFnIjoiIn0%3D; devhani_session=eyJpdiI6Im1PbW94S3cyMGhqZmNnbHFFY3MwWEE9PSIsInZhbHVlIjoiYnpkOUlWc1lyV0N2aENNb0tia1d5U2dLbGtJS0h1b2pWaWVSTkRuUW9CSUNYbitLTGhtbzVXU1FkbFU1V0tXNUIwbkRUaFlFbjA0MHk4MjV0TXpEVVRQa3owOUZaU2pVallSbi9NZGtUZnJGNWt5S0hRMGoyRUNqbmFJL0w1R24iLCJtYWMiOiJjZjQ5Y2NiY2M1ZDQ5N2ZjZjk2MmRlN2MyNDk4ZWVjMmJhYzM3MzQ0Y2RlNTUzNDkwZDhjNTk2ZTRlOTM1Mzk5IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":200,\"response\":{\"id\":3,\"title\":\"projects\",\"page_id\":1,\"content\":{\"quote\":\"test\"},\"created_at\":\"2024-11-14T19:24:16.000000Z\",\"updated_at\":\"2024-11-14T19:24:16.000000Z\"},\"duration\":151,\"memory\":22,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:40'),
(182, '9d8333d7-c3e9-4c8e-a970-5447b829fc85', '9d8333d7-c87e-4772-80f9-78e76f7bc364', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `experiences`\",\"time\":\"0.40\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\app\\\\Http\\\\Controllers\\\\Api\\\\ExperienceController.php\",\"line\":18,\"hash\":\"1c9cb2ce49f17169ee5c9c2f2266ecc8\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:40'),
(183, '9d8333d7-c56f-461b-b2bc-85b066d21397', '9d8333d7-c87e-4772-80f9-78e76f7bc364', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Experience\",\"count\":1,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:40'),
(184, '9d8333d7-c764-4381-8e51-9aa4f6a6311a', '9d8333d7-c87e-4772-80f9-78e76f7bc364', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/api\\/experiences\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Api\\\\ExperienceController@index\",\"middleware\":[\"api\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"authorization\":\"********\",\"x-xsrf-token\":\"eyJpdiI6IlU5SWRBcHNSbEpycXozREN4MllCa2c9PSIsInZhbHVlIjoiRXlsRzIzK21GN0U2Yit5WDdLdlpNMGswK3JyWWJibjVydVZ0WFQwQzEzblhiTWJHa3NrWUE4QkpPYjVrRjR5Q05zeFVLc0J5TVdFUGdqUEwwMkVIc1pYdnJqWVJoenZsOU1Ic1BmQW9ueGlaTnBGR0UzbFB3R0dkZVhyYVlYa24iLCJtYWMiOiJmNmEwZWJkM2E1MWFhNmIwMGM3MmJjOTkxNGE3NDFmNjk1M2U5YzQ5NWZkMTNkYTEwYWE2ZDhiMTIzNzEzMjk3IiwidGFnIjoiIn0=\",\"sec-ch-ua\":\"\\\"Google Chrome\\\";v=\\\"131\\\", \\\"Chromium\\\";v=\\\"131\\\", \\\"Not_A Brand\\\";v=\\\"24\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"x-requested-with\":\"XMLHttpRequest\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\",\"accept\":\"application\\/json, text\\/plain, *\\/*\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http:\\/\\/127.0.0.1:8000\\/\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"accept-language\":\"en-US,en;q=0.9,ar;q=0.8\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlU5SWRBcHNSbEpycXozREN4MllCa2c9PSIsInZhbHVlIjoiRXlsRzIzK21GN0U2Yit5WDdLdlpNMGswK3JyWWJibjVydVZ0WFQwQzEzblhiTWJHa3NrWUE4QkpPYjVrRjR5Q05zeFVLc0J5TVdFUGdqUEwwMkVIc1pYdnJqWVJoenZsOU1Ic1BmQW9ueGlaTnBGR0UzbFB3R0dkZVhyYVlYa24iLCJtYWMiOiJmNmEwZWJkM2E1MWFhNmIwMGM3MmJjOTkxNGE3NDFmNjk1M2U5YzQ5NWZkMTNkYTEwYWE2ZDhiMTIzNzEzMjk3IiwidGFnIjoiIn0%3D; devhani_session=eyJpdiI6Im1PbW94S3cyMGhqZmNnbHFFY3MwWEE9PSIsInZhbHVlIjoiYnpkOUlWc1lyV0N2aENNb0tia1d5U2dLbGtJS0h1b2pWaWVSTkRuUW9CSUNYbitLTGhtbzVXU1FkbFU1V0tXNUIwbkRUaFlFbjA0MHk4MjV0TXpEVVRQa3owOUZaU2pVallSbi9NZGtUZnJGNWt5S0hRMGoyRUNqbmFJL0w1R24iLCJtYWMiOiJjZjQ5Y2NiY2M1ZDQ5N2ZjZjk2MmRlN2MyNDk4ZWVjMmJhYzM3MzQ0Y2RlNTUzNDkwZDhjNTk2ZTRlOTM1Mzk5IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":200,\"response\":[{\"id\":2,\"title\":\"Full Stack Web Developer\",\"source\":\"Freelance\",\"from_date\":\"2020-06-17\",\"to_date\":\"2024-01-17\",\"created_at\":\"2024-11-17T12:20:36.000000Z\",\"updated_at\":\"2024-11-17T12:21:27.000000Z\"}],\"duration\":147,\"memory\":22,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:40'),
(185, '9d8333d8-03f8-4b21-91d6-961e4f8c0872', '9d8333d8-0836-48ac-bff9-db85b65d33e4', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `educations`\",\"time\":\"0.36\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\app\\\\Http\\\\Controllers\\\\Api\\\\EducationController.php\",\"line\":18,\"hash\":\"9b588a26be82e49e6ecb08ac24c0b325\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:40'),
(186, '9d8333d8-0583-488f-acb5-90cd25c4bdae', '9d8333d8-0836-48ac-bff9-db85b65d33e4', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Education\",\"count\":1,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:40'),
(187, '9d8333d8-0770-4e78-be43-fa7a76df4577', '9d8333d8-0836-48ac-bff9-db85b65d33e4', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/api\\/educations\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Api\\\\EducationController@index\",\"middleware\":[\"api\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"authorization\":\"********\",\"x-xsrf-token\":\"eyJpdiI6IlU5SWRBcHNSbEpycXozREN4MllCa2c9PSIsInZhbHVlIjoiRXlsRzIzK21GN0U2Yit5WDdLdlpNMGswK3JyWWJibjVydVZ0WFQwQzEzblhiTWJHa3NrWUE4QkpPYjVrRjR5Q05zeFVLc0J5TVdFUGdqUEwwMkVIc1pYdnJqWVJoenZsOU1Ic1BmQW9ueGlaTnBGR0UzbFB3R0dkZVhyYVlYa24iLCJtYWMiOiJmNmEwZWJkM2E1MWFhNmIwMGM3MmJjOTkxNGE3NDFmNjk1M2U5YzQ5NWZkMTNkYTEwYWE2ZDhiMTIzNzEzMjk3IiwidGFnIjoiIn0=\",\"sec-ch-ua\":\"\\\"Google Chrome\\\";v=\\\"131\\\", \\\"Chromium\\\";v=\\\"131\\\", \\\"Not_A Brand\\\";v=\\\"24\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"x-requested-with\":\"XMLHttpRequest\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\",\"accept\":\"application\\/json, text\\/plain, *\\/*\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http:\\/\\/127.0.0.1:8000\\/\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"accept-language\":\"en-US,en;q=0.9,ar;q=0.8\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlU5SWRBcHNSbEpycXozREN4MllCa2c9PSIsInZhbHVlIjoiRXlsRzIzK21GN0U2Yit5WDdLdlpNMGswK3JyWWJibjVydVZ0WFQwQzEzblhiTWJHa3NrWUE4QkpPYjVrRjR5Q05zeFVLc0J5TVdFUGdqUEwwMkVIc1pYdnJqWVJoenZsOU1Ic1BmQW9ueGlaTnBGR0UzbFB3R0dkZVhyYVlYa24iLCJtYWMiOiJmNmEwZWJkM2E1MWFhNmIwMGM3MmJjOTkxNGE3NDFmNjk1M2U5YzQ5NWZkMTNkYTEwYWE2ZDhiMTIzNzEzMjk3IiwidGFnIjoiIn0%3D; devhani_session=eyJpdiI6Im1PbW94S3cyMGhqZmNnbHFFY3MwWEE9PSIsInZhbHVlIjoiYnpkOUlWc1lyV0N2aENNb0tia1d5U2dLbGtJS0h1b2pWaWVSTkRuUW9CSUNYbitLTGhtbzVXU1FkbFU1V0tXNUIwbkRUaFlFbjA0MHk4MjV0TXpEVVRQa3owOUZaU2pVallSbi9NZGtUZnJGNWt5S0hRMGoyRUNqbmFJL0w1R24iLCJtYWMiOiJjZjQ5Y2NiY2M1ZDQ5N2ZjZjk2MmRlN2MyNDk4ZWVjMmJhYzM3MzQ0Y2RlNTUzNDkwZDhjNTk2ZTRlOTM1Mzk5IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":200,\"response\":[{\"id\":2,\"title\":\"Information Technology Engineering - Machine Learning Engineering\",\"institute\":\"Syrian Virtual University\",\"from_date\":\"2020-01-02\",\"to_date\":\"2025-06-17\",\"certificate_link\":null,\"created_at\":\"2024-11-17T12:19:13.000000Z\",\"updated_at\":\"2024-11-17T13:04:55.000000Z\"}],\"duration\":157,\"memory\":20,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:40'),
(188, '9d8333d8-40a9-4198-87df-d6b8bd959ee8', '9d8333d8-45ba-43fb-b7a6-64d7006145a2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `skills`\",\"time\":\"0.34\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\app\\\\Http\\\\Controllers\\\\Api\\\\SkillController.php\",\"line\":18,\"hash\":\"f89325d300023de7d453d72e82a588d3\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:40'),
(189, '9d8333d8-4232-44f0-b64a-ffc7bd983e86', '9d8333d8-45ba-43fb-b7a6-64d7006145a2', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Skill\",\"count\":12,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:40'),
(190, '9d8333d8-4502-466d-af4f-1d47921ddbd4', '9d8333d8-45ba-43fb-b7a6-64d7006145a2', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/api\\/skills\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Api\\\\SkillController@index\",\"middleware\":[\"api\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"authorization\":\"********\",\"x-xsrf-token\":\"eyJpdiI6IlU5SWRBcHNSbEpycXozREN4MllCa2c9PSIsInZhbHVlIjoiRXlsRzIzK21GN0U2Yit5WDdLdlpNMGswK3JyWWJibjVydVZ0WFQwQzEzblhiTWJHa3NrWUE4QkpPYjVrRjR5Q05zeFVLc0J5TVdFUGdqUEwwMkVIc1pYdnJqWVJoenZsOU1Ic1BmQW9ueGlaTnBGR0UzbFB3R0dkZVhyYVlYa24iLCJtYWMiOiJmNmEwZWJkM2E1MWFhNmIwMGM3MmJjOTkxNGE3NDFmNjk1M2U5YzQ5NWZkMTNkYTEwYWE2ZDhiMTIzNzEzMjk3IiwidGFnIjoiIn0=\",\"sec-ch-ua\":\"\\\"Google Chrome\\\";v=\\\"131\\\", \\\"Chromium\\\";v=\\\"131\\\", \\\"Not_A Brand\\\";v=\\\"24\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"x-requested-with\":\"XMLHttpRequest\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\",\"accept\":\"application\\/json, text\\/plain, *\\/*\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http:\\/\\/127.0.0.1:8000\\/\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"accept-language\":\"en-US,en;q=0.9,ar;q=0.8\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlU5SWRBcHNSbEpycXozREN4MllCa2c9PSIsInZhbHVlIjoiRXlsRzIzK21GN0U2Yit5WDdLdlpNMGswK3JyWWJibjVydVZ0WFQwQzEzblhiTWJHa3NrWUE4QkpPYjVrRjR5Q05zeFVLc0J5TVdFUGdqUEwwMkVIc1pYdnJqWVJoenZsOU1Ic1BmQW9ueGlaTnBGR0UzbFB3R0dkZVhyYVlYa24iLCJtYWMiOiJmNmEwZWJkM2E1MWFhNmIwMGM3MmJjOTkxNGE3NDFmNjk1M2U5YzQ5NWZkMTNkYTEwYWE2ZDhiMTIzNzEzMjk3IiwidGFnIjoiIn0%3D; devhani_session=eyJpdiI6Im1PbW94S3cyMGhqZmNnbHFFY3MwWEE9PSIsInZhbHVlIjoiYnpkOUlWc1lyV0N2aENNb0tia1d5U2dLbGtJS0h1b2pWaWVSTkRuUW9CSUNYbitLTGhtbzVXU1FkbFU1V0tXNUIwbkRUaFlFbjA0MHk4MjV0TXpEVVRQa3owOUZaU2pVallSbi9NZGtUZnJGNWt5S0hRMGoyRUNqbmFJL0w1R24iLCJtYWMiOiJjZjQ5Y2NiY2M1ZDQ5N2ZjZjk2MmRlN2MyNDk4ZWVjMmJhYzM3MzQ0Y2RlNTUzNDkwZDhjNTk2ZTRlOTM1Mzk5IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":200,\"response\":[{\"id\":2,\"title\":\"HTML\",\"percentage\":100,\"icon_url\":\"\\/uploads\\/skills\\/1731846136_732212.png\",\"created_at\":\"2024-11-17T12:22:16.000000Z\",\"updated_at\":\"2024-11-17T12:22:16.000000Z\"},{\"id\":3,\"title\":\"Css\",\"percentage\":95,\"icon_url\":\"\\/uploads\\/skills\\/1731846220_css3.png\",\"created_at\":\"2024-11-17T12:23:40.000000Z\",\"updated_at\":\"2024-11-17T12:23:40.000000Z\"},{\"id\":4,\"title\":\"JavaScript\",\"percentage\":80,\"icon_url\":\"\\/uploads\\/skills\\/1731846275_javascript-logo-javascript-icon-transparent-free-png.png\",\"created_at\":\"2024-11-17T12:24:35.000000Z\",\"updated_at\":\"2024-11-17T12:24:35.000000Z\"},{\"id\":5,\"title\":\"Vue.js\",\"percentage\":90,\"icon_url\":\"\\/uploads\\/skills\\/1731846327_vue-js-icon.png\",\"created_at\":\"2024-11-17T12:25:27.000000Z\",\"updated_at\":\"2024-11-17T12:25:27.000000Z\"},{\"id\":6,\"title\":\"Ajax\",\"percentage\":75,\"icon_url\":\"\\/uploads\\/skills\\/1731846500_image-removebg-preview.png\",\"created_at\":\"2024-11-17T12:28:20.000000Z\",\"updated_at\":\"2024-11-17T12:28:20.000000Z\"},{\"id\":7,\"title\":\"Bootstrap\",\"percentage\":70,\"icon_url\":\"\\/uploads\\/skills\\/1731846581_bootstrap-icon-css.png\",\"created_at\":\"2024-11-17T12:29:41.000000Z\",\"updated_at\":\"2024-11-17T12:29:41.000000Z\"},{\"id\":8,\"title\":\"Flutter\",\"percentage\":60,\"icon_url\":\"\\/uploads\\/skills\\/1731846723_flutter-logo-5086DD11C5-seeklogo.com.png\",\"created_at\":\"2024-11-17T12:32:03.000000Z\",\"updated_at\":\"2024-11-17T12:32:03.000000Z\"},{\"id\":9,\"title\":\"Dart\",\"percentage\":60,\"icon_url\":\"\\/uploads\\/skills\\/1731846778_dart-icon-1021x1024-0q8oyg7c.png\",\"created_at\":\"2024-11-17T12:32:58.000000Z\",\"updated_at\":\"2024-11-17T12:32:58.000000Z\"},{\"id\":10,\"title\":\"Laravel\",\"percentage\":95,\"icon_url\":\"\\/uploads\\/skills\\/1731846854_laravel-icon-995x1024-dk77ahh4.png\",\"created_at\":\"2024-11-17T12:34:14.000000Z\",\"updated_at\":\"2024-11-17T12:34:14.000000Z\"},{\"id\":11,\"title\":\"MySql\",\"percentage\":80,\"icon_url\":\"\\/uploads\\/skills\\/1731846909_pngimg.com - mysql_PNG23.png\",\"created_at\":\"2024-11-17T12:35:09.000000Z\",\"updated_at\":\"2024-11-17T12:35:09.000000Z\"},{\"id\":12,\"title\":\"Rest Api\",\"percentage\":100,\"icon_url\":\"\\/uploads\\/skills\\/1731847004_rest-api-icon.png\",\"created_at\":\"2024-11-17T12:36:44.000000Z\",\"updated_at\":\"2024-11-17T12:36:44.000000Z\"},{\"id\":13,\"title\":\"Firebase\",\"percentage\":80,\"icon_url\":\"\\/uploads\\/skills\\/1731847055_1611674.png\",\"created_at\":\"2024-11-17T12:37:35.000000Z\",\"updated_at\":\"2024-11-17T12:37:35.000000Z\"}],\"duration\":151,\"memory\":22,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:40'),
(191, '9d8333d8-7a14-40b1-a5a8-2f8af02f0e39', '9d8333d8-8098-4f12-8e98-5e2cc1d98c2e', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `sections` where `page_id` = 1 and `title` = \'client\' limit 1\",\"time\":\"0.46\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\app\\\\Http\\\\Controllers\\\\Api\\\\cms\\\\ClientSectionController.php\",\"line\":17,\"hash\":\"be928a9e728533c6f4d6deef490f8737\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:41'),
(192, '9d8333d8-7b9e-4ba2-a3eb-ec29e4c39ce5', '9d8333d8-8098-4f12-8e98-5e2cc1d98c2e', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Section\",\"count\":1,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:41'),
(193, '9d8333d8-7fdd-4441-8621-5e967f905eda', '9d8333d8-8098-4f12-8e98-5e2cc1d98c2e', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/api\\/clients-section\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Api\\\\cms\\\\ClientSectionController@show\",\"middleware\":[\"api\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"authorization\":\"********\",\"x-xsrf-token\":\"eyJpdiI6IlU5SWRBcHNSbEpycXozREN4MllCa2c9PSIsInZhbHVlIjoiRXlsRzIzK21GN0U2Yit5WDdLdlpNMGswK3JyWWJibjVydVZ0WFQwQzEzblhiTWJHa3NrWUE4QkpPYjVrRjR5Q05zeFVLc0J5TVdFUGdqUEwwMkVIc1pYdnJqWVJoenZsOU1Ic1BmQW9ueGlaTnBGR0UzbFB3R0dkZVhyYVlYa24iLCJtYWMiOiJmNmEwZWJkM2E1MWFhNmIwMGM3MmJjOTkxNGE3NDFmNjk1M2U5YzQ5NWZkMTNkYTEwYWE2ZDhiMTIzNzEzMjk3IiwidGFnIjoiIn0=\",\"sec-ch-ua\":\"\\\"Google Chrome\\\";v=\\\"131\\\", \\\"Chromium\\\";v=\\\"131\\\", \\\"Not_A Brand\\\";v=\\\"24\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"x-requested-with\":\"XMLHttpRequest\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\",\"accept\":\"application\\/json, text\\/plain, *\\/*\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http:\\/\\/127.0.0.1:8000\\/\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"accept-language\":\"en-US,en;q=0.9,ar;q=0.8\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlU5SWRBcHNSbEpycXozREN4MllCa2c9PSIsInZhbHVlIjoiRXlsRzIzK21GN0U2Yit5WDdLdlpNMGswK3JyWWJibjVydVZ0WFQwQzEzblhiTWJHa3NrWUE4QkpPYjVrRjR5Q05zeFVLc0J5TVdFUGdqUEwwMkVIc1pYdnJqWVJoenZsOU1Ic1BmQW9ueGlaTnBGR0UzbFB3R0dkZVhyYVlYa24iLCJtYWMiOiJmNmEwZWJkM2E1MWFhNmIwMGM3MmJjOTkxNGE3NDFmNjk1M2U5YzQ5NWZkMTNkYTEwYWE2ZDhiMTIzNzEzMjk3IiwidGFnIjoiIn0%3D; devhani_session=eyJpdiI6Im1PbW94S3cyMGhqZmNnbHFFY3MwWEE9PSIsInZhbHVlIjoiYnpkOUlWc1lyV0N2aENNb0tia1d5U2dLbGtJS0h1b2pWaWVSTkRuUW9CSUNYbitLTGhtbzVXU1FkbFU1V0tXNUIwbkRUaFlFbjA0MHk4MjV0TXpEVVRQa3owOUZaU2pVallSbi9NZGtUZnJGNWt5S0hRMGoyRUNqbmFJL0w1R24iLCJtYWMiOiJjZjQ5Y2NiY2M1ZDQ5N2ZjZjk2MmRlN2MyNDk4ZWVjMmJhYzM3MzQ0Y2RlNTUzNDkwZDhjNTk2ZTRlOTM1Mzk5IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":200,\"response\":{\"id\":2,\"title\":\"client\",\"page_id\":1,\"content\":{\"quote\":\"test\"},\"created_at\":\"2024-11-14T19:21:41.000000Z\",\"updated_at\":\"2024-11-14T19:21:41.000000Z\"},\"duration\":145,\"memory\":22,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:41'),
(194, '9d8333d8-ba29-43d0-9b70-01a138970654', '9d8333d8-bfef-45fd-ac97-99667e4a338f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `settings`\",\"time\":\"0.40\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\app\\\\Http\\\\Controllers\\\\Api\\\\SettingController.php\",\"line\":20,\"hash\":\"9a0c1b1878c6704a2df2ae90c2a24cef\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:41'),
(195, '9d8333d8-bbb4-497e-9c1c-eb744cf639bd', '9d8333d8-bfef-45fd-ac97-99667e4a338f', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Setting\",\"count\":14,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:41'),
(196, '9d8333d8-bf02-491e-88f4-484aebd29aeb', '9d8333d8-bfef-45fd-ac97-99667e4a338f', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/api\\/all-settings\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Api\\\\SettingController@all\",\"middleware\":[\"api\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"authorization\":\"********\",\"x-xsrf-token\":\"eyJpdiI6IlU5SWRBcHNSbEpycXozREN4MllCa2c9PSIsInZhbHVlIjoiRXlsRzIzK21GN0U2Yit5WDdLdlpNMGswK3JyWWJibjVydVZ0WFQwQzEzblhiTWJHa3NrWUE4QkpPYjVrRjR5Q05zeFVLc0J5TVdFUGdqUEwwMkVIc1pYdnJqWVJoenZsOU1Ic1BmQW9ueGlaTnBGR0UzbFB3R0dkZVhyYVlYa24iLCJtYWMiOiJmNmEwZWJkM2E1MWFhNmIwMGM3MmJjOTkxNGE3NDFmNjk1M2U5YzQ5NWZkMTNkYTEwYWE2ZDhiMTIzNzEzMjk3IiwidGFnIjoiIn0=\",\"sec-ch-ua\":\"\\\"Google Chrome\\\";v=\\\"131\\\", \\\"Chromium\\\";v=\\\"131\\\", \\\"Not_A Brand\\\";v=\\\"24\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"x-requested-with\":\"XMLHttpRequest\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\",\"accept\":\"application\\/json, text\\/plain, *\\/*\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http:\\/\\/127.0.0.1:8000\\/\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"accept-language\":\"en-US,en;q=0.9,ar;q=0.8\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlU5SWRBcHNSbEpycXozREN4MllCa2c9PSIsInZhbHVlIjoiRXlsRzIzK21GN0U2Yit5WDdLdlpNMGswK3JyWWJibjVydVZ0WFQwQzEzblhiTWJHa3NrWUE4QkpPYjVrRjR5Q05zeFVLc0J5TVdFUGdqUEwwMkVIc1pYdnJqWVJoenZsOU1Ic1BmQW9ueGlaTnBGR0UzbFB3R0dkZVhyYVlYa24iLCJtYWMiOiJmNmEwZWJkM2E1MWFhNmIwMGM3MmJjOTkxNGE3NDFmNjk1M2U5YzQ5NWZkMTNkYTEwYWE2ZDhiMTIzNzEzMjk3IiwidGFnIjoiIn0%3D; devhani_session=eyJpdiI6Im1PbW94S3cyMGhqZmNnbHFFY3MwWEE9PSIsInZhbHVlIjoiYnpkOUlWc1lyV0N2aENNb0tia1d5U2dLbGtJS0h1b2pWaWVSTkRuUW9CSUNYbitLTGhtbzVXU1FkbFU1V0tXNUIwbkRUaFlFbjA0MHk4MjV0TXpEVVRQa3owOUZaU2pVallSbi9NZGtUZnJGNWt5S0hRMGoyRUNqbmFJL0w1R24iLCJtYWMiOiJjZjQ5Y2NiY2M1ZDQ5N2ZjZjk2MmRlN2MyNDk4ZWVjMmJhYzM3MzQ0Y2RlNTUzNDkwZDhjNTk2ZTRlOTM1Mzk5IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":200,\"response\":{\"fullname\":\"Hani Sulaiman\",\"phoneNumber\":\"+963932682483\",\"email\":\"hani.sulaiman.2002@gmail.com\",\"mainMajor\":\"Machine Learning Engineer\",\"cvLink\":\"http:\\/\\/127.0.0.1:8000\\/api\\/skills\",\"whatsappLink\":\"http:\\/\\/127.0.0.1:8000\\/api\\/skills\",\"facebookLink\":\"http:\\/\\/127.0.0.1:8000\\/api\\/skills\",\"instagramLink\":\"http:\\/\\/127.0.0.1:8000\\/api\\/skills\",\"githubLink\":\"http:\\/\\/127.0.0.1:8000\\/api\\/skills\",\"linkedinLink\":\"http:\\/\\/127.0.0.1:8000\\/api\\/skills\",\"address\":\"Syria-Damascus-Jaramana\",\"experienceStartDate\":\"2021-01-14\",\"personalPhoto\":\"\\/uploads\\/settings\\/1731659848_me.png\",\"cvFile\":\"\\/uploads\\/settings\\/1731656827_ITE-BPR601-C63.pdf\"},\"duration\":156,\"memory\":20,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:41'),
(197, '9d8333d8-f4bf-44d6-b3e2-8fd23a318b2b', '9d8333d8-fbbc-45ab-8770-fb91e974b988', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `settings` where `key_setting` = \'experienceStartDate\' limit 1\",\"time\":\"0.33\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\app\\\\Http\\\\Controllers\\\\Api\\\\StatisticsController.php\",\"line\":18,\"hash\":\"35ca6ea5b2895a351c845334af7c288e\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:41'),
(198, '9d8333d8-f648-45d7-a437-58979ad4931c', '9d8333d8-fbbc-45ab-8770-fb91e974b988', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Setting\",\"count\":1,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:41'),
(199, '9d8333d8-f724-46df-874d-399189a4cb7c', '9d8333d8-fbbc-45ab-8770-fb91e974b988', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select count(*) as aggregate from `projects`\",\"time\":\"0.35\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\app\\\\Http\\\\Controllers\\\\Api\\\\StatisticsController.php\",\"line\":35,\"hash\":\"d0533f73256ad563595ab3e52cf6d28e\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:41'),
(200, '9d8333d8-f775-479f-926b-e63e98aa27da', '9d8333d8-fbbc-45ab-8770-fb91e974b988', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select count(*) as aggregate from `clients`\",\"time\":\"0.25\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\app\\\\Http\\\\Controllers\\\\Api\\\\StatisticsController.php\",\"line\":38,\"hash\":\"99a681c0cd3e547d0965629ccc17e250\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:41'),
(201, '9d8333d8-f7c2-4ef0-9c8b-97f85cf96886', '9d8333d8-fbbc-45ab-8770-fb91e974b988', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select count(*) as aggregate from `skills`\",\"time\":\"0.24\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\app\\\\Http\\\\Controllers\\\\Api\\\\StatisticsController.php\",\"line\":41,\"hash\":\"1baa7e9486c5f33d0928c64a570cb77e\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:41');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(202, '9d8333d8-fafd-428b-bce2-475721b4f244', '9d8333d8-fbbc-45ab-8770-fb91e974b988', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/api\\/statistics\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Api\\\\StatisticsController@getStatistics\",\"middleware\":[\"api\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"authorization\":\"********\",\"x-xsrf-token\":\"eyJpdiI6IlU5SWRBcHNSbEpycXozREN4MllCa2c9PSIsInZhbHVlIjoiRXlsRzIzK21GN0U2Yit5WDdLdlpNMGswK3JyWWJibjVydVZ0WFQwQzEzblhiTWJHa3NrWUE4QkpPYjVrRjR5Q05zeFVLc0J5TVdFUGdqUEwwMkVIc1pYdnJqWVJoenZsOU1Ic1BmQW9ueGlaTnBGR0UzbFB3R0dkZVhyYVlYa24iLCJtYWMiOiJmNmEwZWJkM2E1MWFhNmIwMGM3MmJjOTkxNGE3NDFmNjk1M2U5YzQ5NWZkMTNkYTEwYWE2ZDhiMTIzNzEzMjk3IiwidGFnIjoiIn0=\",\"sec-ch-ua\":\"\\\"Google Chrome\\\";v=\\\"131\\\", \\\"Chromium\\\";v=\\\"131\\\", \\\"Not_A Brand\\\";v=\\\"24\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"x-requested-with\":\"XMLHttpRequest\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\",\"accept\":\"application\\/json, text\\/plain, *\\/*\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http:\\/\\/127.0.0.1:8000\\/\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"accept-language\":\"en-US,en;q=0.9,ar;q=0.8\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlU5SWRBcHNSbEpycXozREN4MllCa2c9PSIsInZhbHVlIjoiRXlsRzIzK21GN0U2Yit5WDdLdlpNMGswK3JyWWJibjVydVZ0WFQwQzEzblhiTWJHa3NrWUE4QkpPYjVrRjR5Q05zeFVLc0J5TVdFUGdqUEwwMkVIc1pYdnJqWVJoenZsOU1Ic1BmQW9ueGlaTnBGR0UzbFB3R0dkZVhyYVlYa24iLCJtYWMiOiJmNmEwZWJkM2E1MWFhNmIwMGM3MmJjOTkxNGE3NDFmNjk1M2U5YzQ5NWZkMTNkYTEwYWE2ZDhiMTIzNzEzMjk3IiwidGFnIjoiIn0%3D; devhani_session=eyJpdiI6Im1PbW94S3cyMGhqZmNnbHFFY3MwWEE9PSIsInZhbHVlIjoiYnpkOUlWc1lyV0N2aENNb0tia1d5U2dLbGtJS0h1b2pWaWVSTkRuUW9CSUNYbitLTGhtbzVXU1FkbFU1V0tXNUIwbkRUaFlFbjA0MHk4MjV0TXpEVVRQa3owOUZaU2pVallSbi9NZGtUZnJGNWt5S0hRMGoyRUNqbmFJL0w1R24iLCJtYWMiOiJjZjQ5Y2NiY2M1ZDQ5N2ZjZjk2MmRlN2MyNDk4ZWVjMmJhYzM3MzQ0Y2RlNTUzNDkwZDhjNTk2ZTRlOTM1Mzk5IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":200,\"response\":{\"years_of_experience\":3,\"projects_completed\":2,\"happy_clients\":2,\"skills_count\":12},\"duration\":147,\"memory\":20,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:41'),
(203, '9d8333d9-370f-4717-8923-f435c10c85cd', '9d8333d9-3ba8-41e6-adc5-cfb83801e3eb', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `services`\",\"time\":\"0.47\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\app\\\\Http\\\\Controllers\\\\Api\\\\ServiceController.php\",\"line\":17,\"hash\":\"c0f29b3aeb2013b9e21306140d4adabc\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:41'),
(204, '9d8333d9-389a-46e9-bedd-a7f6a601f215', '9d8333d9-3ba8-41e6-adc5-cfb83801e3eb', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Service\",\"count\":3,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:41'),
(205, '9d8333d9-3abb-4802-ab80-c9f0dbf16a8b', '9d8333d9-3ba8-41e6-adc5-cfb83801e3eb', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/api\\/services\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Api\\\\ServiceController@index\",\"middleware\":[\"api\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"authorization\":\"********\",\"x-xsrf-token\":\"eyJpdiI6IlU5SWRBcHNSbEpycXozREN4MllCa2c9PSIsInZhbHVlIjoiRXlsRzIzK21GN0U2Yit5WDdLdlpNMGswK3JyWWJibjVydVZ0WFQwQzEzblhiTWJHa3NrWUE4QkpPYjVrRjR5Q05zeFVLc0J5TVdFUGdqUEwwMkVIc1pYdnJqWVJoenZsOU1Ic1BmQW9ueGlaTnBGR0UzbFB3R0dkZVhyYVlYa24iLCJtYWMiOiJmNmEwZWJkM2E1MWFhNmIwMGM3MmJjOTkxNGE3NDFmNjk1M2U5YzQ5NWZkMTNkYTEwYWE2ZDhiMTIzNzEzMjk3IiwidGFnIjoiIn0=\",\"sec-ch-ua\":\"\\\"Google Chrome\\\";v=\\\"131\\\", \\\"Chromium\\\";v=\\\"131\\\", \\\"Not_A Brand\\\";v=\\\"24\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"x-requested-with\":\"XMLHttpRequest\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\",\"accept\":\"application\\/json, text\\/plain, *\\/*\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http:\\/\\/127.0.0.1:8000\\/\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"accept-language\":\"en-US,en;q=0.9,ar;q=0.8\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlU5SWRBcHNSbEpycXozREN4MllCa2c9PSIsInZhbHVlIjoiRXlsRzIzK21GN0U2Yit5WDdLdlpNMGswK3JyWWJibjVydVZ0WFQwQzEzblhiTWJHa3NrWUE4QkpPYjVrRjR5Q05zeFVLc0J5TVdFUGdqUEwwMkVIc1pYdnJqWVJoenZsOU1Ic1BmQW9ueGlaTnBGR0UzbFB3R0dkZVhyYVlYa24iLCJtYWMiOiJmNmEwZWJkM2E1MWFhNmIwMGM3MmJjOTkxNGE3NDFmNjk1M2U5YzQ5NWZkMTNkYTEwYWE2ZDhiMTIzNzEzMjk3IiwidGFnIjoiIn0%3D; devhani_session=eyJpdiI6Im1PbW94S3cyMGhqZmNnbHFFY3MwWEE9PSIsInZhbHVlIjoiYnpkOUlWc1lyV0N2aENNb0tia1d5U2dLbGtJS0h1b2pWaWVSTkRuUW9CSUNYbitLTGhtbzVXU1FkbFU1V0tXNUIwbkRUaFlFbjA0MHk4MjV0TXpEVVRQa3owOUZaU2pVallSbi9NZGtUZnJGNWt5S0hRMGoyRUNqbmFJL0w1R24iLCJtYWMiOiJjZjQ5Y2NiY2M1ZDQ5N2ZjZjk2MmRlN2MyNDk4ZWVjMmJhYzM3MzQ0Y2RlNTUzNDkwZDhjNTk2ZTRlOTM1Mzk5IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":200,\"response\":[{\"id\":7,\"title\":\"Build AI System\",\"icon_code_html\":\"<i class=\\\"bi bi-stars\\\"><\\/i>\",\"content\":\"Bring your digital experience to life with custom AI solutions. I design and implement AI models tailored for websites and apps, ensuring they meet the unique needs of your project. From intelligent recommendation systems to natural language processing features, I can help you leverage cutting-edge AI to enhance user interactions and automate processes. Additionally, I offer AI API integration services, allowing your applications to connect seamlessly with powerful AI models. Whether you need predictive analytics, conversational AI, or image recognition, my solutions are built to be scalable, efficient, and ready to evolve with your business. I also specialize in end-to-end AI system development, covering everything from data collection and preprocessing to model training, deployment, and maintenance. My approach involves closely collaborating with clients to understand their business goals and identify opportunities where AI can deliver value. By adopting an agile development process, I ensure that your AI solution is flexible and adaptable to changing requirements. Beyond technical implementation, I provide comprehensive documentation and training to help your team understand and manage the AI systems effectively. This empowers your organization to make the most of AI technology and stay ahead of the competition. Whether you\'re looking to build a chatbot, an advanced predictive model, or any custom AI solution, I\'m here to transform your vision into reality.\",\"image_url\":\"\\/uploads\\/services\\/1731679385_machinelearning.jpg\",\"created_at\":\"2024-11-15T14:03:05.000000Z\",\"updated_at\":\"2024-11-15T14:03:05.000000Z\"},{\"id\":8,\"title\":\"Web Development\",\"icon_code_html\":\"<i class=\\\"bi bi-layout-text-window-reverse\\\"><\\/i>\",\"content\":\"I offer complete web development services to build all types of websites, from simple landing pages to complex web applications. Utilizing modern frameworks and technologies, I create websites that are fast, responsive, and tailored to your specific needs. My expertise spans front-end and back-end development, ensuring that every aspect of your website is optimized for performance, usability, and scalability. Whether you need an e-commerce platform, a corporate website, a personal blog, or a custom web solution, I have the skills to bring your ideas to life. I focus on creating engaging user experiences, implementing intuitive designs, and integrating all the necessary features to meet your business goals. Additionally, I ensure that every website I build is secure, SEO-friendly, and easy to maintain. With a deep understanding of both user experience (UX) and technical requirements, I can help you create a web presence that stands out and delivers value to your audience. My development process is collaborative and transparent, keeping you informed at every stage to ensure the final product exceeds your expectations.\",\"image_url\":\"\\/uploads\\/services\\/1731680461_web-development.jpg\",\"created_at\":\"2024-11-15T14:21:01.000000Z\",\"updated_at\":\"2024-11-15T14:21:01.000000Z\"},{\"id\":9,\"title\":\"App Development\",\"icon_code_html\":\"<i class=\\\"bi bi-app-indicator\\\"><\\/i>\",\"content\":\"I provide comprehensive app development services for both iOS and Android platforms. Whether you\'re looking to build a native app, a cross-platform solution, or a progressive web app (PWA), I have the expertise to bring your vision to life. By leveraging frameworks such as Flutter and React Native, I ensure that your app is fast, responsive, and provides a consistent user experience across devices. My app development process starts with understanding your business needs and translating them into user-centric designs and robust functionality. I prioritize performance, security, and scalability, making sure your app can grow alongside your business. From ideation to deployment, I handle every stage of development, including UI\\/UX design, backend integration, and testing. In addition, I offer post-launch support and maintenance to ensure your app remains up-to-date and performs optimally. Whether you\'re aiming to build a utility app, a social platform, an e-commerce solution, or anything in between, I am here to help you create an app that not only meets but exceeds your users\' expectations.\",\"image_url\":\"\\/uploads\\/services\\/1731680562_wp9517064-app-development-wallpapers.jpg\",\"created_at\":\"2024-11-15T14:22:42.000000Z\",\"updated_at\":\"2024-11-15T14:22:42.000000Z\"}],\"duration\":157,\"memory\":22,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:41'),
(206, '9d8333d9-76b3-46e4-832b-1cc1512a5b11', '9d8333d9-80fe-4dba-9370-10dee8f27d7b', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `services`\",\"time\":\"0.38\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\app\\\\Http\\\\Controllers\\\\Api\\\\ProjectController.php\",\"line\":25,\"hash\":\"c0f29b3aeb2013b9e21306140d4adabc\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:41'),
(207, '9d8333d9-783a-4bae-b320-d1747d4f74c6', '9d8333d9-80fe-4dba-9370-10dee8f27d7b', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Service\",\"count\":3,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:41'),
(208, '9d8333d9-7cf9-46f6-a893-3a618ade25f9', '9d8333d9-80fe-4dba-9370-10dee8f27d7b', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `projects`.*, `project_service`.`service_id` as `pivot_service_id`, `project_service`.`project_id` as `pivot_project_id` from `projects` inner join `project_service` on `projects`.`id` = `project_service`.`project_id` where `project_service`.`service_id` in (7, 8, 9) order by `created_at` desc\",\"time\":\"8.55\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\app\\\\Http\\\\Controllers\\\\Api\\\\ProjectController.php\",\"line\":25,\"hash\":\"43676303c156f04d342674f17b93aa9f\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:41'),
(209, '9d8333d9-7d1e-4733-8f47-54e7fcd738e2', '9d8333d9-80fe-4dba-9370-10dee8f27d7b', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Project\",\"count\":2,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:41'),
(210, '9d8333d9-8045-4797-ada7-2cd1e2daa222', '9d8333d9-80fe-4dba-9370-10dee8f27d7b', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/api\\/recent-projects\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Api\\\\ProjectController@recent\",\"middleware\":[\"api\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"authorization\":\"********\",\"x-xsrf-token\":\"eyJpdiI6IlU5SWRBcHNSbEpycXozREN4MllCa2c9PSIsInZhbHVlIjoiRXlsRzIzK21GN0U2Yit5WDdLdlpNMGswK3JyWWJibjVydVZ0WFQwQzEzblhiTWJHa3NrWUE4QkpPYjVrRjR5Q05zeFVLc0J5TVdFUGdqUEwwMkVIc1pYdnJqWVJoenZsOU1Ic1BmQW9ueGlaTnBGR0UzbFB3R0dkZVhyYVlYa24iLCJtYWMiOiJmNmEwZWJkM2E1MWFhNmIwMGM3MmJjOTkxNGE3NDFmNjk1M2U5YzQ5NWZkMTNkYTEwYWE2ZDhiMTIzNzEzMjk3IiwidGFnIjoiIn0=\",\"sec-ch-ua\":\"\\\"Google Chrome\\\";v=\\\"131\\\", \\\"Chromium\\\";v=\\\"131\\\", \\\"Not_A Brand\\\";v=\\\"24\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"x-requested-with\":\"XMLHttpRequest\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\",\"accept\":\"application\\/json, text\\/plain, *\\/*\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http:\\/\\/127.0.0.1:8000\\/\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"accept-language\":\"en-US,en;q=0.9,ar;q=0.8\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlU5SWRBcHNSbEpycXozREN4MllCa2c9PSIsInZhbHVlIjoiRXlsRzIzK21GN0U2Yit5WDdLdlpNMGswK3JyWWJibjVydVZ0WFQwQzEzblhiTWJHa3NrWUE4QkpPYjVrRjR5Q05zeFVLc0J5TVdFUGdqUEwwMkVIc1pYdnJqWVJoenZsOU1Ic1BmQW9ueGlaTnBGR0UzbFB3R0dkZVhyYVlYa24iLCJtYWMiOiJmNmEwZWJkM2E1MWFhNmIwMGM3MmJjOTkxNGE3NDFmNjk1M2U5YzQ5NWZkMTNkYTEwYWE2ZDhiMTIzNzEzMjk3IiwidGFnIjoiIn0%3D; devhani_session=eyJpdiI6Im1PbW94S3cyMGhqZmNnbHFFY3MwWEE9PSIsInZhbHVlIjoiYnpkOUlWc1lyV0N2aENNb0tia1d5U2dLbGtJS0h1b2pWaWVSTkRuUW9CSUNYbitLTGhtbzVXU1FkbFU1V0tXNUIwbkRUaFlFbjA0MHk4MjV0TXpEVVRQa3owOUZaU2pVallSbi9NZGtUZnJGNWt5S0hRMGoyRUNqbmFJL0w1R24iLCJtYWMiOiJjZjQ5Y2NiY2M1ZDQ5N2ZjZjk2MmRlN2MyNDk4ZWVjMmJhYzM3MzQ0Y2RlNTUzNDkwZDhjNTk2ZTRlOTM1Mzk5IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":200,\"response\":[{\"service\":\"Web Development\",\"projects\":[{\"id\":8,\"title\":\"Arak Perfume Store\",\"thumbnail_url\":\"\\/uploads\\/projects\\/1731789867_FireShot Capture 0054 - Arakperfume - arakperfumes.ae.png\",\"quick_info\":\"The perfume store in the UAE offers a luxurious and exclusive experience for fragrance enthusiasts from around the world. The store is distinguished by its wide range of premium and innovative perfumes that blend traditional Arabian and oriental heritage with the latest global trends. The collection features a variety of scents, including rich oriental perfumes, musk, amber, as well as renowned French and international fragrances, catering to all tastes. The store also offers bespoke perfume services tailored to each customer\\u2019s unique personality and style. With high-quality products and exceptional service, it is the ideal destination for fragrance lovers seeking an extraordinary experience in the world of captivating scents\",\"start_date\":\"2024-05-07\",\"client_name\":\"Osama Hamdan\",\"project_link\":\"https:\\/\\/arakperfumes.ae\\/\"},{\"id\":7,\"title\":\"Korunfula Store\",\"thumbnail_url\":\"\\/uploads\\/projects\\/1731789379_Snapinsta.app_355426687_787806892680395_5768282265169923214_n_1080.jpg\",\"quick_info\":\"Korunfula Store is your ideal destination in Saudi Arabia for purchasing rare and meticulously selected products. Our store offers a unique and diverse range of premium items that elevate your daily essentials with a touch of luxury and distinction. From special types of natural soap and beauty products to a curated selection of exquisite spices and authentic coffee. Additionally, we provide extra virgin olive oil and high-quality nuts that add a special touch to your lifestyle. At Carnfola, we ensure a one-of-a-kind shopping experience where authenticity meets superior quality in every product we carefully select for you.\",\"start_date\":\"2023-02-16\",\"client_name\":\"Rayed Alshoubaki\",\"project_link\":\"https:\\/\\/korunfula.com\\/\"}]}],\"duration\":172,\"memory\":22,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:41'),
(211, '9d8333d9-b6d4-40d3-9ad3-2ced9d540e21', '9d8333d9-bb53-40fd-9927-e99c41697c42', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `clients`\",\"time\":\"0.38\",\"slow\":false,\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\app\\\\Http\\\\Controllers\\\\Api\\\\ClientController.php\",\"line\":17,\"hash\":\"1f890d8bfc45eb42935384ec9105d384\",\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:41'),
(212, '9d8333d9-b883-4204-8bcf-376fd6e32abf', '9d8333d9-bb53-40fd-9927-e99c41697c42', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Client\",\"count\":2,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:41'),
(213, '9d8333d9-baa1-4507-aeb5-3be6bc3b168a', '9d8333d9-bb53-40fd-9927-e99c41697c42', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/api\\/clients\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Api\\\\ClientController@index\",\"middleware\":[\"api\"],\"headers\":{\"host\":\"127.0.0.1:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"authorization\":\"********\",\"x-xsrf-token\":\"eyJpdiI6IlU5SWRBcHNSbEpycXozREN4MllCa2c9PSIsInZhbHVlIjoiRXlsRzIzK21GN0U2Yit5WDdLdlpNMGswK3JyWWJibjVydVZ0WFQwQzEzblhiTWJHa3NrWUE4QkpPYjVrRjR5Q05zeFVLc0J5TVdFUGdqUEwwMkVIc1pYdnJqWVJoenZsOU1Ic1BmQW9ueGlaTnBGR0UzbFB3R0dkZVhyYVlYa24iLCJtYWMiOiJmNmEwZWJkM2E1MWFhNmIwMGM3MmJjOTkxNGE3NDFmNjk1M2U5YzQ5NWZkMTNkYTEwYWE2ZDhiMTIzNzEzMjk3IiwidGFnIjoiIn0=\",\"sec-ch-ua\":\"\\\"Google Chrome\\\";v=\\\"131\\\", \\\"Chromium\\\";v=\\\"131\\\", \\\"Not_A Brand\\\";v=\\\"24\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"x-requested-with\":\"XMLHttpRequest\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/131.0.0.0 Safari\\/537.36\",\"accept\":\"application\\/json, text\\/plain, *\\/*\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http:\\/\\/127.0.0.1:8000\\/\",\"accept-encoding\":\"gzip, deflate, br, zstd\",\"accept-language\":\"en-US,en;q=0.9,ar;q=0.8\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6IlU5SWRBcHNSbEpycXozREN4MllCa2c9PSIsInZhbHVlIjoiRXlsRzIzK21GN0U2Yit5WDdLdlpNMGswK3JyWWJibjVydVZ0WFQwQzEzblhiTWJHa3NrWUE4QkpPYjVrRjR5Q05zeFVLc0J5TVdFUGdqUEwwMkVIc1pYdnJqWVJoenZsOU1Ic1BmQW9ueGlaTnBGR0UzbFB3R0dkZVhyYVlYa24iLCJtYWMiOiJmNmEwZWJkM2E1MWFhNmIwMGM3MmJjOTkxNGE3NDFmNjk1M2U5YzQ5NWZkMTNkYTEwYWE2ZDhiMTIzNzEzMjk3IiwidGFnIjoiIn0%3D; devhani_session=eyJpdiI6Im1PbW94S3cyMGhqZmNnbHFFY3MwWEE9PSIsInZhbHVlIjoiYnpkOUlWc1lyV0N2aENNb0tia1d5U2dLbGtJS0h1b2pWaWVSTkRuUW9CSUNYbitLTGhtbzVXU1FkbFU1V0tXNUIwbkRUaFlFbjA0MHk4MjV0TXpEVVRQa3owOUZaU2pVallSbi9NZGtUZnJGNWt5S0hRMGoyRUNqbmFJL0w1R24iLCJtYWMiOiJjZjQ5Y2NiY2M1ZDQ5N2ZjZjk2MmRlN2MyNDk4ZWVjMmJhYzM3MzQ0Y2RlNTUzNDkwZDhjNTk2ZTRlOTM1Mzk5IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":200,\"response\":[{\"id\":3,\"full_name\":\"Rayed Alshoubaki\",\"email\":\"rayedalshoubaki@icloud.com\",\"major\":\"Data Analyst\",\"photo_url\":\"\\/assets\\/img\\/profile.jpg\",\"comment\":\"I would like to thank the skilled developer who worked on developing the kournfula.com store website. He demonstrated excellent responsiveness throughout the project and was attentive to all our requirements. Thanks to his expertise, we achieved a user-friendly and attractive site that beautifully reflects our brand\'s identity. Highly recommend working with him.\",\"created_at\":\"2024-11-17T10:49:17.000000Z\",\"updated_at\":\"2024-11-17T10:49:17.000000Z\"},{\"id\":4,\"full_name\":\"Osama Hamdan\",\"email\":\"info@whitemediadv.com\",\"major\":\"Marketing and Advertising\",\"photo_url\":\"\\/assets\\/img\\/profile.jpg\",\"comment\":\"I want to extend my appreciation to the developer who worked on building our Arak Perfume website. His prompt responses and depth of expertise were evident throughout the project. The end result was a beautifully designed, intuitive site that truly represents our brand and products in a captivating way. I highly recommend him for anyone in need of a skilled and professional developer.\",\"created_at\":\"2024-11-17T10:55:10.000000Z\",\"updated_at\":\"2024-11-17T10:55:10.000000Z\"}],\"duration\":144,\"memory\":22,\"hostname\":\"Nitro-5\"}', '2024-11-17 18:32:41'),
(214, '9d833447-64fe-47d0-9b94-0fb7be5b516a', '9d833447-6a8c-47d3-a1a8-fb6d5eadca43', NULL, 1, 'command', '{\"command\":\"vendor:publish\",\"exit_code\":0,\"arguments\":{\"command\":\"vendor:publish\"},\"options\":{\"existing\":false,\"force\":true,\"all\":false,\"provider\":null,\"tag\":[\"laravel-assets\"],\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":true,\"no-interaction\":false,\"env\":null},\"hostname\":\"Nitro-5\"}', '2024-11-17 18:33:53'),
(215, '9d83345f-3266-4bb6-bf25-fe656be15bc2', '9d83345f-392b-4fa9-a13f-d6fdaac7b09a', '8b1b0544e4a7610bc3088aa05792b9fc', 1, 'exception', '{\"class\":\"Error\",\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\vendor\\\\laravel\\\\octane\\\\src\\\\Commands\\\\Concerns\\\\InteractsWithServers.php\",\"line\":174,\"message\":\"Undefined constant \\\"Laravel\\\\Octane\\\\Commands\\\\Concerns\\\\SIGINT\\\"\",\"context\":null,\"trace\":[{\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":978},{\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":316},{\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":167},{\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Console\\\\Kernel.php\",\"line\":197},{\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Application.php\",\"line\":1203},{\"file\":\"C:\\\\Users\\\\hanis\\\\Desktop\\\\portfolio\\\\artisan\",\"line\":13}],\"line_preview\":{\"165\":\"            throw new InvalidArgumentException(\\\"Unable to start server. Port {$port} is already in use.\\\");\",\"166\":\"        }\",\"167\":\"    }\",\"168\":\"\",\"169\":\"    \\/**\",\"170\":\"     * Returns the list of signals to subscribe.\",\"171\":\"     *\\/\",\"172\":\"    public function getSubscribedSignals(): array\",\"173\":\"    {\",\"174\":\"        return [SIGINT, SIGTERM, SIGHUP];\",\"175\":\"    }\",\"176\":\"\",\"177\":\"    \\/**\",\"178\":\"     * The method will be called when the application is signaled.\",\"179\":\"     *\\/\",\"180\":\"    public function handleSignal(int $signal, int|false $previousExitCode = 0): int|false\",\"181\":\"    {\",\"182\":\"        $this->stopServer();\",\"183\":\"\",\"184\":\"        exit(0);\"},\"hostname\":\"Nitro-5\",\"occurrences\":1}', '2024-11-17 18:34:09'),
(216, '9d8334a7-3516-4353-9688-05337a757791', '9d8334a7-38e4-4bd5-968a-fa3f4f415eee', NULL, 1, 'command', '{\"command\":\"vendor:publish\",\"exit_code\":0,\"arguments\":{\"command\":\"vendor:publish\"},\"options\":{\"existing\":false,\"force\":true,\"all\":false,\"provider\":null,\"tag\":[\"laravel-assets\"],\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":true,\"no-interaction\":false,\"env\":null},\"hostname\":\"Nitro-5\"}', '2024-11-17 18:34:56');

-- --------------------------------------------------------

--
-- Table structure for table `telescope_entries_tags`
--

CREATE TABLE `telescope_entries_tags` (
  `entry_uuid` char(36) NOT NULL,
  `tag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `telescope_entries_tags`
--

INSERT INTO `telescope_entries_tags` (`entry_uuid`, `tag`) VALUES
('9d8333c2-5997-4abe-a092-0558011c2468', 'App\\Models\\Setting'),
('9d8333c2-9a2a-428c-ab33-2a1f846f4614', 'App\\Models\\Section'),
('9d8333c2-d97f-4815-ac14-a6d9377407c6', 'App\\Models\\Section'),
('9d8333c3-1d86-47fd-9c60-59967542ee38', 'App\\Models\\Section'),
('9d8333c3-5d1f-4b57-a720-a0a6d651d68c', 'App\\Models\\Experience'),
('9d8333c3-9d72-462d-8170-77eb84e0c4a2', 'App\\Models\\Education'),
('9d8333c3-da3c-4743-a80e-33af71e34dab', 'App\\Models\\Skill'),
('9d8333c4-1a71-411a-b9d2-f50813d2c7d1', 'App\\Models\\Section'),
('9d8333c4-976d-41d0-9e68-764ccd0354e5', 'App\\Models\\Setting'),
('9d8333c4-d074-4812-a850-0e2ee2d3b05d', 'App\\Models\\Setting'),
('9d8333c5-0d72-416c-a58a-53a93e53c607', 'App\\Models\\Service'),
('9d8333c5-45fe-4f3a-bbce-9e3227943dd4', 'App\\Models\\Service'),
('9d8333c5-4b6e-4ca1-971c-fd25aed2bb21', 'App\\Models\\Project'),
('9d8333c5-86e7-4b3b-a261-2cbb297de4cb', 'App\\Models\\Client'),
('9d8333d6-c920-4d40-8e1a-681d76bfd140', 'App\\Models\\Setting'),
('9d8333d7-098d-4a9b-a0ac-7f765dd74261', 'App\\Models\\Section'),
('9d8333d7-49bd-4cae-9e7b-de35dbb8897b', 'App\\Models\\Section'),
('9d8333d7-8761-4408-b436-cd5ecb910ee1', 'App\\Models\\Section'),
('9d8333d7-c56f-461b-b2bc-85b066d21397', 'App\\Models\\Experience'),
('9d8333d8-0583-488f-acb5-90cd25c4bdae', 'App\\Models\\Education'),
('9d8333d8-4232-44f0-b64a-ffc7bd983e86', 'App\\Models\\Skill'),
('9d8333d8-7b9e-4ba2-a3eb-ec29e4c39ce5', 'App\\Models\\Section'),
('9d8333d8-bbb4-497e-9c1c-eb744cf639bd', 'App\\Models\\Setting'),
('9d8333d8-f648-45d7-a437-58979ad4931c', 'App\\Models\\Setting'),
('9d8333d9-389a-46e9-bedd-a7f6a601f215', 'App\\Models\\Service'),
('9d8333d9-783a-4bae-b320-d1747d4f74c6', 'App\\Models\\Service'),
('9d8333d9-7d1e-4733-8f47-54e7fcd738e2', 'App\\Models\\Project'),
('9d8333d9-b883-4204-8bcf-376fd6e32abf', 'App\\Models\\Client');

-- --------------------------------------------------------

--
-- Table structure for table `telescope_monitoring`
--

CREATE TABLE `telescope_monitoring` (
  `tag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'hani sulaiman', 'info@hani-sulaiman.com', '2024-11-14 11:24:07', '$2y$12$SisXJ5KaZAbMEBugcW5BqeLJsLIdYmcXLWcIZCI0NtsXwwv9N8ICq', NULL, '2024-11-14 08:23:57', '2024-11-14 08:23:57', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `educations`
--
ALTER TABLE `educations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_service`
--
ALTER TABLE `project_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_service_project_id_foreign` (`project_id`),
  ADD KEY `project_service_service_id_foreign` (`service_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sections_page_id_foreign` (`page_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  ADD PRIMARY KEY (`sequence`),
  ADD UNIQUE KEY `telescope_entries_uuid_unique` (`uuid`),
  ADD KEY `telescope_entries_batch_id_index` (`batch_id`),
  ADD KEY `telescope_entries_family_hash_index` (`family_hash`),
  ADD KEY `telescope_entries_created_at_index` (`created_at`),
  ADD KEY `telescope_entries_type_should_display_on_index_index` (`type`,`should_display_on_index`);

--
-- Indexes for table `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD PRIMARY KEY (`entry_uuid`,`tag`),
  ADD KEY `telescope_entries_tags_tag_index` (`tag`);

--
-- Indexes for table `telescope_monitoring`
--
ALTER TABLE `telescope_monitoring`
  ADD PRIMARY KEY (`tag`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `educations`
--
ALTER TABLE `educations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `project_service`
--
ALTER TABLE `project_service`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  MODIFY `sequence` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `project_service`
--
ALTER TABLE `project_service`
  ADD CONSTRAINT `project_service_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_service_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD CONSTRAINT `telescope_entries_tags_entry_uuid_foreign` FOREIGN KEY (`entry_uuid`) REFERENCES `telescope_entries` (`uuid`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
