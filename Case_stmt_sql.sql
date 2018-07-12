select
site_num,
study_num, 
ta,
compound,
indication,
study_phase,
study_status,
count(less_30),
count(more_60),
count(bet_30_60)
from
(
select
site_num,
study_num,
(case when date_diff < 30 Then 1 End) as less_30,
(case when date_diff > 60 Then 1 End) as more_60,
(case when date_diff BETWEEN 30 and 60 Then 1 End) as bet_30_60 
from
(
select 
site_num,
study_num,
src_subj_vst_qry_id, 
subj_vst_frm_qry_clsd_dt,
subj_vst_frm_qry_opnd_dt, 
to_date(cast(subj_vst_frm_qry_clsd_dt as timestamp)) as closed_dt, 
to_date(cast(subj_vst_frm_qry_opnd_dt as timestamp)) as opened_dt,
DATEDIFF(to_date(cast(subj_vst_frm_qry_clsd_dt as timestamp)),to_date(cast(subj_vst_frm_qry_opnd_dt as timestamp))) as date_diff
from d_subject_visit_form_field_query
)A )B ,stg_study s
where B.study_num=s.study_number
group by site_num, study_num,ta,compound,indication,study_phase,study_status
 limit 100;


