#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<string.h>
int main()
{
	//声明并输入行（列）数m 
	int m=0;
	scanf("%d",&m);
	
	//t用来排序交换变量 
	int t=0;
	
	//a[i][j]为输入的矩阵 
	int a[100][100]={0};
	
	//b[i]为求的和值 
	int b[1000]={0};
	
	//声明循环变量 
	int i,j,k;
	
	//输入矩阵 
	for(i=1;i<=m;i++)
	{
		for(j=1;j<=m;j++)
		{
			scanf("%d",&a[i][j]);
		}
	}
	
	//求每行的和，并计入b[i]的1——m项 
	for(i=1;i<=m;i++)
	{
		for(j=1;j<=m;j++)
		{
			b[i]+=a[i][j];
		}
	}
	
	//求每列的和，并计入b[i]的m+1——2*m项 
		for(i=1;i<=m;i++)
	{
		for(j=1;j<=m;j++)
		{
			b[i+m]+=a[j][i];
		}
	}
	
	//计算主对角线和辅对角线之和，并计入b[i]的2*m+1、2*m+2项 
	for(i=1;i<=m;i++)
	{
		b[2*m+1]+=a[i][i];
	}
	for(i=1;i<=m;i++)
	{
		b[2*m+2]+=a[i][m-i+1];
	}
	
	//起泡排序法 
	for(i=1;i<=2*m+1;i++)
	{
		for(j=1;j<=2*m+1;j++)
		{
			if(b[j]<b[j+1])
			{
				t=b[j];
				b[j]=b[j+1];
				b[j+1]=t;
			}
		}
	}
	
	//输出结果，注意空格 
		for(i=1;i<=2*m+2;i++)
	{
		printf("%d ",b[i]);
	}
	
	return 0;
	
}
