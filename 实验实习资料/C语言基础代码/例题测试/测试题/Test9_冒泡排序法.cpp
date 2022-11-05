#include<stdio.h>

int main(){
	int n = 0;
	printf("请输入数字的个数：");
	scanf("%d",&n);
	
	int i = 0;
	int j = 0;
	int t = 0; //用来交换相邻两项 
	int x[1000] = {0};
	
	printf("请依次输入指定数目的数字：");
	for(i=0; i<=n-1; i++){
		scanf("%d",&x[i]); //注意数组的第一项永远是x[0]，不是x[1]！ 
	} 
	
	//开始排序，这里采用起泡排序法,从大到小排列 
	for(i=0;i<n-1;i++){ //这里的n-1可取更大的数，对结果没影响 
		for(j=0;j<=n-2;j++){
			
			if(x[j]<=x[j+1]) { //判断相邻两项是否需要调换 
				t = x[j+1];
				x[j+1] = x[j];
				x[j] = t;
			}
		}
	}
	
	printf("从大到小排序后的数字依次为：");
	for(i=0;i<=n-1;i++){
		printf("%d ",x[i]);
	} 
	
	return 0;
	
}
