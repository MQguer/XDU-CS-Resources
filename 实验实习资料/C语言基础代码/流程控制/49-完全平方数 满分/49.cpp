#include <stdio.h>
#include <stdlib.h>
#include <math.h>
int main()
{
	int n=0;
	int i=1;
	int m=0;
	scanf("%d",&n);
	if(n==0)
	{
		printf("0");
		return 0;
	}
	if(n==1)
	{
		printf("1");
		return 0;
	}
	for(i=1;i<=n/2;i++)
	{
		if(n%i==0&&n/i==i)
		{
			printf("%d",i);
			m=1;
			break;
		}
		
	}
	if(m==0)
	{
		printf("no");
	}
	return 0;
}
