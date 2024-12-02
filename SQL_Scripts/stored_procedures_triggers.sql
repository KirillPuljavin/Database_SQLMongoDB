USE JobPortalDB;
GO

-- Stored Procedure: Apply for a Job
CREATE PROCEDURE spApplyForJob
    @UserID INT,
    @JobID INT
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (
        SELECT 1 FROM Applications WHERE UserID = @UserID AND JobID = @JobID
    )
    BEGIN
        INSERT INTO Applications (JobID, UserID, StatusID)
        VALUES (@JobID, @UserID, 1); -- 'Applied' status
        PRINT 'Application submitted successfully.';
    END
    ELSE
    BEGIN
        PRINT 'You have already applied for this job.';
    END
END
GO

-- Stored Procedure: Update Application Status
CREATE PROCEDURE spUpdateApplicationStatus
    @ApplicationID INT,
    @StatusID INT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Applications
    SET StatusID = @StatusID
    WHERE ApplicationID = @ApplicationID;

    PRINT 'Application status updated.';
END
GO

-- Trigger: Update ApplicationDate when StatusID changes
CREATE TRIGGER trgUpdateApplicationDate
ON Applications
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    IF UPDATE(StatusID)
    BEGIN
        UPDATE Applications
        SET ApplicationDate = GETDATE()
        WHERE ApplicationID IN (SELECT ApplicationID FROM inserted);
    END
END
GO
