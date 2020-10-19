
package org.aslem.tp4_maison;

public class Excalibur extends Guerrier{
    int agressivite;

    //Getter
    public int getAgressivite() {
        return agressivite;
    }

    //Setter
    public void setAgressivite(int agressivite) {
        this.agressivite = agressivite;
    }

    //Constructeur
    public Excalibur(int vie, int force, int agressivite) {
        this.vie = vie;
        this.force = force;
        this.agressivite = agressivite;
        Personnage.nbPers++;
    }
    
    @Override
    public int attaque() {
        double A = Math.random()*this.vie + Math.random()*this.force + Math.random()*this.agressivite;
        return (int) A;
    }
}
