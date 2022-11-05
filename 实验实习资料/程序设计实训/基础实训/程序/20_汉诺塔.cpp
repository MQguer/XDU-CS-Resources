#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

// 汉诺塔问题 

// 输出格式 “P-->Q”表示从P柱移动到Q柱 
void Move(char c1, char c2){
	printf("%c-->%c\n", c1, c2);
}

// 汉诺塔问题的递归算法（表示将a柱的n个盘子移动到c柱） 
void Hanoi(int n, char a, char b, char c)
{
	// 若只有一个盘子，直接从a移动到c 
	if(n==1) Move(a,c); 
	
	else{
		// 递归：将a柱的n-1个圆盘移动到b柱子（最大的圆盘不动） 
		Hanoi(n-1, a, c, b); 
		// 把最大的一个圆盘从a柱移到c柱
		Move(a, c); 
		// 递归：将b柱的n-1个圆盘移到c柱
		Hanoi(n-1, b, a, c);  
	}
}
int main()
{
	// 声明并输入盘子的个数
	int num;
	scanf("%d",&num); 
	// 递归并输出结果 
	Hanoi(num,'A','B','C');
	return 0;
}
