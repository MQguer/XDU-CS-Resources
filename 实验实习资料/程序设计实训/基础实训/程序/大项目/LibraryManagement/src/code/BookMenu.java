package code;

import java.awt.AlphaComposite;
/** 本类用来声明各个与书籍添加删除有关的窗口(不包含主界面)
 * @author 任桂奇
 */
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JRadioButton;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.plaf.basic.BasicBorders.FieldBorder;

import user.Account;

public class BookMenu {

	public static void main(String[] args) throws IOException {
		new CheckLentMenu();
	}
}

/**
 * 添加图书的窗口设置
 * 
 */
class AddBookMenu extends Account {
	// 创建窗体对象
	final static JFrame f_add = new JFrame("添加书籍信息");
	// 创建标签对象
	static JLabel lb_name = new JLabel("书籍名称");
	static JLabel lb_author = new JLabel("作者");
	static JLabel lb_price = new JLabel("价格");
	static JLabel lb_number = new JLabel("数量");
	static JLabel lb_blank = new JLabel("                       ");
	// 创建文本框对象
	static JTextField tf_name = new JTextField(24);
	static JTextField tf_author = new JTextField(11);
	static JTextField tf_price = new JTextField(4);
	static JTextField tf_number = new JTextField(4);
	// 创建按钮对象
	static JButton bt_confirm = new JButton("确认");
	static JButton bt_quit = new JButton("取消");

	// flag_add用于标记是否添加成功
	static int flag_add;

	public AddBookMenu() {
		flag_add = 0;
		// 设置窗口属性
		f_add.setBounds(500, 200, 350, 125);
		f_add.setLayout(new FlowLayout());
		f_add.setResizable(false); // 禁止改变窗体大小
		f_add.setDefaultCloseOperation(JFrame.HIDE_ON_CLOSE);

		// 设置事件
		// 确认添加
		bt_confirm.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				// 检测几个重要信息是够为空，如果为空，则不能添加
				if (!(tf_name.getText().trim().contentEquals("") || tf_number.getText().trim().contentEquals(""))) {
					try {
						if (flag_add == 0) {
							BookDemo.addBook();
						}
					} catch (IOException e1) {
						e1.printStackTrace();
					}
					// 价格和数目转化为数字
					int pri = Integer.parseInt(tf_price.getText().trim());
					int num = Integer.parseInt(tf_number.getText().trim());
					// 创建一个书籍对象，存储以上信息
					Book b = new Book();
					b.setName(tf_name.getText().trim());
					b.setID(Account.ID);
					b.setAuthor(tf_author.getText().trim());
					b.setNumber(num);
					b.setPrice(pri);

					File book = new File("books//" + b.bID + ".txt");
					OutputStreamWriter osw;
					try {
						osw = new OutputStreamWriter(new FileOutputStream(book));
						osw.write(b.checkToString(b));
						osw.close();
						flag_add += 1;
					} catch (FileNotFoundException e1) {
						e1.printStackTrace();
					} catch (IOException e1) {
						e1.printStackTrace();
					}

					if (flag_add == 1) {
						f_add.dispose();
						f_add.setVisible(false);
						try {
							BookDemo.uploadBooks();
						} catch (IOException e1) {
							e1.printStackTrace();
						}
						new NoteMenu("添加成功", "书籍信息已经添加成功！");
					}

				}
				// 如果某信息填写为空
				else {
					new NoteMenu("输入错误", "输入不能为空，请检查后重新输入！");
				}

			}
		});
		// 退出添加版块
		bt_quit.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				f_add.dispose();
				f_add.setVisible(false);
			}
		});

		// 添加窗口组件
		f_add.add(lb_name);
		f_add.add(tf_name);
		f_add.add(lb_author);
		f_add.add(tf_author);
		f_add.add(lb_price);
		f_add.add(tf_price);
		f_add.add(lb_number);
		f_add.add(tf_number);
		f_add.add(bt_confirm);
		f_add.add(lb_blank);
		f_add.add(bt_quit);

		// 设置窗口可见
		f_add.setVisible(true);
	}
}

/**
 * 查询已经借阅（未归还）图书的窗口设置
 * 
 */
class CheckLentMenu{
	// 创建窗体对象
	final static JFrame f_check = new JFrame("未归还书籍信息");
	// 创建标签对象
	static JLabel lb_lent = new JLabel("当前已借阅未归还的书籍信息");
	static JLabel lb_blank = new JLabel("                       ");
	static JLabel lb_blank2 = new JLabel("                       ");
	// 创建文本框对象
	static JTextArea ta_lent = new JTextArea(27, 48);
	
