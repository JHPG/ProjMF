package Model;

public class Instituicao {
    private int idInstituicao;
    private String nome;
    private String razao_social;
    private String CNPJ;
    private String infos_complementares;
    
    public Instituicao(){
    
    }

    public Instituicao(String nome, String razao_social, String CNPJ, String infos_complementares) {
        this.nome = nome;
        this.razao_social = razao_social;
        this.CNPJ = CNPJ;
        this.infos_complementares = infos_complementares;
    }

    public int getIdPaciente() {
        return idInstituicao;
    }

    public void setIdPaciente(int idInstituicao) {
        this.idInstituicao = idInstituicao;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getRazao_social() {
        return razao_social;
    }

    public void setRazao_social(String razao_social) {
        this.razao_social = razao_social;
    }

    public String getCNPJ() {
        return CNPJ;
    }

    public void setCNPJ(String CNPJ) {
        this.CNPJ = CNPJ;
    }

    public String getInfos_complementares() {
        return infos_complementares;
    }

    public void setInfos_complementares(String infos_complementares) {
        this.infos_complementares = infos_complementares;
    }

    
    
    
}