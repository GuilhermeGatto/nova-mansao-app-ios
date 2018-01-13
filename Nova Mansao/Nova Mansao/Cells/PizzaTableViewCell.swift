//
//  PizzaTableViewCell.swift
//  Nova Mansao
//
//  Created by Guilherme Gatto on 13/01/18.
//  Copyright © 2018 Guilherme Gatto. All rights reserved.
//

import UIKit

class PizzaTableViewCell: UITableViewCell {

    @IBOutlet weak var precoGrande: UILabel!
    @IBOutlet weak var precoBroto: UILabel!
    @IBOutlet weak var nome: UILabel!
    @IBOutlet weak var ingredientes: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
