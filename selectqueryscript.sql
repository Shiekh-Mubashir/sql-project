------Masters
Select * from Department
Select * from Gender
Select * from InsuranceCompany
Select * from Nationality
Select * from PatientCategory
Select * from Relation
Select * from ServiceCategory
Select * from ServiceType
Select * from Unit
Select * from Ward
Select * from Country
Select * from Room
Select * from Service
Select * from Bed
Select * from State
Select * from City
Select * from Doctor
Select * from Patient
Select * from Staff
Select * from Visit
Select * from Admission
Select * from Advance
Select * from Charge
Select * from Bill
Select * from Discharge
Select * from ApplicationFunctionality
Select * from [User]
Select * from AccessRights
Select top 10 * from Admission
Select * from Discharge
------------------OPD---------------------------
Select * from Patient where PatientId=28203 
Select * from Visit where VisitId=4394
Select * from Admission where PatientId=28615
Select * from Charge where VisitId=4394
Select * from Bill  where VisitId=4394
Select * from Discharge
Select * from Advance
-------------------IPD--------------------------
Select * from Patient where PatientId=6396 
Select * from Visit where PatientId=6396 
Select * from Admission where PatientId=6396
Select * from Charge where AdmissionId=11
Select * from Bill  where AdmissionId=11
Select * from Discharge where AdmissionId=11
-----------------Service 
Select ST.Name As ServiceType,SC.Name As ServiceCategory,S.Name As ServiceName,Rate,CompanyId
from Service S
Left Join ServiceCategory SC On S.ServiceCategoryId=SC.ServiceCategoryId
Left Join ServiceType ST On S.[ServiceTypeID]=ST.[ServiceTypeID]
Order by ST.Name

