select 
C.study_number,
B.site_num,
C.ta,
C.compound,
C.indication,
C.study_phase,
C.study_status,
ct_manual_queries,
ct_auto_queries
from
(select 
study_num,
site_num,
count(manual_queries)as ct_manual_queries,
count(auto_queries) as ct_auto_queries
from
(
select
study_num,
site_num,
CASE when subj_vst_frm_qry_typ = 'MANUAL QUERIES' THEN subj_vst_frm_qry_typ
END as manual_queries,
CASE when subj_vst_frm_qry_typ = 'AUTO QUERIES' THEN subj_vst_frm_qry_typ 
END as auto_queries 
from d_subject_visit_form_field_query 
) A group by study_num,site_num ) B
join stg_study as C ON C.study_number = B.study_num
limit 100;






