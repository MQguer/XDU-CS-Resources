#include<iostream>
#include<cstdio>
#include<cstring>
#include<algorithm>
#include<cmath>
#include<string>

using namespace std;
int main()
{
	int m,n;
	int a[100][100]={0};
	
	cin>>m>>n;
	for(int i=0;i<m;i++)
	{
		for(int j=0;j<n;j++)
		cin>>a[i][j];
	}
	for(int i=0;i<m;i++)
	{
		int sign=0;
		int count=0;
		int max=0;
		int location=0;		

		for(int j=0;j<=n;j++)
		{
			if(a[i][j]==1)
			{
				count++;
				sign=1;
			}
			else 
			{
				if(count>max)
				{
					max=count;
					location=j;
				}
				
				count=0;
			}
		}
		
		if(sign) printf("%d %d\n",location-max,location-1);
		else puts("-1 -1");
	}
	return 0;
}

