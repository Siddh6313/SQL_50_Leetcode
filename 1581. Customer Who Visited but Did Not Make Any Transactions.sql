#With join

  Select v.customer_id, count(*) as count_no_trans from Visits v
 Left Join transactions t 
 on v.visit_id = t.visit_id
 where t.amount is null
 group by 
 v.customer_id;


#With nested Querry
Select v.customer_id,count(*) as count_no_trans 
from Visits v 
where v.visit_id not in(
    Select t.visit_id from Transactions t
) 
Group by (v.customer_id);
