CREATE TABLE IF NOT EXISTS `geo_district` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='Федеральные округа';
 
INSERT INTO `geo_district` (`id`, `name`) VALUES
(2, 'Центральный федеральный округ'),
(3, 'Южный федеральный округ'),
(4, 'Северо-западный федеральный округ'),
(5, 'Дальневосточный федеральный округ'),
(6, 'Сибирский федеральный округ'),
(7, 'Уральский федеральный округ'),
(8, 'Приволжский федеральный округ'),
(9, 'Северо-Кавказский федеральный округ');

CREATE TABLE IF NOT EXISTS `geo_regions` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `district_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COMMENT='Регионы';
 
 
INSERT INTO `geo_regions` (`id`, `district_id`, `name`) VALUES
(2, 3, 'Адыгея'),
(3, 6, 'Алтай'),
(4, 6, 'Алтайский край'),
(5, 5, 'Амурская область'),
(6, 4, 'Архангельская область'),
(7, 3, 'Астраханская область'),
(8, 8, 'Башкортостан'),
(9, 2, 'Белгородская область'),
(10, 2, 'Брянская область'),
(11, 6, 'Бурятия'),
(12, 2, 'Владимирская область'),
(13, 3, 'Волгоградская область'),
(14, 4, 'Вологодская область'),
(15, 2, 'Воронежская область'),
(16, 9, 'Дагестан'),
(17, 5, 'Еврейская АО'),
(18, 6, 'Забайкальский край'),
(19, 2, 'Ивановская область'),
(20, 9, 'Ингушетия'),
(21, 6, 'Иркутская область'),
(22, 9, 'Кабардино-Балкария'),
(23, 4, 'Калининградская область'),
(24, 3, 'Калмыкия'),
(25, 2, 'Калужская область'),
(26, 5, 'Камчатский край'),
(27, 9, 'Карачаево-Черкессия'),
(28, 4, 'Карелия'),
(29, 6, 'Кемеровская область'),
(30, 8, 'Кировская область'),
(31, 4, 'Коми'),
(32, 2, 'Костромская область'),
(33, 3, 'Краснодарский край'),
(34, 6, 'Красноярский край'),
(35, 7, 'Курганская область'),
(36, 2, 'Курская область'),
(37, 4, 'Ленинградская область'),
(38, 2, 'Липецкая область'),
(39, 5, 'Магаданская область'),
(40, 8, 'Марий Эл'),
(41, 8, 'Мордовия'),
(42, 2, 'Москва'),
(43, 2, 'Московская область'),
(44, 4, 'Мурманская область'),
(45, 4, 'Ненецкий АО'),
(46, 8, 'Нижегородская область'),
(47, 4, 'Новгородская область'),
(48, 6, 'Новосибирская область'),
(49, 6, 'Омская область'),
(50, 8, 'Оренбургская область'),
(51, 2, 'Орловская область'),
(52, 8, 'Пензенская область'),
(53, 8, 'Пермский край'),
(54, 5, 'Приморский край'),
(55, 4, 'Псковская область'),
(56, 3, 'Ростовская область'),
(57, 2, 'Рязанская область'),
(58, 8, 'Самарская область'),
(59, 4, 'Санкт-Петербург'),
(60, 8, 'Саратовская область'),
(61, 5, 'Саха (Якутия)'),
(62, 5, 'Сахалинская область'),
(63, 7, 'Свердловская область'),
(64, 9, 'Северная Осетия - Алания'),
(65, 2, 'Смоленская область'),
(66, 9, 'Ставропольский край'),
(67, 2, 'Тамбовская область'),
(68, 8, 'Татарстан'),
(69, 2, 'Тверская область'),
(70, 6, 'Томская область'),
(71, 2, 'Тульская область'),
(72, 6, 'Тыва'),
(73, 7, 'Тюменская область'),
(74, 8, 'Удмуртия'),
(75, 8, 'Ульяновская область'),
(76, 5, 'Хабаровский край'),
(77, 6, 'Хакасия'),
(78, 7, 'Ханты-Мансийский АО - Югра'),
(79, 7, 'Челябинская область'),
(80, 9, 'Чеченская республика'),
(81, 8, 'Чувашская республика'),
(82, 5, 'Чукотский АО'),
(83, 7, 'Ямало-Ненецкий АО'),
(84, 2, 'Ярославская область'),
(86, 3, 'Крым'),
(87, 3, 'Севастополь');

CREATE TABLE IF NOT EXISTS `geo_city` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `region_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1490 DEFAULT CHARSET=utf8 COMMENT='Города';
 
