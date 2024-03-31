//
//  ProfileView.swift
//  ClothingAppIOS
//
//  Created by User on 2024-03-30.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        List{
            Section("Profile"){
                HStack{
                    Text("MK")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 72,height: 72)
                        .background(Circle())
                    
                    VStack(alignment: .leading, spacing: 4 ){
                        Text("Nilakshi")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .padding(.top,4)
                        Text("nilakshi@cic.lk")
                            .font(.footnote)
                            .accentColor(.gray)
                    }
                }
            }
            Section("General"){
                HStack{
                    SettingsRowView(imageName: "gear", title: "Version", tintColor: Color(.systemGray))
                    
                    Spacer()
                    
                    Text("1.0.0")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            Section("Account"){
                Button{
                    print("Sing out..")
                } label: {
                    SettingsRowView(imageName: "arrow.left.circle.fill", title: "Sing out", tintColor: .red)
                }
                Button{
                    print("Delete Account..")
                } label: {
                    SettingsRowView(imageName: "xmark.circle.fill", title: "Delete Account", tintColor: .red)
                }
                
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
