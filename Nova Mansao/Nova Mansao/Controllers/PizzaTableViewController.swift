//
//  PizzaTableViewController.swift
//  Nova Mansao
//
//  Created by Guilherme Gatto on 13/01/18.
//  Copyright © 2018 Guilherme Gatto. All rights reserved.
//

import UIKit

class PizzaTableViewController: UITableViewController {
    
    var pizzaP1: [Pizza] = []
    var pizzaP2: [Pizza] = []
    var pizzaP3: [Pizza] = []
    var pizzaP4: [Pizza] = []
    var pizzaE1: [Pizza] = []
    var pizzaE2: [Pizza] = []
    var pizzaD: [Pizza] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.shadowImage = UIImage()
        
        PizzaFireBase.getPizzas { (pizzasBD) in
            self.pizzaP1 = []
            self.pizzaP2 = []
            self.pizzaP3 = []
            self.pizzaP4 = []
            self.pizzaE1 = []
            self.pizzaE2 = []
            self.pizzaD = []
            for pizza in pizzasBD {
    
                if pizza.tipo == TipoPizza.promocao1 {
                    self.pizzaP1.append(pizza)
                    
                }else if pizza.tipo == TipoPizza.promocao2 {
                    self.pizzaP2.append(pizza)
                    
                }else if pizza.tipo == TipoPizza.promocao3 {
                    self.pizzaP3.append(pizza)
                    
                }else if pizza.tipo == TipoPizza.promocao4 {
                    self.pizzaP4.append(pizza)
                    
                }else if pizza.tipo == TipoPizza.especial1 {
                    self.pizzaE1.append(pizza)
                    
                }else if pizza.tipo == TipoPizza.especial2 {
                    self.pizzaE2.append(pizza)
                    
                }else if pizza.tipo == TipoPizza.doce {
                    self.pizzaD.append(pizza)
                    
                }
                
            }
            
            
            self.tableView.reloadData()
        }
        
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 7
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            
            return pizzaP1.count
        }else if section == 1{
            return pizzaP2.count
        }else if section == 2{
            return pizzaP3.count
        }else if section == 3{
            return pizzaP4.count
        }else if section == 4{
            return pizzaE1.count
        }else if section == 5{
            return pizzaE2.count
        }else if section == 6{
            return pizzaD.count
        }else{
            return 0
        }
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pizzacell", for: indexPath) as! PizzaTableViewCell

        if indexPath.section == 0 {
            
            if pizzaP1.count == 0 {
                cell.nome.text = "Carregando..."
            }else{
                
                let pizza = pizzaP1[indexPath.row]
                cell.nome.text = pizza.nome
                cell.ingredientes.text = ""
                cell.precoBroto.text = "R$ \(pizza.precoBroto)"
                cell.precoGrande.text = "R$ \(pizza.precoGrande)"
                for ing in pizza.ingredientes{
                    cell.ingredientes.text?.append("\(ing.nome), ")
                }
            }
        }else if indexPath.section == 1 {
            
            if pizzaP2.count == 0 {
                cell.nome.text = "Carregando..."
            }else{
                
                let pizza = pizzaP2[indexPath.row]
                cell.nome.text = pizza.nome
                cell.ingredientes.text = ""
                for ing in pizza.ingredientes{
                    cell.ingredientes.text?.append("\(ing.nome), ")
                }
            }
        }else if indexPath.section == 2 {
            
            if pizzaP3.count == 0 {
                cell.nome.text = "Carregando..."
            }else{
                
                let pizza = pizzaP3[indexPath.row]
                cell.nome.text = pizza.nome
                cell.ingredientes.text = ""
                for ing in pizza.ingredientes{
                    cell.ingredientes.text?.append("\(ing.nome), ")
                }
            }
        }else if indexPath.section == 3 {
            
            if pizzaP4.count == 0 {
                cell.nome.text = "Carregando..."
            }else{
                
                let pizza = pizzaP4[indexPath.row]
                cell.nome.text = pizza.nome
                cell.ingredientes.text = ""
                for ing in pizza.ingredientes{
                    cell.ingredientes.text?.append("\(ing.nome), ")
                }
            }
        }else if indexPath.section == 4 {
            
            if pizzaE1.count == 0 {
                cell.nome.text = "Carregando..."
            }else{
                
                let pizza = pizzaE1[indexPath.row]
                cell.nome.text = pizza.nome
                cell.ingredientes.text = ""
                for ing in pizza.ingredientes{
                    cell.ingredientes.text?.append("\(ing.nome), ")
                }
            }
        }else if indexPath.section == 5 {
            
            if pizzaE2.count == 0 {
                cell.nome.text = "Carregando..."
            }else{
                
                let pizza = pizzaE2[indexPath.row]
                cell.nome.text = pizza.nome
                cell.ingredientes.text = ""
                for ing in pizza.ingredientes{
                    cell.ingredientes.text?.append("\(ing.nome), ")
                }
            }
        }else if indexPath.section == 6 {
            
            if pizzaD.count == 0 {
                cell.nome.text = "Carregando..."
            }else{
                
                let pizza = pizzaD[indexPath.row]
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
