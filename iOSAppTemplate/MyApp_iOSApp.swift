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
                    .environmentObject(appState)
            case .home:
                ContentView()
                    .environmentObject(appState)
            case .options:
                ContentView()
            case .profile:
                ContentView()
            }
        }
    }
    
    
}
