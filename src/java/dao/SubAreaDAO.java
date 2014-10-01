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
    
    public static void gravar (SubArea subarea) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        Statement comando = null;
        String stringSQL;
 try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            stringSQL = "insert into nucleo(codigo, nome)"
                    +"values('" + subarea.getCodigo() + "', "
                    + ""+ subarea.getNome()+",";
            
            stringSQL=stringSQL + ")";
            comando.execute(stringSQL);
        }finally{
     fecharConexao(conexao, comando);
 }

    }
}