#include <stdio.h>
#include <string.h>
void EncodeFunc(char* pSource,char* pKey,char* pEncrypted);//加密函数 
void DecodeFunc(char* pEncrypted,char* pKey,char* pSource);//解密函数 
int main()
{
	int i=0,j=0,num=0,t=0,lenK=0,len=0;
	char Source[100]="",Key[100]="",Encrypted[100]="";
	char *pSource=Source,*pKey=Key,*pEncrypted=Encrypted;
	char x[5]="";
	const char exit_str[] = "exit";
	printf("请选择需要加密还是解密？加密请输入1，解密输入2\n"); 
	while(t!=3)
	{
	scanf("%s",&x);
	
	if(strcmp(x,"1") == 0)//加密 
	{
	//进入加密输入过程 
	printf("请先输入需要加密的密语\n");
	fflush(stdin);
	gets(Source);
	printf("请继续输入密匙\n");
	fflush(stdin);
	gets(Key);
	lenK=strlen(Key);
	//判断密匙是否合法，是则进入加密过程 
	for(i=0;i<lenK;i++)
	{
	if(Key[i]<48 || Key[i]>57)//判断是否为数字 
	{
	printf("输入错误，密匙只能为数字\n");
	break;
	}
	else//所有字符均为数字才能继续 
	{
	t++;
	}
	}
	if(t==lenK)
	{
	EncodeFunc(pSource,pKey,pEncrypted);
	printf("加密后的结果为:\n");
	printf("%s\n",Encrypted);
	}
	}
	
	
	else
	{
	if(strcmp(x,"2") == 0)//解密 
	{
	//进入解密输入过程 
	printf("请输入需要解密的密语\n"); 
	fflush(stdin);
	gets(Encrypted);
	printf("请继续输入密匙\n");
	fflush(stdin);
	gets(Key);
	lenK=strlen(Key);
	//判断密匙是否合法，是则进入解密过程 
	for(i=0;i<lenK;i++)
	{
	if(Key[i]<48 || Key[i]>57)//判断是否为数字 
	{
	printf("输入错误，密匙只能为数字\n");
	t=0;
	break;
	}
	else//所有字符均为数字才能继续 
	{
	t++;
	}
	}
	
	if(t==lenK)
	{
	DecodeFunc(pEncrypted,pKey,pSource);
	printf("解密后的结果为:\n");
	printf("%s\n",Source);
	}
	}
	
	
	else
	{
	if(strcmp(x,exit_str) == 0)//退出 
	{
	break;
	}
	else
	{
	printf("输入错误，请重新输入\n"); 
	}
	}
	}
	t=0;
	printf("如果想退出的话请输入exit,否则请继续选择加密还是解密\n");
	}
	printf("感谢您的使用\n");
	return 0;
}
//加密函数	
void EncodeFunc(char* pSource, char* pKey, char* pEncrypted)
{
	int i=0,j=0,lenS=0,lenK=0;
	lenS=strlen(pSource);//记录两个字符串的长度 
	lenK=strlen(pKey);
	for(i=0;i<lenS;i++)
	{
	//仅加密字母 
	if(pSource[i]>64 && pSource[i]<91)//大写字母 
	{
	pEncrypted[i]=pSource[i]+pKey[j]-48;
	if(pEncrypted[i]>90)//大于90的字符减去26 
	{
	pEncrypted[i]-=26;
	}
	}
	else if(pSource[i]>96&&pSource[i]<123)//小写字母 
	{
	pEncrypted[i]=pSource[i]+pKey[j]-48;
	if(pEncrypted[i]>122)//大于122的字符减去26 
	{
	pEncrypted[i]-=26;
	}
	}
	else
	{
	pEncrypted[i]=pSource[i];//不是字母则不加密 
	}
	j++;
	j=j%lenK;//密匙取完后从头再继续取 
	}
}

//解密函数 
void DecodeFunc(char* pEncrypted,char* pKey,char* pSource)
{
	int i=0,j=0,lenE=0,lenK=0;
	lenE=strlen(pEncrypted);//记录两个字符串的长度 
	lenK=strlen(pKey);
	for(i=0;i<lenE;i++)
	{
	//仅解密字母 
	if(pEncrypted[i]>64&&pEncrypted[i]<91)//小写字母 
	{
	pSource[i]=pEncrypted[i]-pKey[j]+48;
	if(pSource[i]<65)//小于65的字符加上26 
	{
	pSource[i]+=26;
	}
	}
	else if(pEncrypted[i]>96&&pEncrypted[i]<123)//大写字母 
	{
	pSource[i]=pEncrypted[i]-pKey[j]+48;
	if(pSource[i]<97)//小于97的字符加上26 
	{
	pSource[i]+=26;
	}
	}
	else
	{
	pSource[i]=pEncrypted[i];//不是字母则不解密 
	}
	j++;
	j=j%lenK;//密匙取完后从头再继续取 
	}
}
