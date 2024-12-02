// Switch to the job_portal database
use job_portal;

// Display all favorite profiles, showing selected fields and sorting by 'DateRegistered'
db.userProfiles.find(
  { isFavorite: true },
  { _id: 0, userId: 1, bio: 1, priorityLevel: 1, DateRegistered: 1 }
).sort(
  { DateRegistered: -1 } // Sort by DateRegistered descending
);
