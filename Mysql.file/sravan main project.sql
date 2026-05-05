CREATE DATABASE rtc_analysis;
USE rtc_analysis;

CREATE TABLE fact_trips (
    trip_id INT PRIMARY KEY,
    date_id INT,
    bus_id INT,
    route_id INT,
    station_id INT,
    passengers INT,
    revenue DECIMAL(10,2),
    fuel_cost DECIMAL(10,2),
    delay_min INT,
    cancellations INT,
    occupancy_rate DECIMAL(5,2),
    ticket_price_avg DECIMAL(10,2),
    profit DECIMAL(10,2),
    weather VARCHAR(20),
    traffic_level VARCHAR(20),
    festival_flag INT
);

CREATE TABLE dim_stations (
    station_id INT PRIMARY KEY,
    station_name VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    zone VARCHAR(20),
    capacity INT
);

CREATE TABLE dim_buses (
    bus_id INT PRIMARY KEY,
    bus_type VARCHAR(50),
    operator VARCHAR(50),
    seats INT,
    fuel_type VARCHAR(20),
    rating DECIMAL(3,2)
);

CREATE TABLE dim_routes (
    route_id INT PRIMARY KEY,
    source VARCHAR(100),
    destination VARCHAR(100),
    distance_km INT,
    duration_hr DECIMAL(5,2)
);

CREATE TABLE dim_dates (
    date_id INT PRIMARY KEY,
    date DATE,
    day INT,
    month INT,
    year INT,
    weekday VARCHAR(20)
);

SELECT *
FROM fact_trips f
JOIN dim_stations s ON f.station_id = s.station_id
JOIN dim_buses b ON f.bus_id = b.bus_id
JOIN dim_routes r ON f.route_id = r.route_id
JOIN dim_dates d ON f.date_id = d.date_id;

SELECT *
FROM fact_trips
WHERE 
    passengers IS NULL
    OR revenue IS NULL
    OR fuel_cost IS NULL
    OR delay_min IS NULL;
    
    SELECT 
    COUNT(*) AS total_rows,
    COUNT(passengers) AS passengers_not_null,
    COUNT(revenue) AS revenue_not_null,
    COUNT(fuel_cost) AS fuel_not_null
FROM fact_trips;

SELECT *
FROM fact_trips
WHERE 
    passengers = 0
    OR revenue = 0
    OR fuel_cost = 0;
    
    SELECT *
FROM fact_trips
WHERE revenue < 0 OR passengers < 0;

SELECT SUM(revenue) AS total_revenue
FROM fact_trips;

SELECT SUM(profit) AS total_profit
FROM fact_trips;

SELECT AVG(occupancy_rate) AS avg_occupancy
FROM fact_trips;

SELECT SUM(passengers) AS total_passengers
FROM fact_trips;

SELECT s.city, SUM(f.revenue) AS revenue
FROM fact_trips f
JOIN dim_stations s ON f.station_id = s.station_id
GROUP BY s.city
ORDER BY revenue DESC;

SELECT b.bus_type, SUM(f.profit) AS profit
FROM fact_trips f
JOIN dim_buses b ON f.bus_id = b.bus_id
GROUP BY b.bus_type
ORDER BY profit DESC;

SELECT r.route_id, SUM(f.passengers) AS passengers
FROM fact_trips f
JOIN dim_routes r ON f.route_id = r.route_id
GROUP BY r.route_id
ORDER BY passengers DESC;

SELECT d.month, SUM(f.revenue) AS revenue
FROM fact_trips f
JOIN dim_dates d ON f.date_id = d.date_id
GROUP BY d.month
ORDER BY d.month;

SELECT traffic_level, AVG(delay_min) AS avg_delay
FROM fact_trips
GROUP BY traffic_level;

SELECT r.source, r.destination, SUM(f.profit) AS profit
FROM fact_trips f
JOIN dim_routes r ON f.route_id = r.route_id
GROUP BY r.source, r.destination
ORDER BY profit DESC
LIMIT 5;

SELECT SUM(revenue)/SUM(passengers) AS revenue_per_passenger
FROM fact_trips;

SELECT b.bus_type, AVG(f.occupancy_rate) AS occupancy
FROM fact_trips f
JOIN dim_buses b ON f.bus_id = b.bus_id
GROUP BY b.bus_type;

SELECT festival_flag, AVG(passengers) AS avg_passengers
FROM fact_trips
GROUP BY festival_flag;

SELECT 
    SUM(fuel_cost) AS total_fuel,
    SUM(profit) AS total_profit
FROM fact_trips;