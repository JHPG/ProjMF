/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Jhpg
 */
public class Diagnostico {
    
  private int IDDiagnostico;
  private int IDPaciente;
  private String diag_inicial;
  private String vulnerabilidades;
  private String objetivos;
  private String resultados;

    public Diagnostico() {
        //Construtor
        
    }
  
    public Diagnostico(int IDPaciente, String diag_inicial, String vulnerabilidades, String objetivos, String resultados) {
        this.IDPaciente = IDPaciente;
        this.diag_inicial = diag_inicial;
        this.vulnerabilidades = vulnerabilidades;
        this.objetivos = objetivos;
        this.resultados = resultados;
    }

    public int getIDDiagnostico() {
        return IDDiagnostico;
    }

    public void setIDDiagnostico(int IDDiagnostico) {
        this.IDDiagnostico = IDDiagnostico;
    }

    public int getIDPaciente() {
        return IDPaciente;
    }

    public void setIDPaciente(int IDPaciente) {
        this.IDPaciente = IDPaciente;
    }

    public String getDiag_inicial() {
        return diag_inicial;
    }

    public void setDiag_inicial(String diag_inicial) {
        this.diag_inicial = diag_inicial;
    }

    public String getVulnerabilidades() {
        return vulnerabilidades;
    }

    public void setVulnerabilidades(String vulnerabilidades) {
        this.vulnerabilidades = vulnerabilidades;
    }

    public String getObjetivos() {
        return objetivos;
    }

    public void setObjetivos(String objetivos) {
        this.objetivos = objetivos;
    }

    public String getResultados() {
        return resultados;
    }

    public void setResultados(String resulados) {
        this.resultados = resulados;
    }
    
  
    
}
