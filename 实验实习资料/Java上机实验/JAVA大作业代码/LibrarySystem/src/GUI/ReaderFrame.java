package GUI;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;

import tables.Books;
import tables.Borrows;
import tables.Users;

// 读者主界面的窗口类
public class ReaderFrame extends JFrame {
	
	private ReaderFrame readerFrame;
	private JLabel welcome;
	private JButton borrowBook = new JButton("借阅书籍");
	private JButton returnBook = new JButton("归还书籍");
	private JButton logout = new JButton("退出");
	
	private String id;			// 编号（账号）
	private String username;	// 姓名
	private String password;	// 密码
	
	public ReaderFrame(Users user) {
		this.readerFrame = this;
		this.id = user.getUser_id();
		this.username = user.getUser_name();
		this.password = user.getUser_pass();
		
		this.setSize(390, 190);
		this.setLocation(750,350);
		this.setTitle("图书管理系统");
		this.setVisible(true);
		this.setResizable(false);
		this.setLayout(null);
		
		
		// 初始化面板
		welcome = new JLabel("欢迎使用图书管理系统，" + username + "！ 请选择你要进行的操作：");
		
		welcome.setSize(370, 30);
		welcome.setLocation(15, 30);
	
		borrowBook.setSize(120, 30);
		borrowBook.setLocation(10, 90);
		
		borrowBook.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				new BorrowFrame(Books.searchAllBook(), id);
			}
		});
		
		returnBook.setSize(120, 30);
		returnBook.setLocation(145, 90);
		returnBook.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				new ReturnFrame(Borrows.searchUserAllUnreturnBook(id), id);
			}
		});
		
		logout.setSize(80, 30);
		logout.setLocation(285, 90);
		logout.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				try {
					readerFrame.setVisible(false);
					JFrame mainFrame = new LoginFrame();
				} catch (Exception e1) {
					e1.printStackTrace();
				}
			}
		});
		
		this.add(welcome);
		this.add(borrowBook);
		this.add(returnBook);
		this.add(logout);
	}
}
