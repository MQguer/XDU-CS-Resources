#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<string.h>


int main() {
	
	//声明n和m 
	int n=0;
	int m=0;
	int t, k;

	scanf("%d %d %d %d", &n, &m, &t, &k);
	
	int num[20][20]={0};
	int i, j, x;
	int count[50]={0};
	int sum=0;
	
	void sort(int* n, int m);


	for (i = 0; i < n; i++) {
		for (j = 0; j < m; j++)
		{
		
			scanf("%d", &num[i][j]);
			
		}
	}
	
    //扫描相邻的区域 
	for (i = 0, x = 0; i < n; i++) 
	{
		for (j = 0; j < m; j++) 
		{
			if (num[i][j] == k) 
			{
				if (i - 1 >=0 && num[i - 1][j] != k)
					count[x++] = num[i - 1][j];
					
				if (j - 1 >= 0 && num[i][j - 1] != k)
					count[x++] = num[i][j - 1];
					
				if (i + 1 < n && num[i + 1][j] != k)
					count[x++] = num[i + 1][j];
					
				if (j + 1 < m && num[i][j + 1] != k)
					count[x++] = num[i][j + 1];
			}
		}
	}
	
	
	sort(count, x);
	
	
	for (i = 1, sum = 1; i < x; i++) 
	{
		if (count[i] != count[i - 1])
			sum++;
	}
	
	printf("%d", sum);
	return 0;
}

//定义函数 
void sort(int* n, int m) {
	int t, i, j;
	for (i = 1; i < m; i++) {
		for (j = 0; j < m - i; j++) {
			if (n[j] > n[j + 1]) {
				t = n[j];
				n[j] = n[j + 1];
				n[j + 1] = t;
			}
		}
	}
}



