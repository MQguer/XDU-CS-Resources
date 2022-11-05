#include<stdio.h>
#include<math.h>
#include<stdlib.h>
#include<string.h>


int main()
{
	int n=0;
	scanf("%d",&n);
	
	
	//ษ๙ร๗สýื้ 
	int x[100][100]={0};
	int i,j,q;

	for(i=0;i<n;i++)
	{
		for(j=0;j<n;j++)
		{
			scanf("%d",&x[i][j]);
		}
	}
	printf("%d ",x[0][0]);
	
	
	for(q=1;q<n*2;q++)
	{
		if(q<n)
		{
			if(q%2==1)
			{
				for(i=0;i<=q;i++)   
				{
					printf("%d ",x[i][q-i]);
				}       
			}
			else
			{
				for(i=0;i<=q;i++)
				{
					printf("%d ",x[q-i][i]);
				}
			}
		}
		else
		{
			if(q%2==1)
			{
				for(i=0;i<2*n-1-q;i++)   
				{
					printf("%d ",x[q-n+1+i][n-1-i]);
				}	       
			}
			else
			{
				for(i=0;i<2*n-1-q;i++)
				{
					printf("%d ",x[n-1-i][q-n+1+i]);
				}
			}
		}
	}
	return 0;
}
