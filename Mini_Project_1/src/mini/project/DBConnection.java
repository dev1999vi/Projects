/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mini.project;
import java.sql.*;

/**
 *
 * @author Deku
 */
public class DBConnection {
    
    public static String Driver="com.mysql.cj.jdbc.Driver";
    public static String Url="jdbc:mysql://localhost:3306/miniproject";
    public static String un="root";
    public static String pw="tiger";
    
    public static Connection getConnection()
    {
        Connection con=null;
        try{
            Class.forName(Driver);
            con=DriverManager.getConnection(Url,un,pw);
            
            
        }
        catch(Exception tt)
        {
            System.out.print(tt);
        }
        
        
        
        
        return con;
    }
}
