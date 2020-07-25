//
//  EstadosTableViewController.swift
//  Aula03
//
//  Created by Adalto Selau Sparremberger on 25/07/2020.
//  Copyright © 2020 Prof. Adalto. All rights reserved.
//

import UIKit

class EstadosTableViewController: UITableViewController {

    var regiaoSelecionada: String?
    
    var estados: [Estado] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = regiaoSelecionada
        
        var estado: Estado
        
        if regiaoSelecionada == "Sul"{
            estado = Estado(nome: "Paraná", sigla: "PR", bandeira: UIImage(named: "pr")! )
            estados.append(estado)
            
            estado = Estado(nome: "Rio Grande do Sul", sigla: "RS", bandeira: UIImage(named: "rs")! )
            estados.append(estado)
            
            estado = Estado(nome: "Santa Catarina", sigla: "SC", bandeira: UIImage(named: "sc")! )
            estados.append(estado)
            
        }
        
        if regiaoSelecionada == "Sudeste"{
            estado = Estado(nome: "São Paulo", sigla: "SP", bandeira: UIImage(named: "brasil")! )
            estados.append(estado)
        }
        if regiaoSelecionada == "Nordeste"{
            estado = Estado(nome: "Bahia", sigla: "BA", bandeira: UIImage(named: "brasil")! )
            estados.append(estado)
        }
        if regiaoSelecionada == "Norte"{
            estado = Estado(nome: "Acre", sigla: "AC", bandeira: UIImage(named: "brasil")! )
            estados.append(estado)
        }
        if regiaoSelecionada == "Centro-Oeste"{
            estado = Estado(nome: "Distrito Federal", sigla: "DF", bandeira: UIImage(named: "brasil")! )
            estados.append(estado)
        }
        
        

        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return estados.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celula = tableView.dequeueReusableCell(withIdentifier: "celulaEstado", for: indexPath) as! CelulaEstadoTableViewCell
        
        let estado: Estado = estados[ indexPath.row ]

        celula.bandeira.image = estado.bandeira
        celula.sigla.text = estado.sigla
        celula.nome.text = estado.nome
        
        celula.bandeira.layer.cornerRadius = 50
  //      celula.bandeira.clipsToBounds = true
        

        return celula
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
