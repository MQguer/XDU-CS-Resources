#include<stdio.h>
#include<stdlib.h>
#include<math.h>

#define PI 3.14159265359

// 请编写程序完成指定的分段函数。注：若x的值不在区间[0,50)，则提示输入错误。

int main(){
	int x;
	double y;
	scanf("%d", &x); 
	
	if(x>=50 || x<0){
		printf("输入错误");
		return 0; 
	} 
	else if(x>=0 && x<10){
		y = 2*cos(x + PI/6.0);
		printf("%.2lf", y);
	}
	else if(x>=10 && x<30){
		y = sqrt(4.1+5.0*x*x);
		printf("%.2lf", y);
	}
	else if(x>=30 && x<50){
		y = 1.75*(x-3.0) + 45;
		printf("%.2lf", y);
	} 
	
	return 0;
}
