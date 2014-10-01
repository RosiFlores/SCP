/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package javaSCP;

import java.util.Date;

/**
 *
 * @author Angelo
 */
public interface Pessoa {
    public String getNome();

    public void setNome(String nome);

    public Date getDataNascimento();

    public void setDataNascimento(Date dataNascimento);

    public String getEstadoCivil();

    public void setEstadoCivil(String estadoCivil);

    public String getNacionalidade();

    public void setNacionalidade(String nacionalidade);

    public String getUfNascimento();

    public void setUfNascimento(String ufNascimento);

    public String getNomeMae();

    public void setNomeMae(String nomeMae);

    public String getNomePai();

    public void setNomePai(String nomePai);

    public String getNaturalidade();

    public void setNaturalidade(String naturalidade);

    public String getGrupoSanguinio();

    public void setGrupoSanguinio(String grupoSanguinio);

    public String getFatorRH();

    public void setFatorRH(String fatorRH);

    public String getSexo();

    public void setSexo(String sexo);

    public String getNecessidadeEspecial();

    public void setNecessidadeEspecial(String necessidadeEspecial);

    public String getCor();

    public void setCor(String cor);

    public String getEscolaridade();

    public void setEscolaridade(String escolaridade);

    public String getRua();

    public void setRua(String rua);

    public int getNumero();

    public void setNumero(int numero);

    public String getComplemento();

    public void setComplemento(String complemento);

    public String getBairro();

    public void setBairro(String bairro);

    public String getCidade();

    public void setCidade(String cidade);

    public int getCep();

    public void setCep(int cep);

    public String getUf();

    public void setUf(String uf);

    public String getPais();

    public void setPais(String pais);

    public int getTelefone();

    public void setTelefone(int telefone);

    public String getEmail();

    public void setEmail(String email);

    public int getRg();

    public void setRg(int rg);

    public String getOrgaoExpedidor();

    public void setOrgaoExpedidor(String orgaoExpedidor);

    public int getTituloEleitor();

    public void setTituloEleitor(int tituloEleitor);

    public int getNumeroComprovanteMilitar();

    public void setNumeroComprovanteMilitar(int numeroComprovanteMilitar);
    
    
}
