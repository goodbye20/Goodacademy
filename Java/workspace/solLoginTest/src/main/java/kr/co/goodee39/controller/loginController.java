package kr.co.goodee39.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.goodee39.service.LoginService;
import kr.co.goodee39.vo.UserVO;

/**
 * Servlet implementation class loginController
 */
@WebServlet("/loginController")
public class loginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		LoginService service = new LoginService();
		
		UserVO vo = new UserVO();
		vo.setUserid(request.getParameter("id"));
		vo.setPassword(request.getParameter("pw"));
		vo = service.getUser(vo);
		
//		UserVO vo = service.getUser(request);
		String path= "";
		// path는 조건에 맞게 페이지 태우기위한 값
		
		if(vo==null) {
			path = "/app/login.jsp";
		} else {
			//request.setAttribute("vo", vo);
			// 뷰페이지에서 값을 받아와서 출력하려면 set으로 담아주기
			
			HttpSession session = request.getSession();
			// 					request를 세션에 넣어줌
			session.setAttribute("vo", vo);
			// 하지만 계정 관련이다보니 session을 통해 보내주는 것이 더 좋다.
			
			path = "/app/login_success.jsp";
		}
		
		RequestDispatcher rdp = request.getRequestDispatcher(path);
		rdp.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
