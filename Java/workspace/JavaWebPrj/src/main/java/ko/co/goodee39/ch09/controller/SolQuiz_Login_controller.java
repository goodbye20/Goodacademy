package ko.co.goodee39.ch09.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SolQuiz_Login_controller
 */
@WebServlet("/SolQuiz_Login_controller")
public class SolQuiz_Login_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SolQuiz_Login_controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String userName = request.getParameter("user_name");
		String userEmail = request.getParameter("user_email");
		String userPassword = request.getParameter("user_password");
		String userAge = request.getParameter("user_age");
		String userIntro = request.getParameter("user_intro");
		String userJob = request.getParameter("user_job");
		String[] userInterest = request.getParameterValues("user_interest");
		
		System.out.println("이름 : "+userName);
		System.out.println("이메일 : "+userEmail);
		System.out.println("패스워드 : "+userPassword);
		System.out.println("나이 : "+userAge);
		System.out.println("자기소개 : "+userIntro);
		System.out.println("직책 : "+userJob);
		for(String string : userInterest) {			
			System.out.println("관심분야 : "+string);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
