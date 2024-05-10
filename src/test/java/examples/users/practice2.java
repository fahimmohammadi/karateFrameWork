package examples.users;

public class practice2 {
    public static void main(String[] args) {
        String [][] testStatus={{"tc001","passed"},{"tc002", "failed"},{"tc003", "passed"} };

        for (int i=0;i<testStatus.length;i++){
            if (testStatus[i][1].equals("passed")){
                System.out.println(testStatus[i][0] + " " + testStatus[i][1]);
            }
        }
    }
}
