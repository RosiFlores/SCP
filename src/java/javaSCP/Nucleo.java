package javaSCP;

import dao.NucleoDAO;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Mayara Amanda
 */
public class Nucleo {
 
    private int codigoNucleo;
    private String nomeNucleo;

    
     public Nucleo(int codigoNucleo, String nomeNucleo) {
        this.codigoNucleo = codigoNucleo;
        this.nomeNucleo = nomeNucleo;
    }
    
    public int getCodigoNucleo() {
               
        return codigoNucleo;
    }

    public void setCodigoNucleo(int codigoNucleo) {
        this.codigoNucleo = codigoNucleo;
    }

    public String getNomeNucleo() {
        return nomeNucleo;
    }

    public void setNomeNucleo(String nomeNucleo) {
        this.nomeNucleo = nomeNucleo;
    }
    
    public static List<Nucleo> obterNucleos()
            throws ClassNotFoundException, SQLException {
        return NucleoDAO.obterNucleos();
    }

    }
    

