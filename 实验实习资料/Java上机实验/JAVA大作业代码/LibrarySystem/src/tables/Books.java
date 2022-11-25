package tables;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import database.MySQLConnector;
import database.MySQLBooklist;

// books表对应的实体类
public class Books {
	
	// 添加书籍
	public static boolean addBook(String name, String author, String publisher, String classify) {
		Connection conn = MySQLConnector.getConnection();
		String sql = "insert into books (book_name, book_author, book_publisher, book_classify, book_status) "+ "values (?, ?, ?, ?, 1)";
		try {
			PreparedStatement preps = conn.prepareStatement(sql);
			preps.setString(1, name);
			preps.setString(2, author);
			preps.setString(3, publisher);
			preps.setString(4, classify);
			if(!preps.execute()) {
				MySQLConnector.release(conn, preps);
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	// 删除书籍
	public static boolean deleteBook(int id) {
		Connection conn = MySQLConnector.getConnection();
		String sql = "delete from books where book_id=?";
		try {
			PreparedStatement preps = conn.prepareStatement(sql);
			preps.setInt(1, id);
			if(!preps.execute()) {
				MySQLConnector.release(conn, preps);
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	// 搜索所有书籍
	public static Object[][] searchAllBook() {
		Connection conn = MySQLConnector.getConnection();
		String sql = "select * from books";
		try {
			PreparedStatement preps = conn.prepareStatement(sql);
			ResultSet rs = preps.executeQuery();
			return MySQLBooklist.getBooks(rs);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	// 返回所有被借阅的书籍
	public static Object[][] searchBorrowedBooks() {
		Connection conn = MySQLConnector.getConnection();
		String sql = "select * from books where book_classify like ?";
		try {
			PreparedStatement preps = conn.prepareStatement(sql);
			preps.setString(1, "%" + 0 + "%");
			ResultSet rs = preps.executeQuery();
			return MySQLBooklist.getBooks(rs);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}

}
