
import java.util.*;


public class Inventory
{
  
  HashMap<String,ArrayList<Item>> items = new HashMap<String,ArrayList<Item>>();

  public void add(Item item)
  {
     String name = item.getName();
     ArrayList<Item> itemGroup = items.get(name);
     if(itemGroup==null) // add a new group, if none exist
     {
       itemGroup = new ArrayList<Item>();
       items.put(name,itemGroup);
     }
     itemGroup.add(item);
  }

  public void remove(Item item){
     String rName = item.getName();
     ArrayList<Item> itemGroup = items.get(rName);
     if(itemGroup==null) return;
     itemGroup.remove(rName);
     // remove an empty group

     if(itemGroup.size() == 0);
     items.remove(rName);
  }
}
  

  