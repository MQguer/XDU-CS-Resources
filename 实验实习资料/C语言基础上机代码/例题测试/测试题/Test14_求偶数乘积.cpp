#include <stdio.h>

int main(){
	
	//题目未明确表示n是奇数还是偶数，故分情况考虑
	
	//声明并输入n
	int n = 0; 
	scanf("%d",&n);
	
	//声明num，num表示小于等于n的最大偶数 
	int num = 0; 
	if(n%2 == 0) num = n;
	else num = n-1;
	
	//设置循环变量i
	int i = 2;
	//声明成绩结果m 
	int m = 1;

	for(i=2; i<=num; i = i+2) {
		m = m*i;
	}
	printf("%d",m);
	
	return 0;
} 
