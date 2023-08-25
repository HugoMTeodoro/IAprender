USE [master]
GO
/****** Object:  Database [IAprendeer]    Script Date: 09/02/2023 00:33:05 ******/
CREATE DATABASE [IAprendeer]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'IAprendeer', FILENAME = N'C:\Users\h11hu\IAprendeer.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'IAprendeer_log', FILENAME = N'C:\Users\h11hu\IAprendeer_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [IAprendeer] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [IAprendeer].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [IAprendeer] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [IAprendeer] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [IAprendeer] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [IAprendeer] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [IAprendeer] SET ARITHABORT OFF 
GO
ALTER DATABASE [IAprendeer] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [IAprendeer] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [IAprendeer] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [IAprendeer] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [IAprendeer] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [IAprendeer] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [IAprendeer] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [IAprendeer] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [IAprendeer] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [IAprendeer] SET  ENABLE_BROKER 
GO
ALTER DATABASE [IAprendeer] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [IAprendeer] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [IAprendeer] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [IAprendeer] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [IAprendeer] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [IAprendeer] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [IAprendeer] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [IAprendeer] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [IAprendeer] SET  MULTI_USER 
GO
ALTER DATABASE [IAprendeer] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [IAprendeer] SET DB_CHAINING OFF 
GO
ALTER DATABASE [IAprendeer] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [IAprendeer] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [IAprendeer] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [IAprendeer] SET QUERY_STORE = OFF
GO
USE [IAprendeer]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [IAprendeer]
GO
/****** Object:  Table [dbo].[IArleyTraining]    Script Date: 09/02/2023 00:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IArleyTraining](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Sobrancelha] [int] NULL,
	[Olhos] [int] NULL,
	[Boca] [int] NULL,
	[Humor] [varchar](255) NULL,
	[HumorId] [float] NULL,
	[Triste] [int] NULL,
	[Neutro] [int] NULL,
	[Feliz] [int] NULL,
	[Raiva] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 09/02/2023 00:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImageName] [nvarchar](max) NULL,
	[BodyPart] [nvarchar](max) NULL,
	[Humor] [nvarchar](max) NULL,
	[Hierarchy] [int] NOT NULL,
	[ReferencePlace] [varchar](50) NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[IArleyTraining] ON 
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (1, 2, 2, 2, N'Neutro', NULL, 0, 1, 0, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (2, 2, 2, 4, N'Feliz', NULL, 0, 0, 1, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (3, 2, 2, 0, N'Triste', NULL, 1, 0, 0, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (4, 2, 2, 6, N'Neutro', NULL, 0, 1, 0, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (5, 2, 4, 2, N'Neutro', NULL, 0, 1, 0, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (6, 2, 4, 4, N'Feliz', NULL, 0, 0, 1, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (7, 2, 4, 0, N'Triste', NULL, 1, 0, 0, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (8, 2, 4, 6, N'Neutro', NULL, 0, 1, 0, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (9, 2, 0, 2, N'Triste', NULL, 1, 0, 0, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (10, 2, 0, 4, N'Feliz', NULL, 0, 0, 1, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (11, 2, 0, 0, N'Triste', NULL, 1, 0, 0, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (12, 2, 0, 6, N'Neutro', NULL, 0, 1, 0, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (13, 2, 6, 2, N'Raiva', NULL, 0, 0, 0, 1)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (14, 2, 6, 4, N'Raiva', NULL, 0, 0, 0, 1)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (15, 2, 6, 0, N'Raiva', NULL, 0, 0, 0, 1)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (16, 2, 6, 6, N'Raiva', NULL, 0, 0, 0, 1)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (17, 4, 2, 2, N'Neutro', NULL, 0, 1, 0, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (18, 4, 2, 4, N'Feliz', NULL, 0, 0, 1, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (19, 4, 2, 0, N'Triste', NULL, 1, 0, 0, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (20, 4, 2, 6, N'Neutro', NULL, 0, 1, 0, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (21, 4, 4, 2, N'Neutro', NULL, 0, 1, 0, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (22, 4, 4, 4, N'Feliz', NULL, 0, 0, 1, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (23, 4, 4, 0, N'Triste', NULL, 1, 0, 0, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (24, 4, 4, 6, N'Neutro', NULL, 0, 1, 0, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (25, 4, 0, 2, N'Triste', NULL, 1, 0, 0, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (26, 4, 0, 4, N'Feliz', NULL, 0, 0, 1, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (27, 4, 0, 0, N'Triste', NULL, 1, 0, 0, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (28, 4, 0, 6, N'Triste', NULL, 1, 0, 0, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (29, 4, 6, 2, N'Raiva', NULL, 0, 0, 0, 1)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (30, 4, 6, 4, N'Feliz', NULL, 0, 0, 1, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (31, 4, 6, 0, N'Raiva', NULL, 0, 0, 0, 1)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (32, 4, 6, 6, N'Raiva', NULL, 0, 0, 0, 1)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (33, 0, 2, 2, N'Triste', NULL, 1, 0, 0, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (34, 0, 2, 4, N'Feliz', NULL, 0, 0, 1, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (35, 0, 2, 0, N'Triste', NULL, 1, 0, 0, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (36, 0, 2, 6, N'Triste', NULL, 1, 0, 0, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (37, 0, 4, 2, N'Triste', NULL, 1, 0, 0, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (38, 0, 4, 4, N'Feliz', NULL, 0, 0, 1, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (39, 0, 4, 0, N'Triste', NULL, 1, 0, 0, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (40, 0, 4, 6, N'Triste', NULL, 1, 0, 0, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (41, 0, 0, 2, N'Triste', NULL, 1, 0, 0, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (42, 0, 0, 4, N'Feliz', NULL, 0, 0, 1, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (43, 0, 0, 0, N'Triste', NULL, 1, 0, 0, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (44, 0, 0, 6, N'Triste', NULL, 1, 0, 0, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (45, 0, 6, 2, N'Raiva', NULL, 0, 0, 0, 1)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (46, 0, 6, 4, N'Feliz', NULL, 0, 0, 1, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (47, 0, 6, 0, N'Triste', NULL, 1, 0, 0, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (48, 0, 6, 6, N'Raiva', NULL, 0, 0, 0, 1)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (49, 6, 2, 2, N'Raiva', NULL, 0, 0, 0, 1)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (50, 6, 2, 4, N'Feliz', NULL, 0, 0, 1, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (51, 6, 2, 0, N'Raiva', NULL, 0, 0, 0, 1)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (52, 6, 2, 6, N'Raiva', NULL, 0, 0, 0, 1)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (53, 6, 4, 2, N'Raiva', NULL, 0, 0, 0, 1)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (54, 6, 4, 4, N'Feliz', NULL, 0, 0, 1, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (55, 6, 4, 0, N'Triste', NULL, 1, 0, 0, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (56, 6, 4, 6, N'Raiva', NULL, 0, 0, 0, 1)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (57, 6, 0, 2, N'Triste', NULL, 1, 0, 0, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (58, 6, 0, 4, N'Feliz', NULL, 0, 0, 1, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (59, 6, 0, 0, N'Triste', NULL, 1, 0, 0, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (60, 6, 0, 6, N'Raiva', NULL, 0, 0, 0, 1)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (61, 6, 6, 2, N'Raiva', NULL, 0, 0, 0, 1)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (62, 6, 6, 4, N'Feliz', NULL, 0, 0, 1, 0)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (63, 6, 6, 0, N'Raiva', NULL, 0, 0, 0, 1)
GO
INSERT [dbo].[IArleyTraining] ([Id], [Sobrancelha], [Olhos], [Boca], [Humor], [HumorId], [Triste], [Neutro], [Feliz], [Raiva]) VALUES (64, 6, 6, 6, N'Raiva', NULL, 0, 0, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[IArleyTraining] OFF
GO
SET IDENTITY_INSERT [dbo].[Images] ON 
GO
INSERT [dbo].[Images] ([Id], [ImageName], [BodyPart], [Humor], [Hierarchy], [ReferencePlace]) VALUES (1, N'sobrancelha neutra.png', N'sobrancelha', N'neutra', 100, N'IArley')
GO
INSERT [dbo].[Images] ([Id], [ImageName], [BodyPart], [Humor], [Hierarchy], [ReferencePlace]) VALUES (2, N'sobrancelha feliz.png', N'sobrancelha', N'feliz', 200, N'IArley')
GO
INSERT [dbo].[Images] ([Id], [ImageName], [BodyPart], [Humor], [Hierarchy], [ReferencePlace]) VALUES (3, N'sobrancelha triste.png', N'sobrancelha', N'triste', 300, N'IArley')
GO
INSERT [dbo].[Images] ([Id], [ImageName], [BodyPart], [Humor], [Hierarchy], [ReferencePlace]) VALUES (4, N'sobrancelha raiva.png', N'sobrancelha', N'raiva', 400, N'IArley')
GO
INSERT [dbo].[Images] ([Id], [ImageName], [BodyPart], [Humor], [Hierarchy], [ReferencePlace]) VALUES (5, N'olhos neutro.png', N'olhos', N'neutra', 100, N'IArley')
GO
INSERT [dbo].[Images] ([Id], [ImageName], [BodyPart], [Humor], [Hierarchy], [ReferencePlace]) VALUES (6, N'olhos feliz.png', N'olhos', N'feliz', 200, N'IArley')
GO
INSERT [dbo].[Images] ([Id], [ImageName], [BodyPart], [Humor], [Hierarchy], [ReferencePlace]) VALUES (7, N'olhos triste.png', N'olhos', N'triste', 300, N'IArley')
GO
INSERT [dbo].[Images] ([Id], [ImageName], [BodyPart], [Humor], [Hierarchy], [ReferencePlace]) VALUES (8, N'olhos raiva.png', N'olhos', N'raiva', 400, N'IArley')
GO
INSERT [dbo].[Images] ([Id], [ImageName], [BodyPart], [Humor], [Hierarchy], [ReferencePlace]) VALUES (9, N'boca neutra.png', N'boca', N'neutra', 100, N'IArley')
GO
INSERT [dbo].[Images] ([Id], [ImageName], [BodyPart], [Humor], [Hierarchy], [ReferencePlace]) VALUES (10, N'boca feliz.png', N'boca', N'feliz', 200, N'IArley')
GO
INSERT [dbo].[Images] ([Id], [ImageName], [BodyPart], [Humor], [Hierarchy], [ReferencePlace]) VALUES (11, N'boca triste.png', N'boca', N'triste', 300, N'IArley')
GO
INSERT [dbo].[Images] ([Id], [ImageName], [BodyPart], [Humor], [Hierarchy], [ReferencePlace]) VALUES (12, N'boca raiva.png', N'boca', N'raiva', 400, N'IArley')
GO
SET IDENTITY_INSERT [dbo].[Images] OFF
GO
USE [master]
GO
ALTER DATABASE [IAprendeer] SET  READ_WRITE 
GO
