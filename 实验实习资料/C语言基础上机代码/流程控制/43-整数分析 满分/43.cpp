#include <stdio.h>

int main()
{
	int n,m,i,a=0,b=0,max,min;
	scanf("%d",&n);
	
	if(n==0)
	{
		printf("1 0 0");
		return 0;
	}
	
	for(i=1;n!=0;i++)
	{
		a=n%10;
		n=n/10;	
		b=b+1;	
		
		if(i==1)
		{
			max=a;
			min=a;
		}
		if(a<=min) min=a;
		if(a>=max) max=a;
	}

	printf("%d %d %d",b,max,min);
	return 0;
}
