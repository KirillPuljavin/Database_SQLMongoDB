USE JobPortalDB;
GO

-- Insert into Users
INSERT INTO Users (FirstName, LastName, Email, PasswordHash, UserType)
VALUES
('Alice', 'Johnson', 'alice@example.com', 'hashedpassword1', 'Employer'),
('Bob', 'Smith', 'bob@example.com', 'hashedpassword2', 'JobSeeker'),
('Charlie', 'Kim', 'charlie@example.com', 'hashedpassword3', 'JobSeeker'),
('Dana', 'White', 'dana@example.com', 'hashedpassword4', 'Employer');
GO

-- Insert into Companies
INSERT INTO Companies (CompanyName, Location, Industry, Description, UserID)
VALUES
('TechCorp', 'New York', 'Technology', 'A leading tech company', 1),
('Innovatech', 'San Francisco', 'Innovation', 'Pioneering tech solutions', 4);
GO

-- Insert into Statuses
INSERT INTO Statuses (StatusName)
VALUES
('Applied'), ('Reviewed'), ('Interviewing'), ('Offered'), ('Rejected');
GO

-- Insert into JobListings
INSERT INTO JobListings (CompanyID, Title, Description, Location, SalaryRange)
VALUES
(1, 'Software Developer', 'Develop software applications.', 'New York', '$80,000 - $100,000'),
(2, 'Data Analyst', 'Analyze data trends.', 'San Francisco', '$70,000 - $90,000');
GO

-- Insert into Applications
INSERT INTO Applications (JobID, UserID, StatusID)
VALUES
(1, 2, 1), -- Bob applies for Software Developer
(2, 3, 1); -- Charlie applies for Data Analyst
GO

-- Insert into Skills
INSERT INTO Skills (SkillName)
VALUES
('C#'), ('SQL_Scripts'), ('JavaScript'), ('Python'), ('Data Analysis'), ('Machine Learning');
GO

-- Insert into JobSkills
INSERT INTO JobSkills (JobID, SkillID)
VALUES
(1, 1), -- Software Developer requires C#
(1, 2), -- Software Developer requires SQL_Scripts
(1, 3), -- Software Developer requires JavaScript
(2, 2), -- Data Analyst requires SQL_Scripts
(2, 4), -- Data Analyst requires Python
(2, 5); -- Data Analyst requires Data Analysis
GO

-- Insert into UserSkills
INSERT INTO UserSkills (UserID, SkillID)
VALUES
(2, 1), -- Bob knows C#
(2, 3), -- Bob knows JavaScript
(3, 2), -- Charlie knows SQL_Scripts
(3, 4), -- Charlie knows Python
(3, 5); -- Charlie knows Data Analysis
GO
