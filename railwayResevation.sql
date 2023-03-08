CREATE TABLE Booked(
    SSN INT(10),
    train_number VARCHAR(2),
    ticket_type VARCHAR(10) NOT NULL,
    status VARCHAR(10) NOT NULL,
    FOREIGN KEY(SSN) REFERENCES Passenger(SSN),
    FOREIGN KEY(train_number) REFERENCES Train(train_number)
);