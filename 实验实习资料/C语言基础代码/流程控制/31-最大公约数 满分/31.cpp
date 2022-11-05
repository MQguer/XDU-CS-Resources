#include <stdio.h>
#include <stdlib.h>
#include <math.h>
int main()
{
	int a,b;
	int i=1;
	scanf("%d %d",&a,&b);
	int gcd=1;
	for(i=1;i<=a&&i<=b;i++)
	{
		if(a%i==0&&b%i==0)
		{
			gcd=i;
		}
	}
	if(a==0)
	{
		gcd=b;
	}
	if(b==0)
	{
		gcd=a;
	}
	printf("%d",gcd);
	return 0;
}

