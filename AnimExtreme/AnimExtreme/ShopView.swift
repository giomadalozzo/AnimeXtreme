//
//  ShopView.swift
//  AnimExtreme
//
//  Created by Caroline Varela Ribeiro on 05/04/21.
//

import SwiftUI

struct ShopView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color.black
                    .ignoresSafeArea()
                VStack(alignment: .leading){
                    HStack{
                        Image("Logo")
                            
                            .frame(width: 85.0, height: 45.0)
                    }.padding(.bottom, 51.0).padding(.top, 81).padding(.leading, 22)

                    
                VStack(alignment: .leading){
                    ScrollView{
                        ForEach(shops, id: \.id) { shop in
                            ShopItem(shop: shop)
                        }
                    }

                    
                }.padding(.leading, 22).padding(.trailing, 20).ignoresSafeArea().navigationBarHidden(true).navigationBarTitle("")

                }.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
            }
        }
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
