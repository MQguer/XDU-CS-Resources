#include <stdio.h>

int main()
{
	int year, month, day;
	
	//输入年份和天数 
	scanf("%d %d",&year,&day);
	
	// 判断每个月的天数，默认为非闰年，对于闰年单独讨论 
	int months[12] = {31,29,31,30,31,30,31,31,30,31,30,31};
	if(year%4==0 && year%100!=0 || year%400==0) months[1] = 28;
	
	for(month=1; month<=12; month++) 
	{
		if(day>months[month-1]) day-=months[month-1];
		else break;
	}
	printf("%d %d", month, day);
	return 0;
} 
