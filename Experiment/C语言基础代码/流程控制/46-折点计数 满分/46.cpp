#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <string.h>
int main()
{
	int n=0;
	scanf("%d",&n);
	int a[1000]={0};
	int i=0;
	int num=0;
	for(i=0;i<=n-1;i++)
	{
		scanf("%d",&a[i]);
		if(i>=2&&i<=n-1)
		{
			if(a[i]>a[i-1]&&a[i-1]<a[i-2])
			{
				num+=1;
			}
			if(a[i]<a[i-1]&&a[i-1]>a[i-2])
			{
				num+=1;
			}
		}
	}
	printf("%d",num);
	return 0;
}
