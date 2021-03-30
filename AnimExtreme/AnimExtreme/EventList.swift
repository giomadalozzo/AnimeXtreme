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
        ScrollView {
            LazyVGrid(columns: columns, spacing: 14) {
                ForEach(eventList, id: \.id) { event in
                    EventInfo(event: event)
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
