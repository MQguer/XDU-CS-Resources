package database;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

// 获取MySQL数据库中图书信息的工具类
public class MySQLBooklist {
	// 当前书籍列表
	public static Object[][] getBooks(ResultSet rs) {	
		List list = new ArrayList();
		int count = 0;
		try {
			while(rs.next()) {
				List obj = new ArrayList();
				obj.add(rs.getString(1));
				obj.add(rs.getString(2));
				obj.add(rs.getString(3));
				obj.add(rs.getString(4));
				obj.add(rs.getString(5));
				obj.add(rs.getInt(6));
				list.add(obj);
			}
			int len = list.size();
			Object[][] result = new Object[len][6];
			for(int i = 0; i < len; i++) {
				result[i][0] = ((List) list.get(i)).get(0);
				result[i][1] = ((List) list.get(i)).get(1);
				result[i][2] = ((List) list.get(i)).get(2);
				result[i][3] = ((List) list.get(i)).get(3);
				result[i][4] = ((List) list.get(i)).get(4);
				if((int) ((List) list.get(i)).get(5) == 1)
					result[i][5] = "可借阅";
				else
					result[i][5] = "已借出";
			}
			return result;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	// 已借列表
	public static Object[][] getBorrowedBooks(ResultSet rs) {	
		List list = new ArrayList();
		int count = 0;
		try {
			while(rs.next()) {
				List obj = new ArrayList();
				obj.add(rs.getInt(1));
				obj.add(rs.getInt(2));
				obj.add(rs.getString(3));
				list.add(obj);
			}
			int len = list.size();
			Object[][] result = new Object[len][3];
			for(int i = 0; i < len; i++) {
				result[i][0] = ((List) list.get(i)).get(0);
				result[i][1] = ((List) list.get(i)).get(1);
				result[i][2] = ((List) list.get(i)).get(2);
			}
			return result;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	// 所有借书记录
	public static Object[][] getBorrowRecords(ResultSet rs) { 
		List list = new ArrayList();
		int count = 0;
		try {
			while(rs.next()) {
				List obj = new ArrayList();
				obj.add(rs.getInt(1));
				obj.add(rs.getString(2));
				obj.add(rs.getInt(3));
				obj.add(rs.getString(4));
				obj.add(rs.getString(5));
				list.add(obj);
			}
			int len = list.size();
			Object[][] result = new Object[len][5];
			for(int i = 0; i < len; i++) {
				result[i][0] = ((List) list.get(i)).get(0);
				result[i][1] = ((List) list.get(i)).get(1);
				result[i][2] = ((List) list.get(i)).get(2);
				result[i][3] = ((List) list.get(i)).get(3);
				result[i][4] = ((List) list.get(i)).get(4);
			}
			return result;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}
}
