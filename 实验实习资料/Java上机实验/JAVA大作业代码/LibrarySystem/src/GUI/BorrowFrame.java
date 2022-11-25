package GUI;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.SwingConstants;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.DefaultTableModel;

import tables.Books;
import tables.Borrows;

// 读者用户借阅图书的窗口类
public class BorrowFrame extends JFrame {
	
	private BorrowFrame borrowFrame;
	private JTable table;
	private DefaultTableModel model;
	
	private Object[] columnNames = {"图书编号", "书名", "作者", "出版社", "类别", "借阅状态"};
	private Object[][] data = Books.searchAllBook();
	private JButton refresh = new JButton("刷新");
	private JButton borrow = new JButton("借书");
	private JScrollPane scrollPane;
	
	private String id;    		// 图书编号
	private String name;  		// 书名
	private String author;		// 作者
	private String publisher;	// 出版社
	private String classify;	// 类别
	private int status;			// 借阅状态
	private String user_id;     // 用户账号

	public BorrowFrame(Object[][] data, String user_id) {
		this.borrowFrame = this;
		this.data = data;
		this.user_id = user_id;
		this.setSize(600, 400);
		this.setLocation(750,350);
		this.setTitle("借阅图书");
		this.setVisible(true);
		this.setResizable(false);
		this.setLayout(null);
		
		model = new DefaultTableModel(data, columnNames);
		table = new JTable(model);
		
		scrollPane = new JScrollPane(table);
		refresh.setSize(80, 30);
		refresh.setLocation(200, 30);
		refresh.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				borrowFrame.setVisible(false);
				new BorrowFrame(Books.searchAllBook(), user_id);
			}
		});
		borrow.setSize(80, 30);
		borrow.setLocation(330, 30);
		borrow.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				int index = table.getSelectedRow();
				int book_id = Integer.parseInt((String) table.getValueAt(index, 0));
				String status = (String) table.getValueAt(index, 5);
				if(status.equals("可借阅")) {
					if(Borrows.borrowBook(book_id, user_id)) {
						borrowFrame.setVisible(false);
						new WarningFrame("借阅成功", "借阅成功");
						new BorrowFrame(Books.searchAllBook(), user_id);
					} else {
						new WarningFrame("借阅失败", "借阅失败");
					}
				} else {
					new WarningFrame("借阅失败", "本书已被借出！");
				}
			}
		});
		scrollPane.setSize(550, 240);
		scrollPane.setLocation(20, 80);
		table.setSize(550, 240);
		table.setLocation(10, 10);
		this.add(refresh);
		this.add(borrow);
		this.add(scrollPane);
	}
	
	public void setData(Object[][] data) {
		this.data = data;
	}
	
}
