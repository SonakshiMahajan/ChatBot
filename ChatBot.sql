create database ChatBot;
Use ChatBot;
CREATE TABLE questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question VARCHAR(255),
    answer VARCHAR(255)
);
INSERT INTO questions (question, answer) VALUES
    ('what is your name', 'My name is ChatBot.'),
    ('hi','Hi!! How can I assist you?'),
    ('how are you', 'I am fine, thank you.'),
    ('can you tell me a joke', 'Why don''t scientists trust atoms? Because they make up everything!'),
    ('what is the capital of France', 'The capital of France is Paris.'),
    ('what is your favorite color', 'I am a chatbot, so I don''t have a favorite color.'),
    ('how old are you', 'I am an artificial intelligence, so I don''t have an age.'),
    ('what is the meaning of life', 'The meaning of life is subjective and varies for each individual.'),
    ('what is the capital of the United States', 'The capital of the United States is Washington, D.C.'),
    ('how do I convert a string to an integer in Java', 'In Java, you can use the Integer.parseInt() method to convert a string to an integer.'),
    ('what is the largest planet in our solar system', 'The largest planet in our solar system is Jupiter.'),
    ('how do I declare a variable in Python', 'In Python, you can declare a variable by assigning a value to it using the assignment operator (=).'),
    ('what is the difference between a stack and a queue', 'A stack is a Last-In-First-Out (LIFO) data structure, while a queue is a First-In-First-Out (FIFO) data structure.'),
    ('what is the command to list all files in a directory in Linux', 'The "ls" command is used to list all files in a directory in Linux.'),
    ('what is Java', 'Java is a high-level programming language.'),
    ('what are the features of Java', 'Some features of Java include platform independence, object-oriented programming, and automatic memory management.'),
    ('what is a class in Java', 'A class in Java is a blueprint for creating objects that define its properties and behavior.'),
    ('what is an interface in Java', 'An interface in Java is a collection of abstract methods and constants that can be implemented by classes.'),
    ('what is the difference between equals() and == in Java', 'The equals() method is used to compare the content of objects for equality, while == compares the references of objects.'),
    ('what is the main() method in Java', 'The main() method is the entry point of a Java program and is called by the Java Virtual Machine (JVM) to start the execution.'),
    ('what is the capital of India', 'The capital of India is Delhi.');
INSERT INTO questions (question, answer) VALUES
    ('What is SQL', 'SQL stands for Structured Query Language, and it is a language used for managing and manipulating relational databases.'),
    ('What is a database', 'A database is a structured collection of data organized and stored in a computer system.'),
    ('What are the different types of SQL statements', 'SQL statements can be categorized into three main types: Data Definition Language (DDL), Data Manipulation Language (DML), and Data Control Language (DCL).'),
    ('What is the SELECT statement used for', 'The SELECT statement is used to query data from one or more tables in a database.'),
    ('What is the difference between primary key and foreign key', 'A primary key is a unique identifier for a record in a table, while a foreign key is a field that refers to the primary key in another table.'),
    ('What is normalization in database design', 'Normalization is the process of organizing data in a database to eliminate redundancy and dependency, resulting in an efficient and optimized database structure.'),
    ('What is an index', 'An index is a database structure that improves the speed of data retrieval operations on a table.'),
    ('What is a join in SQL', 'A join is used to combine rows from two or more tables based on a related column between them.'),
    ('What is the difference between WHERE and HAVING clauses', 'The WHERE clause is used to filter rows before grouping in a query, while the HAVING clause is used to filter rows after grouping.'),
    ('What is the purpose of the ORDER BY clause', 'The ORDER BY clause is used to sort the result set of a query based on one or more columns in ascending or descending order.');
INSERT INTO questions (question, answer)
VALUES
    ('How tall are you', 'As an AI, I don''t have a physical form, so I don''t have a height.'),
    ('Can you sing', 'I can''t sing, but I can provide information and engage in conversation.'),
    ('How can I contact customer support', 'You can contact customer support by calling our helpline at +1-123-456-7890.'),
    ('Tell me a fun fact.', 'Did you know that honey never spoils? Archaeologists have found pots of honey in ancient Egyptian tombs that are over 3,000 years old and still perfectly edible.'),
    ('What is the largest planet in our solar system?', 'Jupiter is the largest planet in our solar system.'),
    ('How do I change my password', 'To change your password, go to the account settings page and follow the instructions to update your password.'),
    ('What is the square root of 64', 'The square root of 64 is 8.'),
    ('Can you recommend a good book to read', 'Sure! "To Kill a Mockingbird" by Harper Lee is a classic and highly recommended.'),
    ('What is the time zone of New York City', 'New York City is in the Eastern Standard Time (EST) zone.');



