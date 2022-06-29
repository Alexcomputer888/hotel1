-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 29, 2022 lúc 08:22 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

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
(1, 'GIỚI THIỆU', 'Khách sạn Poseidon Nha Trang tọa lạc trên con đường Trần Quang Khải, một vị trí vô cùng thuận tiện ngay tại trung tâm thành phố Nha Trang xinh đẹp, chỉ với 5 phút lái xe từ ga xe lửa và 45 phút lái xe từ sân bay Cam Ranh. Tại đây, du khách có thể dễ dàng', 'Poseidon Nha Trang hotel is situated on Tran Quang Khai Street, conveniently located in the heart of Nha Trang city within walking distance of dining, shopping center and beautiful Nha Trang beach. The hotel features well-appointed guest accommodation roo', 'Отель Poseidon Nha Trang находится на улице Чан Куанг Кхай на весьма удобном месте в центре красивого города Нячанг, в 5 минутах от железнодорожного вокзала Нячанга и 45 минутах от аэропорта Камрань. Здесь туристы могут легко идти пешком в рестораны, пунк', '芽庄Poseidon酒店坐落在陈光凯路，就在美丽芽庄市中心便利位置，只要花5分钟时间从火车站和45分钟从CAM RANH机场开车就到了，在此，游客可以走到餐厅和饮食地点、休闲娱乐区、购买地和芽庄海滩，本酒店的房子系统装备充足的便利现代设备视域芽庄市以及室外泳池、体育中心、泳池旁边酒吧。多功能会议室，纪念品店和旅游信息服务台将是游客度假和工作最佳选择\r\n\r\n芽庄Poseidon酒店的建筑带有西方特色建筑-简单而豪华、现代。本酒店共有138个房、其中34个Superior, 52个Premier Cityvi', '芽庄Poseidon酒店坐落在陈光凯路，就在美丽芽庄市中心便利位置，只要花5分钟时间从火车站和45分钟从CAM RANH机场开车就到了，在此，游客可以走到餐厅和饮食地点、休闲娱乐区、购买地和芽庄海滩，本酒店的房子系统装备充足的便利现代设备视域芽庄市以及室外泳池、体育中心、泳池旁边酒吧。多功能会议室，纪念品店和旅游信息服务台将是游客度假和工作最佳选择\r\n\r\n芽庄Poseidon酒店的建筑带有西方特色建筑-简单而豪华、现代。本酒店共有138个房、其中34个Superior, 52个Premier Cityvi', 'Poseidon Nha Trangホテルは、美しいNha Trang市の中心部に非常に便利な場所であるTran Quang Khai通り沿いに位置し、鉄道駅から車でわずか5分、Cam Ranh空港から車で45分だけかかります、ここからお客様は簡単にレストランや、エンターテイメント、ショッピングモールやNha Trangビーチに歩いて行くことができます。客室内のシステムは屋外プール、フィットネスセンター、プールサイドバー、会議室、土産物店や観光情報掲示板とともに設備がシティービューとして装備されており、旅', '002.jpg', '/poseidon-experience/about-us', NULL, '2022-06-27 19:44:20'),
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
(8, '2022_06_28_100253_create_service', 4);

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
(9, 'Poseidon Suite', '<p>Số ph&ograve;ng : 2</p>\r\n\r\n<p>Diện t&iacute;ch: 60 m2</p>\r\n\r\n<p>Đặc điểm:&nbsp;c&oacute; bồn tắm nằm, ban c&ocirc;ng, hướng biển</p>\r\n\r\n<p>Loại giường: Double</p>', '<p>No. of rooms : 2</p>\r\n\r\n<p>Area: 60 m2</p>\r\n\r\n<p>Description:&nbsp;Seaview with balcony, Bathroom with bathtub</p>\r\n\r\n<p>Type bed: Double</p>', '<p>Число номеров : 2</p>\r\n\r\n<p>Площадь: 60 m2</p>\r\n\r\n<p>Особенности:&nbsp;Ванна, наличие балкона, вид на море</p>\r\n\r\n<p>Тип кровати: Double</p>', '<p>객실 수 : 2</p>\r\n\r\n<p>면적: 60 m2</p>\r\n\r\n<p>특징:&nbsp;욕조, 발코니, 바다 전망</p>\r\n\r\n<p>침대 타입: Double</p>', '<p>房数: 2</p>\r\n\r\n<p>面积: 60 m2</p>\r\n\r\n<p>特点:&nbsp;卧式浴缸，阳台，视域海景</p>\r\n\r\n<p>床类: Double</p>', '<p>ルーム数: 2</p>\r\n\r\n<p>面積: 60 m2</p>\r\n\r\n<p>特徴:&nbsp;バスタブ、シービュー</p>\r\n\r\n<p>ベッドタイプ: Double</p>', '<p>POSEIDON NHA TRANG HOTEL c&oacute; 2 ph&ograve;ng Poseidon Suite view biển.</p>\r\n\r\n<p>Ph&ograve;ng Suite c&oacute; diện t&iacute;ch 60 m2, s&agrave;n gỗ cao cấp, thiết kế ấm c&uacute;ng, trang thiết bị tiện nghi hiện đại như Tivi LCD 40 inch, quầy mini bar, k&eacute;t sắt, điều h&ograve;a, wifi miễn ph&iacute;.</p>\r\n\r\n<p>Trang thiết bị trong ph&ograve;ng:</p>\r\n\r\n<ul>\r\n	<li>Tivi LCD 40 inch kết nối truyền h&igrave;nh c&aacute;p với 25 k&ecirc;nh giải tr&iacute;</li>\r\n	<li>Hệ thống điều h&ograve;a ri&ecirc;ng trong ph&ograve;ng.</li>\r\n	<li>K&eacute;t sắt c&aacute; nh&acirc;n.</li>\r\n	<li>Internet kh&ocirc;ng d&acirc;y tốc độ cao.</li>\r\n	<li>Mini bar.</li>\r\n	<li>Ấm đun nước si&ecirc;u tốc.</li>\r\n	<li>B&agrave;n l&agrave;m việc.</li>\r\n	<li>M&aacute;y sấy t&oacute;c.</li>\r\n	<li>M&aacute;y pha tr&agrave; v&agrave; c&agrave; ph&ecirc;</li>\r\n	<li>Nước suối miễn ph&iacute; mỗi ng&agrave;y.</li>\r\n	<li>Bồn Tắm nằm.</li>\r\n	<li>&Aacute;o cho&agrave;ng tắm, d&eacute;p đi trong ph&ograve;ng</li>\r\n	<li>Điện thoại quốc tế.</li>\r\n	<li>Hệ thống b&aacute;o ch&aacute;y</li>\r\n	<li>N&ocirc;i trẻ em theo y&ecirc;u cầu .</li>\r\n</ul>', '<p>At POSEIDON NHA TRANG HOTEL, there are 2 Poseidon Suite Sea View.</p>\r\n\r\n<p>The 60 square meter Suite room has wooden floor, cozy designed, fully equipped with modern facilities, such as LCD TV 40 inch, mini bar, private safety box, air conditioning, free wifi.</p>\r\n\r\n<p>Facilities:</p>\r\n\r\n<ul>\r\n	<li>40 inch LCD and cable television with 25 entertainment channels</li>\r\n	<li>Individually controlled air conditioning</li>\r\n	<li>Personal safe box</li>\r\n	<li>Free in room high speed wireless internet access</li>\r\n	<li>Fully stocked mini bar</li>\r\n	<li>Kettle</li>\r\n	<li>Work desk</li>\r\n	<li>Hairdryer</li>\r\n	<li>Coffee and tea making facilities</li>\r\n	<li>Daily mineral water</li>\r\n	<li>Shower &amp; Bathtub</li>\r\n	<li>Telephone with IDD lines</li>\r\n	<li>Smoke detector and sprinkler system</li>\r\n	<li>Baby cot upon request</li>\r\n</ul>', '<p>POSEIDON NHA TRANG HOTEL имеет 2 номера Poseidon Suite с видом на море.</p>\r\n\r\n<p>Номер Poseidon Suite имеет площадь 60 м2, высококачественный деревянный пол, теплый дизайн, современное и удобное оборудование, такое как LCD телевизор 40 inch, минибар, сейф, кондиционер, бесплатная WIFI.</p>\r\n\r\n<p>Удобства в номере:</p>\r\n\r\n<ul>\r\n	<li>LCD телевизор 40 inch с подключением с 25 развлекательными каналами кабельного телевидения</li>\r\n	<li>Отдельная система кондиционирования воздуха в номере</li>\r\n	<li>Личный сейф.</li>\r\n	<li>Высокоскоростной беспроводной доступ в Интернет.</li>\r\n	<li>Минибар.</li>\r\n	<li>Сверхскоростный водонагреватель</li>\r\n	<li>Рабочий стол.</li>\r\n	<li>Фен для волос.</li>\r\n	<li>Машина для приготовления чая и кофе</li>\r\n	<li>Ежедневная бесплатная минеральная вода</li>\r\n	<li>Ванна.</li>\r\n	<li>Халаты, тапочки</li>\r\n	<li>Международный телефон</li>\r\n	<li>Система пожарной сигнализации</li>\r\n	<li>Детская кроватка по запросу.</li>\r\n</ul>', '<p>POSEIDON NHA TRANG HOTEL는 바다 전망의 Poseidon Suite 객실이 2개 있다.</p>\r\n\r\n<p>Suite객실은 60 m2의 면적이 있고 고급스러운 나무 바닥, 편안한 디자인이 있고 40 인치 LCD TV, 미니 바, 금고, 에어컨, 무료 와이파이 등 현대적인 시설이 있다.</p>\r\n\r\n<p>객실에 있는 장비는 다음과 같다:</p>\r\n\r\n<ul>\r\n	<li>25개 엔터테인먼트 채널이 있는 케이블 텔레비전의 40인치 LCD TV</li>\r\n	<li>객실 안에 있는 전용 에어컨 시스팀.</li>\r\n	<li>개인 금고.</li>\r\n	<li>고속 무선 인터넷.</li>\r\n	<li>미니 바.</li>\r\n	<li>고속 온수 히터.</li>\r\n	<li>책상.</li>\r\n	<li>헤어 드라이어.</li>\r\n	<li>차와 커피 기기</li>\r\n	<li>매일 무료 생수.</li>\r\n	<li>현대적인 시설을 갖춘 별도의 욕실.</li>\r\n	<li>목욕 가운, 슬리퍼.</li>\r\n	<li>국제 전화.</li>\r\n	<li>화재 경보 시스템.</li>\r\n	<li>요청에 따른 유아용 침대.</li>\r\n</ul>', '<p>POSEIDON NHA TRANG HOTEL 共有2个视域海景的 Poseidon Suite 房</p>\r\n\r\n<p>Suite房 的面积60 m2, 高级木地板、现代温暖设计、现代装设备如Tivi LCD 40 inch电视机, 迷你吧，保险箱，空调，免费WiFi，。</p>\r\n\r\n<p>房内装设备包括:</p>\r\n\r\n<ul>\r\n	<li>LCD 40 inch电视机与有线电视连接共有25个娱乐频道</li>\r\n	<li>独立空调系统</li>\r\n	<li>个人保险箱.</li>\r\n	<li>高速度无线网络.</li>\r\n	<li>迷你吧.</li>\r\n	<li>电水壶.</li>\r\n	<li>工作台.</li>\r\n	<li>吹风机.</li>\r\n	<li>茶咖啡机</li>\r\n	<li>每天免费矿泉水.</li>\r\n	<li>独立浴室以及现代装设备.</li>\r\n	<li>浴袍，拖鞋</li>\r\n	<li>长途电话</li>\r\n	<li>警报系统</li>\r\n	<li>婴儿床如要求</li>\r\n</ul>', '<p>POSEIDON NHA TRANG HOTELはシービューポセイドンスイートルームの14室があります。</p>\r\n\r\n<p>ポセイドンスイートルームは、面積が60平方メートルで、木の床が高級だし、設計が居心地の良いし、40インチ液晶テレビ、ミニバー、金庫、エアコン、無料のWiFiなどのモダンな設備が備えています。</p>\r\n\r\n<p>客室内に装置</p>\r\n\r\n<ul>\r\n	<li>25エンターテイメントチャンネル付きケーブルテレビ接続する40インチ液晶テレビ</li>\r\n	<li>部屋に個別の空調システム。</li>\r\n	<li>セーフティボックス。</li>\r\n	<li>高速無線インターネット。</li>\r\n	<li>ミニバー。</li>\r\n	<li>温水ヒーター。</li>\r\n	<li>デスク。</li>\r\n	<li>ヘアドライヤー。</li>\r\n	<li>お茶コーヒー入れ機</li>\r\n	<li>毎日無料のミネラルウォーター。</li>\r\n	<li>バスタブ。</li>\r\n	<li>バスローブ、スリッパ</li>\r\n	<li>国際電話。</li>\r\n	<li>火災警報システム</li>\r\n	<li>リクエストに応じてベビーベッド。</li>\r\n</ul>', '[\"1.jpg\",\"10.jpg\",\"11.jpg\"]', '2022-06-27 20:59:34', '2022-06-27 20:59:34', 'poseidon-suite'),
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
