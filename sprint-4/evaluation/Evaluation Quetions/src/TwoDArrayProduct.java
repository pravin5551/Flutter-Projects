import java.util.Scanner;

public class TwoDArrayProduct
{
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        int m = scanner.nextInt();
        int sum = scanner.nextInt();
        int [][] array = new int[n][m];
        for (int i = 0; i<n; i++)
        {
            for (int j=0; j<m; j++)
            {
                array[i][j]= scanner.nextInt();
            }
        }
        System.out.println(count(array, n, m, sum));
    }

    public static int count(int[][] array,int n, int m, int sum ) {
        int count =0;
        for (int i = 0; i<n; i++)
        {
            for (int j=0; j<m; j++)
            {
                if (i < n-2)
                {
                    int total= array[i][j] * array[i+1][j] * array[i+2][j];
                    if (total == sum){
                        count++;
                    }
                }
                if (j < m-2)
                {
                    int total = array[i][j] * array[i][j+1] * array[i][j+2];
                    if (total == sum){
                        count++;
                    }
                }
                if (i < n-2 && j<m-2){
                    int total = array[i][j] * array[i+1][j+1] * array[i+2][j+2];
                    if (total == sum){
                        count++;
                    }
                }
                if (i >= 2 && j <m-2){
                    int total = array[i][j] * array[i-1][j+1] * array[i-2][j+2];
                    if (total == sum){
                        count++;
                    }
                }
            }
        }
        return count;
    }
}
