#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <string.h>
int main()
{
	char a=97;
	char z=122;
	int i=1;
	for(i=1;i<=26;i++)
	{
		printf("%c ",a+i-1);
		if(i==26)
		{
			printf("\n");
		}
	}
	for(i=1;i<=26;i++)
	{
		printf("%c ",z-i+1);

	}
	return 0;
}
