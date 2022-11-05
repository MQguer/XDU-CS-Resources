#include <stdio.h>
#include <stdlib.h>
#include <math.h>
int main()
{
	int a,b,c;
	scanf("%d",&a);
	int i=2;
	int j=1;
	int k=1;
	for(i=2;i<=a/2;i++)
	{
		int m=0;
		int n=0;
		int t=a-i; 
		for(j=1;j<=i;j++)
		{
			if(i%j==0)
			{
				m=m+1;
			}
		}
		if(m==2)
		{
		for(k=1;k<=t;k++)
		{
			if(t%k==0)
			{
				n=n+1;
			}
		}
		}
		if(n==2)
		{
			printf("%d %d",i,t);
        	break;
		}
	}
	return 0;
}
