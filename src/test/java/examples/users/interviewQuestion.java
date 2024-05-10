package examples.users;

import java.util.HashMap;
import java.util.Map;

public class interviewQuestion {
    public static void main(String[] args){
        System.out.println(charsWithCount("my name is Fahim Khan Mohammadi and i am living in 9940 Forest Lane Apt#2206, Dallas Texas 75243, United State of America"));
    }

    public static Map<Character, Integer> charsWithCount(String str){
        Map<Character, Integer> chars=new HashMap<Character, Integer>();
        for (int i=0; i<str.length();i++){
            if (chars.containsKey(str.charAt(i))){
                chars.put(str.charAt(i), chars.get(str.charAt(i))+1);
            }else {
                chars.put(str.charAt(i),1);
            }
        }
        return chars;
    }
}
