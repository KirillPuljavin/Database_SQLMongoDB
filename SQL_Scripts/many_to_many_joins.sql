USE JobPortalDB;
GO

-- Users and their Skills
SELECT U.FirstName, U.LastName, S.SkillName
FROM Users U
INNER JOIN UserSkills US ON U.UserID = US.UserID
INNER JOIN Skills S ON US.SkillID = S.SkillID
ORDER BY U.UserID;
GO

-- Job Listings and Applicants with Matching Skills
SELECT
    U.FirstName,
    U.LastName,
    J.Title AS JobTitle,
    S.SkillName
FROM Applications A
INNER JOIN Users U ON A.UserID = U.UserID
INNER JOIN JobListings J ON A.JobID = J.JobID
INNER JOIN JobSkills JS ON J.JobID = JS.JobID
INNER JOIN Skills S ON JS.SkillID = S.SkillID
INNER JOIN UserSkills US ON U.UserID = US.UserID AND US.SkillID = S.SkillID
WHERE A.StatusID = 1 -- 'Applied'
ORDER BY U.UserID;
GO
