#include <stdio.h>
#include <stdlib.h>
#include <math.h>
int main()
{
	int a=0;
	scanf("%d",&a);
	int sum=0;
	int j=0;
	int b;
	b=a;
	int n;
	while(b!=0)
	{
		n=b%10;
		b=b/10;
		sum+=n;
	}
	printf("%d",sum);
	return 0;
}
