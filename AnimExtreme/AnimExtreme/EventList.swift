//
//  EventRow.swift
//  AnimExtreme
//
//  Created by Matheus Polonia on 30/03/21.
//

import SwiftUI

struct EventList: View {
    
    @Environment(\.presentationMode) var presentation
    var eventList: [Event]
    var weekDate: String
    var date: String
    
    let columns = [
        GridItem(.fixed(158), spacing: 16),
        GridItem(.fixed(158), spacing: 16)
    ]
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack(alignment: .leading){
                
                Button(action: {
                    presentation.wrappedValue.dismiss()
                }, label: {
                    HStack{
                        Image(systemName: "chevron.left").foregroundColor(Color(red: 90.0 / 255.0, green: 237.0 / 255.0, blue: 164.0 / 255.0))
                        Text("Voltar").foregroundColor(Color(red: 90.0 / 255.0, green: 237.0 / 255.0, blue: 164.0 / 255.0))
                        Spacer()
                        Text(weekDate)
                            .font(.system(size: 18))
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 90.0 / 255.0, green: 237.0 / 255.0, blue: 164.0 / 255.0))
                        
                        Text(date)
                            .font(.system(size: 14))
                            .fontWeight(.regular)
                            .foregroundColor(Color(red: 90.0 / 255.0, green: 237.0 / 255.0, blue: 164.0 / 255.0))
                            .padding(.top, 5)
                    }
                }).padding(.leading, 27).padding(.trailing, 27).padding(.bottom, 20)
                
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 14) {
                        ForEach(eventList, id: \.id) { event in
                            EventInfo(event: event)
                                .padding([.leading, .trailing], 20)
                        }
                    }
                }
                
            
            }.padding(.top, 34).padding(.leading, -2)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Image("Logo").padding(.top, 65).padding(.leading, 9))
            
        }
    }
}

//struct EventList_Previews: PreviewProvider {
//    static var previews: some View {
//        EventList(eventList: events, weekDate: scheduleDays[0].weekDate, date: scheduleDays[0].date)
//    }
//}
