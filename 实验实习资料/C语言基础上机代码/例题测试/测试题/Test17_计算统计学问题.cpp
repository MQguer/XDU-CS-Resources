#include<stdio.h>
#include<math.h>

int main(){
	
	int i = 1, j = 1;
	double e = 0.000, num = 0.000;
	
	for(i=1; i<=10; i++){
		e = e*i*i*pow(0.4, i)*pow(0.6, 10-i);
		for(j=10; j>10-i; j--){
			e = e*j;
		}
		for(j=1; j<=i; j++){
			e = e/j;
		}
		num = num+e;
	}
	
	printf("%.3lf", num);
	return 0;
}
