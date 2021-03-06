USE [master]
GO
/****** Object:  Database [QDPwebData]    Script Date: 2020/11/6 1:20:00 ******/
CREATE DATABASE [QDPwebData]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QDPwebData', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QDPwebData.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QDPwebData_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QDPwebData_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QDPwebData] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QDPwebData].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QDPwebData] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QDPwebData] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QDPwebData] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QDPwebData] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QDPwebData] SET ARITHABORT OFF 
GO
ALTER DATABASE [QDPwebData] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QDPwebData] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QDPwebData] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QDPwebData] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QDPwebData] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QDPwebData] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QDPwebData] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QDPwebData] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QDPwebData] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QDPwebData] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QDPwebData] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QDPwebData] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QDPwebData] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QDPwebData] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QDPwebData] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QDPwebData] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [QDPwebData] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QDPwebData] SET RECOVERY FULL 
GO
ALTER DATABASE [QDPwebData] SET  MULTI_USER 
GO
ALTER DATABASE [QDPwebData] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QDPwebData] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QDPwebData] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QDPwebData] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QDPwebData] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QDPwebData] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QDPwebData', N'ON'
GO
ALTER DATABASE [QDPwebData] SET QUERY_STORE = OFF
GO
USE [QDPwebData]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2020/11/6 1:20:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[buildingSheets]    Script Date: 2020/11/6 1:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[buildingSheets](
	[bs_ID] [uniqueidentifier] NOT NULL,
	[bs_formats] [nvarchar](max) NULL,
	[bs_constructionarea] [nvarchar](max) NULL,
	[bs_totalheight] [nvarchar](max) NULL,
	[bs_floorheight] [nvarchar](max) NULL,
	[bs_totalhousehold] [nvarchar](max) NULL,
	[bs_housedescription] [nvarchar](max) NULL,
	[bs_remark] [nvarchar](max) NULL,
 CONSTRAINT [PK_buildingSheets] PRIMARY KEY CLUSTERED 
(
	[bs_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[costSummaries]    Script Date: 2020/11/6 1:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[costSummaries](
	[cs_ID] [uniqueidentifier] NOT NULL,
	[cs_subjectcode] [nvarchar](max) NULL,
	[cs_costaccount] [nvarchar](max) NULL,
	[cs_highclass] [nvarchar](max) NULL,
	[cs_garage] [nvarchar](max) NULL,
	[cs_totalcost] [nvarchar](max) NULL,
	[cs_unilateralcost] [nvarchar](max) NULL,
 CONSTRAINT [PK_costSummaries] PRIMARY KEY CLUSTERED 
(
	[cs_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[highClasses]    Script Date: 2020/11/6 1:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[highClasses](
	[hc_ID] [uniqueidentifier] NOT NULL,
	[MyProhc_numberperty] [nvarchar](max) NULL,
	[hc_costaccount] [nvarchar](max) NULL,
	[hc_Indicatordescription] [nvarchar](max) NULL,
	[hc_subjectcode] [nvarchar](max) NULL,
 CONSTRAINT [PK_highClasses] PRIMARY KEY CLUSTERED 
(
	[hc_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[projects]    Script Date: 2020/11/6 1:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[projects](
	[p_ID] [uniqueidentifier] NOT NULL,
	[p_name] [nvarchar](max) NULL,
	[p_type] [nvarchar](max) NULL,
	[p_starttime] [nvarchar](max) NULL,
	[p_endtime] [nvarchar](max) NULL,
	[p_overtime] [nvarchar](max) NULL,
	[p_totalarea] [nvarchar](max) NULL,
	[p_highclassarea] [nvarchar](max) NULL,
	[p_brancharea] [nvarchar](max) NULL,
	[p_basementarea] [nvarchar](max) NULL,
	[p_area] [nvarchar](max) NULL,
	[p_fararea] [nvarchar](max) NULL,
	[p_totalhousehold] [nvarchar](max) NULL,
	[p_totalheight] [nvarchar](max) NULL,
	[p_highclassnumber] [nvarchar](max) NULL,
	[p_highclassheight] [nvarchar](max) NULL,
	[p_branchnumber] [nvarchar](max) NULL,
	[p_branchheight] [nvarchar](max) NULL,
	[p_garagenumber] [nvarchar](max) NULL,
	[p_garageheight] [nvarchar](max) NULL,
	[p_structuretype] [nvarchar](max) NULL,
	[p_basictype] [nvarchar](max) NULL,
	[P_foundationtreatmenttype] [nvarchar](max) NULL,
	[p_seismicfortificationintensity] [nvarchar](max) NULL,
	[p_windpressureame] [nvarchar](max) NULL,
	[p_airdefenseundergroundparkingspace] [nvarchar](max) NULL,
	[p_nonairdefenseundergroundparkingspace] [nvarchar](max) NULL,
	[p_airdefensemechanicalparkingspace] [nvarchar](max) NULL,
	[p_Nonairdefensemechanicalparkingspace] [nvarchar](max) NULL,
	[p_groundgreenarea] [nvarchar](max) NULL,
	[p_othergreenarea] [nvarchar](max) NULL,
	[p_constructionareaofgroundgarden] [nvarchar](max) NULL,
	[p_othergardenconstructionarea] [nvarchar](max) NULL,
	[p_surfaceroadarea] [nvarchar](max) NULL,
	[p_otherroadarea] [nvarchar](max) NULL,
	[p_projectcategory] [nvarchar](max) NULL,
	[p_valuationbasis] [nvarchar](max) NULL,
	[p_settlementmethod] [nvarchar](max) NULL,
	[p_taxtype] [nvarchar](max) NULL,
	[p_ismeasuresfee] [nvarchar](max) NULL,
 CONSTRAINT [PK_projects] PRIMARY KEY CLUSTERED 
(
	[p_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [QDPwebData] SET  READ_WRITE 
GO
