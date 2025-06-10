# Database_SQLMongoDB

This project was developed as part of the "Databasutveckling" course at Newton Yrkeshögskola (VT25), and also serves as a portfolio piece to demonstrate my database design, implementation, and security practices. It showcases my proficiency with both relational (SQL) and non-relational (MongoDB) databases in a realistic, job-portal scenario.

## Purpose and Objectives

The primary goal is to demonstrate my competence in building secure, efficient, and well-structured databases using both SQL Server and MongoDB. This includes:

- SQL: relational modeling, normalization, constraints, stored procedures, triggers, transactions, and advanced querying.
- MongoDB: flexible, document-based modeling with nested structures and dynamic schemas.

Additionally, the project highlights my understanding of database security best practices, such as secure password handling and user role-based access control.

## Technologies and Architecture

- **SQL Server (T-SQL)**  
  - Comprehensive schema design with Users, Companies, JobListings, Applications, Skills, and junction tables for many-to-many relationships.
  - Views for simplifying complex queries.
  - Stored procedures for job application handling and status updates.
  - Triggers for automatic updates to application dates.
  - Transaction handling and error management.

- **MongoDB**  
  - User profile management with nested data structures.
  - CRUD operations and dynamic queries for userProfiles collection.
  - Priority levels and favorite status for profiles.

## Security Considerations

As part of the theoretical component of the course, I analyzed secure password handling and user role-based access:

- **Password Security**  
  - I would implement bcrypt hashing with unique salt generation, ensuring user passwords are stored securely and protected against brute-force and rainbow table attacks.

- **Role-Based Access Control (RBAC)**  
  - Permissions are defined for different roles (JobSeekers, Employers, Administrators) to ensure that users only access the data relevant to their role.

## Functionality and Key Features

- **SQL Server**  
  - Normalized schema with referential integrity.
  - Stored procedures and triggers for automated application management.
  - Views for easier querying and reporting.
  - Transaction handling and error management.

- **MongoDB**  
  - Flexible data modeling with nested documents.
  - CRUD operations, profile management, and dynamic querying.

## Challenges and Lessons Learned

Building this project required balancing structured and flexible data models. It taught me about enforcing data integrity in SQL and managing dynamic data structures in MongoDB. Considering security (bcrypt, RBAC) also emphasized the importance of building robust systems.

## Conclusion

This project demonstrates my skills in relational and non-relational databases, secure data handling, and complex data management. It is a strong addition to my portfolio.

## How to Run

- **MongoDB Scripts**  
  - Run `userProfiles.js` in MongoDB Shell or Compass on the `job_portal` database.

- **SQL Scripts**  
  - Run the T-SQL scripts in SQL Server Management Studio (SSMS) to set up the `JobPortalDB` database.

---

# Database_SQLMongoDB (Svenska)

Det här projektet utvecklades som en del av kursen Databasutveckling (VT25) vid Newton Yrkeshögskola och fungerar även som en portföljpjäs för att visa upp mina kunskaper inom databasutveckling, implementation och säkerhet. Projektet visar att jag behärskar både relationsdatabaser (SQL) och dokumentdatabaser (MongoDB) i ett realistiskt scenario för en jobbportal.

## Syfte och Mål

Målet är att visa att jag kan bygga säkra, effektiva och välstrukturerade databaser med både SQL Server och MongoDB, inklusive:

- SQL: relationsmodellering, normalisering, constraints, stored procedures, triggers, transaktioner och avancerade frågor.
- MongoDB: flexibel dokumentmodellering med nested structures och dynamiska scheman.

Projektet belyser även min förståelse för säkerhet, såsom säker hantering av lösenord och rollbaserad åtkomstkontroll.

## Teknologier och Arkitektur

- **SQL Server (T-SQL)**  
  - Normaliserat schema för Users, Companies, JobListings, Applications, Skills och junction tables för många-till-många-relationer.
  - Views för enklare hantering av komplexa frågor.
  - Stored procedures för hantering av jobbansökningar och statusuppdateringar.
  - Triggers för automatisk uppdatering av ansökningsdatum.
  - Transaktionshantering och felhantering.

- **MongoDB**  
  - Hantering av användarprofiler med nested structures.
  - CRUD-operationer och dynamiska frågor för userProfiles-kollektionen.
  - Prioritetsnivåer och favoriter för profiler.

## Säkerhet

Som en del av kursens teoretiska moment har jag analyserat säker lösenordshantering och rollbaserad åtkomst:

- **Lösenordssäkerhet**  
  - Jag skulle implementera bcrypt-hashning med unika salts för att lagra användarlösenord på ett säkert sätt och skydda mot brute-force- och rainbow table-attacker.

- **Rollbaserad åtkomstkontroll (RBAC)**  
  - Behörigheter definieras för olika roller (Jobbsökande, Arbetsgivare, Administratörer) så att användare bara har tillgång till data som är relevant för deras roll.

## Funktionalitet och Viktiga Funktioner

- **SQL Server**  
  - Normaliserat schema med referentiell integritet.
  - Stored procedures och triggers för automatisk hantering av ansökningar.
  - Views för enklare frågeställningar och rapportering.
  - Transaktionshantering och felhantering.

- **MongoDB**  
  - Flexibel datamodellering med nested documents.
  - CRUD-operationer och profilhantering.

## Utmaningar och Lärdomar

Projektet krävde en balans mellan strukturerad och flexibel datamodellering. Jag fick lära mig om att upprätthålla dataintegritet i SQL och hantera dynamiska datamodeller i MongoDB. Att inkludera säkerhet (bcrypt, RBAC) underströk vikten av att bygga robusta system.

## Slutsats

Projektet visar mina kunskaper i både relationsdatabaser och dokumentdatabaser samt säker hantering av data och komplex datamodellering. Det är en värdefull del i min portfölj.

## Så Här Kör Du

- **MongoDB-skript**  
  - Kör `userProfiles.js` i MongoDB Shell eller Compass på databasen `job_portal`.

- **SQL-skript**  
  - Kör T-SQL-skripten i SQL Server Management Studio (SSMS) för att skapa `JobPortalDB`.

---
