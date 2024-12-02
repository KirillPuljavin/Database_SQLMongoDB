USE JobPortalDB;
GO

-- CREATE: Add a new Job Seeker
INSERT INTO Users (FirstName, LastName, Email, PasswordHash, UserType)
VALUES ('Ethan', 'Hunt', 'ethan@example.com', 'hashedpassword5', 'JobSeeker');
GO

-- READ: Select all Job Listings with Company Name
SELECT J.JobID, J.Title, C.CompanyName, J.Location, J.SalaryRange
FROM JobListings J
INNER JOIN Companies C ON J.CompanyID = C.CompanyID;
GO

-- UPDATE: Update Application Status for Bob to 'Interviewing'
UPDATE Applications
SET StatusID = 3 -- StatusID 3 corresponds to 'Interviewing'
WHERE UserID = 2 AND JobID = 1;
GO

-- DELETE: Remove a Skill from a User
DELETE FROM UserSkills
WHERE UserID = 3 AND SkillID = 5; -- Remove 'Data Analysis' skill from Charlie
GO
