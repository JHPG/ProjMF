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
public class Historico {
    
  private int IDDiagnostico;
  private int IDPaciente;
  private String diag_inicial;
  private String vulnerabilidades;
  private String objetivos;
  private String resulados;

    public Historico() {
    }
  
    public Historico(int IDPaciente, String diag_inicial, String vulnerabilidades, String objetivos, String resulados) {
        this.IDPaciente = IDPaciente;
        this.diag_inicial = diag_inicial;
        this.vulnerabilidades = vulnerabilidades;
        this.objetivos = objetivos;
        this.resulados = resulados;
    }
    
  
    
}
