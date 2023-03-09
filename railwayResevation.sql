-- Q2
SELECT t.train_name
FROM Passenger as p, Booked as b, Train as t
WHERE p.first_name = 'Art' AND p.last_name = 'Venere' AND p.SSN = b.SSN 
        AND b.status = 'Booked' AND t.train_number = b.train_number;

-- Q3
SELECT p.first_name, p.last_name
FROM Train_Status as ts, Booked as b, Passenger as p
WHERE ts.train_date = '2022/19/02' AND b.status = 'Booked' AND b.SSN = p.SSN;

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

