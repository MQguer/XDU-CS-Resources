#include<stdio.h>
int main()
{
	
	//声明三个数组a,b,c 
	int a[2][3]={0};
	int b[3][2]={0};
	int c[2][2]={0};
	
	//声明循环参数 
	int i,j,p;
	
	//声明两个指针 
	int *p1=&a[0][0];
	int *p2=&b[0][0];

	//循环输入数组 
	for(i=0;i<6;i++)
		scanf("%d",p1++);
		
	for(i=0;i<6;i++)
		scanf("%d",p2++);

	//循环赋值 
	for (i=0;i<2;i++)
	{
		for (j=0;j<2;j++)
		{
			for (p=0; p<3;p++)
			{
			 
				c[i][j]+=a[i][p]*b[p][j];
				
			}
		}
	}
    
    //循环输出（换行哦） 
    for (i=0;i<2;i++)
	{
		for (j=0;j<3;j++)
		{
		
			printf("%d",a[i][j]);
		
	}
		printf("\n");
	}
	printf("\n");

	for(i=0;i<3;i++)
	{
		for(j=0;j<2;j++)
		{
			printf("%d",b[i][j]);
		}
		printf("\n");
	}
	printf("\n");
    
	for (i=0;i<2;i++)
	{
		for (j=0;j<2;j++)
		{
		
			printf("%d",c[i][j]);
			
		}
		
		printf("\n");
	}
	printf("\n");
	
	return 0;
}

