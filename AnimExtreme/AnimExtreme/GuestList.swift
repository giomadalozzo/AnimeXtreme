//
//  GuestList.swift
//  AnimExtreme
//
//  Created by Matheus Polonia on 31/03/21.
//

import SwiftUI
let coloredNavAppearance = UINavigationBarAppearance()

struct GuestList: View {
    var guestList: [Guest] = guests
    @State var clicked = false
    @State var selectedGuest: Guest = Guest(id: 0, name: "", info: "", imgSmallName: "", imgBigName: "")
    
    let columns = [
        GridItem(.fixed(158), spacing: 25),
        GridItem(.fixed(158), spacing: 25)
    ]
    
    init(){
        coloredNavAppearance.configureWithOpaqueBackground()
        coloredNavAppearance.backgroundColor = UIColor.black
        coloredNavAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        coloredNavAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().standardAppearance = coloredNavAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredNavAppearance
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.black
                    .edgesIgnoringSafeArea([.all])
                VStack(alignment: .leading, spacing: 0){
                    HStack{
                        Image("Logo")
                            .frame(width: 85.0, height: 45.0)
                    }.padding([.top, .bottom], 34.0).padding(.leading, 22)
                    
                    ScrollView {
                        LazyVGrid(columns: columns, spacing: 10) {
                            ForEach(guestList, id: \.id) { guest in
                                GuestInfoItem(guest: guest, guestImg: guest.imgSmallName,width: 158, height: 138, clicked: $clicked, selectedGuest: $selectedGuest)
                                    .padding([.top, .bottom], 37)
                                    .onTapGesture {
                                        clicked = true
                                        selectedGuest = guest
                                    }
                            }
                        }
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        }
    }
}

struct GuestList_Previews: PreviewProvider {
    static var previews: some View {
        GuestList()
    }
}
