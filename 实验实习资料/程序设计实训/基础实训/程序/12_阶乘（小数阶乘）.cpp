#include<stdio.h>
#include<stdlib.h>
#include<math.h>

// 注意！ 本程序只能求25及以内的阶乘 

/*
	请编写程序计算n！并输出，要求输入n的值且应满足n<=1000。
	
	输入说明： n
	输出说明： n!
*/

// 计算阶乘的值  (注意！long long int的输出用 %lld） 
int Factorial(int n){
	if(n == 0) return 1;
	long long int i;
	long long int fact = 1;
	for(i=1; i<=n; i++){
		fact = fact*i;
	}
	printf("%lld", fact);
	return 0;
} 

int main(){
	
	int n = 0;
	scanf("%d", &n);
	
	Factorial(n);
	
	return 0;
}
