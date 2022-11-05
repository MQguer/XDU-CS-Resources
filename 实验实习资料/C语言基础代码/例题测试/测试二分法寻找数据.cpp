#include "stdio.h"
#include "stdlib.h"
#include "math.h"
#include "string.h"

int main()
{
	
	//初始赋值，声明关键变量 
	int a[10] = {6,15,18,27,38,45,50,80,88,95};
	
	int low , high , mid , found , n;
	
	//初始化关键变量 
	low = 0;
	high = 9;
	found = 0;
	
	//输入需要搜索的数字 
	printf("Please give the number you would like to search:\n");
	scanf("%d",&n) ;
	
	while(low<=high)
	{
		mid = (low+high)/2;
		
		//找到n，结束循环 
		if(a[mid] == n)
		{
			found = 1;
			break;
		}
		
		//不然，则改变端点值 
		else if(a[mid]>n)
		{
			high = mid-1;
		} 
		
		else if(a[mid]<n)
		{
			low = mid+1;
		}
		
	} 
	
	//找到的情况下输出序号（脚标+1) 
	if(found == 1)
	{
		printf("The number you are searching is listed at number %d",mid+1);

	}
	
	//未找到的情况下输出"Not existed” 
	else
	{
		printf("Not existed");
	}
	
	return 0;
} 
