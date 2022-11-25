package GUI;

import java.awt.Color;
import java.awt.Container;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;

import tables.Books;
import tables.Users;


// 登录窗口类
public class LoginFrame extends JFrame {
	private LoginFrame loginFrame;
	// 记录输入的账号和密码
	private String userid;
	private String password;
	// 界面组件
	private JLabel idLabel = new JLabel("账号");	
	private JLabel pwLabel = new JLabel("密码");
	private JTextField unField = new JTextField();
	private JPasswordField pwField = new JPasswordField();
	private JButton login = new JButton("登录");
	private JButton register = new JButton("注册");
	
	public LoginFrame() throws Exception{
		this.loginFrame = this;
		this.setSize(350, 240);
		this.setLocation(800, 400);
		this.setTitle("图书管理系统");
		this.setVisible(true);
		this.setResizable(false);
		this.setLayout(null);
		
		idLabel.setSize(100, 30);
		idLabel.setLocation(50, 30);
		idLabel.setFont(new Font("楷体", Font.BOLD, 16));
		pwLabel.setSize(50, 30);
		pwLabel.setLocation(50, 80);
		pwLabel.setFont(new Font("楷体", Font.BOLD, 16));
		
		unField.setSize(200, 30);
		unField.setLocation(110, 30);
		pwField.setSize(200, 30);
		pwField.setLocation(110, 80);
		
		login.setSize(80, 30);
		login.setLocation(50, 150);
		login.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				userid = unField.getText();
				password = pwField.getText();
				int user_type = checkUser(userid, password);
				
				// 学生用户
				if(user_type == 1) {
					loginFrame.setVisible(false);
					Users user = Users.getUserById(userid);
					new ReaderFrame(user);
				} 
				// 管理员用户
				else if(user_type == 2) {
					loginFrame.setVisible(false);
					new ManagerFrame(Books.searchAllBook());
				} 
				else {
					JFrame warning = new WarningFrame("登录失败", "登录失败，请重新登录");
				}
			}
		});
		
		register.setSize(80, 30);
		register.setLocation(200, 150);
		register.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				new RegisterFrame();
			}
		});
		
		this.add(idLabel); 
		this.add(unField);
		this.add(pwLabel);
		this.add(pwField);
		this.add(login);
		this.add(register);
	}

	public int checkUser(String id, String password) {
		return Users.checkUser(id, password);
	}
}
