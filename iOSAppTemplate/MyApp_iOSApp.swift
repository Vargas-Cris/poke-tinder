//
//  App_iOS.swift
//  iOSAppTemplate
//
//  Created by Linder Anderson Hassinger Solano    on 5/06/22.
//

import SwiftUI

@main
//si ahy un identificador tipo main sera la vista principla de todos
struct MyApp_iOS: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    //manejioador de tipo main
    @StateObject var appState: AppState = AppState.shared
    //instanciando
    var body: some Scene {
        WindowGroup {
            //contenedor de vistas
            switch appState.currentScreen {
            case .launch:
                //si el app esta en lauch muestra el launcview de igual en todos
                LaunchView()
                //variable que se propaga d a todas las vistas, hace que la vista tega la opcionn que cree ua opcio de tipo eviroment,
                    .environmentObject(appState)
            case .main:
                MainView()
                    .environmentObject(appState)
            case .singIn:
                SignInView()
                    .environmentObject(appState)
           
            }
        }
    }
    
    
}
