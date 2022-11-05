#include <stdio.h>
#include <stdlib.h>
#include <math.h>
int main()
{
	int n=0;
	int t=0;
	int i;
	scanf("%d",&n);
	for(i=1;n!=1;i++)
	{
		if(n%2==0)
		{
			n/=2;
			t+=1;
		}
		else
		{
			n=3*n+1;
			t+=1;
		}
	}
	printf("%d",t);
	return 0;
}
