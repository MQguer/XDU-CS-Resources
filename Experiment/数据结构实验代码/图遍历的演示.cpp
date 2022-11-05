#include<stdio.h>
#include <stdlib.h>
typedef struct QNode{
	int data;
	struct QNode *next;
}QNode,*QueuePtr;

typedef struct{
	QueuePtr front;
	QueuePtr rear;
}LinkQueue;

LinkQueue initQueue(LinkQueue Q);
LinkQueue EnQueue(LinkQueue Q,int data);
LinkQueue DeQueue(LinkQueue Q);

void DFS(int graph[100][100],int visited[100],int top);

int n=0,m=0,order[10]={0},side[100][2]={0},number=0;//全局变量，m为order的索引，number为side的索引 

int main()
{
	int i=0,j=0,k=0,count=0,top=0;
	int graph[100][100]={0},visited[100]={0};
	int choice=0;//选择深度或广度优先遍历
	
	printf("请输入邻接矩阵维数：\n");
	scanf("%d",&n);
	
	printf("请输入邻接矩阵：\n");
	for(i=0;i<n;i++) visited[i]=1;//对标记数组进行初始化
	for(i=0;i<n;i++)//输入邻接矩阵 
	{
		for(j=0;j<n;j++)
		{
			scanf("%d",&graph[i][j]);
		}
	}
	
	printf("请输入遍历方式，1为深度优先，2为广度优先：\n");
	scanf("%d",&choice);//选择遍历方式 
	
	if(choice == 1)//深度优先 
	{
		for(i=0;visited[i]!=0||i<n;i++)
		{
			if(visited[i]!=0) count++;//输出连通分支数 
			top=i;
			DFS(graph,visited,top);
		}
	}
	
	else//广度优先 
	{
		LinkQueue Q;//创建队列并初始化 
		Q=initQueue(Q);
		
		for(i=0;i<n;i++)
		{
			top = i;
			if(visited[i])
			{
				visited[top]=0;//标记置零，已访问
				for(k=0;k<n;k++) graph[k][top]=0;//已访问的结点清零 
				Q=EnQueue(Q,top);
				count++;//输出连通分支数 
				
				while(Q.front!=Q.rear)//队列不空 
				{
					top = Q.front->next->data;
					
					Q=DeQueue(Q);
					
					while(1)//访问所有邻接点
					{
						j=0;
						while(graph[top][j]!=1&&j<n)
						{
							j++;//寻找第一个未被访问的结点
						}
			
						if(graph[top][j])//有未访问的邻接点 
						{
							side[number][0]=top,side[number][1]=j,number++;
							Q=EnQueue(Q,j);
							visited[j]=0;//标记置零，已访问
							for(k=0;k<n;k++) graph[k][j]=0;//已访问的结点清零 
						}
						else//邻接点全被访问过
						{
							break;
						}
					}
				}
				
			}
		}
	}
	printf("\n输出连通分支数 ：\n%d",count);//输出连通分支数 
	printf("\n输出顶点顺序：\n ");
	for(i=0;i<n;i++)
	{
		printf("%d ",order[i]);
	}
	
	printf("\n输出边集：\n ");
	if(number)//有边 
	{
		for(i=0;i<number;i++)
		{
			printf("(%d,%d) ",side[i][0]+1,side[i][1]+1);
		}
	}
	else//全为孤立点
	{
		printf("全为孤立点");	
	} 
	return 0;
}

void DFS(int graph[100][100],int visited[100],int top)
{
	int i=0,temp=top,num=0;
	while(visited[top])
	{
		visited[top]=0;//标记置零，已访问
		order[m]=top+1,m++;
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
				num++;
				side[number][0]=top,side[number][1]=i,number++;//记录两个邻接点  
				top=i;//记录上一结点 
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

LinkQueue initQueue(LinkQueue Q)
{
	Q.front=Q.rear=(QueuePtr)malloc(sizeof(QNode));
	Q.front->next=NULL;
	Q.rear->next=NULL;
	return Q;
}

LinkQueue EnQueue(LinkQueue Q,int data)
{
	QueuePtr p=NULL;
	p = (QueuePtr)malloc(sizeof(QNode));
	p->data=data,p->next=NULL;
	Q.rear->next=p;
	Q.rear=p;
	return Q;
}

LinkQueue DeQueue(LinkQueue Q)
{
	int data=0;
	QueuePtr p;
	p=Q.front->next;
	data=p->data;
	order[m]=data+1,m++;//记录结点
	Q.front->next=p->next;
	if(Q.rear==p) Q.rear=Q.front;
	free(p);
	return Q;
}
