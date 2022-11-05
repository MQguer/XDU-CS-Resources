#include <stdio.h>

int main()
{
	int a=0, b=0, answer=0;
	char oper=0;
	scanf("%d%c%d",&a,&oper,&b);
	if(oper=='+')
	{
		answer=a+b;
	}
	else if(oper=='-')
	{
		answer=a-b;
	}
	else if(oper=='*')
	{
		answer=a*b;
	}
	else if(oper=='/')
	{
		answer=a/b;
	}
	else if(oper=='%')
	{
		answer=a%b;
	} 
	printf("%d%c%d=%d",a,oper,b,answer);
	return 0;
}