INSERT INTO `geo_city` (`id`, `region_id`, `name`) VALUES
(1, 2, 'Майкоп'),
(2, 3, 'Горно-Алтайск'),
(3, 4, 'Барнаул'),
(4, 4, 'Бийск'),
(5, 4, 'Рубцовск'),
(6, 4, 'Новоалтайск'),
(7, 4, 'Заринск'),
(8, 5, 'Благовещенск (Амурская область)'),
(9, 5, 'Белогорск (Амурская область)'),
(10, 5, 'Свободный'),
(11, 6, 'Архангельск'),
(12, 6, 'Северодвинск'),
(13, 6, 'Котлас'),
(14, 7, 'Астрахань'),
(15, 7, 'Ахтубинск'),
(16, 7, 'Знаменск'),
(17, 8, 'Уфа'),
(18, 8, 'Стерлитамак'),
(19, 8, 'Салават'),
(20, 8, 'Нефтекамск'),
(21, 8, 'Октябрьский'),
(22, 8, 'Белорецк'),
(23, 8, 'Благовещенск (Башкортостан)'),
(24, 9, 'Белгород'),
(25, 9, 'Старый Оскол'),
(26, 9, 'Губкин'),
(27, 9, 'Шебекино'),
(28, 9, 'Новый Оскол'),
(29, 10, 'Брянск'),
(30, 10, 'Клинцы'),
(31, 11, 'Улан-Удэ'),
(32, 11, 'Северобайкальск'),
(33, 12, 'Владимир'),
(34, 12, 'Ковров'),
(35, 12, 'Муром'),
(36, 12, 'Александров'),
(37, 12, 'Гусь-Хрустальный'),
(38, 12, 'Киржач'),
(39, 13, 'Волгоград'),
(40, 13, 'Волжский'),
(41, 13, 'Камышин'),
(42, 13, 'Калач-на-Дону'),
(43, 14, 'Череповец'),
(44, 14, 'Вологда'),
(45, 14, 'Сокол'),
(46, 15, 'Воронеж'),
(47, 15, 'Борисоглебск'),
(48, 15, 'Россошь'),
(49, 15, 'Лиски'),
(50, 15, 'Павловск'),
(51, 16, 'Махачкала'),
(52, 16, 'Хасавюрт'),
(53, 16, 'Дербент'),
(54, 17, 'Биробиджан'),
(55, 18, 'Чита'),
(56, 18, 'Краснокаменск'),
(57, 19, 'Иваново'),
(58, 19, 'Кинешма'),
(59, 19, 'Шуя'),
(60, 20, 'Назрань'),
(61, 21, 'Иркутск'),
(62, 21, 'Братск'),
(63, 21, 'Ангарск'),
(64, 21, 'Усть-Илимск'),
(65, 22, 'Нальчик'),
(66, 22, 'Прохладный'),
(67, 23, 'Калининград'),
(68, 23, 'Советск (Калининградская область)'),
(69, 24, 'Элиста'),
(70, 25, 'Калуга'),
(71, 25, 'Обнинск'),
(72, 26, 'Петропавловск-Камчатский'),
(73, 26, 'Елизово'),
(74, 26, 'Вилючинск'),
(75, 27, 'Черкесск'),
(76, 28, 'Петрозаводск'),
(77, 28, 'Кондопога'),
(78, 29, 'Новокузнецк'),
(79, 29, 'Кемерово'),
(80, 29, 'Прокопьевск'),
(81, 29, 'Ленинск-Кузнецкий'),
(82, 29, 'Междуреченск'),
(83, 29, 'Киселёвск'),
(84, 29, 'Юрга'),
(85, 30, 'Киров (Кировская область)'),
(86, 30, 'Кирово-Чепецк'),
(87, 31, 'Сыктывкар'),
(88, 31, 'Ухта'),
(89, 31, 'Воркута'),
(90, 31, 'Печора'),
(91, 32, 'Кострома'),
(92, 33, 'Краснодар'),
(93, 33, 'Сочи'),
(94, 33, 'Новороссийск'),
(95, 33, 'Армавир'),
(96, 33, 'Ейск'),
(97, 33, 'Кропоткин'),
(98, 33, 'Туапсе'),
(99, 33, 'Тихорецк'),
(100, 33, 'Анапа'),
(101, 33, 'Белореченск'),
(102, 33, 'Геленджик'),
(103, 34, 'Красноярск'),
(104, 34, 'Норильск'),
(105, 34, 'Ачинск'),
(106, 34, 'Канск'),
(107, 34, 'Железногорск (Красноярский край)'),
(108, 34, 'Зеленогорск'),
(109, 35, 'Курган'),
(110, 35, 'Шадринск'),
(111, 36, 'Курск'),
(112, 36, 'Железногорск (Курская область)'),
(113, 36, 'Курчатов'),
(114, 37, 'Гатчина'),
(115, 37, 'Выборг'),
(116, 37, 'Сосновый Бор'),
(117, 37, 'Тихвин'),
(118, 37, 'Кириши'),
(119, 37, 'Кингисепп'),
(120, 37, 'Всеволожск'),
(121, 37, 'Волхов'),
(122, 37, 'Сертолово'),
(123, 37, 'Луга'),
(124, 37, 'Тосно'),
(125, 37, 'Сланцы'),
(126, 37, 'Кировск (Ленинградская область)'),
(127, 37, 'Лодейное Поле'),
(128, 37, 'Пикалёво'),
(129, 37, 'Отрадное'),
(130, 37, 'Подпорожье'),
(131, 37, 'Коммунар'),
(132, 37, 'Приозерск'),
(133, 37, 'Никольское'),
(134, 37, 'Бокситогорск'),
(135, 37, 'Светогорск'),
(136, 37, 'Сясьстрой'),
(137, 37, 'Шлиссельбург'),
(138, 37, 'Сиверский'),
(139, 37, 'Волосово'),
(140, 37, 'Ивангород'),
(141, 37, 'Вырица'),
(142, 37, 'Поселок им. Морозова'),
(143, 38, 'Липецк'),
(144, 38, 'Елец'),
(145, 39, 'Магадан'),
(146, 40, 'Йошкар-Ола'),
(147, 40, 'Волжск'),
(148, 41, 'Саранск'),
(149, 41, 'Рузаевка'),
(150, 43, 'Балашиха'),
(151, 43, 'Химки'),
(152, 43, 'Подольск'),
(153, 43, 'Королёв'),
(154, 43, 'Мытищи'),
(155, 43, 'Люберцы'),
(156, 43, 'Коломна'),
(157, 43, 'Электросталь'),
(158, 43, 'Одинцово'),
(159, 43, 'Железнодорожный (Балашиха)'),
(160, 43, 'Серпухов'),
(161, 43, 'Орехово-Зуево'),
(162, 43, 'Ногинск'),
(163, 43, 'Щёлково'),
(164, 43, 'Сергиев Посад'),
(165, 43, 'Жуковский'),
(166, 43, 'Красногорск'),
(167, 43, 'Пушкино'),
(168, 43, 'Воскресенск'),
(169, 43, 'Домодедово'),
(170, 43, 'Раменское'),
(171, 43, 'Реутов'),
(172, 43, 'Долгопрудный'),
(173, 43, 'Клин'),
(174, 43, 'Чехов'),
(175, 43, 'Наро-Фоминск'),
(176, 43, 'Лобня'),
(177, 43, 'Егорьевск'),
(178, 43, 'Ступино'),
(179, 43, 'Дмитров'),
(180, 43, 'Дубна'),
(181, 43, 'Павловский Посад'),
(182, 43, 'Солнечногорск'),
(183, 43, 'Ивантеевка'),
(184, 42, 'Климовск (Москва)'),
(185, 43, 'Видное'),
(186, 43, 'Фрязино'),
(187, 43, 'Лыткарино'),
(188, 43, 'Дзержинский'),
(189, 43, 'Кашира'),
(190, 43, 'Протвино'),
(191, 42, 'Троицк (Москва)'),
(192, 42, 'Юбилейный (Москва)'),
(193, 43, 'Истра'),
(194, 43, 'Нахабино'),
(195, 43, 'Краснознаменск (Московская область)'),
(196, 43, 'Луховицы'),
(197, 42, 'Щербинка (Москва)'),
(198, 43, 'Шатура'),
(199, 43, 'Ликино-Дулёво'),
(200, 43, 'Можайск'),
(201, 43, 'Томилино'),
(202, 43, 'Дедовск'),
(203, 43, 'Красноармейск (Московская область)'),
(204, 43, 'Кубинка'),
(205, 43, 'Озёры'),
(206, 43, 'Зарайск'),
(207, 43, 'Калининец'),
(208, 43, 'Волоколамск'),
(209, 43, 'Лосино-Петровский'),
(210, 43, 'Старая Купавна'),
(211, 43, 'Рошаль'),
(212, 43, 'Электрогорск'),
(213, 43, 'Электроугли'),
(214, 43, 'Черноголовка'),
(215, 43, 'Котельники'),
(216, 43, 'Пущино'),
(217, 43, 'Красково'),
(218, 44, 'Мурманск'),
(219, 44, 'Апатиты'),
(220, 44, 'Североморск'),
(221, 45, 'Нарьян-Мар'),
(222, 46, 'Нижний Новгород'),
(223, 46, 'Дзержинск'),
(224, 46, 'Арзамас'),
(225, 46, 'Саров'),
(226, 46, 'Бор'),
(227, 46, 'Кстово'),
(228, 46, 'Павлово'),
(229, 46, 'Выкса'),
(230, 46, 'Балахна'),
(231, 47, 'Великий Новгород'),
(232, 47, 'Боровичи'),
(233, 47, 'Старая Русса'),
(234, 48, 'Новосибирск'),
(235, 48, 'Бердск'),
(236, 48, 'Куйбышев'),
(237, 49, 'Омск'),
(238, 50, 'Оренбург'),
(239, 50, 'Орск'),
(240, 50, 'Новотроицк'),
(241, 50, 'Бузулук'),
(242, 51, 'Орёл'),
(243, 51, 'Ливны'),
(244, 51, 'Мценск'),
(245, 52, 'Пенза'),
(246, 52, 'Кузнецк'),
(247, 52, 'Заречный (Пензенская область)'),
(248, 52, 'Каменка'),
(249, 53, 'Пермь'),
(250, 53, 'Березники'),
(251, 53, 'Соликамск'),
(252, 53, 'Чайковский'),
(253, 53, 'Лысьва'),
(254, 53, 'Кунгур'),
(255, 53, 'Краснокамск'),
(256, 54, 'Владивосток'),
(257, 54, 'Находка'),
(258, 54, 'Уссурийск'),
(259, 54, 'Артём'),
(260, 55, 'Псков'),
(261, 55, 'Великие Луки'),
(262, 56, 'Ростов-на-Дону'),
(263, 56, 'Таганрог'),
(264, 56, 'Шахты'),
(265, 56, 'Новочеркасск'),
(266, 56, 'Волгодонск'),
(267, 56, 'Новошахтинск'),
(268, 56, 'Батайск'),
(269, 56, 'Каменск-Шахтинский'),
(270, 56, 'Азов'),
(271, 56, 'Гуково'),
(272, 56, 'Сальск'),
(273, 56, 'Донецк'),
(274, 56, 'Белая Калитва'),
(275, 57, 'Рязань'),
(276, 57, 'Касимов'),
(277, 58, 'Самара'),
(278, 58, 'Тольятти'),
(279, 58, 'Сызрань'),
(280, 58, 'Новокуйбышевск'),
(281, 58, 'Чапаевск'),
(282, 58, 'Жигулёвск'),
(283, 60, 'Саратов'),
(284, 60, 'Энгельс'),
(285, 60, 'Балаково'),
(286, 60, 'Балашов'),
(287, 60, 'Вольск'),
(288, 61, 'Якутск'),
(289, 61, 'Нерюнгри'),
(290, 61, 'Мирный'),
(291, 62, 'Южно-Сахалинск'),
(292, 63, 'Екатеринбург'),
(293, 63, 'Нижний Тагил'),
(294, 63, 'Каменск-Уральский'),
(295, 63, 'Первоуральск'),
(296, 63, 'Серов'),
(297, 63, 'Новоуральск'),
(298, 63, 'Асбест'),
(299, 63, 'Полевской'),
(300, 63, 'Ревда'),
(301, 63, 'Краснотурьинск'),
(302, 64, 'Владикавказ'),
(303, 64, 'Моздок'),
(304, 65, 'Смоленск'),
(305, 65, 'Вязьма'),
(306, 66, 'Ставрополь'),
(307, 66, 'Пятигорск'),
(308, 66, 'Кисловодск'),
(309, 66, 'Ессентуки'),
(310, 66, 'Минеральные Воды'),
(311, 66, 'Будённовск'),
(312, 67, 'Тамбов'),
(313, 67, 'Мичуринск'),
(314, 68, 'Казань'),
(315, 68, 'Набережные Челны'),
(316, 68, 'Нижнекамск'),
(317, 68, 'Альметьевск'),
(318, 68, 'Зеленодольск'),
(319, 68, 'Бугульма'),
(320, 69, 'Тверь'),
(321, 69, 'Ржев'),
(322, 70, 'Томск'),
(323, 70, 'Северск'),
(324, 71, 'Тула'),
(325, 71, 'Новомосковск'),
(327, 71, 'Узловая'),
(328, 72, 'Кызыл'),
(329, 73, 'Тюмень'),
(330, 73, 'Тобольск'),
(331, 74, 'Ижевск'),
(332, 74, 'Сарапул'),
(333, 74, 'Глазов'),
(334, 74, 'Воткинск'),
(335, 75, 'Ульяновск'),
(336, 75, 'Димитровград'),
(337, 76, 'Хабаровск'),
(338, 76, 'Комсомольск-на-Амуре'),
(339, 76, 'Амурск'),
(340, 77, 'Абакан'),
(341, 77, 'Черногорск'),
(342, 78, 'Сургут'),
(343, 78, 'Нижневартовск'),
(344, 78, 'Нефтеюганск'),
(345, 78, 'Ханты-Мансийск'),
(346, 79, 'Челябинск'),
(347, 79, 'Магнитогорск'),
(348, 79, 'Златоуст'),
(349, 79, 'Миасс'),
(350, 79, 'Копейск'),
(351, 79, 'Озёрск'),
(352, 79, 'Троицк'),
(353, 79, 'Снежинск'),
(354, 79, 'Сатка'),
(355, 80, 'Грозный'),
(356, 80, 'Урус-Мартан'),
(357, 81, 'Чебоксары'),
(358, 81, 'Новочебоксарск'),
(360, 83, 'Новый Уренгой'),
(361, 83, 'Ноябрьск'),
(362, 84, 'Ярославль'),
(363, 84, 'Рыбинск'),
(364, 84, 'Переславль-Залесский'),
(365, 42, 'Москва'),
(366, 59, 'Санкт-Петербург'),
(367, 77, 'Абаза'),
(369, 50, 'Абдулино'),
(370, 33, 'Абинск'),
(371, 8, 'Агидель'),
(372, 68, 'Агрыз'),
(373, 2, 'Адыгейск'),
(374, 68, 'Азнакаево'),
(376, 72, 'Ак-Довурак'),
(377, 56, 'Аксай'),
(378, 64, 'Алагир'),
(379, 63, 'Алапаевск'),
(380, 81, 'Алатырь'),
(381, 61, 'Алдан'),
(382, 4, 'Алейск'),
(384, 53, 'Александровск'),
(385, 62, 'Александровск-Сахалинский'),
(386, 9, 'Алексеевка'),
(387, 71, 'Алексин'),
(388, 21, 'Алзамай'),
(391, 82, 'Анадырь'),
(394, 69, 'Андреаполь'),
(395, 29, 'Анжеро-Судженск'),
(396, 62, 'Анива'),
(398, 43, 'Апрелевка'),
(399, 33, 'Апшеронск'),
(400, 63, 'Арамиль'),
(401, 80, 'Аргун'),
(402, 41, 'Ардатов'),
(403, 64, 'Ардон'),
(405, 60, 'Аркадак'),
(407, 54, 'Арсеньев'),
(408, 68, 'Арск'),
(410, 34, 'Артёмовск'),
(411, 63, 'Артёмовский'),
(414, 70, 'Асино'),
(416, 60, 'Аткарск'),
(419, 79, 'Аша'),
(420, 14, 'Бабаево'),
(421, 11, 'Бабушкин'),
(422, 68, 'Бавлы'),
(423, 23, 'Багратионовск'),
(424, 21, 'Байкальск'),
(425, 8, 'Баймак'),
(426, 79, 'Бакал'),
(427, 22, 'Баксан'),
(428, 25, 'Балабаново'),
(433, 18, 'Балей'),
(434, 23, 'Балтийск'),
(435, 48, 'Барабинск'),
(437, 75, 'Барыш'),
(439, 69, 'Бежецк'),
(440, 71, 'Белёв'),
(442, 30, 'Белая Холуница'),
(444, 8, 'Белебей'),
(445, 52, 'Белинский'),
(446, 29, 'Белово'),
(448, 14, 'Белозерск'),
(449, 4, 'Белокуриха'),
(450, 28, 'Беломорск'),
(453, 25, 'Белоусово'),
(454, 78, 'Белоярский'),
(455, 69, 'Белый'),
(456, 29, 'Березовский (Кемеровская область)'),
(457, 63, 'Березовский (Свердловская область)'),
(460, 64, 'Беслан'),
(462, 76, 'Бикин'),
(463, 82, 'Билибино'),
(465, 8, 'Бирск'),
(466, 21, 'Бирюсинск'),
(467, 9, 'Бирюч'),
(470, 66, 'Благодарный'),
(471, 15, 'Бобров'),
(472, 63, 'Богданович'),
(473, 71, 'Богородицк'),
(474, 46, 'Богородск'),
(475, 34, 'Боготол'),
(476, 15, 'Богучар'),
(477, 21, 'Бодайбо'),
(479, 68, 'Болгар'),
(480, 69, 'Бологое'),
(481, 48, 'Болотное'),
(482, 71, 'Болохово'),
(483, 51, 'Болхов'),
(484, 54, 'Большой Камень'),
(486, 18, 'Борзя'),
(489, 25, 'Боровск'),
(490, 34, 'Бородино'),
(492, 43, 'Бронницы'),
(495, 50, 'Бугуруслан'),
(498, 68, 'Буинск'),
(499, 32, 'Буй'),
(500, 16, 'Буйнакск'),
(501, 15, 'Бутурлиновка'),
(502, 47, 'Валдай'),
(503, 9, 'Валуйки'),
(504, 65, 'Велиж'),
(507, 14, 'Великий Устюг'),
(508, 6, 'Вельск'),
(509, 71, 'Венёв'),
(510, 53, 'Верещагино'),
(511, 43, 'Верея'),
(512, 79, 'Верхнеуральск'),
(513, 63, 'Верхний Тагил'),
(514, 79, 'Верхний Уфалей'),
(515, 63, 'Верхняя Пышма'),
(516, 63, 'Верхняя Салда'),
(517, 63, 'Верхняя Тура'),
(518, 63, 'Верхотурье'),
(519, 61, 'Верхоянск'),
(520, 69, 'Весьегонск'),
(521, 46, 'Ветлуга'),
(523, 61, 'Вилюйск'),
(525, 21, 'Вихоревка'),
(526, 19, 'Вичуга'),
(532, 32, 'Волгореченск'),
(536, 46, 'Володарск'),
(540, 63, 'Волчанск'),
(544, 46, 'Ворсма'),
(548, 31, 'Вуктыл'),
(551, 43, 'Высоковск'),
(552, 37, 'Высоцк'),
(553, 14, 'Вытегра'),
(554, 69, 'Вышний Волочёк'),
(555, 76, 'Вяземский'),
(556, 12, 'Вязники'),
(558, 30, 'Вятские Поляны'),
(559, 19, 'Гаврилов Посад'),
(560, 84, 'Гаврилов-Ям'),
(561, 65, 'Гагарин'),
(562, 44, 'Гаджиево'),
(563, 50, 'Гай'),
(564, 32, 'Галич'),
(566, 23, 'Гвардейск'),
(567, 55, 'Гдов'),
(569, 66, 'Георгиевск'),
(571, 43, 'Голицыно'),
(572, 46, 'Горбатов'),
(574, 53, 'Горнозаводск'),
(575, 4, 'Горняк'),
(576, 46, 'Городец'),
(577, 52, 'Городище'),
(578, 24, 'Городовиковск'),
(579, 12, 'Гороховец'),
(580, 33, 'Горячий Ключ'),
(581, 9, 'Грайворон'),
(582, 53, 'Гремячинск'),
(584, 38, 'Грязи'),
(585, 14, 'Грязовец'),
(586, 53, 'Губаха'),
(588, 83, 'Губкинский'),
(589, 80, 'Гудермес'),
(591, 33, 'Гулькевичи'),
(592, 23, 'Гурьевск (Калининградская область)'),
(593, 29, 'Гурьевск (Кемеровская область)'),
(594, 23, 'Гусев'),
(595, 11, 'Гусиноозёрск'),
(597, 8, 'Давлеканово'),
(598, 16, 'Дагестанские Огни'),
(599, 35, 'Далматово'),
(600, 54, 'Дальнегорск'),
(601, 54, 'Дальнереченск'),
(602, 84, 'Данилов'),
(603, 38, 'Данков'),
(604, 63, 'Дегтярск'),
(606, 65, 'Демидов'),
(608, 65, 'Десногорск'),
(611, 34, 'Дивногорск'),
(612, 64, 'Дигора'),
(614, 36, 'Дмитриев'),
(616, 51, 'Дмитровск'),
(617, 55, 'Дно'),
(618, 53, 'Добрянка'),
(620, 62, 'Долинск'),
(623, 71, 'Донской'),
(624, 65, 'Дорогобуж'),
(625, 43, 'Дрезна'),
(627, 13, 'Дубовка'),
(628, 34, 'Дудинка'),
(629, 65, 'Духовщина'),
(630, 8, 'Дюртюли'),
(631, 10, 'Дятьково'),
(635, 68, 'Елабуга'),
(638, 65, 'Ельня'),
(639, 79, 'Еманжелинск'),
(640, 31, 'Емва'),
(641, 34, 'Енисейск'),
(642, 25, 'Ермолино'),
(643, 60, 'Ершов'),
(645, 71, 'Ефремов'),
(646, 66, 'Железноводск'),
(649, 21, 'Железногорск-Илимский'),
(651, 67, 'Жердевка'),
(653, 25, 'Жиздра'),
(654, 13, 'Жирновск'),
(655, 25, 'Жуков'),
(656, 10, 'Жуковка'),
(658, 5, 'Завитинск'),
(659, 73, 'Заводоуковск'),
(660, 19, 'Заволжск'),
(661, 46, 'Заволжье'),
(662, 38, 'Задонск'),
(663, 68, 'Заинск'),
(664, 11, 'Закаменск'),
(665, 34, 'Заозёрный'),
(666, 44, 'Заозёрск'),
(667, 69, 'Западная Двина'),
(668, 44, 'Заполярный'),
(671, 63, 'Заречный (Свердловская область)'),
(673, 40, 'Звенигово'),
(674, 43, 'Звенигород'),
(675, 56, 'Зверево'),
(677, 23, 'Зеленоградск'),
(679, 66, 'Зеленокумск'),
(680, 56, 'Зерноград'),
(681, 5, 'Зея'),
(682, 21, 'Зима'),
(684, 10, 'Злынка'),
(685, 4, 'Змеиногорск'),
(687, 69, 'Зубцов'),
(688, 30, 'Зуевка'),
(692, 63, 'Ивдель'),
(693, 34, 'Игарка'),
(695, 16, 'Избербаш'),
(696, 66, 'Изобильный'),
(697, 34, 'Иланский'),
(698, 75, 'Инза'),
(699, 41, 'Инсар'),
(700, 31, 'Инта'),
(701, 66, 'Ипатово'),
(702, 63, 'Ирбит'),
(704, 49, 'Исилькуль'),
(705, 48, 'Искитим'),
(707, 73, 'Ишим'),
(708, 8, 'Ишимбай'),
(710, 14, 'Кадников'),
(712, 15, 'Калач'),
(714, 49, 'Калачинск'),
(716, 60, 'Калининск'),
(717, 29, 'Калтан'),
(719, 69, 'Калязин'),
(720, 74, 'Камбарка'),
(722, 37, 'Каменногорск'),
(725, 4, 'Камень-на-Оби'),
(726, 12, 'Камешково'),
(727, 7, 'Камызяк'),
(729, 63, 'Камышлов'),
(730, 81, 'Канаш'),
(731, 44, 'Кандалакша'),
(733, 12, 'Карабаново'),
(734, 79, 'Карабаш'),
(735, 20, 'Карабулак'),
(736, 48, 'Карасук'),
(737, 27, 'Карачаевск'),
(738, 10, 'Карачев'),
(739, 48, 'Каргат'),
(740, 6, 'Каргополь'),
(741, 63, 'Карпинск'),
(742, 79, 'Карталы'),
(744, 79, 'Касли'),
(745, 16, 'Каспийск'),
(746, 79, 'Катав-Ивановск'),
(747, 35, 'Катайск'),
(748, 63, 'Качканар'),
(749, 69, 'Кашин'),
(751, 70, 'Кедровый'),
(753, 28, 'Кемь'),
(754, 53, 'Кизел'),
(755, 16, 'Кизилюрт'),
(756, 16, 'Кизляр'),
(757, 71, 'Кимовск'),
(758, 69, 'Кимры'),
(760, 58, 'Кинель'),
(762, 71, 'Киреевск'),
(763, 21, 'Киренск'),
(765, 14, 'Кириллов'),
(768, 25, 'Киров (Калужская область)'),
(769, 63, 'Кировград'),
(772, 44, 'Кировск (Мурманская область)'),
(773, 30, 'Кирс'),
(774, 67, 'Кирсанов'),
(780, 46, 'Княгинино'),
(781, 44, 'Ковдор'),
(783, 41, 'Ковылкино'),
(784, 78, 'Когалым'),
(785, 34, 'Кодинск'),
(786, 25, 'Козельск'),
(787, 81, 'Козловка'),
(788, 40, 'Козьмодемьянск'),
(789, 44, 'Кола'),
(790, 32, 'Кологрив'),
(792, 70, 'Колпашево'),
(793, 12, 'Кольчугино'),
(795, 19, 'Комсомольск'),
(797, 69, 'Конаково'),
(799, 25, 'Кондрово'),
(800, 56, 'Константиновск'),
(802, 57, 'Кораблино'),
(803, 33, 'Кореновск'),
(804, 79, 'Коркино'),
(806, 9, 'Короча'),
(807, 62, 'Корсаков'),
(808, 6, 'Коряжма'),
(809, 12, 'Костерёво'),
(810, 28, 'Костомукша'),
(813, 13, 'Котельниково'),
(814, 30, 'Котельнич'),
(816, 13, 'Котово'),
(817, 67, 'Котовск'),
(818, 19, 'Кохма'),
(819, 14, 'Красавино'),
(821, 60, 'Красноармейск (Саратовская область)'),
(822, 53, 'Красновишерск'),
(825, 43, 'Краснозаводск'),
(830, 13, 'Краснослободск (Волгоградская область)\r\n'),
(831, 41, 'Краснослободск (Мордовия)'),
(833, 63, 'Красноуральск'),
(834, 63, 'Красноуфимск'),
(836, 60, 'Красный Кут'),
(837, 56, 'Красный Сулин'),
(838, 69, 'Красный Холм'),
(839, 25, 'Кремёнки'),
(841, 33, 'Крымск'),
(844, 50, 'Кувандык'),
(845, 69, 'Кувшиново'),
(846, 53, 'Кудымкар'),
(849, 46, 'Кулебаки'),
(850, 8, 'Кумертау'),
(852, 48, 'Купино'),
(854, 33, 'Курганинск'),
(855, 62, 'Курильск'),
(856, 12, 'Курлово'),
(857, 43, 'Куровское'),
(859, 35, 'Куртамыш'),
(861, 79, 'Куса'),
(862, 63, 'Кушва'),
(864, 79, 'Кыштым'),
(865, 11, 'Кяхта'),
(866, 33, 'Лабинск'),
(867, 83, 'Лабытнанги'),
(868, 24, 'Лагань'),
(869, 23, 'Ладушкин'),
(870, 68, 'Лаишево'),
(871, 12, 'Лакинск'),
(872, 78, 'Лангепас'),
(873, 28, 'Лахденпохья'),
(874, 38, 'Лебедянь'),
(875, 68, 'Лениногорск'),
(876, 13, 'Ленинск'),
(878, 61, 'Ленск'),
(879, 66, 'Лермонтов'),
(880, 63, 'Лесной'),
(881, 54, 'Лесозаводск'),
(882, 34, 'Лесосибирск'),
(886, 71, 'Липки'),
(888, 69, 'Лихославль'),
(893, 30, 'Луза'),
(894, 46, 'Лукоянов'),
(896, 46, 'Лысково'),
(899, 36, 'Льгов'),
(900, 37, 'Любань'),
(902, 84, 'Любим'),
(903, 25, 'Людиново'),
(904, 78, 'Лянтор'),
(906, 20, 'Магас'),
(909, 22, 'Майский'),
(910, 62, 'Макаров'),
(911, 32, 'Макарьев'),
(912, 35, 'Макушино'),
(913, 47, 'Малая Вишера'),
(914, 20, 'Малгобек'),
(915, 30, 'Малмыж'),
(916, 51, 'Малоархангельск'),
(917, 25, 'Малоярославец'),
(918, 68, 'Мамадыш'),
(919, 23, 'Мамоново'),
(920, 32, 'Мантурово'),
(921, 29, 'Мариинск'),
(922, 81, 'Мариинский Посад'),
(923, 60, 'Маркс'),
(925, 10, 'Мглин'),
(926, 78, 'Мегион'),
(927, 28, 'Медвежьегорск'),
(928, 50, 'Медногорск'),
(929, 25, 'Медынь'),
(930, 8, 'Межгорье'),
(932, 6, 'Мезень'),
(933, 12, 'Меленки'),
(934, 8, 'Мелеуз'),
(935, 68, 'Менделеевск'),
(936, 68, 'Мензелинск'),
(937, 25, 'Мещовск'),
(939, 31, 'Микунь'),
(940, 56, 'Миллерово'),
(942, 34, 'Минусинск'),
(943, 79, 'Миньяр'),
(946, 57, 'Михайлов'),
(947, 13, 'Михайловка'),
(948, 63, 'Михайловск (Свердловская область)'),
(949, 66, 'Михайловск (Ставропольский край)'),
(951, 18, 'Могоча'),
(953, 74, 'Можга'),
(955, 44, 'Мончегорск'),
(956, 56, 'Морозовск'),
(957, 67, 'Моршанск'),
(958, 25, 'Мосальск'),
(960, 83, 'Муравленко'),
(961, 30, 'Мураши'),
(965, 29, 'Мыски'),
(967, 84, 'Мышкин'),
(969, 46, 'Навашино'),
(970, 19, 'Наволоки'),
(971, 83, 'Надым'),
(972, 34, 'Назарово'),
(974, 49, 'Называевск'),
(976, 7, 'Нариманов'),
(978, 22, 'Нарткала'),
(981, 55, 'Невель'),
(982, 62, 'Невельск'),
(983, 66, 'Невинномысск'),
(984, 63, 'Невьянск'),
(985, 69, 'Нелидово'),
(986, 23, 'Неман'),
(987, 32, 'Нерехта'),
(988, 18, 'Нерчинск'),
(990, 23, 'Нестеров'),
(991, 58, 'Нефтегорск'),
(993, 66, 'Нефтекумск'),
(995, 32, 'Нея'),
(998, 21, 'Нижнеудинск'),
(999, 63, 'Нижние Серги'),
(1000, 52, 'Нижний Ломов'),
(1003, 63, 'Нижняя Салда'),
(1004, 63, 'Нижняя Тура'),
(1005, 13, 'Николаевск'),
(1006, 76, 'Николаевск-на-Амуре'),
(1007, 14, 'Никольск (Вологодская область)'),
(1008, 52, 'Никольск (Пензенская область)'),
(1010, 37, 'Новая Ладога'),
(1011, 63, 'Новая Ляля'),
(1012, 66, 'Новоалександровск'),
(1014, 13, 'Новоаннинский'),
(1015, 15, 'Нововоронеж'),
(1016, 6, 'Новодвинск'),
(1017, 10, 'Новозыбков'),
(1018, 33, 'Новокубанск'),
(1021, 57, 'Новомичуринск'),
(1023, 66, 'Новопавловск'),
(1024, 55, 'Новоржев'),
(1027, 51, 'Новосиль'),
(1028, 55, 'Новосокольники'),
(1030, 60, 'Новоузенск'),
(1031, 75, 'Новоульяновск'),
(1033, 15, 'Новохопёрск'),
(1040, 30, 'Нолинск'),
(1043, 68, 'Нурлат'),
(1044, 53, 'Нытва'),
(1045, 61, 'Нюрба'),
(1046, 78, 'Нягань'),
(1047, 79, 'Нязепетровск'),
(1048, 6, 'Няндома'),
(1049, 17, 'Облучье'),
(1051, 36, 'Обоянь'),
(1052, 48, 'Обь'),
(1054, 43, 'Ожерелье'),
(1058, 58, 'Октябрьск'),
(1060, 47, 'Окуловка'),
(1061, 61, 'Олёкминск'),
(1062, 44, 'Оленегорск'),
(1063, 28, 'Олонец'),
(1065, 30, 'Омутнинск'),
(1066, 6, 'Онега'),
(1067, 55, 'Опочка'),
(1071, 30, 'Орлов'),
(1073, 53, 'Оса'),
(1074, 29, 'Осинники'),
(1075, 69, 'Осташков'),
(1076, 55, 'Остров'),
(1077, 44, 'Островной'),
(1078, 15, 'Острогожск'),
(1080, 58, 'Отрадный'),
(1081, 62, 'Оха'),
(1082, 53, 'Оханск'),
(1083, 53, 'Очёр'),
(1087, 13, 'Палласовка'),
(1088, 54, 'Партизанск'),
(1089, 82, 'Певек'),
(1091, 46, 'Первомайск'),
(1093, 46, 'Перевоз'),
(1094, 43, 'Пересвет'),
(1097, 47, 'Пестово'),
(1098, 13, 'Петров Вал'),
(1099, 60, 'Петровск'),
(1100, 18, 'Петровск-Забайкальский'),
(1103, 35, 'Петухово'),
(1104, 12, 'Петушки'),
(1106, 55, 'Печоры'),
(1108, 23, 'Пионерский'),
(1109, 28, 'Питкяранта'),
(1110, 19, 'Плёс'),
(1111, 71, 'Плавск'),
(1112, 79, 'Пласт'),
(1113, 15, 'Поворино'),
(1116, 78, 'Покачи'),
(1117, 12, 'Покров'),
(1118, 61, 'Покровск'),
(1120, 23, 'Полесск'),
(1121, 29, 'Полысаево'),
(1122, 44, 'Полярные Зори'),
(1123, 44, 'Полярный'),
(1124, 62, 'Поронайск'),
(1125, 55, 'Порхов'),
(1126, 58, 'Похвистнево'),
(1127, 10, 'Почеп'),
(1128, 65, 'Починок'),
(1129, 84, 'Пошехонье'),
(1130, 23, 'Правдинск'),
(1131, 19, 'Приволжск'),
(1132, 23, 'Приморск (Калининградская область)'),
(1133, 37, 'Приморск (Ленинградская область)'),
(1134, 33, 'Приморско-Ахтарск'),
(1137, 56, 'Пролетарск'),
(1141, 60, 'Пугачёв'),
(1142, 28, 'Пудож'),
(1143, 55, 'Пустошка'),
(1144, 19, 'Пучеж'),
(1147, 55, 'Пыталово'),
(1148, 78, 'Пыть-Ях'),
(1150, 12, 'Радужный (Владимирская область)'),
(1151, 78, 'Радужный (Ханты-Мансийский АО - Югра)'),
(1152, 5, 'Райчихинск'),
(1154, 67, 'Рассказово'),
(1156, 63, 'Реж'),
(1159, 19, 'Родники'),
(1160, 65, 'Рославль'),
(1162, 84, 'Ростов'),
(1165, 60, 'Ртищево'),
(1167, 65, 'Рудня'),
(1168, 43, 'Руза'),
(1171, 57, 'Рыбное'),
(1172, 36, 'Рыльск'),
(1173, 57, 'Ряжск'),
(1176, 29, 'Салаир'),
(1177, 83, 'Салехард'),
(1185, 57, 'Сасово'),
(1187, 65, 'Сафоново'),
(1188, 77, 'Саяногорск'),
(1189, 21, 'Саянск'),
(1190, 23, 'Светлогорск'),
(1191, 66, 'Светлоград'),
(1192, 23, 'Светлый'),
(1194, 21, 'Свирск'),
(1196, 55, 'Себеж'),
(1197, 62, 'Северо-Курильск'),
(1201, 63, 'Североуральск'),
(1203, 10, 'Севск'),
(1204, 28, 'Сегежа'),
(1205, 10, 'Сельцо'),
(1206, 46, 'Семёнов'),
(1207, 56, 'Семикаракорск'),
(1208, 15, 'Семилуки'),
(1209, 75, 'Сенгилей'),
(1210, 13, 'Серафимович'),
(1211, 46, 'Сергач'),
(1213, 52, 'Сердобск'),
(1217, 8, 'Сибай'),
(1218, 79, 'Сим'),
(1219, 5, 'Сковородино'),
(1220, 57, 'Скопин'),
(1221, 4, 'Славгород'),
(1222, 23, 'Славск'),
(1223, 33, 'Славянск-на-Кубани'),
(1225, 30, 'Слободской'),
(1226, 21, 'Слюдянка'),
(1229, 44, 'Снежногорск'),
(1230, 12, 'Собинка'),
(1232, 30, 'Советск (Кировская область)'),
(1233, 71, 'Советск (Тульская область)'),
(1234, 76, 'Советская Гавань'),
(1235, 78, 'Советский'),
(1237, 32, 'Солигалич'),
(1240, 50, 'Соль-Илецк'),
(1241, 6, 'Сольвычегодск'),
(1242, 47, 'Сольцы'),
(1243, 50, 'Сорочинск'),
(1244, 77, 'Сорск'),
(1245, 28, 'Сортавала'),
(1246, 25, 'Сосенский'),
(1247, 30, 'Сосновка'),
(1248, 34, 'Сосновоборск'),
(1250, 31, 'Сосногорск'),
(1252, 25, 'Спас-Деменск'),
(1253, 57, 'Спас-Клепики'),
(1254, 52, 'Спасск'),
(1255, 54, 'Спасск-Дальний'),
(1256, 57, 'Спасск-Рязанский'),
(1257, 61, 'Среднеколымск'),
(1258, 63, 'Среднеуральск'),
(1259, 18, 'Сретенск'),
(1263, 69, 'Старица'),
(1264, 10, 'Стародуб'),
(1267, 70, 'Стрежевой'),
(1268, 9, 'Строитель'),
(1269, 12, 'Струнино'),
(1271, 71, 'Суворов'),
(1272, 36, 'Суджа'),
(1273, 12, 'Судогда'),
(1274, 12, 'Суздаль'),
(1275, 28, 'Суоярви'),
(1276, 10, 'Сураж'),
(1278, 13, 'Суровикино'),
(1279, 52, 'Сурск'),
(1280, 39, 'Сусуман'),
(1281, 25, 'Сухиничи'),
(1282, 63, 'Сухой Лог'),
(1285, 63, 'Сысерть'),
(1286, 65, 'Сычёвка'),
(1288, 63, 'Тавда'),
(1290, 29, 'Тайга'),
(1291, 21, 'Тайшет'),
(1292, 43, 'Талдом'),
(1293, 63, 'Талица'),
(1295, 49, 'Тара'),
(1296, 83, 'Тарко-Сале'),
(1297, 25, 'Таруса'),
(1298, 48, 'Татарск'),
(1299, 29, 'Таштагол'),
(1301, 27, 'Теберда'),
(1302, 19, 'Тейково'),
(1303, 41, 'Темников'),
(1304, 33, 'Темрюк'),
(1305, 22, 'Терек'),
(1306, 68, 'Тетюши'),
(1307, 33, 'Тимашевск'),
(1311, 48, 'Тогучин'),
(1313, 62, 'Томари'),
(1314, 61, 'Томмот'),
(1316, 29, 'Топки'),
(1317, 69, 'Торжок'),
(1318, 69, 'Торопец'),
(1320, 14, 'Тотьма'),
(1321, 79, 'Трёхгорный'),
(1323, 10, 'Трубчевск'),
(1325, 8, 'Туймазы'),
(1327, 21, 'Тулун'),
(1328, 72, 'Туран'),
(1329, 63, 'Туринск'),
(1330, 84, 'Тутаев'),
(1331, 5, 'Тында'),
(1332, 22, 'Тырныауз'),
(1333, 49, 'Тюкалинск'),
(1335, 67, 'Уварово'),
(1336, 62, 'Углегорск'),
(1337, 84, 'Углич'),
(1338, 61, 'Удачный'),
(1339, 69, 'Удомля'),
(1340, 34, 'Ужур'),
(1344, 10, 'Унеча'),
(1345, 78, 'Урай'),
(1346, 46, 'Урень'),
(1347, 30, 'Уржум'),
(1349, 13, 'Урюпинск'),
(1350, 31, 'Усинск'),
(1351, 38, 'Усмань'),
(1352, 53, 'Усолье'),
(1353, 21, 'Усолье-Сибирское'),
(1355, 27, 'Усть-Джегута'),
(1357, 79, 'Усть-Катав'),
(1358, 21, 'Усть-Кут'),
(1359, 33, 'Усть-Лабинск'),
(1360, 14, 'Устюжна'),
(1363, 8, 'Учалы'),
(1364, 34, 'Уяр'),
(1365, 36, 'Фатеж'),
(1366, 10, 'Фокино (Брянская область)'),
(1367, 54, 'Фокино (Приморский край)\n'),
(1368, 13, 'Фролово'),
(1370, 19, 'Фурманов'),
(1372, 33, 'Хадыженск'),
(1374, 7, 'Харабали'),
(1375, 14, 'Харовск'),
(1377, 60, 'Хвалынск'),
(1378, 18, 'Хилок'),
(1380, 47, 'Холм'),
(1381, 62, 'Холмск'),
(1382, 43, 'Хотьково'),
(1383, 81, 'Цивильск'),
(1384, 56, 'Цимлянск'),
(1385, 53, 'Чёрмоз'),
(1386, 72, 'Чадан'),
(1389, 38, 'Чаплыгин'),
(1390, 79, 'Чебаркуль'),
(1392, 22, 'Чегем'),
(1393, 71, 'Чекалин'),
(1395, 53, 'Чердынь'),
(1396, 21, 'Черемхово'),
(1397, 48, 'Черепаново'),
(1402, 53, 'Чернушка'),
(1403, 23, 'Черняховск'),
(1405, 68, 'Чистополь'),
(1407, 46, 'Чкаловск'),
(1408, 47, 'Чудово'),
(1409, 48, 'Чулым'),
(1410, 53, 'Чусовой'),
(1411, 32, 'Чухлома'),
(1412, 72, 'Шагонар'),
(1414, 80, 'Шали'),
(1415, 34, 'Шарыпово'),
(1416, 32, 'Шарья'),
(1418, 62, 'Шахтёрск'),
(1420, 46, 'Шахунья'),
(1421, 57, 'Шацк'),
(1423, 21, 'Шелехов'),
(1424, 6, 'Шенкурск'),
(1425, 18, 'Шилка'),
(1426, 5, 'Шимановск'),
(1427, 60, 'Шиханы'),
(1429, 81, 'Шумерля'),
(1430, 35, 'Шумиха'),
(1432, 71, 'Щёкино'),
(1434, 36, 'Щигры'),
(1435, 35, 'Щучье'),
(1441, 15, 'Эртиль'),
(1443, 78, 'Югорск'),
(1444, 19, 'Южа'),
(1446, 16, 'Южно-Сухокумск'),
(1447, 79, 'Южноуральск'),
(1449, 12, 'Юрьев-Польский'),
(1450, 19, 'Юрьевец'),
(1451, 79, 'Юрюзань'),
(1452, 25, 'Юхнов'),
(1453, 81, 'Ядрин'),
(1455, 73, 'Ялуторовск'),
(1456, 8, 'Янаул'),
(1457, 30, 'Яранск'),
(1458, 4, 'Яровое'),
(1460, 65, 'Ярцево'),
(1461, 71, 'Ясногорск'),
(1462, 50, 'Ясный'),
(1463, 43, 'Яхрома'),
(1467, 86, 'Алупка'),
(1468, 86, 'Алушта'),
(1469, 86, 'Армянск\r\n'),
(1470, 86, 'Бахчисарай'),
(1471, 86, 'Белогорск (Крым)'),
(1472, 86, 'Джанкой'),
(1473, 86, 'Евпатория'),
(1474, 87, 'Инкерман'),
(1475, 68, 'Иннополис'),
(1476, 86, 'Керчь'),
(1477, 23, 'Краснознаменск (Калининградская область)'),
(1478, 86, 'Красноперекопск'),
(1479, 6, 'Мирный (Архангельская область)'),
(1480, 23, 'Озерск (Калининградская область)'),
(1481, 86, 'Саки'),
(1482, 87, 'Севастополь'),
(1483, 86, 'Симферополь'),
(1484, 86, 'Старый Крым'),
(1485, 86, 'Судак'),
(1486, 5, 'Циолковский'),
(1487, 86, 'Феодосия'),
(1488, 86, 'Щелкино'),
(1489, 86, 'Ялта');