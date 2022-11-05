#include<iostream>

using namespace std;

int main()
{
	int i=0,j=0,num=0,m=0;
	int n=0,a[100][100]={0},node=0;
	int indegree[100]={0};//计算入度 
	int visit[100]={0},t=0;
	cin>>m;
	while(num!=m)
	{
		cin>>n;
		for(i=0;i<n;i++)
		{
			for(j=0;j<n;j++)
			{
				cin>>a[i][j];
				if(a[i][j]==1)
				{
					indegree[j]++;//统计入度 
				}
			}
			visit[i]=1;
		}
		
		while(1)//使用拓扑排序，每次删除入度为零的点，并删除边，即将其指向的边入度-1 
		{
			if(node==n)//若有n个点被删则表示无环
			{
				cout<<"0";
				break;
			}
			
			for(i=0;i<n;i++)//先找一入度为零的点 
			{
				if(indegree[i]==0&&visit[i])
				{
					break;
				}
			}
			
			if(indegree[i]==0&&i<n)//有入度为零的点，删点删边 
			{
				t=i,visit[i]=0;//表示点已被删 
				node++;
				for(i=0;i<n;i++)//删除该点所指向的边，并将所指向的点入度减1 
				{
					if(a[t][i])
					{
						a[t][i]=0;
						indegree[i]--;
					}
				}
			}
			else
			{
				cout<<"1";
				break;
			}
		}
		
		num++,node=0;
		for(i=0;i<n;i++)//清除以便下一次输入 
		{
			for(j=0;j<n;j++)
			{
				a[i][j]=0;
			}
			indegree[i]=0,visit[i]=0;
		}
	}
	return 0;
}
