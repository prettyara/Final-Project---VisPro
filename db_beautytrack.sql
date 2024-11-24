-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2024 at 05:47 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_beautytrack`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(128) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(128) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `email`, `username`, `password`) VALUES
(1, 'tiara', '', 'mamuaya', '123'),
(2, 'mitchelly', '', 'michel', '456');

-- --------------------------------------------------------

--
-- Table structure for table `input_produk`
--

CREATE TABLE `input_produk` (
  `id_produk` int(32) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `jenis_kulit` varchar(255) NOT NULL,
  `jenis_skincare` varchar(255) NOT NULL,
  `kandungan` varchar(255) NOT NULL,
  `foto` varchar(230) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `input_produk`
--

INSERT INTO `input_produk` (`id_produk`, `nama_produk`, `harga`, `jenis_kulit`, `jenis_skincare`, `kandungan`, `foto`) VALUES
(1, 'Hada Labo Gokujyun Face Wash', 'Rp. 50.000', 'Normal Skin', 'Face Wash', 'Hyaluronic Acid, Membersihkan wajah dari kotoran tanpa menghilangkan kelembapan alami kulit.', '224f97be-cee0-4bcc-9e6b-2957d07ffe9f.jpg'),
(2, 'COSRX Low pH Good Morning Gel Cleanser', 'Rp. 72.400', 'Oily Skin', 'Face Wash', 'Tea tree oil, menjaga keseimbangan pH kulit, melembapkan, dan mengurangi minyak berlebih, cocok untuk kulit sensitif.', 'cd413c63-efdc-4993-a6b6-3d08607e3fe0.jpg'),
(3, 'Neutrogena Hydro Boost Water Gel', 'Rp. 200.000', 'Normal Skin', 'Moisturizer', 'Hyaluronic Acid, Memberikan hidrasi yang tahan lama, membuat kulit terasa kenyal dan segar.', '500eda31-9b1f-48c6-a112-7661ae1ad11f.jpg'),
(4, 'Innisfree Green Tea Seed Serum 80 ml', 'Rp. 300.000', 'Dry Skin', 'Serum', 'Green Tea Seed, Antioksidan dan Menjaga kesehatan kulit dengan memberikan kelembapan yang optimal, memperkuat perlindungan alami kulit, serta meningkatkan tampilan kulit agar terlihat lebih cerah dan segar', '64536312-eb85-4d46-9c1d-51cc78758008.jpg'),
(5, 'La Roche-Posay Effaclar Purifying Foaming Gel', 'Rp. 250.000', 'Oily Skin', 'Face Wash', 'Zinc PCA, Mengurangi minyak berlebih, membersihkan pori-pori, dan mencegah jerawat.', 'f74926bf-86f7-41d1-938e-83dacc6a6c68.jpg'),
(6, 'Wardah Aloe Hydramild Moisturizer Cream', 'Rp. 50.000', 'Normal Skin', 'Moisturizer', 'Aloe Vera Extract dan Pro Vitamin B5, Memberikan sensasi dingin yang menenangkan.', '8d6505a6-01a1-44d2-b412-77177ef58512.jpg'),
(7, 'Natur-e White Face Wash Brightening', 'Rp. 50.000', 'Normal Skin', 'Face Wash', 'Glycerin & Vitamin C, membantu membersihkan wajah dari kotoran, minyak, dan sisa makeup.', '9aabf44c-7f4d-4123-8178-9c8549b01387.jpg'),
(8, 'Senka Perfect Whip', 'Rp. 70.000', 'Normal Skin', 'Face Wash', 'White Cocoon Essence, membersihkan kulit dari kotoran dan minyak secara menyeluruh.', 'a5a4eeab-e9c0-47e4-8e6d-812337902c37.jpg'),
(9, 'Simple Hydrating Light Moisturizer', 'Rp. 102.000', 'Normal Skin', 'Moisturizer', 'Pro-Vitamin B5 dan Vitamin E, melembapkan hingga 12 jam, ringan di kulit, bebas alkohol, dan tidak menyumbat pori-pori.', '91f047b6-cfac-4cdc-9f47-f097735ff385.jpg'),
(10, 'Garnier Pure Active Anti-Acne White Foam', 'Rp. 25.000', 'Oily Skin', 'Face Wash', 'Salicylic Acid, Mengurangi minyak berlebih dan mencegah jerawat.', '1634e0c3-fe6f-4408-93f7-3dba79af590f.jpg'),
(11, 'Somethinc Low pH Gentle Jelly Cleanser 100 ml', 'Rp. 40.000', 'Oily Skin', 'Face Wash', 'Membersihkan Wajah', '31468d2d-40b8-445f-9b09-6ecf909ad427.jpg'),
(12, 'Somethinc SKIN GOALS Moisture Silk Creme', 'Rp. 89.000', 'Normal Skin ', 'Moisturizer', 'Alpha Arbutin, Licorice Extract, dan Rice Bran Water,  Melembapkan, mencerahkan, dan memudarkan flek hitam dalam waktu 28 hari.', '8e1f7250-eaa1-4e26-90de-b01bb012d394.jpg'),
(13, 'CeraVe Hydrating Cleanser', 'Rp. 300.000', 'Dry Skin', 'Face Wash', 'Ceramide, Membersihkan kulit sambil menjaga kelembapan alami.', 'ef1a02e0-9f05-4016-bcff-947686e9eea0.jpg'),
(14, 'The Body Shop Vitamin E Gentle Facial Wash', 'Rp. 139.000', 'Dry Skin', 'Face Wash', 'Wheat Germ Oil, Membersihkan sekaligus melembapkan kulit.', '33b79035-325b-48df-9df1-412858aa036f.jpg'),
(15, ' Viva Milk Cleanser Bengkuang', 'Rp. 15.000', 'Dry Skin', 'Face Wash', 'Ekstrak Bengkuang, Membersihkan wajah sekaligus memberikan kelembapan.', '18ba55ab-c5ab-44f1-863f-2e54db94f689.jpg'),
(16, 'Pond’s Clear Solutions Facial Foam', 'Rp. 25.000', 'Combination Skin', 'Face Wash', 'Active Thymo-T Essence, Cocok untuk kulit kombinasi yang berminyak di area tertentu.', '64c44795-9069-4fa2-9e32-2850a6b42882.jpg'),
(17, 'Kiehl’s Ultra Facial Cleanser', 'Rp. 500.000', 'Combination Skin', 'Face Wash', 'Squalane, Membersihkan secara lembut tanpa membuat kulit terasa kaku.', 'f1e9b7db-3b56-4ccc-9f8d-70e0f947774e.jpg'),
(18, 'The Body Shop Tea Tree Skin Clearing Facial Wash', 'Rp. 129.000', 'Combination Skin', 'Face Wash', 'Tea Tree Oil, Mengontrol minyak berlebih di zona T.', '3d409e36-d2a3-4819-a876-a88ef3c1a4d7.jpg'),
(19, 'Eucerin DermatoClean Refreshing Cleansing Gel', 'Rp. 300.000', 'Sensitive Skin', 'Face Wash', 'APG Complex, Membersihkan kulit dengan lembut dan membantu menjaga kelembapan.', 'a6dafb76-84ab-4ff4-a524-228c015c9b89.jpg'),
(20, 'Sulwhasoo Gentle Cleansing Foam EX', 'Rp. 450.000', 'Sensitive Skin', 'Face Wash', 'Ekstrak Akar Licorice, Membersihkan tanpa membuat kulit terasa kaku.', '32fe14dd-4c3f-46dd-a25b-f46b60fa45fc.jpg'),
(21, 'Nivea Face Wash for Sensitive Skin', 'Rp. 40.000', 'Sensitive Skin', 'Face Wash', 'Chamomile Extract, Membersihkan kulit tanpa menyebabkan kemerahan atau iritasi.', '822f0110-9d23-49af-b621-84cd6b4b8074.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `email`, `username`, `password`) VALUES
(1, 'Monica Sumual', 'monicags1707@gmail.com', 'mon', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `input_produk`
--
ALTER TABLE `input_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
