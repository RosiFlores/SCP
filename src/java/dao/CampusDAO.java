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
import javaSCP.Campus;

/**
 *
 * @author Mayara Amanda
 */
public class CampusDAO extends DAO {

    public static List<Campus> obterCampus()
            throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        List<Campus> campus = new ArrayList<Campus>();
        Campus umCampus = null;
        
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from campus");
            while (rs.next()){
                umCampus = instanciarCampus(rs);
                campus.add(umCampus);
                                
            }
            
        }finally{
            fecharConexao(conexao, comando);
        }
        
          
        return campus;
        
    }
    
    public static Campus instanciarCampus(ResultSet rs)
            throws SQLException{
        Campus umCampus = new Campus(rs.getInt("codigo"), rs.getString("nome"));
    
        return umCampus;
    } 
    
    
        
        
    }
    
