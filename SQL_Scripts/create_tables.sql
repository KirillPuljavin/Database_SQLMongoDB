-- Use the JobPortalDB database or create it if it doesn't exist
IF DB_ID('JobPortalDB') IS NULL
    CREATE DATABASE JobPortalDB;
GO

USE JobPortalDB;
GO

-- Create Users table
CREATE TABLE Users (
    UserID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    PasswordHash VARCHAR(256) NOT NULL,
    UserType VARCHAR(20) CHECK (UserType IN ('Employer', 'JobSeeker')) NOT NULL,
    DateRegistered DATETIME DEFAULT GETDATE() NOT NULL
);
GO

-- Create Companies table
CREATE TABLE Companies (
    CompanyID INT IDENTITY(1,1) PRIMARY KEY,
    CompanyName VARCHAR(100) NOT NULL,
    Location VARCHAR(100),
    Industry VARCHAR(100),
    Description TEXT,
    UserID INT NOT NULL,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);
GO

-- Create JobListings table
CREATE TABLE JobListings (
    JobID INT IDENTITY(1,1) PRIMARY KEY,
    CompanyID INT NOT NULL,
    Title VARCHAR(100) NOT NULL,
    Description TEXT,
    PostedDate DATETIME DEFAULT GETDATE() NOT NULL,
    Location VARCHAR(100),
    SalaryRange VARCHAR(50),
    FOREIGN KEY (CompanyID) REFERENCES Companies(CompanyID)
);
GO

-- Create Statuses table
CREATE TABLE Statuses (
    StatusID INT IDENTITY(1,1) PRIMARY KEY,
    StatusName VARCHAR(50) NOT NULL
);
GO

-- Create Applications table
CREATE TABLE Applications (
    ApplicationID INT IDENTITY(1,1) PRIMARY KEY,
    JobID INT NOT NULL,
    UserID INT NOT NULL,
    ApplicationDate DATETIME DEFAULT GETDATE() NOT NULL,
    StatusID INT NOT NULL,
    FOREIGN KEY (JobID) REFERENCES JobListings(JobID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (StatusID) REFERENCES Statuses(StatusID)
);
GO

-- Create Skills table
CREATE TABLE Skills (
    SkillID INT IDENTITY(1,1) PRIMARY KEY,
    SkillName VARCHAR(100) UNIQUE NOT NULL
);
GO

-- Create JobSkills junction table (Many-to-Many between JobListings and Skills)
CREATE TABLE JobSkills (
    JobID INT NOT NULL,
    SkillID INT NOT NULL,
    PRIMARY KEY (JobID, SkillID),
    FOREIGN KEY (JobID) REFERENCES JobListings(JobID),
    FOREIGN KEY (SkillID) REFERENCES Skills(SkillID)
);
GO

-- Create UserSkills junction table (Many-to-Many between Users and Skills)
CREATE TABLE UserSkills (
    UserID INT NOT NULL,
    SkillID INT NOT NULL,
    PRIMARY KEY (UserID, SkillID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (SkillID) REFERENCES Skills(SkillID)
);
GO
