//
//  Schedule.swift
//  AnimExtreme
//
//  Created by Giovanni Madalozzo on 29/03/21.
//

import SwiftUI

struct ScheduleDay: View {
    var scheduleDay: ScheduleInfo
    @State var clicked = false
    
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
            
            //NavigationLink (destination: EventList(eventList: events, weekDate: scheduleDay.weekDate, date: scheduleDay.date)){
            HStack{
                Text("Ver Tudo")
                    .font(.system(size: 16))
                    .fontWeight(.regular)
                    .foregroundColor(Color(red: 90.0 / 255.0, green: 237.0 / 255.0, blue: 164.0 / 255.0))
                Image(systemName: "chevron.right").foregroundColor(Color(red: 90.0 / 255.0, green: 237.0 / 255.0, blue: 164.0 / 255.0)).font(.system(size: 16))
            }.ignoresSafeArea()
            .fullScreenCover(isPresented: $clicked, content: {
                EventList(eventList: events, weekDate: scheduleDay.weekDate, date: scheduleDay.date)
            })
            .onTapGesture {
                clicked = true
            }
            //}
        }.padding(.bottom, 27)
        ScrollView(.horizontal){
            HStack(spacing: 14){
                ForEach(events, id: \.id) { event in
                    EventInfo(event: event)
                }
            }
        }.padding(.bottom, 38)
        
    }
}

struct Schedule_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleDay(scheduleDay: scheduleDays[0])
    }
}
