#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<string.h>

int main()
{
	//声明并输入行数和列数n 
	int n=0;
	scanf("%d",&n);
	
	int i=0;
	int j=0;
	int a[101][101]={0};
	for(i=0;i<=n-1;i++)
	{
		for(j=0;j<=n-1;j++)
		{
			scanf("%d",&a[i][j]);
		}
	} 
	
	for(i=0;i<=n-1;i++)
	{
		for(j=0;j<=i;j++)
		{
			if(i==0)
			{
				printf("%d ",a[i][i]);
			}
			else if(i>=1&&i<=n-1)
			{
				if(i%2!=0)
				{
					printf("%d ",a[i-j][j]);
				}
				else
				{
					printf("%d ",a[j][i-j]);
				}
			}
		}
	
	} 
	
		for(i=n;i<=2*n-2;i++)
		{	
		for(j=0;j<=2*n-i-2;j++)
		{
			if(i==2*n-2)
			{
				printf("%d ",a[n-1][n-1]);
			}
			else if(i>=n&&i<2*n-2)
			{
				if(i%2==0)
				{
					printf("%d ",a[j+1][i-1-j]);
				}
				else
				{
					printf("%d ",a[i-1-j][j+1]);
				}
			}
		}
	
		}
		
		return 0;
}
