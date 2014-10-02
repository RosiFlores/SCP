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
public class Edital  extends Parametro{ //extends SubArea
    private int numero;
    private int ano;
    private String tipoBolsa;
    private String subareaConhecimento;
    private int quantidadeBolsas;
    private int validadeBolsa;
    private float valorBolsa;
    private int validadeEdital;
    private File anexos;

    public Edital(int numero, int ano) {
        
        this.numero = numero;
        this.ano = ano;
    }
    
    

    public Edital(int numero, int ano, String tipoBolsa, String subareaConhecimento, int quantidadeBolsas, int validadeBolsa, float valorBolsa, int validadeEdital, File anexos, int codigo, String nome) {
        
        this.numero = numero;
        this.ano = ano;
        this.tipoBolsa = tipoBolsa;
        this.subareaConhecimento = subareaConhecimento;
        this.quantidadeBolsas = quantidadeBolsas;
        this.validadeBolsa = validadeBolsa;
        this.valorBolsa = valorBolsa;
        this.validadeEdital = validadeEdital;
        this.anexos = anexos;
    }

    
    
    public int getNumero() {
        return numero;
    }

    public void setNumero(int numeroEdital) {
        this.numero = numeroEdital;
    }

    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
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

     public static List<Edital> obterEdital()
       throws ClassNotFoundException, SQLException {
    return EditalDAO.obterEdital();
}
}
