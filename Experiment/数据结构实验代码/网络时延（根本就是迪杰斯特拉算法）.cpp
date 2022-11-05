#include <iostream>
#define MAX 100000

using namespace std;

int main()
{
	int i=0,j=0,l=0;
	int a[50][50]={0};//邻接矩阵
	int d[50]={0};//从起始点出发到其他点的路径长度 
	int m=0,n=0,k=0;
	int u=0,v=0,w=0;
	int min=0,temp=0;
	int visit[50]={0};//当前点的集合 
	
	cin>>m>>n>>k;
	k=k-1;//下标从零开始，将输入点坐标都-1 
	visit[k]=1;//将起始点加入当前点集合中 
	for(i=0;i<n;i++)//初始化邻接矩阵 
	{
		for(j=0;j<n;j++)
		{
			a[i][j]=MAX;
		}
	}
	
	for(i=0;i<m;i++)
	{
		cin>>u>>v>>w;
		a[u-1][v-1]=w;
	}
	for(i=0;i<n;i++)
	{
		d[i]=a[k][i];//初始化
	}
	
	//使用迪杰斯特拉算法，求出起始点到每一个点的最短距离
	//最后输出最大值，若最大值为MAX则说明不止一个连通子图，输出-1 
	for(i=0;i<n;i++)
	{
		min=MAX,temp=-1;
		for(j=0;j<n;j++)//从当前起始点到其他点距离中选一最短 
		{
			if(!visit[j]&&min>d[j])
			{
				temp=j;
				min=d[j];
			}
		}
		if(temp==-1)//无法使所有点收到信号
		{
			break;
		}
		visit[temp]=1;//加入一个点 
		for(j=0;j<n;j++)//求加入点之后起始点到其余点的最短距离 
		{
			if(!visit[j]&&min+a[temp][j]<d[j])//新加入点后，更新最短边 
			{
				d[j]=min+a[temp][j];
			}
		}
	}
	
	for(i=0,min=-1;i<n;i++)//选出时间最大的，若最大为MAX则无法使所有点都收到信号
	{
		if(min<d[i]&&i!=k)
		{
			min=d[i];
		}
	}
	if(min==MAX)
	{
		cout<<"-1";
	}
	else
	{
		cout<<min;
	}
	return 0;
}
