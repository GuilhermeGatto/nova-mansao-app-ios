//
//  Bebida.swift
//  Nova Mansao
//
//  Created by Guilherme Gatto on 24/01/18.
//  Copyright © 2018 Guilherme Gatto. All rights reserved.
//

import Foundation

class Bebida {
    
    var cod: String
    var nome: String
    var preco: Double
    var tipo: TipoBebida
    
    init(cod: String, nome: String, preco: Double, tipo: TipoBebida) {
        self.cod = cod
        self.nome = nome
        self.preco = preco
        self.tipo = tipo
    }
    
}
