#include<stdio.h>
 
int main()
{ 
	int n, num=1, cnt=0, a[1000]={0};
  	scanf("%d\n", &n);
  	
  	while(cnt<n)
	{
  		scanf("%d", &a[cnt]);
		if(cnt>0 && a[cnt]!=a[cnt-1]) num++;
		cnt++;
	}
  	printf("%d",num);
  	
  	return 0;
}

