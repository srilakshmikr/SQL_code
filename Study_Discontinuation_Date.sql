# discontinuation date

select 
study_oid,
location_oid,
subject_key,
CASE When DSTERM_value = '1'
Then DSENDT_value
Else NULL End As Completion_Date,
CASE When DSTERM_value not LIKE '1'
Then DSENDT_value
Else NULL End As Discontinuation_Date
from
(
select 
study_oid,
location_oid,
subject_key,
max(DSENDT_value) as DSENDT_value ,
max(DSTERM_value) as DSTERM_value
from
(select C.study_oid,
C.location_oid,
C.subject_key,
CASE WHEN C.item_oid  = 'DS.DSENDT'
THEN C.value
END AS DSENDT_value,
CASE WHEN C.item_oid  = 'DS.DSTERM'
THEN C.value
END AS DSTERM_value
from
(
select 
study_oid,
location_oid,
subject_key,
form_oid,
item_oid,
min(source_id) as source_id
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
source_id from synteract.bkp_rave_audit where audit_subcategory_name = 'Entered' AND
study_event_oid = 'EXIT' AND
form_oid = 'DS' AND
item_oid IN ( 'DS.DSTERM','DS.DSENDT')
) A group by study_oid,location_oid,subject_key,form_oid,item_oid ORDER BY subject_key
) B join synteract.bkp_rave_audit as C ON
C.study_oid = B.study_oid AND
C.location_oid = B.location_oid AND
C.subject_key = B.subject_key AND
C.source_id = B.source_id AND
C.item_oid = B.item_oid) D
group by study_oid,
location_oid,
subject_key) E;