import java.util.Scanner;

public class Test {

    // 检查一个数字是自然数（返回1）、负整数（返回0）还是其他（返回-1）
    public int checkNum(String number)
    {
        Boolean isNegative = false; // 判断正负性，默认为正
        for(int i=0; i<number.length(); i++)
        {
            char c = number.charAt(i);
            if(i==0 && c=='-')
            {
                isNegative = true;
                continue;
            }
            if(c >'9' || c < '0')  return -1;

        }
        if(isNegative) return 0;
        else return 1;
    }

    // 移除千分符号
    public String removeThous(String number)
    {
        String newNumber = "";
        char c;
        for(int i=0; i<number.length(); i++)
        {
            c = number.charAt(i);
            if(c != ',') newNumber += c;
        }
        return newNumber;
    }

    public static void main(String[] args) {
        Test test = new Test();
        while(true)
        {
            int choice1=1, choice2=1;
            Scanner scanner = new Scanner(System.in);
            System.out.println("----------- 请选择计算模式 -----------");
            System.out.println("> 1、自然数计算");
            System.out.println("> 2、整数计算");
            System.out.println("> 3、退出");
            System.out.print("> 请输入：");
            choice1 = scanner.nextInt();
            if(choice1 == 3) break;
            else if(choice1 != 1 && choice1 != 2)
            {
                System.out.println("输入有误！");
                continue;
            }

            String num1="", num2="";

            while(true)
            {
                int checkFlag1 = -1;
                int checkFlag2 = -1;
                System.out.println("----------- 请输入两个数字 -----------");
                System.out.print("> 第一个数字：");
                num1 = scanner.next();
                num1 = test.removeThous(num1);
                checkFlag1 = test.checkNum(num1);
                if(checkFlag1 == 0 && choice1 == 1 || checkFlag1 == -1)
                {
                    System.out.println("输入有误，请重新输入！");
                    continue;
                }
                System.out.print("> 第二个数字：");
                num2 = scanner.next();
                num2 = test.removeThous(num2);
                checkFlag2 = test.checkNum(num2);
                if(checkFlag2 == 0 && choice1 == 1 || checkFlag2 == -1)
                {
                    System.out.println("输入有误，请重新输入！");
                    continue;
                }
                break;
            }

            while(true)
            {
                System.out.println("----------- 请选择操作类型 -----------");
                System.out.println("> 1、加法");
                System.out.println("> 2、减法");
                System.out.println("> 3、显示数字");
                System.out.println("> 4、比较数字");
                System.out.println("> 5、重新输入");
                System.out.print("> 请输入：");
                choice2 = scanner.nextInt();

                if(choice2 == 5) break;

                switch (choice1)
                {
                    case 1:
                        MyNaturalNumbers mn = new MyNaturalNumbers(num1, num2);

                        if(choice2 == 1)
                        {
                            System.out.print("加法");
                            mn.add(true);
                        }
                        else if(choice2 == 2)
                        {
                            System.out.print("减法");
                            mn.minus(true);
                        }
                        else if(choice2 == 3)
                        {
                            System.out.println("两个数字为："+mn.toString());
                        }
                        else if(choice2 == 4)
                        {
                            mn.equal(true);
                        }
                        else
                            System.out.println("输入有误！");
                        break;

                    case 2:
                        MyInteger mi = new MyInteger(num1, num2);
                        if(choice2 == 1)
                        {
                            System.out.print("加法");
                            mi.add(true);
                        }
                        else if(choice2 == 2)
                        {
                            System.out.print("减法");
                            mi.minus(true);
                        }
                        else if(choice2 == 3)
                        {
                            System.out.println("两个数字为：" + mi.toString());
                        }
                        else if(choice2 == 4)
                        {
                            mi.equal(true);
                        }
                        else
                            System.out.println("输入有误！");
                        break;
                    default:
                        break;
                }
            }

        }

    }
}
