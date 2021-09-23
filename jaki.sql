/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.4.11-MariaDB : Database - jaki
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jaki` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `jaki`;

/*Table structure for table `absens` */

DROP TABLE IF EXISTS `absens`;

CREATE TABLE `absens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time_in` time DEFAULT NULL,
  `lok_in` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_break` time DEFAULT NULL,
  `lok_break` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_out` time DEFAULT NULL,
  `lok_out` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `absens` */

/*Table structure for table `detail_cutis` */

DROP TABLE IF EXISTS `detail_cutis`;

CREATE TABLE `detail_cutis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `detail_cutis` */

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `golongans` */

DROP TABLE IF EXISTS `golongans`;

CREATE TABLE `golongans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ruang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pangkat_asn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pangkat_hakim` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `golongans` */

/*Table structure for table `izbels` */

DROP TABLE IF EXISTS `izbels`;

CREATE TABLE `izbels` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pegawai` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `golongan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `izin_pendidikan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_universitas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_universitas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_s_keterangan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_s_keterangan` date NOT NULL,
  `program_studi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_akademik` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_surat_pengantar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_sk_pns` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_s_universitas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_akreditasi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_pernyataan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_rekomendasi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_kunci` datetime DEFAULT NULL,
  `status_kunci` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_surat_balasan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_surat_balasan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tujuan_surat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `produk` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `izbels` */

