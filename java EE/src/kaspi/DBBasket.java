package kaspi;

import java.util.ArrayList;

public class DBBasket {
    public static ArrayList<Item> items = new ArrayList<>();
    public static void addItem(Item item){
        items.add(item);
    }
    public static ArrayList<Item> getItems(){
        return items;
    }
    public static void deleteItem(int id){
        for (int i = 0; i < items.size(); i++) {
            if(items.get(i).getId() == (id)){
                items.remove(i);
                break;
            }
        }
    }
}