	public CheckLentMenu() throws IOException {

		// 设置窗口属性
		f_check.setBounds(500, 100, 550, 550);
		f_check.setLayout(new FlowLayout());
		f_check.setResizable(false); // 禁止改变窗体大小
		f_check.setDefaultCloseOperation(JFrame.HIDE_ON_CLOSE);
		
		// 设置文本
		BookDemo.uploadBooks();
		String text = ""; // 文本域的文本
		File folder = new File("books");
		File[] bks = folder.listFiles();
		for(File f: bks) {
			if(!(f.getName().contentEquals("BookList.txt"))) {
				String name = f.getName();
				int id = Integer.parseInt(name.substring(0, name.indexOf('.')));	
				Book b = Account.books[id];
				if(b.bNumber2 >= 1) text += b.checkToString(b);
			}
		}
		if(text.contentEquals("")) text = "无";
		ta_lent.setLineWrap(true); //激活自动换行功能 
		ta_lent.setWrapStyleWord(true); // 激活断行不断字功能
		ta_lent.setText(text);
		
		// 禁止输入
		ta_lent.addKeyListener(new KeyAdapter() {
			@Override
			public void keyTyped(KeyEvent e) {
				e.consume();
			}
		});

		// 添加窗口组件
		f_check.add(lb_blank);
		f_check.add(lb_lent);
		f_check.add(lb_blank2);
		f_check.add(ta_lent);

		// 设置窗口可见
		f_check.setVisible(true);
	}
}

/**
 * 借阅图书的窗口设置
 * 
 */
class BorrowBookMenu {
	// 创建窗体对象
	final static JFrame f_borrow = new JFrame("借阅书籍");
	// 创建标签对象
	static JLabel lb_id = new JLabel("请输入要借阅的书籍编号：");
	static JLabel lb_blank = new JLabel("                       ");
	// 创建文本框对象
	static JTextField tf_id = new JTextField(4);
	// 创建按钮对象
	static JButton bt_confirm = new JButton("确认");
	static JButton bt_quit = new JButton("取消");
	static int flag1 = 0;

	public BorrowBookMenu() {
		// 设置窗口属性
		f_borrow.setBounds(500, 200, 250, 100);
		f_borrow.setLayout(new FlowLayout());
		f_borrow.setResizable(false); // 禁止改变窗体大小
		f_borrow.setDefaultCloseOperation(JFrame.HIDE_ON_CLOSE);

		// 设置事件
		// 确认添加
		bt_confirm.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				// 检测几个重要信息是够为空，如果为空，则不能添加
				if (!(tf_id.getText().trim().contentEquals(""))) {
					try {
						flag1 = BookDemo.borrowBook(Integer.parseInt(tf_id.getText().trim()));
					} catch (NumberFormatException e1) {
						e1.printStackTrace();
					} catch (IOException e1) {
						e1.printStackTrace();
					}

					if(flag1 == 1) {
						f_borrow.dispose();
						f_borrow.setVisible(false);
						new NoteMenu("借阅成功", "该书籍已借阅成功！");
					}
					else if(flag1 == 0) new NoteMenu("借阅失败", "该书籍已无存书！");
				
				}
				// 如果某信息填写为空
				else {
					new NoteMenu("输入错误", "输入不能为空，请检查后重新输入！");
				}
			}
		});
		// 退出添加版块
		bt_quit.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				f_borrow.dispose();
				f_borrow.setVisible(false);
			}
		});

		// 添加窗口组件
		f_borrow.add(lb_id);
		f_borrow.add(tf_id);
		f_borrow.add(bt_confirm);
		f_borrow.add(lb_blank);
		f_borrow.add(bt_quit);

		// 设置窗口可见
		f_borrow.setVisible(true);
	}
}

/**
 * 归还图书的窗口设置
 * 
 */
