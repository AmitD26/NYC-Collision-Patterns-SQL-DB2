select month(date), hour(time), count(*) 
from cse532.collision 
group by cube(month(date), hour(time))
