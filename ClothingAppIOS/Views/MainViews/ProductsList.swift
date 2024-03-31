//
//  ProductsList.swift
//  ClothingAppIOS
//
//  Created by User on 2024-03-30.
//

import SwiftUI

struct ProductsList: View {
    private var listofproduct = products
    @State var presentSideMenu = false
    @State var presentSideCart = false
    @State var serchText = ""
    private let adaptiveColumns = [GridItem(.adaptive(minimum: 150))]
    
    var body: some View {
//        NavigationView {
//            List{
////                ForEach(products,id: \.self){ ProductsL in
////                    HStack{
////                       Text(ProductsL.capitalized)
////                       Spacer()
////                    }.padding()
////               } .searchable(text: $serchText)
//            }
//            
//            
//        }
        
//        var products: [String]{
//            let lcproducts = listofproduct.map{ $0.lowercased()}
//            return serchText == "" ? lcproducts:lcproducts.filter{$0.contains(serchText.lowercased())}
//        }
        
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            ZStack {
                VStack(spacing: 0) {
                    HStack {
                        Text("PRODUCTS")
                            .font(tenorSans(24))
                            .foregroundColor(.black)
                        Spacer()
                    }
                    .padding()
                    .searchable(text: $serchText)
                    
                    
                    
                    ScrollView(.vertical) {
                        VStack {
                            ScrollView(.vertical) {
                                LazyVGrid(columns: adaptiveColumns) {
                                    ForEach(0..<10, id: \.self) { i in
                                        ProductItemView(product: products.randomElement()!)
                                    }
                                    
                                }
                            }
                            .scrollIndicators(.hidden)
                        }.padding([.leading, .trailing], 20)
                        FooterView()
                    }
                    .edgesIgnoringSafeArea(.all)
                }
                .padding(.top,56)
                
            }
            
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .overlay(alignment: .top) {
                HeaderView {
                    presentSideMenu.toggle()
                } cartAction: {
                    presentSideCart.toggle()
                }
            }
            
            
            SideMenu()
            SideCart()
            
        }
        .navigationBarHidden(true)
        
        
        
    }
    
    
    @ViewBuilder
    private func SideMenu() -> some View {
        SideView(isShowing: $presentSideMenu, content: AnyView(SideMenuViewContents(presentSideMenu: $presentSideMenu)), direction: .leading)
    }
    
    @ViewBuilder
    private func SideCart() -> some View {
        SideView(isShowing: $presentSideCart, content: AnyView(SideCartViewContents(presentSideMenu: $presentSideCart)), direction: .trailing)
    }
    
}

struct ProductsList_Previews: PreviewProvider {
    static var previews: some View {
        ProductsList()
    }
}
