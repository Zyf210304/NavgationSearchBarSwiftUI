//
//  Home.swift
//  NavgationSearchBar
//
//  Created by 亚飞 on 2021/1/26.
//

import SwiftUI

struct Home: View {
    
    @Binding var filteredItems : [AppItem]
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false, content: {
            
            VStack(spacing: 15){
                
                ForEach(filteredItems) { item  in
                    CardView(item: item)
                }
            }
        })
    }
}

