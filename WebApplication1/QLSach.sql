USE [master]
GO
/****** Object:  Database [QLSach]    Script Date: 17/07/2021 4:38:53 PM ******/
CREATE DATABASE [QLSach]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLSach', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QLSach.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLSach_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QLSach_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLSach] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLSach].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLSach] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLSach] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLSach] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLSach] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLSach] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLSach] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLSach] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLSach] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLSach] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLSach] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLSach] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLSach] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLSach] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLSach] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLSach] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLSach] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLSach] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLSach] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLSach] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLSach] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLSach] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLSach] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLSach] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLSach] SET  MULTI_USER 
GO
ALTER DATABASE [QLSach] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLSach] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLSach] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLSach] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QLSach] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QLSach]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 17/07/2021 4:38:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[Id] [int] NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Conten] [nchar](10) NULL,
	[AuthorName] [nvarchar](50) NULL,
	[Price] [int] NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Sach] ([Id], [Title], [Conten], [AuthorName], [Price]) VALUES (1, N'ABC', N'DEF       ', N'HUY', 10000)
INSERT [dbo].[Sach] ([Id], [Title], [Conten], [AuthorName], [Price]) VALUES (2, N'GHT', N'ASD       ', N'GH', 15000)
USE [master]
GO
ALTER DATABASE [QLSach] SET  READ_WRITE 
GO
