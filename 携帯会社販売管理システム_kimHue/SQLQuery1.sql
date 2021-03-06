﻿USE [Inventory_Control]
GO
/****** Object:  Table [dbo].[M_Client]    Script Date: 27/11/2020 00:40:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_Client](
	[ClID] [nchar](4) NOT NULL,
	[ClName] [nvarchar](50) NULL,
	[SOID] [int] NULL,
	[ClGender] [nvarchar](50) NULL,
	[ClJob] [nvarchar](50) NULL,
	[ClAddress] [nvarchar](100) NULL,
	[ClPnumber] [nchar](11) NULL,
	[ClFlag] [bit] NULL,
	[ClHidden] [nvarchar](225) NULL,
	[ClPostal] [nchar](7) NULL,
	[ClEmail] [nchar](50) NULL,
	[ClFax] [nchar](11) NULL,
	[EmID] [nchar](4) NULL,
 CONSTRAINT [PK_M_Client] PRIMARY KEY CLUSTERED 
(
	[ClID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[M_Employee]    Script Date: 27/11/2020 00:40:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_Employee](
	[EmID] [nchar](4) NOT NULL,
	[EmName] [nvarchar](50) NULL,
	[SOID] [int] NULL,
	[PoID] [int] NULL,
	[Hiredate] [date] NULL,
	[Passwork] [nchar](10) NULL,
	[EmFlag] [bit] NULL,
	[EmHidden] [nvarchar](255) NULL,
	[EmPnumber] [nchar](11) NULL,
 CONSTRAINT [PK_M_Employee] PRIMARY KEY CLUSTERED 
(
	[EmID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[M_Maker]    Script Date: 27/11/2020 00:40:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_Maker](
	[MaID] [nchar](6) NOT NULL,
	[MaName] [nvarchar](20) NULL,
	[MaAdress] [nvarchar](100) NULL,
	[MaPhone] [nchar](13) NULL,
	[MaPostal] [nchar](7) NULL,
	[MaFAX] [nchar](13) NULL,
	[MaFlag] [bit] NULL,
	[MaHidden] [nvarchar](250) NULL,
 CONSTRAINT [PK_M_Maker] PRIMARY KEY CLUSTERED 
(
	[MaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[M_Position]    Script Date: 27/11/2020 00:40:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_Position](
	[PoID] [int] NOT NULL,
	[Pname] [nvarchar](50) NULL,
 CONSTRAINT [PK_M_Position] PRIMARY KEY CLUSTERED 
(
	[PoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[M_Product]    Script Date: 27/11/2020 00:40:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_Product](
	[PrID] [nchar](6) NOT NULL,
	[PrName] [nvarchar](50) NULL,
	[SOID] [int] NULL,
	[PrUnitPrice] [float] NULL,
	[PrTotal] [nchar](10) NULL,
	[PDFlag] [bit] NULL,
	[PrHidden] [nvarchar](225) NULL,
	[Mnumber] [int] NULL,
	[Color] [nvarchar](50) NULL,
	[Rdate] [date] NULL,
	[PrCode] [nchar](13) NULL,
 CONSTRAINT [PK_M_Product] PRIMARY KEY CLUSTERED 
(
	[PrID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[M_SalesOffice]    Script Date: 27/11/2020 00:40:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_SalesOffice](
	[SOID] [int] NOT NULL,
	[SOName] [nvarchar](50) NULL,
	[SOAddress] [nvarchar](100) NULL,
	[SOPnumber] [nchar](13) NULL,
	[SOPost] [nchar](8) NULL,
	[SOFax] [nchar](11) NULL,
	[SoHidden] [nvarchar](225) NULL,
 CONSTRAINT [PK_M_SalesOffice] PRIMARY KEY CLUSTERED 
(
	[SOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_Arrival]    Script Date: 27/11/2020 00:40:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Arrival](
	[ArID] [nchar](6) NOT NULL,
	[SOID] [int] NULL,
	[EmID] [nchar](4) NULL,
	[ClID] [nchar](4) NULL,
	[OrID] [nchar](6) NULL,
	[ArDate] [date] NULL,
	[ArStateFlag] [int] NULL,
	[ArFlag] [bit] NULL,
	[ArHidden] [nvarchar](225) NULL,
 CONSTRAINT [PK_T_Arrival] PRIMARY KEY CLUSTERED 
(
	[ArID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_ArrivalDetail]    Script Date: 27/11/2020 00:40:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ArrivalDetail](
	[ArDetailID] [nchar](6) NOT NULL,
	[ArID] [nchar](6) NULL,
	[PrID] [nchar](6) NULL,
	[ArQuantity] [int] NOT NULL,
 CONSTRAINT [PK_T_ArrivalDetail] PRIMARY KEY CLUSTERED 
(
	[ArDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_Hacchu]    Script Date: 27/11/2020 00:40:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Hacchu](
	[HaID] [nchar](6) NOT NULL,
	[MaID] [nchar](6) NULL,
	[EmID] [nchar](4) NULL,
	[HaDate] [date] NULL,
	[HaHidden] [nvarchar](255) NULL,
 CONSTRAINT [PK_T_Hacchu] PRIMARY KEY CLUSTERED 
(
	[HaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_HacchuDetail]    Script Date: 27/11/2020 00:40:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_HacchuDetail](
	[HaDetailID] [nchar](6) NOT NULL,
	[HaID] [nchar](6) NULL,
	[PrID] [nchar](6) NULL,
	[HaQuantity] [int] NULL,
 CONSTRAINT [PK_T_HacchuDetail] PRIMARY KEY CLUSTERED 
(
	[HaDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_LoginHistory]    Script Date: 27/11/2020 00:40:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_LoginHistory](
	[LAID] [int] NOT NULL,
	[LIdate] [date] NULL,
	[LOdate] [date] NULL,
	[EmID] [nchar](4) NULL,
 CONSTRAINT [PK_T_LoginHistory] PRIMARY KEY CLUSTERED 
(
	[LAID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_Order]    Script Date: 27/11/2020 00:40:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Order](
	[OrID] [nchar](6) NOT NULL,
	[SOID] [int] NULL,
	[EmID] [nchar](4) NULL,
	[ClID] [nchar](4) NULL,
	[ClCharge] [nvarchar](50) NULL,
	[OrDate] [date] NULL,
	[OrStateFlag] [bit] NULL,
	[OrFlag] [int] NULL,
	[OrHidden] [nvarchar](225) NULL,
 CONSTRAINT [PK_T_Order] PRIMARY KEY CLUSTERED 
(
	[OrID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_OrderDetail]    Script Date: 27/11/2020 00:40:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_OrderDetail](
	[OrDerailID] [nchar](6) NOT NULL,
	[OrID] [nchar](6) NULL,
	[PrID] [nchar](6) NULL,
	[OrQuantity] [int] NULL,
	[OrTotalPrice] [float] NULL,
 CONSTRAINT [PK_T_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrDerailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_Sale]    Script Date: 27/11/2020 00:40:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Sale](
	[SaID] [nchar](6) NOT NULL,
	[ClID] [nchar](4) NULL,
	[SOID] [int] NULL,
	[EmID] [nchar](4) NULL,
	[OrID] [nchar](6) NULL,
	[SadDate] [date] NULL,
	[SaHidden] [nvarchar](225) NULL,
 CONSTRAINT [PK_T_Sale] PRIMARY KEY CLUSTERED 
(
	[SaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SaleDetail]    Script Date: 27/11/2020 00:40:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SaleDetail](
	[SaDetailID] [nchar](6) NOT NULL,
	[SaID] [nchar](6) NULL,
	[PrID] [nchar](6) NULL,
	[SaQuantity] [int] NULL,
	[SaPrTotalPrice] [float] NULL,
 CONSTRAINT [PK_T_SaleDetail] PRIMARY KEY CLUSTERED 
(
	[SaDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_Shipment]    Script Date: 27/11/2020 00:40:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Shipment](
	[ShID] [nchar](6) NOT NULL,
	[SOID] [int] NULL,
	[OrID] [nchar](6) NULL,
	[ShStateFlag] [int] NULL,
	[ShFinishDate] [date] NULL,
	[ShFlag] [bit] NULL,
	[ShHidden] [nvarchar](225) NULL,
 CONSTRAINT [PK_T_Shipment] PRIMARY KEY CLUSTERED 
(
	[ShID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_ShipmentDetail]    Script Date: 27/11/2020 00:40:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ShipmentDetail](
	[ShDetailID] [nchar](6) NOT NULL,
	[ShID] [nchar](6) NULL,
	[PrID] [nchar](6) NULL,
	[ShDquantity] [int] NULL,
 CONSTRAINT [PK_T_ShipmentDetail] PRIMARY KEY CLUSTERED 
(
	[ShDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_Stock]    Script Date: 27/11/2020 00:40:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Stock](
	[PrID] [nchar](6) NOT NULL,
	[Squantity] [int] NULL,
 CONSTRAINT [PK_T_Stock] PRIMARY KEY CLUSTERED 
(
	[PrID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_Syukko]    Script Date: 27/11/2020 00:40:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Syukko](
	[SyID] [nchar](6) NOT NULL,
	[DMFlag] [bit] NULL,
	[EmID] [nchar](4) NULL,
	[ClID] [nchar](4) NULL,
	[OrID] [nchar](6) NULL,
	[SyDate] [date] NULL,
	[SyHidden] [nvarchar](255) NULL,
 CONSTRAINT [PK_T_Syukko] PRIMARY KEY CLUSTERED 
(
	[SyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SyukkoDetails]    Script Date: 27/11/2020 00:40:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SyukkoDetails](
	[SyDID] [nchar](6) NOT NULL,
	[SyDquantity] [int] NULL,
	[PrID] [nchar](6) NULL,
	[SyID] [nchar](6) NULL,
 CONSTRAINT [PK_T_SyukkoDetails] PRIMARY KEY CLUSTERED 
(
	[SyDID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_Warehousing]    Script Date: 27/11/2020 00:40:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Warehousing](
	[WaID] [nchar](6) NOT NULL,
	[WaDate] [date] NULL,
	[HaID] [nchar](6) NULL,
	[EmID] [nchar](4) NULL,
	[WaFlag] [int] NULL,
	[WaHidden] [nchar](225) NULL,
 CONSTRAINT [PK_T_Warehousing] PRIMARY KEY CLUSTERED 
(
	[WaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_WarehousingDetails]    Script Date: 27/11/2020 00:40:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_WarehousingDetails](
	[WDID] [nchar](6) NOT NULL,
	[WaID] [nchar](6) NULL,
	[WDquantity] [int] NULL,
	[PrID] [nchar](6) NULL,
	[EmID] [nchar](4) NULL,
 CONSTRAINT [PK_T_WarehousingDetails] PRIMARY KEY CLUSTERED 
(
	[WDID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[M_Client] ([ClID], [ClName], [SOID], [ClGender], [ClJob], [ClAddress], [ClPnumber], [ClFlag], [ClHidden], [ClPostal], [ClEmail], [ClFax], [EmID]) VALUES (N'C001', N'須田　篤志 ', 1, N'女性', N'先生', N'大阪', N'01234567892', 1, NULL, N'5460032', N'suda@jp.com                                       ', N'023726321  ', NULL)
INSERT [dbo].[M_Client] ([ClID], [ClName], [SOID], [ClGender], [ClJob], [ClAddress], [ClPnumber], [ClFlag], [ClHidden], [ClPostal], [ClEmail], [ClFax], [EmID]) VALUES (N'C002', N' 阿垣　隆文', 1, N'男性', N'医者', N'大阪', N'09367822834', 1, NULL, N'5430072', N'azaki@ji.com                                      ', N'843439929  ', NULL)
INSERT [dbo].[M_Client] ([ClID], [ClName], [SOID], [ClGender], [ClJob], [ClAddress], [ClPnumber], [ClFlag], [ClHidden], [ClPostal], [ClEmail], [ClFax], [EmID]) VALUES (N'C003', N' 光崎　真人', 1, N'女性', N'サラリーマン', N'大阪', N'03672828734', 1, NULL, N'5440064', N'mitsuzaki@jp.com                                  ', N'232324423  ', NULL)
INSERT [dbo].[M_Client] ([ClID], [ClName], [SOID], [ClGender], [ClJob], [ClAddress], [ClPnumber], [ClFlag], [ClHidden], [ClPostal], [ClEmail], [ClFax], [EmID]) VALUES (N'C004', N'吉澤　雄太', 1, N'女性', N'サラリーマン', N'大阪', N'03625377238', 1, NULL, N'3456773', N'yoshigawa@jp.com                                  ', N'546564434  ', NULL)
INSERT [dbo].[M_Client] ([ClID], [ClName], [SOID], [ClGender], [ClJob], [ClAddress], [ClPnumber], [ClFlag], [ClHidden], [ClPostal], [ClEmail], [ClFax], [EmID]) VALUES (N'C005', N'立花　真一郎 ', 1, N'男性', N'サラリーマン', N'大阪', N'06726364824', 1, NULL, N'0364883', N'tachibana@jp.com                                  ', N'435657334  ', NULL)
INSERT [dbo].[M_Client] ([ClID], [ClName], [SOID], [ClGender], [ClJob], [ClAddress], [ClPnumber], [ClFlag], [ClHidden], [ClPostal], [ClEmail], [ClFax], [EmID]) VALUES (N'C006', N'国島　冨美恵', 1, N'男性', N'サラリーマン', N'大阪', N'03477347383', 1, NULL, N'5666434', N'kunishima@jp.com                                  ', N'354657732  ', NULL)
INSERT [dbo].[M_Client] ([ClID], [ClName], [SOID], [ClGender], [ClJob], [ClAddress], [ClPnumber], [ClFlag], [ClHidden], [ClPostal], [ClEmail], [ClFax], [EmID]) VALUES (N'C007', N'二川里香', 1, N'男性', N'大学生', N'東京', N'05345543282', 1, NULL, N'5430012', N'futa@jp.com                                       ', N'354657864  ', NULL)
INSERT [dbo].[M_Client] ([ClID], [ClName], [SOID], [ClGender], [ClJob], [ClAddress], [ClPnumber], [ClFlag], [ClHidden], [ClPostal], [ClEmail], [ClFax], [EmID]) VALUES (N'C008', N'日浦　明美', 1, N'男性', N'大学生', N'京都', N'03452634727', 1, NULL, N'5417893', N'hiura@jp.com                                      ', N'454356565  ', NULL)
INSERT [dbo].[M_Client] ([ClID], [ClName], [SOID], [ClGender], [ClJob], [ClAddress], [ClPnumber], [ClFlag], [ClHidden], [ClPostal], [ClEmail], [ClFax], [EmID]) VALUES (N'C009', N'阪口　桂里奈', 1, N'女性', N'大学生', N'名古屋', N'03543564546', 1, NULL, N'5367283', N'sakaguchi@jp.com                                  ', N'343545466  ', NULL)
INSERT [dbo].[M_Client] ([ClID], [ClName], [SOID], [ClGender], [ClJob], [ClAddress], [ClPnumber], [ClFlag], [ClHidden], [ClPostal], [ClEmail], [ClFax], [EmID]) VALUES (N'C010', N'山川　紫乃', 1, N'女性', N'医者', N'北海道', N'03743473634', 1, NULL, N'5482899', N'yamagawa@jp.com                                   ', N'354667899  ', NULL)
INSERT [dbo].[M_Employee] ([EmID], [EmName], [SOID], [PoID], [Hiredate], [Passwork], [EmFlag], [EmHidden], [EmPnumber]) VALUES (N'E001', N'山中　弘和', 1, 1, CAST(N'2012-09-04' AS Date), N'123456    ', 1, NULL, N'03123456789')
INSERT [dbo].[M_Employee] ([EmID], [EmName], [SOID], [PoID], [Hiredate], [Passwork], [EmFlag], [EmHidden], [EmPnumber]) VALUES (N'E002', N'柳町　幸久', 1, 2, CAST(N'2018-03-03' AS Date), N'234567    ', 1, NULL, N'13234784838')
INSERT [dbo].[M_Employee] ([EmID], [EmName], [SOID], [PoID], [Hiredate], [Passwork], [EmFlag], [EmHidden], [EmPnumber]) VALUES (N'E003', N'塩本　和孝', 1, 3, CAST(N'2020-03-04' AS Date), N'000022    ', 1, NULL, N'03743648223')
INSERT [dbo].[M_Employee] ([EmID], [EmName], [SOID], [PoID], [Hiredate], [Passwork], [EmFlag], [EmHidden], [EmPnumber]) VALUES (N'E004', N'谷脇　克治', 1, 3, CAST(N'2019-02-04' AS Date), N'190023    ', 1, NULL, N'03473643824')
INSERT [dbo].[M_Employee] ([EmID], [EmName], [SOID], [PoID], [Hiredate], [Passwork], [EmFlag], [EmHidden], [EmPnumber]) VALUES (N'E005', N'進藤　寿利', 1, 3, CAST(N'2019-12-03' AS Date), N'220898    ', 1, NULL, N'06745377823')
INSERT [dbo].[M_Employee] ([EmID], [EmName], [SOID], [PoID], [Hiredate], [Passwork], [EmFlag], [EmHidden], [EmPnumber]) VALUES (N'E006', N'塩田　芳根', 1, 3, CAST(N'2020-01-04' AS Date), N'141384    ', 1, NULL, N'02364384854')
INSERT [dbo].[M_Employee] ([EmID], [EmName], [SOID], [PoID], [Hiredate], [Passwork], [EmFlag], [EmHidden], [EmPnumber]) VALUES (N'E007', N'小板橋　元子', 1, 3, CAST(N'2020-04-06' AS Date), N'434355    ', 1, NULL, N'03476348743')
INSERT [dbo].[M_Employee] ([EmID], [EmName], [SOID], [PoID], [Hiredate], [Passwork], [EmFlag], [EmHidden], [EmPnumber]) VALUES (N'E008', N'岩本　由美子', 1, 3, CAST(N'2019-04-08' AS Date), N'434635    ', 1, NULL, N'03463648434')
INSERT [dbo].[M_Employee] ([EmID], [EmName], [SOID], [PoID], [Hiredate], [Passwork], [EmFlag], [EmHidden], [EmPnumber]) VALUES (N'E009', N'浜田　子', 1, 3, CAST(N'2019-10-03' AS Date), N'232455    ', 1, NULL, N'03643743483')
INSERT [dbo].[M_Employee] ([EmID], [EmName], [SOID], [PoID], [Hiredate], [Passwork], [EmFlag], [EmHidden], [EmPnumber]) VALUES (N'E010', N'汐見　栄美', 1, 3, CAST(N'2015-03-09' AS Date), N'123754    ', 1, NULL, N'03434738484')
INSERT [dbo].[M_Employee] ([EmID], [EmName], [SOID], [PoID], [Hiredate], [Passwork], [EmFlag], [EmHidden], [EmPnumber]) VALUES (N'E011', N'石田　柚木', 1, 4, CAST(N'2015-02-09' AS Date), N'192772    ', 1, NULL, N'09124537245')
INSERT [dbo].[M_Employee] ([EmID], [EmName], [SOID], [PoID], [Hiredate], [Passwork], [EmFlag], [EmHidden], [EmPnumber]) VALUES (N'E012', N'藤枝　つばき', 1, 4, CAST(N'2015-06-09' AS Date), N'354755    ', 1, NULL, N'02487348545')
INSERT [dbo].[M_Employee] ([EmID], [EmName], [SOID], [PoID], [Hiredate], [Passwork], [EmFlag], [EmHidden], [EmPnumber]) VALUES (N'E013', N'黒江　まさや', 1, 5, CAST(N'2016-06-09' AS Date), N'555555    ', 1, NULL, N'04374738834')
INSERT [dbo].[M_Employee] ([EmID], [EmName], [SOID], [PoID], [Hiredate], [Passwork], [EmFlag], [EmHidden], [EmPnumber]) VALUES (N'E014', N'荒木田　陸', 1, 6, CAST(N'2016-06-09' AS Date), N'666666    ', 1, NULL, N'07457387484')
INSERT [dbo].[M_Maker] ([MaID], [MaName], [MaAdress], [MaPhone], [MaPostal], [MaFAX], [MaFlag], [MaHidden]) VALUES (N'APJ001', N'AppleMaker', N' 日本', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[M_Position] ([PoID], [Pname]) VALUES (1, N'Manage')
INSERT [dbo].[M_Position] ([PoID], [Pname]) VALUES (2, N'Deputy Manage ')
INSERT [dbo].[M_Position] ([PoID], [Pname]) VALUES (3, N'Staff')
INSERT [dbo].[M_Position] ([PoID], [Pname]) VALUES (4, N'Warehose staff')
INSERT [dbo].[M_Position] ([PoID], [Pname]) VALUES (5, N'Goods Receipt staff')
INSERT [dbo].[M_Position] ([PoID], [Pname]) VALUES (6, N'Goods Issue staff')
INSERT [dbo].[M_Product] ([PrID], [PrName], [SOID], [PrUnitPrice], [PrTotal], [PDFlag], [PrHidden], [Mnumber], [Color], [Rdate], [PrCode]) VALUES (N'Pap001', N'AirPods', 1, 20000, NULL, 1, NULL, 20011, N'white', CAST(N'2020-02-02' AS Date), N'322244       ')
INSERT [dbo].[M_Product] ([PrID], [PrName], [SOID], [PrUnitPrice], [PrTotal], [PDFlag], [PrHidden], [Mnumber], [Color], [Rdate], [PrCode]) VALUES (N'Pap002', N'AirPods Pro', 1, 30000, NULL, 1, NULL, 20012, N'white', CAST(N'2020-02-03' AS Date), N'324345       ')
INSERT [dbo].[M_Product] ([PrID], [PrName], [SOID], [PrUnitPrice], [PrTotal], [PDFlag], [PrHidden], [Mnumber], [Color], [Rdate], [PrCode]) VALUES (N'Phm001', N'HomePod Mini', 1, 20000, NULL, 1, NULL, 34576, N'white', CAST(N'2020-05-06' AS Date), N'232434       ')
INSERT [dbo].[M_Product] ([PrID], [PrName], [SOID], [PrUnitPrice], [PrTotal], [PDFlag], [PrHidden], [Mnumber], [Color], [Rdate], [PrCode]) VALUES (N'Phm002', N'HomePod Mini', 1, 20000, NULL, 1, NULL, 34356, N'black', CAST(N'2020-06-06' AS Date), N'123425       ')
INSERT [dbo].[M_Product] ([PrID], [PrName], [SOID], [PrUnitPrice], [PrTotal], [PDFlag], [PrHidden], [Mnumber], [Color], [Rdate], [PrCode]) VALUES (N'Php001', N'HeadPhone', 1, 20800, NULL, 1, NULL, 43454, N'rose gold', CAST(N'2020-04-04' AS Date), N'243445       ')
INSERT [dbo].[M_Product] ([PrID], [PrName], [SOID], [PrUnitPrice], [PrTotal], [PDFlag], [PrHidden], [Mnumber], [Color], [Rdate], [PrCode]) VALUES (N'Php002', N'HeadPhone Bluetooth', 1, 10200, NULL, 1, NULL, 34353, N'red and black', CAST(N'2020-03-03' AS Date), N'434345       ')
INSERT [dbo].[M_Product] ([PrID], [PrName], [SOID], [PrUnitPrice], [PrTotal], [PDFlag], [PrHidden], [Mnumber], [Color], [Rdate], [PrCode]) VALUES (N'Pic001', N'iphone10 Case', 1, 4000, NULL, 1, NULL, 12324, N'grey', CAST(N'2020-03-03' AS Date), N'345467       ')
INSERT [dbo].[M_Product] ([PrID], [PrName], [SOID], [PrUnitPrice], [PrTotal], [PDFlag], [PrHidden], [Mnumber], [Color], [Rdate], [PrCode]) VALUES (N'Pic002', N'iphone11 Case', 1, 5000, NULL, 1, NULL, 34355, N'pink', CAST(N'2020-08-02' AS Date), N'434344       ')
INSERT [dbo].[M_Product] ([PrID], [PrName], [SOID], [PrUnitPrice], [PrTotal], [PDFlag], [PrHidden], [Mnumber], [Color], [Rdate], [PrCode]) VALUES (N'Psp001', N'IphoneX', 1, 80000, NULL, 1, NULL, 10022, N'black', CAST(N'2019-04-04' AS Date), N'123456       ')
INSERT [dbo].[M_Product] ([PrID], [PrName], [SOID], [PrUnitPrice], [PrTotal], [PDFlag], [PrHidden], [Mnumber], [Color], [Rdate], [PrCode]) VALUES (N'Psp002', N'IphoneX', 1, 80000, NULL, 1, NULL, 10023, N'white', CAST(N'2019-04-06' AS Date), N'123453       ')
INSERT [dbo].[M_Product] ([PrID], [PrName], [SOID], [PrUnitPrice], [PrTotal], [PDFlag], [PrHidden], [Mnumber], [Color], [Rdate], [PrCode]) VALUES (N'Psp003', N'IphoneX', 1, 80000, NULL, 1, NULL, 10024, N'Red', CAST(N'2019-04-05' AS Date), N'123723       ')
INSERT [dbo].[M_Product] ([PrID], [PrName], [SOID], [PrUnitPrice], [PrTotal], [PDFlag], [PrHidden], [Mnumber], [Color], [Rdate], [PrCode]) VALUES (N'Psp004', N'IphoneX', 1, 80000, NULL, 1, NULL, 10025, N'lighter grey', CAST(N'2019-04-07' AS Date), N'157488       ')
INSERT [dbo].[M_Product] ([PrID], [PrName], [SOID], [PrUnitPrice], [PrTotal], [PDFlag], [PrHidden], [Mnumber], [Color], [Rdate], [PrCode]) VALUES (N'Psp005', N'Iphone11', 1, 10000, NULL, 1, NULL, 11011, N'white', CAST(N'2020-03-05' AS Date), N'123647       ')
INSERT [dbo].[M_Product] ([PrID], [PrName], [SOID], [PrUnitPrice], [PrTotal], [PDFlag], [PrHidden], [Mnumber], [Color], [Rdate], [PrCode]) VALUES (N'Psp006', N'Iphone11', 1, 10000, NULL, 1, NULL, 11012, N'black', CAST(N'2020-03-05' AS Date), N'343842       ')
INSERT [dbo].[M_Product] ([PrID], [PrName], [SOID], [PrUnitPrice], [PrTotal], [PDFlag], [PrHidden], [Mnumber], [Color], [Rdate], [PrCode]) VALUES (N'Psp007', N'Iphone11pro', 1, 11000, NULL, 1, NULL, 12001, N'midnight green', CAST(N'2020-04-09' AS Date), N'153562       ')
INSERT [dbo].[M_Product] ([PrID], [PrName], [SOID], [PrUnitPrice], [PrTotal], [PDFlag], [PrHidden], [Mnumber], [Color], [Rdate], [PrCode]) VALUES (N'Psp008', N'Iphone11pro', 1, 11000, NULL, 1, NULL, 12002, N'silver', CAST(N'2020-04-03' AS Date), N'343844       ')
INSERT [dbo].[M_Product] ([PrID], [PrName], [SOID], [PrUnitPrice], [PrTotal], [PDFlag], [PrHidden], [Mnumber], [Color], [Rdate], [PrCode]) VALUES (N'Psp009', N'Iphone11proMax', 1, 11500, NULL, 1, NULL, 13001, N'gold', CAST(N'2020-05-05' AS Date), N'232435       ')
INSERT [dbo].[M_Product] ([PrID], [PrName], [SOID], [PrUnitPrice], [PrTotal], [PDFlag], [PrHidden], [Mnumber], [Color], [Rdate], [PrCode]) VALUES (N'Psp010', N'Iphone11proMax', 1, 11500, NULL, 1, NULL, 13002, N'space gray', CAST(N'2020-05-03' AS Date), N'234344       ')
INSERT [dbo].[M_SalesOffice] ([SOID], [SOName], [SOAddress], [SOPnumber], [SOPost], [SOFax], [SoHidden]) VALUES (1, N'Apple 心斎橋', N'大阪市中央区心斎橋1丁目　5-5', N'0649634500   ', N'5420086 ', N'03425645   ', NULL)
INSERT [dbo].[M_SalesOffice] ([SOID], [SOName], [SOAddress], [SOPnumber], [SOPost], [SOFax], [SoHidden]) VALUES (2, N'Apple 東京', N'東京', N'0646277278   ', N'123456  ', N'04668382   ', NULL)
INSERT [dbo].[T_Arrival] ([ArID], [SOID], [EmID], [ClID], [OrID], [ArDate], [ArStateFlag], [ArFlag], [ArHidden]) VALUES (N'Ar0001', 1, N'E013', N'C001', N'Or0001', CAST(N'2020-06-12' AS Date), NULL, 1, NULL)
INSERT [dbo].[T_Arrival] ([ArID], [SOID], [EmID], [ClID], [OrID], [ArDate], [ArStateFlag], [ArFlag], [ArHidden]) VALUES (N'Ar0002', 1, N'E013', N'C002', N'Or0002', CAST(N'2020-08-14' AS Date), NULL, 1, NULL)
INSERT [dbo].[T_Arrival] ([ArID], [SOID], [EmID], [ClID], [OrID], [ArDate], [ArStateFlag], [ArFlag], [ArHidden]) VALUES (N'Ar0003', 1, N'E013', N'C003', N'Or0003', CAST(N'2020-09-22' AS Date), NULL, 1, NULL)
INSERT [dbo].[T_Arrival] ([ArID], [SOID], [EmID], [ClID], [OrID], [ArDate], [ArStateFlag], [ArFlag], [ArHidden]) VALUES (N'Ar0004', 1, N'E013', N'C004', N'Or0004', CAST(N'2020-06-01' AS Date), NULL, 1, NULL)
INSERT [dbo].[T_Arrival] ([ArID], [SOID], [EmID], [ClID], [OrID], [ArDate], [ArStateFlag], [ArFlag], [ArHidden]) VALUES (N'Ar0005', 1, N'E013', N'C003', N'Or0005', CAST(N'2020-04-27' AS Date), NULL, 1, NULL)
INSERT [dbo].[T_Arrival] ([ArID], [SOID], [EmID], [ClID], [OrID], [ArDate], [ArStateFlag], [ArFlag], [ArHidden]) VALUES (N'Ar0006', 1, N'E013', N'C005', N'Or0006', CAST(N'2020-11-01' AS Date), NULL, 1, NULL)
INSERT [dbo].[T_Arrival] ([ArID], [SOID], [EmID], [ClID], [OrID], [ArDate], [ArStateFlag], [ArFlag], [ArHidden]) VALUES (N'Ar0007', 1, N'E013', N'C002', N'Or0007', CAST(N'2020-09-15' AS Date), NULL, 1, NULL)
INSERT [dbo].[T_Arrival] ([ArID], [SOID], [EmID], [ClID], [OrID], [ArDate], [ArStateFlag], [ArFlag], [ArHidden]) VALUES (N'Ar0008', 1, N'E013', N'C005', N'Or0008', CAST(N'2020-07-12' AS Date), NULL, 1, NULL)
INSERT [dbo].[T_Arrival] ([ArID], [SOID], [EmID], [ClID], [OrID], [ArDate], [ArStateFlag], [ArFlag], [ArHidden]) VALUES (N'Ar0009', 1, N'E013', N'C006', N'Or0009', CAST(N'2020-06-01' AS Date), NULL, 1, NULL)
INSERT [dbo].[T_Arrival] ([ArID], [SOID], [EmID], [ClID], [OrID], [ArDate], [ArStateFlag], [ArFlag], [ArHidden]) VALUES (N'Ar0010', 1, N'E013', N'C007', N'Or0010', CAST(N'2020-07-01' AS Date), NULL, 1, NULL)
INSERT [dbo].[T_Arrival] ([ArID], [SOID], [EmID], [ClID], [OrID], [ArDate], [ArStateFlag], [ArFlag], [ArHidden]) VALUES (N'Ar0011', 1, N'E013', N'C008', N'Or0011', CAST(N'2020-06-14' AS Date), NULL, 1, NULL)
INSERT [dbo].[T_Arrival] ([ArID], [SOID], [EmID], [ClID], [OrID], [ArDate], [ArStateFlag], [ArFlag], [ArHidden]) VALUES (N'Ar0012', 1, N'E013', N'C009', N'Or0012', CAST(N'2020-07-04' AS Date), NULL, 1, NULL)
INSERT [dbo].[T_Arrival] ([ArID], [SOID], [EmID], [ClID], [OrID], [ArDate], [ArStateFlag], [ArFlag], [ArHidden]) VALUES (N'Ar0013', 1, N'E013', N'C010', N'Or0013', CAST(N'2020-07-16' AS Date), NULL, 1, NULL)
INSERT [dbo].[T_ArrivalDetail] ([ArDetailID], [ArID], [PrID], [ArQuantity]) VALUES (N'ArD001', N'Ar0001', N'Psp003', 1)
INSERT [dbo].[T_ArrivalDetail] ([ArDetailID], [ArID], [PrID], [ArQuantity]) VALUES (N'ArD002', N'Ar0002', N'Psp004', 1)
INSERT [dbo].[T_ArrivalDetail] ([ArDetailID], [ArID], [PrID], [ArQuantity]) VALUES (N'ArD003', N'Ar0003', N'Psp006', 2)
INSERT [dbo].[T_ArrivalDetail] ([ArDetailID], [ArID], [PrID], [ArQuantity]) VALUES (N'ArD004', N'Ar0004', N'Pap001', 1)
INSERT [dbo].[T_ArrivalDetail] ([ArDetailID], [ArID], [PrID], [ArQuantity]) VALUES (N'ArD005', N'Ar0005', N'Pap002', 2)
INSERT [dbo].[T_ArrivalDetail] ([ArDetailID], [ArID], [PrID], [ArQuantity]) VALUES (N'ArD006', N'Ar0006', N'Phm001', 1)
INSERT [dbo].[T_ArrivalDetail] ([ArDetailID], [ArID], [PrID], [ArQuantity]) VALUES (N'ArD007', N'Ar0007', N'Pic001', 1)
INSERT [dbo].[T_ArrivalDetail] ([ArDetailID], [ArID], [PrID], [ArQuantity]) VALUES (N'ArD008', N'Ar0008', N'Pic002', 2)
INSERT [dbo].[T_ArrivalDetail] ([ArDetailID], [ArID], [PrID], [ArQuantity]) VALUES (N'ArD009', N'Ar0009', N'Psp009', 1)
INSERT [dbo].[T_ArrivalDetail] ([ArDetailID], [ArID], [PrID], [ArQuantity]) VALUES (N'ArD010', N'Ar0010', N'Psp007', 2)
INSERT [dbo].[T_ArrivalDetail] ([ArDetailID], [ArID], [PrID], [ArQuantity]) VALUES (N'ArD011', N'Ar0011', N'Psp003', 2)
INSERT [dbo].[T_ArrivalDetail] ([ArDetailID], [ArID], [PrID], [ArQuantity]) VALUES (N'ArD012', N'Ar0012', N'Pap001', 1)
INSERT [dbo].[T_ArrivalDetail] ([ArDetailID], [ArID], [PrID], [ArQuantity]) VALUES (N'ArD013', N'Ar0013', N'Pic001', 1)
INSERT [dbo].[T_Hacchu] ([HaID], [MaID], [EmID], [HaDate], [HaHidden]) VALUES (N'Ha0001', N'APJ001', N'E002', CAST(N'2020-06-08' AS Date), NULL)
INSERT [dbo].[T_Hacchu] ([HaID], [MaID], [EmID], [HaDate], [HaHidden]) VALUES (N'Ha0002', N'APJ001', N'E002', CAST(N'2020-08-08' AS Date), NULL)
INSERT [dbo].[T_Hacchu] ([HaID], [MaID], [EmID], [HaDate], [HaHidden]) VALUES (N'Ha0003', N'APJ001', N'E002', CAST(N'2020-09-08' AS Date), NULL)
INSERT [dbo].[T_Hacchu] ([HaID], [MaID], [EmID], [HaDate], [HaHidden]) VALUES (N'Ha0004', N'APJ001', N'E002', CAST(N'2020-05-18' AS Date), NULL)
INSERT [dbo].[T_Hacchu] ([HaID], [MaID], [EmID], [HaDate], [HaHidden]) VALUES (N'Ha0005', N'APJ001', N'E002', CAST(N'2020-04-19' AS Date), NULL)
INSERT [dbo].[T_Hacchu] ([HaID], [MaID], [EmID], [HaDate], [HaHidden]) VALUES (N'Ha0006', N'APJ001', N'E002', CAST(N'2020-10-28' AS Date), NULL)
INSERT [dbo].[T_Hacchu] ([HaID], [MaID], [EmID], [HaDate], [HaHidden]) VALUES (N'Ha0007', N'APJ001', N'E002', CAST(N'2020-07-01' AS Date), NULL)
INSERT [dbo].[T_Hacchu] ([HaID], [MaID], [EmID], [HaDate], [HaHidden]) VALUES (N'Ha0008', N'APJ001', N'E002', CAST(N'2020-05-26' AS Date), NULL)
INSERT [dbo].[T_Hacchu] ([HaID], [MaID], [EmID], [HaDate], [HaHidden]) VALUES (N'Ha0009', N'APJ001', N'E002', CAST(N'2020-06-25' AS Date), NULL)
INSERT [dbo].[T_HacchuDetail] ([HaDetailID], [HaID], [PrID], [HaQuantity]) VALUES (N'HaD001', N'Ha0001', N'Psp003', 3)
INSERT [dbo].[T_HacchuDetail] ([HaDetailID], [HaID], [PrID], [HaQuantity]) VALUES (N'HaD002', N'Ha0001', N'Pic001', 2)
INSERT [dbo].[T_HacchuDetail] ([HaDetailID], [HaID], [PrID], [HaQuantity]) VALUES (N'HaD003', N'Ha0002', N'Psp004', 1)
INSERT [dbo].[T_HacchuDetail] ([HaDetailID], [HaID], [PrID], [HaQuantity]) VALUES (N'HaD004', N'Ha0003', N'Psp006', 2)
INSERT [dbo].[T_HacchuDetail] ([HaDetailID], [HaID], [PrID], [HaQuantity]) VALUES (N'HaD005', N'Ha0003', N'Pic002', 2)
INSERT [dbo].[T_HacchuDetail] ([HaDetailID], [HaID], [PrID], [HaQuantity]) VALUES (N'HaD006', N'Ha0004', N'Pap001', 1)
INSERT [dbo].[T_HacchuDetail] ([HaDetailID], [HaID], [PrID], [HaQuantity]) VALUES (N'HaD007', N'Ha0005', N'Pap002', 2)
INSERT [dbo].[T_HacchuDetail] ([HaDetailID], [HaID], [PrID], [HaQuantity]) VALUES (N'HaD008', N'Ha0006', N'Phm001', 1)
INSERT [dbo].[T_HacchuDetail] ([HaDetailID], [HaID], [PrID], [HaQuantity]) VALUES (N'HaD009', N'Ha0007', N'Pic002', 2)
INSERT [dbo].[T_HacchuDetail] ([HaDetailID], [HaID], [PrID], [HaQuantity]) VALUES (N'HaD010', N'Ha0007', N'Pap001', 1)
INSERT [dbo].[T_HacchuDetail] ([HaDetailID], [HaID], [PrID], [HaQuantity]) VALUES (N'HaD011', N'Ha0008', N'Psp009', 1)
INSERT [dbo].[T_HacchuDetail] ([HaDetailID], [HaID], [PrID], [HaQuantity]) VALUES (N'HaD012', N'Ha0009', N'Psp007', 2)
INSERT [dbo].[T_Order] ([OrID], [SOID], [EmID], [ClID], [ClCharge], [OrDate], [OrStateFlag], [OrFlag], [OrHidden]) VALUES (N'Or0001', 1, N'E003', N'C001', NULL, CAST(N'2020-06-07' AS Date), NULL, NULL, NULL)
INSERT [dbo].[T_Order] ([OrID], [SOID], [EmID], [ClID], [ClCharge], [OrDate], [OrStateFlag], [OrFlag], [OrHidden]) VALUES (N'Or0002', 1, N'E003', N'C002', NULL, CAST(N'2020-08-07' AS Date), NULL, NULL, NULL)
INSERT [dbo].[T_Order] ([OrID], [SOID], [EmID], [ClID], [ClCharge], [OrDate], [OrStateFlag], [OrFlag], [OrHidden]) VALUES (N'Or0003', 1, N'E004', N'C003', NULL, CAST(N'2020-09-04' AS Date), NULL, NULL, NULL)
INSERT [dbo].[T_Order] ([OrID], [SOID], [EmID], [ClID], [ClCharge], [OrDate], [OrStateFlag], [OrFlag], [OrHidden]) VALUES (N'Or0004', 1, N'E005', N'C004', NULL, CAST(N'2020-05-17' AS Date), NULL, NULL, NULL)
INSERT [dbo].[T_Order] ([OrID], [SOID], [EmID], [ClID], [ClCharge], [OrDate], [OrStateFlag], [OrFlag], [OrHidden]) VALUES (N'Or0005', 1, N'E006', N'C003', NULL, CAST(N'2020-04-18' AS Date), NULL, NULL, NULL)
INSERT [dbo].[T_Order] ([OrID], [SOID], [EmID], [ClID], [ClCharge], [OrDate], [OrStateFlag], [OrFlag], [OrHidden]) VALUES (N'Or0006', 1, N'E003', N'C005', NULL, CAST(N'2020-10-27' AS Date), NULL, NULL, NULL)
INSERT [dbo].[T_Order] ([OrID], [SOID], [EmID], [ClID], [ClCharge], [OrDate], [OrStateFlag], [OrFlag], [OrHidden]) VALUES (N'Or0007', 1, N'E004', N'C002', NULL, CAST(N'2020-09-07' AS Date), NULL, NULL, NULL)
INSERT [dbo].[T_Order] ([OrID], [SOID], [EmID], [ClID], [ClCharge], [OrDate], [OrStateFlag], [OrFlag], [OrHidden]) VALUES (N'Or0008', 1, N'E006', N'C005', NULL, CAST(N'2020-06-30' AS Date), NULL, NULL, NULL)
INSERT [dbo].[T_Order] ([OrID], [SOID], [EmID], [ClID], [ClCharge], [OrDate], [OrStateFlag], [OrFlag], [OrHidden]) VALUES (N'Or0009', 1, N'E005', N'C006', NULL, CAST(N'2020-05-25' AS Date), NULL, NULL, NULL)
INSERT [dbo].[T_Order] ([OrID], [SOID], [EmID], [ClID], [ClCharge], [OrDate], [OrStateFlag], [OrFlag], [OrHidden]) VALUES (N'Or0010', 1, N'E003', N'C007', NULL, CAST(N'2020-06-24' AS Date), NULL, NULL, NULL)
INSERT [dbo].[T_Order] ([OrID], [SOID], [EmID], [ClID], [ClCharge], [OrDate], [OrStateFlag], [OrFlag], [OrHidden]) VALUES (N'Or0011', 1, N'E007', N'C008', NULL, CAST(N'2020-06-07' AS Date), NULL, NULL, NULL)
INSERT [dbo].[T_Order] ([OrID], [SOID], [EmID], [ClID], [ClCharge], [OrDate], [OrStateFlag], [OrFlag], [OrHidden]) VALUES (N'Or0012', 1, N'E008', N'C009', NULL, CAST(N'2020-06-27' AS Date), NULL, NULL, NULL)
INSERT [dbo].[T_Order] ([OrID], [SOID], [EmID], [ClID], [ClCharge], [OrDate], [OrStateFlag], [OrFlag], [OrHidden]) VALUES (N'Or0013', 1, N'E009', N'C010', NULL, CAST(N'2020-06-07' AS Date), NULL, NULL, NULL)
INSERT [dbo].[T_OrderDetail] ([OrDerailID], [OrID], [PrID], [OrQuantity], [OrTotalPrice]) VALUES (N'OrD001', N'Or0001', N'Psp003', 1, 80000)
INSERT [dbo].[T_OrderDetail] ([OrDerailID], [OrID], [PrID], [OrQuantity], [OrTotalPrice]) VALUES (N'OrD002', N'Or0002', N'Psp004', 1, 80000)
INSERT [dbo].[T_OrderDetail] ([OrDerailID], [OrID], [PrID], [OrQuantity], [OrTotalPrice]) VALUES (N'OrD003', N'Or0003', N'Psp006', 2, 200000)
INSERT [dbo].[T_OrderDetail] ([OrDerailID], [OrID], [PrID], [OrQuantity], [OrTotalPrice]) VALUES (N'OrD004', N'Or0004', N'Pap001', 1, 20000)
INSERT [dbo].[T_OrderDetail] ([OrDerailID], [OrID], [PrID], [OrQuantity], [OrTotalPrice]) VALUES (N'OrD005', N'Or0005', N'Pap002', 2, 60000)
INSERT [dbo].[T_OrderDetail] ([OrDerailID], [OrID], [PrID], [OrQuantity], [OrTotalPrice]) VALUES (N'OrD006', N'Or0006', N'Phm001', 1, 20000)
INSERT [dbo].[T_OrderDetail] ([OrDerailID], [OrID], [PrID], [OrQuantity], [OrTotalPrice]) VALUES (N'OrD007', N'Or0007', N'Pic001', 1, 4000)
INSERT [dbo].[T_OrderDetail] ([OrDerailID], [OrID], [PrID], [OrQuantity], [OrTotalPrice]) VALUES (N'OrD008', N'Or0008', N'Pic002', 2, 10000)
INSERT [dbo].[T_OrderDetail] ([OrDerailID], [OrID], [PrID], [OrQuantity], [OrTotalPrice]) VALUES (N'OrD009', N'Or0009', N'Psp009', 1, 115000)
INSERT [dbo].[T_OrderDetail] ([OrDerailID], [OrID], [PrID], [OrQuantity], [OrTotalPrice]) VALUES (N'OrD010', N'Or0010', N'Psp007', 2, 22000)
INSERT [dbo].[T_OrderDetail] ([OrDerailID], [OrID], [PrID], [OrQuantity], [OrTotalPrice]) VALUES (N'OrD011', N'Or0011', N'Psp003', 2, 160000)
INSERT [dbo].[T_OrderDetail] ([OrDerailID], [OrID], [PrID], [OrQuantity], [OrTotalPrice]) VALUES (N'OrD012', N'Or0012', N'Pap001', 1, 20000)
INSERT [dbo].[T_OrderDetail] ([OrDerailID], [OrID], [PrID], [OrQuantity], [OrTotalPrice]) VALUES (N'OrD013', N'Or0013', N'Pic001', 1, 4000)
INSERT [dbo].[T_Sale] ([SaID], [ClID], [SOID], [EmID], [OrID], [SadDate], [SaHidden]) VALUES (N'Sa0001', N'C001', 1, N'E003', N'Or0001', CAST(N'2020-06-07' AS Date), NULL)
INSERT [dbo].[T_Sale] ([SaID], [ClID], [SOID], [EmID], [OrID], [SadDate], [SaHidden]) VALUES (N'Sa0002', N'C002', 1, N'E003', N'Or0002', CAST(N'2020-08-07' AS Date), NULL)
INSERT [dbo].[T_Sale] ([SaID], [ClID], [SOID], [EmID], [OrID], [SadDate], [SaHidden]) VALUES (N'Sa0003', N'C003', 1, N'E004', N'Or0003', CAST(N'2020-09-04' AS Date), NULL)
INSERT [dbo].[T_Sale] ([SaID], [ClID], [SOID], [EmID], [OrID], [SadDate], [SaHidden]) VALUES (N'Sa0004', N'C004', 1, N'E005', N'Or0004', CAST(N'2020-05-17' AS Date), NULL)
INSERT [dbo].[T_Sale] ([SaID], [ClID], [SOID], [EmID], [OrID], [SadDate], [SaHidden]) VALUES (N'Sa0005', N'C003', 1, N'E006', N'Or0005', CAST(N'2020-04-18' AS Date), NULL)
INSERT [dbo].[T_Sale] ([SaID], [ClID], [SOID], [EmID], [OrID], [SadDate], [SaHidden]) VALUES (N'Sa0006', N'C005', 1, N'E003', N'Or0006', CAST(N'2020-10-27' AS Date), NULL)
INSERT [dbo].[T_Sale] ([SaID], [ClID], [SOID], [EmID], [OrID], [SadDate], [SaHidden]) VALUES (N'Sa0007', N'C002', 1, N'E004', N'Or0007', CAST(N'2020-09-07' AS Date), NULL)
INSERT [dbo].[T_Sale] ([SaID], [ClID], [SOID], [EmID], [OrID], [SadDate], [SaHidden]) VALUES (N'Sa0008', N'C005', 1, N'E006', N'Or0008', CAST(N'2020-06-30' AS Date), NULL)
INSERT [dbo].[T_Sale] ([SaID], [ClID], [SOID], [EmID], [OrID], [SadDate], [SaHidden]) VALUES (N'Sa0009', N'C006', 1, N'E005', N'Or0009', CAST(N'2020-05-25' AS Date), NULL)
INSERT [dbo].[T_Sale] ([SaID], [ClID], [SOID], [EmID], [OrID], [SadDate], [SaHidden]) VALUES (N'Sa0010', N'C007', 1, N'E003', N'Or0010', CAST(N'2020-06-24' AS Date), NULL)
INSERT [dbo].[T_Sale] ([SaID], [ClID], [SOID], [EmID], [OrID], [SadDate], [SaHidden]) VALUES (N'Sa0011', N'C008', 1, N'E007', N'Or0011', CAST(N'2020-06-07' AS Date), NULL)
INSERT [dbo].[T_Sale] ([SaID], [ClID], [SOID], [EmID], [OrID], [SadDate], [SaHidden]) VALUES (N'Sa0012', N'C009', 1, N'E008', N'Or0012', CAST(N'2020-06-27' AS Date), NULL)
INSERT [dbo].[T_Sale] ([SaID], [ClID], [SOID], [EmID], [OrID], [SadDate], [SaHidden]) VALUES (N'Sa0013', N'C010', 1, N'E009', N'Or0013', CAST(N'2020-06-07' AS Date), NULL)
INSERT [dbo].[T_SaleDetail] ([SaDetailID], [SaID], [PrID], [SaQuantity], [SaPrTotalPrice]) VALUES (N'SaD001', N'Sa0001', N'Psp003', 1, 80000)
INSERT [dbo].[T_SaleDetail] ([SaDetailID], [SaID], [PrID], [SaQuantity], [SaPrTotalPrice]) VALUES (N'SaD002', N'Sa0002', N'Psp004', 1, 80000)
INSERT [dbo].[T_SaleDetail] ([SaDetailID], [SaID], [PrID], [SaQuantity], [SaPrTotalPrice]) VALUES (N'SaD003', N'Sa0003', N'Psp006', 2, 200000)
INSERT [dbo].[T_SaleDetail] ([SaDetailID], [SaID], [PrID], [SaQuantity], [SaPrTotalPrice]) VALUES (N'SaD004', N'Sa0004', N'Pap001', 1, 20000)
INSERT [dbo].[T_SaleDetail] ([SaDetailID], [SaID], [PrID], [SaQuantity], [SaPrTotalPrice]) VALUES (N'SaD005', N'Sa0005', N'Pap002', 2, 60000)
INSERT [dbo].[T_SaleDetail] ([SaDetailID], [SaID], [PrID], [SaQuantity], [SaPrTotalPrice]) VALUES (N'SaD006', N'Sa0006', N'Phm001', 1, 20000)
INSERT [dbo].[T_SaleDetail] ([SaDetailID], [SaID], [PrID], [SaQuantity], [SaPrTotalPrice]) VALUES (N'SaD007', N'Sa0007', N'Pic001', 1, 4000)
INSERT [dbo].[T_SaleDetail] ([SaDetailID], [SaID], [PrID], [SaQuantity], [SaPrTotalPrice]) VALUES (N'SaD008', N'Sa0008', N'Pic002', 2, 10000)
INSERT [dbo].[T_SaleDetail] ([SaDetailID], [SaID], [PrID], [SaQuantity], [SaPrTotalPrice]) VALUES (N'SaD009', N'Sa0009', N'Psp009', 1, 115000)
INSERT [dbo].[T_SaleDetail] ([SaDetailID], [SaID], [PrID], [SaQuantity], [SaPrTotalPrice]) VALUES (N'SaD010', N'Sa0010', N'Psp007', 2, 22000)
INSERT [dbo].[T_SaleDetail] ([SaDetailID], [SaID], [PrID], [SaQuantity], [SaPrTotalPrice]) VALUES (N'SaD011', N'Sa0011', N'Psp003', 2, 160000)
INSERT [dbo].[T_SaleDetail] ([SaDetailID], [SaID], [PrID], [SaQuantity], [SaPrTotalPrice]) VALUES (N'SaD012', N'Sa0012', N'Pap001', 1, 20000)
INSERT [dbo].[T_SaleDetail] ([SaDetailID], [SaID], [PrID], [SaQuantity], [SaPrTotalPrice]) VALUES (N'SaD013', N'Sa0013', N'Pic001', 1, 4000)
INSERT [dbo].[T_Shipment] ([ShID], [SOID], [OrID], [ShStateFlag], [ShFinishDate], [ShFlag], [ShHidden]) VALUES (N'Sh0001', 1, N'Or0001', NULL, CAST(N'2020-06-15' AS Date), 1, NULL)
INSERT [dbo].[T_Shipment] ([ShID], [SOID], [OrID], [ShStateFlag], [ShFinishDate], [ShFlag], [ShHidden]) VALUES (N'Sh0002', 1, N'Or0002', NULL, CAST(N'2020-08-17' AS Date), 1, NULL)
INSERT [dbo].[T_Shipment] ([ShID], [SOID], [OrID], [ShStateFlag], [ShFinishDate], [ShFlag], [ShHidden]) VALUES (N'Sh0003', 1, N'Or0003', NULL, CAST(N'2020-09-25' AS Date), 1, NULL)
INSERT [dbo].[T_Shipment] ([ShID], [SOID], [OrID], [ShStateFlag], [ShFinishDate], [ShFlag], [ShHidden]) VALUES (N'Sh0004', 1, N'Or0004', NULL, CAST(N'2020-06-04' AS Date), 1, NULL)
INSERT [dbo].[T_Shipment] ([ShID], [SOID], [OrID], [ShStateFlag], [ShFinishDate], [ShFlag], [ShHidden]) VALUES (N'Sh0005', 1, N'Or0005', NULL, CAST(N'2020-04-30' AS Date), 1, NULL)
INSERT [dbo].[T_Shipment] ([ShID], [SOID], [OrID], [ShStateFlag], [ShFinishDate], [ShFlag], [ShHidden]) VALUES (N'Sh0006', 1, N'Or0006', NULL, CAST(N'2020-11-04' AS Date), 1, NULL)
INSERT [dbo].[T_Shipment] ([ShID], [SOID], [OrID], [ShStateFlag], [ShFinishDate], [ShFlag], [ShHidden]) VALUES (N'Sh0007', 1, N'Or0007', NULL, CAST(N'2020-09-18' AS Date), 1, NULL)
INSERT [dbo].[T_Shipment] ([ShID], [SOID], [OrID], [ShStateFlag], [ShFinishDate], [ShFlag], [ShHidden]) VALUES (N'Sh0008', 1, N'Or0008', NULL, CAST(N'2020-07-15' AS Date), 1, NULL)
INSERT [dbo].[T_Shipment] ([ShID], [SOID], [OrID], [ShStateFlag], [ShFinishDate], [ShFlag], [ShHidden]) VALUES (N'Sh0009', 1, N'Or0009', NULL, CAST(N'2020-06-04' AS Date), 1, NULL)
INSERT [dbo].[T_Shipment] ([ShID], [SOID], [OrID], [ShStateFlag], [ShFinishDate], [ShFlag], [ShHidden]) VALUES (N'Sh0010', 1, N'Or0010', NULL, CAST(N'2020-07-04' AS Date), 1, NULL)
INSERT [dbo].[T_Shipment] ([ShID], [SOID], [OrID], [ShStateFlag], [ShFinishDate], [ShFlag], [ShHidden]) VALUES (N'Sh0011', 1, N'Or0011', NULL, CAST(N'2020-06-17' AS Date), 1, NULL)
INSERT [dbo].[T_Shipment] ([ShID], [SOID], [OrID], [ShStateFlag], [ShFinishDate], [ShFlag], [ShHidden]) VALUES (N'Sh0012', 1, N'Or0012', NULL, CAST(N'2020-07-07' AS Date), 1, NULL)
INSERT [dbo].[T_Shipment] ([ShID], [SOID], [OrID], [ShStateFlag], [ShFinishDate], [ShFlag], [ShHidden]) VALUES (N'Sh0013', 1, N'Or0013', NULL, CAST(N'2020-07-19' AS Date), 1, NULL)
INSERT [dbo].[T_ShipmentDetail] ([ShDetailID], [ShID], [PrID], [ShDquantity]) VALUES (N'ShD001', N'Sh0001', N'Psp003', 1)
INSERT [dbo].[T_ShipmentDetail] ([ShDetailID], [ShID], [PrID], [ShDquantity]) VALUES (N'ShD002', N'Sh0002', N'Psp004', 1)
INSERT [dbo].[T_ShipmentDetail] ([ShDetailID], [ShID], [PrID], [ShDquantity]) VALUES (N'ShD003', N'Sh0003', N'Psp006', 2)
INSERT [dbo].[T_ShipmentDetail] ([ShDetailID], [ShID], [PrID], [ShDquantity]) VALUES (N'ShD004', N'Sh0004', N'Pap001', 1)
INSERT [dbo].[T_ShipmentDetail] ([ShDetailID], [ShID], [PrID], [ShDquantity]) VALUES (N'ShD005', N'Sh0005', N'Pap002', 2)
INSERT [dbo].[T_ShipmentDetail] ([ShDetailID], [ShID], [PrID], [ShDquantity]) VALUES (N'ShD006', N'Sh0006', N'Phm001', 1)
INSERT [dbo].[T_ShipmentDetail] ([ShDetailID], [ShID], [PrID], [ShDquantity]) VALUES (N'ShD007', N'Sh0007', N'Pic001', 1)
INSERT [dbo].[T_ShipmentDetail] ([ShDetailID], [ShID], [PrID], [ShDquantity]) VALUES (N'ShD008', N'Sh0008', N'Pic002', 2)
INSERT [dbo].[T_ShipmentDetail] ([ShDetailID], [ShID], [PrID], [ShDquantity]) VALUES (N'ShD009', N'Sh0009', N'Psp009', 1)
INSERT [dbo].[T_ShipmentDetail] ([ShDetailID], [ShID], [PrID], [ShDquantity]) VALUES (N'ShD010', N'Sh0010', N'Psp007', 2)
INSERT [dbo].[T_ShipmentDetail] ([ShDetailID], [ShID], [PrID], [ShDquantity]) VALUES (N'ShD011', N'Sh0011', N'Psp003', 2)
INSERT [dbo].[T_ShipmentDetail] ([ShDetailID], [ShID], [PrID], [ShDquantity]) VALUES (N'ShD012', N'Sh0012', N'Pap001', 1)
INSERT [dbo].[T_ShipmentDetail] ([ShDetailID], [ShID], [PrID], [ShDquantity]) VALUES (N'ShD013', N'Sh0013', N'Pic001', 1)
INSERT [dbo].[T_Stock] ([PrID], [Squantity]) VALUES (N'Pap001', 10)
INSERT [dbo].[T_Stock] ([PrID], [Squantity]) VALUES (N'Pap002', 7)
INSERT [dbo].[T_Stock] ([PrID], [Squantity]) VALUES (N'Phm001', 10)
INSERT [dbo].[T_Stock] ([PrID], [Squantity]) VALUES (N'Phm002', 20)
INSERT [dbo].[T_Stock] ([PrID], [Squantity]) VALUES (N'Php001', 10)
INSERT [dbo].[T_Stock] ([PrID], [Squantity]) VALUES (N'Php002', 13)
INSERT [dbo].[T_Stock] ([PrID], [Squantity]) VALUES (N'Pic001', 8)
INSERT [dbo].[T_Stock] ([PrID], [Squantity]) VALUES (N'Pic002', 6)
INSERT [dbo].[T_Stock] ([PrID], [Squantity]) VALUES (N'Psp001', 0)
INSERT [dbo].[T_Stock] ([PrID], [Squantity]) VALUES (N'Psp002', 0)
INSERT [dbo].[T_Stock] ([PrID], [Squantity]) VALUES (N'Psp003', 24)
INSERT [dbo].[T_Stock] ([PrID], [Squantity]) VALUES (N'Psp004', 15)
INSERT [dbo].[T_Stock] ([PrID], [Squantity]) VALUES (N'Psp005', 12)
INSERT [dbo].[T_Stock] ([PrID], [Squantity]) VALUES (N'Psp006', 13)
INSERT [dbo].[T_Stock] ([PrID], [Squantity]) VALUES (N'Psp007', 20)
INSERT [dbo].[T_Stock] ([PrID], [Squantity]) VALUES (N'Psp008', 50)
INSERT [dbo].[T_Stock] ([PrID], [Squantity]) VALUES (N'Psp009', 53)
INSERT [dbo].[T_Stock] ([PrID], [Squantity]) VALUES (N'Psp010', 29)
INSERT [dbo].[T_Syukko] ([SyID], [DMFlag], [EmID], [ClID], [OrID], [SyDate], [SyHidden]) VALUES (N'Sy0001', NULL, N'E014', N'C001', N'Or0001', CAST(N'2020-06-10' AS Date), NULL)
INSERT [dbo].[T_Syukko] ([SyID], [DMFlag], [EmID], [ClID], [OrID], [SyDate], [SyHidden]) VALUES (N'Sy0002', NULL, N'E014', N'C002', N'Or0002', CAST(N'2020-08-12' AS Date), NULL)
INSERT [dbo].[T_Syukko] ([SyID], [DMFlag], [EmID], [ClID], [OrID], [SyDate], [SyHidden]) VALUES (N'Sy0003', NULL, N'E014', N'C003', N'Or0003', CAST(N'2020-09-20' AS Date), NULL)
INSERT [dbo].[T_Syukko] ([SyID], [DMFlag], [EmID], [ClID], [OrID], [SyDate], [SyHidden]) VALUES (N'Sy0004', NULL, N'E014', N'C004', N'Or0004', CAST(N'2020-05-30' AS Date), NULL)
INSERT [dbo].[T_Syukko] ([SyID], [DMFlag], [EmID], [ClID], [OrID], [SyDate], [SyHidden]) VALUES (N'Sy0005', NULL, N'E014', N'C003', N'Or0005', CAST(N'2020-04-25' AS Date), NULL)
INSERT [dbo].[T_Syukko] ([SyID], [DMFlag], [EmID], [ClID], [OrID], [SyDate], [SyHidden]) VALUES (N'Sy0006', NULL, N'E014', N'C005', N'Or0006', CAST(N'2020-10-30' AS Date), NULL)
INSERT [dbo].[T_Syukko] ([SyID], [DMFlag], [EmID], [ClID], [OrID], [SyDate], [SyHidden]) VALUES (N'Sy0007', NULL, N'E014', N'C002', N'Or0007', CAST(N'2020-09-13' AS Date), NULL)
INSERT [dbo].[T_Syukko] ([SyID], [DMFlag], [EmID], [ClID], [OrID], [SyDate], [SyHidden]) VALUES (N'Sy0008', NULL, N'E014', N'C005', N'Or0008', CAST(N'2020-07-10' AS Date), NULL)
INSERT [dbo].[T_Syukko] ([SyID], [DMFlag], [EmID], [ClID], [OrID], [SyDate], [SyHidden]) VALUES (N'Sy0009', NULL, N'E014', N'C006', N'Or0009', CAST(N'2020-05-30' AS Date), NULL)
INSERT [dbo].[T_Syukko] ([SyID], [DMFlag], [EmID], [ClID], [OrID], [SyDate], [SyHidden]) VALUES (N'Sy0010', NULL, N'E014', N'C007', N'Or0010', CAST(N'2020-06-29' AS Date), NULL)
INSERT [dbo].[T_Syukko] ([SyID], [DMFlag], [EmID], [ClID], [OrID], [SyDate], [SyHidden]) VALUES (N'Sy0011', NULL, N'E014', N'C008', N'Or0011', CAST(N'2020-06-12' AS Date), NULL)
INSERT [dbo].[T_Syukko] ([SyID], [DMFlag], [EmID], [ClID], [OrID], [SyDate], [SyHidden]) VALUES (N'Sy0012', NULL, N'E014', N'C009', N'Or0012', CAST(N'2020-07-02' AS Date), NULL)
INSERT [dbo].[T_Syukko] ([SyID], [DMFlag], [EmID], [ClID], [OrID], [SyDate], [SyHidden]) VALUES (N'Sy0013', NULL, N'E014', N'C010', N'Or0013', CAST(N'2020-07-14' AS Date), NULL)
INSERT [dbo].[T_SyukkoDetails] ([SyDID], [SyDquantity], [PrID], [SyID]) VALUES (N'SyD001', 1, N'Psp003', N'Sy0001')
INSERT [dbo].[T_SyukkoDetails] ([SyDID], [SyDquantity], [PrID], [SyID]) VALUES (N'SyD002', 1, N'Psp004', N'Sy0002')
INSERT [dbo].[T_SyukkoDetails] ([SyDID], [SyDquantity], [PrID], [SyID]) VALUES (N'SyD003', 2, N'Psp006', N'Sy0003')
INSERT [dbo].[T_SyukkoDetails] ([SyDID], [SyDquantity], [PrID], [SyID]) VALUES (N'SyD004', 1, N'Pap001', N'Sy0004')
INSERT [dbo].[T_SyukkoDetails] ([SyDID], [SyDquantity], [PrID], [SyID]) VALUES (N'SyD005', 2, N'Pap002', N'Sy0005')
INSERT [dbo].[T_SyukkoDetails] ([SyDID], [SyDquantity], [PrID], [SyID]) VALUES (N'SyD006', 1, N'Phm001', N'Sy0006')
INSERT [dbo].[T_SyukkoDetails] ([SyDID], [SyDquantity], [PrID], [SyID]) VALUES (N'SyD007', 1, N'Pic001', N'Sy0007')
INSERT [dbo].[T_SyukkoDetails] ([SyDID], [SyDquantity], [PrID], [SyID]) VALUES (N'SyD008', 2, N'Pic002', N'Sy0008')
INSERT [dbo].[T_SyukkoDetails] ([SyDID], [SyDquantity], [PrID], [SyID]) VALUES (N'SyD009', 1, N'Psp009', N'Sy0009')
INSERT [dbo].[T_SyukkoDetails] ([SyDID], [SyDquantity], [PrID], [SyID]) VALUES (N'SyD010', 2, N'Psp007', N'Sy0010')
INSERT [dbo].[T_SyukkoDetails] ([SyDID], [SyDquantity], [PrID], [SyID]) VALUES (N'SyD011', 2, N'Psp003', N'Sy0011')
INSERT [dbo].[T_SyukkoDetails] ([SyDID], [SyDquantity], [PrID], [SyID]) VALUES (N'SyD012', 1, N'Pap001', N'Sy0012')
INSERT [dbo].[T_SyukkoDetails] ([SyDID], [SyDquantity], [PrID], [SyID]) VALUES (N'SyD013', 1, N'Pic001', N'Sy0013')
INSERT [dbo].[T_Warehousing] ([WaID], [WaDate], [HaID], [EmID], [WaFlag], [WaHidden]) VALUES (N'Wa0001', CAST(N'2020-06-09' AS Date), N'Ha0001', N'E011', NULL, NULL)
INSERT [dbo].[T_Warehousing] ([WaID], [WaDate], [HaID], [EmID], [WaFlag], [WaHidden]) VALUES (N'Wa0002', CAST(N'2020-08-09' AS Date), N'Ha0002', N'E011', NULL, NULL)
INSERT [dbo].[T_Warehousing] ([WaID], [WaDate], [HaID], [EmID], [WaFlag], [WaHidden]) VALUES (N'Wa0003', CAST(N'2020-09-09' AS Date), N'Ha0003', N'E011', NULL, NULL)
INSERT [dbo].[T_Warehousing] ([WaID], [WaDate], [HaID], [EmID], [WaFlag], [WaHidden]) VALUES (N'Wa0004', CAST(N'2020-05-19' AS Date), N'Ha0004', N'E011', NULL, NULL)
INSERT [dbo].[T_Warehousing] ([WaID], [WaDate], [HaID], [EmID], [WaFlag], [WaHidden]) VALUES (N'Wa0005', CAST(N'2020-04-20' AS Date), N'Ha0005', N'E011', NULL, NULL)
INSERT [dbo].[T_Warehousing] ([WaID], [WaDate], [HaID], [EmID], [WaFlag], [WaHidden]) VALUES (N'Wa0006', CAST(N'2020-10-29' AS Date), N'Ha0006', N'E011', NULL, NULL)
INSERT [dbo].[T_Warehousing] ([WaID], [WaDate], [HaID], [EmID], [WaFlag], [WaHidden]) VALUES (N'Wa0007', CAST(N'2020-07-02' AS Date), N'Ha0007', N'E011', NULL, NULL)
INSERT [dbo].[T_Warehousing] ([WaID], [WaDate], [HaID], [EmID], [WaFlag], [WaHidden]) VALUES (N'Wa0008', CAST(N'2020-05-27' AS Date), N'Ha0008', N'E011', NULL, NULL)
INSERT [dbo].[T_Warehousing] ([WaID], [WaDate], [HaID], [EmID], [WaFlag], [WaHidden]) VALUES (N'Wa0009', CAST(N'2020-06-25' AS Date), N'Ha0009', N'E011', NULL, NULL)
INSERT [dbo].[T_WarehousingDetails] ([WDID], [WaID], [WDquantity], [PrID], [EmID]) VALUES (N'WD0001', N'Wa0001', 3, N'Psp003', N'E011')
INSERT [dbo].[T_WarehousingDetails] ([WDID], [WaID], [WDquantity], [PrID], [EmID]) VALUES (N'WD0002', N'Wa0001', 2, N'Pic001', N'E011')
INSERT [dbo].[T_WarehousingDetails] ([WDID], [WaID], [WDquantity], [PrID], [EmID]) VALUES (N'WD0003', N'Wa0002', 1, N'Psp004', N'E011')
INSERT [dbo].[T_WarehousingDetails] ([WDID], [WaID], [WDquantity], [PrID], [EmID]) VALUES (N'WD0004', N'Wa0003', 2, N'Psp006', N'E011')
INSERT [dbo].[T_WarehousingDetails] ([WDID], [WaID], [WDquantity], [PrID], [EmID]) VALUES (N'WD0005', N'Wa0003', 2, N'Pic002', N'E011')
INSERT [dbo].[T_WarehousingDetails] ([WDID], [WaID], [WDquantity], [PrID], [EmID]) VALUES (N'WD0006', N'Wa0004', 1, N'Pap001', N'E011')
INSERT [dbo].[T_WarehousingDetails] ([WDID], [WaID], [WDquantity], [PrID], [EmID]) VALUES (N'WD0007', N'Wa0005', 2, N'Pap002', N'E011')
INSERT [dbo].[T_WarehousingDetails] ([WDID], [WaID], [WDquantity], [PrID], [EmID]) VALUES (N'WD0008', N'Wa0006', 1, N'Phm001', N'E011')
INSERT [dbo].[T_WarehousingDetails] ([WDID], [WaID], [WDquantity], [PrID], [EmID]) VALUES (N'WD0009', N'Wa0007', 2, N'Pic002', N'E011')
INSERT [dbo].[T_WarehousingDetails] ([WDID], [WaID], [WDquantity], [PrID], [EmID]) VALUES (N'WD0010', N'Wa0007', 1, N'Pap001', N'E011')
INSERT [dbo].[T_WarehousingDetails] ([WDID], [WaID], [WDquantity], [PrID], [EmID]) VALUES (N'WD0011', N'Wa0008', 1, N'Psp009', N'E011')
INSERT [dbo].[T_WarehousingDetails] ([WDID], [WaID], [WDquantity], [PrID], [EmID]) VALUES (N'WD0012', N'Wa0009', 2, N'Psp007', N'E011')
ALTER TABLE [dbo].[M_Client]  WITH CHECK ADD  CONSTRAINT [FK_M_Client_M_SalesOffice] FOREIGN KEY([SOID])
REFERENCES [dbo].[M_SalesOffice] ([SOID])
GO
ALTER TABLE [dbo].[M_Client] CHECK CONSTRAINT [FK_M_Client_M_SalesOffice]
GO
ALTER TABLE [dbo].[M_Employee]  WITH CHECK ADD  CONSTRAINT [FK_M_Employee_M_Position] FOREIGN KEY([SOID])
REFERENCES [dbo].[M_Position] ([PoID])
GO
ALTER TABLE [dbo].[M_Employee] CHECK CONSTRAINT [FK_M_Employee_M_Position]
GO
ALTER TABLE [dbo].[M_Employee]  WITH CHECK ADD  CONSTRAINT [FK_M_Employee_M_SalesOffice] FOREIGN KEY([SOID])
REFERENCES [dbo].[M_SalesOffice] ([SOID])
GO
ALTER TABLE [dbo].[M_Employee] CHECK CONSTRAINT [FK_M_Employee_M_SalesOffice]
GO
ALTER TABLE [dbo].[M_Product]  WITH CHECK ADD  CONSTRAINT [FK_M_Product_M_SalesOffice] FOREIGN KEY([SOID])
REFERENCES [dbo].[M_SalesOffice] ([SOID])
GO
ALTER TABLE [dbo].[M_Product] CHECK CONSTRAINT [FK_M_Product_M_SalesOffice]
GO
ALTER TABLE [dbo].[M_Product]  WITH CHECK ADD  CONSTRAINT [FK_M_Product_T_Stock] FOREIGN KEY([PrID])
REFERENCES [dbo].[T_Stock] ([PrID])
GO
ALTER TABLE [dbo].[M_Product] CHECK CONSTRAINT [FK_M_Product_T_Stock]
GO
ALTER TABLE [dbo].[T_Arrival]  WITH CHECK ADD  CONSTRAINT [FK_T_Arrival_M_Employee] FOREIGN KEY([EmID])
REFERENCES [dbo].[M_Employee] ([EmID])
GO
ALTER TABLE [dbo].[T_Arrival] CHECK CONSTRAINT [FK_T_Arrival_M_Employee]
GO
ALTER TABLE [dbo].[T_Arrival]  WITH CHECK ADD  CONSTRAINT [FK_T_Arrival_T_Order1] FOREIGN KEY([OrID])
REFERENCES [dbo].[T_Order] ([OrID])
GO
ALTER TABLE [dbo].[T_Arrival] CHECK CONSTRAINT [FK_T_Arrival_T_Order1]
GO
ALTER TABLE [dbo].[T_ArrivalDetail]  WITH CHECK ADD  CONSTRAINT [FK_T_ArrivalDetail_M_Product] FOREIGN KEY([PrID])
REFERENCES [dbo].[M_Product] ([PrID])
GO
ALTER TABLE [dbo].[T_ArrivalDetail] CHECK CONSTRAINT [FK_T_ArrivalDetail_M_Product]
GO
ALTER TABLE [dbo].[T_ArrivalDetail]  WITH CHECK ADD  CONSTRAINT [FK_T_ArrivalDetail_T_Arrival] FOREIGN KEY([ArID])
REFERENCES [dbo].[T_Arrival] ([ArID])
GO
ALTER TABLE [dbo].[T_ArrivalDetail] CHECK CONSTRAINT [FK_T_ArrivalDetail_T_Arrival]
GO
ALTER TABLE [dbo].[T_Hacchu]  WITH CHECK ADD  CONSTRAINT [FK_T_Hacchu_M_Employee] FOREIGN KEY([EmID])
REFERENCES [dbo].[M_Employee] ([EmID])
GO
ALTER TABLE [dbo].[T_Hacchu] CHECK CONSTRAINT [FK_T_Hacchu_M_Employee]
GO
ALTER TABLE [dbo].[T_Hacchu]  WITH CHECK ADD  CONSTRAINT [FK_T_Hacchu_M_Maker] FOREIGN KEY([MaID])
REFERENCES [dbo].[M_Maker] ([MaID])
GO
ALTER TABLE [dbo].[T_Hacchu] CHECK CONSTRAINT [FK_T_Hacchu_M_Maker]
GO
ALTER TABLE [dbo].[T_HacchuDetail]  WITH CHECK ADD  CONSTRAINT [FK_T_HacchuDetail_M_Product] FOREIGN KEY([PrID])
REFERENCES [dbo].[M_Product] ([PrID])
GO
ALTER TABLE [dbo].[T_HacchuDetail] CHECK CONSTRAINT [FK_T_HacchuDetail_M_Product]
GO
ALTER TABLE [dbo].[T_HacchuDetail]  WITH CHECK ADD  CONSTRAINT [FK_T_HacchuDetail_T_Hacchu] FOREIGN KEY([HaID])
REFERENCES [dbo].[T_Hacchu] ([HaID])
GO
ALTER TABLE [dbo].[T_HacchuDetail] CHECK CONSTRAINT [FK_T_HacchuDetail_T_Hacchu]
GO
ALTER TABLE [dbo].[T_LoginHistory]  WITH CHECK ADD  CONSTRAINT [FK_T_LoginHistory_M_Employee] FOREIGN KEY([EmID])
REFERENCES [dbo].[M_Employee] ([EmID])
GO
ALTER TABLE [dbo].[T_LoginHistory] CHECK CONSTRAINT [FK_T_LoginHistory_M_Employee]
GO
ALTER TABLE [dbo].[T_Order]  WITH CHECK ADD  CONSTRAINT [FK_T_Order_M_Employee] FOREIGN KEY([EmID])
REFERENCES [dbo].[M_Employee] ([EmID])
GO
ALTER TABLE [dbo].[T_Order] CHECK CONSTRAINT [FK_T_Order_M_Employee]
GO
ALTER TABLE [dbo].[T_OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_T_OrderDetail_M_Product] FOREIGN KEY([PrID])
REFERENCES [dbo].[M_Product] ([PrID])
GO
ALTER TABLE [dbo].[T_OrderDetail] CHECK CONSTRAINT [FK_T_OrderDetail_M_Product]
GO
ALTER TABLE [dbo].[T_OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_T_OrderDetail_T_Order1] FOREIGN KEY([OrID])
REFERENCES [dbo].[T_Order] ([OrID])
GO
ALTER TABLE [dbo].[T_OrderDetail] CHECK CONSTRAINT [FK_T_OrderDetail_T_Order1]
GO
ALTER TABLE [dbo].[T_Sale]  WITH CHECK ADD  CONSTRAINT [FK_T_Sale_M_Client] FOREIGN KEY([ClID])
REFERENCES [dbo].[M_Client] ([ClID])
GO
ALTER TABLE [dbo].[T_Sale] CHECK CONSTRAINT [FK_T_Sale_M_Client]
GO
ALTER TABLE [dbo].[T_Sale]  WITH CHECK ADD  CONSTRAINT [FK_T_Sale_M_Employee] FOREIGN KEY([EmID])
REFERENCES [dbo].[M_Employee] ([EmID])
GO
ALTER TABLE [dbo].[T_Sale] CHECK CONSTRAINT [FK_T_Sale_M_Employee]
GO
ALTER TABLE [dbo].[T_Sale]  WITH CHECK ADD  CONSTRAINT [FK_T_Sale_M_SalesOffice] FOREIGN KEY([SOID])
REFERENCES [dbo].[M_SalesOffice] ([SOID])
GO
ALTER TABLE [dbo].[T_Sale] CHECK CONSTRAINT [FK_T_Sale_M_SalesOffice]
GO
ALTER TABLE [dbo].[T_Sale]  WITH CHECK ADD  CONSTRAINT [FK_T_Sale_T_Order] FOREIGN KEY([OrID])
REFERENCES [dbo].[T_Order] ([OrID])
GO
ALTER TABLE [dbo].[T_Sale] CHECK CONSTRAINT [FK_T_Sale_T_Order]
GO
ALTER TABLE [dbo].[T_SaleDetail]  WITH CHECK ADD  CONSTRAINT [FK_T_SaleDetail_M_Product] FOREIGN KEY([PrID])
REFERENCES [dbo].[M_Product] ([PrID])
GO
ALTER TABLE [dbo].[T_SaleDetail] CHECK CONSTRAINT [FK_T_SaleDetail_M_Product]
GO
ALTER TABLE [dbo].[T_SaleDetail]  WITH CHECK ADD  CONSTRAINT [FK_T_SaleDetail_T_Sale] FOREIGN KEY([SaID])
REFERENCES [dbo].[T_Sale] ([SaID])
GO
ALTER TABLE [dbo].[T_SaleDetail] CHECK CONSTRAINT [FK_T_SaleDetail_T_Sale]
GO
ALTER TABLE [dbo].[T_Shipment]  WITH CHECK ADD  CONSTRAINT [FK_T_Shipment_M_SalesOffice] FOREIGN KEY([SOID])
REFERENCES [dbo].[M_SalesOffice] ([SOID])
GO
ALTER TABLE [dbo].[T_Shipment] CHECK CONSTRAINT [FK_T_Shipment_M_SalesOffice]
GO
ALTER TABLE [dbo].[T_Shipment]  WITH CHECK ADD  CONSTRAINT [FK_T_Shipment_T_Order] FOREIGN KEY([OrID])
REFERENCES [dbo].[T_Order] ([OrID])
GO
ALTER TABLE [dbo].[T_Shipment] CHECK CONSTRAINT [FK_T_Shipment_T_Order]
GO
ALTER TABLE [dbo].[T_ShipmentDetail]  WITH CHECK ADD  CONSTRAINT [FK_T_ShipmentDetail_M_Product] FOREIGN KEY([PrID])
REFERENCES [dbo].[M_Product] ([PrID])
GO
ALTER TABLE [dbo].[T_ShipmentDetail] CHECK CONSTRAINT [FK_T_ShipmentDetail_M_Product]
GO
ALTER TABLE [dbo].[T_ShipmentDetail]  WITH CHECK ADD  CONSTRAINT [FK_T_ShipmentDetail_T_Shipment] FOREIGN KEY([ShID])
REFERENCES [dbo].[T_Shipment] ([ShID])
GO
ALTER TABLE [dbo].[T_ShipmentDetail] CHECK CONSTRAINT [FK_T_ShipmentDetail_T_Shipment]
GO
ALTER TABLE [dbo].[T_Syukko]  WITH CHECK ADD  CONSTRAINT [FK_T_Syukko_M_Employee] FOREIGN KEY([EmID])
REFERENCES [dbo].[M_Employee] ([EmID])
GO
ALTER TABLE [dbo].[T_Syukko] CHECK CONSTRAINT [FK_T_Syukko_M_Employee]
GO
ALTER TABLE [dbo].[T_SyukkoDetails]  WITH CHECK ADD  CONSTRAINT [FK_T_SyukkoDetails_M_Product] FOREIGN KEY([PrID])
REFERENCES [dbo].[M_Product] ([PrID])
GO
ALTER TABLE [dbo].[T_SyukkoDetails] CHECK CONSTRAINT [FK_T_SyukkoDetails_M_Product]
GO
ALTER TABLE [dbo].[T_SyukkoDetails]  WITH CHECK ADD  CONSTRAINT [FK_T_SyukkoDetails_T_Syukko] FOREIGN KEY([SyID])
REFERENCES [dbo].[T_Syukko] ([SyID])
GO
ALTER TABLE [dbo].[T_SyukkoDetails] CHECK CONSTRAINT [FK_T_SyukkoDetails_T_Syukko]
GO
ALTER TABLE [dbo].[T_Warehousing]  WITH CHECK ADD  CONSTRAINT [FK_T_Warehousing_M_Employee] FOREIGN KEY([EmID])
REFERENCES [dbo].[M_Employee] ([EmID])
GO
ALTER TABLE [dbo].[T_Warehousing] CHECK CONSTRAINT [FK_T_Warehousing_M_Employee]
GO
ALTER TABLE [dbo].[T_Warehousing]  WITH CHECK ADD  CONSTRAINT [FK_T_Warehousing_T_Hacchu] FOREIGN KEY([HaID])
REFERENCES [dbo].[T_Hacchu] ([HaID])
GO
ALTER TABLE [dbo].[T_Warehousing] CHECK CONSTRAINT [FK_T_Warehousing_T_Hacchu]
GO
ALTER TABLE [dbo].[T_WarehousingDetails]  WITH CHECK ADD  CONSTRAINT [FK_T_WarehousingDetails_M_Employee] FOREIGN KEY([EmID])
REFERENCES [dbo].[M_Employee] ([EmID])
GO
ALTER TABLE [dbo].[T_WarehousingDetails] CHECK CONSTRAINT [FK_T_WarehousingDetails_M_Employee]
GO
ALTER TABLE [dbo].[T_WarehousingDetails]  WITH CHECK ADD  CONSTRAINT [FK_T_WarehousingDetails_M_Product] FOREIGN KEY([PrID])
REFERENCES [dbo].[M_Product] ([PrID])
GO
ALTER TABLE [dbo].[T_WarehousingDetails] CHECK CONSTRAINT [FK_T_WarehousingDetails_M_Product]
GO
ALTER TABLE [dbo].[T_WarehousingDetails]  WITH CHECK ADD  CONSTRAINT [FK_T_WarehousingDetails_T_Warehousing] FOREIGN KEY([WaID])
REFERENCES [dbo].[T_Warehousing] ([WaID])
GO
ALTER TABLE [dbo].[T_WarehousingDetails] CHECK CONSTRAINT [FK_T_WarehousingDetails_T_Warehousing]
GO
USE [master]
GO
ALTER DATABASE [Inventory_Control] SET  READ_WRITE 
GO
