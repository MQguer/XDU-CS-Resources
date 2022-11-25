public class MyNaturalNumbers {

    public String number1="0";
    public String number2="0";
    public int length;                     // 取number1和number2中最大的长度
    public int temp[];                     // 表示每一位的进位或借位，每位只有0和1
    public boolean isNegative = false;     // 判断结果是否是负数
    public int result[];                   // 表示计算结果的绝对值，其长度要比最大的数多一位，预防出现进位

    public MyNaturalNumbers() { }

    // 检查是否为自然数
    public void checkNature(String number)
    {
        for(int i=0; i<number.length(); i++)
        {
            char c = number.charAt(i);
            if(c >'9' || c < '0')
            {
                System.out.println("输入数字不是自然数！");
                System.exit(0); // 直接退出系统
            }
        }
    }

    public MyNaturalNumbers(String number1, String number2) {
        this.checkNature(number1);
        this.checkNature(number2);

        this.number1 = number1;
        this.number2 = number2;
        this.length = number1.length();
        if(number2.length()>number1.length()) this.length = number2.length();
        this.temp = new int[this.length];
        this.result = new int[this.length+1];
    }

    // Getter & Setter
    public String getNumber1() {
        return number1;
    }
    public String getNumber2() {
        return number2;
    }
    public boolean getIsNegative() { return isNegative; }
    public int[] getResult() { return result; }
    public MyNaturalNumbers setIsNegative(boolean bool)
    {
        this.isNegative = bool;
        return this;
    }
    public MyNaturalNumbers setResult(int[] result) {
        this.result = result;
        return this;
    }

    // 将数字字符串转化为整数数组
    public int[] set_to_Int_Number(String number)
    {
        int[] arr  = new int[this.length];
        for(int i=0; i<number.length();i++)
        {
            arr[i] = number.charAt(number.length()-i-1) - '0';
        }
        return arr;
    }

    // 返回result数组第一个非零位的索引，也可以理解为真实结果的位数-1，当然如果全都是0，那么返回的值就会是-1
    public int fineIndexOfFirstNoneZero()
    {
        int i = this.result.length-1;
        while(i>=0)
        {
            if(this.result[i] != 0) break;
            i = i-1;
        }
        return i;
    }

    // 输出result的有效位（倒序输出）
    public void print()
    {
        int i = this.fineIndexOfFirstNoneZero();
        if(i == -1) System.out.print("0");
        else
        {
            if(isNegative) System.out.print("-");
            while(i>=0)  System.out.print(this.result[i--]);
        }
        System.out.println();
    }

    // 返回两个数字拼成的字符串
    public String toString()
    {
        String sum = number1 + " " + number2;
        return sum;
    }

    // 转化为整数类型
    public MyInteger toMyInteger()
    {
        return new MyInteger(this.getNumber1(), this.getNumber2());
    }

    // 加法
    public MyNaturalNumbers add(boolean doPrint)
    {
        int num1[] = set_to_Int_Number(number1);
        int num2[] = set_to_Int_Number(number2);
        for(int i=0; i<this.length; i++)
        {
            if(i== 0 && num1[i] + num2[i]> 9) this.temp[i] = 1;
            else if(i!=0 && num1[i] + num2[i] + temp[i-1] > 9) this.temp[i] = 1;
            else this.temp[i] = 0;

            if(i==0) this.result[i] = (num1[i] + num2[i])%10;
            else this.result[i] = (num1[i] + num2[i] + temp[i-1])%10;
        }

        if(temp[this.length-1] == 1)
            this.result[this.length] = 1;

        if(this.fineIndexOfFirstNoneZero() == -1)
        {
            if(doPrint) System.out.println("计算结果为：0");
            return this;
        }

        if(doPrint)
        {
            System.out.print("计算结果为：");
            this.print();
        }
        return this;
    }

    // 减法
    public MyNaturalNumbers minus(boolean doPrint)
    {
        int num1[] = set_to_Int_Number(number1);
        int num2[] = set_to_Int_Number(number2);
        for(int i=0; i<this.length; i++)
        {
            if(i== 0 && num1[i] - num2[i]< 0) this.temp[i] = 1;
            else if(i!=0 && num1[i] - num2[i] - temp[i-1] < 0) this.temp[i] = 1;
            else this.temp[i] = 0;

            if(i==0) this.result[i] = (num1[i] + 10 - num2[i])%10;
            else this.result[i] = (num1[i] + 10 - num2[i] - temp[i-1])%10;
        }

        if(this.fineIndexOfFirstNoneZero() == -1)
        {
            if(doPrint) System.out.println("计算结果为：0");
            return this;
        }

        // 对于负数先进行特殊处理
        if(doPrint) System.out.print("计算结果为：");
        if(this.temp[this.length-1] == 1)
        {
            String str1 = "" + (int)Math.pow(10, this.length);
            String str2 = "";
            for(int j=this.fineIndexOfFirstNoneZero(); j>=0; j--)
                str2 += result[j];
            this.result = new MyNaturalNumbers(str1, str2).minus(false).getResult();
            this.setIsNegative(true);
        }

        if(doPrint) this.print();

        return this;
    }

    // 相等则返回1，number1>number2则返回0，number1<number2则返回-1
    public int equal(Boolean doPrint)
    {
        this.minus(false);
        if(doPrint) System.out.print("比较结果为：");
        if(this.fineIndexOfFirstNoneZero() == -1)
        {
            if(doPrint) System.out.println(this.getNumber1() + " = " + this.getNumber2());
            return 1;
        }

        if(this.isNegative)
        {
            if(doPrint) System.out.println(this.getNumber1() + " < " + this.getNumber2());
            return -1;
        }
        else
        {
            if(doPrint) System.out.println(this.getNumber1() + " > " + this.getNumber2());
            return 0;
        }

    }

}
