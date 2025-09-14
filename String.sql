-- String Functions
-- Returns the length of the string
SELECT LENGTH('SKYFALL') AS length_of_string;
-- Converts the string to uppercase
SELECT UPPER('skyfall') AS upper_case_string;
-- Converts the string to lowercase
SELECT LOWER('SKYFALL') AS lower_case_string;
-- Returns a substring of the string
SELECT SUBSTRING('SKYFALL', 1, 3) AS substring;
-- Trims leading and trailing spaces from the string
SELECT TRIM('   SKYFALL   ') AS trimmed_string;
-- Trims leading spaces from the string
SELECT LTRIM('   SKYFALL   ') AS left_trimmed_string;
SELECT RTRIM('   SKYFALL   ') AS right_trimmed_string;
-- Example usage in a table
SELECT first_name,
    LENGTH(first_name) AS name_length
FROM employee_demographics
WHERE LENGTH(first_name) > 5;