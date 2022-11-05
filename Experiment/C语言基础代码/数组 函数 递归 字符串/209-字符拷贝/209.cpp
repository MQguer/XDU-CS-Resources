#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

int main()
{
	//定义字符数组，输入字符串 
	char x[101]={'\0'};
	char y[101]={'\0'};
	gets(x);
	
	int n=0;
	scanf("%d",&n);
	
	//循环参数 
	int i=0;
	int j=0;
	
	int p=n+1;
	
	if(x[p]==32)
	{
		p++;
	}
	for(j=0,i=p;x[i]!='\0';j++,i++)
	{
		y[j]=x[i];
	}
	
	//输出结果 
	printf("%s",y);
	return 0;
} 
