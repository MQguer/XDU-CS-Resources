package tables;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;

import database.MySQLConnector;
import database.MySQLBooklist;

// borrows表对应的实体类
public class Borrows {

	// 完成借书操作
	public static boolean borrowBook(int book_id, String user_id) {
		Connection conn = MySQLConnector.getConnection();
		String sql = "insert into borrows (borrow_id, user_id, book_id, borrow_date, return_date) VALUES (null, ?, ?, ?, '')";
		
		// 获取时间
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);      
		int month = (cal.get(Calendar.MONTH)+1)%12;      
		int day = cal.get(Calendar.DATE);      
		int hour = cal.get(Calendar.HOUR_OF_DAY);      
		int minute = cal.get(Calendar.MINUTE);      
		String date = "" + year + "年" + month + "月" + day + "日" + hour + ":" + minute;
		
		try {
			PreparedStatement preps = conn.prepareStatement(sql);
			preps.setString(1, user_id);
			preps.setInt(2, book_id);
			preps.setString(3, date);
			System.out.println(preps.toString());
			preps.execute();
			
			sql = "update books set book_status=0 where book_id=?"; // 更新书籍状态
			preps = conn.prepareStatement(sql);
			preps.setInt(1, book_id);
			preps.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}

	// 完成还书操作
	public static boolean returnBook(int book_id, String user_id) {
		Connection conn = MySQLConnector.getConnection();
		String sql = "update borrows set return_date=? where book_id=? and user_id=? and return_date=''";
		
		// 获取时间
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);      
		int month = (cal.get(Calendar.MONTH)+1)%12;      
		int day = cal.get(Calendar.DATE);      
		int hour = cal.get(Calendar.HOUR_OF_DAY);      
		int minute = cal.get(Calendar.MINUTE);      
		String date = "" + year + "年" + month + "月" + day + "日" + hour + ":" + minute;
		try {
			PreparedStatement preps = conn.prepareStatement(sql);
			System.out.println();
			preps.setString(1, date);
			preps.setInt(2, book_id);
			preps.setString(3, user_id);
			System.out.println(preps.toString());
			preps.executeUpdate();
			sql = "update books set book_status=1 where book_id=?"; // 更新书籍状态
			preps = conn.prepareStatement(sql);
			preps.setInt(1, book_id);
			preps.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}

	// 查找当前用户所有未还图书
	public static Object[][] searchUserAllUnreturnBook(String user_id) {
		Connection conn = MySQLConnector.getConnection();
		String sql = "select borrow_id, book_id, borrow_date from borrows where user_id=? and return_date=''";
		try {
			PreparedStatement preps = conn.prepareStatement(sql);
			preps.setString(1, user_id);
			ResultSet rs = preps.executeQuery();
			return MySQLBooklist.getBorrowedBooks(rs);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}

	// 查找所有借书记录
	public static Object[][] searchAllRecords() {
		Connection conn = MySQLConnector.getConnection();
		String sql = "select * from borrows";
		try {
			PreparedStatement preps = conn.prepareStatement(sql);
			ResultSet rs = preps.executeQuery();
			return MySQLBooklist.getBorrowRecords(rs);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}

	
}
