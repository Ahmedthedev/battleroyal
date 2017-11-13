//
//  weapon.swift
//  BattleRoyal
//
//  Created by apple on 27/10/2017.
//  Copyright © 2017 Ahmed. All rights reserved.
//

import Foundation

public protocol Weapon {
    var name : String { get set }
    var height : Double { get set }
    var width : Double { get set }
    var weight : Double { get set }
    var price: Double { get set }
    
     func duration() -> Double
     func damage() -> Double
     func bonus() -> Double
}

class W : Weapon {
    
    public var name : String
    public var height : Double
    public var width : Double
    public var weight : Double
    public var price: Double
    public var bullets : UInt
    public var dure : Double
    //Durée de vie de l’arme calculée par le prix divisé par le poids et le tout
    //multiplié par les dégâts
    func duration() -> Double {
        return self.dure / Double(self.price * self.damage())
    }
    //Est le rapport entre le poids et la multiplication entre la hauteur et la largeur.
    //Le bonus s’ajoute à cette valeur
    func damage() -> Double {
       return self.weight * self.width * self.height 
    }
    //Correspond à une multiplication entre le nombre de balles et le poids, le tout
    //divisé par le poids modulo le nombre de balles
    func bonus() -> Double {
        return ( Double(self.bullets) * self.weight ) / (Double(UInt(self.weight) % self.bullets))
    }
    
    init(name:String,height:Double,width : Double, weight : Double, price: Double, bullets:UInt,dure:Double) {
        self.name = name
        self.height = height
        self.width = width
        self.weight = weight
        self.price = price
        self.bullets = bullets
        self.dure = dure
    }
}


