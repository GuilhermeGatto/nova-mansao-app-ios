//
//  BebidaFireBase.swift
//  Nova Mansao
//
//  Created by Guilherme Gatto on 24/01/18.
//  Copyright © 2018 Guilherme Gatto. All rights reserved.
//

import Foundation
import Firebase

class BebidaFireBase {
    static var db = Database.database().reference()
    
    
    static func getBebida( answer: @escaping ([Bebida]) -> Void){
        db.child("Bebida").observe(.value, with: { (snapshot) in
            
            var bebidas : [Bebida] = []
            
            let snap = snapshot.value as? [String : Any] ?? [:]
            
            for bebida in snap{
                
                // get pizza cod
                let cod = bebida.key
                
                
                // get pizza name
                let bebidaAux = bebida.value as? [String : Any] ?? [:]
                let name = bebidaAux["nome"] as? String ?? "não encontrado"
                
          
                //get tipo
                let tipo = bebidaAux["tipo"] as? Int ?? 0
                
                // get valor
                
                let preco = bebidaAux["preco"] as? Double ?? 0.0
                
                bebidas.append(Bebida(cod: cod, nome: name, preco: preco, tipo: TipoBebida(rawValue: tipo)!))
                
                
            }
            
            answer(bebidas)
            
        })
        
    }
}
