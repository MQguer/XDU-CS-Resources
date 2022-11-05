#include <stdio.h>
#include <math.h>

int main()
{
	int i=0,j=0,n=1,m=1,node=0;
	int ln=0,rn=0;//左右结点 
	int high=1,h=1;//层数
	while(1)
	{
		scanf("%d %d",&m,&n);
		if(m==0&&n==0)
		{
			break;
		}
		ln=0,rn=0,high=0,h=0;
		for(i=1;2*i-1<n;i=i*2)//得到总层数
		{
			high++;
		}
		for(i=1;2*i-1<m;i=i*2)//得到m所在层数
		{
			h++;
		}
		
		rn=m;
		for(i=0;i<high-h;i++)//m最后一个子树的结点 
		{
			rn=rn*2+1;
		}
		ln=int(pow(2,high-h))*m;
		
		if(n<ln)//最后一个结点小于左节点或同一层
		{
			node=0;
		}
		else if(rn<n)//右节点小于最后一个结点 
		{
			node=rn-ln+1;
		}
		else//两者之间
		{
			node=n-ln+1;
		}
		printf("%d\n",int(pow(2,high-h))-1+node);
	}
	return 0;
}
