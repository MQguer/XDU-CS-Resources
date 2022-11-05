#include <stdio.h>
#include <math.h>

int main()
{
	//定义a,b,c;同时这三个数也作为循环参量
	int a=1;
	int b=0;
	int c=0;
	
    //定义并输入n
	int n=0;
	scanf("%d",&n);
	//三层循环，使得a,b,c均循环到9，依次求出每种情况，输出符合的情况 （注意a和c都作为最高位，不可等于0） 
	for(a=1;a<=9;a++)
	{
		for(b=0;b<=9;b++)
		{
			for(c=1;c<=9;c++)
			{
				if(a*101+b*20+c*101==n)
				{
					printf("%d %d %d\n",a,b,c);

				}

			}
		}
	} 
	return 0;
} 
