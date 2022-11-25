package GUI;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.SwingConstants;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.DefaultTableModel;

import tables.Borrows;


// 管理员查询所有借阅记录的窗口类
public class CheckBorrowFrame extends JFrame {
	
	private CheckBorrowFrame checkBorrowFrame;
	private JScrollPane scrollPane;
	private JTable table;
	private DefaultTableModel model;
	
	private Object[] columnNames = {"借单编号", "用户账号", "图书编号", "借书日期", "还书日期"};
	private Object[][] data;

	private JButton refresh = new JButton("刷新数据库");	

	public CheckBorrowFrame(Object[][] data) {
		this.checkBorrowFrame = this;
		this.data = data;
		this.setSize(500, 400);
		this.setLocation(750,350);
		this.setTitle("图书管理系统");
		this.setVisible(true);
		this.setResizable(false);
		this.setLayout(null);
		
		model = new DefaultTableModel(data, columnNames);
		table = new JTable(model);
		int rows = table.getRowCount();
		scrollPane = new JScrollPane(table);
		
		refresh.setSize(120, 30);
		refresh.setLocation(200, 30);
		refresh.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				checkBorrowFrame.setVisible(false);
				new CheckBorrowFrame(Borrows.searchAllRecords());
			}
		});

		scrollPane.setSize(450, 240);
		scrollPane.setLocation(20, 80);
		table.setSize(450, 220);
		table.setLocation(10, 10);
		
		this.add(refresh);
		this.add(scrollPane);
	}

	public void setData(Object[][] data) {
		this.data = data;
	}
	
}