insert  into `izbels`(`id`,`nip`,`nama_pegawai`,`jabatan`,`golongan`,`izin_pendidikan`,`nama_universitas`,`alamat_universitas`,`nomor_s_keterangan`,`tgl_s_keterangan`,`program_studi`,`tahun_akademik`,`file_surat_pengantar`,`file_sk_pns`,`file_s_universitas`,`file_akreditasi`,`file_pernyataan`,`file_rekomendasi`,`user_id`,`status`,`keterangan`,`tgl_kunci`,`status_kunci`,`no_surat_balasan`,`tgl_surat_balasan`,`tujuan_surat`,`produk`,`created_at`,`updated_at`) values 
(2,'198512282011011009','FARIDL MUZAKY, S.KOM','Kasubbag Kepegawaian dan TI','III/c','S2','Institut Pertanian Bogor','Jl. Dramaga No 51 Bogor','IPB/MHS','2020-12-16','Magister Ilmu Komputer','2021-2023','izinbelajar1618391602_1. BQ STRUKTUR DAN ARSITEKTUR 2021.pdf','1613553218_WIN_20210130_12_21_00_Pro.jpg','1613553218_WIN_20210130_12_21_00_Pro.jpg','1613553218_WIN_20210130_12_21_00_Pro.jpg','1613553218_WIN_20210130_12_23_17_Pro.jpg','1613553218_WIN_20210130_12_19_57_Pro.jpg','Faridl Muzaky','Dikunci','Dokumen lengkap','2021-03-16 16:58:17','1','W10-A/908/KP.01/III/2021','2021-03-15','Kepala Biro Kepegawaian MARI','izinbelajar1618391807_1. HPS STRUKTUR DAN ARSITEKTUR 2021.pdf','2021-02-17 09:13:38','2021-04-14 16:16:47'),
(3,'198512282011011011','RISKA HARISBAYA, M.Si','Sekretaris','IV/a','S3','Oxford University','Oxford OX1 2JD UK','Ox-SCH09','2021-02-10','Computer Science','2025-2030','SuratPengantar1613812436_e-doc undangan pengadilan.pdf','1613779234_Jadwal Kegiatan Harian Dzikra.docx','1613779234_COVID PEMICU TINGGINYA ANGKA PERCERAIAN.docx','1613779234_COVID PEMICU TINGGINYA ANGKA PERCERAIAN.docx','1613779234_NO TE.pdf','1613779234_RINCIAN ANGGARAN BIAYA PENINGKATAN KUALITAS ZOOM MEETING.docx','Faridl Muzaky','Dikunci','Dokumen lengkap','2021-03-21 07:16:32','1','W10-A/116/KP.04/III/2021','2021-03-18','Direktur Jenderal Badan Peradilan Agama',NULL,'2021-02-20 00:00:34','2021-03-21 07:17:00'),
(5,'198611142009121004','ERLENDI MAULID, S.E.','Kasubbag Kepegawaian dan Ortala','III/c','S2','Institut Teknologi Bandung','Jl. Ganesha No 17 Bandung','ITB-MHS','2021-02-19','Magister Manajemen','2021-2023','SuratPengantar1613783436_e-doc undangan pengadilan.pdf','SKPns1613783436_NO TE.pdf','Akreditasi1613783436_KTP.pdf','Akreditasi1613783436_KTP.pdf','Pernyataan1613783436_Listrik PA Depok.pdf','Persetujuan1613783436_KPA ciamis.pdf','Faridl Muzaky','Dikunci','Dokumen lengkap','2021-03-19 11:27:35','1','W10-A/908/KP.01/III/2021','2021-03-18','Kepala Biro Kepegawaian MARI',NULL,'2021-02-20 01:10:36','2021-03-19 11:28:31'),
(6,'197703182003122002','DIANA RISNAWATI, S.Sos.,M.H.','Sekretaris','IV/a','S3','Universitas Padjajaran','Jl. Dipatiukur No 50','100/UNPD/MHS','2021-02-09','Doktor Ilmu Manajemen','2021-2024','SuratPengantar1613996566_Surat Pengantar.docx','SKPns1613996566_SK PNS.pdf','SuketMhs1613996566_Surat Keterangan Terdaftar.docx','Akreditasi1613996566_Akrediras.docx','Pernyataan1613996566_Surat Penyataan Tidak Menggangu.docx','Persetujuan1613996566_Rekomendasi.docx','10','Dikunci','Dokumen lengkap','2021-03-22 09:13:10','1','W10-A/908/KP.01/III/2021','2021-03-18','Kepala Biro Kepegawaian MARI',NULL,'2021-02-22 12:22:46','2021-03-22 09:13:30'),
(7,'198604282009042004','HESNA LADIA, S.E.','Kepala Bagian Umum dan Keuangan','III/c','S2','Universitas Indonesia','Jl. Kepala Dua No7','MHS-UI','2021-02-17','Manajemen','2021-2023','SuratPengantar1615419628_SKB KPT BANDUNG DAN KPTA JABAR UNTUK PN DI JABAR.pdf','Persetujuan1615419768_Pemanggilan Mentor PKP Gel I (1).pdf','SuketMhs1615419628_Pengumuman_Seleksi_Terbuka_Pengisian_Staf_Khsusus_Pimpinan_MARI_2021 fix.pdf','Akreditasi1615419628_Masa kerja.pdf','Pernyataan1615419628_2.a.3_Dokumen_Rencana_Aksi.pdf','Persetujuan1615419628_Pelantikan Toga SK_KMA_32_2019.pdf','11','Dikunci','Dokumen lengkap','2021-03-13 01:12:26','1','W10-A/1000/KP.01/III/2021','2021-03-11','Direktur Jenderal Badan Peradilan Agama',NULL,'2021-03-11 06:40:28','2021-03-13 01:12:26'),
(8,'198004212006042002','INDA MULYANI, S.I.P., S.H.','Kasubbag Umum dan Keuangan','III/c','S2','Universitas Padjajaran','Jl. Dipatiukur No 50','MHS-01-UNP','2021-03-03','Administrasi Negara','2021-2023','SuratPengantar1615720185_Surat Pengantar.pdf','SKPns1615720185_SKPNS.pdf','SuketMhs1615720185_Surat Keterangan Terdaftar.pdf','Akreditasi1615720185_Akrediras.pdf','Pernyataan1615720185_Surat Penyataan Tidak Menggangu.pdf','Persetujuan1615720185_Rekomendasi.pdf','10','Dikunci','SK Sudah Selesai','2021-04-15 08:21:57','1','W10-A/908/KP.01/III/2021','2021-04-15','Direktur Jenderal Badan Peradilan Agama','izinbelajar1618392666_0475_perm._izin_mjd_dosen_khusus_.pdf','2021-03-14 18:09:45','2021-04-15 08:22:23');

/*Table structure for table `izbels_audit` */

DROP TABLE IF EXISTS `izbels_audit`;

