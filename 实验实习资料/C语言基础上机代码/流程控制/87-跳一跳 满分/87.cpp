#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <string.h>
int main()
{
	//a[i]为输入值 
	int a[1000]={0};
	
	//i,j均为循环参数 
	int i=0;
	int j=0;
	
	//k用于记录连续几项为2 
	int k=1;
	
	//score记录得分，初始值为0 
	int score=0;
	
	//输入a[i]，同时判断得分并记录，直至出现0停止循环 
	for(i=0;i>=0;i++)
	{
		scanf("%d",&a[i]);
		if(a[i]==1)
		{
			score=score+1;
		}

		// 当a[i]==2的时候，需要判断前面有几项也等于2，这时可以另外设置一个j循环，从a[i]向前推，直至出现不是2的一项a[j]，这时本次得分为2*（i-j) 
		else if(a[i]==2)
		{
			k=1; 
			for(j=0;j>=0;j++)
			{
				if(a[i-j-1]==2&&i-j-1>=0)
				{
					k=k+1;
				}
				else
				{
					score=score+2*k;
					break;
				}
			}
		}
		else if(a[i]==0)
		{
			break;
		}
	}
	printf("%d",score);
	return 0;
}
