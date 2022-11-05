#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

int main()
{
	int n=0;
	char t[100]={'\0'};
	scanf("%d",&n);
	char x[100][100]={'\0'};
	
	//循环参数 
	int k=0;
	int i=0;
	//记录最小 
	int min=0;
	for(i=0;i<n;i++)
	{
		scanf("%s",x[i]);
	}
	
	
	for(i=0;i<n-1;i++)
	{
		for(k=i+1,min=i;k<n;k++)
		{
			if(x[k][0]<x[min][0])
			{
				min=k;
			}
		}
		
		if(min!=i)
		{
			strcpy(t,x[i]);strcpy(x[i],x[min]);strcpy(x[min],t);
		}
		
	}
	
	//输出结果 
	for(i=0;i<n;i++)
	{
		printf("%s\n",x[i]);
	}
	
	return 0;
}
