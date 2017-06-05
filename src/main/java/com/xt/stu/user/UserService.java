/**
 * 
 */
package com.xt.stu.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.xt.stu.util.DBUtil;

/**
 * @Description:用户信息操作类。
 * @Company  郑州兴唐IT教育
 * @author 王滔
 * @email 675475017@qq.com
 * @date：2017年5月26日下午8:54:54
 */
public class UserService {

	/**
	 *  根据用户名和用户密码判断是否登陆成功，如果登陆成功则返回true, 否则返回false
	 * @param userName
	 * @param password
	 * @return
	 */
	public boolean checkLogin(String userName, String password){
		Connection conn = DBUtil.getDBConn();
		PreparedStatement  ps = null;
		ResultSet rs = null;
		
		try {
			ps = conn.prepareStatement("select count(id) from user_info where user_name = ? and passwd = password(?)");
			ps.setString(1, userName);
			ps.setString(2, password);
			rs = ps.executeQuery();
			rs.next();
			return rs.getInt(1) > 0;
			
		} catch (SQLException e) {
			System.out.println("用户登陆操作出现异常！" + e);
		}finally{
			DBUtil.closeConn(conn);
			DBUtil.closeStatement(ps);
			DBUtil.closeResultSet(rs);
		}
		return false;
	}
	
	
	public UserInfo getUserInfoByUserName(String userName){
		UserInfo ui = null;
		Connection conn = DBUtil.getDBConn();
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = conn.prepareStatement("select * from user_info where user_name = ?");
			ps.setString(1, userName);
			rs = ps.executeQuery();
			if(rs.next()){
				ui = new UserInfo();
				ui.setUserName(userName);
				ui.setUserType(rs.getInt("user_type"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtil.closeConn(conn);
		}
		return ui;
	}
	
}
