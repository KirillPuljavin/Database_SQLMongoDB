USE JobPortalDB;
GO

-- Show Users and their Applications with Job Titles and Statuses
SELECT U.FirstName, U.LastName, J.Title AS JobTitle, S.StatusName, A.ApplicationDate
FROM Users U
INNER JOIN Applications A ON U.UserID = A.UserID
INNER JOIN JobListings J ON A.JobID = J.JobID
INNER JOIN Statuses S ON A.StatusID = S.StatusID;
GO

-- Show Job Listings and Required Skills
SELECT J.Title AS JobTitle, S.SkillName
FROM JobListings J
INNER JOIN JobSkills JS ON J.JobID = JS.JobID
INNER JOIN Skills S ON JS.SkillID = S.SkillID
ORDER BY J.JobID;
GO
