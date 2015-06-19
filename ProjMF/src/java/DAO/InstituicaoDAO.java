package DAO;

import Model.Instituicao;
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

public class InstituicaoDAO extends DAO {
    
    public void criaPaciente(Object o) throws SQLException {
    }
    
    public void criaInstituicao(Object o) throws SQLException {
        Instituicao pass = (Instituicao) o;

        String sql = "insert into Instituicao (nome, razao_social, CNPJ, infos_complementares) Values(?,?,?,?)";
        PreparedStatement stmt;
        stmt = conexao.prepareStatement(sql);

        //stmt.setInt(1, pass.getIdPaciente());
        stmt.setString(1, pass.getNome());
        stmt.setString(2, pass.getRazao_social());
        stmt.setString(3, pass.getCNPJ());
        stmt.setString(4, pass.getInfos_complementares());

        stmt.execute();
        stmt.close();

    }
    

    public List<Paciente> listaPacientes(String nome) {

     try {

         List<Paciente> pacientes = new ArrayList<>();

         String sql= "select * from Pacientes where LOWER(Nome) like LOWER(?) order by Preco DESC ";
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
