//
//  ContentView.swift
//  NavgationSearchBar
//
//  Created by 亚飞 on 2021/1/26.
//

import SwiftUI

struct ContentView: View {
    
    
    //https://www.bilibili.com/video/BV1rK4y1f7RJ
    
   @State var filteredItems = apps
    
    var body: some View {
        
        CustomSearchNavigationView(view: AnyView(Home(filteredItems: $filteredItems)), placeHolder: "App Games", largeTitle: true, title: "Title") { (text) in
            if text != "" {
                self.filteredItems = apps.filter{
                    $0.name.lowercased().contains(text.lowercased())
                }
            }
            else {
                self.filteredItems = apps
            }
        } onCancel: {
            self.filteredItems = apps
        }
        .ignoresSafeArea()

        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
