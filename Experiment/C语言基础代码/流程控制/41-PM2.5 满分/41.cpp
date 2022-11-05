#include<stdio.h>

int main()
{
	int N, P, quality[6] = {0};
	double sum = 0;
	scanf("%d", &N);
	for(int i=0; i<=N-1; i++)
	{
		scanf("%d", &P);
		sum += (double)P;
		if(P<=50&&P>=0) quality[0]++;
    	else if(P<=100&&P>=51) quality[1]++;
    	else if(P<=150&&P>=101) quality[2]++;
    	else if(P<=200&&P>=151) quality[3]++;
    	else if(P<=300&&P>=201) quality[4]++;
    	else if(P>300) quality[5]++;
	}
	printf("%.2lf\n", sum/N);
	for(int j=0; j<6; j++) printf("%d ", quality[j]);
	return 0;
}
