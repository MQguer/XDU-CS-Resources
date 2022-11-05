package user;

import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.io.IOException;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;

import user.Account;
import user.Login;

public class Register extends Account {
	// 创建窗体对象
	final static JFrame f_register = new JFrame("管理员注册界面");

	// 创建标签对象
	static JLabel label_username = new JLabel("请设置您的用户名：");
	static JLabel label_password = new JLabel("请设置您的密码：     ");
	static JLabel label_password2 = new JLabel("请确认您的密码：     ");
	static JLabel label_blank = new JLabel("                 ");
	static JLabel label_error = new JLabel("用户名/密码不能为空,请重新注册！");

	// 创建文本框对象
	static JTextField tf_username = new JTextField(12);
	static JPasswordField tf_password = new JPasswordField(12);
	static JPasswordField tf_password2 = new JPasswordField(12);

	// 创建按钮对象
	static JButton bt_confirm = new JButton("确认");
	static JButton bt_quit = new JButton("取消");

	public static void frame_register() {
		// 设置窗体和部分组件的基本属性
		f_register.setBounds(500, 200, 300, 150);
		f_register.setLayout(new FlowLayout());
		label_error.setFont(new Font("楷体", Font.BOLD, 16));

		// 添加组件
		f_register.add(label_username);
		f_register.add(tf_username);
		f_register.add(label_password);
		f_register.add(tf_password);
		f_register.add(label_password2);
		f_register.add(tf_password2);

		f_register.add(bt_confirm);
		f_register.add(label_blank);
		f_register.add(bt_quit);

		f_register.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		f_register.setUndecorated(false);// 去掉窗体修饰,包括最大化按钮
		f_register.setResizable(false); // 禁止改变窗体大小

		// 设置三个键盘监听，使得在文本框中无法键入空格、':'和'|'
		tf_username.addKeyListener(new KeyAdapter() {
			@Override
			public void keyTyped(KeyEvent e) {
				char ch = e.getKeyChar();
				if (ch == KeyEvent.VK_SPACE || ch == ':' || ch == '|') { // 当输入的是空格、':'和'|'时
					e.consume(); // 取消键盘录入的事件
				}
			}
		});

		tf_password.addKeyListener(new KeyAdapter() {
			@Override
			public void keyTyped(KeyEvent e1) {
				char ch = e1.getKeyChar();
				if (ch == KeyEvent.VK_SPACE || ch == ':' || ch == '|') { // 当输入的是空格、':'和'|'时
					e1.consume();// 取消键盘录入的事件
				}
			}
		});

		tf_password2.addKeyListener(new KeyAdapter() {
			@Override
			public void keyTyped(KeyEvent e2) {
				char ch = e2.getKeyChar();
				if (ch == KeyEvent.VK_SPACE || ch == ':' || ch == '|') { // 当输入的是空格、':'和'|'时
					e2.consume(); // 取消键盘录入的事件
				}
			}
		});

		// 单击"确认"
		bt_confirm.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				// 获取输入的用户名和密码
				String username = tf_username.getText().trim();
				String password = tf_password.getText().trim();
				String password2 = tf_password2.getText().trim();

				// 用户名和密码不能为空，否则弹出错误窗口
				if (username.contentEquals("") || password.contentEquals("")) {
					JFrame f = new JFrame("注册出错！");
					f.setBounds(500, 230, 300, 70);
					f.setLayout(new FlowLayout());
					f.add(label_error);
					f.addWindowListener(new WindowAdapter() {
						public void windowClosing(WindowEvent e) {
							// 关闭确认界面和注册界面
							f.dispose();
							f.setVisible(false);
							f_register.dispose();
							f_register.setVisible(false);
							// 自动打开登录界面
							Login.frame_login();
							Login.f_login.setVisible(true);
						}
					});
					f.setUndecorated(false);// 去掉窗体修饰,包括最大化按钮
					f.setResizable(false); // 禁止改变窗体大小
					f.setVisible(true);
				}

				// 如果两次输入密码一致，则进行注册
				else if (password.equals(password2)) {
					try {
						Account.register(username, password);
					} catch (IOException e1) {
						e1.printStackTrace();
						System.exit(1);
					}
				} else { // 如果两次输入密码不一致，则弹出错误窗口
					JFrame f = new JFrame("注册出错！");
					f.setBounds(500, 200, 300, 70);
					f.setLayout(new FlowLayout());
					JLabel label = new JLabel("注册出错,两次密码输入不一致！");
					f.add(label);
					label.setFont(new Font("楷体", Font.BOLD, 16));
					f.setDefaultCloseOperation(JFrame.HIDE_ON_CLOSE);
					f.setUndecorated(false);// 去掉窗体修饰,包括最大化按钮
					f.setResizable(false); // 禁止改变窗体大小
					f.setVisible(true);
				}
				// confirmbool用于标记是否注册成功；如果不成功，则不操作
				if (confirmbool) {
					JFrame f = new JFrame("注册成功");
					JButton bt = new JButton("确认");
					f.setBounds(0, 0, 200, 100);
					f.setLayout(null);
					JLabel label = new JLabel("注册成功！");
					label.setBounds(50, 10, 100, 20);
					bt.setBounds(50, 40, 80, 20);
					bt.addMouseListener(new MouseAdapter() {
						@Override
						public void mouseClicked(MouseEvent e) {
							// 关闭确认界面和注册界面
							f.dispose();
							f.setVisible(false);
							f_register.dispose();
							f_register.setVisible(false);
						};
					});
					f.add(label);
					f.add(bt);
					label.setFont(new Font("楷体", Font.BOLD, 16));
					f.addWindowListener(new WindowAdapter() {
						public void windowClosing(WindowEvent e) {
							// 关闭确认界面和注册界面
							f.dispose();
							f.setVisible(false);
							f_register.dispose();
							f_register.setVisible(false);
							// 自动打开登录界面
							Login.frame_login();
							Login.f_login.setVisible(true);
						}
					});
					f.setUndecorated(false);// 去掉窗体修饰,包括最大化按钮
					f.setResizable(false); // 禁止改变窗体大小
					f.setVisible(true);
					confirmbool = false;
				}
			}
		});

		// 单击"取消"
		bt_quit.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				System.exit(0);
			}
		});

	}
	
	/** 
	 * 这个方法可以打开注册的窗口.
	 * <p>首先加载load()方法，读取相关文件中的数据，更新账户信息；然后设置窗口属性，最后使窗口可见<br>
	 * @exception IOException On input error.
     * @see IOException
	 * @return 没有返回值
	 */
	public static void openRegisterFrame() throws IOException {
		 Account.load();
		 frame_register();
		 f_register.setVisible(true);
	}
	

}
