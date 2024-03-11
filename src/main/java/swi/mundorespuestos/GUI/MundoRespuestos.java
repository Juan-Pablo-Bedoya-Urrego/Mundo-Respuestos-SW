/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Project/Maven2/JavaApp/src/main/java/${packagePath}/${mainClassName}.java to edit this template
 */

package swi.mundorespuestos.GUI;

import swi.mundorespuestos.DAO.CConexion;

/**
 *
 * @author Juan Pablo
 */
public class MundoRespuestos {

    public static void main(String[] args) {
        CConexion c = new CConexion();
        
        c.establecerConexion();
    }
}
