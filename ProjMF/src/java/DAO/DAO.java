
package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public abstract class DAO {
    protected Connection conexao;
    
    public abstract void criaPaciente(Object o)throws SQLException;
    public abstract void criaInstituicao(Object o)throws SQLException;
}
