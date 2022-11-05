#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main()
{
    int h,m;
    double t;
    double T=0;
    scanf("%d %d",&h,&m);
    t=(double)h+(double)m/60.00;
    T=4*(t*t)/(t+2)-20.00;
    printf("%.2f",T);
    return 0;
}
