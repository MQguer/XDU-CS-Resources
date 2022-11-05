#include <stdio.h>
#include <stdlib.h>
#include <math.h>
int main()
{
	int m;
	int n;
	int q;
	int r;
	scanf("%d %d %d %d",&m,&n,&q,&r);
	if(q==m/n&&r==m%n)
	{
		printf("yes");
	}
	else
	{
		printf("%d %d",m/n,m%n);
	}
	return 0;
}
