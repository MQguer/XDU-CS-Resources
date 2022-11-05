#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <string.h>
int main()
{
	int m=0;
	scanf("%d",&m);
	if(m<60)
	{
		printf("E");
	}
 	else if(m>=60&&m<=69)
 	{
		printf("D");
	}
	 	else if(m>=70&&m<=79)
 	{
		printf("C");
	}
	 	else if(m>=80&&m<=89)
 	{
		printf("B");
	}
	 	else if(m>=90)
 	{
		printf("A");
	}
	return 0;
}
