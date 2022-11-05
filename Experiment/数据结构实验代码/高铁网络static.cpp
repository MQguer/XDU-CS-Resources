#include <iostream>
#include <queue>
#include <list>

using namespace std;

int main()
{
	static int a[1000][1000]={0};
	int i=0,j=0,num=0;
	int n=0,m=0,t=0;
	int t1=0,t2=0;//用以表示输入的两结点 
	queue<int> q;
	int visit[1000]={0};
	cin>>n>>m;
	for(i=0;i<m;i++)//完成输入后求连通分支即可 
	{
		cin>>t1>>t2;
		a[t1-1][t2-1]=1;
		a[t2-1][t1-1]=1;
	}
	for(i=0;i<n;i++)
	{
		visit[i]=1;
	}
	
	while(1)
	{
		if(q.empty())//队列为空则入 
		{
			i=0;
			while(!visit[i]&&i<n)//求第一个未访问过的点
			{
				i++;
			}
			if(visit[i])//未被访问 
			{
				num++;
				q.push(i);
				visit[i]=0;
			}
			else//已全访问过 
			{
				break;
			}
		}
		else//不空则出，并将其邻接点入队列 
		{
			t=q.front();
			q.pop();
			for(i=0;i<n;i++)
			{
				if(visit[i]&&a[i][t])
				{
					visit[i]=0;
					q.push(i);
				}
			}
		}
	}
	cout<<num-1;
	return 0;
} 
