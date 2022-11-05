#include<stdio.h>

int main()
{
	// n记录数列的项数，num记录段数，pre表示当前项的前一项，temp表示当前项
	int n=0, num=1, pre=0, temp=0;  
	scanf("%d",&n);
	
	for(int i=1; i<=n; i++)
	{
		scanf("%d",&temp);  			// 输入当前项 
    	if(i>=2 && temp!=pre) num++;	// 判断当前项与前一项是否相等，不相等则num值加一 
    	pre=temp;						// 令前一项等于当前项，准备输入下一项 
	}
	printf("%d",num);
	return 0;
}




