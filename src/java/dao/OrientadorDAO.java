package dao;

import static dao.DAO.fecharConexao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javaSCP.Orientador;

/**
 *
 * @author Mayara Amanda
 */
public class OrientadorDAO extends DAO {

    public static List<Orientador> obterOrientadores()
            throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        Statement comando = null;
        List<Orientador> orientadores = new ArrayList<Orientador>();
        Orientador orientador = null;

        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from orientador");
            while (rs.next()) {
                orientador = instanciarOrientador(rs);
                orientadores.add(orientador);
            }

        } finally {
            fecharConexao(conexao, comando);
        }
        return orientadores;
        
        

    }

    public static  Orientador instanciarOrientador(ResultSet rs)
            throws SQLException{
        Orientador orientador = new Orientador(rs.getInt("matricula"), rs.getString("homepageLattes"));
        
        return orientador;
        
    }    
    
    public static void gravar(Orientador orientador) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        Statement comando = null;
        String stringSQL;
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            stringSQL = "insert into orientador(matricula, homepageLattes)"
                    + "values('" + orientador.getMatricula() + "'"
                    + "" + orientador.getHomePageLattes() + "";

            stringSQL = stringSQL + ")";
            comando.execute(stringSQL);
        } finally {
            fecharConexao(conexao, comando);
        }

    }
    
    
    
}
