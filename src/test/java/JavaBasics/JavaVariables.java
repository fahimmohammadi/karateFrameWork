package JavaBasics;

import ch.qos.logback.core.net.SyslogOutputStream;

public class JavaVariables {
    public static void main(String[] args) {
        int [] data=new int[5];
        data[0]=34;
        data[1]=25;
        data[2]=26;
        data[3]=27;
        data[4]=30;
        for (int i=0;i<data.length;i++){
            System.out.println(data[i]);
        }
        for (int i:data){
            System.out.println(i);
        }
String name[]={"fahim","Karim","Kamran"};
        for (String names:name){
            System.out.println(names);
            System.out.println();
        }
    }
}
