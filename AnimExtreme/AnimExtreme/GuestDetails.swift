//
//  GuestDetails.swift
//  AnimExtreme
//
//  Created by Matheus Polonia on 31/03/21.
//

import SwiftUI

struct GuestDetails: View {
    var guest: Guest
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack (alignment: .leading, spacing: 0){
                GuestInfo(guest: guest, guestImg: guest.imgBigName ,width: 390, height: 330)
                    .padding(.bottom, 26)
                Text(guest.info)
                    .foregroundColor(Color.init(red: 90/255, green: 237/255, blue: 164/255))
                    .padding([.leading, .trailing], 20)
            }
        }
    }
}

struct GuestDetails_Previews: PreviewProvider {
    static var previews: some View {
        GuestDetails(guest: guests[0])
    }
}
