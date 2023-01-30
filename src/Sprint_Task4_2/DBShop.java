package Sprint_Task4_2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DBShop {
    private static Connection connect;
    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connect= DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/bootcamp_database",
                    "root",
                    "");
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public static ArrayList<Item> getItems(){
        ArrayList<Item> items=new ArrayList<>();
        try{
            PreparedStatement statement=connect.prepareStatement("SELECT " +
                    " * FROM items");
            ResultSet resultSet=statement.executeQuery();
            while (resultSet.next()){
                Item item=new Item();
                item.setId(resultSet.getInt("id"));
                item.setName(resultSet.getString("name"));
                item.setDescription(resultSet.getString("description"));
                item.setPrice(resultSet.getDouble("price"));
                items.add(item);

            }
            statement.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return items;
    }
    public static ArrayList<User> getUsers(){
        ArrayList<User> users=new ArrayList<>();
        try {
            PreparedStatement statement=connect.prepareStatement("SELECT * FROM users");
            ResultSet resultSet=statement.executeQuery();
            while (resultSet.next()){
                User user=new User();
                user.setId(resultSet.getInt("id"));
                user.setEmail(resultSet.getString("email"));
                user.setPassword(resultSet.getString("password"));
                user.setFullName(resultSet.getString("full_name"));
                users.add(user);
            }
            statement.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return users;
    }
    public static User getUser(int id){
        User user=new User();
        try {
            PreparedStatement statement=connect.prepareStatement("SELECT * FROM users WHERE id = ?");
            statement.setInt(1,id);
            ResultSet resultSet=statement.executeQuery();
            if (resultSet.next()){
                user.setId(resultSet.getInt("id"));
                user.setEmail(resultSet.getString("email"));
                user.setPassword(resultSet.getString("password"));
                user.setFullName(resultSet.getString("full_name"));
            }
            statement.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return user;
    }
}
