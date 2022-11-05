#include <iostream>
#include <queue>

using namespace std;

int main()
{
	int a[100][100]={0};
	int visit[100]={0},t=0;
	int i=0,j=0,n=0,m=0;//m表示连通分量的个数 
	queue<int> q;
	cin>>n;
	for(i=0;i<n;i++)
	{
		for(j=0;j<n;j++)
		{
			cin>>a[i][j];
		}
		visit[i]=1;//初始化，结点均未访问过 
	}
	
	while(1)
	{
		if(q.empty())//当队列为空时查询第一个未访问的结点，并将其入队列 
		{
			for(i=0;i<n;i++)
			{
				if(visit[i]!=0)
				{
					break;
				}
			}
			
			if(visit[i])//有未被访问的元素 
			{
				m++;//连通分量+1 
				q.push(i);//入队列 
				visit[i]=0;
			}
			else//所有元素均被访问 
			{
				break;
			}
		}
		
		else//队列不空则出，先打印然后将其邻接点依次入队列
		{
			t=q.front();
			q.pop();
			cout<<t+1<<" ";
			for(i=0;i<n;i++)
			{
				if(a[i][t]&&visit[i])
				{
					q.push(i);
					visit[i]=0;
				}
			}
		}	
	}
	cout<<"\n"<<m<<endl;
	return 0;
} 
