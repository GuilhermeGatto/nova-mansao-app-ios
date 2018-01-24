//
//  Pizza.swift
//  Nova Mansao
//
//  Created by Guilherme Gatto on 13/01/18.
//  Copyright © 2018 Guilherme Gatto. All rights reserved.
//

import Foundation

class Pizza{
    
    var cod: String
    var nome: String
    var ingredientes : [Ingrediente]
    var tipo: TipoPizza
    var precoBroto: Double
    var precoGrande: Double
    
    init(nome: String, ingredientes: [Ingrediente], tipo: TipoPizza){
        self.nome = nome
        self.ingredientes = ingredientes
        self.tipo = tipo
        precoGrande = 0
        precoBroto = 0
        cod = "000"
    }
    
    init(cod: String, nome: String, ingredientes: [Ingrediente], tipo: TipoPizza, precoBroto: Double, precoGrande: Double){
        self.nome = nome
        self.ingredientes = ingredientes
        self.tipo = tipo
        self.precoGrande = precoGrande
        self.precoBroto = precoBroto
        self.cod = cod
    }
    
}
