#include<stdio.h>
int main()
{
	//ÊäÈë×Ö·û 
	char a=0;
	scanf("%c",&a);
	
	//ÊÇ·ñÎª´óÐ´×ÖÄ¸ÅÐ¶Ï 
	if(a>=65&&a<=90)
	{
		a=a+32;
	}
	
	//ÊÇ·ñÎªÐ¡Ð´×ÖÄ¸ÅÐ¶Ï 
	else if(a>=97&&a<=122)
	{
		a=a-32;
	}
	printf("%c",a);
	return 0;
}
