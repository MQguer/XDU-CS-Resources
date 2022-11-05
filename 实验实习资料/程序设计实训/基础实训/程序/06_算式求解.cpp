#include<stdio.h>
#include<stdlib.h>
#include<math.h>

int main(){
	int n,m;
	int a,b,c,d;
	int p,q,r,s;
	n = 1000;
	while(n>999 && n<10000){
		m = n*9;
		
		d = n%10;
		c = (n/10)%10;
		b = (n/100)%10;
		a = (n/1000);
	
		p = m%10;
		q = (m/10)%10;
		r = (m/100)%10;
		s = (m/1000);
	
		if(d==s && c==r && b==q && a==p) printf("%d", n);
		++n;
	}
	
	return 0;
}
