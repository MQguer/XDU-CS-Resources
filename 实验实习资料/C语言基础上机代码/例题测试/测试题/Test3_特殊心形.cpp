//可用多个字符组成打印
#include <stdio.h>

int main(void)
{
    float f, x, y, z;
    for (y = 1.5f; y > -1.5f; y -= 0.1f)
    {
        for (x = -1.5f; x < 1.5f; x += 0.05f)
        {
            z = x * x + y * y - 1;
            f = z * z * z - x * x * y * y * y;
            putchar(f <= 0.0f ? "*****"[(int)(f * -8.0f)] : ' ');
            //这里的“”里可更改成符号或其他字母，汉字不行，图案会变形
        }
        printf("\n");
    }

    return 0;
}
