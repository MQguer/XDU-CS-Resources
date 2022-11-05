#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
int main()
{
	int n=0,i;
	scanf("%d",&n);
	
	for(i=n+2;i<=10;i++)
	{
		printf("%d ",i);
	}
	for(i=1;i<=n+1;i++)
	{
		printf("%d ",i);
	}
	
	return 0;
}
