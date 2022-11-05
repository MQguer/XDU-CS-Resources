#include <stdio.h>
#include <stdlib.h>


int main()
{
    int a,b,c,d;
    scanf("%d",&a);
    d=a%10;
    c=(a/10)%10;
    b=(a/100)%10;
    printf("%d %d %d",b,c,d);
    return 0;
}
    
