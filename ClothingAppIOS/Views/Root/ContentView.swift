//
//  ContentView.swift
//  ClothingAppIOS
//
//  Created by User on 2024-03-24.
//

import SwiftUI

struct ContentView: View {
   // @EnvironmentObject var viModel : AuthViewModel
    
    var body: some View {
        NavigationLink(destination: HomeView()){
            HomeView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
