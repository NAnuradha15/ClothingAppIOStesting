//
//  LoginView.swift
//  ClothingAppIOS
//
//  Created by User on 2024-03-30.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
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
                    inputView(text: $email,
                              title: "Email Address",
                              placeholder: "name@example.com")
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    inputView(text: $password ,
                              title: "Password",
                              placeholder: "Enter Your Password ",
                              isSecureFiled: true)
                }
                .padding(.horizontal)
                .padding(.top,12)
                
               
                        //sing in button
                        
                NavigationLink{
                    HomeView()
                        .navigationBarBackButtonHidden(true)
                        } label: {
                            HStack{
                                Text("Sign In ")
                                    .fontWeight(.semibold)
                                Image(systemName: "arrow.right")
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
                    RegistationView()
                        .navigationBarBackButtonHidden(true)
                }label: {
                    HStack{
                        Text("Don't have any Account ? ")
                        Text("Sing UP ")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                    .font(.system(size: 14))
                }
                
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider{
    static var previews: some View{
        LoginView()
    }
    
}
