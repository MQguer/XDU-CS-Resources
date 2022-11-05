#include<stdio.h>
#include<stdlib.h>
#include<math.h>

/*
	将一个数的数码倒过来所得到的新数叫做原数的反序数，如果一个数等于它的反序数，则称它为对称数。
	例如，12321、3、151、44、6776等都是对称数。
	编写一个函数f，判断十进制正整数k是否是对称数，在main函数中输入一个正整数k并调用该函数f。
	
	题目要求： 
	判断k是否是对称数,若是则输出k的十进制值。
	
	可选附加要求： 
	若k是对称数，再判断k的二进制形式是否也是对称数。若k及其二进制都是对称数，则输出k的十进制值及二进制值。
*/

// 判断是否为对称数，若是返回1，若不是返回0 
int IsSymNum(int n){
	int a[99] = {0};
	int num = 0, i = 0;
	int m = n;
	for(i=0; m!=0; i++){
		a[i] = m%10;
		++num;
		m = m/10;
	}
	for(i=0; i<=num/2;i++){
		if(a[i] != a[num-1-i]) return 0;
	}
	return 1; 
}


int main(){
	int k = 0;
	scanf("%d", &k); 
	printf("%d", IsSymNum(k));
	return 0;
}
