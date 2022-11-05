#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <string.h>
int main()
{
	int s=0;
	//输入税前工资s
	scanf("%d",&s);
	//声明税后工资t
	int t=0;
	//a,b,c,d,e均为分段点
	int a=3500;
	int b=5000;
	int c=8000;
	int d=12500;
	int e=38500;
	//分段求税后工资
	if(s<=a)
	{
		t=s;
	}
	else if(s>a&&s<=b)
	{
		t=s-0.03*(s-a);
	}
	else if(s>b&&s<=c)
	{
		t=s-(b-a)*0.03-(s-b)*0.1;
	}
	else if(s>c&&s<=d)
	{
		t=s-(b-a)*0.03-(c-b)*0.1-(s-c)*0.2;
	}
	else if(s>d&&s<=e)
	{
		t=s-(b-a)*0.03-(c-b)*0.1-(d-c)*0.2-(s-d)*0.25;
	}
	else if(s>e)
	{
		t=s-(b-a)*0.03-(c-b)*0.1-(d-c)*0.2-(e-d)*0.25-(s-e)*0.3;
	}
	printf("%d",t);
	return 0;
}
