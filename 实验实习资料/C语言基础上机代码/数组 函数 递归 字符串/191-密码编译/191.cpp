#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

int main()
{
	char s[101]={'\0'};
	char p[101];
	scanf("%s",&s);
	int i=0;
	for(i=0;i<strlen(s);i++)
	{
		if(s[i]>='a'&&s[i]<='z')
		{
			p[i]=219-s[i];
		}
		else if(s[i]>='A'&&s[i]<='Z')
		{
			p[i]=155-s[i];
		}
		else
		{
			p[i]=s[i];
		}
		printf("%c",p[i]);
	}
	return 0;
}
