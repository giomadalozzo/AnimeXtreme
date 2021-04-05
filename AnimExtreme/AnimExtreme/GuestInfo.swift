//
//  GuestInfo.swift
//  AnimExtreme
//
//  Created by Matheus Polonia on 29/03/21.
//

import SwiftUI

struct GuestInfo: View {
    var guest: Guest
    var guestImg: String
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        VStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0) {
            VStack (spacing: 0) {
                RoundedImage(imageName: guestImg, imgWidth: width, imgHeight: height, imgTl: 20, imgTr: 20, imgBl: 0, imgBr: 0)
                Text(guest.name)
                    .fontWeight(.bold)
                    .foregroundColor(Color.init(red: 90/255, green: 237/255, blue: 164/255))
                    .multilineTextAlignment(.center)
                    .frame(width: width, height: 45)
                    .background(RoundedCorners(tl: 0, tr: 0, bl: 10, br: 10).fill(Color.init(red: 41/255, green:41/255, blue: 44/255)))
                    .frame(height: 45, alignment: .bottom)
            }
        }
        .frame(width: width, height: height)
        
    }
}

struct GuestInfoItem: View {
    var guest: Guest
    var guestImg: String
    var width: CGFloat
    var height: CGFloat
    @Binding var clicked: Bool
    @Binding var selectedGuest: Guest
    
    var body: some View {
        GuestInfo(guest: guest, guestImg: guestImg, width: width, height: height)
            .fullScreenCover(isPresented: .constant(clicked && (selectedGuest.id == guest.id)), content: {
                GuestDetails(guest: guest, clicked:$clicked)
            })
    }
}

