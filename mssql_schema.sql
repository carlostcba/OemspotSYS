USE [oemspotsys]
GO
/****** Object:  User [Oemspot]    Script Date: 30/07/2024 0:13:39 ******/
CREATE USER [Oemspot] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [Oemspot]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [Oemspot]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Oemspot]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Oemspot]
GO
/****** Object:  Schema [m2ss]    Script Date: 30/07/2024 0:13:39 ******/
CREATE SCHEMA [m2ss]
GO
/****** Object:  Table [dbo].[arb]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[arb](
	[ArbolID] [int] NOT NULL,
	[Nombre] [varchar](32) NULL,
	[SystemParameter] [int] NULL,
 CONSTRAINT [PK_arb_ArbolID] PRIMARY KEY CLUSTERED 
(
	[ArbolID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [arb$Nombre] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[arbitm]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[arbitm](
	[ArbolID] [int] NOT NULL,
	[ItemID] [int] NOT NULL,
	[Nombre] [varchar](32) NULL,
	[ParentID] [int] NOT NULL,
	[Orden] [int] NULL,
	[SystemParameter] [int] NULL,
 CONSTRAINT [PK_arbitm_ArbolID] PRIMARY KEY CLUSTERED 
(
	[ArbolID] ASC,
	[ItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [arbitm$ArbolID] UNIQUE NONCLUSTERED 
(
	[ArbolID] ASC,
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aut]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aut](
	[AutoID] [int] NOT NULL,
	[Patente] [varchar](32) NULL,
 CONSTRAINT [PK_aut_AutoID] PRIMARY KEY CLUSTERED 
(
	[AutoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [aut$Patente] UNIQUE NONCLUSTERED 
(
	[Patente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[autcatval]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[autcatval](
	[AutoID] [int] NOT NULL,
	[CategoriaID] [int] NOT NULL,
	[ValorID] [int] NOT NULL,
 CONSTRAINT [PK_autcatval_AutoID] PRIMARY KEY CLUSTERED 
(
	[AutoID] ASC,
	[CategoriaID] ASC,
	[ValorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[autprx]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[autprx](
	[AutoID] [int] NOT NULL,
	[PropiedadID] [int] NOT NULL,
	[Valor] [varchar](max) NULL,
 CONSTRAINT [PK_autprx_AutoID] PRIMARY KEY CLUSTERED 
(
	[AutoID] ASC,
	[PropiedadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cat]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cat](
	[CategoriaID] [int] NOT NULL,
	[Nombre] [varchar](32) NULL,
	[SystemParameter] [int] NULL,
 CONSTRAINT [PK_cat_CategoriaID] PRIMARY KEY CLUSTERED 
(
	[CategoriaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [cat$Nombre] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[catval]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[catval](
	[CategoriaID] [int] NOT NULL,
	[ValorID] [int] NOT NULL,
	[Nombre] [varchar](32) NULL,
	[SystemParameter] [int] NULL,
 CONSTRAINT [PK_catval_CategoriaID] PRIMARY KEY CLUSTERED 
(
	[CategoriaID] ASC,
	[ValorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [catval$CategoriaID] UNIQUE NONCLUSTERED 
(
	[CategoriaID] ASC,
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cfg]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cfg](
	[ConfiguracionID] [int] NOT NULL,
	[Nombre] [varchar](32) NULL,
	[SystemParameter] [int] NULL,
 CONSTRAINT [PK_cfg_ConfiguracionID] PRIMARY KEY CLUSTERED 
(
	[ConfiguracionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [cfg$Nombre] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cfgfrm]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cfgfrm](
	[ConfiguracionID] [bigint] NOT NULL,
	[GrupoModulos] [bigint] NOT NULL,
	[Formulario] [bigint] NOT NULL,
	[f_editable] [char](1) NULL,
	[f_height] [bigint] NOT NULL,
	[f_left] [bigint] NOT NULL,
	[f_top] [bigint] NOT NULL,
	[f_width] [bigint] NOT NULL,
	[SystemParameter] [bigint] NOT NULL,
 CONSTRAINT [PK_cfgfrm_ConfiguracionID] PRIMARY KEY CLUSTERED 
(
	[ConfiguracionID] ASC,
	[GrupoModulos] ASC,
	[Formulario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cfgopt]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cfgopt](
	[ConfiguracionID] [int] NOT NULL,
	[OpcionID] [int] NOT NULL,
	[Nombre] [varchar](32) NULL,
	[Valor] [varchar](max) NULL,
	[SystemParameter] [int] NULL,
 CONSTRAINT [PK_cfgopt_ConfiguracionID] PRIMARY KEY CLUSTERED 
(
	[ConfiguracionID] ASC,
	[OpcionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [cfgopt$ConfiguracionID] UNIQUE NONCLUSTERED 
(
	[ConfiguracionID] ASC,
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clc]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clc](
	[CompraID] [int] NOT NULL,
	[LicenciaID] [int] NOT NULL,
	[SoftwareKey] [varchar](32) NULL,
 CONSTRAINT [PK_clc_CompraID] PRIMARY KEY CLUSTERED 
(
	[CompraID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cobranza]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cobranza](
	[Ticket] [varchar](50) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[valor] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_cobranza_Ticket] PRIMARY KEY CLUSTERED 
(
	[Ticket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comunicacion]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comunicacion](
	[Id_persona] [int] IDENTITY(100000,1) NOT NULL,
	[Apellido] [varchar](64) NULL,
	[Nombre] [varchar](64) NULL,
	[Sexo] [varchar](1) NULL,
	[Documento] [varchar](128) NOT NULL,
	[FechaNacimiento] [datetime] NULL,
	[Fechafin] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cul]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cul](
	[CulturaID] [int] NOT NULL,
	[Nombre] [varchar](32) NULL,
	[SystemParameter] [int] NULL,
	[Descripcion] [varchar](64) NULL,
 CONSTRAINT [PK_cul_CulturaID] PRIMARY KEY CLUSTERED 
(
	[CulturaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [cul$Nombre] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dim]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim](
	[DimensionID] [int] NOT NULL,
	[Nombre] [varchar](32) NULL,
	[Descripcion] [varchar](max) NULL,
	[SystemParameter] [int] NULL,
 CONSTRAINT [PK_dim_DimensionID] PRIMARY KEY CLUSTERED 
(
	[DimensionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [dim$Nombre] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[est]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[est](
	[EstadoID] [int] NOT NULL,
	[Nombre] [varchar](32) NULL,
	[SystemParameter] [int] NULL,
 CONSTRAINT [PK_est_EstadoID] PRIMARY KEY CLUSTERED 
(
	[EstadoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [est$Nombre] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estval]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estval](
	[EstadoID] [int] NOT NULL,
	[ValorID] [int] NOT NULL,
	[Nombre] [varchar](32) NULL,
	[SystemParameter] [int] NULL,
 CONSTRAINT [PK_estval_EstadoID] PRIMARY KEY CLUSTERED 
(
	[EstadoID] ASC,
	[ValorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [estval$EstadoID] UNIQUE NONCLUSTERED 
(
	[EstadoID] ASC,
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[geo]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[geo](
	[GeoID] [bigint] NOT NULL,
	[Nombre] [varchar](32) NOT NULL,
	[IpHost] [varchar](32) NOT NULL,
	[CmdPort] [bigint] NOT NULL,
	[DataPort] [bigint] NOT NULL,
	[User] [varchar](32) NOT NULL,
	[Psw] [varchar](32) NOT NULL,
 CONSTRAINT [PK_geo_GeoID] PRIMARY KEY CLUSTERED 
(
	[GeoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[geogrpmdl]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[geogrpmdl](
	[GrupoModulos] [bigint] NOT NULL,
	[GeoID] [bigint] NOT NULL,
 CONSTRAINT [PK_geogrpmdl_GrupoModulos] PRIMARY KEY CLUSTERED 
(
	[GrupoModulos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gru]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gru](
	[GrupoID] [int] NOT NULL,
	[Nombre] [varchar](32) NULL,
	[Descripcion] [varchar](max) NULL,
 CONSTRAINT [PK_gru_GrupoID] PRIMARY KEY CLUSTERED 
(
	[GrupoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [gru$Nombre] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[grucatval]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grucatval](
	[GrupoID] [int] NOT NULL,
	[CategoriaID] [int] NOT NULL,
	[ValorID] [int] NOT NULL,
 CONSTRAINT [PK_grucatval_GrupoID] PRIMARY KEY CLUSTERED 
(
	[GrupoID] ASC,
	[CategoriaID] ASC,
	[ValorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gruidn]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gruidn](
	[GrupoID] [int] NOT NULL,
	[IdentificacionID] [int] NOT NULL,
 CONSTRAINT [PK_gruidn_GrupoID] PRIMARY KEY CLUSTERED 
(
	[GrupoID] ASC,
	[IdentificacionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[grumdlprf]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grumdlprf](
	[GrupoID] [int] NOT NULL,
	[ModuloID] [int] NOT NULL,
	[PerfilID] [int] NOT NULL,
	[FechaInicio] [datetime] NULL,
	[FechaFin] [datetime] NULL,
 CONSTRAINT [PK_grumdlprf_GrupoID] PRIMARY KEY CLUSTERED 
(
	[GrupoID] ASC,
	[ModuloID] ASC,
	[PerfilID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[idn]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[idn](
	[IdentificacionID] [int] NOT NULL,
	[Numero] [varchar](32) NULL,
 CONSTRAINT [PK_idn_IdentificacionID] PRIMARY KEY CLUSTERED 
(
	[IdentificacionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [idn$IndiceUnico] UNIQUE NONCLUSTERED 
(
	[Numero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[idncatval]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[idncatval](
	[IdentificacionID] [int] NOT NULL,
	[CategoriaID] [int] NOT NULL,
	[ValorID] [int] NOT NULL,
 CONSTRAINT [PK_idncatval_IdentificacionID] PRIMARY KEY CLUSTERED 
(
	[IdentificacionID] ASC,
	[CategoriaID] ASC,
	[ValorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[idnpnc]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[idnpnc](
	[identificacionID] [bigint] NOT NULL,
 CONSTRAINT [PK_idnpnc_identificacionID] PRIMARY KEY CLUSTERED 
(
	[identificacionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ins]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ins](
	[InsID] [int] NOT NULL,
	[Nombre] [varchar](32) NULL,
	[Valor] [varchar](max) NULL,
	[SystemParameter] [int] NULL,
 CONSTRAINT [PK_ins_InsID] PRIMARY KEY CLUSTERED 
(
	[InsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [ins$Nombre] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lge]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lge](
	[LogID] [int] NOT NULL,
	[Nombre] [varchar](32) NULL,
	[SystemParameter] [int] NULL,
 CONSTRAINT [PK_lge_LogID] PRIMARY KEY CLUSTERED 
(
	[LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [lge$Nombre] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lic]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lic](
	[LicenciaID] [int] NOT NULL,
	[Nombre] [varchar](32) NULL,
	[SoftwareKey] [varchar](32) NULL,
	[Descripcion] [varchar](max) NULL,
 CONSTRAINT [PK_lic_LicenciaID] PRIMARY KEY CLUSTERED 
(
	[LicenciaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [lic$Nombre] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[logevt]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[logevt](
	[LogID] [int] NOT NULL,
	[EventoID] [int] NOT NULL,
	[Descripcion] [varchar](max) NULL,
	[SystemParameter] [int] NULL,
 CONSTRAINT [PK_logevt_LogID] PRIMARY KEY CLUSTERED 
(
	[LogID] ASC,
	[EventoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lot]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lot](
	[LoteID] [bigint] NOT NULL,
	[Lote] [varchar](50) NOT NULL,
	[UF] [varchar](50) NOT NULL,
	[Calle] [varchar](50) NOT NULL,
	[Numero] [varchar](200) NULL,
	[Interno] [varchar](50) NOT NULL,
 CONSTRAINT [PK_lot_LoteID] PRIMARY KEY CLUSTERED 
(
	[LoteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lotcatval]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lotcatval](
	[LoteID] [bigint] NOT NULL,
	[CategoriaID] [bigint] NOT NULL,
	[ValorID] [bigint] NOT NULL,
 CONSTRAINT [PK_lotcatval_LoteID] PRIMARY KEY CLUSTERED 
(
	[LoteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lotper]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lotper](
	[LoteID] [bigint] NOT NULL,
	[PersonaID] [bigint] NOT NULL,
	[PerfilID] [bigint] NOT NULL,
	[CategoriaID] [bigint] NOT NULL,
	[ValorID] [bigint] NOT NULL,
	[FechaInicio] [datetime] NULL,
	[FechaFin] [datetime] NULL,
	[CreationDate] [datetime] NULL,
	[CREATEDByID] [int] NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateDateByID] [int] NULL,
 CONSTRAINT [PK_lotper_LoteID] PRIMARY KEY CLUSTERED 
(
	[LoteID] ASC,
	[PersonaID] ASC,
	[PerfilID] ASC,
	[CategoriaID] ASC,
	[ValorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lotpercatval]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lotpercatval](
	[PersonaID] [bigint] NOT NULL,
	[CategoriaID] [bigint] NOT NULL,
	[ValorID] [bigint] NOT NULL,
 CONSTRAINT [PK_lotpercatval_PersonaID] PRIMARY KEY CLUSTERED 
(
	[PersonaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mdl]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mdl](
	[ModuloID] [int] NOT NULL,
	[Nombre] [varchar](32) NULL,
	[Descripcion] [varchar](max) NULL,
	[Address] [int] NULL,
	[ModuloEntradaID] [int] NOT NULL,
	[ModuloSalidaID] [int] NOT NULL,
	[GrupoModulos] [int] NULL,
	[OrdenEncuesta] [int] NULL,
	[duracion_pulso] [bigint] NULL,
	[ValidacionTicket] [smallint] NULL,
 CONSTRAINT [PK_mdl_ModuloID] PRIMARY KEY CLUSTERED 
(
	[ModuloID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [mdl$Nombre] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mdlcam]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mdlcam](
	[ModuloID] [bigint] NOT NULL,
	[Camara] [varchar](2) NOT NULL,
 CONSTRAINT [PK_mdlcam_ModuloID] PRIMARY KEY CLUSTERED 
(
	[ModuloID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mdlcatval]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mdlcatval](
	[ModuloID] [int] NOT NULL,
	[CategoriaID] [int] NOT NULL,
	[ValorID] [int] NOT NULL,
 CONSTRAINT [PK_mdlcatval_ModuloID] PRIMARY KEY CLUSTERED 
(
	[ModuloID] ASC,
	[CategoriaID] ASC,
	[ValorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mdlestval]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mdlestval](
	[ModuloID] [int] NOT NULL,
	[EstadoID] [int] NOT NULL,
	[ValorID] [int] NOT NULL,
 CONSTRAINT [PK_mdlestval_ModuloID] PRIMARY KEY CLUSTERED 
(
	[ModuloID] ASC,
	[EstadoID] ASC,
	[ValorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mvt]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mvt](
	[MovimientoID] [bigint] NOT NULL,
	[ModuloID] [int] NOT NULL,
	[IdentificacionID] [int] NOT NULL,
	[FechaHora] [datetime] NULL,
 CONSTRAINT [PK_mvt_MovimientoID] PRIMARY KEY CLUSTERED 
(
	[MovimientoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mvtcatval]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mvtcatval](
	[MovimientoID] [bigint] NOT NULL,
	[CategoriaID] [int] NOT NULL,
	[ValorID] [int] NOT NULL,
 CONSTRAINT [PK_mvtcatval_MovimientoID] PRIMARY KEY CLUSTERED 
(
	[MovimientoID] ASC,
	[CategoriaID] ASC,
	[ValorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nsl]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nsl](
	[UsuarioID] [int] NOT NULL,
	[LicenciaID] [int] NOT NULL,
 CONSTRAINT [PK_nsl_UsuarioID] PRIMARY KEY CLUSTERED 
(
	[UsuarioID] ASC,
	[LicenciaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nts]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nts](
	[NotaID] [int] NOT NULL,
	[Texto] [varchar](max) NULL,
	[SystemParameter] [int] NULL,
 CONSTRAINT [PK_nts_NotaID] PRIMARY KEY CLUSTERED 
(
	[NotaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pdtidn]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pdtidn](
	[PdtIdnID] [bigint] NOT NULL,
	[ModuloID] [bigint] NOT NULL,
	[Numero] [varchar](32) NOT NULL,
	[Descripcion] [varchar](32) NOT NULL,
	[Perfil] [bigint] NOT NULL,
 CONSTRAINT [PK_pdtidn_PdtIdnID] PRIMARY KEY CLUSTERED 
(
	[PdtIdnID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pdtmdl]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pdtmdl](
	[PdtMdlID] [bigint] NOT NULL,
	[ModuloID] [bigint] NOT NULL,
	[Comando] [varchar](50) NOT NULL,
	[Inmediato] [bigint] NOT NULL,
	[Extra] [varchar](20) NOT NULL,
 CONSTRAINT [PK_pdtmdl_PdtMdlID] PRIMARY KEY CLUSTERED 
(
	[PdtMdlID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[per]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[per](
	[PersonaID] [int] NOT NULL,
	[Apellido] [varchar](64) NULL,
	[Nombre] [varchar](64) NULL,
	[Sexo] [varchar](1) NULL,
	[FechaNacimiento] [datetime] NULL,
	[Pais] [varchar](32) NULL,
	[CreationDate] [datetime] NULL,
	[CREATEdByID] [int] NOT NULL,
	[LastUpdateDate] [datetime] NULL,
	[LastUpdateDateByID] [int] NOT NULL,
	[FechaInicio] [datetime] NOT NULL,
	[FechaFin] [datetime] NOT NULL,
 CONSTRAINT [PK_per_PersonaID] PRIMARY KEY CLUSTERED 
(
	[PersonaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[peraut]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[peraut](
	[PersonaID] [int] NOT NULL,
	[AutoID] [int] NOT NULL,
 CONSTRAINT [PK_peraut_PersonaID] PRIMARY KEY CLUSTERED 
(
	[PersonaID] ASC,
	[AutoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[percatval]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[percatval](
	[PersonaID] [int] NOT NULL,
	[CategoriaID] [int] NOT NULL,
	[ValorID] [int] NOT NULL,
 CONSTRAINT [PK_percatval_PersonaID] PRIMARY KEY CLUSTERED 
(
	[PersonaID] ASC,
	[CategoriaID] ASC,
	[ValorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[perdircatval]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[perdircatval](
	[PersonaID] [int] NOT NULL,
	[DireccionID] [int] NOT NULL,
	[CategoriaID] [int] NOT NULL,
	[ValorID] [int] NOT NULL,
	[Pais] [varchar](32) NULL,
	[Provincia] [varchar](32) NULL,
	[Localidad] [varchar](32) NULL,
	[CodigoPostal] [varchar](32) NULL,
	[Calle] [varchar](32) NULL,
	[Numero] [varchar](32) NULL,
	[Piso] [varchar](32) NULL,
	[Oficina] [varchar](32) NULL,
 CONSTRAINT [PK_perdircatval_PersonaID] PRIMARY KEY CLUSTERED 
(
	[PersonaID] ASC,
	[DireccionID] ASC,
	[CategoriaID] ASC,
	[ValorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[perdoccatval]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[perdoccatval](
	[PersonaID] [int] NOT NULL,
	[DocumentoID] [int] NOT NULL,
	[CategoriaID] [int] NOT NULL,
	[ValorID] [int] NOT NULL,
	[Documento] [varchar](128) NULL,
 CONSTRAINT [PK_perdoccatval_PersonaID] PRIMARY KEY CLUSTERED 
(
	[PersonaID] ASC,
	[DocumentoID] ASC,
	[CategoriaID] ASC,
	[ValorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [perdoccatval$Unico] UNIQUE NONCLUSTERED 
(
	[PersonaID] ASC,
	[CategoriaID] ASC,
	[ValorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [perdoccatval$UnicoDoc] UNIQUE NONCLUSTERED 
(
	[CategoriaID] ASC,
	[ValorID] ASC,
	[Documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[perestval]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[perestval](
	[PersonaID] [int] NOT NULL,
	[EstadoID] [int] NOT NULL,
	[ValorID] [int] NOT NULL,
 CONSTRAINT [PK_perestval_PersonaID] PRIMARY KEY CLUSTERED 
(
	[PersonaID] ASC,
	[EstadoID] ASC,
	[ValorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pergru]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pergru](
	[PersonaID] [int] NOT NULL,
	[GrupoID] [int] NOT NULL,
	[CategoriaID] [int] NOT NULL,
	[ValorID] [int] NOT NULL,
 CONSTRAINT [PK_pergru_PersonaID] PRIMARY KEY CLUSTERED 
(
	[PersonaID] ASC,
	[GrupoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[peridn]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[peridn](
	[PersonaID] [int] NOT NULL,
	[IdentificacionID] [int] NOT NULL,
 CONSTRAINT [PK_peridn_PersonaID] PRIMARY KEY CLUSTERED 
(
	[PersonaID] ASC,
	[IdentificacionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[permaicatval]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permaicatval](
	[PersonaID] [int] NOT NULL,
	[EmailID] [int] NOT NULL,
	[CategoriaID] [int] NOT NULL,
	[ValorID] [int] NOT NULL,
	[Email] [varchar](128) NULL,
 CONSTRAINT [PK_permaicatval_PersonaID] PRIMARY KEY CLUSTERED 
(
	[PersonaID] ASC,
	[EmailID] ASC,
	[CategoriaID] ASC,
	[ValorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[perpolreg]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[perpolreg](
	[PersonaID] [int] NOT NULL,
	[FechaInicioRC] [datetime] NOT NULL,
	[FechaFinRC] [datetime] NOT NULL,
	[NroRC] [varchar](50) NOT NULL,
	[ExpedidoRC] [varchar](50) NOT NULL,
	[FechaInicioPS] [datetime] NOT NULL,
	[FechaFinPS] [datetime] NOT NULL,
	[NroPS] [varchar](50) NOT NULL,
	[EmpresaPS] [varchar](50) NOT NULL,
	[FechaInicioPA] [datetime] NOT NULL,
	[FechaFinPA] [datetime] NOT NULL,
	[NroPA] [varchar](50) NOT NULL,
	[EmpresaPA] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[perprx]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[perprx](
	[PersonaID] [int] NOT NULL,
	[PropiedadID] [int] NOT NULL,
	[Valor] [varchar](max) NULL,
 CONSTRAINT [PK_perprx_PersonaID] PRIMARY KEY CLUSTERED 
(
	[PersonaID] ASC,
	[PropiedadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pertelcatval]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pertelcatval](
	[PersonaID] [int] NOT NULL,
	[TelefonoID] [int] NOT NULL,
	[CategoriaID] [int] NOT NULL,
	[ValorID] [int] NOT NULL,
	[Telefono] [varchar](128) NULL,
 CONSTRAINT [PK_pertelcatval_PersonaID] PRIMARY KEY CLUSTERED 
(
	[PersonaID] ASC,
	[TelefonoID] ASC,
	[CategoriaID] ASC,
	[ValorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prc]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prc](
	[ProcesoID] [int] NOT NULL,
	[Nombre] [varchar](32) NULL,
	[SystemParameter] [int] NULL,
 CONSTRAINT [PK_prc_ProcesoID] PRIMARY KEY CLUSTERED 
(
	[ProcesoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [prc$Nombre] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pre]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pre](
	[PreautorizadoID] [bigint] NOT NULL,
	[LoteID] [bigint] NOT NULL,
	[Entidad] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[Motivo] [varchar](max) NULL,
	[FechaInicio] [datetime] NULL,
	[FechaFin] [datetime] NULL,
 CONSTRAINT [PK_pre_PreautorizadoID] PRIMARY KEY CLUSTERED 
(
	[PreautorizadoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prf]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prf](
	[PerfilID] [int] NOT NULL,
	[Nombre] [varchar](32) NULL,
	[Descripcion] [varchar](max) NULL,
 CONSTRAINT [PK_prf_PerfilID] PRIMARY KEY CLUSTERED 
(
	[PerfilID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [prf$Nombre] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prfval]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prfval](
	[PerfilID] [int] NOT NULL,
	[ValorID] [int] NOT NULL,
	[Dia] [int] NOT NULL,
	[HoraInicio] [int] NOT NULL,
	[HoraFin] [int] NOT NULL,
	[Permanencia] [bigint] NOT NULL,
 CONSTRAINT [PK_prfval_PerfilID] PRIMARY KEY CLUSTERED 
(
	[PerfilID] ASC,
	[ValorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [prfval$PerfilID] UNIQUE NONCLUSTERED 
(
	[PerfilID] ASC,
	[Dia] ASC,
	[HoraInicio] ASC,
	[HoraFin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prx]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prx](
	[PropiedadID] [int] NOT NULL,
	[Nombre] [varchar](32) NULL,
	[Descripcion] [varchar](max) NULL,
 CONSTRAINT [PK_prx_PropiedadID] PRIMARY KEY CLUSTERED 
(
	[PropiedadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [prx$Nombre] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[red]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[red](
	[RedID] [int] NOT NULL,
	[Nombre] [varchar](32) NULL,
	[SystemParameter] [int] NULL,
 CONSTRAINT [PK_red_RedID] PRIMARY KEY CLUSTERED 
(
	[RedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [red$Nombre] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rednod]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rednod](
	[RedID] [int] NOT NULL,
	[NodoID] [int] NOT NULL,
	[Nombre] [varchar](32) NULL,
	[SystemParameter] [int] NULL,
 CONSTRAINT [PK_rednod_RedID] PRIMARY KEY CLUSTERED 
(
	[RedID] ASC,
	[NodoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [rednod$Nombre] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [rednod$RedID] UNIQUE NONCLUSTERED 
(
	[RedID] ASC,
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rednodlnk]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rednodlnk](
	[RedID] [int] NOT NULL,
	[NodoID] [int] NOT NULL,
	[LinkID] [int] NOT NULL,
	[Nombre] [varchar](32) NULL,
	[SystemParameter] [int] NULL,
 CONSTRAINT [PK_rednodlnk_RedID] PRIMARY KEY CLUSTERED 
(
	[RedID] ASC,
	[NodoID] ASC,
	[LinkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [rednodlnk$RedID] UNIQUE NONCLUSTERED 
(
	[RedID] ASC,
	[NodoID] ASC,
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SqlDeveloperLog]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SqlDeveloperLog](
	[LogAction] [varchar](50) NULL,
	[LogUser] [varchar](50) NULL,
	[LogDate] [datetime] NULL,
	[LogComment] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SqlDeveloperServers]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SqlDeveloperServers](
	[ServerName] [varchar](50) NULL,
	[ServerUser] [varchar](50) NULL,
	[ServerPassword] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tck]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tck](
	[TicketID] [bigint] NOT NULL,
	[Numero] [bigint] NOT NULL,
	[FechaHoraIngreso] [datetime] NOT NULL,
	[ModuloIngresoID] [bigint] NOT NULL,
	[Validado] [smallint] NULL,
 CONSTRAINT [PK_tck_TicketID] PRIMARY KEY CLUSTERED 
(
	[TicketID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tckhst]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tckhst](
	[TicketID] [bigint] NOT NULL,
	[Numero] [bigint] NOT NULL,
	[FechaHoraIngreso] [datetime] NOT NULL,
	[ModuloIngresoID] [bigint] NOT NULL,
	[FechaHoraSalida] [datetime] NOT NULL,
	[ModuloSalidaID] [bigint] NOT NULL,
 CONSTRAINT [PK_tckhst_TicketID] PRIMARY KEY CLUSTERED 
(
	[TicketID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tckper]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tckper](
	[TicketID] [bigint] NOT NULL,
	[PersonaID] [bigint] NOT NULL,
 CONSTRAINT [PK_tckper_TicketID] PRIMARY KEY CLUSTERED 
(
	[TicketID] ASC,
	[PersonaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tckprx]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tckprx](
	[TicketID] [bigint] NOT NULL,
	[PropiedadID] [int] NOT NULL,
	[Valor] [varchar](max) NULL,
 CONSTRAINT [PK_tckprx_TicketID] PRIMARY KEY CLUSTERED 
(
	[TicketID] ASC,
	[PropiedadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tkn]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tkn](
	[TokenID] [int] NOT NULL,
	[Nombre] [varchar](512) NULL,
 CONSTRAINT [PK_tkn_TokenID] PRIMARY KEY CLUSTERED 
(
	[TokenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tkncul]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tkncul](
	[TokenID] [int] NOT NULL,
	[CulturaID] [int] NOT NULL,
	[Texto] [varchar](max) NULL,
 CONSTRAINT [PK_tkncul_TokenID] PRIMARY KEY CLUSTERED 
(
	[TokenID] ASC,
	[CulturaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[upd]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[upd](
	[UpdateID] [int] NOT NULL,
	[Nombre] [varchar](32) NULL,
	[SystemParameter] [int] NULL,
 CONSTRAINT [PK_upd_UpdateID] PRIMARY KEY CLUSTERED 
(
	[UpdateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [upd$Nombre] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usr]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usr](
	[UsuarioID] [int] NOT NULL,
	[Nombre] [varchar](32) NULL,
	[Password] [varchar](32) NULL,
	[SystemParameter] [int] NULL,
 CONSTRAINT [PK_usr_UsuarioID] PRIMARY KEY CLUSTERED 
(
	[UsuarioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [usr$Nombre] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usrcatval]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usrcatval](
	[UsuarioID] [int] NOT NULL,
	[CategoriaID] [int] NOT NULL,
	[ValorID] [int] NOT NULL,
 CONSTRAINT [PK_usrcatval_UsuarioID] PRIMARY KEY CLUSTERED 
(
	[UsuarioID] ASC,
	[CategoriaID] ASC,
	[ValorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usrestval]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usrestval](
	[UsuarioID] [int] NOT NULL,
	[EstadoID] [int] NOT NULL,
	[ValorID] [int] NOT NULL,
 CONSTRAINT [PK_usrestval_UsuarioID] PRIMARY KEY CLUSTERED 
(
	[UsuarioID] ASC,
	[EstadoID] ASC,
	[ValorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usrlogin]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usrlogin](
	[usuarioID] [bigint] NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_usrlogin_usuarioID] PRIMARY KEY CLUSTERED 
(
	[usuarioID] ASC,
	[Fecha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[valida_config]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[valida_config](
	[id] [bigint] IDENTITY(2,1) NOT NULL,
	[tiempo_max] [bigint] NOT NULL,
	[valor] [decimal](10, 2) NOT NULL,
	[tiempo_estadia] [bigint] NULL,
	[valor_estadia] [decimal](10, 2) NULL,
 CONSTRAINT [PK_valida_config_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wks]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wks](
	[WorkstationID] [int] NOT NULL,
	[Nombre] [varchar](32) NULL,
	[SystemParameter] [int] NULL,
 CONSTRAINT [PK_wks_WorkstationID] PRIMARY KEY CLUSTERED 
(
	[WorkstationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [wks$Nombre] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wksmdl]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wksmdl](
	[WorkstationID] [int] NOT NULL,
	[ModuloID] [int] NOT NULL,
 CONSTRAINT [PK_wksmdl_WorkstationID] PRIMARY KEY CLUSTERED 
(
	[WorkstationID] ASC,
	[ModuloID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wksopt]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wksopt](
	[WorkstationID] [int] NOT NULL,
	[OpcionID] [int] NOT NULL,
	[Nombre] [varchar](32) NULL,
	[Valor] [varchar](max) NULL,
	[SystemParameter] [int] NULL,
 CONSTRAINT [PK_wksopt_WorkstationID] PRIMARY KEY CLUSTERED 
(
	[WorkstationID] ASC,
	[OpcionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [wksopt$WorkstationID] UNIQUE NONCLUSTERED 
(
	[WorkstationID] ASC,
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[arb] ADD  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[arb] ADD  DEFAULT (NULL) FOR [SystemParameter]
GO
ALTER TABLE [dbo].[arbitm] ADD  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[arbitm] ADD  DEFAULT (NULL) FOR [Orden]
GO
ALTER TABLE [dbo].[arbitm] ADD  DEFAULT (NULL) FOR [SystemParameter]
GO
ALTER TABLE [dbo].[aut] ADD  DEFAULT (NULL) FOR [Patente]
GO
ALTER TABLE [dbo].[autprx] ADD  DEFAULT (NULL) FOR [Valor]
GO
ALTER TABLE [dbo].[cat] ADD  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[cat] ADD  DEFAULT (NULL) FOR [SystemParameter]
GO
ALTER TABLE [dbo].[catval] ADD  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[catval] ADD  DEFAULT (NULL) FOR [SystemParameter]
GO
ALTER TABLE [dbo].[cfg] ADD  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[cfg] ADD  DEFAULT (NULL) FOR [SystemParameter]
GO
ALTER TABLE [dbo].[cfgfrm] ADD  DEFAULT ((0)) FOR [ConfiguracionID]
GO
ALTER TABLE [dbo].[cfgfrm] ADD  DEFAULT ((0)) FOR [GrupoModulos]
GO
ALTER TABLE [dbo].[cfgfrm] ADD  DEFAULT ((0)) FOR [Formulario]
GO
ALTER TABLE [dbo].[cfgfrm] ADD  DEFAULT (N'S') FOR [f_editable]
GO
ALTER TABLE [dbo].[cfgfrm] ADD  DEFAULT ((0)) FOR [f_height]
GO
ALTER TABLE [dbo].[cfgfrm] ADD  DEFAULT ((0)) FOR [f_left]
GO
ALTER TABLE [dbo].[cfgfrm] ADD  DEFAULT ((0)) FOR [f_top]
GO
ALTER TABLE [dbo].[cfgfrm] ADD  DEFAULT ((0)) FOR [f_width]
GO
ALTER TABLE [dbo].[cfgfrm] ADD  DEFAULT ((1)) FOR [SystemParameter]
GO
ALTER TABLE [dbo].[cfgopt] ADD  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[cfgopt] ADD  DEFAULT (NULL) FOR [Valor]
GO
ALTER TABLE [dbo].[cfgopt] ADD  DEFAULT (NULL) FOR [SystemParameter]
GO
ALTER TABLE [dbo].[clc] ADD  DEFAULT (NULL) FOR [SoftwareKey]
GO
ALTER TABLE [dbo].[cobranza] ADD  DEFAULT (getdate()) FOR [fecha]
GO
ALTER TABLE [dbo].[cul] ADD  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[cul] ADD  DEFAULT (NULL) FOR [SystemParameter]
GO
ALTER TABLE [dbo].[cul] ADD  DEFAULT (NULL) FOR [Descripcion]
GO
ALTER TABLE [dbo].[dim] ADD  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[dim] ADD  DEFAULT (NULL) FOR [Descripcion]
GO
ALTER TABLE [dbo].[dim] ADD  DEFAULT (NULL) FOR [SystemParameter]
GO
ALTER TABLE [dbo].[est] ADD  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[est] ADD  DEFAULT (NULL) FOR [SystemParameter]
GO
ALTER TABLE [dbo].[estval] ADD  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[estval] ADD  DEFAULT (NULL) FOR [SystemParameter]
GO
ALTER TABLE [dbo].[geo] ADD  DEFAULT ((0)) FOR [GeoID]
GO
ALTER TABLE [dbo].[geo] ADD  DEFAULT (N'') FOR [Nombre]
GO
ALTER TABLE [dbo].[geo] ADD  DEFAULT (N'127.0.0.1') FOR [IpHost]
GO
ALTER TABLE [dbo].[geo] ADD  DEFAULT ((4550)) FOR [CmdPort]
GO
ALTER TABLE [dbo].[geo] ADD  DEFAULT ((5550)) FOR [DataPort]
GO
ALTER TABLE [dbo].[geo] ADD  DEFAULT (N'Admin') FOR [User]
GO
ALTER TABLE [dbo].[geo] ADD  DEFAULT (N'') FOR [Psw]
GO
ALTER TABLE [dbo].[geogrpmdl] ADD  DEFAULT ((0)) FOR [GrupoModulos]
GO
ALTER TABLE [dbo].[geogrpmdl] ADD  DEFAULT ((0)) FOR [GeoID]
GO
ALTER TABLE [dbo].[gru] ADD  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[gru] ADD  DEFAULT (NULL) FOR [Descripcion]
GO
ALTER TABLE [dbo].[grumdlprf] ADD  DEFAULT (NULL) FOR [FechaInicio]
GO
ALTER TABLE [dbo].[grumdlprf] ADD  DEFAULT (NULL) FOR [FechaFin]
GO
ALTER TABLE [dbo].[idn] ADD  DEFAULT (NULL) FOR [Numero]
GO
ALTER TABLE [dbo].[idnpnc] ADD  DEFAULT ((0)) FOR [identificacionID]
GO
ALTER TABLE [dbo].[ins] ADD  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[ins] ADD  DEFAULT (NULL) FOR [Valor]
GO
ALTER TABLE [dbo].[ins] ADD  DEFAULT (NULL) FOR [SystemParameter]
GO
ALTER TABLE [dbo].[lge] ADD  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[lge] ADD  DEFAULT (NULL) FOR [SystemParameter]
GO
ALTER TABLE [dbo].[lic] ADD  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[lic] ADD  DEFAULT (NULL) FOR [SoftwareKey]
GO
ALTER TABLE [dbo].[lic] ADD  DEFAULT (NULL) FOR [Descripcion]
GO
ALTER TABLE [dbo].[logevt] ADD  DEFAULT (NULL) FOR [Descripcion]
GO
ALTER TABLE [dbo].[logevt] ADD  DEFAULT (NULL) FOR [SystemParameter]
GO
ALTER TABLE [dbo].[lot] ADD  DEFAULT ((0)) FOR [LoteID]
GO
ALTER TABLE [dbo].[lot] ADD  DEFAULT (N'0') FOR [Lote]
GO
ALTER TABLE [dbo].[lot] ADD  DEFAULT (N'0') FOR [UF]
GO
ALTER TABLE [dbo].[lot] ADD  DEFAULT (N'0') FOR [Calle]
GO
ALTER TABLE [dbo].[lot] ADD  DEFAULT (NULL) FOR [Numero]
GO
ALTER TABLE [dbo].[lot] ADD  DEFAULT (N'0') FOR [Interno]
GO
ALTER TABLE [dbo].[lotcatval] ADD  DEFAULT ((0)) FOR [LoteID]
GO
ALTER TABLE [dbo].[lotcatval] ADD  DEFAULT ((0)) FOR [CategoriaID]
GO
ALTER TABLE [dbo].[lotcatval] ADD  DEFAULT ((0)) FOR [ValorID]
GO
ALTER TABLE [dbo].[lotper] ADD  DEFAULT ((0)) FOR [LoteID]
GO
ALTER TABLE [dbo].[lotper] ADD  DEFAULT ((0)) FOR [PersonaID]
GO
ALTER TABLE [dbo].[lotper] ADD  DEFAULT ((0)) FOR [PerfilID]
GO
ALTER TABLE [dbo].[lotper] ADD  DEFAULT ((0)) FOR [CategoriaID]
GO
ALTER TABLE [dbo].[lotper] ADD  DEFAULT ((0)) FOR [ValorID]
GO
ALTER TABLE [dbo].[lotper] ADD  DEFAULT (NULL) FOR [FechaInicio]
GO
ALTER TABLE [dbo].[lotper] ADD  DEFAULT (NULL) FOR [FechaFin]
GO
ALTER TABLE [dbo].[lotper] ADD  DEFAULT (NULL) FOR [CreationDate]
GO
ALTER TABLE [dbo].[lotper] ADD  DEFAULT (NULL) FOR [CREATEDByID]
GO
ALTER TABLE [dbo].[lotper] ADD  DEFAULT (NULL) FOR [LastUpdateDate]
GO
ALTER TABLE [dbo].[lotper] ADD  DEFAULT (NULL) FOR [LastUpdateDateByID]
GO
ALTER TABLE [dbo].[lotpercatval] ADD  DEFAULT ((0)) FOR [PersonaID]
GO
ALTER TABLE [dbo].[lotpercatval] ADD  DEFAULT ((0)) FOR [CategoriaID]
GO
ALTER TABLE [dbo].[lotpercatval] ADD  DEFAULT ((0)) FOR [ValorID]
GO
ALTER TABLE [dbo].[mdl] ADD  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[mdl] ADD  DEFAULT (NULL) FOR [Descripcion]
GO
ALTER TABLE [dbo].[mdl] ADD  DEFAULT (NULL) FOR [Address]
GO
ALTER TABLE [dbo].[mdl] ADD  DEFAULT (NULL) FOR [GrupoModulos]
GO
ALTER TABLE [dbo].[mdl] ADD  DEFAULT (NULL) FOR [OrdenEncuesta]
GO
ALTER TABLE [dbo].[mdl] ADD  DEFAULT (NULL) FOR [duracion_pulso]
GO
ALTER TABLE [dbo].[mdl] ADD  DEFAULT ((0)) FOR [ValidacionTicket]
GO
ALTER TABLE [dbo].[mdlcam] ADD  DEFAULT ((0)) FOR [ModuloID]
GO
ALTER TABLE [dbo].[mdlcam] ADD  DEFAULT (N'N') FOR [Camara]
GO
ALTER TABLE [dbo].[mvt] ADD  DEFAULT ((0)) FOR [MovimientoID]
GO
ALTER TABLE [dbo].[mvt] ADD  DEFAULT (NULL) FOR [FechaHora]
GO
ALTER TABLE [dbo].[mvtcatval] ADD  DEFAULT ((0)) FOR [MovimientoID]
GO
ALTER TABLE [dbo].[nts] ADD  DEFAULT (NULL) FOR [Texto]
GO
ALTER TABLE [dbo].[nts] ADD  DEFAULT (NULL) FOR [SystemParameter]
GO
ALTER TABLE [dbo].[pdtidn] ADD  DEFAULT ((0)) FOR [PdtIdnID]
GO
ALTER TABLE [dbo].[pdtidn] ADD  DEFAULT ((0)) FOR [ModuloID]
GO
ALTER TABLE [dbo].[pdtidn] ADD  DEFAULT (N'') FOR [Numero]
GO
ALTER TABLE [dbo].[pdtidn] ADD  DEFAULT (N'') FOR [Descripcion]
GO
ALTER TABLE [dbo].[pdtidn] ADD  DEFAULT ((0)) FOR [Perfil]
GO
ALTER TABLE [dbo].[pdtmdl] ADD  DEFAULT ((0)) FOR [PdtMdlID]
GO
ALTER TABLE [dbo].[pdtmdl] ADD  DEFAULT ((0)) FOR [ModuloID]
GO
ALTER TABLE [dbo].[pdtmdl] ADD  DEFAULT (N'') FOR [Comando]
GO
ALTER TABLE [dbo].[pdtmdl] ADD  DEFAULT ((0)) FOR [Inmediato]
GO
ALTER TABLE [dbo].[pdtmdl] ADD  DEFAULT (N'vacio') FOR [Extra]
GO
ALTER TABLE [dbo].[per] ADD  DEFAULT (NULL) FOR [Apellido]
GO
ALTER TABLE [dbo].[per] ADD  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[per] ADD  DEFAULT (NULL) FOR [Sexo]
GO
ALTER TABLE [dbo].[per] ADD  DEFAULT (NULL) FOR [FechaNacimiento]
GO
ALTER TABLE [dbo].[per] ADD  DEFAULT (NULL) FOR [Pais]
GO
ALTER TABLE [dbo].[per] ADD  DEFAULT (NULL) FOR [CreationDate]
GO
ALTER TABLE [dbo].[per] ADD  DEFAULT (NULL) FOR [LastUpdateDate]
GO
ALTER TABLE [dbo].[perdircatval] ADD  DEFAULT (NULL) FOR [Pais]
GO
ALTER TABLE [dbo].[perdircatval] ADD  DEFAULT (NULL) FOR [Provincia]
GO
ALTER TABLE [dbo].[perdircatval] ADD  DEFAULT (NULL) FOR [Localidad]
GO
ALTER TABLE [dbo].[perdircatval] ADD  DEFAULT (NULL) FOR [CodigoPostal]
GO
ALTER TABLE [dbo].[perdircatval] ADD  DEFAULT (NULL) FOR [Calle]
GO
ALTER TABLE [dbo].[perdircatval] ADD  DEFAULT (NULL) FOR [Numero]
GO
ALTER TABLE [dbo].[perdircatval] ADD  DEFAULT (NULL) FOR [Piso]
GO
ALTER TABLE [dbo].[perdircatval] ADD  DEFAULT (NULL) FOR [Oficina]
GO
ALTER TABLE [dbo].[perdoccatval] ADD  DEFAULT (NULL) FOR [Documento]
GO
ALTER TABLE [dbo].[permaicatval] ADD  DEFAULT (NULL) FOR [Email]
GO
ALTER TABLE [dbo].[perprx] ADD  DEFAULT (NULL) FOR [Valor]
GO
ALTER TABLE [dbo].[pertelcatval] ADD  DEFAULT (NULL) FOR [Telefono]
GO
ALTER TABLE [dbo].[prc] ADD  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[prc] ADD  DEFAULT (NULL) FOR [SystemParameter]
GO
ALTER TABLE [dbo].[pre] ADD  DEFAULT ((0)) FOR [PreautorizadoID]
GO
ALTER TABLE [dbo].[pre] ADD  DEFAULT ((0)) FOR [LoteID]
GO
ALTER TABLE [dbo].[pre] ADD  DEFAULT (NULL) FOR [Entidad]
GO
ALTER TABLE [dbo].[pre] ADD  DEFAULT (NULL) FOR [Apellido]
GO
ALTER TABLE [dbo].[pre] ADD  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[pre] ADD  DEFAULT (NULL) FOR [Motivo]
GO
ALTER TABLE [dbo].[pre] ADD  DEFAULT (NULL) FOR [FechaInicio]
GO
ALTER TABLE [dbo].[pre] ADD  DEFAULT (NULL) FOR [FechaFin]
GO
ALTER TABLE [dbo].[prf] ADD  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[prf] ADD  DEFAULT (NULL) FOR [Descripcion]
GO
ALTER TABLE [dbo].[prfval] ADD  DEFAULT ((0)) FOR [Permanencia]
GO
ALTER TABLE [dbo].[prx] ADD  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[prx] ADD  DEFAULT (NULL) FOR [Descripcion]
GO
ALTER TABLE [dbo].[red] ADD  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[red] ADD  DEFAULT (NULL) FOR [SystemParameter]
GO
ALTER TABLE [dbo].[rednod] ADD  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[rednod] ADD  DEFAULT (NULL) FOR [SystemParameter]
GO
ALTER TABLE [dbo].[rednodlnk] ADD  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[rednodlnk] ADD  DEFAULT (NULL) FOR [SystemParameter]
GO
ALTER TABLE [dbo].[tck] ADD  DEFAULT ((0)) FOR [TicketID]
GO
ALTER TABLE [dbo].[tck] ADD  DEFAULT ((0)) FOR [Numero]
GO
ALTER TABLE [dbo].[tck] ADD  DEFAULT ('1899-12-31 00:00:00') FOR [FechaHoraIngreso]
GO
ALTER TABLE [dbo].[tck] ADD  DEFAULT ((0)) FOR [ModuloIngresoID]
GO
ALTER TABLE [dbo].[tck] ADD  DEFAULT ((0)) FOR [Validado]
GO
ALTER TABLE [dbo].[tckhst] ADD  DEFAULT ((0)) FOR [TicketID]
GO
ALTER TABLE [dbo].[tckhst] ADD  DEFAULT ((0)) FOR [Numero]
GO
ALTER TABLE [dbo].[tckhst] ADD  DEFAULT ('1899-12-31 00:00:00') FOR [FechaHoraIngreso]
GO
ALTER TABLE [dbo].[tckhst] ADD  DEFAULT ((0)) FOR [ModuloIngresoID]
GO
ALTER TABLE [dbo].[tckhst] ADD  DEFAULT ('1899-12-31 00:00:00') FOR [FechaHoraSalida]
GO
ALTER TABLE [dbo].[tckhst] ADD  DEFAULT ((0)) FOR [ModuloSalidaID]
GO
ALTER TABLE [dbo].[tckper] ADD  DEFAULT ((0)) FOR [TicketID]
GO
ALTER TABLE [dbo].[tckper] ADD  DEFAULT ((0)) FOR [PersonaID]
GO
ALTER TABLE [dbo].[tckprx] ADD  DEFAULT ((0)) FOR [TicketID]
GO
ALTER TABLE [dbo].[tckprx] ADD  DEFAULT (NULL) FOR [Valor]
GO
ALTER TABLE [dbo].[tkn] ADD  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[tkncul] ADD  DEFAULT (NULL) FOR [Texto]
GO
ALTER TABLE [dbo].[upd] ADD  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[upd] ADD  DEFAULT (NULL) FOR [SystemParameter]
GO
ALTER TABLE [dbo].[usr] ADD  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[usr] ADD  DEFAULT (NULL) FOR [Password]
GO
ALTER TABLE [dbo].[usr] ADD  DEFAULT (NULL) FOR [SystemParameter]
GO
ALTER TABLE [dbo].[usrlogin] ADD  DEFAULT ((0)) FOR [usuarioID]
GO
ALTER TABLE [dbo].[valida_config] ADD  DEFAULT (NULL) FOR [tiempo_estadia]
GO
ALTER TABLE [dbo].[valida_config] ADD  DEFAULT (NULL) FOR [valor_estadia]
GO
ALTER TABLE [dbo].[wks] ADD  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[wks] ADD  DEFAULT (NULL) FOR [SystemParameter]
GO
ALTER TABLE [dbo].[wksopt] ADD  DEFAULT (NULL) FOR [Nombre]
GO
ALTER TABLE [dbo].[wksopt] ADD  DEFAULT (NULL) FOR [Valor]
GO
ALTER TABLE [dbo].[wksopt] ADD  DEFAULT (NULL) FOR [SystemParameter]
GO
/****** Object:  StoredProcedure [dbo].[lstmod]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[lstmod]
		@RESULTADO INT=0, 
		@PFECHADESDE DATETIME = NULL,
		@PFECHAHASTA DATETIME=NULL,
		@PMODULO VARCHAR(150)=NULL,
		@PGRUPO  VARCHAR(150)=NULL,
		@PTIPOMOV VARCHAR(150)=NULL
AS

BEGIN
   SET NOCOUNT ON;
-- DECLARAR LOS CAMPOS QUE VAMOS A UTILIZAR  EN NUESTRA CONSULTA
   DECLARE @Identificacion VARCHAR (32)
   DECLARE @Fecha          DATETIME
   DECLARE @Persona        VARCHAR(80)
   DECLARE @Grupo          VARCHAR (32)
   DECLARE @Modulo         VARCHAR (32)
   DECLARE @Tipomovimiento VARCHAR (45)
   DECLARE @Sentido        VARCHAR (32)
   DECLARE @Rows           BIGINT
   DECLARE @Per1           VARCHAR (60)
   DECLARE @Per2           VARCHAR (60)
   DECLARE @LSTMOV         TABLE (Identificacion VARCHAR(32),Fecha DATETIME,Persona VARCHAR(80),Grupo VARCHAR(32),Modulo VARCHAR(32),TipoMovimiento VARCHAR(45),Sentido VARCHAR(32))
   
   -- DECLARAR CURSOR
     DECLARE CUR  CURSOR FOR
	 SELECT T.Identificacion,T.fecha,T.persona,T.grupo,T.modulo,T.tipomovimiento,t.SENTIDO,T.rows  FROM (
     SELECT DISTINCT
				   mvt.MovimientoID,
				   mvt.ModuloID,
				   gru.GrupoID,
				   idn.IdentificacionID,
				   mvt.FechaHora as fecha,
				   idn.Numero as identificacion,		   
				   per.Apellido + ', '+ per.Nombre as persona, 
				   gru.Nombre as grupo,
				   mdl.Nombre as modulo,		  
				   a.nombre as tipomovimiento,
				   b.nombre as sentido,
				   ROW_NUMBER() OVER (ORDER BY per.apellido,mdl.moduloID) as rows,
				   ROW_NUMBER() OVER(PARTITION BY mvt.movimientoID  ORDER BY per.apellido,mdl.ModuloID)  as clave
	 FROM mvt
				   INNER JOIN mdl on  mvt.ModuloID=mdl.ModuloID
				   INNER JOIN idn on mvt.IdentificacionID=idn.IdentificacionID
				   INNER JOIN peridn on idn.IdentificacionID=peridn.IdentificacionID
				   INNER JOIN MvtCatVal bm ON (Mvt.MovimientoID =   bm.MovimientoID AND bm.categoriaid ='4')		
				   INNER JOIN CatVal b ON(bm.ValorID=b.ValorID AND  bm.categoriaID=b.categoriaID ) 		                		
				   INNER JOIN MvtCatVal am ON (Mvt.MovimientoID =   am.MovimientoID AND am.categoriaid ='23')		
				   INNER JOIN CatVal a ON(am.ValorID=a.ValorID AND  am.categoriaID=a.categoriaID)  						        
				   INNER JOIN per on peridn.PersonaID=per.PersonaID				
				   INNER JOIN pergru on peridn.PersonaID=pergru.PersonaID  
				   INNER JOIN gru on pergru.GrupoID=gru.GrupoID
     WHERE 
		   -- FILTRO PARA LA CONSULTA DE MOVIMIENTOS PRESENTES --	  
           mvt.FechaHora BETWEEN @PFECHADESDE   and @PFECHAHASTA     -- por fecha
           AND a.nombre   LIKE   ISNULL(@PTIPOMOV,'%%')
           /*AND gru.Nombre  LIKE   ISNULL(@PGRUPO, '%%')
           AND mdl.Nombre  LIKE   ISNULL(@PMODULO,'%%')*/ ) T WHERE T.clave=1 ORDER BY T.persona

