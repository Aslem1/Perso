
package org.aslem.tp4_maison;

public class Enchanteur extends Magicien {
    int aura;

    //Getter
    public int getAura() {
        return aura;
    }

    //Setter
    public void setAura(int aura) {
        this.aura = aura;
    }

    //Constructeur
    public Enchanteur(int vie, int magie, int aura) {
        this.vie = vie;
        this.magie = magie;
        this.aura = aura;
        Personnage.nbPers++;
    }
    
    @Override
    public int attaque() {
        double A = Math.random()*this.vie + Math.random()*this.magie + Math.random()*this.aura;
        return (int) A;
    }
}
