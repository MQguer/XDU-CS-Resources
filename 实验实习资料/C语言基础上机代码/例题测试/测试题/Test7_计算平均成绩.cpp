#include<stdio.h>
int main()
{
	int i ,j;
	float score, sum, ave;
	for (i = 1;i <= 3;i++)
	{
		sum = 0;
		printf("请输入一个学生的成绩\n");
		for (j = 1;j <= 4;j++)
		{
			scanf("%f" ,&score);
			sum += score;
		}
		ave = sum / 4;
		printf("第%d位同学的平均成绩为：%f", i, ave);
	}
	return 0;
}

