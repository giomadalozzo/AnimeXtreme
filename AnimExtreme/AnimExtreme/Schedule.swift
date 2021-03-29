//
//  Schedule.swift
//  AnimExtreme
//
//  Created by Giovanni Madalozzo on 29/03/21.
//

import SwiftUI

struct Schedule: View {
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            HStack(alignment: .top){
                VStack(alignment: .leading){
                    
                    Image("Logo")
                        .padding(.top, 34)
                        .frame(width: 85.0, height: 45.0)
                    HStack(spacing: 4) {
                        Text("Sábado")
                            .font(.system(size: 18))
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 90.0 / 255.0, green: 237.0 / 255.0, blue: 164.0 / 255.0))
                        
                        Text("(16/10)")
                            .font(.system(size: 14))
                            .fontWeight(.regular)
                            .foregroundColor(Color(red: 90.0 / 255.0, green: 237.0 / 255.0, blue: 164.0 / 255.0))
                            .padding(.top, 5)
                        
                        Spacer()
                        
                        Text("botão")
                            .font(.system(size: 16))
                            .fontWeight(.regular)
                            .foregroundColor(Color(red: 90.0 / 255.0, green: 237.0 / 255.0, blue: 164.0 / 255.0))
                    }.padding(.top, 51).padding(.bottom, 27)
                    ScrollView(.horizontal){
                        HStack(spacing: 14){
                            //AQUI ENTRA OS MÓDULOS DE EVENTO
                            Text("evento1")
                                .font(.system(size: 16))
                                .fontWeight(.regular)
                                .foregroundColor(Color(red: 90.0 / 255.0, green: 237.0 / 255.0, blue: 164.0 / 255.0))
                            Text("evento2")
                                .font(.system(size: 16))
                                .fontWeight(.regular)
                                .foregroundColor(Color(red: 90.0 / 255.0, green: 237.0 / 255.0, blue: 164.0 / 255.0))
                            //ATÉ AQUI
                        }
                    }
                    Spacer()
                }.padding(.leading, 22).padding(.trailing, 20)
                Spacer()
            }
        }
    }
}

struct Schedule_Previews: PreviewProvider {
    static var previews: some View {
        Schedule()
    }
}
