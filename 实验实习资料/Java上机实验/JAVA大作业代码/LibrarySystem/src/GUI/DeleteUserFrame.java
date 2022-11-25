package GUI;

import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.*;
import tables.Users;
import org.w3c.dom.UserDataHandler;

// 管理员注销读者账号的窗口类
public class DeleteUserFrame extends JFrame{
	
	private DeleteUserFrame deleteUserFrame;
	private JButton confirm=  new JButton("确定");
	private JLabel label = new JLabel("请输入用户账号:");
	private JTextField user_id_field= new JTextField();
	private String user_id;

	public DeleteUserFrame() {
		this.deleteUserFrame = this;
		this.setBounds(500, 200, 400, 185);
		this.setTitle("删除用户");
		this.setResizable(false); 
		this.setVisible(true);
		this.setLayout(null);

		label.setSize(100,30);
		label.setLocation(30, 30);

		user_id_field.setSize(200,30);
		user_id_field.setLocation(150, 30);
		
		confirm.setSize(80, 30); 
		confirm.setLocation(160, 90);
		confirm.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				user_id = user_id_field.getText();
				if(Users.deleteUser(user_id))
				{
					deleteUserFrame.setVisible(false);
					new WarningFrame("删除成功", "删除成功");
				}
				else
				{
					new WarningFrame("删除失败", "删除失败，请重新输入");
				}
				
			}
		});
		
		
		this.add(label);
		this.add(user_id_field);
		this.add(confirm);
	}


}
