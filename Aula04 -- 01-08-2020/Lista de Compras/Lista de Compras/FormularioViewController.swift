//
//  ViewController.swift
//  Lista de Compras
//
//  Created by Adalto Selau Sparremberger on 01/08/2020.
//  Copyright © 2020 Prof. Adalto. All rights reserved.
//

import UIKit

class FormularioViewController: UIViewController {

    @IBOutlet weak var txtNome: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func salvar(_ sender: Any) {
        if let nome: String = txtNome.text {
            if !nome.isEmpty {
                let persistencia = Persistencia()
                persistencia.adicionar(nomeProduto: nome)
                txtNome.text = ""
                
                print( persistencia.listar() )
            }
        }
    }
    
    @IBAction func limpar(_ sender: Any) {
        txtNome.text = ""
    }
}

