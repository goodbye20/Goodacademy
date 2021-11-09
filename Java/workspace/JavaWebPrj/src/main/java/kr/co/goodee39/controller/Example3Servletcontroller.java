package kr.co.goodee39.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.goodee39.beans.ExampleBean;

/**
 * Servlet implementation class Example3Servletcontroller
 */
@WebServlet("/Example3Servletcontroller")
public class Example3Servletcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Example3Servletcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		ExampleBean bean = new ExampleBean();
		// 위에 만들어둔 beans클래스로 새 객체를 만들어냄
		bean.setData1(request.getParameter("data1"));
		bean.setData2(request.getParameter("data2"));
		// beans클래스에 생성시켜놓은 get,set을 이용해 request data값을 넣어줌
		
		request.setAttribute("bean", bean);
		// bean이라는 객체를 객체째로 통째로 저장
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		RequestDispatcher rdp = request.getRequestDispatcher("/ch08/example3_result.jsp");
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
