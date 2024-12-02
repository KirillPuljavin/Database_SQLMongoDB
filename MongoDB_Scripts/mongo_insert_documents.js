// Switch to the job_portal database
use job_portal;

// Insert multiple documents into userProfiles
db.userProfiles.insertMany([
  {
    userId: 2, // Corresponds to Bob Smith in MSSQL Users table
    bio: "Experienced software developer skilled in C# and SQL.",
    experience: [
      {
        company: "Web Solutions",
        role: "Software Developer",
        startDate: ISODate("2018-01-15T00:00:00Z"),
        endDate: ISODate("2020-12-31T00:00:00Z"),
        description: "Developed web applications using .NET framework."
      }
    ],
    education: [
      {
        institution: "State University",
        degree: "B.Sc. Computer Science",
        startDate: ISODate("2014-09-01T00:00:00Z"),
        endDate: ISODate("2017-06-30T00:00:00Z")
      }
    ],
    skills: ["C#", "SQL", "JavaScript"],
    certifications: ["Microsoft Certified Professional"],
    isFavorite: false,
    DateRegistered: ISODate("2024-11-01T10:00:00Z")
  },
  {
    userId: 3, // Corresponds to Charlie Kim in MSSQL Users table
    bio: "Frontend developer with a passion for modern web technologies.",
    experience: [
      {
        company: "Design Studio",
        role: "Frontend Developer",
        startDate: ISODate("2019-03-01T00:00:00Z"),
        endDate: null,
        description: "Building responsive websites with React and Vue."
      }
    ],
    education: [
      {
        institution: "Art Institute",
        degree: "B.A. Graphic Design",
        startDate: ISODate("2015-09-01T00:00:00Z"),
        endDate: ISODate("2018-05-31T00:00:00Z")
      }
    ],
    skills: ["JavaScript", "HTML", "CSS", "MongoDB"],
    certifications: ["Certified Web Developer"],
    isFavorite: false,
    DateRegistered: ISODate("2024-11-05T15:30:00Z")
  },
  {
    userId: 4,
    bio: "Data scientist specializing in machine learning and AI.",
    experience: [
      {
        company: "DataTech",
        role: "Data Scientist",
        startDate: ISODate("2016-07-01T00:00:00Z"),
        endDate: null,
        description: "Developing predictive models and algorithms."
      }
    ],
    education: [
      {
        institution: "Tech University",
        degree: "M.Sc. Data Science",
        startDate: ISODate("2014-09-01T00:00:00Z"),
        endDate: ISODate("2016-06-30T00:00:00Z")
      }
    ],
    skills: ["Python", "Machine Learning", "AI", "SQL"],
    certifications: ["Certified Data Scientist"],
    isFavorite: false,
    DateRegistered: ISODate("2024-11-10T09:15:00Z")
  }
]);
