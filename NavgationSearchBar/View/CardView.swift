//
//  CardView.swift
//  NavgationSearchBar
//
//  Created by 亚飞 on 2021/1/26.
//

import SwiftUI

struct CardView: View {
    
    var item : AppItem
    @State var show = false
    
    var body: some View {
        
        HStack {
            
            Image("album")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 65, height: 65)
                .clipped()
                .clipShape(Circle())
                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 5, y: 5)
                .shadow(color: Color.black.opacity(0.2), radius: 10, x: -5, y: -5)
                
            
            VStack {
                
                HStack {
                    
                    VStack (alignment: .leading, spacing: 10, content: {
                        
                        Text(item.name)
                            .font(.title2)
                        
                        Text(item.source)
                            .font(.caption)
                            .foregroundColor(.gray)
                    })
                    
                    Spacer(minLength: 10)
                    
                    VStack {
                        
                        Button(action: {}, label: {
                            
                            Text(show ? "OPEN" : "GET")
                                .fontWeight(.heavy)
                                .padding(.vertical, 8)
                                .padding(.horizontal, 20)
                                .background(Color.primary.opacity(0.08))
                                .clipShape(Capsule())
                        })
                        
                        Text("In App Purchases")
                            .font(.caption2)
                            .foregroundColor(.gray)
                    }
                }
                
                Divider()
            }
        }
        .padding(.horizontal)
    }
}


