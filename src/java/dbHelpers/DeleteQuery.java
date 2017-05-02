package dbHelpers;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;


public class DeleteQuery {
    
    private Connection conn;
    
    public DeleteQuery(){
        
        Properties props = new Properties();
    InputStream instr = getClass().getResourceAsStream("dbConn.properties");
        try {
            props.load(instr);
        } catch (IOException ex) {
            Logger.getLogger(DeleteQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            instr.close();
        } catch (IOException ex) {
            Logger.getLogger(DeleteQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    String driver = props.getProperty("driver.name");
    String url = props.getProperty("server.name");
    String username = props.getProperty("user.name");
    String passwd = props.getProperty("user.password");
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DeleteQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            conn = DriverManager.getConnection(url, username, passwd);
        } catch (SQLException ex) {
            Logger.getLogger(DeleteQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    
    public void doDelete(int custID){
        
        try {
            //set up a string to hold our query
            String query = "DELETE FROM customers WHERE custID = ?";
            
            //create a preparedstatement using our query string
            PreparedStatement ps = conn.prepareStatement(query);
            
            //fill in the preparedstatement
            ps.setInt(1, custID);
            
            //execute the query
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DeleteQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
}
