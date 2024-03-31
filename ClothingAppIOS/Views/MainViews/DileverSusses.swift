//
//  DileverSusses.swift
//  ClothingAppIOS
//
//  Created by User on 2024-03-31.
//

import SwiftUI

struct DileverSusses: View {
    
    
    
    // @EnvironmentObject var vieModel: AuthViewModel
    
    var body: some View {
        NavigationStack{
            VStack{
                Image("logoimage")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200,height: 220)
                    .padding(.vertical,40)
                
                Text("Your Oder Place Successfully")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                
            }
            .padding(.horizontal)
            .padding(.top,12)
            
            
            //sing in button
            
            NavigationLink{
                HomeView()
                    .navigationBarBackButtonHidden(true)
            } label: {
                HStack{
                    Text("OK")
                        .fontWeight(.semibold)
                    Image(systemName: "ok")
                }
                .foregroundColor(.white)
                .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                
            }
            .background(Color(.systemOrange))
            .cornerRadius(10)
            .padding(.top,24)
            
            
            Spacer()
            
            //sing up button
           
            
        }
    }
}

struct DileverSusses_Previews: PreviewProvider{
    static var previews: some View{
        DileverSusses()
    }
    
}

