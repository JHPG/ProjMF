/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Jhpg
 */
public class DiagnosticoDAO extends DAO{

    public List<Diagnostico> listaDiagnostico(int codPac) throws SQLException {
          
        List<Diagnostico> listaHistorico = new ArrayList<>();

         String sql= "select * from diagnostico where IDPaciente=? order by IDPaciente ASC ";
         PreparedStatement stmt;
         stmt = conexao.prepareStatement(sql);
         
         stmt.setInt(1, codPac);
         
        try (ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                
                Diagnostico hist = new Diagnostico();
                hist.setIDDiagnostico(rs.getInt("IdDiagnostico"));
                hist.setDiag_inicial(rs.getString("Diagnostico_Inicial"));
                hist.setObjetivos(rs.getString("Objetivos"));
                hist.setResultados(rs.getString("Resultados"));
                hist.setVulnerabilidades(rs.getString("Vulnerabilidades"));
                hist.setIDPaciente(rs.getInt("IDPaciente"));
                
                listaHistorico.add(hist);
            }
            stmt.close();

            return listaHistorico;

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
     
//        return listaHistorico;
   }

    public void criaPaciente(Object o) throws SQLException {

    }

    public void criaInstituicao(Object o) throws SQLException {

    }
}
