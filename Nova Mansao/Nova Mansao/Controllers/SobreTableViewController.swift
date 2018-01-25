//
//  SobreTableViewController.swift
//  Nova Mansao
//
//  Created by Guilherme Gatto on 15/01/18.
//  Copyright © 2018 Guilherme Gatto. All rights reserved.
//

import UIKit

class SobreTableViewController: UITableViewController {

    
    var telefones = ["(13) 3561-3983", "(13) 3561-3984", "(13) 97404-4484"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.shadowImage = UIImage()

    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 2{
            return telefones.count
        }
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sobrecell", for: indexPath) as! SobreTableViewCell

        
        switch indexPath.section {
        case 0: cell.texto.text = "11h00 até 01h00"
        case 1: cell.texto.text = "Rua Vereador Diego Pires de Campos, 300 Vila São Jorge - São Vicente"
        case 2: cell.texto.text = telefones[indexPath.row]
            
        default:
            print("erro")
        }
       
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Horario de atendimento"
        }else if section == 1 {
            return "Onde estamos"
        }else{
            return "Nova Mansão"
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 1 {
            return 100
        }
        return 60
        
    }
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 1 {
            return 100
        }
        return 60
    }

}
