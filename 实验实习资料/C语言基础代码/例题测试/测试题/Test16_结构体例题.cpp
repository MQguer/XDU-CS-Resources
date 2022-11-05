#include<stdio.h>
int main()
{
    struct vote{
	    char name;
	    int score;
    }player[3]={{'A',0},{'B',0},{'C',0}};
    //struct vote player[3]={{'A',0},{'B',0},{'C',0}};

	int i, j;
	char p = '\0';
	
	for(i = 0; i < 20; i++) {
		printf("请选择您要投票的人A、B、C\n");
		rewind(stdin);  //如果不添加这个语句，循环时，printf会输出两次 
		scanf("%c",&p);
		switch(p) {
		    case 'A' : player[0].score+=1; break; 
		    case 'B' : player[1].score+=1; break;
		    case 'C' : player[2].score+=1; break;
		    default : break;
	    }
	}
	
    for(j=0;j<3;j++)
    	printf("%c %d\n",player[j].name,player[j].score);
    
	return 0;
}

