#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include<string.h>

int main()
{
	int N=0;
	scanf("%d",&N);
	
	//p[i]为qq号 
	int p[1000]={0};
	
	//q[i]为数位和 
	int q[1000]={0};
	
	//r用于求数位和 
	int r=0;
	
	//i为循环参数 
	int i=0;
	
	//max记录最大的数位，maxx记录最大数位对应的qq号 
	int max,maxx;
	
 	//寻找 max和maxx 
	for(i=0;i<=N-1;i++)
	{
		scanf("%d",&p[i]);
		r=p[i];
		while(r!=0)
		{
			q[i]=q[i]+r%10;
			r=r/10;
		}
		if(i==0)
		{
			max=q[i];
			maxx=p[i];
		}
		if(i>=1&&q[i]>max)
		{
			max=q[i];
			maxx=p[i];
		}
		else if(i>=1&&q[i]==max)
		{
			if(maxx<p[i])
			{
				max=q[i];
				maxx=p[i];
			}
		}
	}
	printf("%d",maxx);
	return 0;
}
