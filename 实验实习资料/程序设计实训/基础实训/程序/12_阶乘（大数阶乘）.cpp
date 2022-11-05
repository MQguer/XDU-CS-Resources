#include<stdio.h>
#include<stdlib.h>
#include<math.h>

// 本程序采用数组储存数位的方法，因此可以计算1000以内的阶乘 

/*
	请编写程序计算n！并输出，要求输入n的值且应满足n<=1000。(特别提示:任何类型无法表示计算结果，需要用数组来存储每一位的数字，并按位计算)
	
	输入说明： n
	输出说明： n!
*/

// 计算并输出阶乘 n!的值（为了求大数的阶乘，这里用数组储存阶乘各位的值，然后一位一位地输出） 
int Factorial(int n){
	// i和j为循环参量，temp为阶乘元素与临时结界的乘积，carry表示进位，d为位数 
	int i, j, temp, d=1, carry; 
	// 定义数组储存阶乘结果的各位数码 
	int a[3000] = {0};
	
	a[0] = 1; // 初始化a[0] 
	
	// 从2开始，循环计算阶乘结果 
	for(i=2; i<=n; i++){
		// 每轮循环初始化进位的值 
		for(j=1, carry=0; j<=d; j++){
			
			temp = a[j-1]*i + carry;
			a[j-1] =  temp%10;
			carry =  temp/10;
		}
		
		// 如果本轮有进位 
		while(carry){
			++d; // 增加位数
			a[d-1] = carry%10; // 新位数的值 
			carry = carry/10; 
		} 
	}
	
	for(j=d-1; j>=0; j--) printf("%d", a[j]);

	return 0;
} 

int main(){
	
	int n = 0;
	scanf("%d", &n);
	
	Factorial(n);
	
	return 0;
}
