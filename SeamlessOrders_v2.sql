

select
s.OpsDate,
s.employee_id,
s.workcenter,
s.opseq,
sum(DATEDIFF(second,s.start,s.stop)/60.0/60.0) as OpTime
from vSeamlessToHour s
group by 
s.OpsDate,
s.employee_id,
s.workcenter,
s.opseq
