#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<string.h>

int main()
{
	//声明并输入c,n 
	char c=0;
	int n=0;
	scanf("%c %d",&c,&n);
	
	//num用于标记字符c的数量 
	int num=0;	
	
	//输入字符串 
	char x[100]={'\0'};
	scanf("%s",x);
	
	//记录字符串长度 
	int len=strlen(x);
	
	//声明循环参数i 
	int i=0;
	
	//开始扫描，这里注意区分大小写是否敏感 
	for(i=0;i<=len-1;i++)
	{
		if(n==1)
		{
			if(x[i]==c)
			{
				num+=1;
			}
		}
		else if(n==0)
		{
			if(c>=65&&c<=90)
			{
				if(x[i]==c||x[i]==c+32)
				{
					num+=1;
				}				
			}
			else if(c>=97&&c<=122)
			{
				if(x[i]==c||x[i]==c-32)
				{
					num+=1;
				}				
			}
		}
	}
	
	//输出结果 
	printf("%d",num);
	return 0;
}
