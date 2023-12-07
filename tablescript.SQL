Use master
GO
Create Database HIMS
Go
Use HIMS
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessRights](
	[AccessRightID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[FunctionalityID] [bigint] NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
	PRIMARY KEY CLUSTERED 
	(
		[AccessRightID] ASC
	) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admission](
	[AdmissionId] [bigint] IDENTITY(1,1) NOT NULL,
	[PatientCategoryID] [int] NOT NULL,
	[PatientId] [bigint] NOT NULL,
	[UnitId] [int] NOT NULL,
	[DoctorId] [bigint] NOT NULL,
	[AdmissionDate] [datetime] NOT NULL,
	[IPDNumber] [bigint] NOT NULL,
	[RelativeName] [nvarchar](200) NULL,
	[RelationId] [int] NULL,
	[BedId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[IsMLC] [bit] NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
	CONSTRAINT [PK__Admissio__C97EEC427DFE4C43] PRIMARY KEY CLUSTERED 
	(
		[AdmissionId] ASC
	) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Advance](
	[AdvanceId] [bigint] IDENTITY(1,1) NOT NULL,
	[PatientId] [bigint] NOT NULL,
	[AdvAmount] [numeric](18, 2) NULL,
	[Used] [numeric](18, 2) NULL,
	[Refund] [numeric](18, 2) NULL,
	[Balance] [numeric](18, 2) NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
	PRIMARY KEY CLUSTERED 
	(
		[AdvanceId] ASC
	) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationFunctionality](
	[FunctionalityID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Level] [int] NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[FunctionalityID] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bed](
	[BedId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[WardId] [int] NULL,
	[RoomId] [int] NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__BedId__A8A7104054C04A45] PRIMARY KEY CLUSTERED 
(
	[BedId] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[BillId] [bigint] IDENTITY(1,1) NOT NULL,
	[BillDateTime] [datetime] NULL,
	[VisitId] [bigint] NULL,
	[AdmissionId] [bigint] NULL,
	[TotalAmount] [numeric](18, 2) NULL,
	[AdvanceAmount] [numeric](18, 2) NULL,
	[Concession] [numeric](18, 2) NULL,
	[FinalBillAmount] [numeric](18, 2) NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Bill__11F2FC6A9060F41C] PRIMARY KEY CLUSTERED 
(
	[BillId] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Charge](
	[ChargeId] [bigint] IDENTITY(1,1) NOT NULL,
	[VisitId] [bigint] NULL,
	[AdmissionId] [bigint] NULL,
	[ServiceId] [bigint] NOT NULL,
	[Rate] [numeric](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Amount] [numeric](18, 2) NOT NULL,
	[Concession] [numeric](18, 2) NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Charge__17FC361B131A7AE4] PRIMARY KEY CLUSTERED 
(
	[ChargeId] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[StateID] [int] NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__City__F2D21A96E551186A] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[NationalityID] [int] NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Country__10D160BF12515864] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsClinical] [bit] NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Departme__BF50FAFB2901D316] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discharge](
	[DischargeId] [bigint] IDENTITY(1,1) NOT NULL,
	[AdmissionId] [bigint] NOT NULL,
	[DoctorId] [bigint] NOT NULL,
	[DischargeDate] [datetime] NOT NULL,
	[DischargeNotes] [nvarchar](2000) NULL,
	[FileAttachedPath] [nvarchar](500) NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Discharg__CBC0800799D57BD3] PRIMARY KEY CLUSTERED 
(
	[DischargeId] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[DoctorID] [bigint] IDENTITY(1,1) NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[FirstName] [nvarchar](150) NOT NULL,
	[MiddleName] [nvarchar](150) NULL,
	[LastName] [nvarchar](150) NOT NULL,
	[Qualification] [nvarchar](150) NULL,
	[GenderID] [int] NULL,
	[DateOfBirth] [date] NULL,
	[ContactNo1] [nvarchar](15) NULL,
	[ContactNo2] [nvarchar](15) NULL,
	[Email] [nvarchar](100) NULL,
	[AddressLine1] [nvarchar](150) NULL,
	[AddressLine2] [nvarchar](150) NULL,
	[Pincode] [nvarchar](10) NULL,
	[CityID] [int] NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Doctor__2DC00EDF448A8A51] PRIMARY KEY CLUSTERED 
