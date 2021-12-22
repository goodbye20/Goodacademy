package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.userService;

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
		
			userService service = new userService();
			service.user_check(request);
		
			RequestDispatcher rdp = null;
			
			if(service.user_check(request)) {
				String id = request.getParameter("userid");
				String pw = request.getParameter("password");
				
				Cookie userId = new Cookie("userid", id);
				Cookie userPw = new Cookie("password", pw);
				userId.setMaxAge(60);
				userPw.setMaxAge(60);
				response.addCookie(userId);
				response.addCookie(userPw);
				
				service.getUser(request);
				
//				response.sendRedirect(request.getContextPath()+"/test3/sucess.jsp");
				rdp = request.getRequestDispatcher("/test3/sucess.jsp");							
			} else {
				rdp = request.getRequestDispatcher("/test3/login.jsp");
			}
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
