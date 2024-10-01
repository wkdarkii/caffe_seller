-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                8.0.38 - MySQL Community Server - GPL
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               12.7.0.6850
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- caffe için veritabanı yapısı dökülüyor
CREATE DATABASE IF NOT EXISTS `caffe` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `caffe`;

-- tablo yapısı dökülüyor caffe.about
CREATE TABLE IF NOT EXISTS `about` (
  `id` int NOT NULL AUTO_INCREMENT,
  `img` char(50) NOT NULL,
  `ust_baslik` char(50) NOT NULL,
  `Baslik` char(50) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- caffe.about: ~1 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `about` (`id`, `img`, `ust_baslik`, `Baslik`, `text`) VALUES
	(2, 'about.jpg', 'STRONG CAFFE', 'AURA CAFEE', '<p>Founded in 1987 by the Hernandez brothers, our establishment has been serving up rich coffee sourced from artisan farmers in various regions of South and Central America. We are dedicated to travelling the world, finding the best coffee, and bringing back to you here in our cafe.</p>\r\n<p class="mb-0">We guarantee that you will fall in <em>lust</em> with our decadent blends the moment you walk inside until you finish your last sip. Join us for your daily routine, an outing with friends, or simply just to enjoy some alone time.</p>');

-- tablo yapısı dökülüyor caffe.bekleyenislemler
CREATE TABLE IF NOT EXISTS `bekleyenislemler` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `UrunId` int DEFAULT NULL,
  `Urun_adi` char(50) DEFAULT NULL,
  `urun_fiyat` char(50) DEFAULT NULL,
  `urun_img` char(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- caffe.bekleyenislemler: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor caffe.comments
CREATE TABLE IF NOT EXISTS `comments` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `isim_soyisim` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `yorum` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `aktif` bit(1) DEFAULT NULL,
  `genel_aktiflik` bit(1) DEFAULT NULL,
  `Begen` int DEFAULT NULL,
  `Begenme` int DEFAULT NULL,
  `Yanit` text,
  `Yorum_Yanit` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- caffe.comments: ~10 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `comments` (`ID`, `isim_soyisim`, `yorum`, `aktif`, `genel_aktiflik`, `Begen`, `Begenme`, `Yanit`, `Yorum_Yanit`) VALUES
	(1, 'Semih Yürükcü', 'Harika bir ürün! Kesinlikle tavsiye ederim.', b'1', b'1', 33, 20, NULL, 'dsaadsdas'),
	(13, 'Elif Demir', 'Beklediğimden çok daha iyi. Kalitesi mükemmel.', b'1', b'1', 2, 3, NULL, 'yjyjfyjjf'),
	(17, 'Mehmet Kara', 'Bu ürünü çok beğendim. Herkesin denemesini öneririm.', b'1', b'1', 9, 0, NULL, 'naber?'),
	(24, 'oruc sandıkcı', 'Gerçekten etkili bir ürün. İşimi çok kolaylaştırdı.', b'1', b'1', 2, 1, NULL, ''),
	(25, 'Zeynep Aydın', 'Kaliteli ve kullanışlı. Bu fiyata böyle bir ürün bulmak zor.', b'1', b'1', 0, 1, NULL, 'dasdssda'),
	(26, 'Canan Yurt', 'Yorumları okudum ve denemeye karar verdim. Kesinlikle memnun kaldım', b'1', b'1', 1, 0, NULL, NULL),
	(27, 'Emre Yalçın', 'Ürünün kalitesi beklentilerimin üzerinde. Çok hızlı teslimat.', b'1', b'1', 1, 1, NULL, NULL),
	(28, 'Fatma Arslan', 'Harika bir tasarım. Çok beğendim, teşekkürler.', b'1', b'1', 2, 1, NULL, NULL),
	(29, 'Oğuz Kaan', 'Güzel bir alışveriş deneyimi yaşadım. Ürün kaliteli ve kullanışlı.', b'0', b'1', NULL, NULL, NULL, NULL),
	(32, 'yerli coni', 'başka kim böyle bir site yapar biliyor musunnnnn', b'0', b'1', NULL, NULL, NULL, NULL);

-- tablo yapısı dökülüyor caffe.home
CREATE TABLE IF NOT EXISTS `home` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ust_baslik` char(50) NOT NULL,
  `Buyukbaslik` char(50) NOT NULL,
  `img` char(50) NOT NULL,
  `text` text NOT NULL,
  `alt_ust_baslik` char(50) NOT NULL,
  `alt_ust_Buyukbaslik` char(50) NOT NULL,
  `alt_text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- caffe.home: ~1 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `home` (`id`, `ust_baslik`, `Buyukbaslik`, `img`, `text`, `alt_ust_baslik`, `alt_ust_Buyukbaslik`, `alt_text`) VALUES
	(2, 'FRESH COFFEE', 'WORTH DRINKING', 'intro.jpg', 'Every cup of our quality artisan coffee starts with locally sourced, hand picked ingredients. Once you try it, our coffee will be a blissful addition to your everyday morning routine - we guarantee it!', 'OUR PROMISE', 'TO YOU', 'When you walk into our shop to start your day, we are dedicated to providing you with friendly service, a welcoming atmosphere, and above all else, excellent products made with the highest quality ingredients. If you are not satisfied, please let us know and we will do whatever we can to make things right!');

-- tablo yapısı dökülüyor caffe.iletisim
CREATE TABLE IF NOT EXISTS `iletisim` (
  `id` int NOT NULL AUTO_INCREMENT,
  `img` char(50) DEFAULT NULL,
  `Buyukbaslik` char(50) DEFAULT NULL,
  `ust_baslik` char(50) DEFAULT NULL,
  `alt_baslik` char(50) DEFAULT NULL,
  `adres` char(50) DEFAULT NULL,
  `slogan` char(50) DEFAULT NULL,
  `tell_no` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- caffe.iletisim: ~1 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `iletisim` (`id`, `img`, `Buyukbaslik`, `ust_baslik`, `alt_baslik`, `adres`, `slogan`, `tell_no`) VALUES
	(2, 'harita.png', 'OPEN YAZILIM', 'DONANIM DESTEK HİZMETLERİ', 'sigorta acentesi', 'Azmimilli Mah No:1/1 81020 Merkez/Düzce', 'istediğin zaman arayabilirsin', '554 014 13 23');

-- tablo yapısı dökülüyor caffe.kullanıcılar
CREATE TABLE IF NOT EXISTS `kullanıcılar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `kad` char(50) NOT NULL,
  `sifre` char(50) NOT NULL,
  `rol` tinyint NOT NULL,
  `Email` char(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- caffe.kullanıcılar: ~6 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `kullanıcılar` (`id`, `kad`, `sifre`, `rol`, `Email`) VALUES
	(2, 'admin', '202cb962ac59075b964b07152d234b70', 1, 'admin123@gmail.com'),
	(3, 'semih', '7846513247894651', 2, 'wkdarkside1@gmail.com'),
	(5, 'dasdsasd', '6c41ea76255e5a5557eb0b35023d4632', 2, 'dasdassadas@gmail.com'),
	(6, 'wkdarkii', '5709da4c8ff5dd01baca6600f9f75ea9', 2, 'yurukcusemin337@gmail.com'),
	(7, 'semihh', '202cb962ac59075b964b07152d234b70', 2, 'semih123@gmail.com'),
	(8, 'semih1', '5709da4c8ff5dd01baca6600f9f75ea9', 2, 'adkdasdsadas@dasdasdas');

-- tablo yapısı dökülüyor caffe.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Buyukbaslik` char(50) DEFAULT NULL,
  `ust_baslik` char(50) DEFAULT NULL,
  `text` text,
  `img` char(50) DEFAULT NULL,
  `aktif` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- caffe.products: ~3 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `products` (`id`, `Buyukbaslik`, `ust_baslik`, `text`, `img`, `aktif`) VALUES
	(5, 'COFFEES & TEASdasdas', 'BLENDED TO PERFECTION', 'We take pride in our work, and it shows. Every time you order a beverage from us, we guarantee that it will be an experience worth having. Whether it\'s our world famous Venezuelan Cappuccino, a refreshing iced herbal tea, or something as simple as a cup of speciality sourced black coffee, you will be coming back for more....', 'products-01.jpg', b'1'),
	(6, 'BAKERY & KITCHEN', 'DELICIOUS TREATS, GOOD EATS', 'Our seasonal menu features delicious snacks, baked goods, and even full meals perfect for breakfast or lunchtime. We source our ingredients from local, oragnic farms whenever possible, alongside premium vendors for specialty goods.', 'products-02.jpg', b'1'),
	(7, 'BULK SPECIALITY', 'coffee çeşitlerimiz', 'Travelling the world for the very best quality coffee is something take pride in. When you visit us, you\'ll always find new blends from around the world, mainly from regions in Central and South America. We sell our blends in smaller to large bulk quantities. Please visit us in person for more details.', 'products-01.jpg', b'1');

-- tablo yapısı dökülüyor caffe.satınalınanurunlar
CREATE TABLE IF NOT EXISTS `satınalınanurunlar` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `SUrun_adi` char(50) DEFAULT NULL,
  `SUrun_fiyati` char(50) DEFAULT NULL,
  `adres` text,
  `postakodu` char(50) DEFAULT NULL,
  `satılanadet` char(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- caffe.satınalınanurunlar: ~18 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `satınalınanurunlar` (`Id`, `SUrun_adi`, `SUrun_fiyati`, `adres`, `postakodu`, `satılanadet`) VALUES
	(7, 'Espresso Roast', '14.99', 'das', 'das', '1'),
	(8, 'Espresso Roast', '14.99', 'dskalkasdkfbmsklafidkvbmsfl', '8521', '3'),
	(9, 'Pour Over Coffee', '13.99', 'EWQ', 'EWQ', '3'),
	(10, 'Colombian Coffee', '12.99', 'dasdadaa', '132132', '2'),
	(11, 'Espresso Roast', '14.99', 'asf', 'asf', '3'),
	(12, 'Ethiopian Coffee', '15.99', '312312131312', '312312312132', '12'),
	(13, 'Espresso Roast', '14.99', 'ads', 'asds', '3'),
	(14, 'Espresso Roast', '14.99', 'sdf', 'dsf', '2'),
	(15, 'Ethiopian Coffee', '15.99', '5', '5', '5'),
	(16, 'Espresso Roast', '14.99', 'uoı', 'uoı', '5'),
	(17, 'Ethiopian Coffee', '16.99', 'das', 'das', '2'),
	(18, 'Ethiopian Coffee', '16.99', 'gsf', 'gfs', '4'),
	(19, 'Ethiopian Coffee', '16.99', '132', '3', '5'),
	(20, 'Espresso Roast', '14.99', 'ert', 'et', '4'),
	(21, 'Ethiopian Coffee', '16.99', 'sfvdlm', 'dfbmlm', '3'),
	(22, 'Espresso Roast', '14.99', 'das', 'das', '2'),
	(23, 'Colombian Coffee', '12.99', 'sad', 'das', '2'),
	(24, 'French Press Coffee', '16.99', 'ads', '123', '2');

-- tablo yapısı dökülüyor caffe.sepetsatis
CREATE TABLE IF NOT EXISTS `sepetsatis` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `SUSayisi` int DEFAULT NULL,
  `SFiyat` decimal(20,6) DEFAULT NULL,
  `STarih` date DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- caffe.sepetsatis: ~14 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `sepetsatis` (`Id`, `SUSayisi`, `SFiyat`, `STarih`) VALUES
	(16, 19, 291.810000, '2024-08-08'),
	(17, 20, 297.800000, '2024-08-08'),
	(18, 2, 27.980000, '2024-08-09'),
	(19, 8, 119.920000, '2024-08-10'),
	(20, 2, 28.980000, '2024-08-12'),
	(21, 2, 28.980000, '2024-08-12'),
	(22, 10, 169.900000, '2024-09-02'),
	(23, 10, 169.900000, '2024-09-02'),
	(24, 3, 46.970000, '2024-09-13'),
	(25, 3, 46.970000, '2024-09-21'),
	(26, 3, 46.970000, '2024-09-21'),
	(27, 3, 46.970000, '2024-09-21'),
	(28, 3, 46.970000, '2024-09-21'),
	(29, 1, 16.990000, '2024-09-21');

-- tablo yapısı dökülüyor caffe.store
CREATE TABLE IF NOT EXISTS `store` (
  `id` int NOT NULL AUTO_INCREMENT,
  `birinci_li` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ikinci_li` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- caffe.store: ~7 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `store` (`id`, `birinci_li`, `ikinci_li`) VALUES
	(8, 'Sunday', 'Closed'),
	(9, 'Monday', '7:00 AM to 8:00 PM'),
	(10, 'Tuesday', '7:00 AM to 8:00 PM'),
	(11, 'Wednesday', '7:00 AM to 8:00 PM'),
	(12, 'Thursday', '7:00 AM to 8:00 PM'),
	(13, 'Friday', '7:00 AM to 8:00 PM'),
	(14, 'Saturday', '9:00 AM to 5:00 PM');

-- tablo yapısı dökülüyor caffe.store2
CREATE TABLE IF NOT EXISTS `store2` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ust_baslik` char(50) NOT NULL,
  `baslik` char(50) NOT NULL,
  `alt_ustbaslik` char(50) NOT NULL,
  `adres` char(50) NOT NULL,
  `slogan` char(50) NOT NULL,
  `tellno` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- caffe.store2: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor caffe.urunsatis
CREATE TABLE IF NOT EXISTS `urunsatis` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Ust_Baslik` char(50) DEFAULT NULL,
  `içerik` char(100) DEFAULT NULL,
  `Fiyat` char(50) DEFAULT NULL,
  `img` char(50) DEFAULT NULL,
  `Aktiflik` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- caffe.urunsatis: ~5 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `urunsatis` (`Id`, `Ust_Baslik`, `içerik`, `Fiyat`, `img`, `Aktiflik`) VALUES
	(3, 'Espresso Roast', 'Bold and intense espresso roast coffee.', '14.99', 'Espresso Roast.jpg', b'1'),
	(4, 'French Press Coffee', 'Full-bodied French press coffee blend.', '16.99', 'French Press Coffee.jpg', b'1'),
	(5, 'Pour Over Coffee', 'Delicate and clean pour-over coffee.', '13.99', 'Pour Over Coffee.jpg', b'1'),
	(12, 'latte caffe', 'latte caffe', '26.99', 'lattecafe.jpg', b'1'),
	(15, 'dasadsds', 'dasdasds', '132', 'lattecafe.jpg', b'0');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
