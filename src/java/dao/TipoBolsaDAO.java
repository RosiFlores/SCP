package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javaSCP.TipoBolsa;

/**
 *
 * @author Angelo
 */
public class TipoBolsaDAO extends DAO {

    public static List<TipoBolsa> obterTipoBolsas()
            throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        Statement comando = null;
        List<TipoBolsa> tipoBolsas = new ArrayList<TipoBolsa>();
        TipoBolsa tipoBolsa = null;

        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from tipobolsa");

            while (rs.next()) {
                tipoBolsa = instanciarTipoBolsa(rs);
                tipoBolsas.add(tipoBolsa);

            }

        } finally {
            fecharConexao(conexao, comando);
        }
        return tipoBolsas;

    }

    public static TipoBolsa instanciarTipoBolsa(ResultSet rs)
            throws SQLException {
        TipoBolsa tipoBolsa = new TipoBolsa(rs.getInt("codigo"), rs.getString("nome"));

        return tipoBolsa;

    }

    public static void gravar(TipoBolsa tipobolsa) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        Statement comando = null;
        String stringSQL;
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            stringSQL = "insert into tipobolsa(codigo, nome)"
                    + "values('" + tipobolsa.getCodigo() + "', "
                    + "" + tipobolsa.getNome() + ",";

            stringSQL = stringSQL + ")";
            comando.execute(stringSQL);
        } finally {
            fecharConexao(conexao, comando);
        }

    }
}
