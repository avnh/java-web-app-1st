/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;

/**
 *
 * @author Viet Anh
 */
public class UserDB {

    public int checkLogin(String username, String password) {
        try {
//            Database db = new Database();
            Connection conn = Database.getConnection();
            String sql = "SELECT id FROM users where username = ? and password = ?;";
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setString(1, username);
            pstm.setString(2, sha1(password));
            ResultSet rs = pstm.executeQuery();

//            User user = new User();
            if (rs.next()) {
                return rs.getInt("id");
            }

//        return new User(id, "Viet Anh", "", "vietanh@localhost", "Tran Viet Anh", 23, "Hello world", "Student");
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            return -1;
        }
        return -1;
    }

    public User getUser(int id) {
        try {
//            Database db = new Database();
            Connection conn = Database.getConnection();
            String sql = "SELECT * FROM users where id = ?;";
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setInt(1, id);
            ResultSet rs = pstm.executeQuery();

            User user = new User();
            if (rs.next()) {
                user.setUsername(rs.getString("username"));
                user.setFullname(rs.getString("fullname"));
                user.setEmail(rs.getString("email"));
                user.setIntroduction(rs.getString("introduction"));
                user.setJob(rs.getString("job"));
                user.setAge(rs.getInt("age"));
                user.setId(id);
                return user;
            }

//        return new User(id, "Viet Anh", "", "vietanh@localhost", "Tran Viet Anh", 23, "Hello world", "Student");
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        return null;
    }

    public int addUser(String username, String password) {
        try {
//            Database db = new Database();
            password = sha1(password);
            Connection conn = Database.getConnection();
            String sql = "INSERT INTO `users` (`username`, `password`) VALUES (?, ?);";
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setString(1, username);
            pstm.setString(2, password);
            int rs = pstm.executeUpdate();
            return rs;

//        return new User(id, "Viet Anh", "", "vietanh@localhost", "Tran Viet Anh", 23, "Hello world", "Student");
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
//            return -1;
        }
        return -1;
    }

    public String sha1(String s) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-1");
            byte[] mdbytes;
            mdbytes = s.getBytes("UTF-8");
            mdbytes = md.digest(mdbytes);
            StringBuilder hexString = new StringBuilder();
            for (int i = 0; i < mdbytes.length; i++) {
                hexString.append(Integer.toHexString(0xFF & mdbytes[i]));
            }
            return hexString.toString();
        } catch (NoSuchAlgorithmException | UnsupportedEncodingException ex) {
            Logger.getLogger(UserDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return s;

    }

    public static void main(String[] args) {
        String a = "fullname";
        String b = "Viet Anh Tran";
        int c = 1;
        int i = new UserDB().updateUser(c, a, b);
        System.out.println(i);
    }

    public int updateUser(int userID, String attrName, String attrVal) {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
//        return 1;
        try {

//            Database db = new Database();
            String attrList[] =  {"fullname", "email", "age", "job", "introduction"};
            boolean flag = false;
            for (String attrList1 : attrList) {
                if (attrName.endsWith(attrList1)) {
                    flag = true;
                    break;
                }
            }
            if (!flag) {
                return -1;
            }
//            attrList.
            Connection conn = Database.getConnection();
            String sql = String.format("UPDATE users SET `%s` = ? WHERE id = ?;", attrName);
            PreparedStatement pstm = conn.prepareStatement(sql);
//            pstm.setString(1, attrName);
            pstm.setString(1, attrVal);
            pstm.setInt(2, userID);
//            pstm.
            int rs = pstm.executeUpdate();
            return rs;

//        return new User(id, "Viet Anh", "", "vietanh@localhost", "Tran Viet Anh", 23, "Hello world", "Student");
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
//            return -1;
        }
        return -1;
    }
}
