#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

typedef struct stacknum//操作数栈 
{
	int val;
	struct stacknum *next;
}stnnode,*stn;

stn push(stn s,int val);
stn pop(stn s);

int num=0;

int main()
{
	int i=0,j=0,n=0,len=0;
	double out=0.0;
	char first[120],reve[120],input[100][100];
	stn s;//操作数
	int num1=0,num2=0;
	
	gets(first);
	len=strlen(first);
	for(i=1;i<=len;i++)//将字符串倒置 
	{
		reve[i-1]=first[len-i];
	}
	reve[i-1]='\0';
	
	i=0;
	while(reve[i]!='\0')
	{
		
			if(reve[i]>47&&reve[i]<58)//是数字,0-48,9-57,直接入栈 
			{
				for(n=0,j=0;reve[i]!=' '&&reve[i]!='\0';i++,j++)
				{
					n=n+(reve[i]-48)*int(pow(10,j));
				}
				s=push(s,n);
			}
			else if(reve[i]==' ')//空格跳过 
			{
				i++;
				continue;
			}
			else//遇运算符连续两次出栈计算 
			{
				s=pop(s),num1=num;
				s=pop(s),num2=num;
				if(reve[i]=='+')//进行运算，运算完毕后将结果入栈 
				{
					out=num1+num2;
				}
				else if(reve[i]=='-')
				{
					out=num1-num2;
				}
				else if(reve[i]=='*')
				{
					out=num1*num2;
				}
				else
				{
					out=num1/num2;
				}
				s=push(s,out);
				i++;
			}
	}
	
	printf("%.1f\n",out);
	return 0;
}

stn push(stn s,int val)
{
	stn p;
	p = (stn)malloc(sizeof(stacknum));
	p->val=val,p->next=NULL;
	p->next=s,s=p;
	return s;
}

stn pop(stn s)
{
	stn p;
	p=s;
	num=p->val;
	s=p->next;
	return s;
}
