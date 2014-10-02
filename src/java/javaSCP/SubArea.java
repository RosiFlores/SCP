/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javaSCP;

import dao.SubAreaDAO;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Angelo
 */
public class SubArea {
    
    private int codigo;
    private String nome;

    public SubArea(int codigo, String nome) {
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
    
      public static List<SubArea> obterSubAreas()
            throws ClassNotFoundException, SQLException {
        return SubAreaDAO.obterSubAreas();
    
}
}
