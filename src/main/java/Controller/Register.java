package Controller;
import java.io.IOException;
import java.io.PrintWriter;

import Model.Registration;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "Register", urlPatterns = {"/register"})
public class Register extends HttpServlet{	
	
	protected void processRequest(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException  {
		resp.setContentType("text/html;charset=UTF-8"); 
        // type of the response sent to the client or browser 
        PrintWriter out = resp.getWriter(); 
        HttpSession session = req.getSession(); 
        Registration reg = new Registration(session);
        try {        	       
		if(req.getParameter("register")!=null) {
			System.out.println("entered register");
			String id=req.getParameter("id");
			String name=req.getParameter("name");
			String phno=req.getParameter("phone");
			String addr=req.getParameter("addr");
			String email=req.getParameter("email");
			String pw=req.getParameter("pw");
			String cp=req.getParameter("cp");
			if(pw.equals(cp)) {
			String status=reg.Registration(name,phno,addr,email,pw);
			if(status.equals("existed")){
				req.setAttribute("status", "Already registered");
				RequestDispatcher rd=req.getRequestDispatcher("Registration.jsp");
				rd.forward(req, resp);
			}
			else if(status.equals("success")) {
				req.setAttribute("status", "Registered Successfully");
				RequestDispatcher rd=req.getRequestDispatcher("Login.jsp");
				rd.forward(req, resp);
			}
			else if(status.equals("failure")) {
				req.setAttribute("status", "Registration failure");
				RequestDispatcher rd=req.getRequestDispatcher("Registration.jsp");
				rd.forward(req, resp);				
			}
			}						
		}		
		else if (req.getParameter("login") != null) { 
            String email = req.getParameter("email"); 
            String pass = req.getParameter("pw");          
            
            String status = reg.login(email, pass); 
            
            if (status.equals("success")) { 
            	// resp.sendRedirect("index.jsp");
//            	req.setAttribute("status", "Login successfull"); 
                RequestDispatcher rd1 = req.getRequestDispatcher("index.jsp"); 
                rd1.forward(req, resp);  
            } else if (status.equals("failure")) { 
                req.setAttribute("status", "Login failed"); 
                RequestDispatcher rd1 = req.getRequestDispatcher("Login.jsp"); 
                rd1.forward(req, resp); 
            }
            }
//            else {
//            	req.setAttribute("status", "incorrect password"); 
//                RequestDispatcher rd1 = req.getRequestDispatcher("Login.jsp"); 
//                rd1.forward(req, resp); 
//            }
        
		else if (req.getParameter("logout") != null) { 
            session.invalidate(); 
            RequestDispatcher rd1 = req.getRequestDispatcher("index.jsp"); 
            rd1.forward(req, resp); 
        } 
		else if(req.getParameter("forgotpass")!=null) {
			String email=req.getParameter("email");
			String pw=req.getParameter("pw");
			String cp=req.getParameter("cp");
			if(pw.equals(cp)) {
				String status=reg.Forgotpass(email,pw,cp);
				if(status.equals("success")) {
					req.setAttribute("status", "password reset successfull");
					RequestDispatcher rd=req.getRequestDispatcher("Login.jsp");
					rd.forward(req,resp);
				}else if (status.equals("failure")) { 
	                req.setAttribute("status", "Password Reset failed"); 
	                RequestDispatcher rd1 = req.getRequestDispatcher("Login.jsp"); 
	                rd1.forward(req, resp); 
	            } 
			}
		}
		else if (session.getAttribute("uname") != null && req.getParameter("submit") != null) {
            String name = req.getParameter("name");
            String pno = req.getParameter("pno");
            String email = req.getParameter("email");
            Registration u = new Registration(session);//doubt -why new registration obj u is created here ,we can use reg?
            String status = u.update(name, pno, email);
            if (status.equals("success")) {
//                req.setAttribute("status", "Profile successfully Updated");
                RequestDispatcher rd1 = req.getRequestDispatcher("index.jsp");
                rd1.forward(req, resp);
            } else {
                req.setAttribute("status", "Updation failure");
                RequestDispatcher rd1 = req.getRequestDispatcher("edit.jsp");
                rd1.forward(req, resp);
            }
        }
//		else if (session.getAttribute("uname") != null && req.getParameter("delete") != null) {
//			
//			int id=Integer.parseInt(req.getParameter("userid"));  
//			String status=reg.delete(id); 
//			if(status.equals("success")) { 
//			req.setAttribute("status", "Account Deleted Sucessfully"); 
//			RequestDispatcher re=req.getRequestDispatcher("Delete.jsp"); 
//			re.forward(req, resp); 
//			}else { 
//			req.setAttribute("status", "Failure Occured"); 
//			RequestDispatcher re=req.getRequestDispatcher("Delete.jsp"); 
//			re.forward(req, resp); 
//			} 
//			
//		}
		
        }catch(Exception e) {
        	e.printStackTrace(); 
        }		
	}
@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	System.out.println("entered dopost");
	
		processRequest(req, resp);
	}	
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	processRequest(req, resp);
}
	

}
