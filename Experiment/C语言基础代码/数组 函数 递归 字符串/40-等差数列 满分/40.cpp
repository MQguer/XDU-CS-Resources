#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
int main()
{
	//声明并输入个数n，声明整数数组a
	int n=0;
	scanf("%d",&n);
	int a[100]={0};
	
	//定义循环参量i,j以及交换参量t 
	int i=0;
	int j=0;
	int t=0;
	
	for(i=0;i<=n-1;i++)
	{
		scanf("%d",&a[i]);
	} 
	
	//排序 
	for(i=0;i<=n-1;i++)
	{
		for(j=0;j<=n-2;j++)
		{
			if(a[j]<=a[j+1])
			{
				t=a[j];
				a[j]=a[j+1];
				a[j+1]=t;
			}
		}
	}
	
	//判断是否可以构成等差数列 
	for(i=0;i<=n-3;i++)
	{
		if(a[i]-a[i+1]!=a[i+1]-a[i+2])
		{
			printf("no");
			return 0;
		}
	}
	
	//输出公差 
	int p=a[0]-a[1];
	printf("%d",p);
	return 0;
}
