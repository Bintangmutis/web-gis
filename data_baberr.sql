-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2023 at 11:08 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_baberr`
--

-- --------------------------------------------------------

--
-- Table structure for table `barbershop`
--

CREATE TABLE `barbershop` (
  `nama_lokasi` varchar(255) DEFAULT NULL,
  `latitude` float(10,6) DEFAULT NULL,
  `longitude` float(10,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barbershop`
--

INSERT INTO `barbershop` (`nama_lokasi`, `latitude`, `longitude`) VALUES
('Merdeka Barbershop', -7.318017, 112.783905),
('Barberking', -7.320982, 112.766754),
('Brilliyand Barbershop', -7.322570, 112.772697),
('DeCutz Barber Shop', -7.322510, 112.780525),
('DonBrik BARBERSHOP', -7.323796, 112.781555),
('One Way BARBERSHOP Merr', -7.326426, 112.781631),
('Bosshead Barbershop Rungkut', -7.330335, 112.778336),
('Drakens Barbershop Rungkut', -7.328246, 112.788681),
('Escobars Barbershop', -7.330723, 112.788589),
('cukuraku barbershop', -7.332383, 112.792374),
('Tarjozz Barbershop', -7.332553, 112.793526),
('Lucky-laki Barbershop', -7.329878, 112.795403);

-- --------------------------------------------------------

--
-- Table structure for table `circles`
--

