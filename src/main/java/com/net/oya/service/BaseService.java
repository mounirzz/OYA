/**
 * 
 */
package com.net.oya.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.net.oya.common.Page;
import com.net.oya.model.News;

/**
 * @author Mounir
 * @email m.ezzahar@madrex.ma
 * @date 2017-10-20
 */
public abstract class BaseService implements
		IBaseService {

	private static final Logger logger = LoggerFactory.getLogger(BaseService.class);

	protected <T> T doIt(Page<News> page, T resultClass, ProcessInvoker processInvoker) {
		T result = initResult();
		processInvoker.process();
		return result;
	}

	private <T> T initResult() {
		return null;
	}
}
