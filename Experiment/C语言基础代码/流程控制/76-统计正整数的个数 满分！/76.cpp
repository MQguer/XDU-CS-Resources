#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <string.h>
int main()
{
	//声明并输入个数n
	int n=0;
	scanf("%d",&n); 
	
	//t为中间变量，用于交换两项 
	int t=0;

	//定义数组 
	//a[i]用于输入需要检测的数 
	
	int a[1000]={0};
	
	//b[i]用于储存a[i]中的非重复项，并最后输出 
	
	int b[1000]={0};
	
	//c[i]用于记录上述b[i]中每一项出现的次数 
	
	int c[1000]={0};
	
	//i,j为循环参数
	 
	int i=0;
	
	int j=0;
	
	//k用于记录b[i]的项数（从0项开始） 
	int k=0;
	
	//输入数组 a[i]
	for(i=0;i<=n-1;i++)
	{
		scanf("%d",&a[i]);
	} 
	
	//起泡排序,将a数组按照从小到大排序，便于检测相等的两项 
	for(i=0;i<=n-1;i++)
	{
		for(j=1;j<=n-1;j++)
		{
			if(a[j]<a[j-1])
			{
				t=a[j];
				a[j]=a[j-1];
				a[j-1]=t;
			}
		}
	}
	
	//初始化b[i],c[i],k 
	b[0]=a[0];
	k=0;
	c[0]=1;
	
	//开始记录b[i]和c[i]，同时求得k 
	 
	for(i=1;i<=n-1;i++)
	{
		if(a[i]==a[i-1])
		{
			c[k]+=1;
		}
		else
		{
			k=k+1;
			b[k]=a[i]; 
			c[k]=c[k]+1;
		}
	}
	
	//输出结果 
	for(i=0;i<=k;i++)
	{
		printf("%d:%d\n",b[i],c[i]);
	}
	return 0;
}
