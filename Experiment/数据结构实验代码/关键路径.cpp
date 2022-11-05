#include <iostream>
#include <stack>

using namespace std;

int main()
{
	int i=0,j=0,t=0,n=0,a[100][100]={0},temp=0;
	int max[100]={0};//用来储存每个结点最早开始时间
	int indegree[100]={0},count=0,visit[100]={0};
	stack<int> s;
	
	cin>>n;
	for(i=0;i<n;i++)
	{
		for(j=0;j<n;j++)
		{
			cin>>a[i][j];
			if(a[i][j])//求入度 
			{
				indegree[j]++;
			}
		}
		visit[i]=1;
	}
	//拓扑排序思想，使用栈，将入度为零的点入栈，出栈时将其指
	//结点最早开始时间为点最大长度
	for(i=0;i<n;i++)
	{
		if(!indegree[i])//先将入度为零的点入栈 
		{
			s.push(i);
			visit[i]=0,count++;
		}
	}
	
	while(!s.empty())
	{
		t=s.top();//出栈前记录栈顶，并将指向点的入度减一并判断减一后是否入度为零
		s.pop();
		for(i=0;i<n;i++)
		{
			if(visit[i]&&a[t][i])
			{	
				indegree[i]--;
				temp=a[t][i]+max[t];
				if(temp>max[i])
				{
					max[i]=temp;
				}
				if(!indegree[i])
				{
					s.push(i);
					visit[i]=0,count++;
				}
				a[t][i]=0;
			}
		}
	}
	if(count!=n)
	{
		cout<<"NO";
	}
	else
	{
		for(temp=max[0],i=0;i<n;i++)
		{
			if(max[i]>temp)
			{
				temp=max[i];
			}
		}
		cout<<temp<<endl;
	}
	return 0;
}
