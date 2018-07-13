select A.std_id,ac_yr, A.district_res,B.StudentID, B.SchoolName, B.ProjectedProficiencyLevel2, B.Grade, C.StudentID,C.SchoolName, C.ProjectedProficiencyLevel2 from stud_enrollments as A 
join map_winter as B ON A.std_id = B.StudentID  
join map_fall as C ON A.std_id = C.StudentID
where B.Grade = '10' and B.ProjectedProficiencyLevel2 ='AYP Pass' and A.ac_yr ='2017' and B.Discipline = 'Reading'
and C.Grade = '10' and C.ProjectedProficiencyLevel2 = 'AYP Pass' and C.Discipline = 'Reading';

select count(*)from stud_enrollments as A 
join map_winter as B ON A.std_id = B.StudentID  
join map_fall as C ON A.std_id = C.StudentID
where B.Grade = '10' and B.ProjectedProficiencyLevel2 ='AYP Pass' and A.ac_yr ='2017' and B.Discipline = 'Reading'
and C.Grade = '10' and C.ProjectedProficiencyLevel2 = 'AYP Pass' and C.Discipline = 'Reading';