
package org.aslem.tp4_maison;

public class Chevalier extends Guerrier{
    int courage;

    //Getter
    public int getCourage() {
        return courage;
    }

    //Setter
    public void setCourage(int courage) {
        this.courage = courage;
    }

    //Constructeur
    public Chevalier(int vie, int force, int courage) {
        this.vie = vie;
        this.force = force;
        this.courage = courage;
        Personnage.nbPers++;
    }

    @Override
    public int attaque() {
        double A = Math.random()*this.vie + Math.random()*this.force + Math.random()*this.courage;
        return (int) A;
    }
    
}
