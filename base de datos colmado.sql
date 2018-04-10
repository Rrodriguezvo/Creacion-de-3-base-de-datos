USE [master]
GO
/****** Nombre:juan esteban Dominguez.  Matricula:16-siin-1-030   seccion:0541 ******/
/****** Nombre:Roberto Rodriguez.  Matricula:17-eiit-1-093   seccion:0541 ******/
/****** Nombre:Luis Mateo.  Matricula:09-eiin-1-055   seccion:0541 ******/
/****** Object:  Database [colmado]    Script Date: 8/4/2018 10:44:42 a. m. ******/
CREATE DATABASE [colmado]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'colmado', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\colmado.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'colmado_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\colmado_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [colmado] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [colmado].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [colmado] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [colmado] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [colmado] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [colmado] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [colmado] SET ARITHABORT OFF 
GO
ALTER DATABASE [colmado] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [colmado] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [colmado] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [colmado] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [colmado] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [colmado] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [colmado] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [colmado] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [colmado] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [colmado] SET  ENABLE_BROKER 
GO
ALTER DATABASE [colmado] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [colmado] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [colmado] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [colmado] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [colmado] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [colmado] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [colmado] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [colmado] SET RECOVERY FULL 
GO
ALTER DATABASE [colmado] SET  MULTI_USER 
GO
ALTER DATABASE [colmado] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [colmado] SET DB_CHAINING OFF 
GO
ALTER DATABASE [colmado] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [colmado] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [colmado] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'colmado', N'ON'
GO
ALTER DATABASE [colmado] SET QUERY_STORE = OFF
GO
USE [colmado]
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
USE [colmado]
GO
/****** Object:  Table [dbo].[cajeros]    Script Date: 8/4/2018 10:44:43 a. m. ******/
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
/****** Object:  Table [dbo].[maquina_registradora]    Script Date: 8/4/2018 10:44:43 a. m. ******/
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
/****** Object:  Table [dbo].[productos]    Script Date: 8/4/2018 10:44:43 a. m. ******/
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
/****** Object:  Table [dbo].[venta]    Script Date: 8/4/2018 10:44:43 a. m. ******/
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

INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (1, N'almando alcantara')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (2, N'jhonatan fuentes')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (3, N'joselito mendez')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (4, N'yasmin thomas')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (5, N'wilzon valdez')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (6, N'randy garcia')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (7, N'pamela perez')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (8, N'roberto muños')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (9, N'david hermandez')
INSERT [dbo].[cajeros] ([codigo], [nombre]) VALUES (10, N'crysti pimintel')
SET IDENTITY_INSERT [dbo].[cajeros] OFF
SET IDENTITY_INSERT [dbo].[maquina_registradora] ON 

INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (1, 9)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (2, 8)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (3, 7)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (4, 6)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (5, 5)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (6, 5)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (7, 3)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (8, 2)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (9, 1)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (10, 12)
SET IDENTITY_INSERT [dbo].[maquina_registradora] OFF
SET IDENTITY_INSERT [dbo].[productos] ON 

INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (1, N'refresco', 35)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (2, N'salsa', 10)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (3, N'maiz', 60)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (4, N'arroz', 23)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (5, N'pan', 5)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (6, N'bizcocho', 10)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (7, N'leche', 60)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (8, N'chocolate', 20)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (9, N'azucar', 25)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (10, N'mayonesa', 12)
SET IDENTITY_INSERT [dbo].[productos] OFF
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (6, 2, 10)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (2, 9, 5)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (4, 2, 8)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (9, 3, 10)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (10, 2, 7)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (5, 6, 2)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (2, 9, 3)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (7, 2, 8)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (10, 3, 8)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (6, 4, 1)
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
ALTER DATABASE [colmado] SET  READ_WRITE 
GO
