#include <stdio.h>

int main()
{
	int a;
	scanf("%d",&a);
	int i,j,k;

	for(i=a;i<=a+3;i++)
	{
		for(j=a;j<=a+3;j++)
		{
			for(k=a;k<=a+3;k++)
			{
				if(i!=j && j!=k && k!=i)  printf("%d%d%d",i,j,k);
			}
		}
		printf("\n");
	}
	return 0;
}

