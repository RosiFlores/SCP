/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.


 UF, Instituição e campus


 */

package javaSCP;

import dao.CampusDAO;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Rosi
 */
public class Campus {
    
 private int codigo;
    private String nome;
     private String instituicao;
    private String uf;

    public Campus(int codigo,String nome, String instituicao, String uf) {
        this.codigo = codigo;
        this.nome = nome;
        this.instituicao = instituicao;
        this.uf = uf;
        
        
    }

    public Campus(int codigo, String nome, String instituicao) {
        this.codigo = codigo;
        this.nome = nome;
        this.instituicao = instituicao;
    }

    public Campus(int codigo, String nome) {
        this.codigo = codigo;
        this.nome = nome;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }
    
    

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getInstituicao() {
        return instituicao;
    }

    public void setInstituicao(String instituicao) {
        this.instituicao = instituicao;
    }

    public String getUf() {
        return uf;
    }

    public void setUf(String uf) {
        this.uf = uf;
    }
public static List<Campus> obterCampus()
       throws ClassNotFoundException, SQLException {
    return CampusDAO.obterCampus();
}
    
   
    
    
    
}
