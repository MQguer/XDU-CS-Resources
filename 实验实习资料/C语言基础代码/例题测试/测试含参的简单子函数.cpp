#include "stdio.h"
#include "stdlib.h"
#include "math.h"
#include "string.h"

int main()
{
	//声明所需变量 
	int a, b, c;
	
	//输入a和b的值 
	scanf("%d %d", &a, &b );
	
	//调用函数，这里依旧是形式参量 (注意形式参量的定义和调用需要注明类型，如下int，但在使用时无需注明） 
	int max(int x,int y); 
	
	//使用函数max计算c，c取a和b中的最大值
	//注意括号里的是实际参量，即实参（因为在main函数内），不注明数据类型 
	c = max(a,b);
	
	//输出c,检验结果 
	printf("Max is %d",c);
	
	return 0;
	
}

//声明（定义）新函数，注意括号里是形式参量，即形参，需要注明数据类型 
//注：C语言中凡是不加特殊说明的函数均按照整型处理（规定） 
int max(int x,int y)
{	
	//这里不需要再声明形参的类型 
	int z;
	
	//三目运算符的应用 
	z = x > y ? x : y;
	
	//返还z值,等价于return z; 
	//注：return后可以是一个表达式,但值应以函数类型为准 
	return(z);
}
