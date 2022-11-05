#include<stdio.h>
#include<stdlib.h>
typedef struct linklist//定义链表 
{
	int value;//数值 
	struct linklist *next;//指向下一个Stack
}*LinkList;
LinkList InitList(LinkList L)//初始化链表
{
    L = (LinkList)malloc(sizeof(LinkList));//头结点
	L->value = 0;
	L->next =NULL;
	return L;
}
int main()
{
	LinkList L,p,q,r,s;
	int m=0,n=0,i=0,j=0,value=0,index=0;
	scanf("%d",&m);
	for(i=0;i<m;i++)
	{
		scanf("%d",&n);
		L=InitList(L);//头指针 
		p=L;
		for(j=0;j<n;j++)//对链表进行输入 
		{
			r=(LinkList)malloc(sizeof(LinkList));//申请一个新的结点
			scanf("%d",&value);
			r->value = value;
			p->next = r;
			p = p->next;
			p->next = NULL;
		}
		p=L,s=L,q=p->next;
		p->next=r,p=r;
		while(p!=q)
		{
			s=q;
			while(s->next != p)
			{
				s=s->next;
			}
			p->next=s,s->next=NULL,p=s;
		}
		while(L->next)
		{
			printf("%d ",L->next->value);
			L=L->next;
		}
		printf("\n");
	}	
	return 0;
}
