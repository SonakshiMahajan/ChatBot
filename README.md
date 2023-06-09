# ChatBot
This is a ChatBot application made using Java Swing Framework, JDBC , MySQL database 

# ChatBot Application For Caelius Consultants
This is a simple ChatBot Application developed using Java Swing for the Graphical User Interface, MySQL for the database which consists of pre-defined question answer pairs, JDBC for connectivity.

# Functions
* User can ask questions and receive responses.
* User can also ask current date and current time.
* The application fetches the answers from the MySQL database corresponding to the question asked.
* User can input question in any format (Lowercase or Uppercase) and will receive the answer if exists in the database.

# Getting Started
To run the chatbot application locally, follow these steps:

1. Set up a MySQL database:
  * Create a database named ChatBot.
  * Create a table named questions with the following columns:
     * question (VARCHAR) - The question.
     * answer (VARCHAR) - The corresponding answer to the question.

2. Update the database connection details:  
  * Open the BotChat class.
  * Modify the connection URL, username, and password in the BotChat constructor based on your MySQL configuration.

3. Compile and run the application:
  * Compile the BotChat.java file using a Java compiler.
  * Run the compiled file to start the chatbot application.
