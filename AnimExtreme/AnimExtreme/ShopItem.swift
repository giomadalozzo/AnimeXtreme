//
//  ShopItem.swift
//  AnimExtreme
//
//  Created by Caroline Varela Ribeiro on 05/04/21.
//

import SwiftUI

struct ShopItem: View {
    var shop: Shop

    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Image(shop.imgName)
                Text("\(shop.id) - \(shop.name)").foregroundColor(Color(red: 90/255, green: 237/255, blue: 164/255))
            }
            Divider().background(Color(red: 90/255, green: 237/255, blue: 164/255, opacity: 0.5))
        }
    }
}

struct ShopItem_Previews: PreviewProvider {
    static var previews: some View {
        ShopItem(shop: shops[0])
    }
}
