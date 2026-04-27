/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import View.TelaCadastro;
import View.TelaInicial;

/**
 *
 * @author Gustavo
 */
public class NavegacaoController {
    private TelaInicial telaInicial;
    private TelaCadastro telaCadastro;

    public void iniciar() {
        telaInicial = new TelaInicial(this);
        telaInicial.setVisible(true);
    }

    public void abrirCadastro() {
        telaInicial.dispose();

        telaCadastro = new TelaCadastro(this);
        telaCadastro.setVisible(true);
    }

    public void voltarLogin() {
        telaCadastro.dispose();

        telaInicial = new TelaInicial(this);
        telaInicial.setVisible(true);
    }
}
