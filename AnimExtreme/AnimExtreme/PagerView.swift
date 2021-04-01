//
//  PagerView.swift
//  AnimExtreme
//
//  Created by Diego Henrique on 30/03/21.
//

import SwiftUI

struct PagerView : View {

    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .black
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
    }
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(red: 145/255, green: 234/255, blue: 255/255), Color(red: 90/255, green: 237/255, blue: 164/255)]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.vertical)
            TabView {
                OnboardView(asset: "calendar" , title: "Cronograma do Evento\n\n", description: "\n\n\nConfira a programação dos dois\ndias do evento", buttonStatus: false)
                OnboardView(asset: "shoppingBags" , title: "Lojas\n\n", description: "\n\n\nSaiba quais lojas estarão presentes\nno evento", buttonStatus: false)
                OnboardView(asset: "famousPerson", title: "Convidados Especiais\n\n", description: "\n\nDescubra quais convidados você\npoderá conhecer", buttonStatus: true)
            }
            .tabViewStyle(PageTabViewStyle())
        }
    }
}


struct PagerView_Previews: PreviewProvider {
    static var previews: some View {
        PagerView()
    }
}


