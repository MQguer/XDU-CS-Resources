#include<stdio.h>
#include<stdlib.h>
typedef struct linklist//定义链表 
{
	int value;//数值 
	int index;
	struct linklist *next;//指向下一个结点 
}*LinkList;

LinkList InitList(LinkList L)//初始化链表
{
    L = (LinkList)malloc(sizeof(LinkList));//头结点
	L->value = 0;
	L->index = 0;
	L->next =NULL;
	return L;
}

int main()
{
	//使用两个链表进行操作
	LinkList L1,L2,p,q,r,s;
	L1=InitList(L1);//头指针 
	L2=InitList(L2);

	int m=0,n=0,i=0,method=0,value=0,index=0;
	scanf("%d %d %d",&m,&n,&method);
	
	p=L1;
	for(i=0;i<m;i++)//对第一个链表进行输入 
	{
		r=(LinkList)malloc(sizeof(LinkList));//申请一个新的结点
		scanf("%d %d",&value,&index);
		if(value == 0)
		{
			continue;
		}
		r->value = value;
		r->index = index;
		p->next = r;
		p = p->next;
		p->next = NULL;
	}
	
	q=L2;
	for(i=0;i<n;i++)//对第二个链表进行输入 
	{
		r=(LinkList)malloc(sizeof(LinkList));//申请一个新的结点
		scanf("%d %d",&value,&index);
		if(value == 0)
		{
			continue;
		}
		if(method == 0)
		{
			r->value = value;
		}
		else
		{
			r->value = -value;
		}
		r->index = index;
		q->next = r;
		q = q->next;
		q->next = NULL;
	}
	
	p=L1->next,q=L2->next,r=L1,s=L1;
	while(p&&q)//两表都不空 
	{
		if(p->index < q->index)//链表一的次数小 
		{
			p = p->next,r = r->next;
		}
		
		else if(p->index == q->index)//次数相等 
		{
			p->value=p->value + q->value;
			if(p->value != 0)
			{
				r = r->next;
			}
			else//系数为零删除结点 
			{
				s=p;
				r->next=p->next;
			}
			p=p->next,q = q->next;
		}
		
		else//链表一的次数大,表二元素插入到表一结点前 
		{
			s=q;
			q=q->next;
			r->next=s,r=r->next,s->next=p;
		}
	}
	
	while(q)//链表二不空则全部插入 
	{
		r->next=q;
		q = q->next;
	}
	
	p= L1->next,value = 1;
	
	if(p==NULL)
	{
		printf("0");
	}
	while(p)
	{
		if(1 != value&&p->value>0)//不是第一项且是正整数，输出+
		{
			printf("+");
		}
		else if(1 == value)
		{
			value = 0;
		}
		
		if(p->value == 1 && p->index == 0)
		{
			printf("1");
		}
		else if(p->value == -1 && p->index == 0)
		{
			printf("-1");
		}
		
		else if(p->value !=1&&p->value !=-1)//对-1和1进行讨论 
		{
			printf("%d",p->value);
		}
		else if(p->value ==-1)
		{
			printf("-");
		}
		
		if(p->index !=0)
		{
			printf("x");
			if(p->index !=1)//对次数进行讨论 
			{
				printf("^%d",p->index);
			}
		}
		
		p=p->next;
	}
	printf("\n");

	return 0;
}
