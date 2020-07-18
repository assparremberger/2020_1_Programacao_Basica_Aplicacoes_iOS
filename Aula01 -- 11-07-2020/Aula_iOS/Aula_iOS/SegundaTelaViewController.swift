//
//  SegundaTelaViewController.swift
//  Aula_iOS
//
//  Created by Adalto Selau Sparremberger on 11/07/2020.
//  Copyright © 2020 FSPOA. All rights reserved.
//

import UIKit

class SegundaTelaViewController: UIViewController {

    @IBOutlet weak var txtValor: UITextField!
    
    @IBOutlet weak var lblResultado: UILabel!
    
    @IBAction func calcular(_ sender: Any) {
  //      let valor = txtValor.text
  //      let v = Double(valor!)
        
        if let valor = txtValor.text {
            if let v = Double(valor){
                let result = v * 2
                lblResultado.text = String( result )
            }
        }
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
