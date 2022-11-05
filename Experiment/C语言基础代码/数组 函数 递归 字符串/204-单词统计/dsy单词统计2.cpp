/*
输入3行字符，包含字母、空格和标点符号，统计其中有多少单词，单词之间用至少一个空格分隔。 
*/ 



#include <stdio.h>
#include <string.h>
#include <stdlib.h> 

//判断输入的字符temp是不是英文字母 
int isZiMu(char temp)
{
	if(
		temp>='a' && temp<='z'   ||   //是小写字母 或者 
		temp>='A' && temp<='Z'        //是大写字母 
		)
	{
		return 1;    //是字母，则返回1 
	}
	else
	{
		return 0;	//不是字母，返回0； 
	}
}

//返回字符串str中包含的单词个数 
int danCiGeShu(char str[]) 
{
	//求出字符串的长度 
	int length=strlen(str);   
	
	//如果字符串的长度为0，则返回其中包含的单词个数为0 
	if(length==0)
	{
		return 0;
	}
	
	int count=0;
	
	int i=0;	
	
	//对字符串中的所有字符进行扫描，来统计单词个数。
	while(i<length)	
	{
		//判断出现一个新单词的条件为：当前字符为字母，而下一个字符不是字母 
		if( 
			isZiMu(str[i])==1  &&  //当前字符为字母，并且： 
			isZiMu(str[i+1])==0    //下一个字符不是字母 
		 )
		 {
		 	count++;
		 }
		 
		 i++;
	}	
	
	return count;
	
}

int main()
{
	char ch[3][100];
	int i,j=0,n,word=0;	
	
	//输入三个字符串 
	gets(ch[0]);
	gets(ch[1]);
	gets(ch[2]);	
	
	//用函数计算3个字符串中所包含的所有单词的个数。 
	word=danCiGeShu(ch[0])+danCiGeShu(ch[1])+danCiGeShu(ch[2]);
	
	printf("%d",word); 
	
	return 0;
}
