package dao;

import static dao.DAO.fecharConexao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javaSCP.Funcionario;

/**
 *
 * @author Mayara Amanda
 */
public class FuncionarioDAO extends DAO {

    public static List<Funcionario> obterFuncionarios()
            throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        Statement comando = null;
        List<Funcionario> funcionarios = new ArrayList<Funcionario>();
        Funcionario funcionario = null;

        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from funcionario");
            while (rs.next()) {
                funcionario = instanciarFuncionario(rs);
                funcionarios.add(funcionario);
            }

        } finally {
            fecharConexao(conexao, comando);
        }
        return funcionarios;

    }

    public static Funcionario instanciarFuncionario(ResultSet rs)
            throws SQLException {
        Funcionario funcionario = new Funcionario(rs.getInt("matricula"));

        return funcionario;

    }

    public static void gravar(Funcionario funcionario) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        Statement comando = null;
        String stringSQL;
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            stringSQL = "insert into funcionario(matricula)"
                    + "values('" + funcionario.getMatricula() + "'";

            stringSQL = stringSQL + ")";
            comando.execute(stringSQL);
        } finally {
            fecharConexao(conexao, comando);
        }

    }
}
