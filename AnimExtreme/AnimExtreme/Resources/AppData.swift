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
    var imgSmallName: String
    var imgBigName: String
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
var eventSaturday: [Event] = [(Event(id: 001, name: "Desfile Cosplay", time: "10h", imgName: "desfileCosplay1")),
                       (Event(id: 002, name: "Campeonato DXC", time: "14h", imgName: "campeonatoDXC")),
                       (Event(id: 003, name: "Artists' Alley", time: "15h", imgName: "artistsAlley1")),
                       (Event(id: 004, name: "Entrevista Bunka Pop", time: "16h", imgName: "entrevistaBunka")),
                       (Event(id: 005, name: "Entrevista Cocielo", time: "17h", imgName: "entrevistaCocielo")),
                       (Event(id: 006, name: "Campeonato Just Dance", time: "18h", imgName: "campeonatoJD"))]

var eventSunday: [Event] = [Event(id: 007, name: "Show TKJ", time: "14h", imgName: "showTKJ"),
                            Event(id: 008, name: "Kpop Random Dance", time: "15h", imgName: "kpopDance"),
                            Event(id: 009, name: "Desfile Cosplay", time: "15h30", imgName: "desfileCosplay2"),
                            Event(id: 010, name: "Entrevista LubaTV", time: "16h", imgName: "entrevistaLuba"),
                            Event(id: 011, name: "Karaoke", time: "15h", imgName: "karaoke"),
                            Event(id: 012, name: "Artists' Alley", time: "18h", imgName: "artistsAlley2")]

var guests: [Guest] = [(Guest(id: 001, name: "Mandy Candy", info: "Amanda Guimarães, mais conhecida na internet como Mnady Candy, é natural de Gravataí, interior do Rio Grande do Sul. A youtuber comanda o canal Mandy Candy, onde compartilha suas experiências com transição de gênero e curiosidades de sua vida.", imgSmallName: "mandyCandySmall", imgBigName: "mandyCandyBig")),
                       (Guest(id: 002, name: "Tio Orochi", info: "Info about guest", imgSmallName: "tioOrochiSmall", imgBigName: "tioOrochiSmall")),
                       (Guest(id: 003, name: "Julio Cocielo", info: "Info about guest", imgSmallName: "julioCocieloSmall", imgBigName: "julioCocieloSmall")),
                       (Guest(id: 004, name: "Kim Rosacuca", info: "Info about guest", imgSmallName: "kimRosacucaSmall", imgBigName: "kimRosacucaSmall")),
                       (Guest(id: 005, name: "Morimura", info: "Info about guest", imgSmallName: "morimuraSmall", imgBigName: "morimuraSmall")),
                       (Guest(id: 006, name: "Luba Tv", info: "Info about guest", imgSmallName: "lubaTVSmall", imgBigName: "lubaTVSmall"))]
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
