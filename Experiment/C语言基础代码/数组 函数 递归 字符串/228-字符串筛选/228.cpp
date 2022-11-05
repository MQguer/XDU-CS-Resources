#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<string.h>
int main()
{
	//声明字符数组，并输入字符串 
	char x[100]={0};
	scanf("%s",x);
	
	//声明循环参数i 
	int i=0;
	
	//声明字符串长度 
	int n=strlen(x);
	
	//隔两项输出字符 
	for(i=0;i<=n;i=i+2)
	{
		printf("%c",x[i]);
	}
	
	return 0;
}
