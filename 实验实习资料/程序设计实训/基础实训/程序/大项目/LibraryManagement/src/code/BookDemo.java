package code;

import java.io.File;

/** 本类用于描述与图书相关的一系列功能和方法
 * 
 * @author 任桂奇
 */

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;

import user.Account;

public class BookDemo extends Account {

	// 添加图书（仅限于添加文件和增加ID号，具体的文件操作见BookMenu）
	public static void addBook() throws IOException {
		uploadID();
		Account.ID += 1;
		recordID();
		String direction = new String("books//" + ID + ".txt");
		File folder = new File("books");
		File book = new File(direction);
		folder.mkdir();
		book.createNewFile();
	}

	// 删除图书（仅限于删除文件，具体的窗口见BookMenu）
	public static int deleteBook(int id) throws IOException {
		uploadID();
		int flag_delete = 0; // 设置标记
		// 设置路径
		File folder = new File("books");
		File[] books = folder.listFiles();
		// 删除路径下指定编号的书籍
		for (File f : books) {
			// 如果有符合的文件，则删除
			if (f.getName().contentEquals(id + ".txt")) {
				f.delete();
				uploadBooks();
				return 1;
			}
		}
		if (flag_delete == 0) {
			new NoteMenu("删除失败", "该编号的书籍不存在！");
		}
		return 0;
	}

	// 依据编号借阅图书
	public static int borrowBook(int idNum) throws IOException {
		uploadBooks();
		if (books[idNum] != null) {
			int num1 = books[idNum].bNumber1;
			int flag = 1;
			if (num1 >= 1 && flag == 1) {
				books[idNum].bNumber1 -= 1;
				books[idNum].bNumber2 += 1;
				recordBook(books[idNum]);
				flag -= 1;
				return 1;
			}
		}
		return 0;
	}

	// 依据编号归还图书
	public static int returnBook(int idNum) throws IOException {
		uploadBooks();
		if (books[idNum] != null) {
			int num2 = books[idNum].bNumber2;
			int flag = 1;
			if (num2 >= 1 && flag == 1) {
				books[idNum].bNumber2 -= 1;
				books[idNum].bNumber1 += 1;
				recordBook(books[idNum]);
				flag -= 1;
				return 1;
			}
		}
		return 0;
	}

	// 记录图书编号于文件中
	public static void recordID() throws IOException {
		OutputStreamWriter osw = new OutputStreamWriter(new FileOutputStream("accountList\\id.txt"));
		String str = "" + Account.ID;
		osw.write(str);
		osw.close();
	}

	// 读取文件中的图书编号
	public static void uploadID() throws IOException {
		InputStreamReader isr = new InputStreamReader(new FileInputStream("accountlist\\id.txt"));
		int c_read = 0;
		String str_text = "";
		while ((c_read = isr.read()) != -1) {
			str_text += (char) c_read;
		}
		isr.close(); // 释放资源

		int id_read = Integer.parseInt(str_text);
		ID = id_read;

	}

	// 记录或更新Book b的文件信息
	public static void recordBook(Book b) throws IOException {
		File book = new File("books//" + b.bID + ".txt");
		OutputStreamWriter osw1 = null;
		if (book.exists()) {
			try {
				osw1 = new OutputStreamWriter(new FileOutputStream(book));
				osw1.write(b.checkToString(b));
				osw1.close();
			} catch (FileNotFoundException e1) {
				e1.printStackTrace();
			} catch (IOException e1) {
				e1.printStackTrace();
			}

			// 修改BookListc参数
			uploadBooks();
		}
	}

	// *读取文件中的图书,并以文件形式存储在BookList中
	public static void uploadBooks() throws IOException {
		String list = new String(); // 用于存储所有书籍信息
		// 设置路径
		File booklist = new File("books//BookList.txt");
		File folder = new File("books");
		if (booklist.exists()) {
			booklist.delete();
			booklist.createNewFile();
		} else {
			booklist.createNewFile();
		}
		File[] books = folder.listFiles();
		// 读取路径下所有的书籍
		for (File f : books) {
			String str = f.getName();
			// 用str_text读取文件内容
			InputStreamReader isr = new InputStreamReader(new FileInputStream("books\\" + f.getName()));
			int c_read = 0;
			String str_text = "";
			while ((c_read = isr.read()) != -1) {
				str_text += (char) c_read;
			}
			isr.close(); // 释放资源
			// 读取的文本以Book对象的形式存储
			if (!(str.contentEquals("BookList.txt"))) {
				// 记录编号
				int index = str.indexOf('.');
				int id = Integer.parseInt(str.substring(0, index));

				int fir1 = str_text.indexOf(':', 0) + 1;
				int fir2 = str_text.indexOf('|', 0);

				// 记录名称
				int index1 = str_text.indexOf(':', fir1) + 1;
				int index2 = str_text.indexOf('|', fir2 + 1);
				String name = str_text.substring(index1, index2);

				// 纪录作者
				int index3 = str_text.indexOf(':', index1) + 1;
				int index4 = str_text.indexOf('|', index2 + 1);
				String author = str_text.substring(index3, index4);

				// 记录剩余数量
				int index5 = str_text.indexOf(':', index3) + 1;
				int index6 = str_text.indexOf('|', index4 + 1);
				int num1 = Integer.parseInt(str_text.substring(index5, index6));

				// 记录价格
				int index7 = str_text.indexOf(':', index5) + 1;
				int index8 = str_text.indexOf('|', index6 + 1);
				int price = Integer.parseInt(str_text.substring(index7, index8));

				// 记录未还数量
				int index9 = str_text.indexOf(':', index7) + 1;
				int indexX = str_text.indexOf(' ', index6 + 1);
				int num2 = Integer.parseInt(str_text.substring(index9, indexX).trim());
				Book b = new Book(name, author, id, num1, num2, price);
				Account.books[id] = b;

				// 把全部书籍信息依次整理到一个文件
				OutputStreamWriter osw = new OutputStreamWriter(new FileOutputStream(booklist, true));
				osw.write(b.checkToString(b));
				osw.close();
			}
		}
	}
}
