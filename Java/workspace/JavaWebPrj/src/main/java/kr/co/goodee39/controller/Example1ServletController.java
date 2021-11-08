package kr.co.goodee39.controller;

import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Example1ServletController
 */
@WebServlet("/Example1ServletController")
public class Example1ServletController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Example1ServletController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String data1 = request.getParameter("data1");
		String data2 = request.getParameter("data2");
		System.out.println(data1+","+data2);
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//		request.setAttribute("data1", data1);
//		request.setAttribute("data2", data2);
		// 서블릿에서 받은 값을 set으로 정해줌
		HttpSession session = request.getSession();
		// 세션은 서버의 세션에 저장되기 때문에 브라우저에서 안보여서 보안성이 높음 => id,pw같은 보안이 중요한값에 좋음
		// 세션의 생존범위는 브라우저 종료시까지
		session.setAttribute("data1", data1);
		session.setAttribute("data2", data2);		
		
		//결과 페이지로 전송하는 방법
		// 1-1 서블릿 리다이렉트 쿼리-> getParam
//		response.sendRedirect(request.getContextPath()+"/ch08/Example1_result1.jsp?data1="+data1+"&data2="+data2);
		response.sendRedirect(request.getContextPath()+"/ch08/Example1_result1.jsp");
		// 서블릿 형식으로 리다이렉트를 통해 정보를 전달하기위해서는 쿼리형식(getParam)으로 전달해줘야함
		
		// 2 서블릿 포워드+getAttri 방식
//		RequestDispatcher rdp = request.getRequestDispatcher("/ch08/Example1_result1.jsp");
//		rdp.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
