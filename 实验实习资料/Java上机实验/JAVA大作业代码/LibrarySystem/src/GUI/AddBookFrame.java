package GUI;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;

import tables.Books;


// 管理员添加新图书的窗口类
public class AddBookFrame extends JFrame {
	
	private AddBookFrame self;

	private JLabel forName = new JLabel("书名");
	private JLabel forAuthor = new JLabel("作者");
	private JLabel forPublisher = new JLabel("出版社");
	private JLabel forClassify = new JLabel("分类");
	
	private JTextField nameField = new JTextField();
	private JTextField authorField = new JTextField();
	private JTextField publisherField = new JTextField();
	private JTextField classifyField = new JTextField();
	
	private JButton add = new JButton("添加书籍");
	
	public AddBookFrame() {
		this.self = this;
		this.setSize(280, 315);
		this.setLocation(750,350);
		this.setTitle("添加图书");
		this.setVisible(true);
		this.setResizable(false);
		this.setLayout(null);
		
		forName.setSize(80, 30);
		forName.setLocation(20, 30);
		forAuthor.setSize(80, 30);
		forAuthor.setLocation(20, 80);   
		forPublisher.setSize(80, 30);
		forPublisher.setLocation(20, 130);
		forClassify.setSize(80, 30);
		forClassify.setLocation(20, 180);
		
		nameField.setSize(130, 30);
		nameField.setLocation(80, 30);
		authorField.setSize(130, 30);
		authorField.setLocation(80, 80);
		publisherField.setSize(130, 30);
		publisherField.setLocation(80, 130);
		classifyField.setSize(130, 30);
		classifyField.setLocation(80, 180);
		
		add.setSize(100, 30);
		add.setLocation(80, 235);
		add.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				String name = nameField.getText();
				String author = authorField.getText();
				String publisher = publisherField.getText();
				String classify = classifyField.getText();
				
				if(Books.addBook(name, author, publisher, classify)) {// 添加成功
					self.setVisible(false);
					new WarningFrame("添加图书成功", "添加成功");
				} else {
					new WarningFrame("添加图书失败", "添加失败");
				}
			}
		});
		
		this.add(forName);
		this.add(forAuthor);
		this.add(forPublisher);
		this.add(forClassify);
		this.add(nameField);
		this.add(authorField);
		this.add(publisherField);
		this.add(classifyField);
		this.add(add);
	}
}
