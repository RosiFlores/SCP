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
import javaSCP.Instituicao;

/**
 *
 * @author Angelo
 */
public class InstituicaoDAO {
  public static List<Instituicao> obterInstituicoes()
            throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        Statement comando = null;
        List<Instituicao> instituicoes = new ArrayList<Instituicao>();
        Instituicao instituicao = null;

        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from instituicao");

            while (rs.next()) {
                instituicao = instanciarInstituicao(rs);
                instituicoes.add(instituicao);

            }

        } finally {
            fecharConexao(conexao, comando);
        }
        return instituicoes;

    }

    public static Instituicao instanciarInstituicao(ResultSet rs)
            throws SQLException {
        Instituicao instituicao = new Instituicao(rs.getInt("codigoInstituicao"), rs.getString("nomeInstituicao"));

        return instituicao;

    }
    
    public static void gravar(Instituicao instituicao) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        Statement comando = null;
        String stringSQL;
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            stringSQL = "insert into instituicao(codigo, nome)"
                    + "values('" + instituicao.getCodigoInstituicao()+ "', "
                    + ""+ instituicao.getNomeInstituicao()+"";
                    
            stringSQL = stringSQL + ")";
            comando.execute(stringSQL);
        } finally {
            fecharConexao(conexao, comando);
        }

    }
      
}
