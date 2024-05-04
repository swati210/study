package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DbManager {
	Connection con=null;
	Statement stmt;
	String cmd="";
	boolean status=false;
	
	public DbManager() {
	try {
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/E-study","root", "");
	stmt = con.createStatement();
	} catch (Exception e) {
		System.err.println("Error= "+e);
	}
	}
	
	public boolean ddl(String cmd) {
		try {
			stmt.execute(cmd);
			status= true;
		} catch (Exception e) {
			System.err.println("Error= "+e);
			status=false;
		}
		return status;
	}
	public boolean dml(String cmd) {
		try {
			stmt.executeUpdate(cmd);
			status= true;
		} catch (Exception e) {
			System.err.println("Error= "+e);
			status=false;
		}
		return status;
	}
	public ResultSet dql(String cmd) {
		ResultSet rs=null;
		try {
			rs=stmt.executeQuery(cmd);
		} catch (Exception e) {
			System.err.println("Error= "+e);
		}
		return rs;
		
	}
	
}
