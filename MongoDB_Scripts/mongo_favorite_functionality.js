// Switch to the job_portal database
use job_portal;

// Step 1: Ensure all documents have the 'isFavorite' field (already done during insertion)

// Step 2: Mark a specific document (userId 2) as favorite
db.userProfiles.updateOne(
  { userId: 2 },
  { $set: { isFavorite: true } }
);

// Step 3: Update 'priorityLevel' for all favorite documents
db.userProfiles.updateMany(
  { isFavorite: true },
  { $set: { priorityLevel: "High" } }
);

// Step 4: Count all documents marked as favorite
const favoriteCount = db.userProfiles.countDocuments(
  { isFavorite: true }
);
print("Number of favorite profiles:", favoriteCount);

// Step 5: Display all favorite documents, showing selected fields and sorting by 'DateRegistered'
db.userProfiles.find(
  { isFavorite: true },
  { _id: 0, userId: 1, bio: 1, priorityLevel: 1, DateRegistered: 1 }
).sort(
  { DateRegistered: -1 } // Sort by DateRegistered descending
);
