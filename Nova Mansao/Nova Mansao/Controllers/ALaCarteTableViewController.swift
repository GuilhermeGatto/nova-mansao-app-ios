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
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.shadowImage = UIImage()
        
        ALaCarteFireBase.getAlaCarte { (aLaCarte) in
            self.espetoes = aLaCarte
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
        // #warning Incomplete implementation, return the number of rows
        return espetoes.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "alacartecell", for: indexPath) as! PizzaTableViewCell

        if indexPath.section == 0{
            let espetao = espetoes[indexPath.row]
            cell.nome.text = espetao.nome
            cell.precoBroto.text = "R$ \(espetao.precoMeia)"
            cell.precoGrande.text = "R$ \(espetao.precoInteira)"
            cell.ingredientes.text = ""
            for ing in espetao.ingredientes{
                cell.ingredientes.text?.append("\(ing.nome), ")
            }
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
        return "Comida Nova Mansão"
    }

   
}
