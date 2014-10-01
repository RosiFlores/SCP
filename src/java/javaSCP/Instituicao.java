/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javaSCP;

import dao.InstituicaoDAO;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Angelo
 */
public class Instituicao {
    private int codigoInstituicao;
    private String nomeInstituicao;

    public Instituicao(int codigoInstituicao, String nomeInstituicao) {
        this.codigoInstituicao = codigoInstituicao;
        this.nomeInstituicao = nomeInstituicao;
    }

    
    
    public int getCodigoInstituicao() {
        return codigoInstituicao;
    }

    public void setCodigoInstituicao(int codigoInstituicao) {
        this.codigoInstituicao = codigoInstituicao;
    }

    public String getNomeInstituicao() {
        return nomeInstituicao;
    }

    public void setNomeInstituicao(String nomeInstituicao) {
        this.nomeInstituicao = nomeInstituicao;
    }
    
    
    public static List<Instituicao> obterInstituicoes()
       throws ClassNotFoundException, SQLException {
    return InstituicaoDAO.obterInstituicoes();
}
}
