USE [HospitalMgmtSystem]
GO
/****** Object:  StoredProcedure [dbo].[spGetLoginInfo]    Script Date: 25-03-2015 23:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spGetLoginInfo]
(
@UserName	varchar(50),
@Pass	varchar(50)
)
AS
BEGIN
	IF NOT EXISTS(	SELECT * FROM [dbo].[tblUsers] 
					WHERE UserName=@UserName AND
					Pass=@Pass
				)
	BEGIN
		Select 2 As MsgId, 'User name and password does not match.'
	END
	ELSE
	BEGIN
		Select 1 As MsgId, 'User found.'
	END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ConsultationDetails]    Script Date: 25-03-2015 23:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_ConsultationDetails]
	-- Add the parameters for the stored procedure here
@ConsId				int=NULL,
@DrId				int=NULL,
@PatientId			int=NULL,
@BillId				int=NULL,
@Diagnosis			varchar(150)=NULL,
@DateOfConsult		datetime=NULL,
@DrComments			varchar(250)=NULL
		
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	IF NOT EXISTS(SELECT * FROM [dbo].[tblConsultation] WHERE ConsId=@ConsId)
	BEGIN
		INSERT INTO tblConsultation(
								DrId,
								PatientId,
								BillId,
								Diagnosis,
								DateOfConsult,
								DrComments
								)
					VALUES
								(
								@DrId,
								@PatientId,
								@BillId,
								@Diagnosis,
								@DateOfConsult,
								@DrComments
								)

	END
	ELSE
	BEGIN
		UPDATE tblConsultation
		SET		DrId=			@DrId,
				PatientId		=@PatientId,
				BillId			=@BillId,
				Diagnosis		=@Diagnosis,
				DateOfConsult	=@DateOfConsult,
				DrComments		=@DrComments
		WHERE ConsId=@ConsId
	END

END

GO
/****** Object:  StoredProcedure [dbo].[usp_DoctorDetails]    Script Date: 25-03-2015 23:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_DoctorDetails]
	-- Add the parameters for the stored procedure here
@DoctorId			int=NULL,
@Name				varchar(100)=NULL,
@Country			int=NULL,
@State				int=NULL,
@City				int=NULL,
@Address			varchar(500)=NULL,
@Photo				varbinary(MAX)=NULL,
@EmailAddress		varchar(150)=NULL,
@MobileNo			varchar(50)=NULL,
@Specialisation		varchar(150)=NULL,
@DateOfBirth		date=NULL,
@DateJoinHospital	date=NULL,
@Status				varchar(15)=NULL
		
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	IF NOT EXISTS(SELECT * FROM [dbo].[tblDoctors] WHERE DoctorId=@DoctorId)
	BEGIN
		INSERT INTO tblDoctors(
								Name,
								Country,
								State,
								City,
								Address,
								Photo,
								EmailAddress,
								MobileNo,
								Specialisation,
								DateOfBirth,
								DateJoinHospital,
								Status
								)
					VALUES
								(
								@Name,
								@Country,
								@State,
								@City,
								@Address,
								@Photo,
								@EmailAddress,
								@MobileNo,
								@Specialisation,
								@DateOfBirth,
								@DateJoinHospital,
								@Status
								)

	END
	ELSE
	BEGIN
		UPDATE tblDoctors
		SET		Name			=@Name,
				Country			=@Country,
				State			=@State,
				City			=@City,
				Address			=@Address,
				Photo			=@Photo,
				EmailAddress	=@EmailAddress,
				MobileNo		=@MobileNo,
				Specialisation	=@Specialisation,
				DateOfBirth		=@DateOfBirth,
				DateJoinHospital=@DateJoinHospital,
				Status			=@Status
		WHERE DoctorId=@DoctorId
	END

END

GO
/****** Object:  StoredProcedure [dbo].[usp_PatientDetails]    Script Date: 25-03-2015 23:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_PatientDetails]
	-- Add the parameters for the stored procedure here
@PatientId			int=NULL,
@Name				varchar(100)=NULL,
@Age				decimal(2, 2)=NULL,
@Address			varchar(500)=NULL,
@DateOfBirth		date=NULL,
@Gender				char(1)=NULL,
@State				varchar(50)=NULL,
@City				varchar(50)=NULL,
@Concession			decimal(2, 2)=NULL,
@Referral			varchar(150)=NULL,
@DateOfAdmission	datetime=NULL,
@DateOfDischarge	datetime=NULL
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	IF NOT EXISTS(SELECT * FROM [dbo].[tblPatient] WHERE PatientId=@PatientId)
	BEGIN
		INSERT INTO [dbo].[tblPatient](
								Name,
								Age,
								Address,
								DateOfBirth,
								Gender,
								State,
								City,
								Concession,
								Referral,
								DateOfAdmission,
								DateOfDischarge

								)
					VALUES
								(
								@Name,
								@Age,
								@Address,
								@DateOfBirth,
								@Gender,
								@State,
								@City,
								@Concession,
								@Referral,
								@DateOfAdmission,
								@DateOfDischarge
								)

	END
	ELSE
	BEGIN
		UPDATE [dbo].[tblPatient]
		SET		Name				=@Name,
				Age					=@Age,
				Address				=@Address,
				DateOfBirth			=@DateOfBirth,
				Gender				=@Gender,
				State				=@State,
				City				=@City,
				Concession			=@Concession,
				Referral			=@Referral,
				DateOfAdmission		=@DateOfAdmission,
				DateOfDischarge		=@DateOfDischarge
		WHERE PatientId=@PatientId
	END

END

GO
/****** Object:  StoredProcedure [dbo].[usp_StaffDetails]    Script Date: 25-03-2015 23:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_StaffDetails]
	-- Add the parameters for the stored procedure here
@StaffId			int=Null,
@Name				varchar(100)=Null,
@Country			int=Null,
@State				int=Null,
@City				int=Null,
@Address			varchar(500)=Null,
@Photo				varbinary(MAX)=Null,
@MobileNo			varchar(50)=Null,
@StaffType			varchar(20)=Null,
@DateOfBirth		date=Null,
@DateJoinHospital	datetime=Null,
@Status				varchar(20)=Null
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	IF NOT EXISTS(SELECT * FROM [dbo].[tblStaff] WHERE StaffId=@StaffId)
	BEGIN
		INSERT INTO [dbo].[tblStaff](
								Name,
								Country,
								State,
								City,
								Address,
								Photo,
								MobileNo,
								StaffType,
								DateOfBirth,
								DateJoinHospital,
								Status
									
								)
					VALUES
								(
								@Name,
								@Country,
								@State,
								@City,
								@Address,
								@Photo,
								@MobileNo,
								@StaffType,
								@DateOfBirth,
								@DateJoinHospital,
								@Status
								)

	END
	ELSE
	BEGIN
		UPDATE [dbo].[tblStaff]
		SET		Name				=@Name,
				Country				=@Country,
				State				=@State,
				City				=@City,
				Address				=@Address,
				Photo				=@Photo,
				MobileNo			=@MobileNo,
				StaffType			=@StaffType,
				DateOfBirth			=@DateOfBirth,
				DateJoinHospital	=@DateJoinHospital,
				Status				=@Status
		WHERE StaffId=@StaffId
	END

END

GO
/****** Object:  StoredProcedure [dbo].[usp_WardDetails]    Script Date: 25-03-2015 23:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_WardDetails]
	-- Add the parameters for the stored procedure here
@WardId				int=Null,
@WardNo				varchar(10)=Null,
@WardName			varchar(50)=Null,
@WardType			varchar(50)=Null,
@NoOfBed			int=Null,
@BedCharges			int=Null

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	IF NOT EXISTS(SELECT * FROM [dbo].[tblWard] WHERE WardId=@WardId)
	BEGIN
		INSERT INTO [dbo].[tblWard](
								WardNo,
								WardName,
								WardType,
								NoOfBed,
								BedCharges
								)
					VALUES
								(
								@WardNo,
								@WardName,
								@WardType,
								@NoOfBed,
								@BedCharges
								)

	END
	ELSE
	BEGIN
		UPDATE [dbo].[tblWard]
		SET		WardNo			=@WardNo,
				WardName		=@WardName,
				WardType		=@WardType,
				NoOfBed			=@NoOfBed,
				BedCharges		=@BedCharges
		WHERE WardId=@WardId
	END

END

GO
/****** Object:  StoredProcedure [dbo].[usp_WardPatientDetails]    Script Date: 25-03-2015 23:52:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_WardPatientDetails]
	-- Add the parameters for the stored procedure here
@PWardId			int=Null,
@WardId				int=Null,
@PatientId			int=Null,
@BedNo				int=Null,
@DateOfAdmit		datetime=Null,
@DateOfDisch		datetime=Null,
@Reason				varchar(150)=Null

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	IF NOT EXISTS(SELECT * FROM [dbo].[tblWardPatient] WHERE PWardId=@PWardId)
	BEGIN
		INSERT INTO [dbo].[tblWardPatient](
								WardId,
								PatientId,
								BedNo,
								DateOfAdmit,
								DateOfDisch,
								Reason

								)
					VALUES
								(
								@WardId,
								@PatientId,
								@BedNo,
								@DateOfAdmit,
								@DateOfDisch,
								@Reason
								)

	END
	ELSE
	BEGIN
		UPDATE [dbo].[tblWardPatient]
		SET		WardId			=@WardId,
				PatientId		=@PatientId,
				BedNo			=@BedNo,
				DateOfAdmit		=@DateOfAdmit,
				DateOfDisch		=@DateOfDisch,
				Reason			=@Reason
		WHERE PWardId=@PWardId
	END

END

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

