USE JobPortalDB;
GO

-- Count the number of Job Listings
SELECT COUNT(*) AS TotalJobListings FROM JobListings;
GO

-- Calculate the average number of Skills per Job Listing
SELECT AVG(SkillCount) AS AverageSkillsPerJob
FROM (
    SELECT COUNT(JS.SkillID) AS SkillCount
    FROM JobSkills JS
    GROUP BY JS.JobID
) AS JobSkillCounts;
GO
