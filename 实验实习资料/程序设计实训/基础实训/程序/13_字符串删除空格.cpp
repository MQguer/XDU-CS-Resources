#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/*
	编写程序，对于读入的一个字符串，删除其中所有的空格。例如，将字符串“xidian university ”中的空格删除后，得到“xidianuniversity”。
	
	输入说明: 带空格的字符串
	
	输出说明: 删除空格后的字符串
*/

// 指针操作：删除字符串所有空格 
void Trim(char *chs){
	char *temp = chs;
	while(*temp){
		// 判断是否为空格，若不是则输入赋值给chs的下一位
		if(*temp != ' ' && *temp != '\t'){
			*chs++ = *temp;
		}
		temp++;
	}
	*chs = '\0';
}

int main(){
	char str[99] = {'\0'};
	gets(str);
	
	Trim(str);
	
	// 输出新的字符串 
	printf("%s", str);
	
	return 0;
} 
