#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

// ×Ö·û´®É¾³ý 

int main(){
    char a[20],b[200],c[20];
    int num,tol,i=0,j,k=0;

    gets(b);
    gets(a);

    num = strlen(a);
    tol = strlen(b);

    while(i<tol){

        for(j=i;j<(num+i);j++){
            c[k]=b[j];
            k++;
        }
        c[k] = '\0';
        if(!strcasecmp(a,c)){ // LinuxÏÂµÄÃüÁîwinÓÃstricmp
            i+=num;
            k=0;

        }else{
            printf("%c",b[i]);
            k=0;
            i++;
        }
    }

    return 0;

} 
