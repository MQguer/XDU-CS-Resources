#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
int main()
{
	int a[1000];
	char str[1000];

	int t=0;
	int m=0;
	gets(str);
	
	int i=0;
	int j=0;
	while(str[i]!='\0') 
	{
		if(str[i]=='-')
		{
			a[j]=str[i+1];
			j++;
		}
		i++;
	}
	
	if(j==0)
	{
		printf("no\n");
		return 0;
	}
	
	m=j;
	
	for(i=0;i<m;i++)
	{
		for(j=i;j<m;j++)
		{
			if(a[i]>a[j])
			{
				t=a[j];
				a[j]=a[i];
				a[i]=t;
			}
		}
	}
	
	printf("-%c ",a[0]);
	
	for(i=0;i<m-1;i++)
	{
		if(a[i]!=a[i+1])
		printf("-%c ",a[i+1]);
	}
	
	printf("\n");	
	return 0;
	
}
