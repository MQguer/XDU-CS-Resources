#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <string.h>
int main()
{
	int n=0;
	scanf("%d",&n);
	int i=1;
	int j=1;
	
	//i无限循环，直至找到满足条件的i 
	for(i=1;;i++)
	{
		//判断是否满足条件（我约掉了一个n） 
		if(n*n==2*i-2+n)
		{
			//j循环，输出n个满足条件的数 
			for(j=1;j<=n;j++)
			{
				printf("%d ",2*i-3+2*j);
			}
			break;
		}
	}
	return 0;
}
