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
        Projeto projeto = new Projeto(rs.getInt("idProjeto"),rs.getString("titulo"),rs.getInt("cargaHoraria"),rs.getInt("Edital_idEdital"),rs.getString("palavraChave"),rs.getInt("duracao"),rs.getDate("dataInicio"),rs.getDate("dataTermino"),rs.getFloat("valorfinanciamento"),rs.getDate("dataFinanciamento"),rs.getString("tipoBolsa"),rs.getString("programa"),rs.getString("agenciaFomento"),rs.getInt("quantidadeBolsista"),rs.getString("instituicaoParceira"),rs.getString("grupoPesquisaCNPq"),rs.getString("nucleoOrientador"),rs.getString("professorParticipante"),rs.getInt("cargaHorariaProfessor"));
        
        //int idProjeto, String titulo, int CargaHoraria, int Edital_idEdital, String palavrasChave,
        // int duracao, Date dataInicio, Date dataTermino, float valorfinanciamento, Date dataFinanciamento, 
        //String tipoBolsa, String programa, String agenciaFomento, int quantidadeBolsista, String instituicaoParceira,
        // String grupoPesquisaCNPq, String nucleoOrientador, String professorParticipante, int cargaHorariaProfessor,
        
        return projeto;
     }
}