package ListExample;

import java.util.ArrayList;
import java.util.List;

public class ListExample {
    public static void main(String[] args) {
        List<String> arrayList = new ArrayList<String>();
        for (int i = 1; i <= 5; i++){
            arrayList.add("0" + i);
        }
        System.out.println("ArrayList: " + arrayList);
    }
}
