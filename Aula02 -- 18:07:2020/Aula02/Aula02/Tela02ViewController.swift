//
//  Tela02ViewController.swift
//  Aula02
//
//  Created by Adalto Selau Sparremberger on 18/07/2020.
//  Copyright © 2020 Prof. Adalto. All rights reserved.
//

import UIKit

class Tela02ViewController: UIViewController {

    @IBOutlet weak var txtNome: UITextField!
    
    @IBOutlet weak var temFilhos: UISwitch!
    
    @IBOutlet weak var sliderRed: UISlider!
    
    @IBOutlet weak var sliderGreen: UISlider!
    
    @IBOutlet weak var sliderBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
       
    }
    
    @IBAction func redAlterado(_ sender: Any) {
        
  //      let sliderVermelho: UISlider = sender as! UISlider
  //      sliderVermelho.value
        
        alterarCor()
    }
    
    @IBAction func greenAlterado(_ sender: Any) {
        alterarCor()
    }
    
    @IBAction func blueAlterado(_ sender: Any) {
        alterarCor()
    }
    
    func alterarCor(){
        let red = Float( sliderRed.value  )
        let green = Float( sliderGreen.value  )
        let blue = Float( sliderBlue.value )
        
        self.view.backgroundColor = UIColor(red: CGFloat(red) , green: CGFloat(green), blue: CGFloat(blue), alpha: CGFloat(1.0))
        
        
    }
    
    
    @IBAction func salvar(_ sender: Any) {
    }
    

    
    
}
