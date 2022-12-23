

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
		ServletContext s=getServletContext();
		String url=s.getInitParameter("url");
		String user=s.getInitParameter("username");
		String pass=s.getInitParameter("password");
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			Connection con = DriverManager.getConnection(url,user,pass);
			
			PreparedStatement p=con.prepareStatement("select * from login");
			ResultSet r=p.executeQuery();
			boolean flag = false;
			while(r.next()){
			
				if(r.getString(1).equals(username) && r.getString(2).equals(password)){
					flag=true;
				}
			}
			if(flag){
				
				HttpSession ses=request.getSession();
				ses.setAttribute("username", username);
				RequestDispatcher res=request.getRequestDispatcher("/home.jsp");
				res.forward(request, response);
				
			}
			else{
				RequestDispatcher rd=request.getRequestDispatcher("/login.jsp");  
		        out.println("<script>alert('wrong username and password');</script>");
				rd.include(request, response); 
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
