package examples.users;

public class fizzbuzz {
    public static void main(String[] args) {
   printFizzBuzz(1,30);
    }



    public static void printFizzBuzz(int start,int end) {
        for (int i = start; i <= end; i++) {
            if (i % 3 == 0 && i % 5 == 0) {
                System.out.println("FizzBuzz");
            } else if (i % 3 == 0) {
                System.out.println("Fizz");
            } else if (i % 5 == 0) {

                System.out.println("Buzz");
            } else {
                System.out.println(i);
            }
        }}}
