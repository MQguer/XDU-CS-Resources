#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <string.h>
int main()
{
	int n=0;
	scanf("%d",&n);
	int a[1000];
	int i=0;
	int sum=0;
	double average=0;
	for(i=0;i<=n-1;i++)
	{
		scanf("%d",&a[i]);
		sum+=a[i];
	}
	average=(double)sum/n;
	printf("%.2lf",average);
	return 0;
}
