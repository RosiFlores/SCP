/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

/**
 *
 * @author Angelo
 */
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javaSCP.SubArea;

public class SubAreaDAO extends DAO {

    public static List<SubArea> obterSubAreas()
            throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        Statement comando = null;
        List<SubArea> subAreas = new ArrayList<SubArea>();
        SubArea subArea = null;

        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from subareaconhecimento");

            while (rs.next()) {
                subArea = instanciarSubArea(rs);
                subAreas.add(subArea);

            }

        } finally {
            fecharConexao(conexao, comando);
        }
        return subAreas;
    }

    public static SubArea instanciarSubArea(ResultSet rs)
            throws SQLException {
        SubArea subArea = new SubArea(rs.getInt("codigo"), rs.getString("nome"));

        return subArea;

    }
}
