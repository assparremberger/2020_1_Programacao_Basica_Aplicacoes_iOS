//
//  ProdutosTableViewController.swift
//  Catalogo
//
//  Created by Adalto Selau Sparremberger on 01/08/2020.
//  Copyright © 2020 Prof. Adalto. All rights reserved.
//

import UIKit
import CoreData

class ProdutosTableViewController: UITableViewController {
    
    var produtos: [NSManagedObject] = []
    
    var context: NSManagedObjectContext!

    override func viewDidLoad() {
        super.viewDidLoad()

        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        context = appDelegate.persistentContainer.viewContext
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        listarProdutos()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.produtos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
         let cell = tableView.dequeueReusableCell(withIdentifier: "celulaProduto", for: indexPath)
        
      //  let cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "celulaProduto")
        
        
        

        let prod = self.produtos[ indexPath.row ]
        let preco = prod.value(forKey: "preco") as? Float
        let stringPreco: String = String(preco!)
        cell.detailTextLabel?.text = stringPreco
        
        let stringNome = prod.value(forKey: "nome") as? String
        var textoNome = stringNome! + " - R$ " + stringPreco
        cell.textLabel?.text =  textoNome
        
        

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            let produto = self.produtos[ indexPath.row ]
            let nome = produto.value(forKey: "nome") as! String
            let mensagem = "Confirma a exclusão so produto " + nome
            
            let alerta = UIAlertController(title: "Excluir Produto", message: mensagem, preferredStyle: .actionSheet)
            
            let btnSim = UIAlertAction(title: "Sim", style: .destructive ) { alert -> Void in
                self.excluir(posicao: indexPath.row)
            }
            
            let btnNao = UIAlertAction(title: "Não", style: .cancel, handler: nil)
            
            alerta.addAction(btnSim)
            alerta.addAction(btnNao)
            
            present( alerta, animated: true, completion: nil)
            
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    
    func excluir( posicao: Int){
        let produto = self.produtos[ posicao ]
        self.context.delete( produto )
        
        //    self.produtos.remove(at: indexPath.row)
        //    self.tableView.deleteRows(at: [indexPath], with: .fade)
        
        do{
            try self.context.save()
            
            listarProdutos()
            self.tableView.reloadData()
            
        }catch let erro as NSError{
            print("Erro ao tentar excluir: \(erro.description)")
        }
    }

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "segueEditar" {
                      if let indexPath = tableView.indexPathForSelectedRow {
                         let prod = self.produtos[indexPath.row]
            let telaFormulario = segue.destination as! FormularioViewController
                          telaFormulario.produto = prod
                
                       }
           
          //  telaFormulario.produto = sender as? NSManagedObject
          //  print( "Oi")
        }
        
    }
 
    
    
    func listarProdutos(){
        let requestProdutos = NSFetchRequest<NSFetchRequestResult>(entityName: "Produto")
        
        let ordemAZ = NSSortDescriptor(key: "nome", ascending: true)
        let ordemPrecoMaior = NSSortDescriptor(key: "preco", ascending: false)
        
    //    let whereNome = NSPredicate(format: "nome = %@", "Fanta" )
        let whereNome = NSPredicate(format: "nome contains [c] %@", "fanta" )
        let wherePreco = NSPredicate(format: "preco > %@", "5")
        
        let whereCombinado = NSCompoundPredicate(orPredicateWithSubpredicates: [whereNome, wherePreco])
        
        requestProdutos.sortDescriptors = [ordemAZ , ordemPrecoMaior]
        requestProdutos.predicate = whereCombinado
        
        
        do{
            let produtosRecuperados = try context.fetch(requestProdutos)
            self.produtos = produtosRecuperados as! [NSManagedObject]
            self.tableView.reloadData()
        }catch let erro as NSError{
            print("Erro ao listar: \(erro.description)")
        }
    }
    
    
    

}
