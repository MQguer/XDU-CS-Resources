#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main()
{
	
    int a,b,c,d,e,f,g;
    
    scanf("%d",&a);
    
    //利用整型除法运算依次计算每种钱的张数 
    b=a/100;
    c=(a-100*b)/50;
    d=(a-100*b-50*c)/20;
    e=(a-100*b-50*c-20*d)/10;
    f=(a-100*b-50*c-20*d-10*e)/5;
    g=(a-100*b-50*c-20*d-10*e-5*f)/1;
    
    printf("%d %d %d %d %d %d",b,c,d,e,f,g);
    
    return 0;
}
