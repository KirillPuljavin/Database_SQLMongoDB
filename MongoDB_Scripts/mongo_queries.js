// Switch to the job_portal database
use job_portal;

// Search based on text criterion: Find users with 'MongoDB' in their skills
db.userProfiles.find({ skills: "MongoDB" });

// Search based on numerical criterion and sort:
// Find users with more than one experience entry, sort by userId ascending
db.userProfiles.find(
  { "experience.1": { $exists: true } }
).sort({ userId: 1 });
