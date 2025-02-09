create database neocabs;
use neocabs;
# Retrieve all successful bookings:
Select * from booking where Booking_Status="Success";



# Find the average ride distance for each vehicle type:
Select vehicle_type, avg(ride_distance) as average_distance from booking group by vehicle_type;

#Get the total number of cancelled rides by customers:
Select count(Booking_ID) as total_cancelled_ride from booking where booking_status="Canceled by Customer";

#List the top 5 customers who booked the highest number of rides:
Select customer_id , count(booking_id) as total_number_of_booking_from_customer from booking group by customer_id order by booking_id desc limit 5;

# Get the number of rides cancelled by drivers due to personal and car-related issues:
Select count(booking_id) as total_booking_cancelled_by_driver from booking where booking_status="Canceled by Driver";

# Find the maximum and minimum driver ratings for Prime Sedan bookings:
Select MAX(Driver_Ratings) as Highest_Driver_Rating , MIN(Driver_Ratings) as Lowest_Driver_Ratings from booking where Vehicle_Type="Prime Sedan" ;

# Find the average customer rating per vehicle type:
Select vehicle_type , avg(Customer_Rating) from booking group by vehicle_type;

# Calculate the total booking value of rides completed successfully:
Select count(booking_id) as successful_booking from booking where Booking_Status="Success";

# List all incomplete rides along with the reason:
Select count(booking_id) as Incomplete_Ride , Reason_for_Canceling from booking where Booking_Status="Incomplete Ride";
