#include<stdio.h>
#include<stdlib.h>
#include<math.h>

/*
	整数3、4、5一起构成了一个勾股三元组，这样的三元组有无数个。
	给定两个正整数m和n，m>n，一个勾股三元组可以由下列公式产生：
						side1 = m^2-n^2
						side2 = 2*m*n
						hypotenuse = m^2+n^2
	当m=2，n=1时，根据公式就产生了三元组（side1=3，side2=4，hypotenuse=5）。
	
	编写一个程序，将m、n的值作为输入，并通过上面的公式将产生的勾股三元组的值显示出来。
*/

int main(){
	int m,n;
	scanf("%d %d", &m, &n);
	printf("%d %d %d", m*m-n*n, 2*m*n, m*m+n*n);
	
	return 0; 
} 
