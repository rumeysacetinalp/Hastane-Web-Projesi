USE [Hastane]
GO
/****** Object:  Table [dbo].[Doktorlar]    Script Date: 20.05.2024 06:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doktorlar](
	[DoktorID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NOT NULL,
	[Soyad] [nvarchar](50) NOT NULL,
	[UzmanlıkAlani] [nvarchar](50) NOT NULL,
	[Hastane_ismi] [nvarchar](50) NOT NULL,
	[sifre] [varchar](64) NULL,
 CONSTRAINT [PK_Doktorlar] PRIMARY KEY CLUSTERED 
(
	[DoktorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hastalar]    Script Date: 20.05.2024 06:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hastalar](
	[HastaID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NOT NULL,
	[Soyad] [nvarchar](50) NOT NULL,
	[DogumTarihi] [date] NOT NULL,
	[Cinsiyet] [nvarchar](50) NOT NULL,
	[Telefon] [nvarchar](20) NOT NULL,
	[Adres] [nvarchar](max) NOT NULL,
	[sifre] [varchar](64) NULL,
 CONSTRAINT [PK_Hastalar] PRIMARY KEY CLUSTERED 
(
	[HastaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Randevular]    Script Date: 20.05.2024 06:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Randevular](
	[RandevuID] [int] IDENTITY(1,1) NOT NULL,
	[HastaID] [int] NOT NULL,
	[DoktorID] [int] NOT NULL,
	[RandevuTarihi] [date] NOT NULL,
	[RandevuSaat] [time](7) NOT NULL,
	[UzmanlıkAlani] [nvarchar](50) NOT NULL,
	[Hastane_ismi] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Randevular] PRIMARY KEY CLUSTERED 
(
	[RandevuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Raporlar]    Script Date: 20.05.2024 06:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Raporlar](
	[RaporID] [int] IDENTITY(1,1) NOT NULL,
	[HastaID] [int] NOT NULL,
	[RaporTarihi] [date] NOT NULL,
	[Rapor_içerik] [nvarchar](max) NOT NULL,
	[Url] [varchar](255) NULL,
 CONSTRAINT [PK_Raporlar] PRIMARY KEY CLUSTERED 
(
	[RaporID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yönetici]    Script Date: 20.05.2024 06:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yönetici](
	[YöneticiID] [int] IDENTITY(1,1) NOT NULL,
	[sifre] [varchar](64) NOT NULL,
 CONSTRAINT [PK_Yönetici] PRIMARY KEY CLUSTERED 
(
	[YöneticiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Doktorlar] ON 

INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (3, N'İmran ', N'Bahçe', N'Beyin Cerrahı', N'Florence Nightingale Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (4, N'Emre ', N'Karademir', N'Kardiyoloji', N'Ankara Bilkent Şehir Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (6, N'Ahmet', N'Erdemli', N'Göz Doktoru', N'Marmara Eğitim Araştırma Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (7, N'Aslı', N'Yılmaz', N'Ortapedi', N'Kocaeli Eğitim Araştırma Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (8, N'Şaziye', N'Gün', N'Nefroloji', N'Kocaeli Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (9, N'Leyla', N'İzgi', N'Göz Doktoru', N'Dünya Göz Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (10, N'Ayşe', N'Turan', N'Beyin Cerrahı', N'Ankara Bilkent Şehir Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (12, N'Zehra', N'Yavuz', N'Psikiyatri', N'Kocaeli Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (13, N'Öykü', N'Uyanık', N'Dermatoloji', N'Liv Hospital', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (14, N'Buğlem', N'Şen', N'Gastroenteroloji', N'Kocaeli Üniversitesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (15, N'Nehir', N'Erkuran', N'Göz Hastalıkları', N'Pendik Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (16, N'Gökçe', N'Şen', N'Dermatoloji', N'Memorial Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (17, N'Poyraz', N'Kulaç', N'Psikiyatri', N'Medical Park Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (18, N'Zeynep', N'Erkuran', N'Ortopedi', N'Tuzla Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (19, N'Miran', N'Dede', N'Ortopedi', N'İstanbul Üniversitesi Tıp Fakültesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (20, N'Mehmet', N'Kandemir', N'Psikiyatri', N'Florence Nightingale Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (21, N'Gökçe', N'Erdem', N'Göz Hastalıkları', N'Kocaeli Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (22, N'Zümra', N'Tüten', N'Üroloji', N'İstanbul Üniversitesi Tıp Fakültesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (23, N'Öykü', N'Erkuran', N'Üroloji', N'Tuzla Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (24, N'İbrahim', N'Yücel', N'Üroloji', N'Pendik Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (25, N'Hamza', N'Uyanık', N'Psikiyatri', N'Memorial Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (26, N'Miran', N'Aslan', N'Ortopedi', N'Acıbadem Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (27, N'Eymen', N'Erkuran', N'Onkoloji', N'Tuzla Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (28, N'Mert', N'Dede', N'Üroloji', N'Kocaeli Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (29, N'Yusuf', N'Erdem', N'Ortopedi', N'İstanbul Üniversitesi Tıp Fakültesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (30, N'Umut', N'Orhon', N'Onkoloji', N'Liv Hospital', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (31, N'Melek', N'Erdem', N'Ortopedi', N'Medical Park Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (32, N'Muhammed Ali', N'Aslan', N'Psikiyatri', N'Acıbadem Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (33, N'Meryem', N'Öztürk', N'Dermatoloji', N'Memorial Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (34, N'Yusuf', N'Vural', N'Göz Hastalıkları', N'Florence Nightingale Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (35, N'Hiranur', N'Ertekin', N'Dermatoloji', N'Pendik Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (36, N'Öykü', N'Akbulut', N'Kardiyoloji', N'Kocaeli Üniversitesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (37, N'Öykü', N'Ertekin', N'Dermatoloji', N'Acıbadem Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (38, N'Meryem', N'Aslan', N'Ortopedi', N'Medical Park Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (39, N'Ahmet', N'Tüten', N'Üroloji', N'Memorial Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (40, N'Yiğit', N'Kulaç', N'Onkoloji', N'Florence Nightingale Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (41, N'Kuzey', N'Orhon', N'Dermatoloji', N'Florence Nightingale Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (42, N'Elisa', N'Çevik', N'Ortopedi', N'Tuzla Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (43, N'Masal', N'Uz', N'Nöroloji', N'Tuzla Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (44, N'Azra', N'Akbulut', N'Ortopedi', N'Acıbadem Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (45, N'Eslem', N'Vural', N'Dermatoloji', N'Pendik Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (46, N'İbrahim', N'Uyanık', N'Kulak Burun Boğaz', N'Tuzla Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (47, N'Mustafa', N'Yüzbaşıoğlu', N'Onkoloji', N'Acıbadem Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (48, N'Elisa', N'Erdem', N'Psikiyatri', N'Kocaeli Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (49, N'Melek', N'Vural', N'Kulak Burun Boğaz', N'Kocaeli Üniversitesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (50, N'Öykü', N'Yüzbaşıoğlu', N'Gastroenteroloji', N'İstanbul Üniversitesi Tıp Fakültesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (51, N'Zeynep', N'Ertekin', N'Göz Hastalıkları', N'Florence Nightingale Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (52, N'Ömer', N'Şen', N'Nöroloji', N'Pendik Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (53, N'Ömer Asaf', N'Tüten', N'Dermatoloji', N'İstanbul Üniversitesi Tıp Fakültesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (54, N'Miray', N'Dede', N'Dermatoloji', N'Acıbadem Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (56, N'Masal', N'Yücel', N'Nöroloji', N'Liv Hospital', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (57, N'Ömer', N'Yücel', N'Kardiyoloji', N'Acıbadem Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (58, N'Masal', N'Uyanık', N'Psikiyatri', N'Tuzla Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (59, N'Yunus Emre', N'Çevik', N'Nöroloji', N'Medical Park Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (60, N'Mehmet', N'Aslan', N'Nöroloji', N'Pendik Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (61, N'Miraç', N'Sönmez', N'Üroloji', N'İstanbul Üniversitesi Tıp Fakültesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (62, N'Ali', N'Akbulut', N'Göz Hastalıkları', N'Memorial Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (63, N'Alperen', N'Şen', N'Kulak Burun Boğaz', N'Medical Park Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (64, N'Ada', N'Orhon', N'Psikiyatri', N'İstanbul Üniversitesi Tıp Fakültesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (65, N'Eymen', N'Aslan', N'Nöroloji', N'İstanbul Üniversitesi Tıp Fakültesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (66, N'Miran', N'Kulaç', N'Dermatoloji', N'Kocaeli Üniversitesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (67, N'Eymen', N'Yavuz', N'Psikiyatri', N'Kocaeli Üniversitesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (68, N'Mehmet', N'Kandemir', N'Kardiyoloji', N'Liv Hospital', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (69, N'Emir', N'Yüzbaşıoğlu', N'Kardiyoloji', N'Memorial Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (70, N'Yağmur', N'Dede', N'Ortopedi', N'Liv Hospital', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (71, N'Meryem', N'Kandemir', N'Göz Hastalıkları', N'Memorial Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (72, N'Umut', N'Akbulut', N'Ortopedi', N'İstanbul Üniversitesi Tıp Fakültesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (73, N'Zümra', N'Aslan', N'Ortopedi', N'Medical Park Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (74, N'Yiğit', N'Yüzbaşıoğlu', N'Nöroloji', N'İstanbul Üniversitesi Tıp Fakültesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (75, N'Eymen', N'Sönmez', N'Psikiyatri', N'Acıbadem Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (76, N'Alperen', N'Erkuran', N'Dermatoloji', N'Florence Nightingale Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (77, N'Hamza', N'Kulaç', N'Göz Hastalıkları', N'Florence Nightingale Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (78, N'Mehmet', N'Yüzbaşıoğlu', N'Psikiyatri', N'Kocaeli Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (79, N'Alperen', N'Kandemir', N'Kulak Burun Boğaz', N'Memorial Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (80, N'İkra', N'Çevik', N'Ortopedi', N'Memorial Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (81, N'Ecrin', N'Ertekin', N'Üroloji', N'Pendik Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (82, N'İbrahim', N'Uz', N'Nöroloji', N'Memorial Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (83, N'Kuzey', N'Öztürk', N'Kulak Burun Boğaz', N'Pendik Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (84, N'Yiğit', N'Kulaç', N'Üroloji', N'Kocaeli Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (85, N'Asel', N'Çevik', N'Kardiyoloji', N'Acıbadem Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (86, N'Elif', N'Aslan', N'Göz Hastalıkları', N'Pendik Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (87, N'Yiğit', N'Erdem', N'Gastroenteroloji', N'Memorial Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (88, N'Esila', N'Vural', N'Göz Hastalıkları', N'Pendik Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (89, N'Elisa', N'Aslan', N'Onkoloji', N'Kocaeli Üniversitesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (90, N'Miray', N'Yüzbaşıoğlu', N'Dermatoloji', N'Memorial Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (91, N'Defne', N'Yüzbaşıoğlu', N'Gastroenteroloji', N'Liv Hospital', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (93, N'Poyraz', N'Kandemir', N'Nöroloji', N'Liv Hospital', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (94, N'Miraç', N'Uz', N'Kulak Burun Boğaz', N'Acıbadem Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (95, N'İbrahim', N'Çevik', N'Üroloji', N'Acıbadem Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (96, N'Muhammed', N'Yücel', N'Onkoloji', N'Tuzla Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (97, N'Miray', N'Erdem', N'Üroloji', N'Florence Nightingale Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (98, N'Esila', N'Aslan', N'Dermatoloji', N'Kocaeli Üniversitesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (99, N'Ebrar', N'Tüten', N'Gastroenteroloji', N'Kocaeli Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (100, N'Azra', N'Kandemir', N'Kardiyoloji', N'Florence Nightingale Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (101, N'Ali', N'Erdem', N'Dermatoloji', N'Liv Hospital', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (102, N'Asya', N'Orhon', N'Nöroloji', N'Liv Hospital', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (103, N'Nehir', N'Kandemir', N'Dermatoloji', N'Tuzla Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (104, N'Yağmur', N'Dede', N'Onkoloji', N'Liv Hospital', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (105, N'Yiğit', N'Tüten', N'Nöroloji', N'Florence Nightingale Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
GO
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (106, N'Kuzey', N'Kandemir', N'Nöroloji', N'Kocaeli Üniversitesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (107, N'Defne', N'Kulaç', N'Kulak Burun Boğaz', N'İstanbul Üniversitesi Tıp Fakültesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (108, N'Yiğit', N'Orhon', N'Üroloji', N'Liv Hospital', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (109, N'Nehir', N'Yücel', N'Nöroloji', N'Pendik Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (110, N'Mehmet', N'Çevik', N'Dermatoloji', N'Kocaeli Üniversitesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (111, N'Göktuğ', N'Akbulut', N'Nöroloji', N'Tuzla Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (112, N'Lina', N'Akbulut', N'Onkoloji', N'Pendik Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (113, N'Ali Asaf', N'Uz', N'Kardiyoloji', N'Kocaeli Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (114, N'Azra', N'Şen', N'Gastroenteroloji', N'Medical Park Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (115, N'İbrahim', N'Akbulut', N'Nöroloji', N'Liv Hospital', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (116, N'Nehir', N'Erdem', N'Dermatoloji', N'Kocaeli Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (117, N'Zeynep', N'Erkuran', N'Göz Hastalıkları', N'Tuzla Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (118, N'Buğlem', N'Kulaç', N'Ortopedi', N'Memorial Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (119, N'Nehir', N'Tüten', N'Dermatoloji', N'Medical Park Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (120, N'Elisa', N'Çevik', N'Onkoloji', N'Tuzla Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (121, N'Ela', N'Sönmez', N'Ortopedi', N'Pendik Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (122, N'Muhammed', N'Yavuz', N'Göz Hastalıkları', N'Kocaeli Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (123, N'Eslem', N'Akbulut', N'Göz Hastalıkları', N'Kocaeli Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (124, N'Yiğit', N'Erkuran', N'Göz Hastalıkları', N'Medical Park Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (125, N'Miray', N'Yücel', N'Nöroloji', N'Memorial Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (126, N'Masal', N'Erdem', N'Ortopedi', N'Memorial Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (127, N'Ömer Asaf', N'Sönmez', N'Gastroenteroloji', N'Florence Nightingale Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (128, N'Mehmet', N'Uyanık', N'Gastroenteroloji', N'Memorial Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (129, N'Asya', N'Çevik', N'Gastroenteroloji', N'Liv Hospital', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (130, N'Öykü', N'Aslan', N'Gastroenteroloji', N'Kocaeli Üniversitesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (131, N'Defne', N'Yüzbaşıoğlu', N'Kardiyoloji', N'Florence Nightingale Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (132, N'Yunus Emre', N'Tüten', N'Nöroloji', N'Kocaeli Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (133, N'Gökçe', N'Şen', N'Nöroloji', N'Kocaeli Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (134, N'Asya', N'Öztürk', N'Nöroloji', N'Kocaeli Üniversitesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (135, N'Ebrar', N'Yücel', N'Onkoloji', N'Kocaeli Üniversitesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (136, N'Muhammed', N'Orhon', N'Nöroloji', N'Memorial Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (137, N'Ela', N'Uz', N'Göz Hastalıkları', N'Florence Nightingale Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (138, N'Defne', N'Dede', N'Nöroloji', N'İstanbul Üniversitesi Tıp Fakültesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (139, N'Elisa', N'Yücel', N'Gastroenteroloji', N'İstanbul Üniversitesi Tıp Fakültesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (140, N'Meryem', N'Yücel', N'Psikiyatri', N'Kocaeli Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (141, N'Mehmet', N'Yüzbaşıoğlu', N'Kardiyoloji', N'Tuzla Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (142, N'Nehir', N'Uyanık', N'Psikiyatri', N'Kocaeli Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (143, N'Duru', N'Öztürk', N'Psikiyatri', N'Pendik Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (144, N'Miran', N'Yüzbaşıoğlu', N'Göz Hastalıkları', N'Acıbadem Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (145, N'Alya', N'Erkuran', N'Göz Hastalıkları', N'Medical Park Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (146, N'İbrahim', N'Ertekin', N'Gastroenteroloji', N'Medical Park Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (147, N'Elif', N'Yüzbaşıoğlu', N'Üroloji', N'Pendik Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (148, N'Ayaz', N'Dede', N'Nöroloji', N'Medical Park Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (149, N'Göktuğ', N'Çevik', N'Dermatoloji', N'Acıbadem Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (150, N'Muhammed Ali', N'Kandemir', N'Nöroloji', N'Kocaeli Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (151, N'Esila', N'Öztürk', N'Dermatoloji', N'İstanbul Üniversitesi Tıp Fakültesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (152, N'Hamza', N'Dede', N'Göz Hastalıkları', N'Tuzla Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (153, N'Ebrar', N'Erkuran', N'Üroloji', N'Liv Hospital', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (154, N'Ömer Asaf', N'Sönmez', N'Onkoloji', N'İstanbul Üniversitesi Tıp Fakültesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (155, N'Lina', N'Öztürk', N'Kulak Burun Boğaz', N'Florence Nightingale Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (156, N'Azra', N'Uz', N'Üroloji', N'Acıbadem Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (157, N'Yusuf', N'Kulaç', N'Gastroenteroloji', N'Acıbadem Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (158, N'Elif', N'Tüten', N'Gastroenteroloji', N'Medical Park Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (159, N'Asel', N'Vural', N'Onkoloji', N'Liv Hospital', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (160, N'Duru', N'Şen', N'Onkoloji', N'Memorial Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (161, N'Lina', N'Ertekin', N'Gastroenteroloji', N'Acıbadem Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (162, N'Eymen', N'Ertekin', N'Psikiyatri', N'Kocaeli Üniversitesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (163, N'Meryem', N'Erkuran', N'Nöroloji', N'Kocaeli Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (164, N'Ayaz', N'Yüzbaşıoğlu', N'Ortopedi', N'Acıbadem Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (165, N'Nehir', N'Vural', N'Gastroenteroloji', N'İstanbul Üniversitesi Tıp Fakültesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (166, N'Ada', N'Yüzbaşıoğlu', N'Gastroenteroloji', N'Florence Nightingale Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (167, N'Yiğit', N'Sönmez', N'Onkoloji', N'Liv Hospital', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (168, N'Elif', N'Yüzbaşıoğlu', N'Psikiyatri', N'Kocaeli Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (169, N'Ebrar', N'Akbulut', N'Göz Hastalıkları', N'Memorial Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (170, N'Miran', N'Uyanık', N'Kardiyoloji', N'Medical Park Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (171, N'Ada', N'Vural', N'Göz Hastalıkları', N'Acıbadem Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (172, N'Azra', N'Aslan', N'Üroloji', N'Tuzla Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (173, N'Ecrin', N'Vural', N'Kulak Burun Boğaz', N'Liv Hospital', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (174, N'Ecrin', N'Şen', N'Ortopedi', N'Tuzla Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (175, N'Buğlem', N'Uz', N'Nöroloji', N'İstanbul Üniversitesi Tıp Fakültesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (176, N'Aras', N'Vural', N'Üroloji', N'Pendik Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (177, N'Miran', N'Akbulut', N'Dermatoloji', N'Kocaeli Üniversitesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (178, N'Muhammed', N'Şen', N'Ortopedi', N'Tuzla Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (179, N'Muhammed', N'Tüten', N'Üroloji', N'Liv Hospital', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (180, N'Alya', N'Şen', N'Nöroloji', N'Acıbadem Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (181, N'Kuzey', N'Akbulut', N'Onkoloji', N'İstanbul Üniversitesi Tıp Fakültesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (182, N'Asiye', N'Çevik', N'Onkoloji', N'Acıbadem Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (183, N'Azra', N'Kulaç', N'Dermatoloji', N'Kocaeli Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (184, N'Kerem', N'Şen', N'Dermatoloji', N'Memorial Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (185, N'Poyraz', N'Çevik', N'Dermatoloji', N'Medical Park Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (186, N'Lina', N'Yavuz', N'Nöroloji', N'Florence Nightingale Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (187, N'Elisa', N'Erkuran', N'Psikiyatri', N'Pendik Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (188, N'Buğlem', N'Dede', N'Nöroloji', N'Acıbadem Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (189, N'Ada', N'Vural', N'Kulak Burun Boğaz', N'Kocaeli Üniversitesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (190, N'Ömer Asaf', N'Ertekin', N'Nöroloji', N'Tuzla Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (191, N'Ada', N'Öztürk', N'Onkoloji', N'Liv Hospital', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (193, N'Ömer', N'Öztürk', N'Göz Hastalıkları', N'Memorial Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (194, N'Ömer Asaf', N'Yavuz', N'Kardiyoloji', N'Kocaeli Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (195, N'Mehmet', N'Ertekin', N'Psikiyatri', N'Kocaeli Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (196, N'Zeynep', N'Orhon', N'Psikiyatri', N'Memorial Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (197, N'Zümra', N'Aslan', N'Ortopedi', N'Tuzla Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (198, N'Meryem', N'Vural', N'Kulak Burun Boğaz', N'Florence Nightingale Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (199, N'Miraç', N'Erkuran', N'Kulak Burun Boğaz', N'Medical Park Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (200, N'Yunus Emre', N'Orhon', N'Göz Hastalıkları', N'Tuzla Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (201, N'Alparslan', N'Yücel', N'Nöroloji', N'Acıbadem Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (202, N'Çınar', N'Erkuran', N'Kardiyoloji', N'İstanbul Üniversitesi Tıp Fakültesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (203, N'Yiğit', N'Kandemir', N'Göz Hastalıkları', N'İstanbul Üniversitesi Tıp Fakültesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (204, N'Eslem', N'Erkuran', N'Kardiyoloji', N'Medical Park Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (205, N'Muhammed', N'Yavuz', N'Ortopedi', N'Kocaeli Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (206, N'Ayaz', N'Aslan', N'Onkoloji', N'Tuzla Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
GO
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (207, N'', N'', N'', N'', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (208, N'Öykü', N'Öztürk', N'Gastroenteroloji', N'Acıbadem Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (209, N'Asya', N'Şen', N'Ortopedi', N'Medical Park Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (210, N'Nehir', N'Uyanık', N'Nöroloji', N'Kocaeli Üniversitesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (212, N'Hiranur', N'Öztürk', N'Dahiliye', N'İstanbul Üniversitesi Tıp Fakültesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (213, N'Çınar', N'Dede', N'Dahiliye', N'Liv Hospital', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (214, N'Yusuf', N'Ertekin', N'Dahiliye', N'Pendik Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (215, N'Eylül', N'Vural', N'Dahiliye', N'Memorial Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (216, N'Ömer', N'Uyanık', N'Dahiliye', N'Florence Nightingale Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (217, N'Emir', N'Aslan', N'Dahiliye', N'Tuzla Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (218, N'Ada', N'Uyanık', N'Dahiliye', N'Tuzla Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (219, N'Poyraz', N'Erdem', N'Dahiliye', N'Memorial Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (220, N'Mehmet', N'Şen', N'Dahiliye', N'İstanbul Üniversitesi Tıp Fakültesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (221, N'Ali', N'Uz', N'Dahiliye', N'Pendik Devlet Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Doktorlar] ([DoktorID], [Ad], [Soyad], [UzmanlıkAlani], [Hastane_ismi], [sifre]) VALUES (223, N'Esengül', N'Turan', N'Dermotoloji', N'İstanbul Üniversitesi Tıp Fakültesi Hastanesi', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
SET IDENTITY_INSERT [dbo].[Doktorlar] OFF
GO
SET IDENTITY_INSERT [dbo].[Hastalar] ON 

INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (3, N'Rumeysa', N'Çetinalp', CAST(N'1999-03-23' AS Date), N'Kadın', N'05388695539', N'Dumlupınar mah. Zeytindalı Cad. ', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (5, N'Ahmet', N'Büyük', CAST(N'2003-06-20' AS Date), N'Erkek', N'05358964579', N'Başiskele , Kocaeli', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (10, N'Zehra', N'Akbulut', CAST(N'1988-04-29' AS Date), N'Erkek', N'5319993612', N'PSC 4863, Box 7781
APO AA 51592', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (11, N'Çınar', N'Uyanık', CAST(N'1959-11-06' AS Date), N'Erkek', N'5245381862', N'783 Gül Junction Apt. 375
East Zubeydebury, KY 96993', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (12, N'Defne', N'Şen', CAST(N'1972-02-15' AS Date), N'Erkek', N'5554524314', N'2996 Alexandru Ports Suite 834
Port Perinurton, FM 34729', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (13, N'Ela', N'Uz', CAST(N'1953-05-18' AS Date), N'Erkek', N'5744880726', N'00677 Seven Way
West Eflâtunport, IA 15896', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (14, N'Ali', N'Sönmez', CAST(N'1981-10-21' AS Date), N'Erkek', N'5449143468', N'22192 Akgöl Loop
South Ziyaettinton, ID 55322', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (15, N'Yağmur', N'Uyanık', CAST(N'1970-01-03' AS Date), N'Kadın', N'5220546595', N'42901 Gül Locks
Şahmettinfurt, CT 24218', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (16, N'İbrahim', N'Çevik', CAST(N'1977-11-22' AS Date), N'Kadın', N'5568451809', N'308 Güçlü Cape Apt. 904
New Züheyla, FL 52200', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (17, N'Zümra', N'Orhon', CAST(N'1959-04-23' AS Date), N'Erkek', N'5104862990', N'858 Silanur Spring Apt. 512
East Alışıkton, NM 91920', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (18, N'Muhammed Ali', N'Aslan', CAST(N'1955-10-21' AS Date), N'Erkek', N'5247751164', N'70053 Tuğcan Lane
New Zilfaside, IN 38739', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (19, N'Asel', N'Uyanık', CAST(N'1989-03-10' AS Date), N'Kadın', N'5278685356', N'64491 Zengin Unions Apt. 272
Port Sittik, UT 97718', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (20, N'Ecrin', N'Kandemir', CAST(N'1955-08-06' AS Date), N'Erkek', N'5253872605', N'2021 Annak Via
Aytunastad, PW 81965', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (21, N'Gökçe', N'Tüten', CAST(N'1977-04-14' AS Date), N'Kadın', N'5026606992', N'75794 Demirel Springs
Yıldırımberg, VA 84352', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (22, N'Aras', N'Tüten', CAST(N'1976-12-10' AS Date), N'Erkek', N'5703888698', N'409 Fırat Walks
New Hayalitown, NV 97868', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (23, N'Esila', N'Erdem', CAST(N'1999-01-07' AS Date), N'Kadın', N'5498189927', N'USS Tarhan
FPO AA 97329', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (24, N'Zehra', N'Yüzbaşıoğlu', CAST(N'1960-07-09' AS Date), N'Erkek', N'5313349067', N'804 Yümun Courts Apt. 770
Sezgintown, WI 62208', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (25, N'Ali', N'Çevik', CAST(N'1981-10-04' AS Date), N'Erkek', N'5262730711', N'014 Demir Centers
West Erdursun, IA 63496', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (26, N'Ela', N'Uyanık', CAST(N'1961-06-13' AS Date), N'Erkek', N'5674979523', N'Unit 5900 Box 9411
DPO AP 02937', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (27, N'Asya', N'Erkuran', CAST(N'1982-10-26' AS Date), N'Erkek', N'5573366359', N'USNV Çamurcuoğlu
FPO AE 41329', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (28, N'Zeynep', N'Yüzbaşıoğlu', CAST(N'1953-02-28' AS Date), N'Kadın', N'5905952716', N'999 Karadeniz Ports
Gülenborough, GA 87972', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (29, N'Zehra', N'Çevik', CAST(N'1953-10-20' AS Date), N'Kadın', N'5132068976', N'46359 Gül Rest
Almastberg, LA 74820', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (30, N'Aras', N'Uyanık', CAST(N'1978-09-18' AS Date), N'Kadın', N'5941544495', N'255 Temuçin Ways Apt. 220
Hindalberg, SD 01847', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (31, N'Metehan', N'Erdem', CAST(N'1979-07-13' AS Date), N'Erkek', N'5697710619', N'3277 Şayan Underpass
Zenginport, MT 73315', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (32, N'Yusuf', N'Tüten', CAST(N'1984-04-28' AS Date), N'Erkek', N'5530354829', N'USNV Akar
FPO AP 50590', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (33, N'Muhammed', N'Dede', CAST(N'1988-09-27' AS Date), N'Kadın', N'5645919463', N'3096 Yılmaz Keys Suite 812
Şensoyborough, VI 60004', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (34, N'Ömer Asaf', N'Ertekin', CAST(N'1988-07-03' AS Date), N'Kadın', N'5276244383', N'02513 Fırat Mills Suite 924
İdirisstad, NM 58020', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (35, N'Ada', N'Yücel', CAST(N'1999-10-08' AS Date), N'Erkek', N'5413412276', N'PSC 1449, Box 2449
APO AA 20535', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (36, N'Çınar', N'Erkuran', CAST(N'1963-08-19' AS Date), N'Erkek', N'5229400519', N'7746 Orgün Key
Yıldırımshire, NE 35555', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (37, N'Masal', N'Çevik', CAST(N'1957-05-22' AS Date), N'Erkek', N'5863044644', N'Unit 1684 Box 8450
DPO AE 84099', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (38, N'Yiğit', N'Yüzbaşıoğlu', CAST(N'1972-03-30' AS Date), N'Erkek', N'5496782308', N'56738 Beren Turnpike Suite 489
New Gizview, VI 05256', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (39, N'Alparslan', N'Yüzbaşıoğlu', CAST(N'1992-05-31' AS Date), N'Erkek', N'5701791183', N'Unit 4025 Box 3088
DPO AP 39703', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (40, N'Hamza', N'Tüten', CAST(N'1967-03-20' AS Date), N'Erkek', N'5836051633', N'9838 Seven Trafficway
East Oliver, WA 33907', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (41, N'Zümra', N'Dede', CAST(N'1985-12-15' AS Date), N'Erkek', N'5818818465', N'835 Seniha Corners
Bilirshire, MS 36480', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (42, N'Muhammed Ali', N'Yücel', CAST(N'2001-04-22' AS Date), N'Erkek', N'5457456410', N'USNS Gül
FPO AA 23660', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (43, N'Metehan', N'Aslan', CAST(N'1997-06-09' AS Date), N'Kadın', N'5542980981', N'9007 Seven Court
Goncaferburgh, AR 50895', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (44, N'Ada', N'Dede', CAST(N'1956-11-07' AS Date), N'Kadın', N'5690830658', N'58646 Damlanur Rue
Ertaşville, MS 60277', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (45, N'Miran', N'Çevik', CAST(N'1985-12-18' AS Date), N'Erkek', N'5851400641', N'429 Fırat Ford
Lake Çinerk, OK 70833', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (46, N'Miray', N'Sönmez', CAST(N'1993-05-22' AS Date), N'Kadın', N'5164670256', N'7889 Mülâyim Tunnel Suite 883
Aşirbury, AK 63888', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (47, N'Yunus Emre', N'Dede', CAST(N'1959-09-05' AS Date), N'Kadın', N'5441189675', N'3901 Konguralp Oval Suite 589
East Karcanport, NV 80607', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (48, N'Yiğit', N'Uyanık', CAST(N'1965-06-20' AS Date), N'Kadın', N'5724791528', N'372 Hansultan Meadow
South Demirok, KY 12808', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (49, N'Ayaz', N'Çevik', CAST(N'1982-01-20' AS Date), N'Erkek', N'5786074131', N'426 Şener Gardens Suite 755
Çisemshire, NM 74179', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (50, N'Buğlem', N'Yüzbaşıoğlu', CAST(N'1970-12-11' AS Date), N'Erkek', N'5892224091', N'365 Yılmaz Hills
West Berkiberg, LA 19394', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (51, N'Kerem', N'Orhon', CAST(N'1980-08-04' AS Date), N'Kadın', N'5755792412', N'026 Duran Prairie Apt. 537
Milayborough, ME 18466', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (52, N'Eylül', N'Kandemir', CAST(N'1964-01-28' AS Date), N'Erkek', N'5829380687', N'0754 Zinnure Common Suite 998
Nakipshire, MT 91479', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (53, N'Ayaz', N'Yücel', CAST(N'1961-09-08' AS Date), N'Kadın', N'5618929251', N'USS Demir
FPO AP 13875', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (54, N'Ahmet', N'Ertekin', CAST(N'1984-07-21' AS Date), N'Erkek', N'5134677577', N'05988 Gül Haven Apt. 515
Port Seblâfurt, AR 81810', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (55, N'Gökçe', N'Şen', CAST(N'1967-01-25' AS Date), N'Erkek', N'5929509525', N'USNS Karadeniz
FPO AP 53879', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (56, N'Hiranur', N'Akbulut', CAST(N'1953-08-13' AS Date), N'Erkek', N'5327656847', N'7958 Berrin Summit
East Asliyeville, TX 93897', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (57, N'Eylül', N'Kandemir', CAST(N'1998-01-30' AS Date), N'Erkek', N'5314900243', N'402 Muratcan Glens
South Şahıgül, TX 81130', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (58, N'Melek', N'Dede', CAST(N'1998-08-24' AS Date), N'Kadın', N'5570564529', N'06865 Akboğa Viaduct Apt. 629
Fedenfort, NM 15188', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (59, N'Alparslan', N'Akbulut', CAST(N'1990-06-01' AS Date), N'Kadın', N'5297286615', N'0537 Sançar Rest
Eraslantown, OK 89571', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (60, N'Öykü', N'Kandemir', CAST(N'1989-10-20' AS Date), N'Kadın', N'5460914861', N'7771 Önsal Land
Port Hilayda, NH 36436', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (61, N'İbrahim', N'Kandemir', CAST(N'1953-11-23' AS Date), N'Erkek', N'5181531673', N'5859 Gül Coves Suite 989
East Üge, ND 36620', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (62, N'Buğlem', N'Ertekin', CAST(N'1997-08-03' AS Date), N'Kadın', N'5432280831', N'383 Özpetek Union Apt. 868
Yıldırımtown, OR 82141', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (63, N'Azra', N'Vural', CAST(N'1989-12-13' AS Date), N'Kadın', N'5524146562', N'13422 Kırgız Plains
Durduside, MA 61607', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (64, N'Zehra', N'Uyanık', CAST(N'1988-07-20' AS Date), N'Erkek', N'5547525376', N'PSC 5720, Box 0668
APO AP 34694', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (65, N'Asel', N'Vural', CAST(N'1966-10-23' AS Date), N'Kadın', N'5047104078', N'731 Gülşahin Creek
Gürcüyeport, SC 11258', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (66, N'Ömer', N'Yücel', CAST(N'1959-02-26' AS Date), N'Erkek', N'5207387100', N'1745 Müjde Cape
South Mihin, PW 37075', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (67, N'Eymen', N'Şen', CAST(N'1977-07-23' AS Date), N'Erkek', N'5375827807', N'68484 Hayret Fork Suite 383
North Atnan, MN 72735', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (68, N'Nehir', N'Çevik', CAST(N'1981-06-05' AS Date), N'Kadın', N'5058120026', N'153 Zorlu Brooks Apt. 734
Adalview, NY 49520', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (69, N'Muhammed Ali', N'Öztürk', CAST(N'1956-10-15' AS Date), N'Kadın', N'5334609164', N'PSC 3969, Box 2010
APO AE 27533', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (70, N'Miraç', N'Kandemir', CAST(N'1977-12-14' AS Date), N'Kadın', N'5853707019', N'076 Hidir Inlet
Akgölmouth, OR 39585', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (71, N'Alya', N'Uyanık', CAST(N'1975-10-22' AS Date), N'Kadın', N'5758304468', N'060 Lerze Trace
Dilderchester, NE 35933', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (72, N'Göktuğ', N'Aslan', CAST(N'1982-05-09' AS Date), N'Erkek', N'5470674336', N'USNV Şafak
FPO AA 54723', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (73, N'Meryem', N'Yavuz', CAST(N'1961-01-08' AS Date), N'Kadın', N'5645412372', N'374 Kısakürek Gateway Apt. 371
Alemdarfurt, ME 33864', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (74, N'Miraç', N'Erdem', CAST(N'1965-12-21' AS Date), N'Kadın', N'5412017245', N'2185 Kısakürek Cliff Apt. 916
Lake Dinçkoltown, CA 50198', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (75, N'Lina', N'Yavuz', CAST(N'1970-07-04' AS Date), N'Erkek', N'5431949611', N'5370 Rakide Crossroad
Lake Yurtgüvenborough, IA 05383', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (76, N'Eylül', N'Çevik', CAST(N'1958-12-17' AS Date), N'Erkek', N'5150720514', N'343 Kısakürek Park Suite 783
New Oymak, LA 86468', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (77, N'Eymen', N'Uz', CAST(N'1964-10-18' AS Date), N'Kadın', N'5236177863', N'3707 Durmuş Mission
Zenginport, FL 08267', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (78, N'Duru', N'Dede', CAST(N'1990-01-30' AS Date), N'Kadın', N'5406868757', N'2234 Yüksel Wells
Eraslanchester, NY 80960', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (79, N'Ebrar', N'Orhon', CAST(N'1952-01-22' AS Date), N'Kadın', N'5544346301', N'7397 Aybora Ford Suite 088
Şafiiborough, MD 28499', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (80, N'Elisa', N'Kulaç', CAST(N'1953-11-18' AS Date), N'Erkek', N'5268880951', N'02949 Gülçe Ville Suite 532
North Kifayemouth, HI 06650', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (81, N'Çınar', N'Öztürk', CAST(N'1957-09-10' AS Date), N'Kadın', N'5245297976', N'2330 Bilkay Terrace
South Velitdin, TN 84919', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (82, N'Defne', N'Ertekin', CAST(N'1965-02-13' AS Date), N'Kadın', N'5892919917', N'3426 Sezgin Road
East Ceyhunfurt, MS 38568', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (83, N'Yağmur', N'Sönmez', CAST(N'1963-08-21' AS Date), N'Erkek', N'5258531732', N'PSC 7558, Box 5216
APO AP 29612', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (84, N'Nehir', N'Orhon', CAST(N'1968-09-18' AS Date), N'Erkek', N'5121452725', N'19925 Akçay Turnpike
Nurdenizside, NV 53475', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (85, N'Hiranur', N'Dede', CAST(N'1964-11-18' AS Date), N'Erkek', N'5031541088', N'925 Sezgin Valleys Suite 565
East Nüdret, FM 45584', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (86, N'Yunus Emre', N'Akbulut', CAST(N'1984-10-15' AS Date), N'Kadın', N'5412297623', N'29540 Elamiye Creek Suite 671
West Umutcan, CA 15366', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (87, N'Kerem', N'Erkuran', CAST(N'1974-04-15' AS Date), N'Kadın', N'5986388237', N'9641 İhsanoğlu Point Apt. 039
Port Nas, MP 44305', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (88, N'Mert', N'Orhon', CAST(N'1958-06-21' AS Date), N'Kadın', N'5382036745', N'321 Hançer Valley Apt. 340
West Karabaşport, NV 49532', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (89, N'Öykü', N'Tüten', CAST(N'1958-06-10' AS Date), N'Kadın', N'5779798296', N'97533 Sezer Islands Suite 508
Port Arıel, VA 59671', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (90, N'Zeynep', N'Uyanık', CAST(N'1982-08-05' AS Date), N'Kadın', N'5103320448', N'5098 Nurşan Underpass
Şendoğantown, AR 67412', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (91, N'Ecrin', N'Erkuran', CAST(N'1993-02-21' AS Date), N'Kadın', N'5417645033', N'7839 Arsoy Motorway
Gülşashire, AR 48718', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (92, N'İkra', N'Yüzbaşıoğlu', CAST(N'1961-08-22' AS Date), N'Erkek', N'5718184787', N'USS Çorlu
FPO AA 29241', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (93, N'Hiranur', N'Vural', CAST(N'1986-12-04' AS Date), N'Erkek', N'5059769295', N'6757 Canan Canyon Apt. 936
Port Rasul, FL 77657', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (94, N'İbrahim', N'Vural', CAST(N'1951-08-11' AS Date), N'Kadın', N'5985553546', N'Unit 1775 Box 2629
DPO AE 11674', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (95, N'Nehir', N'Uz', CAST(N'1994-05-04' AS Date), N'Erkek', N'5176975237', N'PSC 0799, Box 0464
APO AP 05575', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (96, N'Duru', N'Orhon', CAST(N'1955-11-29' AS Date), N'Kadın', N'5281453817', N'9222 Hurşide Extension
Karanbaychester, DE 90900', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (97, N'Ahmet', N'Orhon', CAST(N'1984-06-11' AS Date), N'Kadın', N'5176377543', N'6206 Karadeniz Lock Suite 018
Lake Teknaz, DE 04355', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (98, N'Ayaz', N'Sönmez', CAST(N'1969-08-12' AS Date), N'Kadın', N'5456624265', N'699 Sezer Rest
Tayyipview, VI 47980', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (99, N'Mehmet', N'Öztürk', CAST(N'1997-10-06' AS Date), N'Kadın', N'5421756785', N'0811 Nurcan Heights
Akçastad, GA 37313', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (100, N'Lina', N'Dede', CAST(N'1958-11-17' AS Date), N'Erkek', N'5541922519', N'0123 Satıa Squares
Hayrioğluchester, WA 16998', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (101, N'Öykü', N'Sönmez', CAST(N'1951-05-13' AS Date), N'Erkek', N'5033119281', N'PSC 0538, Box 8653
APO AA 37775', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (102, N'Yusuf', N'Erdem', CAST(N'1971-07-27' AS Date), N'Erkek', N'5782344140', N'58363 Durmuş Plaza Suite 744
New Kübran, TN 89201', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (103, N'Metehan', N'Erdem', CAST(N'1980-01-06' AS Date), N'Kadın', N'5835036073', N'4221 Sezgin Avenue
Arıpınarburgh, IN 01047', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (104, N'Ömer Asaf', N'Uyanık', CAST(N'1970-12-14' AS Date), N'Erkek', N'5367406730', N'42689 Melikkan Cove Apt. 814
Hayrioğluview, DC 22638', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (105, N'Muhammed Ali', N'Öztürk', CAST(N'1983-06-10' AS Date), N'Erkek', N'5205225734', N'5738 Şener Spur Apt. 415
New Mehdiye, NV 76009', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (106, N'Alya', N'Yavuz', CAST(N'1959-12-03' AS Date), N'Erkek', N'5311351328', N'PSC 0544, Box 7709
APO AE 15420', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
GO
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (107, N'Öykü', N'Akbulut', CAST(N'1981-05-31' AS Date), N'Erkek', N'5296303593', N'60799 Şensoy Causeway
Lake Aycagülshire, AR 58034', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (108, N'Zehra', N'Aslan', CAST(N'1952-08-26' AS Date), N'Erkek', N'5378088061', N'87633 Şensoy Mount
Günverland, MH 49393', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (109, N'Hamza', N'Sönmez', CAST(N'1989-01-05' AS Date), N'Kadın', N'5852959089', N'48904 Canur Parks
North Aykutalp, OK 86438', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (110, N'Nehir', N'Dede', CAST(N'1952-07-24' AS Date), N'Erkek', N'5886216597', N'19707 Yurdaser Ports Suite 463
Lake Taşar, PA 88261', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (111, N'Göktuğ', N'Orhon', CAST(N'1991-12-07' AS Date), N'Kadın', N'5476463322', N'33587 Merdi Track
East Serda, RI 79761', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (112, N'Ecrin', N'Dede', CAST(N'1972-04-12' AS Date), N'Kadın', N'5781173574', N'PSC 1331, Box 1560
APO AA 09407', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (113, N'Ecrin', N'Orhon', CAST(N'1973-11-27' AS Date), N'Erkek', N'5305646962', N'40181 Aslan Station
West Baydumouth, NY 54479', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (114, N'Esila', N'Yüzbaşıoğlu', CAST(N'1978-08-03' AS Date), N'Erkek', N'5723866249', N'Unit 4820 Box 7585
DPO AE 33460', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (115, N'Ömer Asaf', N'Ertekin', CAST(N'1963-04-11' AS Date), N'Kadın', N'5569752026', N'USNV Alemdar
FPO AA 33935', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (116, N'Mehmet', N'Erkuran', CAST(N'1987-02-26' AS Date), N'Kadın', N'5584922759', N'24916 Savni Mountain Suite 511
South Varlık, LA 33343', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (117, N'Asel', N'Erdem', CAST(N'1985-06-22' AS Date), N'Kadın', N'5067133621', N'66996 Alemdar Street Apt. 417
Lake Şevketfezaborough, MO 41075', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (118, N'Eylül', N'Orhon', CAST(N'1995-12-21' AS Date), N'Kadın', N'5634678095', N'7141 Süzer Valleys Suite 437
Ganiyemouth, AK 19792', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (119, N'Yağmur', N'Yücel', CAST(N'1968-08-29' AS Date), N'Erkek', N'5703339452', N'176 Yankı Station
North Alpcan, CA 61622', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (120, N'Mehmet', N'Tüten', CAST(N'1953-09-06' AS Date), N'Erkek', N'5716289223', N'1051 Akdeniz Forges Apt. 262
Cercisburgh, ID 74513', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (121, N'Eren', N'Yücel', CAST(N'1994-03-16' AS Date), N'Erkek', N'5809198258', N'60901 Güçlü CrestAkarfort, ME 87478', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (122, N'Eymen', N'Şen', CAST(N'1979-11-13' AS Date), N'Erkek', N'5643596496', N'USNS Şensoy
FPO AP 09579', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (123, N'Nehir', N'Erdem', CAST(N'1955-07-02' AS Date), N'Erkek', N'5865070993', N'Unit 2008 Box 9928
DPO AA 52493', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (124, N'Poyraz', N'Yüzbaşıoğlu', CAST(N'1959-07-15' AS Date), N'Erkek', N'5600633575', N'347 Bilir Road Suite 007
Alemdarfort, IA 10375', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (125, N'Öykü', N'Dede', CAST(N'1977-11-27' AS Date), N'Erkek', N'5795556882', N'479 Günar Street
Abdulkadirside, MI 45272', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (127, N'Elif', N'Akbulut', CAST(N'1957-11-12' AS Date), N'Kadın', N'5400707724', N'60031 Güçlüer Mountains Suite 086
Port Berayborough, MN 45570', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (128, N'Defne', N'Kulaç', CAST(N'2000-09-09' AS Date), N'Erkek', N'5612890455', N'943 Dilara Tunnel
Şamachester, CT 01189', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (129, N'Elisa', N'Kandemir', CAST(N'1973-12-28' AS Date), N'Erkek', N'5032688651', N'36443 Zubeyde Views Suite 698
South Nilcantown, IN 01298', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (130, N'Asel', N'Tüten', CAST(N'1999-03-23' AS Date), N'Kadın', N'5219190524', N'3763 Şafii Causeway Apt. 751
East Tarancıshire, NM 48486', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (131, N'Alparslan', N'Uyanık', CAST(N'1971-01-11' AS Date), N'Erkek', N'5384690577', N'5099 Hindal Hill
New Sejda, VA 50324', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (132, N'Gökçe', N'Sönmez', CAST(N'1964-05-17' AS Date), N'Erkek', N'5990737994', N'955 Akver Estate Apt. 642
Port Sezaltown, MT 07384', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (133, N'Asel', N'Aslan', CAST(N'1984-02-13' AS Date), N'Erkek', N'5507404173', N'12739 Uzsoy Glens Suite 489
Şüküfehaven, NJ 34635', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (134, N'Asya', N'Yüzbaşıoğlu', CAST(N'1962-02-26' AS Date), N'Kadın', N'5945406665', N'4330 İhsanoğlu Crossroad Apt. 205
Gülzadiyeshire, VI 19765', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (135, N'Hiranur', N'Erdem', CAST(N'1957-06-11' AS Date), N'Erkek', N'5393407887', N'7611 Ergül View Apt. 746
South Talayerchester, OR 04762', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (136, N'Duru', N'Erdem', CAST(N'1953-11-25' AS Date), N'Kadın', N'5157978279', N'16340 Yaman Center
İrfanfurt, GU 78301', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (137, N'Alperen', N'Dede', CAST(N'1950-05-23' AS Date), N'Erkek', N'5184770208', N'54237 Aysoy Islands Suite 371
West Nihan, FL 11640', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (138, N'Eslem', N'Öztürk', CAST(N'1963-07-17' AS Date), N'Kadın', N'5442352179', N'835 Sakarya Harbors
West Yayak, ND 40012', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (139, N'Poyraz', N'Şen', CAST(N'1976-11-05' AS Date), N'Erkek', N'5370499906', N'856 Akgündüz Pass Suite 451
Kardelenstad, AZ 08304', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (140, N'Mert', N'Aslan', CAST(N'1978-11-07' AS Date), N'Erkek', N'5274203285', N'904 Yılmaz Fork
North Zinnure, NY 83339', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (141, N'Kuzey', N'Yücel', CAST(N'1963-08-17' AS Date), N'Erkek', N'5242415727', N'PSC 3271, Box 9144
APO AE 58682', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (142, N'Defne', N'Dede', CAST(N'1997-01-23' AS Date), N'Kadın', N'5245132455', N'9932 Zengin Falls Apt. 195
İnönübury, NC 92112', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (143, N'Hamza', N'Kandemir', CAST(N'1983-10-17' AS Date), N'Erkek', N'5765918633', N'4058 Dilder Court Suite 349
West Begim, LA 87439', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (144, N'Ömer', N'Şen', CAST(N'1958-11-23' AS Date), N'Erkek', N'5263350924', N'8683 Benice Forge
Aytenberg, NC 65757', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (145, N'Yiğit', N'Uz', CAST(N'1963-07-02' AS Date), N'Erkek', N'5447566938', N'0046 Bilgin Glens Apt. 993
Duranmouth, CA 89574', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (146, N'Yusuf', N'Orhan', CAST(N'1978-12-17' AS Date), N'Erkek', N'5206186176', N'Unit 3228 Box 7280DPO AP 98144', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (147, N'Elisa', N'Uz', CAST(N'1986-11-15' AS Date), N'Erkek', N'5531011669', N'058 Ergül Spurs
West Borataş, MI 34480', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (148, N'Miran', N'Erdem', CAST(N'1999-03-15' AS Date), N'Kadın', N'5079386373', N'33962 Hançer Loaf
Öngenville, IA 64629', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (149, N'Ahmet', N'Yüzbaşıoğlu', CAST(N'1951-07-13' AS Date), N'Erkek', N'5906494766', N'607 Erdoğan Radial
Cemiylefort, KY 60461', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (150, N'Çınar', N'Akbulut', CAST(N'1977-03-10' AS Date), N'Kadın', N'5583286852', N'8031 Müslum Drives
West Gencaslanhaven, DE 91721', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (151, N'Muhammed Ali', N'Tüten', CAST(N'1961-01-01' AS Date), N'Kadın', N'5826925812', N'390 Samahat Glen Suite 389
West Bilgütay, NE 05779', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (152, N'Masal', N'Erdem', CAST(N'1982-11-15' AS Date), N'Erkek', N'5870305058', N'41698 Sezgin Island
East Şerman, KY 44587', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (153, N'Eslem', N'Öztürk', CAST(N'1965-05-09' AS Date), N'Erkek', N'5874930854', N'75935 Rezzak Road
South Müzekker, NH 67794', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (154, N'Ela', N'Yücel', CAST(N'1976-07-30' AS Date), N'Kadın', N'5388848899', N'4904 Güçlü Ports Suite 760
Tarhanhaven, MD 30639', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (155, N'Defne', N'Ertekin', CAST(N'1956-04-27' AS Date), N'Erkek', N'5080813962', N'10307 Seven Islands
Öcalanhaven, AL 01361', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (156, N'Poyraz', N'Orhon', CAST(N'1988-10-03' AS Date), N'Erkek', N'5766848562', N'9764 Evrimer Pass Apt. 924
Ertaşton, CT 88535', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (157, N'Mehmet', N'Aslan', CAST(N'1979-09-25' AS Date), N'Erkek', N'5407399291', N'96062 Melihcan Way Suite 612
Gülenton, FM 39238', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (158, N'Nehir', N'Çevik', CAST(N'2000-03-08' AS Date), N'Kadın', N'5957833077', N'14139 Ertaş Burg
Silanurchester, RI 87897', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (159, N'Kuzey', N'Ertekin', CAST(N'1996-11-16' AS Date), N'Erkek', N'5043266381', N'98362 Aksu Ridges Suite 558
Atiyyeburgh, VT 54091', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (160, N'Zehra', N'Erdem', CAST(N'1962-02-25' AS Date), N'Erkek', N'5258237501', N'29415 Hadrey Spur Apt. 535
Port Uçbeyimouth, OR 66744', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (161, N'Yunus Emre', N'Yavuz', CAST(N'1990-01-22' AS Date), N'Kadın', N'5016707665', N'10577 Erkinel Street Apt. 253
Zenginville, NC 39860', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (162, N'Ebrar', N'Erkuran', CAST(N'1985-05-11' AS Date), N'Erkek', N'5577236378', N'137 Odkanlı Mills Apt. 371
Tomurcukborough, MN 81213', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (163, N'Ayaz', N'Orhon', CAST(N'1987-11-04' AS Date), N'Erkek', N'5904851432', N'43192 Bilge Brooks
West Şennurport, OR 14592', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (164, N'Elif', N'Tüten', CAST(N'1994-07-17' AS Date), N'Erkek', N'5285305037', N'67777 Ferihan Lake Suite 725
Akgündüzhaven, ID 89933', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (165, N'Buğlem', N'Kandemir', CAST(N'1975-10-08' AS Date), N'Erkek', N'5471337767', N'8254 Baki Underpass Suite 575
Seçmeview, VA 41083', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (166, N'Ali', N'Kandemir', CAST(N'2000-07-17' AS Date), N'Erkek', N'5440016359', N'66526 Aslan Inlet Apt. 749
Port Argu, NV 01285', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (167, N'Miray', N'Erdem', CAST(N'1972-10-06' AS Date), N'Erkek', N'5897485742', N'711 Yurtseven Overpass
North Orgün, PW 70355', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (168, N'Mustafa', N'Yücel', CAST(N'1974-01-01' AS Date), N'Kadın', N'5473851710', N'61847 Şevket Ports Suite 935
Lake Bektaşiport, VI 66618', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (169, N'Eylül', N'Erkuran', CAST(N'1994-08-06' AS Date), N'Erkek', N'5579636046', N'3649 Hançer Underpass
New Berksayburgh, OH 33319', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (170, N'Yunus Emre', N'Çevik', CAST(N'1967-11-06' AS Date), N'Kadın', N'5510509235', N'5055 Fermuta Stream
North Rebihat, IA 01115', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (171, N'Emir', N'Vural', CAST(N'1972-11-30' AS Date), N'Kadın', N'5986169197', N'73963 Evde Brook Apt. 359
Baykanmouth, MA 11938', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (172, N'Metehan', N'Erdem', CAST(N'1960-03-25' AS Date), N'Kadın', N'5119350182', N'357 Gülen Views
New Hafıza, TX 09449', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (173, N'Kuzey', N'Yavuz', CAST(N'1969-09-03' AS Date), N'Erkek', N'5349015128', N'USS Arslan
FPO AE 19362', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (174, N'Hiranur', N'Çevik', CAST(N'1962-11-21' AS Date), N'Erkek', N'5496893349', N'1887 Alaaddin Mountains
Zorluhaven, WA 30058', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (175, N'Ali', N'Yücel', CAST(N'1952-07-10' AS Date), N'Kadın', N'5685297249', N'74032 Zengin Motorway
Sakaryastad, MN 28852', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (176, N'Ela', N'Vural', CAST(N'1963-10-17' AS Date), N'Kadın', N'5601886535', N'PSC 7740, Box 6211
APO AA 10053', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (177, N'Buğlem', N'Kandemir', CAST(N'1995-04-13' AS Date), N'Erkek', N'5387446494', N'14679 Seçme Plaza Apt. 179
Gilmanchester, CT 43289', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (178, N'Ada', N'Tüten', CAST(N'1995-12-26' AS Date), N'Erkek', N'5754229386', N'940 Jankat Dam Suite 364
Fenniberg, IN 32663', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (179, N'Miraç', N'Yavuz', CAST(N'1970-09-06' AS Date), N'Kadın', N'5764019002', N'PSC 9999, Box 5277
APO AE 49388', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (180, N'Yağmur', N'Erdem', CAST(N'1954-12-22' AS Date), N'Kadın', N'5036747422', N'751 Temime Trail
West Nursedashire, IL 94549', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (181, N'Mert', N'Aslan', CAST(N'1986-12-31' AS Date), N'Erkek', N'5371005559', N'7597 Çamurcuoğlu Isle Suite 130
South Gözemhaven, MA 31453', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (182, N'Alya', N'Tüten', CAST(N'1950-07-08' AS Date), N'Kadın', N'5879138503', N'15311 Gül Lane Suite 528
Günebakanville, CA 58713', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (183, N'Ayaz', N'Tüten', CAST(N'1995-02-14' AS Date), N'Kadın', N'5258915184', N'6390 Korutürk Locks Apt. 234
Serolstad, MO 66804', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (184, N'Ömer Asaf', N'Öztürk', CAST(N'1989-09-26' AS Date), N'Erkek', N'5104460903', N'33706 Selçuk Drive
Dönerfurt, FM 65959', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (185, N'Aras', N'Dede', CAST(N'1981-03-29' AS Date), N'Kadın', N'5417781643', N'257 Şafak Valley
Zubeydeshire, WY 77853', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (186, N'Eylül', N'Vural', CAST(N'1993-08-16' AS Date), N'Erkek', N'5689390589', N'422 Zorlu Harbor
West Uraltay, NY 23946', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (187, N'Ahmet', N'Dede', CAST(N'1980-09-15' AS Date), N'Erkek', N'5738843835', N'USCGC Karadeniz
FPO AE 44385', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (188, N'Miray', N'Sönmez', CAST(N'1993-01-08' AS Date), N'Kadın', N'5551434002', N'6629 Noman Junction Suite 857
East Şüküfe, UT 56846', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (189, N'Yiğit', N'Tüten', CAST(N'1975-12-05' AS Date), N'Erkek', N'5380982207', N'7460 Yorulmaz Shoals Suite 183
Port Ulutayfurt, KY 81682', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (190, N'Ahmet', N'Yavuz', CAST(N'1955-06-08' AS Date), N'Kadın', N'5913384338', N'Unit 8183 Box 2418
DPO AA 33612', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (191, N'Ali Asaf', N'Dede', CAST(N'1999-01-14' AS Date), N'Kadın', N'5561448403', N'7078 Erenalp Street
Nevalmouth, SC 05598', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (192, N'Alya', N'Yücel', CAST(N'1962-06-19' AS Date), N'Kadın', N'5987321782', N'7814 Karabaş Lodge
Tekecanbury, PA 53167', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (193, N'Emir', N'Erkuran', CAST(N'1986-01-01' AS Date), N'Erkek', N'5109606421', N'416 Aslan Plaza Suite 921
Demirelmouth, IL 32291', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (194, N'Yunus Emre', N'Çevik', CAST(N'1997-03-29' AS Date), N'Kadın', N'5210966527', N'813 Rebihat Underpass Suite 319
Fehimberg, WV 71461', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (195, N'Defne', N'Dede', CAST(N'1990-07-08' AS Date), N'Erkek', N'5880030784', N'5614 Aral Square
Yamanchester, LA 41826', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (196, N'Miran', N'Kulaç', CAST(N'1962-10-11' AS Date), N'Erkek', N'5753447632', N'Unit 1620 Box 9440
DPO AP 58782', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (197, N'Umut', N'Erdem', CAST(N'1959-10-10' AS Date), N'Erkek', N'5265492242', N'89551 Akçay Spur
Ertaşstad, NV 79218', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (198, N'Çınar', N'Çevik', CAST(N'1997-11-08' AS Date), N'Kadın', N'5110789529', N'973 Çamurcuoğlu Canyon
Yükselstad, NV 41215', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (199, N'Hamza', N'Uz', CAST(N'1950-09-06' AS Date), N'Erkek', N'5862530864', N'955 Yorulmaz Parks
Hazineville, MS 85348', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (200, N'Çınar', N'Erkuran', CAST(N'1967-06-09' AS Date), N'Kadın', N'5086565759', N'131 Korutürk Lights
Sernurchester, NM 73874', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (201, N'Ali Asaf', N'Tüten', CAST(N'1953-08-23' AS Date), N'Erkek', N'5917829177', N'025 Akça Pine Suite 704
Lake Sayrak, ID 71436', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (202, N'Elisa', N'Orhon', CAST(N'1959-11-03' AS Date), N'Erkek', N'5296971423', N'9260 Otay Plains
West Ahsen, WV 16419', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (203, N'Aras', N'Vural', CAST(N'1973-02-05' AS Date), N'Kadın', N'5723038618', N'721 Öcalan Lock
İncifirborough, WV 09732', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (204, N'Yağmur', N'Akbulut', CAST(N'1994-07-16' AS Date), N'Erkek', N'5173840132', N'8548 Çorlu Ford Apt. 124
West Yurdaser, FL 41028', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (205, N'Meryem', N'Kandemir', CAST(N'1996-12-21' AS Date), N'Kadın', N'5371057592', N'855 Cevale Prairie Suite 973
Arsoymouth, VA 66167', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (206, N'Eymen', N'Yücel', CAST(N'1985-12-02' AS Date), N'Erkek', N'5283473337', N'00067 Oktüremiş Knolls Apt. 927
Port Fitnat, TX 93670', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (207, N'Lina', N'Akbulut', CAST(N'1958-06-15' AS Date), N'Kadın', N'5269020991', N'52315 Gül Branch Apt. 130
Korutürkview, MS 69744', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
GO
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (208, N'İbrahim', N'Uz', CAST(N'2000-02-04' AS Date), N'Kadın', N'5486281372', N'316 Us Island
North İyiyürekside, AR 66179', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (209, N'Ömer Asaf', N'Orhon', CAST(N'1971-03-11' AS Date), N'Erkek', N'5379551022', N'961 Demiriz Tunnel Apt. 580
Bilgemouth, PA 93425', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
INSERT [dbo].[Hastalar] ([HastaID], [Ad], [Soyad], [DogumTarihi], [Cinsiyet], [Telefon], [Adres], [sifre]) VALUES (210, N'Kuzey', N'Kulaç', CAST(N'1987-06-03' AS Date), N'Kadın', N'5771361395', N'49536 Gül Harbor Apt. 074
North Müzekkertown, AS 87544', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
SET IDENTITY_INSERT [dbo].[Hastalar] OFF
GO
SET IDENTITY_INSERT [dbo].[Randevular] ON 

INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [RandevuTarihi], [RandevuSaat], [UzmanlıkAlani], [Hastane_ismi]) VALUES (6, 3, 73, CAST(N'2024-05-24' AS Date), CAST(N'09:00:00' AS Time), N'Ortopedi', N'Medical Park Hastanesi')
INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [RandevuTarihi], [RandevuSaat], [UzmanlıkAlani], [Hastane_ismi]) VALUES (7, 3, 189, CAST(N'2024-05-30' AS Date), CAST(N'09:00:00' AS Time), N'Kulak Burun Boğaz', N'Kocaeli Üniversitesi Hastanesi')
INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [RandevuTarihi], [RandevuSaat], [UzmanlıkAlani], [Hastane_ismi]) VALUES (11, 30, 34, CAST(N'2024-05-23' AS Date), CAST(N'10:00:00' AS Time), N'Göz Hastalıkları', N'Florence Nightingale Hastanesi')
INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [RandevuTarihi], [RandevuSaat], [UzmanlıkAlani], [Hastane_ismi]) VALUES (12, 50, 189, CAST(N'2024-06-20' AS Date), CAST(N'11:00:00' AS Time), N'Kulak Burun Boğaz', N'Kocaeli Üniversitesi Hastanesi')
INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [RandevuTarihi], [RandevuSaat], [UzmanlıkAlani], [Hastane_ismi]) VALUES (13, 50, 43, CAST(N'2024-05-22' AS Date), CAST(N'12:00:00' AS Time), N'Nöroloji', N'Tuzla Devlet Hastanesi')
INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [RandevuTarihi], [RandevuSaat], [UzmanlıkAlani], [Hastane_ismi]) VALUES (14, 10, 37, CAST(N'2024-05-22' AS Date), CAST(N'11:00:00' AS Time), N'Dermatoloji', N'Acıbadem Hastanesi')
INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [RandevuTarihi], [RandevuSaat], [UzmanlıkAlani], [Hastane_ismi]) VALUES (15, 10, 89, CAST(N'2024-05-30' AS Date), CAST(N'12:00:00' AS Time), N'Onkoloji', N'Kocaeli Üniversitesi Hastanesi')
INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [RandevuTarihi], [RandevuSaat], [UzmanlıkAlani], [Hastane_ismi]) VALUES (16, 10, 214, CAST(N'2024-05-31' AS Date), CAST(N'14:00:00' AS Time), N'Dahiliye', N'Pendik Devlet Hastanesi')
INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [RandevuTarihi], [RandevuSaat], [UzmanlıkAlani], [Hastane_ismi]) VALUES (17, 10, 141, CAST(N'2024-06-06' AS Date), CAST(N'09:00:00' AS Time), N'Kardiyoloji', N'Tuzla Devlet Hastanesi')
INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [RandevuTarihi], [RandevuSaat], [UzmanlıkAlani], [Hastane_ismi]) VALUES (18, 60, 94, CAST(N'2024-05-30' AS Date), CAST(N'10:00:00' AS Time), N'Kulak Burun Boğaz', N'Acıbadem Hastanesi')
INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [RandevuTarihi], [RandevuSaat], [UzmanlıkAlani], [Hastane_ismi]) VALUES (19, 60, 22, CAST(N'2024-05-24' AS Date), CAST(N'13:00:00' AS Time), N'Üroloji', N'İstanbul Üniversitesi Tıp Fakültesi Hastanesi')
INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [RandevuTarihi], [RandevuSaat], [UzmanlıkAlani], [Hastane_ismi]) VALUES (20, 60, 141, CAST(N'2024-06-13' AS Date), CAST(N'11:00:00' AS Time), N'Kardiyoloji', N'Tuzla Devlet Hastanesi')
INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [RandevuTarihi], [RandevuSaat], [UzmanlıkAlani], [Hastane_ismi]) VALUES (21, 60, 203, CAST(N'2024-06-07' AS Date), CAST(N'13:00:00' AS Time), N'Göz Hastalıkları', N'İstanbul Üniversitesi Tıp Fakültesi Hastanesi')
INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [RandevuTarihi], [RandevuSaat], [UzmanlıkAlani], [Hastane_ismi]) VALUES (22, 60, 160, CAST(N'2024-05-30' AS Date), CAST(N'11:00:00' AS Time), N'Onkoloji', N'Memorial Hastanesi')
INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [RandevuTarihi], [RandevuSaat], [UzmanlıkAlani], [Hastane_ismi]) VALUES (23, 70, 113, CAST(N'2024-05-30' AS Date), CAST(N'11:00:00' AS Time), N'Kardiyoloji', N'Kocaeli Devlet Hastanesi')
INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [RandevuTarihi], [RandevuSaat], [UzmanlıkAlani], [Hastane_ismi]) VALUES (24, 70, 85, CAST(N'2024-06-13' AS Date), CAST(N'12:00:00' AS Time), N'Kardiyoloji', N'Acıbadem Hastanesi')
INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [RandevuTarihi], [RandevuSaat], [UzmanlıkAlani], [Hastane_ismi]) VALUES (25, 70, 58, CAST(N'2024-06-12' AS Date), CAST(N'14:00:00' AS Time), N'Psikiyatri', N'Tuzla Devlet Hastanesi')
INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [RandevuTarihi], [RandevuSaat], [UzmanlıkAlani], [Hastane_ismi]) VALUES (26, 3, 49, CAST(N'2024-05-23' AS Date), CAST(N'12:00:00' AS Time), N'Kulak Burun Boğaz', N'Kocaeli Üniversitesi Hastanesi')
INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [RandevuTarihi], [RandevuSaat], [UzmanlıkAlani], [Hastane_ismi]) VALUES (27, 3, 107, CAST(N'2024-06-20' AS Date), CAST(N'10:00:00' AS Time), N'Kulak Burun Boğaz', N'İstanbul Üniversitesi Tıp Fakültesi Hastanesi')
INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [RandevuTarihi], [RandevuSaat], [UzmanlıkAlani], [Hastane_ismi]) VALUES (28, 3, 67, CAST(N'2024-05-30' AS Date), CAST(N'10:00:00' AS Time), N'Psikiyatri', N'Kocaeli Üniversitesi Hastanesi')
INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [RandevuTarihi], [RandevuSaat], [UzmanlıkAlani], [Hastane_ismi]) VALUES (29, 3, 69, CAST(N'2024-06-13' AS Date), CAST(N'13:00:00' AS Time), N'Kardiyoloji', N'Memorial Hastanesi')
INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [RandevuTarihi], [RandevuSaat], [UzmanlıkAlani], [Hastane_ismi]) VALUES (30, 50, 162, CAST(N'2024-06-06' AS Date), CAST(N'14:00:00' AS Time), N'Psikiyatri', N'Kocaeli Üniversitesi Hastanesi')
INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [RandevuTarihi], [RandevuSaat], [UzmanlıkAlani], [Hastane_ismi]) VALUES (31, 87, 156, CAST(N'2024-05-29' AS Date), CAST(N'13:00:00' AS Time), N'Üroloji', N'Acıbadem Hastanesi')
INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [RandevuTarihi], [RandevuSaat], [UzmanlıkAlani], [Hastane_ismi]) VALUES (32, 30, 199, CAST(N'2024-06-19' AS Date), CAST(N'09:00:00' AS Time), N'Kulak Burun Boğaz', N'Medical Park Hastanesi')
INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [RandevuTarihi], [RandevuSaat], [UzmanlıkAlani], [Hastane_ismi]) VALUES (34, 30, 182, CAST(N'2024-07-06' AS Date), CAST(N'15:00:00' AS Time), N'Onkoloji', N'Acıbadem Hastanesi')
INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [RandevuTarihi], [RandevuSaat], [UzmanlıkAlani], [Hastane_ismi]) VALUES (35, 30, 85, CAST(N'2024-05-28' AS Date), CAST(N'15:00:00' AS Time), N'Kardiyoloji', N'Acıbadem Hastanesi')
INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [RandevuTarihi], [RandevuSaat], [UzmanlıkAlani], [Hastane_ismi]) VALUES (36, 10, 107, CAST(N'2024-06-13' AS Date), CAST(N'10:00:00' AS Time), N'Kulak Burun Boğaz', N'İstanbul Üniversitesi Tıp Fakültesi Hastanesi')
INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [RandevuTarihi], [RandevuSaat], [UzmanlıkAlani], [Hastane_ismi]) VALUES (37, 35, 115, CAST(N'2024-06-07' AS Date), CAST(N'10:00:00' AS Time), N'Nöroloji', N'Liv Hospital')
INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [RandevuTarihi], [RandevuSaat], [UzmanlıkAlani], [Hastane_ismi]) VALUES (38, 3, 13, CAST(N'2024-06-13' AS Date), CAST(N'14:00:00' AS Time), N'Dermatoloji', N'Liv Hospital')
INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [RandevuTarihi], [RandevuSaat], [UzmanlıkAlani], [Hastane_ismi]) VALUES (39, 90, 214, CAST(N'2024-05-22' AS Date), CAST(N'14:00:00' AS Time), N'Dahiliye', N'Pendik Devlet Hastanesi')
INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [RandevuTarihi], [RandevuSaat], [UzmanlıkAlani], [Hastane_ismi]) VALUES (41, 90, 119, CAST(N'2024-05-30' AS Date), CAST(N'09:00:00' AS Time), N'Dermatoloji', N'Medical Park Hastanesi')
INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [RandevuTarihi], [RandevuSaat], [UzmanlıkAlani], [Hastane_ismi]) VALUES (42, 99, 143, CAST(N'2024-06-06' AS Date), CAST(N'10:00:00' AS Time), N'Psikiyatri', N'Pendik Devlet Hastanesi')
INSERT [dbo].[Randevular] ([RandevuID], [HastaID], [DoktorID], [RandevuTarihi], [RandevuSaat], [UzmanlıkAlani], [Hastane_ismi]) VALUES (43, 99, 30, CAST(N'2024-06-06' AS Date), CAST(N'15:00:00' AS Time), N'Onkoloji', N'Liv Hospital')
SET IDENTITY_INSERT [dbo].[Randevular] OFF
GO
SET IDENTITY_INSERT [dbo].[Yönetici] ON 

INSERT [dbo].[Yönetici] ([YöneticiID], [sifre]) VALUES (6, N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3')
SET IDENTITY_INSERT [dbo].[Yönetici] OFF
GO
ALTER TABLE [dbo].[Randevular]  WITH CHECK ADD FOREIGN KEY([DoktorID])
REFERENCES [dbo].[Doktorlar] ([DoktorID])
GO
ALTER TABLE [dbo].[Randevular]  WITH CHECK ADD FOREIGN KEY([DoktorID])
REFERENCES [dbo].[Doktorlar] ([DoktorID])
GO
ALTER TABLE [dbo].[Randevular]  WITH CHECK ADD FOREIGN KEY([DoktorID])
REFERENCES [dbo].[Doktorlar] ([DoktorID])
GO
ALTER TABLE [dbo].[Randevular]  WITH CHECK ADD FOREIGN KEY([DoktorID])
REFERENCES [dbo].[Doktorlar] ([DoktorID])
GO
ALTER TABLE [dbo].[Randevular]  WITH CHECK ADD FOREIGN KEY([DoktorID])
REFERENCES [dbo].[Doktorlar] ([DoktorID])
GO
ALTER TABLE [dbo].[Randevular]  WITH CHECK ADD FOREIGN KEY([HastaID])
REFERENCES [dbo].[Hastalar] ([HastaID])
GO
ALTER TABLE [dbo].[Randevular]  WITH CHECK ADD FOREIGN KEY([HastaID])
REFERENCES [dbo].[Hastalar] ([HastaID])
GO
ALTER TABLE [dbo].[Randevular]  WITH CHECK ADD FOREIGN KEY([HastaID])
REFERENCES [dbo].[Hastalar] ([HastaID])
GO
ALTER TABLE [dbo].[Randevular]  WITH CHECK ADD FOREIGN KEY([HastaID])
REFERENCES [dbo].[Hastalar] ([HastaID])
GO
ALTER TABLE [dbo].[Randevular]  WITH CHECK ADD FOREIGN KEY([HastaID])
REFERENCES [dbo].[Hastalar] ([HastaID])
GO
ALTER TABLE [dbo].[Raporlar]  WITH CHECK ADD FOREIGN KEY([HastaID])
REFERENCES [dbo].[Hastalar] ([HastaID])
GO
