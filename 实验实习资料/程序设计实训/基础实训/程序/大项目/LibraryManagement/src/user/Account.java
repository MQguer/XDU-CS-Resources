package user;

/** 这个类用于记录用户名和密码，并提供了注册、登录和载入用户数据的方法.
 * @author 任桂奇
 * @version 1.0
 */

import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.Label;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.HashMap;
import java.util.Map;

import javax.imageio.spi.RegisterableService;
import javax.swing.JFrame;
import javax.swing.JLabel;
import code.*;

public class Account {
	// 定义用户名和密码对应的映射集合对象
	static Map<String, String> accountMap = new HashMap<String, String>();
	
	// 定义书籍的对象数集（最大容量设为255）
	public static Book[] books = new Book[255];
	
	// confirmbool用于标记是否注册成功
	static boolean confirmbool = false;
	
	// ID记录总编号数
	public static int ID = 0;

	/**
	 * 这个方法用于注册新账户，并把该账户的信息自动储存到根目录下.
	 * @param username 注册的用户名，不能含有空格，为String类型
	 * @param password 注册的密码，不能含有空格，为String类型
	 * @throws IOException
	 */
	public static void register(String username, String password) throws IOException {
		// 用户名和密码为空时，弹出错误窗口
		if (username == null || password == null || username.contentEquals("") || password.contentEquals("")) {
			JFrame f = new JFrame("注册出错！");
			f.setBounds(500, 200, 300, 70);
			f.setLayout(new FlowLayout());
			JLabel label = new JLabel("注册出错,用户名和密码不能为空！");
			f.add(label);
			label.setFont(new Font("楷体", Font.BOLD, 16));
			f.addWindowListener(new WindowAdapter() {
				public void windowClosing(WindowEvent e) {
					// 关闭确认界面
					f.dispose();
					f.setVisible(false);
				}
			});
			f.setUndecorated(false);// 去掉窗体修饰,包括最大化按钮
			f.setResizable(false); // 禁止改变窗体大小
			f.setVisible(true);
		}

		// 用户名和密码不为空，但是用户名已存在时，弹出错误窗口
		else if (accountMap.containsKey(username)) {
			JFrame f = new JFrame("注册出错！");
			f.setBounds(500, 220, 300, 70);
			f.setLayout(new FlowLayout());
			JLabel label = new JLabel("注册出错,该用户名已存在！");
			f.add(label);
			label.setFont(new Font("楷体", Font.BOLD, 16));
			f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
			f.setUndecorated(false);// 去掉窗体修饰,包括最大化按钮
			f.setResizable(false); // 禁止改变窗体大小
			f.setVisible(true);
		}

		// 用户名和密码不为空，且用户名未存在时，正常操作，进行注册
		else {
			accountMap.put(username, password);
			// 创建对应用户的专属文件夹，用于存储对应的事项
			String direction = new String("accountList\\" + username);
			File folder = new File(direction);
			folder.mkdirs();
			
			// 创建一个文本文件，记录用户名和密码
			File accountFile = new File("accountList\\" + username + "\\user.txt");
			accountFile.createNewFile();
			OutputStreamWriter osw = new OutputStreamWriter(new FileOutputStream(accountFile));
			osw.write("Username:" + username + "|" + "Password:" + password);
			osw.close(); // 释放资源
			
			//创建另一个文本文件，记录项目的总数以及各自的数目
			File idFile = new File("accountList\\id.txt");
			idFile.createNewFile();
			BookDemo.recordID();

			// 指示注册成功
			confirmbool = true;
		}
	}

	/**
	 * 这个方法用于登录账户，并判断用户名是否存在，以及用户名和密码是否匹配.
	 * <p>后期制作时，因为Login类中创建了更合适的判断功能，故最后摒弃了这个方法<br>
	 * @param username 登录的用户名，不能含有空格，为String类型
	 * @param password 登录的密码，不能含有空格，为String类型
	 * @return bool  true 表示登陆成功，false表示登录失败
	 * @throws IOException
	 */
	public static boolean login(String username, String password) {
		boolean bool = false;
		// 如果用户名存在且与密码匹配，则返回true,否则为false
		if (accountMap.containsKey(username)) {
			if (password.contentEquals(accountMap.get(username))) {
				bool = true;
			}
		} else {
			bool = false;
		}
		// 返回结果
		return bool;

	}

	/**
	 * 这个方法用于每次启动程序时自动加载根目录下的账户数据.
	 * @throws IOException
	 */
	public static void load() throws IOException {
		File folder2 = new File("accountlist");
		File[] files = folder2.listFiles();
		if (files != null) {
			for (File f : files) {
				if (f.isDirectory()) {
					// 字符流读取对应根目录下的用户账户信息
					InputStreamReader isr = new InputStreamReader(
							new FileInputStream("accountlist\\" + f.getName() + "\\user.txt"));
					int c_read = 0;
					String str_text = "";
					while ((c_read = isr.read()) != -1) {
						str_text += (char) c_read;
					}
					isr.close(); // 释放资源
					int start = str_text.indexOf(':') + 1;
					int end = str_text.indexOf('|');
					if (start >= 0 && end >= 0) {
						// 返回用户名与密码的字符串形式，并把他们作为键值对添加到accountMap集合
						String username = str_text.substring(start, end).trim();
						String password = str_text.substring(str_text.lastIndexOf(':') + 1).trim();
						accountMap.put(username, password);
					} else {
						System.out.println("Error!");
					}
				}
			}
		}
	}

}