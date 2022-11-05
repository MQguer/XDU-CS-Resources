#include "stdio.h"
#include "stdlib.h"
#include "math.h"
#include "string.h"

int main()
{
	
	//测试数据a,b,c 
	int a = 1;
	int b = 64;
	int c = 24;
	
	
	/*
	测试关系运算符的值，以及关系运算符和赋值运算符的优先级
	
	理论上，d为0，e和f均为非0的数,关系运算符优先于赋值运算符
	*/
	
	int d = a > b;
	int e = a < c;
	int f = b == b; 
	
	//输出结果并检验 
	printf("%d %d %d", d , e , f );
	
	return 0; 
	 
	
	//疑问，理论上e,f非0即可，为什么都是1？ 
} 

