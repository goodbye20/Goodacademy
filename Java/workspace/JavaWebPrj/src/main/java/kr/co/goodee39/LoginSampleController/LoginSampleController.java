package kr.co.goodee39.LoginSampleController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginSampleController
 */
@WebServlet("/LoginSampleController")
public class LoginSampleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginSampleController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String age = request.getParameter("age");
		String main = request.getParameter("main");
		String work = request.getParameter("work");
		String interest = request.getParameter("interest");
		
		System.out.println("이름 : "+ name);
		System.out.println("이메일 : "+ email);
		System.out.println("패스워드 : "+ pw);
		System.out.println("age : "+ age);
		System.out.println("주요업무 : "+ main);
		System.out.println("직책 : "+ work);
		System.out.println("관심분야 : "+ interest);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
