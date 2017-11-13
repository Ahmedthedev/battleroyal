//Cette classe permet de décrire un personnage. Il a un certain nombre de
//caractéristiques et à la possibilité d’attaquer et de se défendre face à un autre
//personnage.
//Attributs
//name : Nom du personnage
//health : Valeur minimale lors de l’initialisation 25 000. Ne peut pas être négatif
//hitChance : Correspond au pourcentage de réussite d’une attaque. Valeur
//aléatoire comprise entre 50 et 70. Cette valeur est fixée aléatoirement lors de
//l’initialisation
//Méthodes
//protect(valeurAttaque)
//Permet de se défendre lors d’une attaque. Valeur représentant 55% de valeur
//de l’attaque subit.
//attack(Character)
//Retirer chez l’adversaire la valeur du dégât de l’arme + 13%. Une valeur
//aléatoire comprise entre 0 et 100 est générée à chaque attaque. Si cette
//valeur est inférieure au « hitChance » alors l’attaque aboutie
import Foundation
import Cocoa

class Character  {
    
    public var name : String
    public var health : UInt
    public var maxLife : UInt
    public var hitChance : UInt = UInt(arc4random_uniform(70 - 50) + 50)
    public var weapon: W
    
   
    //Retirer chez l’adversaire la valeur du dégât de l’arme + 13%. Une valeur
    func damage(Character:Character) -> String {
        if(self.randomChara()) {
            var weaponVal = Character.weapon.damage() * 1.3
            var str = ""
            if(protect()) {
                weaponVal = (weaponVal/2)
                str += "\nmais \(Character.name) à réussi à ce défendre"
            } else {
                str += "\n\(Character.name) ne réussit pas à ce défendre"
            }
            if(Character.health > Int(weaponVal)) {
                Character.health -= UInt(weaponVal)
            }else {
                return "-1"
            }
            //avatar   vient d'attaquer   ahmed  vient de perdre 230.30293 de vie, il ne reste plus que  25769.69707  à  ahmed
            return "\(self.name) attaque -> \(Character.name)\(str)\n\(Character.name) perd\n\(UInt(weaponVal)) de vie\n il ne reste plus que \(Character.health) soit \(UInt((Character.health * 100) / self.maxLife))%  à  \(Character.name)\n\n"
        }
        return "l'attaque de \(self.name) sur \(Character.name) n'a pas aboutie\n\n";
    }
    
    //Permet de se défendre lors d’une attaque. Valeur représentant 55% de valeur
    //de l’attaque subit.
    func protect() -> Bool {
        let rd = arc4random_uniform(100)
        if(rd > 50) {
            return true
        }
        return false;
    }
    //aléatoire comprise entre 0 et 100 est générée à chaque attaque. Si cette
    //valeur est inférieure au « hitChance » alors l’attaque aboutie
    func randomChara() -> Bool {
        let rd = arc4random_uniform(100)
        if(rd < self.hitChance) {
            return true
        }
        return false;
    }
    
    //name : Nom du personnage
    //health : Valeur minimale lors de l’initialisation 25 000. Ne peut pas être négatif
    //hitChance : Correspond au pourcentage de réussite d’une attaque. Valeur
    //aléatoire comprise entre 50 et 70. Cette valeur est fixée aléatoirement lors de
    //l’initialisation
    
    init(name:String,health:UInt, w:Weapon ,maxLife:UInt) {
        if(health < 25000) {
            print(health)
            fatalError()
        }
        self.maxLife = maxLife
        self.name = name
        self.health = health
        self.weapon = w as! W
        
    }
}
