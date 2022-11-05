#include <stdio.h>
#include <stdlib.h>
#include <math.h>
int main()
{
    double a,b,c,p,S;
    scanf("%lf %lf %lf",&a,&b,&c);
    p=(a+b+c)/2.0;
    S=sqrt(p*(p-a)*(p-b)*(p-c));
    printf("%.2f",S);
    return 0;
}
