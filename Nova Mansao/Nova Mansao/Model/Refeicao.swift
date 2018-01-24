//
//  Refeicao.swift
//  Nova Mansao
//
//  Created by Guilherme Gatto on 24/01/18.
//  Copyright © 2018 Guilherme Gatto. All rights reserved.
//

import Foundation
import UIKit

class Refeicao {
    
    var cod: String
    var preco: Double
    var nome: String
    var ingredientes: [Ingrediente]
    var tipo: tipoRefeicao
    
    init(cod: String, nome: String, ingredientes: [Ingrediente], preco: Double, tipo: tipoRefeicao) {
        self.cod = cod
        self.nome = nome
        self.ingredientes = ingredientes
        self.preco = preco
        self.tipo = tipo
    }
    
}
