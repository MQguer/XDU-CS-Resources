#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <string.h>
int main()
{
	int a,b;
	scanf("%d %d",&a,&b);
	if(a>=b)
	{
		printf("%d %d",a%10,b*b);
	}
	else
	{
		printf("%d %d",b%10,a*a);
	}
	return 0;
}
