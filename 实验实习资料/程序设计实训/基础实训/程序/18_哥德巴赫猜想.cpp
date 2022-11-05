#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

// 哥德巴赫猜想的个例验证 

// 判断n是否是素数，若是则返回1，否则返回0 
int IsPriNum(int n){
	// 若小于1，则必然不是素数 
	if(n <= 1) return 0;
	
	// flag标记n正因数的个数，若n>1且flag=2，则必为素数 
	int flag = 0, i = 1;
	for(i=1; i<=n; i++){
		if(n%i == 0) flag++;
	}
	if(flag == 2) return 1;
	return 0;
}

// 输入一个偶数n，输出n = a + b(其中a和b为素数)，若有多种可能，则输出b-a绝对值最小的一组 
void GolCon(int n){
	int i = n/2;
	int j = 0;
	for(i=n/2; i>0; i--){
		if(IsPriNum(n-i) && IsPriNum(i)){
			printf("%d %d", i, n-i);	
			break;
		} 
	}
}

// 作为示范的main函数 
int main(){
	int n = 0;
	scanf("%d", &n);
	GolCon(n);
	
	return 0;
}
