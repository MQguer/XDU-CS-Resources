#include "stdio.h"
#include "stdlib.h"
#include "math.h"
#include "string.h"

int main()
{
	
	//调用两个函数，函数的定义见下 
	void printstars(); //输出星号 
	void print_message(); //输出指定的信息 
	
	//使用两个函数 
	printstars();
	print_message();
	
	return 0; 
}

//声明（定义）两个函数结构 
void printstars()
{
	printf("**********\n\n");
} 

void print_message()
{
	printf("任桂奇万岁！\n"); 
}
