import java.util.Scanner;


public class Cal {


	public static void main(String[] args) {
		//输入未知个数的整数，组成数组num[i]
		Scanner sc = new Scanner(System.in);
		//初始化数组
		String[] nums=null;
		//通过空格分离不同整数，依次输入月、日、年
		System.out.print("依次输入月、日、年:");
		nums=sc.nextLine().split(" ");
		
		int num[]=new int[nums.length];
		//初始化求和变量sum
		int sum=0;
		
		for(int i=0;i<num.length;i++){
            num[i]=Integer.valueOf(nums[i]);
        }
		//输入三个字符时输出周几
		if(num.length == 3)
		{
			int day = ((num[2]-1)+(num[2]-1)/4-(num[2]-1)/100+(num[2]-1)/400+1)%7; //求任意一年的第一天是周几的公式，结果为day
			
			//36---62记录闰年和非闰年各月计算天数，每个if下通过循环计算所求月份前已过的天数
			if(num[2]%100==0&&num[2]%400!=0) 
			{
				 int d[] = {31,28,31,30,31,30,31,31,30,31,30,31};
				 
				 for(int l=1;l<num[0];l++)
					{
						day = day + d[l-1];
					}
			}
			else if(num[2]%4!=0)
			{
				int d[] = {31,28,31,30,31,30,31,31,30,31,30,31};
				
				for(int l=1;l<num[0];l++)
				{
					day = day + d[l-1];
				}
			}
			else 
				{
					int d[] = {31,29,31,30,31,30,31,31,30,31,30,31};
					
					for(int l=1;l<num[0];l++)
					{
						day = day + d[l-1];
					}
				}
			//day再加上num[1]即所求日期在该年的天数，减1（减去第一天）后模7即为周几
			day=(day+num[1]-1)%7;
			//输出结果
			switch (day) {
			case 1:System.out.println("Monday");break;
			case 2:System.out.println("Tuesday");break;
			case 3:System.out.println("Wednesday");break;
			case 4:System.out.println("Thursday");break;
			case 5:System.out.println("Friday");break;
			case 6:System.out.println("Saturday");break;
			case 0:System.out.println("Sunday");break;
			default:
				break;
			}
			
		}
		//输入两个数字时输出日历
		else if(num.length == 2)
		{
			System.out.println("Su\tMo\tTu\tWe\tTh\tFr\tSa\t");
			
			int day = ((num[1]-1)+(num[1]-1)/4-(num[1]-1)/100+(num[1]-1)/400+1)%7;
			//这段思路基本同三个数字时，先求出所求月份前已过的天数day
			if(num[1]%100==0&&num[1]%400!=0) 
			{
				 int d[] = {31,28,31,30,31,30,31,31,30,31,30,31};
				 
				 for(int l=1;l<num[0];l++)
					{
						day = day + d[l-1];
					}
			}
			else if(num[1]%4!=0)
			{
				int d[] = {31,28,31,30,31,30,31,31,30,31,30,31};
				
				for(int l=1;l<num[0];l++)
				{
					day = day + d[l-1];
				}
			}
			else 
				{
					int d[] = {31,29,31,30,31,30,31,31,30,31,30,31};
					
					for(int l=1;l<num[0];l++)
					{
						day = day + d[l-1];
					}
				}
			//day直接模7可得所求月份第一天是周几，结果为day
			day = day%7;
			
			for(int m=0;m<day;m++)
			{
				System.out.print("\t"); //首先空出该月第一天之前的位置
			}
			//下面依次输出“数字+空位”即可，其中在每个周六的节点换行
			if(num[1]%100==0&&num[1]%400!=0) 
			{
				 int d[] = {31,28,31,30,31,30,31,31,30,31,30,31};
					for(int n=1;n<=d[num[0]-1];n++)
					{
						System.out.print(n+"\t");
						day+=1;
						if(n!=1&&day%7==0)
						{
							System.out.print("\n");
						}
					}
			}
			else if(num[1]%4!=0)
			{
				int d[] = {31,28,31,30,31,30,31,31,30,31,30,31};
				for(int n=1;n<=d[num[0]-1];n++)
				{
					System.out.print(n+"\t");
					day+=1;
					if(n!=1&&day%7==0)
					{
						System.out.print("\n");
					}
				}
			}
			
			else 
				{
					int d[] = {31,29,31,30,31,30,31,31,30,31,30,31};
					for(int n=1;n<=d[num[0]-1];n++)
					{
						System.out.print(n+"\t");
						day+=1;
						if(n!=1&&day%7==0)
						{
							System.out.print("\n");
						}
					}
				}
			
		}
		
		}
		
	}
