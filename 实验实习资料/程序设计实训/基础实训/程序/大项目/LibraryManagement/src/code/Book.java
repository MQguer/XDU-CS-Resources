package code;

/** 这个类记录书作为一个对象必需的一些变量和方法.
 * @author 任桂奇
 * @version 1.0
 */

public class Book {
	// 书的编号
	public int bID;
	// 书的名称
	public String bName = new String();
	// 书的作者
	public String bAuthor = new String();
	// 未被借走的书的数目
	public int bNumber1;
	// 已被借走的书的数目
	public int bNumber2;
	// 书的价格
	public int bprice;
	
	public Book(){
		
	}
	
	public Book(String name, String author, int id, int num1, int num2, int price) {
		this.bName = name;
		this.bAuthor = author;
		this.bID = id;
		this.bNumber1 = num1;
		this.bNumber2 = num2;
		this.bprice = price;
	}

	// 设置书名
	public void setName(String name) {
		this.bName = name;
	}
	
	// 设置价格
	public void setPrice(int price) {
		this.bprice = price;
	}
	
	// 设置序号
	public void setID(int ID) {
		this.bID = ID;
	}
	
	// 设置书名
	public void setAuthor(String author) {
		this.bAuthor = author;
	}
	
	// 设置数目
	public void setNumber(int number) {
		this.bNumber1 = number;
		this.bNumber2 = 0;
	}
	
	// 借书
	public void borrowBook() {
		// 如果还有存书
		if(bNumber1 > 0) {
			this.bNumber1 -= 1;
			this.bNumber2 += 1;
		} 
		// 如果当前没有存书
		else {
			System.out.println("当前书籍已无存书！");
		}
	}
	
	// 还书
	public void returnBook() {
		// 如果还有书未被归还
		if(bNumber2 > 0) {
			this.bNumber2 -= 1;
			this.bNumber1 += 1;
		} 
		// 如果该书没有书被出借
		else {
			System.out.println("不存在未被归还的该书籍！");
		}
	}
	
	// 读者查询版本的文本
	public String checkToString(Book b) {
		return ("书籍编号:" + b.bID + "|" + "书籍名称:" + b.bName + "|" + "作者:" + b.bAuthor + "|" 
		+ "剩余数量:" + b.bNumber1 + "|"+ "价格:" + b.bprice + "|" + "未归还数目:" + b.bNumber2 + " \r\n");
	}
	
}
