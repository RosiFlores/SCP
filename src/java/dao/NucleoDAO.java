package dao;

import static dao.DAO.fecharConexao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javaSCP.Nucleo;

/**
 *
 * @author Mayara Amanda
 */
public class NucleoDAO extends DAO {

    public static List<Nucleo> obterNucleos()
            throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        Statement comando = null;
        List<Nucleo> nucleos = new ArrayList<Nucleo>();
        Nucleo nucleo = null;

        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from nucleo");
            while (rs.next()) {
                nucleo = instanciarNucleo(rs);
                nucleos.add(nucleo);
            }

        } finally {
            fecharConexao(conexao, comando);
        }
        return nucleos;
        
        

    }

    public static Nucleo instanciarNucleo(ResultSet rs)
            throws SQLException{
        Nucleo nucleo = new Nucleo(rs.getInt("codigoNucleo"),rs.getString("nomeNucleo"));
        
        return nucleo;
        
    }    
    
}
