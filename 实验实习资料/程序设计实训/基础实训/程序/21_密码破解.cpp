#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

void Reverse(int *a, int N, int m, int n){
	int b[N] = {0};
	int i = 0;
	for(i=0; i<=N-1; i++){
		b[i] = a[i];
	}
	
	for(i=m-1; i<=n-1; i++){
		a[i] = b[m+n-2-i];
	} 
} 

int main(){
	int i, M, N, m, n;
	scanf("%d %d", &N, &M);
	
	int a[N] = {0};
	for(i=0; i<=N-1; i++){
		a[i] = i+1;
	}
	
	for(i=0; i<=M-1; i++){
		scanf("%d %d", &m, &n);
		Reverse(a, N, m, n);
	}
	
	for(i=0; i<=N-1; i++){
		printf("%d ", a[i]);
	}
	
	return 0;
}
