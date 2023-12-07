SET NOCOUNT ON
Print 'Master Data Insert'
Insert Into PatientCategory(Name,AddedBy,UpdatedBy) Values ('Self',1,1)
Insert Into PatientCategory(Name,AddedBy,UpdatedBy) Values ('Company',1,1)
Insert Into PatientCategory(Name,AddedBy,UpdatedBy) Values ('Staff',1,1)
Insert Into PatientCategory(Name,AddedBy,UpdatedBy) Values ('StaffDependent',1,1)
GO
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Cardiology',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Gynaecology',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Medicine',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Nephrology',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Ophthalmology',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Orthopedic',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Paediatrics',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Physiotherapy',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Neurology',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Surgery',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Dental',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('ENT',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Administration',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Reception',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Billing',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Store',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Account',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Maintainance',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Bio-Medical',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Computer(IT)',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Pathology',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Radiology',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Nursing',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Pharmacy',0,1,1)
GO
Insert Into Gender(Name,AddedBy,UpdatedBy) Values ('Male',1,1)
Insert Into Gender(Name,AddedBy,UpdatedBy) Values ('Female',1,1)
GO
Insert Into InsuranceCompany(Name,AddedBy,UpdatedBy) Values ('Star Health',1,1)
Insert Into InsuranceCompany(Name,AddedBy,UpdatedBy) Values ('Vidal Healthcare',1,1)
Insert Into InsuranceCompany(Name,AddedBy,UpdatedBy) Values ('Aditya Birla',1,1)
Insert Into InsuranceCompany(Name,AddedBy,UpdatedBy) Values ('HDFC Ergo',1,1)
Insert Into InsuranceCompany(Name,AddedBy,UpdatedBy) Values ('ICICI Lombard',1,1)
Insert Into InsuranceCompany(Name,AddedBy,UpdatedBy) Values ('The oriental Insurance company',1,1)
Insert Into InsuranceCompany(Name,AddedBy,UpdatedBy) Values ('Care Health Insurance',1,1)
GO
Insert Into Nationality(Name,AddedBy,UpdatedBy) Values ('Indian',1,1)
GO
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Self',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Spouse',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Child',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Friend',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Father',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Mother',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Son',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Brother',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Sister',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Daughter',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Sister In Law',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Brother In Law',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Grand Father',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Grand Mother',1,1)
GO
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Cardiology',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Gynaecology',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Medicine',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Nephrology',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Ophthalmology',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Orthopedic',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Paediatrics',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Physiotherapy',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Neurology',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Surgery',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Dental',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('ENT',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Pathology',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Radiology',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Nursing',1,1)
GO
Insert Into Unit(Name,AddedBy,UpdatedBy) Values ('Unit 1',1,1)
Insert Into Unit(Name,AddedBy,UpdatedBy) Values ('Unit 2',1,1)
Insert Into Unit(Name,AddedBy,UpdatedBy) Values ('Unit 3',1,1)
Insert Into Unit(Name,AddedBy,UpdatedBy) Values ('Unit 4',1,1)
Insert Into Unit(Name,AddedBy,UpdatedBy) Values ('Unit 5',1,1)
GO
Insert Into Ward(Name,UnitId,AddedBy,UpdatedBy) Values ('Geneal Ward',1,1,1)
Insert Into Ward(Name,UnitId,AddedBy,UpdatedBy) Values ('Male Ward',1,1,1)
Insert Into Ward(Name,UnitId,AddedBy,UpdatedBy) Values ('Female Ward',1,1,1)
Insert Into Ward(Name,UnitId,AddedBy,UpdatedBy) Values ('pediatric ward',1,1,1)
Insert Into Ward(Name,UnitId,AddedBy,UpdatedBy) Values ('Special Ward',1,1,1)
Insert Into Ward(Name,UnitId,AddedBy,UpdatedBy) Values ('Semi Special ward',1,1,1)
Insert Into Ward(Name,UnitId,AddedBy,UpdatedBy) Values ('Geneal Ward II',1,1,1)
GO
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 1',5,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 2',5,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 3',5,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 4',5,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 5',5,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 6',5,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 7',5,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 8',6,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 9',6,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 10',6,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 11',7,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 12',7,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 13',7,1,1)
GO
--------------Bed
Declare @i INT=1
While (@i<=20)
BEGIN
	Insert Into Bed(Name,WardId,RoomId,AddedBy,UpdatedBy) Values ('Bed-'+Convert(varchar(5),@i),1,NULL,1,1)
	--Select  @i
	Set @i=@i+1
