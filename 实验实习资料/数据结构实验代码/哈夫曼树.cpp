#include <stdio.h>
#include <stdlib.h>

typedef  struct
{  int w;
   int par,lch,rch;
   int code[10];//编码 
   int level;//层数 
}HufNode,*HufTree;

int s1=0,s2=0;//权值最小两节点 

void Select(HufTree HT,int x);

int main()
{
    int i=0,j=0,k=0;
	int n=0,val=0,sum=0,t=0;

	scanf("%d",&n);//叶子数 
	HufTree HT;
	HT=(HufTree)malloc((2*n)*sizeof(HufNode));//0号单元未用,HT[2*n-1]表示根节点 
	for(i=1;i<2*n;i++)//初始化 
	{
		HT[i].lch=HT[i].rch=HT[i].par=HT[i].w=0;
		HT[i].code[0]=0,HT[i].level=0;
	}
	
	for(i=1;i<1+n;i++)//0号未用 
	{
		scanf("%d",&val);
		HT[i].w=val;
	}
	for(i=n+1;i<2*n;i++)
	{
		Select(HT,i-1);//选出最小的两个无父节点的结点 
		HT[s1].par=i;HT[s2].par=i;
		HT[i].lch=s1;HT[i].rch=s2;
		HT[i].w=HT[s1].w+HT[s2].w;
	}
	
	for(i=1;i<n+1;i++)//逆向求权值、编码、所在层数 
	{
		j=i;
		while(HT[j].par)
		{
			t=j,j=HT[j].par;//t为前一个结点 
			if(HT[j].lch==t)//左孩子,编码为0 
			{
				HT[i].code[HT[i].level]=0;
			}
			else//右孩子，编码为1 
			{
				HT[i].code[HT[i].level]=1;
			}
			HT[i].level++;//上升一层
		}
		sum=sum+HT[i].level*(HT[i].w);
	}
	if(n==1) printf("仅一层，路径为100\n");
	else
	{
		printf("带权路径为%d\n",sum);
		for(i=1;i<n+1;i++)
		{
			printf("%d层数为:%d		对应编码为:",HT[i].w,HT[i].level);
			for(j=HT[i].level-1;j>-1;j--)
			{
				printf("%d ",HT[i].code[j]);
			}
			printf("\n");
		}
		
	}
	return 0;
}

void Select(HufTree HT,int x)
{
//选出无父结点，并且权值最小的两个结点，赋值给s1，s2 
	int i,min1=100000,min2=100000;
	for(i=1;i<=x;i++)
	{//找最小 
		if(HT[i].w<min1&&HT[i].par==0)
		{
			min1=HT[i].w;
			s1=i;
		}
	}
	for(i=1;i<=x;i++)
	{//找次小 
		if(HT[i].w<min2&&i!=s1&&HT[i].par==0)
		{
			min2=HT[i].w;
			s2=i;
		}
	}
}

