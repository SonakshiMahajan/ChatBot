import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;  

public class BotChat extends JFrame {
    private JTextArea chatArea;
    private JTextField input;
    private JButton Button;
    private Connection con;

    public BotChat() {
        setTitle("ChatBot");
        setSize(700, 700);
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        setLayout(new BorderLayout());

        chatArea = new JTextArea();
        chatArea.setEditable(false);

        JScrollPane sc = new JScrollPane(chatArea);
        add(sc, BorderLayout.CENTER);

        JPanel inputPanel = new JPanel();
        inputPanel.setLayout(new BorderLayout());

        input = new JTextField();
        input.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                sendMessage();
            }
        });

        Button = new JButton("Send");
        Button.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                sendMessage();
            }
        });

        inputPanel.add(input, BorderLayout.CENTER);
        inputPanel.add(Button, BorderLayout.EAST);
        add(inputPanel, BorderLayout.SOUTH);

        // Establish database connection
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ChatBot", "root", "Sona@2909");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        SampleQuestions();
    }
    
    	//method that adds sample questions on the screen
    
    public void SampleQuestions(){
    	try (Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("SELECT question FROM questions LIMIT 15")) {

               chatArea.append("\n Some Sample Questions that can be asked are given below :\n");
               while (rs.next()) {
                   String question = rs.getString("question");
                   chatArea.append("     -" + question + "\n");
               }
               chatArea.append("\n");

           } catch (SQLException e) {
               e.printStackTrace();
           }
    }
    //method for sending the messages 

    public void sendMessage() {
        String message = input.getText();
        chatArea.append("You: " + message + "\n");
        input.setText("");

        String response = generateResponse(message);
        chatArea.append("Bot: " + response + "\n");
    }
    
    //method for generating responses

    public String generateResponse(String question) {
        String response = "Sorry, I don't have an answer for that.";

        if (question.equalsIgnoreCase("What is the date today")) {
            LocalDate currentDate = LocalDate.now();
            response = "Today's date is " + currentDate.toString();
        } else if (question.equalsIgnoreCase("what is the current time")) {
            LocalTime currentTime = LocalTime.now();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm:ss");
            response = "The current time is " + currentTime.format(formatter);
        } else {
            try (Statement statement = con.createStatement();
                 ResultSet resultSet = statement.executeQuery("SELECT answer FROM questions WHERE LOWER(question) = LOWER('" + question + "')")) {

                if (resultSet.next()) {
                    response = resultSet.getString("answer");
                }

            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return response;
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(new Runnable() {
            public void run() {
                BotChat bot = new BotChat();
                bot.setVisible(true);
            }
        });
    }
}
