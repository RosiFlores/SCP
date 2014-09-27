/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import static dao.DAO.fecharConexao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javaSCP.Edital;

/**
 *
 * @author Mayara Amanda
 */
public class EditalDAO extends DAO {

    public static List<Edital> obterEdital()
            throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        Statement comando = null;
        List<Edital> editais = new ArrayList<Edital>();
        Edital edital = null;

        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from edital");
            while (rs.next()) {
                edital = instanciarEdital(rs);
                editais.add(edital);
                return editais;
            }

        } finally {
            fecharConexao(conexao, comando);
        }
        return editais;
        
        

    }

    public static Edital instanciarEdital(ResultSet rs)
            throws SQLException{
        Edital edital = new Edital(rs.getInt("numeroEdital"),rs.getInt("anoEdital"));
        
        return edital;
        
    }
    
    
    
}
