//
//  AppDelegate.swift
//  Aula02
//
//  Created by Adalto Selau Sparremberger on 18/07/2020.
//  Copyright © 2020 Prof. Adalto. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print("Início do Aplicativo")
        return true
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        print("Aplicativo ficou ativo, disponível ao usuário")
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        print("Aplicativo ficou inativo, não está disponível ao usuário")
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        print("Aplicativo está em background (stand by)")
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        print("Aplicativo voltou de background, saiu do stand by")
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        print("Aplicativo foi finalizado")
    }
}

