/**
 * 
 */
package com.xt.stu.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.Converter;

/**
 * @Description:TODO
 * @Company  郑州兴唐IT教育
 * @author 王滔
 * @email 675475017@qq.com
 * @date：2017年6月5日下午5:35:36
 */
public class Convert {

	/**
	 * 
	 */
	public static void ConvertDate(){
		ConvertUtils.register(new Converter() {
	        public Object convert(Class type, Object value) {
	            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
	            try {
	                return simpleDateFormat.parse(value.toString());
	            } catch (ParseException e) {
	                e.printStackTrace();
	            }
	            return null;
	        }
	    }, Date.class);
	}
	
}
