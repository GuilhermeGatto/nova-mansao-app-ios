//
//  BebidaTableViewCell.swift
//  Nova Mansao
//
//  Created by Guilherme Gatto on 15/01/18.
//  Copyright © 2018 Guilherme Gatto. All rights reserved.
//

import UIKit

class BebidaTableViewCell: UITableViewCell {

    @IBOutlet weak var preco: UILabel!
    @IBOutlet weak var nome: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
