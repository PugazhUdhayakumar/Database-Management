-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2024 at 12:42 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_system`
--
CREATE DATABASE IF NOT EXISTS `inventory_system` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `inventory_system`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--
-- Creation: Jan 14, 2024 at 05:05 AM
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Truncate table before insert `categories`
--

TRUNCATE TABLE `categories`;
--
-- Dumping data for table `categories`
--

INSERT DELAYED IGNORE INTO `categories` (`id`, `name`) VALUES
(15, 'beverages'),
(12, 'Biscuits'),
(16, 'Cereal'),
(21, 'cleaning'),
(18, 'condiments'),
(9, 'dairy'),
(22, 'electronics'),
(19, 'fast foods frozen'),
(13, 'Fruits and Vegetables'),
(14, 'grains'),
(20, 'meat'),
(10, 'pulses'),
(2, 'Raw Materials'),
(17, 'snacks'),
(8, 'Stationery Items'),
(11, 'Toiletries');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--
-- Creation: Jan 14, 2024 at 05:05 AM
--

DROP TABLE IF EXISTS `media`;
CREATE TABLE `media` (
  `id` int(11) UNSIGNED NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Truncate table before insert `media`
--

TRUNCATE TABLE `media`;
-- --------------------------------------------------------

--
-- Table structure for table `products`
--
-- Creation: Jan 14, 2024 at 05:05 AM
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `buy_price` decimal(25,2) DEFAULT NULL,
  `sale_price` decimal(25,2) NOT NULL,
  `categorie_id` int(11) UNSIGNED NOT NULL,
  `media_id` int(11) DEFAULT 0,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Truncate table before insert `products`
--

TRUNCATE TABLE `products`;
--
-- Dumping data for table `products`
--

INSERT DELAYED IGNORE INTO `products` (`id`, `name`, `quantity`, `buy_price`, `sale_price`, `categorie_id`, `media_id`, `date`) VALUES
(1, 'Chocolate Chip Cookies', '200', 2.50, 3.50, 12, 0, '2024-01-18 13:54:03'),
(2, 'Cream Biscuits', '150', 1.80, 2.50, 12, 0, '2024-01-18 13:54:03'),
(3, 'Butter Cookies', '180', 3.00, 4.00, 12, 0, '2024-01-18 13:54:03'),
(4, 'Oreo Biscuits', '250', 2.00, 3.00, 12, 0, '2024-01-18 13:54:03'),
(5, 'Digestive Biscuits', '200', 2.20, 3.20, 12, 0, '2024-01-18 13:54:03'),
(6, 'Shortbread Cookies', '160', 2.80, 3.80, 12, 0, '2024-01-18 13:54:03'),
(7, 'Ginger Snaps', '180', 2.50, 3.50, 12, 0, '2024-01-18 13:54:03'),
(8, 'Vanilla Wafers', '200', 2.00, 3.00, 12, 0, '2024-01-18 13:54:03'),
(9, 'Coconut Macaroons', '180', 3.50, 4.50, 12, 0, '2024-01-18 13:54:03'),
(10, 'Almond Biscotti', '150', 4.00, 5.00, 12, 0, '2024-01-18 13:54:03'),
(11, 'Cola', '500', 1.00, 1.50, 15, 0, '2024-01-18 13:54:03'),
(12, 'Orange Juice', '1000', 2.50, 3.50, 15, 0, '2024-01-18 13:54:03'),
(13, 'Green Tea', '250', 1.80, 2.50, 15, 0, '2024-01-18 13:54:03'),
(14, 'Lemonade', '400', 1.50, 2.00, 15, 0, '2024-01-18 13:54:03'),
(15, 'Iced Coffee', '350', 3.00, 4.00, 15, 0, '2024-01-18 13:54:03'),
(16, 'Energy Drink', '500', 2.50, 3.50, 15, 0, '2024-01-18 13:54:03'),
(17, 'Mango Smoothie', '300', 4.00, 5.50, 15, 0, '2024-01-18 13:54:03'),
(18, 'Sparkling Water', '750', 1.20, 1.80, 15, 0, '2024-01-18 13:54:03'),
(19, 'Chai Latte', '200', 3.50, 4.50, 15, 0, '2024-01-18 13:54:03'),
(20, 'Cranberry Juice', '500', 2.00, 3.00, 15, 0, '2024-01-18 13:54:03'),
(21, 'Honey Nut Cheerios', '400', 3.50, 4.50, 16, 0, '2024-01-18 13:54:03'),
(22, 'Raisin Bran', '350', 2.80, 3.80, 16, 0, '2024-01-18 13:54:03'),
(23, 'Corn Flakes', '500', 2.00, 3.00, 16, 0, '2024-01-18 13:54:03'),
(24, 'Granola with Nuts', '300', 4.00, 5.50, 16, 0, '2024-01-18 13:54:03'),
(25, 'Oat Bran', '250', 2.50, 3.50, 16, 0, '2024-01-18 13:54:03'),
(26, 'Multigrain Cereal', '400', 3.00, 4.00, 16, 0, '2024-01-18 13:54:03'),
(27, 'Quinoa Flakes', '350', 4.50, 5.50, 16, 0, '2024-01-18 13:54:03'),
(28, 'Chocolate Oat Clusters', '300', 3.80, 4.80, 16, 0, '2024-01-18 13:54:03'),
(29, 'Almond Crunch Granola', '450', 5.00, 6.50, 16, 0, '2024-01-18 13:54:03'),
(30, 'Mixed Berry Granola', '350', 4.20, 5.20, 16, 0, '2024-01-18 13:54:03'),
(31, 'Milk', '1000', 1.50, 2.00, 9, 0, '2024-01-18 13:54:03'),
(32, 'Cheese (Cheddar)', '250', 3.00, 4.50, 9, 0, '2024-01-18 13:54:03'),
(33, 'Yogurt (Plain)', '500', 2.00, 3.00, 9, 0, '2024-01-18 13:54:03'),
(34, 'Butter', '200', 2.50, 3.50, 9, 0, '2024-01-18 13:54:03'),
(35, 'Eggs', '12', 3.50, 4.50, 9, 0, '2024-01-18 13:54:03'),
(36, 'Cottage Cheese', '300', 2.80, 3.80, 9, 0, '2024-01-18 13:54:03'),
(37, 'Sour Cream', '200', 1.80, 2.50, 9, 0, '2024-01-18 13:54:03'),
(38, 'Chocolate Milk', '500', 2.50, 3.50, 9, 0, '2024-01-18 13:54:03'),
(39, 'Heavy Cream', '250', 4.00, 5.50, 9, 0, '2024-01-18 13:54:03'),
(40, 'Greek Yogurt', '400', 3.00, 4.00, 9, 0, '2024-01-18 13:54:03'),
(41, 'Apples', '1000', 2.00, 2.50, 13, 0, '2024-01-18 13:54:03'),
(42, 'Bananas', '12', 1.50, 2.00, 13, 0, '2024-01-18 13:54:03'),
(43, 'Carrots', '500', 1.20, 1.80, 13, 0, '2024-01-18 13:54:03'),
(44, 'Broccoli', '300', 2.50, 3.50, 13, 0, '2024-01-18 13:54:03'),
(45, 'Strawberries', '250', 3.00, 4.00, 13, 0, '2024-01-18 13:54:03'),
(46, 'Tomatoes', '1000', 2.00, 2.50, 13, 0, '2024-01-18 13:54:03'),
(47, 'Spinach', '200', 1.80, 2.50, 13, 0, '2024-01-18 13:54:03'),
(48, 'Oranges', '1000', 2.50, 3.50, 13, 0, '2024-01-18 13:54:03'),
(49, 'Bell Peppers', '500', 2.00, 3.00, 13, 0, '2024-01-18 13:54:03'),
(50, 'Cucumbers', '3', 1.50, 2.00, 13, 0, '2024-01-18 13:54:03'),
(51, 'Rice (Basmati)', '2000', 4.50, 5.50, 14, 0, '2024-01-18 13:54:03'),
(52, 'Quinoa', '500', 3.00, 4.50, 14, 0, '2024-01-18 13:54:03'),
(53, 'Barley', '1000', 2.00, 3.00, 14, 0, '2024-01-18 13:54:03'),
(54, 'Buckwheat', '400', 2.50, 3.50, 14, 0, '2024-01-18 13:54:03'),
(55, 'Couscous', '300', 1.80, 2.50, 14, 0, '2024-01-18 13:54:03'),
(56, 'Oats', '1000', 2.80, 3.80, 14, 0, '2024-01-18 13:54:03'),
(57, 'Millet', '500', 2.00, 3.00, 14, 0, '2024-01-18 13:54:03'),
(58, 'Farro', '400', 3.50, 4.50, 14, 0, '2024-01-18 13:54:03'),
(59, 'Wild Rice', '250', 4.00, 5.50, 14, 0, '2024-01-18 13:54:03'),
(60, 'Polenta', '300', 2.20, 3.20, 14, 0, '2024-01-18 13:54:03'),
(61, 'Lentils (Green)', '500', 1.50, 2.00, 10, 0, '2024-01-18 13:54:03'),
(62, 'Chickpeas', '400', 2.00, 3.00, 10, 0, '2024-01-18 13:54:03'),
(63, 'Black Beans', '1000', 2.50, 3.50, 10, 0, '2024-01-18 13:54:03'),
(64, 'Red Kidney Beans', '490', 1.80, 2.50, 10, 0, '2024-01-18 13:54:03'),
(65, 'Split Peas (Yellow)', '300', 2.80, 3.80, 10, 0, '2024-01-18 13:54:03'),
(66, 'Black-eyed Peas', '400', 2.00, 3.00, 10, 0, '2024-01-18 13:54:03'),
(67, 'Pinto Beans', '500', 3.00, 4.00, 10, 0, '2024-01-18 13:54:03'),
(68, 'Cannellini Beans', '400', 2.20, 3.20, 10, 0, '2024-01-18 13:54:03'),
(69, 'Masoor Dal (Red Lentils)', '1000', 2.50, 3.50, 10, 0, '2024-01-18 13:54:03'),
(70, 'Green Peas', '300', 2.00, 3.00, 10, 0, '2024-01-18 13:54:03'),
(71, 'Flour (All-purpose)', '2', 2.50, 3.50, 2, 0, '2024-01-18 13:54:03'),
(72, 'Sugar', '1', 1.80, 2.50, 2, 0, '2024-01-18 13:54:03'),
(73, 'Salt', '500', 1.20, 1.80, 2, 0, '2024-01-18 13:54:03'),
(74, 'Baking Powder', '197', 2.00, 3.00, 2, 0, '2024-01-18 13:54:03'),
(75, 'Olive Oil', '500', 3.50, 4.50, 2, 0, '2024-01-18 13:54:03'),
(76, 'Yeast', '100', 2.00, 3.00, 2, 0, '2024-01-18 13:54:03'),
(77, 'Cocoa Powder', '250', 4.00, 5.50, 2, 0, '2024-01-18 13:54:03'),
(78, 'Vanilla Extract', '100', 3.00, 4.00, 2, 0, '2024-01-18 13:54:03'),
(79, 'Food Coloring Set', '5', 5.00, 6.50, 2, 0, '2024-01-18 13:54:03'),
(80, 'Corn Starch', '300', 2.50, 3.50, 2, 0, '2024-01-18 13:54:03'),
(81, 'Ballpoint Pens (Pack of 10)', '1', 5.00, 7.00, 8, 0, '2024-01-18 13:54:03'),
(82, 'Notebooks (Set of 3)', '1', 4.50, 6.00, 8, 0, '2024-01-18 13:54:03'),
(83, 'Pencils (Pack of 12)', '1', 3.00, 4.50, 8, 0, '2024-01-18 13:54:03'),
(84, 'Highlighters (Set of 6)', '1', 6.00, 8.00, 8, 0, '2024-01-18 13:54:03'),
(85, 'Sticky Notes (Pack of 100)', '1', 2.50, 3.50, 8, 0, '2024-01-18 13:54:03'),
(86, 'Whiteboard Markers (Pack of 4)', '1', 7.00, 9.00, 8, 0, '2024-01-18 13:54:03'),
(87, 'Scissors', '1', 3.50, 4.50, 8, 0, '2024-01-18 13:54:03'),
(88, 'Glue Sticks (Pack of 6)', '1', 4.00, 5.50, 8, 0, '2024-01-18 13:54:03'),
(89, 'Paper Clips (Box of 50)', '1', 1.50, 2.00, 8, 0, '2024-01-18 13:54:03'),
(90, 'Erasers (Pack of 5)', '1', 2.00, 3.00, 8, 0, '2024-01-18 13:54:03'),
(91, 'Shampoo', '1', 6.00, 8.50, 11, 0, '2024-01-18 13:54:03'),
(92, 'Toothpaste', '1', 2.50, 3.50, 11, 0, '2024-01-18 13:54:03'),
(93, 'Bar Soap', '3', 3.00, 4.00, 11, 0, '2024-01-18 13:54:03'),
(94, 'Body Wash', '1', 4.50, 6.00, 11, 0, '2024-01-18 13:54:03'),
(95, 'Deodorant', '1', 2.00, 3.00, 11, 0, '2024-01-18 13:54:03'),
(96, 'Shaving Cream', '1', 3.50, 4.50, 11, 0, '2024-01-18 13:54:03'),
(97, 'Razors', '5', 5.00, 7.00, 11, 0, '2024-01-18 13:54:03'),
(98, 'Hand Sanitizer', '1', 4.00, 5.50, 11, 0, '2024-01-18 13:54:03'),
(99, 'Tissues', '6', 2.50, 3.50, 11, 0, '2024-01-18 13:54:03'),
(100, 'Cotton Swabs', '200', 2.00, 3.00, 11, 0, '2024-01-18 13:54:03'),
(101, 'Chicken Breast (Boneless)', '1', 6.50, 8.50, 20, 0, '2024-01-18 13:55:28'),
(102, 'Ground Beef', '500', 5.00, 7.00, 20, 0, '2024-01-18 13:55:28'),
(103, 'Pork Chops', '4', 7.00, 9.00, 20, 0, '2024-01-18 13:55:28'),
(104, 'Turkey Sausages', '300', 4.50, 6.50, 20, 0, '2024-01-18 13:55:28'),
(105, 'Salmon Fillets', '250', 8.00, 10.00, 20, 0, '2024-01-18 13:55:28'),
(106, 'Lamb Rack', '1', 10.00, 12.00, 20, 0, '2024-01-18 13:55:28'),
(107, 'Beef Sirloin Steak', '2', 9.00, 11.00, 20, 0, '2024-01-18 13:55:28'),
(108, 'Chicken Thighs', '600', 5.50, 7.50, 20, 0, '2024-01-18 13:55:28'),
(109, 'Bacon Strips', '200', 3.80, 5.00, 20, 0, '2024-01-18 13:55:28'),
(110, 'Italian Sausages', '400', 4.00, 6.00, 20, 0, '2024-01-18 13:55:28'),
(111, 'All-Purpose Cleaner', '750', 2.50, 3.50, 21, 0, '2024-01-18 13:55:28'),
(112, 'Disinfecting Wipes (Pack of 50)', '1', 3.00, 4.50, 21, 0, '2024-01-18 13:55:28'),
(113, 'Broom and Dustpan Set', '1', 10.00, 12.00, 21, 0, '2024-01-18 13:55:28'),
(114, 'Trash Bags (Pack of 100)', '1', 8.00, 10.00, 21, 0, '2024-01-18 13:55:28'),
(115, 'Glass Cleaner Spray', '500', 2.00, 3.00, 21, 0, '2024-01-18 13:55:28'),
(116, 'Microfiber Cleaning Cloths (Set of 6)', '1', 5.00, 7.00, 21, 0, '2024-01-18 13:55:28'),
(117, 'Toilet Bowl Cleaner', '750', 2.50, 3.50, 21, 0, '2024-01-18 13:55:28'),
(118, 'Mop and Bucket Set', '1', 15.00, 18.00, 21, 0, '2024-01-18 13:55:28'),
(119, 'Dishwashing Liquid (Lemon Scent)', '500', 1.80, 2.50, 21, 0, '2024-01-18 13:55:28'),
(120, 'Air Freshener (Lavender)', '250', 4.00, 5.50, 21, 0, '2024-01-18 13:55:28'),
(122, 'Smartphone Charger Cable', '1', 8.00, 10.00, 22, 0, '2024-01-18 13:55:28'),
(123, 'Wireless Computer Mouse', '1', 15.00, 18.00, 22, 0, '2024-01-18 13:55:28'),
(124, 'Portable Power Bank', '1', 20.00, 25.00, 22, 0, '2024-01-18 13:55:28'),
(125, 'Bluetooth Speaker', '1', 30.00, 35.00, 22, 0, '2024-01-18 13:55:28'),
(126, 'USB Flash Drive (64GB)', '1', 12.00, 15.00, 22, 0, '2024-01-18 13:55:28'),
(127, 'Laptop Cooling Pad', '1', 18.00, 22.00, 22, 0, '2024-01-18 13:55:28'),
(128, 'Smartwatch', '1', 40.00, 50.00, 22, 0, '2024-01-18 13:55:28'),
(129, 'Gaming Headset', '1', 45.00, 55.00, 22, 0, '2024-01-18 13:55:28'),
(130, 'Wireless Charging Pad', '1', 25.00, 30.00, 22, 0, '2024-01-18 13:55:28'),
(131, 'Bluetooth Keyboard', '1', 30.00, 35.00, 22, 0, '2024-01-18 13:55:28'),
(171, 'Crunchy Potato Chips', '150', 1.50, 2.50, 17, 0, '2024-01-18 13:57:10'),
(172, 'Zesty Cheese Puffs', '200', 2.00, 3.00, 17, 0, '2024-01-18 13:57:10'),
(173, 'Spicy Jalapeno Popcorn', '250', 2.50, 3.50, 17, 0, '2024-01-18 13:57:10'),
(174, 'Honey Mustard Pretzels', '180', 1.80, 2.80, 17, 0, '2024-01-18 13:57:10'),
(175, 'Roasted Mixed Nuts', '300', 3.00, 4.50, 17, 0, '2024-01-18 13:57:10'),
(176, 'Barbecue Flavored Crackers', '200', 2.20, 3.20, 17, 0, '2024-01-18 13:57:10'),
(177, 'Sweet and Salty Trail Mix', '250', 2.50, 3.50, 17, 0, '2024-01-18 13:57:10'),
(178, 'Salsa Verde Tortilla Chips', '180', 2.00, 3.00, 17, 0, '2024-01-18 13:57:10'),
(179, 'Garlic Parmesan Popcorn', '200', 2.80, 3.80, 17, 0, '2024-01-18 13:57:10'),
(180, 'Salted Caramel Almonds', '150', 3.50, 4.50, 17, 0, '2024-01-18 13:57:10'),
(181, 'Classic Ketchup', '500', 1.00, 1.50, 18, 0, '2024-01-18 13:57:10'),
(182, 'Dijon Mustard', '250', 2.50, 3.50, 18, 0, '2024-01-18 13:57:10'),
(183, 'Tangy Barbecue Sauce', '300', 1.80, 2.50, 18, 0, '2024-01-18 13:57:10'),
(184, 'Garlic Aioli Mayonnaise', '200', 2.00, 3.00, 18, 0, '2024-01-18 13:57:10'),
(185, 'Sweet Chili Sauce', '250', 3.00, 4.50, 18, 0, '2024-01-18 13:57:10'),
(186, 'Balsamic Vinaigrette', '150', 2.80, 3.80, 18, 0, '2024-01-18 13:57:10'),
(187, 'Mango Salsa', '200', 2.50, 3.50, 18, 0, '2024-01-18 13:57:10'),
(188, 'Horseradish Relish', '180', 1.80, 2.50, 18, 0, '2024-01-18 13:57:10'),
(189, 'Cranberry Orange Chutney', '250', 2.00, 3.00, 18, 0, '2024-01-18 13:57:10'),
(190, 'Roasted Red Pepper Hummus', '200', 2.50, 3.50, 18, 0, '2024-01-18 13:57:10'),
(191, 'Frozen Pizza', '1', 5.00, 7.00, 19, 0, '2024-01-18 13:57:10'),
(192, 'Chicken Nuggets', '500', 4.50, 6.00, 19, 0, '2024-01-18 13:57:10'),
(193, 'Vegetable Spring Rolls', '12', 3.00, 4.50, 19, 0, '2024-01-18 13:57:10'),
(194, 'Ice Cream (Vanilla)', '1', 4.50, 5.50, 19, 0, '2024-01-18 13:57:10'),
(195, 'Frozen Vegetables Mix', '400', 3.00, 4.50, 19, 0, '2024-01-18 13:57:10'),
(196, 'Shrimp Scampi', '300', 5.00, 7.00, 19, 0, '2024-01-18 13:57:10'),
(197, 'Frozen Berries', '250', 2.50, 3.50, 19, 0, '2024-01-18 13:57:10'),
(198, 'Fish Fillets', '450', 4.00, 5.50, 19, 0, '2024-01-18 13:57:10'),
(199, 'Mozzarella Sticks', '200', 3.50, 4.50, 19, 0, '2024-01-18 13:57:10'),
(200, 'Frozen Breakfast Burritos', '8', 3.00, 4.00, 19, 0, '2024-01-18 13:57:10'),
(201, 'Beans', '998', 5.00, 11.00, 10, 0, '2024-01-18 09:28:30'),
(202, ' Tape Dispenser ', '50', 20.00, 25.00, 8, 0, '2024-01-18 09:57:44');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--
-- Creation: Jan 14, 2024 at 05:05 AM
--

DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales` (
  `id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(25,2) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Truncate table before insert `sales`
--

TRUNCATE TABLE `sales`;
--
-- Dumping data for table `sales`
--

INSERT DELAYED IGNORE INTO `sales` (`id`, `product_id`, `qty`, `price`, `date`) VALUES
(13, 64, 10, 25.00, '2024-01-18'),
(14, 201, 2, 22.00, '2024-01-18'),
(15, 74, 3, 9.00, '2024-01-18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--
-- Creation: Jan 14, 2024 at 05:05 AM
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_level` int(11) NOT NULL,
  `image` varchar(255) DEFAULT 'no_image.jpg',
  `status` int(1) NOT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Truncate table before insert `users`
--

TRUNCATE TABLE `users`;
--
-- Dumping data for table `users`
--

INSERT DELAYED IGNORE INTO `users` (`id`, `name`, `username`, `password`, `user_level`, `image`, `status`, `last_login`) VALUES
(6, 'Prasanna', 'Prasanna', 'eb77579c1911c89786ab7c4d92f05af038c76297', 1, 'no_image.jpg', 1, '2024-01-18 10:05:28'),
(9, 'Pugazh', 'Pugazh', '6d3236ec3c88039ca534b81acad564e847ecb062', 3, '0puw6kcg9.png', 1, '2024-01-18 10:03:00'),
(10, 'Aadhira', 'Aadhira', 'e0c9035898dd52fc65c41454cec9c4d2611bfb37', 2, 'ifmozqco10.png', 1, '2024-01-18 10:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--
-- Creation: Jan 14, 2024 at 05:05 AM
--

DROP TABLE IF EXISTS `user_groups`;
CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(150) NOT NULL,
  `group_level` int(11) NOT NULL,
  `group_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Truncate table before insert `user_groups`
--

TRUNCATE TABLE `user_groups`;
--
-- Dumping data for table `user_groups`
--

INSERT DELAYED IGNORE INTO `user_groups` (`id`, `group_name`, `group_level`, `group_status`) VALUES
(1, 'Admin', 1, 1),
(6, 'Supplier POV', 2, 1),
(7, 'Customer POV', 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `categorie_id` (`categorie_id`),
  ADD KEY `media_id` (`media_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_level` (`user_level`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_level` (`group_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_products` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `SK` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_user` FOREIGN KEY (`user_level`) REFERENCES `user_groups` (`group_level`) ON DELETE CASCADE ON UPDATE CASCADE;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
