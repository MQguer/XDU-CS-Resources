#include<stdio.h>
#include<math.h>
#include<string.h>

int main()
{
	
	//声明字符和字符数组 
	char s=0;
	char x[101]={0};

	//输入对应的字符或者字符串 
	gets(x);
	s=getchar();
	
	//声明循环参数 
	int i=0;
	int t=0;
	
	for(i=0,t=0;x[i]!='\0';i++)
	{
		if(x[i]!=s)
		{
			x[t]=x[i];
			t++;
		}
	}
	x[t]='\0';
	
	printf("%s",x);
	return 0;
} 
