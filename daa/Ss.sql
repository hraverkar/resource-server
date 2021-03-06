USE [master]
GO
/****** Object:  Database [covidresources]    Script Date: 21-04-2021 17:04:18 ******/
CREATE DATABASE [covidresources]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'covidresources', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\covidresources.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'covidresources_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\covidresources_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [covidresources] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [covidresources].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [covidresources] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [covidresources] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [covidresources] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [covidresources] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [covidresources] SET ARITHABORT OFF 
GO
ALTER DATABASE [covidresources] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [covidresources] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [covidresources] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [covidresources] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [covidresources] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [covidresources] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [covidresources] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [covidresources] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [covidresources] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [covidresources] SET  DISABLE_BROKER 
GO
ALTER DATABASE [covidresources] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [covidresources] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [covidresources] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [covidresources] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [covidresources] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [covidresources] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [covidresources] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [covidresources] SET RECOVERY FULL 
GO
ALTER DATABASE [covidresources] SET  MULTI_USER 
GO
ALTER DATABASE [covidresources] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [covidresources] SET DB_CHAINING OFF 
GO
ALTER DATABASE [covidresources] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [covidresources] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [covidresources] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'covidresources', N'ON'
GO
ALTER DATABASE [covidresources] SET QUERY_STORE = OFF
GO
USE [covidresources]
GO
/****** Object:  Table [dbo].[infromation]    Script Date: 21-04-2021 17:04:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[infromation](
	[id] [nvarchar](50) NOT NULL,
	[typeid] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[contact_person_name] [nvarchar](50) NOT NULL,
	[contact] [nvarchar](50) NOT NULL,
	[alter_contact] [nvarchar](50) NOT NULL,
	[website] [nvarchar](50) NOT NULL,
	[address] [nvarchar](50) NOT NULL,
	[city] [nvarchar](50) NOT NULL,
	[state] [nvarchar](50) NOT NULL,
	[country] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_infromation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[resourcetype]    Script Date: 21-04-2021 17:04:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[resourcetype](
	[id] [nvarchar](50) NOT NULL,
	[type] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [covidresources] SET  READ_WRITE 
GO
