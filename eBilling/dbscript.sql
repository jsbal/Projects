USE [eBilling]
GO
/****** Object:  Table [dbo].[mst_Products]    Script Date: 11/5/2016 12:58:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mst_Products](
	[ProductId] [int] IDENTITY(1000,1) NOT NULL,
	[ProductName] [varchar](150) NULL,
	[ProductType] [varchar](10) NOT NULL,
	[ProductSubType] [varchar](10) NULL,
	[Price] [decimal](7, 2) NOT NULL,
	[Qty] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [varchar](15) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](15) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_mst_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblBilling]    Script Date: 11/5/2016 12:58:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBilling](
	[BillId] [int] NOT NULL,
	[InvoiceNo] [int] NOT NULL,
	[invoiceDate] [datetime] NOT NULL,
	[Location] [varchar](50) NULL,
	[Amt] [decimal](7, 2) NOT NULL,
	[Discount] [decimal](7, 2) NOT NULL,
	[TotalAmt] [int] NOT NULL,
	[PaymentType] [varchar](20) NOT NULL,
	[ChequeNo] [varchar](15) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [varchar](15) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](15) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tblBilling] PRIMARY KEY CLUSTERED 
(
	[BillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblBillItems]    Script Date: 11/5/2016 12:58:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBillItems](
	[BillItemId] [int] NOT NULL,
	[BillId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Qty] [int] NOT NULL,
	[Amt] [decimal](7, 2) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [varchar](15) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](15) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tblBillItems] PRIMARY KEY CLUSTERED 
(
	[BillItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCompanyInfo]    Script Date: 11/5/2016 12:58:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCompanyInfo](
	[CompanyId] [int] NOT NULL,
	[CompanyName] [varchar](150) NOT NULL,
	[Address1] [varchar](100) NOT NULL,
	[Address2] [varchar](100) NULL,
	[City] [varchar](50) NOT NULL,
	[Pin] [numeric](6, 0) NOT NULL,
	[Telephone] [varchar](50) NULL,
	[TIN] [varchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [varchar](15) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](15) NULL,
	[ModifiedDate] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblEmployee]    Script Date: 11/5/2016 12:58:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEmployee](
	[empId] [int] NOT NULL,
	[empName] [varchar](150) NOT NULL,
	[Address] [varchar](200) NOT NULL,
	[MobileNo] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Department] [varchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [varchar](15) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](15) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tblEmployee] PRIMARY KEY CLUSTERED 
(
	[empId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblProductDemand]    Script Date: 11/5/2016 12:58:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblProductDemand](
	[ProductDemandId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Qty] [int] NOT NULL,
	[Price] [decimal](7, 2) NOT NULL,
	[DemandDate] [datetime] NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [varchar](15) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](15) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tblProductDemand] PRIMARY KEY CLUSTERED 
(
	[ProductDemandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTax]    Script Date: 11/5/2016 12:58:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTax](
	[TaxId] [int] NOT NULL,
	[TaxName] [varchar](50) NOT NULL,
	[Tax] [decimal](2, 2) NOT NULL,
 CONSTRAINT [PK_tblTax] PRIMARY KEY CLUSTERED 
(
	[TaxId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 11/5/2016 12:58:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUsers](
	[UserId] [int] NOT NULL,
	[empId] [int] NOT NULL,
	[UserName] [varchar](15) NOT NULL,
	[Pass] [varchar](15) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [varchar](15) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](15) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tblUsers] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[mst_Products] ADD  CONSTRAINT [DF_mst_Products_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tblBilling] ADD  CONSTRAINT [DF_tblBilling_PaymentType]  DEFAULT ('Cash') FOR [PaymentType]
GO
ALTER TABLE [dbo].[tblBilling] ADD  CONSTRAINT [DF_tblBilling_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tblBillItems] ADD  CONSTRAINT [DF_tblBillItems_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tblCompanyInfo] ADD  CONSTRAINT [DF_tblCompanyInfo_CompanyId]  DEFAULT ((100)) FOR [CompanyId]
GO
ALTER TABLE [dbo].[tblCompanyInfo] ADD  CONSTRAINT [DF_tblCompanyInfo_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tblEmployee] ADD  CONSTRAINT [DF_tblEmployee_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tblProductDemand] ADD  CONSTRAINT [DF_tblProductDemand_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tblUsers] ADD  CONSTRAINT [DF_tblUsers_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
