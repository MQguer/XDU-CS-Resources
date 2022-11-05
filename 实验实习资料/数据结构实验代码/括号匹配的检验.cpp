#include<stdio.h>
#include<stdlib.h>

typedef struct stack{
	char ch;
	struct stack *next;
}node,*Stack;

Stack push(Stack s,char ch);
Stack pop(Stack s);

char let;//全局变量
 
int main()
{
	int i=0,now[100]={0};//now中1表示小括号，2中，3大需要被匹配 
	char input[100];
	Stack s;
	s =(Stack)malloc(sizeof(node));
	s->next=NULL;

	gets(input);
	for(i=0;input[i]!='\0';i++)
	{
		if(input[i]=='('||input[i]==')'||input[i]=='{'||input[i]=='}'||input[i]=='['||input[i]==']')
		{
			//将所有括号入栈
			s=push(s,input[i]); 
		}
	}
	
	i=0;
	while(s)
	{
		s=pop(s);//出栈！
		if(let==')')
		{
			now[i]=1,i++;
		}
		else if(let==']')
		{
			now[i]=2,i++;
		}
		else if(let=='}')
		{
			now[i]=3,i++;
		}
		else if(let=='(')
		{
			if(i<1||now[i-1]!=1)
			{
				break;
			}
			now[i-1]=0,i--;
		}
		else if(let=='[')
		{
			if(i<1||now[i-1]!=2)
			{
				break;
			}
			now[i-1]=0,i--;
		}
		else if(let=='{')
		{
			if(i<1||now[i-1]!=3)
			{
				break;
			}
			now[i-1]=0,i--;
		}
	}
	
	if(!s&&!now[0])
	{
		printf("right\n");
	}
	else
	{
		printf("wrong\n"); 
	}
	return 0; 
}

Stack push(Stack s,char ch)
{
	Stack p;
	p=(Stack)malloc(sizeof(node));
	p->ch=ch,p->next=NULL;
	p->next=s,s=p;
	return s;
}

Stack pop(Stack s)
{
	Stack p;
	p=s,let=p->ch;
	s=p->next;
	return s;
}

