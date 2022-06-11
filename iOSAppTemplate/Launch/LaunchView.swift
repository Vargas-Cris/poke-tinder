//
//  LaunchView.swift
//  iOSAppTemplate
//
//  Created by Linder Anderson Hassinger Solano    on 5/06/22.
//

import SwiftUI

struct LaunchView: View {
    //llamemos a los requtes iniciales, sesion de usuario,cargar info de la empresa
    //Esta vista es un modelo
    @EnvironmentObject var appState: AppState
    @StateObject var launchViewModel : LaunchViewModel =  LaunchViewModel()
    
    var body: some View {
        ZStack {
            Color.pink
                .ignoresSafeArea()
            
            Text("iOSTemplateApp")
                .font(.title)
                .fontWeight(.semibold)
        }
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
