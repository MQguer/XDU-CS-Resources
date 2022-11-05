#include <stdio.h>

int main(){
	
	int a=3, b=2, c=1;
	c = 5?a++:b--; 
	printf("%d\n",c);
	
	int i;
	for(i=2; i==0; )
		printf("%d",i--);
	
	
	return 0;
}
