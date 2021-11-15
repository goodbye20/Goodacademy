package kr.co.goodee39.MVCController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.goodee39.MVCService.MVCService;

/**
 * Servlet implementation class MVCController
 */
@WebServlet("/MVCController")
public class MVCController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MVCController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
//		int data1 = Integer.parseInt(request.getParameter("data1"));
//		int data2 = Integer.parseInt(request.getParameter("data2"));
//		String type = request.getParameter("type");
//		
//		if(type.equals("plus")) {
//			request.setAttribute("result", data1+data2);
//		} else if(type.equals("minus")) {
//			request.setAttribute("result", data1-data2);			
//		} else if(type.equals("mul")) {
//			request.setAttribute("result", data1*data2);			
//		} else {
//			request.setAttribute("result", data1/data2);			
//		}
		// 위 연산 데이터 연산 값들을 MVCService로 이동/분리
		MVCService service = new MVCService();
		service.getCalc(request);
		
		RequestDispatcher rdp = request.getRequestDispatcher("/ch10/MVC_result.jsp");
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
