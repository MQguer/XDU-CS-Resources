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

/** 这个类创建登录界面窗口，并实现登录和进入注册界面功能,同时这也是进入软件的第一个界面.
 * @author 任桂奇
 * @version 1.0
 */

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;

import user.Account;
import user.Register;

public class Login extends Account {

	// 创建窗体对象
	final static JFrame f_login = new JFrame("管理员登录界面");

	// 创建标签对象
	static JLabel label_username = new JLabel("用户名：");
	static JLabel label_password = new JLabel("密码：     ");
	static JLabel label_blank = new JLabel("         ");
	static JLabel label_blank2 = new JLabel("         ");
	static JLabel label_blank3 = new JLabel("         ");
	static JLabel label_error = new JLabel("用户名/密码不能为空,请重新登录！");

	// 创建文本框对象
	static JTextField tf_username = new JTextField(18);
	static JPasswordField tf_password = new JPasswordField(18);

	// 创建按钮对象
	static JButton bt_login = new JButton("登录");

	static JButton bt_quit = new JButton("退出");

	// 这个方法可以设置登录的窗口
	public static void frame_login() {
		// 设置窗体和部分组件的基本属性
		f_login.setBounds(500, 200, 300, 130);
		f_login.setLayout(new FlowLayout());
		label_error.setFont(new Font("楷体", Font.BOLD, 16));
		f_login.setResizable(false); // 禁止改变窗体大小
		f_login.setDefaultCloseOperation(JFrame.HIDE_ON_CLOSE);

		// 添加组件
		f_login.add(label_username);
		f_login.add(tf_username);
		f_login.add(label_password);
		f_login.add(tf_password);

		f_login.add(bt_login);
		f_login.add(label_blank);

		f_login.add(label_blank2);
		f_login.add(bt_quit);

		// 设置键盘和鼠标的监测器

		// 设置键盘监听，使得在文本框中无法键入空格、':'和'|'
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

		// 设置鼠标监测

		// 单击“登录”
		bt_login.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				String username2 = tf_username.getText().trim();
				String password2 = tf_password.getText().trim();

				if (accountMap.containsKey(username2)) {
					if (password2.contentEquals(accountMap.get(username2))) {
						System.out.println("登陆成功！");
						f_login.dispose();
						f_login.setVisible(false);
						code.Menu.closeMainFrame();
						code.Menu.openManagerFrame();
					} else {
						JFrame f = new JFrame("登录出错！");
						f.setBounds(500, 200, 250, 70);
						f.setLayout(new FlowLayout());
						JLabel label = new JLabel("登录出错,用户名或密码错误！");
						f.add(label);
						label.setFont(new Font("楷体", Font.BOLD, 16));
						f.addWindowListener(new WindowAdapter() {
							@Override
							public void windowClosing(WindowEvent e) {
								f.setAlwaysOnTop(false);
								f.dispose();
								f.setVisible(false);
								f_login.setVisible(true);
							}
						});
						f.setUndecorated(false);// 去掉窗体修饰,包括最大化按钮
						f.setResizable(false); // 禁止改变窗体大小
						f.setAlwaysOnTop(true);
						f_login.dispose();
						f_login.setVisible(false);
						f.setVisible(true);
					}
				} else {
					JFrame f = new JFrame("登录出错！");
					f.setBounds(500, 200, 250, 70);
					f.setLayout(new FlowLayout());
					JLabel label = new JLabel("登录出错,用户名或密码错误！");
					f.add(label);
					label.setFont(new Font("楷体", Font.BOLD, 16));
					f.addWindowListener(new WindowAdapter() {
						@Override
						public void windowClosing(WindowEvent e) {
							f.setAlwaysOnTop(false);
							f.dispose();
							f.setVisible(false);
							f_login.setVisible(true);
						}
					});
					f.setUndecorated(false);// 去掉窗体修饰,包括最大化按钮
					f.setResizable(false); // 禁止改变窗体大小
					f.setAlwaysOnTop(true);
					f_login.dispose();
					f_login.setVisible(false);
					f.setVisible(true);
				}
			}
		});

		// 单击“取消”
		bt_quit.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				f_login.setVisible(false);
			}
		});

	}

	/**
	 * 这个方法可以打开登录的窗口.
	 * <p>
	 * 首先加载load()方法，读取相关文件中的数据，更新账户信息；然后设置窗口属性，最后使窗口可见<br>
	 * 
	 * @exception IOException On input error.
	 * @see IOException
	 * @return 没有返回值
	 */
	public static void openLoginFrame() throws IOException {
		Account.load();
		frame_login();
		f_login.setVisible(true);
	}

}
