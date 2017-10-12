package com.xt.stu.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
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
	
	/**
	 *  useUnicode 是否使用Unicode字符集，如果参数characterEncoding设置为gb2312或gbk，本参数值必须设置为true false 1.1g 
		characterEncoding 当useUnicode设置为true时，指定字符编码。比如可设置为gb2312或gbk false 1.1g 
		autoReconnect 当数据库连接异常中断时，是否自动重新连接？ false 1.1 
		autoReconnectForPools 是否使用针对数据库连接池的重连策略 false 3.1.3 
		failOverReadOnly 自动重连成功后，连接是否设置为只读？ true 3.0.12 
		maxReconnects autoReconnect设置为true时，重试连接的次数 3 1.1 
		initialTimeout autoReconnect设置为true时，两次重连之间的时间间隔，单位：秒 2 1.1 
		connectTimeout 和数据库服务器建立socket连接时的超时，单位：毫秒。 0表示永不超时，适用于JDK 1.4及更高版本 0 3.0.1 
		socketTimeout socket操作（读写）超时，单位：毫秒。 0表示永不超时 0 3.0.1 
	 */
	private static final String DB_URL = "jdbc:mysql://192.168.9.234:3306/xt_stu?useUnicode=true&characterEncoding=utf8&autoReconnect=true&failOverReadOnly=false";
	
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
	
	
	public static void main(String[] args){
		Connection conn = DBUtil.getDBConn();
		PreparedStatement ps;
		try {
			ps = conn.prepareStatement("select 7 + ? from dual");
			ps.setInt(1, 123);;
			ResultSet rs = ps.executeQuery();
			rs.next();
			System.out.println("------------------------>" + rs.getString(1));
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
