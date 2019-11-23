-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 23, 2019 lúc 04:06 PM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `e-commerce`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Truyện Thiếu Nhi'),
(2, 'Truyện Dân Gian'),
(3, 'Sách Nhân Văn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(10) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(5) NOT NULL,
  `category_id` int(10) NOT NULL,
  `price` int(15) NOT NULL,
  `detail` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `quantity`, `category_id`, `price`, `detail`, `image`) VALUES
(3, 'D.Gray-Man - Tập 25', 11, 1, 18000, '\r\nD.Gray-Man - Tập 25\r\n\r\nGửi những người bạn tâm giao đã cùng tôi tạo nên tác phẩm “D.Gray-man”. Cảm ơn các bạn vì đã vẽ cho tôi những tấm tranh nền thật tuyệt vời. Cảm ơn các bạn vì những kỉ niệm thật vui vẻ. Chúng ta vẫn còn lời hẹn “một lúc nào đó lại cùng nhau vẽ tiếp” rất nhiều truyện, và nhất định chúng ta sẽ thực hiện được lời hứa ấy. Vẽ xong tôi sẽ cho các bạn xem đầu tiên, nên hãy chờ tôi nhé.\r\nChính hãng, nguyên seal, mới 100%\r\n\r\nThiết kế: Nguyên khối, mặt kính cong 2.5D\r\n\r\nMàn hình: 5', 'assets/images/D.GrayMan_25.jpg'),
(4, 'Kể Chuyện - Thần Đồng Việt Nam\r\n', 8, 1, 39900, 'Kể Chuyện - Thần Đồng Việt Nam\r\nKể Chuyện - Thần Đồng Việt Nam nằm trong bộ sách Kể Chuyện, bao gồm các cuốn sách: Danh nhân Thế giới, Danh nhân Việt Nam, Gương hiếu thảo, Gương hiếu học, Gương dũng cảm, Thần đồng Việt Nam, Trạng Việt Nam, Trí thông minh... Kể Chuyện như một tủ sách đạo đức, rèn kỹ năng sống không thể thiếu trong trường học và trong giá sách của mỗi gia đình nhằm giáo dục con trẻ.\r\n\r\nKể Chuyện - Thần Đồng Việt Nam được biên soạn công phu và khoa học, giúp các em thông qua đó có ', 'assets/images/image_180164_1_43_1_57_1_4_1_2_1_195.jpg'),
(5, 'TGTVCĐV- Đà Điểu Và Ngựa Vằn (Level 3)\r\n', 20, 1, 29750, 'TGTVCĐV - Đà Điểu Và Ngựa Vằn (Level 3)\r\n\r\nThế giới tuyệt vời của động vật là tuyển tập các câu chuyện tưởng tượng dựa trên các loài vật có thật. Bộ sách sử dụng những câu chuyện làm cầu nối giúp trẻ tìm hiểu về các loài vật và tiếp thu các thông tin về chúng. Với các trình bày ngôn từ đơn giản, hình ảnh bắt mắt, bộ sách kết hợp việc đọc, học và tưởng tượng của các em học sinh. Mỗi cuốn sách là phương pháp hoàn hảo cho con bạn đọc và tỏa sáng!\r\n\r\nĐọc Và Tỏa Sáng\r\n\r\nĐọc và', 'assets/images/Thế_Giới_Tuyệt_Vời_Của_Động_Vật_-_Đà_Điểu_Và_Ngựa_Vằn__Level_3_.jpg'),
(6, 'Sao Biển Và Cua (Level 2)', 30, 1, 29750, 'Thế Giới Tuyệt Vời Của Động Vật - Sao Biển Và Cua (Level 2)\r\n\r\nThế giới tuyệt vời của động vật là tuyển tập các câu chuyện tưởng tượng dựa trên các loài vật có thật. Bộ sách sử dụng những câu chuyện làm cầu nối giúp trẻ tìm hiểu về các loài vật và tiếp thu các thông tin về chúng. Với các trình bày ngôn từ đơn giản, hình ảnh bắt mắt, bộ sách kết hợp việc đọc, học và tưởng tượng của các em học sinh. Mỗi cuốn sách là phương pháp hoàn hảo cho con bạn đọc và tỏa sáng!\r\n\r\nĐọc Và Tỏa Sáng\r\n\r\nĐọc và tỏa', 'assets/images/Thế_Giới_Tuyệt_Vời_Của_Động_Vật_-_Sao_Biển_Và_Cua__Level_2_.jpg'),
(7, 'Gấu Trúc Và Chim Công (Level 2)', 4, 1, 29750, 'Thế Giới Tuyệt Vời Của Động Vật - Gấu Trúc Và Chim Công (Level 2)\r\n\r\nThế giới tuyệt vời của động vật là tuyển tập các câu chuyện tưởng tượng dựa trên các loài vật có thật. Bộ sách sử dụng những câu chuyện làm cầu nối giúp trẻ tìm hiểu về các loài vật và tiếp thu các thông tin về chúng. Với các trình bày ngôn từ đơn giản, hình ảnh bắt mắt, bộ sách kết hợp việc đọc, học và tưởng tượng của các em học sinh. Mỗi cuốn sách là phương pháp hoàn hảo cho con bạn đọc và tỏa sáng!\r\n\r\nĐọc Và Tỏa Sáng\r\n\r\nĐọc ', 'assets/images/Thế_Giới_Tuyệt_Vời_Của_Động_Vật_-_Gấu_Trúc_Và_Chim_Công__Level_2_.jpg'),
(8, 'Kẻ Sống Sót', 2, 14, 118300, 'Kẻ Sống Sót\r\nCuốn sách bắt đầu với với đoàn khách 13 người tham gia hành trình tham quan bằng khinh khí cầu tại Công viên Quốc gia Northumberland, nước Anh. Nhưng khung cảnh nên thơ chẳng mấy chốc đã nhường chỗ cho cảnh tượng hãi hùng khi các du khách vô tình chứng kiến một gã đàn ông xuống tay sát hại một cô gái trẻ.\r\n\r\nBắt đầu từ đây, hung thủ bắt đầu thảm sát toàn bộ hành khách trên khinh khí cầu. Cơn khát máu của hắn chỉ được thỏa mãn đến khi loại bỏ được nhân chứng cuối cùng.\r\n\r\n\"Người phụ ', 'assets/images/image__27_.jpg'),
(9, 'Sự Tích Chú Cuội', 5, 2, 12800, 'Kho Tàn Truyện Cổ Tích Việt Nam - Sự Tích Chú Cuội\r\n\r\nCác bé ở lứa tuổi mầm non thường được nghe người lớn đọc truyện hoặc kể cho các bé nghe những câu chuyện cổ tích được truyền miệng lại từ đời này sang đời khác. Việc đọc sách giúp tăng cường khả năng giao tiếp và vốn từ vựng của bé. Kể chuyện cho con nghe là cách tốt nhất để cha mẹ dạy dỗ, nuôi dưỡng tâm hồn của bé và đồng thời tạo mối quan hệ gắn kết giữa cha mẹ và con cái.\r\n\r\nNhững câu chuyện chứa chan tình cảm yêu thương và được thể hiện q', 'assets/images/IMG_20191014_0002.jpg'),
(10, 'Cây Tre Trăm Đốt', 7, 2, 12800, 'Kho Tàn Truyện Cổ Tích Việt Nam - Cây Tre Trăm Đốt\r\n\r\nCác bé ở lứa tuổi mầm non thường được nghe người lớn đọc truyện hoặc kể cho các bé nghe những câu chuyện cổ tích được truyền miệng lại từ đời này sang đời khác. Việc đọc sách giúp tăng cường khả năng giao tiếp và vốn từ vựng của bé. Kể chuyện cho con nghe là cách tốt nhất để cha mẹ dạy dỗ, nuôi dưỡng tâm hồn của bé và đồng thời tạo mối quan hệ gắn kết giữa cha mẹ và con cái.\r\n\r\nNhững câu chuyện chứa chan tình cảm yêu thương và được thể hiện q', 'assets/images/IMG_20191014_0003.jpg'),
(11, 'Thạch Sanh', 6, 2, 12800, 'Kho Tàn Truyện Cổ Tích Việt Nam - Thạch Sanh\r\n\r\nCác bé ở lứa tuổi mầm non thường được nghe người lớn đọc truyện hoặc kể cho các bé nghe những câu chuyện cổ tích được truyền miệng lại từ đời này sang đời khác. Việc đọc sách giúp tăng cường khả năng giao tiếp và vốn từ vựng của bé. Kể chuyện cho con nghe là cách tốt nhất để cha mẹ dạy dỗ, nuôi dưỡng tâm hồn của bé và đồng thời tạo mối quan hệ gắn kết giữa cha mẹ và con cái.\r\n\r\nNhững câu chuyện chứa chan tình cảm yêu thương và được thể hiện qua giọ', 'assets/images/IMG_20191014_0005.jpg'),
(12, 'Sự Tích Cây Khế', 8, 2, 12800, 'Kho Tàn Truyện Cổ Tích Việt Nam - Sự Tích Cây Khế\r\n\r\nCác bé ở lứa tuổi mầm non thường được nghe người lớn đọc truyện hoặc kể cho các bé nghe những câu chuyện cổ tích được truyền miệng lại từ đời này sang đời khác. Việc đọc sách giúp tăng cường khả năng giao tiếp và vốn từ vựng của bé. Kể chuyện cho con nghe là cách tốt nhất để cha mẹ dạy dỗ, nuôi dưỡng tâm hồn của bé và đồng thời tạo mối quan hệ gắn kết giữa cha mẹ và con cái.\r\n\r\nNhững câu chuyện chứa chan tình cảm yêu thương và được thể hiện qu', 'assets/images/IMG_20191014_0004.jpg'),
(13, 'Nàng Bạch Tuyết Và Bảy Chú Lùn', 9, 2, 33600, 'ruyện Cổ Tích Kinh Điển - Nàng Bạch Tuyết Và Bảy Chú Lùn\r\n\r\nSeri truyện được tổng hợp từ những truyện cổ tích trẻ em được yêu thích nhất. Các câu truyện được kể lại đầy lôi cuốn bằng ngôn ngữ dễ hiểu. Hình minh họa to, rõ ràng với màu sắc rực rỡ bắt mắt chắc chắn sẽ khơi dậy hứng thú cho trẻ…', 'assets/images/76a.jpg'),
(15, 'Bố Già', 5, 3, 175000, 'Bố Già (Ấn Bản Kỉ Niệm Năm Mươi Năm Xuất Bản Lần Đầu)\r\n\r\nThế giới ngầm được phản ánh trong tiểu thuyết Bố Già là sự gặp gỡ giữa một bên là ý chí cương cường và nền tảng gia tộc chặt chẽ theo truyền thống mafia xứ Sicily với một bên là xã hội Mỹ nhập nhằng đen trắng, mảnh đất màu mỡ cho những cơ hội làm ăn bất chính hứa hẹn những món lợi kếch xù. Trong thế giới ấy, hình tượng Bố Già được tác giả dày công khắc họa đã trở thành bức chân dung bất hủ trong lòng người đọc. Từ một kẻ nhập cư tay trắng ', 'assets/images/7_egz1-2j.jpg'),
(16, 'Peter Pan (Bìa Cứng)', 7, 3, 245000, 'Peter Pan\r\n\r\nPeter Pan sống ở Neverland, hòn đảo xinh đẹp, sống động nhưng cũng đầy bí ẩn dưới sương mù của trí nhớ và mộng mơ. Ở Neverland, lũ trẻ đi lạc chung sống với những cô cậu tiên bé xíu, với thổ dân da đỏ, dã thú, tiên cá và cả hải tặc. Ở đó thời gian dường như đứng im, chỉ có những cuộc rượt bắt cứ xoay vòng, xoay vòng.\r\n\r\nMột lần đi chơi xa, Peter gặp cô bé Wendy mê mẩn những chuyện thần tiên. Xiêu lòng trước những lời rủ rê của Peter, Wendy đã cùng cậu bay đến hòn đảo kì diệu, hăm hở', 'assets/images/4_76im-d2.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
