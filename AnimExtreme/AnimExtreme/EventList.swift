//
//  EventRow.swift
//  AnimExtreme
//
//  Created by Matheus Polonia on 30/03/21.
//

import SwiftUI

struct EventList: View {
    var eventList: [Event]
    
    let columns = [
        GridItem(.fixed(158), spacing: 16),
        GridItem(.fixed(158), spacing: 16)
    ]
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack(alignment: .leading){
                HStack{
                    Image("Logo")
                        .frame(width: 85.0, height: 45.0)
                }.padding([.top, .bottom], 34.0).padding(.leading, 22)
                
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 14) {
                        ForEach(eventList, id: \.id) { event in
                            EventInfo(event: event)
                                .padding([.leading, .trailing], 20)
                        }
                    }
                }
            }
        }
    }
}

struct EventList_Previews: PreviewProvider {
    static var previews: some View {
        EventList(eventList: events)
    }
}
