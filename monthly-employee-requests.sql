SELECT 
  string_field_1 AS Employee,
  -- This converts the string to a date, then truncates, then formats it to MM/YY
  FORMAT_DATE('%B %Y', DATE_TRUNC(PARSE_DATE('%m/%d/%y', string_field_3),MONTH)) AS Month,
  COUNT(string_field_2) AS Total_Requests
FROM 
  `division-support.dvision_support_all.division-support-table-all`
WHERE string_field_3 != 'Request Date' -- This skips the header row causing an error
GROUP BY 
  Employee, 
  Month
ORDER BY 
  Month DESC, 
  Total_Requests DESC;
