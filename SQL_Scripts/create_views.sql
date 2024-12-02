USE JobPortalDB;
GO

-- Drop the view if it exists
IF OBJECT_ID('dbo.vwActiveJobListings', 'V') IS NOT NULL
    DROP VIEW dbo.vwActiveJobListings;
GO
IF OBJECT_ID('dbo.vwUserApplications', 'V') IS NOT NULL
    DROP VIEW dbo.vwUserApplications;
GO

-- View: Active Job Listings with Company Details
CREATE VIEW vwActiveJobListings AS
SELECT
    J.JobID,
    J.Title,
    C.CompanyName,
    J.PostedDate,
    J.Location,
    J.SalaryRange
FROM JobListings J
INNER JOIN Companies C ON J.CompanyID = C.CompanyID
WHERE J.PostedDate >= DATEADD(month, -1, GETDATE());
GO

-- View: User Applications with Details
CREATE VIEW vwUserApplications AS
SELECT
    A.ApplicationID,
    U.FirstName,
    U.LastName,
    J.Title AS JobTitle,
    S.StatusName,
    A.ApplicationDate
FROM Applications A
INNER JOIN Users U ON A.UserID = U.UserID
INNER JOIN JobListings J ON A.JobID = J.JobID
INNER JOIN Statuses S ON A.StatusID = S.StatusID;
GO
