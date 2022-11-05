//ÊµÐÄ°æ 

#include <stdio.h>
 
int main(void)
{
    float a,x,y;
    
    for(y=1.5f; y>-1.5f; y-=0.1f)
    {
        for(x=-1.5f; x<1.5f; x+=0.05f)
        {
            a = x*x+y*y-1;
            
            char c = a*a*a-x*x*y*y*y<=0.0f?'*':' '; 
            putchar(c);  
        
        }
        
        printf("\n");
    }
    
    return 0;
}
