//
//  gamekingdom.swift
//  VirtualHeistView
//
//  Created by Ayme Head on 11/17/23.
//

import SwiftUI

struct gamekingdom: View {
    var locations = ["MainSpaceCentral", "NewGoldCity", "CloudCounty", "GameKingdom"]
    
    var body: some View {
        ZStack{
            Color(.darkblue)
                .ignoresSafeArea()
            VStack{
                ScrollView{
                    Text("\(name) have now entered the most important location of them all \(locations[3]). This is where they would find the game that secures the winner of the quest. The group thought it was all easy until the gates of \(locations[3])opended. When the gates opened the group saw hundreds of people looking for the game. It was so many things going on that the group didn't know where to look first so they remembered everything they went throught at other locations and thought about would it happen at this one until Dante looked up and saw a big pink Castle with a huge banner saying: Games. The group walked into the castle seeing that in order to retrieve the last game they woudld have to see who is worthy of being king of \(locations[3]) but the group soon came to see that \(locations[3]) didn't need a king but a queen and the only girl they knew who was worthy was Ayme. Ayme was the pronounce queen of \(locations[3]) and had to stay at the castle while everyone else took the game and left to recieve the first prize award.  ")
                        .font(.title2)
                    collectionSpeech(collection: .VirtualQuest)
                        .font(.title2)
                }
            }
        }
    }
}
#Preview {
    gamekingdom()
}
