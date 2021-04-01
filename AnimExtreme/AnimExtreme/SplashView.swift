//
//  SplashView.swift
//  AnimeXtreme
//
//  Created by Guilherme Valent Antonini on 30/03/21.
//

import SwiftUI

struct SplashView: View {
    
    // 1.
    @State var isActive:Bool = false
    
    var body: some View {
        VStack {
            // 2.
            if self.isActive {
                // 3.
                PagerView()
            } else {
                // 4.
                ZStack{
                    LinearGradient(gradient: Gradient(colors: [Color(red: 145/255, green: 234/255, blue: 255/255), Color(red: 90/255, green: 237/255, blue: 164/255)]), startPoint: .top, endPoint: .bottom)
                        .edgesIgnoringSafeArea(.vertical)
                    
                    Image("axbranco")
                }
            }
        }
        // 5.
        .onAppear {
            // 6.
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                // 7.
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
