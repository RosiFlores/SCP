/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javaSCP;


import dao.ProjetoDAO;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Angelo
 */
public class Projeto{ // herdar de subareas
    private int codigo;
    private String titulo;
    private int cargaHoraria;
    private int edital_codigo;
    private String palavraChave;
    private int duracao;
    private Date dataInicio;
    private Date dataTermino;
    private float valorfinanciamento;
    private Date dataFinanciamento;
    private String tipoBolsa;
    private String programa;
    private String agenciaFomento;
    private int quantidadeBolsista;
    private String instituicaoParceira;
    private String grupoPesquisaCNPq;
    private String professorParticipante;
    
    
    public Projeto(int codigo, String titulo, int cargaHoraria, int Edital_idEdital, String palavrasChave, int duracao, Date dataInicio, Date dataTermino, float valorfinanciamento, Date dataFinanciamento, String tipoBolsa, String programa, String agenciaFomento, int quantidadeBolsista, String instituicaoParceira, String grupoPesquisaCNPq, String nucleoOrientador, String professorParticipante, int cargaHorariaProfessor) {
        
        this.codigo = codigo;
        this.titulo = titulo;
        this.cargaHoraria = cargaHoraria;
        this.edital_codigo = edital_codigo;
        this.palavraChave = palavrasChave;
        this.duracao = duracao;
        this.dataInicio = dataInicio;
        this.dataTermino = dataTermino;
        this.valorfinanciamento = valorfinanciamento;
        this.dataFinanciamento = dataFinanciamento;
        this.tipoBolsa = tipoBolsa;
        this.programa = programa;
        this.agenciaFomento = agenciaFomento;
        this.quantidadeBolsista = quantidadeBolsista;
        this.instituicaoParceira = instituicaoParceira;
        this.grupoPesquisaCNPq = grupoPesquisaCNPq;
        this.professorParticipante = professorParticipante;
    }
  
    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getPalavraChave() {
        return palavraChave;
    }

    public void setPalavraChave(String palavrasChave) {
        this.palavraChave = palavrasChave;
    }

    public int getDuracao() {
        return duracao;
    }

    public void setDuracao(int duracao) {
        this.duracao = duracao;
    }

    public Date getDataInicio() {
        return dataInicio;
    }

    public void setDataInicio(Date dataInicio) {
        this.dataInicio = dataInicio;
    }

    public Date getDataTermino() {
        return dataTermino;
    }

    public void setDataTermino(Date dataTermino) {
        this.dataTermino = dataTermino;
    }

    public Date getDataFinanciamento() {
        return dataFinanciamento;
    }

    public void setDataFinanciamento(Date dataFinanciamento) {
        this.dataFinanciamento = dataFinanciamento;
    }

    public String getTipoBolsa() {
        return tipoBolsa;
    }

    public void setTipoBolsa(String tipoBolsa) {
        this.tipoBolsa = tipoBolsa;
    }

    public String getPrograma() {
        return programa;
    }

    public void setPrograma(String programa) {
        this.programa = programa;
    }

    public String getAgenciaFomento() {
        return agenciaFomento;
    }

    public void setAgenciaFomento(String agenciaFomento) {
        this.agenciaFomento = agenciaFomento;
    }

    public int getQuantidadeBolsista() {
        return quantidadeBolsista;
    }

    public void setQuantidadeBolsista(int quantidadeBolsista) {
        this.quantidadeBolsista = quantidadeBolsista;
    }

    public String getProfessorParticipante() {
        return professorParticipante;
    }

    public void setProfessorParticipante(String professorParticipante) {
        this.professorParticipante = professorParticipante;
    }

    public int getIdProjeto() {
        return codigo;
    }

    public void setIdProjeto(int codigo) {
        this.codigo = codigo;
    }

    public int getCargaHoraria() {
        return cargaHoraria;
    }

    public void setCargaHoraria(int CargaHoraria) {
        this.cargaHoraria = CargaHoraria;
    }

    public int getEdital_codigo() {
        return edital_codigo;
    }

    public void setEdital_codigo(int edital_codigo) {
        this.edital_codigo = edital_codigo;
    }

    public float getValorfinanciamento() {
        return valorfinanciamento;
    }

    public void setValorfinanciamento(float valorfinanciamento) {
        this.valorfinanciamento = valorfinanciamento;
    }

    public String getInstituicaoParceira() {
        return instituicaoParceira;
    }

    public void setInstituicaoParceira(String instituicaoParceira) {
        this.instituicaoParceira = instituicaoParceira;
    }

    public String getGrupoPesquisaCNPq() {
        return grupoPesquisaCNPq;
    }

    public void setGrupoPesquisaCNPq(String grupoPesquisaCNPq) {
        this.grupoPesquisaCNPq = grupoPesquisaCNPq;
    }
 public static List<Projeto> obterProjetos()
            throws ClassNotFoundException, SQLException {
        return ProjetoDAO.obterProjetos();
      
    
 }
}
