//
//  PizzaFireBase.swift
//  Nova Mansao
//
//  Created by Guilherme Gatto on 22/01/18.
//  Copyright © 2018 Guilherme Gatto. All rights reserved.
//

import UIKit
import Firebase

class PizzaFireBase{
    
    static var db = Database.database().reference()
    
    
    static func getPizzas( answer: @escaping ([Pizza]) -> Void){
        db.child("Pizza").child("Promocao1").observe(.value, with: { (snapshot) in
            
            var pizzas : [Pizza] = []
            
            let snap = snapshot.value as? [String : Any] ?? [:]
            
            for pizza in snap{
                
                // get pizza cod
                let cod = pizza.key
                
                
                // get pizza name
                let pizzaAux = pizza.value as? [String : Any] ?? [:]
                let name = pizzaAux["nome"] as? String ?? "não encontrado"
        
                
                // get ingredientes
                
                let ingredientes = pizzaAux["ingredientes"] as? [String : Any] ?? [:]
                var ingPizza : [Ingrediente] = []
                
                for ingrediente in ingredientes {
                    var ing = ingrediente.value as? [String: Any] ?? [:]
                    ingPizza.append(Ingrediente(nome: ing["nome"] as! String))
                    
                }
                
                //get tipo
                let tipo = pizzaAux["tipo"] as? Int ?? 0
                
                // get valor
                
                let broto = pizzaAux["precobroto"] as? Double ?? 0.0
                let grande = pizzaAux["precogrande"] as? Double ?? 0.0
                
                pizzas.append(Pizza(cod: cod,nome: name , ingredientes: ingPizza, tipo: TipoPizza(rawValue: tipo)!,  precoBroto: broto, precoGrande: grande))
                
       
            }
            
            answer(pizzas)
          
        })
        
    }
    
}
