//
//  BebidaTableViewController.swift
//  Nova Mansao
//
//  Created by Guilherme Gatto on 15/01/18.
//  Copyright © 2018 Guilherme Gatto. All rights reserved.
//

import UIKit

class BebidaTableViewController: UITableViewController {

    
    var refrigerante2l : [Bebida] = []
    var refrigerante600ml : [Bebida] = []
    var refrigeranteLata : [Bebida] = []
    var agua : [Bebida] = []
    var suco : [Bebida] = []
    var energetico : [Bebida] = []
    var cervejaLata : [Bebida] = []
    var cerveja600ml : [Bebida] = []
    var cervejaLongNeck : [Bebida] = []
    var drink : [Bebida] = []
    var dose : [Bebida] = []
    var garrafa : [Bebida] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.shadowImage = UIImage()
        
       
        BebidaFireBase.getBebida { (bebidas) in
            
            
            self.refrigerante2l = []
            self.refrigerante600ml = []
            self.refrigeranteLata = []
            self.agua = []
            self.suco = []
            self.energetico = []
            self.cervejaLata  = []
            self.cerveja600ml = []
            self.cervejaLongNeck = []
            self.drink = []
            self.dose = []
            self.garrafa = []
            
            for bebida in bebidas{
                
                switch bebida.tipo.rawValue {
                case 0: self.refrigerante2l.append(bebida)
                case 1: self.refrigerante600ml.append(bebida)
                case 2: self.refrigeranteLata.append(bebida)
                case 3: self.agua.append(bebida)
                case 4: self.suco.append(bebida)
                case 5: self.energetico.append(bebida)
                case 6: self.cervejaLata.append(bebida)
                case 7: self.cerveja600ml.append(bebida)
                case 8: self.cervejaLongNeck.append(bebida)
                case 9: self.drink.append(bebida)
                case 10: self.dose.append(bebida)
                case 11: self.garrafa.append(bebida)
                default:
                    print("oi")
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
        return 12
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return self.refrigerante2l.count
        case 1: return self.refrigerante600ml.count
        case 2: return self.refrigeranteLata.count
        case 3: return self.agua.count
        case 4: return self.suco.count
        case 5: return self.energetico.count
        case 6: return self.cervejaLata.count
        case 7: return self.cerveja600ml.count
        case 8: return self.cervejaLongNeck.count
        case 9: return self.drink.count
        case 10: return self.dose.count
        case 11: return self.garrafa.count
        default:
            return 0
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bebidacell", for: indexPath) as! BebidaTableViewCell
        
        switch indexPath.section {
        case 0:
            
            cell.nome.text = refrigerante2l[indexPath.row].nome
            cell.preco.text = U.converteReal(valor: refrigerante2l[indexPath.row].preco)
        case 1:
            cell.nome.text = refrigerante600ml[indexPath.row].nome
            cell.preco.text = U.converteReal(valor: refrigerante600ml[indexPath.row].preco)
        case 2:
            cell.nome.text = refrigeranteLata[indexPath.row].nome
            cell.preco.text = U.converteReal(valor: refrigeranteLata[indexPath.row].preco)
        case 3:
            cell.nome.text = agua[indexPath.row].nome
            cell.preco.text = U.converteReal(valor: agua[indexPath.row].preco)
        case 4:
            cell.nome.text = suco[indexPath.row].nome
            cell.preco.text = U.converteReal(valor: suco[indexPath.row].preco)
        case 5:
            cell.nome.text = energetico[indexPath.row].nome
            cell.preco.text = U.converteReal(valor: energetico[indexPath.row].preco)
        case 6:
            cell.nome.text = cervejaLata[indexPath.row].nome
            cell.preco.text = U.converteReal(valor: cervejaLata[indexPath.row].preco)
        case 7:
            cell.nome.text = cerveja600ml[indexPath.row].nome
            cell.preco.text = U.converteReal(valor: cerveja600ml[indexPath.row].preco)
        case 8:
            cell.nome.text = cervejaLongNeck[indexPath.row].nome
            cell.preco.text = U.converteReal(valor: cervejaLongNeck[indexPath.row].preco)
        case 9:
            cell.nome.text = drink[indexPath.row].nome
            cell.preco.text = U.converteReal(valor: drink[indexPath.row].preco)
        case 10:
            cell.nome.text = dose[indexPath.row].nome
            cell.preco.text = U.converteReal(valor: dose[indexPath.row].preco)
        case 11:
            cell.nome.text = garrafa[indexPath.row].nome
            cell.preco.text = U.converteReal(valor: garrafa[indexPath.row].preco)
        default:
            print("erro bebida cell")
        }
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "Refrigerante 2l"
        case 1: return "Refrigerante 600ml"
        case 2: return "Refrigerante lata"
        case 3: return "Água"
        case 4: return "Suco"
        case 5: return "Energetico"
        case 6: return "Cerveja lata"
        case 7: return "Cerveja 600ml"
        case 8: return "Cerveja Long Neck"
        case 9: return "Drink"
        case 10: return "Dose"
        case 11: return "Garrafa"
        default:
            return "Nova Mansão"
        }
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
        
    }
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

}
