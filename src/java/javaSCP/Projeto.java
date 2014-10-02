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
    private int Edital_idEdital;
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
    private String nucleoOrientador;
    private String professorParticipante;
    private int cargaHorariaProfessor;
    
    
    public Projeto(int codigo, String titulo, int cargaHoraria, int Edital_idEdital, String palavrasChave, int duracao, Date dataInicio, Date dataTermino, float valorfinanciamento, Date dataFinanciamento, String tipoBolsa, String programa, String agenciaFomento, int quantidadeBolsista, String instituicaoParceira, String grupoPesquisaCNPq, String nucleoOrientador, String professorParticipante, int cargaHorariaProfessor) {
        
        this.codigo = codigo;
        this.titulo = titulo;
        this.cargaHoraria = cargaHoraria;
        this.Edital_idEdital = Edital_idEdital;
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
        this.nucleoOrientador = nucleoOrientador;
        this.professorParticipante = professorParticipante;
        this.cargaHorariaProfessor = cargaHorariaProfessor;
    }

    public Projeto(int codigo, String titulo) {
        this.codigo = codigo;
        this.titulo = titulo;
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

    public String getNucleoOrientador() {
        return nucleoOrientador;
    }

    public void setNucleoOrientador(String nucleoOrientador) {
        this.nucleoOrientador = nucleoOrientador;
    }

    public String getProfessorParticipante() {
        return professorParticipante;
    }

    public void setProfessorParticipante(String professorParticipante) {
        this.professorParticipante = professorParticipante;
    }

    public int getCargaHorariaProfessor() {
        return cargaHorariaProfessor;
    }

    public void setCargaHorariaProfessor(int cargaHorariaProfessor) {
        this.cargaHorariaProfessor = cargaHorariaProfessor;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public int getCargaHoraria() {
        return cargaHoraria;
    }

    public void setCargaHoraria(int CargaHoraria) {
        this.cargaHoraria = CargaHoraria;
    }

    public int getEdital_idEdital() {
        return Edital_idEdital;
    }

    public void setEdital_idEdital(int Edital_idEdital) {
        this.Edital_idEdital = Edital_idEdital;
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

    public String getCoOrientador() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String getCronograma() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
