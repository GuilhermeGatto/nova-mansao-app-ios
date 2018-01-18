//
//  SobreTableViewController.swift
//  Nova Mansao
//
//  Created by Guilherme Gatto on 15/01/18.
//  Copyright © 2018 Guilherme Gatto. All rights reserved.
//

import UIKit

class SobreTableViewController: UITableViewController {

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
            return 3
        }
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sobrecell", for: indexPath) as! SobreTableViewCell

        if indexPath.section == 1 {
            cell.texto.text = "Rua Vereador Diego Pires de Campos, 300 Vila São Jorge - São Vicente"
        }else if indexPath.section == 2 {
            cell.texto.text = "+55 (13) 3333-3333"
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
