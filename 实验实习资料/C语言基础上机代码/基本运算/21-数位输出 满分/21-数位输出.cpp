#include <stdio.h>
#include <stdlib.h>

int main()
{
    int a=0;
    int b,c,d,e,f;
    scanf("%d",&a);
    f=a%10;
    e=(a/10)%10;
    d=(a/100)%10;
    c=(a/1000)%10;
    b=(a/10000)%10;
    printf("%d %d %d %d %d",b,c,d,e,f);
    return 0;
}
