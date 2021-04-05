//
//  RoundedImage.swift
//  AnimExtreme
//
//  Created by Matheus Polonia on 29/03/21.
//

import SwiftUI

struct RoundedImage: View {
    var imageName: String
    var imgWidth: CGFloat
    var imgHeight: CGFloat
    
    var imgTl: CGFloat
    var imgTr: CGFloat
    var imgBl: CGFloat
    var imgBr: CGFloat
    
    var body: some View {
        Image(imageName)
            .resizable()
            .clipShape(RoundedCorners(tl: imgTl, tr: imgTr, bl: imgBl, br: imgBr))
            .frame(width: imgWidth, height: imgHeight)
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

struct RoundedImage_Previews: PreviewProvider {
    static var previews: some View {
        RoundedImage(imageName: "placeHolder", imgWidth: 158, imgHeight: 183, imgTl: 0, imgTr: 0, imgBl: 0, imgBr: 0)
    }
}
