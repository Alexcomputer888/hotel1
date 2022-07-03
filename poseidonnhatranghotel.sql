-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 03, 2022 lúc 07:57 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `poseidonnhatranghotel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dinning`
--

CREATE TABLE `dinning` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_vi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ru` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_kr` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_cn` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_jp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_vi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_ru` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_kr` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_cn` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_jp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `explore`
--

CREATE TABLE `explore` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_vi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ru` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_kr` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_cn` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_jp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_vi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_ru` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_kr` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_cn` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_jp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `introduce`
--

CREATE TABLE `introduce` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_vi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_ru` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_kr` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_cn` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_jp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `introduce`
--

INSERT INTO `introduce` (`id`, `title`, `content_vi`, `content_en`, `content_ru`, `content_kr`, `content_cn`, `content_jp`, `photo`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'GIỚI THIỆU', '<p>Kh&aacute;ch sạn Poseidon Nha Trang tọa lạc tr&ecirc;n con đường Trần Quang Khải, một vị tr&iacute; v&ocirc; c&ugrave;ng thuận tiện ngay tại trung t&acirc;m th&agrave;nh phố Nha Trang xinh đẹp, chỉ với 5 ph&uacute;t l&aacute;i xe từ ga xe lửa v&agrave; 45 ph&uacute;t l&aacute;i xe từ s&acirc;n bay Cam Ranh. Tại đ&acirc;y, du kh&aacute;ch c&oacute; thể dễ d&agrave;ng đi bộ đến c&aacute;c nh&agrave; h&agrave;ng v&agrave; c&aacute;c khu ăn uống, giải tr&iacute;, mua sắm v&agrave; b&atilde;i biển Nha Trang. Hệ thống ph&ograve;ng nghỉ trong kh&aacute;ch sạn được trang bị đầy đủ c&aacute;c thiết bị tiện nghi với tầm nh&igrave;n sang trọng hướng ra to&agrave;n th&agrave;nh phố c&ugrave;ng với hồ bơi ngo&agrave;i trời, trung t&acirc;m thể dục, quầy bar cạnh hồ bơi, ph&ograve;ng tổ chức hội nghị đa chức năng, quầy h&agrave;ng lưu niệm v&agrave; b&agrave;n th&ocirc;ng tin du lịch sẽ l&agrave; sự lựa chọn tuyệt vời cho du kh&aacute;ch đi nghỉ dưỡng v&agrave; c&ocirc;ng t&aacute;c.</p>\r\n\r\n<p>Kh&aacute;ch sạn Poseidon Nha Trang nổi bật bởi kiến tr&uacute;c đặc trưng phương T&acirc;y &ndash; tối giản m&agrave; sang trọng, hiện đại v&agrave; đẳng cấp. Kh&aacute;ch sạn c&oacute; tổng cộng 138 ph&ograve;ng, trong đ&oacute; c&oacute; 34 ph&ograve;ng Superior, 52 ph&ograve;ng Premier Cityview, 21 ph&ograve;ng&nbsp;Deluxe Seaview with Balcony, 7 ph&ograve;ng&nbsp;Deluxe Cityview with Balcony, 14 ph&ograve;ng Luxury Seaview, 2 ph&ograve;ng Poseidon Suite v&agrave; 7 ph&ograve;ng Family Executive. Tất cả c&aacute;c ph&ograve;ng đều c&oacute; diện t&iacute;ch rộng r&atilde;i, tho&aacute;ng m&aacute;t hướng biển hoặc th&agrave;nh phố - được trang bị đầy đủ tiện nghi hiện đại, dịch vụ cao cấp c&ugrave;ng đội ngũ nh&acirc;n vi&ecirc;n nhiệt t&igrave;nh v&agrave; gi&agrave;u kinh nghiệm.</p>\r\n\r\n<p>&nbsp;Ẩm thực tại kh&aacute;ch sạn Poseidon Nha Trang v&ocirc; c&ugrave;ng đa dạng với c&aacute;c m&oacute;n ăn đặc trưng của Việt Nam, Phương Đ&ocirc;ng v&agrave; Phương T&acirc;y được phục vụ tại nh&agrave; h&agrave;ng MEDUSA, nơi th&iacute;ch hợp để tổ chức tiệc chi&ecirc;u đ&atilde;i, tiệc sinh nhật v&agrave; phục vụ kh&aacute;ch đo&agrave;n trong kh&ocirc;ng gian sang trọng v&agrave; th&acirc;n mật. Kh&aacute;ch h&agrave;ng cũng c&oacute; thể lựa chọn một ly cocktail hay một ly c&agrave; ph&ecirc; trong một cuộc gặp gỡ tại quầy LOBBY Lounge hoặc ngắm nh&igrave;n cuộc sống th&agrave;nh phố về đ&ecirc;m từ HADES Bar.</p>\r\n\r\n<p>Với vị tr&iacute; địa l&yacute; thuận lợi, cơ sở hạ tầng cao cấp v&agrave; dịch vụ mới lạ độc đ&aacute;o, kh&aacute;ch sạn Poseidon Nha Trang l&agrave; địa chỉ đ&aacute;ng tin cậy để du kh&aacute;ch lựa chọn khi đến du lịch v&agrave; lưu tr&uacute; tại th&agrave;nh phố biển Nha Trang.</p>', '<p>Poseidon Nha Trang hotel is situated on Tran Quang Khai Street, conveniently located in the heart of Nha Trang city within walking distance of dining, shopping center and beautiful Nha Trang beach. The hotel features well-appointed guest accommodation rooms surrounded by extensive view of the city, It is just 5 minutes away from train station and 45 minutes from Cam Ranh airport. Outdoor swimming pool, fitness center, pool bar and extensive conference and events facilities, souvenir shop, tour information desk and 24-hour business service make it ideal for business or leisure travel.</p>\r\n\r\n<p>Poseidon Nha Trang Hotel is outstanding with its modern and classy Western architectural features. The hotel has 138 rooms in total, including 34 Superior with Balcony, 52 Premier Cityview, 21 Deluxe Seaview with Balcony, 7 Deluxe Cityview with Balcony, 14 Luxury Seaview, 2 Poseidon Suite and 7 Family Executive. All rooms have wooden floor, cozy designed, fully equipped with modern facilities, with panorama city or sea view as well as luxury services and enthusiastic and experienced staffs.</p>\r\n\r\n<p>MEDUSA Restaurant serves diversified dishes of Vietnam, the East and the West cuisine. This is an ideal place to organize dinners, birthday parties and other parties in luxurious and intimate atmosphere. Customers can also opt for a cocktail, a cup of coffee at LOBBY LOUNGE or night-life view from HADES BAR.</p>\r\n\r\n<p>With its favorable geographical location, advanced infrastructure and unique services, Poseidon Nha Trang Hotel is a reliable address for all visitors when staying in Nha Trang!</p>', '<p>Отель Poseidon Nha Trang находится на улице Чан Куанг Кхай на весьма удобном месте в центре красивого города Нячанг, в 5 минутах от железнодорожного вокзала Нячанга и 45 минутах от аэропорта Камрань. Здесь туристы могут легко идти пешком в рестораны, пункты кухни, развлечения, закупки и на пляж Нячанг. Система номеров отеля полностью оснащена удобным оборудованием с роскошным видом на весь город, наряду с открытым бассейном, фитнес-центром, баром у бассейна, многофункциональным конференц-залом, сувенирным магазином и туристическим информационным бюро является отличным выбором для туристов и бизнесменов.</p>\r\n\r\n<p>Отель Poseidon Nha Trang отличается западными архитектурными особенностями, которые и простые, и современные и роскошные. Отель имеет всего 138 номеров, в том числе 34 номера Superior, 52 номера Premier Cityview, 21 номер Deluxe Seaview with Balcony, 7 номеров Deluxe Cityview with Balcony, 14 номеров Luxury Seaview, 2 номера Poseidon Suite и 7 номеров Family Executive. Все номера имеют широкую площадь, прохладное пространство с видом на море или город, которые полностью оснащены современными удобствами, высококачественными услугами и восторженным и опытным персоналом.</p>\r\n\r\n<p>Кухня в отеле Poseidon Nha Trang весьма разнообразна с типичными блюдами вьетнамскими, восточными и западными, подаемыми в ресторане MEDUSA - подходящее место для проведения банкетов, вечеринки в честь дня рождениядней рождения, обслуживания для больших групп гостей в роскошном и интимном пространстве. Клиенты также могут выбрать коктейль или чашку кофе для встречи в лобби-баре или посмотреть ночную жизнь города из HADES Bar.</p>', '<p>芽庄Poseidon酒店坐落在陈光凯路，就在美丽芽庄市中心便利位置，只要花5分钟时间从火车站和45分钟从CAM RANH机场开车就到了，在此，游客可以走到餐厅和饮食地点、休闲娱乐区、购买地和芽庄海滩，本酒店的房子系统装备充足的便利现代设备视域芽庄市以及室外泳池、体育中心、泳池旁边酒吧。多功能会议室，纪念品店和旅游信息服务台将是游客度假和工作最佳选择</p>\r\n\r\n<p>芽庄Poseidon酒店的建筑带有西方特色建筑-简单而豪华、现代。本酒店共有138个房、其中34个Superior, 52个Premier Cityview, 21个Deluxe Seaview with Balcony, 7个Deluxe Cityview with Balcony, 14个Luxury Seaview, 2个Poseidon Suite 和 7个Family Executive，所有房间的面积都大，通风视域海景或芽庄市，装备充足的现代服务设备以及热情和经验丰富的人员队伍</p>\r\n\r\n<p>&nbsp;芽庄Poseidon酒店饮食非常丰富以及越南、东方、西方的菜肴在MEDUSA餐厅服务，以豪华温暖的空间这适合举行招待会、生日会并服务代表团。客户也可以选择一个鸡尾酒或咖啡在LOBBY Lounge或从HADES Bar欣赏芽庄市晚上的美景</p>\r\n\r\n<p>Poseidon Nha Trang호텔의 식당은 고급스럽고 친밀한 공간에서 연회, 생일 파티 및 관광객 그룹을 위해 적절한 장소인 MEDUSA식당에서 제공되는 베트남, 동양과 서양의 전형적인 요리로 매우 다양하다. 또한 고객은 LOBBY Lounge에서 만남에 칵테일이나 커피 한잔을 선택할 수 있거나 HADES Bar에서 밤에 도시 생활을 구경할 수 있다.</p>\r\n\r\n<p>&nbsp;</p>', '<p>芽庄Poseidon酒店坐落在陈光凯路，就在美丽芽庄市中心便利位置，只要花5分钟时间从火车站和45分钟从CAM RANH机场开车就到了，在此，游客可以走到餐厅和饮食地点、休闲娱乐区、购买地和芽庄海滩，本酒店的房子系统装备充足的便利现代设备视域芽庄市以及室外泳池、体育中心、泳池旁边酒吧。多功能会议室，纪念品店和旅游信息服务台将是游客度假和工作最佳选择</p>\r\n\r\n<p>芽庄Poseidon酒店的建筑带有西方特色建筑-简单而豪华、现代。本酒店共有138个房、其中34个Superior, 52个Premier Cityview, 21个Deluxe Seaview with Balcony, 7个Deluxe Cityview with Balcony, 14个Luxury Seaview, 2个Poseidon Suite 和 7个Family Executive，所有房间的面积都大，通风视域海景或芽庄市，装备充足的现代服务设备以及热情和经验丰富的人员队伍</p>\r\n\r\n<p>&nbsp;芽庄Poseidon酒店饮食非常丰富以及越南、东方、西方的菜肴在MEDUSA餐厅服务，以豪华温暖的空间这适合举行招待会、生日会并服务代表团。客户也可以选择一个鸡尾酒或咖啡在LOBBY Lounge或从HADES Bar欣赏芽庄市晚上的美景</p>\r\n\r\n<p>芽庄Poseidon酒店饮食非常丰富以及越南、东方、西方的菜肴在MEDUSA餐厅服务，以豪华温暖的空间这适合举行招待会、生日会并服务代表团。客户也可以选择一个鸡尾酒或咖啡在LOBBY Lounge或从HADES Bar欣赏芽庄市晚上的美景</p>', '<p>Poseidon Nha Trangホテルは、美しいNha Trang市の中心部に非常に便利な場所であるTran Quang Khai通り沿いに位置し、鉄道駅から車でわずか5分、Cam Ranh空港から車で45分だけかかります、ここからお客様は簡単にレストランや、エンターテイメント、ショッピングモールやNha Trangビーチに歩いて行くことができます。客室内のシステムは屋外プール、フィットネスセンター、プールサイドバー、会議室、土産物店や観光情報掲示板とともに設備がシティービューとして装備されており、旅行や出張向けのお客様のための素晴らしい選択肢となります</p>\r\n\r\n<p>Poseidon Nha Trangホテルは、典型的な西洋建築が特徴で、簡単ですが上品、モダンです。ホテルでは、34スーペリアルーム、52シティビュープレミアルーム、21バルコニー付デラックスシービュー、7バルコニー付デラックスシティビュールーム、14シービューラグジュアリールーム、2ポセイドンスイートルーム、7ファミリーエグゼクティブルームを含む138室があります。すべての客室には広々として、、シービューやシティービューで、近代的な設備が整って、サービスが優れて、熱心で経験豊富なスタッフをもっています</p>\r\n\r\n<p>Poseidon Nha Trangホテルでの料理は、誕生日パーティー、宴会を行うために適切な場所であるMEDUSAレストランにおいて提供されておるベトナム、東洋と西洋の代表的な料理として多様です。お客様は、ロビーラウンジバーでの出会いにカクテルやコーヒーを選ぶ又は、HADES Barから夜に都市生活を見ることができます。</p>\r\n\r\n<p>便利な地理的位置で高品質なインフラやユニークなサービスがある場所として、ニャチャン・ポイセドンホテルは旅客が信頼できるところになる為、ニャチャンに旅行するときに旅客の最高な選択のです。</p>', 'z3445949308255_0b4c7d08b1e047ca88557546a0888e87.jpg', '/poseidon-experience/about-us', NULL, '2022-07-02 02:56:34'),
(2, 'VỊ TRÍ', 'Nằm ngay giữa khu trung tâm sầm uất, POSEIDON NHA TRANG HOTEL cách bờ biển Nha Trang xinh đẹp chưa đầy 3 phút tản bộ, cách nhà ga trung tâm 5 phút chạy xe và cách sân bay Cam Ranh khoảng 45 phút chạy xe. Từ khách sạn, rất thuận tiện để du khách đi tham qu', 'Forty minutes by road from Cam Ranh Airport and 3 minutes from Nha Trang Station; Poseidon Nha Trang Hotel is located close by Nha Trang beach – just a couple of minutes’ walking – and near the City’s square, convenient for visiting tourist sites and shop', 'Расположенная в переполненном центре, отель POSEIDON NHA TRANG находится в менее 3 минутах от красивого пляжа Нячанг, в 5 минутах от центрального железнодорожного вокзала Нячанга и в 45 минутах от аэропорта Камрань. Из отеля туристы могут удобно добиратьс', '位于繁荣昌盛的中心，POSEIDON NHA TRANG HOTEL离美丽芽庄海域不到3分走路，离中心火车站5分开车并离Cam Ranh机场约45分开车，从酒店游客便于参观芽庄市内旅游点、离娱乐-购物中心如芽庄 Center, 西方人区域、晚上市场、餐厅、酒吧、俱乐部、超市近', '位于繁荣昌盛的中心，POSEIDON NHA TRANG HOTEL离美丽芽庄海域不到3分走路，离中心火车站5分开车并离Cam Ranh机场约45分开车，从酒店游客便于参观芽庄市内旅游点、离娱乐-购物中心如芽庄 Center, 西方人区域、晚上市场、餐厅、酒吧、俱乐部、超市近', '賑やかな繁華街に位置して、POSEIDON NHA TRANGホテルは、Nha Trangビーチより歩いて3文未満の距離に位置して、中心駅より自動車で5分の距離に位置して、Cam Ranh空港より45分ぐらいの距離に位置します。。ホテルから、Nha Trangセンター、外国街、ナイトマーケット、レストラン、バー、クラブ、スーパーマーケットなどの市内観光スポット、エンターテイメントセンター、ショッピングセンターなどへの訪問に便利です。', 'view1.jpg', '/poseidon-experience/location', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_18_075303_contacts', 1),
(6, '2022_06_24_101309_create_table_introduce_table', 2),
(7, '2022_06_27_082056_create_table_room_table', 3),
(8, '2022_06_28_100253_create_service', 4),
(9, '2022_07_02_084058_create_table_dinning_table', 5),
(10, '2022_07_02_084150_create_table_special_table', 5),
(11, '2022_07_02_084230_create_table_explore_table', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `room`
--

CREATE TABLE `room` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_vi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_ru` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_kr` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_cn` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_jp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_vi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_ru` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_kr` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_cn` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_jp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `room`
--

INSERT INTO `room` (`id`, `title`, `detail_vi`, `detail_en`, `detail_ru`, `detail_kr`, `detail_cn`, `detail_jp`, `content_vi`, `content_en`, `content_ru`, `content_kr`, `content_cn`, `content_jp`, `photo`, `created_at`, `updated_at`, `slug`) VALUES
(4, 'Superior Room', '<p>Số ph&ograve;ng : 34</p>\r\n\r\n<p>Diện t&iacute;ch: 28 m2</p>\r\n\r\n<p>Đặc điểm:&nbsp;c&oacute; ban c&ocirc;ng, hướng th&agrave;nh phố, bồn tắm đứng</p>\r\n\r\n<p>Loại giường: Double / Twin</p>', '<p>No. of rooms : 34</p>\r\n\r\n<p>Area: 28 m2</p>\r\n\r\n<p>Description:&nbsp;cityview with balcony, Bathroom with shower</p>\r\n\r\n<p>Type bed: Double / Twin</p>', '<p>Число номеров: 34</p>\r\n\r\n<p>Площадь: 28 m2</p>\r\n\r\n<p>Особенности:&nbsp;Душевая ванна, наличие балкона, вид на город</p>\r\n\r\n<p>Тип кровати: Double / Twin</p>', '<p>객실 수 : 34</p>\r\n\r\n<p>면적: 28 m2</p>\r\n\r\n<p>특징:</p>\r\n\r\n<p>침대 타입: Double / Twin</p>', '<p>房数 : 34</p>\r\n\r\n<p>面积: 28 m2</p>\r\n\r\n<p>特点:&nbsp;一个阳台、立式浴缸，视域芽庄市</p>\r\n\r\n<p>床类: Double / Twin</p>', '<p>ルーム数: 34</p>\r\n\r\n<p>面積: 28 m2</p>\r\n\r\n<p>特徴:&nbsp;シャワー、バルコニー、シティービュー</p>\r\n\r\n<p>ベッドタイプ: Double / Twin</p>', '<p>POSEIDON NHA TRANG HOTEL c&oacute; 34 ph&ograve;ng Superior hướng th&agrave;nh phố.</p>\r\n\r\n<p>Ph&ograve;ng Superior c&oacute; diện t&iacute;ch 28 m2, s&agrave;n gỗ cao cấp, thiết kế ấm c&uacute;ng, trang thiết bị tiện nghi hiện đại như Tivi LCD 40 inch, quầy mini bar, k&eacute;t sắt, điều h&ograve;a, wifi miễn ph&iacute;. Tất cả c&aacute;c ph&ograve;ng đều c&oacute; ban c&ocirc;ng hướng th&agrave;nh phố.</p>\r\n\r\n<p>Trang thiết bị trong ph&ograve;ng:</p>\r\n\r\n<ul>\r\n	<li>Tivi LCD 40 inch kết nối truyền h&igrave;nh c&aacute;p với 25 k&ecirc;nh giải tr&iacute;</li>\r\n	<li>Hệ thống điều h&ograve;a ri&ecirc;ng trong ph&ograve;ng.</li>\r\n	<li>K&eacute;t sắt c&aacute; nh&acirc;n.</li>\r\n	<li>Internet kh&ocirc;ng d&acirc;y tốc độ cao.</li>\r\n	<li>Mini bar.</li>\r\n	<li>Ấm đun nước si&ecirc;u tốc.</li>\r\n	<li>B&agrave;n l&agrave;m việc.</li>\r\n	<li>M&aacute;y sấy t&oacute;c.</li>\r\n	<li>M&aacute;y pha tr&agrave; v&agrave; c&agrave; ph&ecirc;</li>\r\n	<li>Nước suối miễn ph&iacute; mỗi ng&agrave;y.</li>\r\n	<li>Ph&ograve;ng tắm ri&ecirc;ng biệt với c&aacute;c trang thiết bị hiện đại.</li>\r\n	<li>&Aacute;o cho&agrave;ng tắm, d&eacute;p đi trong ph&ograve;ng</li>\r\n	<li>Điện thoại quốc tế.</li>\r\n	<li>Hệ thống b&aacute;o ch&aacute;y</li>\r\n	<li>N&ocirc;i trẻ em theo y&ecirc;u cầu .</li>\r\n</ul>', '<p>At POSEIDON NHA TRANG HOTEL, there are 34 Superior Cityview .</p>\r\n\r\n<p>The 28 square meter Superior room has wooden floor, cozy designed, fully equipped with modern facilities, such as LCD TV 40 inch, mini bar, private safety box, air conditioning, free wifi. All room with Balcony city view.</p>\r\n\r\n<p>Facilities:</p>\r\n\r\n<ul>\r\n	<li>40 inch LCD and cable television with 25 entertainment channels</li>\r\n	<li>Individually controlled air conditioning</li>\r\n	<li>Personal safe box</li>\r\n	<li>Free in room high speed wireless internet access</li>\r\n	<li>Fully stocked mini bar</li>\r\n	<li>Kettle</li>\r\n	<li>Work desk</li>\r\n	<li>Hairdryer</li>\r\n	<li>Coffee and tea making facilities</li>\r\n	<li>Daily mineral water</li>\r\n	<li>Private bath room with bathrobe and luxurious amenities</li>\r\n	<li>Telephone with IDD lines</li>\r\n	<li>Smoke detector and sprinkler system</li>\r\n	<li>Baby cot upon request</li>\r\n</ul>', '<p>POSEIDON NHA TRANG HOTEL имеет 34 номера Superior с видом на город.</p>\r\n\r\n<p>Номер Superior имеет площадь 28 м2, высококачественный деревянный пол, теплый дизайн, современное и удобное оборудование, такое как LCD телевизор 40 inch, минибар, сейф, кондиционер, бесплатная WIFI. Все номера имеют балкон с видом на город</p>\r\n\r\n<p>Удобства в номере:</p>\r\n\r\n<ul>\r\n	<li>LCD телевизор 40 inch с подключением с 25 развлекательными каналами кабельного телевидения</li>\r\n	<li>Отдельная система кондиционирования воздуха в номере</li>\r\n	<li>Личный сейф.</li>\r\n	<li>Высокоскоростной беспроводной доступ в Интернет.</li>\r\n	<li>Минибар.</li>\r\n	<li>Сверхскоростный водонагреватель</li>\r\n	<li>Рабочий стол.</li>\r\n	<li>Фен для волос.</li>\r\n	<li>Машина для приготовления чая и кофе</li>\r\n	<li>Ежедневная бесплатная минеральная вода</li>\r\n	<li>Отдельная ванная комната с современными удобствами.</li>\r\n	<li>Халаты, тапочки</li>\r\n	<li>Международный телефон</li>\r\n	<li>Система пожарной сигнализации</li>\r\n	<li>Детская кроватка по запросу.</li>\r\n</ul>', '<p>POSEIDON NHA TRANG HOTEL는 도시 방향의 Superior 객실이 34개 있다.</p>\r\n\r\n<p>POSEIDON NHA TRANG HOTEL는 도시 방향의 Superior 객실이 34개 있다. Superior 객실은 28 m2의 면적이 있고 고급스러운 나무 바닥, 편안한 디자인이 있고 40 인치 LCD TV, 미니 바, 금고, 에어컨, 무료 와이파이 등 현대적인 시설이 있다. 모든 객실은 도시를 내려다 보이는 발코니가 있다.</p>\r\n\r\n<p>객실에 있는 장비는 다음과 같다:</p>\r\n\r\n<ul>\r\n	<li>25개 엔터테인먼트 채널이 있는 케이블 텔레비전의 40인치 LCD TV</li>\r\n	<li>객실 안에 있는 전용 에어컨 시스팀.</li>\r\n	<li>개인 금고.</li>\r\n	<li>고속 무선 인터넷.</li>\r\n	<li>미니 바.</li>\r\n	<li>고속 온수 히터.</li>\r\n	<li>책상.</li>\r\n	<li>헤어 드라이어.</li>\r\n	<li>차와 커피 기기</li>\r\n	<li>매일 무료 생수.</li>\r\n	<li>현대적인 시설을 갖춘 별도의 욕실.</li>\r\n	<li>목욕 가운, 슬리퍼.</li>\r\n	<li>국제 전화.</li>\r\n	<li>화재 경보 시스템.</li>\r\n	<li>요청에 따른 유아용 침대.</li>\r\n</ul>', '<p>POSEIDON NHA TRANG HOTEL共有34个视域芽庄市的Superior房</p>\r\n\r\n<p>Superior房 的面积28 m2, 高级木地板、现代温暖设计、现代装设备如Tivi LCD 40 inch电视机, 迷你吧，保险箱，空调，免费WiFi。所有Deluxe Sea View房前面都有芽庄市视域的阳台</p>\r\n\r\n<p>房内装设备包括:</p>\r\n\r\n<ul>\r\n	<li>LCD 40 inch电视机与有线电视连接共有25个娱乐频道</li>\r\n	<li>独立空调系统</li>\r\n	<li>个人保险箱.</li>\r\n	<li>高速度无线网络.</li>\r\n	<li>迷你吧.</li>\r\n	<li>电水壶.</li>\r\n	<li>工作台.</li>\r\n	<li>吹风机.</li>\r\n	<li>茶咖啡机</li>\r\n	<li>每天免费矿泉水.</li>\r\n	<li>独立浴室以及现代装设备.</li>\r\n	<li>浴袍，拖鞋</li>\r\n	<li>长途电话</li>\r\n	<li>警报系统</li>\r\n	<li>婴儿床如要求</li>\r\n</ul>', '<p>POSEIDON NHA TRANG ホテルはシティービュースペリオルルームの34室があります。</p>\r\n\r\n<p>スペリオルルームは、面積が28平方メートルで、木の床が高級だし、設計が居心地の良いし、40インチ液晶テレビ、ミニバー、金庫、エアコン、無料のWiFi、バスタブなどのモダンな設備が備えています。全ての客室にはバルコニー付き、シティービューです。</p>\r\n\r\n<p>客室内に装置</p>\r\n\r\n<ul>\r\n	<li>25エンターテイメントチャンネル付きケーブルテレビ接続する40インチ液晶テレビ</li>\r\n	<li>部屋に個別の空調システム。</li>\r\n	<li>セーフティボックス。</li>\r\n	<li>高速無線インターネット。</li>\r\n	<li>ミニバー。</li>\r\n	<li>温水ヒーター。</li>\r\n	<li>デスク。</li>\r\n	<li>ヘアドライヤー。</li>\r\n	<li>お茶コーヒー入れ機</li>\r\n	<li>毎日無料のミネラルウォーター。</li>\r\n	<li>近代的な設備を備えた個別のバスルーム。</li>\r\n	<li>バスローブ、スリッパ</li>\r\n	<li>国際電話。</li>\r\n	<li>火災警報システム</li>\r\n	<li>リクエストに応じてベビーベッド。</li>\r\n</ul>', '[\"3.jpg\",\"8.jpg\",\"9.jpg\"]', '2022-06-27 20:09:59', '2022-06-28 02:04:44', 'superior-room'),
(5, 'PREMIER CITYVIEW', '<p>Số ph&ograve;ng : 52</p>\r\n\r\n<p>Diện t&iacute;ch: 30 m2</p>\r\n\r\n<p>Đặc điểm:&nbsp;bồn tắm đứng, hướng th&agrave;nh phố</p>\r\n\r\n<p>Loại giường: Double / Twin</p>', '<p>No. of rooms : 52</p>\r\n\r\n<p>Area: 30 m2</p>\r\n\r\n<p>Description:&nbsp;city view, Bathroom with shower</p>\r\n\r\n<p>Type bed: Double / Twin</p>', '<p>Число номеров: 52</p>\r\n\r\n<p>Площадь: 30 m2</p>\r\n\r\n<p>Особенности:&nbsp;Душевая ванна, вид на город</p>\r\n\r\n<p>Тип кровати: Double / Twin</p>', '<p>객실 수 : 52</p>\r\n\r\n<p>면적: 30 m2</p>\r\n\r\n<p>특징:&nbsp;샤워 욕조, 도시 방향</p>\r\n\r\n<p>침대 타입: Double / Twin</p>', '<p>房数 :52</p>\r\n\r\n<p>面积: 30 m2</p>\r\n\r\n<p>特点:&nbsp;立式浴缸，视域海景</p>\r\n\r\n<p>床类: Double / Twin</p>', '<p>ルーム数: 52</p>\r\n\r\n<p>面積: 30 m2</p>\r\n\r\n<p>特徴:&nbsp;シャワー、バルコニー、シティービュー</p>\r\n\r\n<p>ベッドタイプ: Double / Twin</p>', '<p>POSEIDON NHA TRANG HOTEL c&oacute; 52 ph&ograve;ng Premier hướng th&agrave;nh phố.</p>\r\n\r\n<p>Ph&ograve;ng Premier c&oacute; diện t&iacute;ch 30 m2, s&agrave;n gỗ cao cấp, thiết kế ấm c&uacute;ng, trang thiết bị tiện nghi hiện đại như Tivi LCD 40 inch, quầy mini bar, k&eacute;t sắt, điều h&ograve;a, wifi miễn ph&iacute;, bồn tắm.</p>\r\n\r\n<p>Trang thiết bị trong ph&ograve;ng:</p>\r\n\r\n<ul>\r\n	<li>Tivi LCD 40 inch kết nối truyền h&igrave;nh c&aacute;p với 25 k&ecirc;nh giải tr&iacute;</li>\r\n	<li>Hệ thống điều h&ograve;a ri&ecirc;ng trong ph&ograve;ng.</li>\r\n	<li>K&eacute;t sắt c&aacute; nh&acirc;n.</li>\r\n	<li>Internet kh&ocirc;ng d&acirc;y tốc độ cao.</li>\r\n	<li>Mini bar.</li>\r\n	<li>Ấm đun nước si&ecirc;u tốc.</li>\r\n	<li>B&agrave;n l&agrave;m việc.</li>\r\n	<li>M&aacute;y sấy t&oacute;c.</li>\r\n	<li>M&aacute;y pha tr&agrave; v&agrave; c&agrave; ph&ecirc;</li>\r\n	<li>Nước suối miễn ph&iacute; mỗi ng&agrave;y.</li>\r\n	<li>Ph&ograve;ng tắm ri&ecirc;ng biệt với c&aacute;c trang thiết bị hiện đại.</li>\r\n	<li>&Aacute;o cho&agrave;ng tắm, d&eacute;p đi trong ph&ograve;ng</li>\r\n	<li>Điện thoại quốc tế.</li>\r\n	<li>Hệ thống b&aacute;o ch&aacute;y</li>\r\n	<li>N&ocirc;i trẻ em theo y&ecirc;u cầu .</li>\r\n</ul>', '<p>At POSEIDON NHA TRANG HOTEL, there are 52 Premier Cityview.</p>\r\n\r\n<p>The 30 square meter Superior room has wooden floor, cozy designed, fully equipped with modern facilities, such as LCD TV 40 inch, mini bar, private safety box, air conditioning, free wifi.</p>\r\n\r\n<p>Facilities:</p>\r\n\r\n<ul>\r\n	<li>40 inch LCD and cable television with 25 entertainment channels</li>\r\n	<li>Individually controlled air conditioning</li>\r\n	<li>Personal safe box</li>\r\n	<li>Free in room high speed wireless internet access</li>\r\n	<li>Fully stocked mini bar</li>\r\n	<li>Kettle</li>\r\n	<li>Work desk</li>\r\n	<li>Hairdryer</li>\r\n	<li>Coffee and tea making facilities</li>\r\n	<li>Daily mineral water</li>\r\n	<li>Private bath room with bathrobe and luxurious amenities</li>\r\n	<li>Telephone with IDD lines</li>\r\n	<li>Smoke detector and sprinkler system</li>\r\n	<li>Baby cot upon request</li>\r\n</ul>', '<p>POSEIDON NHA TRANG HOTEL имеет 52 номера Premier с видом на город.</p>\r\n\r\n<p>Номер Premier имеет площадь 30 м2, высококачественный деревянный пол, теплый дизайн, современное и удобное оборудование, такое как LCD телевизор 40 inch, минибар, сейф, кондиционер, бесплатная WIFI, ванна.</p>\r\n\r\n<p>Удобства в номере:</p>\r\n\r\n<ul>\r\n	<li>LCD телевизор 40 inch с подключением с 25 развлекательными каналами кабельного телевидения</li>\r\n	<li>Отдельная система кондиционирования воздуха в номере</li>\r\n	<li>Личный сейф.</li>\r\n	<li>Высокоскоростной беспроводной доступ в Интернет.</li>\r\n	<li>Минибар.</li>\r\n	<li>Сверхскоростный водонагреватель</li>\r\n	<li>Рабочий стол.</li>\r\n	<li>Фен для волос.</li>\r\n	<li>Машина для приготовления чая и кофе</li>\r\n	<li>Ежедневная бесплатная минеральная вода</li>\r\n	<li>Отдельная ванная комната с современными удобствами.</li>\r\n	<li>Халаты, тапочки</li>\r\n	<li>Международный телефон</li>\r\n	<li>Система пожарной сигнализации</li>\r\n	<li>Детская кроватка по запросу.</li>\r\n</ul>', '<p>POSEIDON NHA TRANG HOTEL는 도시 방향의 Premier 객실이 52개 있다.</p>\r\n\r\n<p>Premier객실은 30 m2의 면적이 있고 고급스러운 나무 바닥, 편안한 디자인이 있고 40 인치 LCD TV, 미니 바, 금고, 에어컨, 무료 와이파이 등 현대적인 시설이 있다.</p>\r\n\r\n<p>객실에 있는 장비는 다음과 같다:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>25개 엔터테인먼트 채널이 있는 케이블 텔레비전의 40인치 LCD TV</li>\r\n	<li>객실 안에 있는 전용 에어컨 시스팀.</li>\r\n	<li>개인 금고.</li>\r\n	<li>고속 무선 인터넷.</li>\r\n	<li>미니 바.</li>\r\n	<li>고속 온수 히터.</li>\r\n	<li>책상.</li>\r\n	<li>헤어 드라이어.</li>\r\n	<li>차와 커피 기기</li>\r\n	<li>매일 무료 생수.</li>\r\n	<li>현대적인 시설을 갖춘 별도의 욕실.</li>\r\n	<li>목욕 가운, 슬리퍼.</li>\r\n	<li>국제 전화.</li>\r\n	<li>화재 경보 시스템.</li>\r\n	<li>요청에 따른 유아용 침대.</li>\r\n</ul>', '<p>POSEIDON NHA TRANG HOTEL共有52个视域芽庄市、的Premier房</p>\r\n\r\n<p>Premier房 的面积30 m2, 高级木地板、现代温暖设计、现代装设备如Tivi LCD 40 inch电视机, 迷你吧，保险箱，空调，免费WiFi，浴缸。</p>\r\n\r\n<p>房内装设备包括:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>LCD 40 inch电视机与有线电视连接共有25个娱乐频道</li>\r\n	<li>独立空调系统</li>\r\n	<li>个人保险箱.</li>\r\n	<li>高速度无线网络.</li>\r\n	<li>迷你吧.</li>\r\n	<li>电水壶.</li>\r\n	<li>工作台.</li>\r\n	<li>吹风机.</li>\r\n	<li>茶咖啡机</li>\r\n	<li>每天免费矿泉水.</li>\r\n	<li>独立浴室以及现代装设备.</li>\r\n	<li>浴袍，拖鞋</li>\r\n	<li>长途电话</li>\r\n	<li>警报系统</li>\r\n	<li>婴儿床如要求</li>\r\n</ul>', '<p>POSEIDON NHA TRANG HOTELはシティービュープレミアルームの52室があります。</p>\r\n\r\n<p>プレミアルームは、面積が30平方メートルで、木の床が高級だし、設計が居心地の良いし、40インチ液晶テレビ、ミニバー、金庫、エアコン、無料のWiFi、バスタブなどのモダンな設備が備えています。</p>\r\n\r\n<p>客室内に装置</p>\r\n\r\n<ul>\r\n	<li>25エンターテイメントチャンネル付きケーブルテレビ接続する40インチ液晶テレビ</li>\r\n	<li>部屋に個別の空調システム。</li>\r\n	<li>セーフティボックス。</li>\r\n	<li>高速無線インターネット。</li>\r\n	<li>ミニバー。</li>\r\n	<li>温水ヒーター。</li>\r\n	<li>デスク。</li>\r\n	<li>ヘアドライヤー。</li>\r\n	<li>お茶コーヒー入れ機</li>\r\n	<li>毎日無料のミネラルウォーター。</li>\r\n	<li>近代的な設備を備えた個別のバスルーム。</li>\r\n	<li>バスローブ、スリッパ</li>\r\n	<li>国際電話。</li>\r\n	<li>火災警報システム</li>\r\n	<li>リクエストに応じてベビーベッド。</li>\r\n</ul>', '[\"5.jpg\",\"8.jpg\",\"kw_p dien hinh khach san 4-2.jpg\"]', '2022-06-27 20:21:42', '2022-06-27 20:21:42', 'premier-cityview'),
(7, 'DELUXE CITYVIEW WITH BALCONY', '<p>Số ph&ograve;ng : 28</p>\r\n\r\n<p>Diện t&iacute;ch: 30 m2</p>\r\n\r\n<p>Đặc điểm:&nbsp;bồn tắm đứng, c&oacute; ban c&ocirc;ng, hướng th&agrave;nh phố</p>\r\n\r\n<p>Loại giường: Double / Twin</p>', '<p>No. of rooms : 28</p>\r\n\r\n<p>Area: 30 m2</p>\r\n\r\n<p>Description:&nbsp;city view with balcony, Bathroom with shower</p>\r\n\r\n<p>Type bed: Double / Twin</p>', '<p>Число номеров : 28</p>\r\n\r\n<p>Площадь: 30 m2</p>\r\n\r\n<p>Особенности:&nbsp;Душевая ванна, наличие балкона, вид на город</p>\r\n\r\n<p>Тип кровати: Double / Twin</p>', '<p>객실 수 : 28</p>\r\n\r\n<p>면적: 30 m2</p>\r\n\r\n<p>특징:&nbsp;샤워 욕조, 발코니, 도시 방향</p>\r\n\r\n<p>침대 타입: Double / Twin</p>', '<p>房数: 28</p>\r\n\r\n<p>面积: 30 m2</p>\r\n\r\n<p>特点: 立式浴缸:&nbsp;一个阳台，视域芽庄市</p>\r\n\r\n<p>床类: Double / Twin</p>', '<p>ルーム数: 28</p>\r\n\r\n<p>面積: 30 m2</p>\r\n\r\n<p>特徴:&nbsp;シャワー、バルコニー、シティービュー</p>\r\n\r\n<p>ベッドタイプ: Double / Twin</p>', '<p>POSEIDON NHA TRANG HOTEL c&oacute; 28 ph&ograve;ng Deluxe hướng th&agrave;nh phố c&oacute; Balcony.</p>\r\n\r\n<p>Ph&ograve;ng Deluxe Cityview c&oacute; diện t&iacute;ch 30 m2, s&agrave;n gỗ cao cấp, thiết kế ấm c&uacute;ng, trang thiết bị tiện nghi hiện đại như Tivi LCD 40 inch, quầy mini bar, k&eacute;t sắt, điều h&ograve;a, wifi miễn ph&iacute;, bồn tắm.</p>\r\n\r\n<p>Trang thiết bị trong ph&ograve;ng:</p>\r\n\r\n<ul>\r\n	<li>Tivi LCD 40 inch kết nối truyền h&igrave;nh c&aacute;p với 25 k&ecirc;nh giải tr&iacute;</li>\r\n	<li>Hệ thống điều h&ograve;a ri&ecirc;ng trong ph&ograve;ng.</li>\r\n	<li>K&eacute;t sắt c&aacute; nh&acirc;n.</li>\r\n	<li>Internet kh&ocirc;ng d&acirc;y tốc độ cao.</li>\r\n	<li>Mini bar.</li>\r\n	<li>Ấm đun nước si&ecirc;u tốc.</li>\r\n	<li>B&agrave;n l&agrave;m việc.</li>\r\n	<li>M&aacute;y sấy t&oacute;c.</li>\r\n	<li>M&aacute;y pha tr&agrave; v&agrave; c&agrave; ph&ecirc;</li>\r\n	<li>Nước suối miễn ph&iacute; mỗi ng&agrave;y.</li>\r\n	<li>Ph&ograve;ng tắm ri&ecirc;ng biệt với c&aacute;c trang thiết bị hiện đại.</li>\r\n	<li>&Aacute;o cho&agrave;ng tắm, d&eacute;p đi trong ph&ograve;ng</li>\r\n	<li>Điện thoại quốc tế.</li>\r\n	<li>Hệ thống b&aacute;o ch&aacute;y</li>\r\n	<li>N&ocirc;i trẻ em theo y&ecirc;u cầu .</li>\r\n</ul>', '<p>At POSEIDON NHA TRANG HOTEL, there are 28 Deluxe Cityview with Balcony.</p>\r\n\r\n<p>The 30 square meter Deluxe Cityview has wooden floor, cozy designed, fully equipped with modern facilities, such as LCD TV 40 inch, mini bar, private safety box, air conditioning, free wifi.</p>\r\n\r\n<p>Facilities:</p>\r\n\r\n<ul>\r\n	<li>40 inch LCD and cable television with 25 entertainment channels</li>\r\n	<li>Individually controlled air conditioning</li>\r\n	<li>Personal safe box</li>\r\n	<li>Free in room high speed wireless internet access</li>\r\n	<li>Fully stocked mini bar</li>\r\n	<li>Kettle</li>\r\n	<li>Work desk</li>\r\n	<li>Hairdryer</li>\r\n	<li>Coffee and tea making facilities</li>\r\n	<li>Daily mineral water</li>\r\n	<li>Private bath room with bathrobe and luxurious amenities</li>\r\n	<li>Telephone with IDD lines</li>\r\n	<li>Smoke detector and sprinkler system</li>\r\n	<li>Baby cot upon request</li>\r\n</ul>', '<p>POSEIDON NHA TRANG HOTEL имеет 28 номеров Deluxe с видом на город и с балконом.</p>\r\n\r\n<p>Номер Deluxe Cityview имеет площадь 30 м2, высококачественный деревянный пол, теплый дизайн, современное и удобное оборудование, такое как LCD телевизор 40 inch, минибар, сейф, кондиционер, бесплатная WIFI, ванна.</p>\r\n\r\n<p>Удобства в номере:</p>\r\n\r\n<ul>\r\n	<li>LCD телевизор 40 inch с подключением с 25 развлекательными каналами кабельного телевидения</li>\r\n	<li>Отдельная система кондиционирования воздуха в номере</li>\r\n	<li>Личный сейф.</li>\r\n	<li>Высокоскоростной беспроводной доступ в Интернет.</li>\r\n	<li>Минибар.</li>\r\n	<li>Сверхскоростный водонагреватель</li>\r\n	<li>Рабочий стол.</li>\r\n	<li>Фен для волос.</li>\r\n	<li>Машина для приготовления чая и кофе</li>\r\n	<li>Ежедневная бесплатная минеральная вода</li>\r\n	<li>Отдельная ванная комната с современными удобствами.</li>\r\n	<li>Халаты, тапочки</li>\r\n	<li>Международный телефон</li>\r\n	<li>Система пожарной сигнализации</li>\r\n	<li>Детская кроватка по запросу.</li>\r\n</ul>', '<p>POSEIDON NHA TRANG HOTEL는 발코니가 있는 도시 방향의 Deluxe 객실이 28개 있다.</p>\r\n\r\n<p>Deluxe Cityview 객실은 30 m2의 면적이 있고 고급스러운 나무 바닥, 편안한 디자인이 있고 40 인치 LCD TV, 미니 바, 금고, 에어컨, 무료 와이파이 등 현대적인 시설이 있다.</p>\r\n\r\n<p>객실에 있는 장비는 다음과 같다:：</p>\r\n\r\n<ul>\r\n	<li>25개 엔터테인먼트 채널이 있는 케이블 텔레비전의 40인치 LCD TV</li>\r\n	<li>객실 안에 있는 전용 에어컨 시스팀.</li>\r\n	<li>개인 금고.</li>\r\n	<li>고속 무선 인터넷.</li>\r\n	<li>미니 바.</li>\r\n	<li>고속 온수 히터.</li>\r\n	<li>책상.</li>\r\n	<li>헤어 드라이어.</li>\r\n	<li>차와 커피 기기</li>\r\n	<li>매일 무료 생수.</li>\r\n	<li>현대적인 시설을 갖춘 별도의 욕실.</li>\r\n	<li>목욕 가운, 슬리퍼.</li>\r\n	<li>국제 전화.</li>\r\n	<li>화재 경보 시스템.</li>\r\n	<li>요청에 따른 유아용 침대.</li>\r\n</ul>', '<p>POSEIDON NHA TRANG HOTEL 共有28个视域芽庄市、含Balcony 的Deluxe房.</p>\r\n\r\n<p>Deluxe Cityview房 的面积30 m2, 高级木地板、现代温暖设计、现代装设备如Tivi LCD 40 inch电视机, 迷你吧，保险箱，空调，免费WiFi，浴缸.</p>\r\n\r\n<p>房内装设备包括：</p>\r\n\r\n<ul>\r\n	<li>LCD 40 inch电视机与有线电视连接共有25个娱乐频道</li>\r\n	<li>独立空调系统</li>\r\n	<li>个人保险箱.</li>\r\n	<li>高速度无线网络.</li>\r\n	<li>迷你吧.</li>\r\n	<li>电水壶.</li>\r\n	<li>工作台.</li>\r\n	<li>吹风机.</li>\r\n	<li>茶咖啡机</li>\r\n	<li>每天免费矿泉水.</li>\r\n	<li>独立浴室以及现代装设备.</li>\r\n	<li>浴袍，拖鞋</li>\r\n	<li>长途电话</li>\r\n	<li>警报系统</li>\r\n	<li>婴儿床如要求</li>\r\n</ul>', '<p>POSEIDON NHA TRANG ホテルはバルコニー付シティービューデラックスルームの 28 室があります。</p>\r\n\r\n<p>シティービューデラックスルームは、面積が30平方メートルで、木の床が高級だし、設計が居心地の良いし、40インチ液晶テレビ、ミニバー、金庫、エアコン、無料のWiFi、バスタブなどのモダンな設備が備えています。</p>\r\n\r\n<p>客室内に装置</p>\r\n\r\n<ul>\r\n	<li>25エンターテイメントチャンネル付きケーブルテレビ接続する40インチ液晶テレビ</li>\r\n	<li>部屋に個別の空調システム。</li>\r\n	<li>セーフティボックス。</li>\r\n	<li>高速無線インターネット。</li>\r\n	<li>ミニバー。</li>\r\n	<li>温水ヒーター。</li>\r\n	<li>デスク。</li>\r\n	<li>ヘアドライヤー。</li>\r\n	<li>お茶コーヒー入れ機</li>\r\n	<li>毎日無料のミネラルウォーター。</li>\r\n	<li>近代的な設備を備えた個別のバスルーム。</li>\r\n	<li>バスローブ、スリッパ</li>\r\n	<li>国際電話。</li>\r\n	<li>火災警報システム</li>\r\n	<li>リクエストに応じてベビーベッド。</li>\r\n</ul>', '[\"1.jpg\",\"10.jpg\",\"11.jpg\"]', '2022-06-27 20:41:44', '2022-06-27 20:41:44', 'deluxe-cityview-with-balcony'),
(8, 'Luxury Cityview', '<p>Số ph&ograve;ng : 14</p>\r\n\r\n<p>Diện t&iacute;ch: 30 m2</p>\r\n\r\n<p>Đặc điểm:&nbsp;c&oacute; bồn tắm nằm, hướng th&agrave;nh phố</p>\r\n\r\n<p>Loại giường: King size bed</p>', '<p>No. of rooms : 14</p>\r\n\r\n<p>Area: 30 m2</p>\r\n\r\n<p>Description:&nbsp;Cityview, Bathroom with bathtub</p>\r\n\r\n<p>Type bed: King size bed</p>', '<p>Число номеров : 14</p>\r\n\r\n<p>Площадь: 30 m2</p>\r\n\r\n<p>Особенности:&nbsp;Ванна, Номера с видом на город</p>\r\n\r\n<p>Тип кровати: King size bed</p>', '<p>객실 수 : 14</p>\r\n\r\n<p>면적: 30 m2</p>\r\n\r\n<p>특징:&nbsp;욕조, 도시가 내려다 보이는</p>\r\n\r\n<p>침대 타입: King size bed</p>', '<p>房数 14</p>\r\n\r\n<p>面积: 30 m2</p>\r\n\r\n<p>特点:&nbsp;卧式浴缸，俯瞰城市</p>\r\n\r\n<p>床类: King size bed</p>', '<p>ルーム数: 14</p>\r\n\r\n<p>面積: 30 m2</p>\r\n\r\n<p>特徴:&nbsp;バスタブ、市内を見下ろす</p>\r\n\r\n<p>ベッドタイプ: King size bed</p>', '<p>POSEIDON NHA TRANG HOTEL c&oacute; 14 ph&ograve;ng Luxury hướng th&agrave;nh phố.</p>\r\n\r\n<p>Ph&ograve;ng Luxury hướng th&agrave;nh phố c&oacute; diện t&iacute;ch 30 m2, s&agrave;n gỗ cao cấp, thiết kế ấm c&uacute;ng, trang thiết bị tiện nghi hiện đại như Tivi LCD 40 inch, quầy mini bar, k&eacute;t sắt, điều h&ograve;a, wifi miễn ph&iacute;.</p>\r\n\r\n<p>Trang thiết bị trong ph&ograve;ng:</p>\r\n\r\n<ul>\r\n	<li>Tivi LCD 40 inch kết nối truyền h&igrave;nh c&aacute;p với 25 k&ecirc;nh giải tr&iacute;</li>\r\n	<li>Hệ thống điều h&ograve;a ri&ecirc;ng trong ph&ograve;ng.</li>\r\n	<li>K&eacute;t sắt c&aacute; nh&acirc;n.</li>\r\n	<li>Internet kh&ocirc;ng d&acirc;y tốc độ cao.</li>\r\n	<li>Mini bar.</li>\r\n	<li>Ấm đun nước si&ecirc;u tốc.</li>\r\n	<li>B&agrave;n l&agrave;m việc.</li>\r\n	<li>M&aacute;y sấy t&oacute;c.</li>\r\n	<li>M&aacute;y pha tr&agrave; v&agrave; c&agrave; ph&ecirc;</li>\r\n	<li>Nước suối miễn ph&iacute; mỗi ng&agrave;y.</li>\r\n	<li>Bồn tắm nằm</li>\r\n	<li>&Aacute;o cho&agrave;ng tắm, d&eacute;p đi trong ph&ograve;ng</li>\r\n	<li>Điện thoại quốc tế.</li>\r\n	<li>Hệ thống b&aacute;o ch&aacute;y</li>\r\n	<li>N&ocirc;i trẻ em theo y&ecirc;u cầu</li>\r\n</ul>', '<p>At POSEIDON NHA TRANG HOTEL, 14 Luxury City View room,King sized bed.</p>\r\n\r\n<p>The 30 square meter Luxury City View room has wooden floor, cozy designed, fully equipped with modern facilities, such as LCD TV 40 inch, mini bar, private safety box, air conditioning, free wifi.</p>\r\n\r\n<p>Facilities:</p>\r\n\r\n<ul>\r\n	<li>40 inch LCD and cable television with 25 entertainment channels</li>\r\n	<li>Individually controlled air conditioning</li>\r\n	<li>Personal safe box</li>\r\n	<li>Free in room high speed wireless internet access</li>\r\n	<li>Fully stocked mini bar</li>\r\n	<li>Kettle</li>\r\n	<li>Work desk</li>\r\n	<li>Hairdryer</li>\r\n	<li>Coffee and tea making facilities</li>\r\n	<li>Daily mineral water</li>\r\n	<li>Shower &amp; Bathtub</li>\r\n	<li>Telephone with IDD lines</li>\r\n	<li>Smoke detector and sprinkler system</li>\r\n	<li>Baby cot upon request</li>\r\n</ul>', '<p>POSEIDON NHA TRANG HOTEL имеет 14 номеров Luxury Номера с видом на город.</p>\r\n\r\n<p>Номер Luxury hомера с видом на город имеет площадь 30 м2, высококачественный деревянный пол, теплый дизайн, современное и удобное оборудование, такое как LCD телевизор 40 inch, минибар, сейф, кондиционер, бесплатная WIFI.</p>\r\n\r\n<p>Удобства в номере:</p>\r\n\r\n<ul>\r\n	<li>LCD телевизор 40 inch с подключением с 25 развлекательными каналами кабельного телевидения</li>\r\n	<li>Отдельная система кондиционирования воздуха в номере</li>\r\n	<li>Личный сейф.</li>\r\n	<li>Высокоскоростной беспроводной доступ в Интернет.</li>\r\n	<li>Минибар.</li>\r\n	<li>Сверхскоростный водонагреватель</li>\r\n	<li>Рабочий стол.</li>\r\n	<li>Фен для волос.</li>\r\n	<li>Машина для приготовления чая и кофе</li>\r\n	<li>Ежедневная бесплатная минеральная вода</li>\r\n	<li>Ванна.</li>\r\n	<li>Халаты, тапочки</li>\r\n	<li>Международный телефон</li>\r\n	<li>Система пожарной сигнализации</li>\r\n	<li>Детская кроватка по запросу.</li>\r\n</ul>', '<p>POSEIDON NHA TRANG HOTEL도시가 내려다 보이는 Luxury객실이 14개 있다.</p>\r\n\r\n<p>Luxury객실은 30 m2의 면적이 있고 고급스러운 나무 바닥, 편안한 디자인이 있고 40 인치 LCD TV, 미니 바, 금고, 에어컨, 무료 와이파이 등 현대적인 시설이 있다.</p>\r\n\r\n<p>객실에 있는 장비는 다음과 같다:</p>\r\n\r\n<ul>\r\n	<li>25개 엔터테인먼트 채널이 있는 케이블 텔레비전의 40인치 LCD TV</li>\r\n	<li>객실 안에 있는 전용 에어컨 시스팀.</li>\r\n	<li>개인 금고.</li>\r\n	<li>고속 무선 인터넷.</li>\r\n	<li>미니 바.</li>\r\n	<li>고속 온수 히터.</li>\r\n	<li>책상.</li>\r\n	<li>헤어 드라이어.</li>\r\n	<li>차와 커피 기기</li>\r\n	<li>매일 무료 생수.</li>\r\n	<li>현대적인 시설을 갖춘 별도의 욕실.</li>\r\n	<li>목욕 가운, 슬리퍼.</li>\r\n	<li>국제 전화.</li>\r\n	<li>화재 경보 시스템.</li>\r\n	<li>요청에 따른 유아용 침대.</li>\r\n</ul>', '<p>POSEIDON NHA TRANG HOTEL共有14俯瞰城市 、含Balcony 的Luxury City View房</p>\r\n\r\n<p>Luxury City View房的面积30 m2, 高级木地板、现代温暖设计、现代装设备如Tivi LCD 40 inch电视机, 迷你吧，保险箱，空调，免费WiFi</p>\r\n\r\n<p>T房内装设备包括:</p>\r\n\r\n<ul>\r\n	<li>LCD 40 inch电视机与有线电视连接共有25个娱乐频道</li>\r\n	<li>独立空调系统</li>\r\n	<li>个人保险箱.</li>\r\n	<li>高速度无线网络.</li>\r\n	<li>迷你吧.</li>\r\n	<li>电水壶.</li>\r\n	<li>工作台.</li>\r\n	<li>吹风机.</li>\r\n	<li>茶咖啡机</li>\r\n	<li>每天免费矿泉水.</li>\r\n	<li>独立浴室以及现代装设备.</li>\r\n	<li>浴袍，拖鞋</li>\r\n	<li>长途电话</li>\r\n	<li>警报系统</li>\r\n	<li>婴儿床如要求</li>\r\n</ul>', '<p>POSEIDON NHA TRANG ホテルは市内を見下ろすラグジュアリールームの14室があります。</p>\r\n\r\n<p>市内を見下ろす ラグジュアリールームは、面積が30平方メートルで、木の床が高級だし、設計が居心地の良いし、40インチ液晶テレビ、ミニバー、金庫、エアコン、無料のWiFiなどのモダンな設備が備えています。</p>\r\n\r\n<p>客室内に装置</p>\r\n\r\n<ul>\r\n	<li>25エンターテイメントチャンネル付きケーブルテレビ接続する40インチ液晶テレビ</li>\r\n	<li>部屋に個別の空調システム。</li>\r\n	<li>セーフティボックス。</li>\r\n	<li>高速無線インターネット。</li>\r\n	<li>ミニバー。</li>\r\n	<li>温水ヒーター。</li>\r\n	<li>デスク。</li>\r\n	<li>ヘアドライヤー。</li>\r\n	<li>お茶コーヒー入れ機</li>\r\n	<li>毎日無料のミネラルウォーター。</li>\r\n	<li>バスタブ。</li>\r\n	<li>バスローブ、スリッパ</li>\r\n	<li>国際電話。</li>\r\n	<li>火災警報システム</li>\r\n	<li>リクエストに応じてベビーベッド。</li>\r\n</ul>', '[\"1.jpg\",\"10.jpg\",\"11.jpg\"]', '2022-06-27 20:44:59', '2022-06-27 20:44:59', 'luxury-cityview'),
(9, 'Poseidon Suite', '<p>Số ph&ograve;ng : 2</p>\r\n\r\n<p>Diện t&iacute;ch: 60 m2</p>\r\n\r\n<p>Đặc điểm:&nbsp;c&oacute; bồn tắm nằm, ban c&ocirc;ng, hướng biển</p>\r\n\r\n<p>Loại giường: Double</p>', '<p>No. of rooms : 2</p>\r\n\r\n<p>Area: 60 m2</p>\r\n\r\n<p>Description:&nbsp;Seaview with balcony, Bathroom with bathtub</p>\r\n\r\n<p>Type bed: Double</p>', '<p>Число номеров : 2</p>\r\n\r\n<p>Площадь: 60 m2</p>\r\n\r\n<p>Особенности:&nbsp;Ванна, наличие балкона, вид на море</p>\r\n\r\n<p>Тип кровати: Double</p>', '<p>객실 수 : 2</p>\r\n\r\n<p>면적: 60 m2</p>\r\n\r\n<p>특징:&nbsp;욕조, 발코니, 바다 전망</p>\r\n\r\n<p>침대 타입: Double</p>', '<p>房数: 2</p>\r\n\r\n<p>面积: 60 m2</p>\r\n\r\n<p>特点:&nbsp;卧式浴缸，阳台，视域海景</p>\r\n\r\n<p>床类: Double</p>', '<p>ルーム数: 2</p>\r\n\r\n<p>面積: 60 m2</p>\r\n\r\n<p>特徴:&nbsp;バスタブ、シービュー</p>\r\n\r\n<p>ベッドタイプ: Double</p>', '<p>POSEIDON NHA TRANG HOTEL c&oacute; 2 ph&ograve;ng Poseidon Suite view biển.</p>\r\n\r\n<p>Ph&ograve;ng Suite c&oacute; diện t&iacute;ch 60 m2, s&agrave;n gỗ cao cấp, thiết kế ấm c&uacute;ng, trang thiết bị tiện nghi hiện đại như Tivi LCD 40 inch, quầy mini bar, k&eacute;t sắt, điều h&ograve;a, wifi miễn ph&iacute;.</p>\r\n\r\n<p>Trang thiết bị trong ph&ograve;ng:</p>\r\n\r\n<ul>\r\n	<li>Tivi LCD 40 inch kết nối truyền h&igrave;nh c&aacute;p với 25 k&ecirc;nh giải tr&iacute;</li>\r\n	<li>Hệ thống điều h&ograve;a ri&ecirc;ng trong ph&ograve;ng.</li>\r\n	<li>K&eacute;t sắt c&aacute; nh&acirc;n.</li>\r\n	<li>Internet kh&ocirc;ng d&acirc;y tốc độ cao.</li>\r\n	<li>Mini bar.</li>\r\n	<li>Ấm đun nước si&ecirc;u tốc.</li>\r\n	<li>B&agrave;n l&agrave;m việc.</li>\r\n	<li>M&aacute;y sấy t&oacute;c.</li>\r\n	<li>M&aacute;y pha tr&agrave; v&agrave; c&agrave; ph&ecirc;</li>\r\n	<li>Nước suối miễn ph&iacute; mỗi ng&agrave;y.</li>\r\n	<li>Bồn Tắm nằm.</li>\r\n	<li>&Aacute;o cho&agrave;ng tắm, d&eacute;p đi trong ph&ograve;ng</li>\r\n	<li>Điện thoại quốc tế.</li>\r\n	<li>Hệ thống b&aacute;o ch&aacute;y</li>\r\n	<li>N&ocirc;i trẻ em theo y&ecirc;u cầu .</li>\r\n</ul>', '<p>At POSEIDON NHA TRANG HOTEL, there are 2 Poseidon Suite Sea View.</p>\r\n\r\n<p>The 60 square meter Suite room has wooden floor, cozy designed, fully equipped with modern facilities, such as LCD TV 40 inch, mini bar, private safety box, air conditioning, free wifi.</p>\r\n\r\n<p>Facilities:</p>\r\n\r\n<ul>\r\n	<li>40 inch LCD and cable television with 25 entertainment channels</li>\r\n	<li>Individually controlled air conditioning</li>\r\n	<li>Personal safe box</li>\r\n	<li>Free in room high speed wireless internet access</li>\r\n	<li>Fully stocked mini bar</li>\r\n	<li>Kettle</li>\r\n	<li>Work desk</li>\r\n	<li>Hairdryer</li>\r\n	<li>Coffee and tea making facilities</li>\r\n	<li>Daily mineral water</li>\r\n	<li>Shower &amp; Bathtub</li>\r\n	<li>Telephone with IDD lines</li>\r\n	<li>Smoke detector and sprinkler system</li>\r\n	<li>Baby cot upon request</li>\r\n</ul>', '<p>POSEIDON NHA TRANG HOTEL имеет 2 номера Poseidon Suite с видом на море.</p>\r\n\r\n<p>Номер Poseidon Suite имеет площадь 60 м2, высококачественный деревянный пол, теплый дизайн, современное и удобное оборудование, такое как LCD телевизор 40 inch, минибар, сейф, кондиционер, бесплатная WIFI.</p>\r\n\r\n<p>Удобства в номере:</p>\r\n\r\n<ul>\r\n	<li>LCD телевизор 40 inch с подключением с 25 развлекательными каналами кабельного телевидения</li>\r\n	<li>Отдельная система кондиционирования воздуха в номере</li>\r\n	<li>Личный сейф.</li>\r\n	<li>Высокоскоростной беспроводной доступ в Интернет.</li>\r\n	<li>Минибар.</li>\r\n	<li>Сверхскоростный водонагреватель</li>\r\n	<li>Рабочий стол.</li>\r\n	<li>Фен для волос.</li>\r\n	<li>Машина для приготовления чая и кофе</li>\r\n	<li>Ежедневная бесплатная минеральная вода</li>\r\n	<li>Ванна.</li>\r\n	<li>Халаты, тапочки</li>\r\n	<li>Международный телефон</li>\r\n	<li>Система пожарной сигнализации</li>\r\n	<li>Детская кроватка по запросу.</li>\r\n</ul>', '<p>POSEIDON NHA TRANG HOTEL는 바다 전망의 Poseidon Suite 객실이 2개 있다.</p>\r\n\r\n<p>Suite객실은 60 m2의 면적이 있고 고급스러운 나무 바닥, 편안한 디자인이 있고 40 인치 LCD TV, 미니 바, 금고, 에어컨, 무료 와이파이 등 현대적인 시설이 있다.</p>\r\n\r\n<p>객실에 있는 장비는 다음과 같다:</p>\r\n\r\n<ul>\r\n	<li>25개 엔터테인먼트 채널이 있는 케이블 텔레비전의 40인치 LCD TV</li>\r\n	<li>객실 안에 있는 전용 에어컨 시스팀.</li>\r\n	<li>개인 금고.</li>\r\n	<li>고속 무선 인터넷.</li>\r\n	<li>미니 바.</li>\r\n	<li>고속 온수 히터.</li>\r\n	<li>책상.</li>\r\n	<li>헤어 드라이어.</li>\r\n	<li>차와 커피 기기</li>\r\n	<li>매일 무료 생수.</li>\r\n	<li>현대적인 시설을 갖춘 별도의 욕실.</li>\r\n	<li>목욕 가운, 슬리퍼.</li>\r\n	<li>국제 전화.</li>\r\n	<li>화재 경보 시스템.</li>\r\n	<li>요청에 따른 유아용 침대.</li>\r\n</ul>', '<p>POSEIDON NHA TRANG HOTEL 共有2个视域海景的 Poseidon Suite 房</p>\r\n\r\n<p>Suite房 的面积60 m2, 高级木地板、现代温暖设计、现代装设备如Tivi LCD 40 inch电视机, 迷你吧，保险箱，空调，免费WiFi，。</p>\r\n\r\n<p>房内装设备包括:</p>\r\n\r\n<ul>\r\n	<li>LCD 40 inch电视机与有线电视连接共有25个娱乐频道</li>\r\n	<li>独立空调系统</li>\r\n	<li>个人保险箱.</li>\r\n	<li>高速度无线网络.</li>\r\n	<li>迷你吧.</li>\r\n	<li>电水壶.</li>\r\n	<li>工作台.</li>\r\n	<li>吹风机.</li>\r\n	<li>茶咖啡机</li>\r\n	<li>每天免费矿泉水.</li>\r\n	<li>独立浴室以及现代装设备.</li>\r\n	<li>浴袍，拖鞋</li>\r\n	<li>长途电话</li>\r\n	<li>警报系统</li>\r\n	<li>婴儿床如要求</li>\r\n</ul>', '<p>POSEIDON NHA TRANG HOTELはシービューポセイドンスイートルームの14室があります。</p>\r\n\r\n<p>ポセイドンスイートルームは、面積が60平方メートルで、木の床が高級だし、設計が居心地の良いし、40インチ液晶テレビ、ミニバー、金庫、エアコン、無料のWiFiなどのモダンな設備が備えています。</p>\r\n\r\n<p>客室内に装置</p>\r\n\r\n<ul>\r\n	<li>25エンターテイメントチャンネル付きケーブルテレビ接続する40インチ液晶テレビ</li>\r\n	<li>部屋に個別の空調システム。</li>\r\n	<li>セーフティボックス。</li>\r\n	<li>高速無線インターネット。</li>\r\n	<li>ミニバー。</li>\r\n	<li>温水ヒーター。</li>\r\n	<li>デスク。</li>\r\n	<li>ヘアドライヤー。</li>\r\n	<li>お茶コーヒー入れ機</li>\r\n	<li>毎日無料のミネラルウォーター。</li>\r\n	<li>バスタブ。</li>\r\n	<li>バスローブ、スリッパ</li>\r\n	<li>国際電話。</li>\r\n	<li>火災警報システム</li>\r\n	<li>リクエストに応じてベビーベッド。</li>\r\n</ul>', '11.jpg', '2022-06-27 20:59:34', '2022-06-27 20:59:34', 'poseidon-suite'),
(10, 'FAMILY EXECUTIVE', '<p>Số ph&ograve;ng : 7</p>\r\n\r\n<p>Diện t&iacute;ch: 35 m2</p>\r\n\r\n<p>Đặc điểm:&nbsp;bồn tắm đứng, c&oacute; ban c&ocirc;ng, hướng th&agrave;nh phố</p>\r\n\r\n<p>Loại giường: Double / Twin</p>', '<p>No. of rooms : 7</p>\r\n\r\n<p>Area: 35 m2</p>\r\n\r\n<p>Description:&nbsp;city view with balcony, Bathroom with shower</p>\r\n\r\n<p>Type bed: Double / Twin</p>', '<p>Число номеров : 7</p>\r\n\r\n<p>Площадь: 35 m2</p>\r\n\r\n<p>Особенности:&nbsp;Душевая ванна, наличие балкона, вид на город</p>\r\n\r\n<p>Тип кровати: Double / Twin</p>', '<p>객실 수: 7</p>\r\n\r\n<p>면적: 35 m2</p>\r\n\r\n<p>특징:&nbsp;샤워 욕조, 발코니, 도시 방향</p>\r\n\r\n<p>침대 타입: Double / Twin</p>', '<p>房数 : 7</p>\r\n\r\n<p>面积: 35 m2</p>\r\n\r\n<p>特点:&nbsp;b立式浴缸，一个阳台，视域芽庄市</p>\r\n\r\n<p>床类: Double / Twin</p>', '<p>ルーム数: 7</p>\r\n\r\n<p>面積: 35 m2</p>\r\n\r\n<p>特徴:&nbsp;シャワー、バルコニー、シティービュー</p>\r\n\r\n<p>ベッドタイプ: Double / Twin</p>', '<p>POSEIDON NHA TRANG HOTEL c&oacute; 7 ph&ograve;ng Family Executive view th&agrave;nh phố với Balcony.</p>\r\n\r\n<p>Ph&ograve;ng Family Executive c&oacute; diện t&iacute;ch 35 m2, s&agrave;n gỗ cao cấp, thiết kế ấm c&uacute;ng, trang thiết bị tiện nghi hiện đại như Tivi LCD 40 inch, quầy mini bar, k&eacute;t sắt, điều h&ograve;a, wifi miễn ph&iacute;.</p>\r\n\r\n<p>Trang thiết bị trong ph&ograve;ng:</p>\r\n\r\n<ul>\r\n	<li>Tivi LCD 40 inch kết nối truyền h&igrave;nh c&aacute;p với 25 k&ecirc;nh giải tr&iacute;</li>\r\n	<li>Hệ thống điều h&ograve;a ri&ecirc;ng trong ph&ograve;ng.</li>\r\n	<li>K&eacute;t sắt c&aacute; nh&acirc;n.</li>\r\n	<li>Internet kh&ocirc;ng d&acirc;y tốc độ cao.</li>\r\n	<li>Mini bar.</li>\r\n	<li>Ấm đun nước si&ecirc;u tốc.</li>\r\n	<li>B&agrave;n l&agrave;m việc.</li>\r\n	<li>M&aacute;y sấy t&oacute;c.</li>\r\n	<li>M&aacute;y pha tr&agrave; v&agrave; c&agrave; ph&ecirc;</li>\r\n	<li>Nước suối miễn ph&iacute; mỗi ng&agrave;y.</li>\r\n	<li>Ph&ograve;ng tắm ri&ecirc;ng biệt với c&aacute;c trang thiết bị hiện đại.</li>\r\n	<li>&Aacute;o cho&agrave;ng tắm, d&eacute;p đi trong ph&ograve;ng</li>\r\n	<li>Điện thoại quốc tế.</li>\r\n	<li>Hệ thống b&aacute;o ch&aacute;y</li>\r\n	<li>N&ocirc;i trẻ em theo y&ecirc;u cầu .</li>\r\n</ul>', '<p>At POSEIDON NHA TRANG HOTEL, there are 7 Family Executive City View.</p>\r\n\r\n<p>The 35 square meter Family Executive has wooden floor, cozy designed, fully equipped with modern facilities, such as LCD TV 40 inch, mini bar, private safety box, air conditioning, free wifi.</p>\r\n\r\n<p>Facilities:</p>\r\n\r\n<ul>\r\n	<li>40 inch LCD and cable television with 25 entertainment channels</li>\r\n	<li>Individually controlled air conditioning</li>\r\n	<li>Personal safe box</li>\r\n	<li>Free in room high speed wireless internet access</li>\r\n	<li>Fully stocked mini bar</li>\r\n	<li>Kettle</li>\r\n	<li>Work desk</li>\r\n	<li>Hairdryer</li>\r\n	<li>Coffee and tea making facilities</li>\r\n	<li>Daily mineral water</li>\r\n	<li>Private bath room with bathrobe and luxurious amenities</li>\r\n	<li>Telephone with IDD lines</li>\r\n	<li>Smoke detector and sprinkler system</li>\r\n	<li>Baby cot upon request</li>\r\n</ul>', '<p>POSEIDON NHA TRANG HOTEL имеет 7 номеров&nbsp;<a href=\"http://poseidonnhatranghotel.com/\" target=\"_blank\">Family Executive&nbsp;</a>с видом на город и с балконом.</p>\r\n\r\n<p>Номер Family Executive имеет площадь 35 м2, высококачественный деревянный пол, теплый дизайн, современное и удобное оборудование, такое как LCD телевизор 40 inch, минибар, сейф, кондиционер, бесплатная WIFI.</p>\r\n\r\n<p>Удобства в номере:</p>\r\n\r\n<ul>\r\n	<li>LCD телевизор 40 inch с подключением с 25 развлекательными каналами кабельного телевидения</li>\r\n	<li>Отдельная система кондиционирования воздуха в номере</li>\r\n	<li>Личный сейф.</li>\r\n	<li>Высокоскоростной беспроводной доступ в Интернет.</li>\r\n	<li>Минибар.</li>\r\n	<li>Сверхскоростный водонагреватель</li>\r\n	<li>Рабочий стол.</li>\r\n	<li>Фен для волос.</li>\r\n	<li>Машина для приготовления чая и кофе</li>\r\n	<li>Ежедневная бесплатная минеральная вода</li>\r\n	<li>Отдельная ванная комната с современными удобствами.</li>\r\n	<li>Халаты, тапочки</li>\r\n	<li>Международный телефон</li>\r\n	<li>Система пожарной сигнализации</li>\r\n	<li>Детская кроватка по запросу.</li>\r\n</ul>', '<p>POSEIDON NHA TRANG HOTEL는 발코니가 있는 도시 방향의 Family Executive객실이 7개 있다.</p>\r\n\r\n<p>Family Executive 객실은 35 m2의 면적이 있고 고급스러운 나무 바닥, 편안한 디자인이 있고 40 인치 LCD TV, 미니 바, 금고, 에어컨, 무료 와이파이 등 현대적인 시설이 있다.i</p>\r\n\r\n<p>객실에 있는 장비는 다음과 같다:</p>\r\n\r\n<ul>\r\n	<li>25개 엔터테인먼트 채널이 있는 케이블 텔레비전의 40인치 LCD TV</li>\r\n	<li>객실 안에 있는 전용 에어컨 시스팀.</li>\r\n	<li>개인 금고.</li>\r\n	<li>고속 무선 인터넷.</li>\r\n	<li>미니 바.</li>\r\n	<li>고속 온수 히터.</li>\r\n	<li>책상.</li>\r\n	<li>헤어 드라이어.</li>\r\n	<li>차와 커피 기기</li>\r\n	<li>매일 무료 생수.</li>\r\n	<li>현대적인 시설을 갖춘 별도의 욕실.</li>\r\n	<li>목욕 가운, 슬리퍼.</li>\r\n	<li>국제 전화.</li>\r\n	<li>화재 경보 시스템.</li>\r\n	<li>요청에 따른 유아용 침대.</li>\r\n</ul>', '<p>POSEIDON NHA TRANG HOTEL 共有7个视域芽庄市、含Balcony 的Family Executive房</p>\r\n\r\n<p>Family Executive房 的面积35 m2, 高级木地板、现代温暖设计、现代装设备如Tivi LCD 40 inch电视机, 迷你吧，保险箱，空调，免费WiFi</p>\r\n\r\n<p>房内装设备包括:</p>\r\n\r\n<ul>\r\n	<li>LCD 40 inch电视机与有线电视连接共有25个娱乐频道</li>\r\n	<li>独立空调系统</li>\r\n	<li>个人保险箱.</li>\r\n	<li>高速度无线网络.</li>\r\n	<li>迷你吧.</li>\r\n	<li>电水壶.</li>\r\n	<li>工作台.</li>\r\n	<li>吹风机.</li>\r\n	<li>茶咖啡机</li>\r\n	<li>每天免费矿泉水.</li>\r\n	<li>独立浴室以及现代装设备.</li>\r\n	<li>浴袍，拖鞋</li>\r\n	<li>长途电话</li>\r\n	<li>警报系统</li>\r\n	<li>婴儿床如要求</li>\r\n</ul>', '<p>POSEIDON NHA TRANG ホテルはバルコニー付シティービュー&nbsp;<a href=\"http://poseidonnhatranghotel.com/\" target=\"_blank\">Family Executive&nbsp;</a>ルームの７室があります。</p>\r\n\r\n<p>エグゼクティブファミリールームは、面積が35平方メートルで、木の床が高級だし、設計が居心地の良いし、40インチ液晶テレビ、ミニバー、金庫、エアコン、無料のWiFiなどのモダンな設備が備えています。</p>\r\n\r\n<p>客室内に装置</p>\r\n\r\n<ul>\r\n	<li>25エンターテイメントチャンネル付きケーブルテレビ接続する40インチ液晶テレビ</li>\r\n	<li>部屋に個別の空調システム。</li>\r\n	<li>セーフティボックス。</li>\r\n	<li>高速無線インターネット。</li>\r\n	<li>ミニバー。</li>\r\n	<li>温水ヒーター。</li>\r\n	<li>デスク。</li>\r\n	<li>ヘアドライヤー。</li>\r\n	<li>お茶コーヒー入れ機</li>\r\n	<li>毎日無料のミネラルウォーター。</li>\r\n	<li>近代的な設備を備えた個別のバスルーム。</li>\r\n	<li>バスローブ、スリッパ</li>\r\n	<li>国際電話。</li>\r\n	<li>火災警報システム</li>\r\n	<li>リクエストに応じてベビーベッド。</li>\r\n</ul>', '[\"3.jpg\",\"10.jpg\",\"11.jpg\"]', '2022-06-27 21:01:54', '2022-06-27 21:01:54', 'family-executive');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service`
--