CREATE TABLE `izbels_audit` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `izbels_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `izbels_audit` */

insert  into `izbels_audit`(`id`,`izbels_id`,`users_id`,`description`,`created_at`,`updated_at`) values 
(1,'6','1','Proses Permohonan, Ditolak : Akreditasi C','2021-03-10 23:09:32','2021-03-10 23:09:32'),
(2,'6','1','Proses Permohonan, Diterima','2021-03-10 23:17:12','2021-03-10 23:17:12'),
(3,'6','1','Proses Permohonan, Ditolak : Akreditasi C','2021-03-11 06:21:35','2021-03-11 06:21:35'),
(4,'7','11','Membuat Permohonan Izin Belajar','2021-03-11 06:40:28','2021-03-11 06:40:28'),
(5,'7','1','Proses Permohonan, Ditolak : Rekomendasi tidak ditandatangani oleh Ketua Pengadilan','2021-03-11 06:41:42','2021-03-11 06:41:42'),
(6,'7','11','Perbaikan Permohonan','2021-03-11 06:42:48','2021-03-11 06:42:48'),
(7,'7','1','Proses Permohonan, Diterima','2021-03-11 06:43:36','2021-03-11 06:43:36'),
(8,'2','1','Proses Permohonan, Diterima','2021-03-12 10:55:22','2021-03-12 10:55:22'),
(9,'6','1','Proses Permohonan, Diterima','2021-03-12 17:34:04','2021-03-12 17:34:04'),
(10,'5','1','Buka Kunci ','2021-03-13 00:41:13','2021-03-13 00:41:13'),
(11,'7','1','Buka Kunci ','2021-03-13 00:57:05','2021-03-13 00:57:05'),
(12,'7','1','Dikunci ','2021-03-13 00:57:08','2021-03-13 00:57:08'),
(13,'7','1','Buka Kunci ','2021-03-13 01:11:22','2021-03-13 01:11:22'),
(14,'6','1','Dikunci ','2021-03-13 01:11:45','2021-03-13 01:11:45'),
(15,'7','1','Dikunci ','2021-03-13 01:12:26','2021-03-13 01:12:26'),
(16,'8','10','Membuat Permohonan Izin Belajar','2021-03-14 18:09:45','2021-03-14 18:09:45'),
(17,'8','1','Proses Permohonan, Ditolak : Surat rekomendasi belum ditandatangani Ketua','2021-03-15 21:59:21','2021-03-15 21:59:21'),
(18,'2','1','Buka Kunci ','2021-03-16 16:57:39','2021-03-16 16:57:39'),
(19,'2','1','Dikunci ','2021-03-16 16:58:17','2021-03-16 16:58:17'),
(20,'5','1','Dikunci ','2021-03-19 11:26:48','2021-03-19 11:26:48'),
(21,'5','1','Buka Kunci ','2021-03-19 11:26:55','2021-03-19 11:26:55'),
(22,'5','1','Proses Permohonan, Diterima','2021-03-19 11:27:22','2021-03-19 11:27:22'),
(23,'5','1','Dikunci ','2021-03-19 11:27:35','2021-03-19 11:27:35'),
(24,'8','1','Proses Permohonan, Diterima','2021-03-19 11:33:13','2021-03-19 11:33:13'),
(25,'8','1','Dikunci ','2021-03-19 11:33:20','2021-03-19 11:33:20'),
(26,'3','1','Proses Permohonan, Diterima','2021-03-21 07:16:16','2021-03-21 07:16:16'),
(27,'3','1','Dikunci ','2021-03-21 07:16:32','2021-03-21 07:16:32'),
(28,'6','1','Buka Kunci ','2021-03-22 09:11:39','2021-03-22 09:11:39'),
(29,'6','1','Proses Permohonan, Diterima','2021-03-22 09:12:29','2021-03-22 09:12:29'),
(30,'6','1','Dikunci ','2021-03-22 09:13:10','2021-03-22 09:13:10'),
(31,'2','1','Kirim Hasil Akhir','2021-04-14 16:13:22','2021-04-14 16:13:22'),
(32,'2','1','Kirim Hasil Akhir','2021-04-14 16:16:47','2021-04-14 16:16:47'),
(33,'8','1','Kirim Hasil Akhir','2021-04-14 16:25:33','2021-04-14 16:25:33'),
(34,'8','1','Kirim Hasil Akhir','2021-04-14 16:31:06','2021-04-14 16:31:06'),
(35,'8','1','Buka Kunci ','2021-04-15 05:49:06','2021-04-15 05:49:06'),
(36,'8','1','Dikunci ','2021-04-15 05:49:54','2021-04-15 05:49:54'),
(37,'8','1','Buka Kunci ','2021-04-15 07:43:45','2021-04-15 07:43:45'),
(38,'8','1','Dikunci ','2021-04-15 08:21:57','2021-04-15 08:21:57');

/*Table structure for table `master_cutis` */

DROP TABLE IF EXISTS `master_cutis`;

CREATE TABLE `master_cutis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tmt_cpns` date NOT NULL,
  `id_satker` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sisa_tahun_t1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sisa_tahun_t0` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_anggaran` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `master_cutis` */

insert  into `master_cutis`(`id`,`nip`,`nama`,`jabatan`,`tmt_cpns`,`id_satker`,`sisa_tahun_t1`,`sisa_tahun_t0`,`tahun_anggaran`,`aktif`,`created_at`,`updated_at`) values 
(1,'196708101994031011','Drs. H. MUHAMAD CAMUDA, M.H.','Ketua','1995-05-01','1','6','6','2021','1','2021-03-20 21:35:14',NULL),
(2,'195610021988031002','Drs. H. SYAIFUDDIN ZUHRY, S.H., M.H.','Ketua','1988-03-01','2','5','2','2021','1','2021-03-20 21:37:50',NULL);

/*Table structure for table `master_cutis_detail` */

DROP TABLE IF EXISTS `master_cutis_detail`;

CREATE TABLE `master_cutis_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `master_cutis_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_cuti` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alasan_cuti` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lama_cuti` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_akhir` date NOT NULL,
  `sisa_cuti1` int(11) NOT NULL,
  `sisa_cuti0` int(11) NOT NULL,
  `alamat_cuti` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setuju1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perubahan1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tangguhkan1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atasan_langsung` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setuju2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perubahan2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tangguhkan2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pejabat_berwenang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `master_cutis_detail` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(7,'2021_02_12_121323_add_username_to_users_table',3),
