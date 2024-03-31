//
//  DiliveryUpdate.swift
//  ClothingAppIOS
//
//  Created by User on 2024-03-31.
//

import SwiftUI

struct DiliveryUpdate: View {
    
    @State private var Address = ""
    @State private var Telno = ""
    @State private var Name = ""
    @State private var productZise = ""
    
    
   // @EnvironmentObject var vieModel: AuthViewModel
    
    var body: some View {
        NavigationStack{
            VStack{
                Image("logoimage")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100,height: 120)
                    .padding(.vertical,32)
                
                
                //form filed
                VStack(spacing: 24){
                    inputView(text: $Name,
                              title: "Name",
                              placeholder: "Nilakshi Anuradha")
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    inputView(text: $Address,
                              title: "Address",
                              placeholder: "34,teston,cityork"
                              )
                    inputView(text: $Telno ,
                              title: "Phone Number",
                              placeholder: "Telno"
                              )
                    inputView(text: $productZise ,
                              title: "Product Size",
                              placeholder: "You need Size type uk 8,10,12,16,18"
                              )
                }
                .padding(.horizontal)
                .padding(.top,12)
                
               
                        //sing in button
                        
                NavigationLink{
                    DileverSusses()
                        .navigationBarBackButtonHidden(true)
                        } label: {
                            HStack{
                                Text("Place Oder")
                                    .fontWeight(.semibold)
                                Image(systemName: "delivery")
                            }
                            .foregroundColor(.white)
                            .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                            
                        }
                        .background(Color(.systemOrange))
                        .cornerRadius(10)
                        .padding(.top,24)
                        
                 
                Spacer()
                
                //sing up button
                NavigationLink{
                    HomeView()
                        .navigationBarBackButtonHidden(true)
                }label: {
                    HStack{
                        Text("Go Home ")
                        Text("Menu")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                    .font(.system(size: 14))
                }
                
            }
        }
    }
}

struct DiliveryUpdate_Previews: PreviewProvider{
    static var previews: some View{
        DiliveryUpdate()
    }
    
}
