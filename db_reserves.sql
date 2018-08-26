-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 14 2018 г., 18:04
-- Версия сервера: 5.7.20
-- Версия PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `db_reserves`
--

-- --------------------------------------------------------

--
-- Структура таблицы `accommodation_package`
--

CREATE TABLE `accommodation_package` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `family_name` varchar(255) NOT NULL,
  `type_of_document` varchar(255) NOT NULL,
  `document_number` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  `additional_guests` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `package_price` varchar(255) NOT NULL,
  `additional_price` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `accommodation_package`
--

INSERT INTO `accommodation_package` (`id`, `date`, `name`, `family_name`, `type_of_document`, `document_number`, `contact_number`, `notes`, `additional_guests`, `payment_method`, `package_price`, `additional_price`, `total`, `cat_id`, `user_id`) VALUES
(1, '08.08.18', 'mr Ben', 'Joy', 'Passport', '123456789', '0123456789987654321', '#example#example#example#', 'mr Jack', 'card', '0.5%', '10%', '$2600', 1, 2),
(2, 'option1', 'sadsa', 'asasa', 'asasas', 'sasasas', 'sasas', 'asasasasasasa', 'option2', 'option3', '', '', '', 0, 0),
(3, 'option1', 'Djou', 'mr.Djenson', 'PASSPORT', '121212212121', '45454545454545454', 'VIP', 'August 18', 'August 19', '7,500', 'additional_price', 'total', 0, 0),
(4, 'option1', 'Djou', 'mr.Djenson', 'PASSPORT', '121212212121', '45454545454545454', 'SASASASASAS', 'August 18', 'August 19', '7,500', '10%', '8,250', 0, 0),
(5, 'August 17', 'sadsa', 'asasa', 'PASSPORT', '121212212121', '45454545454545454', 'sssssssssss', 'August 18', 'August 17', '7,500', '10%', '8,250', 0, 0),
(6, 'August 17', 'sadsa', 'mr.Djenson', 'PASSPORT', '121212212121', 'sasas', 'qwwwwwwwwwww', 'August 18', 'August 17', '7,500', '10%', '8,250', 0, 0),
(7, 'August 17', 'Djou', 'asasa', 'PASSPORT', '121212212121', '45454545454545454', '', 'August 17', 'August 18', '7,500', '10%', '8,250', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `all_users`
--

CREATE TABLE `all_users` (
  `id` int(9) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `last_login` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `all_users`
--

INSERT INTO `all_users` (`id`, `email`, `password`, `fullname`, `sex`, `phone_number`, `created`, `last_login`) VALUES
(1, 'sdfdsf', '$2y$10$.p1l.waxA4QxeC5OLig9M.RxBoXo8wuR/CvDoVt9QlPiVs7bQcOv2', '123456', '123456', '123456', '2018-08-09 16:49:02', '0000-00-00 00:00:00'),
(2, 's.k_92@inbox.ru', '$2y$10$q.KmO8qtVys2Di26X/95aeL1c0PY.y/Pdk4aQoJMmKoYQTJF06wm6', 'Ulan', '', '09800909009', '2018-08-09 16:55:10', '2018-08-09 16:55:11'),
(3, 'pantera@mail.ru', '$2y$10$J3SZoqCs6boMGnyDewhl1.9MuklAxzk0VDm/Dq5w5GUqB5BC92Iwm', 'dsfsd', '', '234324', '2018-08-10 14:11:05', '2018-08-10 14:26:11'),
(4, 'saparovkutman@gmail.com', '$2y$10$NgoWX40qXZl3FGNLwxzymuk3cHR4iY4GRFLR6tz3eNG0jy/UJi8ny', 'Kutman', '', '0772922222', '2018-08-10 14:44:01', '2018-08-10 15:10:44');

-- --------------------------------------------------------

--
-- Структура таблицы `booking_package`
--

CREATE TABLE `booking_package` (
  `id` int(11) NOT NULL,
  `departure_point` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `count_people` varchar(255) NOT NULL,
  `date_of_departure` varchar(255) NOT NULL,
  `date_of_change` varchar(255) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `booking_package`
--

INSERT INTO `booking_package` (`id`, `departure_point`, `destination`, `count_people`, `date_of_departure`, `date_of_change`, `cat_id`, `user_id`) VALUES
(1, 'Bishkek', 'Osh', '5', '02.03.18', '02.05.18', 1, 2),
(3, 'Biskek', 'Macao', '1', '12.03.18', '15.05.18', 1, 0),
(4, 'Osh', 'Macao', '1', '12.03.18', '15.05.18', 1, 0),
(5, 'Osh', 'Macao', '1', '12.03.18', '15.05.18', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `booking_restaurants`
--

CREATE TABLE `booking_restaurants` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `houre` varchar(255) NOT NULL,
  `minute` varchar(255) NOT NULL,
  `count_people` varchar(255) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `booking_restaurants`
--

INSERT INTO `booking_restaurants` (`id`, `date`, `houre`, `minute`, `count_people`, `cat_id`, `user_id`) VALUES
(1, '12.02.18', '15.45', '', '5', 1, 2),
(2, '6546', '6546', '', '654', 6, 5),
(9, '2018-08-10', '13', '45', '1', 3, 0),
(10, '2018-08-02', '12', '45', '1', 3, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `category_one`
--

CREATE TABLE `category_one` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `en_title` varchar(255) DEFAULT NULL,
  `en_desc` text,
  `chi_title` varchar(255) DEFAULT NULL,
  `chi_desc` text,
  `image_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category_one`
--

INSERT INTO `category_one` (`id`, `title`, `description`, `en_title`, `en_desc`, `chi_title`, `chi_desc`, `image_name`) VALUES
(1, 'Тур классика Джекки Чжана А - Макао 2018 годаррррррр', 'Подарки Suncity Group 《Jacky Чжан А Классик Тур - Макао 2018 года 》. Объединяясь с филиалами Культура Sun Entertainment и Путешествие Солнца, Suncity Group《Jacky Чжан Пакет Macao》Accommodation Классика Тура 2018 года, теперь!ффффффффффыыыыыыыы', 'Jacky Cheung A Classic Tour - 2018 Macao', 'Suncity Group Presents 《Jacky Cheung A Classic Tour - 2018 Macao》. Joining hands with affiliates Sun Entertainment Culture and Sun Travel, Suncity Group《Jacky Cheung A Classic Tour-2018 Macaфo》Accommodation Package, out now!\r\nфыфыфффффффф', '张学友经典教程- 2018 澳门вавава', '太阳城集团提出《张学友经典教程- 2018 澳门》。 联手子公司太阳娱乐文化和阳光旅行、太阳城集团《张学友经典旅游 2018 澳门》住宿包出去，快！выавыа', 'e819ff99bfafc995ed0dfc37efec45df.jpg'),
(3, 'Тур классика Джекки Чжана А - Макао 2018 года', 'Подарки Suncity Group 《Jacky Чжан А Классик Тур - Макао 2018 года 》. Объединяясь с филиалами Культура Sun Entertainment и Путешествие Солнца, Suncity Group《Jacky Чжан Пакет Macao》Accommodation Классика Тура 2018 года, теперь!', 'ddddddddd', 'dddddddd', 'ddddddddd', 'ddsssssss', '672d05cd9aec24832b36f2ee313d577f.jpg'),
(30, 'Тур классика Джекки Чжана А - Макао 2018 года', 'ывфыв', 'Jacky Cheung A Classic Tour - 2018 Macao', 'фывыф', 'китай', 'ываыа', 'bcfcec343d3ee38f399b4776978a4da4.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `category_three`
--

CREATE TABLE `category_three` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `en_title` varchar(255) DEFAULT NULL,
  `en_desc` text,
  `chi_title` varchar(255) DEFAULT NULL,
  `chi_desc` text,
  `image_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category_three`
--

INSERT INTO `category_three` (`id`, `title`, `description`, `en_title`, `en_desc`, `chi_title`, `chi_desc`, `image_name`) VALUES
(1, 'example #1', 'example #1example #1example #1example #1example #1example #1example #1example #1example #1 sadsad \r\nsdfsf', 'sdfs', 'sdfs', 'sasdsa', 'asdsa', '94104f017417cc3675cc905f4e7c3435.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `category_two`
--

CREATE TABLE `category_two` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `en_desc` text NOT NULL,
  `chi_title` varchar(255) NOT NULL,
  `chi_desc` text NOT NULL,
  `image_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category_two`
--

INSERT INTO `category_two` (`id`, `title`, `description`, `en_title`, `en_desc`, `chi_title`, `chi_desc`, `image_name`) VALUES
(22, 'Бронирование отелей', 'example #1example #1example #1example #1example #1example #1example #1example #1example #1example #1example #1example #1example #1', '', '', '', '', '2e6ab7d69cf14b2271ea87431ad4f4c3.jpg'),
(23, 'Бронирование билетов ', 'example#2example#2example#2example#2example#2example#2example#2example#2example#2example#2example#2example#2example#2example#2', 'sadsa', 'asdsa', 'asda', 'asdsa', '88a79730f28eb93d4e0125edebd7c03f.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `img_name` int(11) NOT NULL,
  `action` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `services_book`
--

CREATE TABLE `services_book` (
  `id` int(11) NOT NULL,
  `title` text,
  `description` text,
  `en_title` text,
  `en_desc` text,
  `chi_title` text,
  `chi_desc` text,
  `img_name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `services_book`
--

INSERT INTO `services_book` (`id`, `title`, `description`, `en_title`, `en_desc`, `chi_title`, `chi_desc`, `img_name`, `category_id`) VALUES
(2, 'new 2', 'new 2 new 2', '', '', '', '', '', 23),
(3, 'asdsa', 'asda', '', '', '', '', 'c4af8c809b5c5237f456a373a7f29ea3.jpg', 0),
(4, 'фывыфффффффффффффф', 'фывыыыыыыыыы', '', '', '', '', '4611f989d576de998efb78b65d100f0a.jpg', 22),
(5, 'рус', 'рус', NULL, NULL, NULL, NULL, 'b933937bfd7ae3eebfc1175281c5fe19.jpg', 22);

-- --------------------------------------------------------

--
-- Структура таблицы `services_restaurants`
--

CREATE TABLE `services_restaurants` (
  `id` int(11) NOT NULL,
  `title` text,
  `description` text,
  `en_title` text,
  `en_desc` text,
  `chi_title` text,
  `chi_desc` text,
  `img_name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `services_restaurants`
--

INSERT INTO `services_restaurants` (`id`, `title`, `description`, `en_title`, `en_desc`, `chi_title`, `chi_desc`, `img_name`, `category_id`) VALUES
(2, 'Ресторан Кыргызстан', 'desc desc desc desc descdescv vdesc', '', '', '', '', 'efd145809405bd7a1c672d165730482f.jpg', 22),
(4, 'ывавыыыыыыыыыыыырус', 'ывавыфффффффффффрус', NULL, NULL, NULL, NULL, '1264a4629806cb738d99132b32b433e4.jpg', 22),
(20, 'Тур классика Джекки Чжана А - Макао 2018 года', 'фвфв', 'Jacky Cheung A Classic Tour - 2018 Macao', 'фывф', 'китай', 'китй', '8d3348fac0d67309a56ae64a483df3e3.jpg', 23);

-- --------------------------------------------------------

--
-- Структура таблицы `services_tickets_show`
--

CREATE TABLE `services_tickets_show` (
  `id` int(11) NOT NULL,
  `title` text,
  `description` text,
  `en_title` text,
  `en_desc` text,
  `chi_title` text,
  `chi_desc` text,
  `img_name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `services_tickets_show`
--

INSERT INTO `services_tickets_show` (`id`, `title`, `description`, `en_title`, `en_desc`, `chi_title`, `chi_desc`, `img_name`, `category_id`) VALUES
(2, 'new 2', 'new new new', '', '', '', '', '', 23),
(3, 'фвфыв', 'фывфыв', NULL, NULL, NULL, NULL, 'f966d1301def3656514c2a54dce81349.jpg', 22),
(4, 'руссс', 'руссс', 'анггг', 'анггг', 'китттт', 'китттт', '3e5c9ebbb29850d45775d6a8aef688b4.jpg', 22);

-- --------------------------------------------------------

--
-- Структура таблицы `services_transports`
--

CREATE TABLE `services_transports` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `img_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Структура таблицы `service_book_view`
--

CREATE TABLE `service_book_view` (
  `id` int(11) NOT NULL,
  `title` text,
  `description` text,
  `en_title` text,
  `en_desc` text,
  `chi_title` text,
  `chi_desc` text,
  `date_time` varchar(255) NOT NULL,
  `img_name` varchar(255) NOT NULL,
  `sub_cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `service_book_view`
--

INSERT INTO `service_book_view` (`id`, `title`, `description`, `en_title`, `en_desc`, `chi_title`, `chi_desc`, `date_time`, `img_name`, `sub_cat_id`) VALUES
(2, 'Ресторан Кыргызстан', 'desc desc desc desc descdescv vdesc', NULL, NULL, NULL, NULL, '', '8921fa03cb3c6abfb6809b6fb37fe0dc.jpg', 5),
(4, 'Jacky Cheung A Classic Tour - 2018 Macao', 'asda', 'ttt', 'ttt', 'ttt', 'ttt', '', '393ebf2f6e741327e39fbc57f8ccbebb.jpg', 4),
(7, 'asdsad', 'as', 'as', 'as', 'asssa', 'asas', '', '6481e2db016c124e7537e879848e778d.jpg', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `service_rest_view`
--

CREATE TABLE `service_rest_view` (
  `id` int(11) NOT NULL,
  `title` text,
  `description` text,
  `en_title` text,
  `en_desc` text,
  `chi_title` text,
  `chi_desc` text,
  `date_time` varchar(255) NOT NULL,
  `img_name` varchar(255) NOT NULL,
  `sub_cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `service_rest_view`
--

INSERT INTO `service_rest_view` (`id`, `title`, `description`, `en_title`, `en_desc`, `chi_title`, `chi_desc`, `date_time`, `img_name`, `sub_cat_id`) VALUES
(2, 'Ресторан Кыргызстан', 'desc desc desc desc descdescv vdesc', NULL, NULL, NULL, NULL, '3443', '', 2),
(4, 'Тур классика Джекки Чжана А - Макао 2018 года', 'ru', 'ss', 'ss', NULL, NULL, '888333', '6ce3d045da42fee9452e4df71504d846.jpg', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `service_tick_sh_view`
--

CREATE TABLE `service_tick_sh_view` (
  `id` int(11) NOT NULL,
  `title` text,
  `description` text,
  `en_title` text,
  `en_desc` text,
  `chi_title` text,
  `chi_desc` text,
  `date_time` varchar(255) NOT NULL,
  `img_name` varchar(255) NOT NULL,
  `sub_cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `service_tick_sh_view`
--

INSERT INTO `service_tick_sh_view` (`id`, `title`, `description`, `en_title`, `en_desc`, `chi_title`, `chi_desc`, `date_time`, `img_name`, `sub_cat_id`) VALUES
(2, 'new 2', 'new new new', '', '', '', '', '17:00 - 20:00', '', 4),
(3, 'ysssasas', 'yssssasasas', 'asss', 'asss', 'k', 'k', '444', '05dce79510bb7a7f053d4d70146147ad.jpg', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `sub_category_one_info`
--

CREATE TABLE `sub_category_one_info` (
  `id` int(11) NOT NULL,
  `price` varchar(222) DEFAULT NULL,
  `type_package` varchar(255) DEFAULT NULL,
  `package_includes_one` text,
  `package_includes_two` text,
  `package_includes_three` text,
  `book_now_text` text,
  `ticket_text` text,
  `ticket_type` text,
  `category_id` int(11) NOT NULL,
  `en_type_package` varchar(255) DEFAULT NULL,
  `en_package_includes_one` text,
  `en_package_includes_two` text,
  `en_package_includes_three` text,
  `en_book_now_text` text,
  `en_ticket_text` text,
  `en_ticket_type` text,
  `chi_type_package` varchar(255) DEFAULT NULL,
  `chi_package_includes_one` text,
  `chi_package_includes_two` text,
  `chi_package_includes_three` text,
  `chi_book_now_text` text,
  `chi_ticket_text` text,
  `chi_ticket_type` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sub_category_one_info`
--

INSERT INTO `sub_category_one_info` (`id`, `price`, `type_package`, `package_includes_one`, `package_includes_two`, `package_includes_three`, `book_now_text`, `ticket_text`, `ticket_type`, `category_id`, `en_type_package`, `en_package_includes_one`, `en_package_includes_two`, `en_package_includes_three`, `en_book_now_text`, `en_ticket_text`, `en_ticket_type`, `chi_type_package`, `chi_package_includes_one`, `chi_package_includes_two`, `chi_package_includes_three`, `chi_book_now_text`, `chi_ticket_text`, `chi_ticket_type`) VALUES
(11, 'uuu,,,', 'asdsuuUmmm', 'uuu', 'uuuu', 'uuu', 'uu', 'uu', 'uu', 1, 'uu', 'u', 'u', 'u', 'u', 'u', 'u', 'k', 'k', 'k', 'k', 'k', 'k', 'k'),
(12, 'ii', 'ii', 'ii', 'ii', 'ii', 'ii', 'ii', 'ii', 3, 'ii', 'ii', 'ii', 'ii', 'iii', 'ii', 'ii', 'p', 'p', 'p', 'p', 'p', 'p', 'p'),
(15, 'sdkjk', 'LLLLLLLLLL', 'asd', 'JJJJJJJJJJJJJJJJ', 'k', 'sd', 'sd', 'LLLLLLLLLLL', 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `sub_category_three`
--

CREATE TABLE `sub_category_three` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `en_title` varchar(255) DEFAULT NULL,
  `en_desc` text,
  `chi_title` varchar(255) DEFAULT NULL,
  `chi_desc` text,
  `total_rooms` varchar(255) NOT NULL,
  `occupied` varchar(255) NOT NULL,
  `idle` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `cat_three_id` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sub_category_three`
--

INSERT INTO `sub_category_three` (`id`, `title`, `description`, `en_title`, `en_desc`, `chi_title`, `chi_desc`, `total_rooms`, `occupied`, `idle`, `image_name`, `cat_three_id`) VALUES
(1, 'jannat', 'выв', 'фыв', 'фывф', 'фывф', 'фывф', '120', '80', '40', '', '1'),
(2, 'asdsaчч', 'фыч', '', '', '', '', '2232', '2232', '2232', '4f70705ac424f874b586cd8f34185b56.jpg', '1'),
(4, 'выфв', 'ПА', 'ООО', 'ООО', 'ББ', 'БББ', '5', '5', '8', '', '1'),
(5, 'Тур классика Джекки Чжана А - Макао 2018 года', 'ОО', 'ваы', 'ыаыа', 'выа', 'ыва', 'оо', '23', '12', '36202849cbd4ff4e66c68b6fbce9407c.jpg', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `sub_category_two`
--

CREATE TABLE `sub_category_two` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `en_title` varchar(255) NOT NULL,
  `en_desc` text NOT NULL,
  `chi_title` varchar(255) NOT NULL,
  `chi_desc` text NOT NULL,
  `img_name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sub_category_two`
--

INSERT INTO `sub_category_two` (`id`, `title`, `description`, `en_title`, `en_desc`, `chi_title`, `chi_desc`, `img_name`, `category_id`) VALUES
(1, 'ыв', 'ыва', '', '', '', '', '', 22);

-- --------------------------------------------------------

--
-- Структура таблицы `ticket_booking`
--

CREATE TABLE `ticket_booking` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `count_people` varchar(255) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ticket_booking`
--

INSERT INTO `ticket_booking` (`id`, `date`, `type`, `count_people`, `cat_id`, `user_id`) VALUES
(1, '12.02.18', '15.45', '5', 4, 2),
(2, '2018-08-11', 'VIP reserve', '1', 4, 0),
(3, '2018-08-08', 'VIP reserve', '1', 4, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `transportation_services`
--

CREATE TABLE `transportation_services` (
  `id` int(11) NOT NULL,
  `departure_point` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `count_people` varchar(255) NOT NULL,
  `date_of_departure` varchar(255) NOT NULL,
  `date_of_change` varchar(255) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `transportation_services`
--

INSERT INTO `transportation_services` (`id`, `departure_point`, `destination`, `count_people`, `date_of_departure`, `date_of_change`, `cat_id`, `user_id`) VALUES
(1, 'Bishkek', 'Osh', '5', '02.03.18', '02.05.18', 2, 2),
(2, 'Biskek', 'Macao', '1', '12.03.18', '15.05.18', 2, 0),
(3, 'Biskek', 'Macao', '1', '12.03.18', '15.05.18', 2, 0),
(4, 'Osh', 'Macao', '1', '12.03.18', '15.05.18', 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `users_admin`
--

CREATE TABLE `users_admin` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `last_login` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users_admin`
--

INSERT INTO `users_admin` (`id`, `login`, `email`, `password`, `created`, `last_login`) VALUES
(1, 'admin', 'admin@mail.ru', '$2y$10$NgoWX40qXZl3FGNLwxzymuk3cHR4iY4GRFLR6tz3eNG0jy/UJi8ny', '2018-08-08 10:47:00', '2018-08-14 12:32:25');

-- --------------------------------------------------------

--
-- Структура таблицы `vip_booking_services`
--

CREATE TABLE `vip_booking_services` (
  `id` int(11) NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `vip_booking` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `type_of_chip` varchar(255) NOT NULL,
  `review_type` varchar(255) NOT NULL,
  `number_phone` varchar(255) NOT NULL,
  `requirements` varchar(255) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `vip_booking_services`
--

INSERT INTO `vip_booking_services` (`id`, `client_name`, `vip_booking`, `date`, `time`, `total`, `type_of_chip`, `review_type`, `number_phone`, `requirements`, `cat_id`, `user_id`) VALUES
(1, 'mr Ben', '5', '02.03.18', '15.45', '6', 'gold', 'vip', '010203040506070809', 'IMPORTANT', 1, 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `accommodation_package`
--
ALTER TABLE `accommodation_package`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `all_users`
--
ALTER TABLE `all_users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `booking_package`
--
ALTER TABLE `booking_package`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `booking_restaurants`
--
ALTER TABLE `booking_restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category_one`
--
ALTER TABLE `category_one`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category_three`
--
ALTER TABLE `category_three`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category_two`
--
ALTER TABLE `category_two`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `services_book`
--
ALTER TABLE `services_book`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `services_restaurants`
--
ALTER TABLE `services_restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `services_tickets_show`
--
ALTER TABLE `services_tickets_show`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `services_transports`
--
ALTER TABLE `services_transports`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `service_book_view`
--
ALTER TABLE `service_book_view`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `service_rest_view`
--
ALTER TABLE `service_rest_view`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `service_tick_sh_view`
--
ALTER TABLE `service_tick_sh_view`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sub_category_one_info`
--
ALTER TABLE `sub_category_one_info`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sub_category_three`
--
ALTER TABLE `sub_category_three`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sub_category_two`
--
ALTER TABLE `sub_category_two`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ticket_booking`
--
ALTER TABLE `ticket_booking`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `transportation_services`
--
ALTER TABLE `transportation_services`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users_admin`
--
ALTER TABLE `users_admin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `vip_booking_services`
--
ALTER TABLE `vip_booking_services`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `accommodation_package`
--
ALTER TABLE `accommodation_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `all_users`
--
ALTER TABLE `all_users`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `booking_package`
--
ALTER TABLE `booking_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `booking_restaurants`
--
ALTER TABLE `booking_restaurants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `category_one`
--
ALTER TABLE `category_one`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `category_three`
--
ALTER TABLE `category_three`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `category_two`
--
ALTER TABLE `category_two`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `services_book`
--
ALTER TABLE `services_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `services_restaurants`
--
ALTER TABLE `services_restaurants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `services_tickets_show`
--
ALTER TABLE `services_tickets_show`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `services_transports`
--
ALTER TABLE `services_transports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `service_book_view`
--
ALTER TABLE `service_book_view`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `service_rest_view`
--
ALTER TABLE `service_rest_view`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `service_tick_sh_view`
--
ALTER TABLE `service_tick_sh_view`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `sub_category_one_info`
--
ALTER TABLE `sub_category_one_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `sub_category_three`
--
ALTER TABLE `sub_category_three`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `sub_category_two`
--
ALTER TABLE `sub_category_two`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `ticket_booking`
--
ALTER TABLE `ticket_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `transportation_services`
--
ALTER TABLE `transportation_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users_admin`
--
ALTER TABLE `users_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `vip_booking_services`
--
ALTER TABLE `vip_booking_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
