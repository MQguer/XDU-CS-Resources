#include<stdio.h>
#include<stdlib.h>
#include<math.h>

/*
	数N的平方根可通过下式的迭代运算来近似计算：
	            	NG = 0.5*(LG + N*1.0/LG)
	式中NG表示下一次的猜测值，LG表示上一次猜测值，第一次猜测值为1.0（LG初始值）。
	编写一个函数利用上述方法计算平方根。编写main函数，调用你所编写的求平方根函数。
	
	第一次猜测值就是LG的初始值，程序利用公式计算NG。检测NG和LG的差值，看这两次猜测值是否几乎相等。
	如果是，NG就作为平方根；否则，用新的猜测值NG更新上次的猜测LG，重复上述过程，直到NG与LG之差小于0.005。
	测试数据：4、120.5、88、36.01、10 000、0.25。
*/

double fun(int N, double LG){
	double NG, del;
	NG = 0.0;
	del = fabs(NG-LG);
	
	while(del >= 0.005){
		NG = 0.5*(LG + N*1.0/LG);
		del = fabs(NG-LG);
		LG = NG;
	}
	
	return NG;
}

int main(){
	int N;
	double LG = 1.0;
	scanf("%d", &N);
	printf("%.2lf", fun(N, LG));
	return 0;
}
