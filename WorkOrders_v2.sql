

select
w.OpsDate,
w.WorkCenter,
w.OpSeq,
sum(w.WO_Hrs) as PlannedHours
from WorkOrderHours w

	group by w.OpsDate,
			w.WorkCenter,
			w.OpSeq