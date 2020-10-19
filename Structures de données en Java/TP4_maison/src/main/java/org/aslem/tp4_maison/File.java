
package org.aslem.tp4_maison;

import java.util.ArrayList;

public class File {
    //Nouvelle ArrayList liste
    ArrayList<Personnage> liste = new ArrayList();

    //Constructeur
    public File() {
        Personnage p1 = new Chevalier(50, 70, 70);
        Personnage p2 = new Excalibur(50, 40, 80);
        Magicien p3 = new Enchanteur(30, 50, 70);
        Truqueur p4 = new Truqueur(30, 50, 50);
        
        //Ajout des personnages dans la liste
        liste.add(p1);
        liste.add(p2);
        liste.add(p3);
        liste.add(p4);
        
        //Affichage du nombre de personnages
        System.out.println(Personnage.nbPers);
    }
    
}
