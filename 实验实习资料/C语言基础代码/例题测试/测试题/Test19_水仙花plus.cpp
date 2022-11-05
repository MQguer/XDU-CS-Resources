#include <stdio.h>
#include <math.h>

//声明一个函数来检验是否是水仙花数 
int isFlower(int i, int x)
{	
	int flag=1;	//用于判断main中if语句 
	int ret=i;	//保存i的值 
	int a=0;	//保存各位数字 
	int sum=0;	//求和 
	int b=1;	//保存各位的n次幂 
	int p=0;	//计数	

	while(i>0)
	{
		a=i%10;
		for(p=0;p<x;p++)
		{
			b*=a;	//b为各个位的n次幂
		} 
		sum+=b;
		i/=10;
		b=1;
	}//算出sum各个位的三次方加和 
		
	if ( sum != ret )
	{
		flag=0;
	} 		
	return flag;
}

int main ()
{	
	int n;
	scanf("%d",&n);
	
	int k=1;
	for(int j=1; j<n; j++)
	{
		k*=10;
	} //生成一个起始数值 
	 
	for(int t=k; t<k*10; t++)
	{
		if(isFlower(t,n)) printf("%d\n",t);
	}
	// t遍历n位数
	return 0; 
 }

