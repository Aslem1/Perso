
package org.aslem.tp4_maison;

public class Truqueur extends Magicien {
    int malice;

    //Getter
    public int getMalice() {
        return malice;
    }

    //Setter
    public void setMalice(int malice) {
        this.malice = malice;
    }

    public Truqueur(int vie, int magie, int malice) {
        this.vie = vie;
        this.magie = magie;
        this.malice = malice;
        Personnage.nbPers++;
    }
    
    @Override
    public int attaque() {
        double A = Math.random()*this.vie + Math.random()*this.magie + Math.random()*this.malice;
        return (int) A;
    }
}
