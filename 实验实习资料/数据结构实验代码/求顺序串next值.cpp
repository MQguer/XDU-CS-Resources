#include<stdio.h>

int main()
{
	int len=0,i=0,j=0,n=0,next[100]={0},t=0;
	char ch[100],temp;
	scanf("%d",&n);
	for(i=1;i<=n;)
	{
		scanf("%c",&temp);
		if(temp!=32&&temp!=10)
		{
			ch[i]=temp;
			i++;
		}
	}
	ch[0]=n+48;
	i=1;j=0;
	while(i<n)
	{
		if(j==0||ch[i]==ch[j])
		{
			i++,j++;
			next[i]=j;
		}
		else
		{
			j=next[j];
		}
	} 
	
	for(i=1;i<=n;i++)
	{
		printf("%d ",next[i]-1);
	}
	return 0;
}
