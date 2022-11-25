## 实验要求

本程序为高精度计算，可以实现多位数的加减、比较运算，使用**测试类Test**运行即可。

题目要求如下，但并没有全部实现，选作内容没有实现。

实验题目：编写一个程序，要求如下：

1) 设计并实现自然数（MyNaturalNumbers）及整数（MyInteger）类。

2) 自然数及整数类至少能表示及处理20位自然数或整数数据。

3) 自然数及整数类能表示及处理任意位数的自然数或整数数据。（选作。第五章内容）

4) 自然数及整数类的设计应体现体系结构（即应设计实现完整的继承关系）。

5) 自然数及整数类应提供数据赋值、数据输出、加法计算、减法计算功能。

6) 自然数及整数类应提供乘法运算、除法运算（选作）。

7) 自然数及整数类的赋值应能正确接收带千分符号的格式及不带千分符号的格式。

8) 自然数及整数类的赋值，对于无效数据应向用户提示信息（选作，第五章及第六章内容）。

9) 自然数及整数类应通过重写equals方法实现对两个数据的大小比较。

10) 自然数及整数类应通过重写toString方法实现对数据的格式化。

11) 自然数类应定义toMyInteger方法，该方法实现创建一个同值的整数类实例。

12) 整数类应可通过自然数对象实例创建等值的整数对象实例。

13) 自然数及整数类中应定义成员变量length，表示当前数据的长度。

14) 自然数及整数类中应定义静态成员变量MAX_VALUE、MIN_VALUE，表示数据的最大及最小取值。（选作）

15) 构建测试类，该类实现与用户的交互，接收用户键入的数据，并完成类功能的测试。



## 类结构

MyNaturalNumbers类：自然数类，定义了加减运算、比较和输出的方法

```java
public class MyNaturalNumbers {
    public String number1="0";
    public String number2="0";
    public int length;                   // 取number1和number2中最大的长度
    public int temp[];                   // 表示每一位的进位或借位，每位只有0和1
    public boolean isNegative = false;   // 判断结果是否是负数
    public int result[];       		     // 计算结果的绝对值，长度比length大1，以防出现进位

    // 无参构造，基本没用，但必须要有
    public MyNaturalNumbers() { }

    // 检查是否为自然数，如果不是，则直接退出程序
    public void checkNature(String number);
        
    // 双参构造，实际使用时只需要传入两个数字字符串，因此这里只有两个参数
    public MyNaturalNumbers(String number1, String number2);
    
    // 根据需要定义所需的Getter和Setter
    public String getNumber1();
    public String getNumber2();
    public boolean getIsNegative();
    public int[] getResult();
    public MyNaturalNumbers setIsNegative(boolean bool);
    public MyNaturalNumbers setResult(int[] result);

    // 将数字字符串转化为整数数组
    public int[] set_to_Int_Number(String number);

    // 返回result数组第一个非零位的索引，也可以理解为真实结果的位数-1，其中如果结果为0，那么返回-1
    public int fineIndexOfFirstNoneZero();

    // 输出result的有效位（倒序输出）
    public void print();
    
    // 返回两个数字拼成的字符串
    public String toString();
    
    // 转化为整数类型
    public MyInteger toMyInteger();

    // 加法
    public MyNaturalNumbers add(boolean doPrint);
    
    // 减法
    public MyNaturalNumbers minus(boolean doPrint);
    
    // 相等则返回1，number1>number2则返回0，number1<number2则返回-1
    public int equal(boolean doPrint);
}
```

MyInteger类：整数类，继承自然数类（好吧，我知道这不符合现实逻辑，但确实很方便）

```java
public class MyInteger extends MyNaturalNumbers {
    // 在此类下，number1和number2都只是绝对值，分别用一个boolean值表示它们正负性
    public boolean isNegative_num1 = false; // 判断整数number1是否为负数
    public boolean isNegative_num2 = false; // 判断整数number2是否为负数

    // 无参构造，基本没用，但必须要有
    MyInteger(){ }

    // 检查是否为整数，如果不是，则直接退出程序
    public void checkInteger(String number);

    // 双参构造，实际使用时只需要传入两个数字字符串，因此这里只有两个参数（可以含负号）
    public MyInteger(String number1, String number2);
    
    // 参数为MyNaturalNumbers对象的构造
    public MyInteger(MyNaturalNumbers mn);

    // 重写了父类的Getter和Setter
    public String getNumber1();
    public String getNumber2();
    public MyInteger setIsNegative(boolean bool);
    public MyInteger setResult(int[] result);
    
    // 重写了父类的toString()，将数字字符串转化为整数数组
    public String toString();

    // 加法，重写父类方法
    public MyInteger add(boolean doPrint);

    // 减法。重写父类方法
    public MyInteger minus(boolean doPrint);
}
```

Test类：测试类，用来测试自然数类和整数类的功能

```java
public class Test {
    // 检查一个数字是自然数（返回1）、负整数（返回0）还是其他（返回-1）
    public int checkNum(String number);
    
    // 移除千分符号(这样其实不太好，因为无法识别千分符号是否出现错误)
    public String removeThous(String number);

    // 测试主程序
    public static void main(String[] args);
}
```



## 测试示例

用户通过Test测试的界面示例如下图，测试程序设置在循环体内，可以多次反复测试：

 ![image-20221021181347944](https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/image-20221021181347944.png)

测试程序能够对一些异常数据进行报错，并要求用户重新输入：

 ![image-20221021181415806](https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/image-20221021181415806.png)

测试还允许用户输入千分位符号（会自动忽视千分符号）：

 ![image-20221021181446649](https://my-typora-image-host.oss-cn-hangzhou.aliyuncs.com//img/image-20221021181446649.png)