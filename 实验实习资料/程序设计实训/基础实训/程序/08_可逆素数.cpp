#include<stdio.h>
#include<stdlib.h>
#include<math.h>

// 编写一个程序，求四位的可逆素数。可逆素数指：将一个素数的各位数字的顺序倒过来所构成的反序数也是素数。

int main(){
	int n = 1000;
	int m,a,b,c,d,i,flag;

	while(n<10000 && n>=1000){
 		flag = 0;
		d = n%10;
		c = (n/10)%10;
		b = (n/100)%10;
		a = (n/1000);
		
		for(i=1; i<=n; i++){
			if(n%i == 0) ++flag;
		}
		if(flag == 2){
			flag = 0;
			m = 1000*d+100*c+10*b+a;
			for(i=1; i<=m; i++){
				if(m%i == 0) ++flag;
			}
			if(flag == 2) printf("%d\n",n);
		}
		++n;
	}
	return 0;
}
