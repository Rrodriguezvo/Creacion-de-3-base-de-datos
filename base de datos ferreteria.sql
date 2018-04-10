USE [master]
GO
/****** Nombre:juan esteban Dominguez.  Matricula:16-siin-1-030   seccion:0541 ******/
/****** Nombre:Roberto Rodriguez.  Matricula:17-eiit-1-093   seccion:0541 ******/
/****** Nombre:Luis Mateo.  Matricula:09-eiin-1-055   seccion:0541 ******/
/****** Object:  Database [ferreteria]    Script Date: 8/4/2018 10:17:28 a. m. ******/
CREATE DATABASE [ferreteria]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ferreteria', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ferreteria.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ferreteria_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ferreteria_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ferreteria] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ferreteria].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ferreteria] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ferreteria] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ferreteria] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ferreteria] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ferreteria] SET ARITHABORT OFF 
GO
ALTER DATABASE [ferreteria] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ferreteria] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ferreteria] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ferreteria] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ferreteria] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ferreteria] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ferreteria] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ferreteria] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ferreteria] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ferreteria] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ferreteria] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ferreteria] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ferreteria] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ferreteria] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ferreteria] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ferreteria] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ferreteria] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ferreteria] SET RECOVERY FULL 
GO
ALTER DATABASE [ferreteria] SET  MULTI_USER 
GO
ALTER DATABASE [ferreteria] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ferreteria] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ferreteria] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ferreteria] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ferreteria] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ferreteria', N'ON'
GO
ALTER DATABASE [ferreteria] SET QUERY_STORE = OFF
GO
USE [ferreteria]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [ferreteria]
GO
/****** Object:  Table [dbo].[cajeros]    Script Date: 8/4/2018 10:17:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cajeros](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](255) NULL,
 CONSTRAINT [PK_cajeros] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[maquina_registradora]    Script Date: 8/4/2018 10:17:30 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[maquina_registradora](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[piso] [int] NULL,
 CONSTRAINT [PK_maquina_registradora] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productos]    Script Date: 8/4/2018 10:17:30 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productos](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](100) NULL,
	[precio] [int] NULL,
 CONSTRAINT [PK_productos] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[venta]    Script Date: 8/4/2018 10:17:30 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta](
	[cajero] [int] NULL,
	[maquina] [int] NULL,
	[producto] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cajeros] ON 

INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (1, N'pedro alcantara')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (2, N'marta ochoa')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (3, N'elizabhet cortes')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (4, N'alexandra jhonsson')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (5, N'raymond diaz')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (6, N'cristian perez')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (7, N'paola castillo')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (8, N'esteban hernandez')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (9, N'jose rafael')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (10, N'mariel muños')
SET IDENTITY_INSERT [dbo].[cajeros] OFF
SET IDENTITY_INSERT [dbo].[maquina_registradora] ON 

INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (1, 2)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (2, 4)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (3, 6)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (4, 8)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (5, 10)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (6, 12)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (7, 14)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (8, 16)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (9, 18)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (10, 20)
SET IDENTITY_INSERT [dbo].[maquina_registradora] OFF
SET IDENTITY_INSERT [dbo].[productos] ON 

INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (1, N'pintura', 2000)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (2, N'brocha#2', 100)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (3, N'yeso', 150)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (4, N'cemento', 200)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (5, N'barrilla', 1200)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (6, N'guantes', 175)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (7, N'bombilla', 120)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (8, N'puerta', 2500)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (9, N'perciana', 1200)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (10, N'lavamanos', 1400)
SET IDENTITY_INSERT [dbo].[productos] OFF
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (3, 4, 1)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (9, 10, 4)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (3, 4, 9)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (4, 9, 1)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (7, 9, 5)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (10, 5, 7)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (2, 8, 3)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (2, 9, 5)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (2, 10, 4)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (4, 9, 3)
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_cajeros] FOREIGN KEY([cajero])
REFERENCES [dbo].[cajeros] ([codigo])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_cajeros]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_maquina_registradora] FOREIGN KEY([maquina])
REFERENCES [dbo].[maquina_registradora] ([codigo])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_maquina_registradora]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_productos] FOREIGN KEY([producto])
REFERENCES [dbo].[productos] ([codigo])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_productos]
GO
USE [master]
GO
ALTER DATABASE [ferreteria] SET  READ_WRITE 
GO
