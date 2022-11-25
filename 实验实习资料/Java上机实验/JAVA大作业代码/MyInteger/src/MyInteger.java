public class MyInteger extends MyNaturalNumbers {
    // 在此类下，number1和number2都表示绝对值

    public boolean isNegative_num1 = false; // 判断整数number1是否为负数
    public boolean isNegative_num2 = false; // 判断整数number2是否为负数

    MyInteger(){ }

    // 检查是否为整数
    public void checkInteger(String number)
    {
        for(int i=0; i<number.length(); i++)
        {
            char c = number.charAt(i);
            if(i==0 && c=='-') continue;
            if(c >'9' || c < '0')
            {
                System.out.println("输入数字不是整数！");
                System.exit(0); // 直接退出系统
            }
        }
    }

    // 双参构造函数
    public MyInteger(String number1, String number2)
    {
        this.checkInteger(number1);
        this.checkInteger(number2);
        // 判断传入参数的正负
        if(number1.charAt(0) == '-')
        {
            this.isNegative_num1 = true;
            this.number1 = number1.substring(1);
        }
        else
            this.number1 = number1;

        if(number2.charAt(0) == '-')
        {
            this.isNegative_num2 = true;
            this.number2 = number2.substring(1);
        }
        else
            this.number2 = number2;
        this.length = this.number1.length();
        if(this.number2.length()>this.number1.length()) this.length = this.number2.length();
        this.temp = new int[this.length];
        this.result = new int[this.length+1];
    }

    // 参数为MyNaturalNumbers对象的构造
    public MyInteger(MyNaturalNumbers mn)
    {
        // 给出number1和number2的值，就和上面的双参构造没有区别了
        number1 = mn.getNumber1();
        number2 = mn.getNumber2();
        this.checkInteger(number1);
        this.checkInteger(number2);
        // 判断传入参数的正负
        if(number1.charAt(0) == '-')
        {
            this.isNegative_num1 = true;
            this.number1 = number1.substring(1);
        }
        else
            this.number1 = number1;

        if(number2.charAt(0) == '-')
        {
            this.isNegative_num2 = true;
            this.number2 = number2.substring(1);
        }
        else
            this.number2 = number2;
        this.length = this.number1.length();
        if(this.number2.length()>this.number1.length()) this.length = this.number2.length();
        this.temp = new int[this.length];
        this.result = new int[this.length+1];
    }

    // Getter & Setter
    public String getNumber1() {
        if(isNegative_num1) return "-" + this.number1;
        else return this.number1;
    }
    public String getNumber2() {
        if(isNegative_num2) return "-" + this.number2;
        else return this.number2;
    }
    public MyInteger setIsNegative(boolean bool)
    {
        this.isNegative = bool;
        return this;
    }
    public MyInteger setResult(int[] result) {
        this.result = result;
        return this;
    }

    // 字符转换
    public String toString()
    {
        String str = "";
        if(isNegative_num1) str += "-";
        str += number1 + " ";
        if(isNegative_num2) str += "-";
        str += number2;
        return str;
    }

    // 加法
    public MyInteger add(boolean doPrint)
    {
        MyNaturalNumbers mn = null;

        if(!isNegative_num1 && !isNegative_num2)
            mn = super.add(doPrint);
        else if(!isNegative_num1 && isNegative_num2)
           mn = new MyNaturalNumbers(this.number1, this.number2).minus(doPrint);
        else if(isNegative_num1 && !isNegative_num2)
            mn = new MyNaturalNumbers(this.number2, this.number1).minus(doPrint);
        else
            mn = new MyNaturalNumbers(this.number1, this.number2).setIsNegative(true).add(doPrint);

        this.result = mn.getResult();
        this.isNegative = mn.getIsNegative();
        return this;
    }

    // 减法
    public MyInteger minus(boolean doPrint)
    {
        MyNaturalNumbers mn = null;

        if(!isNegative_num1 && !isNegative_num2)
            mn = super.minus(doPrint);
        else if(!isNegative_num1 && isNegative_num2)
            mn = new MyNaturalNumbers(this.number1, this.number2).add(doPrint);
        else if(isNegative_num1 && !isNegative_num2)
            mn = new MyNaturalNumbers(this.number1, this.number2).setIsNegative(true).add(doPrint);
        else
            mn = new MyNaturalNumbers(this.number2, this.number1).minus(doPrint);

        this.result = mn.getResult();
        this.isNegative = mn.getIsNegative();
        return this;
    }


}
