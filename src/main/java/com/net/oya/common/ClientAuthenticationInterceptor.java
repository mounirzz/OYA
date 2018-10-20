package com.net.oya.common;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.net.oya.util.AdminUtil;
import com.net.oya.util.ClientUtil;
import com.net.oya.util.UserUtil;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Component
public class ClientAuthenticationInterceptor extends HandlerInterceptorAdapter {

    private Logger logger = LoggerFactory.getLogger(ClientAuthenticationInterceptor.class);

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
        if(ClientUtil.getClientFromSession(request.getSession())==null){
            logger.info("Le CLient n'est pas connecté et saute à la page de connexion .");
            response.sendRedirect("/client/login");
            return false;
        }
        return true;
    }
    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
