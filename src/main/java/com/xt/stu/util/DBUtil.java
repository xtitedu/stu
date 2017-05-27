package com.xt.stu.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * 
 * @Description:数据库连接工具类
 * @Company  郑州兴唐IT教育
 * @author 王滔
 * @email 675475017@qq.com
 * @date：2017年5月26日下午8:03:05
 */
public class DBUtil {

	private static final String DB_DRIVER = "com.mysql.jdbc.Driver";
	
	private static final String DB_URL = "jdbc:mysql://localhost:3306/xt_stu";
	
	private static final String DB_USER = "root";
	
	private static final String DB_PASSWD = "hadoop";
	
	/**
	 * 获取数据库链接
	 * @return
	 */
	public static Connection getDBConn(){
		Connection conn = null;
		try {
			Class.forName(DB_DRIVER);
			conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWD);
		} catch (ClassNotFoundException e) {
			System.out.println("数据库驱动加载出现异常：" + e);
		} catch (SQLException e) {
			System.out.println("数据库连接出现异常：" + e);
		}
		return conn;
	}
	
	/**
	 * 关闭数据库连接
	 * @param conn
	 */
	public static void closeConn(Connection conn){
		if(conn != null){
			try {
				conn.close();
			} catch (SQLException e) {
				System.out.println("数据库连接关闭出现异常：" + e);
			}
		}
	}
	
	/**
	 * 关闭结果集
	 * @param rs
	 */
	public static void closeResultSet(ResultSet rs ){
		if(rs != null){
			try {
				rs.close();
			} catch (SQLException e) {
				System.out.println("数据库结果集关闭出现异常：" + e);
			}
		}
	}
	
	/**
	 * 关闭statement
	 * @param stat
	 */
	public static void closeStatement(Statement stat){
		if(stat != null){
			try {
				stat.close();
			} catch (SQLException e) {
				System.out.println("Statement 关闭出现异常 ： " + e);
			}
		}
	}
}
