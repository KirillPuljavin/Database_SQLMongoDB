// Switch to the job_portal database
use job_portal;

// Mark another user as favorite (optional)
db.userProfiles.updateOne(
  { userId: 3 },
  { $set: { isFavorite: true } }
);

// Update 'priorityLevel' for new favorite
db.userProfiles.updateOne(
  { userId: 3 },
  { $set: { priorityLevel: "Medium" } }
);
