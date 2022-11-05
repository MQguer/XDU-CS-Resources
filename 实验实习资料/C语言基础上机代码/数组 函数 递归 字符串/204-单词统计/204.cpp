#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>


int main()
{	
	char a[9]={'\0'};
	char x[101]={'\0'};

	
	//申明函数 
	int Fib(char a[],char x[]);
	
	gets(x);
	scanf("%s",a);
	
	int num=0;
	num=Fib(a,x);
	
	printf("%s %d",a,num);
	return 0;
}

//声明函数 
int Fib(char a[],char x[])
{

	int k=0;
	int i,j;
	int num=0;
	char y[100][100]={'\0'};
	
	
	for(i=0,j=0;x[i]!='\0';i++)
	{
		if(x[i]!=32)
		{
			y[j][k]=x[i];
			k++;
		}
		else
		{
			j++;k=0;
		}
	}
	for(i=0,num=0;i<=j;i++)
	{
		if(strcmp(y[i],a)==0)
		{
			num++;
		}
	}
	return num;
}