END
go
Declare @i INT=1
While (@i<=20)
BEGIN
	Insert Into Bed(Name,WardId,RoomId,AddedBy,UpdatedBy) Values ('Bed-'+Convert(varchar(5),@i),2,NULL,1,1)
	--Select  @i
	Set @i=@i+1
END
Go
Declare @i INT=1
While (@i<=5)
BEGIN
	Insert Into Bed(Name,WardId,RoomId,AddedBy,UpdatedBy) Values ('Bed-'+Convert(varchar(5),@i),NULL,1,1,1)
	--Select  @i
	Set @i=@i+1
END
go
Declare @i INT=1
While (@i<=5)
BEGIN
	Insert Into Bed(Name,WardId,RoomId,AddedBy,UpdatedBy) Values ('Bed-'+Convert(varchar(5),@i),NULL,2,1,1)
	--Select  @i
	Set @i=@i+1
END
GO
Insert Into Nationality(Name,AddedBy,UpdatedBy) Values ('Indian',1,1)
GO
Insert Into Country(Name,NationalityId,AddedBy,UpdatedBy) Values ('India',1,1,1)
GO
Insert Into State(Name,CountryID,AddedBy,UpdatedBy) Values ('maharashtra',1,1,1)
GO
Insert Into City(Name,StateID,AddedBy,UpdatedBy) Values ('Pune',1,1,1)
Insert Into City(Name,StateID,AddedBy,UpdatedBy) Values ('Nagpur',1,1,1)
Insert Into City(Name,StateID,AddedBy,UpdatedBy) Values ('Mumbai',1,1,1)
Insert Into City(Name,StateID,AddedBy,UpdatedBy) Values ('Nasik',1,1,1)
Insert Into City(Name,StateID,AddedBy,UpdatedBy) Values ('Aurangabad',1,1,1)
GO
Insert Into ServiceType(Name,AddedBy,UpdatedBy) Values ('OPD',1,1)
Insert Into ServiceType(Name,AddedBy,UpdatedBy) Values ('IPD-General',1,1)
Insert Into ServiceType(Name,AddedBy,UpdatedBy) Values ('IPD-Special',1,1)
Go
Print 'Staff Data Insert'
Declare @MinDeptID INT=(Select min(DepartmentId) from Department where IsClinical=0)
Declare @MaxDeptID INT=(Select Max(DepartmentId) from Department where IsClinical=0)

While (@MinDeptID<=@MaxDeptID)
BEGIN
        --Print @MinDeptID
		------------------Internal loop - Department wise Insert Records
		Declare @i INT=1
			While (@i<=10) ------------Per Dept 10 Staff
			BEGIN
	
			INSERT INTO [dbo].[Staff]
					   ([DepartmentID]
					   ,[FirstName]
					   ,[MiddleName]
					   ,[LastName]
					   ,[GenderID]
					   ,[DateOfBirth]
					   ,[ContactNo1]
					   ,[ContactNo2]
					   ,[Email]
					   ,[AddressLine1]	
					   ,[AddressLine2]
					   ,[Pincode]
					   ,[CityID]
					   ,[AddedBy]           
					   ,[UpdatedBy]
					  )
				 VALUES
					   (@MinDeptID
					   ,'SFname-'+Convert(varchar(5),@MinDeptID)+'-'+Convert(varchar(5),@i)	
					   ,'SMname-'+Convert(varchar(5),@MinDeptID)+'-'+Convert(varchar(5),@i)	
					   ,'SLname-'+Convert(varchar(5),@MinDeptID)+'-'+Convert(varchar(5),@i)
					   ,(Select Top 1 GenderID from Gender order by NEWID())
					   ,(Select GETDATE()-10000-( SELECT RAND()*(245-10)+10))
					   ,'1234567890'
					   ,'1234567890'
					   ,'SFname'+Convert(varchar(5),@MinDeptID)+'-'+Convert(varchar(5),@i)+'@gmail.com'      
					   ,'Address Line 1'
					   ,'Address Line 2'
					   ,'123456'
					   ,(Select Top 1 CityId from City order by NEWID())
					   ,1          
					   ,1)
         
				Set @i=@i+1
			END

	Set @MinDeptID=@MinDeptID+1
 END
 --------------------- Doctor
 Print 'Doctor Data Insert' 
