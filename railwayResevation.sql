SELECT t.train_name
FROM Passenger as p, Booked as b, Train as t
WHERE p.first_name = 'Art' AND p.last_name = 'Venere' AND p.SSN = b.SSN 
        AND b.status = 'Booked' AND t.train_number = b.train_number;