USE [master]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 03/06/2020 23:40:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 03/06/2020 23:40:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdType] [int] NOT NULL,
	[IdBrand] [int] NOT NULL,
	[Name] [nchar](50) NOT NULL,
	[Description] [ntext] NOT NULL,
	[Price] [money] NOT NULL,
	[PictureFileName] [nchar](255) NOT NULL,
	[AvailableStock] [int] NOT NULL,
	[OnReorder] [bit] NOT NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Types]    Script Date: 03/06/2020 23:40:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Types](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nchar](50) NULL,
 CONSTRAINT [PK_ItemTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([Id], [Name]) VALUES (1, N'Azure                                             ')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (2, N'.NET                                              ')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (3, N'Visual Studio                                     ')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (4, N'SQL Server                                        ')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (5, N'Other                                             ')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (6, N'CatalogBrandTestOne                               ')
INSERT [dbo].[Brands] ([Id], [Name]) VALUES (7, N'CatalogBrandTestTwo                               ')
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[Items] ON 

INSERT [dbo].[Items] ([Id], [IdType], [IdBrand], [Name], [Description], [Price], [PictureFileName], [AvailableStock], [OnReorder]) VALUES (1, 2, 2, N'.NET Bot Black Hoodie                             ', N'.NET Bot Black Hoodie; and more', 19.5000, N'1.png                                                                                                                                                                                                                                                          ', 100, 0)
INSERT [dbo].[Items] ([Id], [IdType], [IdBrand], [Name], [Description], [Price], [PictureFileName], [AvailableStock], [OnReorder]) VALUES (2, 1, 2, N'.NET Black & White Mug                            ', N'.NET Black & White Mug', 8.5000, N'2.png                                                                                                                                                                                                                                                          ', 89, 1)
INSERT [dbo].[Items] ([Id], [IdType], [IdBrand], [Name], [Description], [Price], [PictureFileName], [AvailableStock], [OnReorder]) VALUES (3, 2, 5, N'Prism White T-Shirt                               ', N'Prism White T-Shirt', 12.0000, N'3.png                                                                                                                                                                                                                                                          ', 56, 0)
INSERT [dbo].[Items] ([Id], [IdType], [IdBrand], [Name], [Description], [Price], [PictureFileName], [AvailableStock], [OnReorder]) VALUES (4, 2, 2, N'.NET Foundation T-shirt                           ', N'.NET Foundation T-shirt', 12.0000, N'4.png                                                                                                                                                                                                                                                          ', 120, 0)
INSERT [dbo].[Items] ([Id], [IdType], [IdBrand], [Name], [Description], [Price], [PictureFileName], [AvailableStock], [OnReorder]) VALUES (5, 3, 5, N'Roslyn Red Sheet                                  ', N'Roslyn Red Sheet', 8.5000, N'5.png                                                                                                                                                                                                                                                          ', 55, 0)
INSERT [dbo].[Items] ([Id], [IdType], [IdBrand], [Name], [Description], [Price], [PictureFileName], [AvailableStock], [OnReorder]) VALUES (6, 2, 2, N'.NET Blue Hoodie                                  ', N'.NET Blue Hoodie', 12.0000, N'6.png                                                                                                                                                                                                                                                          ', 17, 0)
INSERT [dbo].[Items] ([Id], [IdType], [IdBrand], [Name], [Description], [Price], [PictureFileName], [AvailableStock], [OnReorder]) VALUES (7, 2, 5, N'Roslyn Red T-Shirt"                               ', N'Roslyn Red T-Shirt', 12.0000, N'7.png                                                                                                                                                                                                                                                          ', 8, 0)
INSERT [dbo].[Items] ([Id], [IdType], [IdBrand], [Name], [Description], [Price], [PictureFileName], [AvailableStock], [OnReorder]) VALUES (8, 2, 5, N'Kudu Purple Hoodie                                ', N'Kudu Purple Hoodie', 8.5000, N'8.png                                                                                                                                                                                                                                                          ', 34, 0)
INSERT [dbo].[Items] ([Id], [IdType], [IdBrand], [Name], [Description], [Price], [PictureFileName], [AvailableStock], [OnReorder]) VALUES (9, 1, 5, N'Cup<T> White Mug                                  ', N'Cup<T> White Mug', 12.0000, N'9.png                                                                                                                                                                                                                                                          ', 76, 0)
INSERT [dbo].[Items] ([Id], [IdType], [IdBrand], [Name], [Description], [Price], [PictureFileName], [AvailableStock], [OnReorder]) VALUES (10, 3, 2, N'.NET Foundation Sheet                             ', N'.NET Foundation Sheet', 12.0000, N'10.png                                                                                                                                                                                                                                                         ', 11, 0)
INSERT [dbo].[Items] ([Id], [IdType], [IdBrand], [Name], [Description], [Price], [PictureFileName], [AvailableStock], [OnReorder]) VALUES (11, 3, 2, N'Cup<T> Sheet                                      ', N'Cup<T> Sheet', 8.5000, N'11.png                                                                                                                                                                                                                                                         ', 3, 0)
INSERT [dbo].[Items] ([Id], [IdType], [IdBrand], [Name], [Description], [Price], [PictureFileName], [AvailableStock], [OnReorder]) VALUES (12, 2, 5, N'Prism White TShirt                                ', N'Prism White TShirt', 12.0000, N'12.png                                                                                                                                                                                                                                                         ', 0, 0)
INSERT [dbo].[Items] ([Id], [IdType], [IdBrand], [Name], [Description], [Price], [PictureFileName], [AvailableStock], [OnReorder]) VALUES (13, 1, 5, N'pepito                                            ', N'De los Palotes', 12.0000, N'12.png                                                                                                                                                                                                                                                         ', 0, 0)
SET IDENTITY_INSERT [dbo].[Items] OFF
GO
SET IDENTITY_INSERT [dbo].[Types] ON 

INSERT [dbo].[Types] ([Id], [Title]) VALUES (1, N'Mug                                               ')
INSERT [dbo].[Types] ([Id], [Title]) VALUES (2, N'T-Shirt                                           ')
INSERT [dbo].[Types] ([Id], [Title]) VALUES (3, N'Sheet                                             ')
INSERT [dbo].[Types] ([Id], [Title]) VALUES (4, N'USB Memory Stick                                  ')
INSERT [dbo].[Types] ([Id], [Title]) VALUES (5, N'CatalogTypeTestOne                                ')
INSERT [dbo].[Types] ([Id], [Title]) VALUES (6, N'CatalogTypeTestTwo                                ')
SET IDENTITY_INSERT [dbo].[Types] OFF
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Brands] FOREIGN KEY([IdBrand])
REFERENCES [dbo].[Brands] ([Id])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Brands]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Types] FOREIGN KEY([IdType])
REFERENCES [dbo].[Types] ([Id])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Types]
GO
USE [master]
GO
