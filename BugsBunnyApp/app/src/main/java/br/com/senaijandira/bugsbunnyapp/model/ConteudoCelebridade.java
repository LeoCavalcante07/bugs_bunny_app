package br.com.senaijandira.bugsbunnyapp.model;

public class ConteudoCelebridade {

    private int idConteudoCelebridade;
    private String titulo;
    private String texto;
    private String foto;
    private String banner;
    private int idCelebridade;
    private int status;


    public int getIdConteudoCelebridade() {
        return idConteudoCelebridade;
    }

    public void setIdConteudoCelebridade(int idConteudoCelebridade) {
        this.idConteudoCelebridade = idConteudoCelebridade;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getTexto() {
        return texto;
    }

    public void setTexto(String texto) {
        this.texto = texto;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public String getBanner() {
        return banner;
    }

    public void setBanner(String banner) {
        this.banner = banner;
    }

    public int getIdCelebridade() {
        return idCelebridade;
    }

    public void setIdCelebridade(int idCelebridade) {
        this.idCelebridade = idCelebridade;
    }


    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
