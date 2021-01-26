//
//  Item.swift
//  NavgationSearchBar
//
//  Created by 亚飞 on 2021/1/26.
//

import SwiftUI

struct AppItem : Identifiable{
    
    var id = UUID().uuidString
    var name : String
    var source : String = "Apple"
}

var apps = [

    AppItem(name: "App Store"),
    AppItem(name: "Calculator"),
    AppItem(name: "Calendar"),
    AppItem(name: "Clock"),
    AppItem(name: "Facetime"),
    AppItem(name: "Health"),
    AppItem(name: "Mail"),
    AppItem(name: "Maps"),
    AppItem(name: "Messages"),
    AppItem(name: "News"),
    AppItem(name: "Phone"),
    AppItem(name: "Photos"),
    AppItem(name: "Safari"),
    
]