-- ABRIR CURSOR
OPEN CUR
FETCH NEXT FROM CUR INTO @Identificacion,@Fecha,@Persona,@Grupo,@Modulo,@Tipomovimiento,@Sentido,@Rows
WHILE @@FETCH_STATUS <> -1
BEGIN
	IF @Sentido='Ingreso'
	   BEGIN
	   FETCH NEXT FROM CUR INTO @Identificacion,@Fecha,@Persona,@Grupo,@Modulo,@Tipomovimiento,@Sentido,@Rows
	  	    IF @Sentido='Ingreso' 
			    BEGIN   
			      INSERT INTO @LSTMOV  VALUES (@Identificacion,@Fecha,@Persona,@Grupo,@Modulo,@Tipomovimiento,@Sentido)
			    END
                ELSE IF @Sentido='Salida'
                BEGIN
                  FETCH NEXT FROM CUR INTO @Identificacion,@Fecha,@Persona,@Grupo,@Modulo,@Tipomovimiento,@Sentido,@Rows
			    END		
	   END
	   ELSE IF @Sentido='Salida'
	   BEGIN
		   SET @Per1=@Persona; 
		   FETCH NEXT FROM CUR INTO @Identificacion,@Fecha,@Persona,@Grupo,@Modulo,@Tipomovimiento,@Sentido,@Rows
	  		--VERIFICAR QUE NO SEA EL ULTIMO REGISTRO
			IF @Sentido='Salida' AND @@FETCH_STATUS <> -1
			BEGIN   
				INSERT INTO @LSTMOV  VALUES (@Identificacion,@Fecha,@Persona,@Grupo,@Modulo,@Tipomovimiento,@Sentido)
            END
            ELSE IF @Sentido='Ingreso'
            BEGIN
              FETCH NEXT FROM CUR INTO @Identificacion,@Fecha,@Persona,@Grupo,@Modulo,@Tipomovimiento,@Sentido,@Rows
			END		
       END
