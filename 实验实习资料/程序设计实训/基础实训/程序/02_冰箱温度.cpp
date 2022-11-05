#include<stdio.h>
#include<stdlib.h>
#include<math.h>

/*
	编写一个程序，输入断电后所经过的时间（小时），预测冰箱内的温度（℃）。假设该温度（T）由下式给出：
 								T = 4*t*t/(t+2.0) - 20
	其中t为断电后经过的时间。程序应提示用户输入该时间，以整数小时和分钟表示。
	需要注意的是，经历时间应该转化为小时。例如，如果用户输入2 30（2小时30分钟），那么就要将其转化为2.5小时。
*/

int main(){
	int hour, minute;
	double t, T;
	scanf("%d %d", &hour, &minute);
	t = hour + minute/60.0;
	T = 4.0*t*t/(t+2.0) - 20.0;
	printf("%.2lf", T);
	
	return 0;
} 
