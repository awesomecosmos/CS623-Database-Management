# CS623-Database-Management

Repository for storing code for my MS in Data Science course CS623 Database Management at Pace University.

**Course description:** Database management system installation and configuration, database’s role as a middleware in system hierarchy, Entity Relationship (E-R) model for logical design, schema normalization and performance tradeoffs, database management with SQL through database console, database programming, event-processing with triggers, efficient data process- ing with stored-procedures, transactions management and ACID properties, database security, and crash recovery.

- [Graph Databases and Neo4j Research Project](#graph-databases-and-neo4j-research-project)
- [Implementing ACID Properties Programming Project](#implementing-acid-properties-programming-project)
- [Assignment 1](#assignment-1)
- [Assignment 2](#assignment-2)
- [Assignment 3](#assignment-3)
- [Assignment 4](#assignment-4)

## Graph Databases and Neo4j Research Project

In this research project, my partner and I presented a short video about graph databases and Neo4j. The file in the repository `cs_new_trends_code_demo` is accompanying code to demonstrate the capabilities of Neo4j. It is accompanied by another short video.
- Presentation video: https://youtu.be/iSR2kCeDUVo
- Code demonstration: https://youtu.be/vxqBwfJWq74

[back to top](#cs623-database-management)

## Implementing ACID Properties Programming Project

In this programming project, my partner and I wrote code to implement a query that was assigned to us, and ensure that the ACID properties of Atomicity and Isolation were implemented through the transactions. Our task was to implement these ACID properties for a relational database schema with tables Product and Stock, and ensure that all records with the product ID 'p1' were deleted from both tables, while ensuring that the transaction was committed to the database state if fully implemented, otherwise aborted. Similarly we had to ensure that the transactions were serializable. The file in the repository `cs623_acid_properties.py` is the code. There is also a short video explaining the code.
- Brief video: https://youtu.be/iwIKgNI587s

[back to top](#cs623-database-management)

## Assignment 1

### Question 1
**Read the paper entitled 'Databases Research: Achievements and Opportunities Into the 21st Century' by A. Silberschatz, M. Stonebraker and J. Ullman. This survey paper appeared in SIGMOD 96, Vol. 25, No. 1 in March 1996. This is a reference paper. It is old but it provides a very good overview of the domain. It presents the vision of researchers in the field who are still considered today as experts. The paper is available at http://www.csis.pace.edu/~scharff/seminars/P052.pdf.**

**What topic is mentioned as an opportunity in databases?**

In Silberschatz et al., 1996, a topic that is mentioned as a research opportunity in the database sector is multimedia object storage and retrieval. In the 90s, there was an emergence of database systems like object-oriented, object-relational, and deductive object-oriented systems. With these database systems also came the question of support for other data types in addition to the numeric and character strings that had traditionally been used for storage and retrieval of data in these database systems. These multimedia data types include information from spatial data, images, videos, PDFs, and more. As an example, in 1998, NASA launched a mission "Earth Observation System" (EOS), which is a global satellite system that collects observations of the atmosphere, oceans, and land, in a variety of data formats, primarily geospatial data and data points on numerous metrics. The EOS Data and Information System (EOSDIS) was created to store incoming data from EOS, and to integrate it with other data sources. Such a large system needs to be carefully designed to allow for multimedia data objects.

**What were the predicted advancements of this topic?**

Potential research areas for multimedia objects according to Silberschatz et al., 1996 include tertiary storage, data types, service quality, multiresolution queries, and user interface support. One area for advancement of multimedia objects in databases is the storage of these objects, due to their bulky nature, on a 'tertiary level'. Tertiary storage allows slow but larger capacity access to data. The authors predict that advancements will be made for tertiary storage, in terms of faster access to the data contained within. Another predicted advancement for multimedia storage includes the development of more efficient access methods to different multimedia data types, and the integration of these new data types. This also raises the question of the service quality of data. The authors predict that advancements will be made to assure rapid and efficient presentation of the data in its desired
form. Other predicted advancements for multimedia objects include solutions for dealing with vague queries and ideas and better user interfacing for dealing with these multimedia data.

**What are the results of the research on this topic today?**

In Silberschatz et al., 1996, the authors predicted that advances will be made in the storage of multimedia objects in tertiary storage devices. However, the same technology used for tertiary storage at the time of Silberschatz et al., 1996 is still in use today, namely magnetic tapes, optical disks, and optical tapes, which may be retrieved and accessed by robotic arms (Tse, 2008). These types of tertiary storage systems are primarily used for archival data, which does not need to be accessed often. Conversely, other storage systems have evolved since Silberschatz et al., 1996 which are used for database storage, including multimedia objects. Examples of such storage systems include cloud technology (Zeng et al. 2009), flash-based solid-state drives, and hard-disk drives (Liu & Salem, 2013). Such storage systems allow for faster and more efficient access to multimedia data stored either within the database in an embedded format or linked to the database. Regarding the prediction of improvement to the quality of service for multimedia data, there are numerous studies that present research to improve data service quality, such as Sousa et al., 2012, and Klems et al., 2012. In Sousa et al. 2012, and Klems et al., 2012, there is a discussion on methods for improving the quality of service when using cloud computing for database management systems. In Silberschatz et al., 1996, the authors also predicted the development of methods to handle vague queries. Research such as Zhao and Ma, 2009, Tudorie, 2003, and Tudorie et al., 2006 develop mathematical ideas, models, and a SQL extension language to solve the problem of vague queries, hence creating an accessible interface to the database and its objects, including multimedia objects.

**References used:**

Tse, P. K. C. (2008). Tertiary Storage. In Multimedia information: storage and retrieval techniques and technologies (pp. 145–155). essay, IGI Global.

Zeng, W., Zhao, Y., Ou, K., and Song, W. (2009). Research on cloud storage architecture and key technologies. In Proceedings of the 2nd International Conference on Interaction Sciences: Information Technology, Culture and Human (ICIS '09). 

Association for Computing Machinery, New York, NY, USA, 1044– 1048. https://doi.org/10.1145/1655925.1656114.

Liu, X. and Salem, K. (2013). Hybrid storage management for database systems. Proc. VLDB Endow. 6, 8 (June 2013), 541–552. https://doi.org/10.14778/2536354.2536355.

Sousa F. R. C., Moreira L. O., Santos G. A. C., and Machado J. C. (2012). Quality of service for database in the cloud. In Proceedings of the 2nd International Conference on Cloud Computing and Services Science (CLOSER-2012). (pp 595-601). DOI: 10.5220/0003910705950601.

Klems, M., Bermbach, D., and Weinert, R. (2012). A Runtime Quality Measurement Framework for Cloud Database Service Systems. In Eighth International Conference on the Quality of Information and Communications Technology. (pp. 38-46). DOI: 10.1109/QUATIC.2012.17.

Zhao, F., and Ma, Z. M. (2009). Vague Query Based on Vague Relational Model. In: Yu, W., Sanchez, E.N. (eds) Advances in Computational Intelligence. Advances in Intelligent and Soft Computing, vol 116. Springer, Berlin, Heidelberg. https://doi.org/10.1007/978-3-642-03156-4_23.

Tudorie, C. (2003). Vague Criteria In Relational Database Queries. The Annals of "Dunarea de Jos". University of Galati. Fascicle III. Electrotechnics, Electronics, Automatic Control, Informatics. 26. (pp. 43-49).

Tudorie, C., Bumbaru, S., and Dumitriu, L. (2006). Relative Qualification in Database Flexible Queries. 3rd International IEEE Conference Intelligent Systems. (pp. 83-88). DOI: 10.1109/IS.2006.348398.

[back to Assignment 1](#assignment-1)

## Question Two
**A reservation transaction in an airline reservation system makes a reservation on a flight, reserves a seat on the plane, issues a ticket, and debits the appropriate credit card account. Assume that one of the integrity constraints of the reservation database is that the number of reservations on each flight does not exceed the number of seats on the plane. (Of course, many airlines purposely overbook and so do not use this integrity constraint). Explain how transactions running on this system might violate each of the following properties. Provide an example for each property. Atomicity, Consistency, Isolation, Durability**

**Atomicity**
The property of Atomicity states that the system needs to ensure that a real-world event allowed by the enterprise is completely transacted if it happens, or not executed at all if the real-world event does not occur (within the bounds of the integrity constraints).
If the customer reserves themselves a seat on the plane, but the system crashes and the reservation is not recorded in the database state, this is a violation of the Atomicity property.
In order to comply with the Atomicity property, the system needs to ensure that when the reservation is made, it is transacted completely and recorded in the system.

**Consistency**
The property of Consistency states that the system must satisfy all integrity constraints before the transaction and after the transaction.
One way the Consistency property would be violated is when there are X seats available on the plane to be booked, yet X + Y seats have been booked. In this case, the system did not ensure that the integrity constraint of only booking X seats, no more, was satisfied before and after each booking.
In order to comply with the Consistency property, the system needs to ensure that before a new reservation is booked, there are available seats to be booked, and that after the new reservation is booked, there is one less seat available, to reflect that 1 less of the total available seats have been reserved for this transaction. The total number of reservations made for this flight must not exceed the number of seats available.

**Isolation**
The property of Isolation states that when processing serial or concurrent transactions simultaneously, the integrity constraints are not violated.
One way the Isolation property would be violated is if 2 different customers book the same seat at the same time, and the system processes both reservations, allowing both customers to reserve the same seat. Of course, this will become an issue in the real world when it is time for both these customers to board their plane.
In order to comply with the Isolation property, the system needs to ensure that only one seat is booked at any one time, by either processing all transactions serially, or concurrently but serializable.

**Durability**
The property of Durability states that once a transaction is completed by the system, it is committed to the database state, and that this new commit is not lost.
One way the Durability property would be violated is if a customer reserves a seat and completes their payment, yet they do not receive their ticket, because the new change was not committed to the database state to complete the transaction.
To comply with the Durability property, this must not happen, and the new booking must be reflected in the database state, with a
 confirmation also being provided to the customer.

[back to Assignment 1](#assignment-1) | [back to top](#cs623-database-management)

## Assignment 2

### Question 1
**Why do we say that there are several SQLs? Provide a concrete example comparing MySQL and PostgreSQL. You can look at the most common types in MySQL and PostgreSQL.**

The Structured Query Language (SQL) has many different “flavors”, i.e. variations in the language. This is due to different database management systems using variations of SQL to comply with their systems, and to meet specific user needs. Most SQL variations follow some standard syntaxes, for example adding a semicolon after a command, however these standards are not enforced across all platforms. Some examples of SQLs include MySQL, PostgreSQL, Microsoft SQL, SQLite and more. An example of how SQLs differ from each other is provided below by comparing MySQL and PostgreSQL.

*SQL in MySQL*
- Is a Relational Database Management System
- Does not follow many SQL standards, diverges a lot from SQL compliancy
- Does not support CASCADE keyword
- To auto-increment values in a column, uses AUTO_INCREMENT keyword
- Does not support CHECK constraint keyword
- Does not support FULL OUTER JOIN keyword
- Uses single quote (‘) or double quote (“) for identifying strings
- Uses backtick (`) for identifying system identifiers

*SQL in PostgreSQL*
- Is an Object-Relational Database Management System
- Follows most SQL standards, is mostly SQL-compliant
- Supports CASCADE keyword
- To auto-increment values in a column, uses SERIAL keyword
- Supports CHECK constraint keyword
- Supports FULL OUTER JOIN keyword
- Only uses single quote (‘) for identifying strings
- Uses double quote (“) for identifying system identifiers or field names

[back to Assignment 2](#assignment-2)

### Question 2
**What is/are the difference/s between the VARCHAR and CHAR types?**

*CHAR*
- Stands for ‘character’.
- CHAR(N) stores N characters only.
- If less than N characters are provided, CHAR will add padding to amount to N.
- Thus a total of N characters, padded or otherwise, will be stored in memory.

*VARCHAR*
- Stands for ‘variable character’.
- VARCHAR(N) can store less than N characters.
- If less than N characters are provided, V ARCHAR will only store those characters.
- Only the number of characters provided will be stored in memory.

[back to Assignment 2](#assignment-2)

### Question 3
**Discuss why it is a good practice to write the create table commands using alter table. Provide 2 advantages.**

By using ALTER TABLE to add constraints, we are able to solve the circularity problem, where the creation of a table A requires the existence of a table B and vice versa, when dealing with referential integrity constraints, such as foreign keys. Thus we do not need to worry about whether the field referenced in the other table exists or not, because we create both tables A and B first before adding any constraints or foreign keys using the ALTER TABLE keyword.

By using ALTER TABLE after creating a table, we can add any missing columns, delete any existing columns, or modify the type of any columns, if needed, as opposed to dropping the table and re-creating the table with the added or dropped columns or column types. This ensures that data already stored in the table is not modified or deleted.

By using ALTER TABLE after the creation of a table and referential integrity constraints, we can drop any constraints in case of violation of integrity constraints. Similarly, we can add any extra constraints.

[back to Assignment 2](#assignment-2) | [back to top](#cs623-database-management)

## Assignment 3
I created this ERD in Microsoft Word.

[back to top](#cs623-database-management)

# Assignment 4
**What is the purpose of relational algebra? Why is it useful?**

Relational algebra is used as an intermediate language within a database management system by providing a mathematical foundational structure for queries provided to the database management system. It is useful because it uses operators to map domain values between relations, transform these domain values through a relation, and produce a domain which is a set of all the input relations. In other words, relational algebra allows a user’s input queries to be converted into a robust mathematical and relational structure, which is used by the database management system to produce an output relation.

**What is/are the link/s between relational algebra and SQL?**

Relational Query Language, which uses relational algebra, describes queries in a relational database, and is a procedural language. SQL is a declarative and application-level query language. To summarize, users can input queries to the database management system using SQL (or variants thereof), which can be converted into relational algebra in order for the query to be processed by the database management system.

[back to top](#cs623-database-management)