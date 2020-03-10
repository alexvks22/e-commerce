package servlets;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ecommerce.PC;
import ecommerce.PCScreen;
import ecommerce.PCTower;
import ecommerce.Product;
import ecommerce.Workstation;

/**
 * Servlet implementation of class ProductController.
 * With product Servlet we can define product attributes of class Product.
 * After the definition of product we call order Servlet in order to display details of Order
 */
@WebServlet(name = "/product", urlPatterns = {"/product/*"})
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductController() {
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
		
		//if a form calls product servlet without a parameter, then we redirect to index.jsp
		String url = "/index.jsp";

		//We define different method for each product because we deal with different
		//product characteristics (e.g. pc screen deals with inches, pc tower deals with Memory (GB) 
		//and CPU (GHz) etc.)
		if (requestURI.endsWith("/pcscreen"))
			url = setPCScreen(request, response);
		if (requestURI.endsWith("/pctower"))
			url = setPCTower(request, response);
		if (requestURI.endsWith("/pc"))
			url = setPC(request, response);
		if (requestURI.endsWith("/workstation"))
			url = setWorkstation(request, response);
		
		//forward to order servlet
		getServletContext().getRequestDispatcher(url).forward(request, response);
	}
	/**
	 * 
	 * @param request
	 * @param response
	 * @return order/displayOrder
	 */
	private String setPCScreen(HttpServletRequest request,
	           HttpServletResponse response) {
		String inches = request.getParameter("ssize");
		HttpSession s = request.getSession();
		
		PCScreen pcscreen = new PCScreen(Integer.valueOf(inches));
		pcscreen.setName("PC Screen of " + inches + " inches");
		pcscreen.setDescription("A PC screen of " + inches + " inches in a special price!");
		pcscreen.setPrice(150);
		s.setAttribute("product", pcscreen);
		
		//we call order Servlet in order to display order details
		String url = "/order/displayOrder";
		return url;
	}
	/**
	 * 
	 * @param request
	 * @param response
	 * @return order/displayOrder
	 */
	private String setPCTower(HttpServletRequest request,
	           HttpServletResponse response) {
		String memory = request.getParameter("memory");
		String cpu = request.getParameter("cpu");
		HttpSession s = request.getSession();
		PCTower pctower = new PCTower(Integer.valueOf(memory), Integer.valueOf(cpu));
		pctower.setName("PC Tower with " + memory + " GB memory and " + cpu + " GHz CPU");
		pctower.setDescription("The best PC Tower in town with the powerful " + memory 
							+ " GB memory and the fastest " + cpu +" GHz CPU!" );
		pctower.setPrice(150);
		
		s.setAttribute("product", pctower);

		//we call order Servlet in order to display order details
		String url = "/order/displayOrder";
		return url;
	}
	/**
	 * 
	 * @param request
	 * @param response
	 * @return order/displayOrder
	 */
	private String setPC(HttpServletRequest request,
	           HttpServletResponse response) {
		int memory = Integer.valueOf(request.getParameter("memory"));
		int cpu = Integer.valueOf(request.getParameter("cpu"));
		int inches = Integer.valueOf(request.getParameter("ssize"));
		int hd = Integer.valueOf(request.getParameter("hd"));
		
		HttpSession s = request.getSession();
		PC pc = new PC(new PCScreen(inches), new PCTower(memory, cpu), hd);
		pc.setName("PC with " + memory + " GB memory, " + cpu + " GHz cpu, PC Screen of " + inches
				+ " inches and HD with " + hd + " GB capacity");
		pc.setDescription("A PC with powerful characteristics...");
		pc.setPrice(550);
		
		s.setAttribute("product", pc);
		
		//we call order Servlet in order to display order details
		String url = "/order/displayOrder";
		return url;
	}
	
	/**
	 * 
	 * @param request
	 * @param response
	 * @return order/displayOrder
	 */
	private String setWorkstation(HttpServletRequest request,
	           HttpServletResponse response) {
		int memory = Integer.valueOf(request.getParameter("memory"));
		int cpu = Integer.valueOf(request.getParameter("cpu"));
		int inches = Integer.valueOf(request.getParameter("ssize"));
		int hd = Integer.valueOf(request.getParameter("hd"));
		String os = request.getParameter("os");
		
		HttpSession s = request.getSession();
		
		Workstation workstation = new Workstation(new PC(new PCScreen(inches), new PCTower(memory,cpu), hd), os);
		workstation.setName("A workstation with " + memory + " GB memory, " + cpu + " GHz cpu in its Tower, PC Screen of " 
						+ inches + " inches, an HD with " + hd  + " GB capacity and " + os + " OS");
		workstation.setDescription("A Workstation just for you! In a special price...");
		workstation.setPrice(550);
		
		s.setAttribute("product", workstation);

		//we call order Servlet in order to display order details
		String url = "/order/displayOrder";
		return url;
	}

}
