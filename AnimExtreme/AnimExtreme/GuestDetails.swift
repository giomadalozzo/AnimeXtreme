//
//  GuestDetails.swift
//  AnimExtreme
//
//  Created by Matheus Polonia on 31/03/21.
//

import SwiftUI

struct GuestDetails: View {
    @Environment(\.presentationMode) var presentation
    var guest: Guest
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            HStack (alignment: .top){
            VStack (alignment: .leading){
                Image("Logo")
                    .frame(width: 85.0, height: 45.0).padding(.bottom, 34.0).padding(.leading, 22).padding(.top, 26)
                Button(action: {
                    presentation.wrappedValue.dismiss()
                }, label: {
                    HStack{
                        Image(systemName: "chevron.left").foregroundColor(Color(red: 90.0 / 255.0, green: 237.0 / 255.0, blue: 164.0 / 255.0))
                        Text("Voltar").foregroundColor(Color(red: 90.0 / 255.0, green: 237.0 / 255.0, blue: 164.0 / 255.0))
                        Spacer()
                    }
                }).padding(.leading, 27).padding(.trailing, 27).padding(.bottom, 50)
                
                GuestInfo(guest: guest, guestImg: guest.imgBigName ,width: 390, height: 330)
                    .padding(.bottom, 26)
                Text(guest.info)
                    .foregroundColor(Color.init(red: 90/255, green: 237/255, blue: 164/255))
                    .padding([.leading, .trailing], 20)
                Spacer()
            }
            }
        }
    }
}

struct GuestDetails_Previews: PreviewProvider {
    static var previews: some View {
        GuestDetails(guest: guests[0])
    }
}
