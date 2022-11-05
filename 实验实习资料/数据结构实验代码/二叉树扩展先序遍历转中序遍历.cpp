#include <stdio.h>
#include <stdlib.h>

typedef struct Bit
{
	char ch;
	struct Bit *lch,*rch;//左右孩子指针	
}Bitnode,*Bitree;

Bitree CreatBit(Bitree t,char ch[]);
int i=0;

int main()
{
	Bitree T;
	char ch[100];
	scanf("%s",&ch);
	
	T=CreatBit(T,ch);
}

Bitree CreatBit(Bitree t,char ch[])
{
	Bitree p;
/*	if(ch[i]=='\0')
	{
		break;
	}
	else */if(ch[i]=='#')
	{
		t=NULL;
		i++;
	}
	else
	{
		p=(Bitree)malloc(sizeof(Bitnode));
		t=p;
		t->ch=ch[i];//生成根
		i++; 
		t->lch=CreatBit(t->lch,ch);//生成左子树
		printf("%c ",t->ch);
		t->rch=CreatBit(t->rch,ch);//生成右子树 
	}
	return t;

}
