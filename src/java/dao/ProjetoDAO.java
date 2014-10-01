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
import javaSCP.Projeto;

/**
 *
 * @author Angelo
 */
public class ProjetoDAO extends DAO{
    public static List<Projeto> obterProjetos()
            throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        Statement comando = null;
        List<Projeto> projetos = new ArrayList<Projeto>();
        Projeto projeto = null;
        
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from projeto");
            
            while (rs.next()) {
                projeto = instanciarProjeto(rs);
                projetos.add(projeto);
                
            }
            } finally {
            fecharConexao(conexao, comando);
        }
        return projetos;
}
     public static Projeto instanciarProjeto(ResultSet rs)
            throws SQLException{
        Projeto projeto = new Projeto(rs.getInt("codigo"),rs.getString("titulo"),rs.getDate("cronograma"),rs.getInt("cargaHoraria"),rs.getString("palavrachave"),rs.getInt("duracao"),rs.getDate("dataInicio"),rs.getDate("dataFim"),rs.getFloat("valorfinanciamento"),rs.getDate("dataFinanciamento"),rs.getString("programa"),rs.getString("agenciaFomento"),rs.getInt("quantidadeBolsa"),rs.getString("instituicaoParceira"),rs.getString("grupoPesquisaCNPq"),rs.getString("coOrientador"),rs.getString("grupoPesquisaCNPq"),rs.getInt("tipobolsa_codigo"), rs.getInt("edital_codigo"));       
        
        return projeto;
     }
}