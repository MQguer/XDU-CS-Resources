#include <stdio.h>
#include <math.h>

int main()
{
	int a=0;
	int b=0; 
	scanf("%d %d",&a,&b);
	
	const double PI = 3.1415926;
	
	float m = 4*PI*7.86*a*a*a/24000;
	float n = 4*PI*19.3*b*b*b/24000;
	
	printf("%.3f %.3f",m,n); //三位小数 
	return 0;
}
