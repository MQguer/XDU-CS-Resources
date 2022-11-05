#include <stdio.h>
#include <math.h>

int main()
{
	char a=0;
	scanf("%c",&a);
	
	if(a>='a' && a<='z') a = a+'A'-'a';
	else if(a>='A' && a<='Z') a = a+'a'-'A';

	printf("%c",a);
	return 0;
}
