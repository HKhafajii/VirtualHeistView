//
//  Collection.swift
//  VirtualHeistView
//
//  Created by Hassan Alkhafaji on 11/13/23.
//

import SwiftUI

struct Collection: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color("darkblue"), Color(.gr), Color("darkblue")], startPoint: .top ,endPoint: .bottom)
                .ignoresSafeArea()
            
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(.darkblue)
                .padding()
            Spacer(minLength: 300)
            
            
            
            
            VStack{
                ScrollView{
//                    RoundedRectangle(cornerRadius: 12)
//                        .foregroundColor(.darkblue)
//                    
                    Text ("Welcome \(name). My name is \(questhost), I am your quest host. I am the person you will be turning the games in to. You all were choosen to participate in the quest \(questname). The games that must be collected are \(listGames()). Participants have up to 3 days to collect all games and returned them. Once games are collect you can either turned them in immeditaly or wait till you have all games. If games are not turned in by end of deadline players will be terminated and will be forfeited from receiving any prizes/rewards. Best of luck to all players. You can choose which location you would like to go to first below")
                    
                    NavigationLink(destination: Mainspacecentral()){
                        Text ("Main Space Central")
                            .font(.title.bold())
                            .foregroundColor(.white)
                            .frame(minWidth: 150)
                    }
                    
                    .buttonStyle(.borderedProminent)
                    .tint(Color("gr"))
                    .shadow(radius: 10)
                    .padding()
            
            NavigationLink(destination: Newgoldcity()){
                Text("New Gold City")
                    .font(.title.bold())
                    .foregroundColor(.white)
                    .frame(minWidth: 150)
            }
            .buttonStyle(.borderedProminent)
            .tint(Color("gr"))
            .shadow(radius: 10)
            .padding()

            NavigationLink(destination: Cloud_county()){
                Text("Cloud County")
                    .font(.title.bold())
                    .foregroundColor(.white)
                    .frame(minWidth: 150)
            }
            .buttonStyle(.borderedProminent)
            .tint(Color("gr"))
            .shadow(radius: 10)
            .padding()

            NavigationLink(destination: gamekingdom()){
                Text ("Game Kingdom")
                    .font(.title.bold())
                    .foregroundColor(.white)
                    .frame(minWidth: 150)
            }
            .buttonStyle(.borderedProminent)
            .tint(Color("gr"))
            .shadow(radius: 10)
            .padding()

                    
                    
//                    VStack{
//                        NavigationStack{
//                            NavigationLink("Location 1"){
//                                Text ("Main Space Central")
//                                    .font(.title.bold())
//                                    .foregroundColor(.white)
//                                    .frame(minWidth: 300)
//                            }
//                            
//                            .buttonStyle(.borderedProminent)
//                            .tint(Color("gr"))
//                            .shadow(radius: 10)
//                            .padding()
                            
//                            NavigationLink("Location 2"){
//                                Text("New Gold City")
//                            }
//                            NavigationLink("Loaction 3"){
//                                Text("Cloud County")
//                            }
//                            NavigationLink("Location 4"){
//                                Text ("Game Kingdom")
//                            }
                        }
                        
                        
                        
                        
                    }
                    
                    
                    
                }
                
//                NavigationLink(destination: Mainspacecentral()){
//                    Text ("Main Space Central")
//                        .font(.title.bold())
//                        .foregroundColor(.white)
//                        .frame(minWidth: 300)
//                }
//                
//                .buttonStyle(.borderedProminent)
//                .tint(Color("gr"))
//                .shadow(radius: 10)
//                .padding()
//        
//        NavigationLink(destination: Newgoldcity()){
//            Text("New Gold City")
//                .font(.title.bold())
//                .foregroundColor(.white)
//                .frame(minWidth: 300)
//        }
//        .buttonStyle(.borderedProminent)
//        .tint(Color("gr"))
//        .shadow(radius: 10)
//        .padding()
//
//        NavigationLink(destination: Cloud_county()){
//            Text("Cloud County")
//                .font(.title.bold())
//                .foregroundColor(.white)
//                .frame(minWidth: 300)
//        }
//        .buttonStyle(.borderedProminent)
//        .tint(Color("gr"))
//        .shadow(radius: 10)
//        .padding()
//
//        NavigationLink(destination: gamekingdom()){
//            Text ("Game Kingdom")
//                .font(.title.bold())
//                .foregroundColor(.white)
//                .frame(minWidth: 300)
//        }
//        .buttonStyle(.borderedProminent)
//        .tint(Color("gr"))
//        .shadow(radius: 10)
//        .padding()
//
//                
                
                
                
            }
        }
    

    
    #Preview {
        Collection()
    }
    

