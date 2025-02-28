# SQL Server Database for Countries, Airports, and Airplanes

This repository contains a SQL script to create a database for managing countries, airports, and airplanes. The script includes table creation, relationships, dummy data insertion, and CRUD operations.

## Tables

- **Countries**: Stores country information.
- **Airports**: Stores airport information and references the country it is located in.
- **Airplanes**: Stores airplane information and references the airport it is located at.

## Relationships

- Each airport is associated with one country.
- Each airplane is associated with one airport.

## Dummy Data

The script inserts dummy data into the tables, including countries like Canada, USA, and UK, airports like Toronto Pearson International Airport, and airplanes like Boeing 737.

## CRUD Operations

The script supports basic CRUD operations:
- **Create**: Insert new records into the tables.
- **Read**: Retrieve records from the tables.
- **Update**: Modify existing records in the tables.
- **Delete**: Remove records from the tables.

## How to Use

1. Run the SQL script in your SQL Server environment.
2. The script will create the tables, insert dummy data, and demonstrate CRUD operations.

## Example Queries

- Insert a new country:
  ```sql
  INSERT INTO Countries (CountryName) VALUES ('Australia');