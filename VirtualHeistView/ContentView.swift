//
//  ContentView.swift
//  VirtualHeistView
//
//  Created by Hassan Alkhafaji on 11/13/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                
                Image("bg1")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack {
                    Text("What story would you like to experience?")
                        .foregroundColor(.yellow)
                        .font(.largeTitle.bold())
                        .shadow(radius: 10)
                        
                    
                    Spacer()
                    
                    NavigationLink(destination: Fiery()) {
                        Text("The Fiery Manuever")
                            .font(.title.bold())
                            .foregroundColor(Color("red1"))
                            .frame(minWidth: 300)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color("fiery"))
                    .shadow(radius: 10)
                    .padding()
                    
                    NavigationLink(destination: Investigation()) {
                        Text("The Investigation")
                            .font(.title.bold())
                            .foregroundColor(.white)
                            .frame(minWidth: 300)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color("gr"))
                    .shadow(radius: 10)
                    .padding()
                    
                    NavigationLink(destination: Lumina()) {
                        Text("The Quest For Lumina")
                            .font(.title.bold())
                            .foregroundColor(.white)
                            .frame(minWidth: 300)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color("gr"))
                    .shadow(radius: 10)
                    .padding()
                    
                    NavigationLink(destination: Legends()) {
                        Text("The Virtual Legends")
                            .font(.title.bold())
                            .foregroundColor(.white)
                            .frame(minWidth: 300)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.red)
                    .shadow(radius: 10)
                    .padding()
                    
                    NavigationLink(destination: Collection()) {
                        Text("Collection Heist")
                            .font(.title.bold())
                            .foregroundColor(.white)
                            .frame(minWidth: 300)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color("gr"))
                    .shadow(radius: 10)
                    .padding()
                    
                    
                    
                   
                    
                   
                    
                    
                    Spacer()
                    
                    
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
