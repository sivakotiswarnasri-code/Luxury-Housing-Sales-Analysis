-- Create database
CREATE DATABASE IF NOT EXISTS real_estate_db;

-- Use database
USE real_estate_db;

-- Check total records
SELECT COUNT(*) AS total_records
FROM luxury_housing;

-- Booking count
SELECT booking_flag, COUNT(*) AS booking_count
FROM luxury_housing
GROUP BY booking_flag;

-- Average ticket price by builder
SELECT builder,
       AVG(ticket_price_cr) AS avg_ticket_price
FROM luxury_housing
GROUP BY builder
ORDER BY avg_ticket_price DESC
LIMIT 10;

-- Revenue by builder
SELECT builder,
       SUM(ticket_price_cr) AS total_revenue
FROM luxury_housing
GROUP BY builder
ORDER BY total_revenue DESC
LIMIT 10;

-- Booking count by micro market
SELECT micro_market,
       SUM(booking_flag) AS successful_bookings
FROM luxury_housing
GROUP BY micro_market
ORDER BY successful_bookings DESC;