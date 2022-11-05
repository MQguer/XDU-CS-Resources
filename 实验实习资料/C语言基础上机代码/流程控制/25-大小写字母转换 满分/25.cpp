#include<stdio.h>
int main()
{
	//声明a,输入a并初始化a 
	char a = 0;
	a = getchar();
	
	//判断大小写，如果是大写字母则换成小写，如果小写则换成大写 
	
	if(a>=65&&a<=90) {  //如果是大写字母（ASCII码里的大写字母范围） 
	
		putchar(a+32); //输出a   //大小写字母的ASCII码相差32 
	}
	
	else if(a>=97&&a<=122){
		putchar(a-32); //输出a 
	}
	
	else{
		printf("您输入的并不是字母！");	
	}

	return 0;
}
