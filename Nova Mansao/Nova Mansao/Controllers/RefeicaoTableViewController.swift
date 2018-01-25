//
//  RefeicaoTableViewController.swift
//  Nova Mansao
//
//  Created by Guilherme Gatto on 24/01/18.
//  Copyright © 2018 Guilherme Gatto. All rights reserved.
//

import UIKit

class RefeicaoTableViewController: UITableViewController {

    var fitness: [Refeicao] = []
    var executivo: [Refeicao] = []
    var individual: [Refeicao] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.shadowImage = UIImage()
        
        
        RefeicaoFirebase.getRefeicao { (refeicoes) in
            self.fitness = []
            self.executivo = []
            self.individual = []
            
            for refeicao in refeicoes{
                switch refeicao.tipo.rawValue {
                case 0: self.fitness.append(refeicao)
                case 1: self.executivo.append(refeicao)
                case 2: self.individual.append(refeicao)
                default:
                    print("erro")
                }
            }
            
            self.tableView.reloadData()
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return fitness.count
        case 1: return executivo.count
        case 2: return individual.count
        default:
            return 0
        }
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "refeicaocell", for: indexPath) as! PizzaTableViewCell
        
        
        switch indexPath.section {
        case 0:
            cell.nome.text = fitness[indexPath.row].nome
            cell.precoGrande.text = "R$ \(fitness[indexPath.row].preco)"
            cell.ingredientes.text = ""
            for ing in fitness[indexPath.row].ingredientes{
                cell.ingredientes.text?.append("\(ing.nome), ")
            }
        case 1:
            cell.nome.text = executivo[indexPath.row].nome
            cell.precoGrande.text = "R$ \(executivo[indexPath.row].preco)"
            cell.ingredientes.text = ""
            for ing in executivo[indexPath.row].ingredientes{
                cell.ingredientes.text?.append("\(ing.nome), ")
            }
        case 2:
            cell.nome.text = individual[indexPath.row].nome
            cell.precoGrande.text = "R$ \(individual[indexPath.row].preco)"
            cell.ingredientes.text = ""
            for ing in individual[indexPath.row].ingredientes{
                cell.ingredientes.text?.append("\(ing.nome), ")
            }
        default:
            print("xi")
        }
        
        
        
        
        
        
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
        
    }
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "Fitness"
        case 1: return "Executivo"
        case 2: return "Individual"
        default:
            return "Nova mansão"
        }
    }

}
