USE [master]
GO
/****** Object:  Database [dbRealEstate]    Script Date: 22.12.2022 14:23:11 ******/
CREATE DATABASE [dbRealEstate]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbRealEstate', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15\MSSQL\DATA\dbRealEstate.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dbRealEstate_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15\MSSQL\DATA\dbRealEstate_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [dbRealEstate] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbRealEstate].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbRealEstate] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbRealEstate] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbRealEstate] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbRealEstate] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbRealEstate] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbRealEstate] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [dbRealEstate] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbRealEstate] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbRealEstate] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbRealEstate] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbRealEstate] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbRealEstate] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbRealEstate] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbRealEstate] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbRealEstate] SET  ENABLE_BROKER 
GO
ALTER DATABASE [dbRealEstate] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbRealEstate] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbRealEstate] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbRealEstate] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbRealEstate] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbRealEstate] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [dbRealEstate] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbRealEstate] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dbRealEstate] SET  MULTI_USER 
GO
ALTER DATABASE [dbRealEstate] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbRealEstate] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbRealEstate] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbRealEstate] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dbRealEstate] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [dbRealEstate] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [dbRealEstate] SET QUERY_STORE = OFF
GO
USE [dbRealEstate]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 23.12.2022 00:27:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Database Table  Script Date: 22.12.2022 14:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[admin_id] [int] IDENTITY(1,1) NOT NULL,
	[admin_username] [nvarchar](max) NULL,
	[admin_password] [nvarchar](max) NULL,
	[admin_name_surname] [nvarchar](max) NULL,
	[admin_mail] [nvarchar](max) NULL,
	[role] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Admins] PRIMARY KEY CLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Database Table  Script Date: 22.12.2022 14:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adverts](
	[advert_id] [int] IDENTITY(1,1) NOT NULL,
	[number_of_rooms] [nvarchar](max) NULL,
	[residance_age] [nvarchar](max) NULL,
	[square_meters] [nvarchar](max) NULL,
	[category] [nvarchar](max) NULL,
	[price] [nvarchar](max) NULL,
	[agent_id] [int] NULL,
	[advert_name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Adverts] PRIMARY KEY CLUSTERED 
(
	[advert_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Database Table  Script Date: 22.12.2022 14:23:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agents](
	[agent_id] [int] IDENTITY(1,1) NOT NULL,
	[agent_username] [nvarchar](max) NULL,
	[agent_password] [nvarchar](max) NULL,
	[agent_company_name] [nvarchar](max) NULL,
	[agent_company_mail] [nvarchar](max) NULL,
	[agent_company_address] [nvarchar](max) NULL,
	[agent_company_phone] [nvarchar](max) NULL,
	[agent_name_surname] [nvarchar](max) NULL,
	[role] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Agents] PRIMARY KEY CLUSTERED 
(
	[agent_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Database Table  Script Date: 22.12.2022 14:23:11 ******/
CREATE NONCLUSTERED INDEX [IX_agent_id] ON [dbo].[Adverts]
(
	[agent_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Adverts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Adverts_dbo.Agents_Agent_agent_id] FOREIGN KEY([agent_id])
REFERENCES [dbo].[Agents] ([agent_id])
GO
ALTER TABLE [dbo].[Adverts] CHECK CONSTRAINT [FK_dbo.Adverts_dbo.Agents_Agent_agent_id]
GO
USE [master]
GO
ALTER DATABASE [dbRealEstate] SET  READ_WRITE 
GO
