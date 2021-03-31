//
//  ViewRouter.swift
//  AnimExtreme
//
//  Created by Giovanni Madalozzo on 31/03/21.
//

import SwiftUI

class ViewRouter: ObservableObject {
    
    @Published var currentPage: Page = .schedule
}

enum Page{
    case schedule
    case guests
    case shops
}
