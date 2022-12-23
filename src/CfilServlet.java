

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import product.CosProduct;

/**
 * Servlet implementation class CfilServlet
 */
public class CfilServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CfilServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ServletContext s=getServletContext();
		String url=s.getInitParameter("url");
		String user=s.getInitParameter("username");
		String pass=s.getInitParameter("password");
		
		int value=Integer.parseInt(request.getParameter("value"));
		try {
			Connection con = DriverManager.getConnection(url,user,pass);
			
			PreparedStatement p=con.prepareStatement("select * from cosmetics where price<=?");
			p.setInt(1, value);
			ResultSet r=p.executeQuery();
			HttpSession ses=request.getSession(false);
			
			ArrayList<CosProduct> pro=new ArrayList<CosProduct>();
			
			while(r.next()){
			pro.add(new CosProduct(r.getString(1),r.getInt(2),r.getString(3),r.getString(4)));
			}
			ses.setAttribute("product", pro);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		RequestDispatcher res=request.getRequestDispatcher("/cosFilter.jsp");
		res.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
