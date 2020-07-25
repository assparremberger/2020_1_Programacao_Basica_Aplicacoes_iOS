//
//  Estado.swift
//  Aula03
//
//  Created by Adalto Selau Sparremberger on 25/07/2020.
//  Copyright © 2020 Prof. Adalto. All rights reserved.
//

import UIKit

class Estado{
    var nome: String!
    var sigla: String!
    var bandeira: UIImage
    
    init(nome: String, sigla: String, bandeira: UIImage) {
        self.nome = nome
        self.sigla = sigla
        self.bandeira = bandeira
    }
}
