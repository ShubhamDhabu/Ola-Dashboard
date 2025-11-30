SHOW COLUMNS FROM bookingss;
SHOW TABLES;

#1. Retrieve all successful bookings:
Create View Successful_Bookings As
SELECT * FROM bookingss
WHERE Booking_Status = 'Success';

SELECT * FROM Successful_Bookings;

#2. Find the average ride distance for each vehicle type:
create view ride_distance_for_each_vehicle As 
SELECT Vehicle_Type, AVG(Ride_Distance) 
as avg_distance FROM bookingss 
GROUP BY Vehicle_Type;

select * from ride_distance_for_each_vehicle;

#3. Get the total number of cancelled rides by customers:
create view cancelled_rides_by_customers as
SELECT COUNT(*) FROM bookingss
WHERE Booking_Status = 'cancelled by Customer';

select * from cancelled_rides_by_customers;

#4. List the top 5 customers who booked the highest number of rides:
create view top_5_customers As
SELECT Customer_ID, COUNT(Booking_ID) as total_rides 
FROM bookingss
GROUP BY Customer_ID
ORDER BY total_rides DESC LIMIT 5;

select * from top_5_customers;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
create view  Rides_cancelled_by_Drivers_P_C_Issues As
SELECT COUNT(*) 
FROM bookingss 
WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue';

select * from  Rides_cancelled_by_Drivers_P_C_Issues;

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
Create View Max_Min_Driver_Rating As
SELECT MAX(Driver_Ratings) as max_rating,
MIN(Driver_Ratings) as min_rating
FROM bookingss WHERE Vehicle_Type = 'Prime Sedan';

select * from Max_Min_Driver_Rating; 

#7. Retrieve all rides where payment was made using UPI:
Create View UPI_Payment As
SELECT * FROM bookingss
WHERE Payment_Method = 'UPI';

select * from UPI_Payment;

#8. Find the average customer rating per vehicle type:
Create View AVG_Cust_Rating As
SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating
FROM bookingss
GROUP BY Vehicle_Type;

select* from AVG_Cust_Rating;

#9. Calculate the total booking value of rides completed successfully:
Create View total_successful_ride_value As
SELECT SUM(Booking_Value) as total_successful_ride_value
FROM bookingss
WHERE Booking_Status = 'Success';

select * from total_successful_ride_value;

#10. List all incomplete rides along with the reason:
Create View Incomplete_Rides_Reason As
SELECT Booking_ID, Incomplete_Rides_Reason
FROM bookingss
WHERE Incomplete_Rides = 'Yes';

select * from Incomplete_Rides_Reason;

#1. Retrieve all successful bookings:
Select * From Successful_Bookings;

#2. Find the average ride distance for each vehicle type:
Select * from ride_distance_for_each_vehicle;

#3. Get the total number of cancelled rides by customers:
Select * from cancelled_rides_by_customers;

#4. List the top 5 customers who booked the highest number of rides:
Select * from Top_5_Customers;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
Select * from Rides_cancelled_by_Drivers_P_C_Issues;

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
Select * from Max_Min_Driver_Rating;

#7. Retrieve all rides where payment was made using UPI:
Select * from UPI_Payment;

#8. Find the average customer rating per vehicle type:
Select * from AVG_Cust_Rating;

#9. Calculate the total booking value of rides completed successfully:
Select * from total_successful_ride_value;

#10. List all incomplete rides along with the reason:
Select * from Incomplete_Rides_Reason;