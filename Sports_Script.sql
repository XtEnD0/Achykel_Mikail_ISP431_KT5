USE [master]
GO
/****** Object:  Database [Sports]    Script Date: 14.01.2025 11:25:25 ******/
CREATE DATABASE [Sports]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Sports', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Sports.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Sports_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Sports_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Sports] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Sports].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Sports] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Sports] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Sports] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Sports] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Sports] SET ARITHABORT OFF 
GO
ALTER DATABASE [Sports] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Sports] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Sports] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Sports] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Sports] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Sports] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Sports] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Sports] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Sports] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Sports] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Sports] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Sports] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Sports] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Sports] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Sports] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Sports] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Sports] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Sports] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Sports] SET  MULTI_USER 
GO
ALTER DATABASE [Sports] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Sports] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Sports] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Sports] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Sports] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Sports] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Sports] SET QUERY_STORE = OFF
GO
USE [Sports]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 14.01.2025 11:25:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_roles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sex]    Script Date: 14.01.2025 11:25:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sex](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_sex] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[type]    Script Date: 14.01.2025 11:25:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EntryType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_type] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 14.01.2025 11:25:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Passport] [nvarchar](30) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[LastEntry] [datetime] NULL,
	[TypeID] [int] NULL,
	[SexID] [int] NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[roles] ON 

