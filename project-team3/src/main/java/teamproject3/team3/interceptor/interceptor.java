package teamproject3.team3.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import teamproject3.team3.vo.memberVO;


public class interceptor implements HandlerInterceptor{

	// controller 호출 전에 호출되는 메서드
	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse resp, Object handler)
			throws Exception {
		
		HttpSession session = req.getSession();
		
		String uri = req.getRequestURI();// 현재 요청의 전체 경로 문자열
		
		memberVO member = (memberVO)session.getAttribute("loginuser");
		
		boolean invalid =false;
		if(uri.contains("/movie2/")) {
			if(member == null) {
				invalid = true;
			}else if (uri.contains("/manage") &&
					!member.getUsertype().equals("admin")) {
				invalid = true;
			}else if (uri.contains("init-data.action")&& // 경로에 Init-data.action 이 포함되고
					   !member.getUsertype().equals("admin") ) { // admin이 아닌 경우
				invalid = true;
			}
		}else if (uri.contains("/line-khw")) { 
			if(member == null) {
				invalid = true;
			}
		}else if (uri.contains("/member/")) {
			if(member == null) {
				invalid = true;
			}
		}
		
		if(invalid) {
			resp.sendRedirect("/mrp/member/login");
			return false; // 현재요청처리 중단
		}
		
		return true;
	}
	
}

