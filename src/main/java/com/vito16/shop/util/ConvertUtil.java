package com.vito16.shop.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
/**
 * @author Mounir
 * @email m.ezzahar@madrex.ma
 * @date 2017-10-20
 */
public class ConvertUtil {
	public static String toDateStr(Object o) throws ParseException {
		return o == null ? null : new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")
				.format((Date) o);
	}

	public static String toYMDStr(Object o) throws ParseException {
		return o == null ? null : new SimpleDateFormat("yyyy-MM-dd")
				.format((Date) o);
	}
}