GO
Declare @MinDeptID INT=(Select min(DepartmentId) from Department where IsClinical=1)
Declare @MaxDeptID INT=(Select Max(DepartmentId) from Department where IsClinical=1)
While (@MinDeptID<=@MaxDeptID)
BEGIN
        --Print @MinDeptID
		------------------Internal loop - Department wise Insert Records
		Declare @i INT=1
			While (@i<=3) ------------Per Dept 3 Doctors
			BEGIN
	
			INSERT INTO [dbo].[Doctor]
					   ([DepartmentID]
					   ,[FirstName]
					   ,[MiddleName]
					   ,[LastName]
					   ,[Qualification]
					   ,[GenderID]
					   ,[DateOfBirth]
					   ,[ContactNo1]
					   ,[ContactNo2]
					   ,[Email]
					   ,[AddressLine1]	
					   ,[AddressLine2]
					   ,[Pincode]
					   ,[CityID]
					   ,[AddedBy]           
					   ,[UpdatedBy]
					  )
				 VALUES
					   (@MinDeptID
					   ,'Dr.DFname-'+Convert(varchar(5),@MinDeptID)+'-'+Convert(varchar(5),@i)	
					   ,'DMname-'+Convert(varchar(5),@MinDeptID)+'-'+Convert(varchar(5),@i)	
					   ,'DLname-'+Convert(varchar(5),@MinDeptID)+'-'+Convert(varchar(5),@i)
					   ,'MBBS.MD.'
					   ,(Select Top 1 GenderID from Gender order by NEWID())
					   ,(Select GETDATE()-10000-( SELECT RAND()*(245-10)+10))
					   ,'1234567890'
					   ,'1234567890'
					   ,'DFname'+Convert(varchar(5),@MinDeptID)+Convert(varchar(5),@i)+'@gmail.com'      
					   ,'Address Line 1'
					   ,'Address Line 2'
					   ,'123456'
					   ,(Select Top 1 CityId from City order by NEWID())
					   ,1          
					   ,1)
         
				Set @i=@i+1
			END

	Set @MinDeptID=@MinDeptID+1
 END
 GO
 ---------------------------Service OPD
 Print 'Service Data Insert'
