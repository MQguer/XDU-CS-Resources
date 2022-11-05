#include<stdio.h>
#include<stdlib.h>
#include<math.h>
int main()
{
	int a=0;
	int b=0;
	scanf("%d %d",&a,&b);

    if(b==4)
	{
		printf("30");
	}
	else if(b==9)
	{
		printf("30");
	}
	else if(b==6)
	{
		printf("30");
	}
	else if(b==11)
	{
		printf("30");
	}
	else if(b!=2)
	{
		printf("31");
	}
	else if(b==2)
	{
		if(a%4!=0)
		{
			printf("28");
		}
		else if(a%100==0&&a%400!=0)
		{
			printf("28");
		}
		else if(a%400==0)
		{
			printf("29");
		
		}
		else
		{
			printf("29");
		}
      
    }
    return 0;
	
}
