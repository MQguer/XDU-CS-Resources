#include<stdio.h>
#include<string.h>

int main()
{
	int n=0;
	int n1=0;
	int n2=0;
	int n3=0;
	int n4=0;
	
	char x[101]={'\0'};
	gets(x);

	int i=0;

	int len=strlen(x);
	
	if(len==0)
	{
		n=0;
	}
	else
	{
		if(len>8)
		{
			n=n+1;
		}
		for(i=0;i<len;i++)
		{
			if(x[i]>='a'&&x[i]<='z')
			{
				n1=1;
			}
			else if(x[i]>='A'&&x[i]<='Z')
			{
				n2=1;
			}
			else if(x[i]>=48&&x[i]<=57)
			{
				n3=1;
			}
			else
			{
				n4=1;
			}
		}
		n=n+n1+n2+n3+n4;
	}
	printf("%d",n);
	
	return 0;
}
