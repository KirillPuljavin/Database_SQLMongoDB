// Switch to the job_portal database
use job_portal;

// CREATE: Insert a new user profile
db.userProfiles.insertOne({
  userId: 5,
  bio: "Project manager with a focus on agile methodologies.",
  experience: [
    {
      company: "AgileWorks",
      role: "Project Manager",
      startDate: ISODate("2016-01-10T00:00:00Z"),
      endDate: null,
      description: "Leading cross-functional teams to deliver software projects."
    }
  ],
  education: [
    {
      institution: "Business School",
      degree: "MBA",
      startDate: ISODate("2014-09-01T00:00:00Z"),
      endDate: ISODate("2015-12-15T00:00:00Z")
    }
  ],
  skills: ["Project Management", "Scrum", "Leadership"],
  certifications: ["PMP Certification"],
  isFavorite: false,
  DateRegistered: ISODate("2024-11-15T08:45:00Z")
});

// READ: Find and display all user profiles
db.userProfiles.find();

// UPDATE: Update the bio of userId 2 (Bob Smith)
db.userProfiles.updateOne(
  { userId: 2 },
  { $set: { bio: "Senior software developer with expertise in C#, SQL, and .NET." } }
);

// DELETE: Delete the user profile with userId 5
db.userProfiles.deleteOne({ userId: 5 });
