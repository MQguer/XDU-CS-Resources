#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <string.h>
int main()
{
	int year,month,date,day;
	//输入年份和天数 
	scanf("%d %d",&year,&day);
	
	//分年份，逐月讨论 
	if(year%4!=0||year%400!=0&&year%100==0)
	{
		if(day<=31)
		{
			printf("1 %d",day);
		}
		else if(day>=32&&day<=59)
		{
			printf("2 %d",day-31);
		}
		else if(day>=60&&day<=90)
		{
			printf("3 %d",day-59);
		}
		else if(day>=91&&day<=120)
		{
			printf("4 %d",day-90);
		}
		else if(day>=121&&day<=151)
		{
			printf("5 %d",day-120);
		}
		else if(day>=152&&day<=181)
		{
			printf("6 %d",day-151);
		}
		else if(day>=182&&day<=212)
		{
			printf("7 %d",day-181);
		}
		else if(day>=213&&day<=243)
		{
			printf("8 %d",day-212);
		}
		else if(day>=244&&day<=273)
		{
			printf("9 %d",day-243);
		}
		else if(day>=274&&day<=304)
		{
			printf("10 %d",day-273);
		}
		else if(day>=305&&day<=334)
		{
			printf("11 %d",day-304);
			
		}
		else if(day>=335&&day<=365)
		{
			printf("12 %d",day-334);
		}
		
		
	}
	else
	{
		if(day<=31)
		{
			printf("1 %d",day);
		}
		else if(day>=32&&day<=60)
		{
			printf("2 %d",day-31);
		}
		else if(day>=61&&day<=91)
		{
			printf("3 %d",day-60);
		}
		else if(day>=92&&day<=121)
		{
			printf("4 %d",day-91);
		}
		else if(day>=122&&day<=152)
		{
			printf("5 %d",day-121);
		}
		else if(day>=153&&day<=182)
		{
			printf("6 %d",day-152);
		}
		else if(day>=183&&day<=213)
		{
			printf("7 %d",day-182);
		}
		else if(day>=214&&day<=244)
		{
			printf("8 %d",day-213);
		}
		else if(day>=245&&day<=274)
		{
			printf("9 %d",day-244);
		}
		else if(day>=275&&day<=305)
		{
			printf("10 %d",day-274);
		}
		else if(day>=306&&day<=335)
		{
			printf("11 %d",day-305);
			
		}
		else if(day>=336&&day<=366)
		{
			printf("12 %d",day-335);
		}
	}
	return 0;
} 
