#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

int main()
{
	//声明和输入数字n 
	int n=0;
	scanf("%d",&n);
	
	//声明和数sum ，必须初始化为0 
	int sum=0;
	
	//声明循环参数 
	int i=1;
	int j=1;
	
	//初始化p，p用于求sum的过程 
	int p=n;
	
	//无限循环，直至和数sum为个位数，也即sum/10==0； 
	for(i=1;i>=1;i++)
	{
	//内嵌循环求sum	
		for(j=1;p!=0;j++)
		{
		sum=sum+p%10;
		p=p/10;
		}
	 
	 //判断sum是否为个位数，若不满足条件则重新初始化p和sum 
		if(sum/10!=0)
		{
			p=sum;
			sum=0;
		}
	//若满足条件则跳出循环 
		else
		{
			break;
		}

	}
	printf("%d",sum);
	return 0;
}
