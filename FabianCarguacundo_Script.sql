USE [master]
GO
/****** Object:  Database [FB_Recuperacion]    Script Date: 6/3/2022 9:53:48 ******/
CREATE DATABASE [FB_Recuperacion]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FB_Recuperacion', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\FB_Recuperacion.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FB_Recuperacion_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\FB_Recuperacion_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [FB_Recuperacion] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FB_Recuperacion].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FB_Recuperacion] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FB_Recuperacion] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FB_Recuperacion] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FB_Recuperacion] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FB_Recuperacion] SET ARITHABORT OFF 
GO
ALTER DATABASE [FB_Recuperacion] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FB_Recuperacion] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FB_Recuperacion] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FB_Recuperacion] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FB_Recuperacion] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FB_Recuperacion] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FB_Recuperacion] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FB_Recuperacion] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FB_Recuperacion] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FB_Recuperacion] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FB_Recuperacion] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FB_Recuperacion] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FB_Recuperacion] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FB_Recuperacion] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FB_Recuperacion] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FB_Recuperacion] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FB_Recuperacion] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FB_Recuperacion] SET RECOVERY FULL 
GO
ALTER DATABASE [FB_Recuperacion] SET  MULTI_USER 
GO
ALTER DATABASE [FB_Recuperacion] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FB_Recuperacion] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FB_Recuperacion] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FB_Recuperacion] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FB_Recuperacion] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FB_Recuperacion] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'FB_Recuperacion', N'ON'
GO
ALTER DATABASE [FB_Recuperacion] SET QUERY_STORE = OFF
GO
USE [FB_Recuperacion]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 6/3/2022 9:53:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id_Cliente] [varchar](50) NOT NULL,
	[Nombre_Clien] [varchar](50) NULL,
	[Apellido_Clien] [varchar](50) NULL,
	[Telefono_Cliente] [varchar](50) NULL,
	[Direccion_Cliente] [varchar](50) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[Id_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 6/3/2022 9:53:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[Id_Produc] [int] NOT NULL,
	[Nombre_Produc] [varchar](50) NULL,
	[Precio_Produc] [varchar](50) NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[Id_Produc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suministradores]    Script Date: 6/3/2022 9:53:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suministradores](
	[Id_Sumin] [int] NOT NULL,
	[Nombre_Sumin] [varchar](50) NULL,
	[Apellido_Sumin] [varchar](50) NULL,
	[Ciudad_Sumin] [varchar](50) NULL,
	[Telefono_Sumin] [varchar](50) NULL,
	[Direccion_Sumin] [varchar](50) NULL,
 CONSTRAINT [PK_Suministradores] PRIMARY KEY CLUSTERED 
(
	[Id_Sumin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [FB_Recuperacion] SET  READ_WRITE 
GO
