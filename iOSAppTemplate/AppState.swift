//
//  AppState.swift
//  iOSAppTemplate
//
//  Created by Linder Anderson Hassinger Solano    on 5/06/22.
//

import SwiftUI

class AppState: ObservableObject {
    
    static let shared = AppState()
    //se llama singel tone patron usado en cuawquier lenguaje
    //
    
    enum AppScreens: String {
        //lista las vistas
        case launch
        case main
        case singIn
    }
    
    @Published var currentScreen: AppScreens = .launch
    //creamos una varibale publica, curretn screen es igual a launh
    //la primera vista sera launch
}
