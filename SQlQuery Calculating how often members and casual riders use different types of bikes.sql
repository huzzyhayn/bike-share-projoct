--Calculating how often members and casual riders use different types of bikes
SELECT member_casual AS RiderType,
    CASE
        WHEN rideable_type = 'electric_bike' THEN 'Electric'
        WHEN rideable_type = 'classic_bike' THEN 'Classic'
        WHEN rideable_type = 'docked_bike' THEN 'Docked'
        ELSE rideable_type
    END AS BikeType,  COUNT(*) AS Total_rides, CAST(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (PARTITION BY member_casual) AS DECIMAL(5, 2)) AS Percentage_of_usage
	from bike_share_project
GROUP BY
    member_casual,rideable_type
	order by member_casual
