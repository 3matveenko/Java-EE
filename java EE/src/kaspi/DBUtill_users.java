package kaspi;

import baby.Item;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBUtill_users {
    private static Connection connection;
    static {
        try {
            Class.forName("org.postgresql.Driver");
            connection = DriverManager.getConnection(
                    "jdbc:postgresql://localhost:5432/bootcamp3_db", "bob","bob");

        } catch (Exception e){
            e.printStackTrace();
        }
    }
    public static User getUser(String email){
        User user = null;
        try{
            PreparedStatement statement = connection.prepareStatement(""+
                    "SELECT  * FROM kaspi_users WHERE email = ?");
            statement.setString(1,email);
            ResultSet resultSet = statement.executeQuery();
            if(resultSet.next()){
                user = new User();
                user.setId(resultSet.getInt("id"));
                user.setEmail(resultSet.getString("email"));
                user.setPassword(resultSet.getString("password"));
                user.setNickname(resultSet.getString("nickname"));
                user.setAccess(resultSet.getInt("access"));
                System.out.println("user" + user);
            }
            statement.close();
        } catch (Exception e){
            e.printStackTrace();
        }
        return user;
    }
    public static void addUser(User user){
        try {
            PreparedStatement statement = connection.prepareStatement(""+
                    "INSERT INTO kaspi_users (email, password, nickname, access) " +
                    "VALUES (?, ?, ?, 2)");
            statement.setString(1, user.getEmail());
            statement.setString(2, user.getPassword());
            statement.setString(3, user.getNickname());
            statement.executeUpdate();
            statement.close();
        } catch (Exception e){
            e.printStackTrace();
        }
    }
    public static User getEmail(String email){
        User user = null;
        try {
            PreparedStatement statement = connection.prepareStatement(""+
                    "SELECT * FROM kaspi_users WHERE email = ? ");
            statement.setString(1,email);
            ResultSet resultSet = statement.executeQuery();
            if(resultSet.next()){
                user = new User();
                user.setEmail(resultSet.getString("email"));
            }
            statement.close();
        } catch (Exception e){
            e.printStackTrace();
        }
        return user;
    }
    public static void updateUser(User user) {
        try {
            PreparedStatement statement = connection.prepareStatement("" +
                    "UPDATE kaspi_users SET email= ?, password = ?, nickname= ? " +
                    "WHERE id = ?");
            statement.setString(1, user.getEmail());
            statement.setString(2, user.getPassword());
            statement.setString(3, user.getNickname());
            statement.setInt(4,user.getId());
            statement.executeUpdate();
            statement.close();
        } catch (Exception e) {
            e.printStackTrace();

        }
    }
}
