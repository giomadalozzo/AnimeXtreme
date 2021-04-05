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

struct ScheduleInfo: Identifiable {
    var id: Int
    var date: String
    var weekDate: String
}


struct Shop: Identifiable {
    var id: Int
    var name:String
    var imgName: String
}
var events: [Event] = [(Event(id: 001, name: "Desfile Cosplay", time: "10h", imgName: "desfileCosplay")), (Event(id: 002, name: "Campeonato DXC", time: "14h", imgName: "campeonatoDXC")), (Event(id: 003, name: "Artists' Alley", time: "15h", imgName: "artistsAlley")), (Event(id: 004, name: "Entrevista Bunka Pop", time: "16h", imgName: "entrevistaBunka")), (Event(id: 005, name: "Campeonato Just Dance", time: "18h", imgName: "campeonatoJD"))]
var guests: [Guest] = [(Guest(id: 001, name: "Mandy Candy", info: "Info about guest", imgName: "mandyCandy")), (Guest(id: 002, name: "Tio Orochi", info: "Info about guest", imgName: "tioOrochi")), (Guest(id: 003, name: "Julio Cocielo", info: "Info about guest", imgName: "julioCocielo")), (Guest(id: 004, name: "Kim Rosacuca", info: "Info about guest", imgName: "kimRosacuca")), (Guest(id: 005, name: "Morimura", info: "Info about guest", imgName: "morimura")), (Guest(id: 006, name: "Luba Tv", info: "Info about guest", imgName: "lubaTV"))]
var scheduleDays: [ScheduleInfo] = [(ScheduleInfo(id: 001, date: "(16/10)", weekDate: "Sábado")), (ScheduleInfo(id: 002, date: "(17/10)", weekDate: "Domingo"))]

var shops: [Shop] = [Shop(id: 01, name: "Kitten", imgName: "shopKitten"),
                     Shop(id: 02, name: "Anime Play", imgName: "shopAnimePlay"),
                     Shop(id: 03, name: "Minha Marcka", imgName: "shopMinhaMarcka"),
                     Shop(id: 04, name: "Crazy Animes", imgName: "shopCrazyAnimes"),
                     Shop(id: 05, name: "Fenix Rock Club", imgName: "shopFenixRockClub"),
                     Shop(id: 06, name: "Leco's Shouten", imgName: "shopLecosShouten"),
                     Shop(id: 07, name: "Loja do Heroi", imgName: "shopLojadoHeroi"),
                     Shop(id: 08, name: "FGTec", imgName: "shopFGTec"),
                     Shop(id: 09, name: "Loja Anime Xtreme", imgName: "shopAnimeXtreme"),
                     Shop(id: 10, name: "Pharaoh's Shop", imgName: "shopPharaosShop")
]
