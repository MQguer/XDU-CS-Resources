#include "stdlib.h"
#include "math.h"
#include "string.h"
#include "stdio.h"

int main()
{
	//a的二进制表示是11；b的二进制表示是1；c的二进制表示是10； 
	int a = 3;
	int b = 1;
	int c = 2;
	
	//现在分别将a,e,f左移4位、左移6位、右移1位，理论上分别扩大16倍、扩大64倍、缩小至1/2 
	int d = a<<4;
	int e = b<<6;
	int f = c>>1;
	
	//输出检验结果 
	printf("%d %d %d",d,e,f);
	
	return 0; 
}
