package code;

/** 本类对图书馆管理系统的两个主窗口进行设置（读者和管理员）
 * 
 * @author 任桂奇
 */

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.io.IOException;
import user.*;

import javax.swing.*;

public class Menu extends Account {
	// 创建窗体对象
	static JFrame f_main = new JFrame("图书馆管理系统");
	static JFrame f_manage = new JFrame("图书馆管理系统-管理员模式");
	static JFrame f_checkAll = new JFrame("全部书籍信息");
	static JFrame f_checkLent = new JFrame("出借书籍信息");

	// 创建菜单栏
	static JMenuBar mb = new JMenuBar();

	// 创建菜单
	static JMenu m_manager = new JMenu("管理员");
	static JMenu m_help = new JMenu("帮助");

	// 创建菜单项
	static JMenuItem item_login = new JMenuItem("管理员登录");
	static JMenuItem item_register = new JMenuItem("管理员注册");

	// 创建标签对象
	static JLabel label_allbooks = new JLabel("当前全部书籍信息");
	static JLabel label_lentBooks = new JLabel("尚未归还书籍统计");

	// 创建按钮对象
	static JButton bt_borrow = new JButton("借阅书籍"); // 读者界面
	static JButton bt_checkAll1 = new JButton("查询书籍");
	static JButton bt_checkBorrowed = new JButton("已借书籍");
	static JButton bt_return = new JButton("归还书籍");
	static JButton bt_quit1 = new JButton("退出系统");

	static JButton bt_checkAll2 = new JButton("查询全部书籍信息"); // 管理员界面
	static JButton bt_checkLent = new JButton("查询未归还书籍");
	static JButton bt_addBook = new JButton("添加书籍信息");
	static JButton bt_deleteBook = new JButton("删除书籍信息");
	static JButton bt_quit2 = new JButton("退出管理系统");

	/**
	 * 这个方法可以创建、设置并打开主窗口.
	 */
	public static void openMainFrame() {
		// 设置窗体属性
		f_main.setBounds(0, 0, 800, 600);
		f_main.setLayout(new BorderLayout());

		// 设置事件
		
		// 借阅图书
		bt_borrow.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				new BorrowBookMenu();
			}
		});
		
		// 归还图书
		bt_return.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				new ReturnBookMenu();
			}
		});
		
		// 查询全部书籍
		bt_checkAll1.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				Process p = null;
				try {
					p = Runtime.getRuntime().exec("notepad.exe books//BookList.txt");
					Thread.sleep(6000); // 睡眠6秒钟
				} catch (IOException e1) {
					e1.printStackTrace();
				} catch (InterruptedException e1) {
					e1.printStackTrace();
				} finally {
					p.destroy(); // 销毁进程
				}
			}
		});
		
		// 查询未归还书籍
		bt_checkBorrowed.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				try {
					new CheckLentMenu();
				} catch (IOException e1) {
					e1.printStackTrace();
				}
			}
		});
		
		// 管理员登录
		item_login.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				try {
					Login.openLoginFrame();
				} catch (IOException e1) {
					e1.printStackTrace();
				}
			}
		});

		// 管理员注册
		item_register.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				try {
					user.Register.openRegisterFrame(); // 打开注册界面
				} catch (IOException e1) {
					e1.printStackTrace();
				}
			}
		});

		// 关闭按钮
		bt_quit1.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				System.exit(0);
			}
		});

		// f_main窗口添加组件
		// 添加菜单项
		m_manager.add(item_login);
		m_manager.add(item_register);
		mb.add(m_manager);
		mb.add(m_help);
		f_main.setJMenuBar(mb);
		// 添加按钮
		f_main.add(bt_borrow, BorderLayout.WEST);
		f_main.add(bt_checkAll1, BorderLayout.CENTER);
		f_main.add(bt_return, BorderLayout.EAST);
		f_main.add(bt_quit1, BorderLayout.SOUTH);
		f_main.add(bt_checkBorrowed, BorderLayout.NORTH);
		// 设置主窗口可关闭、可见
		f_main.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		f_main.setVisible(true);
	}

	/**
	 * 这个方法可以关闭主窗口
	 */
	public static void closeMainFrame() {
		f_main.dispose();
		f_main.setVisible(false);
	}

	/**
	 * 这个方法可以创建、设置并打开管理员窗口.
	 */
	public static void openManagerFrame() {
		f_manage.setBounds(0, 0, 800, 600);
		f_manage.setLayout(new BorderLayout());

		// 设置事件
		// 添加书籍
		bt_addBook.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				new AddBookMenu();
			}
		});
		
		// 删除书籍
		bt_deleteBook.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				new DeleteBookMenu();
			}
		});
		
		// 查询全部书籍
		bt_checkAll2.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				Process p = null;
				try {
					p = Runtime.getRuntime().exec("notepad.exe books//BookList.txt");
					Thread.sleep(6000); // 睡眠六秒钟
				} catch (IOException e1) {
					e1.printStackTrace();
				} catch (InterruptedException e1) {
					e1.printStackTrace();
				} finally {
					p.destroy(); // 销毁进程
				}
			}
		});
		
		// 查询未归还书籍
		bt_checkLent.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				try {
					new CheckLentMenu();
				} catch (IOException e1) {
					e1.printStackTrace();
				}
			}
		});
		
		// 关闭按钮
		bt_quit2.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				f_manage.dispose();
				f_manage.setVisible(false);
				openMainFrame();
			}
		});

		// 添加按钮
		f_manage.add(bt_addBook, BorderLayout.WEST);
		f_manage.add(bt_checkAll2, BorderLayout.CENTER);
		f_manage.add(bt_deleteBook, BorderLayout.EAST);
		f_manage.add(bt_checkLent, BorderLayout.NORTH);
		f_manage.add(bt_quit2, BorderLayout.SOUTH);

		// 设置主窗口可见
		f_manage.setVisible(true);
	}

}
