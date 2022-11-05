#include <iostream>

using namespace std;

void DFS(int visit[],int a[100][100],int t);
int n=0;

int main()
{
	int a[100][100]={0};
	int i=0,j=0,t=0;
	int visit[100]={0};
	int m=0;//m为连通分量个数
	cin>>n;
	for(i=0;i<n;i++)
	{
		for(j=0;j<n;j++)
		{
			cin>>a[i][j];
		}
		visit[i]=1;
	}
	while(1)//递归
	{
		i=0;
		while(i<n&&!visit[i])//寻找第一个未被访问过的点 
		{
			i++;
		}
		if(visit[i])//有结点为被访问 
		{
			m++;
			visit[i]=0;
			cout<<i+1<<" ";
			DFS(visit,a,i);
		}
		else
		{
			break;
		}
	}
	cout<<"\n"<<m;
	return 0;
}

void DFS(int visit[],int a[100][100],int t)
{
	int i=0,j=0;
	while(1)//将传入结点的所有邻接点依次访问 
	{
		for(i=0;i<n;i++)
		{
			if(a[i][t]&&visit[i])//有结点为被访问 
			{
				visit[i]=0;
				cout<<i+1<<" ";
				DFS(visit,a,i);
			}
		}
		if(i==n)//无邻接点 
		{
			break;
		}
	}
}
