import java.util.Scanner;


public class CountPairs
{
    public static void main(String[] args) {
        Scanner scanner= new Scanner(System.in);
        int N = scanner.nextInt();
        int sum = scanner.nextInt();
        int[] a=new int[N];
        int count = 0;
        for (int i =0; i<N; i++)
        {
            a[i] = scanner.nextInt();
        }
        for (int i=0; i<N; i++)
        {
            for (int j= i+1; j<N; j++)
            {
                if (a[i] + a[j] == sum)
                {
                    count++;
                }
            }
        }
        System.out.println(count);
    }
}