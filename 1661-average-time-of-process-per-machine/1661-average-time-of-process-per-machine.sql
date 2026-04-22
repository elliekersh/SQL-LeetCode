WITH pivoted AS(
    SELECT machine_id
        ,process_id
        ,SUM(CASE WHEN activity_type = 'start' THEN timestamp END) AS start
        ,SUM(CASE WHEN activity_type = 'end' THEN timestamp END) AS end
    FROM activity
    GROUP BY machine_id, process_id
)

SELECT machine_id
    ,round(avg(end-start), 3) as processing_time
FROM pivoted
GROUP BY machine_id

