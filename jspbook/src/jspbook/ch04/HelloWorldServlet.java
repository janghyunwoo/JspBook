package jspbook.ch04;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloWorldServlet
 */
@WebServlet("/HelloWorldServlet")
public class HelloWorldServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	//HttpServletRequest �� HttpServlet Ŭ������ ���� ��Ű�� �ȿ� �ִ�.
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
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
/*abstract class a{
	abstract void asdf();
	abstract void asdfdd();
	void asdfasdf(){
		System.out.println("d");
	}
}

class b extends a{



}

class c extends a{

	@Override
	void asdf() {
		// TODO �ڵ� ������ �޼ҵ� ����
		
	}

	@Override
	void asdfdd() {
		// TODO �ڵ� ������ �޼ҵ� ����
		
	}
	
}*/