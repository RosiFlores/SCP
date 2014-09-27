/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javaSCP;

import dao.EditalDAO;
import java.io.File;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Angelo
 */
public class Edital  implements Parametro{ //extends SubArea
    private int numeroEdital;
    private int anoEdital;
    private String tipoBolsa;
    private String subareaConhecimento;
    private int quantidadeBolsas;
    private int validadeBolsa;
    private float valorBolsa;
    private int validadeEdital;
    private File anexos;

    public Edital(int numeroEdital, int anoEdital) {
        
        this.numeroEdital = numeroEdital;
        this.anoEdital = anoEdital;
    }
    
    

    public Edital(int numeroEdital, int anoEdital, String tipoBolsa, String subareaConhecimento, int quantidadeBolsas, int validadeBolsa, float valorBolsa, int validadeEdital, File anexos, int codigo, String nome) {
        
        this.numeroEdital = numeroEdital;
        this.anoEdital = anoEdital;
        this.tipoBolsa = tipoBolsa;
        this.subareaConhecimento = subareaConhecimento;
        this.quantidadeBolsas = quantidadeBolsas;
        this.validadeBolsa = validadeBolsa;
        this.valorBolsa = valorBolsa;
        this.validadeEdital = validadeEdital;
        this.anexos = anexos;
    }

    
    
    public int getNumeroEdital() {
        return numeroEdital;
    }

    public void setNumeroEdital(int numeroEdital) {
        this.numeroEdital = numeroEdital;
    }

    public int getAnoEdital() {
        return anoEdital;
    }

    public void setAnoEdital(int anoEdital) {
        this.anoEdital = anoEdital;
    }

    public String getTipoBolsa() {
        return tipoBolsa;
    }

    public void setTipoBolsa(String tipoBolsa) {
        this.tipoBolsa = tipoBolsa;
    }

    public String getSubareaConhecimento() {
        return subareaConhecimento;
    }

    public void setSubareaConhecimento(String subareaConhecimento) {
        this.subareaConhecimento = subareaConhecimento;
    }

    public int getQuantidadeBolsas() {
        return quantidadeBolsas;
    }

    public void setQuantidadeBolsas(int quantidadeBolsas) {
        this.quantidadeBolsas = quantidadeBolsas;
    }

    public int getValidadeBolsa() {
        return validadeBolsa;
    }

    public void setValidadeBolsa(int validadeBolsa) {
        this.validadeBolsa = validadeBolsa;
    }

    public float getValorBolsa() {
        return valorBolsa;
    }

    public void setValorBolsa(float valorBolsa) {
        this.valorBolsa = valorBolsa;
    }

    public int getValidadeEdital() {
        return validadeEdital;
    }

    public void setValidadeEdital(int validadeEdital) {
        this.validadeEdital = validadeEdital;
    }

    public File getAnexos() {
        return anexos;
    }

    public void setAnexos(File anexos) {
        this.anexos = anexos;
    }

    @Override
    public String getNomeInstituicao() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void setNomeInstituicao(String nomeInstituicao) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int getHorasEdital() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void setHorasEdital(int horasEdital) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int getQuantidadeAlunos() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void setQuantidadeAlunos(int quantidadeAlunos) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
   

    @Override
    public int getCodigo() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void setCodigo(int codigo) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
      public static List<Edital> obterEdital()
       throws ClassNotFoundException, SQLException {
    return EditalDAO.obterEdital();
}
}