CREATE TABLE `circles` (
  `id` int(11) NOT NULL,
  `latitude` decimal(15,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `radius` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `circles`
--

INSERT INTO `circles` (`id`, `latitude`, `longitude`, `radius`) VALUES
(1, '-7.33354971', '112.78830110', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `polygons`
--

CREATE TABLE `polygons` (
  `id` int(11) NOT NULL,
  `nama_lokasi` varchar(255) NOT NULL,
  `coordinates` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `polygons`
--

INSERT INTO `polygons` (`id`, `nama_lokasi`, `coordinates`) VALUES
(1, 'Daerah Kawasan Rungkut', '[{\"latitude\": -7.3305, \"longitude\": 112.757703},\r\n      {\"latitude\": -7.330983, \"longitude\": 112.7609036},\r\n      {\"latitude\": -7.3311958, \"longitude\": 112.7637575},\r\n      {\"latitude\": -7.3321322, \"longitude\": 112.7664183},\r\n      {\"latitude\": -7.3322599, \"longitude\": 112.767062},      \r\n      {\"latitude\": -7.3321109, \"longitude\": 112.7674912},      \r\n      {\"latitude\": -7.3320258, \"longitude\": 112.7680061},      \r\n      {\"latitude\": -7.3316427, \"longitude\": 112.7683065},      \r\n      {\"latitude\": -7.3314302, \"longitude\": 112.7687492},      \r\n      {\"latitude\": -7.3316001, \"longitude\": 112.7695082},      \r\n      {\"latitude\": -7.3316001, \"longitude\": 112.7717827},      \r\n      {\"latitude\": -7.3316427, \"longitude\": 112.7734993},     \r\n      {\"latitude\": -7.3317385, \"longitude\": 112.7756987},      \r\n      {\"latitude\": -7.3318449, \"longitude\": 112.7783916},      \r\n      {\"latitude\": -7.3319194, \"longitude\": 112.7809451},      \r\n      {\"latitude\": -7.3320364, \"longitude\": 112.7830802},      \r\n      {\"latitude\": -7.332079, \"longitude\": 112.7846895},      \r\n      {\"latitude\": -7.3322079, \"longitude\": 112.787547},     \r\n      {\"latitude\": -7.3333146, \"longitude\": 112.7916883},      \r\n      {\"latitude\": -7.3336445, \"longitude\": 112.7948748},     \r\n      {\"latitude\": -7.3336232, \"longitude\": 112.7954005},      \r\n      {\"latitude\": -7.333421, \"longitude\": 112.7969884},      \r\n      {\"latitude\": -7.3327825, \"longitude\": 112.8016125},      \r\n      {\"latitude\": -7.3323995, \"longitude\": 112.8039514},\r\n      {\"latitude\": -7.3322079, \"longitude\": 112.8047668},\r\n      {\"latitude\": -7.331761, \"longitude\": 112.8059469},\r\n      {\"latitude\": -7.3315269, \"longitude\": 112.807449},\r\n      {\"latitude\": -7.3312822, \"longitude\": 112.810335},\r\n      {\"latitude\": -7.3311757, \"longitude\": 112.8113543},\r\n      {\"latitude\": -7.3308246, \"longitude\": 112.8150557},\r\n      {\"latitude\": -7.330782, \"longitude\": 112.8173195},\r\n      {\"latitude\": -7.3309225, \"longitude\": 112.8187049},\r\n      {\"latitude\": -7.330582, \"longitude\": 112.8205503},\r\n      {\"latitude\": -7.3306033, \"longitude\": 112.8223313},\r\n      {\"latitude\": -7.3310928, \"longitude\": 112.8243054},\r\n      {\"latitude\": -7.3310289, \"longitude\": 112.8262366},\r\n      {\"latitude\": -7.3317525, \"longitude\": 112.826301},\r\n      {\"latitude\": -7.3327528, \"longitude\": 112.8268159},\r\n      {\"latitude\": -7.3339233, \"longitude\": 112.8285111},\r\n      {\"latitude\": -7.3341787, \"longitude\": 112.8307427},\r\n      {\"latitude\": -7.3324974, \"longitude\": 112.8320302},\r\n      {\"latitude\": -7.3296243, \"longitude\": 112.8324379},\r\n      {\"latitude\": -7.3282409, \"longitude\": 112.8329314},\r\n      {\"latitude\": -7.3270065, \"longitude\": 112.8335751},\r\n      {\"latitude\": -7.3252188, \"longitude\": 112.8346051},\r\n      {\"latitude\": -7.3239419, \"longitude\": 112.8356136},\r\n      {\"latitude\": -7.3234949, \"longitude\": 112.8361071},\r\n      {\"latitude\": -7.3226862, \"longitude\": 112.8377915},\r\n      {\"latitude\": -7.320792, \"longitude\": 112.8363002},\r\n      {\"latitude\": -7.3206643, \"longitude\": 112.8364075},\r\n      {\"latitude\": -7.3209623, \"longitude\": 112.8366006},\r\n      {\"latitude\": -7.3211751, \"longitude\": 112.8372229},\r\n      {\"latitude\": -7.321771, \"longitude\": 112.8377594},\r\n      {\"latitude\": -7.3218455, \"longitude\": 112.8381778},\r\n      {\"latitude\": -7.3217604, \"longitude\": 112.8385211},\r\n      {\"latitude\": -7.3218455, \"longitude\": 112.8386928},\r\n      {\"latitude\": -7.321356, \"longitude\": 112.8391434},\r\n      {\"latitude\": -7.3212177, \"longitude\": 112.8390254},\r\n      {\"latitude\": -7.3208346, \"longitude\": 112.8388001},\r\n      {\"latitude\": -7.3205579, \"longitude\": 112.8387571},\r\n      {\"latitude\": -7.3202812, \"longitude\": 112.8388752},\r\n      {\"latitude\": -7.320079, \"longitude\": 112.8390361},\r\n      {\"latitude\": -7.3199194, \"longitude\": 112.839315},\r\n      {\"latitude\": -7.3194618, \"longitude\": 112.8404094},\r\n      {\"latitude\": -7.3182913, \"longitude\": 112.8413642},\r\n      {\"latitude\": -7.3175677, \"longitude\": 112.8421689},\r\n      {\"latitude\": -7.3168653, \"longitude\": 112.8426839},\r\n      {\"latitude\": -7.3163013, \"longitude\": 112.8429414},\r\n      {\"latitude\": -7.3143114, \"longitude\": 112.8433705},\r\n      {\"latitude\": -7.3133004, \"longitude\": 112.8441967},\r\n      {\"latitude\": -7.3125342, \"longitude\": 112.8442825},      \r\n      {\"latitude\": -7.3124278, \"longitude\": 112.8441967},      \r\n	  {\"latitude\": -7.3122575, \"longitude\": 112.8442396},      \r\n	  {\"latitude\": -7.3120021, \"longitude\": 112.8445829},      \r\n	  {\"latitude\": -7.3117255, \"longitude\": 112.8443254},      \r\n	  {\"latitude\": -7.3112785, \"longitude\": 112.8445185},      \r\n	  {\"latitude\": -7.3108741, \"longitude\": 112.8444971},      \r\n	  {\"latitude\": -7.31064, \"longitude\": 112.8447116},      \r\n	  {\"latitude\": -7.3103633, \"longitude\": 112.8445829},      \r\n	  {\"latitude\": -7.3100441, \"longitude\": 112.8445614},      \r\n	  {\"latitude\": -7.3098738, \"longitude\": 112.8450979},      \r\n	  {\"latitude\": -7.309363, \"longitude\": 112.8449262},     \r\n	  {\"latitude\": -7.309363, \"longitude\": 112.8451408},      \r\n	  {\"latitude\": -7.3087884, \"longitude\": 112.8450979},      \r\n	  {\"latitude\": -7.3087245, \"longitude\": 112.8456343},      \r\n	  {\"latitude\": -7.3084266, \"longitude\": 112.8457631},      \r\n	  {\"latitude\": -7.3081499, \"longitude\": 112.8453554},      \r\n	  {\"latitude\": -7.307405, \"longitude\": 112.8454412},      \r\n	  {\"latitude\": -7.306809, \"longitude\": 112.8449691},      \r\n	  {\"latitude\": -7.3064046, \"longitude\": 112.8450764},      \r\n	  {\"latitude\": -7.3060641, \"longitude\": 112.8449262},      \r\n	  {\"latitude\": -7.3059364, \"longitude\": 112.8451837},      \r\n	  {\"latitude\": -7.3051489, \"longitude\": 112.8449477},      \r\n	  {\"latitude\": -7.3069793, \"longitude\": 112.8423298},      \r\n	  {\"latitude\": -7.3089799, \"longitude\": 112.8410853},      \r\n	  {\"latitude\": -7.3101079, \"longitude\": 112.8403987},\r\n      {\"latitude\": -7.31064, \"longitude\": 112.8392829},      \r\n      {\"latitude\": -7.3083414, \"longitude\": 112.829584},      \r\n      {\"latitude\": -7.3076391, \"longitude\": 112.8267945},      \r\n      {\"latitude\": -7.307405, \"longitude\": 112.8249062},      \r\n      {\"latitude\": -7.3073837, \"longitude\": 112.822975},      \r\n      {\"latitude\": -7.3067239, \"longitude\": 112.8210653},      \r\n      {\"latitude\": -7.3063833, \"longitude\": 112.8206361},      \r\n      {\"latitude\": -7.3060428, \"longitude\": 112.8203572},      \r\n      {\"latitude\": -7.3045955, \"longitude\": 112.8195847},      \r\n      {\"latitude\": -7.3037016, \"longitude\": 112.8189195},      \r\n      {\"latitude\": -7.3024459, \"longitude\": 112.8175033},      \r\n      {\"latitude\": -7.3014456, \"longitude\": 112.8159155},      \r\n      {\"latitude\": -7.3006793, \"longitude\": 112.8133941},      \r\n      {\"latitude\": -7.3004133, \"longitude\": 112.8130401},      \r\n      {\"latitude\": -7.2997588, \"longitude\": 112.8122033},      \r\n      {\"latitude\": -7.2991895, \"longitude\": 112.8111948},      \r\n      {\"latitude\": -7.2990831, \"longitude\": 112.8103579},      \r\n      {\"latitude\": -7.2991895, \"longitude\": 112.8094996},      \r\n      {\"latitude\": -7.2999983, \"longitude\": 112.8083194},      \r\n      {\"latitude\": -7.3015945, \"longitude\": 112.806753},      \r\n      {\"latitude\": -7.302829, \"longitude\": 112.8062166},      \r\n      {\"latitude\": -7.3035952, \"longitude\": 112.8061093},      \r\n      {\"latitude\": -7.3049893, \"longitude\": 112.8065921},      \r\n      {\"latitude\": -7.3067664, \"longitude\": 112.8084696},      \r\n      {\"latitude\": -7.3075965, \"longitude\": 112.80877},      \r\n      {\"latitude\": -7.3081073, \"longitude\": 112.8085769},\r\n      {\"latitude\": -7.308682, \"longitude\": 112.8081263},\r\n      {\"latitude\": -7.3091502, \"longitude\": 112.8070105},\r\n      {\"latitude\": -7.3091076, \"longitude\": 112.8063668},\r\n      {\"latitude\": -7.3089373, \"longitude\": 112.8057553},\r\n      {\"latitude\": -7.3086819, \"longitude\": 112.8051866},\r\n      {\"latitude\": -7.3078732, \"longitude\": 112.8031052},\r\n      {\"latitude\": -7.3082137, \"longitude\": 112.8004659},\r\n      {\"latitude\": -7.3082776, \"longitude\": 112.7992804},\r\n      {\"latitude\": -7.3082776, \"longitude\": 112.7980734},\r\n      {\"latitude\": -7.3083308, \"longitude\": 112.7968878},\r\n      {\"latitude\": -7.3082989, \"longitude\": 112.7956594},\r\n      {\"latitude\": -7.3081073, \"longitude\": 112.793578},\r\n      {\"latitude\": -7.3079264, \"longitude\": 112.7925266},\r\n      {\"latitude\": -7.3080009, \"longitude\": 112.7914966},\r\n      {\"latitude\": -7.3083095, \"longitude\": 112.7895976},\r\n      {\"latitude\": -7.3095652, \"longitude\": 112.7855636},\r\n      {\"latitude\": -7.3110657, \"longitude\": 112.7812399},\r\n      {\"latitude\": -7.3111051, \"longitude\": 112.780429},\r\n      {\"latitude\": -7.3110945, \"longitude\": 112.7793669},\r\n      {\"latitude\": -7.3110466, \"longitude\": 112.7788036},\r\n      {\"latitude\": -7.3109349, \"longitude\": 112.7782833},\r\n      {\"latitude\": -7.3089768, \"longitude\": 112.7712237},\r\n      {\"latitude\": -7.3106582, \"longitude\": 112.7707302},\r\n      {\"latitude\": -7.3104241, \"longitude\": 112.7696358},\r\n      {\"latitude\": -7.3107859, \"longitude\": 112.7687346},\r\n      {\"latitude\": -7.3115734, \"longitude\": 112.7686702},\r\n      {\"latitude\": -7.3118075, \"longitude\": 112.7684557},\r\n      {\"latitude\": -7.3124247, \"longitude\": 112.7684986},\r\n      {\"latitude\": -7.3133611, \"longitude\": 112.769035},\r\n      {\"latitude\": -7.3139145, \"longitude\": 112.7689921},\r\n      {\"latitude\": -7.3143189, \"longitude\": 112.7683055},\r\n      {\"latitude\": -7.3141061, \"longitude\": 112.7677261},\r\n      {\"latitude\": -7.3145956, \"longitude\": 112.767136},\r\n      {\"latitude\": -7.3147765, \"longitude\": 112.7661597},\r\n      {\"latitude\": -7.3150319, \"longitude\": 112.76587},\r\n      {\"latitude\": -7.3146701, \"longitude\": 112.7655267},\r\n      {\"latitude\": -7.3148785, \"longitude\": 112.7653849},\r\n      {\"latitude\": -7.3305, \"longitude\": 112.757703}]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `circles`
--
ALTER TABLE `circles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `polygons`
--
ALTER TABLE `polygons`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `circles`
--
ALTER TABLE `circles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `polygons`
--
ALTER TABLE `polygons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
