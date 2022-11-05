#include <stdio.h>
#include <math.h>

int main()
{
	//输入个数 
	int n=0;
	scanf("%d",&n);
	//两个数组分别表示数字和数位和； 
	int x[1000]={0};
	int y[1000]={0};
	//t和s用于交换变量 
	int t=0;
	int s=0;
	//输入数字和计算数位和 
	for(int i=0;i<=n-1;i++)
	{
		scanf("%d",&x[i]);
		//r用于计算数位和 
		int r=0;
		r=x[i];
		//计算数位和； 
		for(int j=1;r!=0;j++)
		{
			y[i]=y[i]+r%10;
			r=r/10;
		}
	}
	//起泡排序法 
	for(int i=0;i<=n-1;i++)
	{
		//每一次j循环进行一轮起泡排序 
		for(int j=0;j<=n-i-2;j++)
		{
			if(y[j]<y[j+1])
			{
				//如果符合条件，注意数字和数位和要同时交换 
				t=y[j];
				s=x[j];
				y[j]=y[j+1];
				x[j]=x[j+1];
				y[j+1]=t;
				x[j+1]=s;
			}
			//题目额外要求 
			if(y[j]==y[j+1])
			{
				if(x[j]>=x[j+1])
		    	{
					t=y[j];
					s=x[j];
					y[j]=y[j+1];
					x[j]=x[j+1];
					y[j+1]=t;
					x[j+1]=s;
		    	}
			}
		}
	}
	//输出结果 
	for(int i=0;i<=n-1;i++)
	{
		printf("%d %d\n",x[i],y[i]);
	}
	return 0;
}
