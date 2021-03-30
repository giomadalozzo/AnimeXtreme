//
//  ScheduleView.swift
//  AnimExtreme
//
//  Created by Giovanni Madalozzo on 30/03/21.
//

import SwiftUI

struct ScheduleView: View {
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            HStack(alignment: .top){
                VStack(alignment: .leading){
                    
                    Image("Logo")
                        .padding(.top, 34)
                        .frame(width: 85.0, height: 45.0)
                    
                    ForEach(scheduleDays, id: \.id) { scheduleDay in
                        ScheduleDay(scheduleDay: scheduleDay)
                    }
                    
                    
                }.padding(.leading, 22).padding(.trailing, 20)
                Spacer()
            }
        }
    }
}


struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
    }
}
