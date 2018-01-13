//
//  Pizza.swift
//  Nova Mansao
//
//  Created by Guilherme Gatto on 13/01/18.
//  Copyright © 2018 Guilherme Gatto. All rights reserved.
//

import Foundation

class Pizza{
    
    var nome: String
    var ingredientes : [Ingrediente]
    var tipo: TipoPizza
    
    init(nome: String, ingredientes: [Ingrediente], tipo: TipoPizza){
        self.nome = nome
        self.ingredientes = ingredientes
        self.tipo = tipo
    }
    
}