CREATE TABLE `service` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_vi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ru` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_kr` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_cn` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_jp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_vi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_ru` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_kr` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_cn` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_jp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service`
--

INSERT INTO `service` (`id`, `title_vi`, `title_en`, `title_ru`, `title_kr`, `title_cn`, `title_jp`, `content_vi`, `content_en`, `content_ru`, `content_kr`, `content_cn`, `content_jp`, `photo`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Quầy dịch vụ văn phòng', 'Business cente', 'Бюро офисных услуг', '회의', '会议室', 'オフィスサービスカウンター', '<p>M&aacute;y t&iacute;nh của kh&aacute;ch sạn đặt tại quầy gi&uacute;p bạn kết nối v&agrave; cập nhật h&agrave;nh tr&igrave;nh cho bạn b&egrave; v&agrave; gia đ&igrave;nh, giải quyết c&aacute;c c&ocirc;ng việc cần gấp hoặc đơn giản l&agrave; lướt web đọc tin tức. Ch&uacute;ng t&ocirc;i cũng cung cấp dịch vụ kh&aacute;c như gửi / nhận fax, in ấn/ photo t&agrave;i liệu, vv.</p>\r\n\r\n<p>Services:</p>\r\n\r\n<ul>\r\n	<li>Internet</li>\r\n	<li>In ấn</li>\r\n	<li>Photocopy</li>\r\n	<li>Scan t&agrave;i liệu</li>\r\n	<li>Fax (trong nước v&agrave; quốc tế)</li>\r\n	<li>Dịch vụ điện thoại (trong nước v&agrave; quốc tế)</li>\r\n</ul>\r\n\r\n<p>Địa điểm: tầng trệt</p>\r\n\r\n<p>Thời gian phục vụ: 24/24</p>', '<p>Computers are available 24/24 right on the lobby so that you could connect to the internet, update itinerary to friends and family, address urgent work and surf news quite easily. We also provide other services, such as send / receive fax, print / photo documents and etc.</p>\r\n\r\n<p>Services:</p>\r\n\r\n<ul>\r\n	<li>Internet</li>\r\n	<li>Print</li>\r\n	<li>Photocopy</li>\r\n	<li>Scan</li>\r\n	<li>Fax (domestic and international)</li>\r\n	<li>Telephone (domestic and international)</li>\r\n</ul>\r\n\r\n<p>Place: Lobby&nbsp;</p>\r\n\r\n<p>Opening hours: 24/24</p>', '<p>Компьютеры отеля расположены в бюро, что позволяет вам подключить и обновить свой маршрут к друзьям и семье, решить срочную работу или просто читать новости. Мы также предоставляем другие услуги, такие как отправка/получение факсов, печать/ксерокопия документов и т.д.</p>\r\n\r\n<p>Интернет</p>\r\n\r\n<p>Печать</p>\r\n\r\n<p>Ксерокопия</p>\r\n\r\n<p>Сканирование документов</p>\r\n\r\n<p>Услуги факсов (отечественных и международных)</p>\r\n\r\n<p>Услуги телефона (отечественного и международного)</p>\r\n\r\n<p>Местонахождение: на первом этаже</p>\r\n\r\n<p>Время обслуживания: 24/24</p>', '<p>Nha Trang Poseidon호텔은 현대적인 장비와 완벽한 서비스를 갖추는 회의실이 있다. 회의실은 150명까지 수용할 수 있고 에어컨, 스크린, 프로젝터, 무선 인터넷 등의 장비를 충분히 갖추고 있다. 당신은 또한 요청에 따라 준비되는 다양한 음식과 음료수가 있는 우리의 전용 구역에서 케이터링 서비스를 사용할 때 많은 선택이 있다.</p>\r\n\r\n<p>회의실의 장비는 다음과 같다:</p>\r\n\r\n<ul>\r\n	<li>호텔 앞에 환영 배너.</li>\r\n	<li>회의실 지시판.</li>\r\n	<li>에어컨</li>\r\n	<li>마이크로</li>\r\n	<li>사운드, 조명 시스템</li>\r\n	<li>신선한 꽃</li>\r\n	<li>스크린, 강단, 화이트 보드 + 마커, 플립 차트, 대표자를 위해 종이</li>\r\n	<li>무료 와이파이</li>\r\n	<li>회이실 담당 직원.</li>\r\n	<li>음료수</li>\r\n</ul>', '<p>カウンターに置くホテルのコンピュータは、友人や家族に接続し、旅を更新し、緊急の仕事を解決する又はニュースを読むのにウェブサーフィンをすること役に立ちます。また当ホテルは、ファクスを送信/受信し、文書をコピー/印刷することなどの他のサービスを提供しております。</p>\r\n\r\n<p>インターネット</p>\r\n\r\n<p>印刷</p>\r\n\r\n<p>コピー</p>\r\n\r\n<p>スキャン</p>\r\n\r\n<p>ファックス（国内・国際）</p>\r\n\r\n<p>電話サービス（国内・国際）</p>\r\n\r\n<p>場所: グラウンドフロア</p>\r\n\r\n<p>営業時間: 24時間制</p>', '<p>カウンターに置くホテルのコンピュータは、友人や家族に接続し、旅を更新し、緊急の仕事を解決する又はニュースを読むのにウェブサーフィンをすること役に立ちます。また当ホテルは、ファクスを送信/受信し、文書をコピー/印刷することなどの他のサービスを提供しております。</p>\r\n\r\n<p>インターネット</p>\r\n\r\n<p>印刷</p>\r\n\r\n<p>コピー</p>\r\n\r\n<p>スキャン</p>\r\n\r\n<p>ファックス（国内・国際）</p>\r\n\r\n<p>電話サービス（国内・国際）</p>\r\n\r\n<p>場所: グラウンドフロア</p>\r\n\r\n<p>営業時間: 24時間制</p>', '[\"m1.jpg\",\"m2.jpg\",\"m3.jpg\"]', 'business-cente', '2022-07-02 02:24:52', '2022-07-02 02:24:52'),
(4, 'Phòng tập thể dục', 'Gym', 'Тренажерный зал', '체육관', '室外泳池', 'ジム', '<p>Nằm tr&ecirc;n tầng 18, ph&ograve;ng tập thể dục được trang bị đầy đủ c&aacute;c loại m&aacute;y tập thể dục, m&aacute;y chạy bộ, m&aacute;y đi bộ &hellip;.được sử dụng miễn ph&iacute; khi qu&yacute; kh&aacute;ch lưu tr&uacute; tại kh&aacute;ch sạn. Đ&acirc;y sẽ l&agrave; nơi l&yacute; tưởng để du kh&aacute;ch giải tỏa căng thẳng, hay đơn giản chỉ l&agrave; nghỉ ngơi sau thời gian l&agrave;m việc vất vả.</p>\r\n\r\n<p>Thời gian hoạt động: từ 6.00 đến 22.00</p>', '<p>Enjoy spectacular city views while relaxing by our rooftop lovely swimming pool with melody light music or some fantastic cocktails. This is a perfect place for daytime sunning in some tropical rays.</p>\r\n\r\n<p>Operation hours: from 6.00 am until 10.00 pm</p>\r\n\r\n<p>Place: 18 Floor</p>', '<p>Enjoy spectacular city views while relaxing by our rooftop lovely swimming pool with melody light music or some fantastic cocktails. This is a perfect place for daytime sunning in some tropical rays.</p>\r\n\r\n<p>Operation hours: from 6.00 am until 10.00 pm</p>\r\n\r\n<p>Place: 18 Floor</p>', '<p>18 층에 위치한 체육관은 당신이 호텔에 머물 때 무료로 사용할 수 있는 운동 기계, 디딜 방아 등 현대적인 시실이 충분히 장착되어 있습니다. 이 장소는 고객이 스트레스를 해소하거나 단순히 힘든 근무시간 후 휴식을 취하는 이상적인 장소이다.</p>\r\n\r\n<p>운영시간: 6.00부터 22.00까지</p>', '<p>一边欣赏芽庄市全景一边在室外泳池放松并收听甜美音乐和尝试高级鸡尾酒，此地将是完美地方让贵客感到舒服</p>\r\n\r\n<p>服务时间： 从早上6.00 到晚上 22.00</p>', '<p>ジムは、18階に位置し、エクササイズマシン、トレッドミル、ウォーキングマシンが装備されており、お客様はホテルに泊まるとき、無料で使用されます。これは、お客様がストレスを解消したり、日中の疲れを解消してリラックスするための理想的な場所になります。</p>\r\n\r\n<p>営業時間: 6.00時から22.00時まで</p>', '[\"gym1.jpg\",\"gym2.jpg\",\"gym3.jpg\"]', 'outdoor-swimming-pool', '2022-07-03 10:30:37', '2022-07-03 10:30:37'),
(5, 'Dịch vụ vận chuyển', 'Transportation Service', 'Транспортные услуги', '운송 서비스', '运输服务', '送迎サービス', '<p>Mong muốn mang lại cho du kh&aacute;ch một kỳ nghỉ ho&agrave;n hảo, Kh&aacute;ch sạn Poseidon Nha Trang c&ograve;n cung cấp cho du kh&aacute;ch dịch vụ đưa - đ&oacute;n đặc biệt tại s&acirc;n bay. Với dịch vụ n&agrave;y, du kh&aacute;ch kh&ocirc;ng chỉ tr&aacute;nh được những phiền h&agrave;, lo lắng trong việc chờ đợi taxi hay những phương tiện vận chuyển thu&ecirc; ngo&agrave;i m&agrave; c&ograve;n c&oacute; cảm gi&aacute;c được ch&agrave;o mừng, được chăm s&oacute;c như một thượng kh&aacute;ch ngay từ khi đặt ch&acirc;n tới Nha Trang.<br />\r\nNgo&agrave;i ra, Kh&aacute;ch sạn Poseidon Nha Trang cũng cung cấp dịch vụ thu&ecirc; xe đưa đ&oacute;n du kh&aacute;ch tham quan c&aacute;c tuyến điểm trong th&agrave;nh phố hay từ Nha Trang đi c&aacute;c tỉnh l&acirc;n cận. Chi tiết vui l&ograve;ng li&ecirc;n hệ tại Quầy Lễ t&acirc;n của kh&aacute;ch sạn.</p>', '<p>Desiring to bring our guests a perfect holiday, Poseidon Nha Trang Hotel offers shuttle service to the guest. This is special welcome particularly at the airport. Using our service, customers are not only avoid the troubles and worries in the waiting taxi or outsourced transportation, but also feeling of being welcome, will be take cared of Poseidon professional service as a VIP when arrived in Nha Trang.<br />\r\nBesides that, the hotel have rental car service transfer the guests sightseeing destinations in Nha Trang city or transfer from Nha Trang to neighboring provinces. For any detailed, please do not hesitate to contact us at the hotel&#39;s reception desk.</p>', '<p>С желанием принести к туристам идеальный отпуск, отель Poseidon Nha Trang также предлагает своим гостям специальные услуги трансфера в аэропорту. С этой услугой гостям возможно не только избежать неприятности и беспокойство в ожидании такси или аутсорсинговых услуг трансфера, но и иметь такое ощущение, что приветствуется и заботны как почетный гость сразу после прибытия в Нячанг.</p>\r\n\r\n<p>Кроме того, отель Poseidon Nha Trang также предлагает услуги прокатв автомобилей для трансфера в экскурсионные направления в городе или из Нячанга до соседних провинций. Для получения подробной информации, пожалуйста, свяжитесь с нами на стойке регистрации отеля.</p>', '<h3>관광객에게 완벽한 휴가를 제공하고자는 욕망으로, Nha Trang Poseidon호텔은 공항에서 특별한 픽업 서비스를 관광객에게 제공한다. 이 서비스를 통해, 관광객은 택시나 임대 차량을 기다릴 때의 문제, 걱정을 피할 수 있을 뿐만 아니라 Nha Trang에 도착할 때부터 VIP처럼 환영하고 돌보는 느낌을 느낄 수 있다. 또한, Nha Trang Poseidon호텔은 시내 관광지를 구경하거나 Nha Trang에서 인접 지역으로 가는 관광객에게 셔틀 임대 서비스를 제공한다. 자세한 내용은 호텔의 리셉션 데스크에 문의하시기 바랍니다.</h3>', '<p>希望可以为游客带来完美度假期， 芽庄Poseidon 还提供给游客机场接送服务，以此服务，游客不仅避免由等待出租车或其他运输方式所带来的烦恼，忧虑，而且游客还有自己受欢迎的感觉，就在到达芽庄之时游客可享受像贵宾地对待， 另外芽庄Poseidon 酒店还提供租车服务接送贵客参观芽庄市内旅游点或从芽庄到邻居省市，具体请联系本酒店柜台服务人员.</p>', '<p>お客様に完璧な休日を与える希望で、Poseidon Nha Trang ホテルは、お客様にに対して空港での特別な送迎サービスを提供していただきます。このサービスでは、お客様がタクシーやレンタルカーを待っている中のトラブルや悩みを避けるだけでなく、Nha Trangに来る際に主賓として歓迎されて、ケアされるような感じです。</p>\r\n\r\n<p>また、Poseidon Nha Trang ホテルもNha Trang 市や近隣省の観光スポットへのお客様を運ぶレンタルカーサービスを提供しています。詳細については、ホテルのフロントにてお問い合わせください。</p>', '[\"001.jpg\",\"002.jpg\",\"003.jpg\"]', 'transportation-service', '2022-07-03 10:33:06', '2022-07-03 10:33:06'),
(8, 'Hồ bơi ngoài trời', 'Outdoor swimming Poolp', 'Открытый бассейн', '야외 수영장', '健身房', '屋外プール', '<p>Vừa ngắm nh&igrave;n khung cảnh tuyệt hảo của to&agrave;n th&agrave;nh phố vừa thư gi&atilde;n tại hồ bơi ngo&agrave;i trời giữa những giai điệu &acirc;m nhạc ngọt ng&agrave;o v&agrave; những ly cocktails hảo hạng. Nơi đ&acirc;y hứa hẹn sẽ l&agrave; nơi ho&agrave;n hảo để qu&yacute; kh&aacute;ch c&oacute; những ph&uacute;t gi&acirc;y sảng kho&aacute;i trong l&agrave;n nước xanh m&aacute;t.</p>\r\n\r\n<p>Thời gian hoạt động: từ 6.00 đến 22.00</p>\r\n\r\n<p>Địa điểm: Tầng 18</p>', '<p>Located on 18th floor, it has fully equipped with computerized treadmills, cycling machines and step machines along with free weights. All fitness facilities are complimentary to hotel guests. It&rsquo;s your ideal place to unwind and simply take a break after working time.</p>\r\n\r\n<p>Operation hours: from 6.00 am until 10.00 pm</p>\r\n\r\n<p>Place: 18th Floor</p>', '<p>Здесь туристы могут и смотреть великолепный вид города, и расслабиться в открытом бассейне между сладкими мелодиями и вкусными коктейлями. Это место обещает быть идеальным местом, принеся к гостям моменты удовольствия при отдыхе в прохладной и синей воде.</p>\r\n\r\n<p>Время обслуживания: с 6.00 до 22.00</p>\r\n\r\n<p>Местонахождение: Этаж № 18</p>', '<p>도시 전체의 멋진 풍경을 보면서 야외 수장에서 달콤한 멜로디와 맛있는 칵테일과 함께 휴식을 취할 수 있다. 여기는 고객이 멋진 푸른 물속에 행복감의 순간을 즐길 수 있는 완벽한 장소가 될 것이다.</p>\r\n\r\n<p>운연시간: 6.00부터 22.00까지</p>\r\n\r\n<p>장소: 18층</p>', '<p>位于18楼、健身房装备足够的健身器，跑步机等贵客在酒店留住期间可免费使用，这是游客缓解压力理想之地，或简单只是工作劳累时间后休息</p>\r\n\r\n<p>服务时间: 从 6.00 到 22.00</p>', '<p>市全体のちょうど素晴らしいパノラマを鑑賞しながら甘いメロディーとおいしいカクテルの間、屋外プールでリラックスします。ここはお客様がクールな青い水に喜びの瞬間を持っていることが最適な場所であることを約束します。</p>\r\n\r\n<p>営業時間: 6時から 22時まで</p>\r\n\r\n<p>場所: 18階</p>', '[\"s1.jpg\",\"s2.jpg\",\"s3.jpg\"]', 'outdoor-swimming-poolp', '2022-07-03 10:39:51', '2022-07-03 10:39:51'),
(9, 'HỘI NGHỊ', 'Conference Room', 'КОНФЕРЕНЦ-ЗАЛ', '사무실 서비스 구역', '会议室', '会議室', '<p>Kh&aacute;ch sạn Poseidon Nha Trang được trang bị ph&ograve;ng họp với c&aacute;c trang bị hiện đại, dịch vụ ho&agrave;n hảo. Ph&ograve;ng họp với sức chứa l&ecirc;n tới 150 kh&aacute;ch với đầy đủ c&aacute;c trang thiết bị như m&aacute;y lạnh, m&agrave;n chiếu, m&aacute;y chiếu, internet kh&ocirc;ng d&acirc;y. Qu&yacute; kh&aacute;ch cũng c&oacute; nhiều sự lựa chọn khi sử dụng dịch vụ ăn uống tại khu vực chuy&ecirc;n dụng của ch&uacute;ng t&ocirc;i với đa dạng c&aacute;c loại thức ăn, nước uống được chuẩn bị sẵn theo y&ecirc;u cầu.</p>\r\n\r\n<p>Trang thiết bị ph&ograve;ng họp:</p>\r\n\r\n<ul>\r\n	<li>Banner ch&agrave;o mừng trước kh&aacute;ch sạn.</li>\r\n	<li>Bảng chỉ dẫn kh&aacute;ch v&agrave;o ph&ograve;ng họp.</li>\r\n	<li>M&aacute;y lạnh</li>\r\n	<li>Micro</li>\r\n	<li>Hệ thống &acirc;m thanh, &aacute;nh s&aacute;ng</li>\r\n	<li>Hoa tươi</li>\r\n	<li>M&agrave;n chiếu, bục ph&aacute;t biểu, bảng trắng + viết l&ocirc;ng, flip chart, giấy viết cho đại biểu</li>\r\n	<li>Wifi miễn ph&iacute;</li>\r\n	<li>Nh&acirc;n vi&ecirc;n trực ph&ograve;ng họp.</li>\r\n	<li>Nước uống</li>\r\n</ul>', '<p>Poseidon Nha Trang hotel has a conference room with modern equipment, perfective service with accommodate up to 150 delegates fully equipped with air-conditioned, LCD projector and screen, wifi internet access. You also have a huge choice of food and beverage, our dedicated dining area offering different well-prepared types of cuisine freshly as your request.</p>\r\n\r\n<ul>\r\n	<li>Welcome banner in front of the hotel.</li>\r\n	<li>The signage to meeting room.</li>\r\n	<li>Air conditioning, micro, sound &amp; lighting system,fresh flowers, 01 screen, lectern, 01 board, pen and paper for delegates, free wifi</li>\r\n	<li>Meeting personnel directly.</li>\r\n	<li>Mineral water</li>\r\n</ul>', '<p>Отель Poseidon Nha Trang оборудован конференц-залом с современными удобствами и идеальными услугами. Конференц-зал может вместить до 150 гостей с полным оборудованием, таким как кондиционер, экран, проектор, беспроводной доступ в Интернет. У вас также есть большой выбор при использовании услуг питания в специальной области с разнообразием блюд, питьевой воды, подготовленным по запросу.</p>\r\n\r\n<p>Оборудование в конференц-зале:</p>\r\n\r\n<ul>\r\n	<li>Приветственный баннер перед отелем</li>\r\n	<li>Вывески в конференц-зал</li>\r\n	<li>Кондиционер</li>\r\n	<li>Micro</li>\r\n	<li>Звуковая и осветительная система</li>\r\n	<li>Свежие цветы</li>\r\n	<li>Экран, подиум, белая доска + маркер, флипчарт, писчая бумага для делегатов</li>\r\n	<li>Бесплатный Wifi</li>\r\n	<li>Дежурный персонал в конференц-зале</li>\r\n	<li>Питьевая вода</li>\r\n</ul>', '<p>호텔의 컴퓨터는 당신이 연결을 유지해서 친구와 가족에게 일정을 업데이트하고 긴급 업무를 해결하거나 단순히 인터넷에서 소식을 볼 수 있도록 배치된다. 우리는 또한 팩스 송신/수신, 문서 인쇄/복사 등 다른 서비스를 제공한다.</p>\r\n\r\n<ul>\r\n	<li>인터넷</li>\r\n	<li>인쇄</li>\r\n	<li>복사 문서 스캔 팩스 (국내 및 국제) 전화 서비스 (국내 및 국제)</li>\r\n	<li>위치 : 1층</li>\r\n	<li>운영 시간: 24/24</li>\r\n</ul>', '<p>芽庄Poseidon酒店装备现代设备、完美服务的会议室，会议室可容纳150个人以及充足的装设备如：空调、投影屏幕，投影仪，无线网络。贵客也有许多选择当在我们专业区使用饮食服务以及多种菜肴、饮料按要求服务.</p>\r\n\r\n<ul>\r\n	<li>酒店前面欢迎Banner</li>\r\n	<li>会议室指示牌</li>\r\n	<li>空调 Micro 声音亮光系统 鲜花 投影屏幕，讲台，白板+标志，挂图，代表的纸张表 免费无线网络</li>\r\n	<li>会议室值班人员</li>\r\n	<li>矿泉水</li>\r\n	<li>服务时间: 24/24</li>\r\n</ul>', '<p>Poseidon Nha Trang ホテルの会議室には、モダンな設備、完璧なサービスが装備されています。会議室には、エアコン、スクリーン、プロジェクター、ワイヤレスインターネットなどの設備が備えて、150名様まで収容することができます。リクエストに応じて用意されている食品や飲料水の多様で、当ホテルの専用地域でケータリングサービスを使用するときにも、より多くの選択肢を持っています。</p>\r\n\r\n<p>会議室の装置:</p>\r\n\r\n<ul>\r\n	<li>ホテルの前に歓迎バナー。</li>\r\n	<li>お客様が会議に入るためのサイネージ。</li>\r\n	<li>冷凍庫</li>\r\n	<li>マイクロ</li>\r\n	<li>サウンド、照明システム</li>\r\n	<li>新鮮な花</li>\r\n	<li>スクリーン、演台、ホワイトボード+マーカー、フリップチャート、お客様用用紙</li>\r\n	<li>無料のWiFi</li>\r\n	<li>会議室当番者</li>\r\n	<li>飲み水</li>\r\n</ul>', '[\"m1.jpg\",\"m2.jpg\",\"m3.jpg\"]', 'conference-room', '2022-07-03 10:43:18', '2022-07-03 10:43:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `special`
--

CREATE TABLE `special` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_vi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ru` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_kr` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_cn` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_jp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_vi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_ru` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_kr` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_cn` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_jp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin123', 'admin123@gmail.com', NULL, '$2y$10$RuhIAS2AYahk5/1ZfzF3EeNjD.ymWld1xHKOqCnhd.7AeSEeEoJUu', NULL, '2022-06-23 19:34:55', '2022-06-23 19:34:55'),
(2, 'admin123456', 'admin123456@gmail.com', NULL, '$2y$10$3enUTMb9E6ff7Uu5Qgj1B.ftoEDavzZw4brzfA1vFGPnrkZKpd/v6', NULL, '2022-06-23 20:14:06', '2022-06-23 20:14:06');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dinning`
--
ALTER TABLE `dinning`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dinning_slug_unique` (`slug`),
  ADD UNIQUE KEY `dinning_title_vi_unique` (`title_vi`) USING HASH;

--
-- Chỉ mục cho bảng `explore`
--
ALTER TABLE `explore`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `explore_slug_unique` (`slug`),
  ADD UNIQUE KEY `explore_title_vi_unique` (`title_vi`) USING HASH;

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `introduce`
--
ALTER TABLE `introduce`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `introduce_title_unique` (`title`) USING HASH,
  ADD UNIQUE KEY `introduce_slug_unique` (`slug`) USING HASH;

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `room_title_unique` (`title`) USING HASH;

--
-- Chỉ mục cho bảng `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `service_slug_unique` (`slug`),
  ADD UNIQUE KEY `service_title_vi_unique` (`title_vi`) USING HASH;

--
-- Chỉ mục cho bảng `special`
--
ALTER TABLE `special`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `special_slug_unique` (`slug`),
  ADD UNIQUE KEY `special_title_vi_unique` (`title_vi`) USING HASH;

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dinning`
--
ALTER TABLE `dinning`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `explore`
--
ALTER TABLE `explore`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `introduce`
--
ALTER TABLE `introduce`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `room`
--
ALTER TABLE `room`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `service`
--
ALTER TABLE `service`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `special`
--
ALTER TABLE `special`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
