//
//  AppData.swift
//  AnimExtreme
//
//  Created by Matheus Polonia on 29/03/21.
//

import Foundation

struct Event: Identifiable {
    var id: Int
    var name: String
    var time: String
    var imgName: String
}

struct Guest: Identifiable {
    var id: Int
    var name: String
    var info: String
    var imgName: String
}


var events: [Event] = [(Event(id: 001, name: "PlaceHolder", time: "14h", imgName: "placeHolder"))]
var guests: [Guest] = [(Guest(id: 001, name: "PlaceHolder", info: "Info about guest", imgName: "placeHolder"))]
