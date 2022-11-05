#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main()
{
	int a,b;
	int i,j;
	scanf("%d %d",&a,&b);
	for(i=a;i<=b;i++)
	{
		int sum=0;
		for(j=1;j<=i/2;j++)
		{
			if(i%j==0)
			{
				sum+=j;
			}
		}
		if(sum==i)
		{
			printf("%d\n",i);
		}
	}
	return 0;
}
