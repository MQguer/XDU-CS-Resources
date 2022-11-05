#include <stdio.h>

int main(){
	//声明数组array，数组元素个数为700/11，即63 
	int array[700/11]; 
	//声明项数num 
	int num = 0;
	
	//声明循环变量i和j 
	int i = 1; 
	int j = 0; 
	
	//for循环遍历1到700，分别判断每个数是否是11的倍数，是则输入数组array中，否则不操作 
	for(i=1; i<=700; i++){
		if(i%11 == 0) array[num++] = i;
	} 
	
	//输出数组元素 
	for(j=0; j<=num-1; j++){
		printf("%d ",array[j]);
	}
	
	return 0;
}
