//
//  cloud county.swift
//  VirtualHeistView
//
//  Created by Ayme Head on 11/17/23.
//

import SwiftUI

struct Newgoldcity: View {
    
    var locations = ["MainSpaceCentral", "NewGoldCity", "CloudCounty", "GameKingdom"]
    
    var body: some View {
        ZStack{
            Color(.darkblue)
                .ignoresSafeArea()
            VStack{
                ScrollView{
                    Text(" Now that \(name) have made it to there next location, which is \(locations[1]), they now have to obtain the game \(Games.MoneyWaysHiest.rawValue). While looking for the game Tavon gets lost in an alley. The group doesn't notice until after they fight the MoneyWays Bandits. In the mist of looking for Tavon the group gets confromted by another group who is participating in the quest. As a team, the group disguise the new found game and sly right pass the other group. In the end everyone found Tavon at the transpotation station on his way to the next location when the message boy came and said...." )
                        .font(.title2)
                    collectionSpeech(collection: .MoneyWaysHiest)
                        .font(.title2)
                }
            }
        }
    }
}
#Preview {
    Newgoldcity()
}
