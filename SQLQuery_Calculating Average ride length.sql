--all data
select*
from bike_share_project

--geting the ride_length

select member_casual as Ride_type, DATEDIFF(minute, started_at,ended_at) as ride_length
from bike_share_project

--Calculating average ride length for

SELECT member_casual as Ride_type, avg(DATEDIFF(minute, started_at,ended_at)) as ride_length 
from bike_share_project
GROUP BY member_casual

--Note: In this query the "DATEDIFF" function is used to calculate the difference between started_at_new and ended_at_new timestamps in minutes.
    --The AVG function is then applied to calculate the average duration for each distinct rider type.
    --The result set will include two raws , one for each rider type, along with their corresponding average ride duartions in minutes.
