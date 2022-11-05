#include<stdio.h>

int main()
{
	int i=0,j=0,k=0,n=0,input[20]={0},error=1;
	int stack[20]={0},s=0;//stack循环
	int now[20],left=0;//剩余元素 
	for(i=0;i<=15;i++)//当前剩余未入栈元素 
	{
		now[i]=i;
	}
	
	scanf("%d",&n);
	for(i=1;i<=n;i++)
	{
		scanf("%d",&input[i]);
		if(input[i]>n||input[i]<1)
		{
			error=0;
		}
	}
	
	if(error)
	{
		for(i=1;i<=input[1];i++)
		{
			stack[i]=i,now[i]=0;
		}
		stack[i-1]=0;//第一个元素出栈 
		s=i-2;//栈中元素个数
		left=i;//剩余的第一个元素
		
		for(i=2;i<=n;i++)
		{
			if(input[i]>input[i-1])//需入栈，再出栈 
			{
				while(stack[s]!=input[i])//一直入栈至栈顶元素与需输出元素相等 
				{
					stack[s+1]=now[left],now[left]=0;//从已出栈元素的下一个开始入栈 
					s++,left++;
				}
				stack[s]=0,s--;//最后元素入栈后出栈 
			}
			else//需出栈,所需元素可能不为栈顶元素 
			{
				if(stack[s]==input[i])//出栈成功
				{
					stack[s]=0,s--;
				}
				else
				{
					error=0;
					break;
				}
			}
		}
	}

	if(error==0)
	{
		printf("no\n");
	}
	else
	{
		printf("yes\n");
	}
	return 0;
}
