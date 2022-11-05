#include<stdio.h>
#include<stdlib.h>
#include<string.h>
typedef struct linklist//定义链表 
{
	int value;//密码 
	int num;//编号 
	struct linklist *next;//指向下一个结点
}*LinkList;

LinkList InitList(LinkList L)//初始化链表
{
    L = (LinkList)malloc(sizeof(LinkList));//头结点
	L->value=0;
	L->next =NULL;
	return L;
}

int main()
{
	LinkList L,p,q,r,s;
	int n=0,i=0,j=0,value=0,secret=0;
	L=InitList(L);//头指针 
	p=L;
	scanf("%d %d",&n,&secret);
	for(i=1;i<=n;i++)//对链表进行输入 
	{
		r=InitList(r);//申请一个新的结点
		scanf("%d",&value);
		r->value = value,r->num=i;
		p->next = r;
		p = p->next;
		p->next = NULL;
	}
	
	q=p,p->next=L->next,p=p->next;
	while(q!=p)
	{
		secret=secret%n;
		if(secret==0) secret = secret+n;
		for(i=0;i<secret-1;i++)p=p->next,q=q->next;
		secret = p->value;
		printf("%d ",p->num);
		q->next =p->next,p=q->next; 
		n--;
	}
	printf("%d\n",p->num);
	return 0;
}
