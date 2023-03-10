# [DB-Project](https://github.com/DhrutikS257/DB-Project) #
## Contributors: Dhrutik Solanki, Suhaib Hasan, Pranav Pujar ##

### 1. Which tools were used for the project? ###
  * Database Language: SQL
  * IDE: Vistual Studio Code
  * VSCode Extension: SQLite
  * Developer Tools: Github
  
### 2. ER Diagram ###
![ER Diagram](https://media.discordapp.net/attachments/1067652982654632027/1083605423669661696/ER.png?width=960&height=610)

### 3. SQL `CREATE` Queries ###
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
  
    * `INSERT INTO` for Train
    
    ``` SQL
    INSERT INTO Train 
    Values (1,'Orient Express',800,600,'Paris','Istabul','Weekdays');
    INSERT INTO Train 
    Values (2,'Flying Scotsman',4000,3500,'Edinburgh','London','Friday Saturday Sunday');
    INSERT INTO Train 
    Values (3,'Golden Arrow',980,860,'Victoria','Dover','Monday Tuesday Wednesday');
    INSERT INTO Train 
    Values (4,'Golden Chariot',4300,3800,'Bangalore','Goa','Saturday Sunday');
    INSERT INTO Train 
    Values (5,'Maharaja Express',5980,4510,'Delhi','Mumbai','Wednesday Thursday Friday');
    ```
    * `INSERT INTO` for Passenger
    ``` SQL
    INSERT INTO Passenger
    VALUES ('James','Butt','6649 N Blue Gum St','New Orleans','Orleans','504-845-1427',264816896,'1968/10/10',54);
    INSERT INTO Passenger
    VALUES ('Josephine','Darakjy','4 B Blue Ridge Blvd','Brighton','Livingston','810-374-9840',240471168,'1975/11/01',47);
    INSERT INTO Passenger
    VALUES ('Art','Venere','8 W Cerritos Ave #54','Bridgeport','Gloucester','605-264-4130',285200976,'1982/11/13',40);
    INSERT INTO Passenger
    VALUES ('Lenna','Paprocki','639 Main St','Anchorage','Anchorage','907-921-2010',309323096,'1978/08/09',44);
    INSERT INTO Passenger
    VALUES ('Donette','Foller','34 Center St','Hamilton','Butler','513-549-4561',272610795,'1990/06/11',32);
    INSERT INTO Passenger
    VALUES ('Simona','Morasca','3 Mcauley Dr','Ashland','Ashland','419-800-6759',250951162,'1994/08/15',28);
    INSERT INTO Passenger
    VALUES ('Mitsue','Tollner','7 Eads St','Chicago','Cook','773-924-8565',272913578,'1984/07/04',38);
    INSERT INTO Passenger
    VALUES ('Leota','Dilliard','7 W Jackson Blvd','San Jose','Santa Clara','408-813-1105',268682534,'1991/05/09',31);
    INSERT INTO Passenger
    VALUES ('Sage','Wieser','5 Boston Ave #88','Sioux Falls','Minnehaha','605-794-4895',310908858,'1982/02/25',41);
    INSERT INTO Passenger
    VALUES ('Kris','Marrier','228 Runamuck Pl #2808','Baltimore','Baltimore City','410-804-4694',322273872,'1956/04/04',66);
    INSERT INTO Passenger
    VALUES ('Minna','Amigon','2371 Jerrold Ave','Kulpsville','Montgomery','215-422-8694',256558303,'1995/09/09',27);
    INSERT INTO Passenger
    VALUES ('Abel','Maclead','37275 St  Rt 17m M','Middle Island','Suffolk','631-677-3675',302548590,'1960/11/05',62);
    INSERT INTO Passenger
    VALUES ('Kiley','Caldarera','25 E 75th St #69','Los Angeles','Los Angeles','310-254-3084',284965676,'1981/05/09',41);
    INSERT INTO Passenger
    VALUES ('Graciela','Ruta','98 Connecticut Ave Nw','Chagrin Falls','Geauga','440-579-7763',277292710,'1982/02/25',41);
    INSERT INTO Passenger
    VALUES ('Cammy','Albares','56 E Morehead St','Laredo','Webb','956-841-7216',331160133,'1956/04/04',66);
    INSERT INTO Passenger
    VALUES ('Mattie','Poquette','73 State Road 434 E','Phoenix','Maricopa','605-953-6360',331293204,'1995/09/09',27);
    INSERT INTO Passenger
    VALUES ('Meaghan','Garufi','69734 E Carrillo St','Mc Minnville','Warren','931-235-7959',290123298,'1960/11/02',62);
    INSERT INTO Passenger
    VALUES ('Gladys','Rim','322 New Horizon Blvd','Milwaukee','Milwaukee','414-377-2880',286411536,'1991/05/09',31);
    INSERT INTO Passenger
    VALUES ('Yuki','Whobrey','1 State Route 27','Taylor','Wayne','313-341-4470',294860856,'1985/02/25',38);
    INSERT INTO Passenger
    VALUES ('Fletcher','Flosi','394 Manchester Blvd','Rockford','Winnebago','815-426-5657',317434088,'1961/04/04',61);
    ```
    * `INSERT INTO` for Train_Status
    
    ``` SQL
    INSERT INTO Train_Status
    VALUES ('2022/02/19', 'Orient Express', 10, 10, 0, 0);
    INSERT INTO Train_Status
    VALUES ('2022/02/20', 'Flying Scottsman', 8, 5, 2, 5);
    INSERT INTO Train_Status
    VALUES ('2022/02/21', 'Guwahati Express', 7, 6, 3, 4);
    INSERT INTO Train_Status
    VALUES ('2022/02/21', 'Golden Chariot', 6, 3, 4, 7);
    ```
    * `INSERT INTO` Booked
    ``` SQL
    INSERT INTO Booked
    VALUES (264816896, 3, 'Premium', 'Booked');
    INSERT INTO Booked
    VALUES (240471168, 2, 'General', 'Booked');
    INSERT INTO Booked
    VALUES (285200976, 4, 'Premium', 'Booked');
    INSERT INTO Booked
    VALUES (285200976, 2, 'Premium', 'Booked');
    INSERT INTO Booked
    VALUES (317434088, 2, 'Premium', 'Booked');
    INSERT INTO Booked
    VALUES (310908858, 2, 'Premium', 'Booked');
    INSERT INTO Booked
    VALUES (322273872, 2, 'Premium', 'Booked');
    INSERT INTO Booked
    VALUES (256558303, 3, 'Premium', 'Booked');
    INSERT INTO Booked
    VALUES (302548590, 2, 'Premium', 'Booked');
    INSERT INTO Booked
    VALUES (284965676, 3, 'Premium', 'Booked');
    INSERT INTO Booked
    VALUES (277292710, 3, 'Premium', 'Booked');
    INSERT INTO Booked
    VALUES (331160133, 3, 'Premium', 'Booked');
    INSERT INTO Booked
    VALUES (331293204, 3, 'Premium', 'Booked');
    INSERT INTO Booked
    VALUES (290123298, 3, 'Premium', 'Booked');
    INSERT INTO Booked
    VALUES (286411536, 4, 'Premium', 'Booked');
    INSERT INTO Booked
    VALUES (294860856, 4, 'Premium', 'Booked');
    INSERT INTO Booked
    VALUES (317434088, 4, 'Premium', 'Booked');
    INSERT INTO Booked
    VALUES (310908858, 4, 'Premium', 'Booked');
    INSERT INTO Booked
    VALUES (322273872, 4, 'Premium', 'Booked');
    INSERT INTO Booked
    VALUES (256558303, 4, 'Premium', 'Booked');
    INSERT INTO Booked
    VALUES (302548590, 4, 'General', 'Booked');
    INSERT INTO Booked
    VALUES (284965676, 4, 'General', 'Booked');
    INSERT INTO Booked
    VALUES (277292710, 4, 'General', 'Booked');
    INSERT INTO Booked
    VALUES (331160133, 4, 'General', 'Booked');
    INSERT INTO Booked
    VALUES (331293204, 4, 'General', 'Booked');
    ```
  
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




  

