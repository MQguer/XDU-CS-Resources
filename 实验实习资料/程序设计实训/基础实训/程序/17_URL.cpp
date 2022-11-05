#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

// URL

int main(){
	
	char URL[100] = {'\0'};
	gets(URL);
	int i=0, k=0;
	int left=0, right=0;
	
	for(i=0; URL[i]!='\0'; i++){
		if(URL[i] == 47) ++k;
		if(k == 2 && URL[i] == 47) left = i+1;
		if(k == 3) {
			right = i-1;
			break;	
		}
	}
	for(i=left; i<=right; i++){
		printf("%c", URL[i]);
	}
	
	return 0;
	
}