class ReturnBookMenu {
	// 创建窗体对象
	final static JFrame F_return = new JFrame("归还书籍");
	// 创建标签对象
	static JLabel lb_id = new JLabel("请输入要归还的书籍编号：");
	static JLabel lb_blank = new JLabel("                       ");
	// 创建文本框对象
	static JTextField tf_id = new JTextField(4);
	// 创建按钮对象
	static JButton bt_confirm = new JButton("确认");
	static JButton bt_quit = new JButton("取消");
	static int flag2 = 0;
	public ReturnBookMenu() {
		// 设置窗口属性
		F_return.setBounds(500, 200, 250, 100);
		F_return.setLayout(new FlowLayout());
		F_return.setResizable(false); // 禁止改变窗体大小
		F_return.setDefaultCloseOperation(JFrame.HIDE_ON_CLOSE);

		// 设置事件
		// 确认添加
		bt_confirm.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				// 检测几个重要信息是够为空，如果为空，则不能添加
				if (!(tf_id.getText().trim().contentEquals(""))) {
					try {
						flag2 = BookDemo.returnBook(Integer.parseInt(tf_id.getText().trim()));
					} catch (NumberFormatException e1) {
						e1.printStackTrace();
					} catch (IOException e1) {
						e1.printStackTrace();
					}
					
					if(flag2 == 1) {
						F_return.dispose();
						F_return.setVisible(false);
						new NoteMenu("归还成功", "该书籍已归还成功！");
					}
					else if(flag2 == 0) new NoteMenu("归还失败", "不存在未归还的该书籍！");
				
				}
				// 如果某信息填写为空
				else {
					new NoteMenu("输入错误", "输入不能为空，请检查后重新输入！");
				}
			}
		});
		// 退出添加版块
		bt_quit.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				F_return.dispose();
				F_return.setVisible(false);
			}
		});

		// 添加窗口组件
		F_return.add(lb_id);
		F_return.add(tf_id);
		F_return.add(bt_confirm);
		F_return.add(lb_blank);
		F_return.add(bt_quit);

		// 设置窗口可见
		F_return.setVisible(true);
	}
}


/**
 * 删除图书的窗口设置
 * 
 */
class DeleteBookMenu{
	// 创建窗体对象
	final static JFrame f_delete = new JFrame("删除书籍信息");
	// 创建标签对象
	static JLabel lb_id = new JLabel("请输入要删除的书籍编号：");
	static JLabel lb_blank = new JLabel("                       ");
	// 创建文本框对象
	static JTextField tf_id = new JTextField(4);
	// 创建按钮对象
	static JButton bt_confirm = new JButton("确认");
	static JButton bt_quit = new JButton("取消");
	
	static int flag;

	public DeleteBookMenu() {
		// 设置窗口属性
		f_delete.setBounds(500, 200, 250, 100);
		f_delete.setLayout(new FlowLayout());
		f_delete.setResizable(false); // 禁止改变窗体大小
		f_delete.setDefaultCloseOperation(JFrame.HIDE_ON_CLOSE);

		// 设置事件
		// 确认添加
		bt_confirm.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				// 检测几个重要信息是够为空，如果为空，则不能添加
				if (!(tf_id.getText().trim().contentEquals(""))) {
					try {
						flag = BookDemo.deleteBook(Integer.parseInt(tf_id.getText()));
					} catch (IOException e1) {
						e1.printStackTrace();
					}
					if (flag == 1) {
						f_delete.dispose();
						f_delete.setVisible(false);
						new NoteMenu("删除成功", "书籍信息已经删除成功！");
					}
				}
				// 如果某信息填写为空
				else {
					new NoteMenu("输入错误", "输入不能为空，请检查后重新输入！");
				}
			}
		});
		// 退出添加版块
		bt_quit.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				f_delete.dispose();
				f_delete.setVisible(false);
			}
		});

		// 添加窗口组件
		f_delete.add(lb_id);
		f_delete.add(tf_id);
		f_delete.add(bt_confirm);
		f_delete.add(lb_blank);
		f_delete.add(bt_quit);

		// 设置窗口可见
		f_delete.setVisible(true);
	}
}

/**
 * 报错窗口的设置和显示
 */
class NoteMenu {
	// str1为窗口标题；str2为窗口内容
	public NoteMenu(String str1, String str2) {
		// 设置窗体属性
		JFrame f = new JFrame(str1);
		f.setBounds(500, 190, 350, 65);
		f.setLayout(new FlowLayout());
		f.setResizable(false); // 禁止改变窗体大小
		f.setDefaultCloseOperation(JFrame.HIDE_ON_CLOSE);
		// 添加和设置组件
		JLabel label = new JLabel(str2);
		label.setFont(new Font("楷体", Font.BOLD, 16));
		f.add(label);
		// 设置窗体事件
		f.addWindowListener(new WindowAdapter() {
			@Override
			public void windowClosing(WindowEvent e) {
				f.setAlwaysOnTop(false);
				f.dispose();
				f.setVisible(false);
			}
		});
		// 设置窗体可见
		f.setAlwaysOnTop(true);
		f.setVisible(true);

	}
}