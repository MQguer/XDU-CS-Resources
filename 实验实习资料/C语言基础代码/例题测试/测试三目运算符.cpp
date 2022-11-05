/*
	三目运算符可用于取两个数中的最大（小）值，例如z = x > y ？ x : y 即为x和y中的最大值。 
	
	？之前是判断条件，如果符合，则返回冒号之前的值；否则返回冒号后面的值 
*/

#include "stdio.h"
 
int main()
{
	//声明所需变量 
	int a , b , z; 
	
	//声明并给x,y赋值，便于后面给z赋值 
	int x = 1;
	int y = 0;
	
	
	//键入a和b
	printf("Please give the value of a and b:\n"); 
	scanf("%d %d",&a,&b);
	
	//三目运算符，根据a和b大小关系赋值给z 
	z = a > b ? x : y;
	
	//根据z的最终值反向判断a和b的大小关系 
	if(z == x)
	{
		printf("a > b");
	}
	else if(z == y)
	{
		printf("a <= b");
	}
	
	return 0;
	
	
}
