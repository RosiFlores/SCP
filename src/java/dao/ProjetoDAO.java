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
public class ProjetoDAO extends DAO {

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
            throws SQLException {
        Projeto projeto = new Projeto(rs.getInt("codigo"), rs.getString("titulo"));
        
        return projeto;

    }

    public static void gravar(Projeto projeto) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        Statement comando = null;
        String stringSQL;
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            stringSQL = "insert into projeto(codigo, titulo, cronograma, cargaHoraria, palavrachave, duracao, dataInicio, dataTermino, valorFinanciamento, dataFinanciamento, programa, agenciaFomento, quantidadeBolsa, instituicaoParceira, coOrientador, grupoPesquisaCNPq)"
                    + "values('" + projeto.getCodigo() + "',"                                              
                    + projeto.getTitulo()+","
                    + projeto.getCronograma()+","
                    + projeto.getCargaHoraria()+","
                    + projeto.getPalavraChave()+","
                    + projeto.getDuracao()+","
                    + projeto.getDataInicio()+","
                    + projeto.getDataTermino()+","
                    + projeto.getValorfinanciamento()+","
                    + projeto.getDataFinanciamento()+","
                    + projeto.getPrograma()+","
                    + projeto.getAgenciaFomento()+","
                    + projeto.getQuantidadeBolsista()+","
                    + projeto.getInstituicaoParceira()+","
                    + projeto.getCoOrientador()+","
                    + projeto.getGrupoPesquisaCNPq()+"";

            stringSQL = stringSQL + ")";
            comando.execute(stringSQL);
        } finally {
            fecharConexao(conexao, comando);
        }

    }

}
