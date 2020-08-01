//
//  ViewController.swift
//  Catalogo
//
//  Created by Adalto Selau Sparremberger on 01/08/2020.
//  Copyright © 2020 Prof. Adalto. All rights reserved.
//

import UIKit
import CoreData

class FormularioViewController: UIViewController {

    @IBOutlet weak var txtNome: UITextField!
    @IBOutlet weak var txtPreco: UITextField!
    
    var context: NSManagedObjectContext!
    var produto: NSManagedObject!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        context = appDelegate.persistentContainer.viewContext
        
        if produto != nil {
            txtNome.text = produto.value(forKey: "nome") as! String
            let preco = produto.value(forKey: "preco") as? Float
            txtPreco.text = String( preco! )
        }
        
    }

    @IBAction func salvar(_ sender: Any) {
        if produto == nil {
            adicionar()
        }else{
            editar()
        }
    }
    
    func adicionar(){
        if let nome = txtNome.text {
            if nome != "" {
                let novoProduto = NSEntityDescription.insertNewObject(forEntityName: "Produto", into: context)
                novoProduto.setValue(nome, forKey: "nome")
                
                if let preco = txtPreco.text {
                    if preco.isEmpty {
                        novoProduto.setValue( 0.0 , forKey: "preco")
                    }else{
                        novoProduto.setValue( Float(preco), forKey: "preco")
                    }
                }
                
                do{
                    try context.save()
                }catch let erro as NSError{
                    print("Erro ao adicionar: \(erro.description)")
                }
                
            }
        }
    }
    
    func editar(){
        if let nome = txtNome.text {
            if nome != "" {
                produto.setValue( nome , forKey: "nome")
                
                if let preco = txtPreco.text {
                    if preco.isEmpty {
                        produto.setValue( 0.0 , forKey: "preco")
                    }else{
                        produto.setValue( Float(preco), forKey: "preco")
                    }
                }
                
                do{
                    try context.save()
                }catch let erro as NSError{
                    print("Erro ao editar: \(erro.description)")
                }
                
                
            }
            
        }
    }
    
    @IBAction func limpar(_ sender: Any) {
        txtNome.text = ""
        txtPreco.text = ""
    }
}

