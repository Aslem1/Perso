
package org.aslem.tp4_maison;

public abstract class Personnage {
    static int nbPers = 0;
    int vie;

    public int getVie() {
        return vie;
    }

    public void setVie(int vie) {
        this.vie = vie;
    }
    
    public abstract int attaque();
}
