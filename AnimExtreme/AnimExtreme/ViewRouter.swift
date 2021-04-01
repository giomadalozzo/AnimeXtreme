//
//  ViewRouter.swift
//  AnimExtreme
//
//  Created by Giovanni Madalozzo on 31/03/21.
//

import SwiftUI

class ViewRouter: ObservableObject {
    
    @Published var currentPage: Page = .schedule
    
    @Published var defaultPage = "onboardingView"
    init() {
            if !UserDefaults.standard.bool(forKey: "didLaunchBefore") {
                UserDefaults.standard.set(true, forKey: "didLaunchBefore")
                defaultPage = "onboardingView"
            } else {
                defaultPage = "initialView"
            }
        }
}

struct RoutingView: View {
    @EnvironmentObject private var viewRouter: ViewRouter    
    var body: some View {
        VStack {
            if viewRouter.defaultPage == "onboardingView" {
                SplashView()
            } else {
                TabBar(viewRouter: ViewRouter())
                    .transition(AnyTransition.opacity.animation(.easeInOut(duration: 0.4)))
            }
        }
    }
}

enum Page{
    case schedule
    case guests
    case shops
}
