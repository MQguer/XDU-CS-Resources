#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

int main()
{
	//输入行数n和列数m 
	int n=0;
	int m=0;
	scanf("%d %d",&n,&m);
	
	//a系数列记录矩阵，b系数列用于标记是否有相同连续项 
	int a[100][100]={0};
	int b[100][100]={0};
	int i=0;
	int j=0;
	
	//输入矩阵 
	for(i=0;i<=n-1;i++)
	{
		for(j=0;j<=m-1;j++)
		{
			scanf("%d",&a[i][j]);
		}
	}
	
	//判断每行是否有可消除的连续项,并将b数列的对应项标记为1 
	for(i=0;i<=n-1;i++)
	{
		for(j=0;j<=m-3;j++)
		{
			if(a[i][j]==a[i][j+1]&&a[i][j+1]==a[i][j+2])
			{
				b[i][j]=1;
				b[i][j+1]=1;
				b[i][j+2]=1;
			}
		}
	} 
	
	//判断每列是否有可消除的连续项 
	for(j=0;j<=m-1;j++)
	{
		for(i=0;i<=n-3;i++)
		{
			if(a[i][j]==a[i+1][j]&&a[i][j]==a[i+2][j])
			{
				b[i][j]=1;
				b[i+1][j]=1;
				b[i+2][j]=1;
			}
		}
	} 	
	
	//开始消除  
	for(i=0;i<=n-1;i++)
	{
		for(j=0;j<=m-1;j++)
		{
			if(b[i][j]==1)
			{
				a[i][j]=0;
			}
		}
	}
	
	//输出消除后的矩阵 
	for(i=0;i<=n-1;i++)
	{
		for(j=0;j<=m-1;j++)
		{
			printf("%d ",a[i][j]);
		}
		printf("\n");
	}
	
	return 0;
}
