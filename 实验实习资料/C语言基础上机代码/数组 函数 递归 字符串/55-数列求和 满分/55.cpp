#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

//发现分子分母代表的数列满足同样的递推，只是前两项不同，因此可以定义两个相像的函数解决问题 

int main()
{
	//声明和输入项数n 
	int n=0;
	scanf("%d",&n);
	
	//声明和数  
	double sum=0;
	
	//分别调用两个函数 
	int Fib1(int n);
	int Fib2(int n);
	
	int i=0; 
	for(i=1;i<=n;i++){
	//利用两个函数求出分子a和分母b 
	int a=Fib1(i);
	int b=Fib2(i);
	double x=(double)a/(double)b;
	sum+=x;
	}
	
	
	printf("%.2lf",sum);
	return 0; 
}

int Fib1(int n)
{
	if(n==1)
	{
		return(2);
	}
	else if(n==2)
	{
		return(3);
	}
	else
	{
		return(Fib1(n-1)+Fib1(n-2));
	}
}

int Fib2(int n)
{
	if(n==1)
	{
		return(1);
	}
	else if(n==2)
	{
		return(2);
	}
	else
	{
		return(Fib2(n-1)+Fib2(n-2));
	}
}
