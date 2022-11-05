#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<string.h>

int main()
{
	//ÉùÃ÷²¢ÊäÈën 
	int n=0;
	scanf("%d",&n);
	
	int x[100]={0};

	int i=0;
	int p=0;
	int num=0;
	int sum=0;
	
	p=n;
	for(i=0;p!=0;i++)
	{
		x[i]=p%10;
		sum+=x[i];
		p=p/10;
		num+=1;
	}
	
	for(i=0;i+1<num-1-i;i++)
	{
		if(x[i]!=x[num-1-i])
		{
			printf("no");
			return 0;
		}
	}
	
	
	printf("%d",sum);
	
	return 0;
}
