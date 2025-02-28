-- Create Countries table
CREATE TABLE Countries (
    CountryID INT PRIMARY KEY IDENTITY(1,1),
    CountryName NVARCHAR(100) NOT NULL
);

-- Create Airports table
CREATE TABLE Airports (
    AirportID INT PRIMARY KEY IDENTITY(1,1),
    AirportName NVARCHAR(100) NOT NULL,
    CountryID INT,
    FOREIGN KEY (CountryID) REFERENCES Countries(CountryID)
);

-- Create Airplanes table
CREATE TABLE Airplanes (
    AirplaneID INT PRIMARY KEY IDENTITY(1,1),
    AirplaneModel NVARCHAR(100) NOT NULL,
    AirportID INT,
    FOREIGN KEY (AirportID) REFERENCES Airports(AirportID)
);

-- Insert dummy data into Countries table
INSERT INTO Countries (CountryName) VALUES ('Canada');
INSERT INTO Countries (CountryName) VALUES ('USA');
INSERT INTO Countries (CountryName) VALUES ('UK');

-- Insert dummy data into Airports table
INSERT INTO Airports (AirportName, CountryID) VALUES ('Toronto Pearson International Airport', 1);
INSERT INTO Airports (AirportName, CountryID) VALUES ('Vancouver International Airport', 1);
INSERT INTO Airports (AirportName, CountryID) VALUES ('Los Angeles International Airport', 2);
INSERT INTO Airports (AirportName, CountryID) VALUES ('Heathrow Airport', 3);

-- Insert dummy data into Airplanes table
INSERT INTO Airplanes (AirplaneModel, AirportID) VALUES ('Boeing 737', 1);
INSERT INTO Airplanes (AirplaneModel, AirportID) VALUES ('Airbus A320', 2);
INSERT INTO Airplanes (AirplaneModel, AirportID) VALUES ('Boeing 777', 3);
INSERT INTO Airplanes (AirplaneModel, AirportID) VALUES ('Airbus A380', 4);

-- CRUD operations

-- Create
INSERT INTO Countries (CountryName) VALUES ('Australia');
INSERT INTO Airports (AirportName, CountryID) VALUES ('Sydney Airport', 4);
INSERT INTO Airplanes (AirplaneModel, AirportID) VALUES ('Boeing 747', 5);

-- Read
SELECT * FROM Countries;
SELECT * FROM Airports;
SELECT * FROM Airplanes;

-- Update
UPDATE Countries SET CountryName = 'United States' WHERE CountryID = 2;
UPDATE Airports SET AirportName = 'LAX' WHERE AirportID = 3;
UPDATE Airplanes SET AirplaneModel = 'Boeing 787' WHERE AirplaneID = 1;

-- Delete
DELETE FROM Airplanes WHERE AirplaneID = 4;
DELETE FROM Airports WHERE AirportID = 4;
DELETE FROM Countries WHERE CountryID = 3;