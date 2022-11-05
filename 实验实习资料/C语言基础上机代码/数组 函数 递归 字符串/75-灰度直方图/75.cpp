#include<stdio.h>
#include<ctype.h>
#include<string.h>
#include<math.h>


int main()
{
	//声明所需变量和数组
    int n, m, i;
	int num[256 * 256]={0};
	int end[16] = {0};
	
	//输入n和m 
	scanf("%d %d ", &n, &m);
	
	for (i = 0; i < n * m; i++)
	{
	
		scanf("%d", &num[i]);
		
	}
		
	for (i = 0; i < n * m; i++)
	{
		switch (num[i])
		{
		case 0:end[0]++; break;
		case 1:end[1]++; break;
		case 2:end[2]++; break;
		case 3:end[3]++; break;
		case 4:end[4]++; break;
		case 5:end[5]++; break;
		case 6:end[6]++; break;
		case 7:end[7]++; break;
		case 8:end[8]++; break;
		case 9:end[9]++; break;
		case 10:end[10]++; break;
		case 11:end[11]++; break;
		case 12:end[12]++; break;
		case 13:end[13]++; break;
		case 14:end[14]++; break;
		case 15:end[15]++; break;
		}
	}
	
	for (i = 0; i < 16; i++)
	{
		if(end[i]!=0)
			printf("%d %d\n", i,end[i]);
	}
	
	return 0;
}

