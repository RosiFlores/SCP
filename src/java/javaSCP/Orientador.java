package javaSCP;

import dao.OrientadorDAO;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Mayara Amanda
 */
public class Orientador extends Pessoa{

    
    private int matricula;
    private String homepageLattes;
    private String setor;

    public Orientador( int matricula, String homepageLattes) {
        
        this.matricula = matricula;
        this.homepageLattes = homepageLattes;
        
    }

    public Orientador(int matricula) {
          this.matricula = matricula;
    }    
    public int getMatricula() {
        return matricula;
    }    
    public void setMatricula(int matricula) {
        this.matricula = matricula;
    }
    public String getHomepageLattes() {
        return homepageLattes;
    }
    public void setHomepageLattes(String homepageLattes) {
        this.homepageLattes = homepageLattes;
    }
    public String getSetor() {
        return setor;
    }
    public void setSetor(String setor) {
        this.setor = setor;
    }    

    
    public static List<Orientador> obterOrientadores()
            throws ClassNotFoundException, SQLException {
        return OrientadorDAO.obterOrientadores();
    }
}
