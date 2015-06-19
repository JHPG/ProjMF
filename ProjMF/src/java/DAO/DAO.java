
package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DAO {
    protected Connection conexao;
    
    public DAO() {
        try {
            conexao = DriverManager.getConnection("jdbc:derby://localhost:1527/banco1", "root", "1234");
        } catch (SQLException ex) {
            
        }
    }
    
    
}