(
	[DoctorID] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[GenderID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Gender__4E24E81738FADBDD] PRIMARY KEY CLUSTERED 
(
	[GenderID] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InsuranceCompany](
	[CompanyId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nationality](
	[NationalityID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__National__F628E7A4F44C1021] PRIMARY KEY CLUSTERED 
(
	[NationalityID] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[PatientID] [bigint] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](150) NOT NULL,
	[MiddleName] [nvarchar](150) NULL,
	[LastName] [nvarchar](150) NOT NULL,
	[GenderID] [int] NOT NULL,
	[DateOfBirth] [date] NULL,
	[ContactNo1] [nvarchar](15) NULL,
	[ContactNo2] [nvarchar](15) NULL,
	[Email] [nvarchar](100) NULL,
	[AddressLine1] [nvarchar](150) NULL,
	[AddressLine2] [nvarchar](150) NULL,
	[Pincode] [nvarchar](10) NULL,
	[CityID] [int] NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PatientID] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientCategory](
	[PatientCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__PatientC__F659E81CA9686ED9] PRIMARY KEY CLUSTERED 
(
	[PatientCategoryID] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relation](
	[RelationID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Relation__E2DA1695492E1EFE] PRIMARY KEY CLUSTERED 
(
	[RelationID] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[RoomId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[WardID] [int] NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Room__32863939FACFA302] PRIMARY KEY CLUSTERED 
(
	[RoomId] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ServiceId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[ServiceCategoryId] [int] NOT NULL,
	[Rate] [numeric](18, 2) NOT NULL,
	[ServiceTypeId] [int] NOT NULL,
	[CompanyId] [int] NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Service__C51BB00A08435475] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceCategory](
	[ServiceCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__ServiceC__E4CC7EAA0B2769CC] PRIMARY KEY CLUSTERED 
(
	[ServiceCategoryId] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceType](
	[ServiceTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ServiceTypeID] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[StaffID] [bigint] IDENTITY(1,1) NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[FirstName] [nvarchar](150) NOT NULL,
	[MiddleName] [nvarchar](150) NULL,
	[LastName] [nvarchar](150) NOT NULL,
	[GenderID] [int] NOT NULL,
	[DateOfBirth] [date] NULL,
	[ContactNo1] [nvarchar](15) NULL,
	[ContactNo2] [nvarchar](15) NULL,
	[Email] [nvarchar](100) NULL,
	[AddressLine1] [nvarchar](150) NULL,
	[AddressLine2] [nvarchar](150) NULL,
	[Pincode] [nvarchar](10) NULL,
	[CityID] [int] NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Staff__96D4AAF72C6A8DDE] PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[StateID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CountryID] [int] NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__State__C3BA3B5A33A88EFB] PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[UnitID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Unit__44F5EC95BCB1E006] PRIMARY KEY CLUSTERED 
(
	[UnitID] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [bigint] IDENTITY(1,1) NOT NULL,
	[StaffID] [bigint] NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__User__1788CCACE974F580] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Visit](
	[VisitId] [bigint] IDENTITY(1,1) NOT NULL,
	[PatientCategoryID] [int] NOT NULL,
	[PatientId] [bigint] NOT NULL,
	[DoctorID] [bigint] NOT NULL,
	[UnitId] [int] NOT NULL,
	[VisitDate] [datetime] NOT NULL,
	[OPDNumber] [bigint] NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Visit__4D3AA1DE33E909FD] PRIMARY KEY CLUSTERED 
(
	[VisitId] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ward](
	[WardID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[UnitId] [int] NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Ward__C6BD9BEA33313C46] PRIMARY KEY CLUSTERED 
(
	[WardID] ASC
) 
) 
GO
CREATE TABLE [dbo].[Prescription](
	[PrescriptionId] [bigint] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[VisitId] [bigint] NOT NULL,
	[Path] Varchar(500),
	[Status] [bit] NULL DEFAULT (1),
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL DEFAULT (getdate()),
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL DEFAULT (getdate())
)
ALTER TABLE [dbo].[Prescription]  ADD CONSTRAINT [FK_Prescription_Visit] FOREIGN KEY([VisitId])
REFERENCES [dbo].[Visit] ([VisitId])
GO
CREATE TABLE [dbo].[ClinicalNote](
	[ClinicalNoteId] [bigint] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[AdmissionId] [bigint] NOT NULL,
	[Path] Varchar(500),
	[Status] [bit] NULL DEFAULT (1),
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL DEFAULT (getdate()),
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL DEFAULT (getdate())
)
ALTER TABLE [dbo].[ClinicalNote]  ADD CONSTRAINT [FK_ClinicalNote_Admission] FOREIGN KEY([AdmissionId])
REFERENCES [dbo].[Admission] ([AdmissionId])
ALTER TABLE [dbo].[AccessRights] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[AccessRights] ADD  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[AccessRights] ADD  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Admission] ADD  CONSTRAINT [DF__Admission__Admis__18B6AB08]  DEFAULT (getdate()) FOR [AdmissionDate]
GO
ALTER TABLE [dbo].[Admission] ADD  CONSTRAINT [DF__Admission__Statu__19AACF41]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Admission] ADD  CONSTRAINT [DF__Admission__Added__1A9EF37A]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Admission] ADD  CONSTRAINT [DF__Admission__Updat__1B9317B3]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Advance] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Advance] ADD  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Advance] ADD  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[ApplicationFunctionality] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[ApplicationFunctionality] ADD  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[ApplicationFunctionality] ADD  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Bed] ADD  CONSTRAINT [DF__BedId__Status__0EF836A4]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Bed] ADD  CONSTRAINT [DF__BedId__AddedDate__0FEC5ADD]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Bed] ADD  CONSTRAINT [DF__BedId__UpdatedDa__10E07F16]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Bill] ADD  CONSTRAINT [DF__Bill__BillDateTi__29E1370A]  DEFAULT (getdate()) FOR [BillDateTime]
GO
ALTER TABLE [dbo].[Bill] ADD  CONSTRAINT [DF__Bill__Status__2AD55B43]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Bill] ADD  CONSTRAINT [DF__Bill__AddedDateT__2BC97F7C]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Bill] ADD  CONSTRAINT [DF__Bill__UpdatedDat__2CBDA3B5]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Charge] ADD  CONSTRAINT [DF__Charge__Status__2F9A1060]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Charge] ADD  CONSTRAINT [DF__Charge__AddedDat__308E3499]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Charge] ADD  CONSTRAINT [DF__Charge__UpdatedD__318258D2]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[City] ADD  CONSTRAINT [DF__City__Status__02FC7413]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[City] ADD  CONSTRAINT [DF__City__AddedDateT__03F0984C]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[City] ADD  CONSTRAINT [DF__City__UpdatedDat__04E4BC85]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF__Country__Status__71D1E811]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF__Country__AddedDa__72C60C4A]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF__Country__Updated__73BA3083]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Department] ADD  CONSTRAINT [DF__Departmen__Statu__1F98B2C1]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Department] ADD  CONSTRAINT [DF__Departmen__Added__208CD6FA]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Department] ADD  CONSTRAINT [DF__Departmen__Updat__2180FB33]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Discharge] ADD  CONSTRAINT [DF__Discharge__Disch__22401542]  DEFAULT (getdate()) FOR [DischargeDate]
GO
ALTER TABLE [dbo].[Discharge] ADD  CONSTRAINT [DF__Discharge__Statu__2334397B]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Discharge] ADD  CONSTRAINT [DF__Discharge__Added__24285DB4]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Discharge] ADD  CONSTRAINT [DF__Discharge__Updat__251C81ED]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Doctor] ADD  CONSTRAINT [DF__Doctor__Status__2739D489]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Doctor] ADD  CONSTRAINT [DF__Doctor__AddedDat__282DF8C2]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Doctor] ADD  CONSTRAINT [DF__Doctor__UpdatedD__29221CFB]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
GO
ALTER TABLE [dbo].[Gender] ADD  CONSTRAINT [DF__Gender__Status__4BAC3F29]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Gender] ADD  CONSTRAINT [DF__Gender__AddedDat__4CA06362]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Gender] ADD  CONSTRAINT [DF__Gender__UpdatedD__4D94879B]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[InsuranceCompany] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[InsuranceCompany] ADD  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[InsuranceCompany] ADD  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Nationality] ADD  CONSTRAINT [DF__Nationali__Statu__5070F446]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Nationality] ADD  CONSTRAINT [DF__Nationali__Added__5165187F]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Nationality] ADD  CONSTRAINT [DF__Nationali__Updat__52593CB8]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Patient] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Patient] ADD  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Patient] ADD  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[PatientCategory] ADD  CONSTRAINT [DF__PatientCa__Statu__46E78A0C]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[PatientCategory] ADD  CONSTRAINT [DF__PatientCa__Added__47DBAE45]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[PatientCategory] ADD  CONSTRAINT [DF__PatientCa__Updat__48CFD27E]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Relation] ADD  CONSTRAINT [DF__Relation__Status__13F1F5EB]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Relation] ADD  CONSTRAINT [DF__Relation__AddedD__14E61A24]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Relation] ADD  CONSTRAINT [DF__Relation__Update__15DA3E5D]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Room] ADD  CONSTRAINT [DF__Room__Status__0A338187]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Room] ADD  CONSTRAINT [DF__Room__AddedDateT__0B27A5C0]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Room] ADD  CONSTRAINT [DF__Room__UpdatedDat__0C1BC9F9]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Service] ADD  CONSTRAINT [DF__Service__Status__57DD0BE4]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Service] ADD  CONSTRAINT [DF__Service__AddedDa__58D1301D]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Service] ADD  CONSTRAINT [DF__Service__Updated__59C55456]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[ServiceCategory] ADD  CONSTRAINT [DF__ServiceCa__Statu__531856C7]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[ServiceCategory] ADD  CONSTRAINT [DF__ServiceCa__Added__540C7B00]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[ServiceCategory] ADD  CONSTRAINT [DF__ServiceCa__Updat__55009F39]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[ServiceType] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[ServiceType] ADD  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[ServiceType] ADD  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Staff] ADD  CONSTRAINT [DF__Staff__Status__3F115E1A]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Staff] ADD  CONSTRAINT [DF__Staff__AddedDate__40058253]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Staff] ADD  CONSTRAINT [DF__Staff__UpdatedDa__40F9A68C]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[State] ADD  CONSTRAINT [DF__State__Status__6383C8BA]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[State] ADD  CONSTRAINT [DF__State__AddedDate__6477ECF3]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[State] ADD  CONSTRAINT [DF__State__UpdatedDa__656C112C]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Unit] ADD  CONSTRAINT [DF__Unit__Status__5535A963]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Unit] ADD  CONSTRAINT [DF__Unit__AddedDateT__5629CD9C]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Unit] ADD  CONSTRAINT [DF__Unit__UpdatedDat__571DF1D5]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF__User__Status__45BE5BA9]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF__User__AddedDateT__46B27FE2]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF__User__UpdatedDat__47A6A41B]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Visit] ADD  CONSTRAINT [DF__Visit__VisitDate__607251E5]  DEFAULT (getdate()) FOR [VisitDate]
GO
ALTER TABLE [dbo].[Visit] ADD  CONSTRAINT [DF__Visit__Status__6166761E]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Visit] ADD  CONSTRAINT [DF__Visit__AddedDate__625A9A57]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Visit] ADD  CONSTRAINT [DF__Visit__UpdatedDa__634EBE90]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Ward] ADD  CONSTRAINT [DF__Ward__Status__056ECC6A]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Ward] ADD  CONSTRAINT [DF__Ward__AddedDateT__0662F0A3]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Ward] ADD  CONSTRAINT [DF__Ward__UpdatedDat__075714DC]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[AccessRights]  WITH CHECK ADD  CONSTRAINT [FK_AccessRights_ApplicationFunctionality] FOREIGN KEY([FunctionalityID])
REFERENCES [dbo].[ApplicationFunctionality] ([FunctionalityID])
GO
ALTER TABLE [dbo].[AccessRights] CHECK CONSTRAINT [FK_AccessRights_ApplicationFunctionality]
GO
ALTER TABLE [dbo].[AccessRights]  WITH CHECK ADD  CONSTRAINT [FK_AccessRights_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[AccessRights] CHECK CONSTRAINT [FK_AccessRights_User]
GO
ALTER TABLE [dbo].[Admission]  WITH CHECK ADD  CONSTRAINT [FK_Admission_BedId] FOREIGN KEY([BedId])
REFERENCES [dbo].[Bed] ([BedId])
GO
ALTER TABLE [dbo].[Admission] CHECK CONSTRAINT [FK_Admission_BedId]
GO
ALTER TABLE [dbo].[Admission]  WITH CHECK ADD  CONSTRAINT [FK_Admission_Doctor] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Doctor] ([DoctorID])
GO
ALTER TABLE [dbo].[Admission] CHECK CONSTRAINT [FK_Admission_Doctor]
GO
ALTER TABLE [dbo].[Admission]  WITH CHECK ADD  CONSTRAINT [FK_Admission_InsuranceCompany] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[InsuranceCompany] ([CompanyId])
GO
ALTER TABLE [dbo].[Admission] CHECK CONSTRAINT [FK_Admission_InsuranceCompany]
GO
ALTER TABLE [dbo].[Admission]  WITH CHECK ADD  CONSTRAINT [FK_Admission_Patient] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patient] ([PatientID])
GO
ALTER TABLE [dbo].[Admission] CHECK CONSTRAINT [FK_Admission_Patient]
GO
ALTER TABLE [dbo].[Admission]  WITH CHECK ADD  CONSTRAINT [FK_Admission_PatientCategory] FOREIGN KEY([PatientCategoryID])
REFERENCES [dbo].[PatientCategory] ([PatientCategoryID])
GO
ALTER TABLE [dbo].[Admission] CHECK CONSTRAINT [FK_Admission_PatientCategory]
GO
ALTER TABLE [dbo].[Admission]  WITH CHECK ADD  CONSTRAINT [FK_Admission_Relation] FOREIGN KEY([RelationId])
REFERENCES [dbo].[Relation] ([RelationID])
GO
ALTER TABLE [dbo].[Admission] CHECK CONSTRAINT [FK_Admission_Relation]
GO
ALTER TABLE [dbo].[Admission]  WITH CHECK ADD  CONSTRAINT [FK_Admission_Unit] FOREIGN KEY([UnitId])
REFERENCES [dbo].[Unit] ([UnitID])
GO
ALTER TABLE [dbo].[Admission] CHECK CONSTRAINT [FK_Admission_Unit]
GO
ALTER TABLE [dbo].[Advance]  WITH CHECK ADD  CONSTRAINT [FK_Advance_Patient] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patient] ([PatientID])
GO
ALTER TABLE [dbo].[Advance] CHECK CONSTRAINT [FK_Advance_Patient]
GO
ALTER TABLE [dbo].[Bed]  WITH CHECK ADD  CONSTRAINT [FK_BedId_Room] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Room] ([RoomId])
GO
ALTER TABLE [dbo].[Bed] CHECK CONSTRAINT [FK_BedId_Room]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Admission1] FOREIGN KEY([AdmissionId])
REFERENCES [dbo].[Admission] ([AdmissionId])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_Admission1]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Visit] FOREIGN KEY([VisitId])
REFERENCES [dbo].[Visit] ([VisitId])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_Visit]
GO
ALTER TABLE [dbo].[Charge]  WITH CHECK ADD  CONSTRAINT [FK_Charge_Admission] FOREIGN KEY([AdmissionId])
REFERENCES [dbo].[Admission] ([AdmissionId])
GO
ALTER TABLE [dbo].[Charge] CHECK CONSTRAINT [FK_Charge_Admission]
GO
ALTER TABLE [dbo].[Charge]  WITH CHECK ADD  CONSTRAINT [FK_Charge_Service] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Service] ([ServiceId])
GO
ALTER TABLE [dbo].[Charge] CHECK CONSTRAINT [FK_Charge_Service]
GO
ALTER TABLE [dbo].[Charge]  WITH CHECK ADD  CONSTRAINT [FK_Charge_Visit] FOREIGN KEY([VisitId])
REFERENCES [dbo].[Visit] ([VisitId])
GO
ALTER TABLE [dbo].[Charge] CHECK CONSTRAINT [FK_Charge_Visit]
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_City_State] FOREIGN KEY([StateID])
REFERENCES [dbo].[State] ([StateID])
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_City_State]
GO
ALTER TABLE [dbo].[Country]  WITH CHECK ADD  CONSTRAINT [FK_Country_Nationality] FOREIGN KEY([NationalityID])
REFERENCES [dbo].[Nationality] ([NationalityID])
GO
ALTER TABLE [dbo].[Country] CHECK CONSTRAINT [FK_Country_Nationality]
GO
ALTER TABLE [dbo].[Discharge]  WITH CHECK ADD  CONSTRAINT [FK_Discharge_Admission] FOREIGN KEY([AdmissionId])
REFERENCES [dbo].[Admission] ([AdmissionId])
GO
ALTER TABLE [dbo].[Discharge] CHECK CONSTRAINT [FK_Discharge_Admission]
GO
ALTER TABLE [dbo].[Discharge]  WITH CHECK ADD  CONSTRAINT [FK_Discharge_Doctor] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Doctor] ([DoctorID])
GO
ALTER TABLE [dbo].[Discharge] CHECK CONSTRAINT [FK_Discharge_Doctor]
GO
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_City] FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([CityID])
GO
ALTER TABLE [dbo].[Doctor] CHECK CONSTRAINT [FK_Doctor_City]
GO
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
ALTER TABLE [dbo].[Doctor] CHECK CONSTRAINT [FK_Doctor_Department]
GO
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_Gender] FOREIGN KEY([GenderID])
REFERENCES [dbo].[Gender] ([GenderID])
GO
ALTER TABLE [dbo].[Doctor] CHECK CONSTRAINT [FK_Doctor_Gender]
GO
GO
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_Patient_City] FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([CityID])
GO
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Patient_City]
GO
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_Patient_Gender] FOREIGN KEY([GenderID])
REFERENCES [dbo].[Gender] ([GenderID])
GO
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Patient_Gender]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_Ward] FOREIGN KEY([WardID])
REFERENCES [dbo].[Ward] ([WardID])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_Ward]
GO
ALTER TABLE [dbo].[Service]  WITH CHECK ADD  CONSTRAINT [FK_Service_InsuranceCompany] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[InsuranceCompany] ([CompanyId])
GO
ALTER TABLE [dbo].[Service] CHECK CONSTRAINT [FK_Service_InsuranceCompany]
GO
ALTER TABLE [dbo].[Service]  WITH CHECK ADD  CONSTRAINT [FK_Service_ServiceCategory] FOREIGN KEY([ServiceCategoryId])
REFERENCES [dbo].[ServiceCategory] ([ServiceCategoryId])
GO
ALTER TABLE [dbo].[Service] CHECK CONSTRAINT [FK_Service_ServiceCategory]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_City] FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([CityID])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_City]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Department]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Gender] FOREIGN KEY([GenderID])
REFERENCES [dbo].[Gender] ([GenderID])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Gender]
GO
ALTER TABLE [dbo].[State]  WITH CHECK ADD  CONSTRAINT [FK_State_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[State] CHECK CONSTRAINT [FK_State_Country]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Staff] FOREIGN KEY([StaffID])
REFERENCES [dbo].[Staff] ([StaffID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Staff]
GO
ALTER TABLE [dbo].[Visit]  WITH CHECK ADD  CONSTRAINT [FK_Visit_Doctor] FOREIGN KEY([DoctorID])
REFERENCES [dbo].[Doctor] ([DoctorID])
GO
ALTER TABLE [dbo].[Visit] CHECK CONSTRAINT [FK_Visit_Doctor]
GO
ALTER TABLE [dbo].[Visit]  WITH CHECK ADD  CONSTRAINT [FK_Visit_Patient] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patient] ([PatientID])
GO
ALTER TABLE [dbo].[Visit] CHECK CONSTRAINT [FK_Visit_Patient]
GO
ALTER TABLE [dbo].[Visit]  WITH CHECK ADD  CONSTRAINT [FK_Visit_PatientCategory] FOREIGN KEY([PatientCategoryID])
REFERENCES [dbo].[PatientCategory] ([PatientCategoryID])
GO
ALTER TABLE [dbo].[Visit] CHECK CONSTRAINT [FK_Visit_PatientCategory]
GO
ALTER TABLE [dbo].[Visit]  WITH CHECK ADD  CONSTRAINT [FK_Visit_Unit] FOREIGN KEY([UnitId])
REFERENCES [dbo].[Unit] ([UnitID])
GO
ALTER TABLE [dbo].[Visit] CHECK CONSTRAINT [FK_Visit_Unit]
GO
Create View View_ServiceDetails
AS
Select ST.Name As ServiceType,SC.Name As ServiceCategory,S.Name As ServiceName,Rate,CompanyId
from Service S
Inner Join ServiceCategory SC On S.ServiceCategoryId=SC.ServiceCategoryId
Inner Join ServiceType ST On S.[ServiceTypeID]=ST.[ServiceTypeID]
Go
Create View View_Patient
AS
Select [PatientID]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,g.Name As Gender
      ,[DateOfBirth]
      ,[ContactNo1]
      ,[ContactNo2]
      ,[Email]
      ,[AddressLine1]
      ,[AddressLine2]
      ,[Pincode]
	  ,C.Name As City
	  from Patient P
Inner Join Gender g
On P.GenderID=g.GenderID
Inner Join City C
On P.CityID=C.CityID
Go
Create View View_Doctor
AS
Select DoctorID
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
	  ,Qualification
	  ,dp.Name AS Department
      ,g.Name As Gender
      ,[DateOfBirth]
      ,[ContactNo1]
      ,[ContactNo2]
      ,[Email]
      ,[AddressLine1]
      ,[AddressLine2]
      ,[Pincode]
	  ,C.Name As City
	  from Doctor d
Inner Join Gender g
On d.GenderID=g.GenderID
Inner Join City C
On d.CityID=C.CityID
Inner Join Department dp
On d.DepartmentID=dp.DepartmentID
GO
Create View View_Staff
AS
Select StaffID
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
	  ,dp.Name AS Department
      ,g.Name As Gender
      ,[DateOfBirth]
      ,[ContactNo1]
      ,[ContactNo2]
      ,[Email]
      ,[AddressLine1]
      ,[AddressLine2]
      ,[Pincode]
	  ,C.Name As City
	  from Staff s
Inner Join Gender g
On s.GenderID=g.GenderID
Inner Join City C
On s.CityID=C.CityID
Inner Join Department dp
On s.DepartmentID=dp.DepartmentID

