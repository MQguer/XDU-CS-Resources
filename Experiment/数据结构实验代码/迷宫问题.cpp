#include <stdio.h>
#include <stdlib.h>
typedef struct stack//定义Stack链栈
{
	int row;//行坐标 
	int col;//列坐标 
	int dir;//方向 
	struct stack *next;//指向下一个结点
}Stack;

Stack *push(Stack *top,int row,int col,int dir);//入栈函数 
Stack *pop(Stack *top);//出栈函数

int main(void)
{
	int i=0,j=0,m=0,n=0,dir=0,temp=0;
	int s1=0,s2=0,e1=0,e2=0;
	int arr[100][100]={0};
	Stack *top=NULL,*t = NULL;//初始化栈顶
	scanf("%d %d",&m,&n);//m行n列
	scanf("%d %d",&s1,&s2);//起点
	scanf("%d %d",&e1,&e2);//终点 
	for(i=0;i<m;i++)
	{
		for(j=0;j<n;j++)
		{
			scanf("%d",&arr[i][j]);//输入迷宫 
		}
	}

	i=s1-1,j=s2-1,arr[i][j]=1;
	while(temp==0||top!=NULL)//栈不空，进行搜索,走过记为1 
	{
		if(temp!=0&&i==e1-1&&j==e2-1)//走到出口 
		{
			dir = 1,top = push(top,i,j,dir);
			break;
		}
		if(arr[i][j+1] == 0&&j+1<n)//第一左走
		{	
			dir = 1,top = push(top,i,j,dir);
			j++,arr[i][j]=1;
		}
		else if(arr[i+1][j] == 0&&i+1<m)//第二下走
		{	
			dir = 2,top = push(top,i,j,dir);
			i++,arr[i][j]=1;
		}
		else if(arr[i][j-1] == 0&&j-1>-1)//第三右走
		{	
			dir = 3,top = push(top,i,j,dir);
			j--,arr[i][j]=1;
		}
		else if(arr[i-1][j] == 0&&i-1>-1)//第四上走
		{	
			dir = 4,top = push(top,i,j,dir);
			i--,arr[i][j]=1;
		}
		else//死路,记录位置后退栈 
		{
			arr[top->row][top->col] = 1;
			if(top->dir == 1) j--;
			else if(top->dir == 2) i--;
			else if(top->dir == 3) j++;
			else  i++;
			top = pop(top);
		}
		temp=1;
	}
	//输出结果 
	if(top == NULL)//无路可走 
	{
		printf("no");
	} 
	else
	{
		while(top->row!=s1-1||top->col!=s2-1)
		{
			t = push(t,top->row,top->col,top->dir);//出栈后入另一栈 
			top = pop(top);
		}
		t = push(t,top->row,top->col,top->dir);

		while(t->row!=e1-1||t->col!=e2-1)
		{
			t->row = t->row + 1,t->col = t->col + 1;
			printf("(%d,%d,%d),",t->row,t->col,t->dir);
			t = pop(t);
		}
		printf("(%d,%d,%d)\n",++(t->row),++(t->col),t->dir);
	}
	return 0;
}

Stack *push(Stack *top,int row,int col,int dir)
{
	Stack *p = (Stack *)malloc(sizeof(Stack));//申请一个新的节点
	p->row = row;
	p->col = col;
	p->dir = dir;
	p->next = top;
	top = p;//将p插在栈顶
	return top;//返回栈顶 
}

Stack *pop(Stack *top)
{
	Stack *p = top;
	p = top;
    top = top->next;
    free(p);//释放内存
    p=NULL;
	return top;//返回栈顶 
}