FETCH NEXT FROM CUR INTO @Identificacion,@Fecha,@Persona,@Grupo,@Modulo,@Tipomovimiento,@Sentido,@Rows
END
CLOSE CUR
DEALLOCATE CUR

-- SELECCIONAR DATOS DE TABLA
 SELECT * 
   FROM @LSTMOV 

END

GO
/****** Object:  StoredProcedure [dbo].[lstmodulos]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[lstmodulos] 
    @retorno int =0
	  
AS
BEGIN
	
	SET NOCOUNT ON
    DECLARE @nom VARCHAR (180)
    DECLARE @tbl TABLE (apellido VARCHAR(60),edad INT)
	DECLARE CUR  CURSOR FOR  SELECT  Nombre FROM mdl 
    OPEN CUR
	  FETCH NEXT FROM CUR INTO @nom
		WHILE @@FETCH_STATUS <> -1
			BEGIN
				INSERT INTO @tbl VALUES(@nom,1)
			    FETCH NEXT FROM CUR INTO @nom
			END
	CLOSE CUR
	DEALLOCATE CUR
    SELECT * FROM @tbl
    
END



GO
/****** Object:  StoredProcedure [dbo].[lstmovpresentescantidad]    Script Date: 30/07/2024 0:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Manuel
-- Create date: 22-02-2013
-- Description:	movimientos presentes cantidad
-- =============================================
CREATE PROCEDURE [dbo].[lstmovpresentescantidad] 
@Resultado INT =0 OUTPUT
AS
BEGIN
  
IF (SELECT OBJECT_ID('tempdb..#ING')) IS NULL    
  begin    
      --CREAR TABLA TEMPORAL PARA ENTRADAS    
      CREATE TABLE #ING (Identificacion VARCHAR(32),Fecha DATETIME,Persona VARCHAR(80),Grupo VARCHAR(32),Modulo VARCHAR(32),TipoMovimiento VARCHAR(45),Sentido VARCHAR(32));    
  End    
  IF (SELECT OBJECT_ID('tempdb..#SAL')) IS NULL    
  begin    
      --CREAR TABLA TEMPORAL PARA SALIDAS    
      CREATE TABLE #SAL (Identificacion VARCHAR(32),Fecha DATETIME,Persona VARCHAR(80),Grupo VARCHAR(32),Modulo VARCHAR(32),TipoMovimiento VARCHAR(45),Sentido VARCHAR(32));    
  End    
  ;WITH q1(MovimientoID,ModuloID,GrupoID,IdentificacionID,Fecha,Identificacion,Persona,Grupo,Modulo,Tipomovimiento,Sentido,Rows,Clave) AS (    
       SELECT DISTINCT    
                     mvt.MovimientoID,    
                     mvt.ModuloID,    
                     gru.GrupoID,    
                     idn.IdentificacionID,    
                     mvt.FechaHora as fecha,    
                     idn.Numero as identificacion,    
                     per.Apellido + ', '+ per.Nombre as persona,    
                     gru.Nombre as grupo,    
                     mdl.Nombre as modulo,    
                     a.nombre as tipomovimiento,    
                     b.nombre as sentido,    
                     ROW_NUMBER() OVER (ORDER BY per.apellido,mdl.moduloID) as rows,    
                     ROW_NUMBER() OVER(PARTITION BY mvt.movimientoID  ORDER BY per.apellido,mdl.ModuloID)  as clave    
       From mvt    
                     INNER JOIN mdl on  mvt.ModuloID=mdl.ModuloID    
                     INNER JOIN   idn on mvt.IdentificacionID=idn.IdentificacionID    
                     INNER JOIN peridn on idn.IdentificacionID=peridn.IdentificacionID    
                     INNER JOIN MvtCatVal bm ON (Mvt.MovimientoID =   bm.MovimientoID AND bm.categoriaid ='4')    
                     INNER JOIN CatVal b ON(bm.ValorID=b.ValorID AND  bm.categoriaID=b.categoriaID )    
                     INNER JOIN MvtCatVal am ON (Mvt.MovimientoID =   am.MovimientoID AND am.categoriaid ='23')    
                     INNER JOIN CatVal a ON(am.ValorID=a.ValorID AND  am.categoriaID=a.categoriaID)    
                     INNER JOIN per on peridn.PersonaID=per.PersonaID    
                     INNER JOIN pergru on peridn.PersonaID=pergru.PersonaID    
                     INNER JOIN gru on pergru.GrupoID=gru.GrupoID    
       Where    
             -- FILTRO PARA LA CONSULTA DE MOVIMIENTOS PRESENTES --    
             mvt.FechaHora Between '01/02/2012 00:00:00' and '01/02/2012 23:59:59'     -- por fecha    
             AND a.nombre='Peatonal'    
             /*AND gru.Nombre LIKE '%DOMESTICA DEL LOTE 58%'*/    
  )    
  -- PRIMERO INSERTAMOS LOS INGRESOS ORDENADOS POR PERSONA    
  INSERT INTO #ING    
  SELECT Identificacion,Fecha,Persona,Grupo,Modulo,Tipomovimiento,Sentido FROM q1 WHERE q1.clave=1   and q1.sentido='Ingreso' order by q1.persona;    
 ;WITH q2(MovimientoID,ModuloID,GrupoID,IdentificacionID,Fecha,Identificacion,Persona,Grupo,Modulo,Tipomovimiento,Sentido,Rows,Clave) AS (    
       SELECT DISTINCT    
                     mvt.MovimientoID,    
                     mvt.ModuloID,    
                     gru.GrupoID,    
                     idn.IdentificacionID,    
                     mvt.FechaHora as fecha,    
                     idn.Numero as identificacion,    
                     per.Apellido + ', '+ per.Nombre as persona,    
                     gru.Nombre as grupo,    
                     mdl.Nombre as modulo,    
                     a.nombre as tipomovimiento,    
                     b.nombre as sentido,    
                     ROW_NUMBER() OVER (ORDER BY per.apellido,mdl.moduloID) as rows,    
                     ROW_NUMBER() OVER(PARTITION BY mvt.movimientoID  ORDER BY per.apellido,mdl.ModuloID)  as clave    
      From mvt    
                     INNER JOIN mdl on  mvt.ModuloID=mdl.ModuloID    
                     INNER JOIN   idn on mvt.IdentificacionID=idn.IdentificacionID    
                     INNER JOIN peridn on idn.IdentificacionID=peridn.IdentificacionID    
                     INNER JOIN MvtCatVal bm ON (Mvt.MovimientoID =   bm.MovimientoID AND bm.categoriaid ='4')    
                     INNER JOIN CatVal b ON(bm.ValorID=b.ValorID AND  bm.categoriaID=b.categoriaID )    
                     INNER JOIN MvtCatVal am ON (Mvt.MovimientoID =   am.MovimientoID AND am.categoriaid ='23')    
                     INNER JOIN CatVal a ON(am.ValorID=a.ValorID AND  am.categoriaID=a.categoriaID)    
                     INNER JOIN per on peridn.PersonaID=per.PersonaID    
                     INNER JOIN pergru on peridn.PersonaID=pergru.PersonaID    
                     INNER JOIN gru on pergru.GrupoID=gru.GrupoID    
       Where    
             -- FILTRO PARA LA CONSULTA DE MOVIMIENTOS PRESENTES --    
              mvt.FechaHora Between '01/02/2012 00:00:00' and '01/02/2012 23:59:59'     -- por fecha    
              AND a.nombre='Peatonal'    
             /*AND gru.Nombre LIKE '%DOMESTICA DEL LOTE 58%'*/    
  )    
  -- PRIMERO INSERTAMOS LOS INGRESOS ORDENADOS POR PERSONA    
  INSERT INTO #SAL    
  SELECT Identificacion,Fecha,Persona,Grupo,Modulo,Tipomovimiento,Sentido FROM q2 WHERE q2.clave=1   and q2.sentido='Salida' order by q2.persona;    
  -- SELECCIONAR DATOS DE TABLA PARA LA CONSULTA FINAL DEL RECORDSET    
  -- SELECT #ING.IDENTIFICACION,#ING.FECHA,#ING.PERSONA,#ING.GRUPO,#ING.MODULO,#ING.TIPOMOVIMIENTO,#ING.SENTIDO   FROM #ING    
  --          LEFT JOIN #SAL ON #ING.Identificacion=#SAL.Identificacion    
  --          WHERE #SAL.Identificacion IS NULL    
  --          ORDER BY #ING.Persona    
