/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaSCP;

import dao.CursoDAO;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Angelo
 */
public class Curso {

    private String nome;
    private int codigo;
    private String professor;
    private String matriculaProfessorCoordenador;

    public Curso(String nome, int codigo, String professor, String matriculaProfessorCoordenador) {
        this.nome = nome;
        this.codigo = codigo;
        this.professor = professor;
        this.matriculaProfessorCoordenador = matriculaProfessorCoordenador;
    }

    public Curso( int codigo ,String nome) {
        this.nome = nome;
        this.codigo = codigo;
    }
    

    

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getProfessor() {
        return professor;
    }

    public void setProfessor(String professor) {
        this.professor = professor;
    }

    public String getMatriculaProfessorCoordenador() {
        return matriculaProfessorCoordenador;
    }

    public void setMatriculaProfessorCoordenador(String matriculaProfessorCoordenador) {
        this.matriculaProfessorCoordenador = matriculaProfessorCoordenador;
    }


    public static List<Curso> obterCursos()
            throws ClassNotFoundException, SQLException {
        return CursoDAO.obterCursos();
    }

}