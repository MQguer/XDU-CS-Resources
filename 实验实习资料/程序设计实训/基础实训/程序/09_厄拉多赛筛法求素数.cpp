#include<stdio.h>
#include<stdlib.h>
#include<math.h>

/*
	大约在公元前250年，古希腊数学家厄拉多赛(Eratosthenes)提出一个造出不超过N的素数构造法，称为厄拉多赛筛法。
	它基于这样一个简单的性质：如果n≤N，且n是合数，则n必为一个不大于N的平方根的素数所整除。
	基本方法如下：
	先列出从2~N的全体自然数，其中，2是素数，在该数列中将2及其倍数去掉；
	接下来数列中最小的3是素数，再将数列中的3及其倍数去掉；接下来数列中最小的5是素数，…… 
	重复该过程，直到数列为空。每次从数列中取出的最小数构成不超过N的全体素数。
*/

int main(){
	int a[999] = {0};
	int p[999] = {0};
	int n = 0, max = -1;
	int i = 0, j = 0, k = 0, s = 0;
	scanf("%d", &n);
	
	for(i=0;i<=n-2;i++){
		a[i] = i+2;
	}

	for(i=0; a[0]>0; i++){
		p[i] = a[0];
		max = -1;
		while(a[max+1]!=0){
			++max;
		}
		for(j=max; j>=0; j--){
			if(a[j] % a[0] == 0){
				for(s=j; a[s]!=0; s++){
					a[s] = a[s+1];
				}
			} 
		}
	}
	
	for(i=0; p[i]<=n; i++){
		if(p[i] == n){
			printf("是素数"); 
			return 0;	
		} 
	}
	printf("不是素数"); 
	return 0;
}
