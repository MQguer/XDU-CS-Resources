package GUI;

import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import javax.swing.JFrame;
import javax.swing.JLabel;

// 提示信息窗口类
public class WarningFrame extends JFrame{
	
	private WarningFrame warningFrame;
	private JLabel label;
	
	// str1为窗口标题；str2为提示信息
	public WarningFrame(String str1, String str2) {
		this.warningFrame = this;
		this.setTitle(str1);
		this.setBounds(600, 360, 350, 75);
		this.setLayout(new FlowLayout());
		this.setResizable(false);
		this.setDefaultCloseOperation(JFrame.HIDE_ON_CLOSE);
		
		// 添加和设置组件
		label = new JLabel(str2);
		label.setFont(new Font("楷体", Font.BOLD, 16));
		
		this.add(label);
		this.addWindowListener(new WindowAdapter() {
			@Override
			public void windowClosing(WindowEvent e) {
				warningFrame.setAlwaysOnTop(false);
				warningFrame.dispose();
				warningFrame.setVisible(false);
			}
		});
		this.setAlwaysOnTop(true);
		this.setVisible(true);
	}

}
