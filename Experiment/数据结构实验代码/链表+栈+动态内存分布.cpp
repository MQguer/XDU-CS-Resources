#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct stack//定义Stack链栈
{
	int value;//数值 
	struct stack *next;//指向下一个Stack
}Stack;

Stack *push(Stack *top,int num);//入栈函数 
Stack *pop(Stack *top);//出栈函数
void showStack(Stack *top);//展示栈中元素 
void showTop(Stack *top);//返回栈顶元素 

int main(void)
{
	int num=0,revalue=0;
	char input[10]="";//选择操作 
	const char exit_str[] = "exit";//退出程序需输入的字符 
	Stack *top = NULL;//初始化栈顶
	printf("请选择要进行的操作，入栈请输入1，出栈请输入2，返回栈顶请输入3\n");
	
	do
	{
	scanf("%s",&input);//选择操作
	
	if(strcmp(input,"1") == 0)//选择入栈 
	{
	printf("已选择入栈，请输入一个整数\n");
	do
	{
	revalue=scanf("%d",&num);
	if(revalue == 0)//scanf接收的值错误 
	{
	printf("输入错误，请重新输入\n");
	fflush(stdin);//清除缓存，防止一直读取错误数值 
	}
	}while(revalue==0);
	top = push(top,num);//入栈
	}
	
	else if(strcmp(input,"2") == 0)//选择出栈
	{
	printf("已选择出栈\n");
	top=pop(top);//出栈
	}
	
	else if(strcmp(input,"3") == 0)//选择返回栈顶 
	{
	printf("已选择返回栈顶元素\n");
	showTop(top); //返回栈顶元素 
	}
	
	else if(strcmp(input,exit_str) == 0)//输入了exit 
	{
	printf("选择退出程序\n");
	break;
	}
	
	else
	{
	printf("输入错误，请重新输入！\n");
	}
	
	showStack(top);//展示栈中元素
	printf("如果想退出的话请输入exit,否则请继续选择要进行的操作\n");
	}while(1);//重复执行程序 
	
	printf("感谢您的使用！\n");
	return 0;
}

Stack *push(Stack *top,int num)
{
	Stack *p = (Stack *)malloc(sizeof(Stack));//申请一个新的节点
	p->value = num;
	p->next = top;
	top = p;//将p插在栈顶
	printf("%d已入栈\n",num);
	return top;//返回栈顶 
}

Stack *pop(Stack *top)
{
	Stack *p = top;
	if(top == NULL)//空栈 
	{
	printf("栈中已没有更多元素,出栈失败\n");
	}
	else//输出栈顶元素 
	{
	p = top;
	printf("%d已出栈\n",p->value);
    top = top->next;
    free(p);//释放内存
	return top;//返回栈顶 
	}
}

void showStack(Stack *top)
{
	Stack *p = NULL;
	if(top != NULL)//不是空栈 
	{
	printf("即将进行栈中元素的展示\n");
	for(p = top; p; p = p->next)//先进后出，依次输出栈中元素 
        {
            printf("%d\n", p->value);
        }
	printf("元素展示已完成\n");
	}
	else
	{
	printf("这是一个空栈\n");
	}
}

void showTop(Stack *top)
{
	if(top == NULL)//空栈 
	{
	printf("栈顶没有元素\n");
	}
	else
	{
	printf("%d\n",top->value);
	}
}
