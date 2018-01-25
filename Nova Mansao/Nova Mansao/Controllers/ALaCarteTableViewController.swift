//
//  ALaCarteTableViewController.swift
//  Nova Mansao
//
//  Created by Guilherme Gatto on 24/01/18.
//  Copyright © 2018 Guilherme Gatto. All rights reserved.
//

import UIKit

class ALaCarteTableViewController: UITableViewController {

    var espetoes: [ALaCarte] = []
    var contraFiles: [ALaCarte] = []
    var picanhas: [ALaCarte] = []
    var filesMignon: [ALaCarte] = []
    var costelas: [ALaCarte] = []
    var frangos: [ALaCarte] = []
    var peixes: [ALaCarte] = []
    var saladas: [ALaCarte] = []
    var nordestinas: [ALaCarte] = []
    var porcoes: [ALaCarte] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.shadowImage = UIImage()
        
        ALaCarteFireBase.getAlaCarte { (aLaCarte) in

            self.espetoes = []
            self.contraFiles = []
            self.picanhas = []
            self.filesMignon = []
            self.costelas = []
            self.frangos = []
            self.peixes = []
            self.saladas = []
            self.nordestinas = []
            self.porcoes = []
            
            
            for laCarte in aLaCarte{
                switch laCarte.tipo.rawValue {
                case 0: self.espetoes.append(laCarte)
                case 1: self.contraFiles.append(laCarte)
                case 2: self.picanhas.append(laCarte)
                case 3: self.filesMignon.append(laCarte)
                case 4: self.costelas.append(laCarte)
                case 5: self.frangos.append(laCarte)
                case 6: self.porcoes.append(laCarte)
                case 7: self.peixes.append(laCarte)
                case 8: self.saladas.append(laCarte)
                case 9: self.nordestinas.append(laCarte)
                default:
                    print("Erro A La Carte")
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
        return 10
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return espetoes.count
        case 1: return self.contraFiles.count
        case 2: return self.picanhas.count
        case 3: return self.filesMignon.count
        case 4: return self.costelas.count
        case 5: return self.frangos.count
        case 6: return self.porcoes.count
        case 7: return self.peixes.count
        case 8: return self.saladas.count
        case 9: return self.nordestinas.count
        default:
            return 0
        }
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "alacartecell", for: indexPath) as! PizzaTableViewCell

        
        switch indexPath.section {
        case 0:
            
            let espetao = espetoes[indexPath.row]
            cell.nome.text = espetao.nome
            cell.precoBroto.text = "R$ \(espetao.precoMeia)"
            cell.precoGrande.text = "R$ \(espetao.precoInteira)"
            cell.ingredientes.text = ""
            for ing in espetao.ingredientes{
                cell.ingredientes.text?.append("\(ing.nome), ")
            }
            
        case 1:
            let contra = contraFiles[indexPath.row]
            cell.nome.text = contra.nome
            cell.precoBroto.text = "R$ \(contra.precoMeia)"
            cell.precoGrande.text = "R$ \(contra.precoInteira)"
            cell.ingredientes.text = ""
            for ing in contra.ingredientes{
                cell.ingredientes.text?.append("\(ing.nome), ")
            }
        case 2:
            
            let comida = picanhas[indexPath.row]
            cell.nome.text = comida.nome
            cell.precoBroto.text = "R$ \(comida.precoMeia)"
            cell.precoGrande.text = "R$ \(comida.precoInteira)"
            cell.ingredientes.text = ""
            for ing in comida.ingredientes{
                cell.ingredientes.text?.append("\(ing.nome), ")
            }
            
        case 3:
            let comida = filesMignon[indexPath.row]
            cell.nome.text = comida.nome
            cell.precoBroto.text = "R$ \(comida.precoMeia)"
            cell.precoGrande.text = "R$ \(comida.precoInteira)"
            cell.ingredientes.text = ""
            for ing in comida.ingredientes{
                cell.ingredientes.text?.append("\(ing.nome), ")
            }
        case 4:
            let comida = costelas[indexPath.row]
            cell.nome.text = comida.nome
            cell.precoBroto.text = "R$ \(comida.precoMeia)"
            cell.precoGrande.text = "R$ \(comida.precoInteira)"
            cell.ingredientes.text = ""
            for ing in comida.ingredientes{
                cell.ingredientes.text?.append("\(ing.nome), ")
            }
        case 5:
            let comida = frangos[indexPath.row]
            cell.nome.text = comida.nome
            cell.precoBroto.text = "R$ \(comida.precoMeia)"
            cell.precoGrande.text = "R$ \(comida.precoInteira)"
            cell.ingredientes.text = ""
            for ing in comida.ingredientes{
                cell.ingredientes.text?.append("\(ing.nome), ")
            }
        case 6:
            let comida = porcoes[indexPath.row]
            cell.nome.text = comida.nome
            cell.precoBroto.text = "R$ \(comida.precoMeia)"
            cell.precoGrande.text = "R$ \(comida.precoInteira)"
            cell.ingredientes.text = ""
            for ing in comida.ingredientes{
                cell.ingredientes.text?.append("\(ing.nome), ")
            }
        case 7:
            let comida = peixes[indexPath.row]
            cell.nome.text = comida.nome
            cell.precoBroto.text = "R$ \(comida.precoMeia)"
            cell.precoGrande.text = "R$ \(comida.precoInteira)"
            cell.ingredientes.text = ""
            for ing in comida.ingredientes{
                cell.ingredientes.text?.append("\(ing.nome), ")
            }
        case 8:
            let comida = saladas[indexPath.row]
            cell.nome.text = comida.nome
            cell.precoBroto.text = "R$ \(comida.precoMeia)"
            cell.precoGrande.text = "R$ \(comida.precoInteira)"
            cell.ingredientes.text = ""
            for ing in comida.ingredientes{
                cell.ingredientes.text?.append("\(ing.nome), ")
            }
        case 9:
            let comida = nordestinas[indexPath.row]
            cell.nome.text = comida.nome
            cell.precoBroto.text = "R$ \(comida.precoMeia)"
            cell.precoGrande.text = "R$ \(comida.precoInteira)"
            cell.ingredientes.text = ""
            for ing in comida.ingredientes{
                cell.ingredientes.text?.append("\(ing.nome), ")
            }
        default:
            print("erro")
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
        case 0: return "Espetão"
        case 1: return "Contra filé"
        case 2: return "Picanha"
        case 3: return "Filé Mignon"
        case 4: return "Costela"
        case 5: return "Frango"
        case 6: return "Porção"
        case 7: return "Peixe"
        case 8: return "Salada"
        case 9: return "Nordestina"
        default:
            return "Nova Mansão"
        }
    }

   
}
