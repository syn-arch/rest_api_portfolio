-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 20 Apr 2022 pada 13.31
-- Versi server: 5.7.24
-- Versi PHP: 7.4.29

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
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'HTML CSS', '2022-04-19 03:03:19', '2022-04-19 03:03:19'),
(2, 'UI UX', '2022-04-19 03:03:25', '2022-04-20 02:42:47'),
(3, 'Codeigniter', '2022-04-19 03:03:33', '2022-04-19 03:03:33'),
(4, 'Laravel', '2022-04-19 03:03:37', '2022-04-19 03:03:37'),
(5, 'PHP', '2022-04-19 03:03:41', '2022-04-19 03:03:41'),
(6, 'Java', '2022-04-19 03:05:07', '2022-04-19 03:05:07'),
(7, 'React JS', '2022-04-19 07:05:58', '2022-04-19 07:05:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `experiences`
--

CREATE TABLE `experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `experiences`
--

INSERT INTO `experiences` (`id`, `name`, `description`, `year`, `order`, `created_at`, `updated_at`, `type`) VALUES
(1, 'SMK BUDI BAKTI CIWIDEY', 'Rekayasa Perangkat Lunak', '2017 - 2020', 1, '2022-04-19 00:19:17', '2022-04-19 00:19:17', 'education'),
(2, 'Pelatihan Web Developer Junior Daring', 'HTML, CSS, Javascript, PHP ( Oleh Kominfo )', '2021', 2, '2022-04-19 00:19:33', '2022-04-19 00:19:33', 'education'),
(3, 'Pelatihan Web Developer Junior Luring', 'HTML, CSS, Javascript, PHP ( Oleh Kominfo )', '2021', 3, '2022-04-19 00:19:51', '2022-04-19 00:19:51', 'education'),
(4, 'Jabar Coding Camp', 'Front End Development : Reactjs', '2022', 4, '2022-04-19 00:20:13', '2022-04-19 00:20:13', 'education'),
(5, 'PT. Berca Cakra Teknologi', 'Kunjungan Industri Sekolah', '2018', 1, '2022-04-19 00:21:41', '2022-04-19 00:21:41', 'experience'),
(6, 'PT. Inovindo Digital Media', 'Praktek Kerja Industri', '2019', 2, '2022-04-19 00:22:03', '2022-04-19 00:22:40', 'experience'),
(7, 'Sandigma', 'Web Freelance', '2021', 3, '2022-04-19 00:22:18', '2022-04-19 00:22:18', 'experience'),
(8, 'Driam Riverside', 'Operator & Fotografer', '2021', 4, '2022-04-19 00:22:34', '2022-04-19 00:22:34', 'experience'),
(9, 'LKS Web Design Tingkat Kabupaten Bandung', 'Juara 1', '2019', 1, '2022-04-19 00:23:06', '2022-04-19 00:23:06', 'achievement'),
(10, 'LKS Web Teknologi Tingkat Provinsi Jawa Barat', 'Peserta', '2020', 2, '2022-04-19 00:23:20', '2022-04-19 00:23:20', 'achievement');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(22, '2014_10_12_000000_create_users_table', 1),
(23, '2014_10_12_100000_create_password_resets_table', 1),
(24, '2019_08_19_000000_create_failed_jobs_table', 1),
(25, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(26, '2022_04_16_044000_create_profile_table', 1),
(27, '2022_04_16_155142_create_skills_table', 1),
(28, '2022_04_16_161221_create_experiences_table', 1),
(29, '2022_04_16_162517_create_categories_table', 1),
(30, '2022_04_16_163319_create_portfolios_table', 1),
(31, '2022_04_18_082642_add_picture_to_users_table', 1),
(32, '2022_04_18_085447_add_type_to_experiences_table', 1),
(33, '2022_04_18_122726_add_columns_to_profile_table', 1),
(34, '2022_04_19_100639_add_link_to_portfolios_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_category` int(11) NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `portfolios`
--

INSERT INTO `portfolios` (`id`, `name`, `id_category`, `picture`, `description`, `tags`, `created_at`, `updated_at`, `link`) VALUES
(1, 'Aplikasi Kamus', 6, '16503644235.png', 'Aplikasi kamus yang digunakan untuk menerjemahkan kata dari Jepang ke Indonesia begitu pula sebaliknya', 'Java,Netbean,MySQL', '2022-04-19 03:33:43', '2022-04-19 03:33:43', '-'),
(2, 'E-voting', 4, '16503752634.png', 'Aplikasi yang digunakan untuk melakukan pemilihan ketua osis', 'Laravel,MySql', '2022-04-19 06:34:23', '2022-04-20 03:54:58', '-'),
(3, 'KasirQ', 4, '16503753568.png', 'Aplikasi manajemen kasir', 'Laravel 8,MySql', '2022-04-19 06:35:56', '2022-04-19 06:35:56', '-'),
(4, 'Patuha Resort', 3, '16503754128.png', 'Aplikasi reservasi hotel sederhana', 'Codeigniter 3,MySql', '2022-04-19 06:36:52', '2022-04-19 06:36:52', '-'),
(5, 'Aplikasi Pembayaran SPP', 3, '16503754475.png', 'Aplikasi yang digunakan untuk melakukan transaksi pembayaran SPP', 'Codeigniter 3,MySql', '2022-04-19 06:37:28', '2022-04-19 06:37:28', '-'),
(6, 'Silandry', 4, '16503756439.jpg', 'Aplikasi untuk mengelola usaha laundry', 'Laravel 6,MySql', '2022-04-19 06:40:43', '2022-04-19 06:40:43', '-'),
(7, 'Aplikasi Pembayaran Sekolah', 3, '16503756916.png', 'Aplikasi yang digunakan untuk melakukan pembayaran yang ada disekolah', 'Codeigniter 3,MySql', '2022-04-19 06:41:31', '2022-04-19 06:41:31', '-'),
(8, 'Aplikasi Bel Sekolah', 5, '16503757295.png', 'Aplikasi yang digunakan untuk mengatur bel disekolah, terdapat dua jenis yaitu bel', 'PHP Native,MySql', '2022-04-19 06:42:09', '2022-04-19 06:42:09', '-'),
(9, 'Epos', 3, '16503761295.png', 'Aplikasi yang digunakan untuk melakukan transaksi penjualan, pembelian, manajemen stok beserta laporannya', 'Codeigniter 3,MySql', '2022-04-19 06:48:49', '2022-04-19 06:48:49', '-'),
(10, 'Codeigniter 3 Boilerplate', 3, '16503762122.png', 'Aplikasi proyek staterkit untuk membangun aplikasi, terdapat crud generator, user manajemen, menu manajemen dll', 'Codeigniter 3,MySql,Harviacode', '2022-04-19 06:50:12', '2022-04-19 06:50:12', '-'),
(11, 'BBC POS', 3, '16503762484.png', 'Aplikasi kasir sederhana', 'Codeigniter 3,MySql', '2022-04-19 06:50:48', '2022-04-19 06:50:48', '-'),
(12, 'E Service', 3, '16503764614.png', 'Aplikasi yang digunakan untuk melakukan transaksi service komputer', 'Codeigniter 3,MySql', '2022-04-19 06:54:21', '2022-04-19 06:54:21', '-'),
(13, 'Covid 19', 1, '16503766272.png', 'Web yang digunakan untuk menampilakn informasi mengenai covid 19', 'Html,Css', '2022-04-19 06:57:07', '2022-04-19 06:57:07', '-'),
(14, 'KaosQ', 1, '16503766963.png', 'Website E-commerce', 'Html,Css,Bootstrap', '2022-04-19 06:58:16', '2022-04-19 07:04:20', '-'),
(15, 'Bel Otomatis', 5, '16503767442.png', 'Aplikasi Bel Otomatis', 'PHP,Bootstrap,Mysql', '2022-04-19 06:59:04', '2022-04-19 06:59:04', '-'),
(16, 'Website Portfolio', 1, '16503768104.png', 'Website Portfolio Perusahaan / Pribadi', 'Html,Css,Bootstrap', '2022-04-19 07:00:10', '2022-04-19 07:04:05', '-'),
(17, 'PWA', 1, '16503768954.png', 'Progressive Web Apps (Dapat berjalan offline)', 'Html,Css,Js,Webpack', '2022-04-19 07:01:35', '2022-04-19 07:01:35', '-'),
(18, 'Confess Website', 1, '16503769713.png', 'Web yang digunakan untuk menyatakan cinta kepada sesorang', 'Html,Css,Js', '2022-04-19 07:02:51', '2022-04-19 07:02:51', 'https://simp-ngab.netlify.app/'),
(19, 'Sawatra Poe - Blog Web', 1, '16503770356.png', 'Website Blog', 'Html,Css,Bootstrap', '2022-04-19 07:03:55', '2022-04-19 07:03:55', '-'),
(20, 'Website Portfolio Pribadi', 7, '16503772005.png', 'Website Portfolio Pribadi', 'Reactjs,Laravel', '2022-04-19 07:06:40', '2022-04-19 07:06:40', 'https://dyatnas.my.id'),
(21, 'Landing Page Epos', 1, '16503772703.png', 'Landing page untuk aplikasi epos', 'Html,Css,Bootstrap', '2022-04-19 07:07:50', '2022-04-19 07:07:50', '-'),
(22, 'Hariring', 2, '16503773281.png', 'User interface untuk website musik', 'Figma', '2022-04-19 07:08:48', '2022-04-19 07:08:48', '-'),
(23, 'Carlok', 7, '16503776683.png', 'Website yang digunakan untuk mencari lowongan pekerjaan', 'Reactjs,Tailwindcss', '2022-04-19 07:14:28', '2022-04-19 07:14:28', 'https://deluxe-quokka-2c5f79.netlify.app/'),
(24, 'Drimus', 2, '16503776988.png', 'User Interface untuk aplikasi jurnal mimpi', 'Figma', '2022-04-19 07:14:58', '2022-04-19 07:14:58', '-'),
(25, 'Anime Show', 2, '16503777417.PNG', 'User interface untuk aplikasi informasi animasi jepang', 'Figma', '2022-04-19 07:15:41', '2022-04-19 07:15:41', '-'),
(26, 'Soccer Web', 2, '16503778545.png', 'User interface untuk website informasi sepakbola', 'Figma', '2022-04-19 07:17:34', '2022-04-19 07:17:34', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profile`
--

CREATE TABLE `profile` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `github` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telegram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `profile`
--

INSERT INTO `profile` (`id`, `name`, `profession`, `picture`, `about`, `email`, `phone`, `cv`, `created_at`, `updated_at`, `facebook`, `instagram`, `github`, `telegram`, `linkedin`) VALUES
(1, 'Adiatna Sukmana', 'Web Developer', '165032944288.jpeg', 'Saya seorang web developer dari Bandung, Jawa Barat, Indonesia. Saya menyukai komputer sejak saya duduk di bangku sekolah dasar, kemudian saya baru mengenal pemrograman ketika saya duduk di bangku SMK dimana saat itu saya mengambil jurusan Rekayasa Perangkat Lunak. Setelah lulus dari SMK saya mulai bekerja sebagai pekerja lepas selama kurang lebih dua tahun. Saat ini saya fokus pada fullstack development dan tertarik pada mobile development. <br><br>\"Code as if the guy who ends up maintaining it will be a violent psychopath who knows where you live\"', 'dyatna.id@gmail.com', '6283822623170', '16503292246.pdf', '2022-04-18 17:01:34', '2022-04-20 05:34:41', 'dy.vect', 'dyatnas', 'syn-arch', 'dyatnas', 'adiatna-sukmana');

-- --------------------------------------------------------

--
-- Struktur dari tabel `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_experience` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `skills`
--

INSERT INTO `skills` (`id`, `name`, `picture`, `description`, `long_experience`, `created_at`, `updated_at`) VALUES
(1, 'HTML', '16503514439.png', 'Bahasa markah standar untuk dokumen yang dirancang untuk ditampilkan di peramban internet', '3 year', '2022-04-18 23:57:23', '2022-04-20 01:52:34'),
(2, 'CSS', '16503516933.png', 'Aturan untuk mengatur beberapa komponen dalam sebuah web sehingga akan lebih terstruktur dan seragam.', '3 year', '2022-04-19 00:01:33', '2022-04-20 01:52:02'),
(3, 'Javascript', '16503517283.png', 'Bahasa pemrograman tingkat tinggi dan dinamis. JavaScript populer di internet dan dapat bekerja di sebagian besar browser', '2 year', '2022-04-19 00:02:08', '2022-04-20 01:52:29'),
(4, 'Jquery', '16503517656.png', 'Pustaka JavaScript lintas-platform yang didesain untuk menyederhanakan client-side scripting pada HTML', '1 year', '2022-04-19 00:02:45', '2022-04-19 00:13:49'),
(5, 'Bootstrap', '1650351985.png', 'Kerangka kerja CSS yang sumber terbuka dan bebas untuk merancang situs web dan aplikasi web.', '1 year', '2022-04-19 00:03:38', '2022-04-20 01:52:58'),
(6, 'Tailwind CSS', '16503518782.png', 'Kerangka kerja CSS yang mengutamakan utilitas yang dikemas dengan kelas kelas yang langsung disusun pada HTML', '1 month', '2022-04-19 00:04:38', '2022-04-20 01:54:12'),
(7, 'PHP', '16503519428.png', 'Bahasa skrip dengan fungsi umum yang terutama digunakan untuk pengembangan web. dibuat Rasmus Lerdorf pada tahun 1994', '2 year', '2022-04-19 00:05:42', '2022-04-20 01:55:01'),
(8, 'Codeigniter 3', '16503521108.png', 'Kerangka kerja PHP dengan model MVC untuk membangun situs web dinamis dengan menggunakan PHP', '2 year', '2022-04-19 00:08:30', '2022-04-20 01:55:07'),
(9, 'Laravel', '16503521583.png', 'Kerangka kerja aplikasi web berbasis PHP yang sumber terbuka, menggunakan konsep Model-View-Controller', '1 year', '2022-04-19 00:09:18', '2022-04-20 01:55:14'),
(10, 'React JS', '16503521909.png', 'React adalah pustaka JavaScript front-end sumber terbuka dan gratis untuk membangun antarmuka pengguna berdasarkan komponen UI', '3 month', '2022-04-19 00:09:50', '2022-04-20 01:55:24'),
(11, 'MySQL', '16503522326.png', 'Sebuah perangkat lunak sistem manajemen basis data SQL atau DBMS yang multialur dan multipengguna.', '2 year', '2022-04-19 00:10:32', '2022-04-20 01:55:40'),
(12, 'Java', '16503522673.png', 'Bahasa pemrograman yang dapat dijalankan di berbagai komputer termasuk telepon genggam.', '6 month', '2022-04-19 00:11:07', '2022-04-20 01:55:50'),
(13, 'Figma', '16503523144.png', 'Editor grafik vektor dan alat prototyping yang terutama berbasis web, dengan fitur offline tambahan yang diaktifkan oleh aplikasi desktop', '6 month', '2022-04-19 00:11:54', '2022-04-20 01:56:13'),
(14, 'Adobe Photoshop', '16503523468.png', 'Perangkat lunak editor citra buatan Adobe Systems yang dikhususkan untuk pengeditan foto/gambar dan pembuatan efek', '1 year', '2022-04-19 00:12:26', '2022-04-19 00:12:26'),
(15, 'GNU/Linux', '16503523804.png', 'Sistem operasi bebas dan sumber terbuka yang pada dasarnya dibangun di atas kernel Linux, dikembangkan oleh Linus Torvalds pada 1991', '1 year', '2022-04-19 00:13:00', '2022-04-20 01:56:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `picture`) VALUES
(1, 'Adiatna Sukmana', 'dyatna.id@gmail.com', '2022-04-18 17:01:34', '$2y$10$TVVxZhQmFElPEYdcY2PnK.r8vWP.T1hxTjOruB0z.ahdsNjkYcJX6', NULL, '2022-04-18 17:01:34', '2022-04-18 17:51:55', '165032951589.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `profile`
--
ALTER TABLE `profile`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
