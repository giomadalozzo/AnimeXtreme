//
//  ScheduleView.swift
//  AnimExtreme
//
//  Created by Giovanni Madalozzo on 30/03/21.
//

import SwiftUI

struct ScheduleView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color.black
                    .ignoresSafeArea()
                VStack{
                VStack(alignment: .leading){
                    HStack{
                        Image("Logo")
                            
                            .frame(width: 85.0, height: 45.0)
                    }.padding(.bottom, 51.0).padding(.top, 34)
                    
                    ForEach(scheduleDays, id: \.id) { scheduleDay in
                        ScheduleDay(scheduleDay: scheduleDay)
                    }
                    
                    
                }.padding(.leading, 22).padding(.trailing, 20).ignoresSafeArea().navigationBarHidden(true).navigationBarTitle("")

                }.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
            }
        }
    }
}


struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
    }
}
