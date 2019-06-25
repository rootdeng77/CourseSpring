import java.math.BigInteger;
import java.util.Scanner;
public class Main{
    public static void main(String[] args) {
        Scanner input=new Scanner(System.in);
        Integer a=input.nextInt();
        Integer b=input.nextInt();
        BigInteger[] A=new BigInteger[4000010];
        BigInteger e=new BigInteger("1");
        A[1]=e;
        for(int i=2;i<=a*b;i++){
            A[i]=A[i-1].multiply(BigInteger.valueOf(i));
        }
        System.out.println(A[a*b].divide(A[a]).divide(A[b]).divide(BigInteger.valueOf(998244353)));
    }
} 