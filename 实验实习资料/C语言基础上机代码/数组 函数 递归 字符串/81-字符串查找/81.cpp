#include<stdio.h>
#include<string.h>

int main()
{
	//声明数组并输入c字符 
	char x[100][101]={0};
	char c[101]={0};
	gets(c);
	
	int t=0;
	int n=0;
	
	scanf("%d %d",&t,&n);
	
	//循环参数 
	int i=0;
	int k=0;
	int l=0;
	int j=0;

	int p=0;


//循环扫描查找，并输出结果（换行哦） 
	for(i=0;i<n;i++)
	{
		scanf("%s",x[i]);
	}
	if(t==1)
	{
		for(i=0;i<n;i++)
		{
			for(j=0,p=0;x[i][j]!='\0';j++,p++)
			{
				for(k=j,l=0;k<j+strlen(c);l++,k++)
				{
					if(x[i][k]!=c[l])
					{
						break;
					}
				}
				if(k==p+strlen(c))
				{
					for(j=0;x[i][j]!='\0';j++)
					{
						printf("%c",x[i][j]);
					}
					break;
				}
			}
			if(k==p+strlen(c))
			printf("\n");
		}
	}
	
	else
	{
		for(i=0;i<n;i++)
		{
			for(j=0,p=0;x[i][j]!='\0';j++,p++)
			{
				for(k=j,l=0;k<j+strlen(c);l++,k++)
				{
					if(x[i][k]!=c[l]&&x[i][k]!=c[l]-32&&x[i][k]!=c[l]+32)
					{
						break;
					}
				}
				if(k==p+strlen(c))
				{
					for(j=0;x[i][j]!='\0';j++)
					{
						printf("%c",x[i][j]);
					}
					break;
				}
			}
			if(k==p+strlen(c))
			printf("\n");
		}
	}
	
	return 0;
}
