package kr.co.goodee39.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.goodee39.beans.PingPongBean;

/**
 * Servlet implementation class PingPongServletController2
 */
@WebServlet("/PingPongServletController2")
public class PingPongServletController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PingPongServletController2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		System.out.println("PingPongServlet2");
//		System.out.println("id: " + id);
//		System.out.println("pw: " + pw);
		
		PingPongBean PingPongVO = new PingPongBean();
		PingPongVO.setId(id);
		PingPongVO.setPw(pw);
		
		request.setAttribute("vo", PingPongVO);
		// 리퀘스트로 요청하여 "vo"라는 키값에 PingpongVO객체를 넣어줌
		
		RequestDispatcher rdp = request.getRequestDispatcher("/ch09/PingPong1_result2.jsp");
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
