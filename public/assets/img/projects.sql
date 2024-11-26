-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2024 at 10:47 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
