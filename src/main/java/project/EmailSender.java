package project;

import javax.mail.*;
import javax.mail.internet.*;
import java.util.Properties;

public class EmailSender {
    public static void sendResetPasswordEmail(String recipientEmail, String resetToken) {
        final String senderEmail = "spardhashahi@gmail.com"; // Change this to your Gmail address
        final String username = "spardhashahi@gmail.com"; // Change this to your Gmail address
        final String password = "iico islw wqbe bwtd"; // Change this to your Gmail password

        // Setup mail server properties
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "465"); // Use port 465 for SSL/TLS
        props.put("mail.smtp.ssl.enable", "true");

        // Create session with authenticator
        Session session = Session.getInstance(props, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });

        try {
            // Create a default MimeMessage object
            Message message = new MimeMessage(session);

            // Set From: header field
            message.setFrom(new InternetAddress(senderEmail));

            // Set To: header field
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipientEmail));

            // Set Subject: header field
            message.setSubject("Password Reset Instructions");

            // Set email body
            String emailBody = "Dear User,\n\n";
            emailBody += "Please click on the following link to reset your password:\n";
            emailBody += "http://localhost:13627/UniStayPro/Reset_Password.jsp?token=" + resetToken + "\n\n";
            emailBody += "If you didn't request a password reset, you can ignore this email.\n\n";
            emailBody += "Best regards,\nYour Website Team";
            message.setText(emailBody);

            // Send message
            Transport.send(message);

            System.out.println("Password reset email sent successfully to " + recipientEmail);
        } catch (MessagingException e) {
            System.err.println("Error sending password reset email to " + recipientEmail);
            e.printStackTrace();
        }
    }
}
