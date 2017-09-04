/**
 * 
 */
package com.xt.stu.stuinfo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

import com.xt.stu.util.DBUtil;
import com.xt.stu.util.DateUtil;

/**
 * @Description:
 * 
 * 业务bean
 * 
 * @Company  郑州兴唐IT教育
 * @author 王滔
 * @email 675475017@qq.com
 * @date：2017年6月5日下午4:26:58
 */
public class StuService {

	/**
	 * 添加学生信息
	 * @param stu
	 */
	public boolean insertStuInfo(StuInfo stu){
		String sql = "INSERT INTO stu_info (stu_no, stu_name, idnum, gender, birthday, email, tel_num, class_id, university, memo, study_date) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		Connection conn = DBUtil.getDBConn();
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, stu.getStuNo());
			ps.setString(2, stu.getStuName());
			ps.setString(3, stu.getIdNum());
			ps.setString(4, stu.getGender());
			ps.setDate(5, null);
			ps.setString(6, stu.getEmail());
			ps.setString(7, stu.getTelNum());
			ps.setInt(8, stu.getClassId());
			ps.setString(9, stu.getUniversity());
			ps.setString(10, stu.getMemo());
			ps.setDate(11, DateUtil.sqlDateToUtilDate(stu.getBirthday()));
			
			if(ps.executeUpdate() > 0){
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtil.closeStatement(ps);
			DBUtil.closeConn(conn);
		}
		return false;
	}
	
	/**
	 * 查询取学生信息
	 * @param stuAttr
	 * @return
	 */
	public List<StuInfo> getStuInfoByAttrs(StuInfo stuAttr){
		List<StuInfo> stuList = new LinkedList<StuInfo>();
		String sql = "select * from stu_info";
		Connection conn = DBUtil.getDBConn();
		Statement stat = null;
		ResultSet rs = null;
		
		try {
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			StuInfo stu = null;
			while(rs.next()){
				stu = new StuInfo();
				stu.setId(rs.getInt(1));
				stu.setStuNo(rs.getString(2));
				stu.setStuName(rs.getString(3));
				stu.setIdNum(rs.getString(4));
				stu.setGender(rs.getString(5));
				stu.setBirthday(rs.getDate(6));
				stu.setEmail(rs.getString(7));
				stu.setTelNum(rs.getString(8));
				stu.setClassId(rs.getInt(9));
				stu.setUniversity(rs.getString(10));
				stu.setMemo(rs.getString(11));
				
				stuList.add(stu);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
		return stuList;
	}
	
}
