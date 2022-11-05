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
	int n=0,i=0,j=0,value=0;
	scanf("%d %d",&n,&value);

	L=InitList(L);//头指针
	s=InitList(s);
	p=L,s->value=value;
	for(i=0;i<n;i++)//对链表进行输入 
	{
		r=(LinkList)malloc(sizeof(LinkList));//申请一个新的结点
		scanf("%d",&value);
		r->value = value;
		p->next = r;
		p = p->next;
		p->next = NULL;
	}
	
	p=L,q=p->next;
	while(q)
	{
		if(q->value > s->value)//进行插入
		{
			p->next=s,s->next=q;
			break;
		}
		p=p->next,q=q->next;
	}
	
	if(q==NULL)//在尾部插入 
	{
		p->next=s;
	}
	
	while(L->next->next)
	{
		printf("%d ",L->next->value);
		L=L->next;
	}
	printf("%d",L->next->value);
	printf("\n");	
	return 0;
}
