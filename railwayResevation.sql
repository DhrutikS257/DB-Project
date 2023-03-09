SELECT t.train_name
FROM Passenger as p, Booked as b, Train as t
WHERE p.first_name = 'Art' AND p.last_name = 'Venere' AND p.SSN = b.SSN 
        AND b.status = 'Booked' AND t.train_number = b.train_number;

SELECT p.first_name, p.last_name
FROM Train_Status as ts, Booked as b, Passenger as p
WHERE ts.train_date = '2022/19/02' AND b.status = 'Booked' AND b.SSN = p.SSN;