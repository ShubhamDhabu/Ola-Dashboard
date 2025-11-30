OLA BOOKING ANALYSIS – SQL + POWER BI DASHBOARD PROJECT
=======================================================

This project contains SQL scripts and a Power BI dashboard built to analyze Ola ride-booking data.
The dataset includes booking details, customers, drivers, cancellations, payments, ratings, and revenue.

The file "Query1(OLA).sql" includes analytical queries implemented using SQL Views.
A Power BI dashboard (PBIX file) is included to visualize the insights generated from SQL results.


------------------------------------------------------------
FEATURES / ANALYTICS INCLUDED
------------------------------------------------------------

A. SQL ANALYSIS (10 Views)
--------------------------

1. Successful Bookings
   - Filters bookings where Booking_Status = 'Success'.

2. Average Ride Distance per Vehicle Type
   - Calculates AVG(Ride_Distance) grouped by each Vehicle_Type.

3. Total Customer-Cancelled Rides
   - Counts rides cancelled by customers.

4. Top 5 Customers By Number of Rides
   - Identifies customers with the highest total bookings.

5. Driver-Cancelled Rides (Personal & Car Issues)
   - Counts cancellations where drivers gave personal/car-related reasons.

6. Max & Min Driver Rating for Prime Sedan
   - Finds rating range for Prime Sedan drivers.

7. Rides Paid Using UPI
   - Lists all UPI-based transactions.

8. Average Customer Rating per Vehicle Type
   - Calculates review quality by vehicle category.

9. Total Revenue from Successful Rides
   - Sums Booking_Value for successful rides.

10. Incomplete Rides with Reason
   - Displays unfinished rides with their cause.


B. POWER BI DASHBOARD
----------------------

The Power BI dashboard visually represents insights from SQL analysis, including:

1. Total Rides, Successful Rides, Cancelled Rides
2. Revenue from Successful Bookings
3. Average Ride Distance by Vehicle Type
4. Payment Method Distribution (UPI, Cash, Card)
5. Ride Cancellation Breakdown
   - Customer cancellations
   - Driver cancellations
6. Rating Analysis:
   - Driver Ratings (Max, Min, Avg)
   - Customer Ratings per Vehicle Type
7. Top Customers by Ride Count
8. Incomplete Rides & Reasons
9. Trend Analysis / Time-series charts (if applicable)

The dashboard allows interactive exploration through slicers and filters.


------------------------------------------------------------
HOW TO RUN THE PROJECT
------------------------------------------------------------

1. Install MySQL / MariaDB / XAMPP.
2. Create a new database (example: OLA_DB).
3. Import the dataset table "bookingss".
4. Run the SQL script:

   SOURCE Query1(OLA).sql;

5. Open Power BI Desktop.
6. Load the PBIX file (named "OLA_Dashboard.pbix" or similar).
7. Refresh the data connections.


------------------------------------------------------------
FILES INCLUDED
------------------------------------------------------------

- Query1(OLA).sql       → SQL analytical queries and view definitions
- OLA_Dashboard.pbix    → Power BI dashboard (optional)
- README.txt            → Documentation of the project


------------------------------------------------------------
PROJECT PURPOSE
------------------------------------------------------------

This project demonstrates:
- SQL Analytical Skills
- Power BI Dashboard Reporting
- Data Cleaning, Aggregation, and Visualization
- Understanding of real-world ride-booking analytics


------------------------------------------------------------
AUTHOR
------------------------------------------------------------

Shubham Dhabu – Data Science & Analytics Student

