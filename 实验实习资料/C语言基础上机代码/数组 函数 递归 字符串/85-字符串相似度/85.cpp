#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<string.h>


int main()
{
	//声明字符数组 
	char s1[101]={0};
	char s2[101]={0};

	int i,j;
	
	//声明字符数组t 
	char t[101]={0};
	
	float len1,len2,similar,max=0.0;

	
	int a[100][100]={0};
	

	//输入字符串 
	gets(s1);
	gets(s2);
	
	len1=strlen(s1);
	len2=strlen(s2);


	for(i=0;i <len1;i++)
	{
		for(j=0;j<len2;j++)
		{
			if(s1[i]==s2[j]||abs(s1[i]-s2[j])==32)
			{
				if(i!=0&&j!=0)
				{
				
				a[i][j]=a[i-1][j-1]+1;
				
			}
					
				else 
					a[i][j]=1;
			}
		}
	}

	for(i=0;i<len1;i++)
	{
		for(j=0;j<len2;j++)
		{
			if(a[i][j]> max) 
			{
			
			max=a[i][j];
			
		}
		}
	}
	
	similar=2*max/(len1+len2);
	
	printf("%.3f",similar);
	
	return 0;
}


