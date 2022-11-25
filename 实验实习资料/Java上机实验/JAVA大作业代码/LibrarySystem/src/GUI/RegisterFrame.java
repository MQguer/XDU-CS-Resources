package GUI;

import java.awt.Dimension;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;

import tables.Books;
import tables.Users;

// 读者注册的窗口类
public class RegisterFrame extends JFrame {
	private RegisterFrame registerFrame;
	
	private JLabel forId = new JLabel("账号");
	private JLabel forName = new JLabel("姓名");
	private JLabel forPass = new JLabel("密码");

	private JTextField idField = new JTextField();
	private JTextField nameField = new JTextField();
	private JTextField passField = new JTextField();
	
	private JButton regist = new JButton("注册新用户");
	
	public RegisterFrame() {
		this.registerFrame = this;
		this.setSize(330, 260);
		this.setLocation(800, 400);
		this.setTitle("新用户注册");
		this.setLayout(null);
		this.setVisible(true);
		this.setResizable(false);
		
		forId.setSize(80, 30);
		forId.setLocation(20, 30);
		forName.setSize(80, 30);
		forName.setLocation(20, 80);
		forPass.setSize(80, 30);
		forPass.setLocation(20, 130);
		
		idField.setSize(200, 30);
		idField.setLocation(80, 30);
		nameField.setSize(200, 30);
		nameField.setLocation(80, 80);
		passField.setSize(200, 30);
		passField.setLocation(80, 130);
		
		regist.setSize(120, 30);
		regist.setLocation(105, 180);
		regist.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				String id = idField.getText();
				String name = nameField.getText();
				String pass = passField.getText();
				if(Users.addUser(id, name, pass)) {
					registerFrame.setVisible(false);
					JFrame warning = new WarningFrame("注册成功", "注册成功！");
				} else {
					JFrame warning = new WarningFrame("注册失败", "注册失败，请重新注册");
				}
			}
		});
		
		this.add(forId);
		this.add(forName);
		this.add(forPass);
		this.add(idField);
		this.add(nameField);
		this.add(passField);
		this.add(regist);
	}
}
