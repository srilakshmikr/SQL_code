*** Screening Date **** 
select * from 
(select subject_key,
study_oid,
location_oid,
audit_subcategory_name,
study_event_oid,
form_oid,
item_oid, source_id
from (
select subject_key,
study_oid,
location_oid,
audit_subcategory_name,
study_event_oid,
form_oid,
item_oid,
source_id from synteract.bkp_rave_audit
where study_oid LIKE 'Zenith ZEN003694-002(Prod)' AND audit_subcategory_name LIKE 'Entered' AND study_event_oid LIKE 'SCREEN' AND form_oid LIKE 'VISIT' 
AND item_oid LIKE 'VISIT.VISDT' ) A 
) B
groupby subject_key,study_oid having min(A.source_id) 
	

**** Enrollment Date **** 

	
select subject_enrollment_date, sourceid from audit_data where 
study_ID = 'Zenith ZEN003694-002' AND audit_subcategory_name = 'Entered' AND study_event_oid = 'VISIT1' AND form_oid = 'DM' 
AND item_oid = 'DS1.DS1DT'
UNION ALL 
select subject_enrollment_date, sourceid from audit_data where 
study_ID = 'Biohaven BHV-3000-201' AND audit_subcategory_name = 'Entered' AND study_event_oid = 'VISIT2' AND form_oid = 'DS2' 
AND item_oid = 'DS2.'
UNION ALL
select subject_enrollment_date, sourceid from audit_data where 
study_ID = 'Biohaven BHV-3000-301' AND audit_subcategory_name = 'Entered' AND study_event_oid = 'VISIT2' AND form_oid = 'RD' 
AND item_oid = 'RDDT.'
UNION ALL 
select subject_enrollment_date, sourceid from audit_data where 
study_ID = 'Biohaven BHV-3000-302' AND audit_subcategory_name = 'Entered' AND study_event_oid = 'VISIT2' AND form_oid = 'RD' 
AND item_oid = 'RDDT.'	




Select
D.value as screen_date,C.subject_key,
C.study_oid,
C.location_oid,
C.audit_subcategory_name,
C.study_event_oid,
C.form_oid,
C.item_oid,
C.source_id
from
(
select 
subject_key,
study_oid,
location_oid,
audit_subcategory_name,
study_event_oid,
form_oid,
item_oid, min(source_id) as source_id
from 
(
select 
subject_key,
study_oid,
location_oid,
audit_subcategory_name,
study_event_oid,
form_oid,
item_oid,
source_id from synteract.bkp_rave_audit
where study_oid LIKE 'Zenith ZEN003694-002(Prod)' AND audit_subcategory_name LIKE 'Entered' AND study_event_oid LIKE 'SCREEN' AND form_oid LIKE 'VISIT' 
AND item_oid LIKE 'VISIT.VISDT' ) A 
group by 
subject_key,study_oid,location_oid,audit_subcategory_name,study_event_oid,form_oid,item_oid
) C join synteract.bkp_rave_audit as D
on C.subject_key = D.subject_key
AND C.study_oid = D.study_oid AND C.source_id = D.source_id AND C.location_oid = D.location_oid AND C.study_event_oid = D.study_event_oid;D C.study_event_oid = D.study_event_oid;





Select
D.value as enrollment_date,C.subject_key,
C.study_oid,
C.location_oid,
from
(
select 
subject_key,
study_oid,
location_oid,
audit_subcategory_name,
study_event_oid,source_id from synteract.bkp_rave_audit
select subject_enrollment_date, sourceid from audit_data where 
study_ID = 'Zenith ZEN003694-002' AND audit_subcategory_name = 'Entered' AND study_event_oid = 'VISIT1' AND form_oid = 'DM' 
AND item_oid = 'DS1.DSSTDT') A 
group by 
form_oid,
item_oid, min(source_id) as source_id
from 
(
select 
subject_key,
study_oid,
location_oid,
audit_subcategory_name,
study_event_oid,
form_oid,
item_oid,

subject_key,study_oid,location_oid,audit_subcategory_name,study_event_oid,form_oid,item_oid
) C join synteract.bkp_rave_audit as D
on C.subject_key = D.subject_key
AND C.study_oid = D.study_oid AND C.source_id = D.source_id AND C.location_oid = D.location_oid;