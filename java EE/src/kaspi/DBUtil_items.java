package kaspi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DBUtil_items {
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
    public static ArrayList<Item> getItems(){
        ArrayList<Item> items = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement(""+
                    "SELECT it.id, it.name, it.price, it.price, it.description, it.category, " +
                    "kc.id_category, kc.name_category "+
                    "FROM kaspi_items it "+
                    "INNER JOIN kaspi_category kc on kc.id_category = it.category");
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Item item = new Item();
                item.setId(resultSet.getInt("id"));
                item.setName(resultSet.getString("name"));
                item.setPrice(resultSet.getInt("price"));
                item.setDescription(resultSet.getString("description"));
                Category category = new Category();
                category.setId(resultSet.getInt("id_category"));
                category.setName(resultSet.getString("name_category"));
                item.setCategory(category);
                items.add(item);
                System.out.println("get items");
            }
            statement.close();
        } catch (Exception e){
            e.printStackTrace();
        }
        return items;
    }

    public static Item getItem(int id){
        Item item = null;
        try {
            PreparedStatement statement = connection.prepareStatement(""+
                    "SELECT it.id, it.name, it.price, it.price, it.description, it.category, " +
                    "kc.id_category, kc.name_category "+
                    "FROM kaspi_items it "+
                    "INNER JOIN kaspi_category kc on kc.id_category = it.category "+
                    "WHERE it.id = ?");
            statement.setInt(1,id);
            ResultSet resultSet = statement.executeQuery();
            if(resultSet.next()) {
                item = new Item();
                item.setId(resultSet.getInt("id"));
                item.setName(resultSet.getString("name"));
                item.setPrice(resultSet.getInt("price"));
                item.setDescription(resultSet.getString("description"));
                Category category = new Category();
                category.setId(resultSet.getInt("id_category"));
                category.setName(resultSet.getString("name_category"));
                item.setCategory(category);
            }
            statement.close();
        } catch (Exception e){
            e.printStackTrace();
        }
        return item;
    }
    public static void addItem(Item item){
        try {
            PreparedStatement statement = connection.prepareStatement(""+
                    "INSERT INTO kaspi_items (name, price, description, category) " +
                    "VALUES (?, ?, ?, ? )");
            statement.setString(1, item.getName());
            statement.setInt(2,item.getPrice());
            statement.setString(3, item.getDescription());
            statement.setInt(4,item.getCategory().getId());
            statement.executeUpdate();
            statement.close();
        } catch (Exception e){
            e.printStackTrace();
        }
    }
    public static Category getCategory(int id){
        Category category = null;
        try{

            PreparedStatement statement = connection.prepareStatement("" +
                    "SELECT * FROM kaspi_category WHERE id_category = ?");
            statement.setInt(1, id);
            ResultSet resultSet = statement.executeQuery();

            if(resultSet.next()){
                category = new Category();
                category.setId(resultSet.getInt("id_category"));
                category.setName(resultSet.getString("name_category"));
            }
            statement.close();

        }catch (Exception e){
            e.printStackTrace();
        }
        return category;
    }
    public static void updateItem(baby.Item item) {
        try {
            PreparedStatement statement = connection.prepareStatement("" +
                    "UPDATE items SET name=?,price = ?,amount=?,country=? " +
                    "WHERE id =?");
            statement.setString(1, item.getName());
            statement.setDouble(2, item.getPrice());
            statement.setInt(3, item.getAmount());
            statement.setInt(5, item.getId());
            statement.executeUpdate();
            statement.close();


        } catch (Exception e) {
            e.printStackTrace();

        }
    }

    public static void addComment(Comment comment){
        try {
            PreparedStatement statement = connection.prepareStatement("" +
                    "INSERT INTO comments (comment, user_id, item_id, post_date) " +
                    "VALUES (?, ?, ?, NOW())");
            statement.setString(1, comment.getComment());
            statement.setInt(2, comment.getUser().getId());
            statement.setInt(3,comment.getItem().getId());
            statement.executeUpdate();
            statement.close();
        } catch (Exception e){
            e.printStackTrace();
        }
    }
    public static ArrayList getComment(int itemId){
        System.out.println(itemId);
    ArrayList<Comment> comments = new ArrayList<>();
    try {
        PreparedStatement statement = connection.prepareStatement(" "+
                "SELECT c.id, c.item_id, c.user_id, c.comment, c.post_date, ku.nickname, ku.email, ku.id as idofku " +
                "FROM comments c " +
                "INNER JOIN kaspi_users ku ON ku.id = c.user_id " +
                "WHERE c.item_id = ? " +
                "ORDER BY c.post_date DESC");
        statement.setInt(1, itemId);
        ResultSet resultSet = statement.executeQuery();
        while (resultSet.next()){
            Comment comment = new Comment();
            comment.setId(resultSet.getInt("id"));
            comment.setPostDate(resultSet.getTimestamp("post_date"));
            comment.setComment(resultSet.getString("comment"));
            Item item = new Item();
            item.setId(resultSet.getInt("item_id"));

            User user = new User();
            user.setEmail(resultSet.getString("email"));
            user.setNickname(resultSet.getString("nickname"));
            user.setId(resultSet.getInt("idofku"));

            comment.setUser(user);
            comments.add(comment);
        }
        statement.close();

    }catch (Exception e){
        e.printStackTrace();
    }
    return comments;
    }

}