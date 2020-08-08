//
//  ViewController.swift
//  AppSwipe
//
//  Created by Adalto Selau Sparremberger on 08/08/2020.
//  Copyright © 2020 Prof. Adalto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let direita = UISwipeGestureRecognizer(target: self, action: #selector( direcao(sender:) ))
        direita.direction = .right
        
        let esquerda = UISwipeGestureRecognizer(target: self, action: #selector( direcao(sender:) ))
        esquerda.direction = .left
        
        let acima = UISwipeGestureRecognizer(target: self, action: #selector( direcao(sender:) ))
        acima.direction = .up
        
        let abaixo = UISwipeGestureRecognizer(target: self, action: #selector( direcao(sender:) ))
        abaixo.direction = .down
        
        view.addGestureRecognizer(direita)
        view.addGestureRecognizer(esquerda)
        view.addGestureRecognizer(acima)
        view.addGestureRecognizer(abaixo)
        
    }
    
    
    @objc func direcao(sender: UISwipeGestureRecognizer){
        
        if sender.state == .ended {
            
            switch sender.direction {
                case .right :
                    self.performSegue(withIdentifier: "segueDireita", sender: self)
                    print("Direita")
                case .left :
                    self.performSegue(withIdentifier: "segueEsquerda", sender: self)
                    print("Esquerda")
                case .up :
                    self.view.backgroundColor = .yellow
                    print("Acima")
                case .down :
                    self.view.backgroundColor = .green
                    print("Abaixo")
                default:
                    self.view.backgroundColor = .white
                
            }
            
        }
        
    }
    


}