Create Table #Temp 
(ID Int Identity(1,1),
ServiceName varchar(200)) 
Insert Into #Temp Values 
('Consulatation')
,('Follow-up Consulatation')
,('Procedure')
,('Operation Charges')
,('Anesthesist Charges')
,('OT Charges')
GO
Declare @i INT=(Select Min(id) from #Temp)
Declare @ServiceName varchar(200) 
While (@i<=(Select Max(id) from #Temp))
BEGIN
        
		Set @ServiceName=(Select ServiceName From #Temp where ID= @i)
		--Print @ServiceName
			
			------------------Internal loop
			Declare @MinDeptID INT=(Select min(ServiceCategoryId) from ServiceCategory where Name Not In ('Pathology','Radiology','Nursing'))
			Declare @MaxDeptID INT=(Select Max(ServiceCategoryId) from ServiceCategory where Name Not In ('Pathology','Radiology','Nursing'))
			While (@MinDeptID<=@MaxDeptID)
			BEGIN
				 Insert Into Service (Name,ServiceCategoryId,Rate,ServiceTypeId,CompanyId,AddedBy,UpdatedBy)
				 Values (@ServiceName,@MinDeptID,200,1,NULL,1,1)  --ServiceTypeId- OPD
				Set @MinDeptID=@MinDeptID+1
			 END
		Set @i=@i+1
 END
 GO
  ------------------------Service IPD 
  Truncate Table #temp
Insert Into #Temp Values 
('Bed Charges')
,('Nursing Charges')
,('IPD Visit Charges')
,('Operation Charges')
,('Anesthesist Charges')
,('OT Charges')
,('O2 Charges')
,('Procedure')

--Select * from #Temp
--GO

Declare @i INT=(Select Min(id) from #Temp)
Declare @ServiceName varchar(200) 
While (@i<=(Select Max(id) from #Temp))
BEGIN
        
		Set @ServiceName=(Select ServiceName From #Temp where ID= @i)
		--Print @ServiceName
			
			------------------Internal loop
			Declare @MinDeptID INT=(Select min(ServiceCategoryId) from ServiceCategory where Name Not In ('Pathology','Radiology','Nursing'))
			Declare @MaxDeptID INT=(Select Max(ServiceCategoryId) from ServiceCategory where Name Not In ('Pathology','Radiology','Nursing'))
			While (@MinDeptID<=@MaxDeptID)
			BEGIN
				 Insert Into Service (Name,ServiceCategoryId,Rate,ServiceTypeId,CompanyId,AddedBy,UpdatedBy)
				 Values (@ServiceName,@MinDeptID,400,2,NULL,1,1)  --ServiceTypeId- IPD General
				 Insert Into Service (Name,ServiceCategoryId,Rate,ServiceTypeId,CompanyId,AddedBy,UpdatedBy)
				 Values (@ServiceName,@MinDeptID,600,3,NULL,1,1)  --ServiceTypeId- IPD Special
				Set @MinDeptID=@MinDeptID+1
			 END
		Set @i=@i+1
 END
-----------------------------------Service Pathology Test
Truncate Table #temp
Insert Into #Temp Values 
('SGOT (AST)')
,('SGPT (ALT)')
,('ALBUMIN')
,('WIDAL')
,('BILLIRUBIN TOTAL')
,('BILLIRUBIN DIRECT')
,('BLOOD GROUP')
,('PERIPHERAL SMEAR')
,('RETICULOCYTE COUNT')
,('TOTAL WBC COUNT')
,('CBC')
,('ZINC (SERUM / URINE)')
,('VITAMIN D 25 HYDROXY')
,('VITAMIN A')
,('UROBILINOGEN (URINE)')
,('BILIRUBIN (URINE)')

GO
Declare @i INT=(Select Min(id) from #Temp)
Declare @ServiceName varchar(200) 
While (@i<=(Select Max(id) from #Temp))
BEGIN
        
		Set @ServiceName=(Select ServiceName From #Temp where ID= @i)
		--Print @ServiceName
			
		
				 Declare @ServiceCategoryId INT=(Select ServiceCategoryId from ServiceCategory where Name In ('Pathology'))
				 Insert Into Service (Name,ServiceCategoryId,Rate,ServiceTypeId,CompanyId,AddedBy,UpdatedBy)
				 Values (@ServiceName,@ServiceCategoryId,300,1,NULL,1,1)  --ServiceTypeId- OPD
				 Insert Into Service (Name,ServiceCategoryId,Rate,ServiceTypeId,CompanyId,AddedBy,UpdatedBy)
				 Values (@ServiceName,@ServiceCategoryId,400,2,NULL,1,1)  --ServiceTypeId- IPD General
				 Insert Into Service (Name,ServiceCategoryId,Rate,ServiceTypeId,CompanyId,AddedBy,UpdatedBy)
				 Values (@ServiceName,@ServiceCategoryId,500,3,NULL,1,1)  --ServiceTypeId- IPD Special				
		Set @i=@i+1
 END
 
 
----------------------------Service Radiology Test
 Go
Truncate Table #temp
Insert Into #Temp Values 
('X-RAY')
,('CT Scan')
,('Sonography')

Declare @i INT=(Select Min(id) from #Temp)
Declare @ServiceName varchar(200) 
While (@i<=(Select Max(id) from #Temp))
BEGIN
        
		Set @ServiceName=(Select ServiceName From #Temp where ID= @i)
		--Print @ServiceName
			
		
				 Declare @ServiceCategoryId INT=(Select ServiceCategoryId from ServiceCategory where Name In ('Radiology'))
				 Insert Into Service (Name,ServiceCategoryId,Rate,ServiceTypeId,CompanyId,AddedBy,UpdatedBy)
				 Values (@ServiceName,@ServiceCategoryId,300,1,NULL,1,1)  --ServiceTypeId- OPD
				 Insert Into Service (Name,ServiceCategoryId,Rate,ServiceTypeId,CompanyId,AddedBy,UpdatedBy)
				 Values (@ServiceName,@ServiceCategoryId,400,2,NULL,1,1)  --ServiceTypeId- IPD General
				 Insert Into Service (Name,ServiceCategoryId,Rate,ServiceTypeId,CompanyId,AddedBy,UpdatedBy)
				 Values (@ServiceName,@ServiceCategoryId,500,3,NULL,1,1)  --ServiceTypeId- IPD Special				
		Set @i=@i+1
 END
 
----------------------------------Patient
  Print 'Patient Data Insert'
 GO
Declare @i INT=1
While (@i<=50000) 
BEGIN
	
	--print @i
	INSERT INTO [dbo].[Patient]
			([FirstName]
			,[MiddleName]
			,[LastName]
			,[GenderID]
			,[DateOfBirth]
			,[ContactNo1]
			,[ContactNo2]
			,[Email]
			,[AddressLine1]	
			,[AddressLine2]
			,[Pincode]
			,[CityID]
			,[AddedBy]           
			,[UpdatedBy]
			)
		VALUES
			(
			'PFname'+'_'+Convert(varchar(15),@i)	
			,'PMname'+'_'+Convert(varchar(15),@i)	
			,'PLname'+'_'+Convert(varchar(15),@i)
			,(Select Top 1 GenderID from Gender order by NEWID())
			,(Select GETDATE()-10000-( SELECT RAND()*(245-10)+10))
			,'1234567890'
			,'1234567890'
			,'PFname'+Convert(varchar(15),@i)+'@gmail.com'      
			,'Address Line 1'
			,'Address Line 2'
			,'123456'
			,(Select Top 1 CityId from City order by NEWID())
			,1          
			,1)
         
	Set @i=@i+1
END
-------------------------------Visit
  Print 'Visit Data Insert'
GO
Declare @i INT=1
While (@i<=10000)
BEGIN
         --Print @i
		 INSERT INTO [dbo].[Visit]
           ([PatientCategoryID]
           ,[PatientId]
           ,[DoctorID]
           ,[UnitId]
           ,[VisitDate]
           ,[OPDNumber]         
           ,[AddedBy]          
           ,[UpdatedBy]
           )
		VALUES
           ((Select Top 1 PatientCategoryId from PatientCategory order by NEWID())
           ,(Select Top 1 PatientId from Patient order by NEWID())
           ,(Select Top 1 DoctorID from Doctor order by NEWID())
           ,(Select Top 1 UnitId from Unit order by NEWID())
           ,(Select GETDATE()-300-( SELECT RAND()*(245-10)+10))
           ,@i
			,1
			,1	)
		 Set @i=@i+1
 END
 
 ---------------------------OPD First Record Per Visit
   Print 'OPD Charge Data Insert'

Declare @MinVisitId INT=(Select min(VisitId) from Visit)
Declare @MaxVisitId INT=(Select Max(VisitId) from Visit)
While (@MinVisitId<=@MaxVisitId)
BEGIN
        --Print @MinVisitId
		
		INSERT INTO [dbo].[Charge]
           ([VisitId]
           ,[AdmissionId]
           ,[ServiceId]
		   ,Rate
		   ,Amount
           ,[Quantity]  
		   ,[AddedBy]           
           ,[Updatedby])
		VALUES
           (@MinVisitId
           ,NULL
           ,(Select top 1 serviceid from Service where ServiceTypeId=1 order by NEWID())
		   ,0
		   ,0
           ,1
		   ,1
		   ,1
          )
       Set @MinVisitId=@MinVisitId+1
 END
  -----------Second record for Visit --2/3 Services for some visit
 Go
Declare @i INT=1
While (@i<=1500)
BEGIN
        --Print @i
		INSERT INTO [dbo].[Charge]
           ([VisitId]
           ,[AdmissionId]
           ,[ServiceId]
		   ,Rate
		   ,Amount
           ,[Quantity]  
		   ,[AddedBy]           
           ,[Updatedby])
		VALUES
           ((Select top 1 VisitId from Visit order by NEWID())
           ,NULL
           ,(Select top 1 serviceid from Service where ServiceTypeId=1 order by NEWID())
		   ,0
		   ,0
           ,1
		   ,1
		   ,1
          )
        Set @i=@i+1
 END
GO 
Update C
Set C.Rate=S.Rate
from Charge C
left join Service S
ON C.ServiceId=S.ServiceId
GO 
Update Charge Set Amount=Rate*Quantity 
GO 
Update Charge Set Concession=(Amount*10)/100       ----10% conession applied
-------------------------------------OPD Bill 
Print 'OPD Bill Data Insert'
Go
INSERT INTO [dbo].[Bill]
           ([VisitId]
           ,[AdmissionId]
           ,[TotalAmount]
		   ,Concession
           ,AddedBy          
           ,UpdatedBy)
Select VisitId,NULL As [AdmissionId],Sum(Amount) As TotalAmount,Sum(Concession) As Concession,1 As AddedBy,1 As UpdatedBy from Charge 
Group By VisitId
order by VisitId

Update Bill Set Concession=(TotalAmount*10)/100 ----10% conession applied
Update Bill Set FinalBillAmount=TotalAmount-Concession
-----------------------------Admission
Print 'Admission Data Insert'
GO
Declare @i INT=1
While (@i<=1000)
BEGIN
         --Print @i
		 INSERT INTO [dbo].Admission
           ([PatientCategoryID]
           ,[PatientId]
		   ,UnitId
           ,[DoctorID]           
           ,[AdmissionDate]
           ,[IPDNumber]
		   ,RelativeName
		   ,RelationId
		   ,BedId
		   ,CompanyId
		   ,IsMLC
           ,[AddedBy]          
           ,[UpdatedBy]
           )
		VALUES
           ((Select Top 1 PatientCategoryId from PatientCategory order by NEWID())
           ,(Select Top 1 PatientId from Patient order by NEWID())
		   ,(Select Top 1 UnitId from Unit order by NEWID())
           ,(Select Top 1 DoctorID from Doctor order by NEWID())           
           ,(Select GETDATE()-300-( SELECT RAND()*(245-10)+10))
           ,@i
		   ,'R Name-'+Convert(varchar(10),@i)
		   ,(Select Top 1 RelationID from Relation order by NEWID())
		   ,(Select Top 1 BedId from Bed order by NEWID())
		   ,(Select Top 1 CompanyId from InsuranceCompany order by NEWID())
		   ,0
		   ,1
		   ,1)
		 Set @i=@i+1
 END
--------------------------IPD -First Record Per Admission
GO
Print 'Admission Charge Data Insert'
Declare @MinAdmitId INT=(Select min(AdmissionId) from Admission)
Declare @MaxAdmitId INT=(Select Max(AdmissionId) from Admission)
While (@MinAdmitId<=@MaxAdmitId)
BEGIN
        --Print @MinAdmitId
		INSERT INTO [dbo].[Charge]
           ([VisitId]
           ,[AdmissionId]
           ,[ServiceId]
		   ,Rate
		   ,Amount
           ,[Quantity]  
		   ,[AddedBy]           
           ,[Updatedby])
		VALUES
           (NULL
           ,@MinAdmitId
           ,(Select top 1 serviceid from Service where ServiceTypeId in(2,3) order by NEWID())
		   ,0
		   ,0
           ,1
		   ,1
		   ,1
          )
       Set @MinAdmitId=@MinAdmitId+1
 END
 
 
--------------------------IPD -Second Record Per Admission 
Go
Declare @i INT=1
While (@i<=1000)
BEGIN
        --Print @i
		INSERT INTO [dbo].[Charge]
           ([VisitId]
           ,[AdmissionId]
           ,[ServiceId]
		   ,Rate
		   ,Amount
           ,[Quantity]  
		   ,[AddedBy]           
           ,[Updatedby])
		VALUES
           (NULL
           ,(Select top 1 AdmissionId from Admission order by NEWID())
           ,(Select top 1 serviceid from Service where ServiceTypeId in(2,3) order by NEWID())
		   ,0
		   ,0
           ,1
		   ,1
		   ,1
          )
		  
	Set @i=@i+1
 END
 
 Update C
Set C.Rate=S.Rate
from Charge C
left join Service S
ON C.ServiceId=S.ServiceId
where VisitId IS NULL
Update Charge Set Amount=Rate*Quantity where VisitId IS NULL
Update Charge Set Concession=(Amount*10)/100  where VisitId IS NULL       ----10% conession applied
---------------------------------------------Bill 
Print 'Admission Bill Data Insert'
GO
INSERT INTO [dbo].[Bill]
           ([VisitId]
           ,[AdmissionId]
           ,[TotalAmount]
		   ,Concession
           ,AddedBy          
           ,UpdatedBy)
Select NULL AS [VisitId], AdmissionId,Sum(Amount) As TotalAmount,Sum(Concession)As TotalConcession,1 As AddedBy,1 As UpdatedBy from Charge 
where AdmissionId IS NOT NULL
Group By AdmissionId
order by AdmissionId
Update Bill Set FinalBillAmount=TotalAmount-Concession where VisitId IS NULL
GO
-----------------------Discharge 
INSERT INTO [dbo].Discharge
           (
		    [AdmissionId]
           ,DoctorId
		   ,DischargeDate
		   ,[AddedBy]           
           ,[Updatedby]
		   )
Select AdmissionId,DoctorId,AdmissionDate+(SELECT Round(RAND()*(5-10)+10,0)) As DischargeDate,
1 AS AddedBy,1 As UpdatedBy From Admission
GO
--------------------------------ApplicationFunctionality
Print 'ApplicationFunctionality Data Insert'
Insert Into ApplicationFunctionality(Name,Level,AddedBy,UpdatedBy) Values ('Masters',0,1,1)
Insert Into ApplicationFunctionality(Name,Level,AddedBy,UpdatedBy) Values ('IPD Billing',0,1,1)
Insert Into ApplicationFunctionality(Name,Level,AddedBy,UpdatedBy) Values ('OPD Billing',0,1,1)
Insert Into ApplicationFunctionality(Name,Level,AddedBy,UpdatedBy) Values ('Pathology',0,1,1)
Insert Into ApplicationFunctionality(Name,Level,AddedBy,UpdatedBy) Values ('Radiology',0,1,1)
Insert Into ApplicationFunctionality(Name,Level,AddedBy,UpdatedBy) Values ('Administartion',0,1,1)
GO
------------------USER
Insert Into [User](StaffID,AddedBy,UpdatedBy) Values (1,1,1)
Insert Into [User](StaffID,AddedBy,UpdatedBy) Values (21,1,1)
Insert Into [User](StaffID,AddedBy,UpdatedBy) Values (22,1,1)
GO
---Admin User
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (1,1,1,1)
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (1,2,1,1)
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (1,3,1,1)
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (1,4,1,1)
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (1,5,1,1)
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (1,6,1,1)
GO
-----Billing User
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (2,2,1,1)
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (2,3,1,1)
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (3,2,1,1)
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (3,3,1,1)
GO
Insert Into [Prescription](VisitId,Path,AddedBy,UpdatedBy) Values (2,'\\RecordRoomServer\Patint\1\OPD\2\Prescription_1.jpg',1,1)
----2 is Visitid in Path 
GO
Insert Into [ClinicalNote](AdmissionId,Path,AddedBy,UpdatedBy) Values (5,'\\RecordRoomServer\Patint\3\IPD\5\Note_5154_1.jpg',1,1)
----5 is AdmissionId in Path 
GO
Drop Table #Temp