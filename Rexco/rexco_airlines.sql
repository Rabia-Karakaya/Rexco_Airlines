-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 06 Kas 2023, 18:39:51
-- Sunucu sürümü: 8.0.31
-- PHP Sürümü: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `rexco_airlines`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iletişim`
--

DROP TABLE IF EXISTS `iletişim`;
CREATE TABLE IF NOT EXISTS `iletişim` (
  `id` int NOT NULL AUTO_INCREMENT,
  `telNo` int NOT NULL,
  `ad` varchar(50) NOT NULL,
  `soyad` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

DROP TABLE IF EXISTS `kullanicilar`;
CREATE TABLE IF NOT EXISTS `kullanicilar` (
  `id` tinyint NOT NULL AUTO_INCREMENT,
  `kullanici_adi` varchar(50) NOT NULL,
  `sifre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`id`, `kullanici_adi`, `sifre`) VALUES
(126, 'butimar', '12301230');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `seferler`
--

DROP TABLE IF EXISTS `seferler`;
CREATE TABLE IF NOT EXISTS `seferler` (
  `sefer_id` int NOT NULL AUTO_INCREMENT,
  `sefer_tarihi` date DEFAULT NULL,
  `yolcu_sayisi` int DEFAULT NULL,
  `kalkis_yeri` varchar(255) DEFAULT NULL,
  `varis_yeri` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sefer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `seferler`
--

INSERT INTO `seferler` (`sefer_id`, `sefer_tarihi`, `yolcu_sayisi`, `kalkis_yeri`, `varis_yeri`) VALUES
(1, '2023-11-05', 200, 'İzmir', 'İstanbul');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
