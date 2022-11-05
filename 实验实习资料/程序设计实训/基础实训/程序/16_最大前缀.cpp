#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

// 最长公共前缀

int main(){
	char str1[99] = {'\0'};
	char str2[99] = {'\0'};
	char str[99] = {'\0'};
	
	scanf("%s %s", str1, str2);
	
	int i = 0;
	while(str1[i] != '\0' && str2[i] != '\0'){
		if(str1[i] == str2[i]){
			str[i] = str1[i];
			i++;
		} else break;
	}
	
	printf("%s", str); 
	
	return 0;
} 
