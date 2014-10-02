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
public class Campus { //extends Instituicao
    
 private int codigo;
    private String nome;
    

    public Campus(int codigo,String nome) {
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

    
public static List<Campus> obterCampus()
       throws ClassNotFoundException, SQLException {
    return CampusDAO.obterCampus();
}
    
   
    
    
    
}
