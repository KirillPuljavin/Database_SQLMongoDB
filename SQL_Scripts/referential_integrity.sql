USE JobPortalDB;
GO

-- Attempt to insert an Application with a non-existent UserID
BEGIN TRY
    INSERT INTO Applications (JobID, UserID, StatusID)
    VALUES (1, 999, 1); -- UserID 999 does not exist
END TRY
BEGIN CATCH
    PRINT 'Error: ' + ERROR_MESSAGE();
END CATCH;
GO

-- Attempt to delete a JobListing that is referenced in Applications
BEGIN TRY
    DELETE FROM JobListings WHERE JobID = 1; -- This JobID is referenced in Applications
END TRY
BEGIN CATCH
    PRINT 'Error: ' + ERROR_MESSAGE();
END CATCH;
GO
