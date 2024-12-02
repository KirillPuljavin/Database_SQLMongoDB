USE JobPortalDB;
GO

BEGIN TRANSACTION;

DECLARE @UserID INT = 3; -- Charlie
DECLARE @JobID INT = 1;  -- Software Developer

-- Check if Charlie has already applied
IF NOT EXISTS (
    SELECT 1 FROM Applications WHERE UserID = @UserID AND JobID = @JobID
)
BEGIN
    INSERT INTO Applications (JobID, UserID, StatusID)
    VALUES (@JobID, @UserID, 1); -- StatusID 1 is 'Applied'
    COMMIT TRANSACTION;
    PRINT 'Application submitted successfully.';
END
ELSE
BEGIN
    ROLLBACK TRANSACTION;
    PRINT 'You have already applied for this job.';
END
GO
