select TermName, DistrictName, StudentID, Grade, Discipline, TestType, TestRITScore,TestPercentile, ProjectedProficiencyLevel1,ProjectedProficiencyLevel2,SBACScore,
CASE when 
RNotOnTrck9 is TRUE THEN SBACScore = 


(select TermName, DistrictName, StudentID, Grade, Discipline, TestType, TestRITScore,TestPercentile, ProjectedProficiencyLevel1,ProjectedProficiencyLevel2
from map_fall
where Grade ='9'and Discipline = 'Reading'and ProjectedProficiencyLevel1 = 'Not On Track') as RNotOnTrck9
else
(select TermName, DistrictName, StudentID, Grade, Discipline, TestType, TestRITScore,TestPercentile, ProjectedProficiencyLevel1,ProjectedProficiencyLevel2
from map_fall
where Grade ='9'and Discipline = 'Mathematics'and ProjectedProficiencyLevel1 = 'Not On Track') as MNotOnTrck9
else
(select TermName, DistrictName, StudentID, Grade, Discipline, TestType, TestRITScore,TestPercentile, ProjectedProficiencyLevel1,ProjectedProficiencyLevel2
from map_fall
where Grade ='9'and Discipline = 'Reading'and ProjectedProficiencyLevel1 = 'On Track 24') as ROnTrck249
else
(select TermName, DistrictName, StudentID, Grade, Discipline, TestType, TestRITScore,TestPercentile, ProjectedProficiencyLevel1,ProjectedProficiencyLevel2
from map_fall
where Grade ='9'and Discipline = 'Mathematics'and ProjectedProficiencyLevel1 = 'On Track 24') as MOnTrck249
else
(select TermName, DistrictName, StudentID, Grade, Discipline, TestType, TestRITScore,TestPercentile, ProjectedProficiencyLevel1,ProjectedProficiencyLevel2
from map_fall
where Grade ='9'and Discipline = 'Reading'and ProjectedProficiencyLevel1 = 'On Track 22') as ROnTrck229
else
(select TermName, DistrictName, StudentID, Grade, Discipline, TestType, TestRITScore,TestPercentile, ProjectedProficiencyLevel1,ProjectedProficiencyLevel2
from map_fall
where Grade ='9'and Discipline = 'Mathematics'and ProjectedProficiencyLevel1 = 'On Track 22') as MOnTrck229


else


(select TermName, DistrictName, StudentID, Grade, Discipline, TestType, TestRITScore,TestPercentile, ProjectedProficiencyLevel1,ProjectedProficiencyLevel2
from map_fall
where Grade ='10'and Discipline = 'Reading'and ProjectedProficiencyLevel1 = 'Not On Track') as RNotOnTrck10
else
(select TermName, DistrictName, StudentID, Grade, Discipline, TestType, TestRITScore,TestPercentile, ProjectedProficiencyLevel1,ProjectedProficiencyLevel2
from map_fall
where Grade ='10'and Discipline = 'Mathematics'and ProjectedProficiencyLevel1 = 'Not On Track') as MNotOnTrck10
else
(select TermName, DistrictName, StudentID, Grade, Discipline, TestType, TestRITScore,TestPercentile, ProjectedProficiencyLevel1,ProjectedProficiencyLevel2
from map_fall
where Grade ='10'and Discipline = 'Reading'and ProjectedProficiencyLevel1 = 'On Track 24') as ROnTrck2410
else
(select TermName, DistrictName, StudentID, Grade, Discipline, TestType, TestRITScore,TestPercentile, ProjectedProficiencyLevel1,ProjectedProficiencyLevel2
from map_fall
where Grade ='10'and Discipline = 'Mathematics'and ProjectedProficiencyLevel1 = 'On Track 24') as MOnTrck2410
else
(select TermName, DistrictName, StudentID, Grade, Discipline, TestType, TestRITScore,TestPercentile, ProjectedProficiencyLevel1,ProjectedProficiencyLevel2
from map_fall
where Grade ='10'and Discipline = 'Reading'and ProjectedProficiencyLevel1 = 'On Track 22') as ROnTrck2210
else
(select TermName, DistrictName, StudentID, Grade, Discipline, TestType, TestRITScore,TestPercentile, ProjectedProficiencyLevel1,ProjectedProficiencyLevel2
from map_fall
where Grade ='10'and Discipline = 'Mathematics'and ProjectedProficiencyLevel1 = 'On Track 22') as MOnTrck2210




