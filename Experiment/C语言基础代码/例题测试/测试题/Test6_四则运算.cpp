#include <stdio.h>
int main(){
	
	int a, b;
	char op;
	scanf("%d%c%d",&a, &op, &b);
	switch(op){
		case '+':printf("%d%c%d=%d\n", a, op, b, a+b);break;
		case '-':printf("%d%c%d=%d\n", a, op, b, a-b);break;
		case '*':printf("%d%c%d=%d\n", a, op, b, a*b);break;
		case '/':printf("%d%c%d=%d\n", a, op, b, a/b);break;
		default:printf("Error!\n");break;
	}
	return 0;
}
