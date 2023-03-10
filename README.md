# DB-Project
## Contributors: Dhrutik Solanki, Suhaib Hasan, Pranav Pujar ##

### 1. Which tools were used for the project? ###
  * Database Language: SQL
  * IDE: Vistual Studio Code
  * VSCode Extension: SQLite
  * Developer Tools: Github
  
### 2. ER Diagram ###
![ER Diagram](https://media.discordapp.net/attachments/1067652982654632027/1083605423669661696/ER.png?width=960&height=610)

### 3. SQL Queries ###
  * Train_status table:
  ``` SQL
  CREATE TABLE Train_Status (
        train_date DATE NOT NULL,
        train_name VARCHAR(20) PRIMARY KEY,
        prem_seats_available INT(2) NOT NULL,
        gen_seats_available INT(2) NOT NULL,
        prem_seats_occupied INT(2) NOT NULL,
        gen_seats_occupied INT(2) NOT NULL
  );
  ```
  * Train table: 
  ``` SQL
  CREATE TABLE Train(
        train_number INT(2) PRIMARY KEY,
        train_name VARCHAR(20),
        premium_fair INT(5) NOT NULL,
        general_fair INT(5) NOT NULL,
        source_station VARCHAR(20) NOT NULL,
        destination_station VARCHAR(20) NOT NULL,
        available_on VARCHAR(40) NOT NULL,
        FOREIGN KEY(train_name) REFERENCES Train_Status(train_name)
  );
  ```
  * Booked table:
  ``` SQL
  CREATE TABLE Booked (
        SSN INT(2),
        train_number INT(2),
        ticket_type VARCHAR(10) NOT NULL,
        status VARCHAR(10) NOT NULL,
        FOREIGN KEY(SSN) REFERENCES Passenger(SSN),
        FOREIGN KEY(train_number) REFERENCES Train(train_number)
  );
  ```
  * Passenger table:
  ``` SQL
  CREATE TABLE Passenger (
        first_name VARCHAR(20) NOT NULL,
        last_name VARCHAR(20) NOT NULL,
        address VARCHAR(40) NOT NULL,
        city VARCHAR(20) NOT NULL,
        county VARCHAR(20) NOT NULL,
        phone VARCHAR(15) NOT NULL,
        SSN INT(10) PRIMARY KEY,
        bdate DATE NOT NULL,
        AGE INT(2) NOT NULL
  );
  ```
### 4. Which method we used to load the data into the table? ###
  * We used the `INSERT INTO` method to load the data into the tables.
  
### 5. SQL `SELECT` Queries ###
  * Query 1
  ``` SQL
  SELECT t.train_name
  FROM Passenger as p, Booked as b, Train as t
  WHERE p.first_name = 'Art' AND p.last_name = 'Venere' AND p.SSN = b.SSN 
          AND b.status = 'Booked' AND t.train_number = b.train_number;
  
  ```
  ![Query 1](https://user-images.githubusercontent.com/99348594/224247789-cd1923bd-7d36-407f-96a8-3cd7e43467ea.png)
  * Query 2
  ``` SQL
  SELECT p.first_name, p.last_name 
  FROM Booked as b, Train as t
  JOIN Passenger as p
  ON b.SSN = p.SSN
  WHERE t.available_on LIKE '%Friday%' AND b.status = 'Booked' 
          AND b.train_number  = t.train_number;
  ```
  ![Query 2](https://user-images.githubusercontent.com/99348594/224247715-9b15503a-930c-46d2-8ea6-ae6daebc6791.png)
  * Query 3
  ``` SQL
  SELECT p.first_name,p.last_name,p.address,b.status,b.ticket_type,
          t.train_number,t.train_name,t.source_station,t.destination_station
  FROM Booked as b
  JOIN Passenger as p, Train as t
  ON b.SSN = p.SSN AND t.train_number = b.train_number
  WHERE p.AGE >= 50 AND p.AGE <= 60;
  ```
  ![Query 3](https://user-images.githubusercontent.com/99348594/224247526-a0a45561-1f8d-4e7a-beb3-86ac4d1bc36f.png)
  * Query 4
  ``` SQL
  SELECT COUNT(p.first_name), t.train_name, ts.train_date, t.train_number
  FROM Booked as b, Train as t, Train_Status as ts, Passenger as p
  WHERE b.status = 'Booked' AND b.train_number = t.train_number 
          AND ts.train_name = t.train_name AND p.SSN = b.SSN;
  ```
  ![Query 4](https://user-images.githubusercontent.com/99348594/224248064-2ca47c17-ef1f-4994-af96-1af45691e79e.png)
  * Query 5
  ``` SQL
  SELECT p.first_name, p.last_name
  FROM Train as t, Booked as b, Passenger as p
  WHERE t.train_name = 'Golden Chariot' AND b.status = 'Booked' 
          AND p.SSN = b.SSN AND  t.train_number = b.train_number;
  ```
  ![Query 5](https://user-images.githubusercontent.com/99348594/224248289-202794b0-3cd1-4d6a-8f3c-38b2335c434f.png)
  * Query 6
  ``` SQL
  SELECT p.first_name, p.last_name, t.train_name
  FROM Booked as b, Passenger as p, Train as t
  WHERE b.status = 'WaitL' AND b.SSN = p.SSN AND t.train_number = b.train_number;
  ```
  ![Query 6](https://user-images.githubusercontent.com/99348594/224248452-99fc7854-d3bc-4237-baaf-b5092f593509.png)
  * Query 7
  ``` SQL
  SELECT p.first_name, p.last_name
  FROM Passenger as p
  WHERE p.phone LIKE '%605%'
  ORDER BY p.first_name DESC;
  ```
  ![Query 7](https://user-images.githubusercontent.com/99348594/224248620-df45bfc4-1055-40a1-9663-371752d8ea72.png)
  * Query 8
  ``` SQL
  SELECT p.first_name, p.last_name
  FROM Train as t, Passenger as p, Booked as b
  WHERE t.available_on LIKE '%Thursday%' AND p.SSN = b.SSN AND t.train_number = b.train_number 
  ORDER BY p.first_name ASC;
  -- The query won't output anything because in booked there is no train with train_number: 5
  ```
### 6. Contributions: ###
  * Suhaib Hasan:
    * ER Diagram
    * Documentation
    * SQL `SELECT` Statements
    * Code tester
    * ReadMe file
  * Pranav Pujar:
    * ER Diagram
    * Documentation
    * SQL `CREATE` Statements
    * SQL `SELECT` Statements
    * SQL `INSERT INTO` Statements
  * Dhrutik Solanki:
    * Documentation
    * SQL `CREATE` Statements
    * SQL `SELECT` Statements
    * SQL `INSERT INTO` Statements
    * GitHub Documenter
### 7. Honor Code: ###
  * I pledge, on my honor, to uphold UT Arlington's tradition of academic integrity, a tradition that values hard work and honest effort in the pursuit of academic excellence.
  * I promise that I will submit only work that I personally create or that I contribute to group collaborations, and I will appropriately reference any work from other sources. I will follow the highest standards of integrity and uphold the spirit of the Honor Code.




  

