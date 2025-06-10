# Database_SQLMongoDB

This project was developed as part of the "Databasutveckling" course at Newton Yrkeshögskola (VT25), but it also serves as a portfolio piece to showcase my skills in working with both relational (SQL) and non-relational (MongoDB) databases. The project demonstrates my ability to design, implement, and manage complex database schemas, CRUD operations, and data integrity in a hybrid database system.

## Purpose and Objectives

The purpose of this project is to showcase my competence in both relational and NoSQL databases by implementing a realistic, job-portal domain. The project highlights my understanding of:

- SQL database design, including normalization, foreign keys, constraints, views, stored procedures, triggers, and transactional operations.
- MongoDB document-based design, including nested documents, dynamic schemas, and flexible querying.
- Integrating different data models for complex application requirements.

## Technologies and Architecture

The project consists of:

- **SQL Server (T-SQL)**: Used to design a normalized, relational database with tables for Users, Companies, JobListings, Applications, Statuses, Skills, and junction tables for many-to-many relationships. Advanced features include:
  - Stored procedures for application management.
  - Views to simplify complex queries.
  - Triggers to automate application date updates.
  - Transaction handling and error management.

- **MongoDB**: Used to handle unstructured and semi-structured data such as user profiles, experiences, education, and skills with flexible schemas. Features include:
  - CRUD operations for userProfiles collection.
  - Dynamic updates (e.g. marking favorites, updating priority levels).
  - Aggregations and sorting for advanced querying.

## Functionality and Key Features

- **SQL Server**:
  - Create and manage Users, Companies, Job Listings, Applications, and Skills.
  - Implement many-to-many relationships (JobSkills and UserSkills).
  - Use stored procedures for applying to jobs and updating application statuses.
  - Create triggers to automate status-related date updates.
  - Error handling with TRY-CATCH.
  - Write complex queries and views to simplify reporting.

- **MongoDB**:
  - Insert and manage user profiles with flexible nested structures.
  - Mark profiles as favorites and assign priority levels.
  - Query profiles based on conditions (e.g. skills, experience).
  - Sort and filter profiles dynamically.

## Challenges and Lessons Learned

Working with both relational and non-relational databases in a single domain required a solid understanding of when to use each technology. Designing normalized relational tables in SQL while maintaining data integrity through foreign keys and constraints strengthened my database design skills. Implementing MongoDB's flexible, nested structures taught me about dynamic schemas and handling semi-structured data.

I also learned how to leverage advanced features like stored procedures and triggers in SQL Server to automate processes, and how to manage error handling effectively. Balancing the two paradigms—structured and unstructured—helped me understand the trade-offs between strict data integrity and flexible data modeling.

## Conclusion

This project demonstrates my ability to design, implement, and manage both relational and document-based databases in a single application domain. It showcases my skills in data modeling, CRUD operations, advanced querying, and transactional operations. The codebase is a strong example of my capabilities in database development and is a valuable addition to my portfolio.

## How to Run

**MongoDB Scripts**:  
Use MongoDB Shell or Compass to execute the scripts in `userProfiles.js` file. Make sure to connect to your local MongoDB instance and switch to the `job_portal` database.

**SQL Scripts**:  
Run the T-SQL scripts in SQL Server Management Studio (SSMS) or equivalent, ensuring the `JobPortalDB` database is created. Execute the files in the order provided or as needed.

---

Feel free to explore the codebase to see how both relational and NoSQL paradigms are implemented and managed.
