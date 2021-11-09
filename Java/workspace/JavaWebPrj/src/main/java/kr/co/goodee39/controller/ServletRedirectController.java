package kr.co.goodee39.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletRedirectController
 */
@WebServlet("/ServletRedirectController")
public class ServletRedirectController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletRedirectController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("get으로 호출");
		request.setCharacterEncoding("UTF-8");
		String data1 = request.getParameter("data1");
		String data2 = request.getParameter("data2");
		System.out.println(data1 + "," + data2);
//		response.getWriter().append("Served at: ").append(request.getContextPath());

		request.setAttribute("data1", data1);
		request.setAttribute("data2", data2);
		
		response.sendRedirect(request.getContextPath()+"/ch08/ServletRedirect_result1.jsp?data1="+data1+"&data2="+data2);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("post으로 호출");
		doGet(request, response);
		// doGet을 실행
	}

}
