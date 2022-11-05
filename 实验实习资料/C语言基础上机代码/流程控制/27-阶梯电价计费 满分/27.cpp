#include <stdio.h>
#include <stdlib.h>
#include <math.h>
int main()
{
	double e=0;
	double f=0;
	scanf("%lf",&e);
	if(e<=110)
	{
		f=e*0.50;
	}
	else if(e>110&&e<=210)
	{
		f=110.00*0.50+(e-110.00)*0.55;
	}
	else if(e>=210)
	{
		f=110.00*0.50+100*0.55+(e-210.00)*0.70;
	}
	printf("%.2lf",f);
	return 0;
}
