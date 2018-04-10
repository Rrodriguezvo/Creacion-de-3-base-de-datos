USE [master]
GO
/****** Nombre:juan esteban Dominguez.  Matricula:16-siin-1-030   seccion:0541 ******/
/****** Nombre:Roberto Rodriguez.  Matricula:17-eiit-1-093   seccion:0541 ******/
/****** Nombre:Luis Mateo.  Matricula:09-eiin-1-055   seccion:0541 ******/
/****** Object:  Database [stevemade]    Script Date: 7/4/2018 3:55:37 p. m. ******/
CREATE DATABASE [stevemade]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'stevemade', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\stevemade.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'stevemade_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\stevemade_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [stevemade] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [stevemade].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [stevemade] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [stevemade] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [stevemade] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [stevemade] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [stevemade] SET ARITHABORT OFF 
GO
ALTER DATABASE [stevemade] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [stevemade] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [stevemade] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [stevemade] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [stevemade] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [stevemade] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [stevemade] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [stevemade] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [stevemade] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [stevemade] SET  ENABLE_BROKER 
GO
ALTER DATABASE [stevemade] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [stevemade] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [stevemade] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [stevemade] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [stevemade] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [stevemade] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [stevemade] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [stevemade] SET RECOVERY FULL 
GO
ALTER DATABASE [stevemade] SET  MULTI_USER 
GO
ALTER DATABASE [stevemade] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [stevemade] SET DB_CHAINING OFF 
GO
ALTER DATABASE [stevemade] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [stevemade] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [stevemade] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'stevemade', N'ON'
GO
ALTER DATABASE [stevemade] SET QUERY_STORE = OFF
GO
USE [stevemade]
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
USE [stevemade]
GO
/****** Object:  Table [dbo].[cajeros]    Script Date: 7/4/2018 3:55:38 p. m. ******/
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
/****** Object:  Table [dbo].[maquina_registradora]    Script Date: 7/4/2018 3:55:38 p. m. ******/
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
/****** Object:  Table [dbo].[productos]    Script Date: 7/4/2018 3:55:39 p. m. ******/
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
/****** Object:  Table [dbo].[venta]    Script Date: 7/4/2018 3:55:39 p. m. ******/
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

INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (1, N'gabriel perez')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (2, N'carlos muños')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (3, N'wilians parede')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (4, N'geraldo garcia')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (5, N'manuel thomas')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (6, N'raul dominguez')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (7, N'edualdo abreu')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (8, N'francis quezada')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (9, N'ronier perez')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (10, N'donny hurtado')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (11, N'pablo emilio')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (12, N'jhonatan abreu')
SET IDENTITY_INSERT [dbo].[cajeros] OFF
SET IDENTITY_INSERT [dbo].[maquina_registradora] ON 

INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (1, 1)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (2, 5)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (3, 10)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (4, 15)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (5, 20)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (6, 25)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (7, 30)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (8, 35)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (9, 40)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (10, 45)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (11, 50)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (12, 55)
SET IDENTITY_INSERT [dbo].[maquina_registradora] OFF
SET IDENTITY_INSERT [dbo].[productos] ON 

INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (1, N'media', 100)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (2, N'zapato', 2000)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (3, N'pantalon', 1500)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (4, N'camisa', 1200)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (5, N'correa', 800)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (6, N'blusa', 700)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (7, N'poloche', 750)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (8, N'teni', 1500)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (9, N'vestido', 1000)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (10, N'zapatilla', 1450)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (11, N'relog', 2000)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (12, N'bermuda', 799)
SET IDENTITY_INSERT [dbo].[productos] OFF
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (4, 6, 8)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (8, 2, 5)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (1, 5, 3)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (12, 4, 7)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (5, 11, 3)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (3, 10, 3)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (3, 6, 6)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (2, 6, 8)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (4, 11, 10)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (5, 3, 7)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (6, 4, 12)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (2, 7, 11)
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
ALTER DATABASE [stevemade] SET  READ_WRITE 
GO
