//
//  Schedule.swift
//  AnimExtreme
//
//  Created by Giovanni Madalozzo on 29/03/21.
//

import SwiftUI

struct ScheduleDay: View {
    var scheduleDay: ScheduleInfo
    
    var body: some View {
        HStack(spacing: 4) {
            Text(scheduleDay.weekDate)
                .font(.system(size: 18))
                .fontWeight(.bold)
                .foregroundColor(Color(red: 90.0 / 255.0, green: 237.0 / 255.0, blue: 164.0 / 255.0))
            
            Text(scheduleDay.date)
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
                ForEach(events, id: \.id) { event in
                    EventInfo(event: event)
                }
                EventInfo(event: events[0])
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
    }
}

struct Schedule_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleDay()
    }
}
