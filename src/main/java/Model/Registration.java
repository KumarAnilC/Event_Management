package Model;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;


public class Registration {
	private Connection con=null;
	HttpSession se;
	PreparedStatement ps=null;
	Statement st=null;
	ResultSet rs=null;
	public Registration(HttpSession session) {
		try { 
            Class.forName("com.mysql.cj.jdbc.Driver"); // load the drivers 
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emdemo?user=root&password=Arjun@123"); 
            // connection with data base 
            se = session; 
        } catch (Exception e) { 
            e.printStackTrace(); 
        } 
	}
	public String Registration(String name,String phno,String addr,String email,String pw) {
		String status="";
		try {
			String sql="select * from demo3 where phno='"+phno+"' and email='"+email+"'";
			st=con.createStatement();
			rs=st.executeQuery(sql);
			boolean b=rs.next();
			if(b==true) {
				status="existed";
			}
			else {
				String sql2="insert into demo3 values(0,?,?,?,?,?)";
				ps=(PreparedStatement) con.prepareStatement(sql2);
				ps.setString(1, name);
				ps.setString(2, phno);
				ps.setString(3, addr);
				ps.setString(4, email);
				ps.setString(5, pw);
				int a=ps.executeUpdate();
				if(a>0) {
					status="success";
				}
				else {
					status="failure";
				}
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;	
	}
	public String login(String email, String pass) { 
        String status1 = "", id = ""; 
        String name = "", emails = "",pno=""; 
//        Statement st = null; 
//        ResultSet rs = null; 
 
        try { 
            
            st = con.createStatement(); 
 
            rs = st.executeQuery("select * from demo3 where email='" + email + "' and pw='" + pass + "';"); 
            boolean b = rs.next(); 
            if (b == true) { 
                id = rs.getString("id"); 
                name = rs.getString("name"); 
                emails = rs.getString("email"); 
                pno=rs.getString("phno");
                se.setAttribute("uname", name); 
                se.setAttribute("email", emails); 
                se.setAttribute("id", id); 
                se.setAttribute("phno",pno);
                status1 = "success"; 
            } else { 
                status1 = "failure"; 
            } 
        } catch (Exception e) { 
            e.printStackTrace(); 
        }       
        return status1;    
    }
	public String Forgotpass(String email,String pw,String cp) {
		String status="";
		//PreparedStatement ps=null;
//		ResultSet rs=null;
		try {
			ps=con.prepareStatement("update demo3 set pw=? where email=?");
//			ps.setString(0, status);
			ps.setString(1, pw);
			ps.setString(2, email);
			int a=ps.executeUpdate();
			if(a>=0) {
				status="success";
			}
			else {
				status="failure";
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	
	}
	public Customer getInfo() {
//        Statement st = null;
//        ResultSet rs = null;
        Customer c = null;
        try {
            st = con.createStatement();
            rs = st.executeQuery("select * from demo3 where id= '" + se.getAttribute("id") + "'");
            boolean b = rs.next();
            if (b == true) {
                c = new Customer();
                c.setName(rs.getString("name"));
                c.setPhno(rs.getString("phno"));
                c.setEmail(rs.getString("email"));
            } else {
                c = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return c;
    }
	public String update(String name, String pno, String email) {
        String status = "";
//        Statement st = null;
//        ResultSet rs = null;
        try {
            st = con.createStatement();
            st.executeUpdate("update demo3 set name='" + name + "',phno='" + pno + "',email='" + email + "' where id= '" + se.getAttribute("id") + "' ");
            se.setAttribute("uname", name);
            se.setAttribute("email",email );
            se.setAttribute("phno", pno);
            status = "success";
        } catch (Exception e) {
            status = "failure";
            e.printStackTrace();
        }      
        return status;
    }
	public ArrayList<Customer> getUserinfo(String id) {
//        Statement st = null;
//        ResultSet rs = null;
        ArrayList<Customer> al = new ArrayList<Customer>();
        try {
            st = con.createStatement();
            String qry = "select * from demo3 where id= '" + id + "';";
            rs = st.executeQuery(qry);
            while (rs.next()) {
                Customer p = new Customer();
                p.setId(rs.getString("id"));
                p.setName(rs.getString("name"));
                p.setEmail(rs.getString("email"));
                p.setPhno(rs.getString("phno"));
//                p.setdate(rs.getString("date"));
                al.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return al;
    }
	public String delete(int id) { 
    	Statement ps=null; 
    	int a; 
    	String status=""; 
    	try { 
    	ps=con.createStatement(); 
    	String sql="DELETE FROM demo3 WHERE id='"+id+"';"; 
    	a=ps.executeUpdate(sql); 
    	if(a>0) { 
    	status="success"; 
    	} 
    	else { 
    	status="failure"; 
    	} 
    	}catch(Exception e) { 
    	e.printStackTrace(); 
    	} 
    	return status; 
    	} 
	public ArrayList<Customer> getUserDetails() { 
//    	Statement st=null; 
//    	ResultSet rs=null; 
    	ArrayList<Customer> al = new ArrayList<Customer>(); 
    	try { 
    	st = con.createStatement(); 
    	String qry = "select * from demo3 where id not in(1);"; 
    	rs = st.executeQuery(qry); 
    	while (rs.next()) { 
    		Customer p = new Customer(); 
    	p.setId(rs.getString("id")); 
    	p.setName(rs.getString("name")); 
    	p.setEmail(rs.getString("email")); 
    	p.setPhno(rs.getString("phno")); 
    	al.add(p); 
    	} 
    	} catch (Exception e) { 
    	e.printStackTrace(); 
    	} 
    	return al; 
    	} 
	
	
public ArrayList<Event> get_eventinfo(String event_category){
	ArrayList<Event> al=new ArrayList<Event>();
	try {
		st=con.createStatement();
		String qry="select *from event where event_category='"+event_category+"';";
		rs=st.executeQuery(qry);
		while(rs.next()) {
			Event d=new Event();
			d.setEid(rs.getString("event_id"));
			d.setImage(rs.getString("event_image"));
			d.setEname(rs.getString("event_name"));
			d.setCost(rs.getString("event_cost"));
			d.setDetails(rs.getString("event_details"));
			al.add(d);
		}
	}catch (Exception e) { 
    	e.printStackTrace(); 
    	} 
	
	return al;
	
}
	

public Event getEventFormInfo(String event_id) {
    Statement st = null;
    ResultSet rs = null;
    Event s = null;
    try {
        st = con.createStatement();
        rs = st.executeQuery("select * from event where event_id= '" + event_id + "'");
        boolean b = rs.next();
        if (b == true) {
            s = new Event();
            s.setEname(rs.getString("event_name"));
            s.setCost(rs.getString("event_cost"));
        } else {
            s = null;
        }
    } catch (Exception e) {
        e.printStackTrace();
    }

    return s;
}


public String Booknow(HttpServletRequest req) {
    String status = "";
    ResultSet rs = null;
    try {
        Statement st = con.createStatement();
        rs = st.executeQuery("select event_id from book_event where eventdate= '" + req.getParameter("edate") + "'");
        boolean b = rs.next();
        if (b == true) {
            status = "existed";
        } else {
            String qry = "insert into book_event "
                    + "select 0,event_image,event_name,'" 
                    + req.getParameter("pno") + "', '" 
                    + req.getParameter("email") + "','" 
                    + req.getParameter("address") +
                    "',event_cost,'" + se.getAttribute("uname")  //if code doesnt work then check here if its se or session
                    + "'," + se.getAttribute("id")
                    + " ,'pending',now(),'" 
                    + req.getParameter("edate") +
                    "' from event where event_id=" + 
                    req.getParameter("event_id") + ";";
            int a = st.executeUpdate(qry);
            if (a > 0) {
                status = "success";
            } else {
                status = "failure";
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    return status;
}

}
