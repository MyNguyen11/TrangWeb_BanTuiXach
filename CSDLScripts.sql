USE [master]
GO
/****** Object:  Database [QLMuaBanTuiSach]    Script Date: 13/08/2020 10:58:41 SA ******/
CREATE DATABASE [QLMuaBanTuiSach]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLMuaBanTuiSach', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QLMuaBanTuiSach.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLMuaBanTuiSach_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QLMuaBanTuiSach_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLMuaBanTuiSach] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLMuaBanTuiSach].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLMuaBanTuiSach] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLMuaBanTuiSach] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLMuaBanTuiSach] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLMuaBanTuiSach] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLMuaBanTuiSach] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLMuaBanTuiSach] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLMuaBanTuiSach] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QLMuaBanTuiSach] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLMuaBanTuiSach] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLMuaBanTuiSach] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLMuaBanTuiSach] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLMuaBanTuiSach] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLMuaBanTuiSach] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLMuaBanTuiSach] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLMuaBanTuiSach] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLMuaBanTuiSach] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLMuaBanTuiSach] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLMuaBanTuiSach] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLMuaBanTuiSach] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLMuaBanTuiSach] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLMuaBanTuiSach] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLMuaBanTuiSach] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLMuaBanTuiSach] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLMuaBanTuiSach] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLMuaBanTuiSach] SET  MULTI_USER 
GO
ALTER DATABASE [QLMuaBanTuiSach] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLMuaBanTuiSach] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLMuaBanTuiSach] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLMuaBanTuiSach] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QLMuaBanTuiSach]
GO
/****** Object:  Table [dbo].[CT_SanPham]    Script Date: 13/08/2020 10:58:41 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CT_SanPham](
	[MASP] [char](20) NOT NULL,
	[MANSX] [char](20) NOT NULL,
	[Mau] [nvarchar](40) NULL,
	[Kichthuoc] [nvarchar](100) NULL,
	[TinhTrang] [nvarchar](100) NULL,
	[HinhAnh] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[MASP] ASC,
	[MANSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HinhSP]    Script Date: 13/08/2020 10:58:41 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HinhSP](
	[MASP] [char](20) NOT NULL,
	[HinhCTSP1] [nvarchar](150) NULL,
	[HinhCTSP2] [nvarchar](150) NULL,
	[HinhCTSP3] [nvarchar](150) NULL,
	[HinhCTSP4] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[MASP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Loai]    Script Date: 13/08/2020 10:58:41 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Loai](
	[MaLoai] [char](40) NOT NULL,
	[TenLoai] [nvarchar](100) NULL,
	[ChatLieu] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhaSX]    Script Date: 13/08/2020 10:58:41 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaSX](
	[MANSX] [char](20) NOT NULL,
	[TenNSX] [nvarchar](50) NULL,
	[BaoHanh] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[MANSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 13/08/2020 10:58:41 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [char](20) NOT NULL,
	[TenSP] [nvarchar](100) NULL,
	[GiaBan] [money] NULL,
	[GiaGoc] [money] NULL,
	[MaLoai] [char](40) NULL,
	[CuaPhai] [nvarchar](20) NULL,
	[MoTa] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 13/08/2020 10:58:41 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhVien](
	[MaThanhVien] [int] IDENTITY(1,1) NOT NULL,
	[TenThanhVien] [nvarchar](100) NULL,
	[TenDN] [nvarchar](100) NOT NULL,
	[Matkhau] [nvarchar](150) NOT NULL,
	[email] [nvarchar](100) NULL,
	[GioiTinh] [nvarchar](40) NULL,
	[Congviechientai] [nvarchar](40) NULL,
	[dieukhoan] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThanhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[CT_SanPham] ([MASP], [MANSX], [Mau], [Kichthuoc], [TinhTrang], [HinhAnh]) VALUES (N'DGGO015             ', N'FR                  ', N'Xanh , đen, hồng, trắng', N'24 x 22 x 15 cm (chiều ngang x chiều dọc x độ dày)', N'Còn hàng', N'h29.jpg')
INSERT [dbo].[CT_SanPham] ([MASP], [MANSX], [Mau], [Kichthuoc], [TinhTrang], [HinhAnh]) VALUES (N'EBH0011             ', N'TV                  ', N'Đen, đỏ', N'17 x 26 x 9,5 cm (chiều ngang x chiều dọc x độ dày)', N'Hết hàng', N'h4.jpg')
INSERT [dbo].[CT_SanPham] ([MASP], [MANSX], [Mau], [Kichthuoc], [TinhTrang], [HinhAnh]) VALUES (N'ETX0093             ', N'LF                  ', N'Vàng đất', N'22 x 18 x 10,5 cm (chiều ngang x chiều dọc x độ dày)', N'Còn hàng', N'h8.jpg')
INSERT [dbo].[CT_SanPham] ([MASP], [MANSX], [Mau], [Kichthuoc], [TinhTrang], [HinhAnh]) VALUES (N'ETX0095             ', N'HT                  ', N'Xanh', N'23 x 14 x 8 cm (chiều ngang x chiều dọc x độ dày)', N'Còn hàng', N'h10.jpg')
INSERT [dbo].[CT_SanPham] ([MASP], [MANSX], [Mau], [Kichthuoc], [TinhTrang], [HinhAnh]) VALUES (N'GZ6820              ', N'GC                  ', N'Đen, trắng, kem', N'20 x 13 x 3 cm (chiều ngang x chiều dọc x độ dày)', N'Còn hàng', N'h2.jpg')
INSERT [dbo].[CT_SanPham] ([MASP], [MANSX], [Mau], [Kichthuoc], [TinhTrang], [HinhAnh]) VALUES (N'HMVI1835            ', N'TV                  ', N'Xanh, đen', N'23 x 17 x 13 cm (chiều ngang x chiều dọc x độ dày)', N'Còn hàng', N'h41.jpg')
INSERT [dbo].[CT_SanPham] ([MASP], [MANSX], [Mau], [Kichthuoc], [TinhTrang], [HinhAnh]) VALUES (N'MTX10A              ', N'SY                  ', N'Đen, trắng', N'20 x 18 x 10,5 cm (chiều ngang x chiều dọc x độ dày)', N'Còn hàng', N'h23.jpg')
INSERT [dbo].[CT_SanPham] ([MASP], [MANSX], [Mau], [Kichthuoc], [TinhTrang], [HinhAnh]) VALUES (N'TX048               ', N'HT                  ', N'Đỏ', N'20 x 18 x 10,5 cm (chiều ngang x chiều dọc x độ dày)', N'Còn hàng', N'h16.jpg')
INSERT [dbo].[CT_SanPham] ([MASP], [MANSX], [Mau], [Kichthuoc], [TinhTrang], [HinhAnh]) VALUES (N'TXG23               ', N'GC                  ', N'Xám', N'40 x 22 x 10,5 cm (chiều ngang x chiều dọc x độ dày)', N'Còn hàng', N'h38.jpg')
INSERT [dbo].[CT_SanPham] ([MASP], [MANSX], [Mau], [Kichthuoc], [TinhTrang], [HinhAnh]) VALUES (N'TXN032              ', N'TV                  ', N'Hồng, xanh', N'22 x 19 x 12,5 cm (chiều ngang x chiều dọc x độ dày)', N'Còn hàng', N'h33.jpg')
INSERT [dbo].[CT_SanPham] ([MASP], [MANSX], [Mau], [Kichthuoc], [TinhTrang], [HinhAnh]) VALUES (N'TXN27888            ', N'FR                  ', N'Đen, xanh', N'28.5 x 21 x 13,5 cm (chiều ngang x chiều dọc x độ dày)', N'Hết hàng', N'h6.jpg')
INSERT [dbo].[CT_SanPham] ([MASP], [MANSX], [Mau], [Kichthuoc], [TinhTrang], [HinhAnh]) VALUES (N'TXN27893            ', N'SY                  ', N'Đen', N'40 x 30 x 10 cm (chiều ngang x chiều dọc x độ rộng đáy)', N'Còn hàng', N'h7.jpg')
INSERT [dbo].[CT_SanPham] ([MASP], [MANSX], [Mau], [Kichthuoc], [TinhTrang], [HinhAnh]) VALUES (N'TXN29970            ', N'HT                  ', N'Vàng đất, đen', N'25 x 14 x 15,5 cm (chiều ngang x chiều dọc x độ dày)', N'Hết hàng', N'h5.jpg')
INSERT [dbo].[CT_SanPham] ([MASP], [MANSX], [Mau], [Kichthuoc], [TinhTrang], [HinhAnh]) VALUES (N'VNG52               ', N'GC                  ', N'Đen', N'20 x 10 x 5 cm (chiều ngang x chiều dọc x độ dày)', N'Còn hàng', N'h1.jpg')
INSERT [dbo].[CT_SanPham] ([MASP], [MANSX], [Mau], [Kichthuoc], [TinhTrang], [HinhAnh]) VALUES (N'VRS0055             ', N'LF                  ', N'Xanh, hồng, vàng, đỏ, nâu', N'24 x 22 x 15 cm (chiều ngang x chiều dọc x độ dày)', N'Hết hàng', N'h37.jpg')
INSERT [dbo].[HinhSP] ([MASP], [HinhCTSP1], [HinhCTSP2], [HinhCTSP3], [HinhCTSP4]) VALUES (N'DGGO015             ', N'h29_1.jpg', N'h29_2.jpg', N'h29_3.jpg', N'h29_4.jpg')
INSERT [dbo].[HinhSP] ([MASP], [HinhCTSP1], [HinhCTSP2], [HinhCTSP3], [HinhCTSP4]) VALUES (N'EBH0011             ', N'h4_1.jpg', N'h4_2.jpg', N'h4_3.jpg', N'h4_4.jpg')
INSERT [dbo].[HinhSP] ([MASP], [HinhCTSP1], [HinhCTSP2], [HinhCTSP3], [HinhCTSP4]) VALUES (N'ETX0093             ', N'h8_1.jpg', N'h8_2.jpg', N'h8_3.jpg', N'h8_4.jpg')
INSERT [dbo].[HinhSP] ([MASP], [HinhCTSP1], [HinhCTSP2], [HinhCTSP3], [HinhCTSP4]) VALUES (N'ETX0095             ', N'h10_1.jpg', N'h10_2.jpg', N'h10_3.jpg', N'h10_4.jpg')
INSERT [dbo].[HinhSP] ([MASP], [HinhCTSP1], [HinhCTSP2], [HinhCTSP3], [HinhCTSP4]) VALUES (N'GZ6820              ', N'h2_1.jpg', N'h2_2.jpg', N'h2_3.jpg', N'h2_4.jpg')
INSERT [dbo].[HinhSP] ([MASP], [HinhCTSP1], [HinhCTSP2], [HinhCTSP3], [HinhCTSP4]) VALUES (N'HMVI1835            ', N'h41_1.jpg', N'h41_2.jpg', N'h41_3.jpg', N'h41_4.jpg')
INSERT [dbo].[HinhSP] ([MASP], [HinhCTSP1], [HinhCTSP2], [HinhCTSP3], [HinhCTSP4]) VALUES (N'MTX10A              ', N'h23_1.jpg', N'h23_2.jpg', N'h23_3.jpg', N'h23_4.jpg')
INSERT [dbo].[HinhSP] ([MASP], [HinhCTSP1], [HinhCTSP2], [HinhCTSP3], [HinhCTSP4]) VALUES (N'TX048               ', N'h16_1.jpg', N'h16_2.jpg', N'h16_3.jpg', N'h16_4.jpg')
INSERT [dbo].[HinhSP] ([MASP], [HinhCTSP1], [HinhCTSP2], [HinhCTSP3], [HinhCTSP4]) VALUES (N'TXG23               ', N'h38_1.jpg', N'h38_2.jpg', N'h38_3.jpg', N'h38_4.jpg')
INSERT [dbo].[HinhSP] ([MASP], [HinhCTSP1], [HinhCTSP2], [HinhCTSP3], [HinhCTSP4]) VALUES (N'TXN032              ', N'h33_1.jpg', N'h33_2.jpg', N'h33_3.jpg', N'h33_4.jpg')
INSERT [dbo].[HinhSP] ([MASP], [HinhCTSP1], [HinhCTSP2], [HinhCTSP3], [HinhCTSP4]) VALUES (N'TXN27888            ', N'h6_1.jpg', N'h6_2.jpg', N'h6_3.jpg', N'h6_4.jpg')
INSERT [dbo].[HinhSP] ([MASP], [HinhCTSP1], [HinhCTSP2], [HinhCTSP3], [HinhCTSP4]) VALUES (N'TXN27893            ', N'h7_1.jpg', N'h7_2.jpg', N'h7_3.jpg', N'h7_4.jpg')
INSERT [dbo].[HinhSP] ([MASP], [HinhCTSP1], [HinhCTSP2], [HinhCTSP3], [HinhCTSP4]) VALUES (N'TXN29970            ', N'h5_1.jpg', N'h5_2.jpg', N'h5_3.jpg', N'h5_4.jpg')
INSERT [dbo].[HinhSP] ([MASP], [HinhCTSP1], [HinhCTSP2], [HinhCTSP3], [HinhCTSP4]) VALUES (N'VNG52               ', N'h1_1.jpg', N'h1_2.jpg', N'h1_3.jpg', N'h1_4.jpg')
INSERT [dbo].[HinhSP] ([MASP], [HinhCTSP1], [HinhCTSP2], [HinhCTSP3], [HinhCTSP4]) VALUES (N'VRS0055             ', N'h37_1.jpg', N'h37_2.jpg', N'h37_3.jpg', N'h37_4.jpg')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [ChatLieu]) VALUES (N'ML01                                    ', N'Balo', N'Da Cao Cấp')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [ChatLieu]) VALUES (N'ML02                                    ', N'Túi xách', N'Da Cá Sấu')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [ChatLieu]) VALUES (N'ML03                                    ', N'Ví', N'Da Cao Cấp')
INSERT [dbo].[NhaSX] ([MANSX], [TenNSX], [BaoHanh]) VALUES (N'FR                  ', N'France.', N'03 tháng (với lỗi do sản xuất)')
INSERT [dbo].[NhaSX] ([MANSX], [TenNSX], [BaoHanh]) VALUES (N'GC                  ', N'Gucci', N'12 tháng (với lỗi do sản xuất)')
INSERT [dbo].[NhaSX] ([MANSX], [TenNSX], [BaoHanh]) VALUES (N'HT                  ', N'Hưng Thịnh', N'6 tháng (với lỗi do sản xuất)')
INSERT [dbo].[NhaSX] ([MANSX], [TenNSX], [BaoHanh]) VALUES (N'LF                  ', N'La Force', N'Bảo hành 12 tháng')
INSERT [dbo].[NhaSX] ([MANSX], [TenNSX], [BaoHanh]) VALUES (N'SY                  ', N'SYMANTEC', N'2 tháng (với lỗi do sản xuất)')
INSERT [dbo].[NhaSX] ([MANSX], [TenNSX], [BaoHanh]) VALUES (N'TV                  ', N'Thái Việt', N'12 tháng (với lỗi do sản xuất)')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [GiaGoc], [MaLoai], [CuaPhai], [MoTa]) VALUES (N'DGGO015             ', N'Túi xách nữ thời trang JUST STAR DU172377-01', 7900000.0000, 8500000.0000, N'ML02                                    ', N'Nữ', N'Chất liệu da Pu cao cấp,  mặt trước của túi tập trung nhiều điểm nhấn như bề mặt lấp lánh kim tuyến kết hợp đính kết hạt thủ công tinh xảo')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [GiaGoc], [MaLoai], [CuaPhai], [MoTa]) VALUES (N'EBH0011             ', N'Balo nữ thời trang cao cấp ELLY – EBH11', 1190000.0000, 833000.0000, N'ML01                                    ', N'Nữ', N'Da tổng hợp cao cấp nhập khẩu mềm mịn, bóng đẹp, chống thấm nước, ẩm mốc, bám bụi và chất lượng bền bỉ lâu dài với thời gian')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [GiaGoc], [MaLoai], [CuaPhai], [MoTa]) VALUES (N'ETX0093             ', N'Túi xách nữ thời trang cao cấp ELLY – EL93', 1190000.0000, 839000.0000, N'ML02                                    ', N'Nữ', N'Da tổng hợp cao cấp nhập khẩu bóng đẹp, chống thấm tốt, chống bám bụi, bền bỉ với thời gian, đều nhau trên bề mặt da giúp tăng sự bền đẹp của sản phẩm')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [GiaGoc], [MaLoai], [CuaPhai], [MoTa]) VALUES (N'ETX0095             ', N'Túi xách nữ thời trang cao cấp ELLY – EL95', 950000.0000, 665000.0000, N'ML02                                    ', N'Nữ', N' Da tổng hợp cao cấp nhập khẩu bóng đẹp, chống bám bụi, bền bỉ với thời gian, đều nhau trên bề mặt da giúp tăng sự bền đẹp của sản phẩm')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [GiaGoc], [MaLoai], [CuaPhai], [MoTa]) VALUES (N'GZ6820              ', N'Túi Gucci siêu cấp Gz6-8do20', 2200000.0000, 3000000.0000, N'ML02                                    ', N'Nữ', N'Da thật 100% nhập khẩu, chất GG pha da ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [GiaGoc], [MaLoai], [CuaPhai], [MoTa]) VALUES (N'HMVI1835            ', N'Túi xách nam công sở hàng cao cấp BADENROO HM18-VI35', 7200000.0000, 7660000.0000, N'ML02                                    ', N'Nam', N'Da PU cao cấp, hàng mịn, chống trầy, mang phong cách châu âu là phụ kiện góp phần thể hiện phong cách tinh tế, lịch lãm của người dùng')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [GiaGoc], [MaLoai], [CuaPhai], [MoTa]) VALUES (N'MTX10A              ', N'Túi xách nữ Chanel thời trang MTX10A', 7300000.0000, 8660000.0000, N'ML02                                    ', N'Nữ', N'Da cao cấp, mềm mại, kiểu dáng hình chữ nhật cổ điển kết hợp dây đeo dạng sợi xích đôi làm toát lên vẻ thanh lịch và sang trọng dành cho các quý cô')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [GiaGoc], [MaLoai], [CuaPhai], [MoTa]) VALUES (N'TX048               ', N'Túi xách thời trang da trơn màu đỏ', 15000000.0000, 15200000.0000, N'ML02                                    ', N'Nữ', N'Túi được làm rất  tinh tế, đường may chắc chắn tạo phong cách trẻ trung, hiện đại')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [GiaGoc], [MaLoai], [CuaPhai], [MoTa]) VALUES (N'TXG23               ', N'Túi xách nam Gucci họa tiết logo', 3200000.0000, 3000000.0000, N'ML02                                    ', N'Nam', N'Kiểu dáng chi tiết chất liệu da hoàn thiện như hình 100%')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [GiaGoc], [MaLoai], [CuaPhai], [MoTa]) VALUES (N'TXN032              ', N'Túi xách nữ mini Lano thời trang sang trọng TXN032-Do', 1250000.0000, 2480000.0000, N'ML02                                    ', N'Nữ', N'Các sản phẩm túi xách nữ da thật tại Đồ Da Lano đều có mức giá rẻ và  hợp lý')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [GiaGoc], [MaLoai], [CuaPhai], [MoTa]) VALUES (N'TXN27888            ', N'Túi xách nam công sở da bò mềm TLA713-5-D', 3650000.0000, 3650000.0000, N'ML02                                    ', N'Nam', N'Chất liệu da bò cao cấp, da thật 100%')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [GiaGoc], [MaLoai], [CuaPhai], [MoTa]) VALUES (N'TXN27893            ', N'Túi nam da bò cao cấp TLA7140-D', 2900000.0000, 2900000.0000, N'ML02                                    ', N'Nam', N' Thiết kế thời trang, hiện đại, tiện dụng,Cam kết giá tốt nhất thị trường')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [GiaGoc], [MaLoai], [CuaPhai], [MoTa]) VALUES (N'TXN29970            ', N'Túi đựng ipad da bò cao cấp DB335-N', 1600000.0000, 1600000.0000, N'ML02                                    ', N'Nam', N' Thiết kế thời trang, hiện đại, tiện dụng,cam kết chất lượng sản phẩm, đền gấp 10 lần giá trị sản phẩm nếu phát hiện da giả')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [GiaGoc], [MaLoai], [CuaPhai], [MoTa]) VALUES (N'VNG52               ', N'Ví nam Gucci cầm tay mặt khóa logo đen VNG52', 2099000.0000, 3990000.0000, N'ML03                                    ', N'Nam', N'Cam kết hàng chuẩn siêu cấp like auth 99% nói không với hàng kém chất lượng như trên thị trường')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [GiaGoc], [MaLoai], [CuaPhai], [MoTa]) VALUES (N'VRS0055             ', N'Túi Xách nữ thời trang Hàn Quốc VARAS VRS055-1', 1900000.0000, 3500000.0000, N'ML02                                    ', N'Nữ', N'Được làm từ chất liệu da chất lượng cao, mềm mại và bền chắc nhưng khi đeo lên vẫn giữ được from của balo')
SET IDENTITY_INSERT [dbo].[ThanhVien] ON 

INSERT [dbo].[ThanhVien] ([MaThanhVien], [TenThanhVien], [TenDN], [Matkhau], [email], [GioiTinh], [Congviechientai], [dieukhoan]) VALUES (1, N'Nguyễn Thị Ngọc Mỹ', N'mynguyen1110', N'11102000', N'nguyenngocmy1110@gmail.com', N'Nữ', N'Sinh Viên', N'Tôi đồng ý với các điều khoảng trên ')
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TenThanhVien], [TenDN], [Matkhau], [email], [GioiTinh], [Congviechientai], [dieukhoan]) VALUES (2, N'Nguyễn Anh Thư', N'thunguyen2904', N'29042000', N'nguyenthu2942000@gmail.com', N'Nữ', N'Sinh Viên', N'Tôi đồng ý với các điều khoảng trên ')
SET IDENTITY_INSERT [dbo].[ThanhVien] OFF
ALTER TABLE [dbo].[CT_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_CT_NSX] FOREIGN KEY([MANSX])
REFERENCES [dbo].[NhaSX] ([MANSX])
GO
ALTER TABLE [dbo].[CT_SanPham] CHECK CONSTRAINT [FK_CT_NSX]
GO
ALTER TABLE [dbo].[CT_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_CT_SP] FOREIGN KEY([MASP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CT_SanPham] CHECK CONSTRAINT [FK_CT_SP]
GO
ALTER TABLE [dbo].[HinhSP]  WITH CHECK ADD  CONSTRAINT [fk_HinhSP_SP] FOREIGN KEY([MASP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[HinhSP] CHECK CONSTRAINT [fk_HinhSP_SP]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_Loai] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[Loai] ([MaLoai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_Loai]
GO
USE [master]
GO
ALTER DATABASE [QLMuaBanTuiSach] SET  READ_WRITE 
GO
