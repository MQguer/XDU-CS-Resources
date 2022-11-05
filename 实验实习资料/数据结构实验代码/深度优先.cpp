#include<stdio.h>
void DFS(int graph[100][100],int visited[100],int top);

int n=0;//全局变量 

int main()
{
	int i=0,j=0,count=0,top=0;
	int graph[100][100]={0},visited[100]={0};
	scanf("%d",&n);
	
	for(i=0;i<n;i++) visited[i]=1;//对标记数组进行初始化
	for(i=0;i<n;i++) 
	{
		for(j=0;j<n;j++)
		{
			scanf("%d",&graph[i][j]);
		}
	}
	 
	for(i=0;visited[i]!=0||i<n;i++)
	{
		if(visited[i]!=0) count++; 
		top=i;
		DFS(graph,visited,top);
	}
	printf("\n%d",count);
	return 0;
}

void DFS(int graph[100][100],int visited[100],int top)
{
	int i=0,temp=top;
	while(visited[top])
	{
		visited[top]=0;//标记置零，已访问
		printf("%d ",top+1);
		for(i=0;i<n;i++) graph[i][top]=0;//已访问的结点清零 
		
		while(1)//访问所有邻接点
		{
			i=0;
			while(graph[top][i]!=1&&i<n)
			{
				i++;//寻找第一个未被访问的结点
			}

			if(graph[top][i])//有未访问的邻接点 
			{
				top=i;
				DFS(graph,visited,top);
				top=temp;
			}
			else//邻接点全被访问过
			{
				break;
			}
		}
	}
}
