#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

int main ()
{
	//声明循环参量 
	int i,j;
	
	float stu[5][4];	
	float aver(float (*n)[4]);
	
	//调用函数 
	int well(float (*n)[4]);
	int fals(float (*n)[4]);

	
	//二维数组输入 
	for(i=0;i<5;i++)
	{
		for(j=0;j<4;j++)
		{
			
		scanf("%d",&stu[5][4]);
	}
	}
	//输出各个值 
	printf("%.1f %d %d",aver(stu),fals(stu),well(stu));

	return 0;
}



float aver(float (*n)[4] )
{
	int i;
	
	//av为平均分,sum为总分.
	float sum=0,av;
	for(i=0;i<5;i++)
	{
	
	sum+=*(n + i)[0];
}
	av=sum/5;
	return(av);
}

int fals(float(*n)[4])
{
	
	//num为低分的个数,sum为人数 
	int i,j,num=0,sum=0;
	float *p=&n[0][0];
	
	
	for(i=0;i<5;i++)
	{
		for(j=0;j<4;j++)
		{
			if(*p<60)
			{
				num++;
			}
			p++;
		}
		if (num>= 2)
		{
			sum++;
		}
		num=0;
	}
	
	return(sum);
}

//定义函数 
int well(float(*n)[4])
{
	//num是高分个数,sum是总分,end是符合的人数 
	int i,j,num =0,sum=0,end=0;
	float* p = &n[0][0];
	for (i = 0; i < 5; i++)
	{
		for (j = 0; j < 4; j++)
		{
			sum+=*p;
			if(*p>= 85)
				num++;
			p++;
		}
		if (sum>=360||num==4)
			{
			end++;
		}
		sum=0;
		num=0;
	}
	return end;
}

