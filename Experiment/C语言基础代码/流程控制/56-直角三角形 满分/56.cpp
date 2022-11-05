#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<string.h>
int main()
{
	int a,b,c;
	scanf("%d %d %d",&a,&b,&c);
	if(a*a+b*b==c*c)
	{
		printf("%d",a*b);
	}
	else if(a*a+c*c==b*b)
	{
		printf("%d",a*c);
	}
	else if(c*c+b*b==a*a)
	{
		printf("%d",c*b);
	}
	else
	{
		printf("no");
	}
	return 0;
}
