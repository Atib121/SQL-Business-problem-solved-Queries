use practise ;

CREATE TABLE flight_delay_logs (
    flight_id INT PRIMARY KEY,
    departure_airport VARCHAR(50),
    cabin_class VARCHAR(50),
    ticket_fare_eur DECIMAL(10, 2),
    delay_duration_hours INT,
    compensation_paid_eur DECIMAL(10, 2),
    operational_status VARCHAR(50),
    aircraft_type VARCHAR(50)
);

INSERT INTO flight_delay_logs (flight_id, departure_airport, cabin_class, ticket_fare_eur, delay_duration_hours, compensation_paid_eur, operational_status, aircraft_type) VALUES
(1, 'London Heathrow (LHR)', 'Business Class', 1200.00, 4, 600.00, 'Compensation Claimed', 'Boeing 777'),
(2, 'Frankfurt Airport (FRA)', 'Economy', 250.00, 1, 0.00, 'Normal Departure', 'Airbus A320'),
(3, 'Paris Charles de Gaulle (CDG)', 'First Class', 3500.00, 6, 600.00, 'Passenger Attrition Risk', 'Boeing 777'),
(4, 'Amsterdam Schiphol (AMS)', 'Economy', 180.00, 2, 0.00, 'Normal Departure', 'Airbus A321'),
(5, 'London Heathrow (LHR)', 'First Class', 4200.00, 5, 600.00, 'Passenger Attrition Risk', 'Boeing 777'),
(6, 'Frankfurt Airport (FRA)', 'Business Class', 950.00, 3, 400.00, 'Compensation Claimed', 'Airbus A320'),
(7, 'Paris Charles de Gaulle (CDG)', 'Economy', 300.00, 1, 0.00, 'Normal Departure', 'Airbus A320'),
(8, 'Amsterdam Schiphol (AMS)', 'Business Class', 850.00, 4, 600.00, 'Compensation Claimed', 'Airbus A321'),
(9, 'London Heathrow (LHR)', 'Economy', 220.00, 2, 0.00, 'Normal Departure', 'Airbus A321'),
(10, 'Frankfurt Airport (FRA)', 'First Class', 3100.00, 7, 600.00, 'Passenger Attrition Risk', 'Boeing 777'),
(11, 'Paris Charles de Gaulle (CDG)', 'Business Class', 1100.00, 2, 0.00, 'Normal Departure', 'Airbus A320'),
(12, 'Amsterdam Schiphol (AMS)', 'Economy', 190.00, 5, 400.00, 'Compensation Claimed', 'Airbus A321'),
(13, 'London Heathrow (LHR)', 'Business Class', 1300.00, 6, 600.00, 'Passenger Attrition Risk', 'Boeing 777'),
(14, 'Frankfurt Airport (FRA)', 'Economy', 280.00, 1, 0.00, 'Normal Departure', 'Airbus A320'),
(15, 'Paris Charles de Gaulle (CDG)', 'First Class', 3800.00, 4, 600.00, 'Compensation Claimed', 'Boeing 777'),
(16, 'Amsterdam Schiphol (AMS)', 'Economy', 150.00, 3, 250.00, 'Compensation Claimed', 'Airbus A320'),
(17, 'London Heathrow (LHR)', 'Economy', 260.00, 1, 0.00, 'Normal Departure', 'Airbus A321'),
(18, 'Frankfurt Airport (FRA)', 'Business Class', 880.00, 5, 600.00, 'Passenger Attrition Risk', 'Airbus A320'),
(19, 'Paris Charles de Gaulle (CDG)', 'Economy', 310.00, 2, 0.00, 'Normal Departure', 'Airbus A320'),
(20, 'Amsterdam Schiphol (AMS)', 'First Class', 2900.00, 6, 600.00, 'Passenger Attrition Risk', 'Boeing 777'),
(21, 'London Heathrow (LHR)', 'First Class', 4500.00, 7, 600.00, 'Passenger Attrition Risk', 'Boeing 777'),
(22, 'Frankfurt Airport (FRA)', 'Economy', 240.00, 2, 0.00, 'Normal Departure', 'Airbus A320'),
(23, 'Paris Charles de Gaulle (CDG)', 'Business Class', 1250.00, 4, 600.00, 'Compensation Claimed', 'Boeing 777'),
(24, 'Amsterdam Schiphol (AMS)', 'Economy', 170.00, 1, 0.00, 'Normal Departure', 'Airbus A321'),
(25, 'London Heathrow (LHR)', 'Economy', 290.00, 4, 250.00, 'Compensation Claimed', 'Airbus A321'),
(26, 'Frankfurt Airport (FRA)', 'First Class', 3300.00, 3, 0.00, 'Normal Departure', 'Boeing 777'),
(27, 'Paris Charles de Gaulle (CDG)', 'Economy', 270.00, 5, 400.00, 'Compensation Claimed', 'Airbus A320'),
(28, 'Amsterdam Schiphol (AMS)', 'Business Class', 920.00, 2, 0.00, 'Normal Departure', 'Airbus A321'),
(29, 'London Heathrow (LHR)', 'First Class', 4100.00, 2, 0.00, 'Normal Departure', 'Boeing 777'),
(30, 'Frankfurt Airport (FRA)', 'Business Class', 990.00, 6, 600.00, 'Passenger Attrition Risk', 'Airbus A320'),
(31, 'Paris Charles de Gaulle (CDG)', 'Economy', 210.00, 1, 0.00, 'Normal Departure', 'Airbus A320'),
(32, 'Amsterdam Schiphol (AMS)', 'First Class', 3200.00, 4, 600.00, 'Compensation Claimed', 'Boeing 777'),
(33, 'London Heathrow (LHR)', 'Economy', 230.00, 5, 400.00, 'Compensation Claimed', 'Airbus A321'),
(34, 'Frankfurt Airport (FRA)', 'Business Class', 910.00, 1, 0.00, 'Normal Departure', 'Airbus A320'),
(35, 'Paris Charles de Gaulle (CDG)', 'First Class', 3600.00, 5, 600.00, 'Passenger Attrition Risk', 'Boeing 777'),
(36, 'Amsterdam Schiphol (AMS)', 'Economy', 165.00, 2, 0.00, 'Normal Departure', 'Airbus A320'),
(37, 'London Heathrow (LHR)', 'Business Class', 1150.00, 3, 400.00, 'Compensation Claimed', 'Boeing 777'),
(38, 'Frankfurt Airport (FRA)', 'Economy', 255.00, 4, 250.00, 'Compensation Claimed', 'Airbus A320'),
(39, 'Paris Charles de Gaulle (CDG)', 'Business Class', 1350.00, 5, 600.00, 'Passenger Attrition Risk', 'Boeing 777'),
(40, 'Amsterdam Schiphol (AMS)', 'Economy', 195.00, 1, 0.00, 'Normal Departure', 'Airbus A321');

Select * from flight_delay_logs;

Select departure_airport, Count(Flight_id) as Total_flight_schedule,
	  sum(ticket_fare_eur) as Total_Revenue_realised,
      sum(compensation_paid_eur) as Regulatory_Compensation_paid,
      sum(case when (cabin_class = 'Business Class' or 'First Class') 
      and (Operational_status = 'Passenger Attrition Risk') then 1 else 0 end) as High_value_Attrition_Incident,
      round(Avg(delay_duration_hours),1) as Avg_delay_hrs
from flight_delay_logs
group by departure_airport
Order by 4 desc;




Select aircraft_type, round(avg(delay_duration_hours),1) as avg_delay,
	   sum(case when (cabin_class = 'Business Class' or 'First Class') 
       and (Operational_status = 'Passenger Attrition Risk') then 1 else 0 end) as High_value_Incident,
       sum(compensation_paid_eur) as Regulatory_Compensation_paid
from flight_delay_logs
group by aircraft_type;
