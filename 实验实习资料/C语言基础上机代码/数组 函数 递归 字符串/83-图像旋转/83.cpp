#include<stdio.h>
#include<ctype.h>
#include<string.h>
#include<math.h>

int main()
{
	
	
	int n, m,i,j,k,num[100][100],lst[10000];
	scanf("%d %d", &n, &m);
	for (i=0; i<n*m;i++)
	{
	
		scanf("%d", &lst[i]);
}
	for (j=n-1,k=0;j>=0;j--)
	{
		for (i=0;i<m;i++)
		{
		
			num[i][j]=lst[k++];
			
		}
	}
	
	for (i=0;i<m;i++)
	{
		for (j=0;j<n;j++)
			printf("%d ",num[i][j]);
		printf("\n");
	}
	
	return 0;
}
