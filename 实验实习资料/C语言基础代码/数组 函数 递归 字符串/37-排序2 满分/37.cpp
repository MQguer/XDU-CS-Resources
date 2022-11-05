#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<string.h>
int main()
{
	//声明并输入个数n 
	int n=0;
	scanf("%d",&n);
	
	//声明并循环输入n项数组 
	int a[1000]={0};
	int i=0;
	for(i=0;i<=n-1;i++)
	{
		scanf("%d",&a[i]);
	} 
	
	//声明循环参数j和交换中间量t 
	int j=0;
	int t=0;
	
	//确保偶数/较大数在前，奇数/较小数在后 
	for(i=0;i<=n+1;i++)
	{
		for(j=0;j<=n-2;j++)
		{
			if(a[j]%2!=0&&a[j+1]%2==0)
			{
				t=a[j];
				a[j]=a[j+1];
				a[j+1]=t;
			}
			if((a[j]+a[j+1])%2==0&&a[j]<a[j+1])
			{
				t=a[j];
				a[j]=a[j+1];
				a[j+1]=t;
			}
		}
	}
	
	
	
	//循环输出排序后的数组 
	for(i=0;i<=n-1;i++)
	{
		printf("%d ",a[i]);
	}
	
	return 0;
}
