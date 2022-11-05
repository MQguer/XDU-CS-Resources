#include<stdio.h>
#include<stdlib.h>
#include<math.h> 
#include<string.h>

int main()
{
	//a为输入数值的个数 
	int a=0;

	scanf("%d",&a);
	//x数组为输入的数，y数组为两项的差值 
	int x[1000]={0};
	int y[1000]={0};
	//i和j用于循环 
	int i=1;
	int j=1;
	//k用于记录最小差值 
	int k=0;
	//调用最小值函数 
	int min(int m,int n);
	
	//开始循环输入x，便于后续求y和找k 
	for(i=0;i<=a-1;i++)
	{

		scanf ("%d",&x[i]);
	}
	//定义k的初始值，便于后续比较 
	k=x[0]-x[1];
	//确保k为非负值 
	if(k<0)
	{
		k=-k;
	}
	//循环求出每一个差值，并比较得出绝对值最小的差 
	for(i=0;i<=a-1;i++)
	{
		for(j=0;j<=a-1;j++)
		{
			if(j>=1&&j!=i)
			{
				//在每一轮i循环中，x[i]是固定的，不断变化x[j]从而求出每一项有x[i]参与的差值 
				y[j]=x[i]-x[j];
				
				//确保差值非负 
				if(y[j]<0)
				{
					y[j]=-y[j];
				}
				//用上一项的差值和这一项差值比较，不断取最小值 
			k=min(k,y[j]);
			}
		}
	}
	//输出最小差值 
	printf("%d",k);
	return 0;
}

//定义min最小值函数 
int min(int m,int n)
{
	int min=0;
	if(m<=n)
	{
		min=m;
	}
	else
	{
		min=n;
	}
	return(min);
}


