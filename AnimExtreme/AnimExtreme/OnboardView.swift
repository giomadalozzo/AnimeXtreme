//
//  OnboardView.swift
//  AnimExtreme
//
//  Created by Diego Henrique on 30/03/21.
//

import SwiftUI

struct OnboardView: View {
    var asset : String
    var title : String
    var description : String
    var buttonStatus: Bool
    
    var body: some View {
        
        ZStack {
            if (!buttonStatus) {
                Image(asset)
                    .padding(.bottom, 493.0)
                
                Text(title)
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .padding(.top)
                Text(description)
                    .font(.system(size: 18))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .padding(.top)
            }
            
            else {
                Image(asset)
                    .padding(.bottom, 493.0)
                
                Text(title)
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .padding(.top)
                Text(description)
                    .font(.system(size: 18))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .padding(.top)
                
                
                Button(action: {
                    
                }) {
                    Text("Entendi!")
                        .frame(width: 149.0, height: 58.0)
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 90/255, green: 237/255, blue: 164/255))
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 2)
                            
                        ).background(RoundedRectangle(cornerRadius: 20).fill(Color.black))
                        .padding(.top, 534)
                }
                .contentShape(Rectangle())
                //     }
                
                
            }
        }
    }
}

struct OnboardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardView(asset: "calendar" , title: "Cronograma do Evento\n\n", description: "\n\n\nConfira a programação dos dois\ndias do evento", buttonStatus: true)
    }
}

