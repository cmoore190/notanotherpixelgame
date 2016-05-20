
public class Inventory
{
  HashMap<String,ArrayList<Item>> items = new HashMap<String,ArrayList<Item>>();

  public void add(Item item)
  {
     String name = item.getName();
     ArrayList<Item> itemGroup = items.get(name);
     if(itemGroup==null) // add a new group, if none exist, yet
     {
       itemGroup = new ArrayList<Items>();
       items.put(name,itemGroup);
     }
     itemGroup.add(item);
  }

  public void remove(String name){
     String name = item.getName();
     ArrayList<Item> itemGroup = items.get(name);
     if(itemGroup==null) return;
     itemGroup.remove(name);
     // remove an empty group
     if(itemGroup.size()) == 0;
     items.remove(name);
  }}