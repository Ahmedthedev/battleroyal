//Cette interface permet de décrire une arme de manière générale pour spécifier les
//méthodes qui devront être implémentées par les différentes déclinaisons d’armes.
//Une arme possède un certain nombre de caractéristiques ainsi que des comportements
//permettant de calculer sa durée de vie, ses dégâts, et son bonus.
//Attributs
//Sous forme de getter / setter
//name : nom de l’arme
//height : hauteur de l’arme
//width : largeur de l’arme
//weight : poids de l’arme en grammes
//price : prix de l’arme
//Méthodes
//duration()
//Renvoie la durée de vie de l’arme en année, valeur forcément supérieure à 0
//damage()
//Dégât de l’arme, valeur forcément supérieure à 0
//bonus()
//Bonus de l’arme, forcément positif


//Un pistolet est une arme particulière ayant en plus un nombre de balles. Ce
//nombre de balles a une influence sur ses méthodes
//Attributs
//bullets : Nombre de balles contenu dans son chargeur
//Méthodes
//duration()
//Durée de vie de l’arme calculée par le prix divisé par le poids et le tout
//multiplié par les dégâts
//damage()
//Est le rapport entre le poids et la multiplication entre la hauteur et la largeur.
//Le bonus s’ajoute à cette valeur
//bonus()
//Correspond à une multiplication entre le nombre de balles et le poids, le tout
//divisé par le poids modulo le nombre de balles


import Foundation

//const variable
let highLife = 40000
let lowLife = 26000

//init
var arrayChara : [Character] = []
var arrayArme : [Weapon] = []
var i = 1
var vieMax = 0

//random weapon creation
for _ in 1...10 {
    
    arrayArme.append(W(name:"pistolet",
                       height:Double(arc4random_uniform(15)+5) ,
                       width : Double(arc4random_uniform(15)+5),
                       weight : Double(arc4random_uniform(15)+5),
                       price: Double(arc4random_uniform(1000-100)+100),
                       bullets:UInt(arc4random_uniform(15)+5),
                       dure:Double(arc4random_uniform(15)+5)))
}

for _ in 1...10 {
    vieMax = Int(Double(arc4random_uniform(UInt32((highLife))) + UInt32(lowLife)))
    
    arrayChara.append(Character(name: "Personnage\(i)",
        health: UInt(UInt(vieMax)),
        w: arrayArme[Int(arc4random_uniform(9))],
        maxLife: UInt(vieMax*2)))
    i+=1
}

var j = 0
var rd1 = 0
var rd2 = 0
var str = ""

while(true) {
        rd1 = Int(arc4random_uniform(UInt32(arrayChara.count)))
        rd2 = Int(arc4random_uniform(UInt32(arrayChara.count)))
        if (rd1 != rd2 ) {
            print("ROUND \(j)\n")
            str = (arrayChara[rd1].damage(Character: arrayChara[rd2]))
            if(str == "-1") {
                print("\(arrayChara[rd2].name) est eliminer")
                arrayChara.remove(at: rd2)
            }else {
                print(str)
            }
            j += 1
        }
    if(arrayChara.count == 1) {
        break;
    }
    
}

for arr in arrayChara {
    print("\n\(arr.name) wins")
}




