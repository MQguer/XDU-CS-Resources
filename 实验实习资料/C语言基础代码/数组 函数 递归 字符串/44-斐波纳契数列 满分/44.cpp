#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<string.h>
int main()
{
	//输入项数n 
	int n=0;
	scanf("%d",&n);
	
	//调用斐波那契数列的函数 
	int Fib(int n);
	
	//计算第n项斐波那契数，这里n从1开始计 
	int m=Fib(n);
	int i=0;
	
	//1不是素数也不是合数，单独考虑 
	if(m==1)
	{
		printf("%d",m);
		return 0;
	}
	
	//判断是否为素数 
	for(i=2;i<m;i++)
	{
		if(m%i==0&&m!=2)
		{
			printf("%d",m);
			return 0;
		}

	}
	printf("yes");
	
	return 0;
}

//声明斐波那契数列的函数 
int Fib(int n)
{
	//第一项和第二项为人为规定，单独声明 
	if(n==1)
	{
		return(1);
	}
	else if(n==2)
	{
		return(1);
	}
	else
	{
		return(Fib(n-1)+Fib(n-2));
	}
}
