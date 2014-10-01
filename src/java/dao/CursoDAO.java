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
import javaSCP.Curso;

/**
 *
 * @author Mayara Amanda
 */
public class CursoDAO extends DAO {

    public static List<Curso> obterCursos()
            throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        Statement comando = null;
        List<Curso> cursos = new ArrayList<Curso>();
        Curso curso = null;

        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from curso");

            while (rs.next()) {
                curso = instanciarCurso(rs);
                cursos.add(curso);

            }

        } finally {
            fecharConexao(conexao, comando);
        }
        return cursos;

    }

    public static Curso instanciarCurso(ResultSet rs)
            throws SQLException {
        Curso curso = new Curso(rs.getInt("codigo"), rs.getString("nome"));

        return curso;

    }
    public static void gravar (Curso curso) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        Statement comando = null;
        String stringSQL;
 try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            stringSQL = "insert into curso(codCurso, nome, cargaHoraria, tipoCurso ,"
                    +"totalPeriodos, professorCoordenador)"
                    +"values (" + curso.getCodigo() + ", '"+ curso.getNome()
                   // +"'," + curso.getCargaHoraria() + ",'" + curso.getTipoCurso()
                   // +"'," + curso.getTotalPeriodos() + ","
                    ;
            if(curso.getProfessor()==null){
                stringSQL = stringSQL + null;
            }else{
                stringSQL = stringSQL + curso.getProfessor().getMatriculaProfessorCoordenador();
            }
            stringSQL=stringSQL + ")";
            comando.execute(stringSQL);
        }finally{
     fecharConexao(conexao, comando);
 }

    }
}
