import java.util.Scanner;

public class MotuPatlu
{
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        int sum = 0;
        int temp = 0;
        int reminder = n / 6;
        int reminder2 = n % 6;
        int reminder3 = reminder2 / 5;
        int reminder4 = reminder % 5;
        int reminder5 = reminder4 / 4;
        int reminder6 = reminder3 % 4;
        int reminder7 = reminder6 / 3;
        int reminder8 = reminder5 % 3;
        int reminder9 = reminder8 / 5;
        int reminder10 = reminder7 % 4;
        int reminder11= reminder10 / 4;
        int reminder12= reminder9 % 3;

        System.out.println(reminder12);
    }
}
