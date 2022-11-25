package GUI;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.SwingConstants;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.DefaultTableModel;

import tables.Borrows;

// 读者用户归还图书的窗口类
public class ReturnFrame extends JFrame {
	
	private ReturnFrame returnFrame;
	private Object[] columnNames = {"借单编号", "图书编号", "借书日期"};
	private JButton borrow = new JButton("还书");
	private JScrollPane scrollPane;
	private JTable table;
	private DefaultTableModel model;
	private Object[][] data;
	private String user_id;
	
	public ReturnFrame(Object[][] data, String user_id) {
		this.returnFrame = this;
		this.data = data;
		this.user_id = user_id;
		this.setSize(500, 400);
		this.setLocation(750, 350);
		this.setVisible(true);
		this.setResizable(false);
		this.setLayout(null);
		this.setTitle("图书管理系统");
		
		model = new DefaultTableModel(data, columnNames);
		table = new JTable(model);
		int rows = table.getRowCount();
		scrollPane = new JScrollPane(table);
		
		borrow.setSize(80, 30);
		borrow.setLocation(210, 30);
		borrow.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				int index = table.getSelectedRow();
				int book_id = (int) table.getValueAt(index, 1);
				if(Borrows.returnBook(book_id, user_id)) { // 还书成功
					returnFrame.setVisible(false);
					JFrame warning = new WarningFrame("归还成功", "归还成功");
					new ReturnFrame(Borrows.searchUserAllUnreturnBook(user_id), user_id);
				} else {
					JFrame warning = new WarningFrame("归还失败", "归还失败，请重新尝试");
				}
			}
		});
		scrollPane.setSize(450, 240);
		scrollPane.setLocation(20, 80);
		table.setSize(450, 240);
		table.setLocation(10, 10);
		table.getTableHeader().setReorderingAllowed(false);
		DefaultTableCellRenderer render = new DefaultTableCellRenderer();
		render.setHorizontalAlignment(SwingConstants.CENTER);
		table.getColumnModel().getColumn(0).setCellRenderer(render);
		table.getColumnModel().getColumn(1).setCellRenderer(render);
		table.getColumnModel().getColumn(2).setCellRenderer(render);
		
		init();
	}
	
	private void init() {
		this.add(borrow);
		this.add(scrollPane);
	}

	public void setData(Object[][] data) {
		this.data = data;
	}
	
}
