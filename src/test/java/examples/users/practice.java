package examples.users;

import net.minidev.json.JSONUtil;

import java.util.ArrayList;
import java.util.HashSet;

public class practice {
    public static void main(String[] args) {
   /*     String str[] = {"Karim","Kamran","Kamran","Fahim","Javid"};
        boolean StringElement = false;
        for (int i = 0; i < str.length; i++) {
            for (int j = i + 1; j < str.length; j++) {
                if (str[i] == str[j]) {
                    System.out.println("duplicate element found:" + str[i]);
                    StringElement=true;
                }

            }
        }
if (StringElement==false){
    System.out.println("duplicate element not found");
}*/
        boolean flag=false;
        String str[] = {"Karim","Kamran","Fahim","Javid"};
        HashSet<String> string=new HashSet<>();
        for (String Str:str){
            if (string.add(Str)==false){
                System.out.println("duplicate element found:" + Str);
                flag=true;
            }
        }
     if (flag==false){
         System.out.println("duplicate element not found");
    }

    }}
