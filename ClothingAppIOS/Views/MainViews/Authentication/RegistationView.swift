//
//  RegistationView.swift
//  ClothingAppIOS
//
//  Created by User on 2024-03-30.
//

import SwiftUI

struct RegistationView: View {
    @State private var email = ""
    @State private var fullname = ""
    @State private var password = ""
    @State private var comfirmPassword = ""
    @Environment(\.dismiss) var dismiss
    //@EnvironmentObject var vieModel : AuthViewModel
     
    var body: some View {
        VStack{
            Image("logoimage")
                .resizable()
                .scaledToFill()
                .frame(width: 100,height: 120)
                .padding(.vertical,30)
            
            
            VStack(spacing: 24){
                inputView(text: $email,
                          title: "Email Address",
                          placeholder: "name@example.com")
                .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                
                inputView(text: $fullname,
                          title: "Full Name",
                          placeholder: "nEnter Your Name")
                
                inputView(text: $password ,
                          title: "Password",
                          placeholder: "Enter Your Password ",
                          isSecureFiled: true)
                
                inputView(text: $comfirmPassword ,
                          title: "Confirm Password",
                          placeholder: "Confirm Your Password ",
                          isSecureFiled: true)
                
            }
            .padding(.horizontal)
            .padding(.top, 12)
            
            //Button{
               // Task{
                   // try await vieModel.createUser(withEmail: email, password: password, fullname: fullname)
                //}
            NavigationLink{ 
                LoginView()
                    .navigationBarBackButtonHidden(true)
                
            } label: {
                HStack{
                    Text("Sign Up ")
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
            
            Button {
                dismiss()
                NavigationLink(destination: LoginView()){
                    LoginView()
                }
            } label: {
                HStack{
                    Text("Do you have Account ? ")
                    Text("Sign In ")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                }
                .font(.system(size: 14))
            }
            }
            
        }
        
    }

    
struct RegistationView_Previews: PreviewProvider{
    static var previews: some View{
        RegistationView()
    }
    
}

