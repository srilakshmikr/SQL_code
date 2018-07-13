describe stud_enrollments;



select A.std_id,ac_yr, A.enr_st_dt, A.enr_end_dt, A.district_res,B.StudentID, B.SchoolName, B.ProjectedProficiencyLevel2, B.Grade  from stud_enrollments as A 
inner join map_fall as B ON A.std_id = B.StudentID  
where B.Grade = '10' and B.ProjectedProficiencyLevel2 ='AYP Pass' and A.ac_yr ='2016' and Discipline = 'Mathematics';

select count(*)from stud_enrollments as A 
inner join map_fall as B ON A.std_id = B.StudentID  
where B.Grade = '10' and B.ProjectedProficiencyLevel2 ='AYP Pass' and A.ac_yr ='2016' and Discipline = 'Mathematics';


select count(*)from stud_enrollments as A 
inner join map_fall as B ON A.std_id = B.StudentID  
where B.Grade = '10' and B.ProjectedProficiencyLevel2 ='AYP Pass' and A.ac_yr ='2016' and Discipline = 'Reading';


select A.std_id,ac_yr, A.enr_st_dt, A.enr_end_dt, A.district_res,B.StudentID, B.SchoolName, B.ProjectedProficiencyLevel2, B.Grade  from stud_enrollments as A 
join map_fall as B ON A.std_id = B.StudentID  
where B.Grade = '10' and B.ProjectedProficiencyLevel2 ='AYP Pass' and A.ac_yr ='2017' and Discipline = 'Mathematics';

select count(*)from stud_enrollments as A 
join map_fall as B ON A.std_id = B.StudentID  
where B.Grade = '10' and B.ProjectedProficiencyLevel2 ='AYP Pass' and A.ac_yr ='2017' and Discipline = 'Mathematics';

select count(*)from stud_enrollments as A 
join map_fall as B ON A.std_id = B.StudentID  
where B.Grade = '10' and B.ProjectedProficiencyLevel2 ='AYP Pass' and A.ac_yr ='2017' and Discipline = 'Reading';


select A.std_id,ac_yr, A.enr_st_dt, A.enr_end_dt, A.district_res,B.StudentID, B.SchoolName, B.ProjectedProficiencyLevel2, B.Grade  from stud_enrollments as A 
join map_winter as B ON A.std_id = B.StudentID  
where B.Grade = '10' and B.ProjectedProficiencyLevel2 ='AYP Pass' and A.ac_yr ='2017' and Discipline = 'Mathematics';

select count(*) from stud_enrollments as A 
join map_winter as B ON A.std_id = B.StudentID  
where B.Grade = '10' and B.ProjectedProficiencyLevel2 ='AYP Pass' and A.ac_yr ='2016' and Discipline = 'Mathematics';

select count(*) from stud_enrollments as A 
join map_winter as B ON A.std_id = B.StudentID  
where B.Grade = '10' and B.ProjectedProficiencyLevel2 ='AYP Pass' and A.ac_yr ='2016' and Discipline = 'Reading';


select count(*) from stud_enrollments as A 
join map_winter as B ON A.std_id = B.StudentID  
where B.Grade = '10' and B.ProjectedProficiencyLevel2 ='AYP Pass' and A.ac_yr ='2017' and Discipline = 'Mathematics';

select count(*) from stud_enrollments as A 
join map_winter as B ON A.std_id = B.StudentID  
where B.Grade = '10' and B.ProjectedProficiencyLevel2 ='AYP Pass' and A.ac_yr ='2017' and Discipline = 'Reading';


