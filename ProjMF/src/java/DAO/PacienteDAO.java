package DAO;

import Model.Paciente;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.beans.property.ListProperty;

public class PacienteDAO extends DAO {

    public void criaInstituicao(Object o) throws SQLException {
        
    }
    
    public void criaPaciente(Object o) throws SQLException {
        Paciente pass = (Paciente) o;

        String sql = "insert into paciente (nome, CPF, CPF_resp, RG, genero, Estado_civil, Nome_mae, Nome_pai, Cor_pele, Data_nascimento, UF_origem, Logradouro, Numero, Complemento) Values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement stmt;
        stmt = conexao.prepareStatement(sql);

        //stmt.setInt(1, pass.getIdPaciente());
        stmt.setString(1, pass.getNome());
        stmt.setString(2, pass.getCPF());
        stmt.setString(3, pass.getCPF_resp());
        stmt.setString(4, pass.getRG());
        stmt.setString(5, pass.getGenero());
        stmt.setString(6, pass.getEstado_civil());
        stmt.setString(7, pass.getNome_mae());
        stmt.setString(8, pass.getNome_pai());
        stmt.setString(9, pass.getCor_pele());
        stmt.setString(10, pass.getData_nascimento());
        stmt.setString(11, pass.getUF_origem());
        stmt.setString(12, pass.getLogradouro());
        stmt.setString(13, pass.getNumero());
        stmt.setString(14, pass.getComplemento());
        
        stmt.execute();
        stmt.close();

    }

    public List<Paciente> listaPacientes(String nome) {

     try {

         List<Paciente> pacientes = new ArrayList<>();

         String sql= "select * from Paciente where LOWER(Nome) like LOWER(?) order by Nome ASC ";
         PreparedStatement stmt;
         stmt = conexao.prepareStatement(sql);
         
         stmt.setString(1, "%"+nome+"%");
         
         try (ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                
                Paciente pac = new Paciente();
                pac.setIdPaciente(rs.getInt("idPaciente"));
                pac.setNome(rs.getString("nome"));
                pac.setCPF(rs.getString("CPF"));

                pacientes.add(pac);
            }
         }
         stmt.close();

         return pacientes;

     } catch (SQLException e) {
         throw new RuntimeException(e);
     }
 }

    public void transferirPaciente(String cod, String novaInst) {
        
        // Preencher este método :D
        
    }

    
    

}
