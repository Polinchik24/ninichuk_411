USE [sport]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [FK_user_status]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [FK_user_role]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [FK_user_gender]
GO
/****** Object:  Table [dbo].[user]    Script Date: 10.10.2024 14:24:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user]') AND type in (N'U'))
DROP TABLE [dbo].[user]
GO
/****** Object:  Table [dbo].[status]    Script Date: 10.10.2024 14:24:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[status]') AND type in (N'U'))
DROP TABLE [dbo].[status]
GO
/****** Object:  Table [dbo].[role]    Script Date: 10.10.2024 14:24:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[role]') AND type in (N'U'))
DROP TABLE [dbo].[role]
GO
/****** Object:  Table [dbo].[gender]    Script Date: 10.10.2024 14:24:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[gender]') AND type in (N'U'))
DROP TABLE [dbo].[gender]
GO
/****** Object:  Table [dbo].[gender]    Script Date: 10.10.2024 14:24:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gender](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name_gender] [nvarchar](52) NOT NULL,
 CONSTRAINT [PK_gender] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 10.10.2024 14:24:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name_role] [nvarchar](52) NOT NULL,
 CONSTRAINT [PK_role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[status]    Script Date: 10.10.2024 14:24:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name_status] [nvarchar](52) NULL,
 CONSTRAINT [PK_status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 10.10.2024 14:24:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role] [int] NOT NULL,
	[FIO] [nvarchar](52) NOT NULL,
	[email] [nvarchar](52) NOT NULL,
	[login] [nvarchar](52) NOT NULL,
	[password] [nvarchar](52) NOT NULL,
	[number] [nvarchar](52) NOT NULL,
	[sernumpass] [nvarchar](52) NOT NULL,
	[datebirthday] [date] NOT NULL,
	[vhod] [int] NULL,
	[status] [int] NOT NULL,
	[gender] [int] NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[gender] ON 

INSERT [dbo].[gender] ([id], [name_gender]) VALUES (1, N'ж')
INSERT [dbo].[gender] ([id], [name_gender]) VALUES (2, N'м')
SET IDENTITY_INSERT [dbo].[gender] OFF
GO
SET IDENTITY_INSERT [dbo].[role] ON 

INSERT [dbo].[role] ([id], [name_role]) VALUES (1, N'Администратор')
INSERT [dbo].[role] ([id], [name_role]) VALUES (2, N'Исполнитель')
INSERT [dbo].[role] ([id], [name_role]) VALUES (3, N'Менеджер')
SET IDENTITY_INSERT [dbo].[role] OFF
GO
SET IDENTITY_INSERT [dbo].[status] ON 

INSERT [dbo].[status] ([id], [name_status]) VALUES (1, N' NULL')
INSERT [dbo].[status] ([id], [name_status]) VALUES (2, N'Неуспешно')
INSERT [dbo].[status] ([id], [name_status]) VALUES (3, N'Успешно')
SET IDENTITY_INSERT [dbo].[status] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([id], [role], [FIO], [email], [login], [password], [number], [sernumpass], [datebirthday], [vhod], [status], [gender]) VALUES (1, 3, N'Акимов Ян Алексеевич', N'gohufreilagrau-3818@yopmail.com', N'akimovya', N'bn069Caj', N'+7(781)-785-58-37', N'Серия 2367 Номер 558134', CAST(N'1993-07-03' AS Date), NULL, 3, 2)
INSERT [dbo].[user] ([id], [role], [FIO], [email], [login], [password], [number], [sernumpass], [datebirthday], [vhod], [status], [gender]) VALUES (2, 1, N'Анохина Елизавета Матвеевна', N'leuttevitrafo1998@mail.ru', N'anochinaem', N'y6UNmaJg', N'+7(555)-444-83-16', N'Серия 3455 Номер 719630', CAST(N'1991-08-16' AS Date), NULL, 3, 1)
INSERT [dbo].[user] ([id], [role], [FIO], [email], [login], [password], [number], [sernumpass], [datebirthday], [vhod], [status], [gender]) VALUES (3, 3, N'Быкова Виктория Тимуровна', N'nokupekidda2001@gmail.com', N'bykovavt', N'nx8Z$K98', N'+7(854)-822-23-31', N'Серия 1806 Номер 289145', CAST(N'1973-06-14' AS Date), NULL, 3, 1)
INSERT [dbo].[user] ([id], [role], [FIO], [email], [login], [password], [number], [sernumpass], [datebirthday], [vhod], [status], [gender]) VALUES (4, 3, N'Васильева Арина Данииловна', N'ceigoixakaunni-9227@yopmail.com', N'vasilevad', N'DAWuV%#u', N'+7(407)-485-50-30', N'Серия 5046 Номер 158433', CAST(N'2000-01-22' AS Date), NULL, 3, 2)
INSERT [dbo].[user] ([id], [role], [FIO], [email], [login], [password], [number], [sernumpass], [datebirthday], [vhod], [status], [gender]) VALUES (5, 3, N'Вишневская Мария Андреевна', N'crapedocouca-3572@yopmail.com', N'vishnevskayama', N'OCaywHJZ', N'+7(493)-219-39-42', N'Серия 7512 Номер 141956', CAST(N'1975-12-23' AS Date), NULL, 2, 2)
INSERT [dbo].[user] ([id], [role], [FIO], [email], [login], [password], [number], [sernumpass], [datebirthday], [vhod], [status], [gender]) VALUES (6, 2, N'Волков Егор Матвеевич', N'ziyeuddocrabri-4748@@yopmail.com', N'volkovem', N'pbgO3Vv5', N'+7(621)-359-36-69', N'Серия 2791 Номер 114390', CAST(N'1995-03-28' AS Date), NULL, 3, 1)
INSERT [dbo].[user] ([id], [role], [FIO], [email], [login], [password], [number], [sernumpass], [datebirthday], [vhod], [status], [gender]) VALUES (7, 3, N'Голубева Полина Андреевна', N'yipraubaponou-5849@yopmail.com', N'golubevapa', N's|ke*p@~', N'+7(331)-918-24-34', N'Серия 2978 Номер 133653', CAST(N'1975-04-12' AS Date), NULL, 3, 2)
INSERT [dbo].[user] ([id], [role], [FIO], [email], [login], [password], [number], [sernumpass], [datebirthday], [vhod], [status], [gender]) VALUES (8, 2, N'Гончарова Ульяна Львовна', N'xawugosune-1385@yopmail.com', N'goncharovaul', N'pW4qZhL!', N'+7(230)-906-88-15', N'Серия 7101 Номер 669343', CAST(N'1975-06-22' AS Date), NULL, 2, 1)
INSERT [dbo].[user] ([id], [role], [FIO], [email], [login], [password], [number], [sernumpass], [datebirthday], [vhod], [status], [gender]) VALUES (9, 3, N'Горбунов Степан Артёмович', N'garciadavid@mckinney-mcbride.com', N'gorbunovsa', N'hFhK%$JI', N'+7(889)-449-43-91', N'Серия 9307 Номер 232158', CAST(N'1993-07-23' AS Date), NULL, 3, 1)
INSERT [dbo].[user] ([id], [role], [FIO], [email], [login], [password], [number], [sernumpass], [datebirthday], [vhod], [status], [gender]) VALUES (10, 2, N'Горбунова Мирослава Артуровна', N'pixil59@gmail.com', N'gorbunovama', N'ZFR2~Zl*', N'+7(482)-802-95-80', N'Серия 3412 Номер 174593', CAST(N'1998-03-03' AS Date), NULL, 3, 1)
INSERT [dbo].[user] ([id], [role], [FIO], [email], [login], [password], [number], [sernumpass], [datebirthday], [vhod], [status], [gender]) VALUES (11, 2, N'Гуляев Тимофей Даниилович', N'ginaritter@schneider-buchanan.com', N'gylyaevtd', N'lz$kp1?f', N'+7(439)-713-61-17', N'Серия 1587 Номер 291249', CAST(N'1987-02-05' AS Date), NULL, 2, 1)
INSERT [dbo].[user] ([id], [role], [FIO], [email], [login], [password], [number], [sernumpass], [datebirthday], [vhod], [status], [gender]) VALUES (12, 3, N'Демина София Романовна', N'deummecillummu-4992@mail.ru', N'deminasr', N'D%DVKyDN', N'+7(455)-944-64-49', N'Серия 4950 Номер 183034', CAST(N'1993-06-08' AS Date), NULL, 2, 2)
INSERT [dbo].[user] ([id], [role], [FIO], [email], [login], [password], [number], [sernumpass], [datebirthday], [vhod], [status], [gender]) VALUES (13, 2, N'Козлова Яна Даниловна', N'hittuprofassa4984@mail.com', N'kozlovayd', N'wCH7dl3k', N'+7(397)-334-20-86', N'Серия 1167 Номер 256636', CAST(N'1987-12-21' AS Date), NULL, 3, 1)
INSERT [dbo].[user] ([id], [role], [FIO], [email], [login], [password], [number], [sernumpass], [datebirthday], [vhod], [status], [gender]) VALUES (14, 2, N'Кондрашова Арина Ивановна', N'jessica84@hotmail.com', N'kondrashovai', N'YlBz$8vJ', N'+7(713)-462-82-65', N'Серия 1710 Номер 427875', CAST(N'1976-12-22' AS Date), NULL, 2, 1)
INSERT [dbo].[user] ([id], [role], [FIO], [email], [login], [password], [number], [sernumpass], [datebirthday], [vhod], [status], [gender]) VALUES (15, 2, N'Куликова Стефания Никитична', N'rouzecroummegre-3899@yopmail.com', N'kulikovasn', N'TCmE7Jon', N'+7(283)-945-30-92', N'Серия 4355 Номер 104594', CAST(N'1994-12-06' AS Date), NULL, 3, 1)
INSERT [dbo].[user] ([id], [role], [FIO], [email], [login], [password], [number], [sernumpass], [datebirthday], [vhod], [status], [gender]) VALUES (16, 3, N'Лукьянова Ульяна Олеговна', N'freineiciweijau888@yandex.ru', N'lyckyanovayo', N'JadQ24D5', N'+7(241)-570-30-40', N'Серия 1768 Номер 266986', CAST(N'1981-10-22' AS Date), NULL, 3, 2)
INSERT [dbo].[user] ([id], [role], [FIO], [email], [login], [password], [number], [sernumpass], [datebirthday], [vhod], [status], [gender]) VALUES (17, 3, N'Николаев Илья Владиславович', N'frapreubrulloba1141@yandex.ru', N'nickolaeviv', N'ebOt@4y$', N'+7(392)-682-44-42', N'Серия 2377 Номер 871623', CAST(N'1970-12-22' AS Date), NULL, 1, 1)
INSERT [dbo].[user] ([id], [role], [FIO], [email], [login], [password], [number], [sernumpass], [datebirthday], [vhod], [status], [gender]) VALUES (18, 3, N'Павлов Дмитрий Максимович', N'yeimmeiwauzomo-7054@yopmail.com', N'pavlovdm', N'ptoED%zE', N'+7(919)-478-24-97', N'Серия 2460 Номер 169505', CAST(N'1983-10-03' AS Date), NULL, 3, 2)
INSERT [dbo].[user] ([id], [role], [FIO], [email], [login], [password], [number], [sernumpass], [datebirthday], [vhod], [status], [gender]) VALUES (19, 2, N'Петрова Алина Робертовна', N'vilagajaunne-5170@yandex.ru', N'petrovaar', N'z7ZE?8N5', N'+7(710)-388-25-63', N'Серия 5829 Номер 219464', CAST(N'1980-09-23' AS Date), NULL, 3, 2)
INSERT [dbo].[user] ([id], [role], [FIO], [email], [login], [password], [number], [sernumpass], [datebirthday], [vhod], [status], [gender]) VALUES (20, 2, N'Плотников Григорий Александрович', N'frusubroppotou656@yandex.ru', N'plotnikovga', N'yh+S4@yc', N'+7(759)-452-38-46', N'Серия 6443 Номер 208059', CAST(N'1991-03-13' AS Date), NULL, 1, 1)
INSERT [dbo].[user] ([id], [role], [FIO], [email], [login], [password], [number], [sernumpass], [datebirthday], [vhod], [status], [gender]) VALUES (21, 2, N'Прохорова Есения Тимофеевна', N'vhopkins@lewis-mullen.com', N'prochorovaet', N'wLF186dB', N'+7(687)-801-13-32', N'Серия 7079 Номер 213265', CAST(N'1998-04-14' AS Date), NULL, 1, 1)
INSERT [dbo].[user] ([id], [role], [FIO], [email], [login], [password], [number], [sernumpass], [datebirthday], [vhod], [status], [gender]) VALUES (22, 2, N'Рябинина Софья Артёмовна', N'loudittoimmolau1900@gmail.com', N'ryabininasa', N'&yw1da4K', N'+7(825)-301-82-50', N'Серия 1357 Номер 242839', CAST(N'1990-06-01' AS Date), NULL, 1, 1)
INSERT [dbo].[user] ([id], [role], [FIO], [email], [login], [password], [number], [sernumpass], [datebirthday], [vhod], [status], [gender]) VALUES (23, 1, N'Соколова Софья Георгиевна', N'ketameissoinnei-1951@yopmail.com', N'sokolovasg', N'lITaH?Bs', N'+7(440)-561-03-14', N'Серия 5582 Номер 126286', CAST(N'1977-03-27' AS Date), NULL, 2, 1)
INSERT [dbo].[user] ([id], [role], [FIO], [email], [login], [password], [number], [sernumpass], [datebirthday], [vhod], [status], [gender]) VALUES (24, 2, N'Уткин Дмитрий Платонович', N'zapramaxesu-7741@yopmail.com', N'utkindp', N'zQt8g@GH', N'+7(836)-429-03-86', N'Серия 8755 Номер 921148', CAST(N'1999-05-04' AS Date), NULL, 1, 1)
INSERT [dbo].[user] ([id], [role], [FIO], [email], [login], [password], [number], [sernumpass], [datebirthday], [vhod], [status], [gender]) VALUES (25, 2, N'Чернов Алексей Егорович', N'nlewis@yahoo.com', N'chernovae', N'Sjkr*1zV', N'+7(425)-783-22-53', N'Серия 8207 Номер 522702', CAST(N'1980-04-16' AS Date), NULL, 2, 2)
SET IDENTITY_INSERT [dbo].[user] OFF
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_user_gender] FOREIGN KEY([gender])
REFERENCES [dbo].[gender] ([id])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_user_gender]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_user_role] FOREIGN KEY([role])
REFERENCES [dbo].[role] ([id])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_user_role]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_user_status] FOREIGN KEY([status])
REFERENCES [dbo].[status] ([id])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_user_status]
GO
