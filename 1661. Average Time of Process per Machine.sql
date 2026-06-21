Select machine_id, Round(Avg(Duration),3) as processing_time from 

(Select machine_id, process_id,(end_time - start_time) as Duration
from
(Select machine_id,process_id,
        Max(timestamp) as end_time,
        Min(timestamp) as start_time
        from activity group by machine_id,process_id) t
) u group by machine_id;
