#include<stdio.h>
int main()
{
	char s[1000],ch;
	scanf("%c",&ch);
	int i=1,j=0,t,count=0;
	//对于第t层，第i个结点，其左右子树在2^t-2^(t-1)+i、2^t-2^(t-1)+i+1位
	
	for(i=1;i<1000;i++) //全赋值为@ 
	{
		s[i]='@';//从第二层开始逐一检测 
	}
	i=1;
	
	while(ch!='#')
	{
		s[i]=ch;//保存入字符数组中 
		scanf("%c",&ch);
		i++;
	}
	
	t=i;//总节点数 
	for(i=1;i<t;i++)
	{
		if(s[i]!='@'&&s[i*2]=='@'&&s[i*2+1]=='@')//检查自身及左右子树是否均空 
		{
			printf("%c ",s[i]);//输出叶子
			count++;
		}
	}
	printf("\n%d",count);//输出总数
	return 0;
}
