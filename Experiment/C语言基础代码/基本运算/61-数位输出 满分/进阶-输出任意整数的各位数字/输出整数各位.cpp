#include <stdio.h>

/*
    输入一个非负整数，依次正序输出它的各位数字，空格间隔
*/


// 输入一个整数i，返回10^它的位数（一位数则返回1, 两位数则返回10,三位数返回100）
int identifyDigit(int i)
{
    int temp = i, digit = 1;
    while(temp > 9)
    {
        digit *= 10;
        temp /= 10;
    }
    return digit;
}

// 执行main函数 
int main()
{
    int num = 0;
    scanf("%d", &num);
    int digit = identifyDigit(num);
    while(num != 0)
    {  
        printf("%d ", num/digit);
        num %= digit;
        digit /= 10;
    }
    
    return 0;
}
