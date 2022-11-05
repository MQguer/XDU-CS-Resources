#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<string.h>
int main()
{
	int n=0;
	scanf("%d",&n);
	int a[1000]={0};
	int b[1000]={0};
	int i=0;
	int max=0;
	for(i=0;i<=n-1;i++)
	{
    	scanf("%d",&a[i]);
    	if(i==0)
    	{
    		b[i]=0;
    	}
    	if(i>=1)
    	{
    		b[i]=a[i]-a[i-1];
			if(b[i]<=0)
    		{
    			b[i]=-b[i];
    		}
    		if(i==1)
    		{
    			max=b[i];
    		}
    	}

    	if(i>=2&&b[i]>=max)
    	{
    		max=b[i];
    	}

    }
    printf("%d",max);
    return 0;
}
