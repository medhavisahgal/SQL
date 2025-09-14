-- In this the special thing we have to compare the current day with the next day
-- So we can use self join to join the table with itself
SELECT today.id
FROM Weather yesterday
    INNER JOIN Weather today ON today.recordDate = DATE_ADD(yesterday.recordDate, INTERVAL 1 DAY)
WHERE today.temperature > yesterday.temperature;