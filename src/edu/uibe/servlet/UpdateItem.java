package edu.uibe.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.uibe.database.UserDao;
import edu.uibe.model.ItemInfo;

public class UpdateItem extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6723879159594069360L;

	/**
	 * Constructor of the object.
	 */
	public UpdateItem() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		ItemInfo ii = new ItemInfo();
		ii.setItemNumber(request.getParameter("itemNumber"));
		ii.setItemName(request.getParameter("itemName"));
		ii.setItemDescription(request.getParameter("itemDescription"));
		ii.setStartBidDate(request.getParameter("startBidDate"));
		ii.setEndBidDate(request.getParameter("endBidDate"));
		ii.setStartBidPrice(request.getParameter("startBidPrice"));
		ii.setItemClassNumber(request.getParameter("itemClassNumber"));
		
		UserDao ud = new UserDao();
		boolean result = ud.executeUpdateItem(ii);
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		if (result == true) {
			out.println("<script language = javascript>alert('保存成功！');");
		} else {
			out.println("<script language = javascript>alert('保存失败！');");
		}
		out.println("location.href='/Auction/ItemDetails.jsp?itemNumber="+ii.getItemNumber()+"'</script>");
		out.flush();
		out.close();
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
