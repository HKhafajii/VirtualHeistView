//
//  Fiery.swift
//  VirtualHeistView
//
//  Created by Hassan Alkhafaji on 11/13/23.
//

import SwiftUI

struct Fiery: View {
    var body: some View {
        ZStack{
            
            background
            
            VStack{
                
                header
                
                ScrollingView
                
            }
        }
    }
    
    
    
    
    
    
    
    
    var background: some View {
        LinearGradient(colors: [Color("orng"), Color("red1"), Color("orng")], startPoint: .top ,endPoint: .bottom)
            .ignoresSafeArea()
    }
    
    var ScrollingView: some View {
        ScrollView {
            Text("asdasdasdasdasdasdasdasdasdasdasdas")
                .foregroundColor(Color("red1"))
                .font(.title)
                .padding()
        }
        .background(Color("fiery").opacity(0.8)).cornerRadius(12)
        .padding()
    }
    
    var header: some View {
        VStack {
            Text("The Fiery \tManuever")
                .foregroundColor(Color("red1"))
                .shadow(color: .gray, radius: 10)
                .font(.title)
                .padding(45)
                .background(Image("fbg1")).cornerRadius(8)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        }
    }
}



#Preview {
    Fiery()
}
