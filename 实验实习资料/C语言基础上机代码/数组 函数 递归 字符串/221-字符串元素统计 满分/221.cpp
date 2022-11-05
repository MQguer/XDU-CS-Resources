#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<string.h>
int main()
{
	char x[100]={0};
	scanf("%s",x);
	int n=strlen(x);
	int i=0;
	
	int a=0;
	int b=0;
	
	for(i=0;i<=n-1;i++)
	{
		if(x[i]<='z'&&x[i]>='a')
		{
			a+=1;
		}
		else if(x[i]<='Z'&&x[i]>='A')
		{
			a+=1;
		}
		else if(x[i]<='9'&&x[i]>='0')
		{
			b+=1;
		}
	}
	printf("%d,%d",a,b);
	return 0;
}
