/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author raphaelm
 */

/*Retirar cnpj*/
public class Paciente {
    private int idPaciente;
    private String nome;
    private String CPF;
    private String CNPJ;
    private String RG;
    private String genero;
    private String estado_civil;
    private String nome_mae;
    private String nome_pai;
    private String cor_pele;
    private String data_nascimento;
    private String UF_origem;
    private String logradouro;
    private String numero;
    private String complemento;
    
    //Trocar nome Paciente por Individuo?
    public Paciente(){
    
    }
    //OBS: esta tudo String para testar a primeira inserção
    //Alterar Strings para os formatos corretos
    //Verificar se falta algum campo
    public Paciente(String nome, String CPF, String CNPJ, String RG, String genero, String estado_civil, String nome_mae, String nome_pai, String cor_pele, String data_nascimento, String UF_origem, String logradouro, String numero, String complemento) {
        this.nome = nome;
        this.CPF = CPF;
        this.CNPJ = CNPJ;
        this.RG = RG;
        this.genero = genero;
        this.estado_civil = estado_civil;
        this.nome_mae = nome_mae;
        this.nome_pai = nome_pai;
        this.cor_pele = cor_pele;
        this.data_nascimento = data_nascimento;
        this.UF_origem = UF_origem;
        this.logradouro = logradouro;
        this.numero = numero;
        this.complemento = complemento;
    }

    public int getIdPaciente() {
        return idPaciente;
    }

    public void setIdPaciente(int idPaciente) {
        this.idPaciente = idPaciente;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCPF() {
        return CPF;
    }

    public void setCPF(String CPF) {
        this.CPF = CPF;
    }

    public String getCNPJ() {
        return CNPJ;
    }

    public void setCNPJ(String CNPJ) {
        this.CNPJ = CNPJ;
    }

    public String getRG() {
        return RG;
    }

    public void setRG(String RG) {
        this.RG = RG;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getEstado_civil() {
        return estado_civil;
    }

    public void setEstado_civil(String estado_civil) {
        this.estado_civil = estado_civil;
    }

    public String getNome_mae() {
        return nome_mae;
    }

    public void setNome_mae(String nome_mae) {
        this.nome_mae = nome_mae;
    }

    public String getNome_pai() {
        return nome_pai;
    }

    public void setNome_pai(String nome_pai) {
        this.nome_pai = nome_pai;
    }

    public String getCor_pele() {
        return cor_pele;
    }

    public void setCor_pele(String cor_pele) {
        this.cor_pele = cor_pele;
    }

    public String getData_nascimento() {
        return data_nascimento;
    }

    public void setData_nascimento(String data_nascimento) {
        this.data_nascimento = data_nascimento;
    }

    public String getUF_origem() {
        return UF_origem;
    }

    public void setUF_origem(String UF_origem) {
        this.UF_origem = UF_origem;
    }


    public String getLogradouro() {
        return logradouro;
    }

    public void setLogradouro(String logradouro) {
        this.logradouro = logradouro;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getComplemento() {
        return complemento;
    }

    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }


    
    
    
}