INSERT [dbo].[roles] ([ID], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[roles] ([ID], [RoleName]) VALUES (2, N'Исполнитель')
INSERT [dbo].[roles] ([ID], [RoleName]) VALUES (3, N'Менеджер')
SET IDENTITY_INSERT [dbo].[roles] OFF
GO
SET IDENTITY_INSERT [dbo].[sex] ON 

INSERT [dbo].[sex] ([ID], [Gender]) VALUES (1, N'женский')
INSERT [dbo].[sex] ([ID], [Gender]) VALUES (2, N'мужской')
SET IDENTITY_INSERT [dbo].[sex] OFF
GO
SET IDENTITY_INSERT [dbo].[type] ON 

INSERT [dbo].[type] ([ID], [EntryType]) VALUES (1, N'Неуспешно')
INSERT [dbo].[type] ([ID], [EntryType]) VALUES (2, N'Успешно')
SET IDENTITY_INSERT [dbo].[type] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([ID], [RoleID], [Name], [Email], [Login], [Password], [Phone], [Passport], [BirthDate], [LastEntry], [TypeID], [SexID]) VALUES (1, 3, N'Акимов Ян Алексеевич', N'gohufreilagrau-3818@yopmail.com', N'akimovya', N'bn069Caj', N'+7(781) 785-58-37', N'2367558134', CAST(N'1993-07-03' AS Date), CAST(N'2023-02-01T05:59:51.000' AS DateTime), 2, 2)
INSERT [dbo].[users] ([ID], [RoleID], [Name], [Email], [Login], [Password], [Phone], [Passport], [BirthDate], [LastEntry], [TypeID], [SexID]) VALUES (2, 2, N'Гончарова Ульяна Львовна', N'xawugosune-1385@yopmail.com', N'goncharovaul', N'pW4qZhL!', N'+7(230) 906-88-15', N'7101669343', CAST(N'1975-06-22' AS Date), CAST(N'2023-02-13T13:59:08.000' AS DateTime), 2, 1)
INSERT [dbo].[users] ([ID], [RoleID], [Name], [Email], [Login], [Password], [Phone], [Passport], [BirthDate], [LastEntry], [TypeID], [SexID]) VALUES (3, 1, N'Анохина Елизавета Матвеевна', N'leuttevitrafo1998@mail.ru', N'anochinaem', N'y6UNmaJg', N'+7(555) 444-83-16', N'3455719630', CAST(N'1991-08-16' AS Date), CAST(N'2023-02-10T17:58:02.000' AS DateTime), 2, 1)
INSERT [dbo].[users] ([ID], [RoleID], [Name], [Email], [Login], [Password], [Phone], [Passport], [BirthDate], [LastEntry], [TypeID], [SexID]) VALUES (4, 3, N'Николаев Илья Владиславович', N'frapreubrulloba1141@yandex.ru', N'nickolaeviv', N'ebOt@4y$', N'+7(392) 682-44-42', N'2377871623', CAST(N'1970-12-22' AS Date), CAST(N'2023-02-03T03:35:08.000' AS DateTime), 2, 2)
INSERT [dbo].[users] ([ID], [RoleID], [Name], [Email], [Login], [Password], [Phone], [Passport], [BirthDate], [LastEntry], [TypeID], [SexID]) VALUES (5, 2, N'Уткин Дмитрий Платонович', N'zapramaxesu-7741@yopmail.com', N'utkindp', N'zQt8g@GH', N'+7(836) 429-03-86', N'8755921148', CAST(N'1999-05-04' AS Date), CAST(N'2023-02-15T21:35:55.000' AS DateTime), 1, 2)
INSERT [dbo].[users] ([ID], [RoleID], [Name], [Email], [Login], [Password], [Phone], [Passport], [BirthDate], [LastEntry], [TypeID], [SexID]) VALUES (6, 2, N'Куликова Стефания Никитична', N'rouzecroummegre-3899@yopmail.com', N'kulikovasn', N'TCmE7Jon', N'+7(283) 945-30-92', N'4355104594', CAST(N'1994-12-06' AS Date), CAST(N'2023-02-11T20:22:23.000' AS DateTime), 2, 1)
INSERT [dbo].[users] ([ID], [RoleID], [Name], [Email], [Login], [Password], [Phone], [Passport], [BirthDate], [LastEntry], [TypeID], [SexID]) VALUES (7, 2, N'Волков Егор Матвеевич', N'ziyeuddocrabri-4748@@yopmail.com', N'volkovem', N'pbgO3Vv5', N'+7(621) 359-36-69', N'2791114390', CAST(N'1995-03-28' AS Date), CAST(N'2023-02-15T18:22:26.000' AS DateTime), 2, 2)
INSERT [dbo].[users] ([ID], [RoleID], [Name], [Email], [Login], [Password], [Phone], [Passport], [BirthDate], [LastEntry], [TypeID], [SexID]) VALUES (8, 1, N'Соколова Софья Георгиевна', N'ketameissoinnei-1951@yopmail.com', N'sokolovasg', N'lITaH?Bs', N'+7(440) 561-03-14', N'5582126286', CAST(N'1977-03-27' AS Date), CAST(N'2023-02-15T23:03:04.000' AS DateTime), 1, 1)
INSERT [dbo].[users] ([ID], [RoleID], [Name], [Email], [Login], [Password], [Phone], [Passport], [BirthDate], [LastEntry], [TypeID], [SexID]) VALUES (9, 3, N'Голубева Полина Андреевна', N'yipraubaponou-5849@yopmail.com', N'golubevapa', N's|ke*p@~', N'+7(331) 918-24-34', N'2978133653', CAST(N'1975-04-12' AS Date), CAST(N'2023-02-05T05:55:20.000' AS DateTime), 2, 1)
INSERT [dbo].[users] ([ID], [RoleID], [Name], [Email], [Login], [Password], [Phone], [Passport], [BirthDate], [LastEntry], [TypeID], [SexID]) VALUES (10, 3, N'Вишневская Мария Андреевна', N'crapedocouca-3572@yopmail.com', N'vishnevskayama', N'OCaywHJZ', N'+7(493) 219-39-42', N'7512141956', CAST(N'1975-12-23' AS Date), NULL, 2, 1)
INSERT [dbo].[users] ([ID], [RoleID], [Name], [Email], [Login], [Password], [Phone], [Passport], [BirthDate], [LastEntry], [TypeID], [SexID]) VALUES (11, 3, N'Васильева Арина Данииловна', N'ceigoixakaunni-9227@yopmail.com', N'vasilevad', N'DAWuV%#u', N'+7(407) 485-50-30', N'5046158433', CAST(N'2000-01-22' AS Date), NULL, 1, 1)
INSERT [dbo].[users] ([ID], [RoleID], [Name], [Email], [Login], [Password], [Phone], [Passport], [BirthDate], [LastEntry], [TypeID], [SexID]) VALUES (12, 3, N'Павлов Дмитрий Максимович', N'yeimmeiwauzomo-7054@yopmail.com', N'pavlovdm', N'ptoED%zE', N'+7(919) 478-24-97', N'2460169505', CAST(N'1983-10-03' AS Date), CAST(N'2023-02-04T19:26:44.000' AS DateTime), 1, 2)
INSERT [dbo].[users] ([ID], [RoleID], [Name], [Email], [Login], [Password], [Phone], [Passport], [BirthDate], [LastEntry], [TypeID], [SexID]) VALUES (13, 2, N'Горбунова Мирослава Артуровна', N'pixil59@gmail.com', N'gorbunovama', N'ZFR2~Zl*', N'+7(482) 802-95-80', N'3412174593', CAST(N'1998-03-03' AS Date), CAST(N'2023-02-16T05:30:24.000' AS DateTime), 2, 1)
INSERT [dbo].[users] ([ID], [RoleID], [Name], [Email], [Login], [Password], [Phone], [Passport], [BirthDate], [LastEntry], [TypeID], [SexID]) VALUES (14, 3, N'Демина София Романовна', N'deummecillummu-4992@mail.ru', N'deminasr', N'D%DVKyDN', N'+7(455) 944-64-49', N'4950183034', CAST(N'1993-06-08' AS Date), CAST(N'2023-02-10T23:46:25.000' AS DateTime), 1, 1)
INSERT [dbo].[users] ([ID], [RoleID], [Name], [Email], [Login], [Password], [Phone], [Passport], [BirthDate], [LastEntry], [TypeID], [SexID]) VALUES (15, 2, N'Петрова Алина Робертовна', N'vilagajaunne-5170@yandex.ru', N'petrovaar', N'z7ZE?8N5', N'+7(710) 388-25-63', N'5829219464', CAST(N'1980-09-23' AS Date), CAST(N'2023-02-01T17:56:56.000' AS DateTime), 2, 1)
INSERT [dbo].[users] ([ID], [RoleID], [Name], [Email], [Login], [Password], [Phone], [Passport], [BirthDate], [LastEntry], [TypeID], [SexID]) VALUES (16, 2, N'Плотников Григорий Александрович', N'frusubroppotou656@yandex.ru', N'plotnikovga', N'yh+S4@yc', N'+7(759) 452-38-46', N'6443208059', CAST(N'1991-03-13' AS Date), CAST(N'2023-02-08T19:05:56.000' AS DateTime), 2, 2)
INSERT [dbo].[users] ([ID], [RoleID], [Name], [Email], [Login], [Password], [Phone], [Passport], [BirthDate], [LastEntry], [TypeID], [SexID]) VALUES (17, 2, N'Прохорова Есения Тимофеевна', N'vhopkins@lewis-mullen.com', N'prochorovaet', N'wLF186dB', N'+7(687) 801-13-32', N'7079213265', CAST(N'1998-04-14' AS Date), NULL, NULL, 1)
INSERT [dbo].[users] ([ID], [RoleID], [Name], [Email], [Login], [Password], [Phone], [Passport], [BirthDate], [LastEntry], [TypeID], [SexID]) VALUES (18, 2, N'Чернов Алексей Егорович', N'nlewis@yahoo.com', N'chernovae', N'Sjkr*1zV', N'+7(425) 783-22-53', N'8207522702', CAST(N'1980-04-16' AS Date), CAST(N'2023-02-05T15:05:42.000' AS DateTime), 2, 2)
INSERT [dbo].[users] ([ID], [RoleID], [Name], [Email], [Login], [Password], [Phone], [Passport], [BirthDate], [LastEntry], [TypeID], [SexID]) VALUES (19, 3, N'Горбунов Степан Артёмович', N'garciadavid@mckinney-mcbride.com', N'gorbunovsa', N'hFhK%$JI', N'+7(889) 449-43-91', N'9307232158', CAST(N'1993-07-23' AS Date), CAST(N'2023-02-13T21:13:14.000' AS DateTime), 2, 2)
INSERT [dbo].[users] ([ID], [RoleID], [Name], [Email], [Login], [Password], [Phone], [Passport], [BirthDate], [LastEntry], [TypeID], [SexID]) VALUES (20, 2, N'Рябинина Софья Артёмовна', N'loudittoimmolau1900@gmail.com', N'ryabininasa', N'&yw1da4K', N'+7(825) 301-82-50', N'1357242839', CAST(N'1990-06-01' AS Date), NULL, NULL, 1)
INSERT [dbo].[users] ([ID], [RoleID], [Name], [Email], [Login], [Password], [Phone], [Passport], [BirthDate], [LastEntry], [TypeID], [SexID]) VALUES (21, 2, N'Козлова Яна Даниловна', N'hittuprofassa4984@mail.com', N'kozlovayd', N'wCH7dl3k', N'+7(397) 334-20-86', N'1167256636', CAST(N'1987-12-21' AS Date), NULL, NULL, 1)
INSERT [dbo].[users] ([ID], [RoleID], [Name], [Email], [Login], [Password], [Phone], [Passport], [BirthDate], [LastEntry], [TypeID], [SexID]) VALUES (22, 3, N'Лукьянова Ульяна Олеговна', N'freineiciweijau888@yandex.ru', N'lyckyanovayo', N'JadQ24D5', N'+7(241) 570-30-40', N'1768266986', CAST(N'1981-10-22' AS Date), NULL, NULL, 1)
INSERT [dbo].[users] ([ID], [RoleID], [Name], [Email], [Login], [Password], [Phone], [Passport], [BirthDate], [LastEntry], [TypeID], [SexID]) VALUES (23, 2, N'Кондрашова Арина Ивановна', N'jessica84@hotmail.com', N'kondrashovai', N'YlBz$8vJ', N'+7(713) 462-82-65', N'1710427875', CAST(N'1976-12-22' AS Date), CAST(N'2023-02-07T20:30:21.000' AS DateTime), 1, 1)
INSERT [dbo].[users] ([ID], [RoleID], [Name], [Email], [Login], [Password], [Phone], [Passport], [BirthDate], [LastEntry], [TypeID], [SexID]) VALUES (24, 3, N'Быкова Виктория Тимуровна', N'nokupekidda2001@gmail.com', N'bykovavt', N'nx8Z$K98', N'+7(854) 822-23-31', N'1806289145', CAST(N'1973-06-14' AS Date), NULL, NULL, 1)
INSERT [dbo].[users] ([ID], [RoleID], [Name], [Email], [Login], [Password], [Phone], [Passport], [BirthDate], [LastEntry], [TypeID], [SexID]) VALUES (25, 2, N'Гуляев Тимофей Даниилович', N'ginaritter@schneider-buchanan.com', N'gylyaevtd', N'lz$kp1?f', N'+7(439) 713-61-17', N'1587291249', CAST(N'1987-02-05' AS Date), CAST(N'2023-02-01T13:07:20.000' AS DateTime), 1, 2)
SET IDENTITY_INSERT [dbo].[users] OFF
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[roles] ([ID])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_roles]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_sex] FOREIGN KEY([SexID])
REFERENCES [dbo].[sex] ([ID])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_sex]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_type] FOREIGN KEY([TypeID])
REFERENCES [dbo].[type] ([ID])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_type]
GO
USE [master]
GO
ALTER DATABASE [Sports] SET  READ_WRITE 
GO
