
package javaSCP;

import dao.TipoBolsaDAO;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Angelo
 */
public class TipoBolsa {
    private int codigo;
    private String nome;

    public TipoBolsa(int codigo, String nome) {
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
    
    public static List<TipoBolsa> obterTipoBolsas()
            throws ClassNotFoundException, SQLException {
        return TipoBolsaDAO.obterTipoBolsas();
    
}
}
