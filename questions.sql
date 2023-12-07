 ----Question 1

----Patient Visited to Hospital 



Select VisitDate,OPDNumber,PC.Name AS PatientCategory,P.FirstName+' '+P.LastName As PatientName,D.FirstName+' '+D.LastName AS DoctorName,

U.Name As UnitName

from Visit V

Inner Join PatientCategory PC

On V.PatientCategoryID=PC.PatientCategoryID

Inner join Patient P

On V.PatientId=P.PatientID

Inner join Doctor D

On V.DoctorID=D.DoctorID

Inner join Unit U

On V.UnitId=u.UnitID



----Question 2

----Patient Admitted in Hospital 



Select A.AdmissionDate,A.IPDNumber,

PC.Name AS PatientCategory,P.FirstName+' '+P.LastName As PatientName,D.FirstName+' '+D.LastName AS DoctorName,

U.Name As UnitName,DS.DischargeDate

from Admission A

Inner Join PatientCategory PC

On A.PatientCategoryID=PC.PatientCategoryID

Inner join Patient P

On A.PatientId=P.PatientID

Inner join Doctor D

On A.DoctorID=D.DoctorID

Inner join Unit U

On A.UnitId=u.UnitID

Inner join Discharge DS

On A.AdmissionId=DS.AdmissionId



----Question 3

---Number of Patient visited to Medicine Dept in June 2022 



Select count(1) As NumberofPatients from Visit V

Inner join Doctor d

ON v.DoctorID=D.DoctorID

Left join Department dp

ON d.DepartmentID=dp.DepartmentID

where Year(VisitDate)=2022 AND Month(VisitDate)=06

AND dp.Name='Medicine'



---Question 4

---List the Patient who visited as well as Admitted in Cardiology Dept for Year 2022



---------Option 1 



Select V.PatientId,A.PatientId from Visit V

Inner Join Admission A

On V.PatientId=A.PatientId

Inner join Doctor d

ON v.DoctorID=D.DoctorID

Inner join Department dp

ON d.DepartmentID=dp.DepartmentID

Inner join Doctor d1

ON A.DoctorID=d1.DoctorID

Inner join Department dp1

ON d1.DepartmentID=dp1.DepartmentID

where Year(VisitDate)=2022 

AND dp.Name='Cardiology' AND

Year(AdmissionDate)=2022 

AND dp1.Name='Cardiology'



------Option 2



Select PatientId 

into #visit

from Visit V

Inner join Doctor d

ON v.DoctorID=D.DoctorID

Inner join Department dp

ON d.DepartmentID=dp.DepartmentID

where Year(VisitDate)=2022 

AND dp.Name='Cardiology'



Select PatientId 

into #Admission

from Admission A

Inner join Doctor d

ON A.DoctorID=D.DoctorID

Inner join Department dp

ON d.DepartmentID=dp.DepartmentID

where Year(AdmissionDate)=2022 

AND dp.Name='Cardiology'



Select * from #Admission Inner Join #visit

On #visit.PatientId=#Admission.PatientId



------Option 3



Select PatientId 

from Visit V

Inner join Doctor d

ON v.DoctorID=D.DoctorID

Inner join Department dp

ON d.DepartmentID=dp.DepartmentID

where Year(VisitDate)=2022 

AND dp.Name='Cardiology'

Intersect

Select PatientId 

from Admission A

Inner join Doctor d

ON A.DoctorID=D.DoctorID

Inner join Department dp

ON d.DepartmentID=dp.DepartmentID

where Year(AdmissionDate)=2022 

AND dp.Name='Cardiology'



----Question 5

----Yearwise & Departmentwise visited Patient



Select Year(VisitDate) As Year_,dp.Name AS Department,Count(PatientId) As PatientCount from Visit V

Inner join Doctor d

ON v.DoctorID=D.DoctorID

Inner join Department dp

ON d.DepartmentID=dp.DepartmentID

where Year(VisitDate)=2022

Group By Year(VisitDate),dp.Name

