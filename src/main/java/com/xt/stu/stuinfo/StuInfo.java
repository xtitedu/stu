/**
 * 
 */
package com.xt.stu.stuinfo;

import java.util.Date;

/**
 * @Description:
 * 
 * 
 *  实体bean  
 * 
 * @Company 郑州兴唐IT教育
 * @author 王滔
 * @email 675475017@qq.com
 * @date：2017年6月2日上午10:37:57
 */
public class StuInfo {

	private int id;

	private String stuNo;

	private String stuName;
	
	private String idNum;

	private int gender;

	private Date birthday;

	private String email;

	private String telNum;

	private int classId;

	private String university;

	private String memo;

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the stuNo
	 */
	public String getStuNo() {
		return stuNo;
	}

	/**
	 * @param stuNo
	 *            the stuNo to set
	 */
	public void setStuNo(String stuNo) {
		this.stuNo = stuNo;
	}

	/**
	 * @return the stuName
	 */
	public String getStuName() {
		return stuName;
	}

	/**
	 * @param stuName
	 *            the stuName to set
	 */
	public void setStuName(String stuName) {
		this.stuName = stuName;
	}

	/**
	 * @return the idNum
	 */
	public String getIdNum() {
		return idNum;
	}

	/**
	 * @param idNum the idNum to set
	 */
	public void setIdNum(String idNum) {
		this.idNum = idNum;
	}

	/**
	 * @return the gender
	 */
	public int getGender() {
		return gender;
	}

	/**
	 * @param gender
	 *            the gender to set
	 */
	public void setGender(int gender) {
		this.gender = gender;
	}

	/**
	 * @return the birthday
	 */
	public Date getBirthday() {
		return birthday;
	}

	/**
	 * @param birthday
	 *            the birthday to set
	 */
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email
	 *            the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the telNum
	 */
	public String getTelNum() {
		return telNum;
	}

	/**
	 * @param telNum
	 *            the telNum to set
	 */
	public void setTelNum(String telNum) {
		this.telNum = telNum;
	}

	/**
	 * @return the classId
	 */
	public int getClassId() {
		return classId;
	}

	/**
	 * @param classId
	 *            the classId to set
	 */
	public void setClassId(int classId) {
		this.classId = classId;
	}

	/**
	 * @return the university
	 */
	public String getUniversity() {
		return university;
	}

	/**
	 * @param university
	 *            the university to set
	 */
	public void setUniversity(String university) {
		this.university = university;
	}

	/**
	 * @return the memo
	 */
	public String getMemo() {
		return memo;
	}

	/**
	 * @param memo
	 *            the memo to set
	 */
	public void setMemo(String memo) {
		this.memo = memo;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "StuInfo [id=" + id + ", stuNo=" + stuNo + ", stuName=" + stuName + ", gender=" + gender + ", birthday="
				+ birthday + ", email=" + email + ", telNum=" + telNum + ", classId=" + classId + ", university="
				+ university + ", memo=" + memo + "]";
	}

}
