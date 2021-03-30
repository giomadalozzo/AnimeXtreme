//
//  EventInfo.swift
//  AnimExtreme
//
//  Created by Matheus Polonia on 29/03/21.
//

import SwiftUI

struct EventInfo: View {
    var event: Event
    
    var body: some View {
        VStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0) {
            RoundedImage(imageName: event.imgName)
                .padding(.bottom, 9)
            Group {
                Text(event.name)
                    .bold()
                    .multilineTextAlignment(.center)
                    .lineLimit(1)
                Text(event.time)
            }
            .font(.system(size: 14))
            .foregroundColor(Color.init(red: 90/255, green: 237/255, blue: 164/255))
        }
        .frame(width: 158, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct EventInfo_Previews: PreviewProvider {
    static var previews: some View {
        EventInfo(event: events[4])
    }
}
