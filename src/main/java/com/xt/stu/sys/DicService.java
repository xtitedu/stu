/**
 * 
 */
package com.xt.stu.sys;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

import com.xt.stu.util.DBUtil;
import com.xt.stu.util.DateUtil;

/**
 * @Description:字典信息处理类
 * @Company  郑州兴唐IT教育
 * @author 王滔
 * @email 675475017@qq.com
 * @date：2017年9月5日上午11:55:55
 */
public class DicService {

	/**
	 * 
	 * @param attr
	 * @return
	 */
	public List<Dic> getDicByAttr(Dic attr){
		List<Dic> dicList = new LinkedList<Dic>();
		Dic dic = null;
		Connection conn = DBUtil.getDBConn();
		Statement stat = null;
		ResultSet rs = null;
		StringBuffer sql = new StringBuffer("select * from sys_dic");
		try{
			stat = conn.createStatement();
			rs = stat.executeQuery(sql.toString());
			while(rs.next()){
				dic = new Dic();
				dic.setId(rs.getInt(1));
				dic.setDicType(rs.getString(2));
				dic.setDataName(rs.getString(3));
				dic.setDataCode(rs.getString(4));
				dic.setMemo(rs.getString(5));
				dic.setUpdateTime(rs.getDate(7));
				dic.setUpdatePerson(rs.getInt(8));
				dicList.add(dic);
			}
		}catch(Exception e){
			System.out.println("查询字典信息出现异常");
		}finally{
			DBUtil.closeResultSet(rs);
			DBUtil.closeStatement(stat);
			DBUtil.closeConn(conn);
		}
		return dicList;
	}
	
	/**
	 * 添加字典信息。。。。
	 * @param dic
	 * @return
	 */
	public boolean addDic(Dic dic){
		Connection conn = DBUtil.getDBConn();
		PreparedStatement ps = null;
		String sql = "INSERT INTO sys_dic (DIC_TYPE, DATA_NAME, DATA_CODE, MEMO, UPDATE_TIME, UPDATE_PERSON) VALUES (?, ?, ?, ?, ?, ?)";
		try{
			ps = conn.prepareStatement(sql);
			ps.setString(1, dic.getDicType());
			ps.setString(2, dic.getDataName());
			ps.setString(3, dic.getDataCode());
			ps.setString(4, dic.getMemo());
			ps.setDate(5, DateUtil.sqlDateToUtilDate(new Date()));
			ps.setInt(6, dic.getUpdatePerson());
			if(ps.executeUpdate() > 0){
				return true;
			}
		}catch(Exception e){
			System.out.println("添加字典信息出现异常。。。。" + e);
		}finally{
			DBUtil.closeStatement(ps);
			DBUtil.closeConn(conn);
		}
		return false;
	}
}
