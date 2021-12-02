package kr.co.goodee39.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.goodee39.vo.AirVO;
import kr.co.goodee39.vo.BasicVO;
import kr.co.goodee39.vo.CarVO;
import kr.co.goodee39.vo.ShipVO;

/**
 * Servlet implementation class quiz03Controller
 */
@WebServlet("/quiz03Controller")
public class quiz03Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public quiz03Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
//		BasicVO vo = new BasicVO();
		BasicVO vo = null;
		if(request.getParameter("type").equals("1")) {
			vo = new CarVO();
			((CarVO)vo).setCarnum(request.getParameter("carnum"));
			((CarVO)vo).setDriver(request.getParameter("cardriver"));
			((CarVO)vo).setPhone(request.getParameter("phone"));
		} else if(request.getParameter("type").equals("2")) {
			vo = new ShipVO();
			((ShipVO)vo).setShipnum(request.getParameter("shipnum"));
			((ShipVO)vo).setPort(request.getParameter("port"));
		} else if(request.getParameter("type").equals("3")) {
			vo = new AirVO();
			((AirVO)vo).setStartair(request.getParameter("Startair"));
			((AirVO)vo).setDesair(request.getParameter("desair"));
		} 
		
		vo.setId(request.getParameter("id"));
		vo.setKind(request.getParameter("kind"));
		vo.setAmount(Integer.parseInt(request.getParameter("amount")));
		vo.setOrigin(request.getParameter("origin"));
		vo.setDes(request.getParameter("des"));
		
		request.setAttribute("vo", vo);
		request.setAttribute("type", request.getParameter("type"));
		
		RequestDispatcher rdp = request.getRequestDispatcher("/ch09/quiz03_1.jsp");
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
