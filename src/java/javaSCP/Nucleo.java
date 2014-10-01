package javaSCP;

import dao.NucleoDAO;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Mayara Amanda
 */
public class Nucleo {
 
    private int codigo;
    private String nome;

    
     public Nucleo(int codigo, String nome) {
        this.codigo = codigo;
        this.nome = nome;
    }
    
    public int getCodigo() {
               
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    
    public static List<Nucleo> obterNucleos()
            throws ClassNotFoundException, SQLException {
        return NucleoDAO.obterNucleos();
    }

    }
    

