package tables;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import database.MySQLConnector;

// users表对应的实体类
public class Users {

	private String user_id;
	private String user_name;
	private String user_pass;
	
	public Users(String user_id, String user_name, String user_pass) {
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_pass = user_pass;
	}
	
	// 验证用户的密码，0为验证失败，1为读者用户，2为管理员
	public static int checkUser(String id, String password) {
		Connection conn = MySQLConnector.getConnection();
		String sql = "select user_pass from users where user_id=?";
		try {
			PreparedStatement preps = conn.prepareStatement(sql);
			preps.setString(1, id);
			ResultSet rs = preps.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(password)) {		// 验证通过
					if(id.equals("root")) {					// 是管理员用户
						return 2;
					} else {								// 是读者用户
						return 1;
					}
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	// 根据用户的编号查询用户信息
	public static Users getUserById(String id) {
		Connection conn = MySQLConnector.getConnection();
		String sql = "select * from users where user_id=?";
		
		try {
			PreparedStatement preps = conn.prepareStatement(sql);
			preps.setString(1, id);
			ResultSet rs = preps.executeQuery();
			if(rs.next()) {
				return new Users(rs.getString(1), rs.getString(2), rs.getString(3));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}

	// 新增用户
	public static boolean addUser(String id, String name, String pass) {
		Connection conn = MySQLConnector.getConnection();
		String sql = "insert into users (user_id, user_name, user_pass) " + "values (?, ?, ?)";
		try {
			PreparedStatement preps = conn.prepareStatement(sql);
			preps.setString(1, id);
			preps.setString(2, name);
			preps.setString(3, pass);
			if(!preps.execute()) {
				MySQLConnector.release(conn, preps);
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	// 根据账号（用户id）删除用户
	public static boolean deleteUser(String id) {
		Connection conn = MySQLConnector.getConnection();
		String sql = "delete from users where user_id=?";
		try {
			PreparedStatement preps = conn.prepareStatement(sql);
			preps.setString(1, id);
			if(!preps.execute()) {
				MySQLConnector.release(conn, preps);
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public String getUser_id() {
		return user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public String getUser_pass() {
		return user_pass;
	}

}
