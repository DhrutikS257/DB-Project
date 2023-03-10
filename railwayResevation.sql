-- Q2
SELECT t.train_name
FROM Passenger as p, Booked as b, Train as t
WHERE p.first_name = 'Art' AND p.last_name = 'Venere' AND p.SSN = b.SSN 
        AND b.status = 'Booked' AND t.train_number = b.train_number;

-- Q3
SELECT p.first_name, p.last_name 
FROM Booked as b, Train as t
JOIN Passenger as p
ON b.SSN = p.SSN
WHERE t.available_on LIKE '%Friday%' AND b.status = 'Booked' 
        AND b.train_number  = t.train_number;

-- Q4
SELECT p.first_name,p.last_name,p.address,b.status,b.ticket_type,
        t.train_number,t.train_name,t.source_station,t.destination_station
FROM Booked as b
JOIN Passenger as p, Train as t
ON b.SSN = p.SSN AND t.train_number = b.train_number
WHERE p.AGE >= 50 AND p.AGE <= 60;

-- Q5
SELECT COUNT(p.first_name), t.train_name, ts.train_date, t.train_number
FROM Booked as b, Train as t, Train_Status as ts, Passenger as p
WHERE b.status = 'Booked' AND b.train_number = t.train_number 
        AND ts.train_name = t.train_name AND p.SSN = b.SSN;

-- Q6
SELECT p.first_name, p.last_name
FROM Train as t, Booked as b, Passenger as p
WHERE t.train_name = 'Golden Chariot' AND b.status = 'Booked' 
        AND p.SSN = b.SSN AND  t.train_number = b.train_number;

-- Q7
SELECT p.first_name, p.last_name, t.train_name
FROM Booked as b, Passenger as p, Train as t
WHERE b.status = 'WaitL' AND b.SSN = p.SSN AND t.train_number = b.train_number;

-- Q8
SELECT p.first_name, p.last_name
FROM Passenger as p
WHERE p.phone LIKE '%605%'
ORDER BY p.first_name DESC;

-- Q9
SELECT p.first_name, p.last_name
FROM Train as t, Passenger as p, Booked as b
WHERE t.available_on LIKE '%Thursday%' AND p.SSN = b.SSN AND t.train_number = b.train_number 
ORDER BY p.first_name ASC;
-- The query won't output anything because in booked there is no train with train_number: 5

