//
//  PizzaTableViewController.swift
//  Nova Mansao
//
//  Created by Guilherme Gatto on 13/01/18.
//  Copyright © 2018 Guilherme Gatto. All rights reserved.
//

import UIKit

class PizzaTableViewController: UITableViewController {
    
    var pizzas : [Pizza] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.shadowImage = UIImage()
        
        pizzas.append(Pizza(nome: "Catupiry", ingredientes: [Ingrediente(nome: "catupiry"), Ingrediente(nome: "azeitona") ], tipo: .promocao1))
        pizzas.append(Pizza(nome: "Mussarela", ingredientes: [Ingrediente(nome: "mussarela"),Ingrediente(nome: "tomate"), Ingrediente(nome: "azeitona") ], tipo: .promocao2))
        pizzas.append(Pizza(nome: "Gratinada", ingredientes: [Ingrediente(nome: "catupiry"), Ingrediente(nome: "provolone") ], tipo: .promocao3))
        pizzas.append(Pizza(nome: "Mimosa", ingredientes: [Ingrediente(nome: "presunto"),Ingrediente(nome: "ovo"),Ingrediente(nome: "mussarela"), Ingrediente(nome: "azeitona") ], tipo: .promocao4))
        pizzas.append(Pizza(nome: "Portuguesa", ingredientes: [Ingrediente(nome: " presunto"),Ingrediente(nome: "palmito"),Ingrediente(nome: "ervilha"),Ingrediente(nome: "ovo"),Ingrediente(nome: "mussarela"),Ingrediente(nome: "cebola"), Ingrediente(nome: "azeitona") ], tipo: .especial1))
        pizzas.append(Pizza(nome: "Calabresa Super", ingredientes: [Ingrediente(nome: "mussarela"), Ingrediente(nome: "calabresa"),Ingrediente(nome: "ovo"),Ingrediente(nome: "catupiry"),Ingrediente(nome: "tomate"),Ingrediente(nome: "parmesão") ], tipo: .especial2))
         pizzas.append(Pizza(nome: "Romeu e Julieta", ingredientes: [Ingrediente(nome: " mussarela"), Ingrediente(nome: "goiabada") ], tipo: .doce))
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 7
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pizzacell", for: indexPath) as! PizzaTableViewCell

        
        for pizza in pizzas {
            if indexPath.section == pizza.tipo.rawValue - 1{
                cell.nome.text = pizza.nome
                cell.ingredientes.text = ""
                for ing in pizza.ingredientes{
                    cell.ingredientes.text?.append("\(ing.nome), ")
                }
            }
        }

        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "Promoção 1"
        }else if section == 1{
            return "Promoção 2"
        }else if section == 2{
            return "Promoção 3"
        }else if section == 3{
            return "Promoção 4"
        }else if section == 4{
            return "Especial 1"
        }else if section == 5{
            return "Especial 2"
        }else if section == 6{
            return "Doce"
        }else{
            return ""
        }
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
        
    }
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

}
