#include <stdio.h>
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

int main()
{
	LinkQueue Q;
	Q=initQueue(Q);
	int n=0;
	int i=0,j=0,k=0,count=0,top=0;
	int graph[100][100]={0},visited[100]={0};
	scanf("%d",&n);
	
	for(i=0;i<n;i++) visited[i]=1;//对标记数组进行初始化
	for(i=0;i<n;i++)//输入无向图邻接矩阵 
	{
		for(j=0;j<n;j++)
		{
			scanf("%d",&graph[i][j]);
		}
	}
	
	
	for(i=0;i<n;i++)
	{
		top = i;
		if(visited[i])
		{
			visited[top]=0;//标记置零，已访问
			for(k=0;k<n;k++) graph[k][top]=0;//已访问的结点清零 
			Q=EnQueue(Q,top);
			count++;
			
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
	
	printf("\n%d",count);
	return 0;
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
	printf("%d ",data+1);
	Q.front->next=p->next;
	if(Q.rear==p) Q.rear=Q.front;
	free(p);
	return Q;
}