-- ACTIVAR PARA EL CONTEO DE FILAS    
  -- SELECCIONAR DATOS DE TABLA PARA EL RECORDCOUNT [CANTIDAD DE REGISTROS QUE TRAE LA CONSULTA]    
   SELECT COUNT(*) AS Cantidad FROM #ING LEFT JOIN #SAL ON #ING.Identificacion=#SAL.Identificacion WHERE #SAL.Identificacion IS NULL
   RETURN @Resultado

END











GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.arb' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'arb'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.arbitm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'arbitm'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.aut' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'aut'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.autcatval' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'autcatval'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.autprx' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'autprx'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.cat' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.catval' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'catval'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.cfg' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cfg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.cfgfrm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cfgfrm'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.cfgopt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cfgopt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.clc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'clc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.cobranza' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cobranza'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.cul' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'cul'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.dim' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dim'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.est' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'est'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.estval' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'estval'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.geo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.geogrpmdl' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'geogrpmdl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.gru' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gru'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.grucatval' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'grucatval'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.gruidn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gruidn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.grumdlprf' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'grumdlprf'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.idn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'idn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.idncatval' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'idncatval'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.idnpnc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'idnpnc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.ins' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ins'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.lge' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'lge'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.lic' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'lic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.logevt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'logevt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.lot' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'lot'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.lotcatval' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'lotcatval'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.lotper' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'lotper'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.lotpercatval' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'lotpercatval'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.mdl' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mdl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.mdlcam' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mdlcam'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.mdlcatval' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mdlcatval'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.mdlestval' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mdlestval'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.mvt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mvt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.mvtcatval' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'mvtcatval'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.nsl' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'nsl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.nts' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'nts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.pdtidn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pdtidn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.pdtmdl' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pdtmdl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.per' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'per'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.peraut' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'peraut'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.percatval' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'percatval'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.perdircatval' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'perdircatval'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.perdoccatval' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'perdoccatval'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.perestval' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'perestval'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.pergru' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pergru'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.peridn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'peridn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.permaicatval' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'permaicatval'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.perprx' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'perprx'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.pertelcatval' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pertelcatval'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.prc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'prc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.pre' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.prf' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'prf'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.prfval' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'prfval'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.prx' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'prx'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.red' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'red'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.rednod' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'rednod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.rednodlnk' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'rednodlnk'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.tck' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.tckhst' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tckhst'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.tckper' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tckper'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.tckprx' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tckprx'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.tkn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tkn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.tkncul' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tkncul'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.upd' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'upd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.usr' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'usr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.usrcatval' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'usrcatval'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.usrestval' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'usrestval'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.usrlogin' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'usrlogin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.valida_config' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'valida_config'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.wks' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.wksmdl' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wksmdl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'videoman.wksopt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'wksopt'
GO
