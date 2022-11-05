#include<stdio.h>
#include<stdlib.h>
#include<math.h>

// 编写一个程序，判断输入的一个整数是否为素数。

int main(){
	int n, i, flag;
	scanf("%d",&n);
	flag = 0;
	if(n<=1) printf("不是素数"); 
	for(i=1; i<=n; i++){
		if(n%i == 0) ++flag;
	}
	
	if(flag == 2){
		printf("是素数");
		return 0;
	}
	
	printf("不是素数"); 
	
	return 0; 
}
