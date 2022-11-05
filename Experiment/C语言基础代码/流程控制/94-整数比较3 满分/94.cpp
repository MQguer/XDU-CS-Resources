#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <string.h>
int main()
{
	int a[4];
	int i=0;
	int j=1;
	int t=0;
	for(i=0;i<=3;i++)
	{
		scanf("%d",&a[i]);
	}
	
	//ÆðÅÝÅÅÐò 
	for(i=0;i<=4;i++)
	{
		for(j=1;j<=3;j++)
		{
			if(a[j]<a[j-1])
			{
				t=a[j];
				a[j]=a[j-1];
				a[j-1]=t;
			}
		}
	}
	for(i=0;i<=3;i++)
	{
	
	printf("%d ",a[i]);
	}
	return 0;
}
