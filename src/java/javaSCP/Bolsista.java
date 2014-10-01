/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javaSCP;

import dao.BolsistaDAO;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Angelo
 */
public class Bolsista extends Pessoa {
    
    private int matricula;
    private String nomeBanco;
    private int agencia;
    private int contaCorrente;

    public Bolsista(int matricula, String nomeBanco, int agencia, int contaCorrente) {
        this.matricula = matricula;
        this.nomeBanco = nomeBanco;
        this.agencia = agencia;
        this.contaCorrente = contaCorrente;
    }

    
    
    

    public int getMatricula() {
        return matricula;
    }

    public void setMatricula(int matricula) {
        this.matricula = matricula;
    }

    public String getNomeBanco() {
        return nomeBanco;
    }

    public void setNomeBanco(String nomeBanco) {
        this.nomeBanco = nomeBanco;
    }

    public int getAgencia() {
        return agencia;
    }

    public void setAgencia(int agencia) {
        this.agencia = agencia;
    }

    public int getContaCorrente() {
        return contaCorrente;
    }

    public void setContaCorrente(int contaCorrente) {
        this.contaCorrente = contaCorrente;
    }

public static List<Bolsista> obterBolsista()
       throws ClassNotFoundException, SQLException {
    return BolsistaDAO.obterBolsista();
    
}
    
}
