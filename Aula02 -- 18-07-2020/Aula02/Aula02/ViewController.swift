//
//  ViewController.swift
//  Aula02
//
//  Created by Adalto Selau Sparremberger on 18/07/2020.
//  Copyright © 2020 Prof. Adalto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let botaoFechar: UIButton = UIButton(frame: CGRect(x: 16, y: 16, width: 100, height: 30 ))
    
    var viewTela: UIView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        botaoFechar.setTitle("Fechar", for: .normal)
        botaoFechar.setTitleColor(.black, for:  .normal)
        
        viewTela = UIView(frame: CGRect(x: 16, y: 350, width: 200, height: 100))
        viewTela.layer.cornerRadius = 15
        viewTela.backgroundColor = .yellow
        
        viewTela.addSubview( botaoFechar )

        self.view.addSubview( viewTela )
        
    }


}

