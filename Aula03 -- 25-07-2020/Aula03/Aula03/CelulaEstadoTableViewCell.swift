//
//  CelulaEstadoTableViewCell.swift
//  Aula03
//
//  Created by Adalto Selau Sparremberger on 25/07/2020.
//  Copyright © 2020 Prof. Adalto. All rights reserved.
//

import UIKit

class CelulaEstadoTableViewCell: UITableViewCell {

    @IBOutlet weak var bandeira: UIImageView!
    @IBOutlet weak var sigla: UILabel!
    @IBOutlet weak var nome: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
