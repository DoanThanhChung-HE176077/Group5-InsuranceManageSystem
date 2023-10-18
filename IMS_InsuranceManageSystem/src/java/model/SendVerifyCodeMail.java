/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author thant
 */
import java.io.IOException;
import java.util.Properties;
import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.AddressException;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;

public class SendVerifyCodeMail {

    private static final String EMAIL_HOST = "smtp.gmail.com";
    private static final int EMAIL_PORT = 587;
    private static final String EMAIL_USERNAME = "huy172809@gmail.com";
    private static final String EMAIL_PASSWORD = "fycx uhny fxnb xtrh";

    public static void sendMail(String verifyCode, String usermail) throws IOException, AddressException, MessagingException, jakarta.mail.MessagingException {
        // Tạo thông tin xác thực
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", 587);
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        // Tạo phiên bản của API Jakarta Mail
        Session session = Session.getInstance(props, new jakarta.mail.Authenticator() {
            protected jakarta.mail.PasswordAuthentication getPasswordAuthentication() {
                return new jakarta.mail.PasswordAuthentication(EMAIL_USERNAME, EMAIL_PASSWORD);
            }
        });

        // Tạo thông điệp email
        Message message = new MimeMessage(session);
        message.setFrom(new InternetAddress("thanthanh2753@gmail.com"));
        message.setRecipients(Message.RecipientType.TO,
//                new InternetAddress[]{new InternetAddress("namchik03@gmail.com")});
                new InternetAddress[]{new InternetAddress(usermail)});
        message.setSubject("Verify code");
        message.setText("Your verify code is: " + verifyCode);

        // Gửi thông điệp email
        Transport.send(message);

        System.out.println("Email đã được gửi!");
    }
    
    
}

