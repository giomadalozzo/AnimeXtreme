//
//  RoundedImage.swift
//  AnimExtreme
//
//  Created by Matheus Polonia on 29/03/21.
//

import SwiftUI

struct RoundedImage: View {
    var imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: 158, height: 183)
            .cornerRadius(10)
    }
}

struct RoundedImage_Previews: PreviewProvider {
    static var previews: some View {
        RoundedImage(imageName: "placeHolder")
    }
}
