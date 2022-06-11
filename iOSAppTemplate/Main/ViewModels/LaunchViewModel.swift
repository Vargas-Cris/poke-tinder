//
//  LaunchViewModel.swift
//  iOSAppTemplate
//
//  Created by MAC38 on 10/06/22.
//

import Foundation

class LaunchViewModel :ObservableObject{
    //heredara una clase de observable object
    //vamos a instanciar por cada viewmolde m=vamos a instanciar un appstatte
    let appState = AppState.shared
    //iniciarlir un constructor
    
    //se va a ejecutar cuando se instancie el launch view model
    //para que pase esto se instancia el launViewmodel se instancia en la vista  launchView
    init(){
        //indica que el appstate es home
        appState.currentScreen =  .home
        
    }
}
