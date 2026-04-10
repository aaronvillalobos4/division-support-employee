# Division Support by Month by Employee
<h2>Overview</h2>
This SQL script generates a report that aggregates the total number of requests handled by each employee, grouped by month. It is designed to run in Google BigQuery and includes data cleaning logic to handle raw string inputs and header rows.

<h2>Logic & Transformations</h2>
The query performs several key transformations to turn raw table data into a readable report:

Employee Identification: Selects string_field_1 as the primary identifier for the staff member.

Date Parsing: Uses PARSE_DATE('%m/%d/%y', string_field_3) to convert string-based dates into a standard SQL Date format.

Monthly Truncation: Uses DATE_TRUNC to roll every date back to the first of the month for standardized grouping.

Month Year Formatting: Applies FORMAT_DATE('%B %Y', ...) to output dates in a "Month Year" format (e.g., "October 2023").

Total Requests: Performs a COUNT on string_field_2 to determine the volume of requests.
