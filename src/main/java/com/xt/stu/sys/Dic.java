/**
 * 
 */
package com.xt.stu.sys;

import java.util.Date;

/**
 * @Description: 字典表 实体bean
 * @Company  郑州兴唐IT教育
 * @author 王滔
 * @email 675475017@qq.com
 * @date：2017年6月2日上午10:45:31
 */
public class Dic {

	private int id;
	
	private String dicType;
	
	private String dataName;
	
	private String dataCode;
	
	private String memo;
	
	private int state;
	
	private Date updateTime;
	
	private int updatePerson;

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the dicType
	 */
	public String getDicType() {
		return dicType;
	}

	/**
	 * @param dicType the dicType to set
	 */
	public void setDicType(String dicType) {
		this.dicType = dicType;
	}

	/**
	 * @return the dataName
	 */
	public String getDataName() {
		return dataName;
	}

	/**
	 * @param dataName the dataName to set
	 */
	public void setDataName(String dataName) {
		this.dataName = dataName;
	}

	/**
	 * @return the dataCode
	 */
	public String getDataCode() {
		return dataCode;
	}

	/**
	 * @param dataCode the dataCode to set
	 */
	public void setDataCode(String dataCode) {
		this.dataCode = dataCode;
	}

	/**
	 * @return the memo
	 */
	public String getMemo() {
		return memo;
	}

	/**
	 * @param memo the memo to set
	 */
	public void setMemo(String memo) {
		this.memo = memo;
	}

	/**
	 * @return the state
	 */
	public int getState() {
		return state;
	}

	/**
	 * @param state the state to set
	 */
	public void setState(int state) {
		this.state = state;
	}

	/**
	 * @return the updateTime
	 */
	public Date getUpdateTime() {
		return updateTime;
	}

	/**
	 * @param updateTime the updateTime to set
	 */
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	/**
	 * @return the updatePerson
	 */
	public int getUpdatePerson() {
		return updatePerson;
	}

	/**
	 * @param updatePerson the updatePerson to set
	 */
	public void setUpdatePerson(int updatePerson) {
		this.updatePerson = updatePerson;
	}
	
	
}
