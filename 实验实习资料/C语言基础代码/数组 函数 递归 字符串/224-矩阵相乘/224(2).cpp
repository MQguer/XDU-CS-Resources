#include<stdio.h>
#include<string.h>
#include<math.h>

int main()
{
	
	int s1=0;
	int s2=0;
	int s3=0;
	int s4=0;
	
	int a[100][100]={0};
	int b[100][100]={0};
	
	//循环参数 
	int i,j;

	//循环输入 
	for(i=0;i<2;i++)
	{
		for(j=0;j<3;j++)
		{
			scanf("%d",&a[i][j]);
		}
	}
	for(i=0;i<3;i++)
	{
		for(j=0;j<2;j++)
		{
			scanf("%d",&b[i][j]);
		}
	}
	for(j=0,s1=0;j<3;j++)
	{
		s1+=a[0][j]*b[j][0];	
	}
	for(j=0,s2=0;j<3;j++)
	{
		s2+=a[0][j]*b[j][1];	
	}
	for(j=0,s3=0;j<3;j++)
	{
		s3+=a[1][j]*b[j][0];	
	}
	for(j=0,s4=0;j<3;j++)
	{
		s4+=a[1][j]*b[j][1];	
	}
	printf("%d %d\n",s1,s2);
	printf("%d %d\n",s3,s4);
	
	return 0;
} 
