USE [HospitalMgmtSystem]
GO
/****** Object:  Table [dbo].[tblBilling]    Script Date: 25-03-2015 23:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBilling](
	[BillId] [int] IDENTITY(1,1) NOT NULL,
	[PatientId] [int] NOT NULL,
	[BillNo] [int] NOT NULL,
	[BillDate] [datetime] NOT NULL,
	[Amount] [int] NOT NULL,
	[Tax] [int] NULL,
	[TotalAmount] [int] NOT NULL,
	[GeneratedBY] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblBilling] PRIMARY KEY CLUSTERED 
(
	[BillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblBillItems]    Script Date: 25-03-2015 23:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBillItems](
	[ItemId] [int] IDENTITY(1,1) NOT NULL,
	[BillId] [int] NOT NULL,
	[ItemDescription] [varchar](250) NOT NULL,
	[Amount] [decimal](5, 2) NOT NULL,
	[Discount] [decimal](2, 2) NOT NULL,
	[AmountPay] [int] NOT NULL,
	[Status] [varchar](20) NOT NULL,
 CONSTRAINT [PK_tblBillItems] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblConsultation]    Script Date: 25-03-2015 23:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblConsultation](
	[ConsId] [int] NOT NULL,
	[DrId] [int] NULL,
	[PatientId] [int] NULL,
	[BillId] [int] NULL,
	[Diagnosis] [varchar](150) NULL,
	[DateOfConsult] [datetime] NULL,
	[DrComments] [varchar](250) NULL,
 CONSTRAINT [PK_tblConsultation] PRIMARY KEY CLUSTERED 
(
	[ConsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDoctors]    Script Date: 25-03-2015 23:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDoctors](
	[DoctorId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Country] [int] NULL,
	[State] [int] NULL,
	[City] [int] NULL,
	[Address] [varchar](500) NOT NULL,
	[Photo] [varbinary](max) NULL,
	[EmailAddress] [varchar](150) NULL,
	[MobileNo] [varchar](50) NULL,
	[Specialisation] [varchar](150) NULL,
	[DateOfBirth] [date] NULL,
	[DateJoinHospital] [date] NOT NULL,
	[Status] [varchar](15) NULL,
 CONSTRAINT [PK_tblDoctors] PRIMARY KEY CLUSTERED 
(
	[DoctorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPatient]    Script Date: 25-03-2015 23:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPatient](
	[PatientId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Age] [decimal](2, 2) NOT NULL,
	[Address] [varchar](500) NULL,
	[DateOfBirth] [date] NOT NULL,
	[Gender] [char](1) NOT NULL,
	[State] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[Concession] [decimal](2, 2) NOT NULL,
	[Referral] [varchar](150) NULL,
	[DateOfAdmission] [datetime] NULL,
	[DateOfDischarge] [datetime] NULL,
 CONSTRAINT [PK_tblPatient] PRIMARY KEY CLUSTERED 
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPayRoll]    Script Date: 25-03-2015 23:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPayRoll](
	[PayRollId] [int] IDENTITY(1,1) NOT NULL,
	[StaffId] [int] NOT NULL,
	[Basic] [int] NOT NULL,
	[HRA] [int] NULL,
	[TA] [int] NULL,
	[DA] [int] NULL,
	[PF] [int] NULL,
	[IncomTax] [int] NULL,
	[TotalSalary] [int] NULL,
	[PayMonth] [numeric](2, 0) NOT NULL,
	[PayYear] [numeric](4, 0) NOT NULL,
	[PayDate] [datetime] NOT NULL,
	[BankACNo] [varchar](50) NULL,
	[BankName] [varchar](150) NULL,
	[PAN] [varchar](15) NULL,
 CONSTRAINT [PK_tblPayRoll] PRIMARY KEY CLUSTERED 
(
	[PayRollId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblStaff]    Script Date: 25-03-2015 23:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblStaff](
	[StaffId] [int] IDENTITY(1000,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Country] [int] NULL,
	[State] [int] NULL,
	[City] [int] NULL,
	[Address] [varchar](500) NULL,
	[Photo] [varbinary](max) NULL,
	[MobileNo] [varchar](50) NULL,
	[StaffType] [varchar](20) NULL,
	[DateOfBirth] [date] NULL,
	[DateJoinHospital] [datetime] NULL,
	[Status] [varchar](20) NULL,
 CONSTRAINT [PK_tblStaff] PRIMARY KEY CLUSTERED 
(
	[StaffId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 25-03-2015 23:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUsers](
	[UserId] [int] NOT NULL,
	[UserName] [varchar](15) NOT NULL,
	[Pass] [varchar](15) NOT NULL,
 CONSTRAINT [PK_tblUsers] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblWard]    Script Date: 25-03-2015 23:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblWard](
	[WardId] [int] NOT NULL,
	[WardNo] [varchar](10) NOT NULL,
	[WardName] [varchar](50) NOT NULL,
	[WardType] [varchar](50) NOT NULL,
	[NoOfBed] [int] NOT NULL,
	[BedCharges] [int] NOT NULL,
 CONSTRAINT [PK_tblWard] PRIMARY KEY CLUSTERED 
(
	[WardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblWardPatient]    Script Date: 25-03-2015 23:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblWardPatient](
	[PWardId] [int] IDENTITY(1,1) NOT NULL,
	[WardId] [int] NOT NULL,
	[PatientId] [int] NOT NULL,
	[BedNo] [int] NOT NULL,
	[DateOfAdmit] [datetime] NULL,
	[DateOfDisch] [datetime] NOT NULL,
	[Reason] [varchar](150) NULL,
 CONSTRAINT [PK_tblWardPatient] PRIMARY KEY CLUSTERED 
(
	[PWardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

