

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AboutServlet
 */
public class AboutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AboutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		out.println("<html>");
		out.println("<style>");
		out.println("body{background-image:url(Images/error.gif)}");
		out.println("#tag{width:200px;height:100px;position:relative;left:600px;top:300px;color:white;}");
		out.println("</style>");
		out.println("<script>function div2() {var snd = new Audio('Audio/ero2.mp3');snd.play();}function div1() {document.body.style.backgroundImage='none';document.getElementById('tag').innerHTML='we are  Anonymous';var snd = new Audio('Audio/ano.mp3');snd.play();}setTimeout('div2();',100);setTimeout('div1();',8900);");
		out.println("</script>");
		out.println("<body bgcolor='black'>");
		out.println("<span id='tag'></span>");
		out.println("</body>");
		out.println("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
