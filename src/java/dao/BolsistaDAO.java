/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javaSCP.Bolsista;
import javaSCP.Pessoa;

/**
 *
 * @author Mayara Amanda
 */
public class BolsistaDAO extends DAO {

    public static List<Bolsista> obterBolsista()
            throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        Statement comando = null;
        List<Bolsista> bolsistas = new ArrayList<Bolsista>();
        Bolsista bolsista = null;

        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from bolsista");
            while (rs.next()) {
                bolsista = instanciarBolsista(rs);
                bolsistas.add(bolsista);
                
            }

        } finally {
            fecharConexao(conexao, comando);
        }
        return bolsistas;
        
        

    }

    public static Bolsista instanciarBolsista(ResultSet rs)
            throws SQLException{
        Bolsista bolsista = new Bolsista(rs.getInt("matricula"),rs.getString("nomeBanco"),rs.getInt("agencia"),rs.getInt("contaBancaria"));
        
        return bolsista;
        
    }
    
    
    public static void gravar (Bolsista bolsista, Pessoa pessoa) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        Statement comando = null;
        String stringSQL;
 try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            stringSQL = "insert into bolsista(matricula, contaCorrente, nomeBanco, agencia)"
                    +"values('" + bolsista.getMatricula() + "', "
                    + ""+ bolsista.getNome()+","
                    + "" + bolsista.getContaCorrente() +","
                    + "" + bolsista.getNomeBanco() +","
                    + "" + bolsista.getAgencia() +",";
            
            stringSQL=stringSQL + ")";
            comando.execute(stringSQL);
        }finally{
     fecharConexao(conexao, comando);
 }

    }
}