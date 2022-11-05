#include<stdio.h>
#include<ctype.h>
int main()
{
	char s[20]={0};
	char ch='0';
	
	int i,j,count,index;
	int num[3]={0};

	gets(s);
	
	//调用cal函数 
	void cal(int* num,int index,char ch);

	for(i=0,j=0,count=0;s[i]!='\0';i++)
	{
		if(isdigit(s[i]))
			num[j]=num[j]*10+s[i]-'0';
		else if(isspace(s[i]))
		{
			j++;
			count++;
		}
		else
		{
			ch = s[i];
			index=count;
		}
	}
	
	//使用函数 
	cal(num, index, ch);
	
	return 0;
}


//定义cal函数 
void cal(int* num,int index,char ch)
{
	int x, y;
	if(index==0)
	{
		x=1;
		y=2;
	}
	else if(index==1)
	{
		x=0;
		y=2;
	}
	else
	{
		x=0;
		y=1;
	}
	
	switch(ch)
	{
		case '+':printf("%d",num[x]+num[y]);break;
		case '-':printf("%d",num[x]-num[y]);break;
		case '*':printf("%d",num[x]*num[y]);break;
		case '/':printf("%d",num[x]/num[y]);break;
		case '%':printf("%d",num[x]%num[y]);break;
	}
	

}

