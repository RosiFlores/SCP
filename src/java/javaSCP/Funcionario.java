/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javaSCP;

import dao.FuncionarioDAO;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Angelo
 */
public class Funcionario extends Pessoa {
    private int matricula;
    

    public Funcionario(int matricula) {
        this.matricula = matricula;
        
    }

     public int getMatricula() {
        return matricula;
    }

    public void setMatricula(int matricula) {
        this.matricula = matricula;
    }
        

    public static List<Funcionario> obterFuncionarios()
            throws ClassNotFoundException, SQLException {
        return FuncionarioDAO.obterFuncionarios();
    }
}
