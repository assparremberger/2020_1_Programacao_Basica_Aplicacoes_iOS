//
//  Persistencia.swift
//  Lista de Compras
//
//  Created by Adalto Selau Sparremberger on 01/08/2020.
//  Copyright © 2020 Prof. Adalto. All rights reserved.
//

import UIKit

class Persistencia {
    
    let chaveProduto = "produtos"
    
    var produtos: [String] = []
    
    func adicionar(nomeProduto: String){
        produtos = listar()
        produtos.append( nomeProduto )
        produtos.sort()
        UserDefaults.standard.set( produtos, forKey: chaveProduto)
    }
    
    func listar() -> Array<String> {
        if let lista = UserDefaults.standard.object(forKey: chaveProduto) {
            return lista as! Array
        }else{
            return []
        }
    }
    
    func remover( posicao: Int ) {
        produtos = listar()
        produtos.remove(at: posicao)
        UserDefaults.standard.set( produtos, forKey: chaveProduto)
        
    }
    
}
