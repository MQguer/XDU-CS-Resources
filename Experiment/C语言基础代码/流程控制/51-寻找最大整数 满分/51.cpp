#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <string.h>
int main()
{
	int a[4]={0};
	int i=1;
	int max=0;
	scanf("%d %d %d %d",&a[0],&a[1],&a[2],&a[3]);
	max=a[0];
	for(i=1;i<=3;i++)
	{
		if(max<=a[i])
		{
			max=a[i];
		}


	}
printf("%d",max);
return 0;
}
