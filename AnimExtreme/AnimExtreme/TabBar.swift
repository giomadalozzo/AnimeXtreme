//
//  TabBar.swift
//  AnimExtreme
//
//  Created by Giovanni Madalozzo on 30/03/21.
//

import SwiftUI

struct TabBar: View {
    
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        GeometryReader{ geometry in
            ZStack{
                Color.black.ignoresSafeArea()
                
                VStack{
                    Spacer()
                    switch viewRouter.currentPage {
                    case .schedule:
                        ScheduleView()
                    case  .shops:
                        ShopView()
                    case .guests:
                        GuestList()
                    }
                    Spacer()
                    HStack{
                        TabBarIcon(viewRouter: viewRouter, assignedPage: .schedule, systemIconName: "calendar", tabName: "Calendário")
                        TabBarIcon(viewRouter: viewRouter, assignedPage: .shops, systemIconName: "cart", tabName: "Lojas")
                        TabBarIcon(viewRouter: viewRouter, assignedPage: .guests, systemIconName: "star", tabName: "Convidados")
                        
                    }.frame(width: geometry.size.width, height: 90).background(Color("TabBarBackground"))
                }.edgesIgnoringSafeArea(.all)
            }
        }
        
        
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar(viewRouter: ViewRouter())
            .previewDevice("iPhone 12")
    }
}

struct TabBarIcon: View {
    
    @StateObject var viewRouter: ViewRouter
    let assignedPage: Page
    
    let systemIconName, tabName: String
    
    var body: some View {
        VStack{
            Image(systemName: systemIconName).padding(.top, 2).font(.system(size: 30))
            Text(tabName).aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            Spacer()
        }.padding(.horizontal, 30).padding(.top, 10).onTapGesture {
            viewRouter.currentPage = assignedPage
        }.foregroundColor(viewRouter.currentPage == assignedPage ?
                            Color("TabBarHighlight") : .gray)
    }
}
