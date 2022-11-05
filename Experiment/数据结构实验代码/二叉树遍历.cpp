#include <stdio.h>
#include <stdlib.h>
#include <string.h>


typedef struct Bit
{
	char ch;
	struct Bit *lch,*rch;//左右孩子指针	
}Bitnode,*Bitree;

Bitree CreatBit(Bitree t,char fir[],char mid[],int start,int end,int root);
int f=0;

int main()
{
	Bitree T;
	int start=0,end=0,root=0;
	char mid[30],fir[30];
	scanf("%s",&fir);
	scanf("%s",&mid);
	root=strlen(mid);
	end=root;
	T=CreatBit(T,fir,mid,start,end,root);
}

Bitree CreatBit(Bitree t,char fir[],char mid[],int start,int end,int root)
{
	int i=0,j=0;
	t=(Bitree)malloc(sizeof(Bitnode));
	i=start;
	while(fir[f]!=mid[i]&&i<end)//从当前中序子树中寻找根，根为当前先序子树序列的第一个元素
	{
		i++;
	}//中序序列中，根左侧为左子树，右侧为右子树
	
	if(fir[f]&&fir[f]==mid[i])//找到根节点
	{
		t->ch=fir[f];//生成根
			
		f++;
		start=0,end=i-1;//从当前中序的根左侧开始,到根结点为止 
		t->lch=CreatBit(t->lch,fir,mid,start,end,i);//生成左子树
		start=i+1,end=root;//从当前中序的根右侧开始 
		t->rch=CreatBit(t->rch,fir,mid,start,end,root);//生成右子树 
		printf("%c",t->ch);
	}
	else//找不到则为空 
	{
		t=NULL;
	}
	return t;

}
