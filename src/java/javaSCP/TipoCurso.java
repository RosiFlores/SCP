/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javaSCP;

import dao.TipoCursoDAO;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Angelo
 */
public class TipoCurso {
    
    private int codigo;
    private String nome;
    

    public TipoCurso( int codigo,String nome) {
        this.nome = nome;
        this.codigo = codigo;
        
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    
    
    public static List<TipoCurso> obterTipoCursos()
       throws ClassNotFoundException, SQLException {
    return TipoCursoDAO.obterTipoCursos();
}
}
