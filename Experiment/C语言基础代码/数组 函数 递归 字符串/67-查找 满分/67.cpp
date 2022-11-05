#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>



int main()
{
	//声明并输入项数n和查找数字k
	int n=0;
	int k=0;
	scanf("%d %d",&n,&k);
	
	//声明标识变量m
	int m=0; 
	
	//声明并循环输入数组，并检测是否等于k：如果是则输出项数i ,同时m加一 
	int a[1000]={0};
	int i=0;
	for(i=0;i<=n-1;i++)
	{
		scanf("%d",&a[i]);
		if(a[i]==k)
		{
			printf("%d ",i);
			m+=1;
		}
	} 
	
	//审题：若没有数等于k，也即m=0，则输出-1 
	if(m==0) 
	{
		printf("-1");
	} 
	
	return 0;	
}
