//
//  ALaCarteFireBase.swift
//  Nova Mansao
//
//  Created by Guilherme Gatto on 24/01/18.
//  Copyright © 2018 Guilherme Gatto. All rights reserved.
//

import UIKit
import Firebase

class ALaCarteFireBase{
    
    static var db = Database.database().reference()
    
    
    static func getAlaCarte( answer: @escaping ([ALaCarte]) -> Void){
        db.child("ALaCarte").observe(.value, with: { (snapshot) in
            
            var laCarte : [ALaCarte] = []
            
            let snap = snapshot.value as? [String : Any] ?? [:]
            
            for alacarte in snap{
                
                // get pizza cod
                let cod = alacarte.key
                
                
                // get pizza name
                let alacarteAux = alacarte.value as? [String : Any] ?? [:]
                let name = alacarteAux["nome"] as? String ?? "não encontrado"
                
                
                // get ingredientes
                
                let ingredientes = alacarteAux["ingredientes"] as? [String : Any] ?? [:]
                var ingLaCarte : [Ingrediente] = []
                
                for ingrediente in ingredientes {
                    var ing = ingrediente.value as? [String: Any] ?? [:]
                    ingLaCarte.append(Ingrediente(nome: ing["nome"] as! String))
                    
                }
                
                //get tipo
                let tipo = alacarteAux["tipo"] as? Int ?? 0
                
                // get valor
                
                let meia = alacarteAux["precomeia"] as? Double ?? 0.0
                let inteira = alacarteAux["precointeira"] as? Double ?? 0.0
                
                laCarte.append(ALaCarte(cod: cod, nome: name, ingredientes: ingLaCarte , precoMeia: meia, precoInteira: inteira, tipo: TipoALaCarte(rawValue: tipo)!))
                
                
            }
            
            answer(laCarte)
            
        })
        
    }
    
}

