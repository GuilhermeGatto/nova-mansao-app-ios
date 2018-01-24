//
//  ALaCarte.swift
//  Nova Mansao
//
//  Created by Guilherme Gatto on 24/01/18.
//  Copyright © 2018 Guilherme Gatto. All rights reserved.
//

import Foundation
import UIKit

class ALaCarte{
    
    var cod: String
    var precoMeia: Double
    var precoInteira: Double
    var nome: String
    var ingredientes: [Ingrediente]
    var tipo: TipoALaCarte
    
    init(cod: String, nome: String, ingredientes: [Ingrediente], precoMeia: Double, precoInteira: Double, tipo: TipoALaCarte) {
        self.cod = cod
        self.nome = nome
        self.ingredientes = ingredientes
        self.precoMeia = precoMeia
        self.precoInteira = precoInteira
        self.tipo = tipo
    }
    
}
