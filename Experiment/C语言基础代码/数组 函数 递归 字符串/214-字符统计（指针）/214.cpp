#include<stdio.h>
#include<ctype.h>
#include<string.h>
#include<math.h>

int main()

{
	//声明所需的数组 
	int num[5] = { 0 }, i;
	char string[100];

	void count2(char* s, int* n);

	//输入字符串 
	gets(string);
	
	count2(string, num);

	for (i = 0; i < 5; i++)
	{
		
		printf("%d ", num[i]);
	}
	
}

//函数1
void count1(char* s, int* n)
{
	int i;
	for (i = 0; i < strlen(s); i++)
	{
		if (isupper(s[i]))
			n[0]++;
			
		else if (islower(s[i]))
			n[1]++;
			
		else if (isspace(s[i]))
			n[2]++;
			
		else if (isdigit(s[i]))
			n[3]++;
			
		else
			n[4]++;
	}
}


//函数2 
void count2(char* s, int* n)
{
	int i;
	char* p = s;
	for (; *p != '\0'; p++)
	{
		if (isupper(*p))
			n[0]++;
 
		else if (islower(*p))
			n[1]++;
			
		else if (isspace(*p))
			n[2]++;
			
		else if (isdigit(*p))
			n[3]++;
			
		else
			n[4]++;
	}
}

