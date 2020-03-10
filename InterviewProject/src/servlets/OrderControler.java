package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ecommerce.Order;
import ecommerce.Product;

/**
 * Servlet implementation class OrderControler.
 * With order Servlet we can display order details by defining an instance of class Order.
 * 
 */
@WebServlet(name = "/order", urlPatterns = {"/order/*"})
public class OrderControler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderControler() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestURI = request.getRequestURI();
		//if a form calls order servlet without a parameter, then we redirect to index.jsp
		String url = "/index.jsp";
		
		if (requestURI.endsWith("/displayOrder"))
			url = displayOrder(request, response);
		
		getServletContext().getRequestDispatcher(url).forward(request, response);
	}

	/**
	 * 
	 * @param request
	 * @param response
	 * @return order.jsp
	 */
	private String displayOrder(HttpServletRequest request,
	        HttpServletResponse response) {
		HttpSession session = request.getSession();
		
		Product product = (Product) session.getAttribute("product");
		
		//Product product = (Product) session.getAttribute("product");
		String url = "/error.jsp";
		
		if (product != null)
		{
			Order order = new Order();
			order.setDate(new Date());
			order.setProduct(product);
		
			session.setAttribute("order", order);
			url = "/order.jsp";
		}
		
		return url;
	}
}
