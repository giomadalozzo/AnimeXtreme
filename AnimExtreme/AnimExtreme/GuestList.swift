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
    
    let columns = [
        GridItem(.fixed(158), spacing: 16),
        GridItem(.fixed(158), spacing: 16)
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
                VStack(alignment: .leading){
                    HStack{
                        Image("Logo")
                            .frame(width: 85.0, height: 45.0)
                    }.padding([.top, .bottom], 34.0).padding(.leading, 22)
                    
                    ScrollView {
                        LazyVGrid(columns: columns, spacing: 14) {
                            ForEach(guestList, id: \.id) { guest in
                                NavigationLink (destination: GuestDetails(guest: guest)){
                                    GuestInfo(guest: guest, width: 158, height: 183)
                                        .padding([.leading, .trailing], 20).padding(.bottom, 37)
                                }
                            }
                        }
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
            .navigationBarItems(leading: Image("Logo"))
        }
    }
}

struct GuestList_Previews: PreviewProvider {
    static var previews: some View {
        GuestList()
    }
}
