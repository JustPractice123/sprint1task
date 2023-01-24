package Spring2;

import java.util.ArrayList;

public class DBManager {
    private static ArrayList<Manager> Tasks=new ArrayList<>();
    public static void addTask1(Manager Task){
        long in= Tasks.size()+1;
        Task.id=in;
        Tasks.add(Task);
    }
    public static ArrayList<Manager> getTask(){
        return Tasks;
    }
    public static Manager getOneTask(int id){
        for (Manager m: Tasks){
            if (id==m.id){
                return m;
            }
        }
        return null;
    }
    public static void swapTask(int id, Manager m){
        Tasks.set(id,m);
    }
    public static void removeTask(int id){
        Tasks.remove(id);
    }
}
