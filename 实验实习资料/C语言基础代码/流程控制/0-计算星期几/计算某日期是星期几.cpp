#include <stdio.h>

/*
   给出一个日期的年月日（1900年之后的日期） ，返回星期几，周日记为0
   
   题目分析： 
     比如要求2013年2月4日是星期几，就看看1900到2013年间，差了多少个平年、多少个闰年，
     因为平年有365天，而365≡1（mod7），所以每过一个平年，同样的日期相对于去年，星期数会+1；同理，每过一个闰年，星期数会+2。
     所以我们此时只需要算出1900年2月4日是星期几，然后加上前面平年和闰年累计的数字后模7即可
     根据查阅资料，已知1900年1月1日是星期一，以此为基准进行计算
     
   注：其实计算星期几有一些固定的公式，但是老师不让，所以就这么算了 
*/

// 判断是平年还是闰年，如果是平年则返回1，如果是闰年则返回2
int identifyYear(int year)
{
    if((year%4==0 && year%100!=0) || year%400==0) return 2;  // 闰年
    else return 1;                                           // 平年
}

// 计算从1900年到指定年份year之间，平年+1，闰年+2，累计的和
int getSumYear(int year) // year >= 1900
{
    int sum = 0;
    for(int i = 1901; i<=year; i++)
    {
        sum += identifyYear(i);
    }
    return sum;
}

int main()
{
    int year=0, month=0, day=0, weekday=0;  
    scanf("%d %d %d",&year,&month,&day);
    
    // 基于1900年1月1日是星期一，首先计算出1900年的month月day日是星期几（暂时不急着模7）
    // 这里是因为当时老师要求不能用数组，如果用数组这里会简洁很多 
    if(month==1) weekday = day;
    else if(month==2) weekday = day+31;
    else if(month==3) weekday = day+31+28;
    else if(month==4) weekday = day+31+28+31;
    else if(month==5) weekday = day+31+28+31+30;
    else if(month==6) weekday = day+31+28+31+30+31;
    else if(month==7) weekday = day+31+28+31+30+31+30;
    else if(month==8) weekday = day+31+28+31+30+31+30+31;
    else if(month==9) weekday = day+31+28+31+30+31+30+31+31;
    else if(month==10) weekday = day+31+28+31+30+31+30+31+31+30;
    else if(month==11) weekday = day+31+28+31+30+31+30+31+31+30+31;
    else if(month==12) weekday = day+31+28+31+30+31+30+31+31+30+31+30;

    // 然后再计算从1900年到指定年份year之间，平年+1，闰年+2，累计的和，与上面求出的星期数相加
    weekday += getSumYear(year);

    // 最后模7，就是对应的星期数
    weekday %= 7;

    printf("%d", weekday);

    return 0;
}
