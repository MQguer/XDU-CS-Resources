#include <stdio.h>

int main()
{
	int p=0,m=0,i=0,j=0,len=0,t=0;
	int input[100]={0},hxtable[100]={0};
	scanf("%d %d",&m,&p);

	for(j=0;j<100;j++)//先初始化，为-1则未使用 
	{
		hxtable[j]=-1;
	}
	
	while(1)
	{
		scanf("%d",&input[i]);
		if(input[i]==-1)
		{
			break;
		}
		for(t=0,j=0;input[i]!=hxtable[j]&&t<len;j++)//在已有关键词中查找 
		{
			if(hxtable[j]!=-1)//有元素则增1 
			{
				t++;
			}
		}
		
		if(t==len)//无相同关键词 
		{
			if(len==m-1)//表满退出 
			{
				printf("Table full\n");
				break;
			}
			j=input[i]%p;//从第一个可能插入位置开始寻找 
			while(hxtable[j]!=-1)
			{
				j=(j+1)%m;
			}
			hxtable[j]=input[i];
			printf("%d\n",j);
			len++;
		}
		else//有相同关键词，输出位置 
		{
			printf("%d\n",j);
		}
		i++;
	}
	return 0;
}
