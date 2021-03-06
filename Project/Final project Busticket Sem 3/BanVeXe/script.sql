CREATE DATABASE  SRCTICKETSYSTEM

USE [SRCTICKETSYSTEM]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coach](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[description] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[licensePlate] [varchar](255) NULL,
	[seatTotal] [int] NULL,
	[img] [nvarchar](255) NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[type] [varchar](255) NOT NULL,
	[link] [varchar](255) NULL,
	[tableid] [int] NULL,
	[parentid] [int] NOT NULL,
	[orders] [int] NOT NULL,
	[position] [varchar](255) NOT NULL,
	[created_at] [smalldatetime] NOT NULL,
	[created_by] [int] NULL,
	[updated_at] [smalldatetime] NOT NULL,
	[updated_by] [int] NULL,
	[status] [int] NOT NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[guestTotal] [int] NOT NULL,
	[code] [nvarchar](255) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[gioitinh] [nvarchar](255) NOT NULL,
	[quoctich] [nvarchar](255) NOT NULL,
	[mess] [nvarchar](255) NULL,
	[phone] [varchar](255) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[deliveryPaymentMethod] [nvarchar](255) NOT NULL,
	[StatusPayment] [int] NOT NULL,
	[total] [float] NOT NULL,
	[created_ate] [smalldatetime] NOT NULL,
	[status] [int] NOT NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ordersdetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[orderid] [int] NOT NULL,
	[ticketId] [int] NOT NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[topid] [int] NULL,
	[title] [nvarchar](max) NOT NULL,
	[slug] [varchar](255) NOT NULL,
	[detail] [ntext] NULL,
	[img] [varchar](255) NULL,
	[type] [varchar](50) NULL,
	[created_at] [smalldatetime] NOT NULL,
	[created_by] [int] NOT NULL,
	[updated_at] [smalldatetime] NOT NULL,
	[updated_by] [int] NOT NULL,
	[status] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[parentId] [int] NOT NULL,
	[accessName] [varchar](255) NOT NULL,
	[description] [nvarchar](225) NULL,
	[GropID] [varchar](50) NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ticket](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](255) NULL,
	[garageId] [int] NULL,
	[name] [nvarchar](255) NULL,
	[airport] [nvarchar](255) NULL,
	[description] [ntext] NULL,
	[CoachName] [nvarchar](255) NULL,
	[img] [nvarchar](255) NULL,
	[departure_address] [nvarchar](255) NULL,
	[arrival_address] [nvarchar](255) NULL,
	[departure_date] [smalldatetime] NULL,
	[day] [date] NULL,
	[guestTotal] [int] NULL,
	[licensePlates] [varchar](50) NULL,
	[price] [float] NULL,
	[sold] [int] NULL,
	[created_at] [smalldatetime] NOT NULL,
	[created_by] [int] NOT NULL,
	[updated_at] [smalldatetime] NOT NULL,
	[updated_by] [int] NOT NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[topic](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[slug] [varchar](255) NOT NULL,
	[parentid] [int] NOT NULL,
	[orders] [int] NOT NULL,
	[created_at] [smalldatetime] NOT NULL,
	[created_by] [int] NOT NULL,
	[updated_at] [smalldatetime] NOT NULL,
	[updated_by] [int] NOT NULL,
	[status] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 1/21/2021 12:32:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](255) NOT NULL,
	[username] [varchar](225) NOT NULL,
	[password] [varchar](64) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[gender] [nvarchar](5) NULL,
	[address] [nvarchar](max) NULL,
	[phone] [varchar](20) NULL,
	[img] [varchar](100) NULL,
	[access] [int] NOT NULL,
	[status] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET IDENTITY_INSERT [dbo].[menu] ON
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (1, N'Home', N'menu', N'', 2, 0, 1, N'mainmenu', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2019-12-05T13:03:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (1035, N'Search Order', N'menu', N'tra-cuu-order', 2, 0, 10, N'mainemenu', CAST(N'2020-01-10T00:00:00' AS SmallDateTime), 1, CAST(N'2020-01-10T00:00:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (32, N'News', N'menu', N'tin-tuc', 3, 0, 19, N'mainmenu', CAST(N'2020-10-10T00:00:00' AS SmallDateTime), 1, CAST(N'2020-10-10T00:00:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (4, N'Topic', N'menu', N'tin-tuc/Review-diem-den', 2, 0, 2, N'mainmenu', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (1032, N'Car Trip', N'menu', N'all-chuyen-xe', 2, 0, 0, N'mainmenu', CAST(N'2020-11-13T00:00:00' AS SmallDateTime), 1, CAST(N'2020-10-10T00:00:00' AS SmallDateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[menu] OFF


SET IDENTITY_INSERT [dbo].[role] ON
INSERT [dbo].[role] ([ID], [parentId], [accessName], [description], [GropID]) VALUES (1, 0, N'ADMIN', N'Quản trị viên Full quyền', N'ADMIN')
INSERT [dbo].[role] ([ID], [parentId], [accessName], [description], [GropID]) VALUES (2, 1, N'CUSTOMER', N'Khách hàng', N'CUSTOMER')
INSERT [dbo].[role] ([ID], [parentId], [accessName], [description], [GropID]) VALUES (7, 3, N'SALESMAN', N'Nhân viên bán hàng', N'SALESMAN')
INSERT [dbo].[role] ([ID], [parentId], [accessName], [description], [GropID]) VALUES (8, 5, N'COPYWRITER', N'người viết các bài viết trên website', N'COPYWRITER')
SET IDENTITY_INSERT [dbo].[role] OFF

SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [address], [phone], [img], [access], [status]) VALUES (1, N'Le Minh', N'admin', N'4QrcOUm6Wau+VuBX8g+IPg==', N'abc@gmail.com', N'nam', N'cád-mniad', N'0961330812', N'abc.png', 0, 1)
SET IDENTITY_INSERT [dbo].[user] OFF





