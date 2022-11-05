#include<stdio.h>
#include<stdlib.h>
#include<math.h>

/*
	编制程序，利用给出的近似公式计算cosx的近似值，直到最后一项的绝对值小于10的负6次方。
	
	输入说明： 弧度x
	输出说明： cosx
*/

// 计算阶乘的函数
int Factorial(int n){
	if(n == 0) return 1;
	int i = 1;
	int factorial = 1;
	for(i=1; i<=n; i++){
		factorial = factorial*i;
	}
	return factorial;
} 

// 计算cosx的函数 （要用到Factorial函数） 
double Cosine(double x){ 
	int i = 2; // i用于计算i的阶乘和x的i次方 
	double t = 1.00; // t用于表示每一项的值 
	double f = -1.00; // f绝对值不变，正负性变化，用来实现正负项交替 
	double cosx = 1.00; // cosx储存结果值 
	while(fabs(t) >= 1e-6){
		t = f*pow(x, i)/Factorial(i);
		f = f*(-1);
		cosx = cosx + t;
		i = i+2;
	}
	
	return cosx;
}

int main(){
	double x = 0.00;
	scanf("%lf", &x);
	
	printf("%lf", Cosine(x));
	return 0;
}
