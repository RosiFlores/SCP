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
import javaSCP.TipoCurso;

/**
 *
 * @author Angelo
 */
public class TipoCursoDAO {
     public static List<TipoCurso> obterTipoCursos()
            throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        Statement comando = null;
        List<TipoCurso> tipoCursos = new ArrayList<TipoCurso>();
        TipoCurso tipoCurso = null;

        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from tipoCurso");

            while (rs.next()) {
                tipoCurso = instanciarTipoCurso(rs);
                tipoCursos.add(tipoCurso);

            }

        } finally {
            fecharConexao(conexao, comando);
        }
        return tipoCursos;

    }

    public static TipoCurso instanciarTipoCurso(ResultSet rs)
            throws SQLException {
        TipoCurso tipoCurso = new TipoCurso(rs.getInt("codigo"), rs.getString("nome"));
        
        return tipoCurso;
}

public static void gravar(TipoCurso tipocurso) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        Statement comando = null;
        String stringSQL;
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            stringSQL = "insert into tipocurso(codigo, nome)"
                    + "values('" + tipocurso.getCodigo()+ "', "
                    + ""+ tipocurso.getNome()+"";
                    
            stringSQL = stringSQL + ")";
            comando.execute(stringSQL);
        } finally {
            fecharConexao(conexao, comando);
        }

    }
      


}
