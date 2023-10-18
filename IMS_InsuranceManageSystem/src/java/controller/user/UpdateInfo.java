package controller.user;

import dao.UserDAO;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
//import jdk.nashorn.internal.parser.JSONParser;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

@WebServlet(name = "UpdateInfo", urlPatterns = {"/UpdateInfo"})
public class UpdateInfo extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Đọc dữ liệu JSON từ yêu cầu
        BufferedReader reader = request.getReader();
        StringBuilder jsonBuilder = new StringBuilder();
        String line;
        while ((line = reader.readLine()) != null) {
            jsonBuilder.append(line);
        }
         

        // Khởi tạo một đối tượng JSONParser
        JSONParser parser = new JSONParser();
        try {
            JSONObject jsonObject = (JSONObject) parser.parse(jsonBuilder.toString());
            int user_id = Integer.parseInt((String) jsonObject.get("user_id")); // Chuyển đổi user_id sang kiểu số nguyên
            String user_fullname = (String) jsonObject.get("user_fullName");
            String user_email = (String) jsonObject.get("user_email");
            String user_password = (String) jsonObject.get("user_password");
            Date user_dob = Date.valueOf((String) jsonObject.get("user_dob")); // Chuyển đổi user_dob sang kiểu Date
            String user_address = (String) jsonObject.get("user_address");
            String user_phoneNum = (String) jsonObject.get("user_phoneNum");
            String user_iden = (String) jsonObject.get("user_iden");

            // Gọi phương thức updateUser từ UserDAO để cập nhật thông tin người dùng
            UserDAO dao = new UserDAO();
            dao.updateUser(user_id, user_fullname, user_email, user_password, 
                    user_dob, user_address, user_phoneNum, user_iden);

            
        } catch (Exception e) {
            e.printStackTrace();
            response.setContentType("text/plain");
            PrintWriter out = response.getWriter();
            out.println("Có lỗi xảy ra khi cập nhật thông tin");
        }
 }
}
