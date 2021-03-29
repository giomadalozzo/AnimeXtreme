//
//  GuestInfo.swift
//  AnimExtreme
//
//  Created by Matheus Polonia on 29/03/21.
//

import SwiftUI

struct GuestInfo: View {
    var guest: Guest
    
    var body: some View {
        VStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0) {
            ZStack {
                RoundedImage(imageName: guest.imgName)
                    .padding(.bottom, 9)
                Text("test")
                    .foregroundColor(Color.init(red: 90/255, green: 237/255, blue: 164/255))
                    .multilineTextAlignment(.center)
                    .frame(width: 158, height: 45)
                    .background(RoundedCorners(tl: 0, tr: 0, bl: 10, br: 10).fill(Color.init(red: 41/255, green:41/255, blue: 44/255)))
                    .cornerRadius(1)
                    .frame(height: 183, alignment: .bottom)
            }
            Group {
                Text(guest.name)
                    .bold()
                Text(guest.info)
            }
            .font(.system(size: 14))
            .foregroundColor(Color.init(red: 90/255, green: 237/255, blue: 164/255))
        }
        .frame(width: 158, height: 183)
    }
}

struct RoundedCorners: Shape {
    var tl: CGFloat = 0.0
    var tr: CGFloat = 0.0
    var bl: CGFloat = 0.0
    var br: CGFloat = 0.0

    func path(in rect: CGRect) -> Path {
        var path = Path()

        let w = rect.size.width
        let h = rect.size.height

        // Make sure we do not exceed the size of the rectangle
        let tr = min(min(self.tr, h/2), w/2)
        let tl = min(min(self.tl, h/2), w/2)
        let bl = min(min(self.bl, h/2), w/2)
        let br = min(min(self.br, h/2), w/2)

        path.move(to: CGPoint(x: w / 2.0, y: 0))
        path.addLine(to: CGPoint(x: w - tr, y: 0))
        path.addArc(center: CGPoint(x: w - tr, y: tr), radius: tr,
                    startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)

        path.addLine(to: CGPoint(x: w, y: h - br))
        path.addArc(center: CGPoint(x: w - br, y: h - br), radius: br,
                    startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)

        path.addLine(to: CGPoint(x: bl, y: h))
        path.addArc(center: CGPoint(x: bl, y: h - bl), radius: bl,
                    startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)

        path.addLine(to: CGPoint(x: 0, y: tl))
        path.addArc(center: CGPoint(x: tl, y: tl), radius: tl,
                    startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)

        return path
    }
}

struct GuestInfo_Previews: PreviewProvider {
    static var previews: some View {
        GuestInfo(guest: guests[0])
    }
}