(14,'2014_10_12_000000_create_users_table',4),
(15,'2014_10_12_100000_create_password_resets_table',4),
(16,'2014_10_12_200000_add_two_factor_columns_to_users_table',4),
(17,'2019_08_19_000000_create_failed_jobs_table',4),
(18,'2019_12_14_000001_create_personal_access_tokens_table',4),
(19,'2021_01_31_011411_create_sessions_table',4),
(20,'2021_02_14_021703_add_user_role',5),
(23,'2021_02_14_094228_make_izin_belajar',6),
(24,'2021_02_15_134405_creare_golongan',7),
(28,'2021_02_21_023328_add_role_satker',8),
(29,'2021_02_21_024625_create_satkers',8),
(30,'2021_03_07_025533_create_audit_izbels',9),
(31,'2021_03_07_121153_add_keterangan_izbels',10),
(32,'2021_03_11_141832_add_tglkunci',11),
(34,'2021_03_20_210506_create_master_cuti',12),
(41,'2021_03_21_054051_create_detail_cuti',13),
(44,'2021_07_05_114413_create_pegawai',14),
(45,'2021_07_05_124941_create_absen',15);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

/*Table structure for table `satkers` */

DROP TABLE IF EXISTS `satkers`;

CREATE TABLE `satkers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kode_satker` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_satker` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_satker` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pendandatangan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `satkers_kode_satker_unique` (`kode_satker`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `satkers` */

insert  into `satkers`(`id`,`kode_satker`,`nama_satker`,`alamat_satker`,`no_telp`,`email`,`pendandatangan`,`jabatan`,`nip`,`logo`,`created_at`,`updated_at`) values 
(1,'400662','PENGADILAN AGAMA BANDUNG','','','','','','','',NULL,NULL),
(2,'400766','PENGADILAN AGAMA INDRAMAYU','','','','','','','',NULL,NULL),
(3,'400772','PENGADILAN AGAMA MAJALENGKA','','','','','','','',NULL,NULL),
(4,'403009','PENGADILAN AGAMA SUMBER','','','','','','','',NULL,NULL),
(5,'400690','PENGADILAN AGAMA CIAMIS','','','','','','','',NULL,NULL),
(6,'400704','PENGADILAN AGAMA TASIKMALAYA','','','','','','','',NULL,NULL),
(7,'400808','PENGADILAN AGAMA KARAWANG','','','','','','','',NULL,NULL),
(8,'401958','PENGADILAN AGAMA KOTA CIMAHI','','','','','','','',NULL,NULL),
(9,'402587','PENGADILAN AGAMA SUBANG','','','','','','','',NULL,NULL),
(10,'400678','PENGADILAN AGAMA SUMEDANG','','','','','','','',NULL,NULL),
(11,'400854','PENGADILAN AGAMA PURWAKARTA','','','','','','','',NULL,NULL),
(12,'400735','PENGADILAN AGAMA SUKABUMI','','','','','','','',NULL,NULL),
(13,'400741','PENGADILAN AGAMA CIANJUR','','','','','','','',NULL,NULL),
(14,'400781','PENGADILAN AGAMA KUNINGAN','','','','','','','',NULL,NULL),
(15,'402995','PENGADILAN AGAMA CIBADAK','','','','','','','',NULL,NULL),
(16,'400710','PENGADILAN AGAMA GARUT','','','','','','','',NULL,NULL),
(17,'400750','PENGADILAN AGAMA CIREBON','','','','','','','',NULL,NULL),
(18,'400832','PENGADILAN AGAMA BEKASI','','','','','','','',NULL,NULL),
(19,'604719','PENGADILAN AGAMA CIBINONG','','','','','','','',NULL,NULL),
(20,'614706','PENGADILAN AGAMA CIKARANG','','','','','','','',NULL,NULL),
(21,'652062','PENGADILAN AGAMA DEPOK','','','','','','','',NULL,NULL),
(22,'682150','PENGADILAN AGAMA KOTA TASIKMALAYA','','','','','','','',NULL,NULL),
(23,'682164','PENGADILAN AGAMA KOTA BANJR','','','','','','','',NULL,NULL),
(24,'401957','PENGADILAN AGAMA SOREANG','','','','','','','',NULL,NULL),
(25,'401959','PENGADILAN AGAMA NGAMPRAH','','','','','','','',NULL,NULL),
(27,'400729','PENGADILAN AGAMA BOGOR','','','','','','','',NULL,NULL),
(28,'308166','PENGADILAN TINGGI AGAMA BANDUNG','','','','','','','',NULL,NULL);

/*Table structure for table `sessions` */

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sessions` */

insert  into `sessions`(`id`,`user_id`,`ip_address`,`user_agent`,`payload`,`last_activity`) values 
('Fr8t8qVZG2dzdOROG0mCDH9sLzCyrJwVUUW18iXH',1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36 OPR/77.0.4054.172','YTo3OntzOjY6Il90b2tlbiI7czo0MDoieE9SZjJUN0x0cHJ5UktQM0hDM050SmF5SlFLUGFUT2lmdk9ibHFpeSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvYWJzZW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkL2tXVS5vNmMyTGNZUllmMUZSV0xNdVRQdnJUd0xaOEpxMEYvYTYvRzlBYjI5UThTNlliLmEiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJC9rV1UubzZjMkxjWVJZZjFGUldMTXVUUHZyVHdMWjhKcTBGL2E2L0c5QWIyOVE4UzZZYi5hIjt9',1625647211),
('lvnSaJFAoYz9lI0n2vwsxvhQgjnbJHaxuDV60tc8',1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36 OPR/77.0.4054.172','YTo3OntzOjY6Il90b2tlbiI7czo0MDoicWthTGdQUWJaVXF1RG9Bd3ZmTW1nRDJWdTZrMTdlSDFqb3U1bUlrNyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvYWJzZW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkL2tXVS5vNmMyTGNZUllmMUZSV0xNdVRQdnJUd0xaOEpxMEYvYTYvRzlBYjI5UThTNlliLmEiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJC9rV1UubzZjMkxjWVJZZjFGUldMTXVUUHZyVHdMWjhKcTBGL2E2L0c5QWIyOVE4UzZZYi5hIjt9',1625665300),
('soLDQhTVmxQrHveT1ZGTXFFZn8vCW2U68nMVqArJ',13,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36','YTo2OntzOjY6Il90b2tlbiI7czo0MDoiTmpOcHJweUpNaEoxQ0E3OXZTY2ZHZUVWVE11ajFFSzY5RGVvOGZweSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hYnNlbiI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjEzO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkWTYwQ1VPMExNUHN0bWdMQkYzV1BxdVZldkFtT3A5Q2J5ZVlpN0NtYUpPS0xCRld6QVBKelciO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJFk2MENVTzBMTVBzdG1nTEJGM1dQcXVWZXZBbU9wOUNieWVZaTdDbWFKT0tMQkZXekFQSnpXIjt9',1625647082);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `golongan` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `satker_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) unsigned DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`username`,`jabatan`,`golongan`,`email`,`email_verified_at`,`password`,`role`,`satker_id`,`two_factor_secret`,`two_factor_recovery_codes`,`remember_token`,`current_team_id`,`profile_photo_path`,`created_at`,`updated_at`) values 
(1,'FARIDL MUZAKY','198512282011011009','Kasubbag Kepegawaian dan TI','III/c','f4ridl.m@gmail.com',NULL,'$2y$10$/kWU.o6c2LcYRYf1FRWLMuTPvrTwLZ8Jq0F/a6/G9Ab29Q8S6Yb.a','1','28',NULL,NULL,NULL,NULL,'faridl.jpeg','2021-02-12 12:42:25','2021-02-21 13:38:25'),
(5,'MURSYID ROBBANI, S.Psi','199312082019031008','Analis SDM Aparatur','III/a','mursyid@gmail.com',NULL,'$2y$10$p..MPs3htcPVG7myjDcCLOTTNgz3R9hBNIuo/ImuVTTZLw8cWtX5i','1','28',NULL,NULL,NULL,NULL,'1613280560_deskevalzi.jpg','2021-02-13 09:58:32','2021-07-07 15:30:45'),
(6,'SABRINA NUR AMALINA, S.Psi.','199307112019032013','Analis SDM Aparatur','III/a','sabrina@gmail.com',NULL,'$2y$10$GXb62zbrmDTaRYmqtlqCG.KyQqHJZG6FnGm51b1lQLHrXyq6oDg2e','1','28',NULL,NULL,NULL,NULL,'1613280621_deskevalzi-2.jpg','2021-02-13 13:39:18','2021-07-07 15:31:04'),
(8,'Drs. H. DADANG SUDRAJAT','196402031993031001','Sekretaris PTA','IV/c','surat.ptajawabarat@gmail.com',NULL,'$2y$10$REoXIhmJOdm6jKBcdhYqu.nfNj6fpxApG72c.0Vun.wvA4O3ABIWO','0','28',NULL,NULL,NULL,NULL,'1613285286_PAK DADANG.jfif','2021-02-14 06:48:06','2021-02-14 06:48:06'),
(10,'Erlendi Maulid, S.E','198611142009121004','Kasubbag Kepegawaian dan Ortala','III/c','pa.bandung_ptabdg@yahoo.co.id',NULL,'$2y$10$3C6C6dRYL9lQ.6N5zcYWred0R2eW/6X659ZoqnHeiq/KGzyvVulFy','0','1',NULL,NULL,NULL,NULL,'1613913301_Erlendi_Maulid_S.E._S.jpeg','2021-02-21 13:15:01','2021-07-07 13:07:21'),
(11,'ENDANG PURWANINGSIH, S.H.I','196509031989032001','Kasubbag Kepegawaian dan Ortala','III/d','pa.bogor_ptabdg@yahoo.co.id',NULL,'$2y$10$aX.oE7dAB/TjZ34JUKKVceqWZOd01KqTD9uQTttXpELNFC.K7124K','0','27',NULL,NULL,NULL,NULL,'1615419436_pa bogor.png','2021-03-11 06:37:16','2021-03-21 11:29:58'),
(12,'Rustandi, S.Ag.','196908171995031001','Kabag Perencanaan dan Kepegawaian','IV/b','rustandi@mahkamahagung.go.id',NULL,'$2y$10$ySaWDk.rkE9daw7AJuWqCuBLBRPW.RNKwH69cnSSij4R2bvEmPXmW','1','28',NULL,NULL,NULL,NULL,'1624401939_rustandi.jpg','2021-06-23 05:45:39','2021-06-23 05:45:39'),
(13,'MEILA AULIA, S.H.','199011242014022001','Pelaksana','III/b','meila@gmail.com',NULL,'$2y$10$Y60CUO0LMPstmgLBF3WPquVevAmOp9CbyeYi7CmaJOKLBFWzAPJzW','2','28',NULL,NULL,NULL,NULL,'1625636783_meila.jpeg','2021-07-07 12:46:23','2021-07-07 12:46:23'),
(14,'SANDY FRIYADI, S.SY','3273021203840001','PPNPN','-','sandi@gmail.com',NULL,'$2y$10$VjirTyGcPKALpNKs6NIqyOHeBq4axsIumAsWLzgH7dhvouXXWY6EW','2','28',NULL,NULL,NULL,NULL,'1625646983_sandi.jpg','2021-07-07 15:36:23','2021-07-07 15:36:23');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
