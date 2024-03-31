//
//  ClothingAppIOSApp.swift
//  ClothingAppIOS
//
//  Created by User on 2024-03-24.
//

import SwiftUI

@main

struct ClothingAppIOSApp: App {
    
   // @StateObject var vieModel = AuthViewModel()
    
    var body: some Scene {
        WindowGroup {
            LoginView()
                //.environmentObject(vieModel)
        }
    }
}
