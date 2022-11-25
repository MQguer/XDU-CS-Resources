package GUI;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.IOException;

import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.SwingConstants;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.DefaultTableModel;

import tables.Books;
import tables.Borrows;

// 管理员主界面的窗口类
public class ManagerFrame extends JFrame  {

	private ManagerFrame managerFrame;
	
	private Object[] columnNames = {"图书编号", "书名", "作者", "出版社", "类别", "借阅状态"};
	private Object[][] data = Books.searchAllBook();
	
	private JButton refresh = new JButton("刷新数据");
	private JButton records = new JButton("借还记录");
	private JButton addBook = new JButton("添加图书");
	private JButton delBook = new JButton("删除图书");

	private JScrollPane scrollPane;
	private JTable table;
	private DefaultTableModel model;
	
	private JMenuBar mb = new JMenuBar();
	private JMenu m_user = new JMenu("用户");
	private JMenu m_book = new JMenu("图书");
	private JMenu m_help = new JMenu("帮助");
	private JMenuItem add_user = new JMenuItem("添加用户");
	private JMenuItem del_user = new JMenuItem("删除用户");
	private JMenuItem add_book = new JMenuItem("添加图书");
	private JMenuItem switch_user = new JMenuItem("切换用户");
	private JMenuItem help = new JMenuItem("程序说明");
	
	
	public ManagerFrame(Object[][] data) {
		this.managerFrame = this;
		this.data = data;
		this.setSize(600, 450);
		this.setLocation(750, 350);
		this.setTitle("图书管理系统-管理员");
		this.setVisible(true);
		this.setResizable(false);
		this.setLayout(null);
		
		
		model = new DefaultTableModel(data, columnNames);
		table = new JTable(model);
		
		int rows = table.getRowCount();
		scrollPane = new JScrollPane(table);

		
		addBook.setSize(100, 30);
		addBook.setLocation(30, 30);
		addBook.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				new AddBookFrame();
			}
		});
		
		
		delBook.setSize(100, 30);
		delBook.setLocation(170, 30);
		delBook.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				int index = table.getSelectedRow();
				int id = Integer.parseInt((String) table.getValueAt(index, 0));
				if(Books.deleteBook(id)) {
					managerFrame.setVisible(false);
					JOptionPane.showMessageDialog(null, "删除成功", "删除成功", JOptionPane.INFORMATION_MESSAGE);
					new ManagerFrame(Books.searchAllBook());
				} else {
					JOptionPane.showMessageDialog(null, "删除失败", "删除失败", JOptionPane.ERROR_MESSAGE);
				}
			}
		});
		
		records.setSize(100, 30);
		records.setLocation(310, 30);
		records.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				new CheckBorrowFrame(Borrows.searchAllRecords());
			}
		});
		
		refresh.setSize(100, 30);
		refresh.setLocation(450, 30);
		refresh.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				managerFrame.setVisible(false);
				new ManagerFrame(Books.searchAllBook());
			}
		});
		
		scrollPane.setSize(550, 280);
		scrollPane.setLocation(20, 80);
		table.setSize(550, 240);
		table.setLocation(10, 10);

		add_user.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				new RegisterFrame();
			}
				
		});
		
		del_user.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				new DeleteUserFrame();
			}
		});
		
		switch_user.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				managerFrame.setVisible(false);
				try {
					new LoginFrame();
				} catch (Exception e1) {
					e1.printStackTrace();
				}
			}
		});
		
		help.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				try {
					Process p = Runtime.getRuntime().exec("notepad.exe 程序说明.txt");
				} catch (IOException e1) {
					e1.printStackTrace();
				}
			}
		});
		m_user.add(add_user);
		m_user.add(del_user);
		m_user.add(switch_user);
		m_help.add(help);
		mb.add(m_user);
		mb.add(m_help);
				
		this.setJMenuBar(mb);
		this.add(refresh);
		this.add(records);
		this.add(addBook);
		this.add(delBook);
		this.add(scrollPane);
	}
	
	
	public void setData(Object[][] data) {
		this.data = data;
	}
}
