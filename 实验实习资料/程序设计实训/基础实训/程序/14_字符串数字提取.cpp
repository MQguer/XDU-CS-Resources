#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

/*
	编写程序，将一个字符序列中的数字字符拼接成一个整数（串中数字个数不超过9个），输出该整数及其平方根，例如，若输入的字符序列为“aj?3v87.y=:61w!0]#”，则输出387610及622.58。
	
	输入说明： 带数字的字符序列 (ASCII码：48——57） 

	输出说明： 其中的数字 及该数字的平方根(小数点后两位)
*/

int main(){
	
	char str[99] = {'\0'};
	gets(str);
	
	int num[99] = {0};
	long long int number = 0;
	
	int i=0, j=0, mark=0;
	int k=0;
	
	for(i = 0; str[i] != '\0'; i++){
		k = (int)(str[i] - '0');
		if(k<=9 && k >0 && mark ==0){
			num[j] = k;
			mark = 1;
			j++;
		} else if(k<=9 && k>=0 && mark == 1){
			num[j] = k;
			j++;
		}
	}
	
	for(i=j-1; i>=0; i--){
		number = number + (long long int)pow(10,j-1-i)*num[i];
	}
	
	for(i=0; i<=j-1; i++){
		printf("%d", num[i]);
	}
	
	printf("\n%.2lf", sqrt((double)number));
	
	return 0;
	
}
