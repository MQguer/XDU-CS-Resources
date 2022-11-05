#include<stdio.h>
int main()
{
	int n=0,i=0,j=0,tmp=0;//tmp表示临时变量 
	int num[100]={0};
	scanf("%d",&n);
	
	for(i=0;i<n;i++)
	{
		scanf("%d",&num[i]);
	}
	//因二叉排序树中序遍历的结果就是排序结果
	//故直接输出排序结果即可 
	
	for(i=0;i<n;i++)//冒泡排序 
	{
		for(j=0;j<n-1;j++)
		{
			if(num[j]>num[j+1])//从小到大排列 
			{
				tmp=num[j],num[j]=num[j+1],num[j+1]=tmp;//交换两数 
			}
		}
	}
	
	for(i=0;i<n;i++)
	{
		printf("%d ",num[i]);//直接输出 
	}
	return 0;
}
