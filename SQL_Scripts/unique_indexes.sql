USE JobPortalDB;
GO

-- Ensure unique combination of UserID and SkillID in UserSkills
ALTER TABLE UserSkills
ADD CONSTRAINT UX_UserSkills UNIQUE(UserID, SkillID);
GO

-- Ensure unique combination of JobID and SkillID in JobSkills
ALTER TABLE JobSkills
ADD CONSTRAINT UX_JobSkills UNIQUE(JobID, SkillID);
GO
