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

var events: [Event] = [(Event(id: 001, name: "Desfile Cosplay", time: "10h", imgName: "placeHolder")), (Event(id: 002, name: "Campeonato DXC", time: "14h", imgName: "placeHolder")), (Event(id: 003, name: "Artists' Alley", time: "15h", imgName: "placeHolder")), (Event(id: 004, name: "Entrevista Bunka Pop", time: "16h", imgName: "placeHolder")), (Event(id: 005, name: "Campeonato Just Dance", time: "18h", imgName: "placeHolder"))] 
var guests: [Guest] = [(Guest(id: 001, name: "Mandy Candy", info: "Info about guest", imgName: "placeHolder")), (Guest(id: 002, name: "Tio Orochi", info: "Info about guest", imgName: "placeHolder")), (Guest(id: 003, name: "Julio Cocielo", info: "Info about guest", imgName: "placeHolder")), (Guest(id: 004, name: "Kim Rosacuca", info: "Info about guest", imgName: "placeHolder")), (Guest(id: 005, name: "Morimura", info: "Info about guest", imgName: "placeHolder")), (Guest(id: 006, name: "Luba Tv", info: "Info about guest", imgName: "placeHolder"))]
