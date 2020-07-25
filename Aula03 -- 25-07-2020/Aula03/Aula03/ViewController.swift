//
//  ViewController.swift
//  Aula03
//
//  Created by Adalto Selau Sparremberger on 25/07/2020.
//  Copyright © 2020 Prof. Adalto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func loadView() {
        super.loadView()
        print("É executado apenas uma vez, quando a view não foi ainda carregada na memória." )
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("É executado apenas uma vez, após a view ser carregada na memória" )
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Executado antes da view ser adicionada na hierarquia.")
        print("É executado antes da view aparecer para o usuário." )
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("É executado apenas se o app estiver consumindo muita memória, com risco de travamento.")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("É executado no instante que a view aparece para o usuário." )
        //  criarAlerta()
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("É executado no instante que a view é removida da hierarquia, antes de sumir da tela." )
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("É executado no instante que a view não aparece mais na tela." )
    }
    
    @IBAction func abrirAlert(_ sender: Any) {
        let alerta = UIAlertController(title: "Atenção", message: "Alerta criado com sucesso!", preferredStyle: .alert)
        
        let btnOk = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        let btnExecutarOutraAcao = UIAlertAction(title: "Executar", style: .destructive) { alert -> Void in
            print("Usuário clicou no botão Executar")
        }
        
        alerta.addAction( btnOk )
        alerta.addAction( btnExecutarOutraAcao )
        
        present(alerta, animated: true, completion: nil)
        
    }


}

