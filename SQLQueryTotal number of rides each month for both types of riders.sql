--Total number of rides each month for both types of riders


select datename(month, started_at) as Month, count(*) as Total_rides
from bike_share_project
group by member_casual,  datename(month, started_at)
order by Month