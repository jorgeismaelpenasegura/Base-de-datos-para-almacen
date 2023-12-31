SELECT * FROM Almacenes
/****** Nombre: Jorge Ismael PeÑa SEGURA. Matricula: 22-MIIT-1-002. SECION******/

/****** Object:  Database [SmartStoreDB]    Script Date: 19/12/2023 18:12:30 ******/
CREATE DATABASE [SmartStoreDB]
 
GO
USE [SmartStoreDB]
GO
/****** Object:  Table [dbo].[Almacenes]    Script Date: 19/12/2023 18:12:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Almacenes](
	[AlmacenID] [int] NOT NULL,
	[NombreAlmacen] [varchar](50) NULL,
	[Ubicacion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[AlmacenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 19/12/2023 18:12:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ClienteID] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Direccion] [varchar](100) NULL,
	[Telefono] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[ClienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetallesPedido]    Script Date: 19/12/2023 18:12:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallesPedido](
	[DetalleID] [int] NOT NULL,
	[PedidoID] [int] NULL,
	[ProductoID] [int] NULL,
	[Cantidad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DetalleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedidos]    Script Date: 19/12/2023 18:12:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedidos](
	[PedidoID] [int] NOT NULL,
	[FechaPedido] [date] NULL,
	[ClienteID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PedidoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 19/12/2023 18:12:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[ProductoID] [int] NOT NULL,
	[NombreProducto] [varchar](50) NULL,
	[Precio] [decimal](10, 2) NULL,
	[Stock] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Almacenes] ([AlmacenID], [NombreAlmacen], [Ubicacion]) VALUES (1, N'Almacen A', N'Calle Principal, ciudad c ')
INSERT [dbo].[Almacenes] ([AlmacenID], [NombreAlmacen], [Ubicacion]) VALUES (2, N'Almacen B', N'Calle 125')
INSERT [dbo].[Almacenes] ([AlmacenID], [NombreAlmacen], [Ubicacion]) VALUES (3, N'Almacen C', N'calle 35')
INSERT [dbo].[Almacenes] ([AlmacenID], [NombreAlmacen], [Ubicacion]) VALUES (4, N'Almacen D ', N'calle 50')
INSERT [dbo].[Almacenes] ([AlmacenID], [NombreAlmacen], [Ubicacion]) VALUES (5, N'Almacen E ', N'calle 35')
INSERT [dbo].[Almacenes] ([AlmacenID], [NombreAlmacen], [Ubicacion]) VALUES (6, N'Almacen J ', N'calle 20')
INSERT [dbo].[Almacenes] ([AlmacenID], [NombreAlmacen], [Ubicacion]) VALUES (7, N'Almacen H', N'calle 42')
INSERT [dbo].[Almacenes] ([AlmacenID], [NombreAlmacen], [Ubicacion]) VALUES (8, N'Almacen K ', N'calle 56')
INSERT [dbo].[Almacenes] ([AlmacenID], [NombreAlmacen], [Ubicacion]) VALUES (9, N'Almacen M', N'calle 100')
INSERT [dbo].[Almacenes] ([AlmacenID], [NombreAlmacen], [Ubicacion]) VALUES (10, N'Almacen P', N'calle 125')
GO
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Telefono]) VALUES (1, N'Juan ', N'calle central', N'234-313-3233')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Telefono]) VALUES (2, N'luis ', N'calle sur', N'234-213-4341')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Telefono]) VALUES (3, N'carlo', N'calle 25', N'234-393-9302')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Telefono]) VALUES (4, N'Andres', N'calle 45', N'234-895-1928')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Telefono]) VALUES (5, N'laura ', N'calle 42', N'234-484-3910')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Telefono]) VALUES (6, N'miguel', N'calle 100', N'234-872-9291')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Telefono]) VALUES (7, N'lucas ', N'calle 30', N'234-718-9181')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Telefono]) VALUES (8, N'camila ', N'calle 50', N'234-198-4750')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Telefono]) VALUES (9, N'luisa', N'calle 45', N'234-189-3912')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Telefono]) VALUES (10, N'michael', N'calle 100', N'234-289-9018')
GO
INSERT [dbo].[DetallesPedido] ([DetalleID], [PedidoID], [ProductoID], [Cantidad]) VALUES (1, 1, 1, 8)
INSERT [dbo].[DetallesPedido] ([DetalleID], [PedidoID], [ProductoID], [Cantidad]) VALUES (2, 2, 4, 5)
INSERT [dbo].[DetallesPedido] ([DetalleID], [PedidoID], [ProductoID], [Cantidad]) VALUES (3, 3, 5, 6)
INSERT [dbo].[DetallesPedido] ([DetalleID], [PedidoID], [ProductoID], [Cantidad]) VALUES (4, 4, 6, 7)
INSERT [dbo].[DetallesPedido] ([DetalleID], [PedidoID], [ProductoID], [Cantidad]) VALUES (5, 5, 2, 9)
INSERT [dbo].[DetallesPedido] ([DetalleID], [PedidoID], [ProductoID], [Cantidad]) VALUES (6, 6, 3, 3)
INSERT [dbo].[DetallesPedido] ([DetalleID], [PedidoID], [ProductoID], [Cantidad]) VALUES (7, 8, 7, 5)
INSERT [dbo].[DetallesPedido] ([DetalleID], [PedidoID], [ProductoID], [Cantidad]) VALUES (8, 7, 8, 8)
INSERT [dbo].[DetallesPedido] ([DetalleID], [PedidoID], [ProductoID], [Cantidad]) VALUES (9, 10, 1, 3)
INSERT [dbo].[DetallesPedido] ([DetalleID], [PedidoID], [ProductoID], [Cantidad]) VALUES (10, 9, 10, 5)
GO
INSERT [dbo].[Pedidos] ([PedidoID], [FechaPedido], [ClienteID]) VALUES (1, CAST(N'2023-02-15' AS Date), 1)
INSERT [dbo].[Pedidos] ([PedidoID], [FechaPedido], [ClienteID]) VALUES (2, CAST(N'2023-02-15' AS Date), 2)
INSERT [dbo].[Pedidos] ([PedidoID], [FechaPedido], [ClienteID]) VALUES (3, CAST(N'2023-02-15' AS Date), 2)
INSERT [dbo].[Pedidos] ([PedidoID], [FechaPedido], [ClienteID]) VALUES (4, CAST(N'2023-02-15' AS Date), 3)
INSERT [dbo].[Pedidos] ([PedidoID], [FechaPedido], [ClienteID]) VALUES (5, CAST(N'2023-02-15' AS Date), 4)
INSERT [dbo].[Pedidos] ([PedidoID], [FechaPedido], [ClienteID]) VALUES (6, CAST(N'2023-02-15' AS Date), 5)
INSERT [dbo].[Pedidos] ([PedidoID], [FechaPedido], [ClienteID]) VALUES (7, CAST(N'2023-02-15' AS Date), 6)
INSERT [dbo].[Pedidos] ([PedidoID], [FechaPedido], [ClienteID]) VALUES (8, CAST(N'2023-02-15' AS Date), 7)
INSERT [dbo].[Pedidos] ([PedidoID], [FechaPedido], [ClienteID]) VALUES (9, CAST(N'2023-02-15' AS Date), 8)
INSERT [dbo].[Pedidos] ([PedidoID], [FechaPedido], [ClienteID]) VALUES (10, CAST(N'2023-02-15' AS Date), 9)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [Precio], [Stock]) VALUES (1, N'Producto A ', CAST(200.00 AS Decimal(10, 2)), 50)
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [Precio], [Stock]) VALUES (2, N'Producto B', CAST(1500.00 AS Decimal(10, 2)), 25)
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [Precio], [Stock]) VALUES (3, N'Producto C', CAST(15000.00 AS Decimal(10, 2)), 10)
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [Precio], [Stock]) VALUES (4, N'Producto D', CAST(3250.00 AS Decimal(10, 2)), 25)
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [Precio], [Stock]) VALUES (5, N'Producto E', CAST(20000.00 AS Decimal(10, 2)), 20)
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [Precio], [Stock]) VALUES (6, N'Producto F', CAST(14500.00 AS Decimal(10, 2)), 30)
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [Precio], [Stock]) VALUES (7, N'Producto G', CAST(12000.00 AS Decimal(10, 2)), 45)
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [Precio], [Stock]) VALUES (8, N'Producto I', CAST(5000.00 AS Decimal(10, 2)), 30)
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [Precio], [Stock]) VALUES (9, N'Producto J', CAST(3500.00 AS Decimal(10, 2)), 70)
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [Precio], [Stock]) VALUES (10, N'Producto K', CAST(2300.00 AS Decimal(10, 2)), 50)
GO
ALTER TABLE [dbo].[DetallesPedido]  WITH CHECK ADD FOREIGN KEY([PedidoID])
REFERENCES [dbo].[Pedidos] ([PedidoID])
GO
ALTER TABLE [dbo].[DetallesPedido]  WITH CHECK ADD FOREIGN KEY([ProductoID])
REFERENCES [dbo].[Productos] ([ProductoID])
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Clientes] ([ClienteID])
GO
USE [master]
GO
ALTER DATABASE [SmartStoreDB] SET  READ_WRITE 
GO
