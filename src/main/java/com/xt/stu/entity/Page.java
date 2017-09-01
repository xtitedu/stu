/**
 * 
 */
package com.xt.stu.entity;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;

/**
 * @Description:
 * 
 * 
 * @Company  郑州兴唐IT教育
 * @author 王滔
 * @email 675475017@qq.com
 * @date：2017年6月5日下午8:25:07
 */
public class Page<T> {

	/** 
	 * 默认每页显示10条数据.
	 */
    public static final int DEFAULT_PAGE_SIZE = 5;
    
    /** 当前第几页，默认值为1，既第一页. */
    private int pageNo = 1;
    
    /** 每页最大记录数，默认值为10. */
    private int pageSize = DEFAULT_PAGE_SIZE;

    /** 排序字段名. */
    private List<String> orderBys = new LinkedList<String>();
    
    /** 使用正序还是倒序. */
    private List<String> orders = new LinkedList<String>();

    private T quaryAtt;
    
    /** 查询结果. */
    private List<T> result;
    
    /** 总记录数，默认值为-1，表示totalCount不可用. */
    private long totalCount = -1L;

    /** 是否计算数据库中的记录总数. */
    private boolean autoCount;

    /** 当前页第一条记录的索引，默认值为0，既第一页第一条记录. */
    private long start;
    
    /** 当前页最后一条记录的索引，默认值为0，既第一页第一条记录. */
    private long end;

    /** 总页数，默认值为-1，表示pageCount不可用. */
    private long pageCount = -1;
    
    private boolean previousEnabled;
    
    /** 构造方法. */
    public Page() {
        totalCount = 0;
        result = new ArrayList<T>();
    }

    /**
     * 构造方法.
     * 
     * @param result
     *            Object
     * @param totalCount
     *            int
     */
    public Page(List<T> result, int totalCount) {
        this.result = result;
        this.totalCount = totalCount;
    }

    /**
     * 构造方法.
     * 
     * @param pageNo
     *            int
     * @param pageSize
     *            int
     * @param orderBy
     *            String
     * @param order
     *            String
     */
    public Page(int pageNo, int pageSize, String orderBy, String order) {
        this.pageNo = pageNo;
        this.pageSize = pageSize;
        this.calculateStart();
    }
    
    /**
     * 页面显示最大记录数是否可用.
     * 
     * @return pageSize > 0
     */
    public boolean isPageSizeEnabled() {
        return pageSize > 0;
    }

    /**
     * 页面第一条记录的索引是否可用.
     * 
     * @return start
     */
    public boolean isStartEnabled() {
        return start >= 0;
    }

    /**
     * 排序是否可用.
     * 
     * @return orderBy是否非空
     */
    public boolean isOrderEnabled() {
        return ((!orderBys.isEmpty()) && (!orders.isEmpty()));
    }

    /**
	 * @return the previousEnabled
	 */
	public boolean isPreviousEnabled() {
		previousEnabled = pageNo > 1;
		return previousEnabled;
	}

	/**
	 * @param previousEnabled the previousEnabled to set
	 */
	public void setPreviousEnabled(boolean previousEnabled) {
		this.previousEnabled = previousEnabled;
	}

	/**
     * 是否有后一页.
     * 
     * @return boolean
     */
    public boolean isNextEnabled() {
        return pageNo < pageCount;
    }

    /**
     * 总页数是否可用.
     * 
     * @return boolean
     */
    public boolean isPageCountEnabled() {
        return pageCount >= 0;
    }

    /** 计算本页第一条记录的索引. */
    private void calculateStart() {
        if ((pageNo < 1) || (pageSize < 1)) {
            start = -1;
        } else {
            start = (pageNo - 1) * pageSize;
        }
    }

    /** 计算最大页数. */
    private void calculatePageCount() {
        if ((totalCount < 0) || (pageSize < 1)) {
            pageCount = -1;
        } else {
            pageCount = ((totalCount - 1) / pageSize) + 1;
        }
    }

    /** @return pageNo. */
    public int getPageNo() {
        return pageNo;
    }

    /**
     * @param pageNo
     *            int.
     */
    public void setPageNo(int pageNo) {
        this.pageNo = pageNo;
        this.calculateStart();
    }

    /** @return pageSize. */
    public int getPageSize() {
        return pageSize;
    }

    /**
     * @param pageSize
     *            int.
     */
    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
        this.calculateStart();
        this.calculatePageCount();
    }

    /** @return orderBy. */
    public String getOrderBy() {
        if (!this.orderBys.isEmpty()) {
            return this.orderBys.get(0);
        }

        return null;
    }
    
    /**
	 * @return the quaryAtt
	 */
	public T getQuaryAtt() {
		return quaryAtt;
	}

	/**
	 * @param quaryAtt the quaryAtt to set
	 */
	public void setQuaryAtt(T quaryAtt) {
		this.quaryAtt = quaryAtt;
	}

	/** @return result. */
    public List<T> getResult() {
        return result;
    }

    /**
     * @param result
     *            Object.
     */
    public void setResult(List<T> result) {
        this.result = result;
    }

    /** @return totalCount. */
    public long getTotalCount() {
        return totalCount;
    }

    /**
     * @param totalCount
     *            int.
     */
    public void setTotalCount(long totalCount) {
        this.totalCount = totalCount;
        this.calculatePageCount();
    }

    /** @return autoCount. */
    public boolean isAutoCount() {
        return autoCount;
    }

    /**
     * @param autoCount
     *            boolean.
     */
    public void setAutoCount(boolean autoCount) {
        this.autoCount = autoCount;
    }

    /** @return start. */
    public long getStart() {
        return start;
    }

    public long getEnd(){
    	return start + pageSize;
    }
    
    /** @return pageCount. */
    public long getPageCount() {
        return pageCount;
    }

    /** @return result size. */
    public int getResultSize() {
        if (result instanceof Collection) {
            return ((Collection) result).size();
        } else {
            return 0;
        }
    }

    public List<String> getOrderBys() {
        return this.orderBys;
    }

    public void setOrderBys(List<String> orderBys) {
        this.orderBys = orderBys;
    }

    public List<String> getOrders() {
        return this.orders;
    }

    public void setOrders(List<String> orders) {
        this.orders = orders;
    }
	
}
