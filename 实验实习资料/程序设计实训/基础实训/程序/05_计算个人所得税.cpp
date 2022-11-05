#include<stdio.h>
#include<stdlib.h>
#include<math.h>

/*
	编写一个程序，输入为某人的月工资，输出为其每月应缴纳的个人所得税额。
	要求定义一个函数，接收一个表示月工资的数，根据所谓公式，返回对应的个人所得税额。
*/

int tax(int wage){
	double n = wage*(1.00- 0.19)-3500;
	if(n<=0) return 0;
	else if(n<=1500) return (int)(n*0.03);
	else if(n<=4500 && n>1500) return (int)(n*0.1-105);
	else if(n<=9000 && n>4500) return (int)(n*0.2-555);
	else if(n<=35000 && n>9000) return (int)(n*0.25-1005);
	else if(n<=55000 && n>35000) return (int)(n*0.3-2755);
	else if(n<=80000 && n>55000) return (int)(n*0.35-5505);
	else if(n>80000) return (int)(n*0.45-13505);
	return 0;
} 

int main(){
	int wage;
	scanf("%d", &wage);
	printf("%d",tax(wage));
	return 0;
}
